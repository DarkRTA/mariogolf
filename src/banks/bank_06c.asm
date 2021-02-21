; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06c", ROMX[$4000], BANK[$6c]

    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    ld a, [c]                                     ; $4002: $f2
    ld c, d                                       ; $4003: $4a
    db $fd                                        ; $4004: $fd
    ld d, h                                       ; $4005: $54
    jp nc, $cf5c                                  ; $4006: $d2 $5c $cf

    ld h, [hl]                                    ; $4009: $66
    ld h, [hl]                                    ; $400a: $66
    ld [hl], d                                    ; $400b: $72
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    call nc, $d443                                ; $400e: $d4 $43 $d4
    ld c, b                                       ; $4011: $48
    di                                            ; $4012: $f3
    ld c, b                                       ; $4013: $48
    ccf                                           ; $4014: $3f
    ld c, $0e                                     ; $4015: $0e $0e
    dec c                                         ; $4017: $0d
    dec c                                         ; $4018: $0d
    dec c                                         ; $4019: $0d
    ld c, $ff                                     ; $401a: $0e $ff
    db $e3                                        ; $401c: $e3
    or $f9                                        ; $401d: $f6 $f9
    sub e                                         ; $401f: $93
    ld c, l                                       ; $4020: $4d
    ld c, l                                       ; $4021: $4d
    db $fc                                        ; $4022: $fc
    db $e3                                        ; $4023: $e3
    db $d3                                        ; $4024: $d3
    pop hl                                        ; $4025: $e1
    dec c                                         ; $4026: $0d
    db $f4                                        ; $4027: $f4
    db $e4                                        ; $4028: $e4
    ld a, [c]                                     ; $4029: $f2
    db $e3                                        ; $402a: $e3
    ld c, $00                                     ; $402b: $0e $00
    pop bc                                        ; $402d: $c1
    db $e3                                        ; $402e: $e3
    or $fb                                        ; $402f: $f6 $fb
    jp nc, $c0e2                                  ; $4031: $d2 $e2 $c0

    db $e3                                        ; $4034: $e3
    sub b                                         ; $4035: $90
    ldh [$c4], a                                  ; $4036: $e0 $c4
    db $ed                                        ; $4038: $ed
    ld a, e                                       ; $4039: $7b
    rst $38                                       ; $403a: $ff
    adc d                                         ; $403b: $8a
    pop hl                                        ; $403c: $e1
    ld [hl], $c8                                  ; $403d: $36 $c8

Jump_06c_403f:
    ldh [$0d], a                                  ; $403f: $e0 $0d
    ld c, l                                       ; $4041: $4d
    rst $38                                       ; $4042: $ff
    ldh [$2d], a                                  ; $4043: $e0 $2d
    dec l                                         ; $4045: $2d

Jump_06c_4046:
    ld a, [$84e0]                                 ; $4046: $fa $e0 $84
    db $e4                                        ; $4049: $e4
    ld hl, sp-$7b                                 ; $404a: $f8 $85
    rst $38                                       ; $404c: $ff
    ld h, a                                       ; $404d: $67
    db $e3                                        ; $404e: $e3
    ld c, d                                       ; $404f: $4a
    ld [c], a                                     ; $4050: $e2
    ld c, l                                       ; $4051: $4d
    dec c                                         ; $4052: $0d
    ld l, l                                       ; $4053: $6d
    dec bc                                        ; $4054: $0b
    dec hl                                        ; $4055: $2b
    rra                                           ; $4056: $1f
    dec bc                                        ; $4057: $0b
    dec bc                                        ; $4058: $0b
    dec bc                                        ; $4059: $0b
    ld c, l                                       ; $405a: $4d
    dec l                                         ; $405b: $2d
    ld b, e                                       ; $405c: $43
    pop hl                                        ; $405d: $e1
    add l                                         ; $405e: $85
    rst $38                                       ; $405f: $ff
    db $ec                                        ; $4060: $ec
    rst $00                                       ; $4061: $c7
    inc a                                         ; $4062: $3c
    ld c, d                                       ; $4063: $4a
    db $e3                                        ; $4064: $e3
    pop bc                                        ; $4065: $c1
    pop hl                                        ; $4066: $e1
    ld a, [bc]                                    ; $4067: $0a
    ld a, [hl+]                                   ; $4068: $2a
    ld a, [bc]                                    ; $4069: $0a
    ld a, [hl+]                                   ; $406a: $2a
    cp a                                          ; $406b: $bf
    pop hl                                        ; $406c: $e1
    nop                                           ; $406d: $00
    rst $38                                       ; $406e: $ff
    db $ec                                        ; $406f: $ec
    db $ec                                        ; $4070: $ec
    bit 0, a                                      ; $4071: $cb $47
    ldh [$0d], a                                  ; $4073: $e0 $0d
    ld l, l                                       ; $4075: $6d
    jp nz, $0ae1                                  ; $4076: $c2 $e1 $0a

    ld a, [bc]                                    ; $4079: $0a
    ld a, [hl+]                                   ; $407a: $2a
    db $e3                                        ; $407b: $e3
    ld c, e                                       ; $407c: $4b
    dec bc                                        ; $407d: $0b
    ld a, a                                       ; $407e: $7f
    pop hl                                        ; $407f: $e1
    nop                                           ; $4080: $00
    rst $38                                       ; $4081: $ff
    nop                                           ; $4082: $00
    db $ec                                        ; $4083: $ec
    ld l, l                                       ; $4084: $6d
    dec c                                         ; $4085: $0d
    ld c, d                                       ; $4086: $4a
    inc bc                                        ; $4087: $03
    ld c, d                                       ; $4088: $4a
    ld a, [hl+]                                   ; $4089: $2a
    ld b, c                                       ; $408a: $41
    ldh [$3d], a                                  ; $408b: $e0 $3d
    ldh [$c0], a                                  ; $408d: $e0 $c0
    and $85                                       ; $408f: $e6 $85
    rst $38                                       ; $4091: $ff
    ld h, a                                       ; $4092: $67
    jp $c246                                      ; $4093: $c3 $46 $c2


    rla                                           ; $4096: $17
    dec bc                                        ; $4097: $0b
    ld l, e                                       ; $4098: $6b
    ld c, e                                       ; $4099: $4b
    ld [bc], a                                    ; $409a: $02
    ldh [rOCPD], a                                ; $409b: $e0 $6b
    ld a, [$80e0]                                 ; $409d: $fa $e0 $80
    ld [c], a                                     ; $40a0: $e2
    add l                                         ; $40a1: $85
    rst $38                                       ; $40a2: $ff
    inc b                                         ; $40a3: $04
    db $ec                                        ; $40a4: $ec
    xor h                                         ; $40a5: $ac
    call nz, $4be0                                ; $40a6: $c4 $e0 $4b
    jp nz, $bbe0                                  ; $40a9: $c2 $e0 $bb

    ldh [rP1], a                                  ; $40ac: $e0 $00
    rst $38                                       ; $40ae: $ff
    nop                                           ; $40af: $00
    rst $28                                       ; $40b0: $ef
    pop bc                                        ; $40b1: $c1
    ldh [$8c], a                                  ; $40b2: $e0 $8c
    ld b, h                                       ; $40b4: $44
    ld [c], a                                     ; $40b5: $e2
    ld a, a                                       ; $40b6: $7f
    ret nz                                        ; $40b7: $c0

    dec c                                         ; $40b8: $0d
    ld l, l                                       ; $40b9: $6d
    nop                                           ; $40ba: $00
    rst $38                                       ; $40bb: $ff
    db $ec                                        ; $40bc: $ec
    db $ec                                        ; $40bd: $ec
    ret nz                                        ; $40be: $c0

    db $e3                                        ; $40bf: $e3
    dec hl                                        ; $40c0: $2b
    rrca                                          ; $40c1: $0f
    dec hl                                        ; $40c2: $2b
    dec bc                                        ; $40c3: $0b
    dec hl                                        ; $40c4: $2b
    ld c, e                                       ; $40c5: $4b
    pop bc                                        ; $40c6: $c1
    pop hl                                        ; $40c7: $e1
    nop                                           ; $40c8: $00
    rst $38                                       ; $40c9: $ff
    nop                                           ; $40ca: $00
    db $ec                                        ; $40cb: $ec
    inc bc                                        ; $40cc: $03
    ret nz                                        ; $40cd: $c0

    ld a, $40                                     ; $40ce: $3e $40
    ldh [$2b], a                                  ; $40d0: $e0 $2b
    dec bc                                        ; $40d2: $0b
    ld a, [bc]                                    ; $40d3: $0a
    dec hl                                        ; $40d4: $2b
    dec c                                         ; $40d5: $0d
    add d                                         ; $40d6: $82
    jp nz, $ff85                                  ; $40d7: $c2 $85 $ff

    ret nz                                        ; $40da: $c0

    db $ec                                        ; $40db: $ec
    ldh a, [$c2]                                  ; $40dc: $f0 $c2
    and c                                         ; $40de: $a1
    ret nz                                        ; $40df: $c0

    db $e4                                        ; $40e0: $e4
    set 4, e                                      ; $40e1: $cb $e3
    nop                                           ; $40e3: $00
    rst $38                                       ; $40e4: $ff
    ld [c], a                                     ; $40e5: $e2
    rst $20                                       ; $40e6: $e7
    ld c, l                                       ; $40e7: $4d
    dec l                                         ; $40e8: $2d
    ld b, e                                       ; $40e9: $43
    dec c                                         ; $40ea: $0d
    dec c                                         ; $40eb: $0d
    ret nz                                        ; $40ec: $c0

    jp hl                                         ; $40ed: $e9


    nop                                           ; $40ee: $00
    rst $38                                       ; $40ef: $ff
    db $ec                                        ; $40f0: $ec
    db $eb                                        ; $40f1: $eb
    rlca                                          ; $40f2: $07
    and b                                         ; $40f3: $a0
    dec c                                         ; $40f4: $0d

Jump_06c_40f5:
    ld b, b                                       ; $40f5: $40
    ret nz                                        ; $40f6: $c0

    pop bc                                        ; $40f7: $c1
    ld l, e                                       ; $40f8: $6b
    add d                                         ; $40f9: $82
    jp $e4c0                                      ; $40fa: $c3 $c0 $e4


    add l                                         ; $40fd: $85
    rst $38                                       ; $40fe: $ff
    nop                                           ; $40ff: $00
    and $9b                                       ; $4100: $e6 $9b
    pop hl                                        ; $4102: $e1
    dec hl                                        ; $4103: $2b
    ld c, e                                       ; $4104: $4b
    ld bc, $bc6b                                  ; $4105: $01 $6b $bc
    ldh [$80], a                                  ; $4108: $e0 $80
    db $e4                                        ; $410a: $e4
    add l                                         ; $410b: $85
    rst $38                                       ; $410c: $ff
    nop                                           ; $410d: $00
    adc h                                         ; $410e: $8c
    pop bc                                        ; $410f: $c1
    pop hl                                        ; $4110: $e1
    cp [hl]                                       ; $4111: $be
    and c                                         ; $4112: $a1
    nop                                           ; $4113: $00
    rst $38                                       ; $4114: $ff
    adc h                                         ; $4115: $8c
    nop                                           ; $4116: $00
    or c                                          ; $4117: $b1
    ret nz                                        ; $4118: $c0

    pop hl                                        ; $4119: $e1
    ld l, e                                       ; $411a: $6b
    dec c                                         ; $411b: $0d
    dec a                                         ; $411c: $3d
    pop hl                                        ; $411d: $e1
    nop                                           ; $411e: $00
    rst $38                                       ; $411f: $ff
    nop                                           ; $4120: $00
    di                                            ; $4121: $f3
    dec c                                         ; $4122: $0d
    ld a, a                                       ; $4123: $7f
    ld l, e                                       ; $4124: $6b
    dec hl                                        ; $4125: $2b
    dec bc                                        ; $4126: $0b
    dec c                                         ; $4127: $0d
    dec c                                         ; $4128: $0d
    ld l, e                                       ; $4129: $6b
    ld c, e                                       ; $412a: $4b
    nop                                           ; $412b: $00
    rst $38                                       ; $412c: $ff
    nop                                           ; $412d: $00
    nop                                           ; $412e: $00
    or c                                          ; $412f: $b1
    add b                                         ; $4130: $80
    add c                                         ; $4131: $81
    add l                                         ; $4132: $85
    and b                                         ; $4133: $a0
    ld sp, hl                                     ; $4134: $f9
    add b                                         ; $4135: $80
    ld [hl], a                                    ; $4136: $77
    ret nz                                        ; $4137: $c0

    pop bc                                        ; $4138: $c1
    xor b                                         ; $4139: $a8
    add l                                         ; $413a: $85
    rst $38                                       ; $413b: $ff
    ld [c], a                                     ; $413c: $e2
    db $e4                                        ; $413d: $e4
    add c                                         ; $413e: $81
    ld l, l                                       ; $413f: $6d
    add d                                         ; $4140: $82
    and b                                         ; $4141: $a0
    ld a, [hl]                                    ; $4142: $7e
    and b                                         ; $4143: $a0
    ret nz                                        ; $4144: $c0

    push hl                                       ; $4145: $e5
    nop                                           ; $4146: $00
    rst $38                                       ; $4147: $ff
    nop                                           ; $4148: $00
    xor h                                         ; $4149: $ac
    inc b                                         ; $414a: $04
    pop hl                                        ; $414b: $e1
    ld a, [bc]                                    ; $414c: $0a
    nop                                           ; $414d: $00
    cp a                                          ; $414e: $bf
    pop hl                                        ; $414f: $e1
    add b                                         ; $4150: $80
    db $e4                                        ; $4151: $e4
    nop                                           ; $4152: $00
    rst $38                                       ; $4153: $ff
    ld [c], a                                     ; $4154: $e2
    add sp, -$38                                  ; $4155: $e8 $c8
    ld b, c                                       ; $4157: $41
    jp $c083                                      ; $4158: $c3 $83 $c0


    ld [c], a                                     ; $415b: $e2
    cp c                                          ; $415c: $b9
    ld b, d                                       ; $415d: $42
    ld [$ff00], sp                                ; $415e: $08 $00 $ff
    ld [c], a                                     ; $4161: $e2
    push hl                                       ; $4162: $e5
    ret                                           ; $4163: $c9


    ld b, c                                       ; $4164: $41
    dec c                                         ; $4165: $0d
    ld b, c                                       ; $4166: $41
    pop hl                                        ; $4167: $e1
    ret nz                                        ; $4168: $c0

    db $e3                                        ; $4169: $e3
    jp nz, $85c2                                  ; $416a: $c2 $c2 $85

    rst $38                                       ; $416d: $ff
    ld [$8685], sp                                ; $416e: $08 $85 $86
    inc bc                                        ; $4171: $03
    ld b, d                                       ; $4172: $42
    ld b, e                                       ; $4173: $43
    and c                                         ; $4174: $a1
    ld a, [bc]                                    ; $4175: $0a
    ret nz                                        ; $4176: $c0

    ld h, c                                       ; $4177: $61
    ret nz                                        ; $4178: $c0

    ld b, b                                       ; $4179: $40
    add d                                         ; $417a: $82
    push hl                                       ; $417b: $e5
    nop                                           ; $417c: $00
    rst $38                                       ; $417d: $ff
    inc b                                         ; $417e: $04
    rst $00                                       ; $417f: $c7

Jump_06c_4180:
    ld h, $80                                     ; $4180: $26 $80
    ldh [rWX], a                                  ; $4182: $e0 $4b
    ld b, h                                       ; $4184: $44
    and b                                         ; $4185: $a0
    add c                                         ; $4186: $81
    ld h, e                                       ; $4187: $63
    nop                                           ; $4188: $00
    rst $38                                       ; $4189: $ff
    add l                                         ; $418a: $85
    and $83                                       ; $418b: $e6 $83
    ld h, $06                                     ; $418d: $26 $06
    rlca                                          ; $418f: $07
    ret nz                                        ; $4190: $c0

    dec hl                                        ; $4191: $2b
    dec bc                                        ; $4192: $0b
    add b                                         ; $4193: $80
    ld h, c                                       ; $4194: $61
    ld bc, $c060                                  ; $4195: $01 $60 $c0
    and $85                                       ; $4198: $e6 $85
    cp $87                                        ; $419a: $fe $87
    and d                                         ; $419c: $a2
    ld [bc], a                                    ; $419d: $02
    ld bc, $6de2                                  ; $419e: $01 $e2 $6d
    add d                                         ; $41a1: $82
    pop hl                                        ; $41a2: $e1
    db $fd                                        ; $41a3: $fd
    ld b, e                                       ; $41a4: $43
    add b                                         ; $41a5: $80
    db $e3                                        ; $41a6: $e3
    ld a, [bc]                                    ; $41a7: $0a
    cp $14                                        ; $41a8: $fe $14
    inc hl                                        ; $41aa: $23
    adc c                                         ; $41ab: $89
    ld hl, $0d2f                                  ; $41ac: $21 $2f $0d
    ld l, l                                       ; $41af: $6d
    ld l, l                                       ; $41b0: $6d
    ld l, l                                       ; $41b1: $6d
    ld b, b                                       ; $41b2: $40
    ld h, d                                       ; $41b3: $62
    ld l, e                                       ; $41b4: $6b
    ld a, [hl-]                                   ; $41b5: $3a
    ld h, c                                       ; $41b6: $61
    halt                                          ; $41b7: $76
    ld b, b                                       ; $41b8: $40
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    cp $5d                                        ; $41bb: $fe $5d
    and e                                         ; $41bd: $a3
    rlca                                          ; $41be: $07
    ld b, l                                       ; $41bf: $45
    ld a, [bc]                                    ; $41c0: $0a
    ld [hl+], a                                   ; $41c1: $22
    add e                                         ; $41c2: $83
    ld b, d                                       ; $41c3: $42
    cp e                                          ; $41c4: $bb
    ld b, b                                       ; $41c5: $40
    ld [bc], a                                    ; $41c6: $02
    ld h, h                                       ; $41c7: $64
    nop                                           ; $41c8: $00
    rst $30                                       ; $41c9: $f7
    jr jr_06c_421e                                ; $41ca: $18 $52

    jp nz, $c50a                                  ; $41cc: $c2 $0a $c5

    pop bc                                        ; $41cf: $c1
    and $0b                                       ; $41d0: $e6 $0b
    ld c, e                                       ; $41d2: $4b
    ld [bc], a                                    ; $41d3: $02
    ldh [$c1], a                                  ; $41d4: $e0 $c1
    db $e3                                        ; $41d6: $e3
    ret nz                                        ; $41d7: $c0

    add a                                         ; $41d8: $87
    db $10                                        ; $41d9: $10
    inc d                                         ; $41da: $14
    ld [hl], h                                    ; $41db: $74
    ld h, e                                       ; $41dc: $63
    ld b, d                                       ; $41dd: $42
    adc $81                                       ; $41de: $ce $81
    ret nc                                        ; $41e0: $d0

    ld bc, $0b6d                                  ; $41e1: $01 $6d $0b
    and c                                         ; $41e4: $a1
    ld b, d                                       ; $41e5: $42
    ld b, d                                       ; $41e6: $42
    add d                                         ; $41e7: $82
    ld b, d                                       ; $41e8: $42
    add b                                         ; $41e9: $80
    db $f4                                        ; $41ea: $f4
    ld h, l                                       ; $41eb: $65
    nop                                           ; $41ec: $00
    jp c, $81d1                                   ; $41ed: $da $d1 $81

    rrca                                          ; $41f0: $0f
    ld hl, $424b                                  ; $41f1: $21 $4b $42
    ret nz                                        ; $41f4: $c0

    ld [c], a                                     ; $41f5: $e2
    add e                                         ; $41f6: $83
    pop hl                                        ; $41f7: $e1
    dec hl                                        ; $41f8: $2b
    nop                                           ; $41f9: $00
    ld a, a                                       ; $41fa: $7f
    ld h, b                                       ; $41fb: $60
    ld b, d                                       ; $41fc: $42
    jp hl                                         ; $41fd: $e9


    nop                                           ; $41fe: $00
    rst $10                                       ; $41ff: $d7
    adc l                                         ; $4200: $8d
    and d                                         ; $4201: $a2
    pop bc                                        ; $4202: $c1
    rst $20                                       ; $4203: $e7
    adc c                                         ; $4204: $89
    nop                                           ; $4205: $00
    dec b                                         ; $4206: $05
    add b                                         ; $4207: $80
    ld a, a                                       ; $4208: $7f
    jr nz, jr_06c_425b                            ; $4209: $20 $50

    or [hl]                                       ; $420b: $b6
    ret nz                                        ; $420c: $c0

    ld b, d                                       ; $420d: $42
    push hl                                       ; $420e: $e5
    nop                                           ; $420f: $00
    reti                                          ; $4210: $d9


    ld d, c                                       ; $4211: $51
    ld b, d                                       ; $4212: $42
    ld c, l                                       ; $4213: $4d
    add d                                         ; $4214: $82
    rst $20                                       ; $4215: $e7
    dec bc                                        ; $4216: $0b
    add $61                                       ; $4217: $c6 $61
    nop                                           ; $4219: $00
    pop bc                                        ; $421a: $c1
    ld h, d                                       ; $421b: $62
    dec b                                         ; $421c: $05
    ld b, b                                       ; $421d: $40

jr_06c_421e:
    ld b, h                                       ; $421e: $44
    inc hl                                        ; $421f: $23
    nop                                           ; $4220: $00
    ld hl, sp-$2c                                 ; $4221: $f8 $d4
    ld h, d                                       ; $4223: $62
    ld e, h                                       ; $4224: $5c
    jp nz, Jump_000_20d2                          ; $4225: $c2 $d2 $20

    dec b                                         ; $4228: $05
    db $e3                                        ; $4229: $e3
    ld bc, $c02b                                  ; $422a: $01 $2b $c0
    add d                                         ; $422d: $82
    add c                                         ; $422e: $81
    ld h, b                                       ; $422f: $60
    inc b                                         ; $4230: $04
    rst $20                                       ; $4231: $e7
    inc d                                         ; $4232: $14
    or [hl]                                       ; $4233: $b6
    call nc, $cc63                                ; $4234: $d4 $63 $cc
    call nz, Call_000_208d                        ; $4237: $c4 $8d $20
    ld [bc], a                                    ; $423a: $02
    adc e                                         ; $423b: $8b
    jr nz, jr_06c_4248                            ; $423c: $20 $0a

    add a                                         ; $423e: $87
    ld [hl+], a                                   ; $423f: $22
    ld b, d                                       ; $4240: $42
    ld h, b                                       ; $4241: $60
    add l                                         ; $4242: $85
    ld h, b                                       ; $4243: $60
    adc $8b                                       ; $4244: $ce $8b
    sbc c                                         ; $4246: $99
    ld d, d                                       ; $4247: $52

jr_06c_4248:
    ld c, $c0                                     ; $4248: $0e $c0
    nop                                           ; $424a: $00
    sub [hl]                                      ; $424b: $96
    ld h, e                                       ; $424c: $63
    rst $38                                       ; $424d: $ff
    db $e3                                        ; $424e: $e3
    ld c, d                                       ; $424f: $4a
    ld b, d                                       ; $4250: $42
    jp nz, $b8e1                                  ; $4251: $c2 $e1 $b8

    and b                                         ; $4254: $a0
    jp z, $ce86                                   ; $4255: $ca $86 $ce

    ld l, c                                       ; $4258: $69
    ld a, e                                       ; $4259: $7b
    add l                                         ; $425a: $85

jr_06c_425b:
    jr nz, @-$68                                  ; $425b: $20 $96

    add h                                         ; $425d: $84
    pop bc                                        ; $425e: $c1
    ld [c], a                                     ; $425f: $e2
    ld c, l                                       ; $4260: $4d
    pop hl                                        ; $4261: $e1
    ret nz                                        ; $4262: $c0

    db $e3                                        ; $4263: $e3
    ld c, a                                       ; $4264: $4f
    nop                                           ; $4265: $00
    ld l, e                                       ; $4266: $6b
    ld c, e                                       ; $4267: $4b
    nop                                           ; $4268: $00
    pop bc                                        ; $4269: $c1
    ld [c], a                                     ; $426a: $e2
    or b                                          ; $426b: $b0
    ld b, [hl]                                    ; $426c: $46
    rst $00                                       ; $426d: $c7
    nop                                           ; $426e: $00
    or d                                          ; $426f: $b2
    ld b, e                                       ; $4270: $43
    and $97                                       ; $4271: $e6 $97
    ld bc, $0d6b                                  ; $4273: $01 $6b $0d
    sub b                                         ; $4276: $90
    add c                                         ; $4277: $81
    ld a, [bc]                                    ; $4278: $0a
    inc b                                         ; $4279: $04
    add $e0                                       ; $427a: $c6 $e0
    ld a, [bc]                                    ; $427c: $0a
    ld b, b                                       ; $427d: $40
    dec l                                         ; $427e: $2d
    rst $38                                       ; $427f: $ff
    pop hl                                        ; $4280: $e1
    add d                                         ; $4281: $82
    db $e4                                        ; $4282: $e4
    add l                                         ; $4283: $85
    sub e                                         ; $4284: $93
    add hl, de                                    ; $4285: $19
    add e                                         ; $4286: $83
    sub $04                                       ; $4287: $d6 $04
    nop                                           ; $4289: $00
    pop bc                                        ; $428a: $c1
    ld [c], a                                     ; $428b: $e2
    adc a                                         ; $428c: $8f
    ld h, d                                       ; $428d: $62
    ld b, [hl]                                    ; $428e: $46
    ldh [$87], a                                  ; $428f: $e0 $87
    ld [c], a                                     ; $4291: $e2
    and $c4                                       ; $4292: $e6 $c4
    ld b, l                                       ; $4294: $45
    ld h, a                                       ; $4295: $67
    nop                                           ; $4296: $00
    adc l                                         ; $4297: $8d
    ld c, e                                       ; $4298: $4b
    and h                                         ; $4299: $a4
    nop                                           ; $429a: $00
    add hl, bc                                    ; $429b: $09
    jp $e181                                      ; $429c: $c3 $81 $e1


    ld b, $e1                                     ; $429f: $06 $e1
    dec c                                         ; $42a1: $0d
    add b                                         ; $42a2: $80
    rlca                                          ; $42a3: $07
    pop bc                                        ; $42a4: $c1
    ld c, b                                       ; $42a5: $48
    pop hl                                        ; $42a6: $e1
    dec [hl]                                      ; $42a7: $35
    add e                                         ; $42a8: $83
    adc $72                                       ; $42a9: $ce $72
    inc b                                         ; $42ab: $04
    sbc c                                         ; $42ac: $99
    ld h, h                                       ; $42ad: $64
    sub b                                         ; $42ae: $90
    add h                                         ; $42af: $84
    ld l, l                                       ; $42b0: $6d
    ld d, [hl]                                    ; $42b1: $56
    ld h, b                                       ; $42b2: $60
    sub [hl]                                      ; $42b3: $96
    ld b, c                                       ; $42b4: $41
    jp nz, Jump_000_06c4                          ; $42b5: $c2 $c4 $06

    ldh [$0e], a                                  ; $42b8: $e0 $0e
    and h                                         ; $42ba: $a4
    ld [$aa0a], sp                                ; $42bb: $08 $0a $aa
    nop                                           ; $42be: $00
    adc a                                         ; $42bf: $8f
    jp c, Jump_06c_6d44                           ; $42c0: $da $44 $6d

    ld e, d                                       ; $42c3: $5a
    nop                                           ; $42c4: $00
    call nz, $c1e5                                ; $42c5: $c4 $e5 $c1
    push hl                                       ; $42c8: $e5
    rrca                                          ; $42c9: $0f
    ld b, l                                       ; $42ca: $45
    nop                                           ; $42cb: $00
    ld a, [bc]                                    ; $42cc: $0a
    ld h, l                                       ; $42cd: $65
    add l                                         ; $42ce: $85
    xor $05                                       ; $42cf: $ee $05
    push hl                                       ; $42d1: $e5
    ld b, [hl]                                    ; $42d2: $46
    pop bc                                        ; $42d3: $c1
    jp Jump_06c_52e8                              ; $42d4: $c3 $e8 $52


    ld h, c                                       ; $42d7: $61
    sub b                                         ; $42d8: $90
    add c                                         ; $42d9: $81
    add h                                         ; $42da: $84
    push hl                                       ; $42db: $e5
    nop                                           ; $42dc: $00
    add l                                         ; $42dd: $85
    call Call_06c_6300                            ; $42de: $cd $00 $63
    ld h, c                                       ; $42e1: $61
    ld h, d                                       ; $42e2: $62
    ld [$93c3], sp                                ; $42e3: $08 $c3 $93
    add b                                         ; $42e6: $80
    sbc l                                         ; $42e7: $9d
    ld h, e                                       ; $42e8: $63
    ld b, h                                       ; $42e9: $44
    push hl                                       ; $42ea: $e5
    ret nc                                        ; $42eb: $d0

    add l                                         ; $42ec: $85
    nop                                           ; $42ed: $00
    ld a, [hl-]                                   ; $42ee: $3a
    ld b, a                                       ; $42ef: $47
    adc $30                                       ; $42f0: $ce $30
    ld e, l                                       ; $42f2: $5d
    ld h, e                                       ; $42f3: $63
    xor c                                         ; $42f4: $a9
    ld h, d                                       ; $42f5: $62
    ld [$14e7], sp                                ; $42f6: $08 $e7 $14
    ld h, e                                       ; $42f9: $63
    inc b                                         ; $42fa: $04
    rst $20                                       ; $42fb: $e7
    ld e, l                                       ; $42fc: $5d
    ld d, $00                                     ; $42fd: $16 $00
    ld c, $a8                                     ; $42ff: $0e $a8
    ldh [rNR43], a                                ; $4301: $e0 $22
    jp z, $8fa6                                   ; $4303: $ca $a6 $8f

    ld h, b                                       ; $4306: $60
    inc b                                         ; $4307: $04
    push hl                                       ; $4308: $e5
    ret c                                         ; $4309: $d8

    ld [hl], $8f                                  ; $430a: $36 $8f

jr_06c_430c:
    ld h, a                                       ; $430c: $67
    inc d                                         ; $430d: $14
    add h                                         ; $430e: $84
    add b                                         ; $430f: $80
    adc b                                         ; $4310: $88
    call nz, $e33b                                ; $4311: $c4 $3b $e3
    inc b                                         ; $4314: $04
    db $e3                                        ; $4315: $e3
    ld a, [bc]                                    ; $4316: $0a
    rst $28                                       ; $4317: $ef
    nop                                           ; $4318: $00
    xor l                                         ; $4319: $ad
    ld c, l                                       ; $431a: $4d
    and h                                         ; $431b: $a4
    inc c                                         ; $431c: $0c
    push hl                                       ; $431d: $e5
    ld c, e                                       ; $431e: $4b
    ld [bc], a                                    ; $431f: $02
    db $fc                                        ; $4320: $fc
    push bc                                       ; $4321: $c5
    dec l                                         ; $4322: $2d
    inc d                                         ; $4323: $14
    adc a                                         ; $4324: $8f
    adc $2f                                       ; $4325: $ce $2f
    ld h, h                                       ; $4327: $64
    inc bc                                        ; $4328: $03
    adc h                                         ; $4329: $8c
    jp z, $c4bd                                   ; $432a: $ca $bd $c4

    sub c                                         ; $432d: $91
    add b                                         ; $432e: $80
    nop                                           ; $432f: $00
    inc d                                         ; $4330: $14
    adc h                                         ; $4331: $8c
    nop                                           ; $4332: $00
    ld a, [c]                                     ; $4333: $f2
    ld h, h                                       ; $4334: $64
    ld bc, $8594                                  ; $4335: $01 $94 $85
    ld sp, hl                                     ; $4338: $f9
    ld [$0096], a                                 ; $4339: $ea $96 $00
    ld h, a                                       ; $433c: $67
    rra                                           ; $433d: $1f
    ld [hl], c                                    ; $433e: $71
    ld h, h                                       ; $433f: $64
    nop                                           ; $4340: $00
    add $c7                                       ; $4341: $c6 $c7
    pop bc                                        ; $4343: $c1
    rst $20                                       ; $4344: $e7
    sub d                                         ; $4345: $92
    ld h, d                                       ; $4346: $62
    ld h, a                                       ; $4347: $67
    ld e, $bd                                     ; $4348: $1e $bd
    ld [bc], a                                    ; $434a: $02
    add a                                         ; $434b: $87
    jp $ebbe                                      ; $434c: $c3 $be $eb


    ld d, [hl]                                    ; $434f: $56
    ld b, e                                       ; $4350: $43
    nop                                           ; $4351: $00
    ld e, l                                       ; $4352: $5d
    dec de                                        ; $4353: $1b
    ret nz                                        ; $4354: $c0

    rst $20                                       ; $4355: $e7
    ld h, e                                       ; $4356: $63
    ld b, d                                       ; $4357: $42
    ld b, e                                       ; $4358: $43
    jp Jump_06c_448a                              ; $4359: $c3 $8a $44


    ld b, h                                       ; $435c: $44
    add $53                                       ; $435d: $c6 $53
    jr jr_06c_430c                                ; $435f: $18 $ab

    and h                                         ; $4361: $a4
    add b                                         ; $4362: $80
    pop de                                        ; $4363: $d1
    add e                                         ; $4364: $83
    ld sp, hl                                     ; $4365: $f9
    and $f7                                       ; $4366: $e6 $f7
    add e                                         ; $4368: $83
    ld a, $24                                     ; $4369: $3e $24
    ld e, l                                       ; $436b: $5d
    ld a, [de]                                    ; $436c: $1a
    nop                                           ; $436d: $00
    and e                                         ; $436e: $a3
    adc c                                         ; $436f: $89
    xor b                                         ; $4370: $a8
    dec hl                                        ; $4371: $2b
    nop                                           ; $4372: $00
    add d                                         ; $4373: $82
    pop hl                                        ; $4374: $e1
    pop bc                                        ; $4375: $c1
    db $e4                                        ; $4376: $e4
    adc a                                         ; $4377: $8f
    sub h                                         ; $4378: $94
    nop                                           ; $4379: $00
    ld l, a                                       ; $437a: $6f
    and e                                         ; $437b: $a3
    ld hl, $a3cf                                  ; $437c: $21 $cf $a3
    cp a                                          ; $437f: $bf
    ld [c], a                                     ; $4380: $e2
    add d                                         ; $4381: $82
    push hl                                       ; $4382: $e5
    nop                                           ; $4383: $00
    adc a                                         ; $4384: $8f
    sub c                                         ; $4385: $91
    or $cf                                        ; $4386: $f6 $cf
    ret nz                                        ; $4388: $c0

    db $e3                                        ; $4389: $e3

Jump_06c_438a:
    ld h, [hl]                                    ; $438a: $66
    inc bc                                        ; $438b: $03
    sub d                                         ; $438c: $92
    ld b, b                                       ; $438d: $40
    ld d, $61                                     ; $438e: $16 $61
    ld d, l                                       ; $4390: $55
    ld h, b                                       ; $4391: $60
    db $fc                                        ; $4392: $fc
    dec b                                         ; $4393: $05
    inc c                                         ; $4394: $0c
    add l                                         ; $4395: $85
    ret c                                         ; $4396: $d8

    nop                                           ; $4397: $00
    rst $00                                       ; $4398: $c7
    ld c, l                                       ; $4399: $4d
    dec l                                         ; $439a: $2d
    dec h                                         ; $439b: $25
    inc b                                         ; $439c: $04
    pop bc                                        ; $439d: $c1
    pop hl                                        ; $439e: $e1
    ld h, b                                       ; $439f: $60
    ld [bc], a                                    ; $43a0: $02
    sbc d                                         ; $43a1: $9a
    daa                                           ; $43a2: $27
    add b                                         ; $43a3: $80
    nop                                           ; $43a4: $00
    rst $38                                       ; $43a5: $ff
    adc $01                                       ; $43a6: $ce $01
    cp a                                          ; $43a8: $bf
    db $e4                                        ; $43a9: $e4
    pop bc                                        ; $43aa: $c1
    db $e3                                        ; $43ab: $e3
    inc c                                         ; $43ac: $0c
    and h                                         ; $43ad: $a4
    inc d                                         ; $43ae: $14
    ld l, l                                       ; $43af: $6d
    nop                                           ; $43b0: $00
    cp c                                          ; $43b1: $b9
    ld c, l                                       ; $43b2: $4d
    nop                                           ; $43b3: $00
    sbc a                                         ; $43b4: $9f
    ld b, d                                       ; $43b5: $42
    sbc d                                         ; $43b6: $9a
    ld b, l                                       ; $43b7: $45
    ret nz                                        ; $43b8: $c0

    rst $20                                       ; $43b9: $e7
    add l                                         ; $43ba: $85
    cp c                                          ; $43bb: $b9
    add sp, -$59                                  ; $43bc: $e8 $a7
    and d                                         ; $43be: $a2
    ld b, e                                       ; $43bf: $43
    ld a, [$d5e5]                                 ; $43c0: $fa $e5 $d5
    ld h, [hl]                                    ; $43c3: $66
    nop                                           ; $43c4: $00
    add l                                         ; $43c5: $85
    cp h                                          ; $43c6: $bc
    nop                                           ; $43c7: $00
    xor b                                         ; $43c8: $a8
    jp nz, $fc42                                  ; $43c9: $c2 $42 $fc

    push hl                                       ; $43cc: $e5
    sub l                                         ; $43cd: $95
    ld l, c                                       ; $43ce: $69
    nop                                           ; $43cf: $00
    db $dd                                        ; $43d0: $dd
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    rst $38                                       ; $43d4: $ff
    call c, $a0dd                                 ; $43d5: $dc $dd $a0
    sbc $df                                       ; $43d8: $de $df
    ldh [$e1], a                                  ; $43da: $e0 $e1
    ld [c], a                                     ; $43dc: $e2
    ld a, e                                       ; $43dd: $7b
    db $e3                                        ; $43de: $e3
    db $e4                                        ; $43df: $e4
    or $fb                                        ; $43e0: $f6 $fb
    and b                                         ; $43e2: $a0
    and b                                         ; $43e3: $a0
    ret c                                         ; $43e4: $d8

    reti                                          ; $43e5: $d9


    db $fc                                        ; $43e6: $fc
    pop hl                                        ; $43e7: $e1
    sbc a                                         ; $43e8: $9f
    db $ed                                        ; $43e9: $ed
    xor $d4                                       ; $43ea: $ee $d4
    push de                                       ; $43ec: $d5
    rst $28                                       ; $43ed: $ef
    db $f4                                        ; $43ee: $f4
    ld [c], a                                     ; $43ef: $e2
    adc $e3                                       ; $43f0: $ce $e3
    push hl                                       ; $43f2: $e5
    rst $38                                       ; $43f3: $ff
    and $e7                                       ; $43f4: $e6 $e7
    and b                                         ; $43f6: $a0
    add sp, -$17                                  ; $43f7: $e8 $e9
    ld [$eceb], a                                 ; $43f9: $ea $eb $ec
    db $fd                                        ; $43fc: $fd
    and b                                         ; $43fd: $a0
    or $fb                                        ; $43fe: $f6 $fb
    ret nc                                        ; $4400: $d0

    pop de                                        ; $4401: $d1
    jp c, $a0db                                   ; $4402: $da $db $a0

    and b                                         ; $4405: $a0
    ld a, a                                       ; $4406: $7f
    jp c, $f0db                                   ; $4407: $da $db $f0

    pop af                                        ; $440a: $f1
    ld a, [c]                                     ; $440b: $f2
    di                                            ; $440c: $f3
    db $f4                                        ; $440d: $f4

Jump_06c_440e:
    ld hl, sp-$20                                 ; $440e: $f8 $e0
    rst $00                                       ; $4410: $c7
    sub $d7                                       ; $4411: $d6 $d7
    and b                                         ; $4413: $a0
    adc $e2                                       ; $4414: $ce $e2
    add l                                         ; $4416: $85
    rst $38                                       ; $4417: $ff
    ld h, a                                       ; $4418: $67
    pop hl                                        ; $4419: $e1
    and b                                         ; $441a: $a0
    and b                                         ; $441b: $a0
    rst $38                                       ; $441c: $ff
    jp nc, $a0d3                                  ; $441d: $d2 $d3 $a0

    push af                                       ; $4420: $f5
    or $a0                                        ; $4421: $f6 $a0
    sbc a                                         ; $4423: $9f
    sbc l                                         ; $4424: $9d
    ld [hl], $ff                                  ; $4425: $36 $ff
    ldh [$a2], a                                  ; $4427: $e0 $a2
    sbc a                                         ; $4429: $9f
    ldh a, [$e0]                                  ; $442a: $f0 $e0
    ret c                                         ; $442c: $d8

    reti                                          ; $442d: $d9


    ld c, c                                       ; $442e: $49
    db $e3                                        ; $442f: $e3
    add l                                         ; $4430: $85
    rst $38                                       ; $4431: $ff
    db $fc                                        ; $4432: $fc
    ld h, a                                       ; $4433: $67
    pop hl                                        ; $4434: $e1
    ld c, d                                       ; $4435: $4a
    db $e3                                        ; $4436: $e3
    and b                                         ; $4437: $a0
    sbc a                                         ; $4438: $9f
    sbc h                                         ; $4439: $9c
    ld b, [hl]                                    ; $443a: $46
    ld b, l                                       ; $443b: $45
    ld b, l                                       ; $443c: $45
    ccf                                           ; $443d: $3f
    ld b, [hl]                                    ; $443e: $46
    ld b, [hl]                                    ; $443f: $46
    sbc h                                         ; $4440: $9c
    sbc a                                         ; $4441: $9f
    and b                                         ; $4442: $a0
    rst $10                                       ; $4443: $d7
    ld [hl], d                                    ; $4444: $72
    ldh [rOBP1], a                                ; $4445: $e0 $49
    ld [c], a                                     ; $4447: $e2
    ldh a, [rP1]                                  ; $4448: $f0 $00
    rst $38                                       ; $444a: $ff
    ld [c], a                                     ; $444b: $e2
    pop hl                                        ; $444c: $e1
    ld c, d                                       ; $444d: $4a
    db $e3                                        ; $444e: $e3
    pop bc                                        ; $444f: $c1
    pop hl                                        ; $4450: $e1
    ld b, a                                       ; $4451: $47
    ld c, c                                       ; $4452: $49
    ld c, [hl]                                    ; $4453: $4e
    ld c, b                                       ; $4454: $48
    pop hl                                        ; $4455: $e1
    ld b, l                                       ; $4456: $45
    cp a                                          ; $4457: $bf
    ldh [rP1], a                                  ; $4458: $e0 $00
    rst $38                                       ; $445a: $ff
    db $ec                                        ; $445b: $ec
    db $eb                                        ; $445c: $eb
    dec a                                         ; $445d: $3d
    ldh [$9f], a                                  ; $445e: $e0 $9f
    sbc h                                         ; $4460: $9c
    ld b, l                                       ; $4461: $45
    rst $38                                       ; $4462: $ff
    ld c, b                                       ; $4463: $48
    ld c, b                                       ; $4464: $48
    ld d, e                                       ; $4465: $53
    ld e, c                                       ; $4466: $59
    ld e, c                                       ; $4467: $59
    ld d, e                                       ; $4468: $53
    ld b, l                                       ; $4469: $45
    ld b, [hl]                                    ; $446a: $46
    di                                            ; $446b: $f3
    sbc [hl]                                      ; $446c: $9e
    and b                                         ; $446d: $a0
    nop                                           ; $446e: $00
    rst $38                                       ; $446f: $ff
    db $ec                                        ; $4470: $ec
    db $eb                                        ; $4471: $eb
    sub $d7                                       ; $4472: $d6 $d7
    sbc a                                         ; $4474: $9f
    sbc h                                         ; $4475: $9c
    rst $38                                       ; $4476: $ff
    or d                                          ; $4477: $b2
    ld d, c                                       ; $4478: $51
    ld e, [hl]                                    ; $4479: $5e
    ld d, d                                       ; $447a: $52
    dec hl                                        ; $447b: $2b
    ld sp, $2a2c                                  ; $447c: $31 $2c $2a
    ldh a, [$c0]                                  ; $447f: $f0 $c0
    pop hl                                        ; $4481: $e1
    nop                                           ; $4482: $00
    rst $38                                       ; $4483: $ff
    ld h, a                                       ; $4484: $67
    ld [$c042], a                                 ; $4485: $ea $42 $c0
    and c                                         ; $4488: $a1
    or d                                          ; $4489: $b2

Jump_06c_448a:
    ld b, [hl]                                    ; $448a: $46
    ld b, l                                       ; $448b: $45
    rra                                           ; $448c: $1f
    ld b, e                                       ; $448d: $43
    ld a, [hl+]                                   ; $448e: $2a
    jr nz, @+$22                                  ; $448f: $20 $20

    cpl                                           ; $4491: $2f
    ret nz                                        ; $4492: $c0

    ld [c], a                                     ; $4493: $e2
    nop                                           ; $4494: $00

jr_06c_4495:
    rst $38                                       ; $4495: $ff
    db $ec                                        ; $4496: $ec
    db $eb                                        ; $4497: $eb
    rst $38                                       ; $4498: $ff
    jp c, $9edb                                   ; $4499: $da $db $9e

    or d                                          ; $449c: $b2
    ld b, [hl]                                    ; $449d: $46
    ld b, [hl]                                    ; $449e: $46
    ld b, l                                       ; $449f: $45
    ld a, [hl+]                                   ; $44a0: $2a
    sub a                                         ; $44a1: $97
    ld h, $21                                     ; $44a2: $26 $21
    ld b, d                                       ; $44a4: $42
    cp [hl]                                       ; $44a5: $be
    ret nz                                        ; $44a6: $c0

    sbc [hl]                                      ; $44a7: $9e
    nop                                           ; $44a8: $00
    rst $38                                       ; $44a9: $ff
    nop                                           ; $44aa: $00
    xor $9e                                       ; $44ab: $ee $9e
    dec a                                         ; $44ad: $3d
    ld b, [hl]                                    ; $44ae: $46
    rst $38                                       ; $44af: $ff
    ldh [$39], a                                  ; $44b0: $e0 $39
    dec [hl]                                      ; $44b2: $35
    dec [hl]                                      ; $44b3: $35
    add hl, sp                                    ; $44b4: $39
    ld a, a                                       ; $44b5: $7f
    jp nz, $ff00                                  ; $44b6: $c2 $00 $ff

    ld a, h                                       ; $44b9: $7c
    db $ec                                        ; $44ba: $ec
    db $eb                                        ; $44bb: $eb
    ret nz                                        ; $44bc: $c0

    db $e3                                        ; $44bd: $e3
    ld b, l                                       ; $44be: $45
    ld a, [hl-]                                   ; $44bf: $3a
    rst $08                                       ; $44c0: $cf
    rst $08                                       ; $44c1: $cf
    add hl, sp                                    ; $44c2: $39
    ld b, b                                       ; $44c3: $40
    pop bc                                        ; $44c4: $c1
    ldh a, [rP1]                                  ; $44c5: $f0 $00
    rst $38                                       ; $44c7: $ff
    nop                                           ; $44c8: $00
    db $ec                                        ; $44c9: $ec
    add b                                         ; $44ca: $80
    ldh [rLCDC], a                                ; $44cb: $e0 $40
    ldh [rSCY], a                                 ; $44cd: $e0 $42
    rst $08                                       ; $44cf: $cf
    set 1, [hl]                                   ; $44d0: $cb $ce
    rst $00                                       ; $44d2: $c7
    or d                                          ; $44d3: $b2
    ld b, [hl]                                    ; $44d4: $46
    and c                                         ; $44d5: $a1
    add d                                         ; $44d6: $82
    ldh [rP1], a                                  ; $44d7: $e0 $00
    rst $38                                       ; $44d9: $ff
    db $ec                                        ; $44da: $ec
    db $eb                                        ; $44db: $eb
    sub $d7                                       ; $44dc: $d6 $d7
    ld a, a                                       ; $44de: $7f
    sbc [hl]                                      ; $44df: $9e
    or d                                          ; $44e0: $b2
    xor [hl]                                      ; $44e1: $ae
    ld b, [hl]                                    ; $44e2: $46
    ld b, b                                       ; $44e3: $40
    adc $cc                                       ; $44e4: $ce $cc
    ret nz                                        ; $44e6: $c0

    ldh [$f8], a                                  ; $44e7: $e0 $f8
    add d                                         ; $44e9: $82
    pop bc                                        ; $44ea: $c1
    nop                                           ; $44eb: $00
    rst $38                                       ; $44ec: $ff
    db $ec                                        ; $44ed: $ec
    db $eb                                        ; $44ee: $eb
    ret c                                         ; $44ef: $d8

    reti                                          ; $44f0: $d9


    sbc a                                         ; $44f1: $9f
    sbc h                                         ; $44f2: $9c
    xor a                                         ; $44f3: $af
    inc bc                                        ; $44f4: $03
    xor [hl]                                      ; $44f5: $ae
    add hl, sp                                    ; $44f6: $39
    ret nz                                        ; $44f7: $c0

    db $e4                                        ; $44f8: $e4
    db $f4                                        ; $44f9: $f4
    add c                                         ; $44fa: $81
    nop                                           ; $44fb: $00
    rst $38                                       ; $44fc: $ff
    ld h, a                                       ; $44fd: $67
    jp hl                                         ; $44fe: $e9


    jp nz, $bf80                                  ; $44ff: $c2 $80 $bf

    ldh [$5f], a                                  ; $4502: $e0 $5f
    ld a, $ce                                     ; $4504: $3e $ce
    call z, $40cf                                 ; $4506: $cc $cf $40
    add d                                         ; $4509: $82
    jp nz, Jump_06c_49a0                          ; $450a: $c2 $a0 $49

    db $e4                                        ; $450d: $e4
    jr nc, jr_06c_4495                            ; $450e: $30 $85

    rst $38                                       ; $4510: $ff
    nop                                           ; $4511: $00
    push hl                                       ; $4512: $e5
    ld a, $e1                                     ; $4513: $3e $e1
    pop bc                                        ; $4515: $c1
    ret nz                                        ; $4516: $c0

    cp e                                          ; $4517: $bb
    ld b, h                                       ; $4518: $44
    add d                                         ; $4519: $82
    and h                                         ; $451a: $a4
    nop                                           ; $451b: $00
    rst $38                                       ; $451c: $ff
    ld a, $00                                     ; $451d: $3e $00
    adc l                                         ; $451f: $8d
    sbc [hl]                                      ; $4520: $9e
    ld b, h                                       ; $4521: $44
    inc a                                         ; $4522: $3c
    jr c, jr_06c_455d                             ; $4523: $38 $38

    ld b, b                                       ; $4525: $40
    ret nz                                        ; $4526: $c0

    nop                                           ; $4527: $00
    rst $38                                       ; $4528: $ff
    db $fc                                        ; $4529: $fc
    nop                                           ; $452a: $00
    or c                                          ; $452b: $b1
    cp [hl]                                       ; $452c: $be
    and b                                         ; $452d: $a0
    add hl, sp                                    ; $452e: $39
    inc a                                         ; $452f: $3c
    or d                                          ; $4530: $b2
    or d                                          ; $4531: $b2
    ld [hl], $3a                                  ; $4532: $36 $3a
    ld sp, hl                                     ; $4534: $f9
    ld b, l                                       ; $4535: $45
    nop                                           ; $4536: $00
    rst $38                                       ; $4537: $ff
    nop                                           ; $4538: $00
    or c                                          ; $4539: $b1
    and b                                         ; $453a: $a0
    and b                                         ; $453b: $a0
    and c                                         ; $453c: $a1
    add hl, sp                                    ; $453d: $39
    dec [hl]                                      ; $453e: $35
    rrca                                          ; $453f: $0f
    add hl, sp                                    ; $4540: $39
    or d                                          ; $4541: $b2
    xor [hl]                                      ; $4542: $ae
    ld [hl], $c0                                  ; $4543: $36 $c0

Call_06c_4545:
    ldh [rP1], a                                  ; $4545: $e0 $00
    rst $38                                       ; $4547: $ff
    nop                                           ; $4548: $00
    xor a                                         ; $4549: $af
    ld [bc], a                                    ; $454a: $02
    add b                                         ; $454b: $80
    rst $38                                       ; $454c: $ff
    add hl, sp                                    ; $454d: $39
    dec [hl]                                      ; $454e: $35
    ld a, [hl-]                                   ; $454f: $3a
    or d                                          ; $4550: $b2
    xor a                                         ; $4551: $af
    xor [hl]                                      ; $4552: $ae
    ld b, [hl]                                    ; $4553: $46
    sbc [hl]                                      ; $4554: $9e
    adc a                                         ; $4555: $8f
    push af                                       ; $4556: $f5
    or $d0                                        ; $4557: $f6 $d0
    pop de                                        ; $4559: $d1
    nop                                           ; $455a: $00
    rst $38                                       ; $455b: $ff
    nop                                           ; $455c: $00

jr_06c_455d:
    xor h                                         ; $455d: $ac
    ld b, c                                       ; $455e: $41
    add b                                         ; $455f: $80
    ld a, [hl-]                                   ; $4560: $3a
    rra                                           ; $4561: $1f
    dec [hl]                                      ; $4562: $35
    dec [hl]                                      ; $4563: $35
    dec sp                                        ; $4564: $3b
    ld [hl], $af                                  ; $4565: $36 $af
    ld [bc], a                                    ; $4567: $02
    and c                                         ; $4568: $a1
    ld [hl], c                                    ; $4569: $71
    ld h, b                                       ; $456a: $60
    nop                                           ; $456b: $00
    rst $38                                       ; $456c: $ff
    cp $00                                        ; $456d: $fe $00
    xor h                                         ; $456f: $ac
    or d                                          ; $4570: $b2
    or d                                          ; $4571: $b2
    inc a                                         ; $4572: $3c
    dec [hl]                                      ; $4573: $35
    set 1, a                                      ; $4574: $cb $cf
    rst $08                                       ; $4576: $cf
    rst $00                                       ; $4577: $c7
    ld [hl], $b2                                  ; $4578: $36 $b2
    sbc [hl]                                      ; $457a: $9e
    ld [hl], c                                    ; $457b: $71

Jump_06c_457c:
jr_06c_457c:
    ld h, h                                       ; $457c: $64
    nop                                           ; $457d: $00
    rst $38                                       ; $457e: $ff
    ld [c], a                                     ; $457f: $e2
    rst $20                                       ; $4580: $e7
    push af                                       ; $4581: $f5
    or $6b                                        ; $4582: $f6 $6b
    sbc [hl]                                      ; $4584: $9e
    or d                                          ; $4585: $b2
    jp Jump_000_3580                              ; $4586: $c3 $80 $35


    rst $38                                       ; $4589: $ff
    and b                                         ; $458a: $a0
    or d                                          ; $458b: $b2
    sbc [hl]                                      ; $458c: $9e
    cp e                                          ; $458d: $bb
    ld b, d                                       ; $458e: $42
    jr jr_06c_4591                                ; $458f: $18 $00

jr_06c_4591:
    rst $38                                       ; $4591: $ff
    nop                                           ; $4592: $00
    xor h                                         ; $4593: $ac
    ld b, c                                       ; $4594: $41
    pop hl                                        ; $4595: $e1
    rst $08                                       ; $4596: $cf
    call z, $a03f                                 ; $4597: $cc $3f $a0
    ret nz                                        ; $459a: $c0

    jp $ff00                                      ; $459b: $c3 $00 $ff


    db $f4                                        ; $459e: $f4
    add l                                         ; $459f: $85
    add [hl]                                      ; $45a0: $86
    jp $a0a1                                      ; $45a1: $c3 $a1 $a0


    ld [bc], a                                    ; $45a4: $02
    ret nz                                        ; $45a5: $c0

    dec [hl]                                      ; $45a6: $35
    set 1, [hl]                                   ; $45a7: $cb $ce
    call z, Call_06c_7fc0                         ; $45a9: $cc $c0 $7f
    and b                                         ; $45ac: $a0
    ld bc, $0062                                  ; $45ad: $01 $62 $00
    rst $38                                       ; $45b0: $ff
    add l                                         ; $45b1: $85
    ld h, l                                       ; $45b2: $65
    dec d                                         ; $45b3: $15
    add c                                         ; $45b4: $81
    jp $9e20                                      ; $45b5: $c3 $20 $9e


    add hl, sp                                    ; $45b8: $39
    dec de                                        ; $45b9: $1b
    ld a, [hl-]                                   ; $45ba: $3a

Jump_06c_45bb:
    ld a, [hl-]                                   ; $45bb: $3a

jr_06c_45bc:
    ld b, c                                       ; $45bc: $41
    pop hl                                        ; $45bd: $e1
    ld [hl], $45                                  ; $45be: $36 $45
    ld a, a                                       ; $45c0: $7f
    add d                                         ; $45c1: $82
    nop                                           ; $45c2: $00
    rst $18                                       ; $45c3: $df
    add l                                         ; $45c4: $85
    db $e3                                        ; $45c5: $e3
    di                                            ; $45c6: $f3
    db $e3                                        ; $45c7: $e3
    db $e4                                        ; $45c8: $e4
    add a                                         ; $45c9: $87
    ld hl, $20c3                                  ; $45ca: $21 $c3 $20
    sbc [hl]                                      ; $45cd: $9e
    add hl, sp                                    ; $45ce: $39
    add hl, sp                                    ; $45cf: $39
    ld a, [hl-]                                   ; $45d0: $3a

jr_06c_45d1:
    ld hl, $c135                                  ; $45d1: $21 $35 $c1
    ret nz                                        ; $45d4: $c0

    add c                                         ; $45d5: $81
    ld h, d                                       ; $45d6: $62
    ld [hl], e                                    ; $45d7: $73
    jr nz, jr_06c_45da                            ; $45d8: $20 $00

jr_06c_45da:
    rst $38                                       ; $45da: $ff
    and b                                         ; $45db: $a0
    adc d                                         ; $45dc: $8a
    jr nz, @-$77                                  ; $45dd: $20 $87

    and d                                         ; $45df: $a2
    ld b, $82                                     ; $45e0: $06 $82
    ld b, e                                       ; $45e2: $43
    ld b, h                                       ; $45e3: $44
    ld [hl], $c0                                  ; $45e4: $36 $c0
    ret nz                                        ; $45e6: $c0

    pop bc                                        ; $45e7: $c1
    pop hl                                        ; $45e8: $e1
    ld a, a                                       ; $45e9: $7f
    add h                                         ; $45ea: $84
    nop                                           ; $45eb: $00
    ei                                            ; $45ec: $fb
    sbc h                                         ; $45ed: $9c
    and d                                         ; $45ee: $a2
    ld a, h                                       ; $45ef: $7c
    adc d                                         ; $45f0: $8a
    jr nz, jr_06c_457c                            ; $45f1: $20 $89

    ld [hl+], a                                   ; $45f3: $22
    and d                                         ; $45f4: $a2
    sbc l                                         ; $45f5: $9d
    sbc l                                         ; $45f6: $9d
    sbc h                                         ; $45f7: $9c
    or d                                          ; $45f8: $b2
    pop bc                                        ; $45f9: $c1
    pop hl                                        ; $45fa: $e1
    add c                                         ; $45fb: $81
    inc a                                         ; $45fc: $3c
    ei                                            ; $45fd: $fb
    ld b, b                                       ; $45fe: $40
    add b                                         ; $45ff: $80
    ld h, d                                       ; $4600: $62
    nop                                           ; $4601: $00
    db $fd                                        ; $4602: $fd
    rrca                                          ; $4603: $0f
    ld b, c                                       ; $4604: $41
    adc d                                         ; $4605: $8a
    inc h                                         ; $4606: $24
    adc c                                         ; $4607: $89
    jr nz, jr_06c_45bc                            ; $4608: $20 $b2

    ld l, a                                       ; $460a: $6f
    xor [hl]                                      ; $460b: $ae
    or d                                          ; $460c: $b2
    or d                                          ; $460d: $b2
    or d                                          ; $460e: $b2
    jp nz, Jump_000_35a0                          ; $460f: $c2 $a0 $35

    ld [hl], $bb                                  ; $4612: $36 $bb
    ld b, b                                       ; $4614: $40
    ld b, b                                       ; $4615: $40
    ld [bc], a                                    ; $4616: $02
    ld h, h                                       ; $4617: $64
    nop                                           ; $4618: $00
    rst $30                                       ; $4619: $f7
    ld hl, $67a2                                  ; $461a: $21 $a2 $67
    ret nz                                        ; $461d: $c0

    call nc, Call_06c_4a03                        ; $461e: $d4 $03 $4a
    jr nz, jr_06c_45d1                            ; $4621: $20 $ae

    ld c, d                                       ; $4623: $4a
    and b                                         ; $4624: $a0
    rra                                           ; $4625: $1f
    or d                                          ; $4626: $b2
    ld [hl], $39                                  ; $4627: $36 $39
    inc a                                         ; $4629: $3c
    dec sp                                        ; $462a: $3b
    add c                                         ; $462b: $81
    pop hl                                        ; $462c: $e1
    ld [bc], a                                    ; $462d: $02
    ld h, e                                       ; $462e: $63
    nop                                           ; $462f: $00
    cp b                                          ; $4630: $b8
    ld hl, sp+$13                                 ; $4631: $f8 $13
    add e                                         ; $4633: $83
    ld a, [bc]                                    ; $4634: $0a
    ld b, d                                       ; $4635: $42
    ret nc                                        ; $4636: $d0

    ld [bc], a                                    ; $4637: $02
    sbc h                                         ; $4638: $9c
    ld b, [hl]                                    ; $4639: $46
    xor a                                         ; $463a: $af
    or d                                          ; $463b: $b2
    xor [hl]                                      ; $463c: $ae
    rra                                           ; $463d: $1f
    xor a                                         ; $463e: $af
    or d                                          ; $463f: $b2
    inc a                                         ; $4640: $3c
    ld [hl], $36                                  ; $4641: $36 $36
    ret nz                                        ; $4643: $c0

    add b                                         ; $4644: $80
    ld b, h                                       ; $4645: $44
    ld b, e                                       ; $4646: $43
    add b                                         ; $4647: $80
    add d                                         ; $4648: $82
    add sp, $00                                   ; $4649: $e8 $00
    reti                                          ; $464b: $d9


    pop de                                        ; $464c: $d1
    add b                                         ; $464d: $80
    sub c                                         ; $464e: $91
    ld bc, $119c                                  ; $464f: $01 $9c $11
    pop hl                                        ; $4652: $e1
    ld b, [hl]                                    ; $4653: $46
    ld b, [hl]                                    ; $4654: $46
    or d                                          ; $4655: $b2
    rst $38                                       ; $4656: $ff
    or d                                          ; $4657: $b2
    xor a                                         ; $4658: $af
    or d                                          ; $4659: $b2
    ld [hl], $3b                                  ; $465a: $36 $3b
    ld [hl], $ae                                  ; $465c: $36 $ae
    ld a, [hl-]                                   ; $465e: $3a
    pop bc                                        ; $465f: $c1
    cp e                                          ; $4660: $bb
    add e                                         ; $4661: $83
    ld b, d                                       ; $4662: $42
    ld b, d                                       ; $4663: $42
    db $e3                                        ; $4664: $e3
    nop                                           ; $4665: $00
    jp c, $e29f                                   ; $4666: $da $9f $e2

    pop bc                                        ; $4669: $c1
    and $ae                                       ; $466a: $e6 $ae
    scf                                           ; $466c: $37
    ld [hl], a                                    ; $466d: $77
    dec a                                         ; $466e: $3d
    jr c, jr_06c_46a7                             ; $466f: $38 $36

    cp e                                          ; $4671: $bb
    ldh [$3c], a                                  ; $4672: $e0 $3c
    ld [hl], $b2                                  ; $4674: $36 $b2
    ld b, d                                       ; $4676: $42
    push hl                                       ; $4677: $e5
    ldh a, [rP1]                                  ; $4678: $f0 $00
    sbc c                                         ; $467a: $99
    ld h, d                                       ; $467b: $62
    ld h, d                                       ; $467c: $62
    adc h                                         ; $467d: $8c
    ret nz                                        ; $467e: $c0

    add d                                         ; $467f: $82
    rst $20                                       ; $4680: $e7
    rst $08                                       ; $4681: $cf
    call $ae36                                    ; $4682: $cd $36 $ae
    dec de                                        ; $4685: $1b
    xor [hl]                                      ; $4686: $ae
    or d                                          ; $4687: $b2
    pop bc                                        ; $4688: $c1
    ld h, b                                       ; $4689: $60
    sbc h                                         ; $468a: $9c
    sbc a                                         ; $468b: $9f
    ld l, c                                       ; $468c: $69
    ldh [rSCY], a                                 ; $468d: $e0 $42
    ldh [rOBP1], a                                ; $468f: $e0 $49
    and [hl]                                      ; $4691: $a6
    cp b                                          ; $4692: $b8
    inc d                                         ; $4693: $14
    sub h                                         ; $4694: $94
    adc h                                         ; $4695: $8c
    pop bc                                        ; $4696: $c1

jr_06c_4697:
    adc l                                         ; $4697: $8d
    ret nz                                        ; $4698: $c0

    ld b, [hl]                                    ; $4699: $46
    ld b, l                                       ; $469a: $45
    ccf                                           ; $469b: $3f
    ld sp, hl                                     ; $469c: $f9
    pop hl                                        ; $469d: $e1
    ld [hl], $7f                                  ; $469e: $36 $7f
    adc $ce                                       ; $46a0: $ce $ce
    or d                                          ; $46a2: $b2
    xor a                                         ; $46a3: $af
    xor a                                         ; $46a4: $af
    or d                                          ; $46a5: $b2
    ld a, [hl-]                                   ; $46a6: $3a

jr_06c_46a7:
    add l                                         ; $46a7: $85
    add b                                         ; $46a8: $80
    ldh [$71], a                                  ; $46a9: $e0 $71
    and e                                         ; $46ab: $a3
    ld d, e                                       ; $46ac: $53
    ld h, a                                       ; $46ad: $67
    ld a, [bc]                                    ; $46ae: $0a
    pop de                                        ; $46af: $d1
    sub h                                         ; $46b0: $94
    ld b, d                                       ; $46b1: $42
    pop bc                                        ; $46b2: $c1
    pop hl                                        ; $46b3: $e1
    or d                                          ; $46b4: $b2
    scf                                           ; $46b5: $37
    jr c, jr_06c_4697                             ; $46b6: $38 $df

    rst $08                                       ; $46b8: $cf
    call $cdcd                                    ; $46b9: $cd $cd $cd
    rst $08                                       ; $46bc: $cf
    jp z, Jump_000_3820                           ; $46bd: $ca $20 $38

Jump_06c_46c0:
    jr c, @+$0f                                   ; $46c0: $38 $0d

    dec sp                                        ; $46c2: $3b
    rst $38                                       ; $46c3: $ff
    ret nz                                        ; $46c4: $c0

    or d                                          ; $46c5: $b2
    and c                                         ; $46c6: $a1
    or [hl]                                       ; $46c7: $b6
    ld h, d                                       ; $46c8: $62
    adc $68                                       ; $46c9: $ce $68
    sbc c                                         ; $46cb: $99
    ld d, b                                       ; $46cc: $50
    rst $00                                       ; $46cd: $c7
    jp nz, $cb38                                  ; $46ce: $c2 $38 $cb

    pop bc                                        ; $46d1: $c1
    adc $a0                                       ; $46d2: $ce $a0
    sub b                                         ; $46d4: $90
    add b                                         ; $46d5: $80
    call z, $cdcc                                 ; $46d6: $cc $cc $cd
    res 0, b                                      ; $46d9: $cb $80
    rst $00                                       ; $46db: $c7
    ld h, b                                       ; $46dc: $60
    ld b, $3a                                     ; $46dd: $06 $3a
    ret nz                                        ; $46df: $c0

    sbc h                                         ; $46e0: $9c
    sbc a                                         ; $46e1: $9f
    add [hl]                                      ; $46e2: $86
    ld [hl+], a                                   ; $46e3: $22
    adc $68                                       ; $46e4: $ce $68
    nop                                           ; $46e6: $00
    adc d                                         ; $46e7: $8a
    ld e, b                                       ; $46e8: $58
    and c                                         ; $46e9: $a1
    ld b, e                                       ; $46ea: $43
    db $e3                                        ; $46eb: $e3
    ret c                                         ; $46ec: $d8

    inc d                                         ; $46ed: $14
    ld hl, $60d0                                  ; $46ee: $21 $d0 $60
    pop bc                                        ; $46f1: $c1
    ld [c], a                                     ; $46f2: $e2
    rst $08                                       ; $46f3: $cf
    dec sp                                        ; $46f4: $3b
    bit 4, b                                      ; $46f5: $cb $60
    ld b, c                                       ; $46f7: $41
    ld b, e                                       ; $46f8: $43
    ret nz                                        ; $46f9: $c0

    ld a, h                                       ; $46fa: $7c
    ret nz                                        ; $46fb: $c0

    ret z                                         ; $46fc: $c8

    nop                                           ; $46fd: $00
    call nz, Call_06c_53c2                        ; $46fe: $c4 $c2 $53
    ld c, b                                       ; $4701: $48
    sbc c                                         ; $4702: $99
    ld d, b                                       ; $4703: $50
    ld c, c                                       ; $4704: $49
    jp nz, Jump_000_3745                          ; $4705: $c2 $45 $37

    ld a, [$c08e]                                 ; $4708: $fa $8e $c0
    ld a, [hl-]                                   ; $470b: $3a
    ld d, c                                       ; $470c: $51
    add b                                         ; $470d: $80
    set 1, a                                      ; $470e: $cb $cf
    ld a, [hl-]                                   ; $4710: $3a
    or d                                          ; $4711: $b2
    scf                                           ; $4712: $37
    dec bc                                        ; $4713: $0b
    scf                                           ; $4714: $37
    sbc h                                         ; $4715: $9c
    rst $30                                       ; $4716: $f7
    and c                                         ; $4717: $a1
    sbc l                                         ; $4718: $9d
    add d                                         ; $4719: $82
    db $e4                                        ; $471a: $e4
    nop                                           ; $471b: $00
    di                                            ; $471c: $f3
    db $db                                        ; $471d: $db
    add c                                         ; $471e: $81
    ret nc                                        ; $471f: $d0

    add d                                         ; $4720: $82
    ld h, $d6                                     ; $4721: $26 $d6
    ld bc, $3645                                  ; $4723: $01 $45 $36
    dec d                                         ; $4726: $15
    and b                                         ; $4727: $a0
    ret nz                                        ; $4728: $c0

    ld [c], a                                     ; $4729: $e2
    rst $08                                       ; $472a: $cf
    adc h                                         ; $472b: $8c
    ld b, b                                       ; $472c: $40
    ld c, d                                       ; $472d: $4a
    jp nz, Jump_06c_6380                          ; $472e: $c2 $80 $63

    push hl                                       ; $4731: $e5
    adc $6b                                       ; $4732: $ce $6b
    ld e, $48                                     ; $4734: $1e $48
    rst $08                                       ; $4736: $cf
    and b                                         ; $4737: $a0
    ret nc                                        ; $4738: $d0

    add c                                         ; $4739: $81
    jp z, Jump_06c_55a2                           ; $473a: $ca $a2 $55

    ld h, b                                       ; $473d: $60
    ld [hl], $3f                                  ; $473e: $36 $3f
    scf                                           ; $4740: $37

jr_06c_4741:
    jr c, @+$37                                   ; $4741: $38 $35

    rst $08                                       ; $4743: $cf
    call $b8cf                                    ; $4744: $cd $cf $b8
    pop hl                                        ; $4747: $e1
    ld c, $a4                                     ; $4748: $0e $a4
    add e                                         ; $474a: $83
    ret nc                                        ; $474b: $d0

    pop de                                        ; $474c: $d1
    adc b                                         ; $474d: $88
    and c                                         ; $474e: $a1
    adc $6b                                       ; $474f: $ce $6b
    inc d                                         ; $4751: $14
    adc c                                         ; $4752: $89
    jp hl                                         ; $4753: $e9


    ld b, e                                       ; $4754: $43
    adc e                                         ; $4755: $8b
    and b                                         ; $4756: $a0
    ld b, l                                       ; $4757: $45
    ld sp, $9643                                  ; $4758: $31 $43 $96
    ld b, c                                       ; $475b: $41
    ld [de], a                                    ; $475c: $12
    ld h, b                                       ; $475d: $60
    db $fd                                        ; $475e: $fd
    pop hl                                        ; $475f: $e1
    ld [hl], $45                                  ; $4760: $36 $45
    ld c, $a5                                     ; $4762: $0e $a5
    ld [hl], d                                    ; $4764: $72
    add c                                         ; $4765: $81
    ld h, b                                       ; $4766: $60
    ld d, e                                       ; $4767: $53
    ld c, l                                       ; $4768: $4d
    nop                                           ; $4769: $00
    ld h, [hl]                                    ; $476a: $66
    sbc d                                         ; $476b: $9a
    ld h, b                                       ; $476c: $60
    ret nc                                        ; $476d: $d0

    add d                                         ; $476e: $82
    add l                                         ; $476f: $85
    ret nz                                        ; $4770: $c0

    ld b, l                                       ; $4771: $45
    ld [hl], $c4                                  ; $4772: $36 $c4
    push hl                                       ; $4774: $e5
    nop                                           ; $4775: $00
    pop bc                                        ; $4776: $c1
    and $cc                                       ; $4777: $e6 $cc
    and b                                         ; $4779: $a0
    adc e                                         ; $477a: $8b
    ld b, h                                       ; $477b: $44
    ld d, e                                       ; $477c: $53
    ld c, h                                       ; $477d: $4c
    ld e, $66                                     ; $477e: $1e $66
    ld l, e                                       ; $4780: $6b
    and h                                         ; $4781: $a4
    pop bc                                        ; $4782: $c1
    ld [c], a                                     ; $4783: $e2
    jp nz, Jump_000_03e7                          ; $4784: $c2 $e7 $03

    jr c, jr_06c_47c0                             ; $4787: $38 $37

    pop bc                                        ; $4789: $c1
    db $e3                                        ; $478a: $e3
    ld [hl], c                                    ; $478b: $71
    add b                                         ; $478c: $80
    ld [hl], d                                    ; $478d: $72
    add e                                         ; $478e: $83
    ret c                                         ; $478f: $d8

    dec c                                         ; $4790: $0d
    and e                                         ; $4791: $a3
    ld b, e                                       ; $4792: $43
    dec e                                         ; $4793: $1d
    ld h, b                                       ; $4794: $60
    ld a, [de]                                    ; $4795: $1a
    ld e, a                                       ; $4796: $5f
    ld bc, $4c9d                                  ; $4797: $01 $9d $4c
    and b                                         ; $479a: $a0
    ld b, [hl]                                    ; $479b: $46
    ld b, [hl]                                    ; $479c: $46
    ret c                                         ; $479d: $d8

    ld b, b                                       ; $479e: $40
    add e                                         ; $479f: $83
    rst $20                                       ; $47a0: $e7
    ld [de], a                                    ; $47a1: $12
    add l                                         ; $47a2: $85
    add b                                         ; $47a3: $80
    ld a, e                                       ; $47a4: $7b
    ld b, e                                       ; $47a5: $43
    xor h                                         ; $47a6: $ac
    add b                                         ; $47a7: $80
    nop                                           ; $47a8: $00
    pop af                                        ; $47a9: $f1
    ld h, d                                       ; $47aa: $62
    jr nz, @-$6c                                  ; $47ab: $20 $92

    add e                                         ; $47ad: $83
    ld c, [hl]                                    ; $47ae: $4e
    and b                                         ; $47af: $a0
    add c                                         ; $47b0: $81
    rst $20                                       ; $47b1: $e7
    dec sp                                        ; $47b2: $3b
    inc bc                                        ; $47b3: $03
    ld [hl], $41                                  ; $47b4: $36 $41
    pop bc                                        ; $47b6: $c1
    ld [c], a                                     ; $47b7: $e2
    ld b, h                                       ; $47b8: $44
    jr nz, jr_06c_4818                            ; $47b9: $20 $5d

    scf                                           ; $47bb: $37
    and e                                         ; $47bc: $a3
    inc bc                                        ; $47bd: $03
    jr nc, jr_06c_4741                            ; $47be: $30 $81

jr_06c_47c0:
    ld c, $a1                                     ; $47c0: $0e $a1
    ld a, [bc]                                    ; $47c2: $0a
    ld d, d                                       ; $47c3: $52
    add c                                         ; $47c4: $81
    ld b, d                                       ; $47c5: $42
    ld b, [hl]                                    ; $47c6: $46
    push hl                                       ; $47c7: $e5
    ld b, e                                       ; $47c8: $43
    dec d                                         ; $47c9: $15
    ld h, b                                       ; $47ca: $60
    inc b                                         ; $47cb: $04
    db $e4                                        ; $47cc: $e4
    ld e, l                                       ; $47cd: $5d
    scf                                           ; $47ce: $37
    ld e, $46                                     ; $47cf: $1e $46
    nop                                           ; $47d1: $00
    inc d                                         ; $47d2: $14
    add l                                         ; $47d3: $85
    ld b, c                                       ; $47d4: $41
    db $e4                                        ; $47d5: $e4
    ret c                                         ; $47d6: $d8

    ld b, d                                       ; $47d7: $42
    sub h                                         ; $47d8: $94
    ld h, d                                       ; $47d9: $62
    ld c, h                                       ; $47da: $4c
    pop hl                                        ; $47db: $e1
    ld h, a                                       ; $47dc: $67
    rla                                           ; $47dd: $17
    add l                                         ; $47de: $85
    call nz, $a34d                                ; $47df: $c4 $4d $a3
    inc b                                         ; $47e2: $04
    db $d3                                        ; $47e3: $d3
    ld h, d                                       ; $47e4: $62
    push bc                                       ; $47e5: $c5
    and b                                         ; $47e6: $a0
    dec sp                                        ; $47e7: $3b
    pop bc                                        ; $47e8: $c1
    db $e4                                        ; $47e9: $e4
    rla                                           ; $47ea: $17
    ld b, l                                       ; $47eb: $45
    adc a                                         ; $47ec: $8f
    adc c                                         ; $47ed: $89
    nop                                           ; $47ee: $00
    rst $08                                       ; $47ef: $cf
    ld h, h                                       ; $47f0: $64
    inc bc                                        ; $47f1: $03
    inc c                                         ; $47f2: $0c

jr_06c_47f3:
    pop bc                                        ; $47f3: $c1
    push hl                                       ; $47f4: $e5
    rlca                                          ; $47f5: $07
    and b                                         ; $47f6: $a0
    ld b, c                                       ; $47f7: $41
    ld b, e                                       ; $47f8: $43
    rlca                                          ; $47f9: $07
    ldh [$88], a                                  ; $47fa: $e0 $88
    ld h, d                                       ; $47fc: $62
    rla                                           ; $47fd: $17
    ld b, d                                       ; $47fe: $42
    ld e, l                                       ; $47ff: $5d
    ld a, [hl-]                                   ; $4800: $3a
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    ld hl, $0164                                  ; $4803: $21 $64 $01
    ld b, e                                       ; $4806: $43
    db $e4                                        ; $4807: $e4
    ld a, [$16eb]                                 ; $4808: $fa $eb $16
    jr nz, jr_06c_4823                            ; $480b: $20 $16

    ld h, b                                       ; $480d: $60
    ld h, a                                       ; $480e: $67
    dec e                                         ; $480f: $1d
    db $db                                        ; $4810: $db
    jr nz, jr_06c_4818                            ; $4811: $20 $05

    and c                                         ; $4813: $a1
    push bc                                       ; $4814: $c5
    jp nz, $8945                                  ; $4815: $c2 $45 $89

jr_06c_4818:
    db $e4                                        ; $4818: $e4
    pop bc                                        ; $4819: $c1
    and $17                                       ; $481a: $e6 $17
    ld b, e                                       ; $481c: $43
    ld e, l                                       ; $481d: $5d
    ld a, [de]                                    ; $481e: $1a
    reti                                          ; $481f: $d9


    ld b, b                                       ; $4820: $40
    adc b                                         ; $4821: $88
    db $db                                        ; $4822: $db

jr_06c_4823:
    jr nz, jr_06c_47f3                            ; $4823: $20 $ce

    add b                                         ; $4825: $80
    ld b, a                                       ; $4826: $47
    pop bc                                        ; $4827: $c1
    and [hl]                                      ; $4828: $a6
    add hl, bc                                    ; $4829: $09
    db $e4                                        ; $482a: $e4
    push af                                       ; $482b: $f5

jr_06c_482c:
    call nz, Call_000_21d8                        ; $482c: $c4 $d8 $21
    sub $f1                                       ; $482f: $d6 $f1
    rst $10                                       ; $4831: $d7
    ld [c], a                                     ; $4832: $e2
    inc e                                         ; $4833: $1c
    db $db                                        ; $4834: $db
    ld [hl+], a                                   ; $4835: $22
    ret nz                                        ; $4836: $c0

    pop hl                                        ; $4837: $e1
    ld b, l                                       ; $4838: $45
    ld [hl], $62                                  ; $4839: $36 $62
    and a                                         ; $483b: $a7
    ld sp, $8966                                  ; $483c: $31 $66 $89
    jp Jump_06c_438a                              ; $483f: $c3 $8a $43


    ret c                                         ; $4842: $d8

    jr nz, @-$09                                  ; $4843: $20 $f5

    or $00                                        ; $4845: $f6 $00
    db $fd                                        ; $4847: $fd
    db $db                                        ; $4848: $db
    inc hl                                        ; $4849: $23
    ld e, l                                       ; $484a: $5d
    sbc [hl]                                      ; $484b: $9e
    pop bc                                        ; $484c: $c1
    ld [c], a                                     ; $484d: $e2
    ld h, a                                       ; $484e: $67
    and e                                         ; $484f: $a3
    ld l, b                                       ; $4850: $68
    cp a                                          ; $4851: $bf
    ld [c], a                                     ; $4852: $e2
    or d                                          ; $4853: $b2
    add h                                         ; $4854: $84
    ld h, c                                       ; $4855: $61
    ldh a, [$4c]                                  ; $4856: $f0 $4c
    add h                                         ; $4858: $84
    nop                                           ; $4859: $00
    db $fd                                        ; $485a: $fd
    sbc c                                         ; $485b: $99
    inc bc                                        ; $485c: $03
    ret nz                                        ; $485d: $c0

    ldh [rSCY], a                                 ; $485e: $e0 $42
    xor b                                         ; $4860: $a8
    xor c                                         ; $4861: $a9
    ld l, h                                       ; $4862: $6c
    inc bc                                        ; $4863: $03
    dec [hl]                                      ; $4864: $35
    dec [hl]                                      ; $4865: $35
    cp a                                          ; $4866: $bf
    pop hl                                        ; $4867: $e1
    ld e, l                                       ; $4868: $5d
    jr nz, jr_06c_482c                            ; $4869: $20 $c1

    db $e4                                        ; $486b: $e4
    ld b, [hl]                                    ; $486c: $46
    ld bc, $f785                                  ; $486d: $01 $85 $f7
    nop                                           ; $4870: $00
    ret z                                         ; $4871: $c8

    cp $80                                        ; $4872: $fe $80
    ld [c], a                                     ; $4874: $e2
    ld l, [hl]                                    ; $4875: $6e
    ld l, a                                       ; $4876: $6f
    ld l, h                                       ; $4877: $6c
    dec [hl]                                      ; $4878: $35
    and e                                         ; $4879: $a3
    xor d                                         ; $487a: $aa
    xor e                                         ; $487b: $ab
    add b                                         ; $487c: $80
    cp a                                          ; $487d: $bf
    ldh [$82], a                                  ; $487e: $e0 $82
    push hl                                       ; $4880: $e5
    rla                                           ; $4881: $17
    ld b, d                                       ; $4882: $42
    nop                                           ; $4883: $00
    ei                                            ; $4884: $fb
    nop                                           ; $4885: $00
    jp $e040                                      ; $4886: $c3 $40 $e0


    cp a                                          ; $4889: $bf
    db $e3                                        ; $488a: $e3
    ld l, h                                       ; $488b: $6c
    inc bc                                        ; $488c: $03
    ld l, a                                       ; $488d: $6f
    ld l, [hl]                                    ; $488e: $6e
    ld a, a                                       ; $488f: $7f
    ldh [rHDMA2], a                               ; $4890: $e0 $52
    ld h, b                                       ; $4892: $60
    ld b, e                                       ; $4893: $43
    push hl                                       ; $4894: $e5
    add l                                         ; $4895: $85
    cp b                                          ; $4896: $b8
    nop                                           ; $4897: $00
    jp z, $e4bf                                   ; $4898: $ca $bf $e4

    nop                                           ; $489b: $00
    pop bc                                        ; $489c: $c1
    pop hl                                        ; $489d: $e1
    ld h, b                                       ; $489e: $60
    inc b                                         ; $489f: $04
    inc [hl]                                      ; $48a0: $34
    ld h, e                                       ; $48a1: $63
    add l                                         ; $48a2: $85
    cp b                                          ; $48a3: $b8
    nop                                           ; $48a4: $00
    adc c                                         ; $48a5: $89
    cp a                                          ; $48a6: $bf
    push hl                                       ; $48a7: $e5
    pop bc                                        ; $48a8: $c1
    db $e4                                        ; $48a9: $e4
    ld e, b                                       ; $48aa: $58
    add c                                         ; $48ab: $81
    nop                                           ; $48ac: $00
    inc [hl]                                      ; $48ad: $34
    ld h, c                                       ; $48ae: $61
    add l                                         ; $48af: $85
    jp c, $ab00                                   ; $48b0: $da $00 $ab

    sbc a                                         ; $48b3: $9f
    ld b, d                                       ; $48b4: $42
    sbc d                                         ; $48b5: $9a
    ld b, l                                       ; $48b6: $45
    inc [hl]                                      ; $48b7: $34
    ld h, l                                       ; $48b8: $65
    add l                                         ; $48b9: $85
    cp e                                          ; $48ba: $bb
    nop                                           ; $48bb: $00
    xor b                                         ; $48bc: $a8
    nop                                           ; $48bd: $00
    rst $38                                       ; $48be: $ff
    ld [$0122], a                                 ; $48bf: $ea $22 $01
    sub d                                         ; $48c2: $92
    ld h, e                                       ; $48c3: $63
    add l                                         ; $48c4: $85
    cp d                                          ; $48c5: $ba
    nop                                           ; $48c6: $00
    xor b                                         ; $48c7: $a8
    ret nz                                        ; $48c8: $c0

    db $eb                                        ; $48c9: $eb
    ldh a, [$e6]                                  ; $48ca: $f0 $e6
    add l                                         ; $48cc: $85
    cp e                                          ; $48cd: $bb
    nop                                           ; $48ce: $00
    nop                                           ; $48cf: $00
    ld [hl+], a                                   ; $48d0: $22
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    nop                                           ; $48d3: $00
    pop bc                                        ; $48d4: $c1
    nop                                           ; $48d5: $00
    rst $38                                       ; $48d6: $ff
    rst $38                                       ; $48d7: $ff
    rst $38                                       ; $48d8: $ff
    rst $38                                       ; $48d9: $ff
    rst $38                                       ; $48da: $ff
    rst $38                                       ; $48db: $ff
    rst $38                                       ; $48dc: $ff
    rst $38                                       ; $48dd: $ff
    rst $38                                       ; $48de: $ff
    rst $38                                       ; $48df: $ff
    nop                                           ; $48e0: $00
    nop                                           ; $48e1: $00
    dec c                                         ; $48e2: $0d
    add b                                         ; $48e3: $80
    cp $e0                                        ; $48e4: $fe $e0
    nop                                           ; $48e6: $00
    ld b, b                                       ; $48e7: $40
    ret c                                         ; $48e8: $d8

    push hl                                       ; $48e9: $e5
    rst $30                                       ; $48ea: $f7
    and $ff                                       ; $48eb: $e6 $ff
    rst $38                                       ; $48ed: $ff
    rst $38                                       ; $48ee: $ff
    rst $30                                       ; $48ef: $f7
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    ld bc, $2c00                                  ; $48f3: $01 $00 $2c
    ld b, $01                                     ; $48f6: $06 $01
    ld bc, $072b                                  ; $48f8: $01 $2b $07
    ld bc, $2b02                                  ; $48fb: $01 $02 $2b
    ld [$0301], sp                                ; $48fe: $08 $01 $03
    dec hl                                        ; $4901: $2b
    dec bc                                        ; $4902: $0b
    ld bc, $3204                                  ; $4903: $01 $04 $32
    dec bc                                        ; $4906: $0b
    ld bc, $2b05                                  ; $4907: $01 $05 $2b
    inc c                                         ; $490a: $0c
    ld bc, $3206                                  ; $490b: $01 $06 $32
    inc c                                         ; $490e: $0c
    ld [bc], a                                    ; $490f: $02
    rlca                                          ; $4910: $07
    inc l                                         ; $4911: $2c
    dec c                                         ; $4912: $0d
    ld bc, $3208                                  ; $4913: $01 $08 $32
    dec c                                         ; $4916: $0d
    ld [bc], a                                    ; $4917: $02
    add hl, bc                                    ; $4918: $09
    dec l                                         ; $4919: $2d
    ld c, $01                                     ; $491a: $0e $01
    ld a, [bc]                                    ; $491c: $0a
    dec l                                         ; $491d: $2d
    rrca                                          ; $491e: $0f
    ld bc, $310b                                  ; $491f: $01 $0b $31
    rrca                                          ; $4922: $0f
    ld bc, $2f0c                                  ; $4923: $01 $0c $2f
    ld de, $0d01                                  ; $4926: $11 $01 $0d
    jr nc, @+$13                                  ; $4929: $30 $11

    ld bc, $300e                                  ; $492b: $01 $0e $30
    ld [de], a                                    ; $492e: $12
    ld bc, $300f                                  ; $492f: $01 $0f $30
    inc de                                        ; $4932: $13
    ld [bc], a                                    ; $4933: $02
    db $10                                        ; $4934: $10
    ld sp, $0213                                  ; $4935: $31 $13 $02
    ld de, $1432                                  ; $4938: $11 $32 $14
    ld bc, $2b12                                  ; $493b: $01 $12 $2b
    dec d                                         ; $493e: $15
    ld bc, $2c13                                  ; $493f: $01 $13 $2c
    dec d                                         ; $4942: $15
    ld bc, $3314                                  ; $4943: $01 $14 $33
    dec d                                         ; $4946: $15
    ld bc, $2b15                                  ; $4947: $01 $15 $2b
    ld d, $01                                     ; $494a: $16 $01
    ld d, $33                                     ; $494c: $16 $33
    ld d, $01                                     ; $494e: $16 $01
    rla                                           ; $4950: $17
    inc sp                                        ; $4951: $33
    rla                                           ; $4952: $17
    ld bc, $2a18                                  ; $4953: $01 $18 $2a
    inc e                                         ; $4956: $1c
    ld bc, $3019                                  ; $4957: $01 $19 $30
    inc e                                         ; $495a: $1c
    ld bc, $261a                                  ; $495b: $01 $1a $26
    dec e                                         ; $495e: $1d
    ld bc, $281b                                  ; $495f: $01 $1b $28
    dec e                                         ; $4962: $1d
    ld bc, $291c                                  ; $4963: $01 $1c $29
    dec e                                         ; $4966: $1d
    ld bc, $2a1d                                  ; $4967: $01 $1d $2a
    dec e                                         ; $496a: $1d
    ld bc, $301e                                  ; $496b: $01 $1e $30
    dec e                                         ; $496e: $1d
    ld bc, $261f                                  ; $496f: $01 $1f $26
    ld e, $02                                     ; $4972: $1e $02
    jr nz, jr_06c_499d                            ; $4974: $20 $27

    ld e, $01                                     ; $4976: $1e $01
    ld hl, $1e29                                  ; $4978: $21 $29 $1e
    ld bc, $2f22                                  ; $497b: $01 $22 $2f
    ld e, $02                                     ; $497e: $1e $02
    inc hl                                        ; $4980: $23
    dec h                                         ; $4981: $25
    rra                                           ; $4982: $1f
    ld bc, $2624                                  ; $4983: $01 $24 $26
    rra                                           ; $4986: $1f
    ld [bc], a                                    ; $4987: $02
    dec h                                         ; $4988: $25
    jr z, @+$21                                   ; $4989: $28 $1f

    ld bc, $2926                                  ; $498b: $01 $26 $29
    rra                                           ; $498e: $1f
    ld bc, $1f27                                  ; $498f: $01 $27 $1f
    jr nz, @+$03                                  ; $4992: $20 $01

    jr z, @+$27                                   ; $4994: $28 $25

    jr nz, jr_06c_4999                            ; $4996: $20 $01

    add hl, hl                                    ; $4998: $29

jr_06c_4999:
    ld h, $20                                     ; $4999: $26 $20
    ld [bc], a                                    ; $499b: $02
    ld a, [hl+]                                   ; $499c: $2a

jr_06c_499d:
    daa                                           ; $499d: $27
    jr nz, jr_06c_49a1                            ; $499e: $20 $01

Jump_06c_49a0:
    dec hl                                        ; $49a0: $2b

jr_06c_49a1:
    jr z, jr_06c_49c3                             ; $49a1: $28 $20

    ld bc, $2e2c                                  ; $49a3: $01 $2c $2e
    jr nz, jr_06c_49a9                            ; $49a6: $20 $01

    dec l                                         ; $49a8: $2d

jr_06c_49a9:
    ld e, $21                                     ; $49a9: $1e $21
    ld bc, $242e                                  ; $49ab: $01 $2e $24
    ld hl, $2f01                                  ; $49ae: $21 $01 $2f
    ld a, [hl+]                                   ; $49b1: $2a
    ld hl, $3001                                  ; $49b2: $21 $01 $30
    dec hl                                        ; $49b5: $2b
    ld hl, $3102                                  ; $49b6: $21 $02 $31
    inc l                                         ; $49b9: $2c
    ld hl, $3201                                  ; $49ba: $21 $01 $32
    cpl                                           ; $49bd: $2f
    ld hl, $3301                                  ; $49be: $21 $01 $33
    dec e                                         ; $49c1: $1d
    ld [hl+], a                                   ; $49c2: $22

jr_06c_49c3:
    ld bc, $2334                                  ; $49c3: $01 $34 $23
    ld [hl+], a                                   ; $49c6: $22
    ld bc, $2435                                  ; $49c7: $01 $35 $24
    ld [hl+], a                                   ; $49ca: $22
    ld [bc], a                                    ; $49cb: $02
    ld [hl], $25                                  ; $49cc: $36 $25
    ld [hl+], a                                   ; $49ce: $22
    ld bc, $2b37                                  ; $49cf: $01 $37 $2b
    ld [hl+], a                                   ; $49d2: $22
    ld bc, $2e38                                  ; $49d3: $01 $38 $2e
    ld [hl+], a                                   ; $49d6: $22
    ld bc, $1a39                                  ; $49d7: $01 $39 $1a
    inc hl                                        ; $49da: $23
    ld bc, $1b3a                                  ; $49db: $01 $3a $1b
    inc hl                                        ; $49de: $23
    ld bc, $1c3b                                  ; $49df: $01 $3b $1c
    inc hl                                        ; $49e2: $23
    ld bc, $1d3c                                  ; $49e3: $01 $3c $1d
    inc hl                                        ; $49e6: $23
    ld bc, $213d                                  ; $49e7: $01 $3d $21
    inc hl                                        ; $49ea: $23
    ld bc, $223e                                  ; $49eb: $01 $3e $22
    inc hl                                        ; $49ee: $23
    ld bc, $233f                                  ; $49ef: $01 $3f $23
    inc hl                                        ; $49f2: $23
    ld bc, $2440                                  ; $49f3: $01 $40 $24
    inc hl                                        ; $49f6: $23
    ld bc, $2841                                  ; $49f7: $01 $41 $28
    inc hl                                        ; $49fa: $23
    ld [bc], a                                    ; $49fb: $02
    ld b, d                                       ; $49fc: $42
    add hl, hl                                    ; $49fd: $29
    inc hl                                        ; $49fe: $23
    ld [bc], a                                    ; $49ff: $02
    ld b, e                                       ; $4a00: $43
    ld a, [hl+]                                   ; $4a01: $2a
    inc hl                                        ; $4a02: $23

Call_06c_4a03:
    ld bc, $2b44                                  ; $4a03: $01 $44 $2b
    inc hl                                        ; $4a06: $23
    ld bc, $2e45                                  ; $4a07: $01 $45 $2e
    inc hl                                        ; $4a0a: $23
    ld bc, $1946                                  ; $4a0b: $01 $46 $19
    inc h                                         ; $4a0e: $24
    ld bc, $1a47                                  ; $4a0f: $01 $47 $1a
    inc h                                         ; $4a12: $24
    ld bc, $1b48                                  ; $4a13: $01 $48 $1b
    inc h                                         ; $4a16: $24
    ld bc, $1c49                                  ; $4a17: $01 $49 $1c
    inc h                                         ; $4a1a: $24
    ld bc, $1d4a                                  ; $4a1b: $01 $4a $1d
    inc h                                         ; $4a1e: $24
    ld bc, $2e4b                                  ; $4a1f: $01 $4b $2e
    inc h                                         ; $4a22: $24
    ld bc, $1a4c                                  ; $4a23: $01 $4c $1a
    dec h                                         ; $4a26: $25
    ld bc, $1b4d                                  ; $4a27: $01 $4d $1b
    dec h                                         ; $4a2a: $25
    ld bc, $1c4e                                  ; $4a2b: $01 $4e $1c
    dec h                                         ; $4a2e: $25
    ld bc, $2c4f                                  ; $4a2f: $01 $4f $2c
    dec h                                         ; $4a32: $25
    ld [bc], a                                    ; $4a33: $02
    ld d, b                                       ; $4a34: $50
    dec l                                         ; $4a35: $2d
    dec h                                         ; $4a36: $25
    ld bc, $1b51                                  ; $4a37: $01 $51 $1b
    ld h, $01                                     ; $4a3a: $26 $01
    ld d, d                                       ; $4a3c: $52
    inc e                                         ; $4a3d: $1c
    ld h, $01                                     ; $4a3e: $26 $01
    ld d, e                                       ; $4a40: $53
    ld a, [hl+]                                   ; $4a41: $2a
    ld h, $02                                     ; $4a42: $26 $02
    ld d, h                                       ; $4a44: $54
    dec hl                                        ; $4a45: $2b
    ld h, $01                                     ; $4a46: $26 $01
    ld d, l                                       ; $4a48: $55
    inc l                                         ; $4a49: $2c
    ld h, $01                                     ; $4a4a: $26 $01
    ld d, [hl]                                    ; $4a4c: $56
    ld d, $27                                     ; $4a4d: $16 $27
    ld bc, $1c57                                  ; $4a4f: $01 $57 $1c
    daa                                           ; $4a52: $27
    ld bc, $2458                                  ; $4a53: $01 $58 $24
    daa                                           ; $4a56: $27
    ld bc, $1559                                  ; $4a57: $01 $59 $15
    jr z, jr_06c_4a5d                             ; $4a5a: $28 $01

    ld e, d                                       ; $4a5c: $5a

jr_06c_4a5d:
    dec de                                        ; $4a5d: $1b
    jr z, jr_06c_4a61                             ; $4a5e: $28 $01

    ld e, e                                       ; $4a60: $5b

jr_06c_4a61:
    inc e                                         ; $4a61: $1c
    jr z, jr_06c_4a65                             ; $4a62: $28 $01

    ld e, h                                       ; $4a64: $5c

jr_06c_4a65:
    inc h                                         ; $4a65: $24
    jr z, jr_06c_4a69                             ; $4a66: $28 $01

    ld e, l                                       ; $4a68: $5d

jr_06c_4a69:
    dec h                                         ; $4a69: $25
    jr z, jr_06c_4a6d                             ; $4a6a: $28 $01

    ld e, [hl]                                    ; $4a6c: $5e

jr_06c_4a6d:
    dec d                                         ; $4a6d: $15
    add hl, hl                                    ; $4a6e: $29
    ld bc, $235f                                  ; $4a6f: $01 $5f $23
    add hl, hl                                    ; $4a72: $29
    ld bc, $2460                                  ; $4a73: $01 $60 $24
    add hl, hl                                    ; $4a76: $29
    ld bc, $1461                                  ; $4a77: $01 $61 $14
    ld a, [hl+]                                   ; $4a7a: $2a
    ld bc, $0d62                                  ; $4a7b: $01 $62 $0d
    ld l, $01                                     ; $4a7e: $2e $01
    ld h, e                                       ; $4a80: $63
    ld c, $2e                                     ; $4a81: $0e $2e
    ld bc, $0f64                                  ; $4a83: $01 $64 $0f
    ld l, $01                                     ; $4a86: $2e $01
    ld h, l                                       ; $4a88: $65
    inc c                                         ; $4a89: $0c
    cpl                                           ; $4a8a: $2f
    ld bc, $0d66                                  ; $4a8b: $01 $66 $0d
    cpl                                           ; $4a8e: $2f
    ld bc, $0b67                                  ; $4a8f: $01 $67 $0b
    jr nc, jr_06c_4a95                            ; $4a92: $30 $01

    ld l, b                                       ; $4a94: $68

jr_06c_4a95:
    dec e                                         ; $4a95: $1d
    ld [hl-], a                                   ; $4a96: $32
    ld bc, $0869                                  ; $4a97: $01 $69 $08
    inc sp                                        ; $4a9a: $33
    ld bc, $1d6a                                  ; $4a9b: $01 $6a $1d
    inc sp                                        ; $4a9e: $33
    ld bc, $076b                                  ; $4a9f: $01 $6b $07
    inc [hl]                                      ; $4aa2: $34
    ld bc, $086c                                  ; $4aa3: $01 $6c $08
    inc [hl]                                      ; $4aa6: $34
    ld bc, $1c6d                                  ; $4aa7: $01 $6d $1c
    inc [hl]                                      ; $4aaa: $34
    ld bc, $076e                                  ; $4aab: $01 $6e $07
    dec [hl]                                      ; $4aae: $35
    ld bc, $076f                                  ; $4aaf: $01 $6f $07
    ld [hl], $01                                  ; $4ab2: $36 $01
    ld [hl], b                                    ; $4ab4: $70
    dec d                                         ; $4ab5: $15
    ld [hl], $01                                  ; $4ab6: $36 $01
    ld [hl], c                                    ; $4ab8: $71
    inc d                                         ; $4ab9: $14
    scf                                           ; $4aba: $37
    ld bc, $1672                                  ; $4abb: $01 $72 $16
    scf                                           ; $4abe: $37
    ld bc, $1773                                  ; $4abf: $01 $73 $17
    scf                                           ; $4ac2: $37
    ld bc, $1874                                  ; $4ac3: $01 $74 $18
    scf                                           ; $4ac6: $37
    ld bc, $1975                                  ; $4ac7: $01 $75 $19
    scf                                           ; $4aca: $37
    ld bc, $1376                                  ; $4acb: $01 $76 $13
    jr c, jr_06c_4ad1                             ; $4ace: $38 $01

    ld [hl], a                                    ; $4ad0: $77

jr_06c_4ad1:
    ld d, $38                                     ; $4ad1: $16 $38
    ld bc, $1778                                  ; $4ad3: $01 $78 $17
    jr c, jr_06c_4ad9                             ; $4ad6: $38 $01

    ld a, c                                       ; $4ad8: $79

jr_06c_4ad9:
    jr jr_06c_4b13                                ; $4ad9: $18 $38

    ld bc, $147a                                  ; $4adb: $01 $7a $14
    add hl, sp                                    ; $4ade: $39
    ld bc, $157b                                  ; $4adf: $01 $7b $15
    add hl, sp                                    ; $4ae2: $39
    ld bc, $167c                                  ; $4ae3: $01 $7c $16
    add hl, sp                                    ; $4ae6: $39
    ld bc, $177d                                  ; $4ae7: $01 $7d $17
    add hl, sp                                    ; $4aea: $39
    ld bc, $147e                                  ; $4aeb: $01 $7e $14
    ld a, [hl-]                                   ; $4aee: $3a
    rst $38                                       ; $4aef: $ff
    rst $38                                       ; $4af0: $ff
    rst $38                                       ; $4af1: $ff
    ld a, [$b24a]                                 ; $4af2: $fa $4a $b2
    ld c, [hl]                                    ; $4af5: $4e
    and e                                         ; $4af6: $a3
    ld d, e                                       ; $4af7: $53
    jp nz, Jump_000_3f53                          ; $4af8: $c2 $53 $3f

    ld c, $0e                                     ; $4afb: $0e $0e
    dec c                                         ; $4afd: $0d
    dec c                                         ; $4afe: $0d
    dec c                                         ; $4aff: $0d
    ld c, $ff                                     ; $4b00: $0e $ff
    db $e3                                        ; $4b02: $e3
    or $e2                                        ; $4b03: $f6 $e2
    sub h                                         ; $4b05: $94
    pop af                                        ; $4b06: $f1
    db $e3                                        ; $4b07: $e3
    or $e2                                        ; $4b08: $f6 $e2
    ld c, l                                       ; $4b0a: $4d
    db $e3                                        ; $4b0b: $e3
    pop hl                                        ; $4b0c: $e1
    ld c, l                                       ; $4b0d: $4d
    pop hl                                        ; $4b0e: $e1
    pop hl                                        ; $4b0f: $e1
    or $e0                                        ; $4b10: $f6 $e0
    ld c, l                                       ; $4b12: $4d

jr_06c_4b13:
    nop                                           ; $4b13: $00
    pop af                                        ; $4b14: $f1
    db $e3                                        ; $4b15: $e3
    call nc, $c9ea                                ; $4b16: $d4 $ea $c9
    db $e4                                        ; $4b19: $e4
    ld a, [$b7e6]                                 ; $4b1a: $fa $e6 $b7
    ld [c], a                                     ; $4b1d: $e2
    or d                                          ; $4b1e: $b2
    db $e3                                        ; $4b1f: $e3
    adc $e1                                       ; $4b20: $ce $e1
    rst $38                                       ; $4b22: $ff
    and $00                                       ; $4b23: $e6 $00
    cp l                                          ; $4b25: $bd
    ld [c], a                                     ; $4b26: $e2
    or c                                          ; $4b27: $b1
    pop hl                                        ; $4b28: $e1
    call nc, $c4ed                                ; $4b29: $d4 $ed $c4
    db $e4                                        ; $4b2c: $e4
    or c                                          ; $4b2d: $b1
    ld [$e876], a                                 ; $4b2e: $ea $76 $e8
    add $e0                                       ; $4b31: $c6 $e0
    cp e                                          ; $4b33: $bb
    ld [c], a                                     ; $4b34: $e2
    add c                                         ; $4b35: $81
    dec l                                         ; $4b36: $2d
    ret nz                                        ; $4b37: $c0

    and $85                                       ; $4b38: $e6 $85
    db $eb                                        ; $4b3a: $eb
    ld b, l                                       ; $4b3b: $45
    db $e4                                        ; $4b3c: $e4
    or c                                          ; $4b3d: $b1
    db $ec                                        ; $4b3e: $ec
    ld sp, $45e1                                  ; $4b3f: $31 $e1 $45
    ld [c], a                                     ; $4b42: $e2
    ld l, l                                       ; $4b43: $6d
    nop                                           ; $4b44: $00
    dec h                                         ; $4b45: $25
    ldh [$fd], a                                  ; $4b46: $e0 $fd
    ld [c], a                                     ; $4b48: $e2
    cp a                                          ; $4b49: $bf
    ldh [rNR32], a                                ; $4b4a: $e0 $1c
    and $4f                                       ; $4b4c: $e6 $4f
    xor $00                                       ; $4b4e: $ee $00
    rst $28                                       ; $4b50: $ef
    ret                                           ; $4b51: $c9


    pop hl                                        ; $4b52: $e1
    rst $30                                       ; $4b53: $f7
    db $e3                                        ; $4b54: $e3
    ccf                                           ; $4b55: $3f
    dec bc                                        ; $4b56: $0b
    ld l, e                                       ; $4b57: $6b
    dec bc                                        ; $4b58: $0b
    dec hl                                        ; $4b59: $2b
    dec bc                                        ; $4b5a: $0b
    dec hl                                        ; $4b5b: $2b
    cp a                                          ; $4b5c: $bf
    ld [c], a                                     ; $4b5d: $e2
    xor h                                         ; $4b5e: $ac
    db $e4                                        ; $4b5f: $e4
    db $fc                                        ; $4b60: $fc
    nop                                           ; $4b61: $00
    rst $38                                       ; $4b62: $ff
    ret nz                                        ; $4b63: $c0

    add sp, $0a                                   ; $4b64: $e8 $0a
    ld a, [hl+]                                   ; $4b66: $2a
    ld c, e                                       ; $4b67: $4b
    dec bc                                        ; $4b68: $0b
    dec bc                                        ; $4b69: $0b
    dec bc                                        ; $4b6a: $0b
    rrca                                          ; $4b6b: $0f
    ld a, [bc]                                    ; $4b6c: $0a
    ld c, d                                       ; $4b6d: $4a
    dec c                                         ; $4b6e: $0d
    dec c                                         ; $4b6f: $0d
    ret nz                                        ; $4b70: $c0

    db $e4                                        ; $4b71: $e4
    nop                                           ; $4b72: $00
    rst $38                                       ; $4b73: $ff
    cp [hl]                                       ; $4b74: $be
    rst $20                                       ; $4b75: $e7
    ld l, b                                       ; $4b76: $68
    ret nz                                        ; $4b77: $c0

    rst $38                                       ; $4b78: $ff
    ld c, d                                       ; $4b79: $4a
    ld a, [bc]                                    ; $4b7a: $0a
    ld c, d                                       ; $4b7b: $4a
    dec bc                                        ; $4b7c: $0b
    dec bc                                        ; $4b7d: $0b
    ld c, e                                       ; $4b7e: $4b
    ld a, [bc]                                    ; $4b7f: $0a

Jump_06c_4b80:
    ld a, [bc]                                    ; $4b80: $0a
    rlca                                          ; $4b81: $07
    ld l, e                                       ; $4b82: $6b
    dec c                                         ; $4b83: $0d
    dec l                                         ; $4b84: $2d
    or e                                          ; $4b85: $b3
    pop bc                                        ; $4b86: $c1
    nop                                           ; $4b87: $00
    rst $38                                       ; $4b88: $ff
    ld a, a                                       ; $4b89: $7f
    add sp, $47                                   ; $4b8a: $e8 $47
    pop bc                                        ; $4b8c: $c1
    ld a, a                                       ; $4b8d: $7f
    pop hl                                        ; $4b8e: $e1
    rra                                           ; $4b8f: $1f
    ld l, e                                       ; $4b90: $6b
    ld a, [bc]                                    ; $4b91: $0a
    ld a, [bc]                                    ; $4b92: $0a
    ld a, [bc]                                    ; $4b93: $0a
    dec l                                         ; $4b94: $2d
    add b                                         ; $4b95: $80
    ldh [rNR30], a                                ; $4b96: $e0 $1a
    call nz, $ff00                                ; $4b98: $c4 $00 $ff
    db $fc                                        ; $4b9b: $fc
    nop                                           ; $4b9c: $00
    jp $c24a                                      ; $4b9d: $c3 $4a $c2


    dec c                                         ; $4ba0: $0d
    ld l, e                                       ; $4ba1: $6b
    dec hl                                        ; $4ba2: $2b

Jump_06c_4ba3:
    ld c, e                                       ; $4ba3: $4b
    ld l, e                                       ; $4ba4: $6b
    ld c, d                                       ; $4ba5: $4a
    add e                                         ; $4ba6: $83
    ld a, [hl+]                                   ; $4ba7: $2a
    dec l                                         ; $4ba8: $2d
    rst $38                                       ; $4ba9: $ff
    ldh [$f4], a                                  ; $4baa: $e0 $f4
    and c                                         ; $4bac: $a1
    nop                                           ; $4bad: $00
    rst $38                                       ; $4bae: $ff
    pop af                                        ; $4baf: $f1
    xor d                                         ; $4bb0: $aa
    ld c, c                                       ; $4bb1: $49
    ret nz                                        ; $4bb2: $c0

    ld l, e                                       ; $4bb3: $6b
    inc de                                        ; $4bb4: $13
    dec hl                                        ; $4bb5: $2b
    ld a, [bc]                                    ; $4bb6: $0a
    ccf                                           ; $4bb7: $3f
    ldh [rSC], a                                  ; $4bb8: $e0 $02
    ldh [$6d], a                                  ; $4bba: $e0 $6d
    and [hl]                                      ; $4bbc: $a6
    and c                                         ; $4bbd: $a1
    nop                                           ; $4bbe: $00
    rst $38                                       ; $4bbf: $ff
    nop                                           ; $4bc0: $00
    call z, $0d1b                                 ; $4bc1: $cc $1b $0d
    ld l, e                                       ; $4bc4: $6b
    pop bc                                        ; $4bc5: $c1
    ret nz                                        ; $4bc6: $c0

    dec bc                                        ; $4bc7: $0b
    dec bc                                        ; $4bc8: $0b
    pop bc                                        ; $4bc9: $c1
    pop bc                                        ; $4bca: $c1
    ld h, [hl]                                    ; $4bcb: $66
    call nz, $ff00                                ; $4bcc: $c4 $00 $ff
    nop                                           ; $4bcf: $00
    nop                                           ; $4bd0: $00
    call nz, $a24e                                ; $4bd1: $c4 $4e $a2
    cp a                                          ; $4bd4: $bf
    db $e3                                        ; $4bd5: $e3
    ld b, b                                       ; $4bd6: $40
    ret nz                                        ; $4bd7: $c0

    ld bc, $23e1                                  ; $4bd8: $01 $e1 $23
    xor b                                         ; $4bdb: $a8
    nop                                           ; $4bdc: $00
    rst $38                                       ; $4bdd: $ff
    ret nz                                        ; $4bde: $c0

    call nz, Call_000_0d07                        ; $4bdf: $c4 $07 $0d
    dec c                                         ; $4be2: $0d
    dec hl                                        ; $4be3: $2b
    ld a, [hl]                                    ; $4be4: $7e
    ld [c], a                                     ; $4be5: $e2
    cp a                                          ; $4be6: $bf
    and [hl]                                      ; $4be7: $a6
    nop                                           ; $4be8: $00
    rst $38                                       ; $4be9: $ff
    nop                                           ; $4bea: $00
    and l                                         ; $4beb: $a5
    call Call_000_0181                            ; $4bec: $cd $81 $01
    dec l                                         ; $4bef: $2d
    ret nz                                        ; $4bf0: $c0

    and b                                         ; $4bf1: $a0
    add b                                         ; $4bf2: $80
    ldh [$bf], a                                  ; $4bf3: $e0 $bf
    db $e3                                        ; $4bf5: $e3
    rst $28                                       ; $4bf6: $ef
    add d                                         ; $4bf7: $82
    nop                                           ; $4bf8: $00
    rst $38                                       ; $4bf9: $ff
    cp $a6                                        ; $4bfa: $fe $a6
    ld a, a                                       ; $4bfc: $7f
    add c                                         ; $4bfd: $81
    inc de                                        ; $4bfe: $13
    dec c                                         ; $4bff: $0d
    dec l                                         ; $4c00: $2d
    cp a                                          ; $4c01: $bf
    and c                                         ; $4c02: $a1
    ld a, l                                       ; $4c03: $7d
    and b                                         ; $4c04: $a0
    dec bc                                        ; $4c05: $0b
    db $fd                                        ; $4c06: $fd
    add c                                         ; $4c07: $81
    nop                                           ; $4c08: $00
    rst $38                                       ; $4c09: $ff
    pop af                                        ; $4c0a: $f1
    add a                                         ; $4c0b: $87
    ld a, h                                       ; $4c0c: $7c
    jp nc, Jump_000_3d83                          ; $4c0d: $d2 $83 $3d

    and c                                         ; $4c10: $a1
    dec bc                                        ; $4c11: $0b

Jump_06c_4c12:
    dec bc                                        ; $4c12: $0b
    ld l, e                                       ; $4c13: $6b
    ld c, e                                       ; $4c14: $4b
    ld l, e                                       ; $4c15: $6b
    ret nz                                        ; $4c16: $c0

    ldh [$d0], a                                  ; $4c17: $e0 $d0
    daa                                           ; $4c19: $27
    and [hl]                                      ; $4c1a: $a6
    nop                                           ; $4c1b: $00
    rst $38                                       ; $4c1c: $ff
    ccf                                           ; $4c1d: $3f
    add d                                         ; $4c1e: $82
    di                                            ; $4c1f: $f3
    ld h, h                                       ; $4c20: $64
    dec bc                                        ; $4c21: $0b
    cp $e0                                        ; $4c22: $fe $e0
    dec c                                         ; $4c24: $0d
    ld c, e                                       ; $4c25: $4b
    db $10                                        ; $4c26: $10
    cp l                                          ; $4c27: $bd
    add h                                         ; $4c28: $84
    nop                                           ; $4c29: $00
    rst $18                                       ; $4c2a: $df
    pop af                                        ; $4c2b: $f1
    ld h, [hl]                                    ; $4c2c: $66
    ret nz                                        ; $4c2d: $c0

    add sp, $2b                                   ; $4c2e: $e8 $2b
    ld a, e                                       ; $4c30: $7b
    ldh [$bd], a                                  ; $4c31: $e0 $bd
    add e                                         ; $4c33: $83
    ld a, e                                       ; $4c34: $7b
    or d                                          ; $4c35: $b2
    add sp, $00                                   ; $4c36: $e8 $00
    sub e                                         ; $4c38: $93
    add c                                         ; $4c39: $81
    jp $e240                                      ; $4c3a: $c3 $40 $e2


    dec bc                                        ; $4c3d: $0b
    ld hl, sp-$60                                 ; $4c3e: $f8 $a0
    dec c                                         ; $4c40: $0d
    ld c, e                                       ; $4c41: $4b
    ld c, l                                       ; $4c42: $4d
    and c                                         ; $4c43: $a1
    dec l                                         ; $4c44: $2d
    xor l                                         ; $4c45: $ad
    ld h, c                                       ; $4c46: $61
    ld a, e                                       ; $4c47: $7b
    pop af                                        ; $4c48: $f1
    nop                                           ; $4c49: $00
    push af                                       ; $4c4a: $f5
    ld h, $60                                     ; $4c4b: $26 $60
    ld l, l                                       ; $4c4d: $6d
    nop                                           ; $4c4e: $00
    ldh [$2b], a                                  ; $4c4f: $e0 $2b
    cpl                                           ; $4c51: $2f
    dec bc                                        ; $4c52: $0b
    dec c                                         ; $4c53: $0d
    dec hl                                        ; $4c54: $2b
    ld l, e                                       ; $4c55: $6b
    inc [hl]                                      ; $4c56: $34
    and b                                         ; $4c57: $a0
    dec l                                         ; $4c58: $2d
    ld l, $c2                                     ; $4c59: $2e $c2
    nop                                           ; $4c5b: $00
    rst $38                                       ; $4c5c: $ff
    jr z, @+$41                                   ; $4c5d: $28 $3f

    ld h, a                                       ; $4c5f: $67
    cp [hl]                                       ; $4c60: $be
    ld h, c                                       ; $4c61: $61
    ret nz                                        ; $4c62: $c0

    and b                                         ; $4c63: $a0
    dec hl                                        ; $4c64: $2b
    pop bc                                        ; $4c65: $c1
    pop hl                                        ; $4c66: $e1
    ld c, e                                       ; $4c67: $4b
    ret nz                                        ; $4c68: $c0

    ldh [rP1], a                                  ; $4c69: $e0 $00
    rst $18                                       ; $4c6b: $df
    ld [hl], b                                    ; $4c6c: $70
    nop                                           ; $4c6d: $00
    jp z, $80c0                                   ; $4c6e: $ca $c0 $80

    jp Jump_06c_7ec1                              ; $4c71: $c3 $c1 $7e


    pop bc                                        ; $4c74: $c1
    dec c                                         ; $4c75: $0d
    ld l, e                                       ; $4c76: $6b
    ld l, e                                       ; $4c77: $6b
    db $fc                                        ; $4c78: $fc
    add [hl]                                      ; $4c79: $86
    jr nc, jr_06c_4c7c                            ; $4c7a: $30 $00

jr_06c_4c7c:
    rst $38                                       ; $4c7c: $ff
    ld a, e                                       ; $4c7d: $7b
    ld h, d                                       ; $4c7e: $62
    add b                                         ; $4c7f: $80
    add e                                         ; $4c80: $83
    ccf                                           ; $4c81: $3f
    pop bc                                        ; $4c82: $c1
    ld a, [bc]                                    ; $4c83: $0a
    ld c, e                                       ; $4c84: $4b
    or [hl]                                       ; $4c85: $b6
    pop hl                                        ; $4c86: $e1
    ld [hl-], a                                   ; $4c87: $32
    ld h, b                                       ; $4c88: $60
    nop                                           ; $4c89: $00
    ld l, b                                       ; $4c8a: $68
    ld b, h                                       ; $4c8b: $44
    nop                                           ; $4c8c: $00
    rst $38                                       ; $4c8d: $ff
    ret c                                         ; $4c8e: $d8

    db $e4                                        ; $4c8f: $e4
    rst $38                                       ; $4c90: $ff
    ld b, c                                       ; $4c91: $41
    cp a                                          ; $4c92: $bf
    add e                                         ; $4c93: $83
    add d                                         ; $4c94: $82
    ldh [$af], a                                  ; $4c95: $e0 $af
    call nz, $ff00                                ; $4c97: $c4 $00 $ff
    nop                                           ; $4c9a: $00
    inc b                                         ; $4c9b: $04
    add e                                         ; $4c9c: $83
    ld c, $41                                     ; $4c9d: $0e $41
    ld b, c                                       ; $4c9f: $41
    ldh [rLCDC], a                                ; $4ca0: $e0 $40
    and d                                         ; $4ca2: $a2
    or a                                          ; $4ca3: $b7
    pop bc                                        ; $4ca4: $c1
    daa                                           ; $4ca5: $27
    ld h, a                                       ; $4ca6: $67
    nop                                           ; $4ca7: $00
    db $fd                                        ; $4ca8: $fd
    push bc                                       ; $4ca9: $c5
    ld h, e                                       ; $4caa: $63
    inc b                                         ; $4cab: $04
    ld bc, $40e2                                  ; $4cac: $01 $e2 $40
    add e                                         ; $4caf: $83
    dec hl                                        ; $4cb0: $2b
    add h                                         ; $4cb1: $84
    ret nz                                        ; $4cb2: $c0

    ld b, e                                       ; $4cb3: $43
    ret nz                                        ; $4cb4: $c0

    nop                                           ; $4cb5: $00
    rst $18                                       ; $4cb6: $df
    nop                                           ; $4cb7: $00

jr_06c_4cb8:
    db $eb                                        ; $4cb8: $eb
    add b                                         ; $4cb9: $80
    db $e4                                        ; $4cba: $e4

jr_06c_4cbb:
    rrca                                          ; $4cbb: $0f
    dec hl                                        ; $4cbc: $2b
    dec bc                                        ; $4cbd: $0b
    ld a, [bc]                                    ; $4cbe: $0a
    dec bc                                        ; $4cbf: $0b
    ret nz                                        ; $4cc0: $c0

    push hl                                       ; $4cc1: $e5
    nop                                           ; $4cc2: $00
    ld a, a                                       ; $4cc3: $7f
    nop                                           ; $4cc4: $00
    adc b                                         ; $4cc5: $88
    add hl, bc                                    ; $4cc6: $09
    ld b, c                                       ; $4cc7: $41
    inc c                                         ; $4cc8: $0c
    call nz, Call_000_3ee0                        ; $4cc9: $c4 $e0 $3e
    ld b, b                                       ; $4ccc: $40
    ld c, e                                       ; $4ccd: $4b
    ld l, e                                       ; $4cce: $6b
    cp $21                                        ; $4ccf: $fe $21
    jr z, jr_06c_4cb8                             ; $4cd1: $28 $e5

    nop                                           ; $4cd3: $00
    rst $38                                       ; $4cd4: $ff
    inc de                                        ; $4cd5: $13
    ld h, [hl]                                    ; $4cd6: $66
    ld [bc], a                                    ; $4cd7: $02
    add d                                         ; $4cd8: $82
    and d                                         ; $4cd9: $a2
    ld a, [bc]                                    ; $4cda: $0a
    ret nz                                        ; $4cdb: $c0

    add b                                         ; $4cdc: $80
    ccf                                           ; $4cdd: $3f
    ldh [rSB], a                                  ; $4cde: $e0 $01
    ld b, e                                       ; $4ce0: $43
    nop                                           ; $4ce1: $00
    rst $38                                       ; $4ce2: $ff
    nop                                           ; $4ce3: $00
    add sp, -$3e                                  ; $4ce4: $e8 $c2
    ld h, b                                       ; $4ce6: $60
    ld b, b                                       ; $4ce7: $40
    nop                                           ; $4ce8: $00
    ld h, b                                       ; $4ce9: $60
    ld b, c                                       ; $4cea: $41
    and b                                         ; $4ceb: $a0
    add c                                         ; $4cec: $81

jr_06c_4ced:
    pop bc                                        ; $4ced: $c1
    pop bc                                        ; $4cee: $c1
    add sp, $00                                   ; $4cef: $e8 $00
    rst $38                                       ; $4cf1: $ff
    ld b, [hl]                                    ; $4cf2: $46
    inc hl                                        ; $4cf3: $23
    ld l, l                                       ; $4cf4: $6d
    nop                                           ; $4cf5: $00
    ld h, h                                       ; $4cf6: $64
    ld b, b                                       ; $4cf7: $40
    inc bc                                        ; $4cf8: $03
    add $00                                       ; $4cf9: $c6 $00
    sbc a                                         ; $4cfb: $9f
    ld [hl], b                                    ; $4cfc: $70
    rlca                                          ; $4cfd: $07
    nop                                           ; $4cfe: $00
    jr nz, jr_06c_4d44                            ; $4cff: $20 $43

    ld h, e                                       ; $4d01: $63
    ld bc, $2de0                                  ; $4d02: $01 $e0 $2d
    cp a                                          ; $4d05: $bf
    ld b, [hl]                                    ; $4d06: $46
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    rst $38                                       ; $4d09: $ff
    add [hl]                                      ; $4d0a: $86
    and d                                         ; $4d0b: $a2
    inc bc                                        ; $4d0c: $03
    and d                                         ; $4d0d: $a2
    ret                                           ; $4d0e: $c9


    ld h, b                                       ; $4d0f: $60
    add b                                         ; $4d10: $80
    db $e4                                        ; $4d11: $e4
    ret nz                                        ; $4d12: $c0

    pop hl                                        ; $4d13: $e1
    ret nz                                        ; $4d14: $c0

    ld h, a                                       ; $4d15: $67
    nop                                           ; $4d16: $00
    cp $00                                        ; $4d17: $fe $00
    ld b, d                                       ; $4d19: $42
    ld b, l                                       ; $4d1a: $45
    nop                                           ; $4d1b: $00
    push bc                                       ; $4d1c: $c5
    ret nz                                        ; $4d1d: $c0

    ld b, h                                       ; $4d1e: $44
    nop                                           ; $4d1f: $00
    rst $38                                       ; $4d20: $ff
    ld [hl], a                                    ; $4d21: $77

Jump_06c_4d22:
    ld b, e                                       ; $4d22: $43
    add l                                         ; $4d23: $85
    ld [hl+], a                                   ; $4d24: $22
    ret nz                                        ; $4d25: $c0

    add sp, $3e                                   ; $4d26: $e8 $3e
    ld h, b                                       ; $4d28: $60
    jr nz, jr_06c_4ced                            ; $4d29: $20 $c2

    ld h, h                                       ; $4d2b: $64
    nop                                           ; $4d2c: $00
    rst $38                                       ; $4d2d: $ff
    ld [hl], b                                    ; $4d2e: $70
    ld h, e                                       ; $4d2f: $63
    ld b, c                                       ; $4d30: $41
    and d                                         ; $4d31: $a2
    add c                                         ; $4d32: $81
    jr nz, jr_06c_4d42                            ; $4d33: $20 $0d

    add b                                         ; $4d35: $80
    ld bc, $e4bf                                  ; $4d36: $01 $bf $e4
    jr c, jr_06c_4cbb                             ; $4d39: $38 $80

    ld b, e                                       ; $4d3b: $43
    nop                                           ; $4d3c: $00
    rst $38                                       ; $4d3d: $ff
    db $dd                                        ; $4d3e: $dd
    push hl                                       ; $4d3f: $e5
    ld c, l                                       ; $4d40: $4d
    ld c, l                                       ; $4d41: $4d

jr_06c_4d42:
    dec l                                         ; $4d42: $2d
    add hl, bc                                    ; $4d43: $09

jr_06c_4d44:
    add c                                         ; $4d44: $81
    ld a, $e4                                     ; $4d45: $3e $e4
    ld bc, $ff4b                                  ; $4d47: $01 $4b $ff
    and l                                         ; $4d4a: $a5
    nop                                           ; $4d4b: $00
    rst $38                                       ; $4d4c: $ff
    ld d, l                                       ; $4d4d: $55
    ld bc, $2181                                  ; $4d4e: $01 $81 $21
    cp a                                          ; $4d51: $bf
    db $e3                                        ; $4d52: $e3
    ld a, l                                       ; $4d53: $7d
    jp Jump_06c_403f                              ; $4d54: $c3 $3f $40


    nop                                           ; $4d57: $00
    cp l                                          ; $4d58: $bd
    ld bc, $5f00                                  ; $4d59: $01 $00 $5f
    nop                                           ; $4d5c: $00
    ret z                                         ; $4d5d: $c8

    cp [hl]                                       ; $4d5e: $be
    ld [bc], a                                    ; $4d5f: $02
    ld a, [hl]                                    ; $4d60: $7e
    and e                                         ; $4d61: $a3
    cp e                                          ; $4d62: $bb
    nop                                           ; $4d63: $00
    ret nz                                        ; $4d64: $c0

    ld b, e                                       ; $4d65: $43
    nop                                           ; $4d66: $00
    rst $38                                       ; $4d67: $ff
    nop                                           ; $4d68: $00
    dec hl                                        ; $4d69: $2b
    ld b, $7e                                     ; $4d6a: $06 $7e
    add e                                         ; $4d6c: $83
    add b                                         ; $4d6d: $80
    db $e4                                        ; $4d6e: $e4
    db $fd                                        ; $4d6f: $fd

jr_06c_4d70:
    jr nz, jr_06c_4d70                            ; $4d70: $20 $fe

    inc h                                         ; $4d72: $24
    nop                                           ; $4d73: $00
    rst $38                                       ; $4d74: $ff
    ret nz                                        ; $4d75: $c0

    inc bc                                        ; $4d76: $03
    ld a, $88                                     ; $4d77: $3e $88
    ld bc, $392b                                  ; $4d79: $01 $2b $39
    jr nz, jr_06c_4d7f                            ; $4d7c: $20 $01

    ld h, l                                       ; $4d7e: $65

jr_06c_4d7f:
    nop                                           ; $4d7f: $00
    rst $38                                       ; $4d80: $ff
    add c                                         ; $4d81: $81
    and [hl]                                      ; $4d82: $a6
    dec a                                         ; $4d83: $3d
    jp nz, Jump_000_00c0                          ; $4d84: $c2 $c0 $00

    ret nz                                        ; $4d87: $c0

    ld b, d                                       ; $4d88: $42
    ld bc, $010b                                  ; $4d89: $01 $0b $01
    ld h, e                                       ; $4d8c: $63
    nop                                           ; $4d8d: $00
    rst $38                                       ; $4d8e: $ff
    jp nz, $c024                                  ; $4d8f: $c2 $24 $c0

    ld b, e                                       ; $4d92: $43
    cp [hl]                                       ; $4d93: $be
    ld h, d                                       ; $4d94: $62
    add c                                         ; $4d95: $81
    ld b, d                                       ; $4d96: $42
    ld bc, $0064                                  ; $4d97: $01 $64 $00
    nop                                           ; $4d9a: $00
    rst $38                                       ; $4d9b: $ff
    dec hl                                        ; $4d9c: $2b
    ret z                                         ; $4d9d: $c8

    ld b, b                                       ; $4d9e: $40
    ld b, b                                       ; $4d9f: $40
    ld a, l                                       ; $4da0: $7d
    and d                                         ; $4da1: $a2
    pop bc                                        ; $4da2: $c1
    ld [c], a                                     ; $4da3: $e2
    or b                                          ; $4da4: $b0
    dec h                                         ; $4da5: $25
    nop                                           ; $4da6: $00
    rst $38                                       ; $4da7: $ff
    nop                                           ; $4da8: $00
    ld b, [hl]                                    ; $4da9: $46
    inc b                                         ; $4daa: $04
    ld b, b                                       ; $4dab: $40
    ld b, c                                       ; $4dac: $41
    dec a                                         ; $4dad: $3d
    ld h, e                                       ; $4dae: $63
    dec c                                         ; $4daf: $0d
    add b                                         ; $4db0: $80
    ld h, d                                       ; $4db1: $62
    nop                                           ; $4db2: $00
    cp a                                          ; $4db3: $bf
    nop                                           ; $4db4: $00
    add hl, hl                                    ; $4db5: $29
    cp h                                          ; $4db6: $bc
    ld b, b                                       ; $4db7: $40
    cp [hl]                                       ; $4db8: $be
    and b                                         ; $4db9: $a0
    inc bc                                        ; $4dba: $03
    ld l, e                                       ; $4dbb: $6b
    dec hl                                        ; $4dbc: $2b
    ld a, l                                       ; $4dbd: $7d
    and d                                         ; $4dbe: $a2
    ld b, b                                       ; $4dbf: $40
    ld h, c                                       ; $4dc0: $61
    pop bc                                        ; $4dc1: $c1
    daa                                           ; $4dc2: $27
    nop                                           ; $4dc3: $00
    rst $38                                       ; $4dc4: $ff
    ld bc, $7e41                                  ; $4dc5: $01 $41 $7e
    ld hl, $bf02                                  ; $4dc8: $21 $02 $bf
    ldh [rOCPD], a                                ; $4dcb: $e0 $6b
    ld b, b                                       ; $4dcd: $40
    nop                                           ; $4dce: $00
    ret nz                                        ; $4dcf: $c0

    ld [c], a                                     ; $4dd0: $e2
    nop                                           ; $4dd1: $00
    ld a, a                                       ; $4dd2: $7f
    nop                                           ; $4dd3: $00
    jr z, @+$15                                   ; $4dd4: $28 $13

    jr nz, jr_06c_4e56                            ; $4dd6: $20 $7e

    inc hl                                        ; $4dd8: $23
    ld b, $7b                                     ; $4dd9: $06 $7b
    add b                                         ; $4ddb: $80
    ld c, e                                       ; $4ddc: $4b
    ld c, e                                       ; $4ddd: $4b
    jp nz, Jump_06c_7fa1                          ; $4dde: $c2 $a1 $7f

Call_06c_4de1:
    add a                                         ; $4de1: $87
    nop                                           ; $4de2: $00
    rst $38                                       ; $4de3: $ff
    add hl, sp                                    ; $4de4: $39
    and e                                         ; $4de5: $a3
    ret nz                                        ; $4de6: $c0

    db $e4                                        ; $4de7: $e4
    ld bc, $bf4b                                  ; $4de8: $01 $4b $bf
    pop hl                                        ; $4deb: $e1
    ld b, c                                       ; $4dec: $41
    and e                                         ; $4ded: $a3
    ret nz                                        ; $4dee: $c0

    add e                                         ; $4def: $83
    nop                                           ; $4df0: $00
    rst $38                                       ; $4df1: $ff
    ld a, a                                       ; $4df2: $7f
    ld [bc], a                                    ; $4df3: $02
    ld a, e                                       ; $4df4: $7b
    add l                                         ; $4df5: $85
    add b                                         ; $4df6: $80
    pop hl                                        ; $4df7: $e1
    nop                                           ; $4df8: $00
    ld b, c                                       ; $4df9: $41
    and h                                         ; $4dfa: $a4
    nop                                           ; $4dfb: $00
    rst $38                                       ; $4dfc: $ff
    nop                                           ; $4dfd: $00
    ld b, a                                       ; $4dfe: $47
    ld a, h                                       ; $4dff: $7c
    ld b, [hl]                                    ; $4e00: $46
    cp c                                          ; $4e01: $b9
    ld h, b                                       ; $4e02: $60
    cp h                                          ; $4e03: $bc
    nop                                           ; $4e04: $00
    ld a, $42                                     ; $4e05: $3e $42
    ld l, b                                       ; $4e07: $68
    ld b, l                                       ; $4e08: $45
    ld [bc], a                                    ; $4e09: $02
    nop                                           ; $4e0a: $00
    rst $38                                       ; $4e0b: $ff
    dec l                                         ; $4e0c: $2d
    ld a, [hl-]                                   ; $4e0d: $3a
    ld h, e                                       ; $4e0e: $63
    cp c                                          ; $4e0f: $b9
    ld h, h                                       ; $4e10: $64
    db $fc                                        ; $4e11: $fc
    pop bc                                        ; $4e12: $c1
    cp l                                          ; $4e13: $bd
    ld h, b                                       ; $4e14: $60
    jr z, jr_06c_4e5a                             ; $4e15: $28 $43

    nop                                           ; $4e17: $00
    rst $38                                       ; $4e18: $ff
    nop                                           ; $4e19: $00
    add hl, sp                                    ; $4e1a: $39
    add e                                         ; $4e1b: $83
    dec a                                         ; $4e1c: $3d
    and l                                         ; $4e1d: $a5
    ret nz                                        ; $4e1e: $c0

    db $e4                                        ; $4e1f: $e4
    or c                                          ; $4e20: $b1
    ld hl, $324f                                  ; $4e21: $21 $4f $32
    nop                                           ; $4e24: $00
    push af                                       ; $4e25: $f5
    ret nc                                        ; $4e26: $d0

    jp nz, Jump_06c_457c                          ; $4e27: $c2 $7c $45

    ld bc, $bf0b                                  ; $4e2a: $01 $0b $bf
    ldh [$fb], a                                  ; $4e2d: $e0 $fb
    ld b, b                                       ; $4e2f: $40
    db $fc                                        ; $4e30: $fc
    and b                                         ; $4e31: $a0
    nop                                           ; $4e32: $00
    rst $38                                       ; $4e33: $ff
    nop                                           ; $4e34: $00
    add a                                         ; $4e35: $87
    pop bc                                        ; $4e36: $c1

jr_06c_4e37:
    rst $20                                       ; $4e37: $e7
    ld a, e                                       ; $4e38: $7b
    ld bc, $7d00                                  ; $4e39: $01 $00 $7d
    ld [hl+], a                                   ; $4e3c: $22
    nop                                           ; $4e3d: $00
    rst $38                                       ; $4e3e: $ff
    nop                                           ; $4e3f: $00
    ld b, l                                       ; $4e40: $45
    ld bc, $c0c2                                  ; $4e41: $01 $c2 $c0
    and $bd                                       ; $4e44: $e6 $bd
    add d                                         ; $4e46: $82
    nop                                           ; $4e47: $00
    rst $38                                       ; $4e48: $ff
    xor h                                         ; $4e49: $ac
    inc b                                         ; $4e4a: $04
    ld bc, $3b2d                                  ; $4e4b: $01 $2d $3b
    inc bc                                        ; $4e4e: $03
    ld b, b                                       ; $4e4f: $40
    add b                                         ; $4e50: $80
    add a                                         ; $4e51: $87
    ldh [rSTAT], a                                ; $4e52: $e0 $41
    and b                                         ; $4e54: $a0
    db $fd                                        ; $4e55: $fd

jr_06c_4e56:
    add b                                         ; $4e56: $80
    ld a, h                                       ; $4e57: $7c
    ld h, $7b                                     ; $4e58: $26 $7b

jr_06c_4e5a:
    adc h                                         ; $4e5a: $8c
    nop                                           ; $4e5b: $00
    nop                                           ; $4e5c: $00
    sub l                                         ; $4e5d: $95
    pop de                                        ; $4e5e: $d1
    and e                                         ; $4e5f: $a3
    ret nz                                        ; $4e60: $c0

    ldh [$bb], a                                  ; $4e61: $e0 $bb
    inc h                                         ; $4e63: $24
    cp h                                          ; $4e64: $bc
    jr z, jr_06c_4e67                             ; $4e65: $28 $00

jr_06c_4e67:
    rst $38                                       ; $4e67: $ff
    nop                                           ; $4e68: $00
    push hl                                       ; $4e69: $e5
    cp [hl]                                       ; $4e6a: $be
    nop                                           ; $4e6b: $00
    nop                                           ; $4e6c: $00
    cp a                                          ; $4e6d: $bf
    ld b, a                                       ; $4e6e: $47
    ld e, [hl]                                    ; $4e6f: $5e
    adc h                                         ; $4e70: $8c
    nop                                           ; $4e71: $00
    ei                                            ; $4e72: $fb
    dec sp                                        ; $4e73: $3b
    ld [bc], a                                    ; $4e74: $02
    ret                                           ; $4e75: $c9


    jr nz, jr_06c_4eb3                            ; $4e76: $20 $3b

    jr nz, jr_06c_4e37                            ; $4e78: $20 $bd

    add c                                         ; $4e7a: $81
    ld a, [hl]                                    ; $4e7b: $7e
    ld b, $00                                     ; $4e7c: $06 $00
    nop                                           ; $4e7e: $00
    rst $38                                       ; $4e7f: $ff
    nop                                           ; $4e80: $00
    ld [c], a                                     ; $4e81: $e2
    ld d, l                                       ; $4e82: $55
    and h                                         ; $4e83: $a4
    db $fc                                        ; $4e84: $fc
    jr nz, jr_06c_4ec9                            ; $4e85: $20 $42

    and c                                         ; $4e87: $a1
    ld [bc], a                                    ; $4e88: $02
    ret nz                                        ; $4e89: $c0

    cp a                                          ; $4e8a: $bf
    ld h, b                                       ; $4e8b: $60
    nop                                           ; $4e8c: $00
    ld a, a                                       ; $4e8d: $7f
    inc b                                         ; $4e8e: $04
    nop                                           ; $4e8f: $00
    ld l, h                                       ; $4e90: $6c
    cp d                                          ; $4e91: $ba
    xor b                                         ; $4e92: $a8
    ld l, l                                       ; $4e93: $6d
    add c                                         ; $4e94: $81
    rlca                                          ; $4e95: $07
    nop                                           ; $4e96: $00
    rst $18                                       ; $4e97: $df
    jp nz, $b945                                  ; $4e98: $c2 $45 $b9

    add d                                         ; $4e9b: $82
    ld c, e                                       ; $4e9c: $4b
    jr nz, jr_06c_4e9f                            ; $4e9d: $20 $00

jr_06c_4e9f:
    cp $e1                                        ; $4e9f: $fe $e1
    ld l, [hl]                                    ; $4ea1: $6e
    ld h, d                                       ; $4ea2: $62
    nop                                           ; $4ea3: $00
    sbc a                                         ; $4ea4: $9f
    nop                                           ; $4ea5: $00
    adc b                                         ; $4ea6: $88
    ld c, [hl]                                    ; $4ea7: $4e
    ld [bc], a                                    ; $4ea8: $02
    adc e                                         ; $4ea9: $8b
    ld h, h                                       ; $4eaa: $64
    add a                                         ; $4eab: $87
    and h                                         ; $4eac: $a4
    nop                                           ; $4ead: $00
    rst $08                                       ; $4eae: $cf
    nop                                           ; $4eaf: $00
    nop                                           ; $4eb0: $00
    nop                                           ; $4eb1: $00
    rst $38                                       ; $4eb2: $ff

jr_06c_4eb3:
    call c, $a0dd                                 ; $4eb3: $dc $dd $a0
    sbc $df                                       ; $4eb6: $de $df
    ldh [$e1], a                                  ; $4eb8: $e0 $e1
    ld [c], a                                     ; $4eba: $e2
    di                                            ; $4ebb: $f3
    db $e3                                        ; $4ebc: $e3
    db $e4                                        ; $4ebd: $e4
    or $e2                                        ; $4ebe: $f6 $e2
    pop af                                        ; $4ec0: $f1
    push hl                                       ; $4ec1: $e5
    and b                                         ; $4ec2: $a0
    and b                                         ; $4ec3: $a0
    sub $d7                                       ; $4ec4: $d6 $d7
    rra                                           ; $4ec6: $1f
    and b                                         ; $4ec7: $a0
    and b                                         ; $4ec8: $a0

jr_06c_4ec9:
    jp c, $a0db                                   ; $4ec9: $da $db $a0

    rst $38                                       ; $4ecc: $ff
    pop hl                                        ; $4ecd: $e1
    ld sp, hl                                     ; $4ece: $f9
    ldh [$f2], a                                  ; $4ecf: $e0 $f2
    pop hl                                        ; $4ed1: $e1
    ld sp, hl                                     ; $4ed2: $f9
    and b                                         ; $4ed3: $a0
    call nc, $caec                                ; $4ed4: $d4 $ec $ca
    ld [c], a                                     ; $4ed7: $e2
    push hl                                       ; $4ed8: $e5
    and $e7                                       ; $4ed9: $e6 $e7
    and b                                         ; $4edb: $a0
    add sp, -$61                                  ; $4edc: $e8 $9f
    jp hl                                         ; $4ede: $e9


    ld [$eceb], a                                 ; $4edf: $ea $eb $ec
    and b                                         ; $4ee2: $a0
    or $e2                                        ; $4ee3: $f6 $e2
    pop af                                        ; $4ee5: $f1
    rst $20                                       ; $4ee6: $e7
    ret c                                         ; $4ee7: $d8

    add hl, de                                    ; $4ee8: $19
    reti                                          ; $4ee9: $d9


    call nz, $bfe2                                ; $4eea: $c4 $e2 $bf
    ld [c], a                                     ; $4eed: $e2
    push af                                       ; $4eee: $f5
    or $f2                                        ; $4eef: $f6 $f2
    ld [c], a                                     ; $4ef1: $e2
    call nc, $caec                                ; $4ef2: $d4 $ec $ca
    ld [c], a                                     ; $4ef5: $e2
    ld hl, sp-$4f                                 ; $4ef6: $f8 $b1
    db $ec                                        ; $4ef8: $ec
    halt                                          ; $4ef9: $76
    push hl                                       ; $4efa: $e5
    add h                                         ; $4efb: $84
    ld [c], a                                     ; $4efc: $e2
    sbc a                                         ; $4efd: $9f
    sbc l                                         ; $4efe: $9d
    sbc l                                         ; $4eff: $9d
    and d                                         ; $4f00: $a2
    sbc l                                         ; $4f01: $9d
    add d                                         ; $4f02: $82

jr_06c_4f03:
    rst $38                                       ; $4f03: $ff
    pop hl                                        ; $4f04: $e1
    sbc a                                         ; $4f05: $9f
    halt                                          ; $4f06: $76
    db $e3                                        ; $4f07: $e3
    add l                                         ; $4f08: $85
    db $ec                                        ; $4f09: $ec
    ld b, l                                       ; $4f0a: $45
    ld [c], a                                     ; $4f0b: $e2
    or c                                          ; $4f0c: $b1
    db $ec                                        ; $4f0d: $ec
    halt                                          ; $4f0e: $76
    and $d0                                       ; $4f0f: $e6 $d0
    ld a, a                                       ; $4f11: $7f
    pop de                                        ; $4f12: $d1
    and b                                         ; $4f13: $a0
    sbc a                                         ; $4f14: $9f
    sbc h                                         ; $4f15: $9c
    ld a, c                                       ; $4f16: $79
    ld a, d                                       ; $4f17: $7a
    ld a, e                                       ; $4f18: $7b
    rst $38                                       ; $4f19: $ff
    ldh [rIF], a                                  ; $4f1a: $e0 $0f
    ld a, h                                       ; $4f1c: $7c

jr_06c_4f1d:
    ld a, l                                       ; $4f1d: $7d
    sbc h                                         ; $4f1e: $9c
    sbc a                                         ; $4f1f: $9f
    jr nc, jr_06c_4f03                            ; $4f20: $30 $e1

    add l                                         ; $4f22: $85
    db $ed                                        ; $4f23: $ed
    ld b, l                                       ; $4f24: $45
    ld [c], a                                     ; $4f25: $e2
    nop                                           ; $4f26: $00
    pop af                                        ; $4f27: $f1
    cp $0b                                        ; $4f28: $fe $0b
    pop hl                                        ; $4f2a: $e1
    jp nc, $a0d3                                  ; $4f2b: $d2 $d3 $a0

    sbc [hl]                                      ; $4f2e: $9e
    ld a, c                                       ; $4f2f: $79
    ld a, [hl]                                    ; $4f30: $7e
    ld b, e                                       ; $4f31: $43
    ccf                                           ; $4f32: $3f
    cp [hl]                                       ; $4f33: $be
    ld h, $bd                                     ; $4f34: $26 $bd
    ld b, l                                       ; $4f36: $45
    ld b, e                                       ; $4f37: $43
    ld a, a                                       ; $4f38: $7f
    cp a                                          ; $4f39: $bf
    pop hl                                        ; $4f3a: $e1
    jr nc, jr_06c_4f1d                            ; $4f3b: $30 $e0

    ld hl, sp+$00                                 ; $4f3d: $f8 $00
    rst $38                                       ; $4f3f: $ff
    nop                                           ; $4f40: $00
    ld [c], a                                     ; $4f41: $e2
    call z, $edc0                                 ; $4f42: $cc $c0 $ed
    xor $d4                                       ; $4f45: $ee $d4
    push de                                       ; $4f47: $d5
    rst $28                                       ; $4f48: $ef
    rst $38                                       ; $4f49: $ff
    sbc [hl]                                      ; $4f4a: $9e
    add b                                         ; $4f4b: $80
    ld c, d                                       ; $4f4c: $4a
    ld c, e                                       ; $4f4d: $4b
    ld a, [hl+]                                   ; $4f4e: $2a
    jr nz, jr_06c_4f71                            ; $4f4f: $20 $20

    dec l                                         ; $4f51: $2d
    rra                                           ; $4f52: $1f
    ld c, e                                       ; $4f53: $4b
    ld d, l                                       ; $4f54: $55
    ld a, a                                       ; $4f55: $7f
    ld a, l                                       ; $4f56: $7d
    sbc [hl]                                      ; $4f57: $9e
    or h                                          ; $4f58: $b4
    pop bc                                        ; $4f59: $c1
    nop                                           ; $4f5a: $00
    rst $38                                       ; $4f5b: $ff
    nop                                           ; $4f5c: $00
    db $e3                                        ; $4f5d: $e3
    ld a, a                                       ; $4f5e: $7f
    and b                                         ; $4f5f: $a0
    and b                                         ; $4f60: $a0
    ldh a, [$f1]                                  ; $4f61: $f0 $f1
    ld a, [c]                                     ; $4f63: $f2
    di                                            ; $4f64: $f3
    db $f4                                        ; $4f65: $f4
    ret nz                                        ; $4f66: $c0

    ldh [rIE], a                                  ; $4f67: $e0 $ff
    ld h, c                                       ; $4f69: $61
    ld d, [hl]                                    ; $4f6a: $56
    jr nc, @+$22                                  ; $4f6b: $30 $20

    dec l                                         ; $4f6d: $2d
    ld e, [hl]                                    ; $4f6e: $5e
    ld d, l                                       ; $4f6f: $55
    ld b, [hl]                                    ; $4f70: $46

jr_06c_4f71:
    jp $a181                                      ; $4f71: $c3 $81 $a1


    ld [hl], a                                    ; $4f74: $77
    pop bc                                        ; $4f75: $c1
    nop                                           ; $4f76: $00
    rst $38                                       ; $4f77: $ff
    nop                                           ; $4f78: $00
    db $e3                                        ; $4f79: $e3
    adc l                                         ; $4f7a: $8d
    jp $9ea0                                      ; $4f7b: $c3 $a0 $9e


    rst $38                                       ; $4f7e: $ff
    add d                                         ; $4f7f: $82
    add e                                         ; $4f80: $83
    ld d, e                                       ; $4f81: $53
    ld d, e                                       ; $4f82: $53
    ld [hl+], a                                   ; $4f83: $22
    ld [hl+], a                                   ; $4f84: $22
    ld c, d                                       ; $4f85: $4a
    ld h, b                                       ; $4f86: $60
    adc a                                         ; $4f87: $8f
    ld e, h                                       ; $4f88: $5c
    add e                                         ; $4f89: $83
    add h                                         ; $4f8a: $84
    sbc [hl]                                      ; $4f8b: $9e
    ldh a, [$e0]                                  ; $4f8c: $f0 $e0
    nop                                           ; $4f8e: $00
    rst $38                                       ; $4f8f: $ff
    nop                                           ; $4f90: $00
    ret                                           ; $4f91: $c9


    and b                                         ; $4f92: $a0
    rst $38                                       ; $4f93: $ff
    and b                                         ; $4f94: $a0
    sbc [hl]                                      ; $4f95: $9e
    add l                                         ; $4f96: $85
    adc e                                         ; $4f97: $8b
    ld b, [hl]                                    ; $4f98: $46
    ld b, h                                       ; $4f99: $44
    inc a                                         ; $4f9a: $3c
    inc a                                         ; $4f9b: $3c
    ccf                                           ; $4f9c: $3f
    ld c, d                                       ; $4f9d: $4a
    ld d, d                                       ; $4f9e: $52
    add e                                         ; $4f9f: $83
    add [hl]                                      ; $4fa0: $86
    add l                                         ; $4fa1: $85
    sbc [hl]                                      ; $4fa2: $9e
    xor a                                         ; $4fa3: $af
    pop bc                                        ; $4fa4: $c1
    nop                                           ; $4fa5: $00
    rst $38                                       ; $4fa6: $ff
    cp $00                                        ; $4fa7: $fe $00
    ret z                                         ; $4fa9: $c8

    sub $d7                                       ; $4faa: $d6 $d7
    sbc a                                         ; $4fac: $9f
    sbc h                                         ; $4fad: $9c
    add b                                         ; $4fae: $80
    ld b, [hl]                                    ; $4faf: $46
    add hl, sp                                    ; $4fb0: $39
    ccf                                           ; $4fb1: $3f
    swap l                                        ; $4fb2: $cb $35
    add hl, sp                                    ; $4fb4: $39
    ld b, l                                       ; $4fb5: $45
    adc d                                         ; $4fb6: $8a
    add l                                         ; $4fb7: $85
    ld a, a                                       ; $4fb8: $7f
    ret nz                                        ; $4fb9: $c0

    xor a                                         ; $4fba: $af
    ret nz                                        ; $4fbb: $c0

    ld hl, sp+$00                                 ; $4fbc: $f8 $00
    rst $38                                       ; $4fbe: $ff
    nop                                           ; $4fbf: $00
    ret z                                         ; $4fc0: $c8

    ret nz                                        ; $4fc1: $c0

    and b                                         ; $4fc2: $a0
    and c                                         ; $4fc3: $a1
    add b                                         ; $4fc4: $80
    ld b, [hl]                                    ; $4fc5: $46
    ld a, $35                                     ; $4fc6: $3e $35
    ccf                                           ; $4fc8: $3f
    dec [hl]                                      ; $4fc9: $35
    ld a, [hl-]                                   ; $4fca: $3a
    ld b, l                                       ; $4fcb: $45
    add c                                         ; $4fcc: $81
    or d                                          ; $4fcd: $b2
    sbc [hl]                                      ; $4fce: $9e
    xor a                                         ; $4fcf: $af
    jp nz, $a073                                  ; $4fd0: $c2 $73 $a0

    ldh a, [rP1]                                  ; $4fd3: $f0 $00
    rst $38                                       ; $4fd5: $ff
    halt                                          ; $4fd6: $76
    and h                                         ; $4fd7: $a4
    ld b, h                                       ; $4fd8: $44
    and c                                         ; $4fd9: $a1
    rst $38                                       ; $4fda: $ff
    ret nz                                        ; $4fdb: $c0

    add hl, sp                                    ; $4fdc: $39
    dec [hl]                                      ; $4fdd: $35
    dec [hl]                                      ; $4fde: $35
    dec [hl]                                      ; $4fdf: $35
    ld bc, $c036                                  ; $4fe0: $01 $36 $c0
    ldh [$af], a                                  ; $4fe3: $e0 $af
    jp nz, $a2a8                                  ; $4fe5: $c2 $a8 $a2

    nop                                           ; $4fe8: $00
    rst $38                                       ; $4fe9: $ff
    nop                                           ; $4fea: $00
    and d                                         ; $4feb: $a2
    ret nz                                        ; $4fec: $c0

    ret nz                                        ; $4fed: $c0

    rst $38                                       ; $4fee: $ff
    ret nz                                        ; $4fef: $c0

    rst $38                                       ; $4ff0: $ff
    add a                                         ; $4ff1: $87
    adc b                                         ; $4ff2: $88
    ld [hl], d                                    ; $4ff3: $72
    ld l, h                                       ; $4ff4: $6c
    dec [hl]                                      ; $4ff5: $35
    dec [hl]                                      ; $4ff6: $35
    ld l, d                                       ; $4ff7: $6a
    add hl, sp                                    ; $4ff8: $39
    ldh [$bf], a                                  ; $4ff9: $e0 $bf
    and e                                         ; $4ffb: $a3
    inc d                                         ; $4ffc: $14
    and b                                         ; $4ffd: $a0
    nop                                           ; $4ffe: $00
    rst $38                                       ; $4fff: $ff
    pop af                                        ; $5000: $f1
    add l                                         ; $5001: $85
    rst $38                                       ; $5002: $ff
    jp nz, Jump_06c_4046                          ; $5003: $c2 $46 $40

    ld l, [hl]                                    ; $5006: $6e
    ccf                                           ; $5007: $3f
    ld [hl], h                                    ; $5008: $74
    dec [hl]                                      ; $5009: $35
    ld l, h                                       ; $500a: $6c
    ld l, l                                       ; $500b: $6d
    ld a, [hl-]                                   ; $500c: $3a
    ld b, l                                       ; $500d: $45
    cp a                                          ; $500e: $bf
    and e                                         ; $500f: $a3
    or d                                          ; $5010: $b2
    add b                                         ; $5011: $80
    ld hl, sp+$00                                 ; $5012: $f8 $00
    rst $38                                       ; $5014: $ff
    halt                                          ; $5015: $76
    add h                                         ; $5016: $84
    cp a                                          ; $5017: $bf
    add c                                         ; $5018: $81
    sbc a                                         ; $5019: $9f
    sbc l                                         ; $501a: $9d
    sbc h                                         ; $501b: $9c
    ld [hl], $69                                  ; $501c: $36 $69
    ld a, a                                       ; $501e: $7f
    dec [hl]                                      ; $501f: $35
    ld [hl], e                                    ; $5020: $73
    ld l, [hl]                                    ; $5021: $6e
    dec [hl]                                      ; $5022: $35
    ld [hl], $45                                  ; $5023: $36 $45
    and c                                         ; $5025: $a1
    ld [hl], e                                    ; $5026: $73
    add e                                         ; $5027: $83
    ldh a, [rP1]                                  ; $5028: $f0 $00
    rst $38                                       ; $502a: $ff
    nop                                           ; $502b: $00
    push hl                                       ; $502c: $e5
    ld b, e                                       ; $502d: $43
    add b                                         ; $502e: $80
    db $fc                                        ; $502f: $fc
    add b                                         ; $5030: $80
    sbc [hl]                                      ; $5031: $9e
    or d                                          ; $5032: $b2
    ld l, c                                       ; $5033: $69
    dec [hl]                                      ; $5034: $35
    rra                                           ; $5035: $1f
    ld l, d                                       ; $5036: $6a
    ld [hl], $36                                  ; $5037: $36 $36
    inc a                                         ; $5039: $3c
    ld b, h                                       ; $503a: $44
    rst $38                                       ; $503b: $ff
    and c                                         ; $503c: $a1
    inc sp                                        ; $503d: $33
    add d                                         ; $503e: $82
    nop                                           ; $503f: $00
    rst $38                                       ; $5040: $ff
    db $fc                                        ; $5041: $fc
    pop af                                        ; $5042: $f1
    ld h, e                                       ; $5043: $63
    db $fc                                        ; $5044: $fc
    add h                                         ; $5045: $84
    or d                                          ; $5046: $b2
    ld l, c                                       ; $5047: $69
    xor h                                         ; $5048: $ac
    ld l, d                                       ; $5049: $6a
    or d                                          ; $504a: $b2
    or d                                          ; $504b: $b2
    jp $b23c                                      ; $504c: $c3 $3c $b2


    cp l                                          ; $504f: $bd
    add e                                         ; $5050: $83
    nop                                           ; $5051: $00
    rst $18                                       ; $5052: $df
    nop                                           ; $5053: $00
    rst $20                                       ; $5054: $e7
    db $fc                                        ; $5055: $fc
    add e                                         ; $5056: $83
    or d                                          ; $5057: $b2
    ld l, c                                       ; $5058: $69
    ccf                                           ; $5059: $3f
    xor l                                         ; $505a: $ad
    ld l, d                                       ; $505b: $6a
    ld [hl], $b2                                  ; $505c: $36 $b2
    dec [hl]                                      ; $505e: $35
    add hl, sp                                    ; $505f: $39
    cp a                                          ; $5060: $bf
    pop hl                                        ; $5061: $e1
    db $ed                                        ; $5062: $ed
    ld h, c                                       ; $5063: $61
    add sp, $00                                   ; $5064: $e8 $00
    rst $38                                       ; $5066: $ff
    nop                                           ; $5067: $00
    push hl                                       ; $5068: $e5
    db $fc                                        ; $5069: $fc
    add d                                         ; $506a: $82
    and c                                         ; $506b: $a1
    ld b, b                                       ; $506c: $40
    ldh [$75], a                                  ; $506d: $e0 $75
    ld h, [hl]                                    ; $506f: $66
    or d                                          ; $5070: $b2
    ccf                                           ; $5071: $3f
    ld a, [hl-]                                   ; $5072: $3a
    ld a, [hl-]                                   ; $5073: $3a
    or d                                          ; $5074: $b2
    ld b, [hl]                                    ; $5075: $46
    sbc h                                         ; $5076: $9c
    sbc a                                         ; $5077: $9f
    ld [hl], c                                    ; $5078: $71
    ld h, d                                       ; $5079: $62
    nop                                           ; $507a: $00
    rst $38                                       ; $507b: $ff
    cp $00                                        ; $507c: $fe $00
    db $e4                                        ; $507e: $e4
    sub $d7                                       ; $507f: $d6 $d7
    push af                                       ; $5081: $f5
    or $9f                                        ; $5082: $f6 $9f
    sbc h                                         ; $5084: $9c
    or d                                          ; $5085: $b2
    rst $38                                       ; $5086: $ff
    ld l, e                                       ; $5087: $6b
    ld l, h                                       ; $5088: $6c
    ld l, h                                       ; $5089: $6c
    ld l, l                                       ; $508a: $6d
    or d                                          ; $508b: $b2
    ld a, [hl-]                                   ; $508c: $3a
    ld [hl], $b2                                  ; $508d: $36 $b2
    add a                                         ; $508f: $87
    or d                                          ; $5090: $b2
    ld b, [hl]                                    ; $5091: $46
    sbc [hl]                                      ; $5092: $9e
    dec hl                                        ; $5093: $2b
    jp nz, $ff00                                  ; $5094: $c2 $00 $ff

    nop                                           ; $5097: $00
    db $e4                                        ; $5098: $e4
    add b                                         ; $5099: $80
    pop bc                                        ; $509a: $c1
    sbc h                                         ; $509b: $9c
    rst $38                                       ; $509c: $ff
    or d                                          ; $509d: $b2
    or d                                          ; $509e: $b2
    ld l, [hl]                                    ; $509f: $6e
    ld [hl], b                                    ; $50a0: $70
    ld [hl], b                                    ; $50a1: $70
    ld l, [hl]                                    ; $50a2: $6e
    add hl, sp                                    ; $50a3: $39
    inc a                                         ; $50a4: $3c
    add [hl]                                      ; $50a5: $86
    pop bc                                        ; $50a6: $c1
    ldh [rDMA], a                                 ; $50a7: $e0 $46
    and c                                         ; $50a9: $a1
    xor e                                         ; $50aa: $ab
    ld h, c                                       ; $50ab: $61
    nop                                           ; $50ac: $00
    rst $38                                       ; $50ad: $ff
    nop                                           ; $50ae: $00
    push bc                                       ; $50af: $c5
    ld a, a                                       ; $50b0: $7f
    and c                                         ; $50b1: $a1
    ld b, [hl]                                    ; $50b2: $46
    rrca                                          ; $50b3: $0f
    or d                                          ; $50b4: $b2
    ld [hl], $ac                                  ; $50b5: $36 $ac
    cp e                                          ; $50b7: $bb
    ld a, l                                       ; $50b8: $7d
    and c                                         ; $50b9: $a1
    pop bc                                        ; $50ba: $c1
    ldh [$fc], a                                  ; $50bb: $e0 $fc
    add e                                         ; $50bd: $83
    nop                                           ; $50be: $00
    rst $38                                       ; $50bf: $ff
    db $fc                                        ; $50c0: $fc
    nop                                           ; $50c1: $00
    ld h, h                                       ; $50c2: $64
    jp z, $9e41                                   ; $50c3: $ca $41 $9e

    ld b, [hl]                                    ; $50c6: $46
    ld b, d                                       ; $50c7: $42
    xor h                                         ; $50c8: $ac
    xor l                                         ; $50c9: $ad
    ld h, d                                       ; $50ca: $62
    scf                                           ; $50cb: $37
    ld h, [hl]                                    ; $50cc: $66
    srl c                                         ; $50cd: $cb $39
    ld b, d                                       ; $50cf: $42
    ldh [$9c], a                                  ; $50d0: $e0 $9c
    sbc a                                         ; $50d2: $9f
    db $fc                                        ; $50d3: $fc
    add e                                         ; $50d4: $83
    nop                                           ; $50d5: $00
    rst $38                                       ; $50d6: $ff
    db $fc                                        ; $50d7: $fc
    nop                                           ; $50d8: $00
    and e                                         ; $50d9: $a3
    ld b, b                                       ; $50da: $40
    ld b, b                                       ; $50db: $40
    sbc a                                         ; $50dc: $9f
    sbc h                                         ; $50dd: $9c
    xor [hl]                                      ; $50de: $ae
    or d                                          ; $50df: $b2
    xor l                                         ; $50e0: $ad
    ld h, d                                       ; $50e1: $62
    add a                                         ; $50e2: $87
    ld h, a                                       ; $50e3: $67
    ld l, b                                       ; $50e4: $68
    ld h, [hl]                                    ; $50e5: $66
    pop bc                                        ; $50e6: $c1
    ld [c], a                                     ; $50e7: $e2
    xor e                                         ; $50e8: $ab
    ld h, e                                       ; $50e9: $63
    nop                                           ; $50ea: $00
    rst $38                                       ; $50eb: $ff
    nop                                           ; $50ec: $00
    ld h, d                                       ; $50ed: $62
    sbc $fd                                       ; $50ee: $de $fd
    rst $18                                       ; $50f0: $df
    ld b, b                                       ; $50f1: $40
    ld b, b                                       ; $50f2: $40
    sbc [hl]                                      ; $50f3: $9e
    ld b, [hl]                                    ; $50f4: $46
    xor a                                         ; $50f5: $af
    ld [hl], $62                                  ; $50f6: $36 $62
    ld h, a                                       ; $50f8: $67
    ld [bc], a                                    ; $50f9: $02
    ld b, b                                       ; $50fa: $40
    and b                                         ; $50fb: $a0
    or d                                          ; $50fc: $b2
    ld bc, $b1c0                                  ; $50fd: $01 $c0 $b1
    pop bc                                        ; $5100: $c1
    add sp, -$1f                                  ; $5101: $e8 $e1
    nop                                           ; $5103: $00

jr_06c_5104:
    rst $38                                       ; $5104: $ff
    ld [$c443], sp                                ; $5105: $08 $43 $c4
    jr nz, jr_06c_5111                            ; $5108: $20 $07

    and c                                         ; $510a: $a1
    ld b, [hl]                                    ; $510b: $46
    ld b, b                                       ; $510c: $40
    pop bc                                        ; $510d: $c1
    ldh [rLCDC], a                                ; $510e: $e0 $40
    and b                                         ; $5110: $a0

jr_06c_5111:
    add h                                         ; $5111: $84
    pop bc                                        ; $5112: $c1
    ret nz                                        ; $5113: $c0

    ld b, e                                       ; $5114: $43
    nop                                           ; $5115: $00
    rst $38                                       ; $5116: $ff
    ld h, h                                       ; $5117: $64
    nop                                           ; $5118: $00
    ld b, h                                       ; $5119: $44
    add b                                         ; $511a: $80
    add d                                         ; $511b: $82
    ld b, [hl]                                    ; $511c: $46
    ld b, d                                       ; $511d: $42
    and b                                         ; $511e: $a0
    pop bc                                        ; $511f: $c1
    add b                                         ; $5120: $80
    srl c                                         ; $5121: $cb $39
    add h                                         ; $5123: $84
    ret nz                                        ; $5124: $c0

    ld [hl], b                                    ; $5125: $70
    ret nz                                        ; $5126: $c0

    ld b, e                                       ; $5127: $43
    nop                                           ; $5128: $00
    cp a                                          ; $5129: $bf
    nop                                           ; $512a: $00
    add l                                         ; $512b: $85
    rst $38                                       ; $512c: $ff
    ld [hl+], a                                   ; $512d: $22
    or d                                          ; $512e: $b2
    ld l, c                                       ; $512f: $69
    set 0, c                                      ; $5130: $cb $c1
    add c                                         ; $5132: $81
    ld bc, $8339                                  ; $5133: $01 $39 $83
    pop bc                                        ; $5136: $c1
    rst $38                                       ; $5137: $ff
    add h                                         ; $5138: $84
    nop                                           ; $5139: $00
    rst $38                                       ; $513a: $ff
    nop                                           ; $513b: $00
    ld b, b                                       ; $513c: $40
    ld a, h                                       ; $513d: $7c
    ld b, b                                       ; $513e: $40
    rst $38                                       ; $513f: $ff
    jr nz, jr_06c_5104                            ; $5140: $20 $c2

    add d                                         ; $5142: $82
    ccf                                           ; $5143: $3f
    dec [hl]                                      ; $5144: $35
    ld l, d                                       ; $5145: $6a
    swap [hl]                                     ; $5146: $cb $36
    ld b, l                                       ; $5148: $45
    ld b, [hl]                                    ; $5149: $46
    jp $eba0                                      ; $514a: $c3 $a0 $eb


    pop hl                                        ; $514d: $e1
    jr jr_06c_5150                                ; $514e: $18 $00

jr_06c_5150:
    rst $38                                       ; $5150: $ff
    nop                                           ; $5151: $00
    db $e4                                        ; $5152: $e4
    ld d, b                                       ; $5153: $50
    ld h, e                                       ; $5154: $63
    sbc [hl]                                      ; $5155: $9e
    ld b, h                                       ; $5156: $44
    add b                                         ; $5157: $80
    ldh [rSTAT], a                                ; $5158: $e0 $41
    and b                                         ; $515a: $a0
    inc bc                                        ; $515b: $03
    jp nz, Jump_06c_6e70                          ; $515c: $c2 $70 $6e

    jr nz, jr_06c_5161                            ; $515f: $20 $00

jr_06c_5161:
    sbc a                                         ; $5161: $9f
    halt                                          ; $5162: $76
    dec b                                         ; $5163: $05
    rst $38                                       ; $5164: $ff
    ld [hl+], a                                   ; $5165: $22
    sbc a                                         ; $5166: $9f
    sbc h                                         ; $5167: $9c
    ld b, b                                       ; $5168: $40
    nop                                           ; $5169: $00
    ldh [$83], a                                  ; $516a: $e0 $83
    dec [hl]                                      ; $516c: $35
    ld l, d                                       ; $516d: $6a
    ld b, d                                       ; $516e: $42
    jp nz, $e26f                                  ; $516f: $c2 $6f $e2

    nop                                           ; $5172: $00
    sbc a                                         ; $5173: $9f
    halt                                          ; $5174: $76
    inc b                                         ; $5175: $04
    ld b, d                                       ; $5176: $42
    ld bc, $139f                                  ; $5177: $01 $9f $13
    sbc h                                         ; $517a: $9c
    ld b, l                                       ; $517b: $45
    jp nz, $4160                                  ; $517c: $c2 $60 $41

    ld h, b                                       ; $517f: $60
    ld b, b                                       ; $5180: $40
    dec b                                         ; $5181: $05
    and b                                         ; $5182: $a0
    cp a                                          ; $5183: $bf
    ld b, l                                       ; $5184: $45

jr_06c_5185:
    nop                                           ; $5185: $00
    rst $38                                       ; $5186: $ff
    ld e, h                                       ; $5187: $5c
    nop                                           ; $5188: $00
    ld [hl+], a                                   ; $5189: $22
    inc bc                                        ; $518a: $03
    and d                                         ; $518b: $a2
    ld b, [hl]                                    ; $518c: $46
    ld b, b                                       ; $518d: $40
    dec [hl]                                      ; $518e: $35
    add b                                         ; $518f: $80
    db $e4                                        ; $5190: $e4
    and c                                         ; $5191: $a1
    jp $f8a4                                      ; $5192: $c3 $a4 $f8


    nop                                           ; $5195: $00
    rst $38                                       ; $5196: $ff
    nop                                           ; $5197: $00
    call nz, $c102                                ; $5198: $c4 $02 $c1
    or d                                          ; $519b: $b2
    ld b, [hl]                                    ; $519c: $46
    ld b, l                                       ; $519d: $45
    ld a, [hl-]                                   ; $519e: $3a
    ld l, e                                       ; $519f: $6b
    ld a, [de]                                    ; $51a0: $1a
    pop bc                                        ; $51a1: $c1
    ld b, c                                       ; $51a2: $41
    ld [hl], $01                                  ; $51a3: $36 $01
    ld h, b                                       ; $51a5: $60
    push af                                       ; $51a6: $f5
    or $6d                                        ; $51a7: $f6 $6d
    pop hl                                        ; $51a9: $e1
    nop                                           ; $51aa: $00
    rst $38                                       ; $51ab: $ff
    nop                                           ; $51ac: $00
    inc hl                                        ; $51ad: $23
    inc a                                         ; $51ae: $3c
    add d                                         ; $51af: $82
    ld b, d                                       ; $51b0: $42
    adc l                                         ; $51b1: $8d
    add b                                         ; $51b2: $80
    add hl, sp                                    ; $51b3: $39
    ld l, [hl]                                    ; $51b4: $6e
    ld l, a                                       ; $51b5: $6f
    ld l, h                                       ; $51b6: $6c
    nop                                           ; $51b7: $00
    add b                                         ; $51b8: $80
    ld b, b                                       ; $51b9: $40
    jp nz, $f086                                  ; $51ba: $c2 $86 $f0

    ld b, b                                       ; $51bd: $40
    push af                                       ; $51be: $f5
    or $00                                        ; $51bf: $f6 $00
    rst $38                                       ; $51c1: $ff
    halt                                          ; $51c2: $76
    jr nz, jr_06c_5185                            ; $51c3: $20 $c0

    ld hl, $2181                                  ; $51c5: $21 $81 $21
    or d                                          ; $51c8: $b2
    inc a                                         ; $51c9: $3c
    add c                                         ; $51ca: $81
    add b                                         ; $51cb: $80
    add b                                         ; $51cc: $80
    ld b, b                                       ; $51cd: $40
    dec [hl]                                      ; $51ce: $35
    ld l, d                                       ; $51cf: $6a
    ld a, [hl-]                                   ; $51d0: $3a
    ld b, l                                       ; $51d1: $45
    jp nz, Jump_000_0065                          ; $51d2: $c2 $65 $00

    rst $38                                       ; $51d5: $ff
    ld e, b                                       ; $51d6: $58
    pop af                                        ; $51d7: $f1
    nop                                           ; $51d8: $00
    inc l                                         ; $51d9: $2c
    ld hl, $c3ff                                  ; $51da: $21 $ff $c3
    or d                                          ; $51dd: $b2
    or d                                          ; $51de: $b2
    cp [hl]                                       ; $51df: $be
    pop bc                                        ; $51e0: $c1
    ld l, d                                       ; $51e1: $6a
    add b                                         ; $51e2: $80
    ld b, b                                       ; $51e3: $40
    nop                                           ; $51e4: $00
    rst $38                                       ; $51e5: $ff

jr_06c_51e6:
    and c                                         ; $51e6: $a1
    nop                                           ; $51e7: $00
    ld a, a                                       ; $51e8: $7f
    nop                                           ; $51e9: $00
    and a                                         ; $51ea: $a7
    ld d, h                                       ; $51eb: $54
    ld h, c                                       ; $51ec: $61
    cp a                                          ; $51ed: $bf
    ld [c], a                                     ; $51ee: $e2
    ret nz                                        ; $51ef: $c0

jr_06c_51f0:
    ld [c], a                                     ; $51f0: $e2
    ccf                                           ; $51f1: $3f
    ld b, b                                       ; $51f2: $40
    cp a                                          ; $51f3: $bf
    and b                                         ; $51f4: $a0
    inc a                                         ; $51f5: $3c
    nop                                           ; $51f6: $00
    ld a, a                                       ; $51f7: $7f
    nop                                           ; $51f8: $00
    jr z, jr_06c_51f0                             ; $51f9: $28 $f5

    or $d0                                        ; $51fb: $f6 $d0
    pop de                                        ; $51fd: $d1
    add b                                         ; $51fe: $80
    ld h, c                                       ; $51ff: $61
    ld a, [hl]                                    ; $5200: $7e
    and d                                         ; $5201: $a2
    rlca                                          ; $5202: $07
    dec [hl]                                      ; $5203: $35
    dec [hl]                                      ; $5204: $35
    ld b, b                                       ; $5205: $40
    ld a, l                                       ; $5206: $7d
    jr nz, jr_06c_5236                            ; $5207: $20 $2d

    jr nz, jr_06c_520b                            ; $5209: $20 $00

jr_06c_520b:
    rst $38                                       ; $520b: $ff
    halt                                          ; $520c: $76
    inc bc                                        ; $520d: $03
    dec sp                                        ; $520e: $3b
    add c                                         ; $520f: $81
    inc l                                         ; $5210: $2c
    ld b, c                                       ; $5211: $41
    ld b, c                                       ; $5212: $41
    cp [hl]                                       ; $5213: $be
    add d                                         ; $5214: $82
    ld [hl], l                                    ; $5215: $75
    ld h, [hl]                                    ; $5216: $66
    ccf                                           ; $5217: $3f
    pop hl                                        ; $5218: $e1
    and c                                         ; $5219: $a1
    cp $23                                        ; $521a: $fe $23
    nop                                           ; $521c: $00
    rst $38                                       ; $521d: $ff
    jr nc, jr_06c_5220                            ; $521e: $30 $00

jr_06c_5220:
    ld [hl+], a                                   ; $5220: $22
    rst $08                                       ; $5221: $cf
    and e                                         ; $5222: $a3
    ld a, $80                                     ; $5223: $3e $80
    ld a, [hl]                                    ; $5225: $7e
    add d                                         ; $5226: $82
    inc a                                         ; $5227: $3c
    ld b, h                                       ; $5228: $44
    cp $81                                        ; $5229: $fe $81
    or b                                          ; $522b: $b0
    jr nz, jr_06c_51e6                            ; $522c: $20 $b8

    nop                                           ; $522e: $00
    rst $38                                       ; $522f: $ff
    pop af                                        ; $5230: $f1
    dec h                                         ; $5231: $25
    adc [hl]                                      ; $5232: $8e
    ld [bc], a                                    ; $5233: $02
    sbc [hl]                                      ; $5234: $9e
    ld b, [hl]                                    ; $5235: $46

jr_06c_5236:
    add hl, sp                                    ; $5236: $39
    add b                                         ; $5237: $80
    ld b, b                                       ; $5238: $40
    ld l, a                                       ; $5239: $6f
    ld bc, $006e                                  ; $523a: $01 $6e $00
    ld h, b                                       ; $523d: $60
    ld bc, $0063                                  ; $523e: $01 $63 $00
    rst $38                                       ; $5241: $ff
    nop                                           ; $5242: $00
    ld h, [hl]                                    ; $5243: $66
    dec a                                         ; $5244: $3d
    and c                                         ; $5245: $a1
    ret nz                                        ; $5246: $c0

    ldh [$80], a                                  ; $5247: $e0 $80
    ld b, c                                       ; $5249: $41
    ldh [rSCY], a                                 ; $524a: $e0 $42
    ld b, b                                       ; $524c: $40
    ld bc, $0064                                  ; $524d: $01 $64 $00
    rst $38                                       ; $5250: $ff
    nop                                           ; $5251: $00
    ld h, $3d                                     ; $5252: $26 $3d
    and e                                         ; $5254: $a3
    ld b, l                                       ; $5255: $45
    ld a, [hl-]                                   ; $5256: $3a
    dec [hl]                                      ; $5257: $35
    pop bc                                        ; $5258: $c1
    dec [hl]                                      ; $5259: $35
    ld b, d                                       ; $525a: $42
    ld b, b                                       ; $525b: $40
    ld bc, $0066                                  ; $525c: $01 $66 $00
    rst $38                                       ; $525f: $ff
    nop                                           ; $5260: $00
    ld b, l                                       ; $5261: $45
    ld b, b                                       ; $5262: $40
    ld b, e                                       ; $5263: $43
    ld b, [hl]                                    ; $5264: $46
    add hl, sp                                    ; $5265: $39
    ld c, $41                                     ; $5266: $0e $41
    ld b, b                                       ; $5268: $40
    add hl, sp                                    ; $5269: $39
    or d                                          ; $526a: $b2
    sbc [hl]                                      ; $526b: $9e
    or c                                          ; $526c: $b1
    ld [hl+], a                                   ; $526d: $22
    nop                                           ; $526e: $00
    cp a                                          ; $526f: $bf
    nop                                           ; $5270: $00
    jr z, jr_06c_52b3                             ; $5271: $28 $40

    ld b, b                                       ; $5273: $40
    ld a, [hl]                                    ; $5274: $7e
    cp l                                          ; $5275: $bd
    add b                                         ; $5276: $80
    ld b, [hl]                                    ; $5277: $46
    ld b, h                                       ; $5278: $44
    inc a                                         ; $5279: $3c
    dec [hl]                                      ; $527a: $35
    dec [hl]                                      ; $527b: $35
    ld a, [hl-]                                   ; $527c: $3a
    ld b, c                                       ; $527d: $41
    nop                                           ; $527e: $00
    ldh a, [rP1]                                  ; $527f: $f0 $00
    ld a, a                                       ; $5281: $7f
    nop                                           ; $5282: $00
    inc l                                         ; $5283: $2c
    inc a                                         ; $5284: $3c
    and e                                         ; $5285: $a3
    ccf                                           ; $5286: $3f
    pop hl                                        ; $5287: $e1
    dec sp                                        ; $5288: $3b
    ld a, [hl-]                                   ; $5289: $3a
    ld b, h                                       ; $528a: $44
    sbc [hl]                                      ; $528b: $9e
    add sp, $00                                   ; $528c: $e8 $00
    ld a, a                                       ; $528e: $7f
    nop                                           ; $528f: $00
    db $ed                                        ; $5290: $ed
    sub b                                         ; $5291: $90
    and d                                         ; $5292: $a2
    sbc [hl]                                      ; $5293: $9e
    cp h                                          ; $5294: $bc
    add b                                         ; $5295: $80
    ld [hl], $43                                  ; $5296: $36 $43
    ld b, e                                       ; $5298: $43
    ld h, b                                       ; $5299: $60
    cp a                                          ; $529a: $bf
    ld h, d                                       ; $529b: $62
    ld a, a                                       ; $529c: $7f
    add e                                         ; $529d: $83
    nop                                           ; $529e: $00
    rst $38                                       ; $529f: $ff
    nop                                           ; $52a0: $00
    inc h                                         ; $52a1: $24
    dec a                                         ; $52a2: $3d
    ld b, h                                       ; $52a3: $44
    ld b, [hl]                                    ; $52a4: $46

jr_06c_52a5:
    ld b, l                                       ; $52a5: $45
    ld [bc], a                                    ; $52a6: $02
    ld h, b                                       ; $52a7: $60
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    ld h, d                                       ; $52aa: $62
    ld b, c                                       ; $52ab: $41
    and c                                         ; $52ac: $a1
    nop                                           ; $52ad: $00
    rst $38                                       ; $52ae: $ff
    nop                                           ; $52af: $00
    jp hl                                         ; $52b0: $e9


    ld a, $a2                                     ; $52b1: $3e $a2

jr_06c_52b3:
    jp nz, $02e1                                  ; $52b3: $c2 $e1 $02

    ld [hl+], a                                   ; $52b6: $22
    ld b, c                                       ; $52b7: $41
    ld [bc], a                                    ; $52b8: $02
    ld [$ff00], sp                                ; $52b9: $08 $00 $ff
    nop                                           ; $52bc: $00
    push hl                                       ; $52bd: $e5
    ld a, h                                       ; $52be: $7c
    ld b, e                                       ; $52bf: $43
    sbc [hl]                                      ; $52c0: $9e
    add [hl]                                      ; $52c1: $86
    ld bc, $c079                                  ; $52c2: $01 $79 $c0
    ld a, $43                                     ; $52c5: $3e $43
    add hl, hl                                    ; $52c7: $29
    ld h, b                                       ; $52c8: $60
    nop                                           ; $52c9: $00
    nop                                           ; $52ca: $00
    rst $38                                       ; $52cb: $ff
    nop                                           ; $52cc: $00
    push hl                                       ; $52cd: $e5
    dec c                                         ; $52ce: $0d
    ld h, d                                       ; $52cf: $62
    ret nz                                        ; $52d0: $c0

    db $e3                                        ; $52d1: $e3
    ld a, [hl]                                    ; $52d2: $7e
    db $e4                                        ; $52d3: $e4
    inc l                                         ; $52d4: $2c
    ld bc, $ff00                                  ; $52d5: $01 $00 $ff
    nop                                           ; $52d8: $00
    push hl                                       ; $52d9: $e5
    inc b                                         ; $52da: $04
    ld a, $a3                                     ; $52db: $3e $a3
    pop bc                                        ; $52dd: $c1
    push hl                                       ; $52de: $e5
    ld b, [hl]                                    ; $52df: $46
    cp h                                          ; $52e0: $bc
    and c                                         ; $52e1: $a1
    inc l                                         ; $52e2: $2c
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    rst $38                                       ; $52e5: $ff
    nop                                           ; $52e6: $00
    push hl                                       ; $52e7: $e5

Jump_06c_52e8:
    ld a, h                                       ; $52e8: $7c
    ld b, h                                       ; $52e9: $44
    daa                                           ; $52ea: $27
    ld b, e                                       ; $52eb: $43

jr_06c_52ec:
    ld b, c                                       ; $52ec: $41
    ld b, e                                       ; $52ed: $43
    db $fd                                        ; $52ee: $fd
    ldh [$bd], a                                  ; $52ef: $e0 $bd
    jr nz, jr_06c_52a5                            ; $52f1: $20 $b2

    ld a, [hl]                                    ; $52f3: $7e
    add c                                         ; $52f4: $81
    nop                                           ; $52f5: $00
    rst $38                                       ; $52f6: $ff
    ld a, h                                       ; $52f7: $7c
    nop                                           ; $52f8: $00
    add $7d                                       ; $52f9: $c6 $7d
    ld h, d                                       ; $52fb: $62
    ld b, l                                       ; $52fc: $45
    ld [hl], $3b                                  ; $52fd: $36 $3b
    dec [hl]                                      ; $52ff: $35
    dec sp                                        ; $5300: $3b
    db $fd                                        ; $5301: $fd
    ldh [rTAC], a                                 ; $5302: $e0 $07
    ld [hl], $45                                  ; $5304: $36 $45
    or d                                          ; $5306: $b2
    ld a, e                                       ; $5307: $7b
    and b                                         ; $5308: $a0
    cp h                                          ; $5309: $bc
    jr nz, jr_06c_530c                            ; $530a: $20 $00

jr_06c_530c:
    rst $38                                       ; $530c: $ff
    ret c                                         ; $530d: $d8

    and e                                         ; $530e: $a3
    ld a, [hl]                                    ; $530f: $7e
    ld [bc], a                                    ; $5310: $02
    dec l                                         ; $5311: $2d
    sbc [hl]                                      ; $5312: $9e
    add c                                         ; $5313: $81
    and b                                         ; $5314: $a0
    and h                                         ; $5315: $a4
    ld h, h                                       ; $5316: $64

jr_06c_5317:
    rst $38                                       ; $5317: $ff
    ldh [$a5], a                                  ; $5318: $e0 $a5
    db $fc                                        ; $531a: $fc
    add e                                         ; $531b: $83
    cp h                                          ; $531c: $bc
    jr nz, jr_06c_5317                            ; $531d: $20 $f8

    nop                                           ; $531f: $00
    rst $38                                       ; $5320: $ff
    nop                                           ; $5321: $00
    add e                                         ; $5322: $83
    ld a, l                                       ; $5323: $7d
    ld h, d                                       ; $5324: $62
    and c                                         ; $5325: $a1
    ld b, [hl]                                    ; $5326: $46
    ld b, d                                       ; $5327: $42
    dec [hl]                                      ; $5328: $35
    ld l, c                                       ; $5329: $69
    ccf                                           ; $532a: $3f
    and e                                         ; $532b: $a3
    dec [hl]                                      ; $532c: $35
    dec [hl]                                      ; $532d: $35
    and e                                         ; $532e: $a3
    ld l, d                                       ; $532f: $6a
    dec [hl]                                      ; $5330: $35
    ld a, [hl]                                    ; $5331: $7e
    add l                                         ; $5332: $85
    ld a, e                                       ; $5333: $7b
    inc l                                         ; $5334: $2c
    inc c                                         ; $5335: $0c
    nop                                           ; $5336: $00
    rst $10                                       ; $5337: $d7
    pop de                                        ; $5338: $d1
    ld bc, $b29e                                  ; $5339: $01 $9e $b2
    ret nz                                        ; $533c: $c0

    ldh [$3d], a                                  ; $533d: $e0 $3d
    jr nz, @-$41                                  ; $533f: $20 $bd

    ld b, b                                       ; $5341: $40
    cp l                                          ; $5342: $bd
    add b                                         ; $5343: $80
    ldh a, [$bc]                                  ; $5344: $f0 $bc
    inc h                                         ; $5346: $24
    ld a, e                                       ; $5347: $7b
    xor d                                         ; $5348: $aa
    nop                                           ; $5349: $00
    cp b                                          ; $534a: $b8
    inc a                                         ; $534b: $3c
    jr nz, jr_06c_52ec                            ; $534c: $20 $9e

    or d                                          ; $534e: $b2
    ld b, h                                       ; $534f: $44
    inc a                                         ; $5350: $3c
    inc de                                        ; $5351: $13
    ld l, e                                       ; $5352: $6b
    ld [hl], c                                    ; $5353: $71
    rst $38                                       ; $5354: $ff
    ldh [$7e], a                                  ; $5355: $e0 $7e
    ld h, b                                       ; $5357: $60
    and c                                         ; $5358: $a1
    ld a, l                                       ; $5359: $7d
    add e                                         ; $535a: $83
    nop                                           ; $535b: $00
    rst $38                                       ; $535c: $ff
    nop                                           ; $535d: $00
    push hl                                       ; $535e: $e5
    jp nz, $423d                                  ; $535f: $c2 $3d $42

    or d                                          ; $5362: $b2
    ret nz                                        ; $5363: $c0

    push bc                                       ; $5364: $c5
    cp [hl]                                       ; $5365: $be
    inc hl                                        ; $5366: $23
    nop                                           ; $5367: $00
    cp a                                          ; $5368: $bf
    nop                                           ; $5369: $00
    rst $20                                       ; $536a: $e7
    jp c, Jump_000_00db                           ; $536b: $da $db $00

    ld a, [hl]                                    ; $536e: $7e
    ld b, c                                       ; $536f: $41
    ld b, b                                       ; $5370: $40
    call nz, $81bf                                ; $5371: $c4 $bf $81
    ccf                                           ; $5374: $3f
    and b                                         ; $5375: $a0
    nop                                           ; $5376: $00
    cp a                                          ; $5377: $bf
    nop                                           ; $5378: $00
    and [hl]                                      ; $5379: $a6
    pop de                                        ; $537a: $d1
    ld h, b                                       ; $537b: $60
    ld c, l                                       ; $537c: $4d
    nop                                           ; $537d: $00
    dec bc                                        ; $537e: $0b
    sbc a                                         ; $537f: $9f
    sbc l                                         ; $5380: $9d
    rst $38                                       ; $5381: $ff
    db $e3                                        ; $5382: $e3
    sbc a                                         ; $5383: $9f
    ret nz                                        ; $5384: $c0

    ld h, e                                       ; $5385: $63
    nop                                           ; $5386: $00
    rst $18                                       ; $5387: $df
    nop                                           ; $5388: $00
    add a                                         ; $5389: $87
    ld c, l                                       ; $538a: $4d
    ld b, $c0                                     ; $538b: $06 $c0
    inc sp                                        ; $538d: $33
    add l                                         ; $538e: $85
    add l                                         ; $538f: $85
    db $ec                                        ; $5390: $ec
    nop                                           ; $5391: $00
    sbc l                                         ; $5392: $9d
    ld c, l                                       ; $5393: $4d
    inc bc                                        ; $5394: $03
    ld c, b                                       ; $5395: $48
    ld h, c                                       ; $5396: $61
    or l                                          ; $5397: $b5
    ld b, c                                       ; $5398: $41
    jp c, Jump_000_00db                           ; $5399: $da $db $00

    add l                                         ; $539c: $85
    db $ed                                        ; $539d: $ed
    nop                                           ; $539e: $00
    ld b, d                                       ; $539f: $42
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    pop bc                                        ; $53a3: $c1
    nop                                           ; $53a4: $00
    rst $38                                       ; $53a5: $ff
    rst $38                                       ; $53a6: $ff
    rst $38                                       ; $53a7: $ff
    rst $38                                       ; $53a8: $ff
    rst $38                                       ; $53a9: $ff
    rst $38                                       ; $53aa: $ff
    rst $38                                       ; $53ab: $ff
    rst $38                                       ; $53ac: $ff
    rst $38                                       ; $53ad: $ff
    rst $38                                       ; $53ae: $ff
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    dec c                                         ; $53b1: $0d
    add b                                         ; $53b2: $80
    cp $e0                                        ; $53b3: $fe $e0
    nop                                           ; $53b5: $00
    ld b, b                                       ; $53b6: $40
    ret c                                         ; $53b7: $d8

    push hl                                       ; $53b8: $e5
    rst $30                                       ; $53b9: $f7
    and $ff                                       ; $53ba: $e6 $ff
    rst $38                                       ; $53bc: $ff
    rst $38                                       ; $53bd: $ff
    rst $30                                       ; $53be: $f7
    nop                                           ; $53bf: $00
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00

Call_06c_53c2:
    ld bc, $2500                                  ; $53c2: $01 $00 $25
    ld a, [bc]                                    ; $53c5: $0a
    ld bc, $2501                                  ; $53c6: $01 $01 $25
    dec bc                                        ; $53c9: $0b
    ld bc, $2002                                  ; $53ca: $01 $02 $20
    rrca                                          ; $53cd: $0f
    ld bc, $2003                                  ; $53ce: $01 $03 $20
    db $10                                        ; $53d1: $10
    ld bc, $2404                                  ; $53d2: $01 $04 $24
    db $10                                        ; $53d5: $10
    ld bc, $2505                                  ; $53d6: $01 $05 $25
    db $10                                        ; $53d9: $10
    ld bc, $2706                                  ; $53da: $01 $06 $27
    db $10                                        ; $53dd: $10
    ld bc, $2007                                  ; $53de: $01 $07 $20
    ld de, $0802                                  ; $53e1: $11 $02 $08
    ld [hl+], a                                   ; $53e4: $22
    ld de, $0901                                  ; $53e5: $11 $01 $09
    dec h                                         ; $53e8: $25
    ld de, $0a01                                  ; $53e9: $11 $01 $0a
    jr z, @+$13                                   ; $53ec: $28 $11

    ld bc, $200b                                  ; $53ee: $01 $0b $20
    ld [de], a                                    ; $53f1: $12
    ld bc, $250c                                  ; $53f2: $01 $0c $25
    ld [de], a                                    ; $53f5: $12
    ld bc, $280d                                  ; $53f6: $01 $0d $28
    ld [de], a                                    ; $53f9: $12
    ld bc, $200e                                  ; $53fa: $01 $0e $20
    inc de                                        ; $53fd: $13
    ld bc, $250f                                  ; $53fe: $01 $0f $25
    inc de                                        ; $5401: $13
    ld bc, $2810                                  ; $5402: $01 $10 $28
    inc de                                        ; $5405: $13
    ld bc, $2911                                  ; $5406: $01 $11 $29
    inc de                                        ; $5409: $13
    ld bc, $1f12                                  ; $540a: $01 $12 $1f
    inc d                                         ; $540d: $14
    ld bc, $2013                                  ; $540e: $01 $13 $20
    inc d                                         ; $5411: $14
    ld bc, $2714                                  ; $5412: $01 $14 $27
    inc d                                         ; $5415: $14
    ld bc, $2815                                  ; $5416: $01 $15 $28
    inc d                                         ; $5419: $14
    ld bc, $1f16                                  ; $541a: $01 $16 $1f
    dec d                                         ; $541d: $15
    ld bc, $2217                                  ; $541e: $01 $17 $22
    dec d                                         ; $5421: $15
    ld bc, $2718                                  ; $5422: $01 $18 $27
    dec d                                         ; $5425: $15
    ld [bc], a                                    ; $5426: $02
    add hl, de                                    ; $5427: $19
    ld hl, $0116                                  ; $5428: $21 $16 $01
    ld a, [de]                                    ; $542b: $1a
    ld h, $16                                     ; $542c: $26 $16
    ld bc, $271b                                  ; $542e: $01 $1b $27
    ld d, $01                                     ; $5431: $16 $01
    inc e                                         ; $5433: $1c
    rra                                           ; $5434: $1f
    rla                                           ; $5435: $17
    ld [bc], a                                    ; $5436: $02
    dec e                                         ; $5437: $1d
    jr nz, jr_06c_5451                            ; $5438: $20 $17

    ld bc, $251e                                  ; $543a: $01 $1e $25
    rla                                           ; $543d: $17
    ld bc, $261f                                  ; $543e: $01 $1f $26
    rla                                           ; $5441: $17
    ld [bc], a                                    ; $5442: $02
    jr nz, @+$20                                  ; $5443: $20 $1e

    jr @+$03                                      ; $5445: $18 $01

    ld hl, $1825                                  ; $5447: $21 $25 $18
    ld bc, $2622                                  ; $544a: $01 $22 $26
    jr jr_06c_5450                                ; $544d: $18 $01

    inc hl                                        ; $544f: $23

jr_06c_5450:
    dec h                                         ; $5450: $25

jr_06c_5451:
    add hl, de                                    ; $5451: $19
    ld bc, $1e24                                  ; $5452: $01 $24 $1e
    ld a, [de]                                    ; $5455: $1a
    ld bc, $1e25                                  ; $5456: $01 $25 $1e
    dec de                                        ; $5459: $1b
    ld bc, $1e26                                  ; $545a: $01 $26 $1e
    inc e                                         ; $545d: $1c
    ld bc, $2427                                  ; $545e: $01 $27 $24
    dec e                                         ; $5461: $1d
    ld bc, $2428                                  ; $5462: $01 $28 $24
    ld e, $01                                     ; $5465: $1e $01
    add hl, hl                                    ; $5467: $29
    inc h                                         ; $5468: $24
    jr nz, jr_06c_546c                            ; $5469: $20 $01

    ld a, [hl+]                                   ; $546b: $2a

jr_06c_546c:
    dec de                                        ; $546c: $1b
    ld hl, $2b01                                  ; $546d: $21 $01 $2b
    dec de                                        ; $5470: $1b
    ld [hl+], a                                   ; $5471: $22
    ld bc, $1c2c                                  ; $5472: $01 $2c $1c
    inc hl                                        ; $5475: $23
    ld bc, $1e2d                                  ; $5476: $01 $2d $1e
    inc hl                                        ; $5479: $23
    ld bc, $1e2e                                  ; $547a: $01 $2e $1e
    inc h                                         ; $547d: $24
    ld bc, $1f2f                                  ; $547e: $01 $2f $1f
    inc h                                         ; $5481: $24
    ld bc, $1f30                                  ; $5482: $01 $30 $1f
    dec h                                         ; $5485: $25
    ld bc, $2031                                  ; $5486: $01 $31 $20
    dec h                                         ; $5489: $25
    ld bc, $1f32                                  ; $548a: $01 $32 $1f
    ld h, $01                                     ; $548d: $26 $01
    inc sp                                        ; $548f: $33
    jr nz, jr_06c_54b8                            ; $5490: $20 $26

    ld bc, $2034                                  ; $5492: $01 $34 $20
    daa                                           ; $5495: $27
    ld bc, $2735                                  ; $5496: $01 $35 $27
    add hl, hl                                    ; $5499: $29
    ld bc, $2636                                  ; $549a: $01 $36 $26
    ld a, [hl+]                                   ; $549d: $2a
    ld bc, $2737                                  ; $549e: $01 $37 $27
    ld a, [hl+]                                   ; $54a1: $2a
    ld bc, $2538                                  ; $54a2: $01 $38 $25
    dec hl                                        ; $54a5: $2b
    ld bc, $2639                                  ; $54a6: $01 $39 $26
    dec hl                                        ; $54a9: $2b
    ld bc, $1f3a                                  ; $54aa: $01 $3a $1f
    inc l                                         ; $54ad: $2c
    ld bc, $263b                                  ; $54ae: $01 $3b $26
    inc l                                         ; $54b1: $2c
    ld bc, $213c                                  ; $54b2: $01 $3c $21
    ld sp, $3d01                                  ; $54b5: $31 $01 $3d

jr_06c_54b8:
    ld hl, $0132                                  ; $54b8: $21 $32 $01
    ld a, $22                                     ; $54bb: $3e $22
    ld [hl-], a                                   ; $54bd: $32
    ld bc, $263f                                  ; $54be: $01 $3f $26
    ld [hl-], a                                   ; $54c1: $32
    ld bc, $2140                                  ; $54c2: $01 $40 $21
    inc sp                                        ; $54c5: $33
    ld bc, $2241                                  ; $54c6: $01 $41 $22
    inc sp                                        ; $54c9: $33
    ld bc, $2142                                  ; $54ca: $01 $42 $21
    inc [hl]                                      ; $54cd: $34
    ld bc, $2a43                                  ; $54ce: $01 $43 $2a
    inc [hl]                                      ; $54d1: $34
    ld bc, $2b44                                  ; $54d2: $01 $44 $2b
    dec [hl]                                      ; $54d5: $35
    ld bc, $2a45                                  ; $54d6: $01 $45 $2a
    ld [hl], $01                                  ; $54d9: $36 $01
    ld b, [hl]                                    ; $54db: $46
    dec hl                                        ; $54dc: $2b
    ld [hl], $01                                  ; $54dd: $36 $01
    ld b, a                                       ; $54df: $47
    add hl, hl                                    ; $54e0: $29
    scf                                           ; $54e1: $37
    ld bc, $2a48                                  ; $54e2: $01 $48 $2a
    scf                                           ; $54e5: $37
    ld bc, $2949                                  ; $54e6: $01 $49 $29
    jr c, jr_06c_54ec                             ; $54e9: $38 $01

    ld c, d                                       ; $54eb: $4a

jr_06c_54ec:
    rra                                           ; $54ec: $1f
    add hl, sp                                    ; $54ed: $39
    ld bc, $294b                                  ; $54ee: $01 $4b $29
    add hl, sp                                    ; $54f1: $39
    ld bc, $1f4c                                  ; $54f2: $01 $4c $1f
    ld a, [hl-]                                   ; $54f5: $3a
    ld bc, $204d                                  ; $54f6: $01 $4d $20
    dec sp                                        ; $54f9: $3b
    rst $38                                       ; $54fa: $ff
    rst $38                                       ; $54fb: $ff
    rst $38                                       ; $54fc: $ff
    dec b                                         ; $54fd: $05
    ld d, l                                       ; $54fe: $55
    ld [$ac58], sp                                ; $54ff: $08 $58 $ac
    ld e, e                                       ; $5502: $5b
    bit 3, e                                      ; $5503: $cb $5b
    ccf                                           ; $5505: $3f
    ld c, $0e                                     ; $5506: $0e $0e
    dec c                                         ; $5508: $0d
    dec c                                         ; $5509: $0d
    dec c                                         ; $550a: $0d
    ld c, $ff                                     ; $550b: $0e $ff
    db $e3                                        ; $550d: $e3
    or $ff                                        ; $550e: $f6 $ff
    nop                                           ; $5510: $00
    db $ec                                        ; $5511: $ec
    rst $28                                       ; $5512: $ef
    db $dd                                        ; $5513: $dd
    pop hl                                        ; $5514: $e1
    rst $10                                       ; $5515: $d7
    db $e3                                        ; $5516: $e3
    or $ff                                        ; $5517: $f6 $ff
    or $f6                                        ; $5519: $f6 $f6
    sbc c                                         ; $551b: $99
    rst $38                                       ; $551c: $ff
    or $f9                                        ; $551d: $f6 $f9
    sbc c                                         ; $551f: $99
    rst $38                                       ; $5520: $ff
    nop                                           ; $5521: $00
    add l                                         ; $5522: $85
    rst $38                                       ; $5523: $ff
    or $ff                                        ; $5524: $f6 $ff
    nop                                           ; $5526: $00
    rst $38                                       ; $5527: $ff
    or $ff                                        ; $5528: $f6 $ff
    ld a, e                                       ; $552a: $7b
    rst $38                                       ; $552b: $ff
    or $ff                                        ; $552c: $f6 $ff
    nop                                           ; $552e: $00
    ld a, [$e7cb]                                 ; $552f: $fa $cb $e7
    nop                                           ; $5532: $00
    add l                                         ; $5533: $85
    rst $38                                       ; $5534: $ff
    and e                                         ; $5535: $a3
    db $fc                                        ; $5536: $fc
    add d                                         ; $5537: $82
    db $e4                                        ; $5538: $e4
    nop                                           ; $5539: $00
    rst $38                                       ; $553a: $ff
    sbc c                                         ; $553b: $99
    di                                            ; $553c: $f3
    ld b, e                                       ; $553d: $43
    ld [c], a                                     ; $553e: $e2
    ld a, e                                       ; $553f: $7b
    rst $38                                       ; $5540: $ff
    ld e, $f0                                     ; $5541: $1e $f0
    rra                                           ; $5543: $1f
    ld c, l                                       ; $5544: $4d
    ld c, l                                       ; $5545: $4d
    dec l                                         ; $5546: $2d
    dec l                                         ; $5547: $2d
    dec l                                         ; $5548: $2d
    and l                                         ; $5549: $a5
    jp $ff00                                      ; $554a: $c3 $00 $ff


    and e                                         ; $554d: $a3
    ldh a, [$03]                                  ; $554e: $f0 $03
    ld c, l                                       ; $5550: $4d
    ld c, l                                       ; $5551: $4d
    ld b, b                                       ; $5552: $40
    db $e4                                        ; $5553: $e4
    ld [c], a                                     ; $5554: $e2
    cp a                                          ; $5555: $bf
    ld a, [bc]                                    ; $5556: $0a
    ld a, [c]                                     ; $5557: $f2
    ld b, a                                       ; $5558: $47
    ld [c], a                                     ; $5559: $e2
    or $e9                                        ; $555a: $f6 $e9
    nop                                           ; $555c: $00
    rst $38                                       ; $555d: $ff
    add b                                         ; $555e: $80
    ld a, [bc]                                    ; $555f: $0a
    jp hl                                         ; $5560: $e9


    ret nz                                        ; $5561: $c0

    push hl                                       ; $5562: $e5
    add hl, sp                                    ; $5563: $39
    ldh [$c0], a                                  ; $5564: $e0 $c0
    add sp, $7b                                   ; $5566: $e8 $7b
    rst $38                                       ; $5568: $ff
    ret c                                         ; $5569: $d8

    call nz, $e57c                                ; $556a: $c4 $7c $e5
    ld l, l                                       ; $556d: $6d
    add e                                         ; $556e: $83
    ld c, e                                       ; $556f: $4b
    dec bc                                        ; $5570: $0b
    cp a                                          ; $5571: $bf
    ldh [$32], a                                  ; $5572: $e0 $32
    ldh [$33], a                                  ; $5574: $e0 $33
    db $ec                                        ; $5576: $ec
    nop                                           ; $5577: $00
    db $fc                                        ; $5578: $fc
    dec a                                         ; $5579: $3d
    db $e4                                        ; $557a: $e4
    ld c, l                                       ; $557b: $4d
    inc bc                                        ; $557c: $03
    ld l, l                                       ; $557d: $6d
    ld c, e                                       ; $557e: $4b
    rst $38                                       ; $557f: $ff
    ldh [$7e], a                                  ; $5580: $e0 $7e
    pop hl                                        ; $5582: $e1
    inc sp                                        ; $5583: $33
    db $e4                                        ; $5584: $e4
    add l                                         ; $5585: $85
    rst $38                                       ; $5586: $ff
    inc d                                         ; $5587: $14
    push bc                                       ; $5588: $c5
    add h                                         ; $5589: $84
    db $e3                                        ; $558a: $e3
    dec b                                         ; $558b: $05
    dec bc                                        ; $558c: $0b
    ret nz                                        ; $558d: $c0

    pop hl                                        ; $558e: $e1
    ld c, e                                       ; $558f: $4b
    ret nz                                        ; $5590: $c0

    rst $20                                       ; $5591: $e7
    or $d6                                        ; $5592: $f6 $d6
    ld a, [bc]                                    ; $5594: $0a
    call z, $c1cf                                 ; $5595: $cc $cf $c1
    add h                                         ; $5598: $84
    ldh [rIF], a                                  ; $5599: $e0 $0f
    dec c                                         ; $559b: $0d
    dec bc                                        ; $559c: $0b
    ld c, e                                       ; $559d: $4b
    dec bc                                        ; $559e: $0b
    db $fc                                        ; $559f: $fc
    pop bc                                        ; $55a0: $c1
    ld a, a                                       ; $55a1: $7f

Jump_06c_55a2:
    pop hl                                        ; $55a2: $e1
    or h                                          ; $55a3: $b4
    and [hl]                                      ; $55a4: $a6
    ld a, e                                       ; $55a5: $7b
    rst $38                                       ; $55a6: $ff
    inc b                                         ; $55a7: $04
    inc d                                         ; $55a8: $14
    jp $e0c1                                      ; $55a9: $c3 $c1 $e0


    dec c                                         ; $55ac: $0d
    pop bc                                        ; $55ad: $c1
    pop hl                                        ; $55ae: $e1
    ld sp, hl                                     ; $55af: $f9
    ldh [$bb], a                                  ; $55b0: $e0 $bb
    jp nz, $bdf6                                  ; $55b2: $c2 $f6 $bd

    nop                                           ; $55b5: $00
    db $ed                                        ; $55b6: $ed
    ld [$e0c1], sp                                ; $55b7: $08 $c1 $e0
    cp h                                          ; $55ba: $bc
    pop hl                                        ; $55bb: $e1
    ld sp, hl                                     ; $55bc: $f9
    pop hl                                        ; $55bd: $e1
    dec c                                         ; $55be: $0d
    db $fc                                        ; $55bf: $fc
    push bc                                       ; $55c0: $c5
    add l                                         ; $55c1: $85
    rst $38                                       ; $55c2: $ff
    nop                                           ; $55c3: $00
    rst $00                                       ; $55c4: $c7
    add b                                         ; $55c5: $80
    pop hl                                        ; $55c6: $e1
    db $10                                        ; $55c7: $10
    add e                                         ; $55c8: $83
    ldh [$c0], a                                  ; $55c9: $e0 $c0
    ld [c], a                                     ; $55cb: $e2
    inc a                                         ; $55cc: $3c
    db $e3                                        ; $55cd: $e3
    xor e                                         ; $55ce: $ab
    and c                                         ; $55cf: $a1
    ld c, l                                       ; $55d0: $4d
    nop                                           ; $55d1: $00
    rst $38                                       ; $55d2: $ff
    ld b, h                                       ; $55d3: $44
    and c                                         ; $55d4: $a1
    add b                                         ; $55d5: $80
    and b                                         ; $55d6: $a0
    ld a, c                                       ; $55d7: $79
    dec l                                         ; $55d8: $2d
    inc b                                         ; $55d9: $04
    ldh [rSB], a                                  ; $55da: $e0 $01
    ld [c], a                                     ; $55dc: $e2
    dec c                                         ; $55dd: $0d
    dec bc                                        ; $55de: $0b
    dec bc                                        ; $55df: $0b
    dec hl                                        ; $55e0: $2b
    ei                                            ; $55e1: $fb
    add $ec                                       ; $55e2: $c6 $ec
    nop                                           ; $55e4: $00
    rst $38                                       ; $55e5: $ff
    cp a                                          ; $55e6: $bf
    add $4b                                       ; $55e7: $c6 $4b
    ld c, e                                       ; $55e9: $4b
    add c                                         ; $55ea: $81
    ret nz                                        ; $55eb: $c0

    dec c                                         ; $55ec: $0d
    dec c                                         ; $55ed: $0d
    dec l                                         ; $55ee: $2d
    ld a, [de]                                    ; $55ef: $1a
    ld a, [$2bc0]                                 ; $55f0: $fa $c0 $2b
    cp c                                          ; $55f3: $b9
    ret nz                                        ; $55f4: $c0

    ld c, l                                       ; $55f5: $4d
    dec l                                         ; $55f6: $2d
    or l                                          ; $55f7: $b5
    and e                                         ; $55f8: $a3
    nop                                           ; $55f9: $00
    rst $38                                       ; $55fa: $ff
    ret nz                                        ; $55fb: $c0

    rst $20                                       ; $55fc: $e7
    nop                                           ; $55fd: $00

jr_06c_55fe:
    ccf                                           ; $55fe: $3f
    pop bc                                        ; $55ff: $c1
    push af                                       ; $5600: $f5
    pop bc                                        ; $5601: $c1
    ld a, [hl]                                    ; $5602: $7e
    ld [c], a                                     ; $5603: $e2
    or $a2                                        ; $5604: $f6 $a2
    ld d, e                                       ; $5606: $53
    ld [hl], h                                    ; $5607: $74
    nop                                           ; $5608: $00
    or b                                          ; $5609: $b0
    ccf                                           ; $560a: $3f
    ldh [$c8], a                                  ; $560b: $e0 $c8
    pop hl                                        ; $560d: $e1
    ld l, e                                       ; $560e: $6b
    ld a, [bc]                                    ; $560f: $0a
    ld a, [hl+]                                   ; $5610: $2a
    cp b                                          ; $5611: $b8
    jp nz, $ae6b                                  ; $5612: $c2 $6b $ae

    pop bc                                        ; $5615: $c1
    ld l, e                                       ; $5616: $6b
    dec l                                         ; $5617: $2d
    dec h                                         ; $5618: $25
    ld [c], a                                     ; $5619: $e2
    ret nz                                        ; $561a: $c0

    ld a, e                                       ; $561b: $7b
    ldh a, [rP1]                                  ; $561c: $f0 $00
    or c                                          ; $561e: $b1
    cp a                                          ; $561f: $bf
    ld [c], a                                     ; $5620: $e2
    ret nz                                        ; $5621: $c0

    ldh [$bf], a                                  ; $5622: $e0 $bf
    pop hl                                        ; $5624: $e1
    or [hl]                                       ; $5625: $b6
    ld h, d                                       ; $5626: $62
    dec bc                                        ; $5627: $0b
    dec bc                                        ; $5628: $0b
    ld hl, sp+$76                                 ; $5629: $f8 $76
    and h                                         ; $562b: $a4
    nop                                           ; $562c: $00
    rst $38                                       ; $562d: $ff
    ld a, l                                       ; $562e: $7d
    call nz, Call_000_0b0b                        ; $562f: $c4 $0b $0b
    ld l, e                                       ; $5632: $6b
    ld c, d                                       ; $5633: $4a
    ld a, [bc]                                    ; $5634: $0a
    dec bc                                        ; $5635: $0b
    ld a, [bc]                                    ; $5636: $0a
    ld l, d                                       ; $5637: $6a
    jr nc, jr_06c_55fe                            ; $5638: $30 $c4

    ld l, e                                       ; $563a: $6b
    add b                                         ; $563b: $80
    ldh [$b0], a                                  ; $563c: $e0 $b0
    ld h, d                                       ; $563e: $62
    ld a, e                                       ; $563f: $7b
    jp nc, $ac00                                  ; $5640: $d2 $00 $ac

    sbc [hl]                                      ; $5643: $9e
    cp $c5                                        ; $5644: $fe $c5
    ld a, [hl+]                                   ; $5646: $2a
    ld a, [bc]                                    ; $5647: $0a
    ld a, [bc]                                    ; $5648: $0a
    ld a, [bc]                                    ; $5649: $0a
    ld a, e                                       ; $564a: $7b
    and c                                         ; $564b: $a1
    ld a, [hl-]                                   ; $564c: $3a
    and b                                         ; $564d: $a0
    ld l, e                                       ; $564e: $6b
    pop hl                                        ; $564f: $e1
    ld l, e                                       ; $5650: $6b
    halt                                          ; $5651: $76
    and h                                         ; $5652: $a4
    ld a, [hl-]                                   ; $5653: $3a
    ret nz                                        ; $5654: $c0

    nop                                           ; $5655: $00
    cp $be                                        ; $5656: $fe $be
    push bc                                       ; $5658: $c5
    ld l, e                                       ; $5659: $6b
    ld a, [bc]                                    ; $565a: $0a
    ld a, [bc]                                    ; $565b: $0a
    dec e                                         ; $565c: $1d
    ld a, [hl+]                                   ; $565d: $2a
    cp h                                          ; $565e: $bc
    and d                                         ; $565f: $a2
    dec l                                         ; $5660: $2d
    dec l                                         ; $5661: $2d
    dec bc                                        ; $5662: $0b
    cp a                                          ; $5663: $bf
    and $ec                                       ; $5664: $e6 $ec
    ld c, [hl]                                    ; $5666: $4e
    nop                                           ; $5667: $00
    adc a                                         ; $5668: $8f
    ld b, b                                       ; $5669: $40
    dec a                                         ; $566a: $3d
    ld h, c                                       ; $566b: $61
    db $fd                                        ; $566c: $fd
    and b                                         ; $566d: $a0
    nop                                           ; $566e: $00
    and c                                         ; $566f: $a1
    ret z                                         ; $5670: $c8

    ldh [$78], a                                  ; $5671: $e0 $78
    add c                                         ; $5673: $81
    pop af                                        ; $5674: $f1
    and b                                         ; $5675: $a0
    ld l, e                                       ; $5676: $6b
    or h                                          ; $5677: $b4
    add b                                         ; $5678: $80
    sbc b                                         ; $5679: $98
    ld l, c                                       ; $567a: $69
    ld h, a                                       ; $567b: $67
    ld a, e                                       ; $567c: $7b
    rst $38                                       ; $567d: $ff
    ld a, h                                       ; $567e: $7c
    and d                                         ; $567f: $a2
    dec c                                         ; $5680: $0d
    dec c                                         ; $5681: $0d
    pop bc                                        ; $5682: $c1
    ld [c], a                                     ; $5683: $e2
    ld a, [hl]                                    ; $5684: $7e
    ret nz                                        ; $5685: $c0

    ld l, e                                       ; $5686: $6b

jr_06c_5687:
    jr nz, jr_06c_5687                            ; $5687: $20 $fe

    pop bc                                        ; $5689: $c1
    nop                                           ; $568a: $00

jr_06c_568b:
    rst $18                                       ; $568b: $df
    ld a, e                                       ; $568c: $7b
    ld h, a                                       ; $568d: $67
    add b                                         ; $568e: $80
    and e                                         ; $568f: $a3
    ret nz                                        ; $5690: $c0

    pop hl                                        ; $5691: $e1
    ld l, e                                       ; $5692: $6b
    ld hl, sp-$7e                                 ; $5693: $f8 $82
    ld a, [hl]                                    ; $5695: $7e
    pop bc                                        ; $5696: $c1
    jr nz, jr_06c_568b                            ; $5697: $20 $f2

    ld b, [hl]                                    ; $5699: $46
    nop                                           ; $569a: $00
    ld e, e                                       ; $569b: $5b
    inc a                                         ; $569c: $3c
    and h                                         ; $569d: $a4
    ret nz                                        ; $569e: $c0

    ld [$802e], a                                 ; $569f: $ea $2e $80
    ld l, l                                       ; $56a2: $6d
    dec l                                         ; $56a3: $2d
    ld h, b                                       ; $56a4: $60
    nop                                           ; $56a5: $00
    ld e, a                                       ; $56a6: $5f
    ldh a, [rNR14]                                ; $56a7: $f0 $14
    ld h, h                                       ; $56a9: $64
    ld b, $83                                     ; $56aa: $06 $83
    add a                                         ; $56ac: $87
    ret nz                                        ; $56ad: $c0

    ld bc, $0de3                                  ; $56ae: $01 $e3 $0d
    ld l, e                                       ; $56b1: $6b
    dec c                                         ; $56b2: $0d
    ld l, l                                       ; $56b3: $6d
    ld e, b                                       ; $56b4: $58
    nop                                           ; $56b5: $00
    cp a                                          ; $56b6: $bf
    ld a, e                                       ; $56b7: $7b
    ld l, e                                       ; $56b8: $6b
    ret nz                                        ; $56b9: $c0

    ld h, b                                       ; $56ba: $60
    dec l                                         ; $56bb: $2d
    dec l                                         ; $56bc: $2d
    ret nz                                        ; $56bd: $c0

    pop bc                                        ; $56be: $c1
    dec bc                                        ; $56bf: $0b
    nop                                           ; $56c0: $00
    ret nz                                        ; $56c1: $c0

    ld b, b                                       ; $56c2: $40
    add d                                         ; $56c3: $82
    ldh [$e6], a                                  ; $56c4: $e0 $e6
    ld hl, $ff00                                  ; $56c6: $21 $00 $ff
    ld b, h                                       ; $56c9: $44
    ld h, $3b                                     ; $56ca: $26 $3b
    and c                                         ; $56cc: $a1
    ld b, e                                       ; $56cd: $43
    and b                                         ; $56ce: $a0
    ld l, e                                       ; $56cf: $6b
    add [hl]                                      ; $56d0: $86
    ret nz                                        ; $56d1: $c0

    nop                                           ; $56d2: $00
    jp Jump_000_00c2                              ; $56d3: $c3 $c2 $00


    cp a                                          ; $56d6: $bf
    inc d                                         ; $56d7: $14
    ld c, d                                       ; $56d8: $4a
    add hl, sp                                    ; $56d9: $39
    add c                                         ; $56da: $81
    ld a, [bc]                                    ; $56db: $0a
    ret nz                                        ; $56dc: $c0

    ld b, b                                       ; $56dd: $40
    ret nz                                        ; $56de: $c0

    ld a, [$f7e1]                                 ; $56df: $fa $e1 $f7
    ld b, d                                       ; $56e2: $42
    add b                                         ; $56e3: $80
    nop                                           ; $56e4: $00
    sbc a                                         ; $56e5: $9f
    inc d                                         ; $56e6: $14
    jr z, @+$3a                                   ; $56e7: $28 $38

    ld h, e                                       ; $56e9: $63
    ld a, [$80a3]                                 ; $56ea: $fa $a3 $80
    and $00                                       ; $56ed: $e6 $00
    rst $38                                       ; $56ef: $ff
    ld a, e                                       ; $56f0: $7b
    xor e                                         ; $56f1: $ab
    dec bc                                        ; $56f2: $0b
    jr nc, jr_06c_5739                            ; $56f3: $30 $44

    jp Jump_06c_633a                              ; $56f5: $c3 $3a $63


    nop                                           ; $56f8: $00
    sbc a                                         ; $56f9: $9f
    nop                                           ; $56fa: $00
    db $eb                                        ; $56fb: $eb
    dec c                                         ; $56fc: $0d
    ld l, l                                       ; $56fd: $6d
    ei                                            ; $56fe: $fb
    ld h, b                                       ; $56ff: $60
    ld b, e                                       ; $5700: $43
    add c                                         ; $5701: $81
    nop                                           ; $5702: $00
    cp b                                          ; $5703: $b8
    and d                                         ; $5704: $a2
    nop                                           ; $5705: $00
    sbc a                                         ; $5706: $9f
    ld a, e                                       ; $5707: $7b
    add hl, hl                                    ; $5708: $29
    inc d                                         ; $5709: $14
    ld h, c                                       ; $570a: $61
    ld b, c                                       ; $570b: $41
    pop hl                                        ; $570c: $e1
    inc bc                                        ; $570d: $03
    add d                                         ; $570e: $82

jr_06c_570f:
    ld a, b                                       ; $570f: $78
    and d                                         ; $5710: $a2
    or l                                          ; $5711: $b5
    ld [hl+], a                                   ; $5712: $22
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    rst $18                                       ; $5715: $df
    ld d, b                                       ; $5716: $50
    inc b                                         ; $5717: $04
    call nc, Call_000_3f41                        ; $5718: $d4 $41 $3f
    jr nz, jr_06c_5767                            ; $571b: $20 $4a

    and b                                         ; $571d: $a0
    inc bc                                        ; $571e: $03
    ld b, d                                       ; $571f: $42
    ld hl, sp-$5f                                 ; $5720: $f8 $a1
    ld a, $e7                                     ; $5722: $3e $e7
    ld b, b                                       ; $5724: $40
    ld a, e                                       ; $5725: $7b
    cp $c0                                        ; $5726: $fe $c0
    ld [c], a                                     ; $5728: $e2
    ccf                                           ; $5729: $3f
    ld hl, $a00a                                  ; $572a: $21 $0a $a0
    cp c                                          ; $572d: $b9
    ld b, d                                       ; $572e: $42
    ld a, a                                       ; $572f: $7f
    add b                                         ; $5730: $80
    ld c, e                                       ; $5731: $4b
    ld b, b                                       ; $5732: $40
    and h                                         ; $5733: $a4
    stop                                          ; $5734: $10 $00
    rst $38                                       ; $5736: $ff
    add c                                         ; $5737: $81
    and d                                         ; $5738: $a2

jr_06c_5739:
    pop bc                                        ; $5739: $c1
    nop                                           ; $573a: $00
    ld c, e                                       ; $573b: $4b
    ld h, b                                       ; $573c: $60
    dec hl                                        ; $573d: $2b
    ld sp, hl                                     ; $573e: $f9
    ld b, b                                       ; $573f: $40
    db $fd                                        ; $5740: $fd
    pop hl                                        ; $5741: $e1
    ld a, h                                       ; $5742: $7c
    add d                                         ; $5743: $82
    stop                                          ; $5744: $10 $00
    cp a                                          ; $5746: $bf
    or $04                                        ; $5747: $f6 $04
    db $fc                                        ; $5749: $fc
    ld h, $c1                                     ; $574a: $26 $c1
    push hl                                       ; $574c: $e5
    dec hl                                        ; $574d: $2b
    di                                            ; $574e: $f3
    ld bc, $623e                                  ; $574f: $01 $3e $62
    nop                                           ; $5752: $00
    sbc [hl]                                      ; $5753: $9e
    jr nc, jr_06c_570f                            ; $5754: $30 $b9

    ld h, [hl]                                    ; $5756: $66
    ld a, h                                       ; $5757: $7c
    ld hl, $e7c0                                  ; $5758: $21 $c0 $e7
    or c                                          ; $575b: $b1
    nop                                           ; $575c: $00
    dec bc                                        ; $575d: $0b
    dec l                                         ; $575e: $2d
    ld [hl], $08                                  ; $575f: $36 $08
    ld a, e                                       ; $5761: $7b
    ld a, [$8000]                                 ; $5762: $fa $00 $80
    add a                                         ; $5765: $87
    inc bc                                        ; $5766: $03

jr_06c_5767:
    ld b, b                                       ; $5767: $40
    add $40                                       ; $5768: $c6 $40
    dec sp                                        ; $576a: $3b
    db $e3                                        ; $576b: $e3
    cp $83                                        ; $576c: $fe $83
    ld a, e                                       ; $576e: $7b
    or d                                          ; $576f: $b2
    nop                                           ; $5770: $00
    adc [hl]                                      ; $5771: $8e
    ld a, [hl]                                    ; $5772: $7e
    ld h, d                                       ; $5773: $62
    rlca                                          ; $5774: $07
    dec bc                                        ; $5775: $0b
    dec c                                         ; $5776: $0d
    dec hl                                        ; $5777: $2b
    nop                                           ; $5778: $00
    push hl                                       ; $5779: $e5
    ld sp, hl                                     ; $577a: $f9
    pop bc                                        ; $577b: $c1
    cp $84                                        ; $577c: $fe $84
    ld e, $c5                                     ; $577e: $1e $c5
    nop                                           ; $5780: $00
    add hl, sp                                    ; $5781: $39
    nop                                           ; $5782: $00
    add b                                         ; $5783: $80
    add e                                         ; $5784: $83
    add h                                         ; $5785: $84
    ld hl, $e740                                  ; $5786: $21 $40 $e7
    ld bc, $0081                                  ; $5789: $01 $81 $00
    rst $38                                       ; $578c: $ff
    db $10                                        ; $578d: $10
    ld b, l                                       ; $578e: $45
    ld b, a                                       ; $578f: $47
    ld [bc], a                                    ; $5790: $02
    ld b, d                                       ; $5791: $42
    and b                                         ; $5792: $a0
    ld bc, $c76b                                  ; $5793: $01 $6b $c7
    ld b, b                                       ; $5796: $40
    db $fc                                        ; $5797: $fc
    ld b, c                                       ; $5798: $41
    ld b, d                                       ; $5799: $42
    ldh [$a2], a                                  ; $579a: $e0 $a2
    jp hl                                         ; $579c: $e9


    ld a, e                                       ; $579d: $7b
    db $dd                                        ; $579e: $dd
    sub e                                         ; $579f: $93
    nop                                           ; $57a0: $00
    add b                                         ; $57a1: $80
    add e                                         ; $57a2: $83
    nop                                           ; $57a3: $00
    ld b, a                                       ; $57a4: $47

jr_06c_57a5:
    pop bc                                        ; $57a5: $c1
    ld hl, sp-$5f                                 ; $57a6: $f8 $a1
    jp Jump_000_0045                              ; $57a8: $c3 $45 $00


    rst $18                                       ; $57ab: $df
    or l                                          ; $57ac: $b5
    ld h, d                                       ; $57ad: $62
    ret nz                                        ; $57ae: $c0

    db $e3                                        ; $57af: $e3
    ld c, a                                       ; $57b0: $4f
    nop                                           ; $57b1: $00
    ret nz                                        ; $57b2: $c0

    ld h, d                                       ; $57b3: $62
    nop                                           ; $57b4: $00
    ld [bc], a                                    ; $57b5: $02
    ret nz                                        ; $57b6: $c0

    jp $85c5                                      ; $57b7: $c3 $c5 $85


    rst $38                                       ; $57ba: $ff
    nop                                           ; $57bb: $00
    adc b                                         ; $57bc: $88
    rst $38                                       ; $57bd: $ff
    pop hl                                        ; $57be: $e1
    ld a, a                                       ; $57bf: $7f
    ld h, b                                       ; $57c0: $60
    nop                                           ; $57c1: $00
    ld hl, $6004                                  ; $57c2: $21 $04 $60
    nop                                           ; $57c5: $00
    ret c                                         ; $57c6: $d8

    ld [hl], h                                    ; $57c7: $74
    nop                                           ; $57c8: $00
    sub l                                         ; $57c9: $95
    sub e                                         ; $57ca: $93
    ld [hl+], a                                   ; $57cb: $22
    rst $30                                       ; $57cc: $f7
    add h                                         ; $57cd: $84
    add l                                         ; $57ce: $85
    push af                                       ; $57cf: $f5
    ld a, e                                       ; $57d0: $7b
    cp d                                          ; $57d1: $ba
    ld d, $23                                     ; $57d2: $16 $23
    ld [hl], a                                    ; $57d4: $77
    add d                                         ; $57d5: $82
    nop                                           ; $57d6: $00
    ld [$5322], sp                                ; $57d7: $08 $22 $53
    ld a, b                                       ; $57da: $78
    xor l                                         ; $57db: $ad
    ld a, [c]                                     ; $57dc: $f2
    jr c, jr_06c_57a5                             ; $57dd: $38 $c6

    jp z, $85c8                                   ; $57df: $ca $c8 $85

    rst $38                                       ; $57e2: $ff
    or $2f                                        ; $57e3: $f6 $2f
    ld a, [bc]                                    ; $57e5: $0a
    db $d3                                        ; $57e6: $d3
    nop                                           ; $57e7: $00
    nop                                           ; $57e8: $00
    rst $38                                       ; $57e9: $ff
    db $ec                                        ; $57ea: $ec
    xor l                                         ; $57eb: $ad
    nop                                           ; $57ec: $00
    rst $38                                       ; $57ed: $ff
    or $ff                                        ; $57ee: $f6 $ff
    nop                                           ; $57f0: $00
    rst $38                                       ; $57f1: $ff
    or $ff                                        ; $57f2: $f6 $ff
    add l                                         ; $57f4: $85
    rst $38                                       ; $57f5: $ff
    or $ff                                        ; $57f6: $f6 $ff
    nop                                           ; $57f8: $00
    nop                                           ; $57f9: $00
    rst $38                                       ; $57fa: $ff
    or $ff                                        ; $57fb: $f6 $ff
    ld a, e                                       ; $57fd: $7b
    rst $38                                       ; $57fe: $ff
    or $ff                                        ; $57ff: $f6 $ff
    nop                                           ; $5801: $00
    rst $38                                       ; $5802: $ff
    or $ff                                        ; $5803: $f6 $ff
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    rst $38                                       ; $5808: $ff
    call c, $a0dd                                 ; $5809: $dc $dd $a0
    sbc $df                                       ; $580c: $de $df
    ldh [$e1], a                                  ; $580e: $e0 $e1
    ld [c], a                                     ; $5810: $e2
    di                                            ; $5811: $f3
    db $e3                                        ; $5812: $e3
    db $e4                                        ; $5813: $e4
    or $ff                                        ; $5814: $f6 $ff
    db $ec                                        ; $5816: $ec
    pop af                                        ; $5817: $f1
    push hl                                       ; $5818: $e5
    and $e7                                       ; $5819: $e6 $e7
    and b                                         ; $581b: $a0
    ccf                                           ; $581c: $3f
    add sp, -$17                                  ; $581d: $e8 $e9
    ld [$eceb], a                                 ; $581f: $ea $eb $ec
    and b                                         ; $5822: $a0
    or $ff                                        ; $5823: $f6 $ff
    db $ec                                        ; $5825: $ec
    pop af                                        ; $5826: $f1
    nop                                           ; $5827: $00
    sbc c                                         ; $5828: $99
    rst $38                                       ; $5829: $ff
    or $fb                                        ; $582a: $f6 $fb
    sbc c                                         ; $582c: $99
    rst $38                                       ; $582d: $ff
    or $fb                                        ; $582e: $f6 $fb
    sbc c                                         ; $5830: $99
    rst $38                                       ; $5831: $ff
    nop                                           ; $5832: $00
    rst $38                                       ; $5833: $ff
    sbc c                                         ; $5834: $99
    rst $38                                       ; $5835: $ff
    nop                                           ; $5836: $00
    rst $38                                       ; $5837: $ff
    ret nz                                        ; $5838: $c0

    adc a                                         ; $5839: $8f
    rst $38                                       ; $583a: $ff
    nop                                           ; $583b: $00
    rst $38                                       ; $583c: $ff
    ld [hl-], a                                   ; $583d: $32
    db $e3                                        ; $583e: $e3
    add l                                         ; $583f: $85
    rst $38                                       ; $5840: $ff
    nop                                           ; $5841: $00
    rst $38                                       ; $5842: $ff
    add l                                         ; $5843: $85
    ldh [$a0], a                                  ; $5844: $e0 $a0
    and b                                         ; $5846: $a0
    ld sp, $7ba0                                  ; $5847: $31 $a0 $7b
    rst $38                                       ; $584a: $ff
    nop                                           ; $584b: $00
    rst $30                                       ; $584c: $f7
    pop bc                                        ; $584d: $c1
    ldh [$d6], a                                  ; $584e: $e0 $d6
    rst $10                                       ; $5850: $d7
    ld a, e                                       ; $5851: $7b
    rst $38                                       ; $5852: $ff
    nop                                           ; $5853: $00
    ldh a, [$7e]                                  ; $5854: $f0 $7e
    rst $38                                       ; $5856: $ff
    ld [c], a                                     ; $5857: $e2
    db $e3                                        ; $5858: $e3
    db $e4                                        ; $5859: $e4
    and b                                         ; $585a: $a0
    and b                                         ; $585b: $a0
    ret c                                         ; $585c: $d8

    reti                                          ; $585d: $d9


    ld [c], a                                     ; $585e: $e2
    rst $18                                       ; $585f: $df
    ld l, [hl]                                    ; $5860: $6e
    nop                                           ; $5861: $00
    pop de                                        ; $5862: $d1
    and b                                         ; $5863: $a0
    ret nc                                        ; $5864: $d0

    pop de                                        ; $5865: $d1
    cp e                                          ; $5866: $bb
    ld [c], a                                     ; $5867: $e2
    jp c, Jump_000_00db                           ; $5868: $da $db $00

    rst $38                                       ; $586b: $ff
    ld a, h                                       ; $586c: $7c
    nop                                           ; $586d: $00
    call $e282                                    ; $586e: $cd $82 $e2
    jp nc, $a0d3                                  ; $5871: $d2 $d3 $a0

    push af                                       ; $5874: $f5
    or $00                                        ; $5875: $f6 $00
    ldh [$e3], a                                  ; $5877: $e0 $e3
    push af                                       ; $5879: $f5
    or $3d                                        ; $587a: $f6 $3d
    ldh [rP1], a                                  ; $587c: $e0 $00
    rst $38                                       ; $587e: $ff
    ld a, [bc]                                    ; $587f: $0a
    db $eb                                        ; $5880: $eb
    and b                                         ; $5881: $a0
    db $ed                                        ; $5882: $ed
    xor $ff                                       ; $5883: $ee $ff
    call nc, $efd5                                ; $5885: $d4 $d5 $ef
    and b                                         ; $5888: $a0
    sbc a                                         ; $5889: $9f
    sbc l                                         ; $588a: $9d
    sbc l                                         ; $588b: $9d
    sbc a                                         ; $588c: $9f
    add $3d                                       ; $588d: $c6 $3d
    ld [c], a                                     ; $588f: $e2
    and b                                         ; $5890: $a0
    and b                                         ; $5891: $a0
    nop                                           ; $5892: $00
    rst $38                                       ; $5893: $ff
    sbc c                                         ; $5894: $99
    rst $00                                       ; $5895: $c7
    adc d                                         ; $5896: $8a
    ret nz                                        ; $5897: $c0

    ldh a, [$f1]                                  ; $5898: $f0 $f1
    rst $38                                       ; $589a: $ff
    ld a, [c]                                     ; $589b: $f2
    di                                            ; $589c: $f3
    db $f4                                        ; $589d: $f4
    sbc a                                         ; $589e: $9f
    sbc h                                         ; $589f: $9c
    ld b, [hl]                                    ; $58a0: $46
    ld b, [hl]                                    ; $58a1: $46
    sbc h                                         ; $58a2: $9c
    pop bc                                        ; $58a3: $c1
    sbc a                                         ; $58a4: $9f
    dec a                                         ; $58a5: $3d
    ldh [$33], a                                  ; $58a6: $e0 $33
    db $e3                                        ; $58a8: $e3
    nop                                           ; $58a9: $00
    rst $38                                       ; $58aa: $ff
    inc d                                         ; $58ab: $14
    call nz, $e14b                                ; $58ac: $c4 $4b $e1
    and b                                         ; $58af: $a0
    sbc a                                         ; $58b0: $9f
    inc bc                                        ; $58b1: $03
    and d                                         ; $58b2: $a2
    sbc l                                         ; $58b3: $9d
    pop bc                                        ; $58b4: $c1
    ldh [$bf], a                                  ; $58b5: $e0 $bf
    ld [c], a                                     ; $58b7: $e2
    inc sp                                        ; $58b8: $33
    ld [c], a                                     ; $58b9: $e2
    dec [hl]                                      ; $58ba: $35
    ret nz                                        ; $58bb: $c0

    nop                                           ; $58bc: $00
    rst $38                                       ; $58bd: $ff
    inc d                                         ; $58be: $14
    jp Jump_06c_4c12                              ; $58bf: $c3 $12 $4c


    ret nz                                        ; $58c2: $c0

    and b                                         ; $58c3: $a0

jr_06c_58c4:
    add h                                         ; $58c4: $84
    pop hl                                        ; $58c5: $e1
    cp $e3                                        ; $58c6: $fe $e3
    and c                                         ; $58c8: $a1
    inc sp                                        ; $58c9: $33
    db $e4                                        ; $58ca: $e4
    ld a, [c]                                     ; $58cb: $f2
    and b                                         ; $58cc: $a0
    nop                                           ; $58cd: $00
    rst $38                                       ; $58ce: $ff
    add sp, $0a                                   ; $58cf: $e8 $0a
    jp nz, $c04c                                  ; $58d1: $c2 $4c $c0

    ld b, l                                       ; $58d4: $45
    pop hl                                        ; $58d5: $e1
    or d                                          ; $58d6: $b2
    add c                                         ; $58d7: $81
    ldh [$79], a                                  ; $58d8: $e0 $79
    ld a, d                                       ; $58da: $7a
    ld a, l                                       ; $58db: $7d
    add e                                         ; $58dc: $83
    sbc h                                         ; $58dd: $9c
    sbc a                                         ; $58de: $9f
    inc sp                                        ; $58df: $33
    ld [c], a                                     ; $58e0: $e2
    di                                            ; $58e1: $f3
    and c                                         ; $58e2: $a1
    nop                                           ; $58e3: $00
    rst $38                                       ; $58e4: $ff
    inc d                                         ; $58e5: $14
    jp nz, $e00f                                  ; $58e6: $c2 $0f $e0

    sbc [hl]                                      ; $58e9: $9e
    db $fc                                        ; $58ea: $fc
    pop bc                                        ; $58eb: $c1
    ldh [$c0], a                                  ; $58ec: $e0 $c0
    ldh [$79], a                                  ; $58ee: $e0 $79
    ld a, [hl]                                    ; $58f0: $7e
    ld b, [hl]                                    ; $58f1: $46
    ld a, a                                       ; $58f2: $7f
    ld a, l                                       ; $58f3: $7d
    sbc h                                         ; $58f4: $9c
    ld [hl], b                                    ; $58f5: $70
    cp e                                          ; $58f6: $bb
    pop bc                                        ; $58f7: $c1
    ld a, c                                       ; $58f8: $79
    jp nz, $ff00                                  ; $58f9: $c2 $00 $ff

    nop                                           ; $58fc: $00
    db $e3                                        ; $58fd: $e3
    sbc $df                                       ; $58fe: $de $df
    sbc [hl]                                      ; $5900: $9e
    pop bc                                        ; $5901: $c1
    ldh [$da], a                                  ; $5902: $e0 $da
    add b                                         ; $5904: $80
    ldh [$80], a                                  ; $5905: $e0 $80
    cp d                                          ; $5907: $ba
    ldh [$7f], a                                  ; $5908: $e0 $7f
    ld a, l                                       ; $590a: $7d
    db $fc                                        ; $590b: $fc
    jp $d9d8                                      ; $590c: $c3 $d8 $d9


    add sp, $00                                   ; $590f: $e8 $00
    rst $38                                       ; $5911: $ff
    ld a, [bc]                                    ; $5912: $0a
    and [hl]                                      ; $5913: $a6
    add b                                         ; $5914: $80
    ld [c], a                                     ; $5915: $e2
    or d                                          ; $5916: $b2
    ret nz                                        ; $5917: $c0

    ld [c], a                                     ; $5918: $e2
    or d                                          ; $5919: $b2
    adc [hl]                                      ; $591a: $8e
    ld a, h                                       ; $591b: $7c
    ld h, b                                       ; $591c: $60
    inc a                                         ; $591d: $3c
    ldh [$b6], a                                  ; $591e: $e0 $b6
    and c                                         ; $5920: $a1
    jr nc, jr_06c_58c4                            ; $5921: $30 $a1

    nop                                           ; $5923: $00
    rst $38                                       ; $5924: $ff
    call z, $d080                                 ; $5925: $cc $80 $d0
    pop de                                        ; $5928: $d1
    nop                                           ; $5929: $00
    db $e4                                        ; $592a: $e4
    ld a, a                                       ; $592b: $7f
    add d                                         ; $592c: $82
    add e                                         ; $592d: $83
    or d                                          ; $592e: $b2
    or d                                          ; $592f: $b2
    dec hl                                        ; $5930: $2b
    ld sp, $3c2b                                  ; $5931: $31 $2b $3c
    ldh [$c0], a                                  ; $5934: $e0 $c0
    dec a                                         ; $5936: $3d
    ld [c], a                                     ; $5937: $e2
    ld a, [c]                                     ; $5938: $f2
    add c                                         ; $5939: $81
    nop                                           ; $593a: $00
    rst $38                                       ; $593b: $ff
    add h                                         ; $593c: $84
    and d                                         ; $593d: $a2
    rst $38                                       ; $593e: $ff
    ret nz                                        ; $593f: $c0

    ld b, d                                       ; $5940: $42
    ret nz                                        ; $5941: $c0

    add l                                         ; $5942: $85
    add a                                         ; $5943: $87
    cp a                                          ; $5944: $bf
    adc c                                         ; $5945: $89
    add e                                         ; $5946: $83
    ld a, [hl+]                                   ; $5947: $2a
    jr nz, jr_06c_597a                            ; $5948: $20 $30

    ld b, h                                       ; $594a: $44
    ei                                            ; $594b: $fb
    ret nz                                        ; $594c: $c0

    and d                                         ; $594d: $a2
    call nc, $a3b5                                ; $594e: $d4 $b5 $a3
    nop                                           ; $5951: $00
    rst $38                                       ; $5952: $ff
    db $ec                                        ; $5953: $ec
    add h                                         ; $5954: $84
    and d                                         ; $5955: $a2
    and c                                         ; $5956: $a1
    ld b, c                                       ; $5957: $41
    call nz, $8685                                ; $5958: $c4 $85 $86
    rra                                           ; $595b: $1f
    add e                                         ; $595c: $83
    ld b, c                                       ; $595d: $41
    jr nc, @+$22                                  ; $595e: $30 $20

    inc l                                         ; $5960: $2c
    ei                                            ; $5961: $fb
    ret nz                                        ; $5962: $c0

    or l                                          ; $5963: $b5
    and h                                         ; $5964: $a4
    nop                                           ; $5965: $00
    cp $be                                        ; $5966: $fe $be
    add h                                         ; $5968: $84
    and a                                         ; $5969: $a7
    ld b, [hl]                                    ; $596a: $46
    ld b, [hl]                                    ; $596b: $46
    ld b, l                                       ; $596c: $45
    ld c, b                                       ; $596d: $48
    ld c, b                                       ; $596e: $48
    cp a                                          ; $596f: $bf
    ldh [$2a], a                                  ; $5970: $e0 $2a
    ld e, e                                       ; $5972: $5b
    cpl                                           ; $5973: $2f
    ld a, [hl+]                                   ; $5974: $2a
    cp d                                          ; $5975: $ba
    pop bc                                        ; $5976: $c1
    ld b, [hl]                                    ; $5977: $46
    sbc [hl]                                      ; $5978: $9e
    dec h                                         ; $5979: $25

jr_06c_597a:
    ld [c], a                                     ; $597a: $e2
    and b                                         ; $597b: $a0
    nop                                           ; $597c: $00
    rst $38                                       ; $597d: $ff
    cp h                                          ; $597e: $bc
    jp z, $bf81                                   ; $597f: $ca $81 $bf

    and d                                         ; $5982: $a2
    ld b, h                                       ; $5983: $44
    ld e, [hl]                                    ; $5984: $5e
    ld h, b                                       ; $5985: $60
    ld b, a                                       ; $5986: $47
    ld a, [hl]                                    ; $5987: $7e
    ldh [$b2], a                                  ; $5988: $e0 $b2
    rrca                                          ; $598a: $0f
    xor [hl]                                      ; $598b: $ae
    or d                                          ; $598c: $b2
    or d                                          ; $598d: $b2
    add c                                         ; $598e: $81
    ret nz                                        ; $598f: $c0

    db $e3                                        ; $5990: $e3
    xor c                                         ; $5991: $a9
    add b                                         ; $5992: $80
    nop                                           ; $5993: $00
    rst $38                                       ; $5994: $ff
    ld a, l                                       ; $5995: $7d
    push bc                                       ; $5996: $c5
    rst $38                                       ; $5997: $ff
    ld b, [hl]                                    ; $5998: $46
    ld b, l                                       ; $5999: $45
    ld c, e                                       ; $599a: $4b
    ld h, c                                       ; $599b: $61
    ld h, c                                       ; $599c: $61
    ld d, d                                       ; $599d: $52
    add l                                         ; $599e: $85
    adc e                                         ; $599f: $8b
    rrca                                          ; $59a0: $0f
    or d                                          ; $59a1: $b2
    xor a                                         ; $59a2: $af
    or d                                          ; $59a3: $b2
    ld b, [hl]                                    ; $59a4: $46
    ret nz                                        ; $59a5: $c0

    ld [c], a                                     ; $59a6: $e2
    xor c                                         ; $59a7: $a9
    add e                                         ; $59a8: $83
    nop                                           ; $59a9: $00
    cp a                                          ; $59aa: $bf
    adc c                                         ; $59ab: $89
    ld h, c                                       ; $59ac: $61
    cp [hl]                                       ; $59ad: $be
    cp [hl]                                       ; $59ae: $be
    jp nz, Jump_06c_6155                          ; $59af: $c2 $55 $61

    ld h, c                                       ; $59b2: $61
    ld e, b                                       ; $59b3: $58
    ld b, h                                       ; $59b4: $44
    ld a, d                                       ; $59b5: $7a
    ret nz                                        ; $59b6: $c0

    ld b, [hl]                                    ; $59b7: $46
    add e                                         ; $59b8: $83
    add e                                         ; $59b9: $83
    add h                                         ; $59ba: $84
    or h                                          ; $59bb: $b4
    add c                                         ; $59bc: $81
    halt                                          ; $59bd: $76
    and l                                         ; $59be: $a5
    nop                                           ; $59bf: $00
    sbc [hl]                                      ; $59c0: $9e
    adc c                                         ; $59c1: $89
    ld h, b                                       ; $59c2: $60
    ld a, [hl]                                    ; $59c3: $7e
    jp nz, $ff45                                  ; $59c4: $c2 $45 $ff

    ld d, e                                       ; $59c7: $53
    ld e, c                                       ; $59c8: $59
    ld d, e                                       ; $59c9: $53
    ld b, l                                       ; $59ca: $45
    add l                                         ; $59cb: $85
    add a                                         ; $59cc: $87
    adc b                                         ; $59cd: $88
    adc b                                         ; $59ce: $88
    inc bc                                        ; $59cf: $03
    add a                                         ; $59d0: $87
    add l                                         ; $59d1: $85

jr_06c_59d2:
    or h                                          ; $59d2: $b4
    add l                                         ; $59d3: $85
    ld [$0040], a                                 ; $59d4: $ea $40 $00
    rst $38                                       ; $59d7: $ff
    ld c, h                                       ; $59d8: $4c
    add b                                         ; $59d9: $80
    cp [hl]                                       ; $59da: $be
    add d                                         ; $59db: $82
    nop                                           ; $59dc: $00
    and b                                         ; $59dd: $a0
    inc b                                         ; $59de: $04
    cp b                                          ; $59df: $b8
    add l                                         ; $59e0: $85
    pop af                                        ; $59e1: $f1
    add c                                         ; $59e2: $81
    and c                                         ; $59e3: $a1
    ldh a, [rSTAT]                                ; $59e4: $f0 $41
    or $8f                                        ; $59e6: $f6 $8f
    nop                                           ; $59e8: $00
    ld [hl], b                                    ; $59e9: $70
    add h                                         ; $59ea: $84
    ld h, b                                       ; $59eb: $60
    db $fc                                        ; $59ec: $fc
    add b                                         ; $59ed: $80
    inc hl                                        ; $59ee: $23
    ld a, c                                       ; $59ef: $79
    ld a, [hl]                                    ; $59f0: $7e
    add a                                         ; $59f1: $87
    jp nz, $e2c1                                  ; $59f2: $c2 $c1 $e2

    or c                                          ; $59f5: $b1
    add c                                         ; $59f6: $81
    sbc [hl]                                      ; $59f7: $9e
    ldh a, [rLCDC]                                ; $59f8: $f0 $40
    nop                                           ; $59fa: $00
    cp a                                          ; $59fb: $bf
    add h                                         ; $59fc: $84
    add l                                         ; $59fd: $85
    ld b, h                                       ; $59fe: $44
    db $fd                                        ; $59ff: $fd
    and b                                         ; $5a00: $a0
    add b                                         ; $5a01: $80
    ld a, [$8780]                                 ; $5a02: $fa $80 $87
    ret nz                                        ; $5a05: $c0

    pop bc                                        ; $5a06: $c1
    ld [c], a                                     ; $5a07: $e2
    or b                                          ; $5a08: $b0
    add c                                         ; $5a09: $81
    sbc [hl]                                      ; $5a0a: $9e
    nop                                           ; $5a0b: $00
    ldh a, [rLCDC]                                ; $5a0c: $f0 $40
    nop                                           ; $5a0e: $00
    cp a                                          ; $5a0f: $bf
    adc a                                         ; $5a10: $8f
    ld b, b                                       ; $5a11: $40
    inc a                                         ; $5a12: $3c
    and h                                         ; $5a13: $a4
    ld b, b                                       ; $5a14: $40
    and c                                         ; $5a15: $a1
    ret nz                                        ; $5a16: $c0

    and $b4                                       ; $5a17: $e6 $b4
    ld h, h                                       ; $5a19: $64
    nop                                           ; $5a1a: $00
    ld e, a                                       ; $5a1b: $5f
    adc h                                         ; $5a1c: $8c
    adc a                                         ; $5a1d: $8f
    ld b, d                                       ; $5a1e: $42
    ret nz                                        ; $5a1f: $c0

    ld b, b                                       ; $5a20: $40
    sbc a                                         ; $5a21: $9f
    sbc h                                         ; $5a22: $9c
    add d                                         ; $5a23: $82
    and b                                         ; $5a24: $a0
    add a                                         ; $5a25: $87
    pop bc                                        ; $5a26: $c1
    ld b, b                                       ; $5a27: $40
    db $e4                                        ; $5a28: $e4
    sbc h                                         ; $5a29: $9c
    ld hl, $6b9f                                  ; $5a2a: $21 $9f $6b
    ld b, b                                       ; $5a2d: $40
    nop                                           ; $5a2e: $00
    cp a                                          ; $5a2f: $bf
    adc a                                         ; $5a30: $8f
    ld hl, $43c0                                  ; $5a31: $21 $c0 $43
    sbc [hl]                                      ; $5a34: $9e
    rst $38                                       ; $5a35: $ff
    add b                                         ; $5a36: $80
    add a                                         ; $5a37: $87
    jp nz, $c100                                  ; $5a38: $c2 $00 $c1

    jp nz, Jump_06c_40f5                          ; $5a3b: $c2 $f5 $40

    jr c, jr_06c_5aa1                             ; $5a3e: $38 $61

    nop                                           ; $5a40: $00
    rst $38                                       ; $5a41: $ff
    adc a                                         ; $5a42: $8f
    jr nz, jr_06c_59d2                            ; $5a43: $20 $8d

    ld h, e                                       ; $5a45: $63
    dec sp                                        ; $5a46: $3b
    ld h, a                                       ; $5a47: $67
    or $41                                        ; $5a48: $f6 $41
    or c                                          ; $5a4a: $b1
    sbc [hl]                                      ; $5a4b: $9e
    ld l, e                                       ; $5a4c: $6b
    ld b, e                                       ; $5a4d: $43
    nop                                           ; $5a4e: $00
    rst $38                                       ; $5a4f: $ff
    adc a                                         ; $5a50: $8f
    dec h                                         ; $5a51: $25
    sub $d7                                       ; $5a52: $d6 $d7
    cp a                                          ; $5a54: $bf
    ld [$209e], a                                 ; $5a55: $ea $9e $20
    ld l, e                                       ; $5a58: $6b
    ld b, d                                       ; $5a59: $42
    nop                                           ; $5a5a: $00
    sbc a                                         ; $5a5b: $9f
    adc a                                         ; $5a5c: $8f
    ld h, $bb                                     ; $5a5d: $26 $bb
    and l                                         ; $5a5f: $a5
    ld a, [$a1a4]                                 ; $5a60: $fa $a4 $a1
    ld a, [c]                                     ; $5a63: $f2
    ld [bc], a                                    ; $5a64: $02
    nop                                           ; $5a65: $00
    rst $38                                       ; $5a66: $ff
    nop                                           ; $5a67: $00
    add l                                         ; $5a68: $85
    ld b, $07                                     ; $5a69: $06 $07
    ld b, b                                       ; $5a6b: $40
    add hl, sp                                    ; $5a6c: $39
    add d                                         ; $5a6d: $82
    ld a, [$7ca0]                                 ; $5a6e: $fa $a0 $7c
    ld h, b                                       ; $5a71: $60
    push af                                       ; $5a72: $f5
    ld hl, $9f00                                  ; $5a73: $21 $00 $9f
    ld a, e                                       ; $5a76: $7b
    add hl, hl                                    ; $5a77: $29
    nop                                           ; $5a78: $00
    ld a, [hl-]                                   ; $5a79: $3a
    ld b, l                                       ; $5a7a: $45
    ld a, [$f9a1]                                 ; $5a7b: $fa $a1 $f9

jr_06c_5a7e:
    ld b, c                                       ; $5a7e: $41
    ld [bc], a                                    ; $5a7f: $02
    pop bc                                        ; $5a80: $c1
    nop                                           ; $5a81: $00
    sbc a                                         ; $5a82: $9f
    ld a, e                                       ; $5a83: $7b
    ld h, $7d                                     ; $5a84: $26 $7d
    and e                                         ; $5a86: $a3
    cp h                                          ; $5a87: $bc
    jr nz, jr_06c_5a8a                            ; $5a88: $20 $00

jr_06c_5a8a:
    ld a, [hl-]                                   ; $5a8a: $3a
    ld h, c                                       ; $5a8b: $61
    ccf                                           ; $5a8c: $3f
    add c                                         ; $5a8d: $81
    ld [hl], h                                    ; $5a8e: $74
    jr nz, jr_06c_5a7e                            ; $5a8f: $20 $ed

    nop                                           ; $5a91: $00
    nop                                           ; $5a92: $00
    rst $38                                       ; $5a93: $ff
    adc a                                         ; $5a94: $8f
    ld bc, $a218                                  ; $5a95: $01 $18 $a2
    cp e                                          ; $5a98: $bb
    inc h                                         ; $5a99: $24
    ld [bc], a                                    ; $5a9a: $02
    cp $61                                        ; $5a9b: $fe $61
    or d                                          ; $5a9d: $b2
    ld a, a                                       ; $5a9e: $7f
    add e                                         ; $5a9f: $83
    nop                                           ; $5aa0: $00

jr_06c_5aa1:
    and b                                         ; $5aa1: $a0
    nop                                           ; $5aa2: $00
    rst $38                                       ; $5aa3: $ff
    ld a, e                                       ; $5aa4: $7b
    ld h, c                                       ; $5aa5: $61
    rlc c                                         ; $5aa6: $cb $01
    ld a, h                                       ; $5aa8: $7c
    ld h, $e0                                     ; $5aa9: $26 $e0
    ld a, a                                       ; $5aab: $7f
    add [hl]                                      ; $5aac: $86
    nop                                           ; $5aad: $00
    cp a                                          ; $5aae: $bf
    sbc c                                         ; $5aaf: $99
    dec b                                         ; $5ab0: $05
    ld a, a                                       ; $5ab1: $7f
    add e                                         ; $5ab2: $83
    ld a, l                                       ; $5ab3: $7d
    jr nz, jr_06c_5afb                            ; $5ab4: $20 $45

    ld b, e                                       ; $5ab6: $43
    ld b, c                                       ; $5ab7: $41
    dec b                                         ; $5ab8: $05
    ld b, e                                       ; $5ab9: $43
    db $fd                                        ; $5aba: $fd
    ldh [rLYC], a                                 ; $5abb: $e0 $45
    inc [hl]                                      ; $5abd: $34
    inc h                                         ; $5abe: $24
    nop                                           ; $5abf: $00
    cp a                                          ; $5ac0: $bf
    nop                                           ; $5ac1: $00
    and h                                         ; $5ac2: $a4
    cp h                                          ; $5ac3: $bc
    ld hl, $207c                                  ; $5ac4: $21 $7c $20
    ld e, a                                       ; $5ac7: $5f
    ld b, l                                       ; $5ac8: $45
    ld [hl], $3b                                  ; $5ac9: $36 $3b
    dec [hl]                                      ; $5acb: $35
    dec sp                                        ; $5acc: $3b
    db $fd                                        ; $5acd: $fd
    ldh [$36], a                                  ; $5ace: $e0 $36
    cp a                                          ; $5ad0: $bf
    ld [c], a                                     ; $5ad1: $e2
    ldh [$fe], a                                  ; $5ad2: $e0 $fe
    ld b, c                                       ; $5ad4: $41
    and h                                         ; $5ad5: $a4
    nop                                           ; $5ad6: $00
    nop                                           ; $5ad7: $00
    rst $38                                       ; $5ad8: $ff
    ld a, e                                       ; $5ad9: $7b
    ld bc, $227c                                  ; $5ada: $01 $7c $22
    ld b, h                                       ; $5add: $44
    inc a                                         ; $5ade: $3c
    and h                                         ; $5adf: $a4
    dec e                                         ; $5ae0: $1d
    ld h, h                                       ; $5ae1: $64
    rst $38                                       ; $5ae2: $ff
    ldh [$a5], a                                  ; $5ae3: $e0 $a5
    inc a                                         ; $5ae5: $3c
    ld b, h                                       ; $5ae6: $44
    ret nz                                        ; $5ae7: $c0

    db $e3                                        ; $5ae8: $e3
    ld [hl], $02                                  ; $5ae9: $36 $02
    nop                                           ; $5aeb: $00
    sbc a                                         ; $5aec: $9f
    db $fc                                        ; $5aed: $fc
    add b                                         ; $5aee: $80
    add h                                         ; $5aef: $84
    dec sp                                        ; $5af0: $3b
    jr nz, jr_06c_5b28                            ; $5af1: $20 $35

    ld l, c                                       ; $5af3: $69
    and e                                         ; $5af4: $a3
    dec [hl]                                      ; $5af5: $35
    dec [hl]                                      ; $5af6: $35
    and e                                         ; $5af7: $a3
    rlca                                          ; $5af8: $07
    ld l, d                                       ; $5af9: $6a
    dec [hl]                                      ; $5afa: $35

jr_06c_5afb:
    ld b, d                                       ; $5afb: $42
    inc [hl]                                      ; $5afc: $34
    inc bc                                        ; $5afd: $03
    ld [hl], $02                                  ; $5afe: $36 $02
    nop                                           ; $5b00: $00
    rst $38                                       ; $5b01: $ff
    cp h                                          ; $5b02: $bc
    ld [hl+], a                                   ; $5b03: $22
    rst $38                                       ; $5b04: $ff
    pop bc                                        ; $5b05: $c1
    rrca                                          ; $5b06: $0f
    ld b, d                                       ; $5b07: $42
    dec [hl]                                      ; $5b08: $35
    ld l, c                                       ; $5b09: $69
    dec [hl]                                      ; $5b0a: $35
    rst $38                                       ; $5b0b: $ff
    ldh [$c0], a                                  ; $5b0c: $e0 $c0
    db $e3                                        ; $5b0e: $e3
    cp $84                                        ; $5b0f: $fe $84
    nop                                           ; $5b11: $00
    ld a, a                                       ; $5b12: $7f
    cp h                                          ; $5b13: $bc
    add b                                         ; $5b14: $80
    add h                                         ; $5b15: $84
    cp e                                          ; $5b16: $bb
    jr nz, jr_06c_5b5d                            ; $5b17: $20 $44

    inc a                                         ; $5b19: $3c
    ld l, e                                       ; $5b1a: $6b
    ld [hl], c                                    ; $5b1b: $71
    rst $38                                       ; $5b1c: $ff
    ldh [$6d], a                                  ; $5b1d: $e0 $6d
    ldh [rLCDC], a                                ; $5b1f: $e0 $40
    pop hl                                        ; $5b21: $e1
    ld [hl], $06                                  ; $5b22: $36 $06
    nop                                           ; $5b24: $00
    ld a, a                                       ; $5b25: $7f
    add b                                         ; $5b26: $80
    add [hl]                                      ; $5b27: $86

jr_06c_5b28:
    ret nz                                        ; $5b28: $c0

    ret z                                         ; $5b29: $c8

    sbc h                                         ; $5b2a: $9c
    sbc a                                         ; $5b2b: $9f
    sub $41                                       ; $5b2c: $d6 $41
    rst $10                                       ; $5b2e: $d7
    jr z, @-$5c                                   ; $5b2f: $28 $a2

    nop                                           ; $5b31: $00
    rst $38                                       ; $5b32: $ff
    nop                                           ; $5b33: $00
    and e                                         ; $5b34: $a3
    add b                                         ; $5b35: $80
    add d                                         ; $5b36: $82
    ld b, b                                       ; $5b37: $40
    rst $00                                       ; $5b38: $c7
    and c                                         ; $5b39: $a1
    db $eb                                        ; $5b3a: $eb
    and d                                         ; $5b3b: $a2
    jr c, jr_06c_5b3e                             ; $5b3c: $38 $00

jr_06c_5b3e:
    sbc a                                         ; $5b3e: $9f
    ld a, e                                       ; $5b3f: $7b
    ld b, [hl]                                    ; $5b40: $46
    cp h                                          ; $5b41: $bc
    and b                                         ; $5b42: $a0
    sbc a                                         ; $5b43: $9f
    sbc l                                         ; $5b44: $9d
    sbc l                                         ; $5b45: $9d
    dec a                                         ; $5b46: $3d
    add l                                         ; $5b47: $85
    ld bc, $3024                                  ; $5b48: $01 $24 $30
    nop                                           ; $5b4b: $00
    cp a                                          ; $5b4c: $bf
    or $66                                        ; $5b4d: $f6 $66
    pop de                                        ; $5b4f: $d1
    ld [c], a                                     ; $5b50: $e2
    cp e                                          ; $5b51: $bb
    ld h, e                                       ; $5b52: $63
    sbc h                                         ; $5b53: $9c
    sbc l                                         ; $5b54: $9d
    add c                                         ; $5b55: $81
    ld bc, $74d8                                  ; $5b56: $01 $d8 $74
    ret z                                         ; $5b59: $c8

    nop                                           ; $5b5a: $00
    sub l                                         ; $5b5b: $95
    ld a, [hl-]                                   ; $5b5c: $3a

jr_06c_5b5d:
    ld b, d                                       ; $5b5d: $42
    cp e                                          ; $5b5e: $bb
    ld h, b                                       ; $5b5f: $60
    sbc l                                         ; $5b60: $9d
    jp Jump_000_08e0                              ; $5b61: $c3 $e0 $08


    ret nz                                        ; $5b64: $c0

    push af                                       ; $5b65: $f5
    or $00                                        ; $5b66: $f6 $00
    ret c                                         ; $5b68: $d8

    push af                                       ; $5b69: $f5
    nop                                           ; $5b6a: $00
    sub c                                         ; $5b6b: $91
    ld a, e                                       ; $5b6c: $7b
    ld b, d                                       ; $5b6d: $42
    halt                                          ; $5b6e: $76
    inc hl                                        ; $5b6f: $23
    di                                            ; $5b70: $f3
    ld hl, $c208                                  ; $5b71: $21 $08 $c2
    ret c                                         ; $5b74: $d8

    db $f4                                        ; $5b75: $f4
    nop                                           ; $5b76: $00
    ld d, c                                       ; $5b77: $51

jr_06c_5b78:
    nop                                           ; $5b78: $00
    or $06                                        ; $5b79: $f6 $06
    inc c                                         ; $5b7b: $0c
    ld [c], a                                     ; $5b7c: $e2
    ret z                                         ; $5b7d: $c8

    inc b                                         ; $5b7e: $04
    ret c                                         ; $5b7f: $d8

    push af                                       ; $5b80: $f5
    jr z, jr_06c_5b78                             ; $5b81: $28 $f5

    or $23                                        ; $5b83: $f6 $23
    ld [c], a                                     ; $5b85: $e2
    ld b, b                                       ; $5b86: $40
    or c                                          ; $5b87: $b1
    ld b, d                                       ; $5b88: $42
    nop                                           ; $5b89: $00
    add l                                         ; $5b8a: $85
    ld a, [c]                                     ; $5b8b: $f2
    nop                                           ; $5b8c: $00
    ld a, [$6d71]                                 ; $5b8d: $fa $71 $6d
    nop                                           ; $5b90: $00
    rst $38                                       ; $5b91: $ff
    or $ff                                        ; $5b92: $f6 $ff
    nop                                           ; $5b94: $00
    rst $38                                       ; $5b95: $ff
    or $ff                                        ; $5b96: $f6 $ff
    nop                                           ; $5b98: $00
    rst $38                                       ; $5b99: $ff
    nop                                           ; $5b9a: $00
    or $ff                                        ; $5b9b: $f6 $ff
    nop                                           ; $5b9d: $00
    rst $38                                       ; $5b9e: $ff
    or $ff                                        ; $5b9f: $f6 $ff
    nop                                           ; $5ba1: $00
    rst $38                                       ; $5ba2: $ff
    or $ff                                        ; $5ba3: $f6 $ff
    nop                                           ; $5ba5: $00
    rst $38                                       ; $5ba6: $ff
    or $ff                                        ; $5ba7: $f6 $ff
    nop                                           ; $5ba9: $00
    nop                                           ; $5baa: $00
    nop                                           ; $5bab: $00
    pop bc                                        ; $5bac: $c1
    nop                                           ; $5bad: $00
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
    nop                                           ; $5bb8: $00
    nop                                           ; $5bb9: $00
    dec c                                         ; $5bba: $0d
    add b                                         ; $5bbb: $80
    cp $e0                                        ; $5bbc: $fe $e0
    nop                                           ; $5bbe: $00
    ld b, b                                       ; $5bbf: $40
    ret c                                         ; $5bc0: $d8

    push hl                                       ; $5bc1: $e5
    rst $30                                       ; $5bc2: $f7
    and $ff                                       ; $5bc3: $e6 $ff
    rst $38                                       ; $5bc5: $ff
    rst $38                                       ; $5bc6: $ff
    rst $30                                       ; $5bc7: $f7
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    nop                                           ; $5bca: $00
    ld bc, $1600                                  ; $5bcb: $01 $00 $16
    ld de, $0101                                  ; $5bce: $11 $01 $01
    dec d                                         ; $5bd1: $15
    ld [de], a                                    ; $5bd2: $12
    ld bc, $1602                                  ; $5bd3: $01 $02 $16
    ld [de], a                                    ; $5bd6: $12
    ld bc, $1403                                  ; $5bd7: $01 $03 $14
    inc de                                        ; $5bda: $13
    ld bc, $1504                                  ; $5bdb: $01 $04 $15
    inc de                                        ; $5bde: $13
    ld bc, $1605                                  ; $5bdf: $01 $05 $16
    inc de                                        ; $5be2: $13
    ld bc, $1b06                                  ; $5be3: $01 $06 $1b
    inc de                                        ; $5be6: $13
    ld bc, $1c07                                  ; $5be7: $01 $07 $1c
    inc de                                        ; $5bea: $13
    ld bc, $1508                                  ; $5beb: $01 $08 $15
    inc d                                         ; $5bee: $14
    ld bc, $1609                                  ; $5bef: $01 $09 $16
    inc d                                         ; $5bf2: $14
    ld bc, $170a                                  ; $5bf3: $01 $0a $17
    inc d                                         ; $5bf6: $14
    ld bc, $1b0b                                  ; $5bf7: $01 $0b $1b
    inc d                                         ; $5bfa: $14
    ld bc, $1c0c                                  ; $5bfb: $01 $0c $1c
    inc d                                         ; $5bfe: $14
    ld bc, $1d0d                                  ; $5bff: $01 $0d $1d
    inc d                                         ; $5c02: $14
    ld bc, $160e                                  ; $5c03: $01 $0e $16
    dec d                                         ; $5c06: $15
    ld bc, $1b0f                                  ; $5c07: $01 $0f $1b
    dec d                                         ; $5c0a: $15
    ld bc, $1c10                                  ; $5c0b: $01 $10 $1c
    dec d                                         ; $5c0e: $15
    ld bc, $2211                                  ; $5c0f: $01 $11 $22
    jr jr_06c_5c15                                ; $5c12: $18 $01

    ld [de], a                                    ; $5c14: $12

jr_06c_5c15:
    jr nz, @+$1b                                  ; $5c15: $20 $19

    ld bc, $2213                                  ; $5c17: $01 $13 $22
    add hl, de                                    ; $5c1a: $19
    ld bc, $2314                                  ; $5c1b: $01 $14 $23
    add hl, de                                    ; $5c1e: $19
    ld bc, $2015                                  ; $5c1f: $01 $15 $20
    ld a, [de]                                    ; $5c22: $1a
    ld [bc], a                                    ; $5c23: $02
    ld d, $21                                     ; $5c24: $16 $21
    ld a, [de]                                    ; $5c26: $1a
    ld bc, $2217                                  ; $5c27: $01 $17 $22
    ld a, [de]                                    ; $5c2a: $1a
    ld bc, $2118                                  ; $5c2b: $01 $18 $21
    dec de                                        ; $5c2e: $1b
    ld bc, $2519                                  ; $5c2f: $01 $19 $25
    dec e                                         ; $5c32: $1d
    ld bc, $1b1a                                  ; $5c33: $01 $1a $1b
    ld e, $01                                     ; $5c36: $1e $01
    dec de                                        ; $5c38: $1b
    inc h                                         ; $5c39: $24
    ld e, $01                                     ; $5c3a: $1e $01
    inc e                                         ; $5c3c: $1c
    dec h                                         ; $5c3d: $25
    ld e, $01                                     ; $5c3e: $1e $01
    dec e                                         ; $5c40: $1d
    ld a, [de]                                    ; $5c41: $1a
    rra                                           ; $5c42: $1f
    ld bc, $1b1e                                  ; $5c43: $01 $1e $1b
    rra                                           ; $5c46: $1f
    ld bc, $1c1f                                  ; $5c47: $01 $1f $1c
    rra                                           ; $5c4a: $1f
    ld bc, $2320                                  ; $5c4b: $01 $20 $23
    rra                                           ; $5c4e: $1f
    ld bc, $2421                                  ; $5c4f: $01 $21 $24
    rra                                           ; $5c52: $1f
    ld bc, $2522                                  ; $5c53: $01 $22 $25
    rra                                           ; $5c56: $1f
    ld bc, $2623                                  ; $5c57: $01 $23 $26
    rra                                           ; $5c5a: $1f
    ld bc, $1b24                                  ; $5c5b: $01 $24 $1b
    jr nz, jr_06c_5c61                            ; $5c5e: $20 $01

    dec h                                         ; $5c60: $25

jr_06c_5c61:
    inc e                                         ; $5c61: $1c
    jr nz, @+$03                                  ; $5c62: $20 $01

    ld h, $23                                     ; $5c64: $26 $23
    jr nz, jr_06c_5c69                            ; $5c66: $20 $01

    daa                                           ; $5c68: $27

jr_06c_5c69:
    inc h                                         ; $5c69: $24
    jr nz, @+$03                                  ; $5c6a: $20 $01

    jr z, @+$27                                   ; $5c6c: $28 $25

    jr nz, jr_06c_5c71                            ; $5c6e: $20 $01

    add hl, hl                                    ; $5c70: $29

jr_06c_5c71:
    inc h                                         ; $5c71: $24
    ld hl, $2a01                                  ; $5c72: $21 $01 $2a
    dec h                                         ; $5c75: $25
    ld hl, $2b01                                  ; $5c76: $21 $01 $2b
    inc h                                         ; $5c79: $24
    ld [hl+], a                                   ; $5c7a: $22
    ld bc, $212c                                  ; $5c7b: $01 $2c $21
    ld h, $01                                     ; $5c7e: $26 $01
    dec l                                         ; $5c80: $2d
    jr nz, jr_06c_5caa                            ; $5c81: $20 $27

    ld bc, $212e                                  ; $5c83: $01 $2e $21
    daa                                           ; $5c86: $27
    ld bc, $222f                                  ; $5c87: $01 $2f $22
    daa                                           ; $5c8a: $27
    ld bc, $2330                                  ; $5c8b: $01 $30 $23
    daa                                           ; $5c8e: $27
    ld bc, $2131                                  ; $5c8f: $01 $31 $21
    jr z, jr_06c_5c95                             ; $5c92: $28 $01

    ld [hl-], a                                   ; $5c94: $32

jr_06c_5c95:
    ld [hl+], a                                   ; $5c95: $22
    jr z, jr_06c_5c99                             ; $5c96: $28 $01

    inc sp                                        ; $5c98: $33

jr_06c_5c99:
    inc hl                                        ; $5c99: $23
    jr z, jr_06c_5c9d                             ; $5c9a: $28 $01

    inc [hl]                                      ; $5c9c: $34

jr_06c_5c9d:
    inc h                                         ; $5c9d: $24
    jr z, jr_06c_5ca1                             ; $5c9e: $28 $01

    dec [hl]                                      ; $5ca0: $35

jr_06c_5ca1:
    ld [hl+], a                                   ; $5ca1: $22
    add hl, hl                                    ; $5ca2: $29
    ld bc, $2336                                  ; $5ca3: $01 $36 $23
    add hl, hl                                    ; $5ca6: $29
    ld bc, $1937                                  ; $5ca7: $01 $37 $19

jr_06c_5caa:
    dec hl                                        ; $5caa: $2b
    ld bc, $1938                                  ; $5cab: $01 $38 $19
    inc l                                         ; $5cae: $2c
    ld bc, $1a39                                  ; $5caf: $01 $39 $1a
    inc l                                         ; $5cb2: $2c
    ld bc, $183a                                  ; $5cb3: $01 $3a $18
    dec l                                         ; $5cb6: $2d
    ld bc, $193b                                  ; $5cb7: $01 $3b $19
    dec l                                         ; $5cba: $2d
    ld bc, $1a3c                                  ; $5cbb: $01 $3c $1a
    dec l                                         ; $5cbe: $2d
    ld bc, $193d                                  ; $5cbf: $01 $3d $19
    ld l, $01                                     ; $5cc2: $2e $01
    ld a, $1a                                     ; $5cc4: $3e $1a
    ld l, $01                                     ; $5cc6: $2e $01
    ccf                                           ; $5cc8: $3f
    dec de                                        ; $5cc9: $1b
    ld l, $01                                     ; $5cca: $2e $01
    ld b, b                                       ; $5ccc: $40
    ld a, [de]                                    ; $5ccd: $1a
    cpl                                           ; $5cce: $2f
    rst $38                                       ; $5ccf: $ff
    rst $38                                       ; $5cd0: $ff
    rst $38                                       ; $5cd1: $ff
    jp c, $a85c                                   ; $5cd2: $da $5c $a8

    ld h, b                                       ; $5cd5: $60
    ld h, l                                       ; $5cd6: $65
    ld h, l                                       ; $5cd7: $65
    add h                                         ; $5cd8: $84
    ld h, l                                       ; $5cd9: $65
    ccf                                           ; $5cda: $3f
    ld c, $0e                                     ; $5cdb: $0e $0e
    dec c                                         ; $5cdd: $0d
    dec c                                         ; $5cde: $0d
    dec c                                         ; $5cdf: $0d
    ld c, $ff                                     ; $5ce0: $0e $ff
    db $e3                                        ; $5ce2: $e3
    or $ea                                        ; $5ce3: $f6 $ea
    ld l, [hl]                                    ; $5ce5: $6e
    db $eb                                        ; $5ce6: $eb
    ldh [rKEY1], a                                ; $5ce7: $e0 $4d
    dec c                                         ; $5ce9: $0d
    ld c, l                                       ; $5cea: $4d
    db $fd                                        ; $5ceb: $fd
    pop hl                                        ; $5cec: $e1
    ld c, l                                       ; $5ced: $4d
    ld c, l                                       ; $5cee: $4d
    db $db                                        ; $5cef: $db
    ldh [$09], a                                  ; $5cf0: $e0 $09
    ld c, l                                       ; $5cf2: $4d
    reti                                          ; $5cf3: $d9


    ld [c], a                                     ; $5cf4: $e2
    call nc, Call_000_0ef1                        ; $5cf5: $d4 $f1 $0e
    pop bc                                        ; $5cf8: $c1
    db $e3                                        ; $5cf9: $e3
    cp e                                          ; $5cfa: $bb
    pop hl                                        ; $5cfb: $e1
    or $e8                                        ; $5cfc: $f6 $e8
    jp nc, Jump_000_00e4                          ; $5cfe: $d2 $e4 $00

    db $fd                                        ; $5d01: $fd
    db $e3                                        ; $5d02: $e3
    or l                                          ; $5d03: $b5
    ldh [$bd], a                                  ; $5d04: $e0 $bd
    pop hl                                        ; $5d06: $e1
    call nc, $85f4                                ; $5d07: $d4 $f4 $85
    rst $28                                       ; $5d0a: $ef
    adc [hl]                                      ; $5d0b: $8e
    ld [c], a                                     ; $5d0c: $e2
    rst $30                                       ; $5d0d: $f7
    db $e3                                        ; $5d0e: $e3
    add c                                         ; $5d0f: $81
    ldh [rSTAT], a                                ; $5d10: $e0 $41
    dec l                                         ; $5d12: $2d
    add b                                         ; $5d13: $80
    pop hl                                        ; $5d14: $e1
    ld e, b                                       ; $5d15: $58
    pop hl                                        ; $5d16: $e1
    ld e, c                                       ; $5d17: $59
    pop af                                        ; $5d18: $f1
    add l                                         ; $5d19: $85
    ld a, [c]                                     ; $5d1a: $f2
    ld d, l                                       ; $5d1b: $55
    db $e4                                        ; $5d1c: $e4
    ld l, l                                       ; $5d1d: $6d
    ld a, a                                       ; $5d1e: $7f
    db $e3                                        ; $5d1f: $e3
    jp $2d4d                                      ; $5d20: $c3 $4d $2d


    ld b, h                                       ; $5d23: $44
    db $e3                                        ; $5d24: $e3
    ld e, c                                       ; $5d25: $59
    pop af                                        ; $5d26: $f1
    or c                                          ; $5d27: $b1
    pop af                                        ; $5d28: $f1
    ld b, e                                       ; $5d29: $43
    push hl                                       ; $5d2a: $e5
    ld l, l                                       ; $5d2b: $6d
    ld l, e                                       ; $5d2c: $6b
    rra                                           ; $5d2d: $1f
    dec c                                         ; $5d2e: $0d
    dec hl                                        ; $5d2f: $2b
    ld a, [bc]                                    ; $5d30: $0a
    ld a, [hl+]                                   ; $5d31: $2a
    dec bc                                        ; $5d32: $0b
    cp a                                          ; $5d33: $bf
    db $e4                                        ; $5d34: $e4
    nop                                           ; $5d35: $00
    rst $38                                       ; $5d36: $ff
    or $c6                                        ; $5d37: $f6 $c6
    cp $08                                        ; $5d39: $fe $08
    db $e4                                        ; $5d3b: $e4
    ld l, e                                       ; $5d3c: $6b
    dec c                                         ; $5d3d: $0d
    dec c                                         ; $5d3e: $0d
    dec bc                                        ; $5d3f: $0b
    ld a, [bc]                                    ; $5d40: $0a
    ld a, [bc]                                    ; $5d41: $0a
    ld c, e                                       ; $5d42: $4b
    pop bc                                        ; $5d43: $c1
    ld a, [bc]                                    ; $5d44: $0a
    ld a, [hl]                                    ; $5d45: $7e
    pop hl                                        ; $5d46: $e1
    cp [hl]                                       ; $5d47: $be
    ld [c], a                                     ; $5d48: $e2
    nop                                           ; $5d49: $00
    rst $38                                       ; $5d4a: $ff
    jp nz, $81e8                                  ; $5d4b: $c2 $e8 $81

    pop hl                                        ; $5d4e: $e1
    ld a, [bc]                                    ; $5d4f: $0a
    ld a, [bc]                                    ; $5d50: $0a
    cpl                                           ; $5d51: $2f
    dec bc                                        ; $5d52: $0b
    dec bc                                        ; $5d53: $0b
    dec hl                                        ; $5d54: $2b
    dec hl                                        ; $5d55: $2b
    ld a, [hl]                                    ; $5d56: $7e
    ldh [rOCPD], a                                ; $5d57: $e0 $6b
    inc a                                         ; $5d59: $3c
    ldh [rNR11], a                                ; $5d5a: $e0 $11
    rst $20                                       ; $5d5c: $e7
    db $fc                                        ; $5d5d: $fc
    nop                                           ; $5d5e: $00
    rst $38                                       ; $5d5f: $ff
    ld d, c                                       ; $5d60: $51
    pop bc                                        ; $5d61: $c1
    ld l, e                                       ; $5d62: $6b
    ld l, e                                       ; $5d63: $6b
    dec c                                         ; $5d64: $0d
    ld c, d                                       ; $5d65: $4a
    ld c, d                                       ; $5d66: $4a
    ld c, e                                       ; $5d67: $4b
    add c                                         ; $5d68: $81
    ld c, e                                       ; $5d69: $4b
    cp [hl]                                       ; $5d6a: $be
    pop hl                                        ; $5d6b: $e1
    ld [hl], h                                    ; $5d6c: $74
    ldh [$c0], a                                  ; $5d6d: $e0 $c0
    db $e4                                        ; $5d6f: $e4
    ld a, e                                       ; $5d70: $7b
    ldh a, [rP1]                                  ; $5d71: $f0 $00
    jp nc, $c003                                  ; $5d73: $d2 $03 $c0

    dec l                                         ; $5d76: $2d
    cp $40                                        ; $5d77: $fe $40
    ldh [$0a], a                                  ; $5d79: $e0 $0a
    ld a, [hl+]                                   ; $5d7b: $2a
    ld l, e                                       ; $5d7c: $6b
    ld c, e                                       ; $5d7d: $4b
    ld c, e                                       ; $5d7e: $4b
    ld l, e                                       ; $5d7f: $6b

jr_06c_5d80:
    ld a, [bc]                                    ; $5d80: $0a
    pop hl                                        ; $5d81: $e1
    ld c, e                                       ; $5d82: $4b
    ret nz                                        ; $5d83: $c0

    db $e3                                        ; $5d84: $e3
    nop                                           ; $5d85: $00
    rst $38                                       ; $5d86: $ff
    ldh a, [$a9]                                  ; $5d87: $f0 $a9
    nop                                           ; $5d89: $00
    pop hl                                        ; $5d8a: $e1
    dec c                                         ; $5d8b: $0d
    ld c, d                                       ; $5d8c: $4a
    ld c, e                                       ; $5d8d: $4b
    dec b                                         ; $5d8e: $05
    dec bc                                        ; $5d8f: $0b
    ret nz                                        ; $5d90: $c0

    ldh [$2d], a                                  ; $5d91: $e0 $2d
    add b                                         ; $5d93: $80
    pop hl                                        ; $5d94: $e1
    nop                                           ; $5d95: $00
    rst $38                                       ; $5d96: $ff
    jp nz, $c0c8                                  ; $5d97: $c2 $c8 $c0

    ld [c], a                                     ; $5d9a: $e2
    cp a                                          ; $5d9b: $bf
    pop hl                                        ; $5d9c: $e1
    ld a, a                                       ; $5d9d: $7f
    ld c, e                                       ; $5d9e: $4b
    ld l, e                                       ; $5d9f: $6b
    dec hl                                        ; $5da0: $2b
    dec c                                         ; $5da1: $0d
    dec l                                         ; $5da2: $2d
    dec l                                         ; $5da3: $2d
    dec l                                         ; $5da4: $2d
    ld b, b                                       ; $5da5: $40
    ldh [$e1], a                                  ; $5da6: $e0 $e1
    ld c, l                                       ; $5da8: $4d
    nop                                           ; $5da9: $00
    rst $18                                       ; $5daa: $df
    nop                                           ; $5dab: $00
    add $44                                       ; $5dac: $c6 $44
    and c                                         ; $5dae: $a1
    add b                                         ; $5daf: $80
    pop bc                                        ; $5db0: $c1
    ld l, e                                       ; $5db1: $6b
    dec c                                         ; $5db2: $0d
    ld l, e                                       ; $5db3: $6b
    ld e, $02                                     ; $5db4: $1e $02
    pop hl                                        ; $5db6: $e1
    dec l                                         ; $5db7: $2d
    dec bc                                        ; $5db8: $0b
    dec c                                         ; $5db9: $0d
    ld l, l                                       ; $5dba: $6d
    ld d, e                                       ; $5dbb: $53
    xor b                                         ; $5dbc: $a8
    nop                                           ; $5dbd: $00
    rst $18                                       ; $5dbe: $df
    ld bc, $06c4                                  ; $5dbf: $01 $c4 $06
    cp l                                          ; $5dc2: $bd
    ret nz                                        ; $5dc3: $c0

    dec hl                                        ; $5dc4: $2b
    ld c, e                                       ; $5dc5: $4b
    jp nz, $b5c1                                  ; $5dc6: $c2 $c1 $b5

    and b                                         ; $5dc9: $a0
    ld a, h                                       ; $5dca: $7c
    and h                                         ; $5dcb: $a4
    nop                                           ; $5dcc: $00
    rst $38                                       ; $5dcd: $ff
    inc b                                         ; $5dce: $04
    and l                                         ; $5dcf: $a5
    inc c                                         ; $5dd0: $0c
    ld bc, $82e1                                  ; $5dd1: $01 $e1 $82
    ldh [rWX], a                                  ; $5dd4: $e0 $4b
    dec hl                                        ; $5dd6: $2b
    ld a, e                                       ; $5dd7: $7b
    ldh [$7e], a                                  ; $5dd8: $e0 $7e
    and b                                         ; $5dda: $a0
    add l                                         ; $5ddb: $85
    pop af                                        ; $5ddc: $f1
    nop                                           ; $5ddd: $00
    jp c, Jump_06c_440e                           ; $5dde: $da $0e $44

    ldh [$0d], a                                  ; $5de1: $e0 $0d
    dec c                                         ; $5de3: $0d
    dec hl                                        ; $5de4: $2b
    nop                                           ; $5de5: $00
    ret nz                                        ; $5de6: $c0

    ret nz                                        ; $5de7: $c0

    db $e3                                        ; $5de8: $e3
    ld a, [c]                                     ; $5de9: $f2
    add e                                         ; $5dea: $83
    nop                                           ; $5deb: $00

jr_06c_5dec:
    rst $38                                       ; $5dec: $ff
    jr c, jr_06c_5e44                             ; $5ded: $38 $55

    add b                                         ; $5def: $80
    jp nz, Jump_000_0183                          ; $5df0: $c2 $83 $01

    ld [c], a                                     ; $5df3: $e2
    dec bc                                        ; $5df4: $0b
    dec bc                                        ; $5df5: $0b
    dec c                                         ; $5df6: $0d
    add b                                         ; $5df7: $80
    ldh [$fd], a                                  ; $5df8: $e0 $fd
    add d                                         ; $5dfa: $82
    ldh [rNR21], a                                ; $5dfb: $e0 $16
    add c                                         ; $5dfd: $81
    jr nc, jr_06c_5d80                            ; $5dfe: $30 $80

    nop                                           ; $5e00: $00
    cp $17                                        ; $5e01: $fe $17
    and h                                         ; $5e03: $a4
    jp z, Jump_06c_6b82                           ; $5e04: $ca $82 $6b

    ld l, e                                       ; $5e07: $6b
    ld c, e                                       ; $5e08: $4b
    ld bc, $036b                                  ; $5e09: $01 $6b $03
    ret nz                                        ; $5e0c: $c0

    cp h                                          ; $5e0d: $bc
    add d                                         ; $5e0e: $82
    ldh a, [$60]                                  ; $5e0f: $f0 $60

jr_06c_5e11:
    ei                                            ; $5e11: $fb
    ld h, e                                       ; $5e12: $63
    nop                                           ; $5e13: $00
    rst $38                                       ; $5e14: $ff
    cp a                                          ; $5e15: $bf
    ld h, e                                       ; $5e16: $63
    add b                                         ; $5e17: $80
    pop bc                                        ; $5e18: $c1
    rrca                                          ; $5e19: $0f
    ld l, e                                       ; $5e1a: $6b
    dec bc                                        ; $5e1b: $0b
    ld c, e                                       ; $5e1c: $4b
    dec bc                                        ; $5e1d: $0b
    halt                                          ; $5e1e: $76
    and c                                         ; $5e1f: $a1
    add b                                         ; $5e20: $80
    and d                                         ; $5e21: $a2
    or l                                          ; $5e22: $b5
    ld h, b                                       ; $5e23: $60
    nop                                           ; $5e24: $00
    rst $38                                       ; $5e25: $ff
    inc c                                         ; $5e26: $0c
    nop                                           ; $5e27: $00
    xor b                                         ; $5e28: $a8
    ld b, d                                       ; $5e29: $42
    pop bc                                        ; $5e2a: $c1
    dec bc                                        ; $5e2b: $0b
    dec hl                                        ; $5e2c: $2b
    dec a                                         ; $5e2d: $3d
    ldh [$be], a                                  ; $5e2e: $e0 $be
    jp $63f9                                      ; $5e30: $c3 $f9 $63


    nop                                           ; $5e33: $00
    rst $38                                       ; $5e34: $ff
    jr nc, jr_06c_5e3a                            ; $5e35: $30 $03

    jp nz, $e0c2                                  ; $5e37: $c2 $c2 $e0

jr_06c_5e3a:
    pop bc                                        ; $5e3a: $c1
    pop bc                                        ; $5e3b: $c1
    jp Jump_06c_4b80                              ; $5e3c: $c3 $80 $4b


    dec bc                                        ; $5e3f: $0b
    add b                                         ; $5e40: $80
    db $e3                                        ; $5e41: $e3
    ld b, b                                       ; $5e42: $40
    add d                                         ; $5e43: $82

jr_06c_5e44:
    jr jr_06c_5e46                                ; $5e44: $18 $00

jr_06c_5e46:
    rst $38                                       ; $5e46: $ff
    sub l                                         ; $5e47: $95
    ld h, e                                       ; $5e48: $63
    pop bc                                        ; $5e49: $c1
    db $e4                                        ; $5e4a: $e4
    dec bc                                        ; $5e4b: $0b
    ld c, e                                       ; $5e4c: $4b
    rst $38                                       ; $5e4d: $ff
    and d                                         ; $5e4e: $a2
    cp [hl]                                       ; $5e4f: $be
    ret z                                         ; $5e50: $c8

    nop                                           ; $5e51: $00
    rst $38                                       ; $5e52: $ff
    db $10                                        ; $5e53: $10
    inc b                                         ; $5e54: $04
    and e                                         ; $5e55: $a3
    add c                                         ; $5e56: $81
    pop hl                                        ; $5e57: $e1
    ld b, d                                       ; $5e58: $42
    pop hl                                        ; $5e59: $e1
    ret nz                                        ; $5e5a: $c0

    ret nz                                        ; $5e5b: $c0

    ld c, e                                       ; $5e5c: $4b
    db $f4                                        ; $5e5d: $f4
    ld [c], a                                     ; $5e5e: $e2
    cp h                                          ; $5e5f: $bc
    ld h, [hl]                                    ; $5e60: $66
    nop                                           ; $5e61: $00
    rst $38                                       ; $5e62: $ff
    jr c, jr_06c_5dec                             ; $5e63: $38 $87

    jp nz, $a184                                  ; $5e65: $c2 $84 $a1

    ret nz                                        ; $5e68: $c0

    pop hl                                        ; $5e69: $e1

jr_06c_5e6a:
    ld c, e                                       ; $5e6a: $4b
    dec c                                         ; $5e6b: $0d
    ld c, e                                       ; $5e6c: $4b
    jr c, jr_06c_5e11                             ; $5e6d: $38 $a2

    ld a, [hl]                                    ; $5e6f: $7e
    jp RST_30                                     ; $5e70: $c3 $30 $00


    rst $38                                       ; $5e73: $ff
    ld a, [de]                                    ; $5e74: $1a
    pop bc                                        ; $5e75: $c1
    dec c                                         ; $5e76: $0d
    ld h, b                                       ; $5e77: $60
    add b                                         ; $5e78: $80
    ld [c], a                                     ; $5e79: $e2
    dec bc                                        ; $5e7a: $0b
    dec bc                                        ; $5e7b: $0b
    ld b, l                                       ; $5e7c: $45
    add c                                         ; $5e7d: $81
    ret nz                                        ; $5e7e: $c0

    ld [c], a                                     ; $5e7f: $e2

jr_06c_5e80:
    ld b, b                                       ; $5e80: $40
    ld a, [hl]                                    ; $5e81: $7e
    push bc                                       ; $5e82: $c5
    nop                                           ; $5e83: $00
    rst $38                                       ; $5e84: $ff
    ld d, e                                       ; $5e85: $53
    ld b, d                                       ; $5e86: $42
    cp a                                          ; $5e87: $bf
    pop hl                                        ; $5e88: $e1
    inc b                                         ; $5e89: $04
    and b                                         ; $5e8a: $a0
    ld b, b                                       ; $5e8b: $40
    ldh [$0d], a                                  ; $5e8c: $e0 $0d
    rst $38                                       ; $5e8e: $ff
    ld b, b                                       ; $5e8f: $40
    ldh [$b7], a                                  ; $5e90: $e0 $b7
    add d                                         ; $5e92: $82
    ld a, [hl]                                    ; $5e93: $7e
    ld l, b                                       ; $5e94: $68
    nop                                           ; $5e95: $00
    sbc h                                         ; $5e96: $9c
    ld b, d                                       ; $5e97: $42
    ld b, d                                       ; $5e98: $42
    add b                                         ; $5e99: $80
    ld [c], a                                     ; $5e9a: $e2
    ld c, e                                       ; $5e9b: $4b
    ld a, [bc]                                    ; $5e9c: $0a
    ld c, e                                       ; $5e9d: $4b
    ld bc, $404b                                  ; $5e9e: $01 $4b $40
    ld h, c                                       ; $5ea1: $61
    ccf                                           ; $5ea2: $3f
    db $e4                                        ; $5ea3: $e4
    and c                                         ; $5ea4: $a1
    ld l, b                                       ; $5ea5: $68
    nop                                           ; $5ea6: $00
    ld e, d                                       ; $5ea7: $5a
    ret nz                                        ; $5ea8: $c0

    push hl                                       ; $5ea9: $e5
    add e                                         ; $5eaa: $83
    ld h, b                                       ; $5eab: $60
    ld a, a                                       ; $5eac: $7f
    db $e4                                        ; $5ead: $e4
    ld h, b                                       ; $5eae: $60
    ld [hl], h                                    ; $5eaf: $74
    add c                                         ; $5eb0: $81
    cp $c5                                        ; $5eb1: $fe $c5
    nop                                           ; $5eb3: $00
    sbc a                                         ; $5eb4: $9f
    ld bc, $0564                                  ; $5eb5: $01 $64 $05
    ldh [rWX], a                                  ; $5eb8: $e0 $4b
    ld a, [bc]                                    ; $5eba: $0a
    ccf                                           ; $5ebb: $3f
    add b                                         ; $5ebc: $80
    ld e, $bf                                     ; $5ebd: $1e $bf
    ld b, c                                       ; $5ebf: $41
    dec c                                         ; $5ec0: $0d
    ld c, e                                       ; $5ec1: $4b
    ld c, e                                       ; $5ec2: $4b
    ld c, e                                       ; $5ec3: $4b
    cp h                                          ; $5ec4: $bc
    ld b, d                                       ; $5ec5: $42
    nop                                           ; $5ec6: $00
    rst $38                                       ; $5ec7: $ff
    jr jr_06c_5e6a                                ; $5ec8: $18 $a0

    nop                                           ; $5eca: $00
    ld bc, $8264                                  ; $5ecb: $01 $64 $82
    ret nz                                        ; $5ece: $c0

    cp $c4                                        ; $5ecf: $fe $c4
    db $f4                                        ; $5ed1: $f4
    ld h, d                                       ; $5ed2: $62
    or b                                          ; $5ed3: $b0
    jr nz, jr_06c_5f54                            ; $5ed4: $20 $7e

    add e                                         ; $5ed6: $83
    nop                                           ; $5ed7: $00
    sbc a                                         ; $5ed8: $9f
    rst $08                                       ; $5ed9: $cf
    nop                                           ; $5eda: $00
    ld h, h                                       ; $5edb: $64
    ret nz                                        ; $5edc: $c0

    ld b, b                                       ; $5edd: $40
    ld [bc], a                                    ; $5ede: $02
    and c                                         ; $5edf: $a1
    ld a, [bc]                                    ; $5ee0: $0a
    dec a                                         ; $5ee1: $3d
    pop hl                                        ; $5ee2: $e1
    add c                                         ; $5ee3: $81
    ld b, b                                       ; $5ee4: $40
    ld l, e                                       ; $5ee5: $6b
    ld l, e                                       ; $5ee6: $6b
    jr c, jr_06c_5f0d                             ; $5ee7: $38 $24

    ld [$ff00], sp                                ; $5ee9: $08 $00 $ff
    sub [hl]                                      ; $5eec: $96
    and h                                         ; $5eed: $a4
    ld a, a                                       ; $5eee: $7f
    jp nz, $800b                                  ; $5eef: $c2 $0b $80

    add b                                         ; $5ef2: $80
    ccf                                           ; $5ef3: $3f
    and c                                         ; $5ef4: $a1
    ld [hl], d                                    ; $5ef5: $72
    ld b, b                                       ; $5ef6: $40
    ld a, h                                       ; $5ef7: $7c
    ld h, d                                       ; $5ef8: $62
    nop                                           ; $5ef9: $00
    nop                                           ; $5efa: $00
    rst $38                                       ; $5efb: $ff
    ret nz                                        ; $5efc: $c0

    jr z, jr_06c_5e80                             ; $5efd: $28 $81

    add b                                         ; $5eff: $80
    ld a, a                                       ; $5f00: $7f
    ret nz                                        ; $5f01: $c0

    ccf                                           ; $5f02: $3f
    and d                                         ; $5f03: $a2
    add c                                         ; $5f04: $81
    ldh [$3f], a                                  ; $5f05: $e0 $3f
    and e                                         ; $5f07: $a3
    nop                                           ; $5f08: $00
    rst $38                                       ; $5f09: $ff
    nop                                           ; $5f0a: $00
    ld c, b                                       ; $5f0b: $48
    inc bc                                        ; $5f0c: $03

jr_06c_5f0d:
    ld [bc], a                                    ; $5f0d: $02
    jr nz, jr_06c_5f11                            ; $5f0e: $20 $01

    add e                                         ; $5f10: $83

jr_06c_5f11:
    ld a, a                                       ; $5f11: $7f
    and b                                         ; $5f12: $a0
    or h                                          ; $5f13: $b4
    jp nz, Jump_06c_647c                          ; $5f14: $c2 $7c $64

    nop                                           ; $5f17: $00
    rst $38                                       ; $5f18: $ff
    ld bc, $0266                                  ; $5f19: $01 $66 $02
    ret nz                                        ; $5f1c: $c0

    nop                                           ; $5f1d: $00
    ld l, e                                       ; $5f1e: $6b
    ld a, $a1                                     ; $5f1f: $3e $a1
    cp $63                                        ; $5f21: $fe $63
    ld a, c                                       ; $5f23: $79
    ld bc, $9f00                                  ; $5f24: $01 $00 $9f
    nop                                           ; $5f27: $00
    rst $00                                       ; $5f28: $c7
    ld b, b                                       ; $5f29: $40
    ld b, d                                       ; $5f2a: $42
    nop                                           ; $5f2b: $00
    ld b, b                                       ; $5f2c: $40
    ld h, b                                       ; $5f2d: $60
    db $fd                                        ; $5f2e: $fd
    and c                                         ; $5f2f: $a1
    ccf                                           ; $5f30: $3f
    db $e4                                        ; $5f31: $e4
    nop                                           ; $5f32: $00
    ld e, a                                       ; $5f33: $5f
    nop                                           ; $5f34: $00
    and e                                         ; $5f35: $a3
    ret nz                                        ; $5f36: $c0

    add sp, -$80                                  ; $5f37: $e8 $80
    add c                                         ; $5f39: $81
    ld a, [hl]                                    ; $5f3a: $7e
    ld h, d                                       ; $5f3b: $62
    add c                                         ; $5f3c: $81
    ld c, e                                       ; $5f3d: $4b
    ld a, l                                       ; $5f3e: $7d
    ld h, e                                       ; $5f3f: $63
    nop                                           ; $5f40: $00
    rst $38                                       ; $5f41: $ff
    cp [hl]                                       ; $5f42: $be
    inc hl                                        ; $5f43: $23
    ld [bc], a                                    ; $5f44: $02
    ld b, c                                       ; $5f45: $41
    ret nz                                        ; $5f46: $c0

    ld [c], a                                     ; $5f47: $e2

jr_06c_5f48:
    ret nz                                        ; $5f48: $c0

    jp Jump_06c_602d                              ; $5f49: $c3 $2d $60


    ret nz                                        ; $5f4c: $c0

    push hl                                       ; $5f4d: $e5
    nop                                           ; $5f4e: $00
    rst $38                                       ; $5f4f: $ff
    ld a, a                                       ; $5f50: $7f
    add d                                         ; $5f51: $82
    add c                                         ; $5f52: $81
    and e                                         ; $5f53: $a3

jr_06c_5f54:
    ret nz                                        ; $5f54: $c0

    db $e4                                        ; $5f55: $e4
    dec bc                                        ; $5f56: $0b
    dec bc                                        ; $5f57: $0b
    ld a, $20                                     ; $5f58: $3e $20
    ld bc, $c14b                                  ; $5f5a: $01 $4b $c1
    and d                                         ; $5f5d: $a2
    nop                                           ; $5f5e: $00
    rst $38                                       ; $5f5f: $ff
    ld b, c                                       ; $5f60: $41
    inc h                                         ; $5f61: $24
    add d                                         ; $5f62: $82
    ld bc, $4140                                  ; $5f63: $01 $40 $41
    add b                                         ; $5f66: $80
    pop hl                                        ; $5f67: $e1
    cp l                                          ; $5f68: $bd
    ld b, b                                       ; $5f69: $40
    nop                                           ; $5f6a: $00
    ld bc, $00c1                                  ; $5f6b: $01 $c1 $00
    ld a, a                                       ; $5f6e: $7f
    jr nc, @-$37                                  ; $5f6f: $30 $c7

    add c                                         ; $5f71: $81
    and d                                         ; $5f72: $a2
    ret nz                                        ; $5f73: $c0

    push hl                                       ; $5f74: $e5
    dec sp                                        ; $5f75: $3b
    add b                                         ; $5f76: $80
    inc bc                                        ; $5f77: $03
    and c                                         ; $5f78: $a1
    nop                                           ; $5f79: $00
    ld a, a                                       ; $5f7a: $7f
    nop                                           ; $5f7b: $00
    ld h, c                                       ; $5f7c: $61
    ld l, b                                       ; $5f7d: $68
    rst $38                                       ; $5f7e: $ff
    add d                                         ; $5f7f: $82
    cp h                                          ; $5f80: $bc
    ld b, b                                       ; $5f81: $40
    add b                                         ; $5f82: $80
    ld [c], a                                     ; $5f83: $e2
    db $fd                                        ; $5f84: $fd
    jr nz, jr_06c_5f48                            ; $5f85: $20 $c1

    and l                                         ; $5f87: $a5
    nop                                           ; $5f88: $00
    sbc a                                         ; $5f89: $9f
    ld a, $c8                                     ; $5f8a: $3e $c8
    add b                                         ; $5f8c: $80
    nop                                           ; $5f8d: $00
    ld b, d                                       ; $5f8e: $42
    cp $60                                        ; $5f8f: $fe $60
    pop bc                                        ; $5f91: $c1
    and a                                         ; $5f92: $a7
    nop                                           ; $5f93: $00
    rst $38                                       ; $5f94: $ff
    reti                                          ; $5f95: $d9


    push hl                                       ; $5f96: $e5
    cp a                                          ; $5f97: $bf
    inc b                                         ; $5f98: $04
    ld a, a                                       ; $5f99: $7f
    pop hl                                        ; $5f9a: $e1
    dec bc                                        ; $5f9b: $0b
    nop                                           ; $5f9c: $00
    ld a, c                                       ; $5f9d: $79
    ld b, b                                       ; $5f9e: $40
    pop bc                                        ; $5f9f: $c1
    and c                                         ; $5fa0: $a1
    add h                                         ; $5fa1: $84
    call nz, $ff00                                ; $5fa2: $c4 $00 $ff
    jp nc, $fe03                                  ; $5fa5: $d2 $03 $fe

    jp nz, $e13f                                  ; $5fa8: $c2 $3f $e1

    cp e                                          ; $5fab: $bb
    ld b, c                                       ; $5fac: $41
    add b                                         ; $5fad: $80
    pop bc                                        ; $5fae: $c1
    ld h, l                                       ; $5faf: $65
    nop                                           ; $5fb0: $00
    rst $38                                       ; $5fb1: $ff
    ld [hl], c                                    ; $5fb2: $71
    ld h, [hl]                                    ; $5fb3: $66
    cp $c3                                        ; $5fb4: $fe $c3
    ld a, a                                       ; $5fb6: $7f
    ret nz                                        ; $5fb7: $c0

    ei                                            ; $5fb8: $fb
    nop                                           ; $5fb9: $00
    ld l, $41                                     ; $5fba: $2e $41
    ld c, l                                       ; $5fbc: $4d
    ld bc, $002d                                  ; $5fbd: $01 $2d $00
    rst $18                                       ; $5fc0: $df
    ld a, e                                       ; $5fc1: $7b
    ld h, a                                       ; $5fc2: $67
    ld a, h                                       ; $5fc3: $7c
    and l                                         ; $5fc4: $a5
    cp l                                          ; $5fc5: $bd
    and c                                         ; $5fc6: $a1
    ld hl, sp-$1e                                 ; $5fc7: $f8 $e2
    ld a, [hl]                                    ; $5fc9: $7e
    add d                                         ; $5fca: $82
    nop                                           ; $5fcb: $00
    rst $38                                       ; $5fcc: $ff
    nop                                           ; $5fcd: $00
    ld [hl], c                                    ; $5fce: $71
    xor c                                         ; $5fcf: $a9
    cp h                                          ; $5fd0: $bc
    and e                                         ; $5fd1: $a3
    ld b, e                                       ; $5fd2: $43
    and c                                         ; $5fd3: $a1
    ret nz                                        ; $5fd4: $c0

    ld h, c                                       ; $5fd5: $61
    db $fc                                        ; $5fd6: $fc
    nop                                           ; $5fd7: $00
    nop                                           ; $5fd8: $00
    ld e, a                                       ; $5fd9: $5f
    ld a, e                                       ; $5fda: $7b
    ret                                           ; $5fdb: $c9


    cp [hl]                                       ; $5fdc: $be
    jp $0300                                      ; $5fdd: $c3 $00 $03


    ld h, d                                       ; $5fe0: $62
    cp a                                          ; $5fe1: $bf
    and b                                         ; $5fe2: $a0
    cp [hl]                                       ; $5fe3: $be
    and a                                         ; $5fe4: $a7
    nop                                           ; $5fe5: $00
    rst $38                                       ; $5fe6: $ff
    cp [hl]                                       ; $5fe7: $be
    ret z                                         ; $5fe8: $c8

    ld a, c                                       ; $5fe9: $79
    jp nz, $a1ff                                  ; $5fea: $c2 $ff $a1

    ld bc, $0061                                  ; $5fed: $01 $61 $00
    ld c, a                                       ; $5ff0: $4f
    ld d, c                                       ; $5ff1: $51
    nop                                           ; $5ff2: $00
    db $f4                                        ; $5ff3: $f4
    cp e                                          ; $5ff4: $bb
    ld b, [hl]                                    ; $5ff5: $46
    ld a, e                                       ; $5ff6: $7b
    push hl                                       ; $5ff7: $e5
    ld a, [hl]                                    ; $5ff8: $7e
    inc b                                         ; $5ff9: $04
    nop                                           ; $5ffa: $00
    rst $38                                       ; $5ffb: $ff
    cp d                                          ; $5ffc: $ba
    ld l, b                                       ; $5ffd: $68
    ld a, d                                       ; $5ffe: $7a
    ld b, d                                       ; $5fff: $42

jr_06c_6000:
    inc b                                         ; $6000: $04
    nop                                           ; $6001: $00
    jr nz, jr_06c_6000                            ; $6002: $20 $fc

    nop                                           ; $6004: $00
    dec bc                                        ; $6005: $0b
    ret nz                                        ; $6006: $c0

    ld h, c                                       ; $6007: $61
    push hl                                       ; $6008: $e5
    ld b, l                                       ; $6009: $45
    nop                                           ; $600a: $00
    rst $38                                       ; $600b: $ff
    ld a, e                                       ; $600c: $7b
    ld b, h                                       ; $600d: $44
    cp l                                          ; $600e: $bd
    call nz, $bc02                                ; $600f: $c4 $02 $bc
    ld bc, $be4b                                  ; $6012: $01 $4b $be
    and c                                         ; $6015: $a1
    nop                                           ; $6016: $00
    rst $18                                       ; $6017: $df
    ld a, e                                       ; $6018: $7b
    ld [$0377], sp                                ; $6019: $08 $77 $03
    inc [hl]                                      ; $601c: $34
    ld [bc], a                                    ; $601d: $02
    cp e                                          ; $601e: $bb
    ld bc, $bde0                                  ; $601f: $01 $e0 $bd
    add c                                         ; $6022: $81
    nop                                           ; $6023: $00
    cp a                                          ; $6024: $bf
    ld a, e                                       ; $6025: $7b
    daa                                           ; $6026: $27
    sub d                                         ; $6027: $92
    and c                                         ; $6028: $a1
    cp d                                          ; $6029: $ba
    ld b, c                                       ; $602a: $41
    dec hl                                        ; $602b: $2b
    dec c                                         ; $602c: $0d

Jump_06c_602d:
    dec bc                                        ; $602d: $0b
    nop                                           ; $602e: $00
    add hl, sp                                    ; $602f: $39
    ld h, b                                       ; $6030: $60
    dec sp                                        ; $6031: $3b
    pop bc                                        ; $6032: $c1
    jp Jump_000_00a6                              ; $6033: $c3 $a6 $00


    rst $38                                       ; $6036: $ff
    cp d                                          ; $6037: $ba
    ld b, l                                       ; $6038: $45
    ld a, d                                       ; $6039: $7a
    nop                                           ; $603a: $00
    jp nz, $fde0                                  ; $603b: $c2 $e0 $fd

    pop hl                                        ; $603e: $e1
    jr nz, @-$03                                  ; $603f: $20 $fb

    and c                                         ; $6041: $a1
    nop                                           ; $6042: $00
    ccf                                           ; $6043: $3f
    ld a, e                                       ; $6044: $7b
    dec hl                                        ; $6045: $2b
    ret nz                                        ; $6046: $c0

    db $e3                                        ; $6047: $e3
    add b                                         ; $6048: $80
    ldh [$2d], a                                  ; $6049: $e0 $2d
    ret nz                                        ; $604b: $c0

    push hl                                       ; $604c: $e5
    nop                                           ; $604d: $00
    rst $38                                       ; $604e: $ff
    ld [bc], a                                    ; $604f: $02
    nop                                           ; $6050: $00
    add sp, $4d                                   ; $6051: $e8 $4d
    ld a, [$8001]                                 ; $6053: $fa $01 $80
    jp hl                                         ; $6056: $e9


    nop                                           ; $6057: $00
    ccf                                           ; $6058: $3f
    ld a, e                                       ; $6059: $7b
    add hl, hl                                    ; $605a: $29
    ld a, c                                       ; $605b: $79
    ld b, h                                       ; $605c: $44
    ld b, b                                       ; $605d: $40
    db $e3                                        ; $605e: $e3
    ld [bc], a                                    ; $605f: $02
    cp c                                          ; $6060: $b9
    jr nz, jr_06c_6090                            ; $6061: $20 $2d

    add c                                         ; $6063: $81
    jp $ff00                                      ; $6064: $c3 $00 $ff


    ld a, l                                       ; $6067: $7d
    add a                                         ; $6068: $87
    sla c                                         ; $6069: $cb $21
    add b                                         ; $606b: $80
    jp nz, $2141                                  ; $606c: $c2 $41 $21

    nop                                           ; $606f: $00
    cp $44                                        ; $6070: $fe $44
    nop                                           ; $6072: $00
    rst $38                                       ; $6073: $ff
    cp c                                          ; $6074: $b9
    jr z, @+$38                                   ; $6075: $28 $36

    add $7d                                       ; $6077: $c6 $7d
    ld b, b                                       ; $6079: $40
    ld b, b                                       ; $607a: $40
    and l                                         ; $607b: $a5
    nop                                           ; $607c: $00
    rst $38                                       ; $607d: $ff
    ld [bc], a                                    ; $607e: $02
    db $e4                                        ; $607f: $e4
    nop                                           ; $6080: $00
    dec a                                         ; $6081: $3d
    and e                                         ; $6082: $a3
    rst $38                                       ; $6083: $ff
    db $e4                                        ; $6084: $e4
    nop                                           ; $6085: $00
    cp a                                          ; $6086: $bf
    ld a, e                                       ; $6087: $7b
    rrca                                          ; $6088: $0f
    adc [hl]                                      ; $6089: $8e
    ld b, d                                       ; $608a: $42
    ld [hl], b                                    ; $608b: $70
    dec b                                         ; $608c: $05
    rst $38                                       ; $608d: $ff
    ld b, a                                       ; $608e: $47
    nop                                           ; $608f: $00

jr_06c_6090:
    rst $38                                       ; $6090: $ff
    nop                                           ; $6091: $00
    cp [hl]                                       ; $6092: $be
    ret z                                         ; $6093: $c8

    inc sp                                        ; $6094: $33
    ld h, e                                       ; $6095: $63
    add [hl]                                      ; $6096: $86
    ld [bc], a                                    ; $6097: $02
    add d                                         ; $6098: $82
    jp $ff00                                      ; $6099: $c3 $00 $ff


    ld a, $aa                                     ; $609c: $3e $aa
    ld c, e                                       ; $609e: $4b
    ld h, c                                       ; $609f: $61
    ld [hl], e                                    ; $60a0: $73
    and $00                                       ; $60a1: $e6 $00
    nop                                           ; $60a3: $00
    xor [hl]                                      ; $60a4: $ae
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    rst $38                                       ; $60a8: $ff
    call c, $a0dd                                 ; $60a9: $dc $dd $a0
    sbc $df                                       ; $60ac: $de $df
    ldh [$e1], a                                  ; $60ae: $e0 $e1
    ld [c], a                                     ; $60b0: $e2
    ld a, e                                       ; $60b1: $7b
    db $e3                                        ; $60b2: $e3
    db $e4                                        ; $60b3: $e4
    or $ec                                        ; $60b4: $f6 $ec
    and b                                         ; $60b6: $a0
    ret c                                         ; $60b7: $d8

    reti                                          ; $60b8: $d9


    and b                                         ; $60b9: $a0
    rst $38                                       ; $60ba: $ff
    push hl                                       ; $60bb: $e5
    di                                            ; $60bc: $f3
    sub $d7                                       ; $60bd: $d6 $d7
    push af                                       ; $60bf: $f5
    ld [c], a                                     ; $60c0: $e2
    call nc, $e5f1                                ; $60c1: $d4 $f1 $e5
    and $e7                                       ; $60c4: $e6 $e7
    and b                                         ; $60c6: $a0

Jump_06c_60c7:
    cp a                                          ; $60c7: $bf
    add sp, -$17                                  ; $60c8: $e8 $e9
    ld [$eceb], a                                 ; $60ca: $ea $eb $ec
    and b                                         ; $60cd: $a0
    or $eb                                        ; $60ce: $f6 $eb
    and b                                         ; $60d0: $a0
    ccf                                           ; $60d1: $3f
    and b                                         ; $60d2: $a0
    jp c, $a0db                                   ; $60d3: $da $db $a0

    push af                                       ; $60d6: $f5
    or $bd                                        ; $60d7: $f6 $bd
    db $e3                                        ; $60d9: $e3
    or l                                          ; $60da: $b5
    ldh [rBGP], a                                 ; $60db: $e0 $47
    ret nc                                        ; $60dd: $d0

    pop de                                        ; $60de: $d1
    and b                                         ; $60df: $a0
    sbc $ec                                       ; $60e0: $de $ec
    jp z, $85e3                                   ; $60e2: $ca $e3 $85

    ld a, [c]                                     ; $60e5: $f2
    and b                                         ; $60e6: $a0
    pop de                                        ; $60e7: $d1
    ld [c], a                                     ; $60e8: $e2
    xor a                                         ; $60e9: $af
    and b                                         ; $60ea: $a0
    sbc a                                         ; $60eb: $9f
    and d                                         ; $60ec: $a2
    sbc l                                         ; $60ed: $9d
    rst $38                                       ; $60ee: $ff
    pop hl                                        ; $60ef: $e1
    sbc a                                         ; $60f0: $9f
    or l                                          ; $60f1: $b5
    pop hl                                        ; $60f2: $e1
    jp nc, $d3d3                                  ; $60f3: $d2 $d3 $d3

    and b                                         ; $60f6: $a0
    call nc, $85f2                                ; $60f7: $d4 $f2 $85
    ld a, [c]                                     ; $60fa: $f2
    and b                                         ; $60fb: $a0
    pop de                                        ; $60fc: $d1
    ld [c], a                                     ; $60fd: $e2
    sbc a                                         ; $60fe: $9f
    sbc h                                         ; $60ff: $9c
    rst $38                                       ; $6100: $ff
    ld a, c                                       ; $6101: $79
    ld a, d                                       ; $6102: $7a
    ld a, e                                       ; $6103: $7b
    ld a, e                                       ; $6104: $7b
    ld a, h                                       ; $6105: $7c
    ld a, l                                       ; $6106: $7d
    sbc h                                         ; $6107: $9c
    sbc a                                         ; $6108: $9f
    cp a                                          ; $6109: $bf
    and b                                         ; $610a: $a0
    db $ed                                        ; $610b: $ed
    xor $d4                                       ; $610c: $ee $d4
    push de                                       ; $610e: $d5
    rst $28                                       ; $610f: $ef
    ld e, c                                       ; $6110: $59
    pop af                                        ; $6111: $f1
    add sp, -$04                                  ; $6112: $e8 $fc
    nop                                           ; $6114: $00
    pop af                                        ; $6115: $f1
    pop de                                        ; $6116: $d1
    db $e3                                        ; $6117: $e3
    sbc a                                         ; $6118: $9f
    sbc h                                         ; $6119: $9c
    ld b, [hl]                                    ; $611a: $46
    add b                                         ; $611b: $80
    ld b, l                                       ; $611c: $45
    ld c, b                                       ; $611d: $48
    rst $30                                       ; $611e: $f7
    ld c, b                                       ; $611f: $48
    ld b, l                                       ; $6120: $45
    ld a, a                                       ; $6121: $7f
    cp a                                          ; $6122: $bf
    ldh [$f0], a                                  ; $6123: $e0 $f0
    pop af                                        ; $6125: $f1
    ld a, [c]                                     ; $6126: $f2
    di                                            ; $6127: $f3
    jp hl                                         ; $6128: $e9


    db $f4                                        ; $6129: $f4
    nop                                           ; $612a: $00
    rst $38                                       ; $612b: $ff
    or $c4                                        ; $612c: $f6 $c4
    and b                                         ; $612e: $a0
    pop de                                        ; $612f: $d1
    ld [c], a                                     ; $6130: $e2
    sbc [hl]                                      ; $6131: $9e
    ld b, [hl]                                    ; $6132: $46
    ld a, c                                       ; $6133: $79
    cp a                                          ; $6134: $bf
    adc l                                         ; $6135: $8d

jr_06c_6136:
    ld b, e                                       ; $6136: $43
    ld e, c                                       ; $6137: $59
    ld e, c                                       ; $6138: $59
    ld b, h                                       ; $6139: $44
    res 7, a                                      ; $613a: $cb $bf
    ldh [$a2], a                                  ; $613c: $e0 $a2
    pop bc                                        ; $613e: $c1
    sbc a                                         ; $613f: $9f
    db $f4                                        ; $6140: $f4
    pop bc                                        ; $6141: $c1
    nop                                           ; $6142: $00
    rst $38                                       ; $6143: $ff
    nop                                           ; $6144: $00
    push hl                                       ; $6145: $e5
    rst $00                                       ; $6146: $c7
    ret nz                                        ; $6147: $c0

    add c                                         ; $6148: $81
    pop hl                                        ; $6149: $e1
    ld c, d                                       ; $614a: $4a
    ld e, d                                       ; $614b: $5a
    cpl                                           ; $614c: $2f
    ld a, [hl+]                                   ; $614d: $2a
    cpl                                           ; $614e: $2f
    inc l                                         ; $614f: $2c
    dec hl                                        ; $6150: $2b
    ld a, [hl]                                    ; $6151: $7e
    ldh [rDMA], a                                 ; $6152: $e0 $46
    inc a                                         ; $6154: $3c

Jump_06c_6155:
    ldh [$7b], a                                  ; $6155: $e0 $7b
    jp nz, Jump_000_00bc                          ; $6157: $c2 $bc $00

    rst $38                                       ; $615a: $ff
    nop                                           ; $615b: $00
    db $e3                                        ; $615c: $e3
    and b                                         ; $615d: $a0
    and b                                         ; $615e: $a0
    sbc [hl]                                      ; $615f: $9e
    ld b, [hl]                                    ; $6160: $46
    ret nz                                        ; $6161: $c0

    ldh [rRP], a                                  ; $6162: $e0 $56
    cp a                                          ; $6164: $bf
    ld a, [hl+]                                   ; $6165: $2a
    cpl                                           ; $6166: $2f
    jr nz, jr_06c_6189                            ; $6167: $20 $20

    ld a, [hl+]                                   ; $6169: $2a
    ld b, e                                       ; $616a: $43
    cp a                                          ; $616b: $bf
    ldh [$9e], a                                  ; $616c: $e0 $9e
    ret c                                         ; $616e: $d8

    jr nc, jr_06c_6136                            ; $616f: $30 $c5

    nop                                           ; $6171: $00
    rst $38                                       ; $6172: $ff
    or $a1                                        ; $6173: $f6 $a1
    sub $d7                                       ; $6175: $d6 $d7
    ld bc, $82e0                                  ; $6177: $01 $e0 $82
    add e                                         ; $617a: $83
    rst $38                                       ; $617b: $ff
    ld d, d                                       ; $617c: $52
    ld c, b                                       ; $617d: $48
    ld b, h                                       ; $617e: $44
    ld hl, $2a26                                  ; $617f: $21 $26 $2a
    ld c, e                                       ; $6182: $4b
    ld b, h                                       ; $6183: $44
    adc l                                         ; $6184: $8d
    add c                                         ; $6185: $81
    ret nz                                        ; $6186: $c0

    ldh [$da], a                                  ; $6187: $e0 $da

jr_06c_6189:
    db $db                                        ; $6189: $db
    nop                                           ; $618a: $00
    rst $38                                       ; $618b: $ff
    or $a6                                        ; $618c: $f6 $a6
    jp $9ea0                                      ; $618e: $c3 $a0 $9e


    rst $38                                       ; $6191: $ff
    ld b, [hl]                                    ; $6192: $46
    add l                                         ; $6193: $85
    adc e                                         ; $6194: $8b
    or d                                          ; $6195: $b2
    ld c, e                                       ; $6196: $4b
    ld b, h                                       ; $6197: $44
    inc a                                         ; $6198: $3c
    ld a, [hl-]                                   ; $6199: $3a
    ccf                                           ; $619a: $3f
    ld b, h                                       ; $619b: $44
    ld d, [hl]                                    ; $619c: $56
    add e                                         ; $619d: $83
    add h                                         ; $619e: $84
    ld b, [hl]                                    ; $619f: $46
    sbc [hl]                                      ; $61a0: $9e
    nop                                           ; $61a1: $00
    rst $38                                       ; $61a2: $ff
    nop                                           ; $61a3: $00
    ret                                           ; $61a4: $c9


    ld a, [$a0c3]                                 ; $61a5: $fa $c3 $a0
    and c                                         ; $61a8: $a1
    ccf                                           ; $61a9: $3f
    ldh [$b2], a                                  ; $61aa: $e0 $b2
    or d                                          ; $61ac: $b2
    ld b, l                                       ; $61ad: $45
    ld a, [hl-]                                   ; $61ae: $3a
    ld a, $0f                                     ; $61af: $3e $0f
    or d                                          ; $61b1: $b2
    add e                                         ; $61b2: $83
    add [hl]                                      ; $61b3: $86
    add l                                         ; $61b4: $85
    ld b, b                                       ; $61b5: $40
    ldh [rP1], a                                  ; $61b6: $e0 $00
    rst $18                                       ; $61b8: $df
    nop                                           ; $61b9: $00
    rst $00                                       ; $61ba: $c7
    ld c, a                                       ; $61bb: $4f
    and c                                         ; $61bc: $a1
    ld l, [hl]                                    ; $61bd: $6e
    add b                                         ; $61be: $80
    pop bc                                        ; $61bf: $c1
    ld b, [hl]                                    ; $61c0: $46
    or d                                          ; $61c1: $b2
    ld b, h                                       ; $61c2: $44
    ret nz                                        ; $61c3: $c0

    ldh [$8a], a                                  ; $61c4: $e0 $8a
    add l                                         ; $61c6: $85
    ret nz                                        ; $61c7: $c0

    ret nz                                        ; $61c8: $c0

    jp $d1d0                                      ; $61c9: $c3 $d0 $d1


    nop                                           ; $61cc: $00
    rst $18                                       ; $61cd: $df
    nop                                           ; $61ce: $00
    push bc                                       ; $61cf: $c5
    inc b                                         ; $61d0: $04
    and c                                         ; $61d1: $a1
    ld bc, $46c1                                  ; $61d2: $01 $c1 $46
    ld b, [hl]                                    ; $61d5: $46
    ccf                                           ; $61d6: $3f
    or d                                          ; $61d7: $b2
    add hl, sp                                    ; $61d8: $39
    dec [hl]                                      ; $61d9: $35
    ld a, $b2                                     ; $61da: $3e $b2
    add c                                         ; $61dc: $81
    add c                                         ; $61dd: $81
    pop bc                                        ; $61de: $c1
    ld a, a                                       ; $61df: $7f
    and b                                         ; $61e0: $a0
    ldh a, [rP1]                                  ; $61e1: $f0 $00
    rst $38                                       ; $61e3: $ff
    nop                                           ; $61e4: $00
    call nz, $a104                                ; $61e5: $c4 $04 $a1
    ld bc, $b2c1                                  ; $61e8: $01 $c1 $b2
    ld b, [hl]                                    ; $61eb: $46
    ld b, l                                       ; $61ec: $45
    ld a, [hl-]                                   ; $61ed: $3a
    add a                                         ; $61ee: $87
    dec [hl]                                      ; $61ef: $35
    ld a, $46                                     ; $61f0: $3e $46
    jp nz, Jump_06c_7fc0                          ; $61f2: $c2 $c0 $7f

    and d                                         ; $61f5: $a2
    nop                                           ; $61f6: $00
    rst $38                                       ; $61f7: $ff
    nop                                           ; $61f8: $00
    and [hl]                                      ; $61f9: $a6
    push af                                       ; $61fa: $f5
    ei                                            ; $61fb: $fb
    or $9e                                        ; $61fc: $f6 $9e
    add c                                         ; $61fe: $81
    ldh [$b2], a                                  ; $61ff: $e0 $b2
    or d                                          ; $6201: $b2
    add hl, sp                                    ; $6202: $39
    rst $08                                       ; $6203: $cf

Call_06c_6204:
    rst $08                                       ; $6204: $cf
    ld b, d                                       ; $6205: $42
    ret nz                                        ; $6206: $c0

    pop hl                                        ; $6207: $e1
    and c                                         ; $6208: $a1
    ld a, a                                       ; $6209: $7f
    and e                                         ; $620a: $a3
    nop                                           ; $620b: $00
    rst $18                                       ; $620c: $df
    add l                                         ; $620d: $85
    add e                                         ; $620e: $83
    sub e                                         ; $620f: $93
    add c                                         ; $6210: $81
    sbc [hl]                                      ; $6211: $9e
    ld b, c                                       ; $6212: $41
    ret nz                                        ; $6213: $c0

    rst $38                                       ; $6214: $ff
    ld b, [hl]                                    ; $6215: $46
    or d                                          ; $6216: $b2
    ld a, $ce                                     ; $6217: $3e $ce
    cp e                                          ; $6219: $bb
    ld a, $46                                     ; $621a: $3e $46
    adc h                                         ; $621c: $8c
    ldh [$fd], a                                  ; $621d: $e0 $fd
    add c                                         ; $621f: $81
    dec sp                                        ; $6220: $3b
    add b                                         ; $6221: $80
    ld [hl], c                                    ; $6222: $71
    add d                                         ; $6223: $82
    nop                                           ; $6224: $00
    cp $c2                                        ; $6225: $fe $c2
    add [hl]                                      ; $6227: $86
    add l                                         ; $6228: $85
    add [hl]                                      ; $6229: $86
    add e                                         ; $622a: $83
    dec e                                         ; $622b: $1d
    ld b, [hl]                                    ; $622c: $46
    add b                                         ; $622d: $80
    ldh [$39], a                                  ; $622e: $e0 $39
    or d                                          ; $6230: $b2
    ld b, [hl]                                    ; $6231: $46
    db $fd                                        ; $6232: $fd
    add c                                         ; $6233: $81
    ldh a, [$63]                                  ; $6234: $f0 $63
    nop                                           ; $6236: $00
    rst $38                                       ; $6237: $ff
    di                                            ; $6238: $f3
    db $eb                                        ; $6239: $eb
    db $ec                                        ; $623a: $ec
    sub e                                         ; $623b: $93
    add d                                         ; $623c: $82

Call_06c_623d:
    ld a, a                                       ; $623d: $7f
    and c                                         ; $623e: $a1
    add l                                         ; $623f: $85
    adc e                                         ; $6240: $8b
    ld b, [hl]                                    ; $6241: $46
    ld b, h                                       ; $6242: $44
    inc bc                                        ; $6243: $03
    inc a                                         ; $6244: $3c
    dec [hl]                                      ; $6245: $35
    ret nz                                        ; $6246: $c0

    ldh [$fe], a                                  ; $6247: $e0 $fe
    pop bc                                        ; $6249: $c1
    ldh a, [$61]                                  ; $624a: $f0 $61
    xor a                                         ; $624c: $af
    ld h, b                                       ; $624d: $60
    nop                                           ; $624e: $00
    rst $38                                       ; $624f: $ff
    jp nz, $e783                                  ; $6250: $c2 $83 $e7

    sbc a                                         ; $6253: $9f
    and d                                         ; $6254: $a2
    sbc h                                         ; $6255: $9c
    ccf                                           ; $6256: $3f
    and b                                         ; $6257: $a0
    add b                                         ; $6258: $80
    pop hl                                        ; $6259: $e1
    ld a, [hl-]                                   ; $625a: $3a
    ld b, l                                       ; $625b: $45
    or d                                          ; $625c: $b2
    sub b                                         ; $625d: $90
    cp [hl]                                       ; $625e: $be
    pop bc                                        ; $625f: $c1
    or h                                          ; $6260: $b4
    ld h, b                                       ; $6261: $60
    cp h                                          ; $6262: $bc
    ld h, b                                       ; $6263: $60
    nop                                           ; $6264: $00
    rst $38                                       ; $6265: $ff
    rst $20                                       ; $6266: $e7
    ld d, d                                       ; $6267: $52
    ld h, d                                       ; $6268: $62
    ld b, e                                       ; $6269: $43
    add b                                         ; $626a: $80
    ld b, [hl]                                    ; $626b: $46
    ld a, [hl]                                    ; $626c: $7e
    add b                                         ; $626d: $80
    add b                                         ; $626e: $80
    ld b, l                                       ; $626f: $45
    ld a, [hl-]                                   ; $6270: $3a
    adc $bb                                       ; $6271: $ce $bb
    dec [hl]                                      ; $6273: $35
    add hl, sp                                    ; $6274: $39
    add b                                         ; $6275: $80
    db $e3                                        ; $6276: $e3
    ldh a, [$eb]                                  ; $6277: $f0 $eb
    ld h, e                                       ; $6279: $63
    nop                                           ; $627a: $00
    rst $38                                       ; $627b: $ff
    inc bc                                        ; $627c: $03
    call nz, $e0c1                                ; $627d: $c4 $c1 $e0
    ld a, [hl]                                    ; $6280: $7e
    ld b, l                                       ; $6281: $45
    ld [hl], $35                                  ; $6282: $36 $35
    jp $cebb                                      ; $6284: $c3 $bb $ce


    rst $38                                       ; $6287: $ff
    and b                                         ; $6288: $a0
    cp [hl]                                       ; $6289: $be
    jp nz, Jump_06c_62bc                          ; $628a: $c2 $bc $62

    nop                                           ; $628d: $00
    rst $38                                       ; $628e: $ff
    db $eb                                        ; $628f: $eb
    db $ec                                        ; $6290: $ec
    jr jr_06c_6296                                ; $6291: $18 $03

    jp nz, $e081                                  ; $6293: $c2 $81 $e0

jr_06c_6296:
    ld b, d                                       ; $6296: $42
    ld [c], a                                     ; $6297: $e2
    rst $08                                       ; $6298: $cf
    rst $08                                       ; $6299: $cf
    add b                                         ; $629a: $80
    pop hl                                        ; $629b: $e1
    dec a                                         ; $629c: $3d
    rst $00                                       ; $629d: $c7
    nop                                           ; $629e: $00
    rst $38                                       ; $629f: $ff
    ld hl, sp+$03                                 ; $62a0: $f8 $03
    jp $e1c0                                      ; $62a2: $c3 $c0 $e1


    ld b, d                                       ; $62a5: $42
    ldh [$ce], a                                  ; $62a6: $e0 $ce
    dec [hl]                                      ; $62a8: $35
    dec [hl]                                      ; $62a9: $35
    cp e                                          ; $62aa: $bb
    ld b, b                                       ; $62ab: $40
    pop bc                                        ; $62ac: $c1
    or d                                          ; $62ad: $b2
    rst $38                                       ; $62ae: $ff
    pop bc                                        ; $62af: $c1
    cp $63                                        ; $62b0: $fe $63
    nop                                           ; $62b2: $00
    rst $38                                       ; $62b3: $ff
    nop                                           ; $62b4: $00
    ld h, d                                       ; $62b5: $62
    ld bc, $80e2                                  ; $62b6: $01 $e2 $80
    ld b, h                                       ; $62b9: $44
    ld a, a                                       ; $62ba: $7f
    inc a                                         ; $62bb: $3c

Jump_06c_62bc:
    adc $cb                                       ; $62bc: $ce $cb
    dec [hl]                                      ; $62be: $35
    cp e                                          ; $62bf: $bb
    ld [hl], $45                                  ; $62c0: $36 $45
    ret nz                                        ; $62c2: $c0

    ldh [$e9], a                                  ; $62c3: $e0 $e9
    adc h                                         ; $62c5: $8c
    cp $66                                        ; $62c6: $fe $66
    nop                                           ; $62c8: $00
    cp a                                          ; $62c9: $bf
    db $e4                                        ; $62ca: $e4
    ld [bc], a                                    ; $62cb: $02
    add e                                         ; $62cc: $83
    ld b, [hl]                                    ; $62cd: $46
    add b                                         ; $62ce: $80
    ld b, d                                       ; $62cf: $42
    ld bc, $8035                                  ; $62d0: $01 $35 $80
    ldh [$81], a                                  ; $62d3: $e0 $81
    pop hl                                        ; $62d5: $e1
    ld a, a                                       ; $62d6: $7f
    ld [c], a                                     ; $62d7: $e2
    ld a, $c2                                     ; $62d8: $3e $c2
    nop                                           ; $62da: $00
    rst $38                                       ; $62db: $ff
    nop                                           ; $62dc: $00
    ld h, c                                       ; $62dd: $61
    ld [bc], a                                    ; $62de: $02
    add d                                         ; $62df: $82
    ld e, $80                                     ; $62e0: $1e $80
    pop hl                                        ; $62e2: $e1
    rst $08                                       ; $62e3: $cf
    swap l                                        ; $62e4: $cb $35
    dec [hl]                                      ; $62e6: $35
    add b                                         ; $62e7: $80
    pop hl                                        ; $62e8: $e1
    ccf                                           ; $62e9: $3f
    db $e4                                        ; $62ea: $e4
    or a                                          ; $62eb: $b7
    jr nz, jr_06c_62ee                            ; $62ec: $20 $00

jr_06c_62ee:
    nop                                           ; $62ee: $00
    rst $38                                       ; $62ef: $ff
    add l                                         ; $62f0: $85
    jr nz, @+$04                                  ; $62f1: $20 $02

    add h                                         ; $62f3: $84
    jp $c180                                      ; $62f4: $c3 $80 $c1


    ret nz                                        ; $62f7: $c0

    ld a, a                                       ; $62f8: $7f
    ld [c], a                                     ; $62f9: $e2
    cp h                                          ; $62fa: $bc
    add b                                         ; $62fb: $80

Call_06c_62fc:
    db $fc                                        ; $62fc: $fc
    ld b, c                                       ; $62fd: $41
    ldh a, [$6c]                                  ; $62fe: $f0 $6c

Call_06c_6300:
    jr nz, jr_06c_6302                            ; $6300: $20 $00

jr_06c_6302:
    rst $38                                       ; $6302: $ff
    adc c                                         ; $6303: $89
    ld [hl+], a                                   ; $6304: $22
    ld bc, $8260                                  ; $6305: $01 $60 $82
    add e                                         ; $6308: $83
    add hl, sp                                    ; $6309: $39
    dec [hl]                                      ; $630a: $35
    rlca                                          ; $630b: $07
    dec [hl]                                      ; $630c: $35
    set 1, a                                      ; $630d: $cb $cf
    ld a, a                                       ; $630f: $7f
    ld [c], a                                     ; $6310: $e2
    ret nz                                        ; $6311: $c0

    pop hl                                        ; $6312: $e1
    ld a, h                                       ; $6313: $7c
    and e                                         ; $6314: $a3
    nop                                           ; $6315: $00
    rst $38                                       ; $6316: $ff
    nop                                           ; $6317: $00
    add b                                         ; $6318: $80
    ld a, e                                       ; $6319: $7b
    ret nc                                        ; $631a: $d0

    pop de                                        ; $631b: $d1
    ld [bc], a                                    ; $631c: $02
    ld b, b                                       ; $631d: $40
    add l                                         ; $631e: $85
    adc e                                         ; $631f: $8b
    ld b, d                                       ; $6320: $42
    dec [hl]                                      ; $6321: $35
    cp $c5                                        ; $6322: $fe $c5
    add b                                         ; $6324: $80
    add b                                         ; $6325: $80
    db $e3                                        ; $6326: $e3
    jr nc, jr_06c_634a                            ; $6327: $30 $21

    nop                                           ; $6329: $00
    rst $38                                       ; $632a: $ff
    add c                                         ; $632b: $81
    inc hl                                        ; $632c: $23
    pop bc                                        ; $632d: $c1
    ld hl, $a002                                  ; $632e: $21 $02 $a0

jr_06c_6331:
    ld a, [hl]                                    ; $6331: $7e
    ret nz                                        ; $6332: $c0

    inc a                                         ; $6333: $3c
    add a                                         ; $6334: $87
    ld b, h                                       ; $6335: $44
    or d                                          ; $6336: $b2
    ld b, [hl]                                    ; $6337: $46
    cp $40                                        ; $6338: $fe $40

Jump_06c_633a:
    ld a, l                                       ; $633a: $7d
    ld b, b                                       ; $633b: $40
    ei                                            ; $633c: $fb
    nop                                           ; $633d: $00
    nop                                           ; $633e: $00
    rst $38                                       ; $633f: $ff
    sbc $79                                       ; $6340: $de $79
    rst $18                                       ; $6342: $df
    cp a                                          ; $6343: $bf
    add e                                         ; $6344: $83
    rst $38                                       ; $6345: $ff
    ld h, b                                       ; $6346: $60
    ld b, d                                       ; $6347: $42
    dec [hl]                                      ; $6348: $35
    rst $08                                       ; $6349: $cf

jr_06c_634a:
    call z, $c0ff                                 ; $634a: $cc $ff $c0
    ld b, b                                       ; $634d: $40
    ccf                                           ; $634e: $3f
    and b                                         ; $634f: $a0
    dec a                                         ; $6350: $3d
    ld h, d                                       ; $6351: $62
    ei                                            ; $6352: $fb
    ld [bc], a                                    ; $6353: $02
    nop                                           ; $6354: $00
    rst $38                                       ; $6355: $ff
    cp a                                          ; $6356: $bf
    add h                                         ; $6357: $84
    ld b, c                                       ; $6358: $41
    ld hl, $ff3a                                  ; $6359: $21 $3a $ff
    and b                                         ; $635c: $a0
    adc c                                         ; $635d: $89
    dec [hl]                                      ; $635e: $35
    ccf                                           ; $635f: $3f
    and c                                         ; $6360: $a1
    pop bc                                        ; $6361: $c1
    ret nz                                        ; $6362: $c0

    and c                                         ; $6363: $a1
    ld l, b                                       ; $6364: $68
    add e                                         ; $6365: $83
    nop                                           ; $6366: $00
    rst $38                                       ; $6367: $ff
    nop                                           ; $6368: $00
    ld h, b                                       ; $6369: $60
    push af                                       ; $636a: $f5
    ld bc, $02f6                                  ; $636b: $01 $f6 $02
    jr nz, jr_06c_6331                            ; $636e: $20 $c1

    ld b, b                                       ; $6370: $40
    add c                                         ; $6371: $81
    ld h, b                                       ; $6372: $60
    ld a, a                                       ; $6373: $7f
    and b                                         ; $6374: $a0
    cp a                                          ; $6375: $bf
    add b                                         ; $6376: $80
    ret nz                                        ; $6377: $c0

    and c                                         ; $6378: $a1
    ei                                            ; $6379: $fb
    inc bc                                        ; $637a: $03
    ld c, b                                       ; $637b: $48
    nop                                           ; $637c: $00
    rst $38                                       ; $637d: $ff
    add c                                         ; $637e: $81
    ld b, d                                       ; $637f: $42

Jump_06c_6380:
    ld [bc], a                                    ; $6380: $02
    jr nz, jr_06c_6401                            ; $6381: $20 $7e

    add d                                         ; $6383: $82
    ld b, c                                       ; $6384: $41
    cp a                                          ; $6385: $bf
    pop hl                                        ; $6386: $e1
    ld b, d                                       ; $6387: $42
    cp $62                                        ; $6388: $fe $62
    jr nz, jr_06c_6408                            ; $638a: $20 $7c

    ld h, c                                       ; $638c: $61
    nop                                           ; $638d: $00
    sbc a                                         ; $638e: $9f
    nop                                           ; $638f: $00
    ld [hl+], a                                   ; $6390: $22
    jp nz, $0122                                  ; $6391: $c2 $22 $01

    ld h, c                                       ; $6394: $61
    ld b, [hl]                                    ; $6395: $46
    ld b, b                                       ; $6396: $40
    ld h, b                                       ; $6397: $60
    ret nz                                        ; $6398: $c0

    pop bc                                        ; $6399: $c1
    ld [bc], a                                    ; $639a: $02
    nop                                           ; $639b: $00
    jp nz, Jump_000_269e                          ; $639c: $c2 $9e $26

    add b                                         ; $639f: $80
    nop                                           ; $63a0: $00
    cp a                                          ; $63a1: $bf
    nop                                           ; $63a2: $00
    ld h, c                                       ; $63a3: $61
    jp nz, $c022                                  ; $63a4: $c2 $22 $c0

    db $e3                                        ; $63a7: $e3
    ccf                                           ; $63a8: $3f
    pop hl                                        ; $63a9: $e1
    ld [$637e], sp                                ; $63aa: $08 $7e $63
    db $fd                                        ; $63ad: $fd
    inc b                                         ; $63ae: $04
    nop                                           ; $63af: $00
    rst $38                                       ; $63b0: $ff
    db $e4                                        ; $63b1: $e4
    add d                                         ; $63b2: $82
    inc b                                         ; $63b3: $04
    add b                                         ; $63b4: $80
    ld [c], a                                     ; $63b5: $e2
    pop bc                                        ; $63b6: $c1
    ret nz                                        ; $63b7: $c0

jr_06c_63b8:
    rst $38                                       ; $63b8: $ff
    ld h, c                                       ; $63b9: $61
    ret nz                                        ; $63ba: $c0

    ld b, b                                       ; $63bb: $40
    jp $613d                                      ; $63bc: $c3 $3d $61


    nop                                           ; $63bf: $00
    rst $38                                       ; $63c0: $ff
    add d                                         ; $63c1: $82
    inc b                                         ; $63c2: $04
    add c                                         ; $63c3: $81
    ld b, c                                       ; $63c4: $41
    ret nz                                        ; $63c5: $c0

    db $e3                                        ; $63c6: $e3
    ld a, [hl-]                                   ; $63c7: $3a
    ld b, l                                       ; $63c8: $45
    ld b, b                                       ; $63c9: $40
    ld a, $21                                     ; $63ca: $3e $21
    pop bc                                        ; $63cc: $c1
    and e                                         ; $63cd: $a3
    nop                                           ; $63ce: $00
    rst $38                                       ; $63cf: $ff
    nop                                           ; $63d0: $00
    ld b, b                                       ; $63d1: $40
    add d                                         ; $63d2: $82
    ld [bc], a                                    ; $63d3: $02
    add c                                         ; $63d4: $81
    ld b, c                                       ; $63d5: $41
    or d                                          ; $63d6: $b2
    add b                                         ; $63d7: $80
    ld [c], a                                     ; $63d8: $e2
    inc bc                                        ; $63d9: $03
    dec [hl]                                      ; $63da: $35
    ld b, d                                       ; $63db: $42
    ld bc, $00c3                                  ; $63dc: $01 $c3 $00
    ld a, a                                       ; $63df: $7f
    nop                                           ; $63e0: $00
    ld b, h                                       ; $63e1: $44
    ld b, c                                       ; $63e2: $41
    inc hl                                        ; $63e3: $23
    add c                                         ; $63e4: $81

jr_06c_63e5:
    ld b, b                                       ; $63e5: $40
    ret nz                                        ; $63e6: $c0

    db $e3                                        ; $63e7: $e3
    ld h, c                                       ; $63e8: $61
    inc a                                         ; $63e9: $3c
    ld b, b                                       ; $63ea: $40
    nop                                           ; $63eb: $00
    cp a                                          ; $63ec: $bf
    ld bc, $7f00                                  ; $63ed: $01 $00 $7f
    nop                                           ; $63f0: $00
    add h                                         ; $63f1: $84
    jp c, $ffdb                                   ; $63f2: $da $db $ff

    add d                                         ; $63f5: $82
    nop                                           ; $63f6: $00
    nop                                           ; $63f7: $00
    jr nz, jr_06c_63b8                            ; $63f8: $20 $be

    add b                                         ; $63fa: $80
    ld b, b                                       ; $63fb: $40
    pop hl                                        ; $63fc: $e1
    pop bc                                        ; $63fd: $c1
    and [hl]                                      ; $63fe: $a6
    nop                                           ; $63ff: $00
    sbc a                                         ; $6400: $9f

jr_06c_6401:
    nop                                           ; $6401: $00
    db $e3                                        ; $6402: $e3
    ld d, [hl]                                    ; $6403: $56
    and b                                         ; $6404: $a0
    ld a, a                                       ; $6405: $7f
    ld [hl+], a                                   ; $6406: $22
    add b                                         ; $6407: $80

jr_06c_6408:
    cp $80                                        ; $6408: $fe $80
    add b                                         ; $640a: $80
    and b                                         ; $640b: $a0
    pop bc                                        ; $640c: $c1
    xor b                                         ; $640d: $a8
    nop                                           ; $640e: $00
    rst $38                                       ; $640f: $ff
    nop                                           ; $6410: $00
    jr nz, jr_06c_63e5                            ; $6411: $20 $d2

    ld [bc], a                                    ; $6413: $02
    ret nz                                        ; $6414: $c0

    jr nz, @-$78                                  ; $6415: $20 $86

    ld bc, $fd83                                  ; $6417: $01 $83 $fd
    ld h, b                                       ; $641a: $60
    ret nz                                        ; $641b: $c0

    pop bc                                        ; $641c: $c1
    pop bc                                        ; $641d: $c1
    ld h, [hl]                                    ; $641e: $66
    nop                                           ; $641f: $00
    rst $38                                       ; $6420: $ff
    nop                                           ; $6421: $00
    ld hl, $85ff                                  ; $6422: $21 $ff $85
    ld a, a                                       ; $6425: $7f
    jr nz, @-$38                                  ; $6426: $20 $c6

    ccf                                           ; $6428: $3f
    pop hl                                        ; $6429: $e1
    inc a                                         ; $642a: $3c
    ld b, h                                       ; $642b: $44
    pop bc                                        ; $642c: $c1
    ld h, a                                       ; $642d: $67
    nop                                           ; $642e: $00
    rst $38                                       ; $642f: $ff
    ld [hl], c                                    ; $6430: $71
    ld [bc], a                                    ; $6431: $02
    push af                                       ; $6432: $f5
    or $76                                        ; $6433: $f6 $76
    db $fc                                        ; $6435: $fc
    ld b, d                                       ; $6436: $42
    add b                                         ; $6437: $80
    ld b, [hl]                                    ; $6438: $46
    db $fd                                        ; $6439: $fd
    jr nz, jr_06c_6477                            ; $643a: $20 $3b

    ld [hl], $45                                  ; $643c: $36 $45
    ret nz                                        ; $643e: $c0

    ld b, c                                       ; $643f: $41
    ldh [$7f], a                                  ; $6440: $e0 $7f
    add b                                         ; $6442: $80
    nop                                           ; $6443: $00
    rst $18                                       ; $6444: $df
    ld a, e                                       ; $6445: $7b
    rlca                                          ; $6446: $07
    cp d                                          ; $6447: $ba
    jr nz, jr_06c_64c6                            ; $6448: $20 $7c

    and d                                         ; $644a: $a2
    ld b, l                                       ; $644b: $45
    ccf                                           ; $644c: $3f
    ld b, e                                       ; $644d: $43
    add hl, de                                    ; $644e: $19
    ld b, l                                       ; $644f: $45
    rst $30                                       ; $6450: $f7
    and b                                         ; $6451: $a0
    add b                                         ; $6452: $80
    ld h, e                                       ; $6453: $63
    push af                                       ; $6454: $f5
    or $00                                        ; $6455: $f6 $00
    rst $38                                       ; $6457: $ff
    ld [hl], c                                    ; $6458: $71
    ld b, h                                       ; $6459: $44
    cp d                                          ; $645a: $ba
    ld [hl+], a                                   ; $645b: $22
    ld [bc], a                                    ; $645c: $02
    cp h                                          ; $645d: $bc
    and d                                         ; $645e: $a2
    ld b, [hl]                                    ; $645f: $46
    pop bc                                        ; $6460: $c1
    ldh [$80], a                                  ; $6461: $e0 $80
    and c                                         ; $6463: $a1
    inc a                                         ; $6464: $3c
    ld hl, $ff00                                  ; $6465: $21 $00 $ff
    ld a, e                                       ; $6468: $7b
    xor d                                         ; $6469: $aa
    cp h                                          ; $646a: $bc
    and d                                         ; $646b: $a2
    ld bc, $81b2                                  ; $646c: $01 $b2 $81
    ldh [$c0], a                                  ; $646f: $e0 $c0
    ld h, b                                       ; $6471: $60
    cp [hl]                                       ; $6472: $be
    and h                                         ; $6473: $a4
    nop                                           ; $6474: $00
    rst $38                                       ; $6475: $ff
    ld a, e                                       ; $6476: $7b

jr_06c_6477:
    call nz, Call_06c_62fc                        ; $6477: $c4 $fc $62
    cp a                                          ; $647a: $bf
    db $e3                                        ; $647b: $e3

Jump_06c_647c:
    add b                                         ; $647c: $80
    add c                                         ; $647d: $81
    ld b, l                                       ; $647e: $45
    ld a, a                                       ; $647f: $7f
    ld h, c                                       ; $6480: $61
    nop                                           ; $6481: $00
    rst $38                                       ; $6482: $ff
    ld a, e                                       ; $6483: $7b
    dec h                                         ; $6484: $25
    cp e                                          ; $6485: $bb
    ld b, h                                       ; $6486: $44
    ret nz                                        ; $6487: $c0

    ld [c], a                                     ; $6488: $e2
    rst $38                                       ; $6489: $ff
    and b                                         ; $648a: $a0
    and c                                         ; $648b: $a1
    nop                                           ; $648c: $00
    add hl, hl                                    ; $648d: $29

jr_06c_648e:
    jp $ff00                                      ; $648e: $c3 $00 $ff


    ld a, e                                       ; $6491: $7b
    ld b, l                                       ; $6492: $45
    cp e                                          ; $6493: $bb
    ld b, e                                       ; $6494: $43
    cp c                                          ; $6495: $b9
    add c                                         ; $6496: $81
    rst $38                                       ; $6497: $ff
    inc b                                         ; $6498: $04
    add hl, hl                                    ; $6499: $29
    jp nz, $ff00                                  ; $649a: $c2 $00 $ff

    nop                                           ; $649d: $00
    sbc l                                         ; $649e: $9d
    jp Jump_06c_45bb                              ; $649f: $c3 $bb $45


    ld a, [$8081]                                 ; $64a2: $fa $81 $80
    ret nz                                        ; $64a5: $c0

    ld a, [hl]                                    ; $64a6: $7e
    and b                                         ; $64a7: $a0
    ld a, a                                       ; $64a8: $7f
    ld h, e                                       ; $64a9: $63
    nop                                           ; $64aa: $00
    rst $38                                       ; $64ab: $ff
    ld [hl], c                                    ; $64ac: $71
    inc bc                                        ; $64ad: $03
    jr c, jr_06c_6501                             ; $64ae: $38 $51

    and e                                         ; $64b0: $a3
    add hl, sp                                    ; $64b1: $39
    ld hl, HeaderTitle                            ; $64b2: $21 $34 $01
    ld b, [hl]                                    ; $64b5: $46
    ld b, [hl]                                    ; $64b6: $46
    ld a, a                                       ; $64b7: $7f
    cp [hl]                                       ; $64b8: $be
    ld bc, $3f00                                  ; $64b9: $01 $00 $3f
    ld hl, sp+$7b                                 ; $64bc: $f8 $7b
    ld [$40fa], sp                                ; $64be: $08 $fa $40
    cp d                                          ; $64c1: $ba
    ld b, d                                       ; $64c2: $42
    ld b, l                                       ; $64c3: $45
    or d                                          ; $64c4: $b2
    ld b, e                                       ; $64c5: $43

jr_06c_64c6:
    ld b, e                                       ; $64c6: $43
    ld b, e                                       ; $64c7: $43
    ld h, b                                       ; $64c8: $60
    cp [hl]                                       ; $64c9: $be
    inc bc                                        ; $64ca: $03
    nop                                           ; $64cb: $00
    ccf                                           ; $64cc: $3f
    ld a, e                                       ; $64cd: $7b
    jr z, jr_06c_648e                             ; $64ce: $28 $be

    and d                                         ; $64d0: $a2
    dec sp                                        ; $64d1: $3b
    ld b, b                                       ; $64d2: $40
    and h                                         ; $64d3: $a4
    ld h, h                                       ; $64d4: $64
    rst $38                                       ; $64d5: $ff
    ldh [$81], a                                  ; $64d6: $e0 $81
    and l                                         ; $64d8: $a5
    ld a, h                                       ; $64d9: $7c
    add b                                         ; $64da: $80
    ccf                                           ; $64db: $3f
    ld h, d                                       ; $64dc: $62
    nop                                           ; $64dd: $00
    rst $38                                       ; $64de: $ff
    ld a, e                                       ; $64df: $7b
    dec h                                         ; $64e0: $25
    cp [hl]                                       ; $64e1: $be
    and d                                         ; $64e2: $a2
    ld a, e                                       ; $64e3: $7b
    jr nz, jr_06c_654f                            ; $64e4: $20 $69

    rra                                           ; $64e6: $1f
    and e                                         ; $64e7: $a3
    dec [hl]                                      ; $64e8: $35
    dec [hl]                                      ; $64e9: $35
    and e                                         ; $64ea: $a3
    ld l, d                                       ; $64eb: $6a
    db $fc                                        ; $64ec: $fc
    ld h, b                                       ; $64ed: $60
    nop                                           ; $64ee: $00
    ccf                                           ; $64ef: $3f
    nop                                           ; $64f0: $00
    rlc l                                         ; $64f1: $cb $05
    and b                                         ; $64f3: $a0
    dec sp                                        ; $64f4: $3b
    inc hl                                        ; $64f5: $23
    ld l, c                                       ; $64f6: $69
    db $fc                                        ; $64f7: $fc
    ld b, c                                       ; $64f8: $41
    ret nz                                        ; $64f9: $c0

    ld [c], a                                     ; $64fa: $e2
    nop                                           ; $64fb: $00
    ccf                                           ; $64fc: $3f
    nop                                           ; $64fd: $00
    ret                                           ; $64fe: $c9


    ld sp, hl                                     ; $64ff: $f9
    inc hl                                        ; $6500: $23

jr_06c_6501:
    xor a                                         ; $6501: $af
    add b                                         ; $6502: $80
    ld b, l                                       ; $6503: $45
    ld l, e                                       ; $6504: $6b
    ld [hl], c                                    ; $6505: $71
    rst $38                                       ; $6506: $ff
    ldh [$6d], a                                  ; $6507: $e0 $6d
    cp h                                          ; $6509: $bc
    ld h, b                                       ; $650a: $60
    and c                                         ; $650b: $a1
    ld h, b                                       ; $650c: $60
    nop                                           ; $650d: $00
    ld e, a                                       ; $650e: $5f
    ld a, e                                       ; $650f: $7b
    add hl, hl                                    ; $6510: $29
    add hl, sp                                    ; $6511: $39
    ld h, e                                       ; $6512: $63
    cp e                                          ; $6513: $bb
    ld h, b                                       ; $6514: $60
    ld a, a                                       ; $6515: $7f
    jp nz, $8483                                  ; $6516: $c2 $83 $84

    cp $43                                        ; $6519: $fe $43
    ld a, b                                       ; $651b: $78
    nop                                           ; $651c: $00
    rst $38                                       ; $651d: $ff
    ld a, e                                       ; $651e: $7b
    ld b, [hl]                                    ; $651f: $46
    ld d, c                                       ; $6520: $51
    add c                                         ; $6521: $81
    sbc [hl]                                      ; $6522: $9e
    add l                                         ; $6523: $85
    add a                                         ; $6524: $87
    adc b                                         ; $6525: $88
    rst $38                                       ; $6526: $ff
    ld [c], a                                     ; $6527: $e2
    add e                                         ; $6528: $83
    add a                                         ; $6529: $87
    add l                                         ; $652a: $85
    cp $43                                        ; $652b: $fe $43
    nop                                           ; $652d: $00
    rst $38                                       ; $652e: $ff
    ld a, e                                       ; $652f: $7b
    ld h, h                                       ; $6530: $64
    dec a                                         ; $6531: $3d
    and [hl]                                      ; $6532: $a6
    rst $38                                       ; $6533: $ff
    db $e4                                        ; $6534: $e4
    sbc h                                         ; $6535: $9c
    ld b, c                                       ; $6536: $41
    sbc a                                         ; $6537: $9f
    ld l, b                                       ; $6538: $68
    ld [bc], a                                    ; $6539: $02
    nop                                           ; $653a: $00
    rst $38                                       ; $653b: $ff
    nop                                           ; $653c: $00
    and l                                         ; $653d: $a5
    cp c                                          ; $653e: $b9
    jr nz, jr_06c_657e                            ; $653f: $20 $3d

    and c                                         ; $6541: $a1
    sbc l                                         ; $6542: $9d
    rst $38                                       ; $6543: $ff
    db $e4                                        ; $6544: $e4
    ld bc, $699f                                  ; $6545: $01 $9f $69
    ld h, e                                       ; $6548: $63
    nop                                           ; $6549: $00
    rst $38                                       ; $654a: $ff
    nop                                           ; $654b: $00
    and $4f                                       ; $654c: $e6 $4f
    inc bc                                        ; $654e: $03

jr_06c_654f:
    rst $38                                       ; $654f: $ff
    and $aa                                       ; $6550: $e6 $aa
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    sbc a                                         ; $6554: $9f
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    jp hl                                         ; $6557: $e9


    adc [hl]                                      ; $6558: $8e
    ld b, e                                       ; $6559: $43
    ret                                           ; $655a: $c9


    pop hl                                        ; $655b: $e1
    ld [hl], e                                    ; $655c: $73
    ld [c], a                                     ; $655d: $e2
    ld [bc], a                                    ; $655e: $02
    ld h, c                                       ; $655f: $61
    nop                                           ; $6560: $00
    xor [hl]                                      ; $6561: $ae
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    pop bc                                        ; $6565: $c1
    nop                                           ; $6566: $00
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
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    dec c                                         ; $6573: $0d
    add b                                         ; $6574: $80
    cp $e0                                        ; $6575: $fe $e0
    nop                                           ; $6577: $00
    ld b, b                                       ; $6578: $40
    ret c                                         ; $6579: $d8

    push hl                                       ; $657a: $e5
    rst $30                                       ; $657b: $f7
    and $ff                                       ; $657c: $e6 $ff

jr_06c_657e:
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    rst $30                                       ; $6580: $f7
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    ld bc, $1e00                                  ; $6584: $01 $00 $1e
    add hl, bc                                    ; $6587: $09
    ld bc, $1e01                                  ; $6588: $01 $01 $1e
    ld a, [bc]                                    ; $658b: $0a
    ld bc, $1f02                                  ; $658c: $01 $02 $1f
    ld a, [bc]                                    ; $658f: $0a
    ld bc, $2303                                  ; $6590: $01 $03 $23
    ld a, [bc]                                    ; $6593: $0a
    ld bc, $1f04                                  ; $6594: $01 $04 $1f
    dec bc                                        ; $6597: $0b
    ld bc, $2305                                  ; $6598: $01 $05 $23
    dec bc                                        ; $659b: $0b
    ld bc, $1f06                                  ; $659c: $01 $06 $1f
    inc c                                         ; $659f: $0c
    ld bc, $2307                                  ; $65a0: $01 $07 $23
    inc c                                         ; $65a3: $0c
    ld bc, $1d08                                  ; $65a4: $01 $08 $1d
    dec c                                         ; $65a7: $0d
    ld bc, $1d09                                  ; $65a8: $01 $09 $1d
    ld c, $01                                     ; $65ab: $0e $01
    ld a, [bc]                                    ; $65ad: $0a
    ld e, $0e                                     ; $65ae: $1e $0e
    ld bc, $1e0b                                  ; $65b0: $01 $0b $1e
    rrca                                          ; $65b3: $0f
    ld bc, $210c                                  ; $65b4: $01 $0c $21
    rrca                                          ; $65b7: $0f
    ld bc, $230d                                  ; $65b8: $01 $0d $23
    db $10                                        ; $65bb: $10
    ld bc, $230e                                  ; $65bc: $01 $0e $23
    ld de, $0f01                                  ; $65bf: $11 $01 $0f
    inc h                                         ; $65c2: $24
    ld [de], a                                    ; $65c3: $12
    ld bc, $2110                                  ; $65c4: $01 $10 $21
    inc de                                        ; $65c7: $13
    ld bc, $2011                                  ; $65c8: $01 $11 $20
    inc d                                         ; $65cb: $14
    ld bc, $2412                                  ; $65cc: $01 $12 $24
    inc d                                         ; $65cf: $14
    ld bc, $2213                                  ; $65d0: $01 $13 $22
    ld d, $01                                     ; $65d3: $16 $01
    inc d                                         ; $65d5: $14
    inc h                                         ; $65d6: $24
    ld d, $01                                     ; $65d7: $16 $01
    dec d                                         ; $65d9: $15
    dec h                                         ; $65da: $25
    ld d, $01                                     ; $65db: $16 $01
    ld d, $21                                     ; $65dd: $16 $21
    rla                                           ; $65df: $17
    ld bc, $2417                                  ; $65e0: $01 $17 $24
    rla                                           ; $65e3: $17
    ld bc, $2518                                  ; $65e4: $01 $18 $25
    rla                                           ; $65e7: $17
    ld bc, $2119                                  ; $65e8: $01 $19 $21
    jr jr_06c_65ee                                ; $65eb: $18 $01

    ld a, [de]                                    ; $65ed: $1a

jr_06c_65ee:
    inc hl                                        ; $65ee: $23
    jr jr_06c_65f2                                ; $65ef: $18 $01

    dec de                                        ; $65f1: $1b

jr_06c_65f2:
    inc h                                         ; $65f2: $24
    jr jr_06c_65f6                                ; $65f3: $18 $01

    inc e                                         ; $65f5: $1c

jr_06c_65f6:
    dec h                                         ; $65f6: $25
    jr jr_06c_65fa                                ; $65f7: $18 $01

    dec e                                         ; $65f9: $1d

jr_06c_65fa:
    ld h, $18                                     ; $65fa: $26 $18
    ld bc, $241e                                  ; $65fc: $01 $1e $24
    add hl, de                                    ; $65ff: $19
    ld bc, $251f                                  ; $6600: $01 $1f $25
    add hl, de                                    ; $6603: $19
    ld bc, $2620                                  ; $6604: $01 $20 $26
    add hl, de                                    ; $6607: $19
    ld bc, $2221                                  ; $6608: $01 $21 $22
    ld a, [de]                                    ; $660b: $1a
    ld bc, $2422                                  ; $660c: $01 $22 $24
    ld a, [de]                                    ; $660f: $1a
    ld bc, $2523                                  ; $6610: $01 $23 $25
    ld a, [de]                                    ; $6613: $1a
    ld bc, $2624                                  ; $6614: $01 $24 $26
    ld a, [de]                                    ; $6617: $1a
    ld bc, $2525                                  ; $6618: $01 $25 $25
    dec de                                        ; $661b: $1b
    ld bc, $2626                                  ; $661c: $01 $26 $26
    dec de                                        ; $661f: $1b
    ld bc, $2327                                  ; $6620: $01 $27 $23
    inc e                                         ; $6623: $1c
    ld bc, $2528                                  ; $6624: $01 $28 $25
    inc e                                         ; $6627: $1c
    ld bc, $2629                                  ; $6628: $01 $29 $26
    inc e                                         ; $662b: $1c
    ld bc, $252a                                  ; $662c: $01 $2a $25
    dec e                                         ; $662f: $1d
    ld bc, $232b                                  ; $6630: $01 $2b $23
    ld e, $01                                     ; $6633: $1e $01
    inc l                                         ; $6635: $2c
    dec h                                         ; $6636: $25
    rra                                           ; $6637: $1f
    ld bc, $232d                                  ; $6638: $01 $2d $23
    jr nz, @+$03                                  ; $663b: $20 $01

    ld l, $1d                                     ; $663d: $2e $1d
    ld hl, $2f01                                  ; $663f: $21 $01 $2f
    dec h                                         ; $6642: $25
    ld hl, $3001                                  ; $6643: $21 $01 $30
    inc e                                         ; $6646: $1c
    ld [hl+], a                                   ; $6647: $22
    ld bc, $1d31                                  ; $6648: $01 $31 $1d
    ld [hl+], a                                   ; $664b: $22
    ld bc, $2132                                  ; $664c: $01 $32 $21
    ld [hl+], a                                   ; $664f: $22
    ld bc, $2533                                  ; $6650: $01 $33 $25
    ld [hl+], a                                   ; $6653: $22
    ld bc, $2634                                  ; $6654: $01 $34 $26
    ld [hl+], a                                   ; $6657: $22
    ld bc, $1c35                                  ; $6658: $01 $35 $1c
    inc hl                                        ; $665b: $23
    ld bc, $1d36                                  ; $665c: $01 $36 $1d
    inc hl                                        ; $665f: $23
    ld bc, $2537                                  ; $6660: $01 $37 $25
    inc hl                                        ; $6663: $23
    ld bc, $1c38                                  ; $6664: $01 $38 $1c
    inc h                                         ; $6667: $24
    ld bc, $1d39                                  ; $6668: $01 $39 $1d
    inc h                                         ; $666b: $24
    ld bc, $253a                                  ; $666c: $01 $3a $25
    inc h                                         ; $666f: $24
    ld bc, $1d3b                                  ; $6670: $01 $3b $1d
    dec h                                         ; $6673: $25
    ld bc, $1e3c                                  ; $6674: $01 $3c $1e
    ld h, $01                                     ; $6677: $26 $01
    dec a                                         ; $6679: $3d
    ld e, $27                                     ; $667a: $1e $27
    ld bc, $203e                                  ; $667c: $01 $3e $20
    dec l                                         ; $667f: $2d
    ld bc, $263f                                  ; $6680: $01 $3f $26
    dec l                                         ; $6683: $2d
    ld bc, $2140                                  ; $6684: $01 $40 $21
    ld l, $01                                     ; $6687: $2e $01
    ld b, c                                       ; $6689: $41
    dec h                                         ; $668a: $25
    ld l, $01                                     ; $668b: $2e $01
    ld b, d                                       ; $668d: $42
    ld [hl+], a                                   ; $668e: $22
    cpl                                           ; $668f: $2f
    ld bc, $2343                                  ; $6690: $01 $43 $23
    cpl                                           ; $6693: $2f
    ld bc, $2544                                  ; $6694: $01 $44 $25
    cpl                                           ; $6697: $2f
    ld bc, $2345                                  ; $6698: $01 $45 $23
    jr nc, jr_06c_669e                            ; $669b: $30 $01

    ld b, [hl]                                    ; $669d: $46

jr_06c_669e:
    inc h                                         ; $669e: $24
    jr nc, jr_06c_66a2                            ; $669f: $30 $01

    ld b, a                                       ; $66a1: $47

jr_06c_66a2:
    dec h                                         ; $66a2: $25
    jr nc, jr_06c_66a6                            ; $66a3: $30 $01

    ld c, b                                       ; $66a5: $48

jr_06c_66a6:
    inc hl                                        ; $66a6: $23
    ld sp, $4901                                  ; $66a7: $31 $01 $49
    inc h                                         ; $66aa: $24
    ld sp, $4a01                                  ; $66ab: $31 $01 $4a
    dec h                                         ; $66ae: $25
    ld sp, $4b01                                  ; $66af: $31 $01 $4b
    inc h                                         ; $66b2: $24
    ld [hl-], a                                   ; $66b3: $32
    ld bc, $254c                                  ; $66b4: $01 $4c $25
    ld [hl-], a                                   ; $66b7: $32
    ld bc, $264d                                  ; $66b8: $01 $4d $26
    ld [hl-], a                                   ; $66bb: $32
    ld bc, $244e                                  ; $66bc: $01 $4e $24
    inc sp                                        ; $66bf: $33
    ld bc, $264f                                  ; $66c0: $01 $4f $26
    inc sp                                        ; $66c3: $33
    ld bc, $2450                                  ; $66c4: $01 $50 $24
    dec [hl]                                      ; $66c7: $35
    ld bc, $2851                                  ; $66c8: $01 $51 $28
    dec [hl]                                      ; $66cb: $35
    rst $38                                       ; $66cc: $ff
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    rst $10                                       ; $66cf: $d7
    ld h, [hl]                                    ; $66d0: $66
    inc bc                                        ; $66d1: $03
    ld l, e                                       ; $66d2: $6b
    ld a, b                                       ; $66d3: $78
    ld [hl], b                                    ; $66d4: $70
    sub a                                         ; $66d5: $97
    ld [hl], b                                    ; $66d6: $70
    add a                                         ; $66d7: $87
    ld c, $0e                                     ; $66d8: $0e $0e
    dec c                                         ; $66da: $0d
    rst $38                                       ; $66db: $ff
    pop hl                                        ; $66dc: $e1
    ld sp, hl                                     ; $66dd: $f9
    ld [c], a                                     ; $66de: $e2
    db $f4                                        ; $66df: $f4
    pop hl                                        ; $66e0: $e1
    ldh a, [$e0]                                  ; $66e1: $f0 $e0
    ld c, $38                                     ; $66e3: $0e $38
    rst $38                                       ; $66e5: $ff
    db $e3                                        ; $66e6: $e3
    ld [$f6e2], a                                 ; $66e7: $ea $e2 $f6
    rst $38                                       ; $66ea: $ff
    ld c, $4d                                     ; $66eb: $0e $4d
    ld c, l                                       ; $66ed: $4d
    call z, $b9e2                                 ; $66ee: $cc $e2 $b9
    ld [c], a                                     ; $66f1: $e2
    ld [hl], b                                    ; $66f2: $70
    call $fce7                                    ; $66f3: $cd $e7 $fc
    db $e4                                        ; $66f6: $e4
    or $ff                                        ; $66f7: $f6 $ff
    adc h                                         ; $66f9: $8c
    db $e3                                        ; $66fa: $e3
    dec c                                         ; $66fb: $0d
    dec c                                         ; $66fc: $0d
    ld c, l                                       ; $66fd: $4d
    rst $38                                       ; $66fe: $ff
    ldh [$3b], a                                  ; $66ff: $e0 $3b
    dec l                                         ; $6701: $2d
    dec l                                         ; $6702: $2d
    ld [hl], a                                    ; $6703: $77
    ldh [rKEY1], a                                ; $6704: $e0 $4d
    dec c                                         ; $6706: $0d
    ld c, l                                       ; $6707: $4d
    add l                                         ; $6708: $85
    rst $38                                       ; $6709: $ff
    ld [c], a                                     ; $670a: $e2
    and $fc                                       ; $670b: $e6 $fc
    db $d3                                        ; $670d: $d3
    pop hl                                        ; $670e: $e1
    inc a                                         ; $670f: $3c
    pop hl                                        ; $6710: $e1
    ld l, l                                       ; $6711: $6d
    dec c                                         ; $6712: $0d
    dec c                                         ; $6713: $0d
    ld a, [bc]                                    ; $6714: $0a
    ld a, [hl+]                                   ; $6715: $2a
    dec bc                                        ; $6716: $0b
    jp $2d4d                                      ; $6717: $c3 $4d $2d


    add hl, sp                                    ; $671a: $39
    and $85                                       ; $671b: $e6 $85
    rst $38                                       ; $671d: $ff
    sbc $e2                                       ; $671e: $de $e2
    ld c, c                                       ; $6720: $49
    db $e4                                        ; $6721: $e4
    dec c                                         ; $6722: $0d
    ld c, e                                       ; $6723: $4b
    ccf                                           ; $6724: $3f
    dec hl                                        ; $6725: $2b
    ld c, e                                       ; $6726: $4b
    ld a, [bc]                                    ; $6727: $0a
    ld a, [hl+]                                   ; $6728: $2a
    ld c, e                                       ; $6729: $4b
    ld c, e                                       ; $672a: $4b
    cp a                                          ; $672b: $bf
    pop hl                                        ; $672c: $e1
    ld l, b                                       ; $672d: $68
    and $f4                                       ; $672e: $e6 $f4
    ld a, e                                       ; $6730: $7b
    rst $38                                       ; $6731: $ff
    add hl, bc                                    ; $6732: $09
    and $6d                                       ; $6733: $e6 $6d
    ret nz                                        ; $6735: $c0

    ldh [$2b], a                                  ; $6736: $e0 $2b
    dec bc                                        ; $6738: $0b
    dec hl                                        ; $6739: $2b
    ld a, [bc]                                    ; $673a: $0a
    adc c                                         ; $673b: $89
    ld a, [hl+]                                   ; $673c: $2a
    ld a, [hl]                                    ; $673d: $7e
    ldh [$ad], a                                  ; $673e: $e0 $ad
    ret nz                                        ; $6740: $c0

    ld c, l                                       ; $6741: $4d
    add l                                         ; $6742: $85
    rst $38                                       ; $6743: $ff
    nop                                           ; $6744: $00
    rst $20                                       ; $6745: $e7
    ld a, l                                       ; $6746: $7d
    jp nz, $df4b                                  ; $6747: $c2 $4b $df

    ld l, e                                       ; $674a: $6b
    ld c, e                                       ; $674b: $4b
    dec bc                                        ; $674c: $0b
    dec bc                                        ; $674d: $0b
    ld l, e                                       ; $674e: $6b
    ld a, l                                       ; $674f: $7d
    ldh [rKEY1], a                                ; $6750: $e0 $4d
    dec l                                         ; $6752: $2d
    ldh a, [$af]                                  ; $6753: $f0 $af
    call nz, $ff00                                ; $6755: $c4 $00 $ff
    adc h                                         ; $6758: $8c
    call nz, $e3c0                                ; $6759: $c4 $c0 $e3
    dec hl                                        ; $675c: $2b
    ld c, e                                       ; $675d: $4b
    ld c, e                                       ; $675e: $4b
    ld l, e                                       ; $675f: $6b
    rra                                           ; $6760: $1f
    ld a, [bc]                                    ; $6761: $0a
    ld a, [bc]                                    ; $6762: $0a
    ld a, [bc]                                    ; $6763: $0a
    ld c, e                                       ; $6764: $4b
    dec c                                         ; $6765: $0d
    ld a, $e4                                     ; $6766: $3e $e4
    add l                                         ; $6768: $85
    rst $38                                       ; $6769: $ff
    sbc $e7                                       ; $676a: $de $e7
    rst $38                                       ; $676c: $ff
    dec c                                         ; $676d: $0d
    ld c, l                                       ; $676e: $4d
    dec l                                         ; $676f: $2d
    ld c, e                                       ; $6770: $4b
    dec hl                                        ; $6771: $2b
    ld a, [bc]                                    ; $6772: $0a
    dec bc                                        ; $6773: $0b
    ld l, e                                       ; $6774: $6b
    rrca                                          ; $6775: $0f
    ld c, d                                       ; $6776: $4a
    ld a, [hl+]                                   ; $6777: $2a
    ld c, e                                       ; $6778: $4b
    dec c                                         ; $6779: $0d
    ret nz                                        ; $677a: $c0

    db $e3                                        ; $677b: $e3
    nop                                           ; $677c: $00
    rst $38                                       ; $677d: $ff
    ld [c], a                                     ; $677e: $e2
    and $7a                                       ; $677f: $e6 $7a
    jp $2dff                                      ; $6781: $c3 $ff $2d


    ld l, e                                       ; $6784: $6b
    dec bc                                        ; $6785: $0b
    dec bc                                        ; $6786: $0b
    ld a, [bc]                                    ; $6787: $0a
    dec hl                                        ; $6788: $2b
    dec hl                                        ; $6789: $2b
    ld c, e                                       ; $678a: $4b
    add c                                         ; $678b: $81
    dec bc                                        ; $678c: $0b
    add b                                         ; $678d: $80
    pop hl                                        ; $678e: $e1
    push bc                                       ; $678f: $c5
    db $e3                                        ; $6790: $e3
    add l                                         ; $6791: $85
    rst $38                                       ; $6792: $ff
    ld [c], a                                     ; $6793: $e2
    db $e4                                        ; $6794: $e4
    jp nc, $bfc1                                  ; $6795: $d2 $c1 $bf

    pop hl                                        ; $6798: $e1
    dec hl                                        ; $6799: $2b
    add c                                         ; $679a: $81
    dec bc                                        ; $679b: $0b
    db $fc                                        ; $679c: $fc
    ret nz                                        ; $679d: $c0

    ld a, l                                       ; $679e: $7d
    call nz, $c3bd                                ; $679f: $c4 $bd $c3
    ld a, e                                       ; $67a2: $7b
    rst $38                                       ; $67a3: $ff
    db $db                                        ; $67a4: $db
    db $e3                                        ; $67a5: $e3
    ld a, [hl-]                                   ; $67a6: $3a
    and c                                         ; $67a7: $a1
    dec bc                                        ; $67a8: $0b
    rrca                                          ; $67a9: $0f
    dec bc                                        ; $67aa: $0b
    dec hl                                        ; $67ab: $2b
    ld l, e                                       ; $67ac: $6b
    dec c                                         ; $67ad: $0d
    cp a                                          ; $67ae: $bf
    db $e4                                        ; $67af: $e4
    ld l, b                                       ; $67b0: $68
    and d                                         ; $67b1: $a2
    ld a, e                                       ; $67b2: $7b
    rst $38                                       ; $67b3: $ff
    ld h, e                                       ; $67b4: $63
    db $e3                                        ; $67b5: $e3
    ld l, h                                       ; $67b6: $6c
    ld bc, $c0a4                                  ; $67b7: $01 $a4 $c0
    ldh [$0b], a                                  ; $67ba: $e0 $0b
    dec bc                                        ; $67bc: $0b
    ld hl, sp-$60                                 ; $67bd: $f8 $a0
    dec bc                                        ; $67bf: $0b
    ld c, e                                       ; $67c0: $4b
    dec a                                         ; $67c1: $3d
    jp nz, $a7e0                                  ; $67c2: $c2 $e0 $a7

    and e                                         ; $67c5: $a3
    nop                                           ; $67c6: $00
    rst $38                                       ; $67c7: $ff
    ld [de], a                                    ; $67c8: $12
    jp nz, $a1fe                                  ; $67c9: $c2 $fe $a1

    jp nz, Jump_000_2be0                          ; $67cc: $c2 $e0 $2b

    dec hl                                        ; $67cf: $2b
    dec c                                         ; $67d0: $0d
    add e                                         ; $67d1: $83
    dec c                                         ; $67d2: $0d
    ld l, e                                       ; $67d3: $6b
    ret nz                                        ; $67d4: $c0

    pop hl                                        ; $67d5: $e1
    ld h, a                                       ; $67d6: $67
    and e                                         ; $67d7: $a3
    nop                                           ; $67d8: $00
    rst $38                                       ; $67d9: $ff
    ld h, c                                       ; $67da: $61
    push hl                                       ; $67db: $e5
    ld b, b                                       ; $67dc: $40
    and b                                         ; $67dd: $a0
    ld l, e                                       ; $67de: $6b
    ld [hl], $bf                                  ; $67df: $36 $bf
    ret nz                                        ; $67e1: $c0

    ld l, e                                       ; $67e2: $6b
    dec bc                                        ; $67e3: $0b
    ret nz                                        ; $67e4: $c0

    pop hl                                        ; $67e5: $e1
    dec bc                                        ; $67e6: $0b
    dec l                                         ; $67e7: $2d
    nop                                           ; $67e8: $00
    rst $18                                       ; $67e9: $df
    nop                                           ; $67ea: $00
    db $ec                                        ; $67eb: $ec
    db $fc                                        ; $67ec: $fc
    cp a                                          ; $67ed: $bf
    and e                                         ; $67ee: $a3
    ld a, l                                       ; $67ef: $7d
    ret nz                                        ; $67f0: $c0

    dec hl                                        ; $67f1: $2b
    dec hl                                        ; $67f2: $2b
    dec bc                                        ; $67f3: $0b
    ld l, e                                       ; $67f4: $6b
    dec c                                         ; $67f5: $0d
    ld l, l                                       ; $67f6: $6d
    ld l, b                                       ; $67f7: $68
    nop                                           ; $67f8: $00
    rst $18                                       ; $67f9: $df
    nop                                           ; $67fa: $00
    ld [$a47f], a                                 ; $67fb: $ea $7f $a4
    ld l, e                                       ; $67fe: $6b
    ld a, $e1                                     ; $67ff: $3e $e1
    dec bc                                        ; $6801: $0b
    ld c, e                                       ; $6802: $4b
    ld bc, $10e4                                  ; $6803: $01 $e4 $10
    inc sp                                        ; $6806: $33
    adc c                                         ; $6807: $89
    nop                                           ; $6808: $00
    call c, $a33f                                 ; $6809: $dc $3f $a3
    ld b, b                                       ; $680c: $40
    and b                                         ; $680d: $a0
    dec hl                                        ; $680e: $2b
    ld a, e                                       ; $680f: $7b
    pop bc                                        ; $6810: $c1
    ld bc, $81e2                                  ; $6811: $01 $e2 $81
    push bc                                       ; $6814: $c5
    nop                                           ; $6815: $00
    ld a, e                                       ; $6816: $7b
    rst $38                                       ; $6817: $ff
    ld a, a                                       ; $6818: $7f
    and [hl]                                      ; $6819: $a6
    nop                                           ; $681a: $00
    and b                                         ; $681b: $a0
    ld [hl], l                                    ; $681c: $75
    ld h, b                                       ; $681d: $60
    ret nz                                        ; $681e: $c0

    ldh [$7c], a                                  ; $681f: $e0 $7c
    add [hl]                                      ; $6821: $86
    and a                                         ; $6822: $a7
    ld h, c                                       ; $6823: $61
    ld a, e                                       ; $6824: $7b
    rst $38                                       ; $6825: $ff
    ld [$a57f], sp                                ; $6826: $08 $7f $a5
    ld bc, $fbe1                                  ; $6829: $01 $e1 $fb
    and b                                         ; $682c: $a0
    ld c, e                                       ; $682d: $4b
    dec sp                                        ; $682e: $3b
    add d                                         ; $682f: $82
    ld l, d                                       ; $6830: $6a
    jp $ff85                                      ; $6831: $c3 $85 $ff


    sbc l                                         ; $6834: $9d
    jp Jump_000_3d00                              ; $6835: $c3 $00 $3d


    ld h, c                                       ; $6838: $61
    push bc                                       ; $6839: $c5
    ld h, b                                       ; $683a: $60
    dec a                                         ; $683b: $3d
    and b                                         ; $683c: $a0
    jp nz, Jump_000_36c0                          ; $683d: $c2 $c0 $36

    ldh [$7d], a                                  ; $6840: $e0 $7d
    and h                                         ; $6842: $a4
    add l                                         ; $6843: $85
    rst $38                                       ; $6844: $ff
    ld a, d                                       ; $6845: $7a
    ld h, [hl]                                    ; $6846: $66
    nop                                           ; $6847: $00
    cp c                                          ; $6848: $b9
    ld b, d                                       ; $6849: $42
    ret nz                                        ; $684a: $c0

    pop hl                                        ; $684b: $e1
    db $fd                                        ; $684c: $fd
    and c                                         ; $684d: $a1
    cp l                                          ; $684e: $bd
    pop bc                                        ; $684f: $c1
    or a                                          ; $6850: $b7
    ld b, [hl]                                    ; $6851: $46
    ld a, e                                       ; $6852: $7b
    rst $38                                       ; $6853: $ff
    db $fd                                        ; $6854: $fd
    ld b, [hl]                                    ; $6855: $46
    ld b, d                                       ; $6856: $42
    and c                                         ; $6857: $a1
    ld b, $bc                                     ; $6858: $06 $bc
    add b                                         ; $685a: $80
    dec hl                                        ; $685b: $2b
    dec c                                         ; $685c: $0d
    ret nz                                        ; $685d: $c0

    db $e4                                        ; $685e: $e4
    or $5f                                        ; $685f: $f6 $5f
    nop                                           ; $6861: $00
    ret z                                         ; $6862: $c8

    add b                                         ; $6863: $80
    pop hl                                        ; $6864: $e1
    ld a, h                                       ; $6865: $7c
    pop bc                                        ; $6866: $c1
    nop                                           ; $6867: $00
    ld a, [$7c82]                                 ; $6868: $fa $82 $7c
    add l                                         ; $686b: $85
    ld e, d                                       ; $686c: $5a
    ld h, [hl]                                    ; $686d: $66
    nop                                           ; $686e: $00
    db $fc                                        ; $686f: $fc
    cp c                                          ; $6870: $b9
    ld b, c                                       ; $6871: $41
    cp [hl]                                       ; $6872: $be
    pop bc                                        ; $6873: $c1
    ret nz                                        ; $6874: $c0

    pop hl                                        ; $6875: $e1
    ld a, [hl-]                                   ; $6876: $3a
    ret nz                                        ; $6877: $c0

    add b                                         ; $6878: $80
    ld a, e                                       ; $6879: $7b
    ld h, c                                       ; $687a: $61

jr_06c_687b:
    db $eb                                        ; $687b: $eb
    dec h                                         ; $687c: $25
    or $7e                                        ; $687d: $f6 $7e
    cp a                                          ; $687f: $bf
    ld h, $bf                                     ; $6880: $26 $bf
    ld [c], a                                     ; $6882: $e2
    ld a, c                                       ; $6883: $79
    add b                                         ; $6884: $80
    cp $80                                        ; $6885: $fe $80
    ld c, e                                       ; $6887: $4b
    nop                                           ; $6888: $00
    inc sp                                        ; $6889: $33
    ld b, c                                       ; $688a: $41
    ld [hl], a                                    ; $688b: $77
    ld c, e                                       ; $688c: $4b
    nop                                           ; $688d: $00
    cp c                                          ; $688e: $b9
    cp a                                          ; $688f: $bf

jr_06c_6890:
    inc h                                         ; $6890: $24
    cp e                                          ; $6891: $bb
    ld h, b                                       ; $6892: $60
    ld b, d                                       ; $6893: $42
    ret nz                                        ; $6894: $c0

    ld a, c                                       ; $6895: $79
    and c                                         ; $6896: $a1
    dec sp                                        ; $6897: $3b
    ret nz                                        ; $6898: $c0

    ld [hl], b                                    ; $6899: $70
    ld a, h                                       ; $689a: $7c
    rst $20                                       ; $689b: $e7
    or $7e                                        ; $689c: $f6 $7e
    halt                                          ; $689e: $76
    ld b, [hl]                                    ; $689f: $46
    cp a                                          ; $68a0: $bf
    ld [c], a                                     ; $68a1: $e2
    dec hl                                        ; $68a2: $2b
    dec hl                                        ; $68a3: $2b
    ld l, e                                       ; $68a4: $6b
    ld a, c                                       ; $68a5: $79
    add b                                         ; $68a6: $80
    nop                                           ; $68a7: $00
    ld a, [hl-]                                   ; $68a8: $3a
    jp nz, $c439                                  ; $68a9: $c2 $39 $c4

    or $bb                                        ; $68ac: $f6 $bb
    ld d, e                                       ; $68ae: $53
    ld h, h                                       ; $68af: $64
    sub l                                         ; $68b0: $95
    db $e4                                        ; $68b1: $e4

jr_06c_68b2:
    ld a, l                                       ; $68b2: $7d
    ldh [$7e], a                                  ; $68b3: $e0 $7e
    ret nz                                        ; $68b5: $c0

    scf                                           ; $68b6: $37
    add c                                         ; $68b7: $81
    jr nz, jr_06c_68b2                            ; $68b8: $20 $f8

    and h                                         ; $68ba: $a4

jr_06c_68bb:
    dec [hl]                                      ; $68bb: $35
    xor b                                         ; $68bc: $a8
    nop                                           ; $68bd: $00
    or a                                          ; $68be: $b7
    cp c                                          ; $68bf: $b9
    add a                                         ; $68c0: $87
    rst $30                                       ; $68c1: $f7
    ld b, b                                       ; $68c2: $40
    ld l, e                                       ; $68c3: $6b
    cp a                                          ; $68c4: $bf
    ld [c], a                                     ; $68c5: $e2
    di                                            ; $68c6: $f3
    add b                                         ; $68c7: $80
    nop                                           ; $68c8: $00
    cp b                                          ; $68c9: $b8
    jp Jump_000_3e71                              ; $68ca: $c3 $71 $3e


jr_06c_68cd:
    cp h                                          ; $68cd: $bc
    and a                                         ; $68ce: $a7
    or a                                          ; $68cf: $b7
    ld h, d                                       ; $68d0: $62
    ld b, b                                       ; $68d1: $40
    ldh [$37], a                                  ; $68d2: $e0 $37
    ret nz                                        ; $68d4: $c0

    inc sp                                        ; $68d5: $33
    ret nz                                        ; $68d6: $c0

    inc [hl]                                      ; $68d7: $34
    and c                                         ; $68d8: $a1
    jr nz, jr_06c_68cd                            ; $68d9: $20 $f2

    jr nz, jr_06c_687b                            ; $68db: $20 $9e

    nop                                           ; $68dd: $00
    ld e, e                                       ; $68de: $5b
    ld b, $00                                     ; $68df: $06 $00
    rst $30                                       ; $68e1: $f7
    push af                                       ; $68e2: $f5
    daa                                           ; $68e3: $27
    ld l, e                                       ; $68e4: $6b
    dec a                                         ; $68e5: $3d
    and b                                         ; $68e6: $a0
    ld [hl], d                                    ; $68e7: $72
    add c                                         ; $68e8: $81
    nop                                           ; $68e9: $00
    ld l, [hl]                                    ; $68ea: $6e
    add b                                         ; $68eb: $80
    cp c                                          ; $68ec: $b9
    ldh [$ee], a                                  ; $68ed: $e0 $ee
    inc b                                         ; $68ef: $04
    db $ec                                        ; $68f0: $ec
    jr jr_06c_6890                                ; $68f1: $18 $9d

    xor c                                         ; $68f3: $a9
    ret nz                                        ; $68f4: $c0

    db $e3                                        ; $68f5: $e3
    pop bc                                        ; $68f6: $c1
    jp nz, $8173                                  ; $68f7: $c2 $73 $81

    ld bc, $b46b                                  ; $68fa: $01 $6b $b4
    ldh [$f6], a                                  ; $68fd: $e0 $f6
    and c                                         ; $68ff: $a1
    ld e, e                                       ; $6900: $5b
    inc b                                         ; $6901: $04
    jr jr_06c_6966                                ; $6902: $18 $62

    nop                                           ; $6904: $00
    or $32                                        ; $6905: $f6 $32
    dec b                                         ; $6907: $05
    ld [hl], $21                                  ; $6908: $36 $21
    nop                                           ; $690a: $00
    ld [hl], e                                    ; $690b: $73
    ld b, b                                       ; $690c: $40
    ld [hl-], a                                   ; $690d: $32
    ld b, b                                       ; $690e: $40
    cp [hl]                                       ; $690f: $be
    ld [c], a                                     ; $6910: $e2
    ld l, l                                       ; $6911: $6d
    ld [bc], a                                    ; $6912: $02
    sbc l                                         ; $6913: $9d

jr_06c_6914:
    add b                                         ; $6914: $80
    jr nc, jr_06c_68bb                            ; $6915: $30 $a4

    nop                                           ; $6917: $00
    rst $30                                       ; $6918: $f7
    or [hl]                                       ; $6919: $b6
    daa                                           ; $691a: $27
    db $10                                        ; $691b: $10
    ld b, h                                       ; $691c: $44
    pop hl                                        ; $691d: $e1
    or e                                          ; $691e: $b3
    jr nz, jr_06c_6914                            ; $691f: $20 $f3

    ld b, b                                       ; $6921: $40
    db $ed                                        ; $6922: $ed
    jr nz, jr_06c_6990                            ; $6923: $20 $6b

    or l                                          ; $6925: $b5
    and b                                         ; $6926: $a0
    cp c                                          ; $6927: $b9
    push bc                                       ; $6928: $c5
    xor $61                                       ; $6929: $ee $61
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    push af                                       ; $692d: $f5
    reti                                          ; $692e: $d9


    add d                                         ; $692f: $82
    scf                                           ; $6930: $37
    add h                                         ; $6931: $84
    di                                            ; $6932: $f3
    ld bc, $6077                                  ; $6933: $01 $77 $60
    ld [hl], c                                    ; $6936: $71
    add h                                         ; $6937: $84
    ld a, [hl-]                                   ; $6938: $3a
    ldh [$7b], a                                  ; $6939: $e0 $7b
    pop hl                                        ; $693b: $e1
    add b                                         ; $693c: $80
    or d                                          ; $693d: $b2
    add d                                         ; $693e: $82
    ld h, a                                       ; $693f: $67
    db $10                                        ; $6940: $10
    or c                                          ; $6941: $b1
    dec bc                                        ; $6942: $0b
    ld [hl], h                                    ; $6943: $74
    ld h, h                                       ; $6944: $64
    or d                                          ; $6945: $b2

jr_06c_6946:
    ld [bc], a                                    ; $6946: $02
    di                                            ; $6947: $f3
    add d                                         ; $6948: $82
    dec l                                         ; $6949: $2d
    ld b, b                                       ; $694a: $40
    dec bc                                        ; $694b: $0b
    add b                                         ; $694c: $80
    ld a, [hl-]                                   ; $694d: $3a
    pop hl                                        ; $694e: $e1
    ld sp, hl                                     ; $694f: $f9
    call nz, $fb00                                ; $6950: $c4 $00 $fb
    ld [hl], e                                    ; $6953: $73
    dec b                                         ; $6954: $05
    cp c                                          ; $6955: $b9
    jr nz, jr_06c_6946                            ; $6956: $20 $ee

    ld b, c                                       ; $6958: $41
    ld a, [hl-]                                   ; $6959: $3a
    pop hl                                        ; $695a: $e1
    ld c, e                                       ; $695b: $4b
    ld bc, $ad0b                                  ; $695c: $01 $0b $ad
    jr nz, @-$3f                                  ; $695f: $20 $bf

    db $e3                                        ; $6961: $e3
    ld a, e                                       ; $6962: $7b
    call nc, $eb00                                ; $6963: $d4 $00 $eb

jr_06c_6966:
    inc [hl]                                      ; $6966: $34
    ld b, d                                       ; $6967: $42
    add b                                         ; $6968: $80
    pop bc                                        ; $6969: $c1
    scf                                           ; $696a: $37
    and c                                         ; $696b: $a1
    nop                                           ; $696c: $00
    ld a, [hl-]                                   ; $696d: $3a
    pop hl                                        ; $696e: $e1
    cpl                                           ; $696f: $2f
    ld h, b                                       ; $6970: $60
    cp a                                          ; $6971: $bf
    db $e3                                        ; $6972: $e3
    halt                                          ; $6973: $76
    and c                                         ; $6974: $a1
    or $b2                                        ; $6975: $f6 $b2
    sbc l                                         ; $6977: $9d
    ld l, b                                       ; $6978: $68
    add l                                         ; $6979: $85
    ld b, e                                       ; $697a: $43
    or e                                          ; $697b: $b3
    ld b, b                                       ; $697c: $40
    dec l                                         ; $697d: $2d
    dec c                                         ; $697e: $0d
    nop                                           ; $697f: $00
    pop bc                                        ; $6980: $c1
    ld l, e                                       ; $6981: $6b
    ld a, [bc]                                    ; $6982: $0a
    dec l                                         ; $6983: $2d
    add b                                         ; $6984: $80
    ld c, e                                       ; $6985: $4b
    ei                                            ; $6986: $fb
    ldh [$3e], a                                  ; $6987: $e0 $3e
    ldh [rP1], a                                  ; $6989: $e0 $00
    or $a0                                        ; $698b: $f6 $a0
    ld l, $24                                     ; $698d: $2e $24
    db $ec                                        ; $698f: $ec

jr_06c_6990:
    ld l, h                                       ; $6990: $6c
    nop                                           ; $6991: $00
    db $eb                                        ; $6992: $eb
    ld d, b                                       ; $6993: $50
    and d                                         ; $6994: $a2
    ld [hl], d                                    ; $6995: $72
    ld b, c                                       ; $6996: $41
    ldh a, [rNR41]                                ; $6997: $f0 $20
    cp [hl]                                       ; $6999: $be
    and d                                         ; $699a: $a2
    nop                                           ; $699b: $00
    or [hl]                                       ; $699c: $b6
    jp $a2f6                                      ; $699d: $c3 $f6 $a2


    ld [$e346], a                                 ; $69a0: $ea $46 $e3
    ld [bc], a                                    ; $69a3: $02
    nop                                           ; $69a4: $00
    di                                            ; $69a5: $f3
    adc [hl]                                      ; $69a6: $8e
    add h                                         ; $69a7: $84
    cp a                                          ; $69a8: $bf
    pop hl                                        ; $69a9: $e1
    xor [hl]                                      ; $69aa: $ae
    jr nz, jr_06c_69ad                            ; $69ab: $20 $00

jr_06c_69ad:
    cp a                                          ; $69ad: $bf
    push hl                                       ; $69ae: $e5
    daa                                           ; $69af: $27
    nop                                           ; $69b0: $00
    or $a6                                        ; $69b1: $f6 $a6
    and e                                         ; $69b3: $a3
    ld a, [bc]                                    ; $69b4: $0a
    ld [hl+], a                                   ; $69b5: $22
    ld [hl], h                                    ; $69b6: $74
    ld c, c                                       ; $69b7: $49
    and d                                         ; $69b8: $a2
    add d                                         ; $69b9: $82
    and b                                         ; $69ba: $a0
    ld a, l                                       ; $69bb: $7d
    pop hl                                        ; $69bc: $e1
    nop                                           ; $69bd: $00
    xor e                                         ; $69be: $ab
    ld b, c                                       ; $69bf: $41
    db $fd                                        ; $69c0: $fd
    call nz, $a2f5                                ; $69c1: $c4 $f5 $a2
    and [hl]                                      ; $69c4: $a6
    ld b, e                                       ; $69c5: $43
    db $ec                                        ; $69c6: $ec
    ld l, c                                       ; $69c7: $69
    sbc l                                         ; $69c8: $9d
    ld c, h                                       ; $69c9: $4c
    ld e, a                                       ; $69ca: $5f
    and $33                                       ; $69cb: $e6 $33
    add b                                         ; $69cd: $80
    nop                                           ; $69ce: $00
    ld l, d                                       ; $69cf: $6a
    ld b, d                                       ; $69d0: $42
    ei                                            ; $69d1: $fb
    pop bc                                        ; $69d2: $c1
    jr z, jr_06c_69d5                             ; $69d3: $28 $00

jr_06c_69d5:
    dec sp                                        ; $69d5: $3b
    ld [c], a                                     ; $69d6: $e2
    rst $28                                       ; $69d7: $ef
    add l                                         ; $69d8: $85
    ld [c], a                                     ; $69d9: $e2
    daa                                           ; $69da: $27
    sbc l                                         ; $69db: $9d
    ld c, l                                       ; $69dc: $4d
    ld b, l                                       ; $69dd: $45
    ld b, h                                       ; $69de: $44
    nop                                           ; $69df: $00
    ld [hl], h                                    ; $69e0: $74
    and h                                         ; $69e1: $a4
    ld l, a                                       ; $69e2: $6f
    ld [bc], a                                    ; $69e3: $02
    ld sp, hl                                     ; $69e4: $f9
    call nz, $e3bd                                ; $69e5: $c4 $bd $e3
    db $e3                                        ; $69e8: $e3
    inc hl                                        ; $69e9: $23
    db $ec                                        ; $69ea: $ec
    ld h, a                                       ; $69eb: $67
    jr jr_06c_6a3d                                ; $69ec: $18 $4f

    sub b                                         ; $69ee: $90
    add h                                         ; $69ef: $84
    nop                                           ; $69f0: $00
    xor e                                         ; $69f1: $ab
    ld [hl+], a                                   ; $69f2: $22
    or b                                          ; $69f3: $b0
    ld [hl+], a                                   ; $69f4: $22
    ld sp, $bd80                                  ; $69f5: $31 $80 $bd
    and $ee                                       ; $69f8: $e6 $ee
    add h                                         ; $69fa: $84
    or $88                                        ; $69fb: $f6 $88
    sbc l                                         ; $69fd: $9d
    ld l, $45                                     ; $69fe: $2e $45
    ld b, a                                       ; $6a00: $47
    nop                                           ; $6a01: $00
    ei                                            ; $6a02: $fb
    jp nz, $a1ff                                  ; $6a03: $c2 $ff $a1

    or d                                          ; $6a06: $b2
    and e                                         ; $6a07: $a3
    xor d                                         ; $6a08: $aa
    add d                                         ; $6a09: $82
    push af                                       ; $6a0a: $f5
    and l                                         ; $6a0b: $a5
    ld e, l                                       ; $6a0c: $5d
    rlca                                          ; $6a0d: $07
    nop                                           ; $6a0e: $00
    db $ed                                        ; $6a0f: $ed
    adc a                                         ; $6a10: $8f
    add e                                         ; $6a11: $83
    nop                                           ; $6a12: $00
    ld l, h                                       ; $6a13: $6c
    ld b, [hl]                                    ; $6a14: $46
    or c                                          ; $6a15: $b1
    ld h, b                                       ; $6a16: $60
    inc sp                                        ; $6a17: $33
    add c                                         ; $6a18: $81
    ld e, a                                       ; $6a19: $5f
    nop                                           ; $6a1a: $00
    jr nz, jr_06c_6a5f                            ; $6a1b: $20 $42

    dec hl                                        ; $6a1d: $2b
    add b                                         ; $6a1e: $80
    or l                                          ; $6a1f: $b5
    and a                                         ; $6a20: $a7
    and a                                         ; $6a21: $a7
    ld d, a                                       ; $6a22: $57
    db $10                                        ; $6a23: $10

jr_06c_6a24:
    and b                                         ; $6a24: $a0
    db $e4                                        ; $6a25: $e4
    jr nc, jr_06c_6a89                            ; $6a26: $30 $61

    ld [hl], b                                    ; $6a28: $70
    ld h, b                                       ; $6a29: $60
    ld l, e                                       ; $6a2a: $6b
    ld hl, $f34b                                  ; $6a2b: $21 $4b $f3
    jp nz, $6066                                  ; $6a2e: $c2 $66 $60

    ret nz                                        ; $6a31: $c0

    ld [c], a                                     ; $6a32: $e2
    nop                                           ; $6a33: $00
    ld [hl+], a                                   ; $6a34: $22
    ld e, h                                       ; $6a35: $5c
    ld l, h                                       ; $6a36: $6c
    inc h                                         ; $6a37: $24
    xor b                                         ; $6a38: $a8
    inc bc                                        ; $6a39: $03
    ld a, l                                       ; $6a3a: $7d
    ld [c], a                                     ; $6a3b: $e2
    ld l, l                                       ; $6a3c: $6d

jr_06c_6a3d:
    add c                                         ; $6a3d: $81
    ld h, e                                       ; $6a3e: $63
    ld h, e                                       ; $6a3f: $63
    db $ec                                        ; $6a40: $ec
    ld h, e                                       ; $6a41: $63
    rst $00                                       ; $6a42: $c7
    dec b                                         ; $6a43: $05
    nop                                           ; $6a44: $00
    sbc l                                         ; $6a45: $9d
    jr @+$75                                      ; $6a46: $18 $73

    and h                                         ; $6a48: $a4
    ei                                            ; $6a49: $fb
    jp Jump_000_0363                              ; $6a4a: $c3 $63 $03


    ld l, d                                       ; $6a4d: $6a
    ld h, e                                       ; $6a4e: $63
    or l                                          ; $6a4f: $b5
    and l                                         ; $6a50: $a5
    nop                                           ; $6a51: $00
    jp nc, $8d71                                  ; $6a52: $d2 $71 $8d

    ld [bc], a                                    ; $6a55: $02
    cp e                                          ; $6a56: $bb
    nop                                           ; $6a57: $00
    dec l                                         ; $6a58: $2d
    ld l, h                                       ; $6a59: $6c
    ld hl, $20a5                                  ; $6a5a: $21 $a5 $20
    and a                                         ; $6a5d: $a7
    add b                                         ; $6a5e: $80

jr_06c_6a5f:
    xor d                                         ; $6a5f: $aa
    and c                                         ; $6a60: $a1
    dec sp                                        ; $6a61: $3b
    push bc                                       ; $6a62: $c5
    nop                                           ; $6a63: $00
    ld sp, hl                                     ; $6a64: $f9
    nop                                           ; $6a65: $00
    dec h                                         ; $6a66: $25
    ld a, [bc]                                    ; $6a67: $0a
    ld a, [$b4c4]                                 ; $6a68: $fa $c4 $b4
    pop bc                                        ; $6a6b: $c1
    ld [hl+], a                                   ; $6a6c: $22
    ld b, c                                       ; $6a6d: $41
    ld [$2160], a                                 ; $6a6e: $ea $60 $21
    inc h                                         ; $6a71: $24
    ld [hl+], a                                   ; $6a72: $22
    inc e                                         ; $6a73: $1c
    ld a, d                                       ; $6a74: $7a
    call nz, $b910                                ; $6a75: $c4 $10 $b9
    push bc                                       ; $6a78: $c5
    add h                                         ; $6a79: $84
    ld [c], a                                     ; $6a7a: $e2
    ld hl, $3320                                  ; $6a7b: $21 $20 $33
    and b                                         ; $6a7e: $a0
    dec hl                                        ; $6a7f: $2b
    jr c, jr_06c_6a24                             ; $6a80: $38 $a2

    ldh a, [rLY]                                  ; $6a82: $f0 $44
    ld [hl+], a                                   ; $6a84: $22
    add hl, sp                                    ; $6a85: $39
    nop                                           ; $6a86: $00
    ret nz                                        ; $6a87: $c0

    inc h                                         ; $6a88: $24

jr_06c_6a89:
    db $f4                                        ; $6a89: $f4
    ld bc, $c275                                  ; $6a8a: $01 $75 $c2
    ld [c], a                                     ; $6a8d: $e2
    nop                                           ; $6a8e: $00
    and h                                         ; $6a8f: $a4
    ld b, c                                       ; $6a90: $41
    ret nz                                        ; $6a91: $c0

    ldh [$ba], a                                  ; $6a92: $e0 $ba
    and [hl]                                      ; $6a94: $a6
    ld a, e                                       ; $6a95: $7b
    db $fc                                        ; $6a96: $fc
    ld [$0025], sp                                ; $6a97: $08 $25 $00
    and l                                         ; $6a9a: $a5
    ld b, [hl]                                    ; $6a9b: $46
    pop bc                                        ; $6a9c: $c1
    ld [c], a                                     ; $6a9d: $e2
    dec l                                         ; $6a9e: $2d
    ld h, e                                       ; $6a9f: $63
    ld b, c                                       ; $6aa0: $41
    ld [hl], e                                    ; $6aa1: $73
    adc b                                         ; $6aa2: $88
    ld a, e                                       ; $6aa3: $7b
    db $fc                                        ; $6aa4: $fc
    adc e                                         ; $6aa5: $8b
    ld b, d                                       ; $6aa6: $42
    nop                                           ; $6aa7: $00
    and [hl]                                      ; $6aa8: $a6
    ld b, c                                       ; $6aa9: $41
    ld h, e                                       ; $6aaa: $63
    ld hl, $42ed                                  ; $6aab: $21 $ed $42
    cp e                                          ; $6aae: $bb
    ld [c], a                                     ; $6aaf: $e2
    add l                                         ; $6ab0: $85
    rst $38                                       ; $6ab1: $ff
    or $aa                                        ; $6ab2: $f6 $aa
    db $10                                        ; $6ab4: $10
    jp $e182                                      ; $6ab5: $c3 $82 $e1


    ld b, $a0                                     ; $6ab8: $06 $a0
    ld bc, $4b6b                                  ; $6aba: $01 $6b $4b
    nop                                           ; $6abd: $00
    rst $38                                       ; $6abe: $ff
    or $ab                                        ; $6abf: $f6 $ab
    ld h, h                                       ; $6ac1: $64
    inc hl                                        ; $6ac2: $23
    inc l                                         ; $6ac3: $2c
    ld b, e                                       ; $6ac4: $43
    rst $20                                       ; $6ac5: $e7
    ld b, b                                       ; $6ac6: $40
    inc bc                                        ; $6ac7: $03
    dec c                                         ; $6ac8: $0d
    ld l, l                                       ; $6ac9: $6d
    ld b, l                                       ; $6aca: $45
    rst $20                                       ; $6acb: $e7
    ld a, e                                       ; $6acc: $7b
    rst $38                                       ; $6acd: $ff
    db $ec                                        ; $6ace: $ec
    add l                                         ; $6acf: $85
    and h                                         ; $6ad0: $a4
    ld hl, $402d                                  ; $6ad1: $21 $2d $40
    pop bc                                        ; $6ad4: $c1
    pop hl                                        ; $6ad5: $e1
    nop                                           ; $6ad6: $00
    ld d, d                                       ; $6ad7: $52
    ld l, b                                       ; $6ad8: $68
    ld a, e                                       ; $6ad9: $7b
    rst $38                                       ; $6ada: $ff
    and [hl]                                      ; $6adb: $a6
    ld b, a                                       ; $6adc: $47
    ld l, l                                       ; $6add: $6d
    ld b, c                                       ; $6ade: $41
    add d                                         ; $6adf: $82
    push hl                                       ; $6ae0: $e5
    nop                                           ; $6ae1: $00
    sub l                                         ; $6ae2: $95
    db $ec                                        ; $6ae3: $ec
    ld [hl], d                                    ; $6ae4: $72
    and h                                         ; $6ae5: $a4
    inc h                                         ; $6ae6: $24
    ld [bc], a                                    ; $6ae7: $02
    xor d                                         ; $6ae8: $aa
    add e                                         ; $6ae9: $83
    ld l, l                                       ; $6aea: $6d
    sbc e                                         ; $6aeb: $9b
    ld h, h                                       ; $6aec: $64
    nop                                           ; $6aed: $00
    ld [hl], l                                    ; $6aee: $75
    db $ec                                        ; $6aef: $ec
    or l                                          ; $6af0: $b5
    rst $30                                       ; $6af1: $f7
    and l                                         ; $6af2: $a5
    inc b                                         ; $6af3: $04
    add h                                         ; $6af4: $84
    nop                                           ; $6af5: $00
    rst $38                                       ; $6af6: $ff
    nop                                           ; $6af7: $00
    ld [c], a                                     ; $6af8: $e2
    dec bc                                        ; $6af9: $0b
    ld l, l                                       ; $6afa: $6d
    ld h, d                                       ; $6afb: $62
    dec e                                         ; $6afc: $1d
    ld b, e                                       ; $6afd: $43
    ld b, l                                       ; $6afe: $45
    and l                                         ; $6aff: $a5
    nop                                           ; $6b00: $00
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    rst $38                                       ; $6b03: $ff
    call c, $a0dd                                 ; $6b04: $dc $dd $a0
    sbc $df                                       ; $6b07: $de $df
    and b                                         ; $6b09: $a0
    and b                                         ; $6b0a: $a0
    ret c                                         ; $6b0b: $d8

    rst $38                                       ; $6b0c: $ff
    reti                                          ; $6b0d: $d9


    and b                                         ; $6b0e: $a0
    and b                                         ; $6b0f: $a0
    and b                                         ; $6b10: $a0
    jp c, $a0db                                   ; $6b11: $da $db $a0

    and b                                         ; $6b14: $a0
    rst $38                                       ; $6b15: $ff
    sub $d7                                       ; $6b16: $d6 $d7
    and b                                         ; $6b18: $a0
    ldh [$e1], a                                  ; $6b19: $e0 $e1
    ld [c], a                                     ; $6b1b: $e2
    db $e3                                        ; $6b1c: $e3
    db $e4                                        ; $6b1d: $e4
    db $fc                                        ; $6b1e: $fc
    add sp, -$1e                                  ; $6b1f: $e8 $e2
    or $ff                                        ; $6b21: $f6 $ff
    db $e4                                        ; $6b23: $e4
    push hl                                       ; $6b24: $e5
    and $a0                                       ; $6b25: $e6 $a0
    and b                                         ; $6b27: $a0
    ret nc                                        ; $6b28: $d0

    call $c5d1                                    ; $6b29: $cd $d1 $c5
    pop hl                                        ; $6b2c: $e1
    push af                                       ; $6b2d: $f5
    or $bd                                        ; $6b2e: $f6 $bd
    ldh [$b7], a                                  ; $6b30: $e0 $b7
    ldh [$e8], a                                  ; $6b32: $e0 $e8
    jp hl                                         ; $6b34: $e9


    rst $38                                       ; $6b35: $ff
    ld [$eceb], a                                 ; $6b36: $ea $eb $ec
    and b                                         ; $6b39: $a0
    push hl                                       ; $6b3a: $e5
    and $e7                                       ; $6b3b: $e6 $e7
    and b                                         ; $6b3d: $a0
    cp $f6                                        ; $6b3e: $fe $f6
    rst $38                                       ; $6b40: $ff
    db $ec                                        ; $6b41: $ec
    and b                                         ; $6b42: $a0
    db $e3                                        ; $6b43: $e3
    db $e4                                        ; $6b44: $e4
    and b                                         ; $6b45: $a0
    and b                                         ; $6b46: $a0
    jp nc, $d3df                                  ; $6b47: $d2 $df $d3

    and b                                         ; $6b4a: $a0
    and b                                         ; $6b4b: $a0
    sbc a                                         ; $6b4c: $9f
    sbc l                                         ; $6b4d: $9d
    rst $38                                       ; $6b4e: $ff
    ldh [$a2], a                                  ; $6b4f: $e0 $a2
    sbc a                                         ; $6b51: $9f
    ld a, [c]                                     ; $6b52: $f2
    ld a, h                                       ; $6b53: $7c
    ld [c], a                                     ; $6b54: $e2
    and b                                         ; $6b55: $a0
    add l                                         ; $6b56: $85
    rst $38                                       ; $6b57: $ff
    ld [c], a                                     ; $6b58: $e2
    and $a0                                       ; $6b59: $e6 $a0
    and b                                         ; $6b5b: $a0
    db $ed                                        ; $6b5c: $ed
    xor $ff                                       ; $6b5d: $ee $ff
    call nc, $efd5                                ; $6b5f: $d4 $d5 $ef
    sbc a                                         ; $6b62: $9f
    sbc h                                         ; $6b63: $9c
    or d                                          ; $6b64: $b2
    or d                                          ; $6b65: $b2
    ld c, b                                       ; $6b66: $48
    rrca                                          ; $6b67: $0f
    ld c, b                                       ; $6b68: $48
    ld b, l                                       ; $6b69: $45
    sbc h                                         ; $6b6a: $9c
    sbc a                                         ; $6b6b: $9f
    ld a, c                                       ; $6b6c: $79
    ldh [$3d], a                                  ; $6b6d: $e0 $3d
    ldh [$85], a                                  ; $6b6f: $e0 $85
    rst $38                                       ; $6b71: $ff
    ld [c], a                                     ; $6b72: $e2
    push hl                                       ; $6b73: $e5
    rst $38                                       ; $6b74: $ff
    and b                                         ; $6b75: $a0
    and b                                         ; $6b76: $a0
    ldh a, [$f1]                                  ; $6b77: $f0 $f1
    ld a, [c]                                     ; $6b79: $f2
    di                                            ; $6b7a: $f3
    db $f4                                        ; $6b7b: $f4
    and c                                         ; $6b7c: $a1
    ld a, a                                       ; $6b7d: $7f
    ld b, [hl]                                    ; $6b7e: $46
    ld b, l                                       ; $6b7f: $45
    inc sp                                        ; $6b80: $33
    ld d, h                                       ; $6b81: $54

Jump_06c_6b82:
    ld h, b                                       ; $6b82: $60
    ld b, h                                       ; $6b83: $44
    ld b, [hl]                                    ; $6b84: $46
    cp a                                          ; $6b85: $bf
    ldh [$d0], a                                  ; $6b86: $e0 $d0
    db $f4                                        ; $6b88: $f4
    ret nz                                        ; $6b89: $c0

    ld l, e                                       ; $6b8a: $6b
    ldh [$85], a                                  ; $6b8b: $e0 $85
    rst $38                                       ; $6b8d: $ff
    ld [c], a                                     ; $6b8e: $e2
    db $e3                                        ; $6b8f: $e3
    and b                                         ; $6b90: $a0
    ld [$9fe2], sp                                ; $6b91: $08 $e2 $9f
    sbc h                                         ; $6b94: $9c
    rst $38                                       ; $6b95: $ff
    ld b, [hl]                                    ; $6b96: $46
    dec l                                         ; $6b97: $2d
    jr nz, jr_06c_6bc4                            ; $6b98: $20 $2a

    ld a, [hl+]                                   ; $6b9a: $2a
    ld a, [hl+]                                   ; $6b9b: $2a
    ld c, b                                       ; $6b9c: $48

Call_06c_6b9d:
    ld c, b                                       ; $6b9d: $48
    ldh [$7e], a                                  ; $6b9e: $e0 $7e
    ldh [$3d], a                                  ; $6ba0: $e0 $3d
    ld [c], a                                     ; $6ba2: $e2
    add l                                         ; $6ba3: $85
    rst $38                                       ; $6ba4: $ff
    nop                                           ; $6ba5: $00
    and $8d                                       ; $6ba6: $e6 $8d
    ret nz                                        ; $6ba8: $c0

    sbc [hl]                                      ; $6ba9: $9e
    or d                                          ; $6baa: $b2
    ld b, [hl]                                    ; $6bab: $46
    ld a, a                                       ; $6bac: $7f
    dec l                                         ; $6bad: $2d
    ld h, $20                                     ; $6bae: $26 $20
    jr nz, jr_06c_6bdc                            ; $6bb0: $20 $2a

    ld e, [hl]                                    ; $6bb2: $5e
    ld d, d                                       ; $6bb3: $52
    dec a                                         ; $6bb4: $3d
    pop hl                                        ; $6bb5: $e1
    ldh [$af], a                                  ; $6bb6: $e0 $af
    pop bc                                        ; $6bb8: $c1
    add l                                         ; $6bb9: $85
    rst $38                                       ; $6bba: $ff
    nop                                           ; $6bbb: $00
    push hl                                       ; $6bbc: $e5
    ld b, h                                       ; $6bbd: $44
    pop bc                                        ; $6bbe: $c1
    ret nz                                        ; $6bbf: $c0

    ldh [rLY], a                                  ; $6bc0: $e0 $44
    inc a                                         ; $6bc2: $3c
    ld [hl+], a                                   ; $6bc3: $22

jr_06c_6bc4:
    ld a, a                                       ; $6bc4: $7f
    ld [hl+], a                                   ; $6bc5: $22
    ld c, d                                       ; $6bc6: $4a
    ld h, b                                       ; $6bc7: $60
    ld e, h                                       ; $6bc8: $5c
    ld b, [hl]                                    ; $6bc9: $46
    or d                                          ; $6bca: $b2
    and c                                         ; $6bcb: $a1
    xor a                                         ; $6bcc: $af
    pop bc                                        ; $6bcd: $c1
    ldh [$85], a                                  ; $6bce: $e0 $85
    rst $38                                       ; $6bd0: $ff
    ld [c], a                                     ; $6bd1: $e2
    db $e4                                        ; $6bd2: $e4
    nop                                           ; $6bd3: $00
    ret nz                                        ; $6bd4: $c0

    add hl, bc                                    ; $6bd5: $09
    ret nz                                        ; $6bd6: $c0

    ld b, b                                       ; $6bd7: $40
    ldh [$39], a                                  ; $6bd8: $e0 $39
    swap l                                        ; $6bda: $cb $35

jr_06c_6bdc:
    ld a, a                                       ; $6bdc: $7f
    inc a                                         ; $6bdd: $3c
    ld c, d                                       ; $6bde: $4a
    ld d, d                                       ; $6bdf: $52
    ld b, l                                       ; $6be0: $45
    or d                                          ; $6be1: $b2
    or d                                          ; $6be2: $b2
    sbc [hl]                                      ; $6be3: $9e
    xor a                                         ; $6be4: $af
    jp nz, $85f4                                  ; $6be5: $c2 $f4 $85

    rst $38                                       ; $6be8: $ff
    nop                                           ; $6be9: $00
    push bc                                       ; $6bea: $c5
    rst $20                                       ; $6beb: $e7
    ld b, $c1                                     ; $6bec: $06 $c1
    sbc a                                         ; $6bee: $9f
    sbc h                                         ; $6bef: $9c
    add hl, sp                                    ; $6bf0: $39
    dec [hl]                                      ; $6bf1: $35
    rst $38                                       ; $6bf2: $ff
    dec [hl]                                      ; $6bf3: $35
    srl b                                         ; $6bf4: $cb $38
    scf                                           ; $6bf6: $37
    ccf                                           ; $6bf7: $3f
    ld b, l                                       ; $6bf8: $45
    or d                                          ; $6bf9: $b2
    sbc [hl]                                      ; $6bfa: $9e
    ldh [$af], a                                  ; $6bfb: $e0 $af
    jp nz, $ff85                                  ; $6bfd: $c2 $85 $ff

    ld [c], a                                     ; $6c00: $e2
    db $e3                                        ; $6c01: $e3
    sbc l                                         ; $6c02: $9d
    ldh [$86], a                                  ; $6c03: $e0 $86
    and b                                         ; $6c05: $a0
    sub $d7                                       ; $6c06: $d6 $d7
    sbc a                                         ; $6c08: $9f
    rst $38                                       ; $6c09: $ff
    sbc h                                         ; $6c0a: $9c
    ld a, [hl-]                                   ; $6c0b: $3a
    rst $08                                       ; $6c0c: $cf
    rst $08                                       ; $6c0d: $cf
    dec [hl]                                      ; $6c0e: $35
    dec sp                                        ; $6c0f: $3b
    dec [hl]                                      ; $6c10: $35
    add hl, sp                                    ; $6c11: $39
    sub b                                         ; $6c12: $90
    ld a, l                                       ; $6c13: $7d
    ret nz                                        ; $6c14: $c0

    dec a                                         ; $6c15: $3d
    jp $a0e5                                      ; $6c16: $c3 $e5 $a0


    ld a, e                                       ; $6c19: $7b
    rst $38                                       ; $6c1a: $ff
    rst $18                                       ; $6c1b: $df
    sbc l                                         ; $6c1c: $9d
    ld [c], a                                     ; $6c1d: $e2
    db $fd                                        ; $6c1e: $fd
    jp nz, Jump_06c_7f3e                          ; $6c1f: $c2 $3e $7f

    adc $ce                                       ; $6c22: $ce $ce
    inc a                                         ; $6c24: $3c
    or d                                          ; $6c25: $b2
    ld [hl], $3a                                  ; $6c26: $36 $3a
    ld b, l                                       ; $6c28: $45
    inc a                                         ; $6c29: $3c
    pop bc                                        ; $6c2a: $c1
    and b                                         ; $6c2b: $a0
    dec a                                         ; $6c2c: $3d
    jp nz, $df7b                                  ; $6c2d: $c2 $7b $df

    nop                                           ; $6c30: $00
    db $e3                                        ; $6c31: $e3
    nop                                           ; $6c32: $00
    and b                                         ; $6c33: $a0
    ld b, $a0                                     ; $6c34: $06 $a0
    and c                                         ; $6c36: $a1
    ret nz                                        ; $6c37: $c0

    ldh [$35], a                                  ; $6c38: $e0 $35
    ld a, a                                       ; $6c3a: $7f
    add hl, sp                                    ; $6c3b: $39
    or d                                          ; $6c3c: $b2
    ld [hl], $36                                  ; $6c3d: $36 $36
    ld b, l                                       ; $6c3f: $45
    ld b, [hl]                                    ; $6c40: $46
    sbc [hl]                                      ; $6c41: $9e
    ld a, d                                       ; $6c42: $7a
    and e                                         ; $6c43: $a3
    ld hl, sp+$00                                 ; $6c44: $f8 $00
    rst $38                                       ; $6c46: $ff
    nop                                           ; $6c47: $00
    db $e4                                        ; $6c48: $e4
    rst $38                                       ; $6c49: $ff
    jp $ce3a                                      ; $6c4a: $c3 $3a $ce


    call z, Call_000_3ecf                         ; $6c4d: $cc $cf $3e
    rrca                                          ; $6c50: $0f
    or d                                          ; $6c51: $b2
    or d                                          ; $6c52: $b2
    ld a, [hl-]                                   ; $6c53: $3a
    add hl, sp                                    ; $6c54: $39
    ret nz                                        ; $6c55: $c0

    ldh [$f3], a                                  ; $6c56: $e0 $f3
    add e                                         ; $6c58: $83
    nop                                           ; $6c59: $00
    rst $38                                       ; $6c5a: $ff
    nop                                           ; $6c5b: $00
    ld [c], a                                     ; $6c5c: $e2
    xor $fd                                       ; $6c5d: $ee $fd
    add c                                         ; $6c5f: $81
    sbc a                                         ; $6c60: $9f
    sbc h                                         ; $6c61: $9c
    ld b, l                                       ; $6c62: $45
    ret nz                                        ; $6c63: $c0

    pop hl                                        ; $6c64: $e1
    ld a, [hl-]                                   ; $6c65: $3a
    or d                                          ; $6c66: $b2
    or d                                          ; $6c67: $b2
    adc a                                         ; $6c68: $8f
    add hl, sp                                    ; $6c69: $39
    ld a, [hl-]                                   ; $6c6a: $3a
    ld b, l                                       ; $6c6b: $45
    sbc [hl]                                      ; $6c6c: $9e
    ld a, e                                       ; $6c6d: $7b
    sbc a                                         ; $6c6e: $9f
    nop                                           ; $6c6f: $00
    db $ec                                        ; $6c70: $ec
    cp a                                          ; $6c71: $bf
    and c                                         ; $6c72: $a1
    add hl, sp                                    ; $6c73: $39
    cp $c0                                        ; $6c74: $fe $c0
    ret nz                                        ; $6c76: $c0

    dec [hl]                                      ; $6c77: $35
    jr c, jr_06c_6cb1                             ; $6c78: $38 $37

    ld [hl], $36                                  ; $6c7a: $36 $36
    sbc h                                         ; $6c7c: $9c
    sbc a                                         ; $6c7d: $9f
    ld hl, sp+$7b                                 ; $6c7e: $f8 $7b
    sbc a                                         ; $6c80: $9f
    nop                                           ; $6c81: $00
    ret                                           ; $6c82: $c9


    ld a, a                                       ; $6c83: $7f
    and h                                         ; $6c84: $a4
    ld b, l                                       ; $6c85: $45
    ld a, [hl-]                                   ; $6c86: $3a
    ld l, h                                       ; $6c87: $6c
    ld [hl], d                                    ; $6c88: $72
    ld [hl], c                                    ; $6c89: $71
    rra                                           ; $6c8a: $1f
    ld [hl], d                                    ; $6c8b: $72
    ld l, h                                       ; $6c8c: $6c
    ld a, [hl-]                                   ; $6c8d: $3a
    ld b, l                                       ; $6c8e: $45
    and c                                         ; $6c8f: $a1
    ld a, e                                       ; $6c90: $7b
    sbc a                                         ; $6c91: $9f
    nop                                           ; $6c92: $00
    bit 7, a                                      ; $6c93: $cb $7f
    and e                                         ; $6c95: $a3
    rst $38                                       ; $6c96: $ff
    ld b, [hl]                                    ; $6c97: $46
    ld a, $73                                     ; $6c98: $3e $73
    ld l, [hl]                                    ; $6c9a: $6e
    cp e                                          ; $6c9b: $bb
    ld l, [hl]                                    ; $6c9c: $6e
    ld [hl], h                                    ; $6c9d: $74
    ld a, $83                                     ; $6c9e: $3e $83
    ld b, [hl]                                    ; $6ca0: $46
    sbc [hl]                                      ; $6ca1: $9e
    or $60                                        ; $6ca2: $f6 $60
    ccf                                           ; $6ca4: $3f
    jp nz, $ff7b                                  ; $6ca5: $c2 $7b $ff

    nop                                           ; $6ca8: $00
    jp $a37f                                      ; $6ca9: $c3 $7f $a3


    ld b, [hl]                                    ; $6cac: $46
    ld a, a                                       ; $6cad: $7f
    ld a, $6a                                     ; $6cae: $3e $6a
    cp e                                          ; $6cb0: $bb

jr_06c_6cb1:
    cp e                                          ; $6cb1: $bb
    cp e                                          ; $6cb2: $bb
    ld l, c                                       ; $6cb3: $69
    ld a, $7c                                     ; $6cb4: $3e $7c
    add a                                         ; $6cb6: $87
    ld hl, sp+$7b                                 ; $6cb7: $f8 $7b
    sbc a                                         ; $6cb9: $9f
    nop                                           ; $6cba: $00
    call nz, $a27f                                ; $6cbb: $c4 $7f $a2
    ld b, [hl]                                    ; $6cbe: $46
    add hl, sp                                    ; $6cbf: $39
    ld [hl], l                                    ; $6cc0: $75
    ld h, [hl]                                    ; $6cc1: $66
    cp e                                          ; $6cc2: $bb
    rrca                                          ; $6cc3: $0f
    ld h, d                                       ; $6cc4: $62
    halt                                          ; $6cc5: $76
    add hl, sp                                    ; $6cc6: $39
    ld b, [hl]                                    ; $6cc7: $46
    dec sp                                        ; $6cc8: $3b
    add c                                         ; $6cc9: $81
    ld a, $e3                                     ; $6cca: $3e $e3
    nop                                           ; $6ccc: $00
    rst $38                                       ; $6ccd: $ff
    nop                                           ; $6cce: $00
    call nz, Call_000_3dfc                        ; $6ccf: $c4 $fc $3d
    ld h, b                                       ; $6cd2: $60
    cp [hl]                                       ; $6cd3: $be
    ld h, b                                       ; $6cd4: $60
    ld a, [hl-]                                   ; $6cd5: $3a
    ld [hl], a                                    ; $6cd6: $77
    ld h, h                                       ; $6cd7: $64
    ld a, b                                       ; $6cd8: $78
    inc a                                         ; $6cd9: $3c
    or d                                          ; $6cda: $b2
    ldh [$36], a                                  ; $6cdb: $e0 $36
    ldh [$7c], a                                  ; $6cdd: $e0 $7c
    add e                                         ; $6cdf: $83
    nop                                           ; $6ce0: $00
    rst $38                                       ; $6ce1: $ff
    nop                                           ; $6ce2: $00
    push bc                                       ; $6ce3: $c5
    dec a                                         ; $6ce4: $3d
    ld h, d                                       ; $6ce5: $62
    sbc [hl]                                      ; $6ce6: $9e
    or d                                          ; $6ce7: $b2
    add hl, sp                                    ; $6ce8: $39
    rra                                           ; $6ce9: $1f
    dec [hl]                                      ; $6cea: $35
    rst $08                                       ; $6ceb: $cf
    call Call_000_36cf                            ; $6cec: $cd $cf $36
    cp a                                          ; $6cef: $bf
    pop hl                                        ; $6cf0: $e1
    db $fd                                        ; $6cf1: $fd
    ret nz                                        ; $6cf2: $c0

    dec hl                                        ; $6cf3: $2b

jr_06c_6cf4:
    ld h, b                                       ; $6cf4: $60
    ld hl, sp+$00                                 ; $6cf5: $f8 $00
    rst $38                                       ; $6cf7: $ff
    nop                                           ; $6cf8: $00
    call nz, Call_06c_623d                        ; $6cf9: $c4 $3d $62
    and c                                         ; $6cfc: $a1
    or d                                          ; $6cfd: $b2
    or d                                          ; $6cfe: $b2
    inc a                                         ; $6cff: $3c
    adc $7f                                       ; $6d00: $ce $7f
    call z, $cfcb                                 ; $6d02: $cc $cb $cf
    jr c, jr_06c_6d3e                             ; $6d05: $38 $37

    or d                                          ; $6d07: $b2
    ld b, [hl]                                    ; $6d08: $46
    ld a, h                                       ; $6d09: $7c
    add e                                         ; $6d0a: $83
    ld hl, sp+$7b                                 ; $6d0b: $f8 $7b
    rst $18                                       ; $6d0d: $df
    nop                                           ; $6d0e: $00
    and h                                         ; $6d0f: $a4
    dec a                                         ; $6d10: $3d
    ld h, d                                       ; $6d11: $62
    sbc [hl]                                      ; $6d12: $9e
    or d                                          ; $6d13: $b2
    ld b, l                                       ; $6d14: $45
    ld [hl], $cf                                  ; $6d15: $36 $cf
    rst $38                                       ; $6d17: $ff
    call z, $cccc                                 ; $6d18: $cc $cc $cc
    rst $08                                       ; $6d1b: $cf
    inc a                                         ; $6d1c: $3c
    or d                                          ; $6d1d: $b2
    ld b, [hl]                                    ; $6d1e: $46
    and c                                         ; $6d1f: $a1
    add [hl]                                      ; $6d20: $86
    dec hl                                        ; $6d21: $2b
    ld h, d                                       ; $6d22: $62
    sub $d7                                       ; $6d23: $d6 $d7
    ld l, h                                       ; $6d25: $6c
    ld b, b                                       ; $6d26: $40
    nop                                           ; $6d27: $00
    rst $38                                       ; $6d28: $ff
    nop                                           ; $6d29: $00
    ld b, b                                       ; $6d2a: $40
    inc a                                         ; $6d2b: $3c
    ld h, h                                       ; $6d2c: $64
    ld b, l                                       ; $6d2d: $45
    dec bc                                        ; $6d2e: $0b
    ld [hl], $ce                                  ; $6d2f: $36 $ce
    cp a                                          ; $6d31: $bf
    pop hl                                        ; $6d32: $e1
    or d                                          ; $6d33: $b2
    ld sp, hl                                     ; $6d34: $f9
    ld b, d                                       ; $6d35: $42
    db $eb                                        ; $6d36: $eb
    inc h                                         ; $6d37: $24
    ld a, e                                       ; $6d38: $7b
    call c, $e400                                 ; $6d39: $dc $00 $e4
    sbc h                                         ; $6d3c: $9c
    ret z                                         ; $6d3d: $c8

jr_06c_6d3e:
    ld hl, $40fb                                  ; $6d3e: $21 $fb $40
    ld b, b                                       ; $6d41: $40
    rst $08                                       ; $6d42: $cf
    cp e                                          ; $6d43: $bb

Jump_06c_6d44:
    ld a, a                                       ; $6d44: $7f
    ldh [$7d], a                                  ; $6d45: $e0 $7d
    pop bc                                        ; $6d47: $c1
    sbc l                                         ; $6d48: $9d
    dec c                                         ; $6d49: $0d
    sbc l                                         ; $6d4a: $9d
    inc [hl]                                      ; $6d4b: $34
    ld b, e                                       ; $6d4c: $43
    sub $d7                                       ; $6d4d: $d6 $d7
    nop                                           ; $6d4f: $00
    rst $38                                       ; $6d50: $ff
    jr jr_06c_6cf4                                ; $6d51: $18 $a1

    ld a, a                                       ; $6d53: $7f
    ld hl, $80fb                                  ; $6d54: $21 $fb $80
    dec b                                         ; $6d57: $05
    ld [hl], $be                                  ; $6d58: $36 $be
    ret nz                                        ; $6d5a: $c0

    dec [hl]                                      ; $6d5b: $35
    inc a                                         ; $6d5c: $3c
    add b                                         ; $6d5d: $80
    rst $38                                       ; $6d5e: $ff
    ldh [$34], a                                  ; $6d5f: $e0 $34
    ld b, d                                       ; $6d61: $42
    ld h, a                                       ; $6d62: $67
    inc hl                                        ; $6d63: $23
    nop                                           ; $6d64: $00
    sbc l                                         ; $6d65: $9d
    ld hl, sp+$18                                 ; $6d66: $f8 $18
    ret nz                                        ; $6d68: $c0

    ld c, l                                       ; $6d69: $4d
    and d                                         ; $6d6a: $a2
    cp d                                          ; $6d6b: $ba
    add b                                         ; $6d6c: $80
    scf                                           ; $6d6d: $37
    jr c, jr_06c_6da5                             ; $6d6e: $38 $35

    dec [hl]                                      ; $6d70: $35
    dec [hl]                                      ; $6d71: $35
    add b                                         ; $6d72: $80
    ld a, h                                       ; $6d73: $7c
    ret nz                                        ; $6d74: $c0

    ld a, [hl-]                                   ; $6d75: $3a
    pop bc                                        ; $6d76: $c1
    or c                                          ; $6d77: $b1
    jr nz, jr_06c_6daf                            ; $6d78: $20 $35

    and h                                         ; $6d7a: $a4
    nop                                           ; $6d7b: $00
    sbc h                                         ; $6d7c: $9c
    ld a, e                                       ; $6d7d: $7b
    ld h, c                                       ; $6d7e: $61
    ret z                                         ; $6d7f: $c8

    ld [hl+], a                                   ; $6d80: $22
    sbc a                                         ; $6d81: $9f
    ld bc, $7d9d                                  ; $6d82: $01 $9d $7d
    ldh [$bf], a                                  ; $6d85: $e0 $bf
    ldh [$7c], a                                  ; $6d87: $e0 $7c
    ret nz                                        ; $6d89: $c0

    ld hl, sp-$5d                                 ; $6d8a: $f8 $a3
    dec [hl]                                      ; $6d8c: $35

jr_06c_6d8d:
    and e                                         ; $6d8d: $a3
    nop                                           ; $6d8e: $00
    ld a, h                                       ; $6d8f: $7c
    jr @-$3b                                      ; $6d90: $18 $c3

    db $ec                                        ; $6d92: $ec
    cp h                                          ; $6d93: $bc
    nop                                           ; $6d94: $00
    rst $30                                       ; $6d95: $f7
    ld b, d                                       ; $6d96: $42
    ld b, l                                       ; $6d97: $45
    ld a, [hl-]                                   ; $6d98: $3a
    ld a, [hl]                                    ; $6d99: $7e
    ldh [$35], a                                  ; $6d9a: $e0 $35
    dec [hl]                                      ; $6d9c: $35
    dec sp                                        ; $6d9d: $3b
    ldh [$f7], a                                  ; $6d9e: $e0 $f7
    and c                                         ; $6da0: $a1
    or c                                          ; $6da1: $b1
    inc hl                                        ; $6da2: $23
    or $99                                        ; $6da3: $f6 $99

jr_06c_6da5:
    ld [hl], $28                                  ; $6da5: $36 $28
    adc d                                         ; $6da7: $8a
    add e                                         ; $6da8: $83
    and c                                         ; $6da9: $a1
    ld b, l                                       ; $6daa: $45
    ld a, [hl-]                                   ; $6dab: $3a
    ld a, $3b                                     ; $6dac: $3e $3b
    add b                                         ; $6dae: $80

jr_06c_6daf:
    dec [hl]                                      ; $6daf: $35
    cp e                                          ; $6db0: $bb
    jr c, jr_06c_6deb                             ; $6db1: $38 $38

    dec sp                                        ; $6db3: $3b
    dec [hl]                                      ; $6db4: $35
    and [hl]                                      ; $6db5: $a6
    sbc a                                         ; $6db6: $9f
    nop                                           ; $6db7: $00
    ret c                                         ; $6db8: $d8

    or $b5                                        ; $6db9: $f6 $b5
    sbc l                                         ; $6dbb: $9d
    and [hl]                                      ; $6dbc: $a6
    ld a, d                                       ; $6dbd: $7a
    push bc                                       ; $6dbe: $c5
    sbc [hl]                                      ; $6dbf: $9e
    ld b, b                                       ; $6dc0: $40
    dec a                                         ; $6dc1: $3d
    and b                                         ; $6dc2: $a0
    or d                                          ; $6dc3: $b2
    ld [hl], $34                                  ; $6dc4: $36 $34
    dec [hl]                                      ; $6dc6: $35
    ld h, c                                       ; $6dc7: $61
    push af                                       ; $6dc8: $f5
    add b                                         ; $6dc9: $80
    or d                                          ; $6dca: $b2
    ld [hl], $c2                                  ; $6dcb: $36 $c2
    jp nc, $99d3                                  ; $6dcd: $d2 $d3 $99

    ld bc, $fa00                                  ; $6dd0: $01 $00 $fa
    inc l                                         ; $6dd3: $2c
    sub e                                         ; $6dd4: $93
    ld h, d                                       ; $6dd5: $62
    or l                                          ; $6dd6: $b5
    ld [hl+], a                                   ; $6dd7: $22
    ld b, l                                       ; $6dd8: $45
    ld a, [hl-]                                   ; $6dd9: $3a
    pop bc                                        ; $6dda: $c1
    pop bc                                        ; $6ddb: $c1
    inc a                                         ; $6ddc: $3c
    ld [hl], l                                    ; $6ddd: $75
    ld h, b                                       ; $6dde: $60
    inc l                                         ; $6ddf: $2c
    add b                                         ; $6de0: $80
    ret nz                                        ; $6de1: $c0

    or c                                          ; $6de2: $b1
    ld hl, $a374                                  ; $6de3: $21 $74 $a3
    ld l, l                                       ; $6de6: $6d
    ld b, d                                       ; $6de7: $42
    nop                                           ; $6de8: $00
    ld sp, hl                                     ; $6de9: $f9
    sub e                                         ; $6dea: $93

jr_06c_6deb:
    add c                                         ; $6deb: $81
    dec b                                         ; $6dec: $05
    jr nz, jr_06c_6d8d                            ; $6ded: $20 $9e

    ld b, [hl]                                    ; $6def: $46
    ld a, l                                       ; $6df0: $7d
    add hl, sp                                    ; $6df1: $39
    cp c                                          ; $6df2: $b9
    ld b, b                                       ; $6df3: $40
    rst $08                                       ; $6df4: $cf
    call $cfcd                                    ; $6df5: $cd $cd $cf
    add hl, sp                                    ; $6df8: $39
    cp h                                          ; $6df9: $bc
    call nz, $9fb0                                ; $6dfa: $c4 $b0 $9f
    ld [bc], a                                    ; $6dfd: $02
    or e                                          ; $6dfe: $b3
    and h                                         ; $6dff: $a4
    nop                                           ; $6e00: $00
    ld hl, sp-$0a                                 ; $6e01: $f8 $f6
    ld [hl+], a                                   ; $6e03: $22
    push af                                       ; $6e04: $f5
    or $fb                                        ; $6e05: $f6 $fb
    and c                                         ; $6e07: $a1
    ld a, [hl-]                                   ; $6e08: $3a
    rst $18                                       ; $6e09: $df
    or d                                          ; $6e0a: $b2

jr_06c_6e0b:
    rst $08                                       ; $6e0b: $cf
    call z, $cecb                                 ; $6e0c: $cc $cb $ce
    di                                            ; $6e0f: $f3
    ld b, b                                       ; $6e10: $40
    scf                                           ; $6e11: $37
    scf                                           ; $6e12: $37

jr_06c_6e13:
    ld [bc], a                                    ; $6e13: $02
    ld sp, $9d40                                  ; $6e14: $31 $40 $9d
    or h                                          ; $6e17: $b4
    and c                                         ; $6e18: $a1
    xor d                                         ; $6e19: $aa
    ld bc, $a05a                                  ; $6e1a: $01 $5a $a0
    nop                                           ; $6e1d: $00
    rst $30                                       ; $6e1e: $f7
    ld a, e                                       ; $6e1f: $7b
    call nz, $8237                                ; $6e20: $c4 $37 $82
    dec sp                                        ; $6e23: $3b
    inc a                                         ; $6e24: $3c
    ld [hl], $f6                                  ; $6e25: $36 $f6
    add b                                         ; $6e27: $80
    adc $35                                       ; $6e28: $ce $35
    dec sp                                        ; $6e2a: $3b
    ld [hl], c                                    ; $6e2b: $71
    add l                                         ; $6e2c: $85
    scf                                           ; $6e2d: $37
    jp $ddf0                                      ; $6e2e: $c3 $f0 $dd


    jp $f900                                      ; $6e31: $c3 $00 $f9


    or $60                                        ; $6e34: $f6 $60
    scf                                           ; $6e36: $37
    add b                                         ; $6e37: $80
    sbc a                                         ; $6e38: $9f
    sbc h                                         ; $6e39: $9c
    scf                                           ; $6e3a: $37
    jr c, jr_06c_6e43                             ; $6e3b: $38 $06

    cp a                                          ; $6e3d: $bf
    ldh [$cf], a                                  ; $6e3e: $e0 $cf
    res 6, d                                      ; $6e40: $cb $b2
    add d                                         ; $6e42: $82

jr_06c_6e43:
    jr nc, @-$7e                                  ; $6e43: $30 $80

    ld [hl], c                                    ; $6e45: $71
    and b                                         ; $6e46: $a0
    rst $28                                       ; $6e47: $ef
    add d                                         ; $6e48: $82
    or $b1                                        ; $6e49: $f6 $b1
    call z, Call_06c_6b9d                         ; $6e4b: $cc $9d $6b
    ld c, c                                       ; $6e4e: $49
    add e                                         ; $6e4f: $83
    sbc [hl]                                      ; $6e50: $9e
    ld b, [hl]                                    ; $6e51: $46
    cp c                                          ; $6e52: $b9
    jr nz, jr_06c_6ed1                            ; $6e53: $20 $7c

    ret nz                                        ; $6e55: $c0

jr_06c_6e56:
    rst $08                                       ; $6e56: $cf
    call Call_000_3ac0                            ; $6e57: $cd $c0 $3a
    ldh [$2c], a                                  ; $6e5a: $e0 $2c
    jr nz, jr_06c_6e0b                            ; $6e5c: $20 $ad

    jr nz, jr_06c_6e56                            ; $6e5e: $20 $f6

    or [hl]                                       ; $6e60: $b6
    nop                                           ; $6e61: $00
    db $eb                                        ; $6e62: $eb
    push de                                       ; $6e63: $d5
    jp $46a1                                      ; $6e64: $c3 $a1 $46


    ld a, [bc]                                    ; $6e67: $0a
    ccf                                           ; $6e68: $3f
    ret nz                                        ; $6e69: $c0

    dec sp                                        ; $6e6a: $3b
    inc [hl]                                      ; $6e6b: $34
    ld b, b                                       ; $6e6c: $40
    ld a, [hl-]                                   ; $6e6d: $3a
    ld a, [hl-]                                   ; $6e6e: $3a
    pop hl                                        ; $6e6f: $e1

Jump_06c_6e70:
    jr nc, jr_06c_6e13                            ; $6e70: $30 $a1

    ld a, [hl]                                    ; $6e72: $7e
    db $e3                                        ; $6e73: $e3
    or $b1                                        ; $6e74: $f6 $b1
    cp b                                          ; $6e76: $b8
    nop                                           ; $6e77: $00
    db $ed                                        ; $6e78: $ed
    call nz, $b301                                ; $6e79: $c4 $01 $b3
    ld b, c                                       ; $6e7c: $41
    or d                                          ; $6e7d: $b2
    ccf                                           ; $6e7e: $3f
    or d                                          ; $6e7f: $b2
    push af                                       ; $6e80: $f5
    add b                                         ; $6e81: $80
    rlc h                                         ; $6e82: $cb $04
    db $ec                                        ; $6e84: $ec
    ld hl, $0027                                  ; $6e85: $21 $27 $00
    ld b, h                                       ; $6e88: $44
    or $a3                                        ; $6e89: $f6 $a3
    ld l, d                                       ; $6e8b: $6a
    ld h, c                                       ; $6e8c: $61
    or $ac                                        ; $6e8d: $f6 $ac
    nop                                           ; $6e8f: $00
    db $ed                                        ; $6e90: $ed
    ld a, [bc]                                    ; $6e91: $0a
    add d                                         ; $6e92: $82
    nop                                           ; $6e93: $00
    ld [hl], d                                    ; $6e94: $72
    ld b, c                                       ; $6e95: $41
    inc b                                         ; $6e96: $04
    pop bc                                        ; $6e97: $c1
    ld a, e                                       ; $6e98: $7b
    ldh [$b2], a                                  ; $6e99: $e0 $b2
    add b                                         ; $6e9b: $80
    ld l, b                                       ; $6e9c: $68
    nop                                           ; $6e9d: $00
    xor e                                         ; $6e9e: $ab
    ld b, b                                       ; $6e9f: $40
    or $b4                                        ; $6ea0: $f6 $b4
    sbc l                                         ; $6ea2: $9d
    ld c, e                                       ; $6ea3: $4b
    ld h, [hl]                                    ; $6ea4: $66
    jp z, $da61                                   ; $6ea5: $ca $61 $da

    db $db                                        ; $6ea8: $db
    dec sp                                        ; $6ea9: $3b
    pop bc                                        ; $6eaa: $c1
    cp a                                          ; $6eab: $bf
    ld [c], a                                     ; $6eac: $e2
    ld b, l                                       ; $6ead: $45
    ld b, e                                       ; $6eae: $43
    or e                                          ; $6eaf: $b3
    add c                                         ; $6eb0: $81
    dec b                                         ; $6eb1: $05
    rst $08                                       ; $6eb2: $cf
    jr z, jr_06c_6ed5                             ; $6eb3: $28 $20

    ccf                                           ; $6eb5: $3f
    cp h                                          ; $6eb6: $bc
    jp nz, $b0f6                                  ; $6eb7: $c2 $f6 $b0

    sbc l                                         ; $6eba: $9d
    ld c, a                                       ; $6ebb: $4f
    or h                                          ; $6ebc: $b4

jr_06c_6ebd:
    ld h, h                                       ; $6ebd: $64
    add d                                         ; $6ebe: $82
    and d                                         ; $6ebf: $a2
    dec b                                         ; $6ec0: $05
    ld b, [hl]                                    ; $6ec1: $46
    dec sp                                        ; $6ec2: $3b
    pop hl                                        ; $6ec3: $e1
    dec [hl]                                      ; $6ec4: $35
    ld h, a                                       ; $6ec5: $67
    nop                                           ; $6ec6: $00
    cp h                                          ; $6ec7: $bc
    jp $a0f6                                      ; $6ec8: $c3 $f6 $a0


    xor c                                         ; $6ecb: $a9
    ld h, e                                       ; $6ecc: $63
    rst $18                                       ; $6ecd: $df
    nop                                           ; $6ece: $00
    ret nc                                        ; $6ecf: $d0

    nop                                           ; $6ed0: $00

jr_06c_6ed1:
    db $d3                                        ; $6ed1: $d3
    ld [hl], c                                    ; $6ed2: $71
    ld [bc], a                                    ; $6ed3: $02
    or h                                          ; $6ed4: $b4

jr_06c_6ed5:
    ld h, d                                       ; $6ed5: $62
    call nc, $9ce1                                ; $6ed6: $d4 $e1 $9c
    or a                                          ; $6ed9: $b7
    ret nz                                        ; $6eda: $c0

    or d                                          ; $6edb: $b2
    ld a, [hl-]                                   ; $6edc: $3a
    inc d                                         ; $6edd: $14
    ccf                                           ; $6ede: $3f
    pop hl                                        ; $6edf: $e1
    db $ec                                        ; $6ee0: $ec
    ld h, b                                       ; $6ee1: $60
    ld b, e                                       ; $6ee2: $43
    xor d                                         ; $6ee3: $aa
    ld h, c                                       ; $6ee4: $61
    or d                                          ; $6ee5: $b2
    ld sp, hl                                     ; $6ee6: $f9
    jp $6226                                      ; $6ee7: $c3 $26 $62


    nop                                           ; $6eea: $00
    pop de                                        ; $6eeb: $d1
    sub b                                         ; $6eec: $90
    ld a, e                                       ; $6eed: $7b
    and d                                         ; $6eee: $a2
    sbc a                                         ; $6eef: $9f
    db $e3                                        ; $6ef0: $e3
    or b                                          ; $6ef1: $b0
    ld h, d                                       ; $6ef2: $62
    halt                                          ; $6ef3: $76
    ret nz                                        ; $6ef4: $c0

    add hl, sp                                    ; $6ef5: $39
    ld [hl-], a                                   ; $6ef6: $32
    add d                                         ; $6ef7: $82
    cpl                                           ; $6ef8: $2f
    add b                                         ; $6ef9: $80
    jr c, jr_06c_6ebd                             ; $6efa: $38 $c1

    scf                                           ; $6efc: $37
    cp l                                          ; $6efd: $bd
    ld [c], a                                     ; $6efe: $e2
    ld h, c                                       ; $6eff: $61
    ld hl, $20a1                                  ; $6f00: $21 $a1 $20
    nop                                           ; $6f03: $00
    jp nc, $c47b                                  ; $6f04: $d2 $7b $c4

    db $e3                                        ; $6f07: $e3
    db $e4                                        ; $6f08: $e4
    ld a, b                                       ; $6f09: $78
    db $f4                                        ; $6f0a: $f4
    ld h, d                                       ; $6f0b: $62
    xor e                                         ; $6f0c: $ab
    ld hl, $c035                                  ; $6f0d: $21 $35 $c0

jr_06c_6f10:
    inc a                                         ; $6f10: $3c
    dec [hl]                                      ; $6f11: $35
    dec [hl]                                      ; $6f12: $35
    ld a, [hl-]                                   ; $6f13: $3a
    ld l, a                                       ; $6f14: $6f
    add b                                         ; $6f15: $80
    ld [bc], a                                    ; $6f16: $02
    db $ec                                        ; $6f17: $ec
    ld h, c                                       ; $6f18: $61
    jr c, jr_06c_6f4b                             ; $6f19: $38 $30

    and b                                         ; $6f1b: $a0
    ld [hl], e                                    ; $6f1c: $73
    and l                                         ; $6f1d: $a5
    nop                                           ; $6f1e: $00
    push af                                       ; $6f1f: $f5
    ld a, e                                       ; $6f20: $7b
    jp nz, $2240                                  ; $6f21: $c2 $40 $22

    xor e                                         ; $6f24: $ab
    jr nz, jr_06c_6f30                            ; $6f25: $20 $09

    and c                                         ; $6f27: $a1
    cp e                                          ; $6f28: $bb
    ret nz                                        ; $6f29: $c0

    dec l                                         ; $6f2a: $2d
    ld h, b                                       ; $6f2b: $60
    ld a, $f5                                     ; $6f2c: $3e $f5
    add b                                         ; $6f2e: $80
    xor d                                         ; $6f2f: $aa

jr_06c_6f30:
    ld h, d                                       ; $6f30: $62
    or h                                          ; $6f31: $b4
    and l                                         ; $6f32: $a5
    ld [hl], d                                    ; $6f33: $72
    add e                                         ; $6f34: $83
    ld b, b                                       ; $6f35: $40
    nop                                           ; $6f36: $00
    db $f4                                        ; $6f37: $f4
    db $f4                                        ; $6f38: $f4
    ld h, e                                       ; $6f39: $63
    xor e                                         ; $6f3a: $ab
    ld [hl+], a                                   ; $6f3b: $22
    ld [hl], $c2                                  ; $6f3c: $36 $c2
    xor a                                         ; $6f3e: $af
    add c                                         ; $6f3f: $81
    ld a, c                                       ; $6f40: $79
    ld [c], a                                     ; $6f41: $e2
    ld [hl], $24                                  ; $6f42: $36 $24
    ld h, b                                       ; $6f44: $60
    ld [bc], a                                    ; $6f45: $02
    dec [hl]                                      ; $6f46: $35
    pop bc                                        ; $6f47: $c1
    and c                                         ; $6f48: $a1

jr_06c_6f49:
    dec h                                         ; $6f49: $25
    ld b, c                                       ; $6f4a: $41

jr_06c_6f4b:
    xor e                                         ; $6f4b: $ab

jr_06c_6f4c:
    ld h, d                                       ; $6f4c: $62
    nop                                           ; $6f4d: $00
    ldh a, [$71]                                  ; $6f4e: $f0 $71
    ld h, l                                       ; $6f50: $65
    ld c, c                                       ; $6f51: $49
    add e                                         ; $6f52: $83
    cp a                                          ; $6f53: $bf
    db $e4                                        ; $6f54: $e4
    ld d, $6b                                     ; $6f55: $16 $6b
    jr nz, jr_06c_6f95                            ; $6f57: $20 $3c

    dec [hl]                                      ; $6f59: $35
    db $e4                                        ; $6f5a: $e4
    nop                                           ; $6f5b: $00
    ld a, [hl-]                                   ; $6f5c: $3a
    xor b                                         ; $6f5d: $a8
    ld h, b                                       ; $6f5e: $60
    ld hl, $a020                                  ; $6f5f: $21 $20 $a0
    ld bc, $0d00                                  ; $6f62: $01 $00 $0d
    jr nz, @+$69                                  ; $6f65: $20 $67

    ld b, b                                       ; $6f67: $40
    sbc l                                         ; $6f68: $9d
    dec d                                         ; $6f69: $15
    db $eb                                        ; $6f6a: $eb
    ld [hl+], a                                   ; $6f6b: $22
    ld [hl], e                                    ; $6f6c: $73
    and e                                         ; $6f6d: $a3
    xor a                                         ; $6f6e: $af
    nop                                           ; $6f6f: $00
    db $ec                                        ; $6f70: $ec
    ld b, b                                       ; $6f71: $40
    or l                                          ; $6f72: $b5
    and c                                         ; $6f73: $a1
    rlca                                          ; $6f74: $07
    ld [hl], $b2                                  ; $6f75: $36 $b2
    add hl, sp                                    ; $6f77: $39
    ld h, l                                       ; $6f78: $65
    ld b, d                                       ; $6f79: $42
    dec h                                         ; $6f7a: $25
    ld b, b                                       ; $6f7b: $40
    rra                                           ; $6f7c: $1f
    dec h                                         ; $6f7d: $25
    sbc l                                         ; $6f7e: $9d
    add hl, de                                    ; $6f7f: $19
    ld [hl], e                                    ; $6f80: $73
    and l                                         ; $6f81: $a5
    ld b, d                                       ; $6f82: $42
    ld l, [hl]                                    ; $6f83: $6e
    nop                                           ; $6f84: $00
    add hl, sp                                    ; $6f85: $39
    ret nz                                        ; $6f86: $c0

    ld [c], a                                     ; $6f87: $e2
    ld h, $61                                     ; $6f88: $26 $61
    jr nc, jr_06c_6f10                            ; $6f8a: $30 $84

    xor e                                         ; $6f8c: $ab
    ld h, e                                       ; $6f8d: $63
    and b                                         ; $6f8e: $a0
    nop                                           ; $6f8f: $00
    pop de                                        ; $6f90: $d1
    ld hl, sp+$71                                 ; $6f91: $f8 $71
    xor c                                         ; $6f93: $a9
    xor h                                         ; $6f94: $ac

jr_06c_6f95:
    ld b, c                                       ; $6f95: $41
    push af                                       ; $6f96: $f5
    and b                                         ; $6f97: $a0
    sbc h                                         ; $6f98: $9c
    ld b, l                                       ; $6f99: $45
    ccf                                           ; $6f9a: $3f
    ld b, e                                       ; $6f9b: $43
    scf                                           ; $6f9c: $37
    rrca                                          ; $6f9d: $0f
    jr c, jr_06c_6fdb                             ; $6f9e: $38 $3b

    ld [hl], $45                                  ; $6fa0: $36 $45
    xor d                                         ; $6fa2: $aa
    and e                                         ; $6fa3: $a3

jr_06c_6fa4:
    ld h, $43                                     ; $6fa4: $26 $43
    jr c, jr_06c_6f49                             ; $6fa6: $38 $a1

    nop                                           ; $6fa8: $00
    rst $30                                       ; $6fa9: $f7
    ldh [$67], a                                  ; $6faa: $e0 $67
    ld [c], a                                     ; $6fac: $e2
    or b                                          ; $6fad: $b0
    add e                                         ; $6fae: $83
    db $e4                                        ; $6faf: $e4
    ld [bc], a                                    ; $6fb0: $02
    ld [hl-], a                                   ; $6fb1: $32
    and c                                         ; $6fb2: $a1
    ld l, b                                       ; $6fb3: $68
    ld [hl+], a                                   ; $6fb4: $22
    ld b, [hl]                                    ; $6fb5: $46
    ld b, l                                       ; $6fb6: $45
    ld b, c                                       ; $6fb7: $41
    add b                                         ; $6fb8: $80
    rst $28                                       ; $6fb9: $ef
    ld h, e                                       ; $6fba: $63
    cp e                                          ; $6fbb: $bb
    and a                                         ; $6fbc: $a7
    sbc l                                         ; $6fbd: $9d
    ld d, $ba                                     ; $6fbe: $16 $ba
    inc bc                                        ; $6fc0: $03
    jp hl                                         ; $6fc1: $e9


    ld [hl+], a                                   ; $6fc2: $22
    adc b                                         ; $6fc3: $88
    db $e3                                        ; $6fc4: $e3
    ld [hl], d                                    ; $6fc5: $72
    jp nz, $80a6                                  ; $6fc6: $c2 $a6 $80

    jr nc, jr_06c_6f4c                            ; $6fc9: $30 $81

    cp h                                          ; $6fcb: $bc
    jp nz, $fb00                                  ; $6fcc: $c2 $00 $fb

    ld h, a                                       ; $6fcf: $67
    inc hl                                        ; $6fd0: $23
    cp d                                          ; $6fd1: $ba
    inc bc                                        ; $6fd2: $03
    jr nc, @-$5d                                  ; $6fd3: $30 $a1

    ld l, d                                       ; $6fd5: $6a
    add d                                         ; $6fd6: $82
    ld b, l                                       ; $6fd7: $45
    xor a                                         ; $6fd8: $af
    ld [hl], $62                                  ; $6fd9: $36 $62

jr_06c_6fdb:
    and a                                         ; $6fdb: $a7
    ld h, [hl]                                    ; $6fdc: $66
    rst $28                                       ; $6fdd: $ef
    ld h, b                                       ; $6fde: $60
    sbc [hl]                                      ; $6fdf: $9e
    db $d3                                        ; $6fe0: $d3
    ld b, c                                       ; $6fe1: $41
    and b                                         ; $6fe2: $a0
    pop bc                                        ; $6fe3: $c1
    and b                                         ; $6fe4: $a0
    ld [hl+], a                                   ; $6fe5: $22
    dec de                                        ; $6fe6: $1b
    ld a, e                                       ; $6fe7: $7b
    push hl                                       ; $6fe8: $e5
    ld [hl], $03                                  ; $6fe9: $36 $03
    add sp, $61                                   ; $6feb: $e8 $61
    pop bc                                        ; $6fed: $c1
    ldh [$67], a                                  ; $6fee: $e0 $67
    and e                                         ; $6ff0: $a3
    ld h, c                                       ; $6ff1: $61
    ld l, b                                       ; $6ff2: $68
    cp a                                          ; $6ff3: $bf
    ldh [$c0], a                                  ; $6ff4: $e0 $c0
    ldh [rNR43], a                                ; $6ff6: $e0 $22
    rra                                           ; $6ff8: $1f
    ld [hl], c                                    ; $6ff9: $71
    and e                                         ; $6ffa: $a3
    db $e3                                        ; $6ffb: $e3
    db $e4                                        ; $6ffc: $e4
    ld h, l                                       ; $6ffd: $65
    ld hl, $7bf6                                  ; $6ffe: $21 $f6 $7b
    jr nz, jr_06c_6fa4                            ; $7001: $20 $a1

    or d                                          ; $7003: $b2
    pop bc                                        ; $7004: $c1
    pop hl                                        ; $7005: $e1
    dec [hl]                                      ; $7006: $35
    dec [hl]                                      ; $7007: $35
    ld l, h                                       ; $7008: $6c
    or a                                          ; $7009: $b7
    rlca                                          ; $700a: $07
    cp b                                          ; $700b: $b8
    ld b, d                                       ; $700c: $42
    sbc [hl]                                      ; $700d: $9e
    rst $20                                       ; $700e: $e7
    nop                                           ; $700f: $00
    xor d                                         ; $7010: $aa
    jr nz, jr_06c_7035                            ; $7011: $20 $22

    dec de                                        ; $7013: $1b
    or $a8                                        ; $7014: $f6 $a8
    and [hl]                                      ; $7016: $a6
    ld b, c                                       ; $7017: $41
    rst $38                                       ; $7018: $ff
    sbc [hl]                                      ; $7019: $9e
    or d                                          ; $701a: $b2
    ld [hl], $b9                                  ; $701b: $36 $b9
    cp d                                          ; $701d: $ba
    and e                                         ; $701e: $a3
    dec [hl]                                      ; $701f: $35
    ld l, h                                       ; $7020: $6c
    rrca                                          ; $7021: $0f
    ld l, a                                       ; $7022: $6f
    ld l, [hl]                                    ; $7023: $6e
    ld [hl], $45                                  ; $7024: $36 $45
    ld a, h                                       ; $7026: $7c
    and d                                         ; $7027: $a2
    nop                                           ; $7028: $00
    rst $38                                       ; $7029: $ff
    db $ec                                        ; $702a: $ec
    ld h, l                                       ; $702b: $65
    and [hl]                                      ; $702c: $a6
    ld b, d                                       ; $702d: $42
    ccf                                           ; $702e: $3f
    sbc [hl]                                      ; $702f: $9e
    ld b, l                                       ; $7030: $45
    ld [hl], $6e                                  ; $7031: $36 $6e
    ld l, a                                       ; $7033: $6f
    ld l, h                                       ; $7034: $6c

jr_06c_7035:
    pop bc                                        ; $7035: $c1
    ld [c], a                                     ; $7036: $e2
    rst $20                                       ; $7037: $e7
    inc bc                                        ; $7038: $03
    jr nc, jr_06c_703b                            ; $7039: $30 $00

jr_06c_703b:
    rst $38                                       ; $703b: $ff
    ld [c], a                                     ; $703c: $e2
    dec b                                         ; $703d: $05
    ld a, e                                       ; $703e: $7b
    ld [hl+], a                                   ; $703f: $22
    and h                                         ; $7040: $a4
    ld hl, $6f6e                                  ; $7041: $21 $6e $6f
    pop bc                                        ; $7044: $c1
    db $e3                                        ; $7045: $e3
    xor h                                         ; $7046: $ac
    ld [bc], a                                    ; $7047: $02
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    rst $38                                       ; $704a: $ff
    or $ab                                        ; $704b: $f6 $ab
    cp a                                          ; $704d: $bf
    ld [c], a                                     ; $704e: $e2
    add d                                         ; $704f: $82
    db $e3                                        ; $7050: $e3
    ld h, e                                       ; $7051: $63
    add b                                         ; $7052: $80
    nop                                           ; $7053: $00
    sub l                                         ; $7054: $95
    or $b7                                        ; $7055: $f6 $b7
    ld l, c                                       ; $7057: $69
    ld h, e                                       ; $7058: $63
    nop                                           ; $7059: $00
    jr nc, jr_06c_707c                            ; $705a: $30 $20

    rst $10                                       ; $705c: $d7
    ld [hl+], a                                   ; $705d: $22
    nop                                           ; $705e: $00
    sub l                                         ; $705f: $95
    db $ec                                        ; $7060: $ec
    sub l                                         ; $7061: $95
    rlca                                          ; $7062: $07
    ld h, e                                       ; $7063: $63
    ld [hl], $22                                  ; $7064: $36 $22
    xor h                                         ; $7066: $ac
    ld [bc], a                                    ; $7067: $02
    nop                                           ; $7068: $00
    ld [hl], h                                    ; $7069: $74
    inc c                                         ; $706a: $0c
    or $b9                                        ; $706b: $f6 $b9
    ld a, d                                       ; $706d: $7a
    inc bc                                        ; $706e: $03
    sub $d7                                       ; $706f: $d6 $d7
    pop af                                        ; $7071: $f1
    ld bc, $2200                                  ; $7072: $01 $00 $22
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    pop bc                                        ; $7078: $c1
    nop                                           ; $7079: $00
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff

jr_06c_707c:
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    dec c                                         ; $7086: $0d
    add b                                         ; $7087: $80
    cp $e0                                        ; $7088: $fe $e0
    nop                                           ; $708a: $00
    ld b, b                                       ; $708b: $40
    ret c                                         ; $708c: $d8

    push hl                                       ; $708d: $e5
    rst $30                                       ; $708e: $f7
    and $ff                                       ; $708f: $e6 $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $30                                       ; $7093: $f7
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    ld bc, $0900                                  ; $7097: $01 $00 $09
    inc bc                                        ; $709a: $03
    ld bc, $0a01                                  ; $709b: $01 $01 $0a
    inc bc                                        ; $709e: $03
    ld bc, $0702                                  ; $709f: $01 $02 $07
    ld b, $01                                     ; $70a2: $06 $01
    inc bc                                        ; $70a4: $03
    rlca                                          ; $70a5: $07
    rlca                                          ; $70a6: $07
    ld bc, $1104                                  ; $70a7: $01 $04 $11
    rlca                                          ; $70aa: $07
    ld bc, $1005                                  ; $70ab: $01 $05 $10
    ld [$0601], sp                                ; $70ae: $08 $01 $06
    ld de, $0108                                  ; $70b1: $11 $08 $01
    rlca                                          ; $70b4: $07
    ld de, $0109                                  ; $70b5: $11 $09 $01
    ld [$0b0e], sp                                ; $70b8: $08 $0e $0b
    ld bc, $0f09                                  ; $70bb: $01 $09 $0f
    inc c                                         ; $70be: $0c
    ld bc, $0f0a                                  ; $70bf: $01 $0a $0f
    dec c                                         ; $70c2: $0d
    ld bc, $100b                                  ; $70c3: $01 $0b $10
    dec c                                         ; $70c6: $0d
    ld bc, $0f0c                                  ; $70c7: $01 $0c $0f
    ld c, $01                                     ; $70ca: $0e $01
    dec c                                         ; $70cc: $0d
    db $10                                        ; $70cd: $10
    ld c, $01                                     ; $70ce: $0e $01
    ld c, $08                                     ; $70d0: $0e $08
    rrca                                          ; $70d2: $0f
    ld bc, $080f                                  ; $70d3: $01 $0f $08
    db $10                                        ; $70d6: $10
    ld bc, $0810                                  ; $70d7: $01 $10 $08
    ld de, $1101                                  ; $70da: $11 $01 $11
    ld c, $11                                     ; $70dd: $0e $11
    ld bc, $0d12                                  ; $70df: $01 $12 $0d
    ld [de], a                                    ; $70e2: $12
    ld bc, $0e13                                  ; $70e3: $01 $13 $0e
    ld [de], a                                    ; $70e6: $12
    ld bc, $0f14                                  ; $70e7: $01 $14 $0f
    ld [de], a                                    ; $70ea: $12
    ld bc, $0e15                                  ; $70eb: $01 $15 $0e
    inc de                                        ; $70ee: $13
    ld bc, $0b16                                  ; $70ef: $01 $16 $0b
    inc d                                         ; $70f2: $14
    ld bc, $1117                                  ; $70f3: $01 $17 $11
    inc d                                         ; $70f6: $14
    ld bc, $1218                                  ; $70f7: $01 $18 $12
    inc d                                         ; $70fa: $14
    ld bc, $0b19                                  ; $70fb: $01 $19 $0b
    dec d                                         ; $70fe: $15
    ld bc, $121a                                  ; $70ff: $01 $1a $12
    dec d                                         ; $7102: $15
    ld bc, $131b                                  ; $7103: $01 $1b $13
    dec d                                         ; $7106: $15
    ld bc, $0b1c                                  ; $7107: $01 $1c $0b
    ld d, $01                                     ; $710a: $16 $01
    dec e                                         ; $710c: $1d
    inc c                                         ; $710d: $0c
    ld d, $01                                     ; $710e: $16 $01
    ld e, $14                                     ; $7110: $1e $14
    ld d, $01                                     ; $7112: $16 $01
    rra                                           ; $7114: $1f
    dec bc                                        ; $7115: $0b
    rla                                           ; $7116: $17
    ld bc, $1420                                  ; $7117: $01 $20 $14
    rla                                           ; $711a: $17
    ld bc, $1421                                  ; $711b: $01 $21 $14
    jr jr_06c_7121                                ; $711e: $18 $01

    ld [hl+], a                                   ; $7120: $22

jr_06c_7121:
    db $10                                        ; $7121: $10
    add hl, de                                    ; $7122: $19
    ld bc, $1623                                  ; $7123: $01 $23 $16
    dec de                                        ; $7126: $1b
    ld bc, $1724                                  ; $7127: $01 $24 $17
    dec de                                        ; $712a: $1b
    ld bc, $1825                                  ; $712b: $01 $25 $18
    dec de                                        ; $712e: $1b
    ld bc, $1826                                  ; $712f: $01 $26 $18
    inc e                                         ; $7132: $1c
    ld bc, $1927                                  ; $7133: $01 $27 $19
    inc e                                         ; $7136: $1c
    ld bc, $1a28                                  ; $7137: $01 $28 $1a
    inc e                                         ; $713a: $1c
    ld bc, $1b29                                  ; $713b: $01 $29 $1b
    dec e                                         ; $713e: $1d
    ld bc, $1c2a                                  ; $713f: $01 $2a $1c
    dec e                                         ; $7142: $1d
    ld bc, $182b                                  ; $7143: $01 $2b $18
    ld e, $01                                     ; $7146: $1e $01
    inc l                                         ; $7148: $2c
    inc d                                         ; $7149: $14
    rra                                           ; $714a: $1f
    ld bc, $152d                                  ; $714b: $01 $2d $15
    rra                                           ; $714e: $1f
    ld bc, $162e                                  ; $714f: $01 $2e $16
    rra                                           ; $7152: $1f
    ld bc, $1a2f                                  ; $7153: $01 $2f $1a
    rra                                           ; $7156: $1f
    ld bc, $1f30                                  ; $7157: $01 $30 $1f
    rra                                           ; $715a: $1f
    ld bc, $1531                                  ; $715b: $01 $31 $15
    jr nz, jr_06c_7161                            ; $715e: $20 $01

    ld [hl-], a                                   ; $7160: $32

jr_06c_7161:
    ld d, $20                                     ; $7161: $16 $20
    ld bc, $1733                                  ; $7163: $01 $33 $17
    jr nz, jr_06c_7169                            ; $7166: $20 $01

    inc [hl]                                      ; $7168: $34

jr_06c_7169:
    ld a, [de]                                    ; $7169: $1a
    jr nz, jr_06c_716d                            ; $716a: $20 $01

    dec [hl]                                      ; $716c: $35

jr_06c_716d:
    dec de                                        ; $716d: $1b
    jr nz, @+$03                                  ; $716e: $20 $01

    ld [hl], $1c                                  ; $7170: $36 $1c
    jr nz, jr_06c_7175                            ; $7172: $20 $01

    scf                                           ; $7174: $37

jr_06c_7175:
    jr nz, jr_06c_7197                            ; $7175: $20 $20

    ld bc, $1638                                  ; $7177: $01 $38 $16
    ld hl, $3901                                  ; $717a: $21 $01 $39
    inc e                                         ; $717d: $1c
    ld hl, $3a01                                  ; $717e: $21 $01 $3a
    dec e                                         ; $7181: $1d
    ld hl, $3b01                                  ; $7182: $21 $01 $3b
    ld e, $21                                     ; $7185: $1e $21
    ld bc, $163c                                  ; $7187: $01 $3c $16
    ld [hl+], a                                   ; $718a: $22
    ld bc, $1c3d                                  ; $718b: $01 $3d $1c
    ld [hl+], a                                   ; $718e: $22
    ld bc, $1d3e                                  ; $718f: $01 $3e $1d
    ld [hl+], a                                   ; $7192: $22
    ld bc, $143f                                  ; $7193: $01 $3f $14
    inc hl                                        ; $7196: $23

jr_06c_7197:
    ld bc, $2140                                  ; $7197: $01 $40 $21
    inc hl                                        ; $719a: $23
    ld bc, $2241                                  ; $719b: $01 $41 $22
    inc hl                                        ; $719e: $23
    ld bc, $2242                                  ; $719f: $01 $42 $22
    inc h                                         ; $71a2: $24
    ld bc, $2343                                  ; $71a3: $01 $43 $23
    inc h                                         ; $71a6: $24
    ld bc, $1644                                  ; $71a7: $01 $44 $16
    dec h                                         ; $71aa: $25
    ld bc, $1945                                  ; $71ab: $01 $45 $19
    dec h                                         ; $71ae: $25
    ld bc, $1a46                                  ; $71af: $01 $46 $1a
    dec h                                         ; $71b2: $25
    ld bc, $1647                                  ; $71b3: $01 $47 $16
    ld h, $01                                     ; $71b6: $26 $01
    ld c, b                                       ; $71b8: $48
    rla                                           ; $71b9: $17
    ld h, $01                                     ; $71ba: $26 $01
    ld c, c                                       ; $71bc: $49
    jr jr_06c_71e6                                ; $71bd: $18 $27

    ld bc, $1a4a                                  ; $71bf: $01 $4a $1a
    daa                                           ; $71c2: $27
    ld bc, $294b                                  ; $71c3: $01 $4b $29
    daa                                           ; $71c6: $27
    ld bc, $1c4c                                  ; $71c7: $01 $4c $1c
    jr z, jr_06c_71cd                             ; $71ca: $28 $01

    ld c, l                                       ; $71cc: $4d

jr_06c_71cd:
    ld a, [hl+]                                   ; $71cd: $2a
    jr z, jr_06c_71d1                             ; $71ce: $28 $01

    ld c, [hl]                                    ; $71d0: $4e

jr_06c_71d1:
    add hl, de                                    ; $71d1: $19
    ld a, [hl+]                                   ; $71d2: $2a
    ld bc, $1a4f                                  ; $71d3: $01 $4f $1a
    ld a, [hl+]                                   ; $71d6: $2a
    ld bc, $1f50                                  ; $71d7: $01 $50 $1f
    ld a, [hl+]                                   ; $71da: $2a
    ld bc, $1f51                                  ; $71db: $01 $51 $1f
    dec hl                                        ; $71de: $2b
    ld bc, $2052                                  ; $71df: $01 $52 $20
    dec hl                                        ; $71e2: $2b
    ld bc, $2153                                  ; $71e3: $01 $53 $21

jr_06c_71e6:
    dec hl                                        ; $71e6: $2b
    ld bc, $2f54                                  ; $71e7: $01 $54 $2f
    dec hl                                        ; $71ea: $2b
    ld bc, $3055                                  ; $71eb: $01 $55 $30
    dec hl                                        ; $71ee: $2b
    ld bc, $2056                                  ; $71ef: $01 $56 $20
    inc l                                         ; $71f2: $2c
    ld bc, $2157                                  ; $71f3: $01 $57 $21
    inc l                                         ; $71f6: $2c
    ld bc, $2158                                  ; $71f7: $01 $58 $21
    dec l                                         ; $71fa: $2d
    ld bc, $2259                                  ; $71fb: $01 $59 $22
    dec l                                         ; $71fe: $2d
    ld bc, $275a                                  ; $71ff: $01 $5a $27
    dec l                                         ; $7202: $2d
    ld bc, $275b                                  ; $7203: $01 $5b $27
    ld l, $01                                     ; $7206: $2e $01
    ld e, h                                       ; $7208: $5c
    jr z, jr_06c_7239                             ; $7209: $28 $2e

    ld bc, $275d                                  ; $720b: $01 $5d $27
    cpl                                           ; $720e: $2f
    ld bc, $285e                                  ; $720f: $01 $5e $28
    cpl                                           ; $7212: $2f
    ld bc, $295f                                  ; $7213: $01 $5f $29
    cpl                                           ; $7216: $2f
    ld bc, $2960                                  ; $7217: $01 $60 $29
    jr nc, jr_06c_721d                            ; $721a: $30 $01

    ld h, c                                       ; $721c: $61

jr_06c_721d:
    dec l                                         ; $721d: $2d
    jr nc, jr_06c_7221                            ; $721e: $30 $01

    ld h, d                                       ; $7220: $62

jr_06c_7221:
    ld l, $30                                     ; $7221: $2e $30
    ld bc, $3263                                  ; $7223: $01 $63 $32
    jr nc, jr_06c_7229                            ; $7226: $30 $01

    ld h, h                                       ; $7228: $64

jr_06c_7229:
    inc hl                                        ; $7229: $23
    ld sp, $6501                                  ; $722a: $31 $01 $65
    ld l, $31                                     ; $722d: $2e $31
    ld bc, $3166                                  ; $722f: $01 $66 $31
    ld sp, $6701                                  ; $7232: $31 $01 $67
    ld [hl-], a                                   ; $7235: $32
    ld sp, $6801                                  ; $7236: $31 $01 $68

jr_06c_7239:
    inc sp                                        ; $7239: $33
    ld sp, $6901                                  ; $723a: $31 $01 $69
    inc h                                         ; $723d: $24
    ld [hl-], a                                   ; $723e: $32
    ld bc, $2e6a                                  ; $723f: $01 $6a $2e
    ld [hl-], a                                   ; $7242: $32
    ld bc, $2f6b                                  ; $7243: $01 $6b $2f
    ld [hl-], a                                   ; $7246: $32
    ld bc, $306c                                  ; $7247: $01 $6c $30
    ld [hl-], a                                   ; $724a: $32
    ld bc, $316d                                  ; $724b: $01 $6d $31
    ld [hl-], a                                   ; $724e: $32
    ld bc, $326e                                  ; $724f: $01 $6e $32
    ld [hl-], a                                   ; $7252: $32
    ld bc, $2f6f                                  ; $7253: $01 $6f $2f
    inc sp                                        ; $7256: $33
    ld bc, $3070                                  ; $7257: $01 $70 $30
    inc sp                                        ; $725a: $33
    ld bc, $2e71                                  ; $725b: $01 $71 $2e
    jr c, jr_06c_7261                             ; $725e: $38 $01

    ld [hl], d                                    ; $7260: $72

jr_06c_7261:
    ld l, $39                                     ; $7261: $2e $39
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    ld l, [hl]                                    ; $7266: $6e
    ld [hl], d                                    ; $7267: $72
    or $75                                        ; $7268: $f6 $75
    ld a, a                                       ; $726a: $7f
    ld a, d                                       ; $726b: $7a
    sbc [hl]                                      ; $726c: $9e
    ld a, d                                       ; $726d: $7a
    ccf                                           ; $726e: $3f
    ld c, $0e                                     ; $726f: $0e $0e
    dec c                                         ; $7271: $0d
    dec c                                         ; $7272: $0d
    dec c                                         ; $7273: $0d
    ld c, $ff                                     ; $7274: $0e $ff
    db $e3                                        ; $7276: $e3
    or $ff                                        ; $7277: $f6 $ff
    ret nz                                        ; $7279: $c0

    db $ec                                        ; $727a: $ec
    rst $28                                       ; $727b: $ef
    db $dd                                        ; $727c: $dd
    pop hl                                        ; $727d: $e1
    rst $10                                       ; $727e: $d7
    db $e3                                        ; $727f: $e3
    or $ff                                        ; $7280: $f6 $ff
    or $f6                                        ; $7282: $f6 $f6
    sbc c                                         ; $7284: $99
    ld [$0e0e], a                                 ; $7285: $ea $0e $0e
    ld bc, $ff4d                                  ; $7288: $01 $4d $ff
    pop hl                                        ; $728b: $e1
    add l                                         ; $728c: $85
    rst $38                                       ; $728d: $ff
    ld [c], a                                     ; $728e: $e2
    push hl                                       ; $728f: $e5
    sbc c                                         ; $7290: $99
    db $ec                                        ; $7291: $ec
    ret nz                                        ; $7292: $c0

    db $e3                                        ; $7293: $e3
    add l                                         ; $7294: $85
    rst $38                                       ; $7295: $ff
    and e                                         ; $7296: $a3
    ld a, [c]                                     ; $7297: $f2
    ld d, $87                                     ; $7298: $16 $87
    db $e3                                        ; $729a: $e3
    ld c, h                                       ; $729b: $4c
    dec l                                         ; $729c: $2d
    cp a                                          ; $729d: $bf
    ldh [$0d], a                                  ; $729e: $e0 $0d
    ld a, l                                       ; $72a0: $7d
    ldh [rPCM12], a                               ; $72a1: $e0 $76
    db $e4                                        ; $72a3: $e4
    nop                                           ; $72a4: $00

jr_06c_72a5:
    rst $38                                       ; $72a5: $ff
    inc c                                         ; $72a6: $0c
    inc d                                         ; $72a7: $14
    db $e4                                        ; $72a8: $e4
    ld c, [hl]                                    ; $72a9: $4e
    pop hl                                        ; $72aa: $e1
    dec c                                         ; $72ab: $0d
    ld c, l                                       ; $72ac: $4d
    ret nz                                        ; $72ad: $c0

    pop hl                                        ; $72ae: $e1
    db $e4                                        ; $72af: $e4
    jp $e1bc                                      ; $72b0: $c3 $bc $e1


    ld a, e                                       ; $72b3: $7b
    rst $38                                       ; $72b4: $ff
    nop                                           ; $72b5: $00
    sbc c                                         ; $72b6: $99
    rst $00                                       ; $72b7: $c7
    ret nz                                        ; $72b8: $c0

    pop af                                        ; $72b9: $f1
    ld [hl-], a                                   ; $72ba: $32
    ld [c], a                                     ; $72bb: $e2
    nop                                           ; $72bc: $00
    rst $38                                       ; $72bd: $ff
    ld [hl], b                                    ; $72be: $70
    add $80                                       ; $72bf: $c6 $80
    rst $20                                       ; $72c1: $e7
    jr nc, jr_06c_72a5                            ; $72c2: $30 $e1

    or d                                          ; $72c4: $b2
    pop bc                                        ; $72c5: $c1
    ret z                                         ; $72c6: $c8

    add l                                         ; $72c7: $85
    rst $38                                       ; $72c8: $ff
    sbc c                                         ; $72c9: $99
    add $cb                                       ; $72ca: $c6 $cb
    ld [c], a                                     ; $72cc: $e2
    ld l, l                                       ; $72cd: $6d
    nop                                           ; $72ce: $00
    pop hl                                        ; $72cf: $e1
    cp l                                          ; $72d0: $bd
    ret nz                                        ; $72d1: $c0

    ld c, l                                       ; $72d2: $4d
    ld c, l                                       ; $72d3: $4d
    ldh [$f8], a                                  ; $72d4: $e0 $f8

jr_06c_72d6:
    ld [c], a                                     ; $72d6: $e2
    ld l, a                                       ; $72d7: $6f
    ret nz                                        ; $72d8: $c0

    nop                                           ; $72d9: $00
    rst $38                                       ; $72da: $ff
    inc d                                         ; $72db: $14
    jp $c286                                      ; $72dc: $c3 $86 $c2


    ld l, l                                       ; $72df: $6d
    ld c, h                                       ; $72e0: $4c
    inc l                                         ; $72e1: $2c
    ld h, [hl]                                    ; $72e2: $66
    call nz, Call_06c_4de1                        ; $72e3: $c4 $e1 $4d
    ld l, l                                       ; $72e6: $6d
    or c                                          ; $72e7: $b1
    ret nz                                        ; $72e8: $c0

    or a                                          ; $72e9: $b7
    pop hl                                        ; $72ea: $e1
    ld c, $0e                                     ; $72eb: $0e $0e
    or $e0                                        ; $72ed: $f6 $e0
    adc b                                         ; $72ef: $88
    nop                                           ; $72f0: $00
    rst $38                                       ; $72f1: $ff
    inc d                                         ; $72f2: $14
    call nz, $c0c2                                ; $72f3: $c4 $c2 $c0
    inc l                                         ; $72f6: $2c
    ld [hl], a                                    ; $72f7: $77
    push hl                                       ; $72f8: $e5
    cp a                                          ; $72f9: $bf
    pop hl                                        ; $72fa: $e1
    or l                                          ; $72fb: $b5
    pop bc                                        ; $72fc: $c1
    ld l, l                                       ; $72fd: $6d
    db $fc                                        ; $72fe: $fc
    db $ec                                        ; $72ff: $ec
    cp d                                          ; $7300: $ba
    sbc c                                         ; $7301: $99
    xor e                                         ; $7302: $ab
    ld c, l                                       ; $7303: $4d
    dec c                                         ; $7304: $0d
    inc c                                         ; $7305: $0c
    dec c                                         ; $7306: $0d
    dec c                                         ; $7307: $0d
    ld l, e                                       ; $7308: $6b
    cp e                                          ; $7309: $bb
    dec bc                                        ; $730a: $0b
    dec hl                                        ; $730b: $2b
    ld bc, $0be2                                  ; $730c: $01 $e2 $0b
    dec bc                                        ; $730f: $0b
    dec bc                                        ; $7310: $0b
    inc a                                         ; $7311: $3c
    ldh [$6d], a                                  ; $7312: $e0 $6d
    jr nc, jr_06c_72d6                            ; $7314: $30 $c0

    ldh [$66], a                                  ; $7316: $e0 $66
    jp nz, $ff00                                  ; $7318: $c2 $00 $ff

    ret nz                                        ; $731b: $c0

    db $e4                                        ; $731c: $e4
    ld c, e                                       ; $731d: $4b
    ld c, e                                       ; $731e: $4b
    cp [hl]                                       ; $731f: $be
    ldh [$bd], a                                  ; $7320: $e0 $bd
    ldh [$e0], a                                  ; $7322: $e0 $e0
    ret nz                                        ; $7324: $c0

    ldh [$bf], a                                  ; $7325: $e0 $bf
    pop hl                                        ; $7327: $e1
    ld [hl-], a                                   ; $7328: $32
    push bc                                       ; $7329: $c5
    nop                                           ; $732a: $00
    rst $38                                       ; $732b: $ff
    add [hl]                                      ; $732c: $86
    and c                                         ; $732d: $a1
    inc c                                         ; $732e: $0c
    ld l, h                                       ; $732f: $6c
    dec c                                         ; $7330: $0d
    ld a, a                                       ; $7331: $7f
    dec c                                         ; $7332: $0d
    dec l                                         ; $7333: $2d

jr_06c_7334:
    dec c                                         ; $7334: $0d
    ld l, e                                       ; $7335: $6b
    ld a, [bc]                                    ; $7336: $0a
    dec bc                                        ; $7337: $0b
    dec bc                                        ; $7338: $0b
    ret nz                                        ; $7339: $c0

    ld [c], a                                     ; $733a: $e2
    ldh a, [$b9]                                  ; $733b: $f0 $b9
    jp $e6c0                                      ; $733d: $c3 $c0 $e6


    nop                                           ; $7340: $00
    cp e                                          ; $7341: $bb
    adc h                                         ; $7342: $8c
    and c                                         ; $7343: $a1
    dec l                                         ; $7344: $2d
    inc c                                         ; $7345: $0c
    inc c                                         ; $7346: $0c
    inc c                                         ; $7347: $0c
    cp l                                          ; $7348: $bd
    inc l                                         ; $7349: $2c
    dec a                                         ; $734a: $3d
    ldh [rOCPD], a                                ; $734b: $e0 $6b
    dec l                                         ; $734d: $2d
    dec c                                         ; $734e: $0d
    dec hl                                        ; $734f: $2b
    jr c, jr_06c_7334                             ; $7350: $38 $e2

    dec bc                                        ; $7352: $0b
    or b                                          ; $7353: $b0
    ld [hl], a                                    ; $7354: $77
    ret nz                                        ; $7355: $c0

    ld [hl-], a                                   ; $7356: $32
    jp nz, $ff00                                  ; $7357: $c2 $00 $ff

    ld c, h                                       ; $735a: $4c
    and d                                         ; $735b: $a2
    ld l, l                                       ; $735c: $6d
    dec l                                         ; $735d: $2d
    cp l                                          ; $735e: $bd
    pop bc                                        ; $735f: $c1
    dec bc                                        ; $7360: $0b
    rlca                                          ; $7361: $07
    dec l                                         ; $7362: $2d
    dec l                                         ; $7363: $2d
    dec l                                         ; $7364: $2d
    rst $38                                       ; $7365: $ff
    ret nz                                        ; $7366: $c0

    cp a                                          ; $7367: $bf
    ld [c], a                                     ; $7368: $e2
    ld a, [$dec1]                                 ; $7369: $fa $c1 $de
    adc c                                         ; $736c: $89
    nop                                           ; $736d: $00
    or a                                          ; $736e: $b7
    ld [hl-], a                                   ; $736f: $32
    add d                                         ; $7370: $82
    add e                                         ; $7371: $83
    dec l                                         ; $7372: $2d
    inc a                                         ; $7373: $3c
    ld [c], a                                     ; $7374: $e2
    adc e                                         ; $7375: $8b
    ldh [$0b], a                                  ; $7376: $e0 $0b
    ld a, [bc]                                    ; $7378: $0a
    or [hl]                                       ; $7379: $b6
    ret nz                                        ; $737a: $c0

    ld a, [$f8c3]                                 ; $737b: $fa $c3 $f8
    ld b, d                                       ; $737e: $42
    and $00                                       ; $737f: $e6 $00
    db $db                                        ; $7381: $db
    ld c, e                                       ; $7382: $4b
    add c                                         ; $7383: $81
    ld l, l                                       ; $7384: $6d
    dec c                                         ; $7385: $0d
    dec bc                                        ; $7386: $0b
    ld l, h                                       ; $7387: $6c
    inc c                                         ; $7388: $0c
    jr z, @+$03                                   ; $7389: $28 $01

    ldh [$b7], a                                  ; $738b: $e0 $b7
    ret nz                                        ; $738d: $c0

    ld a, [hl]                                    ; $738e: $7e
    ret nz                                        ; $738f: $c0

    dec hl                                        ; $7390: $2b
    cp d                                          ; $7391: $ba
    pop bc                                        ; $7392: $c1
    dec bc                                        ; $7393: $0b
    ret nz                                        ; $7394: $c0

    db $e4                                        ; $7395: $e4
    or c                                          ; $7396: $b1
    add d                                         ; $7397: $82
    ld c, h                                       ; $7398: $4c
    nop                                           ; $7399: $00
    sbc d                                         ; $739a: $9a
    ret nc                                        ; $739b: $d0

    and c                                         ; $739c: $a1
    ld c, l                                       ; $739d: $4d
    dec l                                         ; $739e: $2d
    ret nz                                        ; $739f: $c0

    pop hl                                        ; $73a0: $e1
    cp a                                          ; $73a1: $bf
    pop hl                                        ; $73a2: $e1
    ld l, e                                       ; $73a3: $6b
    cp a                                          ; $73a4: $bf
    ld [c], a                                     ; $73a5: $e2
    ld b, b                                       ; $73a6: $40
    ld [hl-], a                                   ; $73a7: $32
    pop hl                                        ; $73a8: $e1
    cp l                                          ; $73a9: $bd
    jp $9f00                                      ; $73aa: $c3 $00 $9f


    sub b                                         ; $73ad: $90
    and d                                         ; $73ae: $a2
    ld a, $e1                                     ; $73af: $3e $e1
    add h                                         ; $73b1: $84
    pop bc                                        ; $73b2: $c1
    dec bc                                        ; $73b3: $0b
    ld a, c                                       ; $73b4: $79
    pop bc                                        ; $73b5: $c1
    jr nz, @-$0b                                  ; $73b6: $20 $f3

    and d                                         ; $73b8: $a2
    cp l                                          ; $73b9: $bd
    call nz, $de00                                ; $73ba: $c4 $00 $de
    add d                                         ; $73bd: $82
    ld h, c                                       ; $73be: $61
    add h                                         ; $73bf: $84
    ld h, c                                       ; $73c0: $61
    dec bc                                        ; $73c1: $0b
    ld a, a                                       ; $73c2: $7f
    pop hl                                        ; $73c3: $e1
    add a                                         ; $73c4: $87
    pop hl                                        ; $73c5: $e1
    nop                                           ; $73c6: $00
    ld b, d                                       ; $73c7: $42
    ld [c], a                                     ; $73c8: $e2
    cp l                                          ; $73c9: $bd
    jp $8478                                      ; $73ca: $c3 $78 $84


    nop                                           ; $73cd: $00
    ld a, l                                       ; $73ce: $7d
    ld e, b                                       ; $73cf: $58
    ld [c], a                                     ; $73d0: $e2
    ret nz                                        ; $73d1: $c0

    ld [c], a                                     ; $73d2: $e2
    ld a, [hl]                                    ; $73d3: $7e
    and b                                         ; $73d4: $a0
    cp $c1                                        ; $73d5: $fe $c1
    ret nz                                        ; $73d7: $c0

    cp h                                          ; $73d8: $bc
    db $e3                                        ; $73d9: $e3
    db $eb                                        ; $73da: $eb
    ld h, c                                       ; $73db: $61
    ld h, a                                       ; $73dc: $67
    ld [hl], e                                    ; $73dd: $73
    inc d                                         ; $73de: $14
    ld h, a                                       ; $73df: $67
    ld a, l                                       ; $73e0: $7d
    ld h, d                                       ; $73e1: $62
    ld a, [hl-]                                   ; $73e2: $3a
    and d                                         ; $73e3: $a2
    inc l                                         ; $73e4: $2c
    ld c, h                                       ; $73e5: $4c
    add b                                         ; $73e6: $80
    adc c                                         ; $73e7: $89
    db $e3                                        ; $73e8: $e3
    inc [hl]                                      ; $73e9: $34
    and b                                         ; $73ea: $a0
    dec a                                         ; $73eb: $3d
    pop hl                                        ; $73ec: $e1
    ret nz                                        ; $73ed: $c0

    db $e4                                        ; $73ee: $e4
    nop                                           ; $73ef: $00
    rst $38                                       ; $73f0: $ff
    add c                                         ; $73f1: $81
    ld h, b                                       ; $73f2: $60
    add hl, sp                                    ; $73f3: $39
    ld h, b                                       ; $73f4: $60
    dec c                                         ; $73f5: $0d
    add l                                         ; $73f6: $85
    ld l, l                                       ; $73f7: $6d
    ret nz                                        ; $73f8: $c0

    db $e4                                        ; $73f9: $e4
    dec c                                         ; $73fa: $0d
    cp h                                          ; $73fb: $bc
    and c                                         ; $73fc: $a1
    ld hl, sp-$1f                                 ; $73fd: $f8 $e1
    add b                                         ; $73ff: $80
    db $e4                                        ; $7400: $e4
    nop                                           ; $7401: $00
    rst $38                                       ; $7402: $ff
    ld c, l                                       ; $7403: $4d
    add $07                                       ; $7404: $c6 $07
    ret nz                                        ; $7406: $c0

    dec l                                         ; $7407: $2d
    ld l, l                                       ; $7408: $6d
    pop bc                                        ; $7409: $c1
    ret nz                                        ; $740a: $c0

    add e                                         ; $740b: $83
    pop hl                                        ; $740c: $e1
    cp h                                          ; $740d: $bc
    add e                                         ; $740e: $83
    dec hl                                        ; $740f: $2b
    dec bc                                        ; $7410: $0b
    ld b, c                                       ; $7411: $41
    ld l, e                                       ; $7412: $6b
    jp hl                                         ; $7413: $e9


    ld h, c                                       ; $7414: $61
    di                                            ; $7415: $f3
    ld b, l                                       ; $7416: $45
    nop                                           ; $7417: $00
    sbc b                                         ; $7418: $98
    cp l                                          ; $7419: $bd
    ld b, c                                       ; $741a: $41
    ld b, c                                       ; $741b: $41
    and b                                         ; $741c: $a0
    inc c                                         ; $741d: $0c
    pop bc                                        ; $741e: $c1
    pop hl                                        ; $741f: $e1
    ld [bc], a                                    ; $7420: $02
    add e                                         ; $7421: $83
    pop hl                                        ; $7422: $e1
    dec bc                                        ; $7423: $0b
    dec a                                         ; $7424: $3d
    and b                                         ; $7425: $a0
    ld a, c                                       ; $7426: $79
    db $e3                                        ; $7427: $e3
    pop bc                                        ; $7428: $c1
    ldh [rNR52], a                                ; $7429: $e0 $26
    ld b, d                                       ; $742b: $42
    nop                                           ; $742c: $00
    db $fc                                        ; $742d: $fc
    ld b, b                                       ; $742e: $40
    and d                                         ; $742f: $a2
    ld b, a                                       ; $7430: $47
    ld l, l                                       ; $7431: $6d
    ld l, l                                       ; $7432: $6d
    dec l                                         ; $7433: $2d
    add l                                         ; $7434: $85
    ld [c], a                                     ; $7435: $e2
    pop bc                                        ; $7436: $c1
    pop hl                                        ; $7437: $e1
    jp nz, Jump_06c_4ba3                          ; $7438: $c2 $a3 $4b

    add d                                         ; $743b: $82
    pop hl                                        ; $743c: $e1
    ld [$61e3], sp                                ; $743d: $08 $e3 $61
    nop                                           ; $7440: $00
    ld a, a                                       ; $7441: $7f
    jp nz, Jump_06c_4d22                          ; $7442: $c2 $22 $4d

    cp a                                          ; $7445: $bf

jr_06c_7446:
    pop hl                                        ; $7446: $e1
    ret                                           ; $7447: $c9


    and c                                         ; $7448: $a1
    add e                                         ; $7449: $83
    and b                                         ; $744a: $a0
    add b                                         ; $744b: $80
    and c                                         ; $744c: $a1
    pop bc                                        ; $744d: $c1
    ld c, e                                       ; $744e: $4b
    ld l, [hl]                                    ; $744f: $6e
    ld b, c                                       ; $7450: $41
    add c                                         ; $7451: $81
    push bc                                       ; $7452: $c5
    nop                                           ; $7453: $00
    cp h                                          ; $7454: $bc
    cp e                                          ; $7455: $bb
    db $e3                                        ; $7456: $e3
    ld a, h                                       ; $7457: $7c
    db $e3                                        ; $7458: $e3
    dec l                                         ; $7459: $2d
    dec l                                         ; $745a: $2d
    nop                                           ; $745b: $00
    cp [hl]                                       ; $745c: $be
    add b                                         ; $745d: $80
    ld bc, $c0e0                                  ; $745e: $01 $e0 $c0
    ld [c], a                                     ; $7461: $e2
    or $31                                        ; $7462: $f6 $31
    nop                                           ; $7464: $00
    ld l, a                                       ; $7465: $6f
    adc $43                                       ; $7466: $ce $43
    ld a, h                                       ; $7468: $7c
    db $e3                                        ; $7469: $e3
    inc b                                         ; $746a: $04
    and h                                         ; $746b: $a4
    inc bc                                        ; $746c: $03
    ld l, e                                       ; $746d: $6b
    ld c, e                                       ; $746e: $4b
    inc bc                                        ; $746f: $03
    jp nz, Jump_06c_7f00                          ; $7470: $c2 $00 $7f

    ld a, e                                       ; $7473: $7b
    add [hl]                                      ; $7474: $86
    halt                                          ; $7475: $76
    ld h, e                                       ; $7476: $63
    call nz, $c184                                ; $7477: $c4 $84 $c1
    ldh [rP1], a                                  ; $747a: $e0 $00
    add e                                         ; $747c: $83
    push bc                                       ; $747d: $c5
    nop                                           ; $747e: $00
    rst $18                                       ; $747f: $df
    rst $38                                       ; $7480: $ff
    and d                                         ; $7481: $a2
    or a                                          ; $7482: $b7
    ld h, e                                       ; $7483: $63
    ld [bc], a                                    ; $7484: $02
    ldh [$84], a                                  ; $7485: $e0 $84
    add c                                         ; $7487: $81
    pop bc                                        ; $7488: $c1
    db $e4                                        ; $7489: $e4
    add l                                         ; $748a: $85
    rst $38                                       ; $748b: $ff
    nop                                           ; $748c: $00
    ld a, e                                       ; $748d: $7b
    and a                                         ; $748e: $a7
    or [hl]                                       ; $748f: $b6
    ld b, h                                       ; $7490: $44
    push bc                                       ; $7491: $c5
    jp $803c                                      ; $7492: $c3 $3c $80


    add e                                         ; $7495: $83
    add h                                         ; $7496: $84
    nop                                           ; $7497: $00
    sbc $52                                       ; $7498: $de $52
    rlca                                          ; $749a: $07
    push af                                       ; $749b: $f5
    ld h, d                                       ; $749c: $62
    ret nz                                        ; $749d: $c0

    dec b                                         ; $749e: $05
    add d                                         ; $749f: $82
    ld bc, $4381                                  ; $74a0: $01 $81 $43
    add e                                         ; $74a3: $83
    jr z, jr_06c_74a8                             ; $74a4: $28 $02

    ld a, e                                       ; $74a6: $7b
    rst $38                                       ; $74a7: $ff

jr_06c_74a8:
    ld b, $44                                     ; $74a8: $06 $44
    dec c                                         ; $74aa: $0d
    ld c, l                                       ; $74ab: $4d
    ld bc, $456d                                  ; $74ac: $01 $6d $45
    jp $a245                                      ; $74af: $c3 $45 $a2


    nop                                           ; $74b2: $00
    ld a, a                                       ; $74b3: $7f
    ld a, e                                       ; $74b4: $7b
    dec hl                                        ; $74b5: $2b
    ld a, [hl-]                                   ; $74b6: $3a
    jr nz, jr_06c_74ff                            ; $74b7: $20 $46

    jp nz, $67c3                                  ; $74b9: $c2 $c3 $67

    inc b                                         ; $74bc: $04
    add l                                         ; $74bd: $85
    rst $38                                       ; $74be: $ff
    ld a, e                                       ; $74bf: $7b
    ld c, c                                       ; $74c0: $49
    dec c                                         ; $74c1: $0d
    ld b, d                                       ; $74c2: $42
    jr nz, jr_06c_7446                            ; $74c3: $20 $81

    db $e4                                        ; $74c5: $e4
    dec b                                         ; $74c6: $05
    and h                                         ; $74c7: $a4
    nop                                           ; $74c8: $00
    ccf                                           ; $74c9: $3f
    ld a, e                                       ; $74ca: $7b
    ld c, c                                       ; $74cb: $49
    nop                                           ; $74cc: $00
    add d                                         ; $74cd: $82
    ld [bc], a                                    ; $74ce: $02
    ret nz                                        ; $74cf: $c0

    push hl                                       ; $74d0: $e5
    add d                                         ; $74d1: $82
    jp Jump_000_3f00                              ; $74d2: $c3 $00 $3f


    ld a, e                                       ; $74d5: $7b
    xor c                                         ; $74d6: $a9
    jp $c621                                      ; $74d7: $c3 $21 $c6


    ld b, b                                       ; $74da: $40
    add d                                         ; $74db: $82
    ret nz                                        ; $74dc: $c0

    nop                                           ; $74dd: $00
    ld [hl], l                                    ; $74de: $75
    pop hl                                        ; $74df: $e1
    jp nz, Jump_000_0026                          ; $74e0: $c2 $26 $00

    rst $38                                       ; $74e3: $ff
    ld a, e                                       ; $74e4: $7b
    and e                                         ; $74e5: $a3
    ld c, c                                       ; $74e6: $49
    add d                                         ; $74e7: $82
    ret nz                                        ; $74e8: $c0

    pop hl                                        ; $74e9: $e1
    adc b                                         ; $74ea: $88
    ld h, c                                       ; $74eb: $61
    dec l                                         ; $74ec: $2d
    and h                                         ; $74ed: $a4
    nop                                           ; $74ee: $00
    add l                                         ; $74ef: $85
    rst $38                                       ; $74f0: $ff
    ld a, e                                       ; $74f1: $7b
    inc h                                         ; $74f2: $24
    ld a, d                                       ; $74f3: $7a
    ld [hl+], a                                   ; $74f4: $22
    ld b, a                                       ; $74f5: $47
    ld b, d                                       ; $74f6: $42
    ld b, [hl]                                    ; $74f7: $46
    and b                                         ; $74f8: $a0
    ret nz                                        ; $74f9: $c0

    db $e3                                        ; $74fa: $e3
    call nz, Call_000_0047                        ; $74fb: $c4 $47 $00
    rst $38                                       ; $74fe: $ff

jr_06c_74ff:
    nop                                           ; $74ff: $00
    ld d, [hl]                                    ; $7500: $56
    add e                                         ; $7501: $83
    ret                                           ; $7502: $c9


    ld h, d                                       ; $7503: $62
    nop                                           ; $7504: $00
    ld b, c                                       ; $7505: $41
    cp a                                          ; $7506: $bf
    nop                                           ; $7507: $00
    ld b, $86                                     ; $7508: $06 $86
    nop                                           ; $750a: $00
    rst $38                                       ; $750b: $ff
    ld b, c                                       ; $750c: $41
    jp nz, $a303                                  ; $750d: $c2 $03 $a3

    ld bc, $c16b                                  ; $7510: $01 $6b $c1
    ld [c], a                                     ; $7513: $e2
    ld a, [hl]                                    ; $7514: $7e
    inc bc                                        ; $7515: $03
    add l                                         ; $7516: $85
    ld [hl], b                                    ; $7517: $70
    nop                                           ; $7518: $00
    or h                                          ; $7519: $b4
    ld l, $a1                                     ; $751a: $2e $a1
    rst $38                                       ; $751c: $ff
    call nz, Call_06c_4545                        ; $751d: $c4 $45 $45
    nop                                           ; $7520: $00
    add $43                                       ; $7521: $c6 $43
    nop                                           ; $7523: $00
    rst $38                                       ; $7524: $ff
    rst $00                                       ; $7525: $c7
    ld b, c                                       ; $7526: $41
    sub $c3                                       ; $7527: $d6 $c3
    cp e                                          ; $7529: $bb
    nop                                           ; $752a: $00
    pop bc                                        ; $752b: $c1
    push hl                                       ; $752c: $e5
    ldh [$80], a                                  ; $752d: $e0 $80
    add $43                                       ; $752f: $c6 $43
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    rst $38                                       ; $7533: $ff
    ld b, h                                       ; $7534: $44
    ld b, c                                       ; $7535: $41
    ld e, e                                       ; $7536: $5b
    and d                                         ; $7537: $a2
    jp $c0e5                                      ; $7538: $c3 $e5 $c0


    db $e4                                        ; $753b: $e4
    dec b                                         ; $753c: $05
    ld h, e                                       ; $753d: $63
    nop                                           ; $753e: $00
    rst $38                                       ; $753f: $ff
    ret z                                         ; $7540: $c8

    and l                                         ; $7541: $a5
    nop                                           ; $7542: $00
    ld b, a                                       ; $7543: $47
    add h                                         ; $7544: $84
    adc b                                         ; $7545: $88
    ld bc, $4144                                  ; $7546: $01 $44 $41
    dec b                                         ; $7549: $05
    inc hl                                        ; $754a: $23
    ld d, e                                       ; $754b: $53
    sub h                                         ; $754c: $94
    add l                                         ; $754d: $85
    adc l                                         ; $754e: $8d
    ld b, e                                       ; $754f: $43
    inc hl                                        ; $7550: $23
    pop bc                                        ; $7551: $c1
    rst $20                                       ; $7552: $e7
    nop                                           ; $7553: $00
    cp d                                          ; $7554: $ba
    nop                                           ; $7555: $00
    add [hl]                                      ; $7556: $86
    ld b, c                                       ; $7557: $41
    add l                                         ; $7558: $85
    rst $38                                       ; $7559: $ff
    nop                                           ; $755a: $00
    rst $20                                       ; $755b: $e7
    ret nz                                        ; $755c: $c0

    db $eb                                        ; $755d: $eb
    add [hl]                                      ; $755e: $86

jr_06c_755f:
    ld b, e                                       ; $755f: $43
    add l                                         ; $7560: $85
    di                                            ; $7561: $f3
    nop                                           ; $7562: $00
    push af                                       ; $7563: $f5
    nop                                           ; $7564: $00
    ret z                                         ; $7565: $c8

    ld [c], a                                     ; $7566: $e2
    ld c, $20                                     ; $7567: $0e $20
    add hl, bc                                    ; $7569: $09
    dec h                                         ; $756a: $25
    ld h, e                                       ; $756b: $63
    ret                                           ; $756c: $c9


    nop                                           ; $756d: $00
    rst $38                                       ; $756e: $ff
    ld b, b                                       ; $756f: $40
    add sp, $09                                   ; $7570: $e8 $09
    ld h, $00                                     ; $7572: $26 $00
    rst $38                                       ; $7574: $ff
    ld [de], a                                    ; $7575: $12
    add l                                         ; $7576: $85
    and [hl]                                      ; $7577: $a6
    ld l, l                                       ; $7578: $6d
    dec b                                         ; $7579: $05
    add b                                         ; $757a: $80
    ld c, b                                       ; $757b: $48
    dec b                                         ; $757c: $05
    ld l, e                                       ; $757d: $6b
    ld [bc], a                                    ; $757e: $02
    db $e3                                        ; $757f: $e3
    add l                                         ; $7580: $85
    rst $38                                       ; $7581: $ff
    add e                                         ; $7582: $83
    ld b, $24                                     ; $7583: $06 $24
    ret nz                                        ; $7585: $c0

    pop hl                                        ; $7586: $e1
    ld c, e                                       ; $7587: $4b
    pop bc                                        ; $7588: $c1
    ld l, e                                       ; $7589: $6b
    add c                                         ; $758a: $81
    and b                                         ; $758b: $a0
    add hl, bc                                    ; $758c: $09
    jr nz, jr_06c_75bc                            ; $758d: $20 $2d

    ld a, [bc]                                    ; $758f: $0a
    ld [hl-], a                                   ; $7590: $32
    nop                                           ; $7591: $00
    ld e, b                                       ; $7592: $58
    nop                                           ; $7593: $00
    ret nz                                        ; $7594: $c0

    ld [c], a                                     ; $7595: $e2
    cp a                                          ; $7596: $bf
    ld [c], a                                     ; $7597: $e2
    rst $38                                       ; $7598: $ff
    ldh [rOBP1], a                                ; $7599: $e0 $49
    ld b, a                                       ; $759b: $47
    nop                                           ; $759c: $00
    rst $38                                       ; $759d: $ff
    nop                                           ; $759e: $00
    xor b                                         ; $759f: $a8
    adc e                                         ; $75a0: $8b
    jr nz, jr_06c_755f                            ; $75a1: $20 $bc

    pop hl                                        ; $75a3: $e1
    nop                                           ; $75a4: $00
    ld a, c                                       ; $75a5: $79
    nop                                           ; $75a6: $00
    or d                                          ; $75a7: $b2
    ld b, [hl]                                    ; $75a8: $46
    nop                                           ; $75a9: $00
    rst $38                                       ; $75aa: $ff
    sbc l                                         ; $75ab: $9d
    rst $00                                       ; $75ac: $c7
    cp [hl]                                       ; $75ad: $be
    ld [bc], a                                    ; $75ae: $02
    cp e                                          ; $75af: $bb
    nop                                           ; $75b0: $00
    or a                                          ; $75b1: $b7
    add h                                         ; $75b2: $84
    ld a, [c]                                     ; $75b3: $f2
    inc hl                                        ; $75b4: $23
    nop                                           ; $75b5: $00
    add l                                         ; $75b6: $85
    rst $38                                       ; $75b7: $ff
    nop                                           ; $75b8: $00
    db $e3                                        ; $75b9: $e3
    ld b, e                                       ; $75ba: $43
    dec h                                         ; $75bb: $25

jr_06c_75bc:
    add hl, sp                                    ; $75bc: $39
    inc hl                                        ; $75bd: $23
    ld [hl], $65                                  ; $75be: $36 $65
    add l                                         ; $75c0: $85
    inc [hl]                                      ; $75c1: $34
    nop                                           ; $75c2: $00
    ld sp, $0778                                  ; $75c3: $31 $78 $07
    nop                                           ; $75c6: $00
    ld a, [bc]                                    ; $75c7: $0a
    add e                                         ; $75c8: $83
    ld [hl], b                                    ; $75c9: $70
    ld b, e                                       ; $75ca: $43
    nop                                           ; $75cb: $00
    rst $38                                       ; $75cc: $ff
    ld [hl], c                                    ; $75cd: $71
    add hl, hl                                    ; $75ce: $29
    ld a, b                                       ; $75cf: $78
    ld [bc], a                                    ; $75d0: $02
    jp z, $8563                                   ; $75d1: $ca $63 $85

    rst $10                                       ; $75d4: $d7
    nop                                           ; $75d5: $00
    dec [hl]                                      ; $75d6: $35
    nop                                           ; $75d7: $00
    ret nz                                        ; $75d8: $c0

    and $72                                       ; $75d9: $e6 $72
    inc bc                                        ; $75db: $03
    add l                                         ; $75dc: $85
    rst $38                                       ; $75dd: $ff
    or $0b                                        ; $75de: $f6 $0b
    inc d                                         ; $75e0: $14
    ld h, a                                       ; $75e1: $67
    adc a                                         ; $75e2: $8f
    dec d                                         ; $75e3: $15
    nop                                           ; $75e4: $00
    ccf                                           ; $75e5: $3f
    inc d                                         ; $75e6: $14
    ld e, b                                       ; $75e7: $58
    nop                                           ; $75e8: $00
    ld a, e                                       ; $75e9: $7b
    rst $38                                       ; $75ea: $ff
    or $ff                                        ; $75eb: $f6 $ff
    nop                                           ; $75ed: $00
    ei                                            ; $75ee: $fb
    or $ff                                        ; $75ef: $f6 $ff
    nop                                           ; $75f1: $00
    ld c, b                                       ; $75f2: $48
    nop                                           ; $75f3: $00
    nop                                           ; $75f4: $00
    nop                                           ; $75f5: $00
    rst $38                                       ; $75f6: $ff
    call c, $a0dd                                 ; $75f7: $dc $dd $a0
    sbc $df                                       ; $75fa: $de $df
    ldh [$e1], a                                  ; $75fc: $e0 $e1
    ld [c], a                                     ; $75fe: $e2
    di                                            ; $75ff: $f3
    db $e3                                        ; $7600: $e3
    db $e4                                        ; $7601: $e4
    or $ff                                        ; $7602: $f6 $ff
    db $ec                                        ; $7604: $ec
    pop af                                        ; $7605: $f1
    push hl                                       ; $7606: $e5
    and $e7                                       ; $7607: $e6 $e7
    and b                                         ; $7609: $a0
    ccf                                           ; $760a: $3f
    add sp, -$17                                  ; $760b: $e8 $e9
    ld [$eceb], a                                 ; $760d: $ea $eb $ec
    and b                                         ; $7610: $a0
    or $ff                                        ; $7611: $f6 $ff
    db $ec                                        ; $7613: $ec
    pop af                                        ; $7614: $f1
    ld c, $99                                     ; $7615: $0e $99
    rst $28                                       ; $7617: $ef
    sub $d7                                       ; $7618: $d6 $d7
    and b                                         ; $761a: $a0
    rst $38                                       ; $761b: $ff
    pop hl                                        ; $761c: $e1
    add l                                         ; $761d: $85
    rst $38                                       ; $761e: $ff
    ld [c], a                                     ; $761f: $e2
    ld [c], a                                     ; $7620: $e2
    sbc c                                         ; $7621: $99
    rst $28                                       ; $7622: $ef
    add e                                         ; $7623: $83
    ret c                                         ; $7624: $d8

    reti                                          ; $7625: $d9


    ret nz                                        ; $7626: $c0

    ld [c], a                                     ; $7627: $e2
    add l                                         ; $7628: $85
    rst $38                                       ; $7629: $ff
    ld [c], a                                     ; $762a: $e2
    ld [c], a                                     ; $762b: $e2
    sbc c                                         ; $762c: $99
    db $ec                                        ; $762d: $ec
    add l                                         ; $762e: $85
    ldh [$da], a                                  ; $762f: $e0 $da
    rst $38                                       ; $7631: $ff
    db $db                                        ; $7632: $db
    sbc a                                         ; $7633: $9f
    ld de, $a09f                                  ; $7634: $11 $9f $a0
    and b                                         ; $7637: $a0
    push af                                       ; $7638: $f5
    or $c7                                        ; $7639: $f6 $c7
    and b                                         ; $763b: $a0
    ret nc                                        ; $763c: $d0

    pop de                                        ; $763d: $d1
    halt                                          ; $763e: $76
    ld [c], a                                     ; $763f: $e2
    nop                                           ; $7640: $00
    rst $38                                       ; $7641: $ff
    sbc c                                         ; $7642: $99
    and $f5                                       ; $7643: $e6 $f5
    or $ee                                        ; $7645: $f6 $ee
    call z, $9ee1                                 ; $7647: $cc $e1 $9e
    ld de, $3a9e                                  ; $764a: $11 $9e $3a
    ld [c], a                                     ; $764d: $e2
    jp nc, $a0d3                                  ; $764e: $d2 $d3 $a0

    ldh [$32], a                                  ; $7651: $e0 $32
    ldh [rP1], a                                  ; $7653: $e0 $00
    rst $38                                       ; $7655: $ff
    sbc c                                         ; $7656: $99
    rst $00                                       ; $7657: $c7
    call z, $c0e3                                 ; $7658: $cc $e3 $c0
    pop hl                                        ; $765b: $e1
    ret c                                         ; $765c: $d8

    reti                                          ; $765d: $d9


    db $ed                                        ; $765e: $ed
    rrca                                          ; $765f: $0f
    xor $d4                                       ; $7660: $ee $d4
    push de                                       ; $7662: $d5
    rst $28                                       ; $7663: $ef
    ld hl, sp-$20                                 ; $7664: $f8 $e0
    ld a, [c]                                     ; $7666: $f2
    pop bc                                        ; $7667: $c1
    nop                                           ; $7668: $00
    rst $38                                       ; $7669: $ff
    inc d                                         ; $766a: $14
    db $e3                                        ; $766b: $e3
    db $fc                                        ; $766c: $fc
    call z, $80e3                                 ; $766d: $cc $e3 $80
    pop hl                                        ; $7670: $e1
    jp c, $f0db                                   ; $7671: $da $db $f0

    pop af                                        ; $7674: $f1
    ld a, [c]                                     ; $7675: $f2
    di                                            ; $7676: $f3
    dec a                                         ; $7677: $3d
    db $f4                                        ; $7678: $f4
    ld [hl-], a                                   ; $7679: $32
    ldh [$a0], a                                  ; $767a: $e0 $a0
    and b                                         ; $767c: $a0
    db $e3                                        ; $767d: $e3
    db $e4                                        ; $767e: $e4
    nop                                           ; $767f: $00
    rst $38                                       ; $7680: $ff
    inc d                                         ; $7681: $14
    jp nz, $a0cd                                  ; $7682: $c2 $cd $a0

    call z, $9fe2                                 ; $7685: $cc $e2 $9f
    sbc h                                         ; $7688: $9c
    ld b, b                                       ; $7689: $40
    ldh [$7c], a                                  ; $768a: $e0 $7c
    ret nz                                        ; $768c: $c0

    sbc a                                         ; $768d: $9f
    sbc l                                         ; $768e: $9d
    add c                                         ; $768f: $81
    sbc l                                         ; $7690: $9d
    ld hl, sp-$40                                 ; $7691: $f8 $c0
    dec a                                         ; $7693: $3d
    pop hl                                        ; $7694: $e1
    cp [hl]                                       ; $7695: $be
    ldh [rP1], a                                  ; $7696: $e0 $00
    rst $38                                       ; $7698: $ff
    adc a                                         ; $7699: $8f
    pop bc                                        ; $769a: $c1
    ret                                           ; $769b: $c9


    ld [c], a                                     ; $769c: $e2
    sbc h                                         ; $769d: $9c
    rst $38                                       ; $769e: $ff
    ld [de], a                                    ; $769f: $12
    ld [de], a                                    ; $76a0: $12
    sbc h                                         ; $76a1: $9c
    and d                                         ; $76a2: $a2
    sbc l                                         ; $76a3: $9d
    sbc l                                         ; $76a4: $9d
    sbc l                                         ; $76a5: $9d
    sbc h                                         ; $76a6: $9c
    ld h, a                                       ; $76a7: $67
    or d                                          ; $76a8: $b2
    or d                                          ; $76a9: $b2
    sbc h                                         ; $76aa: $9c
    cp a                                          ; $76ab: $bf
    pop hl                                        ; $76ac: $e1
    ld l, a                                       ; $76ad: $6f
    ret nz                                        ; $76ae: $c0

    push af                                       ; $76af: $f5
    or $00                                        ; $76b0: $f6 $00
    rst $38                                       ; $76b2: $ff
    db $fc                                        ; $76b3: $fc
    inc d                                         ; $76b4: $14
    jp nz, $c003                                  ; $76b5: $c2 $03 $c0

    sbc [hl]                                      ; $76b8: $9e
    ld [de], a                                    ; $76b9: $12
    ld [de], a                                    ; $76ba: $12
    ld a, c                                       ; $76bb: $79
    ld a, d                                       ; $76bc: $7a
    ld a, e                                       ; $76bd: $7b
    ld [hl], a                                    ; $76be: $77
    ld a, h                                       ; $76bf: $7c
    ld a, l                                       ; $76c0: $7d
    or d                                          ; $76c1: $b2
    rst $38                                       ; $76c2: $ff
    pop hl                                        ; $76c3: $e1
    sbc h                                         ; $76c4: $9c
    and d                                         ; $76c5: $a2
    sbc a                                         ; $76c6: $9f
    dec a                                         ; $76c7: $3d
    pop hl                                        ; $76c8: $e1
    ld hl, sp-$14                                 ; $76c9: $f8 $ec
    or a                                          ; $76cb: $b7
    ld e, $cc                                     ; $76cc: $1e $cc
    inc bc                                        ; $76ce: $03
    ret nz                                        ; $76cf: $c0

    sbc [hl]                                      ; $76d0: $9e
    ld de, $7e79                                  ; $76d1: $11 $79 $7e
    cp [hl]                                       ; $76d4: $be
    ld [hl], a                                    ; $76d5: $77
    cpl                                           ; $76d6: $2f
    ld a, [hl+]                                   ; $76d7: $2a
    adc [hl]                                      ; $76d8: $8e
    cp l                                          ; $76d9: $bd
    pop hl                                        ; $76da: $e1
    ld b, [hl]                                    ; $76db: $46
    ld b, [hl]                                    ; $76dc: $46
    ld b, [hl]                                    ; $76dd: $46
    ld a, l                                       ; $76de: $7d
    db $e4                                        ; $76df: $e4

Jump_06c_76e0:
    ld hl, sp+$66                                 ; $76e0: $f8 $66
    jp nz, $df00                                  ; $76e2: $c2 $00 $df

    pop de                                        ; $76e5: $d1
    ret nz                                        ; $76e6: $c0

    sbc [hl]                                      ; $76e7: $9e
    ld de, $8382                                  ; $76e8: $11 $82 $83
    dec hl                                        ; $76eb: $2b
    ld a, a                                       ; $76ec: $7f
    inc l                                         ; $76ed: $2c
    ld hl, $383b                                  ; $76ee: $21 $3b $38
    scf                                           ; $76f1: $37
    ld a, a                                       ; $76f2: $7f
    ld a, l                                       ; $76f3: $7d
    ret nz                                        ; $76f4: $c0

    ldh [$e0], a                                  ; $76f5: $e0 $e0
    cp a                                          ; $76f7: $bf
    ld [c], a                                     ; $76f8: $e2
    cp d                                          ; $76f9: $ba
    pop bc                                        ; $76fa: $c1
    ld [hl-], a                                   ; $76fb: $32
    ret nz                                        ; $76fc: $c0

    nop                                           ; $76fd: $00
    rst $38                                       ; $76fe: $ff
    ld b, l                                       ; $76ff: $45
    and b                                         ; $7700: $a0
    and c                                         ; $7701: $a1
    ld [de], a                                    ; $7702: $12
    ld [de], a                                    ; $7703: $12
    rst $38                                       ; $7704: $ff
    add [hl]                                      ; $7705: $86
    adc b                                         ; $7706: $88
    adc c                                         ; $7707: $89
    add e                                         ; $7708: $83
    ld a, [hl-]                                   ; $7709: $3a
    swap l                                        ; $770a: $cb $35
    ld b, b                                       ; $770c: $40
    dec c                                         ; $770d: $0d
    add c                                         ; $770e: $81
    ret nz                                        ; $770f: $c0

    pop hl                                        ; $7710: $e1
    or d                                          ; $7711: $b2
    sbc h                                         ; $7712: $9c
    cp c                                          ; $7713: $b9
    pop bc                                        ; $7714: $c1
    ld [hl-], a                                   ; $7715: $32
    jp nz, $ff00                                  ; $7716: $c2 $00 $ff

    ld [bc], a                                    ; $7719: $02
    and b                                         ; $771a: $a0
    cp $c0                                        ; $771b: $fe $c0
    ret nz                                        ; $771d: $c0

    inc de                                        ; $771e: $13
    rlca                                          ; $771f: $07
    ld [bc], a                                    ; $7720: $02
    adc e                                         ; $7721: $8b
    add hl, sp                                    ; $7722: $39
    dec [hl]                                      ; $7723: $35
    ld [hl], $5f                                  ; $7724: $36 $5f
    add e                                         ; $7726: $83
    add h                                         ; $7727: $84
    ld b, l                                       ; $7728: $45
    scf                                           ; $7729: $37
    scf                                           ; $772a: $37
    ld sp, hl                                     ; $772b: $f9
    ret nz                                        ; $772c: $c0

    ld b, [hl]                                    ; $772d: $46
    cp [hl]                                       ; $772e: $be
    ldh [$f8], a                                  ; $772f: $e0 $f8
    ld [hl-], a                                   ; $7731: $32
    jp nz, $ff00                                  ; $7732: $c2 $00 $ff

    ret nc                                        ; $7735: $d0

    and c                                         ; $7736: $a1
    sbc a                                         ; $7737: $9f
    sbc l                                         ; $7738: $9d
    sbc h                                         ; $7739: $9c
    ld [bc], a                                    ; $773a: $02
    ld [$82ff], sp                                ; $773b: $08 $ff $82
    add e                                         ; $773e: $83
    ccf                                           ; $773f: $3f
    add e                                         ; $7740: $83
    add [hl]                                      ; $7741: $86
    add l                                         ; $7742: $85
    or d                                          ; $7743: $b2
    inc a                                         ; $7744: $3c
    inc sp                                        ; $7745: $33
    dec [hl]                                      ; $7746: $35
    ld [hl], $bf                                  ; $7747: $36 $bf
    pop hl                                        ; $7749: $e1
    ld a, [$d6c2]                                 ; $774a: $fa $c2 $d6
    rst $10                                       ; $774d: $d7
    nop                                           ; $774e: $00
    rst $38                                       ; $774f: $ff
    ret nc                                        ; $7750: $d0

    and d                                         ; $7751: $a2
    cp $3d                                        ; $7752: $fe $3d
    jp nz, $8887                                  ; $7754: $c2 $87 $88

    add a                                         ; $7757: $87
    add l                                         ; $7758: $85
    or d                                          ; $7759: $b2
    or d                                          ; $775a: $b2
    inc a                                         ; $775b: $3c
    sbc c                                         ; $775c: $99
    res 7, a                                      ; $775d: $cb $bf
    ldh [$fa], a                                  ; $775f: $e0 $fa
    call nz, $d9d8                                ; $7761: $c4 $d8 $d9
    rst $28                                       ; $7764: $ef
    add b                                         ; $7765: $80
    nop                                           ; $7766: $00
    cp $f5                                        ; $7767: $fe $f5
    db $dd                                        ; $7769: $dd
    or $3c                                        ; $776a: $f6 $3c
    pop bc                                        ; $776c: $c1
    ld b, [hl]                                    ; $776d: $46
    ld b, $05                                     ; $776e: $06 $05
    ld b, $e0                                     ; $7770: $06 $e0
    or d                                          ; $7772: $b2
    or d                                          ; $7773: $b2
    cp a                                          ; $7774: $bf
    ld [hl], $35                                  ; $7775: $36 $35
    dec [hl]                                      ; $7777: $35
    dec [hl]                                      ; $7778: $35
    ld [hl], $45                                  ; $7779: $36 $45
    cp c                                          ; $777b: $b9
    pop bc                                        ; $777c: $c1
    and c                                         ; $777d: $a1
    ld [hl], b                                    ; $777e: $70
    and a                                         ; $777f: $a7
    add b                                         ; $7780: $80
    rst $28                                       ; $7781: $ef
    add c                                         ; $7782: $81
    nop                                           ; $7783: $00
    sbc [hl]                                      ; $7784: $9e
    dec a                                         ; $7785: $3d
    ld [c], a                                     ; $7786: $e2
    sbc h                                         ; $7787: $9c
    dec b                                         ; $7788: $05
    ld b, $c5                                     ; $7789: $06 $c5
    pop bc                                        ; $778b: $c1
    daa                                           ; $778c: $27
    or d                                          ; $778d: $b2
    or d                                          ; $778e: $b2
    ld a, [hl-]                                   ; $778f: $3a
    cp a                                          ; $7790: $bf
    ld [c], a                                     ; $7791: $e2
    db $fc                                        ; $7792: $fc
    ret nz                                        ; $7793: $c0

    sbc [hl]                                      ; $7794: $9e
    cp l                                          ; $7795: $bd
    jp $9f00                                      ; $7796: $c3 $00 $9f


    ld hl, sp+$0d                                 ; $7799: $f8 $0d
    and d                                         ; $779b: $a2
    ld a, e                                       ; $779c: $7b
    and c                                         ; $779d: $a1
    add h                                         ; $779e: $84
    pop bc                                        ; $779f: $c1
    ld b, [hl]                                    ; $77a0: $46
    add hl, sp                                    ; $77a1: $39
    bit 4, d                                      ; $77a2: $cb $62
    ld h, l                                       ; $77a4: $65
    add l                                         ; $77a5: $85
    ld h, [hl]                                    ; $77a6: $66
    db $fc                                        ; $77a7: $fc
    pop bc                                        ; $77a8: $c1
    sbc h                                         ; $77a9: $9c
    cp l                                          ; $77aa: $bd
    jp $9c00                                      ; $77ab: $c3 $00 $9c


    adc a                                         ; $77ae: $8f
    ld h, b                                       ; $77af: $60
    ld c, $a3                                     ; $77b0: $0e $a3
    sbc [hl]                                      ; $77b2: $9e
    ei                                            ; $77b3: $fb
    ld b, [hl]                                    ; $77b4: $46
    ld de, $c103                                  ; $77b5: $11 $03 $c1
    ld a, c                                       ; $77b8: $79
    ld a, d                                       ; $77b9: $7a
    ld h, h                                       ; $77ba: $64
    ld h, a                                       ; $77bb: $67
    dec [hl]                                      ; $77bc: $35
    scf                                           ; $77bd: $37
    ld l, b                                       ; $77be: $68
    ld h, [hl]                                    ; $77bf: $66
    add hl, sp                                    ; $77c0: $39
    cp l                                          ; $77c1: $bd
    call nz, $f6f5                                ; $77c2: $c4 $f5 $f6
    nop                                           ; $77c5: $00
    ld a, a                                       ; $77c6: $7f
    ld a, e                                       ; $77c7: $7b
    jp $a1dd                                      ; $77c8: $c3 $dd $a1


    ret nz                                        ; $77cb: $c0

    ld [c], a                                     ; $77cc: $e2
    ld a, c                                       ; $77cd: $79
    ld a, [hl]                                    ; $77ce: $7e
    ld b, [hl]                                    ; $77cf: $46
    cp $c1                                        ; $77d0: $fe $c1
    ld l, d                                       ; $77d2: $6a
    ld a, [hl-]                                   ; $77d3: $3a
    ld b, b                                       ; $77d4: $40
    db $fd                                        ; $77d5: $fd
    pop bc                                        ; $77d6: $c1
    db $eb                                        ; $77d7: $eb
    ld h, e                                       ; $77d8: $63
    nop                                           ; $77d9: $00
    call c, Call_06c_6204                         ; $77da: $dc $04 $62
    ld a, d                                       ; $77dd: $7a
    and c                                         ; $77de: $a1
    rst $38                                       ; $77df: $ff
    jp nz, $c180                                  ; $77e0: $c2 $80 $c1

    and b                                         ; $77e3: $a0
    ccf                                           ; $77e4: $3f
    ld a, [hl-]                                   ; $77e5: $3a
    dec [hl]                                      ; $77e6: $35
    bit 5, d                                      ; $77e7: $cb $6a
    dec [hl]                                      ; $77e9: $35
    add hl, sp                                    ; $77ea: $39
    ret nz                                        ; $77eb: $c0

    ld [c], a                                     ; $77ec: $e2
    dec h                                         ; $77ed: $25
    ld h, b                                       ; $77ee: $60
    add b                                         ; $77ef: $80
    nop                                           ; $77f0: $00
    db $fc                                        ; $77f1: $fc
    dec sp                                        ; $77f2: $3b
    add c                                         ; $77f3: $81
    ld b, [hl]                                    ; $77f4: $46
    ld h, b                                       ; $77f5: $60
    ld a, e                                       ; $77f6: $7b
    add b                                         ; $77f7: $80
    ld a, a                                       ; $77f8: $7f
    pop bc                                        ; $77f9: $c1
    ret nz                                        ; $77fa: $c0

    ldh [$be], a                                  ; $77fb: $e0 $be
    pop bc                                        ; $77fd: $c1
    ld l, h                                       ; $77fe: $6c
    daa                                           ; $77ff: $27
    ld l, l                                       ; $7800: $6d
    cp e                                          ; $7801: $bb
    ld a, [hl-]                                   ; $7802: $3a
    push af                                       ; $7803: $f5
    add b                                         ; $7804: $80
    db $eb                                        ; $7805: $eb
    ld h, c                                       ; $7806: $61
    and b                                         ; $7807: $a0
    nop                                           ; $7808: $00
    ld a, h                                       ; $7809: $7c
    jp z, $b441                                   ; $780a: $ca $41 $b4

    ld [$be80], sp                                ; $780d: $08 $80 $be
    and b                                         ; $7810: $a0
    ld [bc], a                                    ; $7811: $02
    jp Jump_06c_46c0                              ; $7812: $c3 $c0 $46


    add b                                         ; $7815: $80
    ld a, e                                       ; $7816: $7b
    add b                                         ; $7817: $80
    inc a                                         ; $7818: $3c
    sbc a                                         ; $7819: $9f
    dec [hl]                                      ; $781a: $35
    ld [hl], e                                    ; $781b: $73
    ld l, [hl]                                    ; $781c: $6e
    dec [hl]                                      ; $781d: $35
    inc a                                         ; $781e: $3c
    inc [hl]                                      ; $781f: $34
    add h                                         ; $7820: $84
    nop                                           ; $7821: $00
    rst $18                                       ; $7822: $df
    and b                                         ; $7823: $a0
    db $d3                                        ; $7824: $d3
    and b                                         ; $7825: $a0
    inc de                                        ; $7826: $13
    rst $38                                       ; $7827: $ff
    pop hl                                        ; $7828: $e1
    pop bc                                        ; $7829: $c1
    ldh [$b2], a                                  ; $782a: $e0 $b2
    ld bc, $b2e1                                  ; $782c: $01 $e1 $b2
    add hl, sp                                    ; $782f: $39
    ld c, $01                                     ; $7830: $0e $01
    ldh [$bb], a                                  ; $7832: $e0 $bb
    dec [hl]                                      ; $7834: $35
    cp e                                          ; $7835: $bb
    push af                                       ; $7836: $f5
    ld h, c                                       ; $7837: $61
    ld h, $43                                     ; $7838: $26 $43
    nop                                           ; $783a: $00
    cp l                                          ; $783b: $bd
    add b                                         ; $783c: $80
    db $e3                                        ; $783d: $e3
    ld [$a1c3], a                                 ; $783e: $ea $c3 $a1
    or d                                          ; $7841: $b2
    ld b, c                                       ; $7842: $41
    ldh [rLYC], a                                 ; $7843: $e0 $45
    rst $38                                       ; $7845: $ff
    and b                                         ; $7846: $a0
    ld l, d                                       ; $7847: $6a
    dec [hl]                                      ; $7848: $35
    dec [hl]                                      ; $7849: $35
    pop bc                                        ; $784a: $c1
    ld a, [hl-]                                   ; $784b: $3a
    or [hl]                                       ; $784c: $b6
    ld h, c                                       ; $784d: $61
    ld h, $41                                     ; $784e: $26 $41
    nop                                           ; $7850: $00
    cp a                                          ; $7851: $bf
    ld a, e                                       ; $7852: $7b
    ld h, h                                       ; $7853: $64
    add b                                         ; $7854: $80
    pop hl                                        ; $7855: $e1
    add d                                         ; $7856: $82
    add e                                         ; $7857: $83
    ld [hl], a                                    ; $7858: $77
    ld b, [hl]                                    ; $7859: $46
    ld b, b                                       ; $785a: $40
    dec [hl]                                      ; $785b: $35
    ld bc, $35e0                                  ; $785c: $01 $e0 $35
    dec [hl]                                      ; $785f: $35
    add hl, sp                                    ; $7860: $39
    ld l, [hl]                                    ; $7861: $6e
    ld b, c                                       ; $7862: $41
    ldh a, [rNR50]                                ; $7863: $f0 $24
    and d                                         ; $7865: $a2
    nop                                           ; $7866: $00
    cp a                                          ; $7867: $bf
    ld a, $a2                                     ; $7868: $3e $a2
    inc bc                                        ; $786a: $03
    ld h, b                                       ; $786b: $60
    sbc h                                         ; $786c: $9c
    ld b, [hl]                                    ; $786d: $46
    add l                                         ; $786e: $85
    add a                                         ; $786f: $87
    ccf                                           ; $7870: $3f
    adc b                                         ; $7871: $88
    adc b                                         ; $7872: $88
    ld [hl], c                                    ; $7873: $71
    ld [hl], c                                    ; $7874: $71
    ld [hl], b                                    ; $7875: $70
    ld l, [hl]                                    ; $7876: $6e
    dec a                                         ; $7877: $3d
    and b                                         ; $7878: $a0
    add e                                         ; $7879: $83
    jp nz, RST_30                                 ; $787a: $c2 $30 $00

    sbc a                                         ; $787d: $9f
    ld b, b                                       ; $787e: $40
    jp Jump_000_237d                              ; $787f: $c3 $7d $23


    ld a, h                                       ; $7882: $7c
    ldh [rDMA], a                                 ; $7883: $e0 $46
    ld b, l                                       ; $7885: $45
    rst $38                                       ; $7886: $ff
    add c                                         ; $7887: $81
    cp $81                                        ; $7888: $fe $81
    db $10                                        ; $788a: $10
    ld bc, $00a1                                  ; $788b: $01 $a1 $00
    ld a, a                                       ; $788e: $7f
    ld a, e                                       ; $788f: $7b
    add [hl]                                      ; $7890: $86
    cp d                                          ; $7891: $ba
    add h                                         ; $7892: $84

jr_06c_7893:
    ld b, [hl]                                    ; $7893: $46
    jp nz, $bfc0                                  ; $7894: $c2 $c0 $bf

    add d                                         ; $7897: $82
    add e                                         ; $7898: $83
    jp $0000                                      ; $7899: $c3 $00 $00


    sbc a                                         ; $789c: $9f
    ld a, e                                       ; $789d: $7b
    ld b, h                                       ; $789e: $44

jr_06c_789f:
    ld b, [hl]                                    ; $789f: $46
    jr nz, jr_06c_791e                            ; $78a0: $20 $7c

    and d                                         ; $78a2: $a2
    jp nz, $c1c1                                  ; $78a3: $c2 $c1 $c1

    push hl                                       ; $78a6: $e5
    nop                                           ; $78a7: $00
    ld a, a                                       ; $78a8: $7f
    ld a, e                                       ; $78a9: $7b
    and a                                         ; $78aa: $a7
    inc c                                         ; $78ab: $0c
    ld b, [hl]                                    ; $78ac: $46
    jr nz, @-$08                                  ; $78ad: $20 $f6

    ld b, c                                       ; $78af: $41
    ld b, [hl]                                    ; $78b0: $46
    ld b, d                                       ; $78b1: $42
    ld b, c                                       ; $78b2: $41
    add b                                         ; $78b3: $80
    ld b, h                                       ; $78b4: $44
    and c                                         ; $78b5: $a1
    ldh a, [rNR42]                                ; $78b6: $f0 $21
    ld [hl-], a                                   ; $78b8: $32
    jr nz, jr_06c_789f                            ; $78b9: $20 $e4

    db $ec                                        ; $78bb: $ec
    nop                                           ; $78bc: $00
    nop                                           ; $78bd: $00
    cp a                                          ; $78be: $bf
    db $ec                                        ; $78bf: $ec
    inc d                                         ; $78c0: $14
    ld h, e                                       ; $78c1: $63
    dec sp                                        ; $78c2: $3b
    nop                                           ; $78c3: $00
    sbc [hl]                                      ; $78c4: $9e
    ld b, [hl]                                    ; $78c5: $46
    ld b, h                                       ; $78c6: $44
    rrca                                          ; $78c7: $0f
    inc a                                         ; $78c8: $3c
    dec [hl]                                      ; $78c9: $35
    dec [hl]                                      ; $78ca: $35
    ld a, $05                                     ; $78cb: $3e $05
    and d                                         ; $78cd: $a2
    ld [hl-], a                                   ; $78ce: $32
    ld hl, $a323                                  ; $78cf: $21 $23 $a3
    nop                                           ; $78d2: $00
    rst $38                                       ; $78d3: $ff
    db $10                                        ; $78d4: $10
    ld b, [hl]                                    ; $78d5: $46
    inc hl                                        ; $78d6: $23
    add hl, sp                                    ; $78d7: $39
    ld h, b                                       ; $78d8: $60
    ld bc, $84e2                                  ; $78d9: $01 $e2 $84
    add c                                         ; $78dc: $81
    sbc [hl]                                      ; $78dd: $9e
    ld h, [hl]                                    ; $78de: $66
    inc hl                                        ; $78df: $23
    nop                                           ; $78e0: $00
    rst $38                                       ; $78e1: $ff
    ld a, e                                       ; $78e2: $7b
    dec h                                         ; $78e3: $25
    inc sp                                        ; $78e4: $33
    push af                                       ; $78e5: $f5
    or $82                                        ; $78e6: $f6 $82
    jp nz, $60c2                                  ; $78e8: $c2 $c2 $60

    inc a                                         ; $78eb: $3c
    ld b, h                                       ; $78ec: $44
    jp $eb62                                      ; $78ed: $c3 $62 $eb


    add c                                         ; $78f0: $81
    add b                                         ; $78f1: $80
    nop                                           ; $78f2: $00
    rst $38                                       ; $78f3: $ff
    ld a, e                                       ; $78f4: $7b
    xor b                                         ; $78f5: $a8
    ld b, d                                       ; $78f6: $42
    jr nz, jr_06c_78fa                            ; $78f7: $20 $01

    db $e3                                        ; $78f9: $e3

jr_06c_78fa:
    call nz, Call_06c_7b62                        ; $78fa: $c4 $62 $7b
    ld d, $00                                     ; $78fd: $16 $00
    sub l                                         ; $78ff: $95
    sbc [hl]                                      ; $7900: $9e
    add h                                         ; $7901: $84
    ld b, c                                       ; $7902: $41
    ld hl, $e101                                  ; $7903: $21 $01 $e1
    add hl, sp                                    ; $7906: $39
    ld a, [$8203]                                 ; $7907: $fa $03 $82
    ret nz                                        ; $790a: $c0

    nop                                           ; $790b: $00
    ccf                                           ; $790c: $3f
    ld a, e                                       ; $790d: $7b
    ld c, b                                       ; $790e: $48
    sbc [hl]                                      ; $790f: $9e
    jr jr_06c_7893                                ; $7910: $18 $81

    add c                                         ; $7912: $81
    call nz, $c680                                ; $7913: $c4 $80 $c6
    ld h, b                                       ; $7916: $60
    sbc h                                         ; $7917: $9c
    sbc a                                         ; $7918: $9f
    ld b, e                                       ; $7919: $43
    ldh [$c5], a                                  ; $791a: $e0 $c5
    ld b, b                                       ; $791c: $40
    ld a, e                                       ; $791d: $7b

jr_06c_791e:
    ld [de], a                                    ; $791e: $12
    stop                                          ; $791f: $10 $00
    db $f4                                        ; $7921: $f4
    call nz, $02a1                                ; $7922: $c4 $a1 $02
    jp nz, Jump_06c_60c7                          ; $7925: $c2 $c7 $60

    and c                                         ; $7928: $a1
    add d                                         ; $7929: $82
    inc hl                                        ; $792a: $23
    nop                                           ; $792b: $00
    rst $38                                       ; $792c: $ff
    ld a, e                                       ; $792d: $7b
    ld h, a                                       ; $792e: $67
    ld [bc], a                                    ; $792f: $02
    ld a, d                                       ; $7930: $7a
    ld hl, $0246                                  ; $7931: $21 $46 $02
    pop bc                                        ; $7934: $c1
    ld b, h                                       ; $7935: $44
    ld b, c                                       ; $7936: $41
    inc bc                                        ; $7937: $03
    ret nz                                        ; $7938: $c0

    ld l, [hl]                                    ; $7939: $6e
    jp nz, $ff00                                  ; $793a: $c2 $00 $ff

    ld a, e                                       ; $793d: $7b
    dec h                                         ; $793e: $25
    ld [bc], a                                    ; $793f: $02
    ld a, c                                       ; $7940: $79
    ld [bc], a                                    ; $7941: $02
    ld b, [hl]                                    ; $7942: $46
    ld [bc], a                                    ; $7943: $02
    ret nz                                        ; $7944: $c0

    dec b                                         ; $7945: $05
    ld b, d                                       ; $7946: $42
    rst $00                                       ; $7947: $c7
    ld h, b                                       ; $7948: $60
    daa                                           ; $7949: $27
    ld h, e                                       ; $794a: $63
    nop                                           ; $794b: $00
    rst $38                                       ; $794c: $ff
    nop                                           ; $794d: $00
    ld b, d                                       ; $794e: $42
    ld a, [bc]                                    ; $794f: $0a
    rst $38                                       ; $7950: $ff
    ld b, e                                       ; $7951: $43
    and c                                         ; $7952: $a1
    jp Jump_06c_4180                              ; $7953: $c3 $80 $41


    add $22                                       ; $7956: $c6 $22
    inc bc                                        ; $7958: $03
    and h                                         ; $7959: $a4
    nop                                           ; $795a: $00
    rst $38                                       ; $795b: $ff
    and e                                         ; $795c: $a3
    db $e3                                        ; $795d: $e3
    jp $d1d0                                      ; $795e: $c3 $d0 $d1


    inc d                                         ; $7961: $14
    jp nz, $c1ff                                  ; $7962: $c2 $ff $c1

    jp nz, Jump_000_06e2                          ; $7965: $c2 $e2 $06

    ld h, d                                       ; $7968: $62
    sub $d7                                       ; $7969: $d6 $d7
    nop                                           ; $796b: $00
    rst $38                                       ; $796c: $ff
    and c                                         ; $796d: $a1
    nop                                           ; $796e: $00
    rst $38                                       ; $796f: $ff
    jr @-$5b                                      ; $7970: $18 $a3

    ld [bc], a                                    ; $7972: $02
    add e                                         ; $7973: $83
    pop bc                                        ; $7974: $c1
    db $e4                                        ; $7975: $e4
    call nz, $0320                                ; $7976: $c4 $20 $03
    add d                                         ; $7979: $82
    nop                                           ; $797a: $00
    rst $18                                       ; $797b: $df
    nop                                           ; $797c: $00
    nop                                           ; $797d: $00
    add c                                         ; $797e: $81
    inc b                                         ; $797f: $04
    and d                                         ; $7980: $a2
    ld b, $81                                     ; $7981: $06 $81
    add c                                         ; $7983: $81
    and $c6                                       ; $7984: $e6 $c6
    ld b, d                                       ; $7986: $42
    add l                                         ; $7987: $85
    ld [hl], c                                    ; $7988: $71
    nop                                           ; $7989: $00
    ld d, d                                       ; $798a: $52
    inc b                                         ; $798b: $04
    and d                                         ; $798c: $a2
    ld e, $07                                     ; $798d: $1e $07
    add b                                         ; $798f: $80
    ld b, l                                       ; $7990: $45
    ld b, e                                       ; $7991: $43
    ld b, c                                       ; $7992: $41
    ld b, e                                       ; $7993: $43
    db $fd                                        ; $7994: $fd
    ldh [$c5], a                                  ; $7995: $e0 $c5
    nop                                           ; $7997: $00
    ld b, d                                       ; $7998: $42
    and e                                         ; $7999: $a3
    ret nc                                        ; $799a: $d0

    ret c                                         ; $799b: $d8

    ld [hl], c                                    ; $799c: $71
    nop                                           ; $799d: $00
    jr nc, jr_06c_79b9                            ; $799e: $30 $19

    and b                                         ; $79a0: $a0
    jr @-$7e                                      ; $79a1: $18 $80

    sbc [hl]                                      ; $79a3: $9e
    adc b                                         ; $79a4: $88
    ld h, b                                       ; $79a5: $60
    dec sp                                        ; $79a6: $3b
    dec [hl]                                      ; $79a7: $35
    add c                                         ; $79a8: $81
    dec sp                                        ; $79a9: $3b
    db $fd                                        ; $79aa: $fd
    ldh [$84], a                                  ; $79ab: $e0 $84
    ld bc, $4286                                  ; $79ad: $01 $86 $42
    add l                                         ; $79b0: $85
    ldh a, [rP1]                                  ; $79b1: $f0 $00
    rst $30                                       ; $79b3: $f7
    ld b, a                                       ; $79b4: $47
    add c                                         ; $79b5: $81
    and h                                         ; $79b6: $a4
    db $dd                                        ; $79b7: $dd
    ld h, h                                       ; $79b8: $64

jr_06c_79b9:
    rst $38                                       ; $79b9: $ff
    ldh [$a5], a                                  ; $79ba: $e0 $a5
    inc a                                         ; $79bc: $3c
    ld b, h                                       ; $79bd: $44
    add l                                         ; $79be: $85
    ld h, d                                       ; $79bf: $62
    ret c                                         ; $79c0: $d8

    reti                                          ; $79c1: $d9


    ld hl, sp-$28                                 ; $79c2: $f8 $d8
    ld [hl], c                                    ; $79c4: $71
    nop                                           ; $79c5: $00
    or $c7                                        ; $79c6: $f6 $c7
    ld h, c                                       ; $79c8: $61
    ld l, c                                       ; $79c9: $69
    and e                                         ; $79ca: $a3
    dec [hl]                                      ; $79cb: $35
    dec [hl]                                      ; $79cc: $35
    and e                                         ; $79cd: $a3
    scf                                           ; $79ce: $37
    ld l, d                                       ; $79cf: $6a
    dec [hl]                                      ; $79d0: $35
    ld b, d                                       ; $79d1: $42
    add hl, bc                                    ; $79d2: $09
    ld [hl+], a                                   ; $79d3: $22
    jp c, $d8db                                   ; $79d4: $da $db $d8

    ld de, $f800                                  ; $79d7: $11 $00 $f8
    ld [$e0c0], sp                                ; $79da: $08 $c0 $e0
    rst $00                                       ; $79dd: $c7
    ld b, c                                       ; $79de: $41
    ret nz                                        ; $79df: $c0

    pop hl                                        ; $79e0: $e1
    and c                                         ; $79e1: $a1
    add [hl]                                      ; $79e2: $86
    ld b, b                                       ; $79e3: $40
    add l                                         ; $79e4: $85
    ld a, [c]                                     ; $79e5: $f2
    nop                                           ; $79e6: $00
    ld d, d                                       ; $79e7: $52
    ld b, h                                       ; $79e8: $44
    add e                                         ; $79e9: $83
    rst $18                                       ; $79ea: $df
    ld b, [hl]                                    ; $79eb: $46
    or d                                          ; $79ec: $b2
    cp e                                          ; $79ed: $bb
    ld l, e                                       ; $79ee: $6b
    ld [hl], c                                    ; $79ef: $71
    rst $38                                       ; $79f0: $ff
    ldh [$6d], a                                  ; $79f1: $e0 $6d
    ld [hl], $e1                                  ; $79f3: $36 $e1
    ld b, h                                       ; $79f5: $44
    add e                                         ; $79f6: $83
    jp $f185                                      ; $79f7: $c3 $85 $f1


    nop                                           ; $79fa: $00
    db $d3                                        ; $79fb: $d3
    ld b, l                                       ; $79fc: $45
    and d                                         ; $79fd: $a2
    or d                                          ; $79fe: $b2
    or d                                          ; $79ff: $b2
    cp e                                          ; $7a00: $bb
    ld c, $c0                                     ; $7a01: $0e $c0
    jp nz, $9c36                                  ; $7a03: $c2 $36 $9c

    sbc l                                         ; $7a06: $9d
    ld a, [bc]                                    ; $7a07: $0a
    ld [hl-], a                                   ; $7a08: $32
    nop                                           ; $7a09: $00
    ld e, b                                       ; $7a0a: $58
    ld b, h                                       ; $7a0b: $44
    add d                                         ; $7a0c: $82
    ld b, d                                       ; $7a0d: $42
    ld hl, $4080                                  ; $7a0e: $21 $80 $40
    pop bc                                        ; $7a11: $c1
    call z, Call_000_0403                         ; $7a12: $cc $03 $04
    add c                                         ; $7a15: $81
    nop                                           ; $7a16: $00
    rst $38                                       ; $7a17: $ff
    nop                                           ; $7a18: $00
    and a                                         ; $7a19: $a7
    rst $00                                       ; $7a1a: $c7
    ld hl, $8002                                  ; $7a1b: $21 $02 $80
    sbc h                                         ; $7a1e: $9c
    rlca                                          ; $7a1f: $07
    sbc l                                         ; $7a20: $9d
    sbc l                                         ; $7a21: $9d
    sbc a                                         ; $7a22: $9f
    ld c, b                                       ; $7a23: $48
    and d                                         ; $7a24: $a2
    ld l, [hl]                                    ; $7a25: $6e
    and c                                         ; $7a26: $a1
    nop                                           ; $7a27: $00
    rst $38                                       ; $7a28: $ff
    and e                                         ; $7a29: $a3
    push hl                                       ; $7a2a: $e5
    cp [hl]                                       ; $7a2b: $be
    inc b                                         ; $7a2c: $04
    nop                                           ; $7a2d: $00
    jp Jump_06c_76e0                              ; $7a2e: $c3 $e0 $76


    inc hl                                        ; $7a31: $23
    add [hl]                                      ; $7a32: $86
    ld b, d                                       ; $7a33: $42
    nop                                           ; $7a34: $00
    rst $38                                       ; $7a35: $ff
    nop                                           ; $7a36: $00
    and [hl]                                      ; $7a37: $a6
    cp [hl]                                       ; $7a38: $be
    inc b                                         ; $7a39: $04
    or l                                          ; $7a3a: $b5
    jp Jump_000_00cd                              ; $7a3b: $c3 $cd $00


    jr jr_06c_7ab2                                ; $7a3e: $18 $72

    ld b, e                                       ; $7a40: $43
    nop                                           ; $7a41: $00
    rst $38                                       ; $7a42: $ff
    nop                                           ; $7a43: $00
    dec h                                         ; $7a44: $25
    jp c, Jump_06c_7edb                           ; $7a45: $da $db $7e

    add c                                         ; $7a48: $81
    jr c, jr_06c_7a4b                             ; $7a49: $38 $00

jr_06c_7a4b:
    ld [hl], h                                    ; $7a4b: $74
    inc bc                                        ; $7a4c: $03
    nop                                           ; $7a4d: $00
    add a                                         ; $7a4e: $87
    ld b, d                                       ; $7a4f: $42
    nop                                           ; $7a50: $00
    rst $38                                       ; $7a51: $ff
    nop                                           ; $7a52: $00
    adc c                                         ; $7a53: $89
    ld a, [hl]                                    ; $7a54: $7e
    add c                                         ; $7a55: $81
    jr c, jr_06c_7a59                             ; $7a56: $38 $01

    ld d, b                                       ; $7a58: $50

jr_06c_7a59:
    ld [bc], a                                    ; $7a59: $02
    add l                                         ; $7a5a: $85
    rst $10                                       ; $7a5b: $d7
    nop                                           ; $7a5c: $00
    inc [hl]                                      ; $7a5d: $34
    nop                                           ; $7a5e: $00
    add d                                         ; $7a5f: $82
    inc hl                                        ; $7a60: $23
    adc a                                         ; $7a61: $8f
    add d                                         ; $7a62: $82
    adc a                                         ; $7a63: $8f
    ld sp, $7e00                                  ; $7a64: $31 $00 $7e
    inc d                                         ; $7a67: $14
    ld h, a                                       ; $7a68: $67
    adc a                                         ; $7a69: $8f
    ld [de], a                                    ; $7a6a: $12
    nop                                           ; $7a6b: $00
    ld a, a                                       ; $7a6c: $7f
    call nz, Call_000_00c2                        ; $7a6d: $c4 $c2 $00
    adc a                                         ; $7a70: $8f
    or $00                                        ; $7a71: $f6 $00
    ld e, a                                       ; $7a73: $5f
    or $ff                                        ; $7a74: $f6 $ff
    nop                                           ; $7a76: $00
    ld e, e                                       ; $7a77: $5b
    or $ff                                        ; $7a78: $f6 $ff
    nop                                           ; $7a7a: $00
    ld c, b                                       ; $7a7b: $48
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    pop bc                                        ; $7a7f: $c1
    nop                                           ; $7a80: $00
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
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    dec c                                         ; $7a8d: $0d
    add b                                         ; $7a8e: $80
    cp $e0                                        ; $7a8f: $fe $e0
    nop                                           ; $7a91: $00
    ld b, b                                       ; $7a92: $40
    ret c                                         ; $7a93: $d8

    push hl                                       ; $7a94: $e5
    rst $30                                       ; $7a95: $f7
    and $ff                                       ; $7a96: $e6 $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $30                                       ; $7a9a: $f7
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    nop                                           ; $7a9d: $00
    ld bc, $1c00                                  ; $7a9e: $01 $00 $1c
    add hl, bc                                    ; $7aa1: $09
    ld bc, $1d01                                  ; $7aa2: $01 $01 $1d
    add hl, bc                                    ; $7aa5: $09
    ld bc, $1a02                                  ; $7aa6: $01 $02 $1a
    ld a, [bc]                                    ; $7aa9: $0a
    ld bc, $1b03                                  ; $7aaa: $01 $03 $1b
    ld a, [bc]                                    ; $7aad: $0a
    ld bc, $1c04                                  ; $7aae: $01 $04 $1c
    ld a, [bc]                                    ; $7ab1: $0a

jr_06c_7ab2:
    ld bc, $1d05                                  ; $7ab2: $01 $05 $1d
    ld a, [bc]                                    ; $7ab5: $0a
    ld bc, $1e06                                  ; $7ab6: $01 $06 $1e
    ld a, [bc]                                    ; $7ab9: $0a
    ld bc, $1d07                                  ; $7aba: $01 $07 $1d
    dec bc                                        ; $7abd: $0b
    ld bc, $2208                                  ; $7abe: $01 $08 $22
    dec c                                         ; $7ac1: $0d
    ld bc, $2109                                  ; $7ac2: $01 $09 $21
    ld c, $01                                     ; $7ac5: $0e $01
    ld a, [bc]                                    ; $7ac7: $0a
    ld [hl+], a                                   ; $7ac8: $22
    ld c, $01                                     ; $7ac9: $0e $01
    dec bc                                        ; $7acb: $0b
    inc hl                                        ; $7acc: $23
    ld c, $01                                     ; $7acd: $0e $01
    inc c                                         ; $7acf: $0c
    ld e, $0f                                     ; $7ad0: $1e $0f
    ld bc, $220d                                  ; $7ad2: $01 $0d $22
    rrca                                          ; $7ad5: $0f
    ld bc, $230e                                  ; $7ad6: $01 $0e $23
    rrca                                          ; $7ad9: $0f
    ld bc, $240f                                  ; $7ada: $01 $0f $24
    rrca                                          ; $7add: $0f
    ld bc, $1d10                                  ; $7ade: $01 $10 $1d
    db $10                                        ; $7ae1: $10
    ld bc, $1e11                                  ; $7ae2: $01 $11 $1e
    db $10                                        ; $7ae5: $10
    ld bc, $2312                                  ; $7ae6: $01 $12 $23
    db $10                                        ; $7ae9: $10
    ld bc, $1c13                                  ; $7aea: $01 $13 $1c
    ld de, $1401                                  ; $7aed: $11 $01 $14
    dec e                                         ; $7af0: $1d
    ld de, $1501                                  ; $7af1: $11 $01 $15
    ld e, $11                                     ; $7af4: $1e $11
    ld bc, $1d16                                  ; $7af6: $01 $16 $1d
    ld [de], a                                    ; $7af9: $12
    ld bc, $1e17                                  ; $7afa: $01 $17 $1e
    ld [de], a                                    ; $7afd: $12
    ld bc, $1f18                                  ; $7afe: $01 $18 $1f
    ld [de], a                                    ; $7b01: $12
    ld bc, $2619                                  ; $7b02: $01 $19 $26
    ld [de], a                                    ; $7b05: $12
    ld bc, $271a                                  ; $7b06: $01 $1a $27
    ld [de], a                                    ; $7b09: $12
    ld bc, $1e1b                                  ; $7b0a: $01 $1b $1e
    inc de                                        ; $7b0d: $13
    ld bc, $261c                                  ; $7b0e: $01 $1c $26
    inc de                                        ; $7b11: $13
    ld bc, $271d                                  ; $7b12: $01 $1d $27
    inc de                                        ; $7b15: $13
    ld bc, $281e                                  ; $7b16: $01 $1e $28
    inc de                                        ; $7b19: $13
    ld bc, $271f                                  ; $7b1a: $01 $1f $27
    inc d                                         ; $7b1d: $14
    ld bc, $2120                                  ; $7b1e: $01 $20 $21
    ld d, $01                                     ; $7b21: $16 $01
    ld hl, $1720                                  ; $7b23: $21 $20 $17
    ld bc, $2122                                  ; $7b26: $01 $22 $21
    rla                                           ; $7b29: $17
    ld bc, $2623                                  ; $7b2a: $01 $23 $26
    rla                                           ; $7b2d: $17
    ld bc, $2824                                  ; $7b2e: $01 $24 $28
    rla                                           ; $7b31: $17
    ld bc, $1b25                                  ; $7b32: $01 $25 $1b
    jr @+$03                                      ; $7b35: $18 $01

    ld h, $1f                                     ; $7b37: $26 $1f
    jr jr_06c_7b3c                                ; $7b39: $18 $01

    daa                                           ; $7b3b: $27

jr_06c_7b3c:
    jr nz, jr_06c_7b56                            ; $7b3c: $20 $18

    ld bc, $2128                                  ; $7b3e: $01 $28 $21
    jr jr_06c_7b44                                ; $7b41: $18 $01

    add hl, hl                                    ; $7b43: $29

jr_06c_7b44:
    jr z, jr_06c_7b5e                             ; $7b44: $28 $18

    ld bc, $292a                                  ; $7b46: $01 $2a $29
    jr jr_06c_7b4c                                ; $7b49: $18 $01

    dec hl                                        ; $7b4b: $2b

jr_06c_7b4c:
    ld a, [de]                                    ; $7b4c: $1a
    add hl, de                                    ; $7b4d: $19
    ld bc, $1b2c                                  ; $7b4e: $01 $2c $1b
    add hl, de                                    ; $7b51: $19
    ld bc, $202d                                  ; $7b52: $01 $2d $20
    add hl, de                                    ; $7b55: $19

jr_06c_7b56:
    ld bc, $252e                                  ; $7b56: $01 $2e $25
    add hl, de                                    ; $7b59: $19
    ld bc, $272f                                  ; $7b5a: $01 $2f $27
    add hl, de                                    ; $7b5d: $19

jr_06c_7b5e:
    ld bc, $2830                                  ; $7b5e: $01 $30 $28
    add hl, de                                    ; $7b61: $19

Call_06c_7b62:
    ld bc, $1931                                  ; $7b62: $01 $31 $19
    ld a, [de]                                    ; $7b65: $1a
    ld bc, $1a32                                  ; $7b66: $01 $32 $1a
    ld a, [de]                                    ; $7b69: $1a
    ld bc, $1b33                                  ; $7b6a: $01 $33 $1b
    ld a, [de]                                    ; $7b6d: $1a
    ld bc, $1c34                                  ; $7b6e: $01 $34 $1c
    ld a, [de]                                    ; $7b71: $1a
    ld bc, $1f35                                  ; $7b72: $01 $35 $1f
    ld a, [de]                                    ; $7b75: $1a
    ld bc, $1a36                                  ; $7b76: $01 $36 $1a
    dec de                                        ; $7b79: $1b
    ld bc, $1b37                                  ; $7b7a: $01 $37 $1b
    dec de                                        ; $7b7d: $1b
    ld bc, $2338                                  ; $7b7e: $01 $38 $23
    ld [hl+], a                                   ; $7b81: $22
    ld bc, $2339                                  ; $7b82: $01 $39 $23
    inc hl                                        ; $7b85: $23
    ld bc, $243a                                  ; $7b86: $01 $3a $24
    inc hl                                        ; $7b89: $23
    ld bc, $1a3b                                  ; $7b8a: $01 $3b $1a
    inc h                                         ; $7b8d: $24
    ld bc, $1b3c                                  ; $7b8e: $01 $3c $1b
    inc h                                         ; $7b91: $24
    ld bc, $223d                                  ; $7b92: $01 $3d $22
    inc h                                         ; $7b95: $24
    ld bc, $233e                                  ; $7b96: $01 $3e $23
    inc h                                         ; $7b99: $24
    ld bc, $243f                                  ; $7b9a: $01 $3f $24
    inc h                                         ; $7b9d: $24
    ld bc, $1940                                  ; $7b9e: $01 $40 $19
    dec h                                         ; $7ba1: $25
    ld bc, $1a41                                  ; $7ba2: $01 $41 $1a
    dec h                                         ; $7ba5: $25
    ld bc, $1b42                                  ; $7ba6: $01 $42 $1b
    dec h                                         ; $7ba9: $25
    ld bc, $1c43                                  ; $7baa: $01 $43 $1c
    dec h                                         ; $7bad: $25
    ld bc, $2244                                  ; $7bae: $01 $44 $22
    dec h                                         ; $7bb1: $25
    ld bc, $2345                                  ; $7bb2: $01 $45 $23
    dec h                                         ; $7bb5: $25
    ld bc, $1a46                                  ; $7bb6: $01 $46 $1a
    ld h, $01                                     ; $7bb9: $26 $01
    ld b, a                                       ; $7bbb: $47
    ld [hl+], a                                   ; $7bbc: $22
    dec hl                                        ; $7bbd: $2b
    ld bc, $2148                                  ; $7bbe: $01 $48 $21
    inc l                                         ; $7bc1: $2c
    ld bc, $2249                                  ; $7bc2: $01 $49 $22
    inc l                                         ; $7bc5: $2c
    ld bc, $234a                                  ; $7bc6: $01 $4a $23
    inc l                                         ; $7bc9: $2c
    ld bc, $244b                                  ; $7bca: $01 $4b $24
    inc l                                         ; $7bcd: $2c
    ld bc, $214c                                  ; $7bce: $01 $4c $21
    dec l                                         ; $7bd1: $2d
    ld bc, $224d                                  ; $7bd2: $01 $4d $22
    dec l                                         ; $7bd5: $2d
    ld bc, $234e                                  ; $7bd6: $01 $4e $23
    dec l                                         ; $7bd9: $2d
    ld bc, $224f                                  ; $7bda: $01 $4f $22
    ld l, $01                                     ; $7bdd: $2e $01
    ld d, b                                       ; $7bdf: $50
    rla                                           ; $7be0: $17
    inc sp                                        ; $7be1: $33
    ld bc, $1851                                  ; $7be2: $01 $51 $18
    inc sp                                        ; $7be5: $33
    ld bc, $1652                                  ; $7be6: $01 $52 $16
    inc [hl]                                      ; $7be9: $34
    ld bc, $1753                                  ; $7bea: $01 $53 $17
    inc [hl]                                      ; $7bed: $34
    ld bc, $1854                                  ; $7bee: $01 $54 $18
    inc [hl]                                      ; $7bf1: $34
    ld bc, $1755                                  ; $7bf2: $01 $55 $17
    dec [hl]                                      ; $7bf5: $35
    ld bc, $1856                                  ; $7bf6: $01 $56 $18
    dec [hl]                                      ; $7bf9: $35
    ld bc, $1957                                  ; $7bfa: $01 $57 $19
    dec [hl]                                      ; $7bfd: $35
    ld bc, $1858                                  ; $7bfe: $01 $58 $18
    ld [hl], $ff                                  ; $7c01: $36 $ff
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

Jump_06c_7ec1:
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

Jump_06c_7edb:
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

Jump_06c_7f00:
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

Jump_06c_7f3e:
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

Jump_06c_7fa1:
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

Call_06c_7fc0:
Jump_06c_7fc0:
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
