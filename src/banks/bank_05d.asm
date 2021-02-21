; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05d", ROMX[$4000], BANK[$5d]

Jump_05d_4000:
    ld a, [de]                                    ; $4000: $1a
    ld b, b                                       ; $4001: $40

    db $32, $45

Jump_05d_4004:
    db $ed                                        ; $4004: $ed
    ld c, c                                       ; $4005: $49
    sbc a                                         ; $4006: $9f
    ld c, l                                       ; $4007: $4d
    xor l                                         ; $4008: $ad
    ld d, d                                       ; $4009: $52
    ld [hl], c                                    ; $400a: $71
    ld d, [hl]                                    ; $400b: $56
    jr z, jr_05d_4068                             ; $400c: $28 $5a

    ld b, [hl]                                    ; $400e: $46
    ld e, a                                       ; $400f: $5f
    ld l, $64                                     ; $4010: $2e $64
    ld sp, hl                                     ; $4012: $f9
    ld h, a                                       ; $4013: $67
    sbc h                                         ; $4014: $9c
    ld l, h                                       ; $4015: $6c
    sub b                                         ; $4016: $90
    ld [hl], c                                    ; $4017: $71
    ld e, l                                       ; $4018: $5d
    ld [hl], l                                    ; $4019: $75
    ld [hl+], a                                   ; $401a: $22
    ld b, b                                       ; $401b: $40
    ld d, d                                       ; $401c: $52
    ld b, b                                       ; $401d: $40
    ld hl, $fe43                                  ; $401e: $21 $43 $fe
    ld b, h                                       ; $4021: $44
    ld [$c503], a                                 ; $4022: $ea $03 $c5
    ld b, $e2                                     ; $4025: $06 $e2
    ld bc, $00a0                                  ; $4027: $01 $a0 $00
    ld [$f003], a                                 ; $402a: $ea $03 $f0
    inc bc                                        ; $402d: $03
    push bc                                       ; $402e: $c5
    ld b, $e2                                     ; $402f: $06 $e2
    ld bc, $023f                                  ; $4031: $01 $3f $02
    xor e                                         ; $4034: $ab
    nop                                           ; $4035: $00
    inc sp                                        ; $4036: $33
    ld bc, $06c5                                  ; $4037: $01 $c5 $06
    ld [$0825], sp                                ; $403a: $08 $25 $08

Jump_05d_403d:
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
    ld [hl], a                                    ; $4052: $77
    inc l                                         ; $4053: $2c
    inc l                                         ; $4054: $2c
    dec bc                                        ; $4055: $0b
    rst $38                                       ; $4056: $ff
    pop hl                                        ; $4057: $e1
    ld l, e                                       ; $4058: $6b
    ld l, e                                       ; $4059: $6b
    ld c, e                                       ; $405a: $4b
    rst $38                                       ; $405b: $ff
    ldh [rIE], a                                  ; $405c: $e0 $ff
    dec hl                                        ; $405e: $2b
    dec bc                                        ; $405f: $0b
    ld c, e                                       ; $4060: $4b
    dec bc                                        ; $4061: $0b
    ld a, [bc]                                    ; $4062: $0a
    dec bc                                        ; $4063: $0b
    dec bc                                        ; $4064: $0b
    inc c                                         ; $4065: $0c
    scf                                           ; $4066: $37
    inc c                                         ; $4067: $0c

jr_05d_4068:
    ld c, h                                       ; $4068: $4c
    inc c                                         ; $4069: $0c
    rst $38                                       ; $406a: $ff
    add sp, $4c                                   ; $406b: $e8 $4c
    ld c, h                                       ; $406d: $4c
    ldh a, [$eb]                                  ; $406e: $f0 $eb
    db $f4                                        ; $4070: $f4
    ld [$c000], a                                 ; $4071: $ea $00 $c0
    db $e3                                        ; $4074: $e3
    pop bc                                        ; $4075: $c1
    ld [c], a                                     ; $4076: $e2
    cp l                                          ; $4077: $bd
    ldh [$c0], a                                  ; $4078: $e0 $c0
    ldh [$b1], a                                  ; $407a: $e0 $b1
    ldh [$ce], a                                  ; $407c: $e0 $ce
    pop hl                                        ; $407e: $e1
    cp h                                          ; $407f: $bc
    ld [c], a                                     ; $4080: $e2
    cp c                                          ; $4081: $b9
    ld [c], a                                     ; $4082: $e2
    db $10                                        ; $4083: $10
    ld hl, sp-$1f                                 ; $4084: $f8 $e1
    ret nz                                        ; $4086: $c0

    rst $38                                       ; $4087: $ff
    ret nz                                        ; $4088: $c0

    db $e4                                        ; $4089: $e4
    ld [hl], e                                    ; $408a: $73
    pop hl                                        ; $408b: $e1
    ld a, [bc]                                    ; $408c: $0a
    adc [hl]                                      ; $408d: $8e
    ld [c], a                                     ; $408e: $e2
    adc e                                         ; $408f: $8b
    pop hl                                        ; $4090: $e1
    ld a, c                                       ; $4091: $79
    rst $38                                       ; $4092: $ff
    ld [bc], a                                    ; $4093: $02
    add b                                         ; $4094: $80
    db $e4                                        ; $4095: $e4
    dec bc                                        ; $4096: $0b
    ld b, d                                       ; $4097: $42
    pop hl                                        ; $4098: $e1
    ld b, b                                       ; $4099: $40
    pop hl                                        ; $409a: $e1
    ld a, a                                       ; $409b: $7f
    ld [c], a                                     ; $409c: $e2
    ret nz                                        ; $409d: $c0

    push hl                                       ; $409e: $e5
    ld a, c                                       ; $409f: $79
    push hl                                       ; $40a0: $e5
    dec [hl]                                      ; $40a1: $35
    ld sp, hl                                     ; $40a2: $f9
    rrca                                          ; $40a3: $0f
    ld l, h                                       ; $40a4: $6c
    inc l                                         ; $40a5: $2c
    ld c, h                                       ; $40a6: $4c
    dec hl                                        ; $40a7: $2b
    ret                                           ; $40a8: $c9


    pop hl                                        ; $40a9: $e1
    ret nz                                        ; $40aa: $c0

    db $e3                                        ; $40ab: $e3
    ccf                                           ; $40ac: $3f
    db $e3                                        ; $40ad: $e3
    inc c                                         ; $40ae: $0c
    db $e4                                        ; $40af: $e4
    jr z, @-$3e                                   ; $40b0: $28 $c0

    pop hl                                        ; $40b2: $e1
    cp h                                          ; $40b3: $bc
    and $35                                       ; $40b4: $e6 $35
    rst $28                                       ; $40b6: $ef
    inc l                                         ; $40b7: $2c
    ret nz                                        ; $40b8: $c0

    db $e4                                        ; $40b9: $e4
    inc l                                         ; $40ba: $2c
    ret nz                                        ; $40bb: $c0

    ldh [$81], a                                  ; $40bc: $e0 $81
    db $e3                                        ; $40be: $e3
    ld e, $bd                                     ; $40bf: $1e $bd
    ret nz                                        ; $40c1: $c0

    dec bc                                        ; $40c2: $0b
    dec bc                                        ; $40c3: $0b
    dec hl                                        ; $40c4: $2b
    ld a, [bc]                                    ; $40c5: $0a
    ret nz                                        ; $40c6: $c0

    pop bc                                        ; $40c7: $c1
    pop bc                                        ; $40c8: $c1
    db $e3                                        ; $40c9: $e3
    ld a, h                                       ; $40ca: $7c
    db $e3                                        ; $40cb: $e3
    ld d, $3a                                     ; $40cc: $16 $3a
    ld a, [$2c2c]                                 ; $40ce: $fa $2c $2c
    ld a, a                                       ; $40d1: $7f
    pop hl                                        ; $40d2: $e1
    dec hl                                        ; $40d3: $2b
    cp a                                          ; $40d4: $bf
    db $e4                                        ; $40d5: $e4
    ccf                                           ; $40d6: $3f
    ldh [$c0], a                                  ; $40d7: $e0 $c0
    jp nz, $8800                                  ; $40d9: $c2 $00 $88

    jp $c185                                      ; $40dc: $c3 $85 $c1


    ld a, d                                       ; $40df: $7a
    ld [c], a                                     ; $40e0: $e2
    or e                                          ; $40e1: $b3
    ret c                                         ; $40e2: $d8

    ret nz                                        ; $40e3: $c0

    ldh [$7f], a                                  ; $40e4: $e0 $7f
    ldh [$c0], a                                  ; $40e6: $e0 $c0
    push hl                                       ; $40e8: $e5
    cp [hl]                                       ; $40e9: $be
    jp $4900                                      ; $40ea: $c3 $00 $49


    call nz, $c488                                ; $40ed: $c4 $88 $c4
    di                                            ; $40f0: $f3
    push bc                                       ; $40f1: $c5
    cpl                                           ; $40f2: $2f
    db $e3                                        ; $40f3: $e3
    ld sp, $45c2                                  ; $40f4: $31 $c2 $45
    db $e3                                        ; $40f7: $e3
    and e                                         ; $40f8: $a3
    add $01                                       ; $40f9: $c6 $01
    ret nz                                        ; $40fb: $c0

    ld b, b                                       ; $40fc: $40
    ld b, d                                       ; $40fd: $42
    push hl                                       ; $40fe: $e5

Call_05d_40ff:
Jump_05d_40ff:
    ld b, b                                       ; $40ff: $40
    ret nz                                        ; $4100: $c0

    call $02e9                                    ; $4101: $cd $e9 $02
    jp nz, $c6b3                                  ; $4104: $c2 $b3 $c6

    or d                                          ; $4107: $b2
    push hl                                       ; $4108: $e5
    inc l                                         ; $4109: $2c
    ret nz                                        ; $410a: $c0

    xor $00                                       ; $410b: $ee $00
    add b                                         ; $410d: $80
    pop bc                                        ; $410e: $c1
    cp b                                          ; $410f: $b8
    and b                                         ; $4110: $a0
    scf                                           ; $4111: $37
    ldh [$82], a                                  ; $4112: $e0 $82
    db $e4                                        ; $4114: $e4
    pop bc                                        ; $4115: $c1
    rst $20                                       ; $4116: $e7
    di                                            ; $4117: $f3
    rst $20                                       ; $4118: $e7
    db $fc                                        ; $4119: $fc
    ld [c], a                                     ; $411a: $e2
    or c                                          ; $411b: $b1

Call_05d_411c:
    and c                                         ; $411c: $a1
    nop                                           ; $411d: $00
    ret nz                                        ; $411e: $c0

    ldh a, [$c3]                                  ; $411f: $f0 $c3
    db $e3                                        ; $4121: $e3
    ret nz                                        ; $4122: $c0

    jp hl                                         ; $4123: $e9


    ret nz                                        ; $4124: $c0

    call nz, $c674                                ; $4125: $c4 $74 $c6
    di                                            ; $4128: $f3
    jp $a371                                      ; $4129: $c3 $71 $a3


    add e                                         ; $412c: $83
    push bc                                       ; $412d: $c5
    inc b                                         ; $412e: $04
    ret nz                                        ; $412f: $c0

    jp $e040                                      ; $4130: $c3 $40 $e0


    ld c, e                                       ; $4133: $4b
    jp $fee3                                      ; $4134: $c3 $e3 $fe


    and d                                         ; $4137: $a2
    ld c, l                                       ; $4138: $4d
    xor c                                         ; $4139: $a9
    pop bc                                        ; $413a: $c1
    push bc                                       ; $413b: $c5
    ld l, $a8                                     ; $413c: $2e $a8
    nop                                           ; $413e: $00
    ld [hl-], a                                   ; $413f: $32
    xor h                                         ; $4140: $ac
    ret nz                                        ; $4141: $c0

    db $e3                                        ; $4142: $e3
    jp $c1e3                                      ; $4143: $c3 $e3 $c1


    jp $a311                                      ; $4146: $c3 $11 $a3


    inc bc                                        ; $4149: $03
    push hl                                       ; $414a: $e5
    db $fc                                        ; $414b: $fc
    add l                                         ; $414c: $85
    or [hl]                                       ; $414d: $b6
    and l                                         ; $414e: $a5
    jr nc, jr_05d_4183                            ; $414f: $30 $32

    xor l                                         ; $4151: $ad
    add c                                         ; $4152: $81
    ld [c], a                                     ; $4153: $e2
    rlca                                          ; $4154: $07
    ldh [$7f], a                                  ; $4155: $e0 $7f
    and [hl]                                      ; $4157: $a6
    dec hl                                        ; $4158: $2b
    inc l                                         ; $4159: $2c
    ld b, d                                       ; $415a: $42
    call nz, $c099                                ; $415b: $c4 $99 $c0
    nop                                           ; $415e: $00
    sub $c3                                       ; $415f: $d6 $c3
    ld [$bde5], sp                                ; $4161: $08 $e5 $bd
    and $7f                                       ; $4164: $e6 $7f
    ret nz                                        ; $4166: $c0

    ld c, c                                       ; $4167: $49
    pop hl                                        ; $4168: $e1
    cp d                                          ; $4169: $ba
    and h                                         ; $416a: $a4
    ld c, h                                       ; $416b: $4c
    and d                                         ; $416c: $a2
    add d                                         ; $416d: $82
    and $00                                       ; $416e: $e6 $00
    cp h                                          ; $4170: $bc
    ret nz                                        ; $4171: $c0

    jp z, $c084                                   ; $4172: $ca $84 $c0

    add [hl]                                      ; $4175: $86
    or $82                                        ; $4176: $f6 $82
    cp a                                          ; $4178: $bf
    push bc                                       ; $4179: $c5
    ld [$c083], a                                 ; $417a: $ea $83 $c0
    rst $20                                       ; $417d: $e7
    ld b, e                                       ; $417e: $43
    pop bc                                        ; $417f: $c1
    nop                                           ; $4180: $00
    ld c, d                                       ; $4181: $4a

Call_05d_4182:
    add b                                         ; $4182: $80

jr_05d_4183:
    add [hl]                                      ; $4183: $86
    jp nz, $c4b9                                  ; $4184: $c2 $b9 $c4

    ld h, a                                       ; $4187: $67
    and b                                         ; $4188: $a0
    ld b, d                                       ; $4189: $42
    push bc                                       ; $418a: $c5
    adc [hl]                                      ; $418b: $8e
    push bc                                       ; $418c: $c5
    cp [hl]                                       ; $418d: $be
    ld [c], a                                     ; $418e: $e2
    add hl, hl                                    ; $418f: $29
    ret z                                         ; $4190: $c8

    nop                                           ; $4191: $00
    pop bc                                        ; $4192: $c1
    rst $20                                       ; $4193: $e7
    rra                                           ; $4194: $1f
    adc e                                         ; $4195: $8b
    ld c, h                                       ; $4196: $4c
    push bc                                       ; $4197: $c5
    ld c, [hl]                                    ; $4198: $4e
    rst $00                                       ; $4199: $c7
    cp [hl]                                       ; $419a: $be
    and l                                         ; $419b: $a5
    db $fc                                        ; $419c: $fc
    and [hl]                                      ; $419d: $a6
    ld a, [c]                                     ; $419e: $f2
    ld h, d                                       ; $419f: $62
    ret nz                                        ; $41a0: $c0

    add sp, $00                                   ; $41a1: $e8 $00
    ret c                                         ; $41a3: $d8

    and l                                         ; $41a4: $a5
    push de                                       ; $41a5: $d5
    ld l, c                                       ; $41a6: $69
    ld d, $c4                                     ; $41a7: $16 $c4
    cp h                                          ; $41a9: $bc
    db $ed                                        ; $41aa: $ed
    db $fc                                        ; $41ab: $fc
    and l                                         ; $41ac: $a5
    add hl, hl                                    ; $41ad: $29
    adc c                                         ; $41ae: $89
    sbc d                                         ; $41af: $9a
    add h                                         ; $41b0: $84
    inc de                                        ; $41b1: $13
    add d                                         ; $41b2: $82
    nop                                           ; $41b3: $00
    ld e, e                                       ; $41b4: $5b
    ld [$65bd], a                                 ; $41b5: $ea $bd $65
    halt                                          ; $41b8: $76
    rst $20                                       ; $41b9: $e7
    db $fc                                        ; $41ba: $fc
    and [hl]                                      ; $41bb: $a6
    rst $38                                       ; $41bc: $ff
    and e                                         ; $41bd: $a3
    add b                                         ; $41be: $80
    add e                                         ; $41bf: $83
    dec h                                         ; $41c0: $25
    and a                                         ; $41c1: $a7
    call Call_000_00a6                            ; $41c2: $cd $a6 $00
    push bc                                       ; $41c5: $c5
    and a                                         ; $41c6: $a7
    ret nz                                        ; $41c7: $c0

    rst $00                                       ; $41c8: $c7
    db $fc                                        ; $41c9: $fc
    and a                                         ; $41ca: $a7
    ld [c], a                                     ; $41cb: $e2
    jp $a03d                                      ; $41cc: $c3 $3d $a0


    ret nz                                        ; $41cf: $c0

    ld [$e682], a                                 ; $41d0: $ea $82 $e6
    add h                                         ; $41d3: $84
    ld h, a                                       ; $41d4: $67
    inc b                                         ; $41d5: $04
    ret nz                                        ; $41d6: $c0

    jp z, $a7fc                                   ; $41d7: $ca $fc $a7

    inc l                                         ; $41da: $2c
    cp $83                                        ; $41db: $fe $83
    rst $38                                       ; $41dd: $ff
    ret z                                         ; $41de: $c8

    ld b, b                                       ; $41df: $40
    rst $20                                       ; $41e0: $e7
    rst $38                                       ; $41e1: $ff
    jp hl                                         ; $41e2: $e9


    add b                                         ; $41e3: $80
    adc d                                         ; $41e4: $8a
    nop                                           ; $41e5: $00
    ret nz                                        ; $41e6: $c0

    ret z                                         ; $41e7: $c8

    ld h, d                                       ; $41e8: $62
    jp nz, $c840                                  ; $41e9: $c2 $40 $c8

    xor b                                         ; $41ec: $a8
    rst $00                                       ; $41ed: $c7
    call nc, $9163                                ; $41ee: $d4 $63 $91
    adc d                                         ; $41f1: $8a
    ld b, a                                       ; $41f2: $47
    rst $20                                       ; $41f3: $e7
    or h                                          ; $41f4: $b4
    ld l, c                                       ; $41f5: $69
    nop                                           ; $41f6: $00
    or c                                          ; $41f7: $b1
    ld c, c                                       ; $41f8: $49
    push de                                       ; $41f9: $d5
    ld h, l                                       ; $41fa: $65
    db $db                                        ; $41fb: $db
    and l                                         ; $41fc: $a5
    or l                                          ; $41fd: $b5
    add $40                                       ; $41fe: $c6 $40
    ld c, d                                       ; $4200: $4a
    xor a                                         ; $4201: $af
    add [hl]                                      ; $4202: $86
    ld a, [hl+]                                   ; $4203: $2a
    add $ff                                       ; $4204: $c6 $ff
    xor e                                         ; $4206: $ab
    nop                                           ; $4207: $00
    ld a, b                                       ; $4208: $78
    add $d9                                       ; $4209: $c6 $d9
    add sp, -$63                                  ; $420b: $e8 $9d
    ld [$8502], a                                 ; $420d: $ea $02 $85
    jr nc, jr_05d_4258                            ; $4210: $30 $46

    db $fc                                        ; $4212: $fc
    ld h, l                                       ; $4213: $65
    ld [c], a                                     ; $4214: $e2
    ld l, b                                       ; $4215: $68
    dec [hl]                                      ; $4216: $35
    rlc b                                         ; $4217: $cb $00
    ld c, $4a                                     ; $4219: $0e $4a
    ld [bc], a                                    ; $421b: $02
    add a                                         ; $421c: $87
    sbc c                                         ; $421d: $99
    xor b                                         ; $421e: $a8
    rst $38                                       ; $421f: $ff
    jp z, $c645                                   ; $4220: $ca $45 $c6

    inc c                                         ; $4223: $0c
    ld h, a                                       ; $4224: $67
    add h                                         ; $4225: $84
    ldh a, [$32]                                  ; $4226: $f0 $32
    and [hl]                                      ; $4228: $a6
    nop                                           ; $4229: $00
    cp [hl]                                       ; $422a: $be
    xor h                                         ; $422b: $ac
    push bc                                       ; $422c: $c5
    ret z                                         ; $422d: $c8

    ret z                                         ; $422e: $c8

    ld h, a                                       ; $422f: $67
    add h                                         ; $4230: $84
    pop af                                        ; $4231: $f1
    ld l, e                                       ; $4232: $6b
    ld [hl+], a                                   ; $4233: $22
    add c                                         ; $4234: $81
    xor $d9                                       ; $4235: $ee $d9
    daa                                           ; $4237: $27
    ld [$0044], sp                                ; $4238: $08 $44 $00
    ld l, e                                       ; $423b: $6b
    ld b, b                                       ; $423c: $40
    ld d, a                                       ; $423d: $57
    ld h, a                                       ; $423e: $67
    or h                                          ; $423f: $b4
    and l                                         ; $4240: $a5
    ld l, l                                       ; $4241: $6d
    add l                                         ; $4242: $85
    ldh a, [$0a]                                  ; $4243: $f0 $0a
    ld h, $e8                                     ; $4245: $26 $e8
    sub e                                         ; $4247: $93
    add [hl]                                      ; $4248: $86
    ld [$0092], sp                                ; $4249: $08 $92 $00
    inc [hl]                                      ; $424c: $34
    and [hl]                                      ; $424d: $a6
    ldh a, [$0e]                                  ; $424e: $f0 $0e
    ld l, d                                       ; $4250: $6a
    add $94                                       ; $4251: $c6 $94
    add sp, $08                                   ; $4253: $e8 $08
    adc a                                         ; $4255: $8f
    push hl                                       ; $4256: $e5
    rst $20                                       ; $4257: $e7

jr_05d_4258:
    ld [hl], b                                    ; $4258: $70
    rrca                                          ; $4259: $0f
    ld h, d                                       ; $425a: $62
    ld l, [hl]                                    ; $425b: $6e
    nop                                           ; $425c: $00
    ld [$0490], sp                                ; $425d: $08 $90 $04
    ld b, [hl]                                    ; $4260: $46
    ld c, b                                       ; $4261: $48
    jr nz, @-$3b                                  ; $4262: $20 $c3

    add b                                         ; $4264: $80
    add c                                         ; $4265: $81
    xor d                                         ; $4266: $aa
    ld a, [hl]                                    ; $4267: $7e
    and [hl]                                      ; $4268: $a6
    ld c, h                                       ; $4269: $4c
    adc a                                         ; $426a: $8f
    inc b                                         ; $426b: $04
    ld c, a                                       ; $426c: $4f
    nop                                           ; $426d: $00
    ret nz                                        ; $426e: $c0

    pop hl                                        ; $426f: $e1
    ret nz                                        ; $4270: $c0

    ld l, c                                       ; $4271: $69
    ld a, [de]                                    ; $4272: $1a
    ld h, $21                                     ; $4273: $26 $21
    and $08                                       ; $4275: $e6 $08
    sub l                                         ; $4277: $95
    inc b                                         ; $4278: $04
    ld b, [hl]                                    ; $4279: $46
    add c                                         ; $427a: $81
    ld l, d                                       ; $427b: $6a
    ld h, [hl]                                    ; $427c: $66
    xor h                                         ; $427d: $ac
    nop                                           ; $427e: $00
    ld [$8298], sp                                ; $427f: $08 $98 $82
    dec b                                         ; $4282: $05
    add c                                         ; $4283: $81
    xor $40                                       ; $4284: $ee $40
    rrc b                                         ; $4286: $cb $08
    sub e                                         ; $4288: $93
    add e                                         ; $4289: $83
    ld de, $d440                                  ; $428a: $11 $40 $d4
    ld [$0092], sp                                ; $428d: $08 $92 $00
    inc b                                         ; $4290: $04
    ld c, b                                       ; $4291: $48
    ld bc, $40ea                                  ; $4292: $01 $ea $40
    jp nc, $9008                                  ; $4295: $d2 $08 $90

    ld b, e                                       ; $4298: $43
    add hl, hl                                    ; $4299: $29
    add c                                         ; $429a: $81
    ld c, e                                       ; $429b: $4b
    rst $38                                       ; $429c: $ff
    or l                                          ; $429d: $b5
    ld [$008b], sp                                ; $429e: $08 $8b $00
    and d                                         ; $42a1: $a2
    rst $00                                       ; $42a2: $c7
    rst $38                                       ; $42a3: $ff
    rst $38                                       ; $42a4: $ff
    ld [$c097], sp                                ; $42a5: $08 $97 $c0
    rst $38                                       ; $42a8: $ff
    ld [$c096], sp                                ; $42a9: $08 $96 $c0
    db $d3                                        ; $42ac: $d3
    cp l                                          ; $42ad: $bd
    cp $a2                                        ; $42ae: $fe $a2
    ret nc                                        ; $42b0: $d0

    nop                                           ; $42b1: $00
    rst $38                                       ; $42b2: $ff
    rst $38                                       ; $42b3: $ff
    ld d, a                                       ; $42b4: $57
    ld b, e                                       ; $42b5: $43
    ld b, a                                       ; $42b6: $47
    ld h, [hl]                                    ; $42b7: $66
    and d                                         ; $42b8: $a2
    set 7, a                                      ; $42b9: $cb $ff
    rst $38                                       ; $42bb: $ff
    and [hl]                                      ; $42bc: $a6
    inc b                                         ; $42bd: $04
    and e                                         ; $42be: $a3
    ld h, a                                       ; $42bf: $67
    push hl                                       ; $42c0: $e5
    ld b, l                                       ; $42c1: $45
    nop                                           ; $42c2: $00
    add b                                         ; $42c3: $80
    rst $38                                       ; $42c4: $ff
    ld c, b                                       ; $42c5: $48
    ld [hl], b                                    ; $42c6: $70
    ld c, c                                       ; $42c7: $49
    add hl, hl                                    ; $42c8: $29
    ret nz                                        ; $42c9: $c0

    rst $38                                       ; $42ca: $ff
    add a                                         ; $42cb: $87
    ld d, b                                       ; $42cc: $50
    add hl, bc                                    ; $42cd: $09
    jr nc, @+$01                                  ; $42ce: $30 $ff

    rst $38                                       ; $42d0: $ff
    di                                            ; $42d1: $f3
    call z, $cd00                                 ; $42d2: $cc $00 $cd
    xor h                                         ; $42d5: $ac
    rst $38                                       ; $42d6: $ff
    rst $38                                       ; $42d7: $ff
    rst $38                                       ; $42d8: $ff
    rst $38                                       ; $42d9: $ff
    sub [hl]                                      ; $42da: $96
    rst $38                                       ; $42db: $ff
    rst $38                                       ; $42dc: $ff
    rst $38                                       ; $42dd: $ff
    sbc c                                         ; $42de: $99
    call nz, $ffff                                ; $42df: $c4 $ff $ff
    rst $38                                       ; $42e2: $ff
    rst $38                                       ; $42e3: $ff
    nop                                           ; $42e4: $00
    rst $38                                       ; $42e5: $ff
    rst $38                                       ; $42e6: $ff
    rst $38                                       ; $42e7: $ff
    rst $38                                       ; $42e8: $ff
    scf                                           ; $42e9: $37
    db $eb                                        ; $42ea: $eb
    call c, $ffff                                 ; $42eb: $dc $ff $ff
    rst $38                                       ; $42ee: $ff
    rst $38                                       ; $42ef: $ff
    rst $38                                       ; $42f0: $ff
    rst $38                                       ; $42f1: $ff
    rst $38                                       ; $42f2: $ff
    rst $38                                       ; $42f3: $ff
    rst $38                                       ; $42f4: $ff
    nop                                           ; $42f5: $00
    rst $38                                       ; $42f6: $ff
    rst $38                                       ; $42f7: $ff
    rst $38                                       ; $42f8: $ff
    rst $38                                       ; $42f9: $ff
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
    nop                                           ; $4306: $00
    rst $38                                       ; $4307: $ff
    rst $38                                       ; $4308: $ff
    rst $38                                       ; $4309: $ff
    rst $38                                       ; $430a: $ff
    rst $38                                       ; $430b: $ff
    rst $38                                       ; $430c: $ff
    rst $38                                       ; $430d: $ff
    rst $38                                       ; $430e: $ff
    rst $38                                       ; $430f: $ff
    rst $38                                       ; $4310: $ff
    nop                                           ; $4311: $00
    cp a                                          ; $4312: $bf
    rst $38                                       ; $4313: $ff
    rst $38                                       ; $4314: $ff
    rst $38                                       ; $4315: $ff
    rst $38                                       ; $4316: $ff
    nop                                           ; $4317: $00
    rst $38                                       ; $4318: $ff
    rst $38                                       ; $4319: $ff
    rst $38                                       ; $431a: $ff
    rst $38                                       ; $431b: $ff
    db $db                                        ; $431c: $db
    inc sp                                        ; $431d: $33
    nop                                           ; $431e: $00
    nop                                           ; $431f: $00
    nop                                           ; $4320: $00
    rst $30                                       ; $4321: $f7
    inc l                                         ; $4322: $2c
    dec hl                                        ; $4323: $2b
    ld sp, $e1ff                                  ; $4324: $31 $ff $e1
    ld b, a                                       ; $4327: $47
    ld b, l                                       ; $4328: $45
    ld d, l                                       ; $4329: $55
    ld d, h                                       ; $432a: $54
    rst $38                                       ; $432b: $ff
    ld b, l                                       ; $432c: $45
    ld b, a                                       ; $432d: $47
    ld sp, $5f31                                  ; $432e: $31 $31 $5f
    ld e, e                                       ; $4331: $5b
    ld e, d                                       ; $4332: $5a
    ld e, e                                       ; $4333: $5b
    db $e3                                        ; $4334: $e3
    ld e, e                                       ; $4335: $5b
    nop                                           ; $4336: $00
    rst $38                                       ; $4337: $ff
    rst $38                                       ; $4338: $ff
    rst $20                                       ; $4339: $e7
    and $c0                                       ; $433a: $e6 $c0
    db $e3                                        ; $433c: $e3
    ld c, c                                       ; $433d: $49
    ld [hl], $30                                  ; $433e: $36 $30
    ld a, $ff                                     ; $4340: $3e $ff
    ldh [$36], a                                  ; $4342: $e0 $36
    ld c, c                                       ; $4344: $49
    ld sp, $5b5e                                  ; $4345: $31 $5e $5b
    rst $38                                       ; $4348: $ff
    ldh [$ca], a                                  ; $4349: $e0 $ca
    rst $38                                       ; $434b: $ff
    ld a, [$edc0]                                 ; $434c: $fa $c0 $ed
    add hl, sp                                    ; $434f: $39
    pop bc                                        ; $4350: $c1
    pop hl                                        ; $4351: $e1
    jr nc, jr_05d_4384                            ; $4352: $30 $30

    add hl, sp                                    ; $4354: $39
    ld sp, $5261                                  ; $4355: $31 $61 $52
    ret nz                                        ; $4358: $c0

    ldh [$5a], a                                  ; $4359: $e0 $5a
    jp z, $80ff                                   ; $435b: $ca $ff $80

    db $ed                                        ; $435e: $ed
    ld d, d                                       ; $435f: $52
    ret nz                                        ; $4360: $c0

    db $e3                                        ; $4361: $e3
    ld d, d                                       ; $4362: $52
    ccf                                           ; $4363: $3f
    pop hl                                        ; $4364: $e1
    call c, $ff80                                 ; $4365: $dc $80 $ff
    ld [$20e9], a                                 ; $4368: $ea $e9 $20
    ld d, $15                                     ; $436b: $16 $15
    rst $38                                       ; $436d: $ff
    ret nz                                        ; $436e: $c0

    ld d, e                                       ; $436f: $53
    jr nc, jr_05d_43b1                            ; $4370: $30 $3f

    jr nc, @+$6f                                  ; $4372: $30 $6d

    ld l, l                                       ; $4374: $6d
    jr nc, jr_05d_43a7                            ; $4375: $30 $30

    ld b, d                                       ; $4377: $42
    ccf                                           ; $4378: $3f
    db $e3                                        ; $4379: $e3
    jp z, $96ff                                   ; $437a: $ca $ff $96

    ret nz                                        ; $437d: $c0

    add sp, $28                                   ; $437e: $e8 $28
    rla                                           ; $4380: $17
    add b                                         ; $4381: $80
    ld [c], a                                     ; $4382: $e2
    ld l, l                                       ; $4383: $6d

jr_05d_4384:
    rst $38                                       ; $4384: $ff
    ldh [$3f], a                                  ; $4385: $e0 $3f
    pop hl                                        ; $4387: $e1
    ld sp, $60a3                                  ; $4388: $31 $a3 $60
    ld e, d                                       ; $438b: $5a
    ret nz                                        ; $438c: $c0

    rst $38                                       ; $438d: $ff
    add b                                         ; $438e: $80
    jp hl                                         ; $438f: $e9


    ld a, a                                       ; $4390: $7f
    ld [c], a                                     ; $4391: $e2
    add hl, sp                                    ; $4392: $39
    ret nz                                        ; $4393: $c0

    ld [c], a                                     ; $4394: $e2
    ld l, l                                       ; $4395: $6d
    adc [hl]                                      ; $4396: $8e
    ccf                                           ; $4397: $3f
    pop hl                                        ; $4398: $e1
    ld sp, $6262                                  ; $4399: $31 $62 $62
    jp z, $c0ff                                   ; $439c: $ca $ff $c0

    jp hl                                         ; $439f: $e9


    ld a, a                                       ; $43a0: $7f
    pop hl                                        ; $43a1: $e1
    ld d, c                                       ; $43a2: $51
    ld e, $c1                                     ; $43a3: $1e $c1
    ld [c], a                                     ; $43a5: $e2
    ld l, l                                       ; $43a6: $6d

jr_05d_43a7:
    ld l, l                                       ; $43a7: $6d
    ld c, b                                       ; $43a8: $48
    ld c, c                                       ; $43a9: $49
    ld [hl-], a                                   ; $43aa: $32
    pop bc                                        ; $43ab: $c1
    jp z, $80ff                                   ; $43ac: $ca $ff $80

    jp hl                                         ; $43af: $e9


    or e                                          ; $43b0: $b3

jr_05d_43b1:
    jr nz, jr_05d_43b3                            ; $43b1: $20 $00

jr_05d_43b3:
    add b                                         ; $43b3: $80
    ret nz                                        ; $43b4: $c0

    ret nz                                        ; $43b5: $c0

    db $e3                                        ; $43b6: $e3
    ld l, b                                       ; $43b7: $68
    ld l, b                                       ; $43b8: $68
    ccf                                           ; $43b9: $3f
    ldh [$29], a                                  ; $43ba: $e0 $29
    jp hl                                         ; $43bc: $e9


    inc d                                         ; $43bd: $14

jr_05d_43be:
    jp z, $c0ff                                   ; $43be: $ca $ff $c0

    db $ed                                        ; $43c1: $ed
    ld d, d                                       ; $43c2: $52
    jp Jump_05d_68e2                              ; $43c3: $c3 $e2 $68


    ld l, l                                       ; $43c6: $6d
    ld l, l                                       ; $43c7: $6d
    ld h, $7e                                     ; $43c8: $26 $7e
    ret nz                                        ; $43ca: $c0

    dec hl                                        ; $43cb: $2b
    inc l                                         ; $43cc: $2c
    jp z, $80ff                                   ; $43cd: $ca $ff $80

    db $ed                                        ; $43d0: $ed
    ld d, e                                       ; $43d1: $53
    jp $bce2                                      ; $43d2: $c3 $e2 $bc


    ret nz                                        ; $43d5: $c0

    inc h                                         ; $43d6: $24
    ret nz                                        ; $43d7: $c0

    rst $38                                       ; $43d8: $ff
    ld b, b                                       ; $43d9: $40
    rst $28                                       ; $43da: $ef
    ld [$e380], sp                                ; $43db: $08 $80 $e3
    ld a, a                                       ; $43de: $7f
    jp nz, $c053                                  ; $43df: $c2 $53 $c0

    rst $38                                       ; $43e2: $ff
    nop                                           ; $43e3: $00
    xor $f9                                       ; $43e4: $ee $f9
    dec c                                         ; $43e6: $0d
    nop                                           ; $43e7: $00
    db $e3                                        ; $43e8: $e3
    ld a, $a0                                     ; $43e9: $3e $a0
    ld l, d                                       ; $43eb: $6a
    ld l, d                                       ; $43ec: $6a
    add e                                         ; $43ed: $83
    and a                                         ; $43ee: $a7
    ld sp, $17d3                                  ; $43ef: $31 $d3 $17
    jr z, jr_05d_43be                             ; $43f2: $28 $ca

    rst $38                                       ; $43f4: $ff
    ld b, b                                       ; $43f5: $40
    ret                                           ; $43f6: $c9


    rrca                                          ; $43f7: $0f
    cp a                                          ; $43f8: $bf
    add b                                         ; $43f9: $80
    ld c, l                                       ; $43fa: $4d
    ld [hl-], a                                   ; $43fb: $32
    cp $c3                                        ; $43fc: $fe $c3
    pop hl                                        ; $43fe: $e1
    ld l, d                                       ; $43ff: $6a
    ld l, h                                       ; $4400: $6c
    ccf                                           ; $4401: $3f
    add h                                         ; $4402: $84
    and c                                         ; $4403: $a1
    ld sp, $e915                                  ; $4404: $31 $15 $e9
    ld d, $ca                                     ; $4407: $16 $ca
    rst $38                                       ; $4409: $ff
    add b                                         ; $440a: $80
    xor b                                         ; $440b: $a8
    ld c, $0e                                     ; $440c: $0e $0e
    ret nz                                        ; $440e: $c0

    ld sp, $5031                                  ; $440f: $31 $31 $50
    rst $38                                       ; $4412: $ff
    ld c, h                                       ; $4413: $4c
    ld l, d                                       ; $4414: $6a
    ld l, h                                       ; $4415: $6c
    ld l, h                                       ; $4416: $6c
    ld l, h                                       ; $4417: $6c
    ld [hl], $84                                  ; $4418: $36 $84
    add b                                         ; $441a: $80
    adc a                                         ; $441b: $8f
    and c                                         ; $441c: $a1
    ld sp, $1731                                  ; $441d: $31 $31 $17
    jp z, $e8ff                                   ; $4420: $ca $ff $e8

    rst $20                                       ; $4423: $e7
    add d                                         ; $4424: $82
    ldh [$60], a                                  ; $4425: $e0 $60
    rst $38                                       ; $4427: $ff
    ld e, e                                       ; $4428: $5b
    ld h, b                                       ; $4429: $60
    ld sp, $6fa1                                  ; $442a: $31 $a1 $6f
    ld l, [hl]                                    ; $442d: $6e
    ld d, l                                       ; $442e: $55
    ld d, h                                       ; $442f: $54
    rla                                           ; $4430: $17
    ld l, [hl]                                    ; $4431: $6e
    ld l, a                                       ; $4432: $6f
    add b                                         ; $4433: $80
    ret nz                                        ; $4434: $c0

    pop hl                                        ; $4435: $e1
    dec d                                         ; $4436: $15
    jp z, $ffff                                   ; $4437: $ca $ff $ff

    rst $38                                       ; $443a: $ff
    rst $38                                       ; $443b: $ff
    rst $38                                       ; $443c: $ff
    nop                                           ; $443d: $00
    rst $38                                       ; $443e: $ff
    rst $38                                       ; $443f: $ff
    rst $38                                       ; $4440: $ff
    rst $38                                       ; $4441: $ff
    rst $38                                       ; $4442: $ff
    rst $38                                       ; $4443: $ff
    rst $38                                       ; $4444: $ff
    rst $38                                       ; $4445: $ff
    rst $38                                       ; $4446: $ff
    rst $38                                       ; $4447: $ff
    rst $38                                       ; $4448: $ff
    rst $38                                       ; $4449: $ff
    rst $38                                       ; $444a: $ff
    rst $38                                       ; $444b: $ff
    rst $38                                       ; $444c: $ff
    rst $38                                       ; $444d: $ff
    nop                                           ; $444e: $00
    rst $38                                       ; $444f: $ff
    rst $38                                       ; $4450: $ff
    rst $38                                       ; $4451: $ff
    rst $38                                       ; $4452: $ff
    rst $38                                       ; $4453: $ff
    rst $38                                       ; $4454: $ff
    rst $38                                       ; $4455: $ff
    rst $38                                       ; $4456: $ff
    rst $38                                       ; $4457: $ff
    rst $38                                       ; $4458: $ff
    rst $38                                       ; $4459: $ff
    rst $38                                       ; $445a: $ff
    rst $38                                       ; $445b: $ff
    rst $38                                       ; $445c: $ff
    rst $38                                       ; $445d: $ff
    rst $38                                       ; $445e: $ff
    nop                                           ; $445f: $00
    rst $38                                       ; $4460: $ff
    rst $38                                       ; $4461: $ff
    rst $38                                       ; $4462: $ff
    rst $38                                       ; $4463: $ff
    rst $38                                       ; $4464: $ff
    rst $38                                       ; $4465: $ff
    rst $38                                       ; $4466: $ff
    rst $38                                       ; $4467: $ff
    rst $38                                       ; $4468: $ff
    rst $38                                       ; $4469: $ff
    rst $38                                       ; $446a: $ff
    rst $38                                       ; $446b: $ff
    rst $38                                       ; $446c: $ff
    rst $38                                       ; $446d: $ff
    rst $38                                       ; $446e: $ff
    rst $38                                       ; $446f: $ff
    nop                                           ; $4470: $00
    rst $38                                       ; $4471: $ff
    rst $38                                       ; $4472: $ff
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
    nop                                           ; $4481: $00
    rst $38                                       ; $4482: $ff
    rst $38                                       ; $4483: $ff
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
    nop                                           ; $4492: $00
    rst $38                                       ; $4493: $ff
    rst $38                                       ; $4494: $ff
    rst $38                                       ; $4495: $ff
    rst $38                                       ; $4496: $ff
    rst $38                                       ; $4497: $ff
    rst $38                                       ; $4498: $ff
    rst $38                                       ; $4499: $ff
    rst $38                                       ; $449a: $ff
    rst $38                                       ; $449b: $ff
    rst $38                                       ; $449c: $ff
    rst $38                                       ; $449d: $ff
    rst $38                                       ; $449e: $ff
    rst $38                                       ; $449f: $ff
    rst $38                                       ; $44a0: $ff
    rst $38                                       ; $44a1: $ff
    rst $38                                       ; $44a2: $ff
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
    di                                            ; $44fa: $f3
    nop                                           ; $44fb: $00
    nop                                           ; $44fc: $00
    nop                                           ; $44fd: $00
    and l                                         ; $44fe: $a5
    nop                                           ; $44ff: $00
    rst $38                                       ; $4500: $ff
    push hl                                       ; $4501: $e5
    ld [hl-], a                                   ; $4502: $32
    or $e6                                        ; $4503: $f6 $e6
    rst $30                                       ; $4505: $f7
    rst $20                                       ; $4506: $e7
    dec [hl]                                      ; $4507: $35
    db $ec                                        ; $4508: $ec
    xor $37                                       ; $4509: $ee $37
    db $ec                                        ; $450b: $ec
    jp c, $c7f0                                   ; $450c: $da $f0 $c7

    add sp, $33                                   ; $450f: $e8 $33
    ld sp, $f2e0                                  ; $4511: $31 $e0 $f2
    ld [hl], $30                                  ; $4514: $36 $30
    scf                                           ; $4516: $37
    cp a                                          ; $4517: $bf
    ld h, $20                                     ; $4518: $26 $20
    daa                                           ; $451a: $27
    db $10                                        ; $451b: $10
    ld d, $17                                     ; $451c: $16 $17
    jp nz, Jump_000_34f6                          ; $451e: $c2 $f6 $34

    rst $38                                       ; $4521: $ff
    ld [hl], $32                                  ; $4522: $36 $32
    jr nc, @+$39                                  ; $4524: $30 $37

    ld sp, $3133                                  ; $4526: $31 $33 $31
    inc sp                                        ; $4529: $33
    nop                                           ; $452a: $00
    and b                                         ; $452b: $a0
    ei                                            ; $452c: $fb
    rst $38                                       ; $452d: $ff
    rst $28                                       ; $452e: $ef
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00

    db $3a, $45, $6a, $45, $fa, $47, $b9, $49, $ea, $03, $c5, $06, $e2, $01, $a0, $00
    db $ea, $03, $f0, $03, $c5, $06, $e2, $01, $3f, $02, $ab, $00, $33, $01, $c5, $06
    db $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25
    db $08, $25, $08, $25, $08, $25, $08, $25, $fd, $0c, $ff, $e0, $4b, $0b, $6b, $6b
    db $4b, $4b, $bf, $4b, $0b, $0b, $2b, $0b, $0b, $f9, $e0, $4a, $0b, $0c, $4c, $ff
    db $e5, $0c, $fe, $e1, $f1, $e0, $da, $e1, $fc, $f7, $ce, $c0, $e0, $4b, $2b, $2b
    db $bf, $e1, $fe, $e0, $0a, $0b, $a1, $4b, $ce, $e3, $c7, $e3, $c5, $e1, $b9, $e1
    db $2c, $bd, $f7, $0b, $0a, $81, $e1, $2b, $bf, $e1, $6b, $bd, $e3, $8e, $e1, $84
    db $e1, $89, $e3, $58, $f6, $e3, $c0, $f6, $8b, $e1, $6b, $0b, $c0, $e1, $2b, $c0
    db $e3, $03, $0a, $0b, $8b, $e2, $c5, $e2, $fc, $e3, $7a, $e3, $7e, $f3, $c1, $e2
    db $06, $c0, $e5, $4b, $0b, $3c, $e2, $12, $e9, $05, $e2, $ff, $c2, $3e, $e6, $38
    db $35, $e4, $2e, $e3, $c1, $e3, $0b, $4b, $6b, $ff, $e0, $be, $c0, $c1, $4b, $00
    db $e0, $40, $e4, $3d, $e5, $b9, $c3, $80, $f6, $4b, $2b, $00, $c1, $e0, $7b, $e2
    db $b8, $e1, $00, $e4, $bf, $c5, $42, $e3, $80, $ec, $c3, $cb, $00, $cb, $e5, $7e
    db $e1, $7e, $c3, $c0, $e3, $85, $e3, $bf, $c5, $83, $d7, $8b, $e5, $00, $3d, $e0
    db $39, $c0, $ff, $e2, $8d, $c3, $fb, $e3, $3d, $e4, $c0, $d8, $08, $c4, $10, $f7
    db $c4, $40, $c5, $bc, $e6, $c1, $a2, $2c, $01, $c0, $80, $d4, $8c, $a0, $20, $8b
    db $a0, $c4, $a3, $40, $e6, $84, $e5, $01, $c4, $2c, $c0, $e9, $b6, $a2, $02, $b1
    db $a6, $0b, $4a, $c2, $7d, $e6, $c0, $a3, $49, $e8, $41, $a2, $81, $e1, $00, $7e
    db $a4, $78, $ad, $83, $a0, $7e, $e1, $7d, $c3, $c0, $e6, $4b, $c2, $40, $e8, $00
    db $c1, $a1, $3e, $b3, $86, $eb, $40, $c6, $c7, $a4, $81, $cb, $b5, $84, $f4, $c1
    db $40, $2e, $e2, $00, $c3, $ff, $e4, $c0, $ec, $45, $a4, $01, $c8, $2c, $b4, $c9
    db $06, $c0, $e7, $0b, $0a, $bf, $ee, $c0, $c7, $3f, $e8, $7d, $c1, $b4, $c3, $00
    db $81, $e9, $27, $93, $81, $c6, $38, $c4, $b1, $87, $b4, $c3, $c0, $e8, $d5, $66
    db $00, $d4, $70, $7d, $a4, $c1, $66, $b5, $73, $d4, $74, $51, $e3, $c0, $ea, $b5
    db $64, $02, $c2, $c2, $2c, $ae, $66, $d4, $74, $c0, $ef, $33, $c6, $c0, $e9, $63
    db $e9, $00, $d4, $69, $4f, $a1, $c7, $8c, $33, $a6, $bf, $d5, $d4, $69, $c0, $e2
    db $88, $89, $00, $32, $65, $00, $cc, $d4, $75, $cf, $85, $75, $5f, $d4, $73, $8f
    db $83, $fb, $89, $00, $75, $49, $ff, $aa, $d4, $76, $42, $84, $75, $50, $40, $a7
    db $99, $a6, $d4, $6c, $00, $0f, $82, $c4, $ab, $75, $48, $f2, $29, $d4, $73, $c0
    db $e3, $80, $cb, $75, $47, $00, $c0, $ee, $d4, $6e, $8f, $66, $75, $5c, $1d, $69
    db $d4, $69, $40, $c3, $bf, $c8, $00, $75, $54, $da, $44, $d4, $6d, $60, $a1, $c0
    db $a0, $bf, $c6, $75, $5b, $d4, $70, $00, $75, $8b, $75, $5b, $d4, $70, $80, $e2
    db $78, $47, $a1, $cf, $01, $c9, $d4, $70, $00, $c0, $ec, $75, $4d, $00, $8a, $d4
    db $72, $0f, $68, $75, $50, $02, $ae, $dc, $c5, $00, $e0, $6d, $a1, $d7, $4e, $73
    db $0f, $6d, $a1, $dd, $dd, $08, $0f, $6f, $4d, $87, $00, $a1, $d0, $cf, $4c, $3b
    db $f3, $c0, $c8, $a1, $cd, $ff, $ff, $c0, $c7, $a1, $d4, $00, $46, $53, $41, $8f
    db $a1, $d7, $76, $b7, $7d, $25, $6a, $45, $c0, $d5, $3f, $ff, $00, $62, $6f, $ff
    db $ff, $56, $03, $c1, $9f, $c0, $fb, $c1, $95, $ff, $ff, $3f, $aa, $00, $e2, $65
    db $20, $87, $ff, $ff, $c0, $4a, $c0, $e8, $ff, $ff, $f3, $d4, $cd, $bf, $00, $ff
    db $ff, $ff, $ff, $96, $ff, $99, $d3, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $37, $eb, $dc, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $00, $bf, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $5a, $73, $00, $00

    nop                                           ; $47f9: $00

    db $ff, $20, $20, $20, $00, $31, $31, $4d, $46, $7f, $55, $46, $47, $31, $31, $60
    db $5b, $ff, $e1, $e3, $5a, $00, $ff, $ff, $e7, $e6, $c0, $e0, $0f, $31, $31, $ff
    db $39, $30, $69, $6b, $36, $3c, $31, $61, $e6, $c2, $e1, $5b, $5b, $ca, $ff, $c0
    db $e8, $0a, $0b, $31, $f7, $31, $49, $48, $c0, $e0, $6b, $48, $49, $31, $81, $5f
    db $7f, $e2, $ca, $ff, $e8, $e7, $c2, $e0, $81, $e1, $c0, $e1, $6b, $07, $39, $31
    db $5e, $7f, $e2, $ca, $ff, $e8, $e7, $c1, $e1, $81, $e0, $f0, $c0, $e2, $7f, $e5
    db $ca, $ff, $c0, $ea, $4d, $32, $30, $30, $7f, $30, $6a, $6d, $6d, $6d, $30, $50
    db $7f, $e0, $bc, $00, $ff, $80, $ec, $3e, $32, $6d, $6a, $bf, $e4, $50, $c7, $31
    db $31, $62, $ff, $e0, $ca, $ff, $40, $e8, $49, $4c, $34, $86, $e0, $bf, $e4, $39
    db $f3, $c1, $31, $31, $ca, $ff, $00, $e8, $1c, $c4, $c0, $bf, $e5, $30, $71, $a5
    db $ff, $e2, $ca, $ff, $c0, $c8, $39, $52, $03, $e0, $7e, $e4, $77, $79, $80, $ff
    db $e2, $ca, $ff, $2a, $80, $eb, $30, $44, $c0, $69, $bc, $c0, $83, $c1, $e3, $c0
    db $ff, $e4, $00, $eb, $c0, $e6, $7b, $c0, $ff, $80, $d1, $3a, $54, $55, $8e, $fe
    db $e0, $54, $55, $6e, $41, $e4, $c0, $ff, $e9, $e8, $5d, $c4, $8d, $c3, $7a, $a1
    db $a0, $c1, $e4, $c0, $ff, $e9, $e8, $5b, $5c, $0d, $5d, $0d, $c1, $62, $62, $c0
    db $ff, $c0, $f3, $8f, $a1, $49, $81, $01, $60, $c0, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fd, $00, $00

    nop                                           ; $49b8: $00

    db $a5, $00, $ff, $e5, $32, $f6, $e6, $f7, $e7, $35, $ec, $ee, $37, $ec, $da, $f0
    db $c7, $e8, $33, $31, $e0, $f2, $36, $30, $37, $bf, $26, $20, $27, $10, $16, $17
    db $c2, $f6, $34, $ff, $36, $32, $30, $37, $31, $33, $31, $33, $00, $a0, $fb, $ff
    db $ef, $00, $00

    nop                                           ; $49ec: $00
    push af                                       ; $49ed: $f5
    ld c, c                                       ; $49ee: $49
    dec h                                         ; $49ef: $25
    ld c, d                                       ; $49f0: $4a
    sbc h                                         ; $49f1: $9c
    ld c, e                                       ; $49f2: $4b
    ld a, [hl]                                    ; $49f3: $7e
    ld c, l                                       ; $49f4: $4d
    ret z                                         ; $49f5: $c8

    inc bc                                        ; $49f6: $03
    call nz, $0306                                ; $49f7: $c4 $06 $03
    ld [bc], a                                    ; $49fa: $02
    ld [bc], a                                    ; $49fb: $02
    ld bc, $03c8                                  ; $49fc: $01 $c8 $03
    ldh a, [$03]                                  ; $49ff: $f0 $03
    call nz, $0306                                ; $4a01: $c4 $06 $03
    ld [bc], a                                    ; $4a04: $02
    ld c, b                                       ; $4a05: $48
    ld a, a                                       ; $4a06: $7f
    ld c, b                                       ; $4a07: $48
    ld a, a                                       ; $4a08: $7f
    ld c, b                                       ; $4a09: $48
    ld a, a                                       ; $4a0a: $7f
    ld c, b                                       ; $4a0b: $48
    ld a, a                                       ; $4a0c: $7f
    ld e, a                                       ; $4a0d: $5f
    ld e, e                                       ; $4a0e: $5b
    ret z                                         ; $4a0f: $c8

    inc bc                                        ; $4a10: $03
    inc bc                                        ; $4a11: $03
    ld [bc], a                                    ; $4a12: $02
    ld [bc], a                                    ; $4a13: $02
    ld bc, $0116                                  ; $4a14: $01 $16 $01
    ret z                                         ; $4a17: $c8

    inc bc                                        ; $4a18: $03
    inc bc                                        ; $4a19: $03
    ld [bc], a                                    ; $4a1a: $02
    ld [bc], a                                    ; $4a1b: $02
    ld bc, $2508                                  ; $4a1c: $01 $08 $25
    ld [$0825], sp                                ; $4a1f: $08 $25 $08
    dec h                                         ; $4a22: $25
    ld [$9d25], sp                                ; $4a23: $08 $25 $9d
    dec bc                                        ; $4a26: $0b
    rst $38                                       ; $4a27: $ff
    pop hl                                        ; $4a28: $e1
    ld l, e                                       ; $4a29: $6b
    ld l, e                                       ; $4a2a: $6b
    ld c, e                                       ; $4a2b: $4b
    rst $38                                       ; $4a2c: $ff
    pop hl                                        ; $4a2d: $e1
    db $f4                                        ; $4a2e: $f4
    ld [c], a                                     ; $4a2f: $e2
    dec hl                                        ; $4a30: $2b
    db $e3                                        ; $4a31: $e3
    dec hl                                        ; $4a32: $2b
    ld a, [bc]                                    ; $4a33: $0a
    db $ec                                        ; $4a34: $ec
    ld [c], a                                     ; $4a35: $e2
    rst $38                                       ; $4a36: $ff
    rst $38                                       ; $4a37: $ff
    and $e5                                       ; $4a38: $e6 $e5
    ld l, e                                       ; $4a3a: $6b
    ld l, e                                       ; $4a3b: $6b
    dec hl                                        ; $4a3c: $2b
    dec de                                        ; $4a3d: $1b
    dec hl                                        ; $4a3e: $2b
    ld l, e                                       ; $4a3f: $6b
    cp l                                          ; $4a40: $bd
    db $e4                                        ; $4a41: $e4
    ld c, e                                       ; $4a42: $4b
    dec hl                                        ; $4a43: $2b
    cp [hl]                                       ; $4a44: $be
    ldh [$cd], a                                  ; $4a45: $e0 $cd
    rst $38                                       ; $4a47: $ff
    ld [$83e9], a                                 ; $4a48: $ea $e9 $83
    ld c, e                                       ; $4a4b: $4b
    dec bc                                        ; $4a4c: $0b
    jp nz, Jump_05d_7de1                          ; $4a4d: $c2 $e1 $7d

    push hl                                       ; $4a50: $e5
    ld a, d                                       ; $4a51: $7a
    db $e4                                        ; $4a52: $e4
    rst $38                                       ; $4a53: $ff
    rst $38                                       ; $4a54: $ff
    pop bc                                        ; $4a55: $c1
    and $4b                                       ; $4a56: $e6 $4b
    ld c, $82                                     ; $4a58: $0e $82
    ldh [$2b], a                                  ; $4a5a: $e0 $2b
    dec hl                                        ; $4a5c: $2b
    dec hl                                        ; $4a5d: $2b
    add c                                         ; $4a5e: $81
    db $e3                                        ; $4a5f: $e3
    ld [hl], l                                    ; $4a60: $75
    ldh [$bf], a                                  ; $4a61: $e0 $bf
    rst $38                                       ; $4a63: $ff
    add d                                         ; $4a64: $82
    db $eb                                        ; $4a65: $eb
    ld [bc], a                                    ; $4a66: $02
    ld c, $e0                                     ; $4a67: $0e $e0
    dec hl                                        ; $4a69: $2b
    nop                                           ; $4a6a: $00
    db $e3                                        ; $4a6b: $e3
    ld a, c                                       ; $4a6c: $79
    pop hl                                        ; $4a6d: $e1
    ret nz                                        ; $4a6e: $c0

    rst $38                                       ; $4a6f: $ff
    ret nz                                        ; $4a70: $c0

    ldh a, [rSC]                                  ; $4a71: $f0 $02
    db $e4                                        ; $4a73: $e4
    ld a, d                                       ; $4a74: $7a
    ldh [rP1], a                                  ; $4a75: $e0 $00
    or l                                          ; $4a77: $b5
    ld [c], a                                     ; $4a78: $e2
    jp z, $ffff                                   ; $4a79: $ca $ff $ff

    rlc b                                         ; $4a7c: $cb $00
    ld [c], a                                     ; $4a7e: $e2
    ret nz                                        ; $4a7f: $c0

    ld [c], a                                     ; $4a80: $e2
    ld hl, sp-$3d                                 ; $4a81: $f8 $c3
    call $81ff                                    ; $4a83: $cd $ff $81
    jp z, $8a00                                   ; $4a86: $ca $00 $8a

    ld [c], a                                     ; $4a89: $e2
    ld b, h                                       ; $4a8a: $44
    db $e3                                        ; $4a8b: $e3
    or a                                          ; $4a8c: $b7
    pop bc                                        ; $4a8d: $c1
    dec l                                         ; $4a8e: $2d
    pop hl                                        ; $4a8f: $e1
    rst $38                                       ; $4a90: $ff
    rst $38                                       ; $4a91: $ff
    add sp, -$19                                  ; $4a92: $e8 $e7
    add $c1                                       ; $4a94: $c6 $c1
    rlca                                          ; $4a96: $07
    ld [c], a                                     ; $4a97: $e2
    nop                                           ; $4a98: $00
    cp c                                          ; $4a99: $b9
    push hl                                       ; $4a9a: $e5
    call $c2ff                                    ; $4a9b: $cd $ff $c2
    jp hl                                         ; $4a9e: $e9


    ld c, [hl]                                    ; $4a9f: $4e
    ret nz                                        ; $4aa0: $c0

    rst $00                                       ; $4aa1: $c7
    jp $c5bd                                      ; $4aa2: $c3 $bd $c5


    ld bc, $82df                                  ; $4aa5: $01 $df $82
    ld [$8800], a                                 ; $4aa8: $ea $00 $88
    push hl                                       ; $4aab: $e5
    ccf                                           ; $4aac: $3f
    push bc                                       ; $4aad: $c5
    call $beff                                    ; $4aae: $cd $ff $be
    pop af                                        ; $4ab1: $f1
    ld c, b                                       ; $4ab2: $48
    pop bc                                        ; $4ab3: $c1
    pop bc                                        ; $4ab4: $c1
    rst $38                                       ; $4ab5: $ff
    pop bc                                        ; $4ab6: $c1
    sub $be                                       ; $4ab7: $d6 $be
    jp nz, $8700                                  ; $4ab9: $c2 $00 $87

    push bc                                       ; $4abc: $c5
    cp h                                          ; $4abd: $bc
    rst $38                                       ; $4abe: $ff
    nop                                           ; $4abf: $00
    ld [$e4c0], a                                 ; $4ac0: $ea $c0 $e4
    ld a, [c]                                     ; $4ac3: $f2
    add a                                         ; $4ac4: $87
    ret nz                                        ; $4ac5: $c0

    sbc a                                         ; $4ac6: $9f
    add b                                         ; $4ac7: $80
    xor l                                         ; $4ac8: $ad
    or e                                          ; $4ac9: $b3
    adc c                                         ; $4aca: $89
    ld sp, $c10a                                  ; $4acb: $31 $0a $c1
    rst $38                                       ; $4ace: $ff
    ld bc, $74ab                                  ; $4acf: $01 $ab $74
    adc e                                         ; $4ad2: $8b
    ld a, [bc]                                    ; $4ad3: $0a
    ld a, [bc]                                    ; $4ad4: $0a
    ret nz                                        ; $4ad5: $c0

    cp a                                          ; $4ad6: $bf
    rst $38                                       ; $4ad7: $ff
    rst $38                                       ; $4ad8: $ff
    nop                                           ; $4ad9: $00
    rst $38                                       ; $4ada: $ff
    rst $38                                       ; $4adb: $ff
    rst $38                                       ; $4adc: $ff
    rst $38                                       ; $4add: $ff
    rst $38                                       ; $4ade: $ff
    rst $38                                       ; $4adf: $ff
    rst $38                                       ; $4ae0: $ff
    rst $38                                       ; $4ae1: $ff
    rst $38                                       ; $4ae2: $ff
    rst $38                                       ; $4ae3: $ff
    rst $38                                       ; $4ae4: $ff
    rst $38                                       ; $4ae5: $ff
    rst $38                                       ; $4ae6: $ff
    rst $38                                       ; $4ae7: $ff
    rst $38                                       ; $4ae8: $ff
    rst $38                                       ; $4ae9: $ff
    nop                                           ; $4aea: $00
    rst $38                                       ; $4aeb: $ff
    rst $38                                       ; $4aec: $ff
    rst $38                                       ; $4aed: $ff
    rst $38                                       ; $4aee: $ff
    rst $38                                       ; $4aef: $ff
    rst $38                                       ; $4af0: $ff
    rst $38                                       ; $4af1: $ff
    rst $38                                       ; $4af2: $ff
    rst $38                                       ; $4af3: $ff
    rst $38                                       ; $4af4: $ff
    rst $38                                       ; $4af5: $ff
    rst $38                                       ; $4af6: $ff
    rst $38                                       ; $4af7: $ff
    rst $38                                       ; $4af8: $ff
    rst $38                                       ; $4af9: $ff
    rst $38                                       ; $4afa: $ff
    nop                                           ; $4afb: $00
    rst $38                                       ; $4afc: $ff
    rst $38                                       ; $4afd: $ff
    rst $38                                       ; $4afe: $ff
    rst $38                                       ; $4aff: $ff
    rst $38                                       ; $4b00: $ff
    rst $38                                       ; $4b01: $ff
    rst $38                                       ; $4b02: $ff
    rst $38                                       ; $4b03: $ff
    rst $38                                       ; $4b04: $ff
    rst $38                                       ; $4b05: $ff
    rst $38                                       ; $4b06: $ff
    rst $38                                       ; $4b07: $ff
    rst $38                                       ; $4b08: $ff
    rst $38                                       ; $4b09: $ff
    rst $38                                       ; $4b0a: $ff
    rst $38                                       ; $4b0b: $ff
    nop                                           ; $4b0c: $00
    rst $38                                       ; $4b0d: $ff
    rst $38                                       ; $4b0e: $ff
    rst $38                                       ; $4b0f: $ff
    rst $38                                       ; $4b10: $ff
    rst $38                                       ; $4b11: $ff
    rst $38                                       ; $4b12: $ff
    rst $38                                       ; $4b13: $ff
    rst $38                                       ; $4b14: $ff
    rst $38                                       ; $4b15: $ff
    rst $38                                       ; $4b16: $ff
    rst $38                                       ; $4b17: $ff
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

Jump_05d_4b6e:
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
    push af                                       ; $4b98: $f5
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00

jr_05d_4b9b:
    nop                                           ; $4b9b: $00
    rst $38                                       ; $4b9c: $ff
    add hl, hl                                    ; $4b9d: $29
    ld l, $01                                     ; $4b9e: $2e $01
    ld bc, $4401                                  ; $4ba0: $01 $01 $44
    ld d, $23                                     ; $4ba3: $16 $23
    rst $28                                       ; $4ba5: $ef
    ld [hl+], a                                   ; $4ba6: $22
    inc hl                                        ; $4ba7: $23
    ld d, $17                                     ; $4ba8: $16 $17
    or $e0                                        ; $4baa: $f6 $e0

jr_05d_4bac:
    jr nc, jr_05d_4bde                            ; $4bac: $30 $30

    dec hl                                        ; $4bae: $2b
    rst $00                                       ; $4baf: $c7
    ld a, [hl+]                                   ; $4bb0: $2a
    jr z, jr_05d_4c04                             ; $4bb1: $28 $51

    rst $38                                       ; $4bb3: $ff
    rst $38                                       ; $4bb4: $ff
    rst $20                                       ; $4bb5: $e7
    and $c1                                       ; $4bb6: $e6 $c1
    ldh [rLY], a                                  ; $4bb8: $e0 $44
    ld b, e                                       ; $4bba: $43
    db $db                                        ; $4bbb: $db
    ld b, c                                       ; $4bbc: $41
    nop                                           ; $4bbd: $00
    rst $38                                       ; $4bbe: $ff
    ldh [$3b], a                                  ; $4bbf: $e0 $3b
    ld b, $bb                                     ; $4bc1: $06 $bb
    ldh [$15], a                                  ; $4bc3: $e0 $15
    inc b                                         ; $4bc5: $04
    rst $20                                       ; $4bc6: $e7
    ld bc, $2e01                                  ; $4bc7: $01 $01 $2e
    jp z, $e8ff                                   ; $4bca: $ca $ff $e8

    rst $20                                       ; $4bcd: $e7
    ld bc, $4201                                  ; $4bce: $01 $01 $42
    db $ed                                        ; $4bd1: $ed
    inc a                                         ; $4bd2: $3c
    pop bc                                        ; $4bd3: $c1
    ld [c], a                                     ; $4bd4: $e2
    nop                                           ; $4bd5: $00
    dec sp                                        ; $4bd6: $3b
    rst $38                                       ; $4bd7: $ff
    ldh [$38], a                                  ; $4bd8: $e0 $38
    nop                                           ; $4bda: $00
    inc d                                         ; $4bdb: $14
    rst $20                                       ; $4bdc: $e7
    inc c                                         ; $4bdd: $0c

jr_05d_4bde:
    ld bc, $ca01                                  ; $4bde: $01 $01 $ca
    rst $38                                       ; $4be1: $ff
    ret nz                                        ; $4be2: $c0

    add sp, $42                                   ; $4be3: $e8 $42

Call_05d_4be5:
    inc a                                         ; $4be5: $3c
    ld c, d                                       ; $4be6: $4a
    db $eb                                        ; $4be7: $eb
    nop                                           ; $4be8: $00
    jr c, jr_05d_4bac                             ; $4be9: $38 $c1

    ld [c], a                                     ; $4beb: $e2
    jr c, @+$01                                   ; $4bec: $38 $ff

    ldh [rP1], a                                  ; $4bee: $e0 $00
    jr c, jr_05d_4bf7                             ; $4bf0: $38 $05

    reti                                          ; $4bf2: $d9


    dec e                                         ; $4bf3: $1d
    ret nz                                        ; $4bf4: $c0

    rst $38                                       ; $4bf5: $ff
    jp hl                                         ; $4bf6: $e9


jr_05d_4bf7:
    add sp, $3f                                   ; $4bf7: $e8 $3f
    inc a                                         ; $4bf9: $3c
    ret nz                                        ; $4bfa: $c0

    ldh [rP1], a                                  ; $4bfb: $e0 $00
    jr c, jr_05d_4b9b                             ; $4bfd: $38 $9c

    add e                                         ; $4bff: $83
    db $e3                                        ; $4c00: $e3
    add hl, sp                                    ; $4c01: $39
    ldh [$38], a                                  ; $4c02: $e0 $38

jr_05d_4c04:
    nop                                           ; $4c04: $00
    add hl, bc                                    ; $4c05: $09
    ret nz                                        ; $4c06: $c0

    rst $38                                       ; $4c07: $ff
    jp hl                                         ; $4c08: $e9


    add sp, $3d                                   ; $4c09: $e8 $3d
    rst $00                                       ; $4c0b: $c7
    inc a                                         ; $4c0c: $3c
    inc a                                         ; $4c0d: $3c
    ld a, $c9                                     ; $4c0e: $3e $c9
    pop hl                                        ; $4c10: $e1
    ld b, e                                       ; $4c11: $43
    ld [c], a                                     ; $4c12: $e2
    ld a, [hl]                                    ; $4c13: $7e
    ld [c], a                                     ; $4c14: $e2
    jr @+$1b                                      ; $4c15: $18 $19

    cp h                                          ; $4c17: $bc
    jp z, $e8ff                                   ; $4c18: $ca $ff $e8

    rst $20                                       ; $4c1b: $e7
    ld c, d                                       ; $4c1c: $4a
    inc a                                         ; $4c1d: $3c
    inc a                                         ; $4c1e: $3c
    ld b, b                                       ; $4c1f: $40
    adc b                                         ; $4c20: $88
    ld [c], a                                     ; $4c21: $e2
    ld [hl], $09                                  ; $4c22: $36 $09
    ld [hl], $43                                  ; $4c24: $36 $43
    ldh [$f7], a                                  ; $4c26: $e0 $f7
    jp nz, $ca1f                                  ; $4c28: $c2 $1f $ca

    rst $38                                       ; $4c2b: $ff
    add b                                         ; $4c2c: $80
    jp hl                                         ; $4c2d: $e9


    ld b, c                                       ; $4c2e: $41
    ldh [$fe], a                                  ; $4c2f: $e0 $fe
    push hl                                       ; $4c31: $e5
    inc a                                         ; $4c32: $3c
    ret nz                                        ; $4c33: $c0

    rst $38                                       ; $4c34: $ff
    nop                                           ; $4c35: $00
    ldh a, [$3e]                                  ; $4c36: $f0 $3e
    ld a, [hl-]                                   ; $4c38: $3a
    ld a, [hl-]                                   ; $4c39: $3a
    ld a, [hl-]                                   ; $4c3a: $3a
    ld b, $e2                                     ; $4c3b: $06 $e2
    pop bc                                        ; $4c3d: $c1
    pop bc                                        ; $4c3e: $c1
    and $37                                       ; $4c3f: $e6 $37
    ret nz                                        ; $4c41: $c0

    dec b                                         ; $4c42: $05
    dec e                                         ; $4c43: $1d
    jp z, $e8ff                                   ; $4c44: $ca $ff $e8

    rst $20                                       ; $4c47: $e7
    ld c, h                                       ; $4c48: $4c
    inc a                                         ; $4c49: $3c
    ld b, b                                       ; $4c4a: $40
    adc a                                         ; $4c4b: $8f
    inc sp                                        ; $4c4c: $33
    inc sp                                        ; $4c4d: $33
    dec [hl]                                      ; $4c4e: $35
    dec sp                                        ; $4c4f: $3b
    cp l                                          ; $4c50: $bd
    ret nz                                        ; $4c51: $c0

    cp c                                          ; $4c52: $b9
    ldh [$b7], a                                  ; $4c53: $e0 $b7
    ld [c], a                                     ; $4c55: $e2
    ld hl, $c0a4                                  ; $4c56: $21 $a4 $c0
    rst $18                                       ; $4c59: $df
    ret nz                                        ; $4c5a: $c0

    jp hl                                         ; $4c5b: $e9


    ld a, $08                                     ; $4c5c: $3e $08
    pop bc                                        ; $4c5e: $c1
    cp a                                          ; $4c5f: $bf
    ldh [$37], a                                  ; $4c60: $e0 $37
    ret nz                                        ; $4c62: $c0

    ld [c], a                                     ; $4c63: $e2
    ld a, [hl-]                                   ; $4c64: $3a
    and a                                         ; $4c65: $a7
    nop                                           ; $4c66: $00
    ld b, $0c                                     ; $4c67: $06 $0c
    ret nz                                        ; $4c69: $c0

    rst $38                                       ; $4c6a: $ff
    ret nz                                        ; $4c6b: $c0

jr_05d_4c6c:
    xor c                                         ; $4c6c: $a9
    jr nz, @-$36                                  ; $4c6d: $20 $c8

    and c                                         ; $4c6f: $a1
    dec sp                                        ; $4c70: $3b
    dec de                                        ; $4c71: $1b
    dec [hl]                                      ; $4c72: $35
    add hl, sp                                    ; $4c73: $39
    ret nz                                        ; $4c74: $c0

    db $e3                                        ; $4c75: $e3
    ld [de], a                                    ; $4c76: $12
    dec d                                         ; $4c77: $15
    ld a, [hl-]                                   ; $4c78: $3a
    and b                                         ; $4c79: $a0
    jp z, $80ff                                   ; $4c7a: $ca $ff $80

    xor b                                         ; $4c7d: $a8
    db $db                                        ; $4c7e: $db
    ld c, $02                                     ; $4c7f: $0e $02
    add a                                         ; $4c81: $87
    and c                                         ; $4c82: $a1
    inc [hl]                                      ; $4c83: $34
    add hl, sp                                    ; $4c84: $39
    ccf                                           ; $4c85: $3f
    pop hl                                        ; $4c86: $e1
    ld b, $22                                     ; $4c87: $06 $22
    cp b                                          ; $4c89: $b8
    add d                                         ; $4c8a: $82
    and b                                         ; $4c8b: $a0
    ld b, b                                       ; $4c8c: $40
    cp a                                          ; $4c8d: $bf
    ld [$2fe9], a                                 ; $4c8e: $ea $e9 $2f
    ld bc, $bf1d                                  ; $4c91: $01 $1d $bf
    pop hl                                        ; $4c94: $e1
    inc [hl]                                      ; $4c95: $34
    jp $0639                                      ; $4c96: $c3 $39 $06


    inc bc                                        ; $4c99: $03
    and b                                         ; $4c9a: $a0
    cp [hl]                                       ; $4c9b: $be
    add c                                         ; $4c9c: $81
    ret nz                                        ; $4c9d: $c0

    sbc a                                         ; $4c9e: $9f
    ret nz                                        ; $4c9f: $c0

    adc l                                         ; $4ca0: $8d
    dec e                                         ; $4ca1: $1d
    dec d                                         ; $4ca2: $15
    jr c, jr_05d_4c6c                             ; $4ca3: $38 $c7

    add c                                         ; $4ca5: $81
    add d                                         ; $4ca6: $82
    add c                                         ; $4ca7: $81
    add e                                         ; $4ca8: $83
    pop hl                                        ; $4ca9: $e1
    jr z, jr_05d_4cd4                             ; $4caa: $28 $28

    add hl, hl                                    ; $4cac: $29
    jp z, $e8ff                                   ; $4cad: $ca $ff $e8

    rst $20                                       ; $4cb0: $e7
    nop                                           ; $4cb1: $00
    ld b, b                                       ; $4cb2: $40
    add d                                         ; $4cb3: $82
    db $fd                                        ; $4cb4: $fd
    rst $20                                       ; $4cb5: $e7
    pop bc                                        ; $4cb6: $c1
    pop hl                                        ; $4cb7: $e1
    ret nz                                        ; $4cb8: $c0

    rst $38                                       ; $4cb9: $ff
    rst $38                                       ; $4cba: $ff
    rst $38                                       ; $4cbb: $ff
    rst $38                                       ; $4cbc: $ff
    rst $38                                       ; $4cbd: $ff
    rst $38                                       ; $4cbe: $ff
    rst $38                                       ; $4cbf: $ff
    rst $38                                       ; $4cc0: $ff
    rst $38                                       ; $4cc1: $ff
    nop                                           ; $4cc2: $00
    rst $38                                       ; $4cc3: $ff
    rst $38                                       ; $4cc4: $ff
    rst $38                                       ; $4cc5: $ff
    rst $38                                       ; $4cc6: $ff
    rst $38                                       ; $4cc7: $ff
    rst $38                                       ; $4cc8: $ff
    rst $38                                       ; $4cc9: $ff
    rst $38                                       ; $4cca: $ff
    rst $38                                       ; $4ccb: $ff
    rst $38                                       ; $4ccc: $ff
    rst $38                                       ; $4ccd: $ff
    rst $38                                       ; $4cce: $ff
    rst $38                                       ; $4ccf: $ff
    rst $38                                       ; $4cd0: $ff
    rst $38                                       ; $4cd1: $ff
    rst $38                                       ; $4cd2: $ff
    nop                                           ; $4cd3: $00

jr_05d_4cd4:
    rst $38                                       ; $4cd4: $ff
    rst $38                                       ; $4cd5: $ff
    rst $38                                       ; $4cd6: $ff
    rst $38                                       ; $4cd7: $ff
    rst $38                                       ; $4cd8: $ff
    rst $38                                       ; $4cd9: $ff
    rst $38                                       ; $4cda: $ff
    rst $38                                       ; $4cdb: $ff
    rst $38                                       ; $4cdc: $ff
    rst $38                                       ; $4cdd: $ff
    rst $38                                       ; $4cde: $ff
    rst $38                                       ; $4cdf: $ff
    rst $38                                       ; $4ce0: $ff
    rst $38                                       ; $4ce1: $ff
    rst $38                                       ; $4ce2: $ff
    rst $38                                       ; $4ce3: $ff
    nop                                           ; $4ce4: $00
    rst $38                                       ; $4ce5: $ff
    rst $38                                       ; $4ce6: $ff
    rst $38                                       ; $4ce7: $ff
    rst $38                                       ; $4ce8: $ff
    rst $38                                       ; $4ce9: $ff
    rst $38                                       ; $4cea: $ff
    rst $38                                       ; $4ceb: $ff
    rst $38                                       ; $4cec: $ff
    rst $38                                       ; $4ced: $ff
    rst $38                                       ; $4cee: $ff
    rst $38                                       ; $4cef: $ff
    rst $38                                       ; $4cf0: $ff
    rst $38                                       ; $4cf1: $ff
    rst $38                                       ; $4cf2: $ff
    rst $38                                       ; $4cf3: $ff
    rst $38                                       ; $4cf4: $ff
    nop                                           ; $4cf5: $00
    rst $38                                       ; $4cf6: $ff
    rst $38                                       ; $4cf7: $ff
    rst $38                                       ; $4cf8: $ff
    rst $38                                       ; $4cf9: $ff
    rst $38                                       ; $4cfa: $ff
    rst $38                                       ; $4cfb: $ff
    rst $38                                       ; $4cfc: $ff
    rst $38                                       ; $4cfd: $ff
    rst $38                                       ; $4cfe: $ff
    rst $38                                       ; $4cff: $ff
    rst $38                                       ; $4d00: $ff
    rst $38                                       ; $4d01: $ff
    rst $38                                       ; $4d02: $ff
    rst $38                                       ; $4d03: $ff
    rst $38                                       ; $4d04: $ff
    rst $38                                       ; $4d05: $ff
    nop                                           ; $4d06: $00
    rst $38                                       ; $4d07: $ff
    rst $38                                       ; $4d08: $ff
    rst $38                                       ; $4d09: $ff
    rst $38                                       ; $4d0a: $ff
    rst $38                                       ; $4d0b: $ff
    rst $38                                       ; $4d0c: $ff
    rst $38                                       ; $4d0d: $ff
    rst $38                                       ; $4d0e: $ff
    rst $38                                       ; $4d0f: $ff
    rst $38                                       ; $4d10: $ff
    rst $38                                       ; $4d11: $ff
    rst $38                                       ; $4d12: $ff
    rst $38                                       ; $4d13: $ff
    rst $38                                       ; $4d14: $ff
    rst $38                                       ; $4d15: $ff
    rst $38                                       ; $4d16: $ff
    nop                                           ; $4d17: $00
    rst $38                                       ; $4d18: $ff
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
    nop                                           ; $4d28: $00
    rst $38                                       ; $4d29: $ff
    rst $38                                       ; $4d2a: $ff
    rst $38                                       ; $4d2b: $ff
    rst $38                                       ; $4d2c: $ff
    rst $38                                       ; $4d2d: $ff
    rst $38                                       ; $4d2e: $ff
    rst $38                                       ; $4d2f: $ff
    rst $38                                       ; $4d30: $ff
    rst $38                                       ; $4d31: $ff
    rst $38                                       ; $4d32: $ff
    rst $38                                       ; $4d33: $ff
    rst $38                                       ; $4d34: $ff
    rst $38                                       ; $4d35: $ff
    rst $38                                       ; $4d36: $ff
    rst $38                                       ; $4d37: $ff
    rst $38                                       ; $4d38: $ff
    nop                                           ; $4d39: $00
    rst $38                                       ; $4d3a: $ff
    rst $38                                       ; $4d3b: $ff
    rst $38                                       ; $4d3c: $ff
    rst $38                                       ; $4d3d: $ff
    rst $38                                       ; $4d3e: $ff
    rst $38                                       ; $4d3f: $ff
    rst $38                                       ; $4d40: $ff
    rst $38                                       ; $4d41: $ff
    rst $38                                       ; $4d42: $ff
    rst $38                                       ; $4d43: $ff
    rst $38                                       ; $4d44: $ff
    rst $38                                       ; $4d45: $ff
    rst $38                                       ; $4d46: $ff
    rst $38                                       ; $4d47: $ff
    rst $38                                       ; $4d48: $ff
    rst $38                                       ; $4d49: $ff
    nop                                           ; $4d4a: $00
    rst $38                                       ; $4d4b: $ff
    rst $38                                       ; $4d4c: $ff
    rst $38                                       ; $4d4d: $ff
    rst $38                                       ; $4d4e: $ff
    rst $38                                       ; $4d4f: $ff
    rst $38                                       ; $4d50: $ff
    rst $38                                       ; $4d51: $ff
    rst $38                                       ; $4d52: $ff
    rst $38                                       ; $4d53: $ff
    rst $38                                       ; $4d54: $ff
    rst $38                                       ; $4d55: $ff
    rst $38                                       ; $4d56: $ff
    rst $38                                       ; $4d57: $ff
    rst $38                                       ; $4d58: $ff
    rst $38                                       ; $4d59: $ff
    rst $38                                       ; $4d5a: $ff
    nop                                           ; $4d5b: $00
    rst $38                                       ; $4d5c: $ff
    rst $38                                       ; $4d5d: $ff
    rst $38                                       ; $4d5e: $ff
    rst $38                                       ; $4d5f: $ff
    rst $38                                       ; $4d60: $ff
    rst $38                                       ; $4d61: $ff
    rst $38                                       ; $4d62: $ff
    rst $38                                       ; $4d63: $ff
    rst $38                                       ; $4d64: $ff
    rst $38                                       ; $4d65: $ff
    rst $38                                       ; $4d66: $ff
    rst $38                                       ; $4d67: $ff
    rst $38                                       ; $4d68: $ff
    rst $38                                       ; $4d69: $ff
    rst $38                                       ; $4d6a: $ff
    rst $38                                       ; $4d6b: $ff
    nop                                           ; $4d6c: $00
    rst $38                                       ; $4d6d: $ff
    rst $38                                       ; $4d6e: $ff
    rst $38                                       ; $4d6f: $ff
    rst $38                                       ; $4d70: $ff
    rst $38                                       ; $4d71: $ff
    rst $38                                       ; $4d72: $ff
    rst $38                                       ; $4d73: $ff
    rst $38                                       ; $4d74: $ff
    rst $38                                       ; $4d75: $ff
    rst $38                                       ; $4d76: $ff
    rst $38                                       ; $4d77: $ff
    rst $38                                       ; $4d78: $ff
    rst $38                                       ; $4d79: $ff
    db $f4                                        ; $4d7a: $f4
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    ld sp, hl                                     ; $4d7e: $f9
    nop                                           ; $4d7f: $00
    rst $38                                       ; $4d80: $ff
    rst $38                                       ; $4d81: $ff
    xor $ed                                       ; $4d82: $ee $ed
    ld [hl], $30                                  ; $4d84: $36 $30
    scf                                           ; $4d86: $37
    ld h, $20                                     ; $4d87: $26 $20
    cpl                                           ; $4d89: $2f
    daa                                           ; $4d8a: $27
    db $10                                        ; $4d8b: $10
    ld d, $17                                     ; $4d8c: $16 $17
    push de                                       ; $4d8e: $d5
    rst $28                                       ; $4d8f: $ef
    ld de, $e0ff                                  ; $4d90: $11 $ff $e0
    cp a                                          ; $4d93: $bf
    rst $38                                       ; $4d94: $ff
    nop                                           ; $4d95: $00
    rst $38                                       ; $4d96: $ff
    rst $38                                       ; $4d97: $ff
    rst $38                                       ; $4d98: $ff
    rst $38                                       ; $4d99: $ff
    rst $38                                       ; $4d9a: $ff
    push hl                                       ; $4d9b: $e5
    nop                                           ; $4d9c: $00
    nop                                           ; $4d9d: $00
    nop                                           ; $4d9e: $00
    and a                                         ; $4d9f: $a7
    ld c, l                                       ; $4da0: $4d
    rst $10                                       ; $4da1: $d7
    ld c, l                                       ; $4da2: $4d
    add b                                         ; $4da3: $80
    ld d, b                                       ; $4da4: $50
    ld a, c                                       ; $4da5: $79
    ld d, d                                       ; $4da6: $52
    ldh a, [$03]                                  ; $4da7: $f0 $03
    ld c, l                                       ; $4da9: $4d
    rrca                                          ; $4daa: $0f
    ld b, b                                       ; $4dab: $40
    ld [bc], a                                    ; $4dac: $02
    ret nz                                        ; $4dad: $c0

    nop                                           ; $4dae: $00
    ldh a, [$03]                                  ; $4daf: $f0 $03
    push af                                       ; $4db1: $f5
    inc bc                                        ; $4db2: $03
    ld c, b                                       ; $4db3: $48
    rrca                                          ; $4db4: $0f
    ld b, b                                       ; $4db5: $40
    ld [bc], a                                    ; $4db6: $02
    ld e, a                                       ; $4db7: $5f
    dec sp                                        ; $4db8: $3b
    jr c, @+$10                                   ; $4db9: $38 $0e

    ld sp, $4819                                  ; $4dbb: $31 $19 $48
    rrca                                          ; $4dbe: $0f
    ld [$0825], sp                                ; $4dbf: $08 $25 $08
    dec h                                         ; $4dc2: $25
    ld [$0825], sp                                ; $4dc3: $08 $25 $08
    dec h                                         ; $4dc6: $25
    ld [$0825], sp                                ; $4dc7: $08 $25 $08
    dec h                                         ; $4dca: $25
    ld [$0825], sp                                ; $4dcb: $08 $25 $08
    dec h                                         ; $4dce: $25
    ld [$0825], sp                                ; $4dcf: $08 $25 $08
    dec h                                         ; $4dd2: $25
    ld [$0825], sp                                ; $4dd3: $08 $25 $08
    dec h                                         ; $4dd6: $25
    rst $38                                       ; $4dd7: $ff
    ld c, d                                       ; $4dd8: $4a
    ld c, d                                       ; $4dd9: $4a
    ld c, d                                       ; $4dda: $4a
    ld l, e                                       ; $4ddb: $6b
    dec bc                                        ; $4ddc: $0b
    dec bc                                        ; $4ddd: $0b
    dec bc                                        ; $4dde: $0b
    ld l, e                                       ; $4ddf: $6b
    rst $30                                       ; $4de0: $f7
    ld l, e                                       ; $4de1: $6b
    ld c, e                                       ; $4de2: $4b
    ld c, e                                       ; $4de3: $4b
    ld sp, hl                                     ; $4de4: $f9
    ldh [$2b], a                                  ; $4de5: $e0 $2b
    dec bc                                        ; $4de7: $0b
    ld c, d                                       ; $4de8: $4a
    ld l, d                                       ; $4de9: $6a
    ccf                                           ; $4dea: $3f
    ld l, d                                       ; $4deb: $6a
    ld l, d                                       ; $4dec: $6a
    inc c                                         ; $4ded: $0c
    inc c                                         ; $4dee: $0c
    ld c, h                                       ; $4def: $4c
    inc c                                         ; $4df0: $0c
    db $fc                                        ; $4df1: $fc
    db $e3                                        ; $4df2: $e3
    db $fd                                        ; $4df3: $fd
    and $a3                                       ; $4df4: $e6 $a3
    ld c, h                                       ; $4df6: $4c
    ld c, h                                       ; $4df7: $4c
    ldh a, [$eb]                                  ; $4df8: $f0 $eb
    db $e4                                        ; $4dfa: $e4
    and $c0                                       ; $4dfb: $e6 $c0
    db $e3                                        ; $4dfd: $e3
    ld l, e                                       ; $4dfe: $6b
    rst $38                                       ; $4dff: $ff
    ldh [rWX], a                                  ; $4e00: $e0 $4b
    ld [bc], a                                    ; $4e02: $02
    cp [hl]                                       ; $4e03: $be
    pop hl                                        ; $4e04: $e1
    ld c, e                                       ; $4e05: $4b
    cp a                                          ; $4e06: $bf
    pop hl                                        ; $4e07: $e1
    db $d3                                        ; $4e08: $d3
    pop hl                                        ; $4e09: $e1
    rst $38                                       ; $4e0a: $ff
    ldh [$bc], a                                  ; $4e0b: $e0 $bc
    db $e3                                        ; $4e0d: $e3
    cp c                                          ; $4e0e: $b9
    ld [c], a                                     ; $4e0f: $e2
    ld hl, sp-$1f                                 ; $4e10: $f8 $e1
    ld [$f6c0], sp                                ; $4e12: $08 $c0 $f6
    pop bc                                        ; $4e15: $c1
    db $e3                                        ; $4e16: $e3
    ret nz                                        ; $4e17: $c0

    pop hl                                        ; $4e18: $e1
    ld c, e                                       ; $4e19: $4b
    ret nz                                        ; $4e1a: $c0

    ldh [$7e], a                                  ; $4e1b: $e0 $7e
    ldh [$8e], a                                  ; $4e1d: $e0 $8e
    and $fd                                       ; $4e1f: $e6 $fd
    db $e4                                        ; $4e21: $e4
    ldh [$b5], a                                  ; $4e22: $e0 $b5
    db $e3                                        ; $4e24: $e3
    add b                                         ; $4e25: $80
    push af                                       ; $4e26: $f5
    add c                                         ; $4e27: $81
    pop hl                                        ; $4e28: $e1
    ccf                                           ; $4e29: $3f
    db $e3                                        ; $4e2a: $e3
    ld a, a                                       ; $4e2b: $7f
    ld [c], a                                     ; $4e2c: $e2
    ld a, [bc]                                    ; $4e2d: $0a
    dec bc                                        ; $4e2e: $0b
    ld c, d                                       ; $4e2f: $4a
    ret nc                                        ; $4e30: $d0

    ret nc                                        ; $4e31: $d0

    push hl                                       ; $4e32: $e5
    ld a, b                                       ; $4e33: $78
    db $e3                                        ; $4e34: $e3
    inc sp                                        ; $4e35: $33
    db $e3                                        ; $4e36: $e3
    ld b, b                                       ; $4e37: $40
    ldh [$2c], a                                  ; $4e38: $e0 $2c
    ld b, b                                       ; $4e3a: $40
    ld a, [c]                                     ; $4e3b: $f2
    ld l, d                                       ; $4e3c: $6a
    dec hl                                        ; $4e3d: $2b
    db $10                                        ; $4e3e: $10
    ld bc, $fee0                                  ; $4e3f: $01 $e0 $fe
    pop bc                                        ; $4e42: $c1
    ld b, b                                       ; $4e43: $40
    ldh [$f5], a                                  ; $4e44: $e0 $f5
    ldh [rWX], a                                  ; $4e46: $e0 $4b
    cp a                                          ; $4e48: $bf
    ldh [rLY], a                                  ; $4e49: $e0 $44

jr_05d_4e4b:
    db $e3                                        ; $4e4b: $e3
    ld a, [hl]                                    ; $4e4c: $7e
    db $e4                                        ; $4e4d: $e4
    ld h, b                                       ; $4e4e: $60
    db $fc                                        ; $4e4f: $fc
    db $e3                                        ; $4e50: $e3
    cp $c1                                        ; $4e51: $fe $c1
    ret nz                                        ; $4e53: $c0

    push hl                                       ; $4e54: $e5
    cp b                                          ; $4e55: $b8
    db $e4                                        ; $4e56: $e4
    or c                                          ; $4e57: $b1
    db $e3                                        ; $4e58: $e3
    ld l, d                                       ; $4e59: $6a
    ld a, [bc]                                    ; $4e5a: $0a
    ret nz                                        ; $4e5b: $c0

    db $e3                                        ; $4e5c: $e3
    ld [bc], a                                    ; $4e5d: $02
    ld [bc], a                                    ; $4e5e: $02
    pop hl                                        ; $4e5f: $e1
    dec hl                                        ; $4e60: $2b
    or l                                          ; $4e61: $b5
    pop hl                                        ; $4e62: $e1
    cp c                                          ; $4e63: $b9
    ret nz                                        ; $4e64: $c0

    ld c, $e3                                     ; $4e65: $0e $e3
    add d                                         ; $4e67: $82
    db $e4                                        ; $4e68: $e4
    ld b, b                                       ; $4e69: $40
    db $fc                                        ; $4e6a: $fc
    adc h                                         ; $4e6b: $8c
    pop bc                                        ; $4e6c: $c1
    ld [bc], a                                    ; $4e6d: $02
    rst $38                                       ; $4e6e: $ff
    and $2b                                       ; $4e6f: $e6 $2b
    ccf                                           ; $4e71: $3f
    db $e3                                        ; $4e72: $e3
    adc [hl]                                      ; $4e73: $8e
    jp $e8fa                                      ; $4e74: $c3 $fa $e8


    ld a, a                                       ; $4e77: $7f
    ret c                                         ; $4e78: $d8

    ret nz                                        ; $4e79: $c0

    db $e3                                        ; $4e7a: $e3
    dec a                                         ; $4e7b: $3d
    pop bc                                        ; $4e7c: $c1
    nop                                           ; $4e7d: $00
    ld a, e                                       ; $4e7e: $7b
    ld [c], a                                     ; $4e7f: $e2
    inc [hl]                                      ; $4e80: $34
    ld [c], a                                     ; $4e81: $e2
    ld c, c                                       ; $4e82: $49
    ret z                                         ; $4e83: $c8

    jr c, jr_05d_4e4b                             ; $4e84: $38 $c5

    ld a, a                                       ; $4e86: $7f
    sub $0c                                       ; $4e87: $d6 $0c
    pop bc                                        ; $4e89: $c1
    ld b, d                                       ; $4e8a: $42
    pop bc                                        ; $4e8b: $c1
    ei                                            ; $4e8c: $fb
    call nz, $f546                                ; $4e8d: $c4 $46 $f5
    and b                                         ; $4e90: $a0
    ld a, [bc]                                    ; $4e91: $0a
    ld a, [bc]                                    ; $4e92: $0a
    ld d, b                                       ; $4e93: $50
    push bc                                       ; $4e94: $c5
    ret nz                                        ; $4e95: $c0

    push bc                                       ; $4e96: $c5
    ld a, a                                       ; $4e97: $7f
    reti                                          ; $4e98: $d9


    ld a, [bc]                                    ; $4e99: $0a
    ld [bc], a                                    ; $4e9a: $02
    call nz, Call_05d_411c                        ; $4e9b: $c4 $1c $41
    jp nz, $c1bf                                  ; $4e9e: $c2 $bf $c1

    dec bc                                        ; $4ea1: $0b
    ld a, [bc]                                    ; $4ea2: $0a
    ld c, d                                       ; $4ea3: $4a
    ld [bc], a                                    ; $4ea4: $02
    ld [c], a                                     ; $4ea5: $e2
    ld a, $c4                                     ; $4ea6: $3e $c4
    ret z                                         ; $4ea8: $c8

    and c                                         ; $4ea9: $a1
    ld [hl], b                                    ; $4eaa: $70
    dec [hl]                                      ; $4eab: $35
    call nz, $f300                                ; $4eac: $c4 $00 $f3
    ld b, l                                       ; $4eaf: $45
    ld [c], a                                     ; $4eb0: $e2
    ret nz                                        ; $4eb1: $c0

    rst $20                                       ; $4eb2: $e7
    ld l, e                                       ; $4eb3: $6b
    ld a, [bc]                                    ; $4eb4: $0a
    ld c, d                                       ; $4eb5: $4a
    ret nz                                        ; $4eb6: $c0

    ldh [rP1], a                                  ; $4eb7: $e0 $00
    ld c, h                                       ; $4eb9: $4c
    call nz, $e4fe                                ; $4eba: $c4 $fe $e4
    ld [hl], l                                    ; $4ebd: $75
    add $81                                       ; $4ebe: $c6 $81
    rst $00                                       ; $4ec0: $c7
    inc [hl]                                      ; $4ec1: $34
    add $02                                       ; $4ec2: $c6 $02
    push bc                                       ; $4ec4: $c5
    add b                                         ; $4ec5: $80
    db $e3                                        ; $4ec6: $e3
    add d                                         ; $4ec7: $82
    pop hl                                        ; $4ec8: $e1
    nop                                           ; $4ec9: $00
    ret nz                                        ; $4eca: $c0

    ldh [rNR21], a                                ; $4ecb: $e0 $16
    jp nz, $c506                                  ; $4ecd: $c2 $06 $c5

    ccf                                           ; $4ed0: $3f
    xor e                                         ; $4ed1: $ab
    ei                                            ; $4ed2: $fb
    xor l                                         ; $4ed3: $ad
    inc bc                                        ; $4ed4: $03
    and c                                         ; $4ed5: $a1
    ld c, b                                       ; $4ed6: $48
    pop bc                                        ; $4ed7: $c1
    add c                                         ; $4ed8: $81
    and d                                         ; $4ed9: $a2
    jp nz, $80f6                                  ; $4eda: $c2 $f6 $80

    ld a, [hl+]                                   ; $4edd: $2a
    add b                                         ; $4ede: $80
    db $e3                                        ; $4edf: $e3
    ld c, l                                       ; $4ee0: $4d
    and [hl]                                      ; $4ee1: $a6
    ld a, [hl-]                                   ; $4ee2: $3a
    and a                                         ; $4ee3: $a7
    ret nz                                        ; $4ee4: $c0

    push de                                       ; $4ee5: $d5
    ld l, e                                       ; $4ee6: $6b
    ld c, e                                       ; $4ee7: $4b
    add hl, bc                                    ; $4ee8: $09
    dec hl                                        ; $4ee9: $2b
    rlca                                          ; $4eea: $07
    jp $c283                                      ; $4eeb: $c3 $83 $c2


    ld a, [hl+]                                   ; $4eee: $2a
    cp a                                          ; $4eef: $bf
    ldh [$de], a                                  ; $4ef0: $e0 $de
    and b                                         ; $4ef2: $a0
    ld c, l                                       ; $4ef3: $4d
    and h                                         ; $4ef4: $a4
    ret nz                                        ; $4ef5: $c0

    and l                                         ; $4ef6: $a5
    inc b                                         ; $4ef7: $04
    ld [hl], d                                    ; $4ef8: $72
    rst $20                                       ; $4ef9: $e7
    cp b                                          ; $4efa: $b8
    add e                                         ; $4efb: $83
    inc l                                         ; $4efc: $2c
    rst $38                                       ; $4efd: $ff
    ldh [rP1], a                                  ; $4efe: $e0 $00
    push bc                                       ; $4f00: $c5
    ld a, a                                       ; $4f01: $7f
    ld [c], a                                     ; $4f02: $e2
    ld a, e                                       ; $4f03: $7b
    and b                                         ; $4f04: $a0
    ld a, b                                       ; $4f05: $78
    and e                                         ; $4f06: $a3
    ld b, c                                       ; $4f07: $41
    ld a, [hl+]                                   ; $4f08: $2a
    cp a                                          ; $4f09: $bf
    ldh [rLCDC], a                                ; $4f0a: $e0 $40
    rst $20                                       ; $4f0c: $e7
    add c                                         ; $4f0d: $81
    call nz, $ab78                                ; $4f0e: $c4 $78 $ab
    ret nz                                        ; $4f11: $c0

    db $eb                                        ; $4f12: $eb
    ld l, e                                       ; $4f13: $6b
    inc c                                         ; $4f14: $0c
    jp nz, $8514                                  ; $4f15: $c2 $14 $85

    and d                                         ; $4f18: $a2
    add hl, sp                                    ; $4f19: $39
    add b                                         ; $4f1a: $80
    ld a, [bc]                                    ; $4f1b: $0a
    ret nz                                        ; $4f1c: $c0

    ldh [$2a], a                                  ; $4f1d: $e0 $2a
    ld b, b                                       ; $4f1f: $40
    rst $20                                       ; $4f20: $e7
    ld b, c                                       ; $4f21: $41
    and l                                         ; $4f22: $a5
    ld [hl], d                                    ; $4f23: $72

Jump_05d_4f24:
    rst $20                                       ; $4f24: $e7
    add b                                         ; $4f25: $80
    ld a, b                                       ; $4f26: $78
    add d                                         ; $4f27: $82
    add c                                         ; $4f28: $81
    rst $20                                       ; $4f29: $e7
    sbc a                                         ; $4f2a: $9f
    adc b                                         ; $4f2b: $88
    di                                            ; $4f2c: $f3
    ld [$e540], a                                 ; $4f2d: $ea $40 $e5
    ret nz                                        ; $4f30: $c0

    add sp, -$08                                  ; $4f31: $e8 $f8
    ld h, [hl]                                    ; $4f33: $66
    inc l                                         ; $4f34: $2c
    nop                                           ; $4f35: $00
    ret nz                                        ; $4f36: $c0

    jp hl                                         ; $4f37: $e9


    call nc, $c275                                ; $4f38: $d4 $75 $c2
    ld l, c                                       ; $4f3b: $69
    jp $b867                                      ; $4f3c: $c3 $67 $b8


    adc d                                         ; $4f3f: $8a
    adc l                                         ; $4f40: $8d
    db $ed                                        ; $4f41: $ed
    call nc, $8b6a                                ; $4f42: $d4 $6a $8b
    add h                                         ; $4f45: $84
    nop                                           ; $4f46: $00
    halt                                          ; $4f47: $76
    ret                                           ; $4f48: $c9


    ld hl, sp+$66                                 ; $4f49: $f8 $66
    jp nz, Jump_05d_7bc1                          ; $4f4b: $c2 $c1 $7b

    ldh [$bb], a                                  ; $4f4e: $e0 $bb
    db $ec                                        ; $4f50: $ec
    call nc, $fd6b                                ; $4f51: $d4 $6b $fd
    ld h, [hl]                                    ; $4f54: $66
    jp Jump_000_006c                              ; $4f55: $c3 $6c $00


    rst $30                                       ; $4f58: $f7
    ld h, d                                       ; $4f59: $62
    ret nz                                        ; $4f5a: $c0

    ld [$f440], a                                 ; $4f5b: $ea $40 $f4
    jp nc, $c360                                  ; $4f5e: $d2 $60 $c3

    ld l, e                                       ; $4f61: $6b
    scf                                           ; $4f62: $37
    ld l, c                                       ; $4f63: $69
    ld b, b                                       ; $4f64: $40
    rst $00                                       ; $4f65: $c7
    ld b, b                                       ; $4f66: $40
    or $03                                        ; $4f67: $f6 $03
    inc l                                         ; $4f69: $2c
    inc l                                         ; $4f6a: $2c
    jp Jump_000_376b                              ; $4f6b: $c3 $6b $37


    ld l, d                                       ; $4f6e: $6a
    cp a                                          ; $4f6f: $bf
    jp z, $f440                                   ; $4f70: $ca $40 $f4

    ret nz                                        ; $4f73: $c0

    db $e4                                        ; $4f74: $e4
    inc bc                                        ; $4f75: $03
    ld h, [hl]                                    ; $4f76: $66
    nop                                           ; $4f77: $00
    cp b                                          ; $4f78: $b8
    sub e                                         ; $4f79: $93
    inc d                                         ; $4f7a: $14
    halt                                          ; $4f7b: $76
    add l                                         ; $4f7c: $85
    ld b, l                                       ; $4f7d: $45
    dec de                                        ; $4f7e: $1b
    jp z, $85b8                                   ; $4f7f: $ca $b8 $85

    ld b, b                                       ; $4f82: $40
    jp hl                                         ; $4f83: $e9


    inc d                                         ; $4f84: $14
    ld [hl], e                                    ; $4f85: $73
    ccf                                           ; $4f86: $3f
    ld b, a                                       ; $4f87: $47
    nop                                           ; $4f88: $00
    or l                                          ; $4f89: $b5

Jump_05d_4f8a:
    and a                                         ; $4f8a: $a7
    rst $30                                       ; $4f8b: $f7
    daa                                           ; $4f8c: $27
    ld b, b                                       ; $4f8d: $40
    db $eb                                        ; $4f8e: $eb
    inc d                                         ; $4f8f: $14
    ld [hl], c                                    ; $4f90: $71
    ld b, [hl]                                    ; $4f91: $46
    and a                                         ; $4f92: $a7
    or b                                          ; $4f93: $b0
    xor b                                         ; $4f94: $a8
    rst $30                                       ; $4f95: $f7
    dec h                                         ; $4f96: $25
    inc bc                                        ; $4f97: $03
    ld [$1400], a                                 ; $4f98: $ea $00 $14
    ld [hl], e                                    ; $4f9b: $73
    inc bc                                        ; $4f9c: $03
    and l                                         ; $4f9d: $a5
    jp $b867                                      ; $4f9e: $c3 $67 $b8


    adc b                                         ; $4fa1: $88
    ret nz                                        ; $4fa2: $c0

    db $ed                                        ; $4fa3: $ed
    inc d                                         ; $4fa4: $14
    ld [hl], b                                    ; $4fa5: $70
    add a                                         ; $4fa6: $87
    ld b, h                                       ; $4fa7: $44
    jp Jump_000_0068                              ; $4fa8: $c3 $68 $00


    cp b                                          ; $4fab: $b8
    adc b                                         ; $4fac: $88
    ld a, [hl]                                    ; $4fad: $7e
    xor e                                         ; $4fae: $ab
    inc d                                         ; $4faf: $14
    ld [hl], e                                    ; $4fb0: $73
    ld c, b                                       ; $4fb1: $48
    dec h                                         ; $4fb2: $25
    ld [hl], l                                    ; $4fb3: $75
    add a                                         ; $4fb4: $87
    sub e                                         ; $4fb5: $93
    rst $00                                       ; $4fb6: $c7
    ret nz                                        ; $4fb7: $c0

    db $ec                                        ; $4fb8: $ec
    inc d                                         ; $4fb9: $14
    ld [hl], c                                    ; $4fba: $71
    nop                                           ; $4fbb: $00
    dec b                                         ; $4fbc: $05
    ld b, e                                       ; $4fbd: $43
    jp $b868                                      ; $4fbe: $c3 $68 $b8


    adc e                                         ; $4fc1: $8b
    ld b, a                                       ; $4fc2: $47
    xor $14                                       ; $4fc3: $ee $14
    ld l, [hl]                                    ; $4fc5: $6e
    jp Jump_05d_4b6e                              ; $4fc6: $c3 $6e $4b


    adc b                                         ; $4fc9: $88
    ld [hl], $29                                  ; $4fca: $36 $29
    nop                                           ; $4fcc: $00
    inc d                                         ; $4fcd: $14
    ld [hl], h                                    ; $4fce: $74
    add $44                                       ; $4fcf: $c6 $44
    jp $c367                                      ; $4fd1: $c3 $67 $c3


    add a                                         ; $4fd4: $87
    ld a, $21                                     ; $4fd5: $3e $21
    ld a, [hl]                                    ; $4fd7: $7e
    rl h                                          ; $4fd8: $cb $14
    ld [hl], b                                    ; $4fda: $70
    ld b, h                                       ; $4fdb: $44
    ld h, a                                       ; $4fdc: $67
    nop                                           ; $4fdd: $00
    ldh a, [rBCPD]                                ; $4fde: $f0 $69
    call nz, Call_05d_4182                        ; $4fe0: $c4 $82 $41
    xor e                                         ; $4fe3: $ab
    inc d                                         ; $4fe4: $14
    halt                                          ; $4fe5: $76
    jp $bb6e                                      ; $4fe6: $c3 $6e $bb


    inc bc                                        ; $4fe9: $03
    ld a, d                                       ; $4fea: $7a
    ld bc, $69c1                                  ; $4feb: $01 $c1 $69
    nop                                           ; $4fee: $00
    inc d                                         ; $4fef: $14
    halt                                          ; $4ff0: $76
    and d                                         ; $4ff1: $a2
    db $e3                                        ; $4ff2: $e3
    sub a                                         ; $4ff3: $97
    adc c                                         ; $4ff4: $89
    cp e                                          ; $4ff5: $bb
    dec b                                         ; $4ff6: $05
    jp nz, $148c                                  ; $4ff7: $c2 $8c $14

    ld [hl], d                                    ; $4ffa: $72
    and a                                         ; $4ffb: $a7
    or [hl]                                       ; $4ffc: $b6
    add b                                         ; $4ffd: $80
    ret nc                                        ; $4ffe: $d0

    nop                                           ; $4fff: $00
    inc d                                         ; $5000: $14
    ld [hl], h                                    ; $5001: $74
    cp e                                          ; $5002: $bb
    ld d, $80                                     ; $5003: $16 $80
    xor $73                                       ; $5005: $ee $73
    rst $00                                       ; $5007: $c7
    rst $20                                       ; $5008: $e7
    ld c, h                                       ; $5009: $4c
    cp e                                          ; $500a: $bb
    inc de                                        ; $500b: $13
    ret nz                                        ; $500c: $c0

    rst $30                                       ; $500d: $f7
    ld [$008c], a                                 ; $500e: $ea $8c $00
    cp e                                          ; $5011: $bb
    rra                                           ; $5012: $1f
    cp a                                          ; $5013: $bf
    db $fc                                        ; $5014: $fc
    cp e                                          ; $5015: $bb
    ld d, $ff                                     ; $5016: $16 $ff
    rst $38                                       ; $5018: $ff
    cp e                                          ; $5019: $bb
    add hl, de                                    ; $501a: $19
    rst $38                                       ; $501b: $ff
    rst $38                                       ; $501c: $ff
    and a                                         ; $501d: $a7
    or a                                          ; $501e: $b7
    set 7, a                                      ; $501f: $cb $ff
    nop                                           ; $5021: $00
    and a                                         ; $5022: $a7
    cp l                                          ; $5023: $bd
    rst $38                                       ; $5024: $ff
    rst $38                                       ; $5025: $ff
    and a                                         ; $5026: $a7
    cp a                                          ; $5027: $bf
    rst $38                                       ; $5028: $ff
    rst $38                                       ; $5029: $ff
    and a                                         ; $502a: $a7
    cp e                                          ; $502b: $bb
    rst $38                                       ; $502c: $ff
    rst $38                                       ; $502d: $ff
    and a                                         ; $502e: $a7
    cp a                                          ; $502f: $bf
    rst $38                                       ; $5030: $ff
    rst $38                                       ; $5031: $ff
    nop                                           ; $5032: $00
    and a                                         ; $5033: $a7
    or h                                          ; $5034: $b4
    rst $38                                       ; $5035: $ff
    rst $38                                       ; $5036: $ff
    rst $38                                       ; $5037: $ff
    rst $38                                       ; $5038: $ff
    sub [hl]                                      ; $5039: $96
    rst $38                                       ; $503a: $ff
    rst $38                                       ; $503b: $ff
    rst $38                                       ; $503c: $ff
    ld [hl], h                                    ; $503d: $74
    ld l, [hl]                                    ; $503e: $6e
    rst $38                                       ; $503f: $ff
    rst $38                                       ; $5040: $ff
    rst $38                                       ; $5041: $ff
    rst $38                                       ; $5042: $ff
    nop                                           ; $5043: $00
    rst $38                                       ; $5044: $ff
    rst $38                                       ; $5045: $ff
    rst $38                                       ; $5046: $ff
    rst $38                                       ; $5047: $ff
    push bc                                       ; $5048: $c5
    ld h, h                                       ; $5049: $64
    call c, $ffff                                 ; $504a: $dc $ff $ff
    rst $38                                       ; $504d: $ff
    rst $38                                       ; $504e: $ff
    rst $38                                       ; $504f: $ff
    rst $38                                       ; $5050: $ff
    rst $38                                       ; $5051: $ff
    rst $38                                       ; $5052: $ff
    rst $38                                       ; $5053: $ff
    nop                                           ; $5054: $00
    rst $38                                       ; $5055: $ff
    rst $38                                       ; $5056: $ff
    rst $38                                       ; $5057: $ff
    rst $38                                       ; $5058: $ff
    rst $38                                       ; $5059: $ff
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
    nop                                           ; $5065: $00
    rst $38                                       ; $5066: $ff
    rst $38                                       ; $5067: $ff
    rst $38                                       ; $5068: $ff
    rst $38                                       ; $5069: $ff
    rst $38                                       ; $506a: $ff
    rst $38                                       ; $506b: $ff
    rst $38                                       ; $506c: $ff
    rst $38                                       ; $506d: $ff
    rst $38                                       ; $506e: $ff
    rst $38                                       ; $506f: $ff
    nop                                           ; $5070: $00
    cp a                                          ; $5071: $bf
    rst $38                                       ; $5072: $ff
    rst $38                                       ; $5073: $ff
    rst $38                                       ; $5074: $ff
    rst $38                                       ; $5075: $ff
    nop                                           ; $5076: $00
    rst $38                                       ; $5077: $ff
    rst $38                                       ; $5078: $ff
    rst $38                                       ; $5079: $ff
    rst $38                                       ; $507a: $ff
    ld e, c                                       ; $507b: $59
    ld d, e                                       ; $507c: $53
    nop                                           ; $507d: $00
    nop                                           ; $507e: $00
    nop                                           ; $507f: $00
    rst $38                                       ; $5080: $ff
    ld c, [hl]                                    ; $5081: $4e
    ld c, [hl]                                    ; $5082: $4e
    ld c, [hl]                                    ; $5083: $4e
    ld e, a                                       ; $5084: $5f
    ld sp, $3131                                  ; $5085: $31 $31 $31
    ld b, a                                       ; $5088: $47
    ld [hl], a                                    ; $5089: $77
    ld b, [hl]                                    ; $508a: $46
    ld b, [hl]                                    ; $508b: $46
    ld b, a                                       ; $508c: $47
    ld sp, hl                                     ; $508d: $f9
    ldh [$5c], a                                  ; $508e: $e0 $5c
    ld e, e                                       ; $5090: $5b
    adc h                                         ; $5091: $8c
    rst $28                                       ; $5092: $ef
    ldh [$f1], a                                  ; $5093: $e0 $f1
    nop                                           ; $5095: $00
    rst $38                                       ; $5096: $ff
    rst $38                                       ; $5097: $ff
    rst $20                                       ; $5098: $e7
    and $c0                                       ; $5099: $e6 $c0
    ldh [$5e], a                                  ; $509b: $e0 $5e
    ld sp, $3c31                                  ; $509d: $31 $31 $3c
    cpl                                           ; $50a0: $2f
    ld [hl], $6d                                  ; $50a1: $36 $6d
    ld l, l                                       ; $50a3: $6d
    ld [hl], $be                                  ; $50a4: $36 $be
    pop hl                                        ; $50a6: $e1
    ld e, a                                       ; $50a7: $5f
    cp a                                          ; $50a8: $bf
    pop hl                                        ; $50a9: $e1
    jp z, $feff                                   ; $50aa: $ca $ff $fe

    add sp, -$19                                  ; $50ad: $e8 $e7
    add a                                         ; $50af: $87
    add a                                         ; $50b0: $87
    ld c, [hl]                                    ; $50b1: $4e
    ld sp, $4931                                  ; $50b2: $31 $31 $49
    ld c, b                                       ; $50b5: $48
    rst $38                                       ; $50b6: $ff
    ld l, l                                       ; $50b7: $6d
    ld l, l                                       ; $50b8: $6d
    ld l, l                                       ; $50b9: $6d

jr_05d_50ba:
    ld l, h                                       ; $50ba: $6c
    ld l, h                                       ; $50bb: $6c
    ld [hl], $37                                  ; $50bc: $36 $37
    ld sp, $5ec3                                  ; $50be: $31 $c3 $5e
    ld e, e                                       ; $50c1: $5b
    ld a, [hl]                                    ; $50c2: $7e
    ldh [$ca], a                                  ; $50c3: $e0 $ca
    rst $38                                       ; $50c5: $ff
    ret nz                                        ; $50c6: $c0

    jp hl                                         ; $50c7: $e9


    add c                                         ; $50c8: $81
    ldh [$39], a                                  ; $50c9: $e0 $39
    jr nc, jr_05d_50ba                            ; $50cb: $30 $ed

    jr nc, @-$3e                                  ; $50cd: $30 $c0

    pop hl                                        ; $50cf: $e1
    ld l, h                                       ; $50d0: $6c
    add hl, sp                                    ; $50d1: $39
    ld a, a                                       ; $50d2: $7f
    ldh [$5a], a                                  ; $50d3: $e0 $5a
    ld e, e                                       ; $50d5: $5b
    adc h                                         ; $50d6: $8c
    db $fc                                        ; $50d7: $fc
    jp z, $80ff                                   ; $50d8: $ca $ff $80

    add sp, -$75                                  ; $50db: $e8 $8b
    ld h, c                                       ; $50dd: $61
    ld sp, $5331                                  ; $50de: $31 $31 $53
    ld l, l                                       ; $50e1: $6d
    ld l, h                                       ; $50e2: $6c
    cp a                                          ; $50e3: $bf
    ldh [$c0], a                                  ; $50e4: $e0 $c0
    ldh [rHDMA2], a                               ; $50e6: $e0 $52
    ld sp, $e07f                                  ; $50e8: $31 $7f $e0
    ld e, d                                       ; $50eb: $5a
    ld e, e                                       ; $50ec: $5b
    jp z, Jump_000_36ff                           ; $50ed: $ca $ff $36

    add sp, -$19                                  ; $50f0: $e8 $e7
    adc e                                         ; $50f2: $8b
    ld e, d                                       ; $50f3: $5a
    ret nz                                        ; $50f4: $c0

    ldh [rHDMA2], a                               ; $50f5: $e0 $52
    ld l, l                                       ; $50f7: $6d
    cp a                                          ; $50f8: $bf
    ldh [$fe], a                                  ; $50f9: $e0 $fe
    ldh [$cd], a                                  ; $50fb: $e0 $cd
    ld d, e                                       ; $50fd: $53
    or [hl]                                       ; $50fe: $b6
    ret nz                                        ; $50ff: $c0

    ld e, a                                       ; $5100: $5f
    ld e, e                                       ; $5101: $5b
    ret nz                                        ; $5102: $c0

    rst $38                                       ; $5103: $ff
    jp hl                                         ; $5104: $e9


    add sp, $5b                                   ; $5105: $e8 $5b
    ld e, e                                       ; $5107: $5b
    inc e                                         ; $5108: $1c
    ret nz                                        ; $5109: $c0

    db $e3                                        ; $510a: $e3
    ld b, c                                       ; $510b: $41
    pop hl                                        ; $510c: $e1
    ld l, h                                       ; $510d: $6c
    ld b, d                                       ; $510e: $42
    ld c, c                                       ; $510f: $49
    ld a, a                                       ; $5110: $7f
    ldh [$80], a                                  ; $5111: $e0 $80
    rst $38                                       ; $5113: $ff
    ret nz                                        ; $5114: $c0

    xor $2b                                       ; $5115: $ee $2b
    ld d, e                                       ; $5117: $53
    ld l, d                                       ; $5118: $6a
    ret nz                                        ; $5119: $c0

    db $e3                                        ; $511a: $e3
    jr nc, @+$01                                  ; $511b: $30 $ff

    ret nz                                        ; $511d: $c0

    ld h, c                                       ; $511e: $61
    add b                                         ; $511f: $80
    rst $38                                       ; $5120: $ff
    add b                                         ; $5121: $80
    db $ed                                        ; $5122: $ed
    xor a                                         ; $5123: $af

jr_05d_5124:
    scf                                           ; $5124: $37
    ld c, b                                       ; $5125: $48
    ld l, l                                       ; $5126: $6d
    ld l, d                                       ; $5127: $6a
    add b                                         ; $5128: $80
    ld [c], a                                     ; $5129: $e2
    ld l, h                                       ; $512a: $6c
    ccf                                           ; $512b: $3f
    ldh [$5e], a                                  ; $512c: $e0 $5e
    ld d, e                                       ; $512e: $53
    ld e, d                                       ; $512f: $5a
    cpl                                           ; $5130: $2f
    jp z, $e8ff                                   ; $5131: $ca $ff $e8

    rst $20                                       ; $5134: $e7
    ld e, d                                       ; $5135: $5a
    jp nz, Jump_000_39a0                          ; $5136: $c2 $a0 $39

    ld b, d                                       ; $5139: $42
    ret nz                                        ; $513a: $c0

    ld [hl], e                                    ; $513b: $73
    ld l, d                                       ; $513c: $6a
    ld l, b                                       ; $513d: $68
    rst $38                                       ; $513e: $ff
    pop hl                                        ; $513f: $e1
    cp a                                          ; $5140: $bf
    ret nz                                        ; $5141: $c0

    ld e, a                                       ; $5142: $5f
    cpl                                           ; $5143: $2f
    adc d                                         ; $5144: $8a
    jp z, $e4ff                                   ; $5145: $ca $ff $e4

    nop                                           ; $5148: $00
    add sp, -$3e                                  ; $5149: $e8 $c2
    and b                                         ; $514b: $a0
    ld d, d                                       ; $514c: $52
    ld b, d                                       ; $514d: $42
    ret nz                                        ; $514e: $c0

    add b                                         ; $514f: $80
    push hl                                       ; $5150: $e5
    ld h, b                                       ; $5151: $60
    cpl                                           ; $5152: $2f
    adc d                                         ; $5153: $8a
    ret c                                         ; $5154: $d8

    ret nz                                        ; $5155: $c0

    rst $38                                       ; $5156: $ff
    jp hl                                         ; $5157: $e9


    add sp, $43                                   ; $5158: $e8 $43
    and b                                         ; $515a: $a0
    xor h                                         ; $515b: $ac
    ld d, e                                       ; $515c: $53
    ret nz                                        ; $515d: $c0

    and $39                                       ; $515e: $e6 $39
    ld h, c                                       ; $5160: $61
    jr nc, jr_05d_5124                            ; $5161: $30 $c1

    ldh [$c0], a                                  ; $5163: $e0 $c0
    rst $38                                       ; $5165: $ff
    jp hl                                         ; $5166: $e9


    add sp, $43                                   ; $5167: $e8 $43
    and b                                         ; $5169: $a0
    add c                                         ; $516a: $81
    add e                                         ; $516b: $83
    ld b, e                                       ; $516c: $43
    ret nz                                        ; $516d: $c0

    add b                                         ; $516e: $80
    call nz, Call_05d_61c7                        ; $516f: $c4 $c7 $61
    adc a                                         ; $5172: $8f
    ld c, a                                       ; $5173: $4f
    ret nz                                        ; $5174: $c0

    rst $38                                       ; $5175: $ff
    ld [$81e9], a                                 ; $5176: $ea $e9 $81
    ldh [$a8], a                                  ; $5179: $e0 $a8
    halt                                          ; $517b: $76
    add hl, de                                    ; $517c: $19
    ld [hl], $02                                  ; $517d: $36 $02
    pop bc                                        ; $517f: $c1
    add c                                         ; $5180: $81
    jp nz, $895e                                  ; $5181: $c2 $5e $89

    cp a                                          ; $5184: $bf
    ldh [$ca], a                                  ; $5185: $e0 $ca
    rst $38                                       ; $5187: $ff
    ret nz                                        ; $5188: $c0

    jp hl                                         ; $5189: $e9


    rst $18                                       ; $518a: $df
    add c                                         ; $518b: $81
    add b                                         ; $518c: $80
    add b                                         ; $518d: $80
    ld l, a                                       ; $518e: $6f
    ld l, [hl]                                    ; $518f: $6e
    cp [hl]                                       ; $5190: $be
    pop hl                                        ; $5191: $e1
    ld [hl], $3b                                  ; $5192: $36 $3b
    adc a                                         ; $5194: $8f
    ld b, e                                       ; $5195: $43
    ld sp, $895f                                  ; $5196: $31 $5f $89
    cp a                                          ; $5199: $bf
    ldh [$ca], a                                  ; $519a: $e0 $ca
    rst $38                                       ; $519c: $ff
    add b                                         ; $519d: $80
    add sp, -$54                                  ; $519e: $e8 $ac
    ei                                            ; $51a0: $fb
    xor b                                         ; $51a1: $a8
    add b                                         ; $51a2: $80
    rst $38                                       ; $51a3: $ff
    ldh [$6f], a                                  ; $51a4: $e0 $6f
    ld l, [hl]                                    ; $51a6: $6e
    ld d, l                                       ; $51a7: $55
    ld l, [hl]                                    ; $51a8: $6e
    ld l, a                                       ; $51a9: $6f
    rra                                           ; $51aa: $1f
    and a                                         ; $51ab: $a7
    ld sp, $5a60                                  ; $51ac: $31 $60 $5a
    adc c                                         ; $51af: $89
    cp a                                          ; $51b0: $bf
    ldh [$ca], a                                  ; $51b1: $e0 $ca
    rst $38                                       ; $51b3: $ff
    rst $38                                       ; $51b4: $ff
    rst $38                                       ; $51b5: $ff
    nop                                           ; $51b6: $00
    rst $38                                       ; $51b7: $ff
    rst $38                                       ; $51b8: $ff
    rst $38                                       ; $51b9: $ff
    rst $38                                       ; $51ba: $ff
    rst $38                                       ; $51bb: $ff
    rst $38                                       ; $51bc: $ff
    rst $38                                       ; $51bd: $ff
    rst $38                                       ; $51be: $ff
    rst $38                                       ; $51bf: $ff
    rst $38                                       ; $51c0: $ff
    rst $38                                       ; $51c1: $ff
    rst $38                                       ; $51c2: $ff
    rst $38                                       ; $51c3: $ff
    rst $38                                       ; $51c4: $ff
    rst $38                                       ; $51c5: $ff
    rst $38                                       ; $51c6: $ff
    nop                                           ; $51c7: $00
    rst $38                                       ; $51c8: $ff
    rst $38                                       ; $51c9: $ff
    rst $38                                       ; $51ca: $ff
    rst $38                                       ; $51cb: $ff
    rst $38                                       ; $51cc: $ff
    rst $38                                       ; $51cd: $ff
    rst $38                                       ; $51ce: $ff
    rst $38                                       ; $51cf: $ff
    rst $38                                       ; $51d0: $ff
    rst $38                                       ; $51d1: $ff
    rst $38                                       ; $51d2: $ff
    rst $38                                       ; $51d3: $ff
    rst $38                                       ; $51d4: $ff
    rst $38                                       ; $51d5: $ff
    rst $38                                       ; $51d6: $ff
    rst $38                                       ; $51d7: $ff
    nop                                           ; $51d8: $00
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
    rst $38                                       ; $51e4: $ff
    rst $38                                       ; $51e5: $ff
    rst $38                                       ; $51e6: $ff
    rst $38                                       ; $51e7: $ff
    rst $38                                       ; $51e8: $ff
    nop                                           ; $51e9: $00
    rst $38                                       ; $51ea: $ff
    rst $38                                       ; $51eb: $ff
    rst $38                                       ; $51ec: $ff
    rst $38                                       ; $51ed: $ff
    rst $38                                       ; $51ee: $ff
    rst $38                                       ; $51ef: $ff
    rst $38                                       ; $51f0: $ff
    rst $38                                       ; $51f1: $ff
    rst $38                                       ; $51f2: $ff
    rst $38                                       ; $51f3: $ff
    rst $38                                       ; $51f4: $ff
    rst $38                                       ; $51f5: $ff
    rst $38                                       ; $51f6: $ff
    rst $38                                       ; $51f7: $ff
    rst $38                                       ; $51f8: $ff
    rst $38                                       ; $51f9: $ff
    nop                                           ; $51fa: $00
    rst $38                                       ; $51fb: $ff
    rst $38                                       ; $51fc: $ff
    rst $38                                       ; $51fd: $ff
    rst $38                                       ; $51fe: $ff
    rst $38                                       ; $51ff: $ff
    rst $38                                       ; $5200: $ff
    rst $38                                       ; $5201: $ff
    rst $38                                       ; $5202: $ff
    rst $38                                       ; $5203: $ff
    rst $38                                       ; $5204: $ff
    rst $38                                       ; $5205: $ff
    rst $38                                       ; $5206: $ff
    rst $38                                       ; $5207: $ff
    rst $38                                       ; $5208: $ff
    rst $38                                       ; $5209: $ff
    rst $38                                       ; $520a: $ff
    nop                                           ; $520b: $00
    rst $38                                       ; $520c: $ff
    rst $38                                       ; $520d: $ff
    rst $38                                       ; $520e: $ff
    rst $38                                       ; $520f: $ff
    rst $38                                       ; $5210: $ff
    rst $38                                       ; $5211: $ff
    rst $38                                       ; $5212: $ff
    rst $38                                       ; $5213: $ff
    rst $38                                       ; $5214: $ff
    rst $38                                       ; $5215: $ff
    rst $38                                       ; $5216: $ff
    rst $38                                       ; $5217: $ff
    rst $38                                       ; $5218: $ff
    rst $38                                       ; $5219: $ff
    rst $38                                       ; $521a: $ff
    rst $38                                       ; $521b: $ff
    nop                                           ; $521c: $00
    rst $38                                       ; $521d: $ff
    rst $38                                       ; $521e: $ff
    rst $38                                       ; $521f: $ff
    rst $38                                       ; $5220: $ff
    rst $38                                       ; $5221: $ff
    rst $38                                       ; $5222: $ff
    rst $38                                       ; $5223: $ff
    rst $38                                       ; $5224: $ff
    rst $38                                       ; $5225: $ff
    rst $38                                       ; $5226: $ff
    rst $38                                       ; $5227: $ff
    rst $38                                       ; $5228: $ff
    rst $38                                       ; $5229: $ff
    rst $38                                       ; $522a: $ff
    rst $38                                       ; $522b: $ff
    rst $38                                       ; $522c: $ff
    nop                                           ; $522d: $00
    rst $38                                       ; $522e: $ff
    rst $38                                       ; $522f: $ff
    rst $38                                       ; $5230: $ff
    rst $38                                       ; $5231: $ff
    rst $38                                       ; $5232: $ff
    rst $38                                       ; $5233: $ff
    rst $38                                       ; $5234: $ff
    rst $38                                       ; $5235: $ff
    rst $38                                       ; $5236: $ff
    rst $38                                       ; $5237: $ff
    rst $38                                       ; $5238: $ff
    rst $38                                       ; $5239: $ff
    rst $38                                       ; $523a: $ff
    rst $38                                       ; $523b: $ff
    rst $38                                       ; $523c: $ff
    rst $38                                       ; $523d: $ff
    nop                                           ; $523e: $00
    rst $38                                       ; $523f: $ff
    rst $38                                       ; $5240: $ff
    rst $38                                       ; $5241: $ff
    rst $38                                       ; $5242: $ff
    rst $38                                       ; $5243: $ff
    rst $38                                       ; $5244: $ff
    rst $38                                       ; $5245: $ff
    rst $38                                       ; $5246: $ff
    rst $38                                       ; $5247: $ff
    rst $38                                       ; $5248: $ff
    rst $38                                       ; $5249: $ff
    rst $38                                       ; $524a: $ff
    rst $38                                       ; $524b: $ff
    rst $38                                       ; $524c: $ff
    rst $38                                       ; $524d: $ff
    rst $38                                       ; $524e: $ff
    nop                                           ; $524f: $00
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
    rst $38                                       ; $525c: $ff
    rst $38                                       ; $525d: $ff
    rst $38                                       ; $525e: $ff
    rst $38                                       ; $525f: $ff
    nop                                           ; $5260: $00
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
    rst $38                                       ; $526b: $ff
    rst $38                                       ; $526c: $ff
    rst $38                                       ; $526d: $ff
    rst $38                                       ; $526e: $ff
    rst $38                                       ; $526f: $ff
    rst $38                                       ; $5270: $ff
    nop                                           ; $5271: $00
    rst $38                                       ; $5272: $ff
    rst $38                                       ; $5273: $ff
    rst $38                                       ; $5274: $ff
    di                                            ; $5275: $f3
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    and l                                         ; $5279: $a5
    nop                                           ; $527a: $00
    rst $38                                       ; $527b: $ff
    push hl                                       ; $527c: $e5
    ld [hl-], a                                   ; $527d: $32
    or $e6                                        ; $527e: $f6 $e6
    rst $30                                       ; $5280: $f7
    rst $20                                       ; $5281: $e7
    dec [hl]                                      ; $5282: $35
    db $ec                                        ; $5283: $ec
    xor $37                                       ; $5284: $ee $37
    db $ec                                        ; $5286: $ec
    jp c, $c7f0                                   ; $5287: $da $f0 $c7

    add sp, $33                                   ; $528a: $e8 $33
    ld sp, $f2e0                                  ; $528c: $31 $e0 $f2
    ld [hl], $30                                  ; $528f: $36 $30
    scf                                           ; $5291: $37
    cp a                                          ; $5292: $bf
    ld h, $20                                     ; $5293: $26 $20
    daa                                           ; $5295: $27
    db $10                                        ; $5296: $10
    ld d, $17                                     ; $5297: $16 $17
    jp nz, Jump_000_34f6                          ; $5299: $c2 $f6 $34

    rst $38                                       ; $529c: $ff
    ld [hl], $32                                  ; $529d: $36 $32
    jr nc, jr_05d_52d8                            ; $529f: $30 $37

    ld sp, $3133                                  ; $52a1: $31 $33 $31
    inc sp                                        ; $52a4: $33
    nop                                           ; $52a5: $00
    and b                                         ; $52a6: $a0
    ei                                            ; $52a7: $fb
    rst $38                                       ; $52a8: $ff
    rst $28                                       ; $52a9: $ef
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    nop                                           ; $52ac: $00
    or l                                          ; $52ad: $b5
    ld d, d                                       ; $52ae: $52
    push hl                                       ; $52af: $e5
    ld d, d                                       ; $52b0: $52
    adc a                                         ; $52b1: $8f
    ld d, h                                       ; $52b2: $54
    dec a                                         ; $52b3: $3d
    ld d, [hl]                                    ; $52b4: $56
    ldh a, [$03]                                  ; $52b5: $f0 $03
    ld c, l                                       ; $52b7: $4d
    rrca                                          ; $52b8: $0f
    ld b, b                                       ; $52b9: $40
    ld [bc], a                                    ; $52ba: $02
    ret nz                                        ; $52bb: $c0

    nop                                           ; $52bc: $00
    ldh a, [$03]                                  ; $52bd: $f0 $03
    push af                                       ; $52bf: $f5
    inc bc                                        ; $52c0: $03
    ld c, b                                       ; $52c1: $48
    rrca                                          ; $52c2: $0f
    ld b, b                                       ; $52c3: $40
    ld [bc], a                                    ; $52c4: $02
    ld e, a                                       ; $52c5: $5f
    dec sp                                        ; $52c6: $3b
    jr c, @+$10                                   ; $52c7: $38 $0e

    ld sp, $4819                                  ; $52c9: $31 $19 $48
    rrca                                          ; $52cc: $0f
    ld [$0825], sp                                ; $52cd: $08 $25 $08
    dec h                                         ; $52d0: $25
    ld [$0825], sp                                ; $52d1: $08 $25 $08
    dec h                                         ; $52d4: $25
    ld [$0825], sp                                ; $52d5: $08 $25 $08

jr_05d_52d8:
    dec h                                         ; $52d8: $25
    ld [$0825], sp                                ; $52d9: $08 $25 $08
    dec h                                         ; $52dc: $25
    ld [$0825], sp                                ; $52dd: $08 $25 $08

jr_05d_52e0:
    dec h                                         ; $52e0: $25
    ld [$0825], sp                                ; $52e1: $08 $25 $08
    dec h                                         ; $52e4: $25
    sbc a                                         ; $52e5: $9f
    dec bc                                        ; $52e6: $0b
    dec bc                                        ; $52e7: $0b
    dec bc                                        ; $52e8: $0b
    ld a, [bc]                                    ; $52e9: $0a
    ld c, e                                       ; $52ea: $4b
    ei                                            ; $52eb: $fb
    ldh [$f8], a                                  ; $52ec: $e0 $f8
    ldh [rOCPD], a                                ; $52ee: $e0 $6b
    db $fd                                        ; $52f0: $fd
    ld c, e                                       ; $52f1: $4b
    rst $38                                       ; $52f2: $ff
    pop hl                                        ; $52f3: $e1
    dec bc                                        ; $52f4: $0b
    dec hl                                        ; $52f5: $2b
    dec bc                                        ; $52f6: $0b
    inc c                                         ; $52f7: $0c
    inc c                                         ; $52f8: $0c
    inc c                                         ; $52f9: $0c
    ld hl, $ff4c                                  ; $52fa: $21 $4c $ff
    push hl                                       ; $52fd: $e5
    push af                                       ; $52fe: $f5
    pop hl                                        ; $52ff: $e1
    db $fd                                        ; $5300: $fd
    pop hl                                        ; $5301: $e1
    rst $38                                       ; $5302: $ff
    push af                                       ; $5303: $f5
    ld a, [hl+]                                   ; $5304: $2a
    adc $e0                                       ; $5305: $ce $e0
    jp Jump_000_1fe3                              ; $5307: $c3 $e3 $1f


    ld l, e                                       ; $530a: $6b
    dec bc                                        ; $530b: $0b
    dec hl                                        ; $530c: $2b
    dec hl                                        ; $530d: $2b
    dec bc                                        ; $530e: $0b
    cp a                                          ; $530f: $bf
    ld [c], a                                     ; $5310: $e2
    call z, $bae3                                 ; $5311: $cc $e3 $ba
    pop hl                                        ; $5314: $e1
    jr nc, jr_05d_52e0                            ; $5315: $30 $c9

    db $e3                                        ; $5317: $e3
    ld a, [c]                                     ; $5318: $f2
    db $e4                                        ; $5319: $e4
    cp h                                          ; $531a: $bc
    ld a, [c]                                     ; $531b: $f2
    jp nz, Jump_05d_6be4                          ; $531c: $c2 $e4 $6b

    dec bc                                        ; $531f: $0b
    adc b                                         ; $5320: $88
    ldh [$c0], a                                  ; $5321: $e0 $c0
    db $e3                                        ; $5323: $e3
    inc bc                                        ; $5324: $03
    ld c, e                                       ; $5325: $4b
    dec bc                                        ; $5326: $0b
    call nz, $86e1                                ; $5327: $c4 $e1 $86
    ld [c], a                                     ; $532a: $e2
    cp l                                          ; $532b: $bd
    db $e3                                        ; $532c: $e3
    ld a, [c]                                     ; $532d: $f2
    db $e4                                        ; $532e: $e4
    ld a, l                                       ; $532f: $7d
    di                                            ; $5330: $f3
    jp nz, Jump_000_00e5                          ; $5331: $c2 $e5 $00

    ret nz                                        ; $5334: $c0

    pop hl                                        ; $5335: $e1
    inc [hl]                                      ; $5336: $34
    ldh [$3d], a                                  ; $5337: $e0 $3d
    ld [c], a                                     ; $5339: $e2
    adc h                                         ; $533a: $8c
    db $e3                                        ; $533b: $e3
    ld b, h                                       ; $533c: $44
    db $e4                                        ; $533d: $e4
    add b                                         ; $533e: $80
    db $fc                                        ; $533f: $fc
    add hl, bc                                    ; $5340: $09
    ld [c], a                                     ; $5341: $e2
    add b                                         ; $5342: $80
    ldh [rLCDC], a                                ; $5343: $e0 $40
    ld b, d                                       ; $5345: $42
    ldh [$c0], a                                  ; $5346: $e0 $c0
    add sp, $0c                                   ; $5348: $e8 $0c
    ld [c], a                                     ; $534a: $e2
    ei                                            ; $534b: $fb
    db $e3                                        ; $534c: $e3
    halt                                          ; $534d: $76
    db $e3                                        ; $534e: $e3
    rst $38                                       ; $534f: $ff
    ret nc                                        ; $5350: $d0

    inc l                                         ; $5351: $2c
    db $ec                                        ; $5352: $ec
    jp nz, $0810                                  ; $5353: $c2 $10 $08

    ldh [$82], a                                  ; $5356: $e0 $82
    ld [c], a                                     ; $5358: $e2

jr_05d_5359:
    ld a, a                                       ; $5359: $7f
    db $e4                                        ; $535a: $e4
    cp l                                          ; $535b: $bd
    pop bc                                        ; $535c: $c1
    dec hl                                        ; $535d: $2b
    ld b, b                                       ; $535e: $40
    db $e3                                        ; $535f: $e3
    dec sp                                        ; $5360: $3b
    push hl                                       ; $5361: $e5
    rst $30                                       ; $5362: $f7
    jp nz, Jump_05d_4000                          ; $5363: $c2 $00 $40

    ld a, [$e7c0]                                 ; $5366: $fa $c0 $e7
    ld a, a                                       ; $5369: $7f
    jp $e440                                      ; $536a: $c3 $40 $e4


    ret nz                                        ; $536d: $c0

    add sp, -$03                                  ; $536e: $e8 $fd
    rst $30                                       ; $5370: $f7
    ret nz                                        ; $5371: $c0

    ldh a, [rLCDC]                                ; $5372: $f0 $40
    pop bc                                        ; $5374: $c1
    nop                                           ; $5375: $00
    ld e, h                                       ; $5376: $5c
    push hl                                       ; $5377: $e5
    rst $38                                       ; $5378: $ff
    ldh [$c1], a                                  ; $5379: $e0 $c1
    ld a, [$c2c0]                                 ; $537b: $fa $c0 $c2
    add $c2                                       ; $537e: $c6 $c2
    cp [hl]                                       ; $5380: $be
    pop bc                                        ; $5381: $c1
    pop bc                                        ; $5382: $c1
    db $e3                                        ; $5383: $e3
    ret nz                                        ; $5384: $c0

    add sp, $00                                   ; $5385: $e8 $00
    rst $38                                       ; $5387: $ff
    rst $38                                       ; $5388: $ff
    adc e                                         ; $5389: $8b
    jp $efc0                                      ; $538a: $c3 $c0 $ef


    add c                                         ; $538d: $81
    ret z                                         ; $538e: $c8

    ret nz                                        ; $538f: $c0

    rst $38                                       ; $5390: $ff
    rst $00                                       ; $5391: $c7
    and b                                         ; $5392: $a0
    rst $38                                       ; $5393: $ff
    jp hl                                         ; $5394: $e9


    ld b, b                                       ; $5395: $40
    jp hl                                         ; $5396: $e9


    jr nc, jr_05d_5359                            ; $5397: $30 $c0

    rst $38                                       ; $5399: $ff
    dec bc                                        ; $539a: $0b
    ret nz                                        ; $539b: $c0

    add [hl]                                      ; $539c: $86
    and c                                         ; $539d: $a1
    inc a                                         ; $539e: $3c
    and c                                         ; $539f: $a1
    ld c, h                                       ; $53a0: $4c
    ld c, h                                       ; $53a1: $4c
    ei                                            ; $53a2: $fb
    pop hl                                        ; $53a3: $e1
    ld b, b                                       ; $53a4: $40
    and h                                         ; $53a5: $a4
    nop                                           ; $53a6: $00
    ld a, l                                       ; $53a7: $7d
    call nz, $ffc0                                ; $53a8: $c4 $c0 $ff
    adc c                                         ; $53ab: $89
    rst $28                                       ; $53ac: $ef
    rst $38                                       ; $53ad: $ff
    rst $38                                       ; $53ae: $ff
    ld b, b                                       ; $53af: $40
    ret nc                                        ; $53b0: $d0

    db $dd                                        ; $53b1: $dd
    sub c                                         ; $53b2: $91
    ld b, b                                       ; $53b3: $40
    rst $38                                       ; $53b4: $ff
    dec bc                                        ; $53b5: $0b
    jp hl                                         ; $53b6: $e9


    nop                                           ; $53b7: $00
    jp nc, Jump_000_00df                          ; $53b8: $d2 $df $00

    rst $10                                       ; $53bb: $d7
    sbc e                                         ; $53bc: $9b
    cp d                                          ; $53bd: $ba
    cp [hl]                                       ; $53be: $be
    ld hl, sp+$16                                 ; $53bf: $f8 $16
    and a                                         ; $53c1: $a7
    set 0, [hl]                                   ; $53c2: $cb $c6
    cp c                                          ; $53c4: $b9
    rst $38                                       ; $53c5: $ff
    cp [hl]                                       ; $53c6: $be
    db $ec                                        ; $53c7: $ec
    nop                                           ; $53c8: $00
    push de                                       ; $53c9: $d5
    ld a, a                                       ; $53ca: $7f
    ld a, a                                       ; $53cb: $7f
    db $fc                                        ; $53cc: $fc
    push de                                       ; $53cd: $d5
    ld a, a                                       ; $53ce: $7f
    ld b, b                                       ; $53cf: $40
    rst $30                                       ; $53d0: $f7
    push de                                       ; $53d1: $d5
    ld a, a                                       ; $53d2: $7f
    ld a, [hl]                                    ; $53d3: $7e
    rst $38                                       ; $53d4: $ff
    push de                                       ; $53d5: $d5
    ld a, a                                       ; $53d6: $7f
    cp a                                          ; $53d7: $bf
    rst $18                                       ; $53d8: $df
    nop                                           ; $53d9: $00
    push de                                       ; $53da: $d5
    ld a, c                                       ; $53db: $79
    ld b, b                                       ; $53dc: $40
    db $fd                                        ; $53dd: $fd
    push de                                       ; $53de: $d5
    ld a, a                                       ; $53df: $7f
    ld a, a                                       ; $53e0: $7f
    call c, Call_05d_7fd5                         ; $53e1: $dc $d5 $7f
    rst $38                                       ; $53e4: $ff
    cp $d5                                        ; $53e5: $fe $d5
    ld a, a                                       ; $53e7: $7f
    rst $38                                       ; $53e8: $ff
    rst $38                                       ; $53e9: $ff
    nop                                           ; $53ea: $00
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
    rst $38                                       ; $53f9: $ff
    rst $38                                       ; $53fa: $ff
    nop                                           ; $53fb: $00
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
    rst $38                                       ; $540a: $ff
    rst $38                                       ; $540b: $ff
    nop                                           ; $540c: $00
    rst $38                                       ; $540d: $ff
    rst $38                                       ; $540e: $ff
    sub e                                         ; $540f: $93
    sbc a                                         ; $5410: $9f
    ld d, l                                       ; $5411: $55
    cp a                                          ; $5412: $bf
    sub h                                         ; $5413: $94
    ld a, [hl]                                    ; $5414: $7e
    rst $38                                       ; $5415: $ff
    rst $38                                       ; $5416: $ff
    sub h                                         ; $5417: $94
    ld a, d                                       ; $5418: $7a
    add b                                         ; $5419: $80
    rst $38                                       ; $541a: $ff
    ccf                                           ; $541b: $3f
    db $fc                                        ; $541c: $fc
    nop                                           ; $541d: $00
    ret nz                                        ; $541e: $c0

    rst $38                                       ; $541f: $ff
    ld b, c                                       ; $5420: $41
    rst $38                                       ; $5421: $ff
    rst $38                                       ; $5422: $ff
    rst $38                                       ; $5423: $ff
    call nc, $de51                                ; $5424: $d4 $51 $de
    ld a, a                                       ; $5427: $7f
    ld a, a                                       ; $5428: $7f
    rst $38                                       ; $5429: $ff
    rst $38                                       ; $542a: $ff
    rst $38                                       ; $542b: $ff
    ret nz                                        ; $542c: $c0

    db $dd                                        ; $542d: $dd
    nop                                           ; $542e: $00
    rst $38                                       ; $542f: $ff
    rst $38                                       ; $5430: $ff
    dec bc                                        ; $5431: $0b
    adc $62                                       ; $5432: $ce $62
    ld e, a                                       ; $5434: $5f
    cpl                                           ; $5435: $2f
    ld l, a                                       ; $5436: $6f
    ld h, d                                       ; $5437: $62
    ld e, a                                       ; $5438: $5f
    add l                                         ; $5439: $85
    rst $38                                       ; $543a: $ff
    ld h, d                                       ; $543b: $62
    ld e, a                                       ; $543c: $5f
    ld d, d                                       ; $543d: $52
    cp l                                          ; $543e: $bd
    nop                                           ; $543f: $00
    ld h, d                                       ; $5440: $62
    ld e, a                                       ; $5441: $5f
    rst $38                                       ; $5442: $ff
    rst $38                                       ; $5443: $ff
    call $ffbf                                    ; $5444: $cd $bf $ff
    rst $38                                       ; $5447: $ff
    rst $38                                       ; $5448: $ff
    rst $38                                       ; $5449: $ff
    sub [hl]                                      ; $544a: $96
    rst $38                                       ; $544b: $ff
    sbc c                                         ; $544c: $99
    sub $ff                                       ; $544d: $d6 $ff
    rst $38                                       ; $544f: $ff
    nop                                           ; $5450: $00
    rst $38                                       ; $5451: $ff
    rst $38                                       ; $5452: $ff
    rst $38                                       ; $5453: $ff
    rst $38                                       ; $5454: $ff

Jump_05d_5455:
    rst $38                                       ; $5455: $ff
    rst $38                                       ; $5456: $ff
    scf                                           ; $5457: $37
    db $eb                                        ; $5458: $eb
    call c, $ffff                                 ; $5459: $dc $ff $ff
    rst $38                                       ; $545c: $ff
    rst $38                                       ; $545d: $ff
    rst $38                                       ; $545e: $ff
    rst $38                                       ; $545f: $ff
    rst $38                                       ; $5460: $ff
    nop                                           ; $5461: $00
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
    rst $38                                       ; $546d: $ff
    rst $38                                       ; $546e: $ff
    rst $38                                       ; $546f: $ff
    rst $38                                       ; $5470: $ff
    rst $38                                       ; $5471: $ff
    nop                                           ; $5472: $00
    rst $38                                       ; $5473: $ff
    rst $38                                       ; $5474: $ff
    rst $38                                       ; $5475: $ff
    rst $38                                       ; $5476: $ff
    rst $38                                       ; $5477: $ff
    rst $38                                       ; $5478: $ff

jr_05d_5479:
    rst $38                                       ; $5479: $ff
    rst $38                                       ; $547a: $ff
    rst $38                                       ; $547b: $ff
    rst $38                                       ; $547c: $ff
    rst $38                                       ; $547d: $ff
    rst $38                                       ; $547e: $ff
    nop                                           ; $547f: $00
    cp a                                          ; $5480: $bf
    rst $38                                       ; $5481: $ff
    rst $38                                       ; $5482: $ff
    nop                                           ; $5483: $00
    rst $38                                       ; $5484: $ff
    rst $38                                       ; $5485: $ff
    rst $38                                       ; $5486: $ff
    rst $38                                       ; $5487: $ff
    rst $38                                       ; $5488: $ff
    rst $38                                       ; $5489: $ff
    rst $38                                       ; $548a: $ff
    di                                            ; $548b: $f3
    nop                                           ; $548c: $00
    nop                                           ; $548d: $00
    nop                                           ; $548e: $00
    rst $38                                       ; $548f: $ff
    ld e, e                                       ; $5490: $5b
    ld e, e                                       ; $5491: $5b
    ld e, e                                       ; $5492: $5b
    ld e, d                                       ; $5493: $5a
    ld e, e                                       ; $5494: $5b
    ld e, h                                       ; $5495: $5c
    ld e, l                                       ; $5496: $5d
    ld sp, $31ff                                  ; $5497: $31 $ff $31
    ld sp, $3a34                                  ; $549a: $31 $34 $3a
    ld d, h                                       ; $549d: $54
    ld d, h                                       ; $549e: $54
    ld d, h                                       ; $549f: $54
    dec sp                                        ; $54a0: $3b
    sbc a                                         ; $54a1: $9f
    ld c, l                                       ; $54a2: $4d
    ld sp, $5b60                                  ; $54a3: $31 $60 $5b
    nop                                           ; $54a6: $00
    rst $38                                       ; $54a7: $ff
    rst $38                                       ; $54a8: $ff
    rst $20                                       ; $54a9: $e7
    and $5a                                       ; $54aa: $e6 $5a
    reti                                          ; $54ac: $d9


    ld e, e                                       ; $54ad: $5b
    jp nz, $c3e2                                  ; $54ae: $c2 $e2 $c3

    ldh [rLY], a                                  ; $54b1: $e0 $44
    jr nc, @+$01                                  ; $54b3: $30 $ff

    ldh [$6d], a                                  ; $54b5: $e0 $6d
    ld [hl-], a                                   ; $54b7: $32
    jr nz, jr_05d_5479                            ; $54b8: $20 $bf

    ldh [$ca], a                                  ; $54ba: $e0 $ca
    rst $38                                       ; $54bc: $ff
    add sp, -$19                                  ; $54bd: $e8 $e7
    jp nz, $c3e4                                  ; $54bf: $c2 $e4 $c3

    ldh [$66], a                                  ; $54c2: $e0 $66
    ret nz                                        ; $54c4: $c0

    ld [c], a                                     ; $54c5: $e2
    cp a                                          ; $54c6: $bf
    pop hl                                        ; $54c7: $e1
    ld [$ffca], sp                                ; $54c8: $08 $ca $ff
    add sp, -$19                                  ; $54cb: $e8 $e7
    ld b, [hl]                                    ; $54cd: $46
    ldh [$ab], a                                  ; $54ce: $e0 $ab
    jp nz, $c0e1                                  ; $54d0: $c2 $e1 $c0

    and $7e                                       ; $54d3: $e6 $7e
    ldh [$ca], a                                  ; $54d5: $e0 $ca
    rst $38                                       ; $54d7: $ff
    ld a, $e8                                     ; $54d8: $3e $e8
    rst $20                                       ; $54da: $e7
    ld sp, $58ab                                  ; $54db: $31 $ab $58
    and l                                         ; $54de: $a5
    dec [hl]                                      ; $54df: $35
    ld b, [hl]                                    ; $54e0: $46
    pop hl                                        ; $54e1: $e1
    ret nz                                        ; $54e2: $c0

    and $f3                                       ; $54e3: $e6 $f3
    jr nc, jr_05d_5520                            ; $54e5: $30 $39

    jp z, $e8ff                                   ; $54e7: $ca $ff $e8

    rst $20                                       ; $54ea: $e7
    ld e, b                                       ; $54eb: $58
    xor d                                         ; $54ec: $aa
    add b                                         ; $54ed: $80
    add b                                         ; $54ee: $80
    sub c                                         ; $54ef: $91
    ld d, e                                       ; $54f0: $53
    ld b, [hl]                                    ; $54f1: $46
    db $e3                                        ; $54f2: $e3
    ccf                                           ; $54f3: $3f
    pop hl                                        ; $54f4: $e1
    ret nz                                        ; $54f5: $c0

    pop hl                                        ; $54f6: $e1
    ld d, d                                       ; $54f7: $52
    jp z, $e8ff                                   ; $54f8: $ca $ff $e8

    rst $20                                       ; $54fb: $e7
    add b                                         ; $54fc: $80
    ld h, d                                       ; $54fd: $62
    rst $38                                       ; $54fe: $ff
    ldh [rHDMA2], a                               ; $54ff: $e0 $52
    ld c, b                                       ; $5501: $48
    ld [c], a                                     ; $5502: $e2
    ret nz                                        ; $5503: $c0

    pop hl                                        ; $5504: $e1
    add c                                         ; $5505: $81
    pop hl                                        ; $5506: $e1
    jr nc, jr_05d_555c                            ; $5507: $30 $53

    jp z, $a0ff                                   ; $5509: $ca $ff $a0

    ret nz                                        ; $550c: $c0

    db $ec                                        ; $550d: $ec
    jp nz, $c0e1                                  ; $550e: $c2 $e1 $c0

    rst $20                                       ; $5511: $e7
    ld b, b                                       ; $5512: $40
    rst $38                                       ; $5513: $ff
    add b                                         ; $5514: $80
    db $ec                                        ; $5515: $ec
    add e                                         ; $5516: $83
    ret nz                                        ; $5517: $c0

    db $e3                                        ; $5518: $e3
    ld l, l                                       ; $5519: $6d
    ld sp, $8166                                  ; $551a: $31 $66 $81
    ld [c], a                                     ; $551d: $e2
    ret nz                                        ; $551e: $c0

    rst $18                                       ; $551f: $df

jr_05d_5520:
    ld b, b                                       ; $5520: $40
    db $ed                                        ; $5521: $ed
    ld a, c                                       ; $5522: $79
    ld [hl], c                                    ; $5523: $71
    ret nz                                        ; $5524: $c0

    add sp, $40                                   ; $5525: $e8 $40
    rst $18                                       ; $5527: $df
    cp $00                                        ; $5528: $fe $00
    xor $80                                       ; $552a: $ee $80
    halt                                          ; $552c: $76
    ld [hl], $6d                                  ; $552d: $36 $6d
    ld l, l                                       ; $552f: $6d

jr_05d_5530:
    ld b, h                                       ; $5530: $44
    ld d, l                                       ; $5531: $55
    jp Jump_05d_5455                              ; $5532: $c3 $55 $54


    db $fd                                        ; $5535: $fd
    ldh [$7f], a                                  ; $5536: $e0 $7f
    and b                                         ; $5538: $a0
    ret nz                                        ; $5539: $c0

    rst $38                                       ; $553a: $ff
    ret nz                                        ; $553b: $c0

    db $ed                                        ; $553c: $ed
    add b                                         ; $553d: $80
    ld l, a                                       ; $553e: $6f
    scf                                           ; $553f: $37
    ld l, [hl]                                    ; $5540: $6e
    ld b, l                                       ; $5541: $45
    ld b, e                                       ; $5542: $43
    dec a                                         ; $5543: $3d
    and b                                         ; $5544: $a0
    inc b                                         ; $5545: $04
    inc b                                         ; $5546: $04
    ei                                            ; $5547: $fb
    pop hl                                        ; $5548: $e1
    ret nz                                        ; $5549: $c0

    rst $38                                       ; $554a: $ff
    halt                                          ; $554b: $76
    ret nz                                        ; $554c: $c0

    xor $ae                                       ; $554d: $ee $ae
    ld [hl], b                                    ; $554f: $70
    rst $38                                       ; $5550: $ff
    add b                                         ; $5551: $80
    ld de, $1412                                  ; $5552: $11 $12 $14
    rst $38                                       ; $5555: $ff
    db $e3                                        ; $5556: $e3
    ld a, b                                       ; $5557: $78
    jp z, Jump_05d_40ff                           ; $5558: $ca $ff $40

    db $ec                                        ; $555b: $ec

jr_05d_555c:
    pop bc                                        ; $555c: $c1
    ld [c], a                                     ; $555d: $e2
    add hl, hl                                    ; $555e: $29
    ld hl, $2410                                  ; $555f: $21 $10 $24
    rst $38                                       ; $5562: $ff
    db $e3                                        ; $5563: $e3
    jr c, jr_05d_5530                             ; $5564: $38 $ca

    rst $38                                       ; $5566: $ff
    nop                                           ; $5567: $00
    set 0, c                                      ; $5568: $cb $c1
    db $e3                                        ; $556a: $e3
    daa                                           ; $556b: $27
    db $10                                        ; $556c: $10
    jr nz, @+$01                                  ; $556d: $20 $ff

    db $e4                                        ; $556f: $e4
    jp z, Jump_000_00ff                           ; $5570: $ca $ff $00

    ret nz                                        ; $5573: $c0

    xor d                                         ; $5574: $aa
    pop bc                                        ; $5575: $c1
    db $ed                                        ; $5576: $ed
    ret nz                                        ; $5577: $c0

    rst $38                                       ; $5578: $ff
    rst $38                                       ; $5579: $ff
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    rst $38                                       ; $557c: $ff
    rst $38                                       ; $557d: $ff
    rst $38                                       ; $557e: $ff
    rst $38                                       ; $557f: $ff
    rst $38                                       ; $5580: $ff
    rst $38                                       ; $5581: $ff
    rst $38                                       ; $5582: $ff
    nop                                           ; $5583: $00
    rst $38                                       ; $5584: $ff
    rst $38                                       ; $5585: $ff
    rst $38                                       ; $5586: $ff
    rst $38                                       ; $5587: $ff
    rst $38                                       ; $5588: $ff
    rst $38                                       ; $5589: $ff
    rst $38                                       ; $558a: $ff
    rst $38                                       ; $558b: $ff
    rst $38                                       ; $558c: $ff
    rst $38                                       ; $558d: $ff
    rst $38                                       ; $558e: $ff
    rst $38                                       ; $558f: $ff
    rst $38                                       ; $5590: $ff
    rst $38                                       ; $5591: $ff
    rst $38                                       ; $5592: $ff
    rst $38                                       ; $5593: $ff
    nop                                           ; $5594: $00
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
    rst $38                                       ; $55a0: $ff
    rst $38                                       ; $55a1: $ff
    rst $38                                       ; $55a2: $ff
    rst $38                                       ; $55a3: $ff
    rst $38                                       ; $55a4: $ff
    nop                                           ; $55a5: $00
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
    rst $38                                       ; $55b1: $ff
    rst $38                                       ; $55b2: $ff
    rst $38                                       ; $55b3: $ff
    rst $38                                       ; $55b4: $ff
    rst $38                                       ; $55b5: $ff
    nop                                           ; $55b6: $00
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
    rst $38                                       ; $55c2: $ff
    rst $38                                       ; $55c3: $ff
    rst $38                                       ; $55c4: $ff
    rst $38                                       ; $55c5: $ff
    rst $38                                       ; $55c6: $ff
    nop                                           ; $55c7: $00
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
    rst $38                                       ; $55d3: $ff
    rst $38                                       ; $55d4: $ff
    rst $38                                       ; $55d5: $ff
    rst $38                                       ; $55d6: $ff
    rst $38                                       ; $55d7: $ff
    nop                                           ; $55d8: $00
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
    rst $38                                       ; $55e4: $ff
    rst $38                                       ; $55e5: $ff
    rst $38                                       ; $55e6: $ff
    rst $38                                       ; $55e7: $ff
    rst $38                                       ; $55e8: $ff
    nop                                           ; $55e9: $00
    rst $38                                       ; $55ea: $ff
    rst $38                                       ; $55eb: $ff
    rst $38                                       ; $55ec: $ff
    rst $38                                       ; $55ed: $ff
    rst $38                                       ; $55ee: $ff
    rst $38                                       ; $55ef: $ff
    rst $38                                       ; $55f0: $ff
    rst $38                                       ; $55f1: $ff
    rst $38                                       ; $55f2: $ff
    rst $38                                       ; $55f3: $ff
    rst $38                                       ; $55f4: $ff
    rst $38                                       ; $55f5: $ff
    rst $38                                       ; $55f6: $ff
    rst $38                                       ; $55f7: $ff
    rst $38                                       ; $55f8: $ff
    rst $38                                       ; $55f9: $ff
    nop                                           ; $55fa: $00
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
    rst $38                                       ; $5608: $ff
    rst $38                                       ; $5609: $ff
    rst $38                                       ; $560a: $ff
    nop                                           ; $560b: $00
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
    rst $38                                       ; $5619: $ff
    rst $38                                       ; $561a: $ff
    rst $38                                       ; $561b: $ff
    nop                                           ; $561c: $00
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
    rst $38                                       ; $562a: $ff
    rst $38                                       ; $562b: $ff
    rst $38                                       ; $562c: $ff
    nop                                           ; $562d: $00
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
    db $f4                                        ; $5639: $f4
    nop                                           ; $563a: $00
    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    and l                                         ; $563d: $a5
    nop                                           ; $563e: $00
    rst $38                                       ; $563f: $ff
    push hl                                       ; $5640: $e5
    ld [hl-], a                                   ; $5641: $32
    or $e6                                        ; $5642: $f6 $e6
    rst $30                                       ; $5644: $f7
    rst $20                                       ; $5645: $e7
    dec [hl]                                      ; $5646: $35
    db $ec                                        ; $5647: $ec
    xor $37                                       ; $5648: $ee $37
    db $ec                                        ; $564a: $ec
    jp c, $c7f0                                   ; $564b: $da $f0 $c7

    add sp, $33                                   ; $564e: $e8 $33
    ld sp, $f2e0                                  ; $5650: $31 $e0 $f2
    ld [hl], $30                                  ; $5653: $36 $30
    scf                                           ; $5655: $37
    cp a                                          ; $5656: $bf
    ld h, $20                                     ; $5657: $26 $20
    daa                                           ; $5659: $27
    db $10                                        ; $565a: $10
    ld d, $17                                     ; $565b: $16 $17
    jp nz, Jump_000_34f6                          ; $565d: $c2 $f6 $34

    rst $38                                       ; $5660: $ff
    ld [hl], $32                                  ; $5661: $36 $32
    jr nc, jr_05d_569c                            ; $5663: $30 $37

    ld sp, $3133                                  ; $5665: $31 $33 $31
    inc sp                                        ; $5668: $33
    nop                                           ; $5669: $00
    and b                                         ; $566a: $a0
    ei                                            ; $566b: $fb
    rst $38                                       ; $566c: $ff
    rst $28                                       ; $566d: $ef
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    ld a, c                                       ; $5671: $79
    ld d, [hl]                                    ; $5672: $56
    xor c                                         ; $5673: $a9
    ld d, [hl]                                    ; $5674: $56
    ld [hl-], a                                   ; $5675: $32
    ld e, b                                       ; $5676: $58
    rlca                                          ; $5677: $07
    ld e, d                                       ; $5678: $5a
    db $ec                                        ; $5679: $ec
    inc bc                                        ; $567a: $03
    nop                                           ; $567b: $00
    inc bc                                        ; $567c: $03
    nop                                           ; $567d: $00
    ld [bc], a                                    ; $567e: $02
    nop                                           ; $567f: $00
    ld bc, $03ec                                  ; $5680: $01 $ec $03
    di                                            ; $5683: $f3
    inc bc                                        ; $5684: $03
    nop                                           ; $5685: $00
    inc bc                                        ; $5686: $03
    nop                                           ; $5687: $00
    ld [bc], a                                    ; $5688: $02
    ld c, b                                       ; $5689: $48
    ld a, a                                       ; $568a: $7f
    ld c, b                                       ; $568b: $48
    ld a, a                                       ; $568c: $7f
    ld c, b                                       ; $568d: $48
    ld a, a                                       ; $568e: $7f
    ld c, b                                       ; $568f: $48
    ld a, a                                       ; $5690: $7f
    ld e, a                                       ; $5691: $5f
    ld e, e                                       ; $5692: $5b
    ret z                                         ; $5693: $c8

    inc bc                                        ; $5694: $03
    inc bc                                        ; $5695: $03
    ld [bc], a                                    ; $5696: $02
    ld [bc], a                                    ; $5697: $02
    ld bc, $0116                                  ; $5698: $01 $16 $01
    ret z                                         ; $569b: $c8

jr_05d_569c:
    inc bc                                        ; $569c: $03
    inc bc                                        ; $569d: $03
    ld [bc], a                                    ; $569e: $02
    ld [bc], a                                    ; $569f: $02
    ld bc, $2508                                  ; $56a0: $01 $08 $25
    ld [$0825], sp                                ; $56a3: $08 $25 $08
    dec h                                         ; $56a6: $25
    ld [$ff25], sp                                ; $56a7: $08 $25 $ff
    dec bc                                        ; $56aa: $0b
    dec bc                                        ; $56ab: $0b
    dec hl                                        ; $56ac: $2b
    ld l, e                                       ; $56ad: $6b
    ld l, e                                       ; $56ae: $6b
    ld c, e                                       ; $56af: $4b
    ld c, e                                       ; $56b0: $4b
    ld c, e                                       ; $56b1: $4b
    dec c                                         ; $56b2: $0d
    dec hl                                        ; $56b3: $2b
    ld sp, hl                                     ; $56b4: $f9
    db $e3                                        ; $56b5: $e3
    ld c, e                                       ; $56b6: $4b
    dec bc                                        ; $56b7: $0b
    rst $28                                       ; $56b8: $ef
    ldh [$fc], a                                  ; $56b9: $e0 $fc
    ldh [rIE], a                                  ; $56bb: $e0 $ff
    rst $38                                       ; $56bd: $ff
    push hl                                       ; $56be: $e5
    db $e4                                        ; $56bf: $e4
    ld a, a                                       ; $56c0: $7f
    ld l, e                                       ; $56c1: $6b
    dec bc                                        ; $56c2: $0b
    ld l, e                                       ; $56c3: $6b
    ld l, e                                       ; $56c4: $6b
    dec hl                                        ; $56c5: $2b
    dec hl                                        ; $56c6: $2b
    dec hl                                        ; $56c7: $2b
    cp [hl]                                       ; $56c8: $be
    ldh [$61], a                                  ; $56c9: $e0 $61
    ld l, e                                       ; $56cb: $6b
    ldh a, [$e4]                                  ; $56cc: $f0 $e4
    rst $38                                       ; $56ce: $ff
    rst $38                                       ; $56cf: $ff
    cp a                                          ; $56d0: $bf
    db $eb                                        ; $56d1: $eb
    pop bc                                        ; $56d2: $c1
    pop hl                                        ; $56d3: $e1
    dec hl                                        ; $56d4: $2b
    ld l, e                                       ; $56d5: $6b
    add a                                         ; $56d6: $87
    pop hl                                        ; $56d7: $e1
    nop                                           ; $56d8: $00
    db $d3                                        ; $56d9: $d3
    ld [c], a                                     ; $56da: $e2
    ld a, l                                       ; $56db: $7d
    ld [c], a                                     ; $56dc: $e2
    rst $38                                       ; $56dd: $ff
    rst $38                                       ; $56de: $ff
    ret nz                                        ; $56df: $c0

    db $ec                                        ; $56e0: $ec
    ret c                                         ; $56e1: $d8

    rst $20                                       ; $56e2: $e7
    scf                                           ; $56e3: $37
    ldh [$cb], a                                  ; $56e4: $e0 $cb
    rst $38                                       ; $56e6: $ff
    add c                                         ; $56e7: $81
    ld [$cd0c], a                                 ; $56e8: $ea $0c $cd
    ldh [$0d], a                                  ; $56eb: $e0 $0d
    push hl                                       ; $56ed: $e5
    ld l, e                                       ; $56ee: $6b
    dec hl                                        ; $56ef: $2b
    inc sp                                        ; $56f0: $33
    ldh [$c0], a                                  ; $56f1: $e0 $c0
    rst $38                                       ; $56f3: $ff
    nop                                           ; $56f4: $00
    jp hl                                         ; $56f5: $e9


    pop de                                        ; $56f6: $d1
    ldh [$0c], a                                  ; $56f7: $e0 $0c
    ld a, a                                       ; $56f9: $7f
    push hl                                       ; $56fa: $e5
    cp h                                          ; $56fb: $bc
    ret nz                                        ; $56fc: $c0

    dec hl                                        ; $56fd: $2b
    ld c, e                                       ; $56fe: $4b
    ld a, a                                       ; $56ff: $7f
    ldh [$ca], a                                  ; $5700: $e0 $ca
    rst $38                                       ; $5702: $ff
    jp hl                                         ; $5703: $e9


    add sp, $44                                   ; $5704: $e8 $44
    ldh [rP1], a                                  ; $5706: $e0 $00
    ccf                                           ; $5708: $3f
    db $e4                                        ; $5709: $e4
    ld a, h                                       ; $570a: $7c
    ret nz                                        ; $570b: $c0

    cp b                                          ; $570c: $b8
    ret nz                                        ; $570d: $c0

    or d                                          ; $570e: $b2
    ret nz                                        ; $570f: $c0

    set 7, a                                      ; $5710: $cb $ff
    ld a, a                                       ; $5712: $7f
    jp z, $c1c0                                   ; $5713: $ca $c0 $c1

    adc b                                         ; $5716: $88
    ldh [rSB], a                                  ; $5717: $e0 $01
    dec bc                                        ; $5719: $0b
    push bc                                       ; $571a: $c5
    pop hl                                        ; $571b: $e1
    ld a, $c1                                     ; $571c: $3e $c1
    ret nz                                        ; $571e: $c0

    rst $38                                       ; $571f: $ff
    add b                                         ; $5720: $80
    ld [$c03f], a                                 ; $5721: $ea $3f $c0
    dec a                                         ; $5724: $3d
    ret nz                                        ; $5725: $c0

    rlca                                          ; $5726: $07
    jp nz, $c000                                  ; $5727: $c2 $00 $c0

    rst $38                                       ; $572a: $ff
    rst $38                                       ; $572b: $ff
    or e                                          ; $572c: $b3
    cp [hl]                                       ; $572d: $be
    ldh [$c6], a                                  ; $572e: $e0 $c6
    and c                                         ; $5730: $a1
    ld hl, sp-$5d                                 ; $5731: $f8 $a3
    pop bc                                        ; $5733: $c1
    rst $38                                       ; $5734: $ff
    ld bc, $c2ea                                  ; $5735: $01 $ea $c2
    ld [c], a                                     ; $5738: $e2
    nop                                           ; $5739: $00
    cp a                                          ; $573a: $bf
    pop hl                                        ; $573b: $e1
    ret nz                                        ; $573c: $c0

    rst $38                                       ; $573d: $ff
    pop bc                                        ; $573e: $c1
    db $d3                                        ; $573f: $d3
    cp a                                          ; $5740: $bf
    db $e3                                        ; $5741: $e3
    rst $38                                       ; $5742: $ff
    pop bc                                        ; $5743: $c1
    cp b                                          ; $5744: $b8
    and d                                         ; $5745: $a2
    pop bc                                        ; $5746: $c1
    cp a                                          ; $5747: $bf
    ld a, a                                       ; $5748: $7f
    ld a, [c]                                     ; $5749: $f2
    nop                                           ; $574a: $00
    cp l                                          ; $574b: $bd
    and c                                         ; $574c: $a1
    ld [hl], h                                    ; $574d: $74
    ld [c], a                                     ; $574e: $e2
    adc $ff                                       ; $574f: $ce $ff
    ld a, a                                       ; $5751: $7f
    ld a, [c]                                     ; $5752: $f2
    ld a, l                                       ; $5753: $7d
    and d                                         ; $5754: $a2
    halt                                          ; $5755: $76
    xor e                                         ; $5756: $ab
    rst $38                                       ; $5757: $ff
    rst $38                                       ; $5758: $ff
    ld a, $e7                                     ; $5759: $3e $e7
    add b                                         ; $575b: $80
    ld b, l                                       ; $575c: $45
    and h                                         ; $575d: $a4
    scf                                           ; $575e: $37
    and d                                         ; $575f: $a2
    ld a, l                                       ; $5760: $7d
    rst $38                                       ; $5761: $ff
    jp hl                                         ; $5762: $e9


    add sp, -$37                                  ; $5763: $e8 $c9
    jp $a6b5                                      ; $5765: $c3 $b5 $a6


    ld l, [hl]                                    ; $5768: $6e
    add c                                         ; $5769: $81
    ld a, [bc]                                    ; $576a: $0a
    nop                                           ; $576b: $00
    jp z, $ffff                                   ; $576c: $ca $ff $ff

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
    nop                                           ; $577c: $00
    rst $38                                       ; $577d: $ff
    rst $38                                       ; $577e: $ff
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
    nop                                           ; $578d: $00
    rst $38                                       ; $578e: $ff
    rst $38                                       ; $578f: $ff
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
    nop                                           ; $579e: $00
    rst $38                                       ; $579f: $ff
    rst $38                                       ; $57a0: $ff
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
    nop                                           ; $57af: $00
    rst $38                                       ; $57b0: $ff
    rst $38                                       ; $57b1: $ff
    rst $38                                       ; $57b2: $ff
    rst $38                                       ; $57b3: $ff
    rst $38                                       ; $57b4: $ff
    rst $38                                       ; $57b5: $ff
    rst $38                                       ; $57b6: $ff
    rst $38                                       ; $57b7: $ff
    rst $38                                       ; $57b8: $ff
    rst $38                                       ; $57b9: $ff
    rst $38                                       ; $57ba: $ff
    rst $38                                       ; $57bb: $ff
    rst $38                                       ; $57bc: $ff
    rst $38                                       ; $57bd: $ff
    rst $38                                       ; $57be: $ff
    rst $38                                       ; $57bf: $ff
    nop                                           ; $57c0: $00
    rst $38                                       ; $57c1: $ff
    rst $38                                       ; $57c2: $ff
    rst $38                                       ; $57c3: $ff
    rst $38                                       ; $57c4: $ff
    rst $38                                       ; $57c5: $ff
    rst $38                                       ; $57c6: $ff
    rst $38                                       ; $57c7: $ff
    rst $38                                       ; $57c8: $ff
    rst $38                                       ; $57c9: $ff
    rst $38                                       ; $57ca: $ff
    rst $38                                       ; $57cb: $ff
    rst $38                                       ; $57cc: $ff
    rst $38                                       ; $57cd: $ff
    rst $38                                       ; $57ce: $ff
    rst $38                                       ; $57cf: $ff
    rst $38                                       ; $57d0: $ff
    nop                                           ; $57d1: $00
    rst $38                                       ; $57d2: $ff
    rst $38                                       ; $57d3: $ff
    rst $38                                       ; $57d4: $ff
    rst $38                                       ; $57d5: $ff
    rst $38                                       ; $57d6: $ff
    rst $38                                       ; $57d7: $ff
    rst $38                                       ; $57d8: $ff
    rst $38                                       ; $57d9: $ff
    rst $38                                       ; $57da: $ff
    rst $38                                       ; $57db: $ff
    rst $38                                       ; $57dc: $ff
    rst $38                                       ; $57dd: $ff
    rst $38                                       ; $57de: $ff
    rst $38                                       ; $57df: $ff
    rst $38                                       ; $57e0: $ff
    rst $38                                       ; $57e1: $ff
    nop                                           ; $57e2: $00
    rst $38                                       ; $57e3: $ff
    rst $38                                       ; $57e4: $ff
    rst $38                                       ; $57e5: $ff
    rst $38                                       ; $57e6: $ff
    rst $38                                       ; $57e7: $ff
    rst $38                                       ; $57e8: $ff
    rst $38                                       ; $57e9: $ff
    rst $38                                       ; $57ea: $ff
    rst $38                                       ; $57eb: $ff
    rst $38                                       ; $57ec: $ff
    rst $38                                       ; $57ed: $ff
    rst $38                                       ; $57ee: $ff
    rst $38                                       ; $57ef: $ff
    rst $38                                       ; $57f0: $ff
    rst $38                                       ; $57f1: $ff
    rst $38                                       ; $57f2: $ff
    nop                                           ; $57f3: $00
    rst $38                                       ; $57f4: $ff
    rst $38                                       ; $57f5: $ff
    rst $38                                       ; $57f6: $ff
    rst $38                                       ; $57f7: $ff
    rst $38                                       ; $57f8: $ff
    rst $38                                       ; $57f9: $ff
    rst $38                                       ; $57fa: $ff
    rst $38                                       ; $57fb: $ff
    rst $38                                       ; $57fc: $ff
    rst $38                                       ; $57fd: $ff
    rst $38                                       ; $57fe: $ff
    rst $38                                       ; $57ff: $ff
    rst $38                                       ; $5800: $ff
    rst $38                                       ; $5801: $ff
    rst $38                                       ; $5802: $ff
    rst $38                                       ; $5803: $ff
    nop                                           ; $5804: $00
    rst $38                                       ; $5805: $ff
    rst $38                                       ; $5806: $ff
    rst $38                                       ; $5807: $ff
    rst $38                                       ; $5808: $ff
    rst $38                                       ; $5809: $ff
    rst $38                                       ; $580a: $ff
    rst $38                                       ; $580b: $ff
    rst $38                                       ; $580c: $ff
    rst $38                                       ; $580d: $ff
    rst $38                                       ; $580e: $ff
    rst $38                                       ; $580f: $ff
    rst $38                                       ; $5810: $ff
    rst $38                                       ; $5811: $ff
    rst $38                                       ; $5812: $ff
    rst $38                                       ; $5813: $ff
    rst $38                                       ; $5814: $ff
    nop                                           ; $5815: $00
    rst $38                                       ; $5816: $ff
    rst $38                                       ; $5817: $ff
    rst $38                                       ; $5818: $ff
    rst $38                                       ; $5819: $ff
    rst $38                                       ; $581a: $ff
    rst $38                                       ; $581b: $ff
    rst $38                                       ; $581c: $ff
    rst $38                                       ; $581d: $ff
    rst $38                                       ; $581e: $ff
    rst $38                                       ; $581f: $ff
    rst $38                                       ; $5820: $ff
    rst $38                                       ; $5821: $ff
    rst $38                                       ; $5822: $ff
    rst $38                                       ; $5823: $ff
    rst $38                                       ; $5824: $ff
    rst $38                                       ; $5825: $ff
    nop                                           ; $5826: $00
    rst $38                                       ; $5827: $ff
    rst $38                                       ; $5828: $ff
    rst $38                                       ; $5829: $ff

jr_05d_582a:
    rst $38                                       ; $582a: $ff
    rst $38                                       ; $582b: $ff
    rst $38                                       ; $582c: $ff
    rst $38                                       ; $582d: $ff
    di                                            ; $582e: $f3
    nop                                           ; $582f: $00
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    rst $38                                       ; $5832: $ff
    ld sp, $0101                                  ; $5833: $31 $01 $01
    rla                                           ; $5836: $17
    ld d, $22                                     ; $5837: $16 $22
    ld d, $17                                     ; $5839: $16 $17
    cp $f9                                        ; $583b: $fe $f9
    pop hl                                        ; $583d: $e1
    inc hl                                        ; $583e: $23
    inc hl                                        ; $583f: $23
    ld d, $44                                     ; $5840: $16 $44
    ld bc, $0101                                  ; $5842: $01 $01 $01
    di                                            ; $5845: $f3
    ld l, $51                                     ; $5846: $2e $51
    rst $38                                       ; $5848: $ff
    rst $38                                       ; $5849: $ff
    rst $20                                       ; $584a: $e7
    and $2c                                       ; $584b: $e6 $2c
    ld bc, $060c                                  ; $584d: $01 $0c $06
    rst $38                                       ; $5850: $ff
    scf                                           ; $5851: $37
    scf                                           ; $5852: $37
    scf                                           ; $5853: $37
    ld b, $22                                     ; $5854: $06 $22
    inc hl                                        ; $5856: $23
    ld b, $3a                                     ; $5857: $06 $3a
    add $ff                                       ; $5859: $c6 $ff
    ldh [rSTAT], a                                ; $585b: $e0 $41
    ld b, d                                       ; $585d: $42
    cp a                                          ; $585e: $bf
    ldh [$ca], a                                  ; $585f: $e0 $ca
    rst $38                                       ; $5861: $ff
    add sp, -$19                                  ; $5862: $e8 $e7
    ld bc, $bd19                                  ; $5864: $01 $19 $bd
    jr jr_05d_582a                                ; $5867: $18 $c1

    ldh [$37], a                                  ; $5869: $e0 $37
    nop                                           ; $586b: $00
    scf                                           ; $586c: $37
    inc [hl]                                      ; $586d: $34
    pop bc                                        ; $586e: $c1

jr_05d_586f:
    pop hl                                        ; $586f: $e1
    ld a, [hl-]                                   ; $5870: $3a
    rst $08                                       ; $5871: $cf
    ld a, [hl-]                                   ; $5872: $3a
    ld a, $43                                     ; $5873: $3e $43
    ld b, h                                       ; $5875: $44
    ret nz                                        ; $5876: $c0

    rst $38                                       ; $5877: $ff
    ret nz                                        ; $5878: $c0

    jp hl                                         ; $5879: $e9


    add hl, bc                                    ; $587a: $09
    nop                                           ; $587b: $00
    sbc [hl]                                      ; $587c: $9e
    ret nz                                        ; $587d: $c0

    ld [$3c48], a                                 ; $587e: $ea $48 $3c
    inc a                                         ; $5881: $3c
    ccf                                           ; $5882: $3f
    jp z, $e8ff                                   ; $5883: $ca $ff $e8

    rst $20                                       ; $5886: $e7
    add hl, de                                    ; $5887: $19
    di                                            ; $5888: $f3
    jr jr_05d_588b                                ; $5889: $18 $00

jr_05d_588b:
    cp a                                          ; $588b: $bf
    pop hl                                        ; $588c: $e1
    add b                                         ; $588d: $80
    db $e4                                        ; $588e: $e4
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    ld b, b                                       ; $5891: $40
    inc a                                         ; $5892: $3c
    inc sp                                        ; $5893: $33
    inc a                                         ; $5894: $3c
    dec a                                         ; $5895: $3d
    jp z, $e8ff                                   ; $5896: $ca $ff $e8

    rst $20                                       ; $5899: $e7
    add hl, bc                                    ; $589a: $09
    nop                                           ; $589b: $00
    rst $38                                       ; $589c: $ff
    ldh [rLCDC], a                                ; $589d: $e0 $40
    db $e4                                        ; $589f: $e4
    ld a, $f5                                     ; $58a0: $3e $f5
    ldh [$38], a                                  ; $58a2: $e0 $38
    dec sp                                        ; $58a4: $3b
    ld a, $3c                                     ; $58a5: $3e $3c
    ld c, d                                       ; $58a7: $4a
    jp z, $e8ff                                   ; $58a8: $ca $ff $e8

    rst $20                                       ; $58ab: $e7
    db $ed                                        ; $58ac: $ed
    jr nz, jr_05d_586f                            ; $58ad: $20 $c0

    db $e4                                        ; $58af: $e4
    jr c, jr_05d_58e7                             ; $58b0: $38 $35

    or a                                          ; $58b2: $b7
    pop hl                                        ; $58b3: $e1
    inc [hl]                                      ; $58b4: $34
    dec sp                                        ; $58b5: $3b
    dec sp                                        ; $58b6: $3b
    ld l, c                                       ; $58b7: $69
    ld b, b                                       ; $58b8: $40
    ret nz                                        ; $58b9: $c0

    rst $38                                       ; $58ba: $ff
    ld [$21e9], a                                 ; $58bb: $ea $e9 $21
    add b                                         ; $58be: $80
    pop hl                                        ; $58bf: $e1
    nop                                           ; $58c0: $00
    scf                                           ; $58c1: $37
    add [hl]                                      ; $58c2: $86
    ldh [$9a], a                                  ; $58c3: $e0 $9a
    cp a                                          ; $58c5: $bf
    ldh [$3b], a                                  ; $58c6: $e0 $3b
    ret nz                                        ; $58c8: $c0

    ldh [$3b], a                                  ; $58c9: $e0 $3b
    ld c, d                                       ; $58cb: $4a
    ld b, b                                       ; $58cc: $40
    rst $38                                       ; $58cd: $ff
    add b                                         ; $58ce: $80
    db $ed                                        ; $58cf: $ed
    dec sp                                        ; $58d0: $3b
    dec l                                         ; $58d1: $2d
    jr c, jr_05d_5919                             ; $58d2: $38 $45

    pop hl                                        ; $58d4: $e1
    dec [hl]                                      ; $58d5: $35
    dec sp                                        ; $58d6: $3b
    ret nz                                        ; $58d7: $c0

    ld [c], a                                     ; $58d8: $e2
    ld a, $c0                                     ; $58d9: $3e $c0
    rst $18                                       ; $58db: $df
    ld b, b                                       ; $58dc: $40
    db $eb                                        ; $58dd: $eb
    inc h                                         ; $58de: $24
    adc h                                         ; $58df: $8c
    ldh [$bf], a                                  ; $58e0: $e0 $bf
    pop hl                                        ; $58e2: $e1
    scf                                           ; $58e3: $37
    ld b, e                                       ; $58e4: $43
    ldh [$80], a                                  ; $58e5: $e0 $80

jr_05d_58e7:
    pop hl                                        ; $58e7: $e1
    jr nz, @+$42                                  ; $58e8: $20 $40

    rst $18                                       ; $58ea: $df
    ret nz                                        ; $58eb: $c0

    ret                                           ; $58ec: $c9


    add b                                         ; $58ed: $80
    jp nz, $bfe1                                  ; $58ee: $c2 $e1 $bf

    ld [c], a                                     ; $58f1: $e2
    ret nz                                        ; $58f2: $c0

    rst $38                                       ; $58f3: $ff
    ld b, b                                       ; $58f4: $40
    db $d3                                        ; $58f5: $d3
    cp a                                          ; $58f6: $bf
    db $e3                                        ; $58f7: $e3
    cp [hl]                                       ; $58f8: $be
    and c                                         ; $58f9: $a1
    ld a, b                                       ; $58fa: $78
    pop hl                                        ; $58fb: $e1
    dec sp                                        ; $58fc: $3b
    jp $093b                                      ; $58fd: $c3 $3b $09


    ret nz                                        ; $5900: $c0

    rst $38                                       ; $5901: $ff
    ret nz                                        ; $5902: $c0

    xor d                                         ; $5903: $aa
    ret nz                                        ; $5904: $c0

    add sp, $3f                                   ; $5905: $e8 $3f
    pop bc                                        ; $5907: $c1
    jr jr_05d_5923                                ; $5908: $18 $19

    call z, $ffc0                                 ; $590a: $cc $c0 $ff
    ld b, b                                       ; $590d: $40
    xor c                                         ; $590e: $a9
    dec e                                         ; $590f: $1d
    ld [bc], a                                    ; $5910: $02
    add b                                         ; $5911: $80
    and $75                                       ; $5912: $e6 $75
    jp nz, $0109                                  ; $5914: $c2 $09 $01

    ld [hl], c                                    ; $5917: $71
    inc l                                         ; $5918: $2c

jr_05d_5919:
    jp z, Jump_000_00ff                           ; $5919: $ca $ff $00

    xor b                                         ; $591c: $a8
    cp a                                          ; $591d: $bf
    db $e3                                        ; $591e: $e3
    ld b, $22                                     ; $591f: $06 $22
    ld [hl+], a                                   ; $5921: $22
    cp [hl]                                       ; $5922: $be

jr_05d_5923:
    add b                                         ; $5923: $80
    sbc [hl]                                      ; $5924: $9e
    or h                                          ; $5925: $b4
    and b                                         ; $5926: $a0
    ld b, $07                                     ; $5927: $06 $07
    ld bc, $ca31                                  ; $5929: $01 $31 $ca
    rst $38                                       ; $592c: $ff
    add sp, -$19                                  ; $592d: $e8 $e7
    ld l, $ce                                     ; $592f: $2e $ce
    cp a                                          ; $5931: $bf
    ldh [$15], a                                  ; $5932: $e0 $15
    inc hl                                        ; $5934: $23
    dec d                                         ; $5935: $15
    ld b, b                                       ; $5936: $40
    add b                                         ; $5937: $80
    scf                                           ; $5938: $37
    add b                                         ; $5939: $80
    dec d                                         ; $593a: $15
    ld [hl+], a                                   ; $593b: $22
    ld b, $f7                                     ; $593c: $06 $f7
    ldh [$2e], a                                  ; $593e: $e0 $2e
    jr z, @-$34                                   ; $5940: $28 $ca

    rst $38                                       ; $5942: $ff
    rst $38                                       ; $5943: $ff
    rst $38                                       ; $5944: $ff
    rst $38                                       ; $5945: $ff
    rst $38                                       ; $5946: $ff
    rst $38                                       ; $5947: $ff
    rst $38                                       ; $5948: $ff
    rst $38                                       ; $5949: $ff
    rst $38                                       ; $594a: $ff
    nop                                           ; $594b: $00
    rst $38                                       ; $594c: $ff
    rst $38                                       ; $594d: $ff
    rst $38                                       ; $594e: $ff
    rst $38                                       ; $594f: $ff
    rst $38                                       ; $5950: $ff
    rst $38                                       ; $5951: $ff
    rst $38                                       ; $5952: $ff
    rst $38                                       ; $5953: $ff
    rst $38                                       ; $5954: $ff
    rst $38                                       ; $5955: $ff
    rst $38                                       ; $5956: $ff
    rst $38                                       ; $5957: $ff
    rst $38                                       ; $5958: $ff
    rst $38                                       ; $5959: $ff
    rst $38                                       ; $595a: $ff
    rst $38                                       ; $595b: $ff
    nop                                           ; $595c: $00
    rst $38                                       ; $595d: $ff
    rst $38                                       ; $595e: $ff
    rst $38                                       ; $595f: $ff
    rst $38                                       ; $5960: $ff
    rst $38                                       ; $5961: $ff
    rst $38                                       ; $5962: $ff
    rst $38                                       ; $5963: $ff
    rst $38                                       ; $5964: $ff
    rst $38                                       ; $5965: $ff
    rst $38                                       ; $5966: $ff
    rst $38                                       ; $5967: $ff
    rst $38                                       ; $5968: $ff
    rst $38                                       ; $5969: $ff
    rst $38                                       ; $596a: $ff
    rst $38                                       ; $596b: $ff
    rst $38                                       ; $596c: $ff
    nop                                           ; $596d: $00
    rst $38                                       ; $596e: $ff
    rst $38                                       ; $596f: $ff
    rst $38                                       ; $5970: $ff
    rst $38                                       ; $5971: $ff
    rst $38                                       ; $5972: $ff
    rst $38                                       ; $5973: $ff
    rst $38                                       ; $5974: $ff
    rst $38                                       ; $5975: $ff
    rst $38                                       ; $5976: $ff
    rst $38                                       ; $5977: $ff
    rst $38                                       ; $5978: $ff
    rst $38                                       ; $5979: $ff
    rst $38                                       ; $597a: $ff
    rst $38                                       ; $597b: $ff
    rst $38                                       ; $597c: $ff
    rst $38                                       ; $597d: $ff
    nop                                           ; $597e: $00
    rst $38                                       ; $597f: $ff
    rst $38                                       ; $5980: $ff
    rst $38                                       ; $5981: $ff
    rst $38                                       ; $5982: $ff
    rst $38                                       ; $5983: $ff
    rst $38                                       ; $5984: $ff
    rst $38                                       ; $5985: $ff
    rst $38                                       ; $5986: $ff
    rst $38                                       ; $5987: $ff
    rst $38                                       ; $5988: $ff
    rst $38                                       ; $5989: $ff
    rst $38                                       ; $598a: $ff
    rst $38                                       ; $598b: $ff
    rst $38                                       ; $598c: $ff
    rst $38                                       ; $598d: $ff
    rst $38                                       ; $598e: $ff
    nop                                           ; $598f: $00
    rst $38                                       ; $5990: $ff
    rst $38                                       ; $5991: $ff
    rst $38                                       ; $5992: $ff
    rst $38                                       ; $5993: $ff
    rst $38                                       ; $5994: $ff
    rst $38                                       ; $5995: $ff
    rst $38                                       ; $5996: $ff
    rst $38                                       ; $5997: $ff
    rst $38                                       ; $5998: $ff
    rst $38                                       ; $5999: $ff
    rst $38                                       ; $599a: $ff
    rst $38                                       ; $599b: $ff
    rst $38                                       ; $599c: $ff
    rst $38                                       ; $599d: $ff
    rst $38                                       ; $599e: $ff
    rst $38                                       ; $599f: $ff
    nop                                           ; $59a0: $00
    rst $38                                       ; $59a1: $ff
    rst $38                                       ; $59a2: $ff
    rst $38                                       ; $59a3: $ff
    rst $38                                       ; $59a4: $ff
    rst $38                                       ; $59a5: $ff
    rst $38                                       ; $59a6: $ff
    rst $38                                       ; $59a7: $ff
    rst $38                                       ; $59a8: $ff
    rst $38                                       ; $59a9: $ff
    rst $38                                       ; $59aa: $ff
    rst $38                                       ; $59ab: $ff
    rst $38                                       ; $59ac: $ff
    rst $38                                       ; $59ad: $ff
    rst $38                                       ; $59ae: $ff
    rst $38                                       ; $59af: $ff
    rst $38                                       ; $59b0: $ff
    nop                                           ; $59b1: $00
    rst $38                                       ; $59b2: $ff
    rst $38                                       ; $59b3: $ff
    rst $38                                       ; $59b4: $ff
    rst $38                                       ; $59b5: $ff
    rst $38                                       ; $59b6: $ff
    rst $38                                       ; $59b7: $ff
    rst $38                                       ; $59b8: $ff
    rst $38                                       ; $59b9: $ff
    rst $38                                       ; $59ba: $ff
    rst $38                                       ; $59bb: $ff
    rst $38                                       ; $59bc: $ff
    rst $38                                       ; $59bd: $ff
    rst $38                                       ; $59be: $ff
    rst $38                                       ; $59bf: $ff
    rst $38                                       ; $59c0: $ff
    rst $38                                       ; $59c1: $ff
    nop                                           ; $59c2: $00
    rst $38                                       ; $59c3: $ff
    rst $38                                       ; $59c4: $ff
    rst $38                                       ; $59c5: $ff
    rst $38                                       ; $59c6: $ff
    rst $38                                       ; $59c7: $ff
    rst $38                                       ; $59c8: $ff
    rst $38                                       ; $59c9: $ff
    rst $38                                       ; $59ca: $ff
    rst $38                                       ; $59cb: $ff
    rst $38                                       ; $59cc: $ff
    rst $38                                       ; $59cd: $ff
    rst $38                                       ; $59ce: $ff
    rst $38                                       ; $59cf: $ff
    rst $38                                       ; $59d0: $ff
    rst $38                                       ; $59d1: $ff
    rst $38                                       ; $59d2: $ff
    nop                                           ; $59d3: $00
    rst $38                                       ; $59d4: $ff
    rst $38                                       ; $59d5: $ff
    rst $38                                       ; $59d6: $ff
    rst $38                                       ; $59d7: $ff
    rst $38                                       ; $59d8: $ff
    rst $38                                       ; $59d9: $ff
    rst $38                                       ; $59da: $ff
    rst $38                                       ; $59db: $ff
    rst $38                                       ; $59dc: $ff
    rst $38                                       ; $59dd: $ff
    rst $38                                       ; $59de: $ff
    rst $38                                       ; $59df: $ff
    rst $38                                       ; $59e0: $ff
    rst $38                                       ; $59e1: $ff
    rst $38                                       ; $59e2: $ff
    rst $38                                       ; $59e3: $ff
    nop                                           ; $59e4: $00
    rst $38                                       ; $59e5: $ff
    rst $38                                       ; $59e6: $ff
    rst $38                                       ; $59e7: $ff
    rst $38                                       ; $59e8: $ff
    rst $38                                       ; $59e9: $ff
    rst $38                                       ; $59ea: $ff
    rst $38                                       ; $59eb: $ff
    rst $38                                       ; $59ec: $ff
    rst $38                                       ; $59ed: $ff
    rst $38                                       ; $59ee: $ff
    rst $38                                       ; $59ef: $ff
    rst $38                                       ; $59f0: $ff
    rst $38                                       ; $59f1: $ff
    rst $38                                       ; $59f2: $ff
    rst $38                                       ; $59f3: $ff
    rst $38                                       ; $59f4: $ff
    nop                                           ; $59f5: $00
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    rst $38                                       ; $59f8: $ff
    rst $38                                       ; $59f9: $ff
    rst $38                                       ; $59fa: $ff
    rst $38                                       ; $59fb: $ff
    rst $38                                       ; $59fc: $ff
    rst $38                                       ; $59fd: $ff
    rst $38                                       ; $59fe: $ff
    rst $38                                       ; $59ff: $ff
    rst $38                                       ; $5a00: $ff
    rst $38                                       ; $5a01: $ff
    rst $38                                       ; $5a02: $ff
    di                                            ; $5a03: $f3
    nop                                           ; $5a04: $00
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    ld sp, hl                                     ; $5a07: $f9
    nop                                           ; $5a08: $00
    rst $38                                       ; $5a09: $ff
    rst $38                                       ; $5a0a: $ff
    xor $ed                                       ; $5a0b: $ee $ed
    ld [hl], $30                                  ; $5a0d: $36 $30
    scf                                           ; $5a0f: $37
    ld h, $20                                     ; $5a10: $26 $20
    cpl                                           ; $5a12: $2f
    daa                                           ; $5a13: $27
    db $10                                        ; $5a14: $10
    ld d, $17                                     ; $5a15: $16 $17
    push de                                       ; $5a17: $d5
    rst $28                                       ; $5a18: $ef
    ld de, $e0ff                                  ; $5a19: $11 $ff $e0
    cp a                                          ; $5a1c: $bf
    rst $38                                       ; $5a1d: $ff
    nop                                           ; $5a1e: $00
    rst $38                                       ; $5a1f: $ff
    rst $38                                       ; $5a20: $ff
    rst $38                                       ; $5a21: $ff
    rst $38                                       ; $5a22: $ff
    rst $38                                       ; $5a23: $ff
    push hl                                       ; $5a24: $e5
    nop                                           ; $5a25: $00
    nop                                           ; $5a26: $00
    nop                                           ; $5a27: $00
    jr nc, jr_05d_5a84                            ; $5a28: $30 $5a

    ld h, b                                       ; $5a2a: $60
    ld e, d                                       ; $5a2b: $5a
    add hl, sp                                    ; $5a2c: $39
    ld e, l                                       ; $5a2d: $5d
    ld [de], a                                    ; $5a2e: $12
    ld e, a                                       ; $5a2f: $5f
    ld hl, sp+$03                                 ; $5a30: $f8 $03
    ld c, h                                       ; $5a32: $4c
    inc bc                                        ; $5a33: $03
    ld d, e                                       ; $5a34: $53
    ld bc, $008a                                  ; $5a35: $01 $8a $00
    ldh a, [$03]                                  ; $5a38: $f0 $03
    ld hl, sp+$03                                 ; $5a3a: $f8 $03
    ld c, h                                       ; $5a3c: $4c
    inc bc                                        ; $5a3d: $03
    ld d, e                                       ; $5a3e: $53
    ld bc, $47ff                                  ; $5a3f: $01 $ff $47
    ldh a, [rP1]                                  ; $5a42: $f0 $00
    ld e, l                                       ; $5a44: $5d
    add hl, de                                    ; $5a45: $19
    ld c, h                                       ; $5a46: $4c
    inc bc                                        ; $5a47: $03
    ld [$0825], sp                                ; $5a48: $08 $25 $08
    dec h                                         ; $5a4b: $25
    ld [$0825], sp                                ; $5a4c: $08 $25 $08
    dec h                                         ; $5a4f: $25
    ld [$0825], sp                                ; $5a50: $08 $25 $08
    dec h                                         ; $5a53: $25
    ld [$0825], sp                                ; $5a54: $08 $25 $08
    dec h                                         ; $5a57: $25
    ld [$0825], sp                                ; $5a58: $08 $25 $08
    dec h                                         ; $5a5b: $25
    ld [$0825], sp                                ; $5a5c: $08 $25 $08
    dec h                                         ; $5a5f: $25
    rst $38                                       ; $5a60: $ff
    dec bc                                        ; $5a61: $0b
    dec bc                                        ; $5a62: $0b
    inc l                                         ; $5a63: $2c
    ld l, h                                       ; $5a64: $6c
    inc c                                         ; $5a65: $0c
    inc c                                         ; $5a66: $0c
    ld l, h                                       ; $5a67: $6c
    ld l, h                                       ; $5a68: $6c
    rst $38                                       ; $5a69: $ff
    dec bc                                        ; $5a6a: $0b
    ld l, e                                       ; $5a6b: $6b
    dec bc                                        ; $5a6c: $0b
    dec bc                                        ; $5a6d: $0b
    dec bc                                        ; $5a6e: $0b
    ld c, e                                       ; $5a6f: $4b
    dec bc                                        ; $5a70: $0b
    dec bc                                        ; $5a71: $0b
    rst $38                                       ; $5a72: $ff
    dec hl                                        ; $5a73: $2b
    dec bc                                        ; $5a74: $0b
    ld a, [bc]                                    ; $5a75: $0a
    dec bc                                        ; $5a76: $0b
    inc c                                         ; $5a77: $0c
    ld c, h                                       ; $5a78: $4c
    ld c, h                                       ; $5a79: $4c
    ld c, h                                       ; $5a7a: $4c
    ld bc, $ff0c                                  ; $5a7b: $01 $0c $ff
    ldh [$fa], a                                  ; $5a7e: $e0 $fa
    ldh [$f7], a                                  ; $5a80: $e0 $f7
    pop hl                                        ; $5a82: $e1
    db $fc                                        ; $5a83: $fc

jr_05d_5a84:
    ld [c], a                                     ; $5a84: $e2
    cp $e0                                        ; $5a85: $fe $e0
    db $fd                                        ; $5a87: $fd
    pop hl                                        ; $5a88: $e1
    cp $ee                                        ; $5a89: $fe $ee
    ld l, l                                       ; $5a8b: $6d
    dec hl                                        ; $5a8c: $2b
    ret nz                                        ; $5a8d: $c0

    db $e3                                        ; $5a8e: $e3
    inc c                                         ; $5a8f: $0c
    ld l, e                                       ; $5a90: $6b
    ret nz                                        ; $5a91: $c0

    ldh [$2b], a                                  ; $5a92: $e0 $2b
    ld c, e                                       ; $5a94: $4b
    cp a                                          ; $5a95: $bf
    ld [c], a                                     ; $5a96: $e2
    ld bc, $d90b                                  ; $5a97: $01 $0b $d9
    ld [c], a                                     ; $5a9a: $e2
    call nz, $b7e2                                ; $5a9b: $c4 $e2 $b7
    ld [c], a                                     ; $5a9e: $e2
    or d                                          ; $5a9f: $b2
    ldh [$fa], a                                  ; $5aa0: $e0 $fa
    db $e3                                        ; $5aa2: $e3
    pop bc                                        ; $5aa3: $c1
    ldh a, [$c0]                                  ; $5aa4: $f0 $c0
    ldh [rSCX], a                                 ; $5aa6: $e0 $43
    dec bc                                        ; $5aa8: $0b
    inc l                                         ; $5aa9: $2c
    add b                                         ; $5aaa: $80
    ldh [$81], a                                  ; $5aab: $e0 $81
    ld [c], a                                     ; $5aad: $e2
    cp [hl]                                       ; $5aae: $be
    pop hl                                        ; $5aaf: $e1
    ld a, d                                       ; $5ab0: $7a
    ldh [$0a], a                                  ; $5ab1: $e0 $0a
    sbc c                                         ; $5ab3: $99
    db $e3                                        ; $5ab4: $e3
    ldh a, [$92]                                  ; $5ab5: $f0 $92
    db $e3                                        ; $5ab7: $e3
    set 6, d                                      ; $5ab8: $cb $f2
    ld a, b                                       ; $5aba: $78
    add sp, $4f                                   ; $5abb: $e8 $4f
    ldh [$2c], a                                  ; $5abd: $e0 $2c
    inc l                                         ; $5abf: $2c
    ld c, h                                       ; $5ac0: $4c
    inc c                                         ; $5ac1: $0c
    nop                                           ; $5ac2: $00
    ld b, l                                       ; $5ac3: $45
    pop hl                                        ; $5ac4: $e1
    cp [hl]                                       ; $5ac5: $be
    pop hl                                        ; $5ac6: $e1
    cp c                                          ; $5ac7: $b9
    ld [c], a                                     ; $5ac8: $e2
    ld e, c                                       ; $5ac9: $59
    add sp, $38                                   ; $5aca: $e8 $38
    pop hl                                        ; $5acc: $e1
    inc [hl]                                      ; $5acd: $34
    db $e3                                        ; $5ace: $e3
    or e                                          ; $5acf: $b3
    db $f4                                        ; $5ad0: $f4
    ld d, b                                       ; $5ad1: $50
    pop hl                                        ; $5ad2: $e1
    nop                                           ; $5ad3: $00
    ret                                           ; $5ad4: $c9


    ldh [$81], a                                  ; $5ad5: $e0 $81
    db $e3                                        ; $5ad7: $e3
    ei                                            ; $5ad8: $fb
    db $e4                                        ; $5ad9: $e4
    nop                                           ; $5ada: $00
    ld [c], a                                     ; $5adb: $e2
    db $fd                                        ; $5adc: $fd
    push hl                                       ; $5add: $e5
    ei                                            ; $5ade: $fb
    ld [$c2ff], a                                 ; $5adf: $ea $ff $c2
    ld d, b                                       ; $5ae2: $50
    ldh [rP1], a                                  ; $5ae3: $e0 $00
    ld sp, hl                                     ; $5ae5: $f9
    rst $20                                       ; $5ae6: $e7
    adc d                                         ; $5ae7: $8a
    db $e3                                        ; $5ae8: $e3
    pop bc                                        ; $5ae9: $c1
    add sp, -$44                                  ; $5aea: $e8 $bc
    ret nz                                        ; $5aec: $c0

    call nc, $c6c2                                ; $5aed: $d4 $c2 $c6
    push hl                                       ; $5af0: $e5
    ret nz                                        ; $5af1: $c0

    push bc                                       ; $5af2: $c5
    or d                                          ; $5af3: $b2
    jp nz, Jump_05d_4004                          ; $5af4: $c2 $04 $40

    ldh a, [$82]                                  ; $5af7: $f0 $82
    ld [c], a                                     ; $5af9: $e2
    ld c, e                                       ; $5afa: $4b
    rst $38                                       ; $5afb: $ff
    ldh [$c0], a                                  ; $5afc: $e0 $c0
    push hl                                       ; $5afe: $e5
    add b                                         ; $5aff: $80
    pop bc                                        ; $5b00: $c1
    ret nz                                        ; $5b01: $c0

    db $ec                                        ; $5b02: $ec
    cp [hl]                                       ; $5b03: $be
    rst $20                                       ; $5b04: $e7
    ld l, h                                       ; $5b05: $6c
    ret nz                                        ; $5b06: $c0

    di                                            ; $5b07: $f3
    pop bc                                        ; $5b08: $c1
    pop hl                                        ; $5b09: $e1
    ld c, e                                       ; $5b0a: $4b
    ld c, e                                       ; $5b0b: $4b
    inc a                                         ; $5b0c: $3c
    db $e4                                        ; $5b0d: $e4
    ld c, e                                       ; $5b0e: $4b
    dec hl                                        ; $5b0f: $2b
    ld d, a                                       ; $5b10: $57
    ret                                           ; $5b11: $c9


    ld h, b                                       ; $5b12: $60
    ret nz                                        ; $5b13: $c0

    db $dd                                        ; $5b14: $dd
    ld a, [de]                                    ; $5b15: $1a
    ret nz                                        ; $5b16: $c0

    ld c, b                                       ; $5b17: $48
    pop bc                                        ; $5b18: $c1
    ld a, a                                       ; $5b19: $7f
    db $e3                                        ; $5b1a: $e3
    or $a0                                        ; $5b1b: $f6 $a0
    ld c, h                                       ; $5b1d: $4c
    dec hl                                        ; $5b1e: $2b
    ret nz                                        ; $5b1f: $c0

    pop hl                                        ; $5b20: $e1
    ldh a, [rHDMA4]                               ; $5b21: $f0 $54
    ld [c], a                                     ; $5b23: $e2
    ld c, $c5                                     ; $5b24: $0e $c5
    ret nz                                        ; $5b26: $c0

    call nz, $b4ff                                ; $5b27: $c4 $ff $b4
    inc c                                         ; $5b2a: $0c
    inc l                                         ; $5b2b: $2c
    dec bc                                        ; $5b2c: $0b
    dec hl                                        ; $5b2d: $2b
    inc a                                         ; $5b2e: $3c
    cp a                                          ; $5b2f: $bf
    ld [c], a                                     ; $5b30: $e2
    add a                                         ; $5b31: $87
    jp $2b2c                                      ; $5b32: $c3 $2c $2b


    dec bc                                        ; $5b35: $0b
    ld c, e                                       ; $5b36: $4b
    nop                                           ; $5b37: $00
    db $e4                                        ; $5b38: $e4
    ret nz                                        ; $5b39: $c0

    call z, Call_000_37ea                         ; $5b3a: $cc $ea $37
    push de                                       ; $5b3d: $d5
    inc l                                         ; $5b3e: $2c
    ld a, a                                       ; $5b3f: $7f
    ldh [$2b], a                                  ; $5b40: $e0 $2b
    ld b, e                                       ; $5b42: $43
    ld [c], a                                     ; $5b43: $e2
    ld l, h                                       ; $5b44: $6c
    inc c                                         ; $5b45: $0c
    inc l                                         ; $5b46: $2c
    nop                                           ; $5b47: $00
    inc [hl]                                      ; $5b48: $34
    ret nz                                        ; $5b49: $c0

    ret nz                                        ; $5b4a: $c0

    push hl                                       ; $5b4b: $e5
    adc [hl]                                      ; $5b4c: $8e
    and e                                         ; $5b4d: $a3
    halt                                          ; $5b4e: $76
    db $e3                                        ; $5b4f: $e3
    or [hl]                                       ; $5b50: $b6
    and e                                         ; $5b51: $a3
    ld l, d                                       ; $5b52: $6a
    and e                                         ; $5b53: $a3
    add c                                         ; $5b54: $81
    jp nz, $c47c                                  ; $5b55: $c2 $7c $c4

    ld [bc], a                                    ; $5b58: $02
    ld [hl], c                                    ; $5b59: $71
    jp nz, $0d2c                                  ; $5b5a: $c2 $2c $0d

    ldh [$3a], a                                  ; $5b5d: $e0 $3a
    jp nz, $e1f4                                  ; $5b5f: $c2 $f4 $e1

    ld a, [c]                                     ; $5b62: $f2
    ldh [$80], a                                  ; $5b63: $e0 $80
    jp nz, $c77f                                  ; $5b65: $c2 $7f $c7

    jr nc, jr_05d_5be6                            ; $5b68: $30 $7c

    add $ac                                       ; $5b6a: $c6 $ac
    and e                                         ; $5b6c: $a3
    dec sp                                        ; $5b6d: $3b
    xor a                                         ; $5b6e: $af
    or h                                          ; $5b6f: $b4
    rst $20                                       ; $5b70: $e7
    ld l, h                                       ; $5b71: $6c
    ld l, h                                       ; $5b72: $6c
    rla                                           ; $5b73: $17
    and b                                         ; $5b74: $a0
    ld b, b                                       ; $5b75: $40
    and e                                         ; $5b76: $a3
    nop                                           ; $5b77: $00
    add b                                         ; $5b78: $80
    db $e4                                        ; $5b79: $e4
    ld a, [bc]                                    ; $5b7a: $0a
    xor b                                         ; $5b7b: $a8
    ld [hl], $a6                                  ; $5b7c: $36 $a6
    ret nz                                        ; $5b7e: $c0

    ld hl, sp-$29                                 ; $5b7f: $f8 $d7
    add c                                         ; $5b81: $81
    ret nz                                        ; $5b82: $c0

    and l                                         ; $5b83: $a5
    inc c                                         ; $5b84: $0c
    ret z                                         ; $5b85: $c8

    ld b, h                                       ; $5b86: $44
    res 0, b                                      ; $5b87: $cb $80
    db $10                                        ; $5b89: $10
    and b                                         ; $5b8a: $a0
    ld e, b                                       ; $5b8b: $58
    pop hl                                        ; $5b8c: $e1
    cpl                                           ; $5b8d: $2f
    or l                                          ; $5b8e: $b5
    add b                                         ; $5b8f: $80
    and d                                         ; $5b90: $a2
    jp nc, Jump_000_09a6                          ; $5b91: $d2 $a6 $09

    add $00                                       ; $5b94: $c6 $00
    and $4c                                       ; $5b96: $e6 $4c
    nop                                           ; $5b98: $00
    ret nz                                        ; $5b99: $c0

    db $fd                                        ; $5b9a: $fd
    ld b, b                                       ; $5b9b: $40
    jp nz, $85c2                                  ; $5b9c: $c2 $c2 $85

    push bc                                       ; $5b9f: $c5
    rst $00                                       ; $5ba0: $c7
    dec sp                                        ; $5ba1: $3b
    xor b                                         ; $5ba2: $a8
    add c                                         ; $5ba3: $81
    add sp, $1c                                   ; $5ba4: $e8 $1c
    and a                                         ; $5ba6: $a7
    inc d                                         ; $5ba7: $14
    and a                                         ; $5ba8: $a7
    nop                                           ; $5ba9: $00
    ld bc, $fac4                                  ; $5baa: $01 $c4 $fa
    and l                                         ; $5bad: $a5
    ld b, h                                       ; $5bae: $44
    and h                                         ; $5baf: $a4
    halt                                          ; $5bb0: $76
    add $c0                                       ; $5bb1: $c6 $c0
    db $ec                                        ; $5bb3: $ec
    sbc e                                         ; $5bb4: $9b
    add $59                                       ; $5bb5: $c6 $59
    and h                                         ; $5bb7: $a4
    ld a, [bc]                                    ; $5bb8: $0a
    adc c                                         ; $5bb9: $89
    nop                                           ; $5bba: $00
    add c                                         ; $5bbb: $81
    add l                                         ; $5bbc: $85
    xor d                                         ; $5bbd: $aa
    db $e4                                        ; $5bbe: $e4
    halt                                          ; $5bbf: $76
    ret z                                         ; $5bc0: $c8

    ld a, [hl]                                    ; $5bc1: $7e
    xor d                                         ; $5bc2: $aa
    rst $30                                       ; $5bc3: $f7
    ld a, [c]                                     ; $5bc4: $f2
    add l                                         ; $5bc5: $85
    add e                                         ; $5bc6: $83
    sub e                                         ; $5bc7: $93
    add d                                         ; $5bc8: $82
    or [hl]                                       ; $5bc9: $b6
    add sp, $00                                   ; $5bca: $e8 $00
    ld c, $c3                                     ; $5bcc: $0e $c3
    pop bc                                        ; $5bce: $c1
    pop bc                                        ; $5bcf: $c1
    db $fd                                        ; $5bd0: $fd
    and a                                         ; $5bd1: $a7
    ld d, e                                       ; $5bd2: $53
    xor e                                         ; $5bd3: $ab
    rst $00                                       ; $5bd4: $c7
    add $c5                                       ; $5bd5: $c6 $c5
    rst $00                                       ; $5bd7: $c7
    scf                                           ; $5bd8: $37
    rst $00                                       ; $5bd9: $c7
    dec [hl]                                      ; $5bda: $35
    ld h, d                                       ; $5bdb: $62
    db $10                                        ; $5bdc: $10
    ret nz                                        ; $5bdd: $c0

    xor $53                                       ; $5bde: $ee $53
    xor d                                         ; $5be0: $aa
    dec b                                         ; $5be1: $05
    push hl                                       ; $5be2: $e5
    ld a, [hl-]                                   ; $5be3: $3a
    add e                                         ; $5be4: $83
    inc l                                         ; $5be5: $2c

jr_05d_5be6:
    adc d                                         ; $5be6: $8a
    add e                                         ; $5be7: $83
    ld b, h                                       ; $5be8: $44
    db $ec                                        ; $5be9: $ec
    ld b, b                                       ; $5bea: $40
    ret                                           ; $5beb: $c9


    nop                                           ; $5bec: $00
    push hl                                       ; $5bed: $e5
    push bc                                       ; $5bee: $c5
    ld d, e                                       ; $5bef: $53
    and [hl]                                      ; $5bf0: $a6
    dec b                                         ; $5bf1: $05
    ld l, b                                       ; $5bf2: $68
    db $d3                                        ; $5bf3: $d3
    ld h, h                                       ; $5bf4: $64
    or a                                          ; $5bf5: $b7
    ld l, b                                       ; $5bf6: $68
    dec sp                                        ; $5bf7: $3b
    add e                                         ; $5bf8: $83
    ret nz                                        ; $5bf9: $c0

    db $ec                                        ; $5bfa: $ec
    ld d, e                                       ; $5bfb: $53
    xor d                                         ; $5bfc: $aa
    nop                                           ; $5bfd: $00
    ld c, d                                       ; $5bfe: $4a
    and l                                         ; $5bff: $a5
    adc d                                         ; $5c00: $8a
    add [hl]                                      ; $5c01: $86
    add e                                         ; $5c02: $83
    db $ed                                        ; $5c03: $ed
    ld a, c                                       ; $5c04: $79
    ld c, l                                       ; $5c05: $4d
    and c                                         ; $5c06: $a1
    add l                                         ; $5c07: $85
    ld e, b                                       ; $5c08: $58
    ld b, a                                       ; $5c09: $47
    add $84                                       ; $5c0a: $c6 $84
    inc a                                         ; $5c0c: $3c
    and [hl]                                      ; $5c0d: $a6
    nop                                           ; $5c0e: $00
    add e                                         ; $5c0f: $83
    add sp, -$01                                  ; $5c10: $e8 $ff
    xor [hl]                                      ; $5c12: $ae
    add d                                         ; $5c13: $82
    ld b, b                                       ; $5c14: $40
    ld d, e                                       ; $5c15: $53
    xor e                                         ; $5c16: $ab
    inc b                                         ; $5c17: $04
    and a                                         ; $5c18: $a7
    add l                                         ; $5c19: $85
    adc d                                         ; $5c1a: $8a
    ld [hl], l                                    ; $5c1b: $75
    adc b                                         ; $5c1c: $88
    ld b, b                                       ; $5c1d: $40
    xor [hl]                                      ; $5c1e: $ae
    nop                                           ; $5c1f: $00
    ld d, e                                       ; $5c20: $53
    xor c                                         ; $5c21: $a9
    rrca                                          ; $5c22: $0f
    and a                                         ; $5c23: $a7
    cp $ea                                        ; $5c24: $fe $ea
    db $fc                                        ; $5c26: $fc
    and l                                         ; $5c27: $a5
    xor d                                         ; $5c28: $aa
    ld [hl+], a                                   ; $5c29: $22
    inc bc                                        ; $5c2a: $03
    xor c                                         ; $5c2b: $a9
    sbc a                                         ; $5c2c: $9f
    pop bc                                        ; $5c2d: $c1
    ld d, e                                       ; $5c2e: $53
    xor c                                         ; $5c2f: $a9
    nop                                           ; $5c30: $00
    ret nz                                        ; $5c31: $c0

    add $25                                       ; $5c32: $c6 $25
    add $7d                                       ; $5c34: $c6 $7d
    adc d                                         ; $5c36: $8a
    dec c                                         ; $5c37: $0d
    add h                                         ; $5c38: $84
    ld b, d                                       ; $5c39: $42
    adc d                                         ; $5c3a: $8a
    ld b, l                                       ; $5c3b: $45
    jp z, $c77b                                   ; $5c3c: $ca $7b $c7

    ld a, e                                       ; $5c3f: $7b
    dec h                                         ; $5c40: $25
    nop                                           ; $5c41: $00
    ld a, l                                       ; $5c42: $7d
    adc d                                         ; $5c43: $8a
    rst $38                                       ; $5c44: $ff
    and e                                         ; $5c45: $a3
    ld [bc], a                                    ; $5c46: $02
    adc e                                         ; $5c47: $8b
    dec c                                         ; $5c48: $0d
    and [hl]                                      ; $5c49: $a6
    jr @+$2a                                      ; $5c4a: $18 $28

    ei                                            ; $5c4c: $fb
    and [hl]                                      ; $5c4d: $a6
    ld c, e                                       ; $5c4e: $4b
    xor d                                         ; $5c4f: $aa
    inc a                                         ; $5c50: $3c
    inc h                                         ; $5c51: $24
    nop                                           ; $5c52: $00
    ld b, h                                       ; $5c53: $44
    adc l                                         ; $5c54: $8d
    call z, $e685                                 ; $5c55: $cc $85 $e6
    inc hl                                        ; $5c58: $23
    ld c, d                                       ; $5c59: $4a
    xor c                                         ; $5c5a: $a9
    add h                                         ; $5c5b: $84
    srl d                                         ; $5c5c: $cb $3a
    ld l, b                                       ; $5c5e: $68
    nop                                           ; $5c5f: $00
    db $ed                                        ; $5c60: $ed
    rra                                           ; $5c61: $1f
    jp z, $0600                                   ; $5c62: $ca $00 $06

    add a                                         ; $5c65: $87
    ld c, h                                       ; $5c66: $4c
    and [hl]                                      ; $5c67: $a6
    cp d                                          ; $5c68: $ba
    ld l, d                                       ; $5c69: $6a
    ld b, b                                       ; $5c6a: $40
    db $ec                                        ; $5c6b: $ec
    inc l                                         ; $5c6c: $2c
    ld d, b                                       ; $5c6d: $50
    ld c, a                                       ; $5c6e: $4f
    and $38                                       ; $5c6f: $e6 $38
    add hl, hl                                    ; $5c71: $29
    add h                                         ; $5c72: $84
    add $00                                       ; $5c73: $c6 $00
    jp $bf80                                      ; $5c75: $c3 $80 $bf


    ld c, b                                       ; $5c78: $48
    ld e, a                                       ; $5c79: $5f
    adc [hl]                                      ; $5c7a: $8e
    call nz, $fbe6                                ; $5c7b: $c4 $e6 $fb
    rlca                                          ; $5c7e: $07
    xor l                                         ; $5c7f: $ad
    ld b, h                                       ; $5c80: $44

jr_05d_5c81:
    add e                                         ; $5c81: $83
    ld h, b                                       ; $5c82: $60
    ret nz                                        ; $5c83: $c0

    ld [c], a                                     ; $5c84: $e2
    nop                                           ; $5c85: $00
    ld b, c                                       ; $5c86: $41
    ld l, b                                       ; $5c87: $68
    ld e, a                                       ; $5c88: $5f
    sub b                                         ; $5c89: $90
    ld b, a                                       ; $5c8a: $47
    ld b, l                                       ; $5c8b: $45
    ld c, c                                       ; $5c8c: $49
    ld l, b                                       ; $5c8d: $68
    or b                                          ; $5c8e: $b0
    add a                                         ; $5c8f: $87
    jp nz, Jump_000_0201                          ; $5c90: $c2 $01 $02

    ld l, l                                       ; $5c93: $6d
    ld e, a                                       ; $5c94: $5f
    adc l                                         ; $5c95: $8d
    nop                                           ; $5c96: $00
    and a                                         ; $5c97: $a7
    ld l, c                                       ; $5c98: $69
    db $fc                                        ; $5c99: $fc
    add hl, bc                                    ; $5c9a: $09
    cp $25                                        ; $5c9b: $fe $25
    jp nz, Jump_05d_5f49                          ; $5c9d: $c2 $49 $5f

    sub b                                         ; $5ca0: $90
    sbc h                                         ; $5ca1: $9c
    rst $00                                       ; $5ca2: $c7
    ld a, [bc]                                    ; $5ca3: $0a
    ld b, [hl]                                    ; $5ca4: $46
    ld e, b                                       ; $5ca5: $58
    xor e                                         ; $5ca6: $ab
    nop                                           ; $5ca7: $00
    ld [bc], a                                    ; $5ca8: $02
    ld c, [hl]                                    ; $5ca9: $4e
    ld e, a                                       ; $5caa: $5f
    adc [hl]                                      ; $5cab: $8e
    ld h, c                                       ; $5cac: $61
    ld l, l                                       ; $5cad: $6d
    ld [hl], h                                    ; $5cae: $74
    ld c, d                                       ; $5caf: $4a
    ld b, d                                       ; $5cb0: $42
    ld c, e                                       ; $5cb1: $4b
    cp a                                          ; $5cb2: $bf
    or $c0                                        ; $5cb3: $f6 $c0
    srl a                                         ; $5cb5: $cb $3f
    add sp, $00                                   ; $5cb7: $e8 $00
    ld [bc], a                                    ; $5cb9: $02
    ld e, b                                       ; $5cba: $58
    jp hl                                         ; $5cbb: $e9


    ld c, e                                       ; $5cbc: $4b
    add [hl]                                      ; $5cbd: $86
    ld c, l                                       ; $5cbe: $4d
    cp d                                          ; $5cbf: $ba
    jr jr_05d_5c81                                ; $5cc0: $18 $bf

    di                                            ; $5cc2: $f3
    add [hl]                                      ; $5cc3: $86
    ld c, l                                       ; $5cc4: $4d
    ld b, c                                       ; $5cc5: $41
    ld sp, $1668                                  ; $5cc6: $31 $68 $16
    nop                                           ; $5cc9: $00
    daa                                           ; $5cca: $27
    ret nc                                        ; $5ccb: $d0

    ld a, a                                       ; $5ccc: $7f
    rst $38                                       ; $5ccd: $ff
    ld h, $4e                                     ; $5cce: $26 $4e
    daa                                           ; $5cd0: $27
    bit 7, a                                      ; $5cd1: $cb $7f
    rst $38                                       ; $5cd3: $ff
    daa                                           ; $5cd4: $27
    jp c, $ff80                                   ; $5cd5: $da $80 $ff

    ld l, b                                       ; $5cd8: $68
    call c, $8000                                 ; $5cd9: $dc $00 $80
    rst $38                                       ; $5cdc: $ff
    ld h, a                                       ; $5cdd: $67
    xor a                                         ; $5cde: $af
    pop bc                                        ; $5cdf: $c1
    dec h                                         ; $5ce0: $25
    ld a, a                                       ; $5ce1: $7f
    and a                                         ; $5ce2: $a7
    rst $38                                       ; $5ce3: $ff
    rst $38                                       ; $5ce4: $ff
    jp nc, $c067                                  ; $5ce5: $d2 $67 $c0

    db $eb                                        ; $5ce8: $eb
    rst $38                                       ; $5ce9: $ff
    rst $38                                       ; $5cea: $ff
    nop                                           ; $5ceb: $00
    ld [hl], e                                    ; $5cec: $73
    call nc, $bfcd                                ; $5ced: $d4 $cd $bf
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    rst $38                                       ; $5cf2: $ff
    rst $38                                       ; $5cf3: $ff
    sub [hl]                                      ; $5cf4: $96
    rst $38                                       ; $5cf5: $ff
    reti                                          ; $5cf6: $d9


    or e                                          ; $5cf7: $b3
    rst $38                                       ; $5cf8: $ff
    rst $38                                       ; $5cf9: $ff
    rst $38                                       ; $5cfa: $ff
    rst $38                                       ; $5cfb: $ff
    nop                                           ; $5cfc: $00
    rst $38                                       ; $5cfd: $ff
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    rst $38                                       ; $5d00: $ff
    scf                                           ; $5d01: $37
    db $eb                                        ; $5d02: $eb
    call c, $ffff                                 ; $5d03: $dc $ff $ff
    rst $38                                       ; $5d06: $ff
    rst $38                                       ; $5d07: $ff
    rst $38                                       ; $5d08: $ff
    rst $38                                       ; $5d09: $ff
    rst $38                                       ; $5d0a: $ff
    rst $38                                       ; $5d0b: $ff
    rst $38                                       ; $5d0c: $ff
    nop                                           ; $5d0d: $00
    rst $38                                       ; $5d0e: $ff
    rst $38                                       ; $5d0f: $ff
    rst $38                                       ; $5d10: $ff
    rst $38                                       ; $5d11: $ff
    rst $38                                       ; $5d12: $ff
    rst $38                                       ; $5d13: $ff
    rst $38                                       ; $5d14: $ff
    rst $38                                       ; $5d15: $ff
    rst $38                                       ; $5d16: $ff
    rst $38                                       ; $5d17: $ff
    rst $38                                       ; $5d18: $ff
    rst $38                                       ; $5d19: $ff
    rst $38                                       ; $5d1a: $ff
    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    rst $38                                       ; $5d1d: $ff
    nop                                           ; $5d1e: $00
    rst $38                                       ; $5d1f: $ff
    rst $38                                       ; $5d20: $ff
    rst $38                                       ; $5d21: $ff
    rst $38                                       ; $5d22: $ff
    rst $38                                       ; $5d23: $ff
    rst $38                                       ; $5d24: $ff
    rst $38                                       ; $5d25: $ff
    rst $38                                       ; $5d26: $ff
    rst $38                                       ; $5d27: $ff
    rst $38                                       ; $5d28: $ff
    nop                                           ; $5d29: $00
    cp a                                          ; $5d2a: $bf
    rst $38                                       ; $5d2b: $ff
    rst $38                                       ; $5d2c: $ff
    rst $38                                       ; $5d2d: $ff
    rst $38                                       ; $5d2e: $ff
    nop                                           ; $5d2f: $00
    rst $38                                       ; $5d30: $ff
    rst $38                                       ; $5d31: $ff
    rst $38                                       ; $5d32: $ff
    rst $38                                       ; $5d33: $ff
    reti                                          ; $5d34: $d9


    inc sp                                        ; $5d35: $33
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    rst $38                                       ; $5d39: $ff
    ld sp, $0831                                  ; $5d3a: $31 $31 $08
    jr nz, @+$22                                  ; $5d3d: $20 $20

    jr nz, jr_05d_5d69                            ; $5d3f: $20 $28

    rla                                           ; $5d41: $17
    rst $38                                       ; $5d42: $ff
    ld sp, $5647                                  ; $5d43: $31 $47 $56
    ld d, [hl]                                    ; $5d46: $56
    ld d, a                                       ; $5d47: $57
    ld b, a                                       ; $5d48: $47
    ld sp, $9f31                                  ; $5d49: $31 $31 $9f
    ld h, b                                       ; $5d4c: $60
    ld e, e                                       ; $5d4d: $5b
    ld e, d                                       ; $5d4e: $5a
    ld e, e                                       ; $5d4f: $5b
    nop                                           ; $5d50: $00
    rst $38                                       ; $5d51: $ff
    rst $38                                       ; $5d52: $ff
    rst $20                                       ; $5d53: $e7
    and $5e                                       ; $5d54: $e6 $5e
    ei                                            ; $5d56: $fb
    ld sp, $c00d                                  ; $5d57: $31 $0d $c0
    ldh [rNR21], a                                ; $5d5a: $e0 $16
    dec d                                         ; $5d5c: $15
    scf                                           ; $5d5d: $37
    ld [hl], $30                                  ; $5d5e: $36 $30
    adc a                                         ; $5d60: $8f
    jr nc, jr_05d_5d93                            ; $5d61: $30 $30

    ld [hl], $3c                                  ; $5d63: $36 $3c
    cp a                                          ; $5d65: $bf
    pop hl                                        ; $5d66: $e1
    ret nz                                        ; $5d67: $c0

    rst $38                                       ; $5d68: $ff

jr_05d_5d69:
    jp hl                                         ; $5d69: $e9


    add sp, $5f                                   ; $5d6a: $e8 $5f
    rst $38                                       ; $5d6c: $ff
    ld sp, $1831                                  ; $5d6d: $31 $31 $18
    jr nz, jr_05d_5d92                            ; $5d70: $20 $20

    rla                                           ; $5d72: $17
    ld sp, $fd39                                  ; $5d73: $31 $39 $fd
    ld l, l                                       ; $5d76: $6d
    ret nz                                        ; $5d77: $c0

    ldh [$30], a                                  ; $5d78: $e0 $30
    ld b, d                                       ; $5d7a: $42
    inc a                                         ; $5d7b: $3c
    ld sp, $5b61                                  ; $5d7c: $31 $61 $5b
    ld sp, hl                                     ; $5d7f: $f9
    ld e, d                                       ; $5d80: $5a
    jp z, $e8ff                                   ; $5d81: $ca $ff $e8

    rst $20                                       ; $5d84: $e7
    ld e, e                                       ; $5d85: $5b
    ld e, [hl]                                    ; $5d86: $5e
    ld sp, $0a1e                                  ; $5d87: $31 $1e $0a
    cp a                                          ; $5d8a: $bf
    dec b                                         ; $5d8b: $05
    dec d                                         ; $5d8c: $15
    ld sp, $6d52                                  ; $5d8d: $31 $52 $6d
    ld l, l                                       ; $5d90: $6d
    cp [hl]                                       ; $5d91: $be

jr_05d_5d92:
    pop hl                                        ; $5d92: $e1

jr_05d_5d93:
    ld d, d                                       ; $5d93: $52
    ldh a, [$c0]                                  ; $5d94: $f0 $c0
    ldh [$80], a                                  ; $5d96: $e0 $80
    rst $38                                       ; $5d98: $ff
    ret nz                                        ; $5d99: $c0

    jp hl                                         ; $5d9a: $e9


    ld a, a                                       ; $5d9b: $7f
    ldh [$31], a                                  ; $5d9c: $e0 $31
    ld sp, $4647                                  ; $5d9e: $31 $47 $46
    add hl, sp                                    ; $5da1: $39
    ld b, d                                       ; $5da2: $42
    ret nz                                        ; $5da3: $c0

    ldh [$7d], a                                  ; $5da4: $e0 $7d
    ldh [$39], a                                  ; $5da6: $e0 $39
    ld sp, $c05f                                  ; $5da8: $31 $5f $c0
    rst $38                                       ; $5dab: $ff
    add b                                         ; $5dac: $80
    ld [$6065], a                                 ; $5dad: $ea $65 $60
    ret nz                                        ; $5db0: $c0

    ldh [$3c], a                                  ; $5db1: $e0 $3c
    inc bc                                        ; $5db3: $03
    pop hl                                        ; $5db4: $e1
    cp a                                          ; $5db5: $bf
    pop hl                                        ; $5db6: $e1
    ld c, b                                       ; $5db7: $48
    ld c, c                                       ; $5db8: $49
    ret nz                                        ; $5db9: $c0

    rst $38                                       ; $5dba: $ff
    ld a, [de]                                    ; $5dbb: $1a
    db $ec                                        ; $5dbc: $ec
    db $eb                                        ; $5dbd: $eb
    ld h, d                                       ; $5dbe: $62
    add c                                         ; $5dbf: $81
    ldh [rOBP1], a                                ; $5dc0: $e0 $49
    ld c, b                                       ; $5dc2: $48
    inc b                                         ; $5dc3: $04
    pop hl                                        ; $5dc4: $e1
    cp a                                          ; $5dc5: $bf
    ldh [$c0], a                                  ; $5dc6: $e0 $c0
    pop bc                                        ; $5dc8: $c1
    or c                                          ; $5dc9: $b1
    ld e, [hl]                                    ; $5dca: $5e
    add b                                         ; $5dcb: $80
    rst $18                                       ; $5dcc: $df
    ld [$42e9], a                                 ; $5dcd: $ea $e9 $42
    pop hl                                        ; $5dd0: $e1
    add hl, sp                                    ; $5dd1: $39
    ld h, l                                       ; $5dd2: $65
    rst $38                                       ; $5dd3: $ff
    ld [c], a                                     ; $5dd4: $e2
    ld b, d                                       ; $5dd5: $42
    push bc                                       ; $5dd6: $c5
    ld b, [hl]                                    ; $5dd7: $46
    ld b, b                                       ; $5dd8: $40
    ret nz                                        ; $5dd9: $c0

    ld sp, $e07f                                  ; $5dda: $31 $7f $e0
    jp z, $e8ff                                   ; $5ddd: $ca $ff $e8

    rst $20                                       ; $5de0: $e7
    inc d                                         ; $5de1: $14
    inc d                                         ; $5de2: $14
    ld e, l                                       ; $5de3: $5d
    dec d                                         ; $5de4: $15
    ret nz                                        ; $5de5: $c0

    push hl                                       ; $5de6: $e5
    add hl, sp                                    ; $5de7: $39
    ld sp, $f215                                  ; $5de8: $31 $15 $f2
    pop hl                                        ; $5deb: $e1
    ld e, [hl]                                    ; $5dec: $5e
    ret nz                                        ; $5ded: $c0

    rst $38                                       ; $5dee: $ff
    ld l, $e9                                     ; $5def: $2e $e9
    add sp, $24                                   ; $5df1: $e8 $24
    inc h                                         ; $5df3: $24
    rla                                           ; $5df4: $17
    ld b, b                                       ; $5df5: $40
    ldh [rBCPS], a                                ; $5df6: $e0 $68
    rst $38                                       ; $5df8: $ff
    ldh [rDIV], a                                 ; $5df9: $e0 $04
    ldh [rNR31], a                                ; $5dfb: $e0 $1b
    rla                                           ; $5dfd: $17
    jr z, @-$0c                                   ; $5dfe: $28 $f2

    ldh [$31], a                                  ; $5e00: $e0 $31
    ld e, a                                       ; $5e02: $5f
    jp z, $e8ff                                   ; $5e03: $ca $ff $e8

    rst $20                                       ; $5e06: $e7
    call nz, Call_000_2ca1                        ; $5e07: $c4 $a1 $2c
    ret nz                                        ; $5e0a: $c0

    jp nz, $a0c4                                  ; $5e0b: $c2 $c4 $a0

    dec d                                         ; $5e0e: $15
    ld d, $f2                                     ; $5e0f: $16 $f2
    ld [c], a                                     ; $5e11: $e2
    ld e, [hl]                                    ; $5e12: $5e

jr_05d_5e13:
    jp z, $c0ff                                   ; $5e13: $ca $ff $c0

    jp hl                                         ; $5e16: $e9


    jr jr_05d_5e5d                                ; $5e17: $18 $44

    and b                                         ; $5e19: $a0
    ld b, b                                       ; $5e1a: $40
    ret nz                                        ; $5e1b: $c0

    inc b                                         ; $5e1c: $04
    pop hl                                        ; $5e1d: $e1
    rla                                           ; $5e1e: $17
    jr z, jr_05d_5e13                             ; $5e1f: $28 $f2

    db $e3                                        ; $5e21: $e3
    jp z, $80ff                                   ; $5e22: $ca $ff $80

    jp hl                                         ; $5e25: $e9


    rst $20                                       ; $5e26: $e7
    jr nz, jr_05d_5e3f                            ; $5e27: $20 $16

    inc d                                         ; $5e29: $14
    rst $38                                       ; $5e2a: $ff
    db $e4                                        ; $5e2b: $e4
    add c                                         ; $5e2c: $81
    ldh [rNR41], a                                ; $5e2d: $e0 $20
    jr nz, jr_05d_5e39                            ; $5e2f: $20 $08

    xor h                                         ; $5e31: $ac
    ret nz                                        ; $5e32: $c0

    rst $38                                       ; $5e33: $ff
    ret nz                                        ; $5e34: $c0

    db $ec                                        ; $5e35: $ec
    db $10                                        ; $5e36: $10
    inc h                                         ; $5e37: $24
    rst $38                                       ; $5e38: $ff

jr_05d_5e39:
    db $e4                                        ; $5e39: $e4
    db $10                                        ; $5e3a: $10
    ret nz                                        ; $5e3b: $c0

    pop hl                                        ; $5e3c: $e1
    dec c                                         ; $5e3d: $0d
    ld c, b                                       ; $5e3e: $48

jr_05d_5e3f:
    ld b, b                                       ; $5e3f: $40
    rst $38                                       ; $5e40: $ff
    add b                                         ; $5e41: $80
    db $ec                                        ; $5e42: $ec
    db $fd                                        ; $5e43: $fd
    ld [$c018], a                                 ; $5e44: $ea $18 $c0
    rst $18                                       ; $5e47: $df
    ret nz                                        ; $5e48: $c0

    ld a, [$401a]                                 ; $5e49: $fa $1a $40
    rst $18                                       ; $5e4c: $df
    nop                                           ; $5e4d: $00
    rst $38                                       ; $5e4e: $ff
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    rst $38                                       ; $5e51: $ff
    rst $38                                       ; $5e52: $ff
    rst $38                                       ; $5e53: $ff
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    rst $38                                       ; $5e56: $ff
    rst $38                                       ; $5e57: $ff
    rst $38                                       ; $5e58: $ff
    rst $38                                       ; $5e59: $ff
    rst $38                                       ; $5e5a: $ff
    rst $38                                       ; $5e5b: $ff
    rst $38                                       ; $5e5c: $ff

jr_05d_5e5d:
    rst $38                                       ; $5e5d: $ff
    nop                                           ; $5e5e: $00
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    rst $38                                       ; $5e64: $ff
    rst $38                                       ; $5e65: $ff
    rst $38                                       ; $5e66: $ff
    rst $38                                       ; $5e67: $ff
    rst $38                                       ; $5e68: $ff
    rst $38                                       ; $5e69: $ff
    rst $38                                       ; $5e6a: $ff
    rst $38                                       ; $5e6b: $ff
    rst $38                                       ; $5e6c: $ff
    rst $38                                       ; $5e6d: $ff
    rst $38                                       ; $5e6e: $ff
    nop                                           ; $5e6f: $00
    rst $38                                       ; $5e70: $ff
    rst $38                                       ; $5e71: $ff
    rst $38                                       ; $5e72: $ff
    rst $38                                       ; $5e73: $ff
    rst $38                                       ; $5e74: $ff
    rst $38                                       ; $5e75: $ff
    rst $38                                       ; $5e76: $ff
    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    rst $38                                       ; $5e7a: $ff
    rst $38                                       ; $5e7b: $ff
    rst $38                                       ; $5e7c: $ff
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    nop                                           ; $5e80: $00
    rst $38                                       ; $5e81: $ff
    rst $38                                       ; $5e82: $ff
    rst $38                                       ; $5e83: $ff
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    rst $38                                       ; $5e89: $ff
    rst $38                                       ; $5e8a: $ff
    rst $38                                       ; $5e8b: $ff
    rst $38                                       ; $5e8c: $ff
    rst $38                                       ; $5e8d: $ff
    rst $38                                       ; $5e8e: $ff
    rst $38                                       ; $5e8f: $ff
    rst $38                                       ; $5e90: $ff
    nop                                           ; $5e91: $00
    rst $38                                       ; $5e92: $ff
    rst $38                                       ; $5e93: $ff
    rst $38                                       ; $5e94: $ff
    rst $38                                       ; $5e95: $ff
    rst $38                                       ; $5e96: $ff
    rst $38                                       ; $5e97: $ff
    rst $38                                       ; $5e98: $ff
    rst $38                                       ; $5e99: $ff
    rst $38                                       ; $5e9a: $ff
    rst $38                                       ; $5e9b: $ff
    rst $38                                       ; $5e9c: $ff
    rst $38                                       ; $5e9d: $ff
    rst $38                                       ; $5e9e: $ff
    rst $38                                       ; $5e9f: $ff
    rst $38                                       ; $5ea0: $ff
    rst $38                                       ; $5ea1: $ff
    nop                                           ; $5ea2: $00
    rst $38                                       ; $5ea3: $ff
    rst $38                                       ; $5ea4: $ff
    rst $38                                       ; $5ea5: $ff
    rst $38                                       ; $5ea6: $ff
    rst $38                                       ; $5ea7: $ff
    rst $38                                       ; $5ea8: $ff
    rst $38                                       ; $5ea9: $ff
    rst $38                                       ; $5eaa: $ff
    rst $38                                       ; $5eab: $ff
    rst $38                                       ; $5eac: $ff
    rst $38                                       ; $5ead: $ff
    rst $38                                       ; $5eae: $ff
    rst $38                                       ; $5eaf: $ff
    rst $38                                       ; $5eb0: $ff
    rst $38                                       ; $5eb1: $ff
    rst $38                                       ; $5eb2: $ff
    nop                                           ; $5eb3: $00
    rst $38                                       ; $5eb4: $ff
    rst $38                                       ; $5eb5: $ff
    rst $38                                       ; $5eb6: $ff
    rst $38                                       ; $5eb7: $ff
    rst $38                                       ; $5eb8: $ff
    rst $38                                       ; $5eb9: $ff
    rst $38                                       ; $5eba: $ff
    rst $38                                       ; $5ebb: $ff
    rst $38                                       ; $5ebc: $ff
    rst $38                                       ; $5ebd: $ff
    rst $38                                       ; $5ebe: $ff
    rst $38                                       ; $5ebf: $ff
    rst $38                                       ; $5ec0: $ff
    rst $38                                       ; $5ec1: $ff
    rst $38                                       ; $5ec2: $ff
    rst $38                                       ; $5ec3: $ff
    nop                                           ; $5ec4: $00
    rst $38                                       ; $5ec5: $ff
    rst $38                                       ; $5ec6: $ff
    rst $38                                       ; $5ec7: $ff
    rst $38                                       ; $5ec8: $ff
    rst $38                                       ; $5ec9: $ff
    rst $38                                       ; $5eca: $ff
    rst $38                                       ; $5ecb: $ff
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    rst $38                                       ; $5ece: $ff
    rst $38                                       ; $5ecf: $ff
    rst $38                                       ; $5ed0: $ff
    rst $38                                       ; $5ed1: $ff
    rst $38                                       ; $5ed2: $ff
    rst $38                                       ; $5ed3: $ff
    rst $38                                       ; $5ed4: $ff
    nop                                           ; $5ed5: $00
    rst $38                                       ; $5ed6: $ff
    rst $38                                       ; $5ed7: $ff
    rst $38                                       ; $5ed8: $ff
    rst $38                                       ; $5ed9: $ff
    rst $38                                       ; $5eda: $ff
    rst $38                                       ; $5edb: $ff
    rst $38                                       ; $5edc: $ff
    rst $38                                       ; $5edd: $ff
    rst $38                                       ; $5ede: $ff
    rst $38                                       ; $5edf: $ff
    rst $38                                       ; $5ee0: $ff
    rst $38                                       ; $5ee1: $ff
    rst $38                                       ; $5ee2: $ff
    rst $38                                       ; $5ee3: $ff
    rst $38                                       ; $5ee4: $ff
    rst $38                                       ; $5ee5: $ff
    nop                                           ; $5ee6: $00
    rst $38                                       ; $5ee7: $ff
    rst $38                                       ; $5ee8: $ff
    rst $38                                       ; $5ee9: $ff
    rst $38                                       ; $5eea: $ff
    rst $38                                       ; $5eeb: $ff
    rst $38                                       ; $5eec: $ff
    rst $38                                       ; $5eed: $ff
    rst $38                                       ; $5eee: $ff
    rst $38                                       ; $5eef: $ff
    rst $38                                       ; $5ef0: $ff
    rst $38                                       ; $5ef1: $ff
    rst $38                                       ; $5ef2: $ff
    rst $38                                       ; $5ef3: $ff
    rst $38                                       ; $5ef4: $ff
    rst $38                                       ; $5ef5: $ff
    rst $38                                       ; $5ef6: $ff
    nop                                           ; $5ef7: $00
    rst $38                                       ; $5ef8: $ff
    rst $38                                       ; $5ef9: $ff
    rst $38                                       ; $5efa: $ff
    rst $38                                       ; $5efb: $ff
    rst $38                                       ; $5efc: $ff
    rst $38                                       ; $5efd: $ff
    rst $38                                       ; $5efe: $ff
    rst $38                                       ; $5eff: $ff
    rst $38                                       ; $5f00: $ff
    rst $38                                       ; $5f01: $ff
    rst $38                                       ; $5f02: $ff
    rst $38                                       ; $5f03: $ff
    rst $38                                       ; $5f04: $ff
    rst $38                                       ; $5f05: $ff
    rst $38                                       ; $5f06: $ff
    rst $38                                       ; $5f07: $ff
    nop                                           ; $5f08: $00
    rst $38                                       ; $5f09: $ff
    rst $38                                       ; $5f0a: $ff
    rst $38                                       ; $5f0b: $ff
    rst $38                                       ; $5f0c: $ff
    rst $38                                       ; $5f0d: $ff
    or $00                                        ; $5f0e: $f6 $00
    nop                                           ; $5f10: $00
    nop                                           ; $5f11: $00
    and l                                         ; $5f12: $a5
    nop                                           ; $5f13: $00
    rst $38                                       ; $5f14: $ff
    push hl                                       ; $5f15: $e5
    ld [hl-], a                                   ; $5f16: $32
    or $e6                                        ; $5f17: $f6 $e6
    rst $30                                       ; $5f19: $f7
    rst $20                                       ; $5f1a: $e7
    dec [hl]                                      ; $5f1b: $35
    db $ec                                        ; $5f1c: $ec
    xor $37                                       ; $5f1d: $ee $37
    db $ec                                        ; $5f1f: $ec
    jp c, $c7f0                                   ; $5f20: $da $f0 $c7

    add sp, $33                                   ; $5f23: $e8 $33
    ld sp, $f2e0                                  ; $5f25: $31 $e0 $f2
    ld [hl], $30                                  ; $5f28: $36 $30
    scf                                           ; $5f2a: $37
    cp a                                          ; $5f2b: $bf
    ld h, $20                                     ; $5f2c: $26 $20
    daa                                           ; $5f2e: $27
    db $10                                        ; $5f2f: $10
    ld d, $17                                     ; $5f30: $16 $17
    jp nz, Jump_000_34f6                          ; $5f32: $c2 $f6 $34

    rst $38                                       ; $5f35: $ff
    ld [hl], $32                                  ; $5f36: $36 $32
    jr nc, jr_05d_5f71                            ; $5f38: $30 $37

    ld sp, $3133                                  ; $5f3a: $31 $33 $31
    inc sp                                        ; $5f3d: $33
    nop                                           ; $5f3e: $00
    and b                                         ; $5f3f: $a0
    ei                                            ; $5f40: $fb
    rst $38                                       ; $5f41: $ff
    rst $28                                       ; $5f42: $ef
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    ld c, [hl]                                    ; $5f46: $4e
    ld e, a                                       ; $5f47: $5f
    ld a, [hl]                                    ; $5f48: $7e

Jump_05d_5f49:
    ld e, a                                       ; $5f49: $5f
    inc d                                         ; $5f4a: $14
    ld h, d                                       ; $5f4b: $62
    ld a, [$f863]                                 ; $5f4c: $fa $63 $f8
    inc bc                                        ; $5f4f: $03
    ld c, h                                       ; $5f50: $4c
    inc bc                                        ; $5f51: $03
    ld d, e                                       ; $5f52: $53
    ld bc, $008a                                  ; $5f53: $01 $8a $00
    ldh a, [$03]                                  ; $5f56: $f0 $03
    ld hl, sp+$03                                 ; $5f58: $f8 $03
    ld c, h                                       ; $5f5a: $4c
    inc bc                                        ; $5f5b: $03
    ld d, e                                       ; $5f5c: $53
    ld bc, $47ff                                  ; $5f5d: $01 $ff $47
    ldh a, [rP1]                                  ; $5f60: $f0 $00
    ld e, l                                       ; $5f62: $5d
    add hl, de                                    ; $5f63: $19
    ld c, h                                       ; $5f64: $4c
    inc bc                                        ; $5f65: $03
    ld [$0825], sp                                ; $5f66: $08 $25 $08
    dec h                                         ; $5f69: $25
    ld [$0825], sp                                ; $5f6a: $08 $25 $08
    dec h                                         ; $5f6d: $25
    ld [$0825], sp                                ; $5f6e: $08 $25 $08

jr_05d_5f71:
    dec h                                         ; $5f71: $25
    ld [$0825], sp                                ; $5f72: $08 $25 $08
    dec h                                         ; $5f75: $25
    ld [$0825], sp                                ; $5f76: $08 $25 $08
    dec h                                         ; $5f79: $25
    ld [$0825], sp                                ; $5f7a: $08 $25 $08
    dec h                                         ; $5f7d: $25
    db $ed                                        ; $5f7e: $ed
    dec bc                                        ; $5f7f: $0b
    rst $38                                       ; $5f80: $ff
    ld [c], a                                     ; $5f81: $e2
    ld l, e                                       ; $5f82: $6b
    ld c, e                                       ; $5f83: $4b
    rst $38                                       ; $5f84: $ff
    and $0b                                       ; $5f85: $e6 $0b
    ld c, e                                       ; $5f87: $4b
    dec hl                                        ; $5f88: $2b
    rra                                           ; $5f89: $1f
    inc c                                         ; $5f8a: $0c
    inc c                                         ; $5f8b: $0c
    inc c                                         ; $5f8c: $0c
    ld c, h                                       ; $5f8d: $4c
    ld c, h                                       ; $5f8e: $4c
    db $fd                                        ; $5f8f: $fd
    db $e3                                        ; $5f90: $e3
    ld sp, hl                                     ; $5f91: $f9
    ldh [$f2], a                                  ; $5f92: $e0 $f2
    pop hl                                        ; $5f94: $e1
    add h                                         ; $5f95: $84
    db $fc                                        ; $5f96: $fc
    db $e4                                        ; $5f97: $e4
    db $fd                                        ; $5f98: $fd
    ldh a, [rOCPD]                                ; $5f99: $f0 $6b
    jp nz, $ffe1                                  ; $5f9b: $c2 $e1 $ff

    ldh [$b8], a                                  ; $5f9e: $e0 $b8
    db $e3                                        ; $5fa0: $e3
    or a                                          ; $5fa1: $b7
    ldh [$0b], a                                  ; $5fa2: $e0 $0b
    inc bc                                        ; $5fa4: $03
    dec bc                                        ; $5fa5: $0b
    ld c, e                                       ; $5fa6: $4b
    sub $e2                                       ; $5fa7: $d6 $e2
    cp [hl]                                       ; $5fa9: $be
    db $e3                                        ; $5faa: $e3
    db $fc                                        ; $5fab: $fc
    db $e3                                        ; $5fac: $e3
    cp l                                          ; $5fad: $bd
    ld [c], a                                     ; $5fae: $e2
    or h                                          ; $5faf: $b4
    add sp, -$40                                  ; $5fb0: $e8 $c0
    ld [$c402], a                                 ; $5fb2: $ea $02 $c4
    pop hl                                        ; $5fb5: $e1
    dec hl                                        ; $5fb6: $2b
    cp c                                          ; $5fb7: $b9
    ldh [$c6], a                                  ; $5fb8: $e0 $c6
    ldh [$73], a                                  ; $5fba: $e0 $73
    ldh [$7f], a                                  ; $5fbc: $e0 $7f
    pop hl                                        ; $5fbe: $e1
    jp nc, $c0e5                                  ; $5fbf: $d2 $e5 $c0

    db $e3                                        ; $5fc2: $e3
    ld [$e5ba], sp                                ; $5fc3: $08 $ba $e5
    or h                                          ; $5fc6: $b4
    rst $20                                       ; $5fc7: $e7
    halt                                          ; $5fc8: $76
    jp hl                                         ; $5fc9: $e9


    dec bc                                        ; $5fca: $0b
    add [hl]                                      ; $5fcb: $86
    ld [c], a                                     ; $5fcc: $e2
    add b                                         ; $5fcd: $80
    ldh [rDMA], a                                 ; $5fce: $e0 $46
    ldh [rIE], a                                  ; $5fd0: $e0 $ff
    push hl                                       ; $5fd2: $e5
    nop                                           ; $5fd3: $00
    ld d, d                                       ; $5fd4: $52
    and $4c                                       ; $5fd5: $e6 $4c
    db $ec                                        ; $5fd7: $ec
    or h                                          ; $5fd8: $b4
    db $e3                                        ; $5fd9: $e3
    ret nz                                        ; $5fda: $c0

    db $f4                                        ; $5fdb: $f4
    or a                                          ; $5fdc: $b7
    db $e3                                        ; $5fdd: $e3
    ret nz                                        ; $5fde: $c0

    push hl                                       ; $5fdf: $e5
    pop bc                                        ; $5fe0: $c1
    and $87                                       ; $5fe1: $e6 $87
    db $e3                                        ; $5fe3: $e3
    ld [bc], a                                    ; $5fe4: $02
    nop                                           ; $5fe5: $00
    ld [$f92c], a                                 ; $5fe6: $ea $2c $f9
    jp hl                                         ; $5fe9: $e9


    ret nz                                        ; $5fea: $c0

    call nz, $e108                                ; $5feb: $c4 $08 $e1
    or a                                          ; $5fee: $b7
    jp nz, $c1b3                                  ; $5fef: $c2 $b3 $c1

    ret nz                                        ; $5ff2: $c0

    set 3, b                                      ; $5ff3: $cb $d8
    ei                                            ; $5ff5: $fb
    db $e4                                        ; $5ff6: $e4
    or h                                          ; $5ff7: $b4
    and $b7                                       ; $5ff8: $e6 $b7
    rrc e                                         ; $5ffa: $cb $0b
    dec hl                                        ; $5ffc: $2b
    ld a, [hl]                                    ; $5ffd: $7e
    ret nz                                        ; $5ffe: $c0

    dec hl                                        ; $5fff: $2b
    dec hl                                        ; $6000: $2b
    nop                                           ; $6001: $00
    cp a                                          ; $6002: $bf
    pop bc                                        ; $6003: $c1
    ld a, h                                       ; $6004: $7c
    pop bc                                        ; $6005: $c1
    ld a, [c]                                     ; $6006: $f2
    pop hl                                        ; $6007: $e1
    ld b, b                                       ; $6008: $40
    ldh [$c7], a                                  ; $6009: $e0 $c7
    jp $c381                                      ; $600b: $c3 $81 $c3


    cp b                                          ; $600e: $b8
    rst $20                                       ; $600f: $e7
    ccf                                           ; $6010: $3f
    pop af                                        ; $6011: $f1
    ld l, a                                       ; $6012: $6f
    dec bc                                        ; $6013: $0b
    dec hl                                        ; $6014: $2b
    ld c, e                                       ; $6015: $4b
    dec hl                                        ; $6016: $2b
    rst $38                                       ; $6017: $ff
    pop hl                                        ; $6018: $e1
    ld l, e                                       ; $6019: $6b

jr_05d_601a:
    ld l, e                                       ; $601a: $6b
    push bc                                       ; $601b: $c5
    ld [c], a                                     ; $601c: $e2
    ld b, b                                       ; $601d: $40
    nop                                           ; $601e: $00
    db $e3                                        ; $601f: $e3
    ld c, h                                       ; $6020: $4c
    jp nz, $e5ff                                  ; $6021: $c2 $ff $e5

    ld a, h                                       ; $6024: $7c
    call nz, $e6b4                                ; $6025: $c4 $b4 $e6
    ret nz                                        ; $6028: $c0

    db $ed                                        ; $6029: $ed
    dec hl                                        ; $602a: $2b
    add c                                         ; $602b: $81
    ldh [rP1], a                                  ; $602c: $e0 $00
    cp a                                          ; $602e: $bf
    pop hl                                        ; $602f: $e1
    add h                                         ; $6030: $84
    ld [c], a                                     ; $6031: $e2
    jr nz, jr_05d_601a                            ; $6032: $20 $e6

    ld d, d                                       ; $6034: $52
    rst $08                                       ; $6035: $cf
    halt                                          ; $6036: $76
    ret                                           ; $6037: $c9


    add b                                         ; $6038: $80
    ret z                                         ; $6039: $c8

    ld c, [hl]                                    ; $603a: $4e
    pop bc                                        ; $603b: $c1
    ld a, [hl]                                    ; $603c: $7e
    ld [c], a                                     ; $603d: $e2
    nop                                           ; $603e: $00
    ld [hl], $e1                                  ; $603f: $36 $e1
    pop hl                                        ; $6041: $e1
    jp nz, $c1e0                                  ; $6042: $c2 $e0 $c1

    ld b, $ca                                     ; $6045: $06 $ca
    ei                                            ; $6047: $fb
    and h                                         ; $6048: $a4
    cp [hl]                                       ; $6049: $be
    and h                                         ; $604a: $a4
    or a                                          ; $604b: $b7
    xor e                                         ; $604c: $ab
    ld b, a                                       ; $604d: $47
    pop bc                                        ; $604e: $c1
    nop                                           ; $604f: $00
    cp a                                          ; $6050: $bf
    ld [c], a                                     ; $6051: $e2
    dec b                                         ; $6052: $05
    pop hl                                        ; $6053: $e1
    ld d, a                                       ; $6054: $57
    rst $00                                       ; $6055: $c7
    sub b                                         ; $6056: $90
    ldh a, [$b4]                                  ; $6057: $f0 $b4
    push hl                                       ; $6059: $e5
    ld a, h                                       ; $605a: $7c
    ret                                           ; $605b: $c9


    add b                                         ; $605c: $80

jr_05d_605d:
    db $e3                                        ; $605d: $e3
    jp z, $0fc0                                   ; $605e: $ca $c0 $0f

    ld c, e                                       ; $6061: $4b
    ld l, e                                       ; $6062: $6b
    dec hl                                        ; $6063: $2b
    ld c, e                                       ; $6064: $4b
    ld c, b                                       ; $6065: $48
    call nz, $c340                                ; $6066: $c4 $40 $c3
    add [hl]                                      ; $6069: $86
    ret                                           ; $606a: $c9


    ld a, c                                       ; $606b: $79
    jp $ba20                                      ; $606c: $c3 $20 $ba


    and [hl]                                      ; $606f: $a6
    ret nz                                        ; $6070: $c0

    xor e                                         ; $6071: $ab
    add c                                         ; $6072: $81
    ld [c], a                                     ; $6073: $e2
    add a                                         ; $6074: $87
    and c                                         ; $6075: $a1
    jr nc, jr_05d_605d                            ; $6076: $30 $e5

    ld l, e                                       ; $6078: $6b
    ld b, b                                       ; $6079: $40
    jp nz, $c3ce                                  ; $607a: $c2 $ce $c3

    nop                                           ; $607d: $00
    dec a                                         ; $607e: $3d
    and a                                         ; $607f: $a7
    halt                                          ; $6080: $76
    jp $c536                                      ; $6081: $c3 $36 $c5


    db $f4                                        ; $6084: $f4
    add a                                         ; $6085: $87
    ld c, d                                       ; $6086: $4a
    and d                                         ; $6087: $a2
    ld b, l                                       ; $6088: $45
    add sp, $33                                   ; $6089: $e8 $33
    pop bc                                        ; $608b: $c1
    ld b, b                                       ; $608c: $40
    and $08                                       ; $608d: $e6 $08
    ret nz                                        ; $608f: $c0

    ld [$86f1], a                                 ; $6090: $ea $f1 $86
    ret nz                                        ; $6093: $c0

    and b                                         ; $6094: $a0
    inc l                                         ; $6095: $2c
    rst $38                                       ; $6096: $ff
    ldh [$c0], a                                  ; $6097: $e0 $c0
    push bc                                       ; $6099: $c5
    ret nz                                        ; $609a: $c0

    db $e3                                        ; $609b: $e3
    ld h, a                                       ; $609c: $67
    push bc                                       ; $609d: $c5
    ld [bc], a                                    ; $609e: $02
    db $f4                                        ; $609f: $f4
    add b                                         ; $60a0: $80
    ld a, [bc]                                    ; $60a1: $0a
    sub [hl]                                      ; $60a2: $96
    adc c                                         ; $60a3: $89
    sub $e3                                       ; $60a4: $d6 $e3
    xor h                                         ; $60a6: $ac
    jp $a4ea                                      ; $60a7: $c3 $ea $a4


    ret nz                                        ; $60aa: $c0

    ld a, [c]                                     ; $60ab: $f2
    ld h, b                                       ; $60ac: $60
    add e                                         ; $60ad: $83
    nop                                           ; $60ae: $00
    ld [hl], h                                    ; $60af: $74
    add c                                         ; $60b0: $81
    add b                                         ; $60b1: $80
    ldh [rIE], a                                  ; $60b2: $e0 $ff
    db $f4                                        ; $60b4: $f4
    adc d                                         ; $60b5: $8a
    and $81                                       ; $60b6: $e6 $81
    rst $20                                       ; $60b8: $e7
    ret c                                         ; $60b9: $d8

    ret z                                         ; $60ba: $c8

    ld d, [hl]                                    ; $60bb: $56
    and [hl]                                      ; $60bc: $a6
    jp nz, Jump_000_00a3                          ; $60bd: $c2 $a3 $00

    nop                                           ; $60c0: $00
    adc l                                         ; $60c1: $8d
    cp d                                          ; $60c2: $ba
    add a                                         ; $60c3: $87
    ret nz                                        ; $60c4: $c0

    ld [$6ed5], a                                 ; $60c5: $ea $d5 $6e
    db $f4                                        ; $60c8: $f4
    ld [$934c], a                                 ; $60c9: $ea $4c $93
    or [hl]                                       ; $60cc: $b6
    ld l, l                                       ; $60cd: $6d
    push de                                       ; $60ce: $d5
    ld l, d                                       ; $60cf: $6a
    nop                                           ; $60d0: $00
    db $f4                                        ; $60d1: $f4
    db $eb                                        ; $60d2: $eb
    ld [hl], b                                    ; $60d3: $70
    rst $20                                       ; $60d4: $e7
    cp a                                          ; $60d5: $bf
    ret                                           ; $60d6: $c9


    pop bc                                        ; $60d7: $c1
    jp nz, $8479                                  ; $60d8: $c2 $79 $84

    push de                                       ; $60db: $d5
    ld l, l                                       ; $60dc: $6d
    ld c, e                                       ; $60dd: $4b
    ld l, c                                       ; $60de: $69
    adc [hl]                                      ; $60df: $8e
    ld l, l                                       ; $60e0: $6d
    nop                                           ; $60e1: $00
    adc c                                         ; $60e2: $89
    call nz, $eac0                                ; $60e3: $c4 $c0 $ea
    push de                                       ; $60e6: $d5
    ld l, l                                       ; $60e7: $6d
    ld c, e                                       ; $60e8: $4b
    ld [$6442], a                                 ; $60e9: $ea $42 $64
    inc b                                         ; $60ec: $04
    ld l, e                                       ; $60ed: $6b
    ld b, b                                       ; $60ee: $40
    jp z, Jump_05d_6ed5                           ; $60ef: $ca $d5 $6e

    nop                                           ; $60f2: $00
    ret nc                                        ; $60f3: $d0

    ld c, b                                       ; $60f4: $48
    ld c, a                                       ; $60f5: $4f
    add l                                         ; $60f6: $85
    push bc                                       ; $60f7: $c5
    ld c, h                                       ; $60f8: $4c
    ret nz                                        ; $60f9: $c0

    db $ec                                        ; $60fa: $ec
    push de                                       ; $60fb: $d5
    ld l, l                                       ; $60fc: $6d
    ld d, $ac                                     ; $60fd: $16 $ac
    ld b, a                                       ; $60ff: $47
    ld h, l                                       ; $6100: $65
    inc [hl]                                      ; $6101: $34
    adc b                                         ; $6102: $88
    nop                                           ; $6103: $00
    add [hl]                                      ; $6104: $86
    db $ed                                        ; $6105: $ed
    push de                                       ; $6106: $d5
    ld l, h                                       ; $6107: $6c
    or l                                          ; $6108: $b5
    ret                                           ; $6109: $c9


    add hl, bc                                    ; $610a: $09
    ld h, h                                       ; $610b: $64
    ld a, $49                                     ; $610c: $3e $49
    or b                                          ; $610e: $b0
    and e                                         ; $610f: $a3
    add b                                         ; $6110: $80
    and l                                         ; $6111: $a5
    push de                                       ; $6112: $d5
    ld [hl], b                                    ; $6113: $70
    nop                                           ; $6114: $00
    pop de                                        ; $6115: $d1
    ld c, b                                       ; $6116: $48
    pop af                                        ; $6117: $f1
    xor b                                         ; $6118: $a8
    inc [hl]                                      ; $6119: $34
    add [hl]                                      ; $611a: $86
    ret nz                                        ; $611b: $c0

    db $eb                                        ; $611c: $eb
    push de                                       ; $611d: $d5
    ld [hl], e                                    ; $611e: $73
    rst $30                                       ; $611f: $f7
    rst $00                                       ; $6120: $c7
    rst $00                                       ; $6121: $c7
    add l                                         ; $6122: $85
    call nz, Call_000_006a                        ; $6123: $c4 $6a $00
    jp $d5ca                                      ; $6126: $c3 $ca $d5


    ld l, l                                       ; $6129: $6d
    cp [hl]                                       ; $612a: $be
    and a                                         ; $612b: $a7
    inc b                                         ; $612c: $04
    ld c, b                                       ; $612d: $48
    inc [hl]                                      ; $612e: $34
    adc b                                         ; $612f: $88

jr_05d_6130:
    ret nz                                        ; $6130: $c0

    db $eb                                        ; $6131: $eb
    push de                                       ; $6132: $d5
    ld l, a                                       ; $6133: $6f
    ld c, b                                       ; $6134: $48
    xor a                                         ; $6135: $af
    nop                                           ; $6136: $00
    ld sp, hl                                     ; $6137: $f9
    ld c, d                                       ; $6138: $4a
    jp nz, $fd6a                                  ; $6139: $c2 $6a $fd

    adc h                                         ; $613c: $8c
    adc h                                         ; $613d: $8c
    ld h, $cc                                     ; $613e: $26 $cc
    and $76                                       ; $6140: $e6 $76
    ld c, b                                       ; $6142: $48
    ret nz                                        ; $6143: $c0

    push af                                       ; $6144: $f5
    push de                                       ; $6145: $d5
    ld l, l                                       ; $6146: $6d
    nop                                           ; $6147: $00
    daa                                           ; $6148: $27
    db $ed                                        ; $6149: $ed
    push bc                                       ; $614a: $c5
    rlca                                          ; $614b: $07
    jp z, Jump_000_15ae                           ; $614c: $ca $ae $15

    ld l, b                                       ; $614f: $68
    jp nc, Jump_05d_4f8a                          ; $6150: $d2 $8a $4f

    ld b, l                                       ; $6153: $45
    ld c, $e7                                     ; $6154: $0e $e7
    cp [hl]                                       ; $6156: $be
    xor [hl]                                      ; $6157: $ae
    nop                                           ; $6158: $00
    ld hl, $7e96                                  ; $6159: $21 $96 $7e
    ld [$b1cf], a                                 ; $615c: $ea $cf $b1
    add c                                         ; $615f: $81
    ld h, c                                       ; $6160: $61
    ld a, [hl]                                    ; $6161: $7e
    set 6, d                                      ; $6162: $cb $f2
    ret nc                                        ; $6164: $d0

    ld a, l                                       ; $6165: $7d
    ld b, l                                       ; $6166: $45
    jr c, jr_05d_6130                             ; $6167: $38 $c7

    nop                                           ; $6169: $00
    db $eb                                        ; $616a: $eb
    ld h, h                                       ; $616b: $64
    ld [hl], c                                    ; $616c: $71
    ld h, h                                       ; $616d: $64
    ret nz                                        ; $616e: $c0

    rst $30                                       ; $616f: $f7
    rst $30                                       ; $6170: $f7
    jp z, $e66d                                   ; $6171: $ca $6d $e6

    daa                                           ; $6174: $27
    and $7f                                       ; $6175: $e6 $7f
    add l                                         ; $6177: $85
    ld h, c                                       ; $6178: $61
    ld a, b                                       ; $6179: $78
    nop                                           ; $617a: $00
    or a                                          ; $617b: $b7
    db $d3                                        ; $617c: $d3
    ld a, b                                       ; $617d: $78
    and [hl]                                      ; $617e: $a6
    add c                                         ; $617f: $81
    db $fc                                        ; $6180: $fc
    ret nc                                        ; $6181: $d0

    ld b, a                                       ; $6182: $47
    ld h, e                                       ; $6183: $63
    adc d                                         ; $6184: $8a
    ld d, [hl]                                    ; $6185: $56
    xor c                                         ; $6186: $a9
    rst $38                                       ; $6187: $ff
    rst $38                                       ; $6188: $ff
    inc h                                         ; $6189: $24
    sub h                                         ; $618a: $94
    nop                                           ; $618b: $00
    cpl                                           ; $618c: $2f
    call nz, $8b02                                ; $618d: $c4 $02 $8b
    ld h, b                                       ; $6190: $60
    ret nc                                        ; $6191: $d0

    ld h, [hl]                                    ; $6192: $66
    adc e                                         ; $6193: $8b
    or a                                          ; $6194: $b7
    adc l                                         ; $6195: $8d
    pop bc                                        ; $6196: $c1
    call c, $4897                                 ; $6197: $dc $97 $48
    inc h                                         ; $619a: $24
    adc [hl]                                      ; $619b: $8e
    nop                                           ; $619c: $00
    ld b, c                                       ; $619d: $41
    rst $38                                       ; $619e: $ff
    ld l, e                                       ; $619f: $6b
    ld l, [hl]                                    ; $61a0: $6e
    inc h                                         ; $61a1: $24
    adc d                                         ; $61a2: $8a
    ld d, h                                       ; $61a3: $54
    or $d2                                        ; $61a4: $f6 $d2
    ld sp, $8f24                                  ; $61a6: $31 $24 $8f
    ld a, a                                       ; $61a9: $7f
    rst $38                                       ; $61aa: $ff
    ld h, e                                       ; $61ab: $63
    ld [hl], d                                    ; $61ac: $72
    nop                                           ; $61ad: $00
    ld b, l                                       ; $61ae: $45
    ld [$ff7f], sp                                ; $61af: $08 $7f $ff
    dec de                                        ; $61b2: $1b
    xor b                                         ; $61b3: $a8
    inc h                                         ; $61b4: $24
    adc [hl]                                      ; $61b5: $8e
    add b                                         ; $61b6: $80
    rst $38                                       ; $61b7: $ff
    ld b, b                                       ; $61b8: $40
    pop af                                        ; $61b9: $f1
    push bc                                       ; $61ba: $c5
    ld l, c                                       ; $61bb: $69
    add b                                         ; $61bc: $80
    rst $38                                       ; $61bd: $ff
    nop                                           ; $61be: $00
    and e                                         ; $61bf: $a3
    ld c, a                                       ; $61c0: $4f
    push bc                                       ; $61c1: $c5
    ld l, c                                       ; $61c2: $69
    ret nz                                        ; $61c3: $c0

    rst $38                                       ; $61c4: $ff
    inc h                                         ; $61c5: $24
    sbc d                                         ; $61c6: $9a

Call_05d_61c7:
    rst $38                                       ; $61c7: $ff
    rst $38                                       ; $61c8: $ff
    ld b, l                                       ; $61c9: $45
    dec e                                         ; $61ca: $1d
    rst $38                                       ; $61cb: $ff
    rst $38                                       ; $61cc: $ff
    rst $38                                       ; $61cd: $ff
    rst $38                                       ; $61ce: $ff
    nop                                           ; $61cf: $00
    sub [hl]                                      ; $61d0: $96
    rst $38                                       ; $61d1: $ff
    rst $38                                       ; $61d2: $ff
    rst $38                                       ; $61d3: $ff
    ld [hl], h                                    ; $61d4: $74
    ld a, h                                       ; $61d5: $7c
    rst $38                                       ; $61d6: $ff
    rst $38                                       ; $61d7: $ff
    rst $38                                       ; $61d8: $ff
    rst $38                                       ; $61d9: $ff
    rst $38                                       ; $61da: $ff
    rst $38                                       ; $61db: $ff
    scf                                           ; $61dc: $37
    db $fc                                        ; $61dd: $fc
    call c, Call_000_00ff                         ; $61de: $dc $ff $00
    rst $38                                       ; $61e1: $ff
    rst $38                                       ; $61e2: $ff
    rst $38                                       ; $61e3: $ff
    rst $38                                       ; $61e4: $ff
    rst $38                                       ; $61e5: $ff
    rst $38                                       ; $61e6: $ff
    rst $38                                       ; $61e7: $ff
    rst $38                                       ; $61e8: $ff
    rst $38                                       ; $61e9: $ff
    rst $38                                       ; $61ea: $ff
    rst $38                                       ; $61eb: $ff
    rst $38                                       ; $61ec: $ff
    rst $38                                       ; $61ed: $ff
    rst $38                                       ; $61ee: $ff
    rst $38                                       ; $61ef: $ff
    rst $38                                       ; $61f0: $ff
    nop                                           ; $61f1: $00
    rst $38                                       ; $61f2: $ff
    rst $38                                       ; $61f3: $ff
    rst $38                                       ; $61f4: $ff
    rst $38                                       ; $61f5: $ff
    rst $38                                       ; $61f6: $ff
    rst $38                                       ; $61f7: $ff
    rst $38                                       ; $61f8: $ff
    rst $38                                       ; $61f9: $ff
    rst $38                                       ; $61fa: $ff
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    rst $38                                       ; $61fd: $ff
    rst $38                                       ; $61fe: $ff
    rst $38                                       ; $61ff: $ff
    rst $38                                       ; $6200: $ff
    rst $38                                       ; $6201: $ff
    nop                                           ; $6202: $00
    rst $38                                       ; $6203: $ff
    rst $38                                       ; $6204: $ff
    nop                                           ; $6205: $00
    cp a                                          ; $6206: $bf
    rst $38                                       ; $6207: $ff
    rst $38                                       ; $6208: $ff
    rst $38                                       ; $6209: $ff
    rst $38                                       ; $620a: $ff
    rst $38                                       ; $620b: $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    rst $38                                       ; $620f: $ff
    di                                            ; $6210: $f3
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    rst $38                                       ; $6214: $ff
    ld e, e                                       ; $6215: $5b
    ld h, b                                       ; $6216: $60
    ld sp, $3131                                  ; $6217: $31 $31 $31
    ld c, e                                       ; $621a: $4b
    dec sp                                        ; $621b: $3b
    ld d, h                                       ; $621c: $54
    ei                                            ; $621d: $fb
    ld d, h                                       ; $621e: $54
    ld d, l                                       ; $621f: $55
    db $fd                                        ; $6220: $fd
    ldh [rHDMA5], a                               ; $6221: $e0 $55
    ld d, l                                       ; $6223: $55
    dec sp                                        ; $6224: $3b
    ld c, l                                       ; $6225: $4d
    ld sp, $5ea7                                  ; $6226: $31 $a7 $5e
    ld e, e                                       ; $6229: $5b
    nop                                           ; $622a: $00
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    rst $20                                       ; $622d: $e7
    and $5f                                       ; $622e: $e6 $5f
    jp nz, Jump_000_36e1                          ; $6230: $c2 $e1 $36

    rst $38                                       ; $6233: $ff
    ld h, [hl]                                    ; $6234: $66
    ld h, [hl]                                    ; $6235: $66
    jr nc, jr_05d_6268                            ; $6236: $30 $30

    jr nc, jr_05d_62a3                            ; $6238: $30 $69

    ld l, l                                       ; $623a: $6d
    ld l, l                                       ; $623b: $6d
    ccf                                           ; $623c: $3f
    jr nc, jr_05d_626f                            ; $623d: $30 $30

    add hl, sp                                    ; $623f: $39
    ld sp, $5f31                                  ; $6240: $31 $31 $5f
    jp z, $e8ff                                   ; $6243: $ca $ff $e8

    rst $20                                       ; $6246: $e7
    cp a                                          ; $6247: $bf
    ld e, [hl]                                    ; $6248: $5e
    ld sp, $363c                                  ; $6249: $31 $3c $36
    jr nc, @+$32                                  ; $624c: $30 $30

    ret nz                                        ; $624e: $c0

    rst $20                                       ; $624f: $e7
    ld c, b                                       ; $6250: $48
    rst $20                                       ; $6251: $e7
    ld c, c                                       ; $6252: $49
    ld sp, $ca5e                                  ; $6253: $31 $5e $ca
    rst $38                                       ; $6256: $ff
    add sp, -$19                                  ; $6257: $e8 $e7
    ld sp, $4237                                  ; $6259: $31 $37 $42
    ret z                                         ; $625c: $c8

    add l                                         ; $625d: $85
    ldh [$c0], a                                  ; $625e: $e0 $c0
    rst $38                                       ; $6260: $ff
    ret nz                                        ; $6261: $c0

    or $39                                        ; $6262: $f6 $39
    ld b, [hl]                                    ; $6264: $46
    ldh [$c0], a                                  ; $6265: $e0 $c0
    db $e3                                        ; $6267: $e3

jr_05d_6268:
    ld l, d                                       ; $6268: $6a
    ld l, l                                       ; $6269: $6d
    ld l, b                                       ; $626a: $68
    ccf                                           ; $626b: $3f
    ldh [rLCDC], a                                ; $626c: $e0 $40
    rst $38                                       ; $626e: $ff

jr_05d_626f:
    add b                                         ; $626f: $80
    db $ec                                        ; $6270: $ec
    ld d, d                                       ; $6271: $52
    ret nz                                        ; $6272: $c0

    pop hl                                        ; $6273: $e1
    ld h, a                                       ; $6274: $67
    ld h, a                                       ; $6275: $67
    cp d                                          ; $6276: $ba
    pop hl                                        ; $6277: $e1
    ld h, d                                       ; $6278: $62
    cp a                                          ; $6279: $bf
    ldh [$99], a                                  ; $627a: $e0 $99
    add c                                         ; $627c: $81
    ldh [$c0], a                                  ; $627d: $e0 $c0
    rst $18                                       ; $627f: $df
    add b                                         ; $6280: $80
    db $ed                                        ; $6281: $ed
    ld l, l                                       ; $6282: $6d
    ld l, l                                       ; $6283: $6d
    cp a                                          ; $6284: $bf
    pop hl                                        ; $6285: $e1
    ld e, a                                       ; $6286: $5f
    sub h                                         ; $6287: $94
    sbc h                                         ; $6288: $9c
    sbc h                                         ; $6289: $9c
    sbc h                                         ; $628a: $9c
    sub l                                         ; $628b: $95
    ld [hl], d                                    ; $628c: $72
    ret nz                                        ; $628d: $c0

    ld h, d                                       ; $628e: $62
    jp z, $f8ff                                   ; $628f: $ca $ff $f8

    nop                                           ; $6292: $00
    ld [$e049], a                                 ; $6293: $ea $49 $e0
    cp a                                          ; $6296: $bf
    pop hl                                        ; $6297: $e1
    sub e                                         ; $6298: $93
    add [hl]                                      ; $6299: $86
    sub [hl]                                      ; $629a: $96
    sub a                                         ; $629b: $97
    sbc [hl]                                      ; $629c: $9e
    ld h, [hl]                                    ; $629d: $66
    inc sp                                        ; $629e: $33
    ret nz                                        ; $629f: $c0

    ld sp, $ca31                                  ; $62a0: $31 $31 $ca

jr_05d_62a3:
    rst $38                                       ; $62a3: $ff
    ret nz                                        ; $62a4: $c0

    ret z                                         ; $62a5: $c8

    and a                                         ; $62a6: $a7
    add e                                         ; $62a7: $83
    add c                                         ; $62a8: $81
    ldh [$f6], a                                  ; $62a9: $e0 $f6
    cp a                                          ; $62ab: $bf
    pop hl                                        ; $62ac: $e1
    sub c                                         ; $62ad: $91
    sub b                                         ; $62ae: $90
    or $a0                                        ; $62af: $f6 $a0
    add hl, hl                                    ; $62b1: $29
    inc d                                         ; $62b2: $14
    inc d                                         ; $62b3: $14
    inc d                                         ; $62b4: $14
    cp c                                          ; $62b5: $b9
    add hl, hl                                    ; $62b6: $29
    jp z, $80ff                                   ; $62b7: $ca $ff $80

    ret z                                         ; $62ba: $c8

    add c                                         ; $62bb: $81
    ld a, c                                       ; $62bc: $79
    ld [hl], c                                    ; $62bd: $71
    cp a                                          ; $62be: $bf
    ld [c], a                                     ; $62bf: $e2
    sub e                                         ; $62c0: $93
    ei                                            ; $62c1: $fb
    add [hl]                                      ; $62c2: $86
    sub d                                         ; $62c3: $92
    pop bc                                        ; $62c4: $c1
    ldh [$27], a                                  ; $62c5: $e0 $27
    db $10                                        ; $62c7: $10
    inc h                                         ; $62c8: $24
    db $10                                        ; $62c9: $10
    dec hl                                        ; $62ca: $2b
    ld e, h                                       ; $62cb: $5c
    jp z, $e8ff                                   ; $62cc: $ca $ff $e8

    rst $20                                       ; $62cf: $e7
    xor h                                         ; $62d0: $ac
    xor c                                         ; $62d1: $a9
    add b                                         ; $62d2: $80
    cp a                                          ; $62d3: $bf
    db $e3                                        ; $62d4: $e3
    sub c                                         ; $62d5: $91
    dec b                                         ; $62d6: $05
    ldh [$9e], a                                  ; $62d7: $e0 $9e
    pop bc                                        ; $62d9: $c1
    ldh [rNR41], a                                ; $62da: $e0 $20
    jr nz, jr_05d_62e8                            ; $62dc: $20 $0a

    dec bc                                        ; $62de: $0b
    jp z, $e8ff                                   ; $62df: $ca $ff $e8

    rst $20                                       ; $62e2: $e7
    add c                                         ; $62e3: $81
    rst $38                                       ; $62e4: $ff
    add b                                         ; $62e5: $80
    add b                                         ; $62e6: $80
    add b                                         ; $62e7: $80

jr_05d_62e8:
    ld a, c                                       ; $62e8: $79
    ld l, [hl]                                    ; $62e9: $6e
    ld d, l                                       ; $62ea: $55
    sbc d                                         ; $62eb: $9a
    sbc b                                         ; $62ec: $98
    and [hl]                                      ; $62ed: $a6
    pop bc                                        ; $62ee: $c1
    db $e4                                        ; $62ef: $e4
    ld a, [bc]                                    ; $62f0: $0a
    dec bc                                        ; $62f1: $0b
    nop                                           ; $62f2: $00
    rst $38                                       ; $62f3: $ff
    ld [$a9e9], a                                 ; $62f4: $ea $e9 $a9
    ret nz                                        ; $62f7: $c0

    ldh [$80], a                                  ; $62f8: $e0 $80
    ld a, a                                       ; $62fa: $7f
    and b                                         ; $62fb: $a0
    ld sp, $9e9e                                  ; $62fc: $31 $9e $9e
    ld sp, $1211                                  ; $62ff: $31 $11 $12
    add d                                         ; $6302: $82
    ldh [$1f], a                                  ; $6303: $e0 $1f
    nop                                           ; $6305: $00
    ld sp, $5d31                                  ; $6306: $31 $31 $5d
    ld e, h                                       ; $6309: $5c
    jp z, $e8ff                                   ; $630a: $ca $ff $e8

    rst $20                                       ; $630d: $e7
    pop bc                                        ; $630e: $c1
    pop hl                                        ; $630f: $e1
    cp h                                          ; $6310: $bc
    ret nz                                        ; $6311: $c0

    ldh [$c2], a                                  ; $6312: $e0 $c2
    ldh [rNR42], a                                ; $6314: $e0 $21
    ld [hl+], a                                   ; $6316: $22
    jr nz, jr_05d_6339                            ; $6317: $20 $20

    ret nz                                        ; $6319: $c0

    ldh [$61], a                                  ; $631a: $e0 $61
    ret                                           ; $631c: $c9


    ld e, e                                       ; $631d: $5b
    nop                                           ; $631e: $00
    rst $18                                       ; $631f: $df
    ret nz                                        ; $6320: $c0

    ldh a, [$2b]                                  ; $6321: $f0 $2b
    jp nz, $42e1                                  ; $6323: $c2 $e1 $42

    pop hl                                        ; $6326: $e1
    ld h, c                                       ; $6327: $61
    ld e, e                                       ; $6328: $5b
    ld bc, $ca5a                                  ; $6329: $01 $5a $ca
    rst $38                                       ; $632c: $ff
    ret nz                                        ; $632d: $c0

    ldh a, [$c6]                                  ; $632e: $f0 $c6
    jp nz, $e142                                  ; $6330: $c2 $42 $e1

    add b                                         ; $6333: $80
    rst $38                                       ; $6334: $ff
    rst $38                                       ; $6335: $ff
    rst $38                                       ; $6336: $ff
    rst $38                                       ; $6337: $ff
    rst $38                                       ; $6338: $ff

jr_05d_6339:
    nop                                           ; $6339: $00
    rst $38                                       ; $633a: $ff
    rst $38                                       ; $633b: $ff
    rst $38                                       ; $633c: $ff
    rst $38                                       ; $633d: $ff
    rst $38                                       ; $633e: $ff
    rst $38                                       ; $633f: $ff
    rst $38                                       ; $6340: $ff
    rst $38                                       ; $6341: $ff
    rst $38                                       ; $6342: $ff
    rst $38                                       ; $6343: $ff
    rst $38                                       ; $6344: $ff
    rst $38                                       ; $6345: $ff
    rst $38                                       ; $6346: $ff
    rst $38                                       ; $6347: $ff
    rst $38                                       ; $6348: $ff
    rst $38                                       ; $6349: $ff
    nop                                           ; $634a: $00
    rst $38                                       ; $634b: $ff
    rst $38                                       ; $634c: $ff
    rst $38                                       ; $634d: $ff
    rst $38                                       ; $634e: $ff
    rst $38                                       ; $634f: $ff
    rst $38                                       ; $6350: $ff
    rst $38                                       ; $6351: $ff
    rst $38                                       ; $6352: $ff
    rst $38                                       ; $6353: $ff
    rst $38                                       ; $6354: $ff
    rst $38                                       ; $6355: $ff
    rst $38                                       ; $6356: $ff
    rst $38                                       ; $6357: $ff
    rst $38                                       ; $6358: $ff
    rst $38                                       ; $6359: $ff
    rst $38                                       ; $635a: $ff
    nop                                           ; $635b: $00
    rst $38                                       ; $635c: $ff
    rst $38                                       ; $635d: $ff
    rst $38                                       ; $635e: $ff
    rst $38                                       ; $635f: $ff
    rst $38                                       ; $6360: $ff
    rst $38                                       ; $6361: $ff
    rst $38                                       ; $6362: $ff
    rst $38                                       ; $6363: $ff
    rst $38                                       ; $6364: $ff
    rst $38                                       ; $6365: $ff
    rst $38                                       ; $6366: $ff
    rst $38                                       ; $6367: $ff
    rst $38                                       ; $6368: $ff
    rst $38                                       ; $6369: $ff
    rst $38                                       ; $636a: $ff
    rst $38                                       ; $636b: $ff
    nop                                           ; $636c: $00
    rst $38                                       ; $636d: $ff
    rst $38                                       ; $636e: $ff
    rst $38                                       ; $636f: $ff
    rst $38                                       ; $6370: $ff
    rst $38                                       ; $6371: $ff
    rst $38                                       ; $6372: $ff
    rst $38                                       ; $6373: $ff
    rst $38                                       ; $6374: $ff
    rst $38                                       ; $6375: $ff
    rst $38                                       ; $6376: $ff
    rst $38                                       ; $6377: $ff
    rst $38                                       ; $6378: $ff
    rst $38                                       ; $6379: $ff
    rst $38                                       ; $637a: $ff
    rst $38                                       ; $637b: $ff
    rst $38                                       ; $637c: $ff
    nop                                           ; $637d: $00
    rst $38                                       ; $637e: $ff
    rst $38                                       ; $637f: $ff
    rst $38                                       ; $6380: $ff
    rst $38                                       ; $6381: $ff
    rst $38                                       ; $6382: $ff
    rst $38                                       ; $6383: $ff
    rst $38                                       ; $6384: $ff
    rst $38                                       ; $6385: $ff
    rst $38                                       ; $6386: $ff
    rst $38                                       ; $6387: $ff
    rst $38                                       ; $6388: $ff
    rst $38                                       ; $6389: $ff
    rst $38                                       ; $638a: $ff
    rst $38                                       ; $638b: $ff
    rst $38                                       ; $638c: $ff
    rst $38                                       ; $638d: $ff
    nop                                           ; $638e: $00
    rst $38                                       ; $638f: $ff
    rst $38                                       ; $6390: $ff
    rst $38                                       ; $6391: $ff
    rst $38                                       ; $6392: $ff
    rst $38                                       ; $6393: $ff
    rst $38                                       ; $6394: $ff
    rst $38                                       ; $6395: $ff
    rst $38                                       ; $6396: $ff
    rst $38                                       ; $6397: $ff
    rst $38                                       ; $6398: $ff
    rst $38                                       ; $6399: $ff
    rst $38                                       ; $639a: $ff
    rst $38                                       ; $639b: $ff
    rst $38                                       ; $639c: $ff
    rst $38                                       ; $639d: $ff
    rst $38                                       ; $639e: $ff
    nop                                           ; $639f: $00
    rst $38                                       ; $63a0: $ff
    rst $38                                       ; $63a1: $ff
    rst $38                                       ; $63a2: $ff
    rst $38                                       ; $63a3: $ff
    rst $38                                       ; $63a4: $ff
    rst $38                                       ; $63a5: $ff
    rst $38                                       ; $63a6: $ff
    rst $38                                       ; $63a7: $ff
    rst $38                                       ; $63a8: $ff
    rst $38                                       ; $63a9: $ff
    rst $38                                       ; $63aa: $ff
    rst $38                                       ; $63ab: $ff
    rst $38                                       ; $63ac: $ff
    rst $38                                       ; $63ad: $ff
    rst $38                                       ; $63ae: $ff
    rst $38                                       ; $63af: $ff
    nop                                           ; $63b0: $00
    rst $38                                       ; $63b1: $ff
    rst $38                                       ; $63b2: $ff
    rst $38                                       ; $63b3: $ff
    rst $38                                       ; $63b4: $ff
    rst $38                                       ; $63b5: $ff
    rst $38                                       ; $63b6: $ff
    rst $38                                       ; $63b7: $ff
    rst $38                                       ; $63b8: $ff
    rst $38                                       ; $63b9: $ff
    rst $38                                       ; $63ba: $ff
    rst $38                                       ; $63bb: $ff
    rst $38                                       ; $63bc: $ff
    rst $38                                       ; $63bd: $ff
    rst $38                                       ; $63be: $ff
    rst $38                                       ; $63bf: $ff
    rst $38                                       ; $63c0: $ff
    nop                                           ; $63c1: $00
    rst $38                                       ; $63c2: $ff
    rst $38                                       ; $63c3: $ff
    rst $38                                       ; $63c4: $ff
    rst $38                                       ; $63c5: $ff
    rst $38                                       ; $63c6: $ff
    rst $38                                       ; $63c7: $ff
    rst $38                                       ; $63c8: $ff
    rst $38                                       ; $63c9: $ff
    rst $38                                       ; $63ca: $ff
    rst $38                                       ; $63cb: $ff
    rst $38                                       ; $63cc: $ff
    rst $38                                       ; $63cd: $ff
    rst $38                                       ; $63ce: $ff
    rst $38                                       ; $63cf: $ff
    rst $38                                       ; $63d0: $ff
    rst $38                                       ; $63d1: $ff
    nop                                           ; $63d2: $00
    rst $38                                       ; $63d3: $ff
    rst $38                                       ; $63d4: $ff
    rst $38                                       ; $63d5: $ff
    rst $38                                       ; $63d6: $ff
    rst $38                                       ; $63d7: $ff
    rst $38                                       ; $63d8: $ff
    rst $38                                       ; $63d9: $ff
    rst $38                                       ; $63da: $ff
    rst $38                                       ; $63db: $ff
    rst $38                                       ; $63dc: $ff
    rst $38                                       ; $63dd: $ff
    rst $38                                       ; $63de: $ff
    rst $38                                       ; $63df: $ff
    rst $38                                       ; $63e0: $ff
    rst $38                                       ; $63e1: $ff
    rst $38                                       ; $63e2: $ff
    nop                                           ; $63e3: $00
    rst $38                                       ; $63e4: $ff
    rst $38                                       ; $63e5: $ff
    rst $38                                       ; $63e6: $ff
    rst $38                                       ; $63e7: $ff
    rst $38                                       ; $63e8: $ff
    rst $38                                       ; $63e9: $ff
    rst $38                                       ; $63ea: $ff
    rst $38                                       ; $63eb: $ff
    rst $38                                       ; $63ec: $ff
    rst $38                                       ; $63ed: $ff
    rst $38                                       ; $63ee: $ff
    rst $38                                       ; $63ef: $ff
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    rst $38                                       ; $63f2: $ff
    rst $38                                       ; $63f3: $ff
    nop                                           ; $63f4: $00
    rst $38                                       ; $63f5: $ff
    push af                                       ; $63f6: $f5
    nop                                           ; $63f7: $00
    nop                                           ; $63f8: $00
    nop                                           ; $63f9: $00
    and l                                         ; $63fa: $a5
    nop                                           ; $63fb: $00
    rst $38                                       ; $63fc: $ff
    push hl                                       ; $63fd: $e5
    ld [hl-], a                                   ; $63fe: $32
    or $e6                                        ; $63ff: $f6 $e6
    rst $30                                       ; $6401: $f7
    rst $20                                       ; $6402: $e7
    dec [hl]                                      ; $6403: $35
    db $ec                                        ; $6404: $ec
    xor $37                                       ; $6405: $ee $37
    db $ec                                        ; $6407: $ec
    jp c, $c7f0                                   ; $6408: $da $f0 $c7

    add sp, $33                                   ; $640b: $e8 $33
    ld sp, $f2e0                                  ; $640d: $31 $e0 $f2
    ld [hl], $30                                  ; $6410: $36 $30
    scf                                           ; $6412: $37
    cp a                                          ; $6413: $bf
    ld h, $20                                     ; $6414: $26 $20
    daa                                           ; $6416: $27
    db $10                                        ; $6417: $10
    ld d, $17                                     ; $6418: $16 $17
    jp nz, Jump_000_34f6                          ; $641a: $c2 $f6 $34

    rst $38                                       ; $641d: $ff
    ld [hl], $32                                  ; $641e: $36 $32
    jr nc, jr_05d_6459                            ; $6420: $30 $37

    ld sp, $3133                                  ; $6422: $31 $33 $31
    inc sp                                        ; $6425: $33
    nop                                           ; $6426: $00
    and b                                         ; $6427: $a0
    ei                                            ; $6428: $fb
    rst $38                                       ; $6429: $ff
    rst $28                                       ; $642a: $ef
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    nop                                           ; $642d: $00
    ld [hl], $64                                  ; $642e: $36 $64
    ld h, [hl]                                    ; $6430: $66
    ld h, h                                       ; $6431: $64
    ld hl, sp+$65                                 ; $6432: $f8 $65
    ret c                                         ; $6434: $d8

    ld h, a                                       ; $6435: $67
    or b                                          ; $6436: $b0
    inc bc                                        ; $6437: $03
    adc [hl]                                      ; $6438: $8e

jr_05d_6439:
    ld [bc], a                                    ; $6439: $02
    ld d, b                                       ; $643a: $50
    ld bc, $04aa                                  ; $643b: $01 $aa $04
    ld c, l                                       ; $643e: $4d
    inc bc                                        ; $643f: $03
    or b                                          ; $6440: $b0
    inc bc                                        ; $6441: $03
    adc [hl]                                      ; $6442: $8e
    ld [bc], a                                    ; $6443: $02
    ld d, b                                       ; $6444: $50
    ld bc, $7f48                                  ; $6445: $01 $48 $7f
    ld c, b                                       ; $6448: $48
    ld a, a                                       ; $6449: $7f
    ld c, b                                       ; $644a: $48
    ld a, a                                       ; $644b: $7f
    ld c, b                                       ; $644c: $48
    ld a, a                                       ; $644d: $7f
    ld e, a                                       ; $644e: $5f
    ld e, e                                       ; $644f: $5b
    ret z                                         ; $6450: $c8

    inc bc                                        ; $6451: $03
    ld d, b                                       ; $6452: $50
    ld bc, $04aa                                  ; $6453: $01 $aa $04
    ld [hl], h                                    ; $6456: $74
    nop                                           ; $6457: $00
    ccf                                           ; $6458: $3f

jr_05d_6459:
    ld bc, $02bf                                  ; $6459: $01 $bf $02
    ld l, d                                       ; $645c: $6a
    inc b                                         ; $645d: $04
    ld [$0825], sp                                ; $645e: $08 $25 $08
    dec h                                         ; $6461: $25
    ld [$0825], sp                                ; $6462: $08 $25 $08
    dec h                                         ; $6465: $25
    rst $30                                       ; $6466: $f7
    dec hl                                        ; $6467: $2b
    ld a, [bc]                                    ; $6468: $0a
    dec bc                                        ; $6469: $0b
    rst $38                                       ; $646a: $ff
    ld [c], a                                     ; $646b: $e2
    ld c, e                                       ; $646c: $4b
    dec hl                                        ; $646d: $2b
    dec hl                                        ; $646e: $2b
    ld c, e                                       ; $646f: $4b
    ld a, a                                       ; $6470: $7f
    ld c, e                                       ; $6471: $4b
    dec bc                                        ; $6472: $0b
    dec bc                                        ; $6473: $0b
    dec hl                                        ; $6474: $2b
    dec hl                                        ; $6475: $2b
    ld a, [bc]                                    ; $6476: $0a
    ld a, [bc]                                    ; $6477: $0a
    xor $e4                                       ; $6478: $ee $e4
    ld c, b                                       ; $647a: $48
    rst $38                                       ; $647b: $ff
    rst $38                                       ; $647c: $ff
    add $e1                                       ; $647d: $c6 $e1
    pop bc                                        ; $647f: $c1
    db $e3                                        ; $6480: $e3
    ld c, e                                       ; $6481: $4b
    pop bc                                        ; $6482: $c1
    ldh [$fe], a                                  ; $6483: $e0 $fe
    ldh [rOCPD], a                                ; $6485: $e0 $6b
    cp a                                          ; $6487: $bf
    pop hl                                        ; $6488: $e1
    jr jr_05d_6439                                ; $6489: $18 $ae

Jump_05d_648b:
    push hl                                       ; $648b: $e5
    rst $38                                       ; $648c: $ff
    rst $38                                       ; $648d: $ff
    push hl                                       ; $648e: $e5
    db $e4                                        ; $648f: $e4
    ld l, e                                       ; $6490: $6b
    ld l, e                                       ; $6491: $6b
    add a                                         ; $6492: $87
    pop hl                                        ; $6493: $e1
    ld a, c                                       ; $6494: $79
    pop hl                                        ; $6495: $e1
    cp a                                          ; $6496: $bf
    pop hl                                        ; $6497: $e1
    db $10                                        ; $6498: $10
    ld a, l                                       ; $6499: $7d
    ldh [$cd], a                                  ; $649a: $e0 $cd
    rst $38                                       ; $649c: $ff
    ld [$85e9], a                                 ; $649d: $ea $e9 $85
    db $e3                                        ; $64a0: $e3
    dec hl                                        ; $64a1: $2b
    jp Jump_000_3ce2                              ; $64a2: $c3 $e2 $3c


    ld [c], a                                     ; $64a5: $e2
    add hl, sp                                    ; $64a6: $39
    ldh [$30], a                                  ; $64a7: $e0 $30
    rst $38                                       ; $64a9: $ff
    rst $38                                       ; $64aa: $ff
    pop bc                                        ; $64ab: $c1
    db $ed                                        ; $64ac: $ed
    ret nz                                        ; $64ad: $c0

    ldh [$c8], a                                  ; $64ae: $e0 $c8
    ld [c], a                                     ; $64b0: $e2
    dec hl                                        ; $64b1: $2b
    ld c, e                                       ; $64b2: $4b
    ld hl, sp-$1d                                 ; $64b3: $f8 $e3
    rst $38                                       ; $64b5: $ff
    rst $38                                       ; $64b6: $ff
    nop                                           ; $64b7: $00
    add c                                         ; $64b8: $81
    rst $20                                       ; $64b9: $e7
    inc bc                                        ; $64ba: $03
    ld [c], a                                     ; $64bb: $e2
    ret nz                                        ; $64bc: $c0

    db $e4                                        ; $64bd: $e4
    add d                                         ; $64be: $82
    rst $38                                       ; $64bf: $ff
    xor $ed                                       ; $64c0: $ee $ed
    adc [hl]                                      ; $64c2: $8e
    pop hl                                        ; $64c3: $e1
    ld b, b                                       ; $64c4: $40
    ld [c], a                                     ; $64c5: $e2
    ld [$00e3], sp                                ; $64c6: $08 $e3 $00
    ld a, d                                       ; $64c9: $7a
    pop bc                                        ; $64ca: $c1
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    ret nz                                        ; $64cd: $c0

    jp hl                                         ; $64ce: $e9


    add l                                         ; $64cf: $85
    ret nz                                        ; $64d0: $c0

    ld b, d                                       ; $64d1: $42
    ret nz                                        ; $64d2: $c0

    add b                                         ; $64d3: $80
    push hl                                       ; $64d4: $e5
    ld a, a                                       ; $64d5: $7f
    rst $38                                       ; $64d6: $ff
    ret nz                                        ; $64d7: $c0

    xor $02                                       ; $64d8: $ee $02
    ld b, d                                       ; $64da: $42
    ret nz                                        ; $64db: $c0

    ld c, e                                       ; $64dc: $4b
    nop                                           ; $64dd: $00
    pop hl                                        ; $64de: $e1
    rst $38                                       ; $64df: $ff
    jp $df81                                      ; $64e0: $c3 $81 $df


    ld b, d                                       ; $64e3: $42
    ld [$e3cd], a                                 ; $64e4: $ea $cd $e3
    ld a, a                                       ; $64e7: $7f

jr_05d_64e8:
    ld [c], a                                     ; $64e8: $e2
    ld [$e1c5], sp                                ; $64e9: $08 $c5 $e1
    jp nz, $c0df                                  ; $64ec: $c2 $df $c0

    ldh a, [rWX]                                  ; $64ef: $f0 $4b
    ret nz                                        ; $64f1: $c0

    and d                                         ; $64f2: $a2
    halt                                          ; $64f3: $76
    pop hl                                        ; $64f4: $e1
    ld hl, sp-$5d                                 ; $64f5: $f8 $a3
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    add b                                         ; $64f9: $80
    jp nz, $8cc7                                  ; $64fa: $c2 $c7 $8c

    and b                                         ; $64fd: $a0
    ld c, l                                       ; $64fe: $4d
    ret nz                                        ; $64ff: $c0

    ld a, l                                       ; $6500: $7d
    call nz, $a0fa                                ; $6501: $c4 $fa $a0
    call Call_05d_40ff                            ; $6504: $cd $ff $40
    xor e                                         ; $6507: $ab
    ld l, e                                       ; $6508: $6b
    nop                                           ; $6509: $00
    add c                                         ; $650a: $81
    ld [c], a                                     ; $650b: $e2
    ret nz                                        ; $650c: $c0

    rst $38                                       ; $650d: $ff
    add d                                         ; $650e: $82
    sub $7f                                       ; $650f: $d6 $7f
    jp nz, $a27e                                  ; $6511: $c2 $7e $a2

    ld a, [hl-]                                   ; $6514: $3a
    and h                                         ; $6515: $a4
    rst $38                                       ; $6516: $ff
    rst $38                                       ; $6517: $ff
    ret nz                                        ; $6518: $c0

    adc c                                         ; $6519: $89
    jr c, jr_05d_64e8                             ; $651a: $38 $cc

    pop bc                                        ; $651c: $c1
    jp nz, $fae4                                  ; $651d: $c2 $e4 $fa

    add c                                         ; $6520: $81
    ld c, e                                       ; $6521: $4b
    dec bc                                        ; $6522: $0b
    ld l, e                                       ; $6523: $6b
    cp e                                          ; $6524: $bb
    rst $38                                       ; $6525: $ff
    add b                                         ; $6526: $80
    adc c                                         ; $6527: $89
    add hl, sp                                    ; $6528: $39
    ld a, [bc]                                    ; $6529: $0a
    ld c, d                                       ; $652a: $4a
    add d                                         ; $652b: $82
    call z, Call_05d_4be5                         ; $652c: $cc $e5 $4b
    ld c, e                                       ; $652f: $4b
    ld l, e                                       ; $6530: $6b
    ld b, b                                       ; $6531: $40
    sbc a                                         ; $6532: $9f
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    nop                                           ; $6535: $00
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    rst $38                                       ; $6540: $ff
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    rst $38                                       ; $6543: $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    nop                                           ; $6546: $00
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
    rst $38                                       ; $6551: $ff
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff
    rst $38                                       ; $6556: $ff
    nop                                           ; $6557: $00
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
    rst $38                                       ; $6562: $ff
    rst $38                                       ; $6563: $ff
    rst $38                                       ; $6564: $ff
    rst $38                                       ; $6565: $ff
    rst $38                                       ; $6566: $ff
    rst $38                                       ; $6567: $ff
    nop                                           ; $6568: $00
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
    rst $38                                       ; $6573: $ff
    rst $38                                       ; $6574: $ff
    rst $38                                       ; $6575: $ff
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    nop                                           ; $6579: $00
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
    rst $38                                       ; $6584: $ff
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    nop                                           ; $658a: $00
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
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    nop                                           ; $659b: $00
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
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    nop                                           ; $65ac: $00
    rst $38                                       ; $65ad: $ff
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
    rst $38                                       ; $65bb: $ff
    rst $38                                       ; $65bc: $ff
    nop                                           ; $65bd: $00
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
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    nop                                           ; $65ce: $00
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
    rst $38                                       ; $65dd: $ff
    rst $38                                       ; $65de: $ff
    nop                                           ; $65df: $00
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
    rst $38                                       ; $65ee: $ff
    rst $38                                       ; $65ef: $ff
    nop                                           ; $65f0: $00
    rst $38                                       ; $65f1: $ff
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    push af                                       ; $65f4: $f5
    nop                                           ; $65f5: $00
    nop                                           ; $65f6: $00
    nop                                           ; $65f7: $00
    rst $38                                       ; $65f8: $ff
    add hl, hl                                    ; $65f9: $29
    jr z, jr_05d_6626                             ; $65fa: $28 $2a

    dec hl                                        ; $65fc: $2b
    jr nc, jr_05d_662f                            ; $65fd: $30 $30

    ld bc, $ff01                                  ; $65ff: $01 $01 $ff
    ld b, d                                       ; $6602: $42
    inc a                                         ; $6603: $3c
    inc a                                         ; $6604: $3c
    ld b, e                                       ; $6605: $43
    ld b, h                                       ; $6606: $44
    ld bc, $2e01                                  ; $6607: $01 $01 $2e
    sbc a                                         ; $660a: $9f
    add hl, hl                                    ; $660b: $29
    jr z, jr_05d_6636                             ; $660c: $28 $28

    jr z, jr_05d_6610                             ; $660e: $28 $00

jr_05d_6610:
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $20                                       ; $6612: $e7
    and $28                                       ; $6613: $e6 $28
    sra [hl]                                      ; $6615: $cb $2e
    ld bc, $e0ff                                  ; $6617: $01 $ff $e0
    ld c, e                                       ; $661a: $4b
    pop bc                                        ; $661b: $c1
    ldh [$fe], a                                  ; $661c: $e0 $fe
    ldh [rSCY], a                                 ; $661e: $e0 $42
    ld bc, $018f                                  ; $6620: $01 $8f $01
    dec hl                                        ; $6623: $2b
    ld a, [hl+]                                   ; $6624: $2a
    add hl, hl                                    ; $6625: $29

jr_05d_6626:
    ret nz                                        ; $6626: $c0

    rst $38                                       ; $6627: $ff
    jp hl                                         ; $6628: $e9


    add sp, -$3f                                  ; $6629: $e8 $c1
    ldh [rLY], a                                  ; $662b: $e0 $44
    rst $18                                       ; $662d: $df
    ld b, e                                       ; $662e: $43

jr_05d_662f:
    ld c, c                                       ; $662f: $49
    ld b, l                                       ; $6630: $45
    ld b, a                                       ; $6631: $47
    ld b, l                                       ; $6632: $45
    db $fc                                        ; $6633: $fc
    ldh [rBGP], a                                 ; $6634: $e0 $47

jr_05d_6636:
    ld b, l                                       ; $6636: $45
    ldh [$bf], a                                  ; $6637: $e0 $bf
    ldh [$7d], a                                  ; $6639: $e0 $7d
    ldh [$ca], a                                  ; $663b: $e0 $ca
    rst $38                                       ; $663d: $ff
    add sp, -$19                                  ; $663e: $e8 $e7
    ld b, [hl]                                    ; $6640: $46
    ld [c], a                                     ; $6641: $e2
    ld b, c                                       ; $6642: $41
    dec sp                                        ; $6643: $3b
    dec sp                                        ; $6644: $3b
    rst $38                                       ; $6645: $ff
    dec sp                                        ; $6646: $3b
    scf                                           ; $6647: $37
    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    scf                                           ; $664a: $37
    dec sp                                        ; $664b: $3b
    ld b, [hl]                                    ; $664c: $46
    ld d, $4f                                     ; $664d: $16 $4f
    rla                                           ; $664f: $17
    ld bc, $2d01                                  ; $6650: $01 $01 $2d
    jp z, $c0ff                                   ; $6653: $ca $ff $c0

    add sp, $3f                                   ; $6656: $e8 $3f

jr_05d_6658:
    pop bc                                        ; $6658: $c1
    db $e3                                        ; $6659: $e3
    ld a, [hl]                                    ; $665a: $7e
    ret nz                                        ; $665b: $c0

    db $e3                                        ; $665c: $e3
    dec sp                                        ; $665d: $3b
    dec sp                                        ; $665e: $3b
    inc e                                         ; $665f: $1c
    add hl, de                                    ; $6660: $19
    ld bc, $ca2c                                  ; $6661: $01 $2c $ca
    rst $38                                       ; $6664: $ff
    sbc $80                                       ; $6665: $de $80
    add sp, $3d                                   ; $6667: $e8 $3d
    inc a                                         ; $6669: $3c
    ld a, $38                                     ; $666a: $3e $38
    ret nz                                        ; $666c: $c0

    add sp, $3b                                   ; $666d: $e8 $3b
    add hl, bc                                    ; $666f: $09
    di                                            ; $6670: $f3
    ld bc, $ca01                                  ; $6671: $01 $01 $ca
    rst $38                                       ; $6674: $ff
    ld b, b                                       ; $6675: $40
    add sp, $4a                                   ; $6676: $e8 $4a
    inc a                                         ; $6678: $3c
    ld b, b                                       ; $6679: $40
    nop                                           ; $667a: $00
    call z, $e1bf                                 ; $667b: $cc $bf $e1
    ret nz                                        ; $667e: $c0

    push hl                                       ; $667f: $e5
    jr jr_05d_669b                                ; $6680: $18 $19

    ret nz                                        ; $6682: $c0

    rst $38                                       ; $6683: $ff
    nop                                           ; $6684: $00
    jp hl                                         ; $6685: $e9


    ld b, d                                       ; $6686: $42
    ld a, $80                                     ; $6687: $3e $80
    db $db                                        ; $6689: $db
    ldh [$7e], a                                  ; $668a: $e0 $7e
    ldh [rP1], a                                  ; $668c: $e0 $00
    ldh [$78], a                                  ; $668e: $e0 $78
    ld [c], a                                     ; $6690: $e2
    ld a, a                                       ; $6691: $7f
    ldh [$ca], a                                  ; $6692: $e0 $ca
    rst $38                                       ; $6694: $ff
    ret nz                                        ; $6695: $c0

    ret                                           ; $6696: $c9


    add hl, bc                                    ; $6697: $09
    xor $db                                       ; $6698: $ee $db
    pop hl                                        ; $669a: $e1

jr_05d_669b:
    jr c, @+$3d                                   ; $669b: $38 $3b

    jr c, jr_05d_6658                             ; $669d: $38 $b9

    db $e3                                        ; $669f: $e3
    dec sp                                        ; $66a0: $3b
    nop                                           ; $66a1: $00
    jr nz, jr_05d_66e0                            ; $66a2: $20 $3c

    ret nz                                        ; $66a4: $c0

    rst $38                                       ; $66a5: $ff
    jp hl                                         ; $66a6: $e9


    add sp, $2c                                   ; $66a7: $e8 $2c
    ld bc, $403f                                  ; $66a9: $01 $3f $40
    ld a, a                                       ; $66ac: $7f
    db $e3                                        ; $66ad: $e3
    cp a                                          ; $66ae: $bf
    db $e3                                        ; $66af: $e3
    di                                            ; $66b0: $f3
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    add b                                         ; $66b3: $80
    rst $38                                       ; $66b4: $ff
    ld [$2de9], a                                 ; $66b5: $ea $e9 $2d
    ld bc, $2001                                  ; $66b8: $01 $01 $20
    call z, $e486                                 ; $66bb: $cc $86 $e4
    ld a, [hl]                                    ; $66be: $7e
    pop hl                                        ; $66bf: $e1
    scf                                           ; $66c0: $37
    nop                                           ; $66c1: $00
    nop                                           ; $66c2: $00
    rst $38                                       ; $66c3: $ff
    db $eb                                        ; $66c4: $eb
    ld [$2f29], a                                 ; $66c5: $ea $29 $2f
    ldh [$c0], a                                  ; $66c8: $e0 $c0
    and $fd                                       ; $66ca: $e6 $fd
    and d                                         ; $66cc: $a2
    add c                                         ; $66cd: $81
    ldh [$c0], a                                  ; $66ce: $e0 $c0
    rst $38                                       ; $66d0: $ff
    ld b, b                                       ; $66d1: $40
    xor c                                         ; $66d2: $a9
    cpl                                           ; $66d3: $2f
    ld bc, $9909                                  ; $66d4: $01 $09 $99
    jr c, @+$01                                   ; $66d7: $38 $ff

    ldh [$fd], a                                  ; $66d9: $e0 $fd
    and l                                         ; $66db: $a5
    rrca                                          ; $66dc: $0f
    rlca                                          ; $66dd: $07
    nop                                           ; $66de: $00
    rst $18                                       ; $66df: $df

jr_05d_66e0:
    add b                                         ; $66e0: $80
    ld [$f72c], a                                 ; $66e1: $ea $2c $f7
    ld bc, $1819                                  ; $66e4: $01 $19 $18
    adc b                                         ; $66e7: $88
    jp nz, Jump_000_063b                          ; $66e8: $c2 $3b $06

    ld [hl+], a                                   ; $66eb: $22
    ld [hl+], a                                   ; $66ec: $22
    rst $00                                       ; $66ed: $c7
    ld b, $06                                     ; $66ee: $06 $06
    rlca                                          ; $66f0: $07
    add b                                         ; $66f1: $80
    cp a                                          ; $66f2: $bf
    ret nz                                        ; $66f3: $c0

    adc e                                         ; $66f4: $8b
    rst $38                                       ; $66f5: $ff
    ret nz                                        ; $66f6: $c0

    inc c                                         ; $66f7: $0c
    ld b, $0a                                     ; $66f8: $06 $0a
    jp nz, $15e1                                  ; $66fa: $c2 $e1 $15

    ld b, l                                       ; $66fd: $45
    and b                                         ; $66fe: $a0
    rla                                           ; $66ff: $17
    ld b, c                                       ; $6700: $41
    and b                                         ; $6701: $a0
    nop                                           ; $6702: $00
    cp a                                          ; $6703: $bf
    add b                                         ; $6704: $80
    adc d                                         ; $6705: $8a
    ld a, a                                       ; $6706: $7f
    add c                                         ; $6707: $81
    daa                                           ; $6708: $27
    rla                                           ; $6709: $17
    dec d                                         ; $670a: $15
    inc hl                                        ; $670b: $23
    jp nz, $fee1                                  ; $670c: $c2 $e1 $fe

    ld [c], a                                     ; $670f: $e2
    ld l, $40                                     ; $6710: $2e $40
    sbc a                                         ; $6712: $9f
    rst $38                                       ; $6713: $ff
    rst $38                                       ; $6714: $ff
    nop                                           ; $6715: $00
    rst $38                                       ; $6716: $ff
    rst $38                                       ; $6717: $ff
    rst $38                                       ; $6718: $ff
    rst $38                                       ; $6719: $ff
    rst $38                                       ; $671a: $ff
    rst $38                                       ; $671b: $ff
    rst $38                                       ; $671c: $ff
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    rst $38                                       ; $6723: $ff
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    nop                                           ; $6726: $00
    rst $38                                       ; $6727: $ff
    rst $38                                       ; $6728: $ff
    rst $38                                       ; $6729: $ff
    rst $38                                       ; $672a: $ff
    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
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

Jump_05d_674f:
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
    push af                                       ; $67d4: $f5
    nop                                           ; $67d5: $00
    nop                                           ; $67d6: $00
    nop                                           ; $67d7: $00
    ld sp, hl                                     ; $67d8: $f9
    nop                                           ; $67d9: $00
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    xor $ed                                       ; $67dc: $ee $ed
    ld [hl], $30                                  ; $67de: $36 $30
    scf                                           ; $67e0: $37
    ld h, $20                                     ; $67e1: $26 $20
    cpl                                           ; $67e3: $2f
    daa                                           ; $67e4: $27
    db $10                                        ; $67e5: $10
    ld d, $17                                     ; $67e6: $16 $17
    push de                                       ; $67e8: $d5
    rst $28                                       ; $67e9: $ef
    ld de, $e0ff                                  ; $67ea: $11 $ff $e0
    cp a                                          ; $67ed: $bf
    rst $38                                       ; $67ee: $ff
    nop                                           ; $67ef: $00
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff
    rst $38                                       ; $67f4: $ff
    push hl                                       ; $67f5: $e5
    nop                                           ; $67f6: $00
    nop                                           ; $67f7: $00
    nop                                           ; $67f8: $00
    ld bc, $3168                                  ; $67f9: $01 $68 $31
    ld l, b                                       ; $67fc: $68
    and l                                         ; $67fd: $a5
    ld l, d                                       ; $67fe: $6a
    ld l, b                                       ; $67ff: $68
    ld l, h                                       ; $6800: $6c
    db $ec                                        ; $6801: $ec
    dec hl                                        ; $6802: $2b
    ld [hl+], a                                   ; $6803: $22
    dec sp                                        ; $6804: $3b
    ld b, b                                       ; $6805: $40
    ld [hl+], a                                   ; $6806: $22
    nop                                           ; $6807: $00
    add hl, bc                                    ; $6808: $09
    and l                                         ; $6809: $a5
    ld b, e                                       ; $680a: $43
    xor $37                                       ; $680b: $ee $37
    ld [hl+], a                                   ; $680d: $22
    dec sp                                        ; $680e: $3b
    ld b, b                                       ; $680f: $40
    ld [hl+], a                                   ; $6810: $22
    ccf                                           ; $6811: $3f
    ld a, a                                       ; $6812: $7f
    rla                                           ; $6813: $17
    ld e, [hl]                                    ; $6814: $5e
    ld de, $2249                                  ; $6815: $11 $49 $22
    dec sp                                        ; $6818: $3b
    ld [$0825], sp                                ; $6819: $08 $25 $08
    dec h                                         ; $681c: $25
    ld [$0825], sp                                ; $681d: $08 $25 $08
    dec h                                         ; $6820: $25
    ld [$0825], sp                                ; $6821: $08 $25 $08
    dec h                                         ; $6824: $25
    ld [$0825], sp                                ; $6825: $08 $25 $08
    dec h                                         ; $6828: $25
    ld [$0825], sp                                ; $6829: $08 $25 $08
    dec h                                         ; $682c: $25
    ld [$0825], sp                                ; $682d: $08 $25 $08
    dec h                                         ; $6830: $25
    ld e, a                                       ; $6831: $5f
    inc c                                         ; $6832: $0c
    inc l                                         ; $6833: $2c
    inc l                                         ; $6834: $2c
    inc c                                         ; $6835: $0c
    dec bc                                        ; $6836: $0b
    rst $38                                       ; $6837: $ff
    ld [c], a                                     ; $6838: $e2
    dec hl                                        ; $6839: $2b
    db $fd                                        ; $683a: $fd
    pop hl                                        ; $683b: $e1
    push af                                       ; $683c: $f5
    ld a, [bc]                                    ; $683d: $0a
    db $f4                                        ; $683e: $f4
    pop hl                                        ; $683f: $e1
    inc c                                         ; $6840: $0c
    rst $38                                       ; $6841: $ff
    pop hl                                        ; $6842: $e1
    ld c, h                                       ; $6843: $4c
    ld c, h                                       ; $6844: $4c
    inc c                                         ; $6845: $0c
    ld c, h                                       ; $6846: $4c
    add $e3                                       ; $6847: $c6 $e3
    pop hl                                        ; $6849: $e1
    inc c                                         ; $684a: $0c
    inc l                                         ; $684b: $2c
    cp $e0                                        ; $684c: $fe $e0
    rst $38                                       ; $684e: $ff
    ld hl, sp-$40                                 ; $684f: $f8 $c0
    ld [c], a                                     ; $6851: $e2
    ld l, e                                       ; $6852: $6b
    ld l, e                                       ; $6853: $6b
    pop de                                        ; $6854: $d1
    ld c, e                                       ; $6855: $4b
    rst $38                                       ; $6856: $ff
    ldh [$b8], a                                  ; $6857: $e0 $b8
    db $e3                                        ; $6859: $e3
    ret nz                                        ; $685a: $c0

    add sp, $2c                                   ; $685b: $e8 $2c
    ret nz                                        ; $685d: $c0

    ld [c], a                                     ; $685e: $e2
    inc l                                         ; $685f: $2c
    inc l                                         ; $6860: $2c
    ld b, h                                       ; $6861: $44
    or l                                          ; $6862: $b5
    ei                                            ; $6863: $fb
    add c                                         ; $6864: $81
    ldh [rWX], a                                  ; $6865: $e0 $4b
    add e                                         ; $6867: $83
    ldh [$7f], a                                  ; $6868: $e0 $7f
    pop hl                                        ; $686a: $e1
    ret nz                                        ; $686b: $c0

    rst $20                                       ; $686c: $e7
    ld c, h                                       ; $686d: $4c
    ld a, [hl]                                    ; $686e: $7e
    pop hl                                        ; $686f: $e1
    ld b, b                                       ; $6870: $40
    add c                                         ; $6871: $81
    pop hl                                        ; $6872: $e1
    ret nz                                        ; $6873: $c0

    db $e4                                        ; $6874: $e4
    or l                                          ; $6875: $b5
    push hl                                       ; $6876: $e5
    add b                                         ; $6877: $80
    rst $28                                       ; $6878: $ef
    ld b, c                                       ; $6879: $41
    db $e4                                        ; $687a: $e4
    ret nz                                        ; $687b: $c0

    and $0a                                       ; $687c: $e6 $0a
    ld b, b                                       ; $687e: $40
    add sp, $02                                   ; $687f: $e8 $02
    pop bc                                        ; $6881: $c1
    db $e3                                        ; $6882: $e3
    inc l                                         ; $6883: $2c
    or l                                          ; $6884: $b5
    add sp, -$7f                                  ; $6885: $e8 $81
    ld a, [c]                                     ; $6887: $f2
    ret nz                                        ; $6888: $c0

    ld [$e780], a                                 ; $6889: $ea $80 $e7
    cp a                                          ; $688c: $bf
    db $e3                                        ; $688d: $e3
    ld [hl], e                                    ; $688e: $73
    ld [c], a                                     ; $688f: $e2
    ld d, b                                       ; $6890: $50
    or l                                          ; $6891: $b5
    rst $20                                       ; $6892: $e7
    rst $28                                       ; $6893: $ef
    pop bc                                        ; $6894: $c1
    add a                                         ; $6895: $87
    db $e4                                        ; $6896: $e4
    ld b, c                                       ; $6897: $41
    and $6b                                       ; $6898: $e6 $6b
    ld b, $e4                                     ; $689a: $06 $e4
    ld l, e                                       ; $689c: $6b
    ret nz                                        ; $689d: $c0

    call z, Call_05d_7f10                         ; $689e: $cc $10 $7f
    pop hl                                        ; $68a1: $e1
    add b                                         ; $68a2: $80
    db $e3                                        ; $68a3: $e3
    or l                                          ; $68a4: $b5
    and $01                                       ; $68a5: $e6 $01
    pop af                                        ; $68a7: $f1
    ld l, e                                       ; $68a8: $6b
    dec b                                         ; $68a9: $05
    rst $20                                       ; $68aa: $e7
    ret nz                                        ; $68ab: $c0

    set 0, b                                      ; $68ac: $cb $c0
    push hl                                       ; $68ae: $e5
    inc d                                         ; $68af: $14
    or l                                          ; $68b0: $b5
    jp hl                                         ; $68b1: $e9


    ret nz                                        ; $68b2: $c0

    pop af                                        ; $68b3: $f1
    dec hl                                        ; $68b4: $2b
    push bc                                       ; $68b5: $c5
    jp nz, $be4b                                  ; $68b6: $c2 $4b $be

    push bc                                       ; $68b9: $c5
    ret nz                                        ; $68ba: $c0

    add $48                                       ; $68bb: $c6 $48
    push bc                                       ; $68bd: $c5
    ld [$fcc0], sp                                ; $68be: $08 $c0 $fc
    add d                                         ; $68c1: $82
    jp nz, $c07b                                  ; $68c2: $c2 $7b $c0

    ld c, e                                       ; $68c5: $4b
    cp l                                          ; $68c6: $bd
    ldh [$c0], a                                  ; $68c7: $e0 $c0
    adc $f3                                       ; $68c9: $ce $f3
    and l                                         ; $68cb: $a5
    ld b, b                                       ; $68cc: $40
    ld hl, sp+$00                                 ; $68cd: $f8 $00
    ld bc, $c2c0                                  ; $68cf: $01 $c0 $c2
    pop hl                                        ; $68d2: $e1
    ret nz                                        ; $68d3: $c0

    ld [c], a                                     ; $68d4: $e2
    cp a                                          ; $68d5: $bf
    and c                                         ; $68d6: $a1
    call $c0e6                                    ; $68d7: $cd $e6 $c0
    call z, $f5c1                                 ; $68da: $cc $c1 $f5
    pop bc                                        ; $68dd: $c1
    and h                                         ; $68de: $a4
    nop                                           ; $68df: $00
    cp a                                          ; $68e0: $bf
    db $e3                                        ; $68e1: $e3

Jump_05d_68e2:
    ccf                                           ; $68e2: $3f
    ret nz                                        ; $68e3: $c0

    nop                                           ; $68e4: $00
    add $80                                       ; $68e5: $c6 $80
    rst $00                                       ; $68e7: $c7
    ld [hl], l                                    ; $68e8: $75
    add $72                                       ; $68e9: $c6 $72
    and h                                         ; $68eb: $a4
    ld l, l                                       ; $68ec: $6d
    and a                                         ; $68ed: $a7
    ret nz                                        ; $68ee: $c0

    rst $20                                       ; $68ef: $e7
    nop                                           ; $68f0: $00
    db $fc                                        ; $68f1: $fc
    jp $a140                                      ; $68f2: $c3 $40 $a1


    rlca                                          ; $68f5: $07
    pop bc                                        ; $68f6: $c1
    add b                                         ; $68f7: $80
    jp hl                                         ; $68f8: $e9


    or l                                          ; $68f9: $b5
    add sp, $34                                   ; $68fa: $e8 $34
    xor l                                         ; $68fc: $ad
    ld b, d                                       ; $68fd: $42
    jp nz, $a241                                  ; $68fe: $c2 $41 $a2

    ret nz                                        ; $6901: $c0

    add b                                         ; $6902: $80
    ret z                                         ; $6903: $c8

    ld b, h                                       ; $6904: $44
    jp nz, $e1fe                                  ; $6905: $c2 $fe $e1

    add b                                         ; $6908: $80
    rst $28                                       ; $6909: $ef
    jp hl                                         ; $690a: $e9


    adc l                                         ; $690b: $8d
    add $82                                       ; $690c: $c6 $82
    dec hl                                        ; $690e: $2b
    dec hl                                        ; $690f: $2b
    nop                                           ; $6910: $00
    pop bc                                        ; $6911: $c1
    jp hl                                         ; $6912: $e9


    ret nz                                        ; $6913: $c0

    add c                                         ; $6914: $81
    add l                                         ; $6915: $85
    and d                                         ; $6916: $a2
    ld b, b                                       ; $6917: $40
    rst $20                                       ; $6918: $e7
    dec [hl]                                      ; $6919: $35
    add sp, $34                                   ; $691a: $e8 $34
    xor h                                         ; $691c: $ac
    ld [bc], a                                    ; $691d: $02
    jp nz, $c341                                  ; $691e: $c2 $41 $c3

    nop                                           ; $6921: $00
    ret nz                                        ; $6922: $c0

    add h                                         ; $6923: $84
    ld b, b                                       ; $6924: $40
    and b                                         ; $6925: $a0
    add b                                         ; $6926: $80
    db $e4                                        ; $6927: $e4
    adc c                                         ; $6928: $89
    adc b                                         ; $6929: $88
    ld a, a                                       ; $692a: $7f
    ret z                                         ; $692b: $c8

    inc [hl]                                      ; $692c: $34
    xor e                                         ; $692d: $ab
    add d                                         ; $692e: $82
    jp nz, $c300                                  ; $692f: $c2 $00 $c3

    nop                                           ; $6932: $00
    inc bc                                        ; $6933: $03
    and e                                         ; $6934: $a3
    ld b, b                                       ; $6935: $40
    add c                                         ; $6936: $81
    ld c, a                                       ; $6937: $4f
    add d                                         ; $6938: $82
    ccf                                           ; $6939: $3f
    adc c                                         ; $693a: $89
    ld [hl], $ca                                  ; $693b: $36 $ca
    add hl, hl                                    ; $693d: $29
    adc d                                         ; $693e: $8a
    sub l                                         ; $693f: $95
    push hl                                       ; $6940: $e5
    sub e                                         ; $6941: $93
    jp nz, $cc00                                  ; $6942: $c2 $00 $cc

    add l                                         ; $6945: $85
    inc b                                         ; $6946: $04
    adc e                                         ; $6947: $8b
    adc d                                         ; $6948: $8a
    adc d                                         ; $6949: $8a
    ld b, b                                       ; $694a: $40
    db $ed                                        ; $694b: $ed
    ld d, h                                       ; $694c: $54
    add h                                         ; $694d: $84
    sub c                                         ; $694e: $91
    db $ec                                        ; $694f: $ec
    ld c, a                                       ; $6950: $4f
    adc d                                         ; $6951: $8a
    ld a, a                                       ; $6952: $7f
    add e                                         ; $6953: $83
    nop                                           ; $6954: $00
    ld [hl], $c7                                  ; $6955: $36 $c7
    ld [hl], h                                    ; $6957: $74
    adc [hl]                                      ; $6958: $8e
    adc h                                         ; $6959: $8c
    and $1b                                       ; $695a: $e6 $1b
    add a                                         ; $695c: $87
    ld c, a                                       ; $695d: $4f
    adc b                                         ; $695e: $88
    rst $38                                       ; $695f: $ff
    add h                                         ; $6960: $84
    add b                                         ; $6961: $80
    ret                                           ; $6962: $c9


    db $f4                                        ; $6963: $f4
    adc e                                         ; $6964: $8b
    nop                                           ; $6965: $00
    sub h                                         ; $6966: $94
    jp $6ad0                                      ; $6967: $c3 $d0 $6a


    ld c, a                                       ; $696a: $4f
    adc e                                         ; $696b: $8b
    dec [hl]                                      ; $696c: $35
    ld l, e                                       ; $696d: $6b
    ld [hl], h                                    ; $696e: $74
    adc a                                         ; $696f: $8f
    inc c                                         ; $6970: $0c
    rst $20                                       ; $6971: $e7
    dec de                                        ; $6972: $1b
    add [hl]                                      ; $6973: $86
    ld c, a                                       ; $6974: $4f
    adc d                                         ; $6975: $8a
    nop                                           ; $6976: $00
    dec [hl]                                      ; $6977: $35
    ld l, d                                       ; $6978: $6a
    ld [hl], h                                    ; $6979: $74
    adc a                                         ; $697a: $8f
    add b                                         ; $697b: $80
    and $db                                       ; $697c: $e6 $db
    xor d                                         ; $697e: $aa
    ld c, a                                       ; $697f: $4f
    add a                                         ; $6980: $87
    ld h, l                                       ; $6981: $65
    xor $34                                       ; $6982: $ee $34
    adc l                                         ; $6984: $8d
    adc h                                         ; $6985: $8c
    add $00                                       ; $6986: $c6 $00
    db $10                                        ; $6988: $10
    add [hl]                                      ; $6989: $86
    rrca                                          ; $698a: $0f
    adc e                                         ; $698b: $8b
    ld h, l                                       ; $698c: $65
    db $ec                                        ; $698d: $ec
    or l                                          ; $698e: $b5
    ld l, [hl]                                    ; $698f: $6e
    ret nz                                        ; $6990: $c0

    xor $4f                                       ; $6991: $ee $4f
    adc e                                         ; $6993: $8b
    ld h, l                                       ; $6994: $65
    xor $01                                       ; $6995: $ee $01
    ld a, [c]                                     ; $6997: $f2
    nop                                           ; $6998: $00
    ret nc                                        ; $6999: $d0

    ld l, d                                       ; $699a: $6a
    ld d, b                                       ; $699b: $50
    ld l, e                                       ; $699c: $6b
    ld h, l                                       ; $699d: $65
    db $ec                                        ; $699e: $ec
    ret nz                                        ; $699f: $c0

    db $db                                        ; $69a0: $db
    db $ec                                        ; $69a1: $ec
    ld [hl+], a                                   ; $69a2: $22
    ld c, a                                       ; $69a3: $4f
    adc d                                         ; $69a4: $8a
    ld h, l                                       ; $69a5: $65
    xor $80                                       ; $69a6: $ee $80
    push de                                       ; $69a8: $d5
    nop                                           ; $69a9: $00
    dec de                                        ; $69aa: $1b
    adc b                                         ; $69ab: $88
    ld c, a                                       ; $69ac: $4f
    adc c                                         ; $69ad: $89
    ld h, l                                       ; $69ae: $65
    db $ed                                        ; $69af: $ed
    or h                                          ; $69b0: $b4
    ld c, l                                       ; $69b1: $4d
    nop                                           ; $69b2: $00
    rst $00                                       ; $69b3: $c7
    db $db                                        ; $69b4: $db
    ld h, [hl]                                    ; $69b5: $66
    rst $08                                       ; $69b6: $cf
    ld l, c                                       ; $69b7: $69
    dec a                                         ; $69b8: $3d
    dec hl                                        ; $69b9: $2b
    nop                                           ; $69ba: $00
    add hl, hl                                    ; $69bb: $29
    adc c                                         ; $69bc: $89
    ld b, h                                       ; $69bd: $44
    and l                                         ; $69be: $a5
    ld e, b                                       ; $69bf: $58
    ld b, d                                       ; $69c0: $42
    add b                                         ; $69c1: $80
    ld [$8804], a                                 ; $69c2: $ea $04 $88
    dec a                                         ; $69c5: $3d
    ld h, $f3                                     ; $69c6: $26 $f3
    ld d, e                                       ; $69c8: $53
    ret nz                                        ; $69c9: $c0

    adc b                                         ; $69ca: $88
    nop                                           ; $69cb: $00
    ld c, [hl]                                    ; $69cc: $4e
    adc d                                         ; $69cd: $8a
    adc $4a                                       ; $69ce: $ce $4a
    ret nz                                        ; $69d0: $c0

    add sp, $02                                   ; $69d1: $e8 $02
    push af                                       ; $69d3: $f5
    sbc d                                         ; $69d4: $9a
    ld c, d                                       ; $69d5: $4a
    sbc d                                         ; $69d6: $9a
    jp nz, Jump_05d_674f                          ; $69d7: $c2 $4f $67

    db $fd                                        ; $69da: $fd
    inc hl                                        ; $69db: $23
    nop                                           ; $69dc: $00
    ld a, e                                       ; $69dd: $7b
    inc de                                        ; $69de: $13
    add b                                         ; $69df: $80
    jp hl                                         ; $69e0: $e9


    call z, $f4e9                                 ; $69e1: $cc $e9 $f4
    db $ed                                        ; $69e4: $ed
    ld h, h                                       ; $69e5: $64
    rst $00                                       ; $69e6: $c7
    dec l                                         ; $69e7: $2d
    inc bc                                        ; $69e8: $03
    inc l                                         ; $69e9: $2c
    dec b                                         ; $69ea: $05
    xor b                                         ; $69eb: $a8
    dec d                                         ; $69ec: $15
    nop                                           ; $69ed: $00
    ld c, $49                                     ; $69ee: $0e $49
    add b                                         ; $69f0: $80
    jp hl                                         ; $69f1: $e9


    dec l                                         ; $69f2: $2d
    dec b                                         ; $69f3: $05
    db $ed                                        ; $69f4: $ed
    ld l, c                                       ; $69f5: $69
    ldh [$2f], a                                  ; $69f6: $e0 $2f
    sbc d                                         ; $69f8: $9a
    xor e                                         ; $69f9: $ab
    ld c, b                                       ; $69fa: $48
    add hl, hl                                    ; $69fb: $29
    ld a, b                                       ; $69fc: $78
    ld de, $6c00                                  ; $69fd: $11 $00 $6c
    xor a                                         ; $6a00: $af
    sbc d                                         ; $6a01: $9a
    or c                                          ; $6a02: $b1
    or b                                          ; $6a03: $b0
    di                                            ; $6a04: $f3
    jp nc, $9af5                                  ; $6a05: $d2 $f5 $9a

    xor a                                         ; $6a08: $af
    dec l                                         ; $6a09: $2d
    dec bc                                        ; $6a0a: $0b
    add sp, -$14                                  ; $6a0b: $e8 $ec
    rra                                           ; $6a0d: $1f
    inc l                                         ; $6a0e: $2c
    nop                                           ; $6a0f: $00
    add b                                         ; $6a10: $80
    di                                            ; $6a11: $f3
    ld b, h                                       ; $6a12: $44
    sub l                                         ; $6a13: $95
    db $ec                                        ; $6a14: $ec
    adc a                                         ; $6a15: $8f
    sbc d                                         ; $6a16: $9a
    xor l                                         ; $6a17: $ad
    ret nz                                        ; $6a18: $c0

    ld hl, sp-$3b                                 ; $6a19: $f8 $c5
    xor a                                         ; $6a1b: $af
    adc l                                         ; $6a1c: $8d
    dec d                                         ; $6a1d: $15
    sbc b                                         ; $6a1e: $98
    ret nc                                        ; $6a1f: $d0

    nop                                           ; $6a20: $00
    push bc                                       ; $6a21: $c5

jr_05d_6a22:
    xor a                                         ; $6a22: $af
    ld [bc], a                                    ; $6a23: $02
    or $04                                        ; $6a24: $f6 $04
    sub e                                         ; $6a26: $93
    sub l                                         ; $6a27: $95
    jr nc, jr_05d_6a22                            ; $6a28: $30 $f8

    rst $30                                       ; $6a2a: $f7
    inc b                                         ; $6a2b: $04
    sub c                                         ; $6a2c: $91
    push bc                                       ; $6a2d: $c5
    xor a                                         ; $6a2e: $af
    ld [de], a                                    ; $6a2f: $12
    add e                                         ; $6a30: $83
    nop                                           ; $6a31: $00
    xor b                                         ; $6a32: $a8
    ldh a, [$98]                                  ; $6a33: $f0 $98
    ret nc                                        ; $6a35: $d0

    dec h                                         ; $6a36: $25
    db $d3                                        ; $6a37: $d3
    ld l, l                                       ; $6a38: $6d
    or c                                          ; $6a39: $b1
    sbc b                                         ; $6a3a: $98
    db $d3                                        ; $6a3b: $d3
    ret c                                         ; $6a3c: $d8

    jp nc, Jump_05d_4f24                          ; $6a3d: $d2 $24 $4f

    ld e, l                                       ; $6a40: $5d
    sub e                                         ; $6a41: $93
    nop                                           ; $6a42: $00
    and c                                         ; $6a43: $a1
    ld h, [hl]                                    ; $6a44: $66
    ld de, $0781                                  ; $6a45: $11 $81 $07
    cp $98                                        ; $6a48: $fe $98
    jp nc, Jump_05d_648b                          ; $6a4a: $d2 $8b $64

    cp a                                          ; $6a4d: $bf
    call c, $6464                                 ; $6a4e: $dc $64 $64
    db $ec                                        ; $6a51: $ec
    or e                                          ; $6a52: $b3
    nop                                           ; $6a53: $00
    adc l                                         ; $6a54: $8d
    call c, $240b                                 ; $6a55: $dc $0b $24
    dec c                                         ; $6a58: $0d
    xor l                                         ; $6a59: $ad
    ld d, $dc                                     ; $6a5a: $16 $dc
    and c                                         ; $6a5c: $a1
    rst $38                                       ; $6a5d: $ff
    ldh a, [rOBP1]                                ; $6a5e: $f0 $49
    ret nz                                        ; $6a60: $c0

    rst $38                                       ; $6a61: $ff
    push hl                                       ; $6a62: $e5
    call c, $ff00                                 ; $6a63: $dc $00 $ff
    rst $38                                       ; $6a66: $ff
    ret nz                                        ; $6a67: $c0

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
    rst $38                                       ; $6a74: $ff
    nop                                           ; $6a75: $00
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
    rst $38                                       ; $6a85: $ff
    nop                                           ; $6a86: $00
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
    ld [hl], e                                    ; $6a93: $73
    ld l, $dd                                     ; $6a94: $2e $dd
    rst $38                                       ; $6a96: $ff
    nop                                           ; $6a97: $00
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    or h                                          ; $6aa0: $b4
    ld de, $0000                                  ; $6aa1: $11 $00 $00
    nop                                           ; $6aa4: $00
    rst $38                                       ; $6aa5: $ff
    jr nz, jr_05d_6ac8                            ; $6aa6: $20 $20

    jr nz, jr_05d_6ab6                            ; $6aa8: $20 $0c

    ld sp, $3131                                  ; $6aaa: $31 $31 $31

jr_05d_6aad:
    inc [hl]                                      ; $6aad: $34
    rst $38                                       ; $6aae: $ff
    ld d, [hl]                                    ; $6aaf: $56
    ld d, a                                       ; $6ab0: $57
    inc [hl]                                      ; $6ab1: $34
    ld sp, $6031                                  ; $6ab2: $31 $31 $60
    ld e, e                                       ; $6ab5: $5b

jr_05d_6ab6:
    ld e, d                                       ; $6ab6: $5a

Jump_05d_6ab7:
    push bc                                       ; $6ab7: $c5
    ld e, e                                       ; $6ab8: $5b
    rst $38                                       ; $6ab9: $ff
    ldh [rP1], a                                  ; $6aba: $e0 $00
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $20                                       ; $6abe: $e7
    and $c0                                       ; $6abf: $e6 $c0
    ldh [$0d], a                                  ; $6ac1: $e0 $0d
    ld sp, $31ff                                  ; $6ac3: $31 $ff $31
    inc a                                         ; $6ac6: $3c
    ld b, h                                       ; $6ac7: $44

jr_05d_6ac8:
    jr nc, jr_05d_6afa                            ; $6ac8: $30 $30

    ld b, h                                       ; $6aca: $44
    inc a                                         ; $6acb: $3c
    ld sp, $61d1                                  ; $6acc: $31 $d1 $61
    jp nz, $c0e1                                  ; $6acf: $c2 $e1 $c0

    rst $38                                       ; $6ad2: $ff
    ret nz                                        ; $6ad3: $c0

    db $eb                                        ; $6ad4: $eb
    ld [$e081], sp                                ; $6ad5: $08 $81 $e0
    ld d, d                                       ; $6ad8: $52
    jr nc, jr_05d_6aad                            ; $6ad9: $30 $d2

    rst $38                                       ; $6adb: $ff
    ldh [rHDMA2], a                               ; $6adc: $e0 $52
    ret nz                                        ; $6ade: $c0

    rst $38                                       ; $6adf: $ff
    add b                                         ; $6ae0: $80
    pop af                                        ; $6ae1: $f1
    dec d                                         ; $6ae2: $15
    ret nz                                        ; $6ae3: $c0

    pop hl                                        ; $6ae4: $e1
    ld l, h                                       ; $6ae5: $6c
    ld l, h                                       ; $6ae6: $6c
    sub d                                         ; $6ae7: $92
    ret nz                                        ; $6ae8: $c0

    and $5a                                       ; $6ae9: $e6 $5a
    ret nz                                        ; $6aeb: $c0

    rst $38                                       ; $6aec: $ff
    ld b, b                                       ; $6aed: $40
    jp hl                                         ; $6aee: $e9


    nop                                           ; $6aef: $00
    ld [bc], a                                    ; $6af0: $02
    ldh [$c0], a                                  ; $6af1: $e0 $c0
    pop hl                                        ; $6af3: $e1
    ld l, l                                       ; $6af4: $6d
    di                                            ; $6af5: $f3
    jr nc, @+$55                                  ; $6af6: $30 $53

    add b                                         ; $6af8: $80
    rst $38                                       ; $6af9: $ff

jr_05d_6afa:
    ret nz                                        ; $6afa: $c0

    db $f4                                        ; $6afb: $f4
    inc a                                         ; $6afc: $3c
    ld b, d                                       ; $6afd: $42
    ld l, b                                       ; $6afe: $68
    ld l, b                                       ; $6aff: $68
    rst $20                                       ; $6b00: $e7
    ld l, l                                       ; $6b01: $6d
    ld l, l                                       ; $6b02: $6d
    add hl, sp                                    ; $6b03: $39
    ret nz                                        ; $6b04: $c0

    rst $18                                       ; $6b05: $df
    add b                                         ; $6b06: $80
    di                                            ; $6b07: $f3
    ld c, c                                       ; $6b08: $49
    ld b, d                                       ; $6b09: $42
    ld l, d                                       ; $6b0a: $6a
    rra                                           ; $6b0b: $1f
    ld l, b                                       ; $6b0c: $68
    ld l, b                                       ; $6b0d: $68
    ld l, d                                       ; $6b0e: $6a
    ld l, l                                       ; $6b0f: $6d
    ld d, c                                       ; $6b10: $51
    add c                                         ; $6b11: $81
    db $e4                                        ; $6b12: $e4
    ret nz                                        ; $6b13: $c0

    rst $38                                       ; $6b14: $ff
    ld b, b                                       ; $6b15: $40
    db $ec                                        ; $6b16: $ec
    ld a, a                                       ; $6b17: $7f
    add hl, sp                                    ; $6b18: $39
    ld l, d                                       ; $6b19: $6a
    ld l, d                                       ; $6b1a: $6a
    jr nc, jr_05d_6b4d                            ; $6b1b: $30 $30

    ld l, d                                       ; $6b1d: $6a
    ld l, d                                       ; $6b1e: $6a
    add b                                         ; $6b1f: $80
    pop hl                                        ; $6b20: $e1
    ret c                                         ; $6b21: $d8

    ret nz                                        ; $6b22: $c0

    rst $38                                       ; $6b23: $ff
    ld b, b                                       ; $6b24: $40
    call $c081                                    ; $6b25: $cd $81 $c0
    ld d, d                                       ; $6b28: $52
    ld l, c                                       ; $6b29: $69
    add c                                         ; $6b2a: $81
    pop bc                                        ; $6b2b: $c1
    ld l, c                                       ; $6b2c: $69
    ld c, b                                       ; $6b2d: $48
    ld b, a                                       ; $6b2e: $47
    ld c, c                                       ; $6b2f: $49
    ld sp, $c05f                                  ; $6b30: $31 $5f $c0
    rst $18                                       ; $6b33: $df
    nop                                           ; $6b34: $00
    call $c081                                    ; $6b35: $cd $81 $c0
    ld d, e                                       ; $6b38: $53
    add b                                         ; $6b39: $80
    db $e3                                        ; $6b3a: $e3
    jp nz, $c0ff                                  ; $6b3b: $c2 $ff $c0

jr_05d_6b3e:
    ld e, [hl]                                    ; $6b3e: $5e
    rst $38                                       ; $6b3f: $ff
    jp nz, $ffca                                  ; $6b40: $c2 $ca $ff

    add sp, -$19                                  ; $6b43: $e8 $e7
    add e                                         ; $6b45: $83
    and c                                         ; $6b46: $a1
    ld d, d                                       ; $6b47: $52
    ld l, l                                       ; $6b48: $6d
    jp nz, $e200                                  ; $6b49: $c2 $00 $e2

    ld l, l                                       ; $6b4c: $6d

jr_05d_6b4d:
    ld a, a                                       ; $6b4d: $7f
    push hl                                       ; $6b4e: $e5
    jp z, $e8ff                                   ; $6b4f: $ca $ff $e8

    rst $20                                       ; $6b52: $e7
    add e                                         ; $6b53: $83
    and b                                         ; $6b54: $a0
    ld sp, $3b53                                  ; $6b55: $31 $53 $3b
    ld l, l                                       ; $6b58: $6d
    ld l, l                                       ; $6b59: $6d
    add b                                         ; $6b5a: $80
    pop bc                                        ; $6b5b: $c1
    jr nc, jr_05d_6b8e                            ; $6b5c: $30 $30

    ld d, b                                       ; $6b5e: $50
    ld a, a                                       ; $6b5f: $7f
    ldh [$80], a                                  ; $6b60: $e0 $80
    rst $38                                       ; $6b62: $ff

jr_05d_6b63:
    cp h                                          ; $6b63: $bc
    db $eb                                        ; $6b64: $eb
    ld [$a004], a                                 ; $6b65: $ea $04 $a0
    xor h                                         ; $6b68: $ac
    ld d, d                                       ; $6b69: $52
    jr nc, jr_05d_6bd9                            ; $6b6a: $30 $6d

    nop                                           ; $6b6c: $00
    pop bc                                        ; $6b6d: $c1
    jr nc, jr_05d_6b63                            ; $6b6e: $30 $f3

    jr nc, jr_05d_6bc3                            ; $6b70: $30 $51

    ret nz                                        ; $6b72: $c0

    rst $38                                       ; $6b73: $ff
    ret nz                                        ; $6b74: $c0

    ldh a, [$81]                                  ; $6b75: $f0 $81
    add e                                         ; $6b77: $83
    jr nc, jr_05d_6baa                            ; $6b78: $30 $30

    ld [c], a                                     ; $6b7a: $e2
    add b                                         ; $6b7b: $80
    and c                                         ; $6b7c: $a1
    jr nc, jr_05d_6b3e                            ; $6b7d: $30 $bf

    call nz, $ffc0                                ; $6b7f: $c4 $c0 $ff
    add b                                         ; $6b82: $80
    ld [$a9ac], a                                 ; $6b83: $ea $ac $a9
    halt                                          ; $6b86: $76
    adc l                                         ; $6b87: $8d
    ld [hl], $01                                  ; $6b88: $36 $01
    and c                                         ; $6b8a: $a1
    jr nc, jr_05d_6bbd                            ; $6b8b: $30 $30

    ret nz                                        ; $6b8d: $c0

jr_05d_6b8e:
    pop bc                                        ; $6b8e: $c1
    add b                                         ; $6b8f: $80
    rst $18                                       ; $6b90: $df
    ld b, b                                       ; $6b91: $40
    db $ed                                        ; $6b92: $ed
    add c                                         ; $6b93: $81
    rst $38                                       ; $6b94: $ff
    add b                                         ; $6b95: $80
    add b                                         ; $6b96: $80
    ld l, a                                       ; $6b97: $6f
    ld l, [hl]                                    ; $6b98: $6e
    ld d, l                                       ; $6b99: $55
    ld d, h                                       ; $6b9a: $54
    ld d, h                                       ; $6b9b: $54
    ld d, l                                       ; $6b9c: $55
    rrca                                          ; $6b9d: $0f
    ld b, [hl]                                    ; $6b9e: $46
    ld c, l                                       ; $6b9f: $4d
    ld sp, $805f                                  ; $6ba0: $31 $5f $80
    cp a                                          ; $6ba3: $bf
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff

jr_05d_6baa:
    nop                                           ; $6baa: $00
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff
    nop                                           ; $6bbb: $00
    rst $38                                       ; $6bbc: $ff

jr_05d_6bbd:
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff

jr_05d_6bc3:
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    nop                                           ; $6bcc: $00
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff

jr_05d_6bd9:
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    nop                                           ; $6bdd: $00
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff

Jump_05d_6be4:
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    nop                                           ; $6bee: $00
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    nop                                           ; $6bff: $00
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    nop                                           ; $6c10: $00
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    nop                                           ; $6c21: $00
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    nop                                           ; $6c32: $00
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    nop                                           ; $6c43: $00
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    nop                                           ; $6c54: $00
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    ld hl, sp+$00                                 ; $6c64: $f8 $00
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    and l                                         ; $6c68: $a5
    nop                                           ; $6c69: $00
    rst $38                                       ; $6c6a: $ff
    push hl                                       ; $6c6b: $e5
    ld [hl-], a                                   ; $6c6c: $32
    or $e6                                        ; $6c6d: $f6 $e6
    rst $30                                       ; $6c6f: $f7
    rst $20                                       ; $6c70: $e7
    dec [hl]                                      ; $6c71: $35
    db $ec                                        ; $6c72: $ec
    xor $37                                       ; $6c73: $ee $37
    db $ec                                        ; $6c75: $ec
    jp c, $c7f0                                   ; $6c76: $da $f0 $c7

    add sp, $33                                   ; $6c79: $e8 $33
    ld sp, $f2e0                                  ; $6c7b: $31 $e0 $f2
    ld [hl], $30                                  ; $6c7e: $36 $30
    scf                                           ; $6c80: $37
    cp a                                          ; $6c81: $bf
    ld h, $20                                     ; $6c82: $26 $20
    daa                                           ; $6c84: $27
    db $10                                        ; $6c85: $10
    ld d, $17                                     ; $6c86: $16 $17
    jp nz, Jump_000_34f6                          ; $6c88: $c2 $f6 $34

    rst $38                                       ; $6c8b: $ff
    ld [hl], $32                                  ; $6c8c: $36 $32
    jr nc, jr_05d_6cc7                            ; $6c8e: $30 $37

    ld sp, $3133                                  ; $6c90: $31 $33 $31
    inc sp                                        ; $6c93: $33
    nop                                           ; $6c94: $00
    and b                                         ; $6c95: $a0
    ei                                            ; $6c96: $fb
    rst $38                                       ; $6c97: $ff
    rst $28                                       ; $6c98: $ef
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    and h                                         ; $6c9c: $a4
    ld l, h                                       ; $6c9d: $6c
    call nc, $8a6c                                ; $6c9e: $d4 $6c $8a
    ld l, a                                       ; $6ca1: $6f
    ld e, h                                       ; $6ca2: $5c
    ld [hl], c                                    ; $6ca3: $71
    db $ec                                        ; $6ca4: $ec
    dec hl                                        ; $6ca5: $2b
    ld [hl+], a                                   ; $6ca6: $22
    dec sp                                        ; $6ca7: $3b
    ld b, b                                       ; $6ca8: $40
    ld [hl+], a                                   ; $6ca9: $22
    nop                                           ; $6caa: $00
    add hl, bc                                    ; $6cab: $09
    and l                                         ; $6cac: $a5
    ld b, e                                       ; $6cad: $43
    xor $37                                       ; $6cae: $ee $37
    ld [hl+], a                                   ; $6cb0: $22
    dec sp                                        ; $6cb1: $3b
    ld b, b                                       ; $6cb2: $40
    ld [hl+], a                                   ; $6cb3: $22
    ccf                                           ; $6cb4: $3f
    ld a, a                                       ; $6cb5: $7f
    rla                                           ; $6cb6: $17
    ld e, [hl]                                    ; $6cb7: $5e
    ld de, $2249                                  ; $6cb8: $11 $49 $22
    dec sp                                        ; $6cbb: $3b
    ld [$0825], sp                                ; $6cbc: $08 $25 $08
    dec h                                         ; $6cbf: $25
    ld [$0825], sp                                ; $6cc0: $08 $25 $08
    dec h                                         ; $6cc3: $25
    ld [$0825], sp                                ; $6cc4: $08 $25 $08

jr_05d_6cc7:
    dec h                                         ; $6cc7: $25
    ld [$0825], sp                                ; $6cc8: $08 $25 $08
    dec h                                         ; $6ccb: $25
    ld [$0825], sp                                ; $6ccc: $08 $25 $08
    dec h                                         ; $6ccf: $25
    ld [$0825], sp                                ; $6cd0: $08 $25 $08
    dec h                                         ; $6cd3: $25
    push af                                       ; $6cd4: $f5
    dec bc                                        ; $6cd5: $0b
    rst $38                                       ; $6cd6: $ff
    and $0a                                       ; $6cd7: $e6 $0a
    ld hl, sp-$1a                                 ; $6cd9: $f8 $e6
    inc c                                         ; $6cdb: $0c
    ld c, h                                       ; $6cdc: $4c
    ld c, h                                       ; $6cdd: $4c
    inc c                                         ; $6cde: $0c
    inc bc                                        ; $6cdf: $03
    inc c                                         ; $6ce0: $0c
    inc c                                         ; $6ce1: $0c
    db $fc                                        ; $6ce2: $fc
    ldh [$f9], a                                  ; $6ce3: $e0 $f9
    pop hl                                        ; $6ce5: $e1
    ld hl, sp-$1e                                 ; $6ce6: $f8 $e2
    rst $30                                       ; $6ce8: $f7
    ld [c], a                                     ; $6ce9: $e2
    or $e8                                        ; $6cea: $f6 $e8
    ei                                            ; $6cec: $fb
    rst $20                                       ; $6ced: $e7
    ldh [$c9], a                                  ; $6cee: $e0 $c9
    and $ba                                       ; $6cf0: $e6 $ba
    add sp, -$40                                  ; $6cf2: $e8 $c0
    pop hl                                        ; $6cf4: $e1
    db $fd                                        ; $6cf5: $fd
    push hl                                       ; $6cf6: $e5
    or l                                          ; $6cf7: $b5
    db $e3                                        ; $6cf8: $e3
    ld c, h                                       ; $6cf9: $4c
    inc c                                         ; $6cfa: $0c
    inc l                                         ; $6cfb: $2c
    ld h, b                                       ; $6cfc: $60
    or $e7                                        ; $6cfd: $f6 $e7
    ret nz                                        ; $6cff: $c0

    db $eb                                        ; $6d00: $eb
    add a                                         ; $6d01: $87
    ldh [$86], a                                  ; $6d02: $e0 $86
    ld [c], a                                     ; $6d04: $e2
    add c                                         ; $6d05: $81
    db $e3                                        ; $6d06: $e3
    dec hl                                        ; $6d07: $2b
    dec hl                                        ; $6d08: $2b
    ld [hl], a                                    ; $6d09: $77
    ldh [rNR23], a                                ; $6d0a: $e0 $18
    jp Jump_05d_7ee7                              ; $6d0c: $c3 $e7 $7e


    ld [c], a                                     ; $6d0f: $e2
    or d                                          ; $6d10: $b2
    pop hl                                        ; $6d11: $e1
    inc l                                         ; $6d12: $2c
    inc l                                         ; $6d13: $2c
    or $e7                                        ; $6d14: $f6 $e7
    ret nz                                        ; $6d16: $c0

    xor $7e                                       ; $6d17: $ee $7e
    ld [$2b07], a                                 ; $6d19: $ea $07 $2b
    ld a, [bc]                                    ; $6d1c: $0a
    ld a, [bc]                                    ; $6d1d: $0a
    call z, $47e4                                 ; $6d1e: $cc $e4 $47
    db $e4                                        ; $6d21: $e4
    ld b, b                                       ; $6d22: $40
    ld [c], a                                     ; $6d23: $e2
    ret nz                                        ; $6d24: $c0

jr_05d_6d25:
    ld [c], a                                     ; $6d25: $e2
    or $e4                                        ; $6d26: $f6 $e4
    inc a                                         ; $6d28: $3c
    add b                                         ; $6d29: $80
    db $ed                                        ; $6d2a: $ed
    db $fd                                        ; $6d2b: $fd
    add $6b                                       ; $6d2c: $c6 $6b
    dec bc                                        ; $6d2e: $0b
    dec bc                                        ; $6d2f: $0b
    ld c, e                                       ; $6d30: $4b
    cp a                                          ; $6d31: $bf
    pop hl                                        ; $6d32: $e1
    pop bc                                        ; $6d33: $c1
    db $e4                                        ; $6d34: $e4
    nop                                           ; $6d35: $00
    rlca                                          ; $6d36: $07
    ld [c], a                                     ; $6d37: $e2
    ld b, b                                       ; $6d38: $40
    push hl                                       ; $6d39: $e5
    ldh a, [$e3]                                  ; $6d3a: $f0 $e3
    and $c2                                       ; $6d3c: $e6 $c2
    ccf                                           ; $6d3e: $3f
    db $e4                                        ; $6d3f: $e4
    jr c, jr_05d_6d25                             ; $6d40: $38 $e3

    rst $00                                       ; $6d42: $c7
    push hl                                       ; $6d43: $e5
    pop bc                                        ; $6d44: $c1
    pop hl                                        ; $6d45: $e1
    ld e, $c0                                     ; $6d46: $1e $c0
    pop hl                                        ; $6d48: $e1
    ld c, e                                       ; $6d49: $4b
    ld c, e                                       ; $6d4a: $4b
    dec hl                                        ; $6d4b: $2b
    ld c, e                                       ; $6d4c: $4b
    ret z                                         ; $6d4d: $c8

    jp $e4fa                                      ; $6d4e: $c3 $fa $e4


    ccf                                           ; $6d51: $3f
    db $e4                                        ; $6d52: $e4
    cp b                                          ; $6d53: $b8
    or $ed                                        ; $6d54: $f6 $ed
    cp c                                          ; $6d56: $b9
    push bc                                       ; $6d57: $c5
    adc d                                         ; $6d58: $8a
    pop bc                                        ; $6d59: $c1
    ld l, e                                       ; $6d5a: $6b
    ld l, e                                       ; $6d5b: $6b
    dec hl                                        ; $6d5c: $2b
    rst $38                                       ; $6d5d: $ff
    ldh [rOCPD], a                                ; $6d5e: $e0 $6b
    inc e                                         ; $6d60: $1c
    add h                                         ; $6d61: $84
    ldh [$c0], a                                  ; $6d62: $e0 $c0
    ldh [$2b], a                                  ; $6d64: $e0 $2b
    ld c, e                                       ; $6d66: $4b
    ld c, e                                       ; $6d67: $4b
    jp z, $bde4                                   ; $6d68: $ca $e4 $bd

    push hl                                       ; $6d6b: $e5
    ld a, a                                       ; $6d6c: $7f
    jp c, $cdee                                   ; $6d6d: $da $ee $cd

    ret nz                                        ; $6d70: $c0

    dec bc                                        ; $6d71: $0b
    dec hl                                        ; $6d72: $2b
    ld c, e                                       ; $6d73: $4b
    ret nz                                        ; $6d74: $c0

    rst $20                                       ; $6d75: $e7
    ld l, e                                       ; $6d76: $6b
    ld c, e                                       ; $6d77: $4b
    ld c, e                                       ; $6d78: $4b
    sub b                                         ; $6d79: $90
    add b                                         ; $6d7a: $80
    rst $00                                       ; $6d7b: $c7
    ld a, a                                       ; $6d7c: $7f
    ret                                           ; $6d7d: $c9


    dec [hl]                                      ; $6d7e: $35
    add sp, -$40                                  ; $6d7f: $e8 $c0
    pop af                                        ; $6d81: $f1
    ld l, e                                       ; $6d82: $6b
    rst $00                                       ; $6d83: $c7
    ldh [$c5], a                                  ; $6d84: $e0 $c5
    ldh [$0b], a                                  ; $6d86: $e0 $0b
    nop                                           ; $6d88: $00
    ld sp, hl                                     ; $6d89: $f9
    pop hl                                        ; $6d8a: $e1
    rst $08                                       ; $6d8b: $cf
    and $fc                                       ; $6d8c: $e6 $fc
    and b                                         ; $6d8e: $a0
    dec [hl]                                      ; $6d8f: $35
    call nz, $c6ad                                ; $6d90: $c4 $ad $c6
    nop                                           ; $6d93: $00
    adc $80                                       ; $6d94: $ce $80
    pop hl                                        ; $6d96: $e1
    jp nz, Jump_000_0ae0                          ; $6d97: $c2 $e0 $0a

    ret nz                                        ; $6d9a: $c0

    db $e3                                        ; $6d9b: $e3
    ld c, e                                       ; $6d9c: $4b
    ret nz                                        ; $6d9d: $c0

    pop hl                                        ; $6d9e: $e1
    dec bc                                        ; $6d9f: $0b
    ld c, $c2                                     ; $6da0: $0e $c2
    cp $e4                                        ; $6da2: $fe $e4
    ld [hl], l                                    ; $6da4: $75
    rst $00                                       ; $6da5: $c7
    ld l, e                                       ; $6da6: $6b
    add $02                                       ; $6da7: $c6 $02
    ld b, b                                       ; $6da9: $40
    xor $0b                                       ; $6daa: $ee $0b
    ret nz                                        ; $6dac: $c0

    pop hl                                        ; $6dad: $e1
    pop bc                                        ; $6dae: $c1
    ld [c], a                                     ; $6daf: $e2
    cp h                                          ; $6db0: $bc
    db $e3                                        ; $6db1: $e3
    adc $c6                                       ; $6db2: $ce $c6
    jp z, $b6ce                                   ; $6db4: $ca $ce $b6

    add $00                                       ; $6db7: $c6 $00
    cp e                                          ; $6db9: $bb
    and [hl]                                      ; $6dba: $a6
    call z, Call_05d_7fa1                         ; $6dbb: $cc $a1 $7f
    ld [c], a                                     ; $6dbe: $e2
    ld b, c                                       ; $6dbf: $41
    pop hl                                        ; $6dc0: $e1
    dec sp                                        ; $6dc1: $3b
    ld [c], a                                     ; $6dc2: $e2
    add b                                         ; $6dc3: $80
    and c                                         ; $6dc4: $a1
    ld b, $c6                                     ; $6dc5: $06 $c6
    ld a, [hl-]                                   ; $6dc7: $3a
    and h                                         ; $6dc8: $a4
    nop                                           ; $6dc9: $00
    ld hl, sp-$5b                                 ; $6dca: $f8 $a5
    ret nz                                        ; $6dcc: $c0

    pop de                                        ; $6dcd: $d1
    ld a, a                                       ; $6dce: $7f
    ld [c], a                                     ; $6dcf: $e2
    nop                                           ; $6dd0: $00
    db $e4                                        ; $6dd1: $e4
    db $fc                                        ; $6dd2: $fc
    jp $c34c                                      ; $6dd3: $c3 $4c $c3


    ret nz                                        ; $6dd6: $c0

    and l                                         ; $6dd7: $a5
    ld b, b                                       ; $6dd8: $40
    call nz, $f660                                ; $6dd9: $c4 $60 $f6
    rst $20                                       ; $6ddc: $e7
    ret nz                                        ; $6ddd: $c0

    xor [hl]                                      ; $6dde: $ae
    res 4, c                                      ; $6ddf: $cb $a1
    add h                                         ; $6de1: $84
    ldh [$be], a                                  ; $6de2: $e0 $be
    call nz, Call_000_0b0b                        ; $6de4: $c4 $0b $0b
    dec b                                         ; $6de7: $05
    and a                                         ; $6de8: $a7
    db $10                                        ; $6de9: $10
    ld a, l                                       ; $6dea: $7d
    jp $c6c4                                      ; $6deb: $c3 $c4 $c6


    or l                                          ; $6dee: $b5
    add e                                         ; $6def: $83
    rst $38                                       ; $6df0: $ff
    add b                                         ; $6df1: $80
    inc l                                         ; $6df2: $2c
    rst $38                                       ; $6df3: $ff
    ldh [$c0], a                                  ; $6df4: $e0 $c0
    adc b                                         ; $6df6: $88
    ld a, [hl]                                    ; $6df7: $7e
    ld [c], a                                     ; $6df8: $e2
    nop                                           ; $6df9: $00
    add b                                         ; $6dfa: $80
    jp $a000                                      ; $6dfb: $c3 $00 $a0


    ld b, b                                       ; $6dfe: $40
    db $e4                                        ; $6dff: $e4
    ld b, c                                       ; $6e00: $41
    and l                                         ; $6e01: $a5
    ld c, d                                       ; $6e02: $4a
    add $bf                                       ; $6e03: $c6 $bf
    adc b                                         ; $6e05: $88
    ret nz                                        ; $6e06: $c0

    add sp, $47                                   ; $6e07: $e8 $47
    add c                                         ; $6e09: $81
    ld [$c17d], sp                                ; $6e0a: $08 $7d $c1
    ret nz                                        ; $6e0d: $c0

    db $e4                                        ; $6e0e: $e4
    ld a, [hl-]                                   ; $6e0f: $3a
    and b                                         ; $6e10: $a0
    dec hl                                        ; $6e11: $2b
    add b                                         ; $6e12: $80
    adc b                                         ; $6e13: $88
    halt                                          ; $6e14: $76
    pop af                                        ; $6e15: $f1
    add c                                         ; $6e16: $81
    jp hl                                         ; $6e17: $e9


    ld d, [hl]                                    ; $6e18: $56
    add sp, $00                                   ; $6e19: $e8 $00
    ld c, [hl]                                    ; $6e1b: $4e
    and $4c                                       ; $6e1c: $e6 $4c
    ret                                           ; $6e1e: $c9


    ld a, d                                       ; $6e1f: $7a
    jp hl                                         ; $6e20: $e9


    ret nz                                        ; $6e21: $c0

    and a                                         ; $6e22: $a7
    ret nz                                        ; $6e23: $c0

    db $eb                                        ; $6e24: $eb
    db $dd                                        ; $6e25: $dd
    ld h, a                                       ; $6e26: $67
    call $c166                                    ; $6e27: $cd $66 $c1
    adc d                                         ; $6e2a: $8a
    add b                                         ; $6e2b: $80
    rst $30                                       ; $6e2c: $f7
    xor h                                         ; $6e2d: $ac
    cp a                                          ; $6e2e: $bf
    ld l, e                                       ; $6e2f: $6b
    add l                                         ; $6e30: $85
    ld [$68cd], a                                 ; $6e31: $ea $cd $68
    pop bc                                        ; $6e34: $c1
    add l                                         ; $6e35: $85
    or l                                          ; $6e36: $b5
    adc d                                         ; $6e37: $8a
    rst $28                                       ; $6e38: $ef
    ld h, d                                       ; $6e39: $62
    inc l                                         ; $6e3a: $2c
    nop                                           ; $6e3b: $00
    jp nz, $fac2                                  ; $6e3c: $c2 $c2 $fa

    ldh [$c0], a                                  ; $6e3f: $e0 $c0
    ld a, [c]                                     ; $6e41: $f2
    sub l                                         ; $6e42: $95
    add a                                         ; $6e43: $87
    dec a                                         ; $6e44: $3d
    ld h, d                                       ; $6e45: $62
    ld a, [$36e9]                                 ; $6e46: $fa $e9 $36
    ld h, h                                       ; $6e49: $64
    ret nz                                        ; $6e4a: $c0

    db $eb                                        ; $6e4b: $eb
    nop                                           ; $6e4c: $00
    ld l, d                                       ; $6e4d: $6a
    and a                                         ; $6e4e: $a7
    ld d, l                                       ; $6e4f: $55
    call $a500                                    ; $6e50: $cd $00 $a5
    ld a, e                                       ; $6e53: $7b
    ld h, d                                       ; $6e54: $62
    rst $30                                       ; $6e55: $f7
    xor b                                         ; $6e56: $a8

jr_05d_6e57:
    ld a, a                                       ; $6e57: $7f
    ld h, c                                       ; $6e58: $61
    cp a                                          ; $6e59: $bf
    adc $cd                                       ; $6e5a: $ce $cd
    ld l, d                                       ; $6e5c: $6a
    nop                                           ; $6e5d: $00
    pop bc                                        ; $6e5e: $c1
    adc d                                         ; $6e5f: $8a
    db $fc                                        ; $6e60: $fc
    jp hl                                         ; $6e61: $e9


    or $43                                        ; $6e62: $f6 $43
    nop                                           ; $6e64: $00
    jp z, $45a6                                   ; $6e65: $ca $a6 $45

    call $c16b                                    ; $6e68: $cd $6b $c1
    add [hl]                                      ; $6e6b: $86
    cp h                                          ; $6e6c: $bc
    add a                                         ; $6e6d: $87
    nop                                           ; $6e6e: $00
    rst $30                                       ; $6e6f: $f7
    xor b                                         ; $6e70: $a8
    db $fd                                        ; $6e71: $fd
    xor $c9                                       ; $6e72: $ee $c9
    and $c9                                       ; $6e74: $e6 $c9
    ld h, l                                       ; $6e76: $65
    rlca                                          ; $6e77: $07
    db $ec                                        ; $6e78: $ec
    or a                                          ; $6e79: $b7
    ld l, d                                       ; $6e7a: $6a
    add b                                         ; $6e7b: $80
    db $ec                                        ; $6e7c: $ec
    ret nz                                        ; $6e7d: $c0

    rst $08                                       ; $6e7e: $cf
    nop                                           ; $6e7f: $00
    rst $00                                       ; $6e80: $c7
    ld c, c                                       ; $6e81: $49
    ld bc, $3644                                  ; $6e82: $01 $44 $36
    ld c, d                                       ; $6e85: $4a
    nop                                           ; $6e86: $00
    db $eb                                        ; $6e87: $eb
    rst $38                                       ; $6e88: $ff
    call $454c                                    ; $6e89: $cd $4c $45
    nop                                           ; $6e8c: $00
    jp z, Jump_05d_6ab7                           ; $6e8d: $ca $b7 $6a

    nop                                           ; $6e90: $00
    ld bc, $fea1                                  ; $6e91: $01 $a1 $fe
    xor d                                         ; $6e94: $aa
    reti                                          ; $6e95: $d9


    xor c                                         ; $6e96: $a9
    sub $aa                                       ; $6e97: $d6 $aa
    ld c, b                                       ; $6e99: $48
    ld b, d                                       ; $6e9a: $42
    ld [$c0ee], a                                 ; $6e9b: $ea $ee $c0
    db $eb                                        ; $6e9e: $eb
    and e                                         ; $6e9f: $a3
    ld b, l                                       ; $6ea0: $45
    nop                                           ; $6ea1: $00
    call Call_000_3871                            ; $6ea2: $cd $71 $38
    dec h                                         ; $6ea5: $25
    add c                                         ; $6ea6: $81
    ld c, l                                       ; $6ea7: $4d
    pop bc                                        ; $6ea8: $c1
    jp hl                                         ; $6ea9: $e9


    jr nz, jr_05d_6e57                            ; $6eaa: $20 $ab

    call $ff6a                                    ; $6eac: $cd $6a $ff
    ld b, l                                       ; $6eaf: $45
    or a                                          ; $6eb0: $b7
    ld l, h                                       ; $6eb1: $6c
    nop                                           ; $6eb2: $00
    ret nz                                        ; $6eb3: $c0

    ld [$66d5], a                                 ; $6eb4: $ea $d5 $66
    call $8870                                    ; $6eb7: $cd $70 $88
    ld c, b                                       ; $6eba: $48
    ld [$ffea], a                                 ; $6ebb: $ea $ea $ff
    adc a                                         ; $6ebe: $8f
    ld a, a                                       ; $6ebf: $7f
    adc e                                         ; $6ec0: $8b
    ld [$008b], sp                                ; $6ec1: $08 $8b $00
    ld b, c                                       ; $6ec4: $41
    adc a                                         ; $6ec5: $8f
    ld b, b                                       ; $6ec6: $40
    xor $59                                       ; $6ec7: $ee $59
    rst $00                                       ; $6ec9: $c7
    call $466a                                    ; $6eca: $cd $6a $46
    and h                                         ; $6ecd: $a4
    or a                                          ; $6ece: $b7
    ld l, h                                       ; $6ecf: $6c
    add c                                         ; $6ed0: $81
    ld h, c                                       ; $6ed1: $61
    ld a, [hl]                                    ; $6ed2: $7e
    ret                                           ; $6ed3: $c9


    nop                                           ; $6ed4: $00

Jump_05d_6ed5:
    dec d                                         ; $6ed5: $15
    ld c, a                                       ; $6ed6: $4f
    ld c, b                                       ; $6ed7: $48
    ld c, e                                       ; $6ed8: $4b
    ld [hl], a                                    ; $6ed9: $77
    dec c                                         ; $6eda: $0d
    ld bc, $48cc                                  ; $6edb: $01 $cc $48
    jp nc, Jump_000_2808                          ; $6ede: $d2 $08 $28

    ld [hl], a                                    ; $6ee1: $77
    ld c, $80                                     ; $6ee2: $0e $80
    ld h, e                                       ; $6ee4: $63
    nop                                           ; $6ee5: $00
    ld b, b                                       ; $6ee6: $40
    call $ebcd                                    ; $6ee7: $cd $cd $eb
    ld c, b                                       ; $6eea: $48
    ld c, d                                       ; $6eeb: $4a
    ld [hl], a                                    ; $6eec: $77
    inc c                                         ; $6eed: $0c
    add d                                         ; $6eee: $82
    xor h                                         ; $6eef: $ac
    dec d                                         ; $6ef0: $15
    ld d, c                                       ; $6ef1: $51
    sub c                                         ; $6ef2: $91
    call z, Call_000_1077                         ; $6ef3: $cc $77 $10
    nop                                           ; $6ef6: $00
    ld b, b                                       ; $6ef7: $40
    rst $08                                       ; $6ef8: $cf
    dec d                                         ; $6ef9: $15
    ld c, d                                       ; $6efa: $4a
    ld a, e                                       ; $6efb: $7b
    bit 6, a                                      ; $6efc: $cb $77
    dec c                                         ; $6efe: $0d
    ld bc, $9fec                                  ; $6eff: $01 $ec $9f
    ld c, a                                       ; $6f02: $4f
    ld a, e                                       ; $6f03: $7b
    jp z, Jump_000_0d77                           ; $6f04: $ca $77 $0d

    nop                                           ; $6f07: $00
    ld b, b                                       ; $6f08: $40
    ldh a, [rNR34]                                ; $6f09: $f0 $1e
    sub e                                         ; $6f0b: $93
    add a                                         ; $6f0c: $87
    ld h, l                                       ; $6f0d: $65
    ret nz                                        ; $6f0e: $c0

    adc a                                         ; $6f0f: $8f
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    db $fd                                        ; $6f12: $fd
    ld b, a                                       ; $6f13: $47
    ret nz                                        ; $6f14: $c0

    sub c                                         ; $6f15: $91
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    nop                                           ; $6f18: $00
    sbc l                                         ; $6f19: $9d
    dec b                                         ; $6f1a: $05
    ld [hl], a                                    ; $6f1b: $77
    dec d                                         ; $6f1c: $15
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    ld h, d                                       ; $6f1f: $62
    ret c                                         ; $6f20: $d8

    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    ld e, e                                       ; $6f23: $5b
    add e                                         ; $6f24: $83
    adc [hl]                                      ; $6f25: $8e
    ld h, h                                       ; $6f26: $64
    ret nz                                        ; $6f27: $c0

    sbc e                                         ; $6f28: $9b
    nop                                           ; $6f29: $00
    ld b, b                                       ; $6f2a: $40
    rst $38                                       ; $6f2b: $ff
    ret nz                                        ; $6f2c: $c0

    adc a                                         ; $6f2d: $8f
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    ld h, d                                       ; $6f30: $62
    rst $18                                       ; $6f31: $df
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    ld b, b                                       ; $6f34: $40
    and $37                                       ; $6f35: $e6 $37
    ld [$ffff], sp                                ; $6f37: $08 $ff $ff
    nop                                           ; $6f3a: $00
    ld [hl], e                                    ; $6f3b: $73
    call nc, $898e                                ; $6f3c: $d4 $8e $89
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    sub [hl]                                      ; $6f43: $96
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    reti                                          ; $6f47: $d9


    and a                                         ; $6f48: $a7
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    nop                                           ; $6f4b: $00
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    scf                                           ; $6f52: $37
    db $eb                                        ; $6f53: $eb
    call c, $ffff                                 ; $6f54: $dc $ff $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    nop                                           ; $6f5c: $00
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
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    nop                                           ; $6f6d: $00
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
    rst $38                                       ; $6f79: $ff
    nop                                           ; $6f7a: $00
    cp a                                          ; $6f7b: $bf
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    nop                                           ; $6f7e: $00
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    ld e, d                                       ; $6f85: $5a
    ld [hl], e                                    ; $6f86: $73
    nop                                           ; $6f87: $00
    nop                                           ; $6f88: $00
    nop                                           ; $6f89: $00
    dec d                                         ; $6f8a: $15
    ld e, e                                       ; $6f8b: $5b
    rst $38                                       ; $6f8c: $ff
    and $5a                                       ; $6f8d: $e6 $5a
    ld hl, sp-$1a                                 ; $6f8f: $f8 $e6
    nop                                           ; $6f91: $00
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $20                                       ; $6f94: $e7
    and $c9                                       ; $6f95: $e6 $c9
    and $c0                                       ; $6f97: $e6 $c0
    cp d                                          ; $6f99: $ba
    add sp, -$36                                  ; $6f9a: $e8 $ca
    rst $38                                       ; $6f9c: $ff
    ret nz                                        ; $6f9d: $c0

    add sp, -$79                                  ; $6f9e: $e8 $87
    ldh [$86], a                                  ; $6fa0: $e0 $86
    ld [c], a                                     ; $6fa2: $e2
    add c                                         ; $6fa3: $81
    ldh [$5c], a                                  ; $6fa4: $e0 $5c
    ld e, l                                       ; $6fa6: $5d
    add a                                         ; $6fa7: $87
    ld h, d                                       ; $6fa8: $62
    ld e, l                                       ; $6fa9: $5d
    ld e, h                                       ; $6faa: $5c
    ld [hl], a                                    ; $6fab: $77
    ldh [$ca], a                                  ; $6fac: $e0 $ca
    rst $38                                       ; $6fae: $ff
    ret nz                                        ; $6faf: $c0

    db $eb                                        ; $6fb0: $eb
    inc a                                         ; $6fb1: $3c
    db $e3                                        ; $6fb2: $e3
    ld e, h                                       ; $6fb3: $5c
    dec de                                        ; $6fb4: $1b
    ld e, l                                       ; $6fb5: $5d
    ld sp, $e1ff                                  ; $6fb6: $31 $ff $e1
    ld h, b                                       ; $6fb9: $60
    ld e, d                                       ; $6fba: $5a
    ret nz                                        ; $6fbb: $c0

    rst $38                                       ; $6fbc: $ff
    add b                                         ; $6fbd: $80
    db $eb                                        ; $6fbe: $eb
    adc b                                         ; $6fbf: $88
    pop hl                                        ; $6fc0: $e1
    ld a, [hl]                                    ; $6fc1: $7e
    rst $38                                       ; $6fc2: $ff
    ldh [$31], a                                  ; $6fc3: $e0 $31
    ld sp, $5647                                  ; $6fc5: $31 $47 $56
    ld d, [hl]                                    ; $6fc8: $56
    ld b, a                                       ; $6fc9: $47
    cp a                                          ; $6fca: $bf
    pop hl                                        ; $6fcb: $e1
    db $fc                                        ; $6fcc: $fc
    jp z, Jump_05d_40ff                           ; $6fcd: $ca $ff $40

    ld [$3160], a                                 ; $6fd0: $ea $60 $31
    ld b, a                                       ; $6fd3: $47
    ld d, a                                       ; $6fd4: $57
    ld d, a                                       ; $6fd5: $57
    ld d, [hl]                                    ; $6fd6: $56
    rst $38                                       ; $6fd7: $ff
    ld d, a                                       ; $6fd8: $57
    ld d, [hl]                                    ; $6fd9: $56
    ld b, [hl]                                    ; $6fda: $46
    ld [hl], $6d                                  ; $6fdb: $36 $6d
    ld l, e                                       ; $6fdd: $6b
    ld [hl], $46                                  ; $6fde: $36 $46
    and a                                         ; $6fe0: $a7
    ld b, a                                       ; $6fe1: $47
    ld sp, $ca5f                                  ; $6fe2: $31 $5f $ca
    rst $38                                       ; $6fe5: $ff
    add sp, -$19                                  ; $6fe6: $e8 $e7
    ld e, d                                       ; $6fe8: $5a
    pop bc                                        ; $6fe9: $c1
    ldh [rOBP1], a                                ; $6fea: $e0 $49
    ld a, a                                       ; $6fec: $7f
    ld [hl], $69                                  ; $6fed: $36 $69
    ld l, e                                       ; $6fef: $6b
    ld l, e                                       ; $6ff0: $6b
    ld l, e                                       ; $6ff1: $6b
    jr nc, @+$32                                  ; $6ff2: $30 $30

    ei                                            ; $6ff4: $fb
    ldh [$9f], a                                  ; $6ff5: $e0 $9f
    ld l, c                                       ; $6ff7: $69
    jr nc, jr_05d_703c                            ; $6ff8: $30 $42

    ld c, c                                       ; $6ffa: $49
    ld e, [hl]                                    ; $6ffb: $5e
    jp z, $c0ff                                   ; $6ffc: $ca $ff $c0

    ret                                           ; $6fff: $c9


    ld h, c                                       ; $7000: $61
    ld [hl], a                                    ; $7001: $77
    ld sp, $3050                                  ; $7002: $31 $50 $30
    ret nz                                        ; $7005: $c0

    add sp, $6d                                   ; $7006: $e8 $6d
    add hl, sp                                    ; $7008: $39
    ld sp, $ffca                                  ; $7009: $31 $ca $ff
    ld a, [$ebc0]                                 ; $700c: $fa $c0 $eb
    ld d, c                                       ; $700f: $51
    ret nz                                        ; $7010: $c0

    ldh [$6d], a                                  ; $7011: $e0 $6d
    ld l, l                                       ; $7013: $6d
    ld l, h                                       ; $7014: $6c
    ld l, h                                       ; $7015: $6c
    ld l, l                                       ; $7016: $6d
    call $c06d                                    ; $7017: $cd $6d $c0
    pop hl                                        ; $701a: $e1
    ld c, b                                       ; $701b: $48
    ld c, c                                       ; $701c: $49
    jp z, Jump_05d_40ff                           ; $701d: $ca $ff $40

    ret                                           ; $7020: $c9


    ld e, [hl]                                    ; $7021: $5e
    ld sp, $49ef                                  ; $7022: $31 $ef $49
    ld c, b                                       ; $7025: $48
    jr nc, jr_05d_7092                            ; $7026: $30 $6a

    ret nz                                        ; $7028: $c0

    db $e3                                        ; $7029: $e3
    ld l, d                                       ; $702a: $6a
    jr nc, jr_05d_705d                            ; $702b: $30 $30

    rst $20                                       ; $702d: $e7
    ld l, l                                       ; $702e: $6d
    ld l, l                                       ; $702f: $6d
    ld d, b                                       ; $7030: $50
    jp z, Jump_000_00ff                           ; $7031: $ca $ff $00

    ret                                           ; $7034: $c9


    ld e, a                                       ; $7035: $5f
    ld sp, $df31                                  ; $7036: $31 $31 $df
    add hl, sp                                    ; $7039: $39
    jr nc, jr_05d_70a6                            ; $703a: $30 $6a

jr_05d_703c:
    ld l, d                                       ; $703c: $6a
    ld l, h                                       ; $703d: $6c
    rst $38                                       ; $703e: $ff
    ldh [rOCPS], a                                ; $703f: $e0 $6a
    ld l, d                                       ; $7041: $6a
    and $c1                                       ; $7042: $e6 $c1
    ldh [$6d], a                                  ; $7044: $e0 $6d
    ld d, c                                       ; $7046: $51
    jp z, $c0ff                                   ; $7047: $ca $ff $c0

    xor d                                         ; $704a: $aa
    ld e, [hl]                                    ; $704b: $5e
    ld sp, $0f4d                                  ; $704c: $31 $4d $0f
    ld [hl-], a                                   ; $704f: $32
    jr nc, @+$32                                  ; $7050: $30 $30

    ld l, b                                       ; $7052: $68
    rst $38                                       ; $7053: $ff
    ldh [$82], a                                  ; $7054: $e0 $82
    pop hl                                        ; $7056: $e1
    ld b, b                                       ; $7057: $40
    rst $38                                       ; $7058: $ff
    add b                                         ; $7059: $80
    xor l                                         ; $705a: $ad
    ld b, b                                       ; $705b: $40
    ld a, a                                       ; $705c: $7f

jr_05d_705d:
    ldh [$3e], a                                  ; $705d: $e0 $3e
    ldh [rIE], a                                  ; $705f: $e0 $ff
    ld [c], a                                     ; $7061: $e2
    add d                                         ; $7062: $82
    ldh [$c0], a                                  ; $7063: $e0 $c0
    rst $18                                       ; $7065: $df
    ret nz                                        ; $7066: $c0

    xor [hl]                                      ; $7067: $ae
    ld h, b                                       ; $7068: $60
    ld a, $e1                                     ; $7069: $3e $e1
    adc $c1                                       ; $706b: $ce $c1
    db $e4                                        ; $706d: $e4
    ld b, h                                       ; $706e: $44
    ld b, [hl]                                    ; $706f: $46
    ld c, l                                       ; $7070: $4d
    ld b, b                                       ; $7071: $40
    rst $18                                       ; $7072: $df
    ret nz                                        ; $7073: $c0

    adc l                                         ; $7074: $8d
    ld e, [hl]                                    ; $7075: $5e
    ld sp, $aff7                                  ; $7076: $31 $f7 $af
    ld l, [hl]                                    ; $7079: $6e
    ld [hl], $c5                                  ; $707a: $36 $c5
    pop bc                                        ; $707c: $c1
    ld [hl], $6e                                  ; $707d: $36 $6e
    xor a                                         ; $707f: $af
    ld sp, $c0fc                                  ; $7080: $31 $fc $c0
    cp a                                          ; $7083: $bf
    nop                                           ; $7084: $00
    xor [hl]                                      ; $7085: $ae
    ld e, a                                       ; $7086: $5f
    ld sp, $80a1                                  ; $7087: $31 $a1 $80
    ld l, a                                       ; $708a: $6f
    ld a, l                                       ; $708b: $7d
    rst $38                                       ; $708c: $ff
    ld a, h                                       ; $708d: $7c
    ld a, l                                       ; $708e: $7d
    ld a, h                                       ; $708f: $7c
    ld l, a                                       ; $7090: $6f
    add b                                         ; $7091: $80

jr_05d_7092:
    and c                                         ; $7092: $a1
    ld sp, $0060                                  ; $7093: $31 $60 $00
    add b                                         ; $7096: $80
    sbc a                                         ; $7097: $9f
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
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

jr_05d_70a6:
    nop                                           ; $70a6: $00
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
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    nop                                           ; $70b7: $00
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
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    nop                                           ; $70c8: $00
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
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    nop                                           ; $70d9: $00
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
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    nop                                           ; $70ea: $00
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
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    nop                                           ; $70fb: $00
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
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    nop                                           ; $710c: $00
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
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    nop                                           ; $711d: $00
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
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
    nop                                           ; $712e: $00
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
    nop                                           ; $713f: $00
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
    nop                                           ; $7150: $00
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    db $f4                                        ; $7158: $f4
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    and l                                         ; $715c: $a5
    nop                                           ; $715d: $00
    rst $38                                       ; $715e: $ff
    push hl                                       ; $715f: $e5
    ld [hl-], a                                   ; $7160: $32
    or $e6                                        ; $7161: $f6 $e6
    rst $30                                       ; $7163: $f7
    rst $20                                       ; $7164: $e7
    dec [hl]                                      ; $7165: $35
    db $ec                                        ; $7166: $ec
    xor $37                                       ; $7167: $ee $37
    db $ec                                        ; $7169: $ec
    jp c, $c7f0                                   ; $716a: $da $f0 $c7

    add sp, $33                                   ; $716d: $e8 $33
    ld sp, $f2e0                                  ; $716f: $31 $e0 $f2
    ld [hl], $30                                  ; $7172: $36 $30
    scf                                           ; $7174: $37
    cp a                                          ; $7175: $bf
    ld h, $20                                     ; $7176: $26 $20
    daa                                           ; $7178: $27
    db $10                                        ; $7179: $10
    ld d, $17                                     ; $717a: $16 $17
    jp nz, Jump_000_34f6                          ; $717c: $c2 $f6 $34

    rst $38                                       ; $717f: $ff
    ld [hl], $32                                  ; $7180: $36 $32
    jr nc, jr_05d_71bb                            ; $7182: $30 $37

    ld sp, $3133                                  ; $7184: $31 $33 $31
    inc sp                                        ; $7187: $33
    nop                                           ; $7188: $00
    and b                                         ; $7189: $a0
    ei                                            ; $718a: $fb
    rst $38                                       ; $718b: $ff
    rst $28                                       ; $718c: $ef
    nop                                           ; $718d: $00
    nop                                           ; $718e: $00
    nop                                           ; $718f: $00
    sbc b                                         ; $7190: $98
    ld [hl], c                                    ; $7191: $71
    ret z                                         ; $7192: $c8

    ld [hl], c                                    ; $7193: $71
    ld d, a                                       ; $7194: $57
    ld [hl], e                                    ; $7195: $73
    inc a                                         ; $7196: $3c
    ld [hl], l                                    ; $7197: $75
    db $ec                                        ; $7198: $ec
    dec hl                                        ; $7199: $2b
    ld [hl+], a                                   ; $719a: $22
    dec sp                                        ; $719b: $3b
    ld b, b                                       ; $719c: $40
    ld [hl+], a                                   ; $719d: $22
    nop                                           ; $719e: $00
    add hl, bc                                    ; $719f: $09
    and l                                         ; $71a0: $a5
    ld b, e                                       ; $71a1: $43
    xor $37                                       ; $71a2: $ee $37
    ld [hl+], a                                   ; $71a4: $22
    dec sp                                        ; $71a5: $3b
    ld b, b                                       ; $71a6: $40
    ld [hl+], a                                   ; $71a7: $22
    ld c, b                                       ; $71a8: $48
    ld a, a                                       ; $71a9: $7f
    ld c, b                                       ; $71aa: $48
    ld a, a                                       ; $71ab: $7f
    ld c, b                                       ; $71ac: $48
    ld a, a                                       ; $71ad: $7f
    ld c, b                                       ; $71ae: $48
    ld a, a                                       ; $71af: $7f
    ld e, a                                       ; $71b0: $5f
    ld e, e                                       ; $71b1: $5b
    ret z                                         ; $71b2: $c8

    inc bc                                        ; $71b3: $03
    inc bc                                        ; $71b4: $03
    ld [bc], a                                    ; $71b5: $02
    ld [bc], a                                    ; $71b6: $02
    ld bc, $0116                                  ; $71b7: $01 $16 $01
    ret z                                         ; $71ba: $c8

jr_05d_71bb:
    inc bc                                        ; $71bb: $03
    inc bc                                        ; $71bc: $03
    ld [bc], a                                    ; $71bd: $02
    ld [bc], a                                    ; $71be: $02
    ld bc, $2508                                  ; $71bf: $01 $08 $25
    ld [$0825], sp                                ; $71c2: $08 $25 $08
    dec h                                         ; $71c5: $25
    ld [$6b25], sp                                ; $71c6: $08 $25 $6b
    dec hl                                        ; $71c9: $2b
    ld a, [bc]                                    ; $71ca: $0a
    cp $e0                                        ; $71cb: $fe $e0
    dec bc                                        ; $71cd: $0b
    rst $38                                       ; $71ce: $ff
    and $2b                                       ; $71cf: $e6 $2b
    dec hl                                        ; $71d1: $2b
    pop af                                        ; $71d2: $f1
    ld [$ff1c], a                                 ; $71d3: $ea $1c $ff
    rst $38                                       ; $71d6: $ff
    pop bc                                        ; $71d7: $c1
    db $e4                                        ; $71d8: $e4
    ld l, e                                       ; $71d9: $6b
    ld l, e                                       ; $71da: $6b
    ld c, e                                       ; $71db: $4b
    rst $38                                       ; $71dc: $ff
    ldh [$bd], a                                  ; $71dd: $e0 $bd
    db $e4                                        ; $71df: $e4
    jp z, Jump_000_00ff                           ; $71e0: $ca $ff $00

    adc a                                         ; $71e3: $8f
    add sp, -$3f                                  ; $71e4: $e8 $c1
    db $e4                                        ; $71e6: $e4
    jp z, $bde1                                   ; $71e7: $ca $e1 $bd

    pop hl                                        ; $71ea: $e1
    cp h                                          ; $71eb: $bc
    db $e3                                        ; $71ec: $e3
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    add b                                         ; $71ef: $80
    and $44                                       ; $71f0: $e6 $44
    pop hl                                        ; $71f2: $e1
    inc c                                         ; $71f3: $0c
    pop bc                                        ; $71f4: $c1
    ldh [$3d], a                                  ; $71f5: $e0 $3d
    ldh [rWX], a                                  ; $71f7: $e0 $4b
    dec hl                                        ; $71f9: $2b
    ld a, c                                       ; $71fa: $79
    ldh [$bb], a                                  ; $71fb: $e0 $bb
    ldh [$cb], a                                  ; $71fd: $e0 $cb
    rst $38                                       ; $71ff: $ff
    db $ed                                        ; $7200: $ed
    db $ec                                        ; $7201: $ec
    ld [hl], l                                    ; $7202: $75
    ld l, e                                       ; $7203: $6b
    ret                                           ; $7204: $c9


    ldh [$2b], a                                  ; $7205: $e0 $2b
    ld b, b                                       ; $7207: $40
    ldh [$2b], a                                  ; $7208: $e0 $2b
    dec bc                                        ; $720a: $0b
    dec hl                                        ; $720b: $2b
    cp a                                          ; $720c: $bf
    ldh [rNR10], a                                ; $720d: $e0 $10
    cp h                                          ; $720f: $bc
    ldh [rIE], a                                  ; $7210: $e0 $ff
    rst $38                                       ; $7212: $ff
    jp nz, $c1ec                                  ; $7213: $c2 $ec $c1

    ld [c], a                                     ; $7216: $e2
    ld c, e                                       ; $7217: $4b
    ld b, $e0                                     ; $7218: $06 $e0
    or l                                          ; $721a: $b5
    ld [c], a                                     ; $721b: $e2
    call z, Call_000_04ff                         ; $721c: $cc $ff $04
    add e                                         ; $721f: $83
    ld [$c081], a                                 ; $7220: $ea $81 $c0
    dec hl                                        ; $7223: $2b
    inc b                                         ; $7224: $04
    ld [c], a                                     ; $7225: $e2
    ret nz                                        ; $7226: $c0

    rst $38                                       ; $7227: $ff
    ldh a, [$ef]                                  ; $7228: $f0 $ef
    ld c, e                                       ; $722a: $4b
    pop hl                                        ; $722b: $e1
    inc b                                         ; $722c: $04
    pop hl                                        ; $722d: $e1
    db $10                                        ; $722e: $10
    ret nz                                        ; $722f: $c0

    db $e4                                        ; $7230: $e4
    ccf                                           ; $7231: $3f
    pop hl                                        ; $7232: $e1
    ret nz                                        ; $7233: $c0

    rst $38                                       ; $7234: $ff
    ret nz                                        ; $7235: $c0

    db $eb                                        ; $7236: $eb
    dec bc                                        ; $7237: $0b
    rrca                                          ; $7238: $0f
    pop hl                                        ; $7239: $e1
    pop bc                                        ; $723a: $c1
    rst $20                                       ; $723b: $e7
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    ld b, b                                       ; $723e: $40
    ccf                                           ; $723f: $3f
    set 1, e                                      ; $7240: $cb $cb
    and b                                         ; $7242: $a0
    set 4, l                                      ; $7243: $cb $e5
    pop bc                                        ; $7245: $c1
    rst $38                                       ; $7246: $ff
    add e                                         ; $7247: $83
    ret nc                                        ; $7248: $d0

    adc l                                         ; $7249: $8d
    and b                                         ; $724a: $a0
    dec hl                                        ; $724b: $2b
    ld bc, $00c2                                  ; $724c: $01 $c2 $00
    ld sp, hl                                     ; $724f: $f9
    ldh [$38], a                                  ; $7250: $e0 $38
    jp nz, $ffff                                  ; $7252: $c2 $ff $ff

    cp l                                          ; $7255: $bd
    xor h                                         ; $7256: $ac
    ld c, e                                       ; $7257: $4b
    and b                                         ; $7258: $a0
    jp Jump_05d_7ce9                              ; $7259: $c3 $e9 $7c


    rst $38                                       ; $725c: $ff
    ld a, a                                       ; $725d: $7f
    rst $28                                       ; $725e: $ef
    add d                                         ; $725f: $82
    ld a, l                                       ; $7260: $7d
    pop bc                                        ; $7261: $c1
    ld l, e                                       ; $7262: $6b
    ld b, b                                       ; $7263: $40
    and e                                         ; $7264: $a3
    inc a                                         ; $7265: $3c
    rst $38                                       ; $7266: $ff
    ld bc, $47ec                                  ; $7267: $01 $ec $47
    jp nz, $e6c9                                  ; $726a: $c2 $c9 $e6

    ld l, e                                       ; $726d: $6b
    ld bc, $6d2b                                  ; $726e: $01 $2b $6d
    and d                                         ; $7271: $a2
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    ld b, b                                       ; $7274: $40
    call nz, $818c                                ; $7275: $c4 $8c $81
    call nz, $0581                                ; $7278: $c4 $81 $05
    db $e3                                        ; $727b: $e3
    ld [hl], l                                    ; $727c: $75
    and b                                         ; $727d: $a0
    nop                                           ; $727e: $00
    add b                                         ; $727f: $80
    sbc a                                         ; $7280: $9f
    cp a                                          ; $7281: $bf
    db $ed                                        ; $7282: $ed
    adc l                                         ; $7283: $8d
    add [hl]                                      ; $7284: $86
    jp $fee0                                      ; $7285: $c3 $e0 $fe


    pop hl                                        ; $7288: $e1

jr_05d_7289:
    set 7, a                                      ; $7289: $cb $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    nop                                           ; $728f: $00
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
    nop                                           ; $72a0: $00
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    db $10                                        ; $72a7: $10
    jp nz, $ffff                                  ; $72a8: $c2 $ff $ff

    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    nop                                           ; $72b1: $00
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
    ld b, b                                       ; $72c2: $40
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
    ccf                                           ; $72cd: $3f
    ld h, c                                       ; $72ce: $61
    ld [$ffdd], sp                                ; $72cf: $08 $dd $ff
    nop                                           ; $72d2: $00
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
    nop                                           ; $72e3: $00
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    jr z, jr_05d_7289                             ; $72e8: $28 $9f

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
    nop                                           ; $72f4: $00
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    or c                                          ; $72fd: $b1
    rlca                                          ; $72fe: $07
    cp c                                          ; $72ff: $b9
    rst $18                                       ; $7300: $df
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    nop                                           ; $7305: $00
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
    nop                                           ; $7316: $00
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
    nop                                           ; $7327: $00
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff

jr_05d_732d:
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
    nop                                           ; $7338: $00
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
    jr nc, @+$01                                  ; $7349: $30 $ff

    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    dec bc                                        ; $7352: $0b
    dec bc                                        ; $7353: $0b
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    cp e                                          ; $7357: $bb
    add hl, hl                                    ; $7358: $29

jr_05d_7359:
    jr z, jr_05d_7359                             ; $7359: $28 $fe

    ldh [$2a], a                                  ; $735b: $e0 $2a
    dec hl                                        ; $735d: $2b
    ld bc, $e4ff                                  ; $735e: $01 $ff $e4
    dec hl                                        ; $7361: $2b
    push bc                                       ; $7362: $c5
    ld a, [hl+]                                   ; $7363: $2a
    rst $28                                       ; $7364: $ef
    ldh [rHDMA1], a                               ; $7365: $e0 $51
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $20                                       ; $7369: $e7
    and $c1                                       ; $736a: $e6 $c1
    pop hl                                        ; $736c: $e1
    ld l, $01                                     ; $736d: $2e $01
    ld a, a                                       ; $736f: $7f
    ld bc, $1617                                  ; $7370: $01 $17 $16
    ld [hl+], a                                   ; $7373: $22
    inc hl                                        ; $7374: $23
    ld d, $17                                     ; $7375: $16 $17
    cp d                                          ; $7377: $ba
    pop hl                                        ; $7378: $e1
    rst $00                                       ; $7379: $c7
    jr nc, jr_05d_73a7                            ; $737a: $30 $2b

    ld a, [hl+]                                   ; $737c: $2a
    jp z, $e8ff                                   ; $737d: $ca $ff $e8

    rst $20                                       ; $7380: $e7
    pop bc                                        ; $7381: $c1
    db $e3                                        ; $7382: $e3
    inc c                                         ; $7383: $0c
    ld b, $1d                                     ; $7384: $06 $1d
    nop                                           ; $7386: $00
    rst $38                                       ; $7387: $ff
    ldh [rTMA], a                                 ; $7388: $e0 $06
    inc hl                                        ; $738a: $23
    ld [hl+], a                                   ; $738b: $22
    cp h                                          ; $738c: $bc
    ld [c], a                                     ; $738d: $e2
    jp z, $80ff                                   ; $738e: $ca $ff $80

    add sp, -$0a                                  ; $7391: $e8 $f6
    ld b, h                                       ; $7393: $44
    pop hl                                        ; $7394: $e1
    add hl, de                                    ; $7395: $19
    jr jr_05d_7359                                ; $7396: $18 $c1

    pop hl                                        ; $7398: $e1
    dec sp                                        ; $7399: $3b
    inc [hl]                                      ; $739a: $34
    nop                                           ; $739b: $00
    jr c, jr_05d_732d                             ; $739c: $38 $8f

    dec sp                                        ; $739e: $3b
    ld b, c                                       ; $739f: $41
    ld b, e                                       ; $73a0: $43
    ld b, h                                       ; $73a1: $44
    ret nz                                        ; $73a2: $c0

    rst $38                                       ; $73a3: $ff
    jp hl                                         ; $73a4: $e9


    add sp, $06                                   ; $73a5: $e8 $06

jr_05d_73a7:
    pop hl                                        ; $73a7: $e1
    rla                                           ; $73a8: $17
    ld h, l                                       ; $73a9: $65
    ld [bc], a                                    ; $73aa: $02
    jp nz, Jump_000_3be1                          ; $73ab: $c2 $e1 $3b

    ret nz                                        ; $73ae: $c0

    ldh [$bf], a                                  ; $73af: $e0 $bf
    pop hl                                        ; $73b1: $e1
    inc a                                         ; $73b2: $3c
    ld b, d                                       ; $73b3: $42
    jp z, $c4ff                                   ; $73b4: $ca $ff $c4

    add sp, -$19                                  ; $73b7: $e8 $e7
    dec b                                         ; $73b9: $05
    pop hl                                        ; $73ba: $e1
    ld b, $c7                                     ; $73bb: $06 $c7
    ldh [$c1], a                                  ; $73bd: $e0 $c1
    ldh [$c0], a                                  ; $73bf: $e0 $c0
    pop hl                                        ; $73c1: $e1
    scf                                           ; $73c2: $37
    dec sp                                        ; $73c3: $3b
    rst $20                                       ; $73c4: $e7
    dec sp                                        ; $73c5: $3b
    ld a, $4a                                     ; $73c6: $3e $4a
    jp z, $c0ff                                   ; $73c8: $ca $ff $c0

    add sp, $0c                                   ; $73cb: $e8 $0c
    ld b, $37                                     ; $73cd: $06 $37
    call $c000                                    ; $73cf: $cd $00 $c0
    ld [$3d48], a                                 ; $73d2: $ea $48 $3d
    jp z, $e8ff                                   ; $73d5: $ca $ff $e8

    rst $20                                       ; $73d8: $e7
    ccf                                           ; $73d9: $3f
    ld c, b                                       ; $73da: $48
    rst $18                                       ; $73db: $df
    nop                                           ; $73dc: $00
    scf                                           ; $73dd: $37
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    dec [hl]                                      ; $73e0: $35
    add c                                         ; $73e1: $81
    pop hl                                        ; $73e2: $e1
    dec sp                                        ; $73e3: $3b
    dec [hl]                                      ; $73e4: $35
    adc $40                                       ; $73e5: $ce $40
    pop hl                                        ; $73e7: $e1
    dec sp                                        ; $73e8: $3b
    ld c, b                                       ; $73e9: $48
    ccf                                           ; $73ea: $3f
    jp z, $e8ff                                   ; $73eb: $ca $ff $e8

    rst $20                                       ; $73ee: $e7
    dec a                                         ; $73ef: $3d
    ld c, b                                       ; $73f0: $48
    sbc b                                         ; $73f1: $98
    dec bc                                        ; $73f2: $0b
    ldh [$bf], a                                  ; $73f3: $e0 $bf
    db $e3                                        ; $73f5: $e3
    pop bc                                        ; $73f6: $c1
    db $e3                                        ; $73f7: $e3
    nop                                           ; $73f8: $00
    add hl, bc                                    ; $73f9: $09
    ret nz                                        ; $73fa: $c0

    rst $18                                       ; $73fb: $df
    jp hl                                         ; $73fc: $e9


    add sp, $4a                                   ; $73fd: $e8 $4a
    cp d                                          ; $73ff: $ba
    ret nz                                        ; $7400: $c0

    ldh [$3b], a                                  ; $7401: $e0 $3b
    cp a                                          ; $7403: $bf
    ldh [$33], a                                  ; $7404: $e0 $33
    inc sp                                        ; $7406: $33
    inc sp                                        ; $7407: $33
    pop bc                                        ; $7408: $c1
    db $e3                                        ; $7409: $e3
    jr jr_05d_7425                                ; $740a: $18 $19

    add hl, de                                    ; $740c: $19
    ret nz                                        ; $740d: $c0

    rst $38                                       ; $740e: $ff
    jp hl                                         ; $740f: $e9


    add sp, $42                                   ; $7410: $e8 $42
    ld a, $c6                                     ; $7412: $3e $c6
    pop bc                                        ; $7414: $c1
    ld a, [hl]                                    ; $7415: $7e
    ldh [rIE], a                                  ; $7416: $e0 $ff
    and b                                         ; $7418: $a0
    adc $c3                                       ; $7419: $ce $c3
    ret nz                                        ; $741b: $c0

    nop                                           ; $741c: $00
    ld b, $0c                                     ; $741d: $06 $0c

jr_05d_741f:
    nop                                           ; $741f: $00
    rst $18                                       ; $7420: $df
    add b                                         ; $7421: $80
    jp z, Jump_05d_403d                           ; $7422: $ca $3d $40

jr_05d_7425:
    ld e, b                                       ; $7425: $58
    ld b, [hl]                                    ; $7426: $46
    ret nz                                        ; $7427: $c0

    db $fd                                        ; $7428: $fd
    ret nz                                        ; $7429: $c0

    ret nz                                        ; $742a: $c0

    pop hl                                        ; $742b: $e1
    nop                                           ; $742c: $00
    ld b, $7c                                     ; $742d: $06 $7c
    and c                                         ; $742f: $a1
    ld l, $ca                                     ; $7430: $2e $ca
    rst $38                                       ; $7432: $ff
    or d                                          ; $7433: $b2
    ld b, b                                       ; $7434: $40
    ret z                                         ; $7435: $c8

    ccf                                           ; $7436: $3f
    ld a, a                                       ; $7437: $7f
    pop hl                                        ; $7438: $e1
    ret nz                                        ; $7439: $c0

    ld [c], a                                     ; $743a: $e2
    ld b, [hl]                                    ; $743b: $46
    ld b, a                                       ; $743c: $47
    ld a, $a2                                     ; $743d: $3e $a2
    ld l, $7c                                     ; $743f: $2e $7c
    nop                                           ; $7441: $00
    cp a                                          ; $7442: $bf
    jp hl                                         ; $7443: $e9


    add sp, $2c                                   ; $7444: $e8 $2c
    ld bc, $4542                                  ; $7446: $01 $42 $45
    ld b, [hl]                                    ; $7449: $46
    add b                                         ; $744a: $80
    pop hl                                        ; $744b: $e1
    sub e                                         ; $744c: $93
    ld b, [hl]                                    ; $744d: $46
    ld b, l                                       ; $744e: $45
    add [hl]                                      ; $744f: $86
    and b                                         ; $7450: $a0
    pop bc                                        ; $7451: $c1
    ld [c], a                                     ; $7452: $e2
    jr z, jr_05d_741f                             ; $7453: $28 $ca

    rst $38                                       ; $7455: $ff
    add sp, -$19                                  ; $7456: $e8 $e7
    ld sp, $01df                                  ; $7458: $31 $df $01
    ld bc, $4344                                  ; $745b: $01 $44 $43
    ld c, c                                       ; $745e: $49
    rst $38                                       ; $745f: $ff
    ldh [$3c], a                                  ; $7460: $e0 $3c
    ld b, d                                       ; $7462: $42
    ld h, b                                       ; $7463: $60
    add b                                         ; $7464: $80
    sbc a                                         ; $7465: $9f
    ret nz                                        ; $7466: $c0

    sub c                                         ; $7467: $91
    add e                                         ; $7468: $83
    add b                                         ; $7469: $80
    cp [hl]                                       ; $746a: $be
    pop hl                                        ; $746b: $e1
    add e                                         ; $746c: $83
    ld [c], a                                     ; $746d: $e2
    dec hl                                        ; $746e: $2b
    ld a, [hl+]                                   ; $746f: $2a
    ld [hl-], a                                   ; $7470: $32
    add c                                         ; $7471: $81
    nop                                           ; $7472: $00
    add b                                         ; $7473: $80
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
    nop                                           ; $7483: $00
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
    nop                                           ; $7494: $00
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
    nop                                           ; $74a5: $00
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
    add sp, -$19                                  ; $74b4: $e8 $e7
    ld bc, $dd5d                                  ; $74b6: $01 $5d $dd
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
    nop                                           ; $74c6: $00
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
    nop                                           ; $74d7: $00
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
    nop                                           ; $74e8: $00
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
    nop                                           ; $74f9: $00
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
    nop                                           ; $750a: $00
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
    nop                                           ; $751b: $00
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
    nop                                           ; $752c: $00
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
    jp hl                                         ; $7538: $e9


    nop                                           ; $7539: $00
    nop                                           ; $753a: $00
    nop                                           ; $753b: $00
    ld sp, hl                                     ; $753c: $f9
    nop                                           ; $753d: $00
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    xor $ed                                       ; $7540: $ee $ed
    ld [hl], $30                                  ; $7542: $36 $30
    scf                                           ; $7544: $37
    ld h, $20                                     ; $7545: $26 $20
    cpl                                           ; $7547: $2f
    daa                                           ; $7548: $27
    db $10                                        ; $7549: $10
    ld d, $17                                     ; $754a: $16 $17
    push de                                       ; $754c: $d5
    rst $28                                       ; $754d: $ef
    ld de, $e0ff                                  ; $754e: $11 $ff $e0
    cp a                                          ; $7551: $bf
    rst $38                                       ; $7552: $ff
    nop                                           ; $7553: $00
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    push hl                                       ; $7559: $e5
    nop                                           ; $755a: $00
    nop                                           ; $755b: $00
    nop                                           ; $755c: $00
    ld h, l                                       ; $755d: $65
    ld [hl], l                                    ; $755e: $75
    sub l                                         ; $755f: $95
    ld [hl], l                                    ; $7560: $75
    inc c                                         ; $7561: $0c
    ld [hl], a                                    ; $7562: $77
    xor $78                                       ; $7563: $ee $78
    db $ec                                        ; $7565: $ec
    inc bc                                        ; $7566: $03
    nop                                           ; $7567: $00
    inc bc                                        ; $7568: $03
    nop                                           ; $7569: $00
    ld [bc], a                                    ; $756a: $02
    nop                                           ; $756b: $00
    ld bc, $03ec                                  ; $756c: $01 $ec $03
    di                                            ; $756f: $f3
    inc bc                                        ; $7570: $03
    nop                                           ; $7571: $00
    inc bc                                        ; $7572: $03
    nop                                           ; $7573: $00
    ld [bc], a                                    ; $7574: $02
    ld c, b                                       ; $7575: $48
    ld a, a                                       ; $7576: $7f
    ld c, b                                       ; $7577: $48
    ld a, a                                       ; $7578: $7f
    ld c, b                                       ; $7579: $48
    ld a, a                                       ; $757a: $7f
    ld c, b                                       ; $757b: $48
    ld a, a                                       ; $757c: $7f
    ld e, a                                       ; $757d: $5f
    ld e, e                                       ; $757e: $5b
    ret z                                         ; $757f: $c8

    inc bc                                        ; $7580: $03
    inc bc                                        ; $7581: $03
    ld [bc], a                                    ; $7582: $02
    ld [bc], a                                    ; $7583: $02
    ld bc, $0116                                  ; $7584: $01 $16 $01
    ret z                                         ; $7587: $c8

    inc bc                                        ; $7588: $03
    inc bc                                        ; $7589: $03
    ld [bc], a                                    ; $758a: $02
    ld [bc], a                                    ; $758b: $02
    ld bc, $2508                                  ; $758c: $01 $08 $25
    ld [$0825], sp                                ; $758f: $08 $25 $08
    dec h                                         ; $7592: $25
    ld [$9d25], sp                                ; $7593: $08 $25 $9d
    dec bc                                        ; $7596: $0b
    rst $38                                       ; $7597: $ff
    pop hl                                        ; $7598: $e1
    ld l, e                                       ; $7599: $6b
    ld l, e                                       ; $759a: $6b
    ld c, e                                       ; $759b: $4b
    rst $38                                       ; $759c: $ff
    pop hl                                        ; $759d: $e1
    db $f4                                        ; $759e: $f4
    ld [c], a                                     ; $759f: $e2
    dec hl                                        ; $75a0: $2b
    db $e3                                        ; $75a1: $e3
    dec hl                                        ; $75a2: $2b
    ld a, [bc]                                    ; $75a3: $0a
    db $ec                                        ; $75a4: $ec
    ld [c], a                                     ; $75a5: $e2
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    and $e5                                       ; $75a8: $e6 $e5
    ld l, e                                       ; $75aa: $6b
    ld l, e                                       ; $75ab: $6b
    dec hl                                        ; $75ac: $2b
    dec de                                        ; $75ad: $1b
    dec hl                                        ; $75ae: $2b
    ld l, e                                       ; $75af: $6b
    cp l                                          ; $75b0: $bd
    db $e4                                        ; $75b1: $e4
    ld c, e                                       ; $75b2: $4b
    dec hl                                        ; $75b3: $2b
    cp [hl]                                       ; $75b4: $be
    ldh [$cd], a                                  ; $75b5: $e0 $cd
    rst $38                                       ; $75b7: $ff
    ld [$83e9], a                                 ; $75b8: $ea $e9 $83
    ld c, e                                       ; $75bb: $4b
    dec bc                                        ; $75bc: $0b
    jp nz, Jump_05d_7de1                          ; $75bd: $c2 $e1 $7d

    push hl                                       ; $75c0: $e5
    ld a, d                                       ; $75c1: $7a
    db $e4                                        ; $75c2: $e4
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    pop bc                                        ; $75c5: $c1
    and $4b                                       ; $75c6: $e6 $4b
    ld c, $82                                     ; $75c8: $0e $82
    ldh [$2b], a                                  ; $75ca: $e0 $2b
    dec hl                                        ; $75cc: $2b
    dec hl                                        ; $75cd: $2b
    add c                                         ; $75ce: $81
    db $e3                                        ; $75cf: $e3
    ld [hl], l                                    ; $75d0: $75
    ldh [$bf], a                                  ; $75d1: $e0 $bf
    rst $38                                       ; $75d3: $ff
    add d                                         ; $75d4: $82
    db $eb                                        ; $75d5: $eb
    ld [bc], a                                    ; $75d6: $02
    ld c, $e0                                     ; $75d7: $0e $e0
    dec hl                                        ; $75d9: $2b
    nop                                           ; $75da: $00
    db $e3                                        ; $75db: $e3
    ld a, c                                       ; $75dc: $79
    pop hl                                        ; $75dd: $e1
    ret nz                                        ; $75de: $c0

    rst $38                                       ; $75df: $ff
    ret nz                                        ; $75e0: $c0

    ldh a, [rSC]                                  ; $75e1: $f0 $02
    db $e4                                        ; $75e3: $e4
    ld a, d                                       ; $75e4: $7a
    ldh [rP1], a                                  ; $75e5: $e0 $00
    or l                                          ; $75e7: $b5
    ld [c], a                                     ; $75e8: $e2
    jp z, $ffff                                   ; $75e9: $ca $ff $ff

    rlc b                                         ; $75ec: $cb $00
    ld [c], a                                     ; $75ee: $e2
    ret nz                                        ; $75ef: $c0

    ld [c], a                                     ; $75f0: $e2
    ld hl, sp-$3d                                 ; $75f1: $f8 $c3
    call $81ff                                    ; $75f3: $cd $ff $81
    jp z, $8a00                                   ; $75f6: $ca $00 $8a

    ld [c], a                                     ; $75f9: $e2
    ld b, h                                       ; $75fa: $44
    db $e3                                        ; $75fb: $e3
    or a                                          ; $75fc: $b7
    pop bc                                        ; $75fd: $c1
    dec l                                         ; $75fe: $2d
    pop hl                                        ; $75ff: $e1
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    add sp, -$19                                  ; $7602: $e8 $e7
    add $c1                                       ; $7604: $c6 $c1
    rlca                                          ; $7606: $07
    ld [c], a                                     ; $7607: $e2
    nop                                           ; $7608: $00
    cp c                                          ; $7609: $b9
    push hl                                       ; $760a: $e5
    call $c2ff                                    ; $760b: $cd $ff $c2
    jp hl                                         ; $760e: $e9


    ld c, [hl]                                    ; $760f: $4e
    ret nz                                        ; $7610: $c0

    rst $00                                       ; $7611: $c7
    jp $c5bd                                      ; $7612: $c3 $bd $c5


    ld bc, $82df                                  ; $7615: $01 $df $82
    ld [$8800], a                                 ; $7618: $ea $00 $88
    push hl                                       ; $761b: $e5
    ccf                                           ; $761c: $3f
    push bc                                       ; $761d: $c5
    call $beff                                    ; $761e: $cd $ff $be
    pop af                                        ; $7621: $f1
    ld c, b                                       ; $7622: $48
    pop bc                                        ; $7623: $c1
    pop bc                                        ; $7624: $c1
    rst $38                                       ; $7625: $ff
    pop bc                                        ; $7626: $c1
    sub $be                                       ; $7627: $d6 $be
    jp nz, $8700                                  ; $7629: $c2 $00 $87

    push bc                                       ; $762c: $c5
    cp h                                          ; $762d: $bc
    rst $38                                       ; $762e: $ff
    nop                                           ; $762f: $00
    ld [$e4c0], a                                 ; $7630: $ea $c0 $e4
    ld a, [c]                                     ; $7633: $f2
    add a                                         ; $7634: $87
    ret nz                                        ; $7635: $c0

    sbc a                                         ; $7636: $9f
    add b                                         ; $7637: $80
    xor l                                         ; $7638: $ad
    or e                                          ; $7639: $b3
    adc c                                         ; $763a: $89
    ld sp, $c10a                                  ; $763b: $31 $0a $c1
    rst $38                                       ; $763e: $ff
    ld bc, $74ab                                  ; $763f: $01 $ab $74
    adc e                                         ; $7642: $8b
    ld a, [bc]                                    ; $7643: $0a
    ld a, [bc]                                    ; $7644: $0a
    ret nz                                        ; $7645: $c0

    cp a                                          ; $7646: $bf
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    nop                                           ; $7649: $00
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
    nop                                           ; $765a: $00
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
    nop                                           ; $766b: $00
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
    nop                                           ; $767c: $00
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
    nop                                           ; $768d: $00
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
    nop                                           ; $769e: $00
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
    nop                                           ; $76af: $00
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
    nop                                           ; $76c0: $00
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
    nop                                           ; $76d1: $00
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
    nop                                           ; $76e2: $00
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
    nop                                           ; $76f3: $00
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
    nop                                           ; $7704: $00
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    push af                                       ; $7708: $f5
    nop                                           ; $7709: $00
    nop                                           ; $770a: $00

jr_05d_770b:
    nop                                           ; $770b: $00
    rst $38                                       ; $770c: $ff
    add hl, hl                                    ; $770d: $29
    ld l, $01                                     ; $770e: $2e $01
    ld bc, $4401                                  ; $7710: $01 $01 $44
    ld d, $23                                     ; $7713: $16 $23
    rst $28                                       ; $7715: $ef
    ld [hl+], a                                   ; $7716: $22
    inc hl                                        ; $7717: $23
    ld d, $17                                     ; $7718: $16 $17
    or $e0                                        ; $771a: $f6 $e0

jr_05d_771c:
    jr nc, jr_05d_774e                            ; $771c: $30 $30

    dec hl                                        ; $771e: $2b
    rst $00                                       ; $771f: $c7
    ld a, [hl+]                                   ; $7720: $2a
    jr z, jr_05d_7774                             ; $7721: $28 $51

    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $20                                       ; $7725: $e7
    and $c1                                       ; $7726: $e6 $c1
    ldh [rLY], a                                  ; $7728: $e0 $44
    ld b, e                                       ; $772a: $43
    db $db                                        ; $772b: $db
    ld b, c                                       ; $772c: $41
    nop                                           ; $772d: $00
    rst $38                                       ; $772e: $ff
    ldh [$3b], a                                  ; $772f: $e0 $3b
    ld b, $bb                                     ; $7731: $06 $bb
    ldh [$15], a                                  ; $7733: $e0 $15
    inc b                                         ; $7735: $04
    rst $20                                       ; $7736: $e7
    ld bc, $2e01                                  ; $7737: $01 $01 $2e
    jp z, $e8ff                                   ; $773a: $ca $ff $e8

    rst $20                                       ; $773d: $e7
    ld bc, $4201                                  ; $773e: $01 $01 $42
    db $ed                                        ; $7741: $ed
    inc a                                         ; $7742: $3c
    pop bc                                        ; $7743: $c1
    ld [c], a                                     ; $7744: $e2
    nop                                           ; $7745: $00
    dec sp                                        ; $7746: $3b
    rst $38                                       ; $7747: $ff
    ldh [$38], a                                  ; $7748: $e0 $38
    nop                                           ; $774a: $00
    inc d                                         ; $774b: $14
    rst $20                                       ; $774c: $e7
    inc c                                         ; $774d: $0c

jr_05d_774e:
    ld bc, $ca01                                  ; $774e: $01 $01 $ca
    rst $38                                       ; $7751: $ff
    ret nz                                        ; $7752: $c0

    add sp, $42                                   ; $7753: $e8 $42
    inc a                                         ; $7755: $3c
    ld c, d                                       ; $7756: $4a
    db $eb                                        ; $7757: $eb
    nop                                           ; $7758: $00
    jr c, jr_05d_771c                             ; $7759: $38 $c1

    ld [c], a                                     ; $775b: $e2
    jr c, @+$01                                   ; $775c: $38 $ff

    ldh [rP1], a                                  ; $775e: $e0 $00
    jr c, jr_05d_7767                             ; $7760: $38 $05

    reti                                          ; $7762: $d9


    dec e                                         ; $7763: $1d
    ret nz                                        ; $7764: $c0

    rst $38                                       ; $7765: $ff
    jp hl                                         ; $7766: $e9


jr_05d_7767:
    add sp, $3f                                   ; $7767: $e8 $3f
    inc a                                         ; $7769: $3c
    ret nz                                        ; $776a: $c0

    ldh [rP1], a                                  ; $776b: $e0 $00
    jr c, jr_05d_770b                             ; $776d: $38 $9c

    add e                                         ; $776f: $83
    db $e3                                        ; $7770: $e3
    add hl, sp                                    ; $7771: $39
    ldh [$38], a                                  ; $7772: $e0 $38

jr_05d_7774:
    nop                                           ; $7774: $00
    add hl, bc                                    ; $7775: $09
    ret nz                                        ; $7776: $c0

    rst $38                                       ; $7777: $ff
    jp hl                                         ; $7778: $e9


    add sp, $3d                                   ; $7779: $e8 $3d
    rst $00                                       ; $777b: $c7
    inc a                                         ; $777c: $3c
    inc a                                         ; $777d: $3c
    ld a, $c9                                     ; $777e: $3e $c9
    pop hl                                        ; $7780: $e1
    ld b, e                                       ; $7781: $43
    ld [c], a                                     ; $7782: $e2
    ld a, [hl]                                    ; $7783: $7e
    ld [c], a                                     ; $7784: $e2
    jr @+$1b                                      ; $7785: $18 $19

    cp h                                          ; $7787: $bc
    jp z, $e8ff                                   ; $7788: $ca $ff $e8

    rst $20                                       ; $778b: $e7
    ld c, d                                       ; $778c: $4a
    inc a                                         ; $778d: $3c
    inc a                                         ; $778e: $3c
    ld b, b                                       ; $778f: $40
    adc b                                         ; $7790: $88
    ld [c], a                                     ; $7791: $e2
    ld [hl], $09                                  ; $7792: $36 $09
    ld [hl], $43                                  ; $7794: $36 $43
    ldh [$f7], a                                  ; $7796: $e0 $f7
    jp nz, $ca1f                                  ; $7798: $c2 $1f $ca

    rst $38                                       ; $779b: $ff
    add b                                         ; $779c: $80
    jp hl                                         ; $779d: $e9


    ld b, c                                       ; $779e: $41
    ldh [$fe], a                                  ; $779f: $e0 $fe
    push hl                                       ; $77a1: $e5
    inc a                                         ; $77a2: $3c
    ret nz                                        ; $77a3: $c0

    rst $38                                       ; $77a4: $ff
    nop                                           ; $77a5: $00
    ldh a, [$3e]                                  ; $77a6: $f0 $3e
    ld a, [hl-]                                   ; $77a8: $3a
    ld a, [hl-]                                   ; $77a9: $3a
    ld a, [hl-]                                   ; $77aa: $3a
    ld b, $e2                                     ; $77ab: $06 $e2
    pop bc                                        ; $77ad: $c1
    pop bc                                        ; $77ae: $c1
    and $37                                       ; $77af: $e6 $37
    ret nz                                        ; $77b1: $c0

    dec b                                         ; $77b2: $05
    dec e                                         ; $77b3: $1d
    jp z, $e8ff                                   ; $77b4: $ca $ff $e8

    rst $20                                       ; $77b7: $e7
    ld c, h                                       ; $77b8: $4c
    inc a                                         ; $77b9: $3c
    ld b, b                                       ; $77ba: $40
    adc a                                         ; $77bb: $8f
    inc sp                                        ; $77bc: $33
    inc sp                                        ; $77bd: $33
    dec [hl]                                      ; $77be: $35
    dec sp                                        ; $77bf: $3b
    cp l                                          ; $77c0: $bd
    ret nz                                        ; $77c1: $c0

    cp c                                          ; $77c2: $b9
    ldh [$b7], a                                  ; $77c3: $e0 $b7
    ld [c], a                                     ; $77c5: $e2
    ld hl, $c0a4                                  ; $77c6: $21 $a4 $c0
    rst $18                                       ; $77c9: $df
    ret nz                                        ; $77ca: $c0

    jp hl                                         ; $77cb: $e9


    ld a, $08                                     ; $77cc: $3e $08
    pop bc                                        ; $77ce: $c1
    cp a                                          ; $77cf: $bf
    ldh [$37], a                                  ; $77d0: $e0 $37
    ret nz                                        ; $77d2: $c0

    ld [c], a                                     ; $77d3: $e2
    ld a, [hl-]                                   ; $77d4: $3a
    and a                                         ; $77d5: $a7
    nop                                           ; $77d6: $00
    ld b, $0c                                     ; $77d7: $06 $0c
    ret nz                                        ; $77d9: $c0

    rst $38                                       ; $77da: $ff
    ret nz                                        ; $77db: $c0

jr_05d_77dc:
    xor c                                         ; $77dc: $a9
    jr nz, @-$36                                  ; $77dd: $20 $c8

    and c                                         ; $77df: $a1
    dec sp                                        ; $77e0: $3b
    dec de                                        ; $77e1: $1b
    dec [hl]                                      ; $77e2: $35
    add hl, sp                                    ; $77e3: $39
    ret nz                                        ; $77e4: $c0

    db $e3                                        ; $77e5: $e3
    ld [de], a                                    ; $77e6: $12
    dec d                                         ; $77e7: $15
    ld a, [hl-]                                   ; $77e8: $3a
    and b                                         ; $77e9: $a0
    jp z, $80ff                                   ; $77ea: $ca $ff $80

    xor b                                         ; $77ed: $a8
    db $db                                        ; $77ee: $db
    ld c, $02                                     ; $77ef: $0e $02
    add a                                         ; $77f1: $87
    and c                                         ; $77f2: $a1
    inc [hl]                                      ; $77f3: $34
    add hl, sp                                    ; $77f4: $39
    ccf                                           ; $77f5: $3f
    pop hl                                        ; $77f6: $e1
    ld b, $22                                     ; $77f7: $06 $22
    cp b                                          ; $77f9: $b8
    add d                                         ; $77fa: $82
    and b                                         ; $77fb: $a0
    ld b, b                                       ; $77fc: $40
    cp a                                          ; $77fd: $bf
    ld [$2fe9], a                                 ; $77fe: $ea $e9 $2f
    ld bc, $bf1d                                  ; $7801: $01 $1d $bf
    pop hl                                        ; $7804: $e1
    inc [hl]                                      ; $7805: $34
    jp $0639                                      ; $7806: $c3 $39 $06


    inc bc                                        ; $7809: $03
    and b                                         ; $780a: $a0
    cp [hl]                                       ; $780b: $be
    add c                                         ; $780c: $81
    ret nz                                        ; $780d: $c0

    sbc a                                         ; $780e: $9f
    ret nz                                        ; $780f: $c0

    adc l                                         ; $7810: $8d
    dec e                                         ; $7811: $1d
    dec d                                         ; $7812: $15
    jr c, jr_05d_77dc                             ; $7813: $38 $c7

    add c                                         ; $7815: $81
    add d                                         ; $7816: $82
    add c                                         ; $7817: $81
    add e                                         ; $7818: $83
    pop hl                                        ; $7819: $e1
    jr z, jr_05d_7844                             ; $781a: $28 $28

    add hl, hl                                    ; $781c: $29
    jp z, $e8ff                                   ; $781d: $ca $ff $e8

    rst $20                                       ; $7820: $e7
    nop                                           ; $7821: $00
    ld b, b                                       ; $7822: $40
    add d                                         ; $7823: $82
    db $fd                                        ; $7824: $fd
    rst $20                                       ; $7825: $e7
    pop bc                                        ; $7826: $c1
    pop hl                                        ; $7827: $e1
    ret nz                                        ; $7828: $c0

    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    nop                                           ; $7832: $00
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
    nop                                           ; $7843: $00

jr_05d_7844:
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
    nop                                           ; $7854: $00
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
    nop                                           ; $7865: $00
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
    nop                                           ; $7876: $00
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
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    nop                                           ; $7887: $00
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
    nop                                           ; $7898: $00
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
    nop                                           ; $78a9: $00
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
    nop                                           ; $78ba: $00
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
    nop                                           ; $78cb: $00
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
    nop                                           ; $78dc: $00
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
    db $f4                                        ; $78ea: $f4
    nop                                           ; $78eb: $00
    nop                                           ; $78ec: $00
    nop                                           ; $78ed: $00
    ld sp, hl                                     ; $78ee: $f9
    nop                                           ; $78ef: $00
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    xor $ed                                       ; $78f2: $ee $ed
    ld [hl], $30                                  ; $78f4: $36 $30
    scf                                           ; $78f6: $37
    ld h, $20                                     ; $78f7: $26 $20
    cpl                                           ; $78f9: $2f
    daa                                           ; $78fa: $27
    db $10                                        ; $78fb: $10
    ld d, $17                                     ; $78fc: $16 $17
    push de                                       ; $78fe: $d5
    rst $28                                       ; $78ff: $ef
    ld de, $e0ff                                  ; $7900: $11 $ff $e0
    cp a                                          ; $7903: $bf
    rst $38                                       ; $7904: $ff
    nop                                           ; $7905: $00
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    push hl                                       ; $790b: $e5
    nop                                           ; $790c: $00
    nop                                           ; $790d: $00
    nop                                           ; $790e: $00
    rla                                           ; $790f: $17
    ld a, c                                       ; $7910: $79
    ld b, a                                       ; $7911: $47
    ld a, c                                       ; $7912: $79
    sub $7a                                       ; $7913: $d6 $7a
    xor e                                         ; $7915: $ab
    ld a, h                                       ; $7916: $7c
    ld [$c503], a                                 ; $7917: $ea $03 $c5
    ld b, $e2                                     ; $791a: $06 $e2
    ld bc, $00a0                                  ; $791c: $01 $a0 $00
    ld [$f003], a                                 ; $791f: $ea $03 $f0
    inc bc                                        ; $7922: $03
    push bc                                       ; $7923: $c5
    ld b, $e2                                     ; $7924: $06 $e2
    ld bc, $023f                                  ; $7926: $01 $3f $02
    xor e                                         ; $7929: $ab
    nop                                           ; $792a: $00
    inc sp                                        ; $792b: $33
    ld bc, $06c5                                  ; $792c: $01 $c5 $06
    ld [$0825], sp                                ; $792f: $08 $25 $08
    dec h                                         ; $7932: $25
    ld [$0825], sp                                ; $7933: $08 $25 $08
    dec h                                         ; $7936: $25
    ld [$0825], sp                                ; $7937: $08 $25 $08
    dec h                                         ; $793a: $25
    ld [$0825], sp                                ; $793b: $08 $25 $08
    dec h                                         ; $793e: $25
    ld [$0825], sp                                ; $793f: $08 $25 $08
    dec h                                         ; $7942: $25
    ld [$0825], sp                                ; $7943: $08 $25 $08
    dec h                                         ; $7946: $25
    dec hl                                        ; $7947: $2b
    ld a, [bc]                                    ; $7948: $0a
    dec bc                                        ; $7949: $0b
    rst $38                                       ; $794a: $ff
    ld [$f14b], a                                 ; $794b: $ea $4b $f1
    pop hl                                        ; $794e: $e1
    inc c                                         ; $794f: $0c
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $20                                       ; $7952: $e7
    and $f7                                       ; $7953: $e6 $f7
    dec bc                                        ; $7955: $0b
    dec bc                                        ; $7956: $0b
    ld l, e                                       ; $7957: $6b
    db $fd                                        ; $7958: $fd
    ldh [rOCPD], a                                ; $7959: $e0 $6b
    ld c, e                                       ; $795b: $4b
    ld l, e                                       ; $795c: $6b
    ld c, e                                       ; $795d: $4b
    ld h, b                                       ; $795e: $60
    rst $38                                       ; $795f: $ff
    pop hl                                        ; $7960: $e1
    ret nz                                        ; $7961: $c0

    ldh [$af], a                                  ; $7962: $e0 $af
    ldh [$ca], a                                  ; $7964: $e0 $ca
    rst $38                                       ; $7966: $ff
    ret nz                                        ; $7967: $c0

    add sp, $0a                                   ; $7968: $e8 $0a
    ld l, e                                       ; $796a: $6b
    pop bc                                        ; $796b: $c1
    ldh [$f9], a                                  ; $796c: $e0 $f9
    dec bc                                        ; $796e: $0b
    call nz, $82e1                                ; $796f: $c4 $e1 $82
    ldh [rWX], a                                  ; $7972: $e0 $4b
    dec bc                                        ; $7974: $0b
    dec hl                                        ; $7975: $2b
    dec bc                                        ; $7976: $0b
    ld a, [bc]                                    ; $7977: $0a
    add hl, bc                                    ; $7978: $09
    ld a, [bc]                                    ; $7979: $0a
    jp z, $80ff                                   ; $797a: $ca $ff $80

    jp hl                                         ; $797d: $e9


    dec hl                                        ; $797e: $2b
    ld a, [hl]                                    ; $797f: $7e
    pop hl                                        ; $7980: $e1
    call nz, $81e2                                ; $7981: $c4 $e2 $81
    pop hl                                        ; $7984: $e1
    ld b, b                                       ; $7985: $40
    rst $38                                       ; $7986: $ff
    ret nz                                        ; $7987: $c0

    ret nz                                        ; $7988: $c0

    rst $28                                       ; $7989: $ef
    db $fc                                        ; $798a: $fc
    db $e3                                        ; $798b: $e3
    ld b, c                                       ; $798c: $41
    pop hl                                        ; $798d: $e1
    or [hl]                                       ; $798e: $b6
    ld [c], a                                     ; $798f: $e2
    ret nz                                        ; $7990: $c0

    rst $38                                       ; $7991: $ff
    ld b, b                                       ; $7992: $40
    ld [$0b2b], a                                 ; $7993: $ea $2b $0b
    ld d, e                                       ; $7996: $53
    ld c, e                                       ; $7997: $4b
    dec hl                                        ; $7998: $2b
    cp h                                          ; $7999: $bc
    pop hl                                        ; $799a: $e1
    inc a                                         ; $799b: $3c
    pop hl                                        ; $799c: $e1
    dec hl                                        ; $799d: $2b
    call nz, Call_000_2ce1                        ; $799e: $c4 $e1 $2c
    jp z, Jump_000_0eff                           ; $79a1: $ca $ff $0e

    add sp, -$19                                  ; $79a4: $e8 $e7
    ld a, [bc]                                    ; $79a6: $0a
    dec bc                                        ; $79a7: $0b
    dec hl                                        ; $79a8: $2b
    ret                                           ; $79a9: $c9


    ldh [$c0], a                                  ; $79aa: $e0 $c0
    ld [c], a                                     ; $79ac: $e2
    ld bc, $c0e1                                  ; $79ad: $01 $e1 $c0
    rst $38                                       ; $79b0: $ff
    ld [hl], b                                    ; $79b1: $70
    add b                                         ; $79b2: $80
    rst $28                                       ; $79b3: $ef
    set 0, b                                      ; $79b4: $cb $c0
    ret nz                                        ; $79b6: $c0

    db $e3                                        ; $79b7: $e3
    ld [hl], l                                    ; $79b8: $75
    pop bc                                        ; $79b9: $c1
    inc c                                         ; $79ba: $0c
    inc c                                         ; $79bb: $0c
    ld c, h                                       ; $79bc: $4c
    set 7, a                                      ; $79bd: $cb $ff
    nop                                           ; $79bf: $00
    ret nz                                        ; $79c0: $c0

    set 0, b                                      ; $79c1: $cb $c0
    pop hl                                        ; $79c3: $e1
    add c                                         ; $79c4: $81
    jp nz, $c1b8                                  ; $79c5: $c2 $b8 $c1

    ret nz                                        ; $79c8: $c0

    rst $38                                       ; $79c9: $ff
    ret nz                                        ; $79ca: $c0

    pop af                                        ; $79cb: $f1
    ld b, l                                       ; $79cc: $45
    jp nz, $e282                                  ; $79cd: $c2 $82 $e2

    db $10                                        ; $79d0: $10
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    add b                                         ; $79d3: $80
    ret nc                                        ; $79d4: $d0

    call nz, $c3a2                                ; $79d5: $c4 $a2 $c3
    ret nz                                        ; $79d8: $c0

    ld l, h                                       ; $79d9: $6c
    ret nc                                        ; $79da: $d0

    rst $38                                       ; $79db: $ff
    ret nz                                        ; $79dc: $c0

    ret nc                                        ; $79dd: $d0

    cp [hl]                                       ; $79de: $be
    pop bc                                        ; $79df: $c1
    nop                                           ; $79e0: $00
    add e                                         ; $79e1: $83
    and d                                         ; $79e2: $a2
    add c                                         ; $79e3: $81
    rst $38                                       ; $79e4: $ff
    ret nz                                        ; $79e5: $c0

    di                                            ; $79e6: $f3
    cp a                                          ; $79e7: $bf
    db $e3                                        ; $79e8: $e3
    add l                                         ; $79e9: $85
    and b                                         ; $79ea: $a0
    pop de                                        ; $79eb: $d1
    db $e3                                        ; $79ec: $e3
    add b                                         ; $79ed: $80
    rst $18                                       ; $79ee: $df
    ret nz                                        ; $79ef: $c0

    xor l                                         ; $79f0: $ad
    adc b                                         ; $79f1: $88
    nop                                           ; $79f2: $00
    ret nz                                        ; $79f3: $c0

    cp d                                          ; $79f4: $ba
    pop hl                                        ; $79f5: $e1
    add b                                         ; $79f6: $80
    db $e3                                        ; $79f7: $e3
    ld l, h                                       ; $79f8: $6c
    ld a, [hl-]                                   ; $79f9: $3a
    rst $38                                       ; $79fa: $ff
    ret nz                                        ; $79fb: $c0

    xor h                                         ; $79fc: $ac
    ld a, l                                       ; $79fd: $7d
    add h                                         ; $79fe: $84
    dec hl                                        ; $79ff: $2b
    pop hl                                        ; $7a00: $e1
    dec bc                                        ; $7a01: $0b
    add l                                         ; $7a02: $85
    jp nz, $ffc1                                  ; $7a03: $c2 $c1 $ff

    ld b, b                                       ; $7a06: $40
    xor $c0                                       ; $7a07: $ee $c0
    push hl                                       ; $7a09: $e5
    dec bc                                        ; $7a0a: $0b
    inc l                                         ; $7a0b: $2c
    inc l                                         ; $7a0c: $2c
    nop                                           ; $7a0d: $00
    ld b, d                                       ; $7a0e: $42
    ret nz                                        ; $7a0f: $c0

    ld sp, hl                                     ; $7a10: $f9
    rst $18                                       ; $7a11: $df
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
    nop                                           ; $7a1e: $00
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
    nop                                           ; $7a2f: $00
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
    nop                                           ; $7a40: $00
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
    nop                                           ; $7a51: $00
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
    nop                                           ; $7a62: $00
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
    nop                                           ; $7a73: $00
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
    nop                                           ; $7a84: $00
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
    nop                                           ; $7a95: $00
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
    nop                                           ; $7aa6: $00
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
    nop                                           ; $7ab7: $00
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
    nop                                           ; $7ac8: $00
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    db $f4                                        ; $7ad2: $f4
    nop                                           ; $7ad3: $00
    nop                                           ; $7ad4: $00
    nop                                           ; $7ad5: $00
    rst $18                                       ; $7ad6: $df
    ld e, d                                       ; $7ad7: $5a
    ld e, e                                       ; $7ad8: $5b
    ld e, e                                       ; $7ad9: $5b
    ld h, b                                       ; $7ada: $60
    ld sp, $e7ff                                  ; $7adb: $31 $ff $e7
    ld e, a                                       ; $7ade: $5f
    ld e, e                                       ; $7adf: $5b
    ld a, [c]                                     ; $7ae0: $f2
    rst $38                                       ; $7ae1: $ff
    ldh [rP1], a                                  ; $7ae2: $e0 $00
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $20                                       ; $7ae6: $e7
    and $5b                                       ; $7ae7: $e6 $5b
    ld e, e                                       ; $7ae9: $5b
    ld e, a                                       ; $7aea: $5f
    ld sp, $31ff                                  ; $7aeb: $31 $ff $31
    ld c, l                                       ; $7aee: $4d
    ld a, [hl-]                                   ; $7aef: $3a
    ld d, l                                       ; $7af0: $55
    ld d, h                                       ; $7af1: $54
    ld d, h                                       ; $7af2: $54
    ld d, l                                       ; $7af3: $55
    ld d, l                                       ; $7af4: $55
    rra                                           ; $7af5: $1f
    dec sp                                        ; $7af6: $3b
    ld c, l                                       ; $7af7: $4d
    ld sp, $5b5e                                  ; $7af8: $31 $5e $5b
    xor a                                         ; $7afb: $af
    ldh [$ca], a                                  ; $7afc: $e0 $ca
    rst $38                                       ; $7afe: $ff
    ret nz                                        ; $7aff: $c0

    add sp, -$41                                  ; $7b00: $e8 $bf
    ld e, d                                       ; $7b02: $5a
    ld e, [hl]                                    ; $7b03: $5e
    ld sp, $324d                                  ; $7b04: $31 $4d $32
    jr nc, @+$01                                  ; $7b07: $30 $ff

    db $e3                                        ; $7b09: $e3
    ld [hl-], a                                   ; $7b0a: $32
    ccf                                           ; $7b0b: $3f
    ld c, l                                       ; $7b0c: $4d
    ld sp, $5b60                                  ; $7b0d: $31 $60 $5b
    ld e, d                                       ; $7b10: $5a
    ld e, d                                       ; $7b11: $5a
    jp z, $80ff                                   ; $7b12: $ca $ff $80

    jp hl                                         ; $7b15: $e9


    ld a, a                                       ; $7b16: $7f
    ld h, c                                       ; $7b17: $61
    ld sp, $3039                                  ; $7b18: $31 $39 $30
    jr nc, @+$6e                                  ; $7b1b: $30 $6c

    ld l, h                                       ; $7b1d: $6c
    cp l                                          ; $7b1e: $bd
    ld [c], a                                     ; $7b1f: $e2
    ccf                                           ; $7b20: $3f
    add hl, sp                                    ; $7b21: $39
    ld sp, $6231                                  ; $7b22: $31 $31 $62
    ld h, d                                       ; $7b25: $62
    ld h, d                                       ; $7b26: $62
    jp z, $c0ff                                   ; $7b27: $ca $ff $c0

    db $eb                                        ; $7b2a: $eb
    cp a                                          ; $7b2b: $bf
    ld d, e                                       ; $7b2c: $53
    jr nc, @+$6f                                  ; $7b2d: $30 $6d

    ld l, h                                       ; $7b2f: $6c
    ld l, h                                       ; $7b30: $6c
    ld l, d                                       ; $7b31: $6a
    ld a, h                                       ; $7b32: $7c
    pop hl                                        ; $7b33: $e1
    ld d, d                                       ; $7b34: $52
    ld a, b                                       ; $7b35: $78
    push af                                       ; $7b36: $f5
    jp nz, $ffca                                  ; $7b37: $c2 $ca $ff

    ld b, b                                       ; $7b3a: $40
    jp hl                                         ; $7b3b: $e9


    ld h, c                                       ; $7b3c: $61
    ld sp, $6d52                                  ; $7b3d: $31 $52 $6d
    ret nz                                        ; $7b40: $c0

    pop hl                                        ; $7b41: $e1
    ld a, [hl]                                    ; $7b42: $7e
    cp a                                          ; $7b43: $bf
    pop hl                                        ; $7b44: $e1
    ld d, d                                       ; $7b45: $52
    ld sp, $1429                                  ; $7b46: $31 $29 $14
    inc d                                         ; $7b49: $14
    add hl, hl                                    ; $7b4a: $29
    jp z, $e2ff                                   ; $7b4b: $ca $ff $e2

    add sp, -$19                                  ; $7b4e: $e8 $e7
    ld e, d                                       ; $7b50: $5a
    ld b, b                                       ; $7b51: $40
    ldh [$c0], a                                  ; $7b52: $e0 $c0
    db $e4                                        ; $7b54: $e4
    ld a, [hl]                                    ; $7b55: $7e
    ldh [$39], a                                  ; $7b56: $e0 $39
    ld sp, $a72b                                  ; $7b58: $31 $2b $a7
    inc h                                         ; $7b5b: $24
    inc h                                         ; $7b5c: $24
    dec hl                                        ; $7b5d: $2b
    jp z, $80ff                                   ; $7b5e: $ca $ff $80

    db $eb                                        ; $7b61: $eb
    ld d, e                                       ; $7b62: $53
    ret nz                                        ; $7b63: $c0

    db $e4                                        ; $7b64: $e4
    ld l, d                                       ; $7b65: $6a
    ccf                                           ; $7b66: $3f
    ld b, d                                       ; $7b67: $42
    scf                                           ; $7b68: $37
    ld sp, $2c2b                                  ; $7b69: $31 $2b $2c
    jr nz, @-$33                                  ; $7b6c: $20 $cb

    rst $38                                       ; $7b6e: $ff
    nop                                           ; $7b6f: $00
    db $ed                                        ; $7b70: $ed
    ld l, a                                       ; $7b71: $6f
    ld l, l                                       ; $7b72: $6d
    ld l, l                                       ; $7b73: $6d
    jr nc, jr_05d_7ba6                            ; $7b74: $30 $30

    pop bc                                        ; $7b76: $c1
    pop hl                                        ; $7b77: $e1
    inc a                                         ; $7b78: $3c
    ld sp, $ffc0                                  ; $7b79: $31 $c0 $ff
    ld [c], a                                     ; $7b7c: $e2
    add b                                         ; $7b7d: $80
    ret nc                                        ; $7b7e: $d0

    ld d, d                                       ; $7b7f: $52
    pop bc                                        ; $7b80: $c1
    ldh [$bf], a                                  ; $7b81: $e0 $bf
    ldh [$c1], a                                  ; $7b83: $e0 $c1
    ldh [rNR11], a                                ; $7b85: $e0 $11
    ld [de], a                                    ; $7b87: $12
    ld d, $f1                                     ; $7b88: $16 $f1
    jr nz, @-$3e                                  ; $7b8a: $20 $c0

    rst $38                                       ; $7b8c: $ff
    ret nz                                        ; $7b8d: $c0

    xor $01                                       ; $7b8e: $ee $01
    jp Jump_000_3152                              ; $7b90: $c3 $52 $31


    dec d                                         ; $7b93: $15
    ld d, $b3                                     ; $7b94: $16 $b3
    jr z, jr_05d_7bb8                             ; $7b96: $28 $20

    ret nz                                        ; $7b98: $c0

    rst $38                                       ; $7b99: $ff
    ret nz                                        ; $7b9a: $c0

    adc $39                                       ; $7b9b: $ce $39
    ld l, h                                       ; $7b9d: $6c
    rst $38                                       ; $7b9e: $ff

jr_05d_7b9f:
    ld [c], a                                     ; $7b9f: $e2
    add hl, sp                                    ; $7ba0: $39
    ld h, e                                       ; $7ba1: $63
    ld sp, $c117                                  ; $7ba2: $31 $17 $c1
    pop hl                                        ; $7ba5: $e1

jr_05d_7ba6:
    ret nz                                        ; $7ba6: $c0

    rst $38                                       ; $7ba7: $ff
    add b                                         ; $7ba8: $80
    call Call_000_36af                            ; $7ba9: $cd $af $36
    cp a                                          ; $7bac: $bf
    pop hl                                        ; $7bad: $e1
    jp $af36                                      ; $7bae: $c3 $36 $af


    inc bc                                        ; $7bb1: $03
    pop hl                                        ; $7bb2: $e1
    ret nz                                        ; $7bb3: $c0

    ldh [$80], a                                  ; $7bb4: $e0 $80
    rst $18                                       ; $7bb6: $df
    add b                                         ; $7bb7: $80

jr_05d_7bb8:
    xor h                                         ; $7bb8: $ac
    add c                                         ; $7bb9: $81
    ld l, a                                       ; $7bba: $6f
    cp a                                          ; $7bbb: $bf
    ld l, [hl]                                    ; $7bbc: $6e
    ld d, l                                       ; $7bbd: $55
    ld d, h                                       ; $7bbe: $54
    ld l, [hl]                                    ; $7bbf: $6e
    ld l, a                                       ; $7bc0: $6f

Jump_05d_7bc1:
    add c                                         ; $7bc1: $81
    ret nz                                        ; $7bc2: $c0

    db $e3                                        ; $7bc3: $e3
    jr z, jr_05d_7b9f                             ; $7bc4: $28 $d9

    rla                                           ; $7bc6: $17
    jp z, $c0ff                                   ; $7bc7: $ca $ff $c0

    xor e                                         ; $7bca: $ab
    and b                                         ; $7bcb: $a0
    add b                                         ; $7bcc: $80
    rst $38                                       ; $7bcd: $ff
    ld [c], a                                     ; $7bce: $e2
    and b                                         ; $7bcf: $a0
    ld sp, $178d                                  ; $7bd0: $31 $8d $17
    add b                                         ; $7bd3: $80
    pop hl                                        ; $7bd4: $e1
    ld d, $15                                     ; $7bd5: $16 $15
    jp z, $c0ff                                   ; $7bd7: $ca $ff $c0

    xor e                                         ; $7bda: $ab
    ret nz                                        ; $7bdb: $c0

    and $31                                       ; $7bdc: $e6 $31
    rra                                           ; $7bde: $1f
    dec bc                                        ; $7bdf: $0b
    ld a, [bc]                                    ; $7be0: $0a
    dec b                                         ; $7be1: $05
    ld a, [bc]                                    ; $7be2: $0a
    dec bc                                        ; $7be3: $0b
    ld b, b                                       ; $7be4: $40
    cp a                                          ; $7be5: $bf
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    nop                                           ; $7bea: $00
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
    nop                                           ; $7bfb: $00
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
    nop                                           ; $7c0c: $00
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
    nop                                           ; $7c1d: $00
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
    nop                                           ; $7c2e: $00
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
    nop                                           ; $7c3f: $00
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
    nop                                           ; $7c50: $00
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
    nop                                           ; $7c61: $00
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
    nop                                           ; $7c72: $00
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
    nop                                           ; $7c83: $00
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
    nop                                           ; $7c94: $00
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
    nop                                           ; $7ca5: $00
    rst $38                                       ; $7ca6: $ff
    db $f4                                        ; $7ca7: $f4
    nop                                           ; $7ca8: $00
    nop                                           ; $7ca9: $00
    nop                                           ; $7caa: $00
    and l                                         ; $7cab: $a5
    nop                                           ; $7cac: $00
    rst $38                                       ; $7cad: $ff
    push hl                                       ; $7cae: $e5
    ld [hl-], a                                   ; $7caf: $32
    or $e6                                        ; $7cb0: $f6 $e6
    rst $30                                       ; $7cb2: $f7
    rst $20                                       ; $7cb3: $e7
    dec [hl]                                      ; $7cb4: $35
    db $ec                                        ; $7cb5: $ec
    xor $37                                       ; $7cb6: $ee $37
    db $ec                                        ; $7cb8: $ec
    jp c, $c7f0                                   ; $7cb9: $da $f0 $c7

    add sp, $33                                   ; $7cbc: $e8 $33
    ld sp, $f2e0                                  ; $7cbe: $31 $e0 $f2
    ld [hl], $30                                  ; $7cc1: $36 $30
    scf                                           ; $7cc3: $37
    cp a                                          ; $7cc4: $bf
    ld h, $20                                     ; $7cc5: $26 $20
    daa                                           ; $7cc7: $27
    db $10                                        ; $7cc8: $10
    ld d, $17                                     ; $7cc9: $16 $17
    jp nz, Jump_000_34f6                          ; $7ccb: $c2 $f6 $34

    rst $38                                       ; $7cce: $ff
    ld [hl], $32                                  ; $7ccf: $36 $32
    jr nc, jr_05d_7d0a                            ; $7cd1: $30 $37

    ld sp, $3133                                  ; $7cd3: $31 $33 $31
    inc sp                                        ; $7cd6: $33
    nop                                           ; $7cd7: $00
    and b                                         ; $7cd8: $a0
    ei                                            ; $7cd9: $fb
    rst $38                                       ; $7cda: $ff
    rst $28                                       ; $7cdb: $ef
    nop                                           ; $7cdc: $00
    nop                                           ; $7cdd: $00
    nop                                           ; $7cde: $00
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

Jump_05d_7ce9:
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

jr_05d_7d0a:
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

Jump_05d_7de1:
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

Jump_05d_7ee7:
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

Call_05d_7f10:
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

Call_05d_7fa1:
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

Call_05d_7fd5:
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
