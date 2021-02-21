; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    db $39, $43

    db $10                                        ; $4002: $10
    ld b, e                                       ; $4003: $43

    db $1f, $43, $60, $72, $f8, $76

    rla                                           ; $400a: $17
    ld [hl], a                                    ; $400b: $77
    ccf                                           ; $400c: $3f
    ld [hl], a                                    ; $400d: $77
    ld h, [hl]                                    ; $400e: $66
    ld [hl], a                                    ; $400f: $77
    ld l, l                                       ; $4010: $6d
    ld [hl], a                                    ; $4011: $77
    ret c                                         ; $4012: $d8

    halt                                          ; $4013: $76

    db $20, $40, $58, $40, $4c, $40

    sub b                                         ; $401a: $90
    ld b, b                                       ; $401b: $40
    or b                                          ; $401c: $b0
    ld b, b                                       ; $401d: $40
    ret nc                                        ; $401e: $d0

    ld b, b                                       ; $401f: $40

    db $f9, $42, $00, $00, $4d, $42, $00, $00, $64, $42, $01, $28, $77, $42, $00, $3c
    db $83, $42, $01, $28

    sub [hl]                                      ; $4034: $96
    ld b, d                                       ; $4035: $42
    ld bc, $0028                                  ; $4036: $01 $28 $00
    nop                                           ; $4039: $00
    nop                                           ; $403a: $00
    rst $38                                       ; $403b: $ff
    and d                                         ; $403c: $a2
    ld b, d                                       ; $403d: $42
    ld bc, $a81e                                  ; $403e: $01 $1e $a8
    ld b, d                                       ; $4041: $42
    ld bc, $e278                                  ; $4042: $01 $78 $e2
    ld b, d                                       ; $4045: $42
    nop                                           ; $4046: $00
    ld a, [bc]                                    ; $4047: $0a
    nop                                           ; $4048: $00
    nop                                           ; $4049: $00
    nop                                           ; $404a: $00
    rst $38                                       ; $404b: $ff

    db $f9, $42, $01, $78

    ld [c], a                                     ; $4050: $e2
    ld b, d                                       ; $4051: $42
    nop                                           ; $4052: $00
    ld a, [bc]                                    ; $4053: $0a
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    nop                                           ; $4056: $00
    rst $38                                       ; $4057: $ff

    db $bf, $42, $01, $1e

    push bc                                       ; $405c: $c5
    ld b, d                                       ; $405d: $42
    ld bc, $e278                                  ; $405e: $01 $78 $e2
    ld b, d                                       ; $4061: $42
    nop                                           ; $4062: $00

jr_03b_4063:
    ld a, [bc]                                    ; $4063: $0a
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    rst $38                                       ; $4067: $ff
    db $ec                                        ; $4068: $ec
    ld b, b                                       ; $4069: $40
    nop                                           ; $406a: $00

jr_03b_406b:
    nop                                           ; $406b: $00
    inc bc                                        ; $406c: $03
    ld b, c                                       ; $406d: $41
    ld bc, $9628                                  ; $406e: $01 $28 $96
    ld b, d                                       ; $4071: $42
    ld bc, $0028                                  ; $4072: $01 $28 $00
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    rst $38                                       ; $4077: $ff
    ld hl, sp+$41                                 ; $4078: $f8 $41
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    daa                                           ; $407c: $27
    ld b, d                                       ; $407d: $42
    ld bc, $1b28                                  ; $407e: $01 $28 $1b
    ld b, d                                       ; $4081: $42
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    add e                                         ; $4084: $83
    ld b, d                                       ; $4085: $42
    ld bc, $e228                                  ; $4086: $01 $28 $e2
    ld b, d                                       ; $4089: $42
    ld bc, $0028                                  ; $408a: $01 $28 $00
    nop                                           ; $408d: $00
    nop                                           ; $408e: $00
    rst $38                                       ; $408f: $ff
    adc a                                         ; $4090: $8f
    ld b, c                                       ; $4091: $41
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    push de                                       ; $4094: $d5
    ld b, c                                       ; $4095: $41
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    db $ec                                        ; $4098: $ec
    ld b, c                                       ; $4099: $41
    ld bc, $0f28                                  ; $409a: $01 $28 $0f
    ld b, d                                       ; $409d: $42
    nop                                           ; $409e: $00
    nop                                           ; $409f: $00
    dec de                                        ; $40a0: $1b
    ld b, d                                       ; $40a1: $42
    nop                                           ; $40a2: $00
    jr z, jr_03b_4063                             ; $40a3: $28 $be

    ld b, c                                       ; $40a5: $41
    nop                                           ; $40a6: $00
    jr z, @-$1c                                   ; $40a7: $28 $e2

    ld b, d                                       ; $40a9: $42
    nop                                           ; $40aa: $00
    ld a, [bc]                                    ; $40ab: $0a
    nop                                           ; $40ac: $00
    nop                                           ; $40ad: $00
    nop                                           ; $40ae: $00
    rst $38                                       ; $40af: $ff
    ld a, b                                       ; $40b0: $78
    ld b, c                                       ; $40b1: $41
    nop                                           ; $40b2: $00
    nop                                           ; $40b3: $00
    or d                                          ; $40b4: $b2
    ld b, c                                       ; $40b5: $41
    nop                                           ; $40b6: $00
    nop                                           ; $40b7: $00
    db $ec                                        ; $40b8: $ec
    ld b, c                                       ; $40b9: $41
    ld bc, $0f28                                  ; $40ba: $01 $28 $0f
    ld b, d                                       ; $40bd: $42
    nop                                           ; $40be: $00
    nop                                           ; $40bf: $00
    dec de                                        ; $40c0: $1b
    ld b, d                                       ; $40c1: $42
    nop                                           ; $40c2: $00
    jr z, jr_03b_406b                             ; $40c3: $28 $a6

    ld b, c                                       ; $40c5: $41
    ld bc, $e23c                                  ; $40c6: $01 $3c $e2
    ld b, d                                       ; $40c9: $42
    ld bc, $0028                                  ; $40ca: $01 $28 $00
    nop                                           ; $40cd: $00
    nop                                           ; $40ce: $00
    rst $38                                       ; $40cf: $ff
    ld l, a                                       ; $40d0: $6f
    ld b, c                                       ; $40d1: $41
    nop                                           ; $40d2: $00
    nop                                           ; $40d3: $00
    ld c, l                                       ; $40d4: $4d
    ld b, d                                       ; $40d5: $42
    nop                                           ; $40d6: $00
    nop                                           ; $40d7: $00
    ld h, h                                       ; $40d8: $64
    ld b, d                                       ; $40d9: $42
    ld bc, $7728                                  ; $40da: $01 $28 $77
    ld b, d                                       ; $40dd: $42
    nop                                           ; $40de: $00
    inc a                                         ; $40df: $3c
    add e                                         ; $40e0: $83
    ld b, d                                       ; $40e1: $42
    ld bc, $9628                                  ; $40e2: $01 $28 $96
    ld b, d                                       ; $40e5: $42
    ld bc, $0028                                  ; $40e6: $01 $28 $00
    nop                                           ; $40e9: $00
    nop                                           ; $40ea: $00
    rst $38                                       ; $40eb: $ff
    ld hl, $0016                                  ; $40ec: $21 $16 $00
    ld a, l                                       ; $40ef: $7d
    ld [$d33c], a                                 ; $40f0: $ea $3c $d3
    ld a, h                                       ; $40f3: $7c
    ld [$d33d], a                                 ; $40f4: $ea $3d $d3
    ld hl, $f800                                  ; $40f7: $21 $00 $f8
    ld a, l                                       ; $40fa: $7d
    ld [$d338], a                                 ; $40fb: $ea $38 $d3
    ld a, h                                       ; $40fe: $7c
    ld [$d339], a                                 ; $40ff: $ea $39 $d3
    ret                                           ; $4102: $c9


    ld hl, $d33c                                  ; $4103: $21 $3c $d3
    ld a, [hl+]                                   ; $4106: $2a
    ld h, [hl]                                    ; $4107: $66
    ld l, a                                       ; $4108: $6f
    push hl                                       ; $4109: $e5
    bit 7, h                                      ; $410a: $cb $7c
    jr z, jr_03b_411d                             ; $410c: $28 $0f

    ld a, h                                       ; $410e: $7c
    xor $ff                                       ; $410f: $ee $ff
    ld h, a                                       ; $4111: $67
    ld a, l                                       ; $4112: $7d
    xor $ff                                       ; $4113: $ee $ff
    add $01                                       ; $4115: $c6 $01
    ld b, a                                       ; $4117: $47
    ld a, h                                       ; $4118: $7c
    adc $00                                       ; $4119: $ce $00
    ld h, a                                       ; $411b: $67
    ld l, b                                       ; $411c: $68

jr_03b_411d:
    ld de, $0010                                  ; $411d: $11 $10 $00
    add hl, de                                    ; $4120: $19
    ld a, h                                       ; $4121: $7c
    ld h, d                                       ; $4122: $62
    ld d, a                                       ; $4123: $57
    ld a, l                                       ; $4124: $7d
    ld l, e                                       ; $4125: $6b
    ld e, a                                       ; $4126: $5f
    pop hl                                        ; $4127: $e1
    bit 7, h                                      ; $4128: $cb $7c
    jr nz, jr_03b_4147                            ; $412a: $20 $1b

    ld a, h                                       ; $412c: $7c
    ld h, d                                       ; $412d: $62
    ld d, a                                       ; $412e: $57
    ld a, l                                       ; $412f: $7d
    ld l, e                                       ; $4130: $6b
    ld e, a                                       ; $4131: $5f
    ld a, h                                       ; $4132: $7c
    xor $ff                                       ; $4133: $ee $ff
    ld h, a                                       ; $4135: $67
    ld a, l                                       ; $4136: $7d
    xor $ff                                       ; $4137: $ee $ff
    add $01                                       ; $4139: $c6 $01
    ld b, a                                       ; $413b: $47
    ld a, h                                       ; $413c: $7c
    adc $00                                       ; $413d: $ce $00
    ld h, a                                       ; $413f: $67
    ld l, b                                       ; $4140: $68
    ld a, h                                       ; $4141: $7c
    ld h, d                                       ; $4142: $62
    ld d, a                                       ; $4143: $57
    ld a, l                                       ; $4144: $7d
    ld l, e                                       ; $4145: $6b
    ld e, a                                       ; $4146: $5f

jr_03b_4147:
    ld a, h                                       ; $4147: $7c
    ld h, d                                       ; $4148: $62
    ld d, a                                       ; $4149: $57
    ld a, l                                       ; $414a: $7d
    ld l, e                                       ; $414b: $6b
    ld e, a                                       ; $414c: $5f
    ld hl, $d338                                  ; $414d: $21 $38 $d3
    ld a, [hl+]                                   ; $4150: $2a
    ld h, [hl]                                    ; $4151: $66
    ld l, a                                       ; $4152: $6f
    ld a, h                                       ; $4153: $7c
    ld h, d                                       ; $4154: $62
    ld d, a                                       ; $4155: $57
    ld a, l                                       ; $4156: $7d
    ld l, e                                       ; $4157: $6b
    ld e, a                                       ; $4158: $5f
    bit 7, h                                      ; $4159: $cb $7c
    jr nz, jr_03b_4163                            ; $415b: $20 $06

    ld de, $f800                                  ; $415d: $11 $00 $f8
    jp Jump_03b_4166                              ; $4160: $c3 $66 $41


jr_03b_4163:
    ld de, $1400                                  ; $4163: $11 $00 $14

Jump_03b_4166:
    ld a, d                                       ; $4166: $7a
    ld [$d338], a                                 ; $4167: $ea $38 $d3
    ld a, e                                       ; $416a: $7b
    ld [$d338], a                                 ; $416b: $ea $38 $d3
    ret                                           ; $416e: $c9


    ld hl, $d33a                                  ; $416f: $21 $3a $d3
    ld [hl], $80                                  ; $4172: $36 $80
    inc hl                                        ; $4174: $23
    ld [hl], $17                                  ; $4175: $36 $17
    ret                                           ; $4177: $c9


    ld hl, $0000                                  ; $4178: $21 $00 $00
    ld a, l                                       ; $417b: $7d
    ld [$d338], a                                 ; $417c: $ea $38 $d3
    ld a, h                                       ; $417f: $7c
    ld [$d339], a                                 ; $4180: $ea $39 $d3
    ld hl, $4200                                  ; $4183: $21 $00 $42
    ld a, l                                       ; $4186: $7d
    ld [$d33a], a                                 ; $4187: $ea $3a $d3
    ld a, h                                       ; $418a: $7c
    ld [$d33b], a                                 ; $418b: $ea $3b $d3
    ret                                           ; $418e: $c9


    ld hl, $6000                                  ; $418f: $21 $00 $60
    ld a, l                                       ; $4192: $7d
    ld [$d338], a                                 ; $4193: $ea $38 $d3
    ld a, h                                       ; $4196: $7c
    ld [$d339], a                                 ; $4197: $ea $39 $d3
    ld hl, $4200                                  ; $419a: $21 $00 $42
    ld a, l                                       ; $419d: $7d
    ld [$d33a], a                                 ; $419e: $ea $3a $d3
    ld a, h                                       ; $41a1: $7c
    ld [$d33b], a                                 ; $41a2: $ea $3b $d3
    ret                                           ; $41a5: $c9


    ld hl, $0110                                  ; $41a6: $21 $10 $01
    ld a, l                                       ; $41a9: $7d
    ld [$d33e], a                                 ; $41aa: $ea $3e $d3
    ld a, h                                       ; $41ad: $7c
    ld [$d33f], a                                 ; $41ae: $ea $3f $d3
    ret                                           ; $41b1: $c9


    ld hl, $fef0                                  ; $41b2: $21 $f0 $fe
    ld a, l                                       ; $41b5: $7d
    ld [$d33e], a                                 ; $41b6: $ea $3e $d3
    ld a, h                                       ; $41b9: $7c
    ld [$d33f], a                                 ; $41ba: $ea $3f $d3
    ret                                           ; $41bd: $c9


    ld hl, $fd9a                                  ; $41be: $21 $9a $fd
    ld a, l                                       ; $41c1: $7d
    ld [$d33c], a                                 ; $41c2: $ea $3c $d3
    ld a, h                                       ; $41c5: $7c
    ld [$d33d], a                                 ; $41c6: $ea $3d $d3
    ld hl, $0110                                  ; $41c9: $21 $10 $01
    ld a, l                                       ; $41cc: $7d
    ld [$d33e], a                                 ; $41cd: $ea $3e $d3
    ld a, h                                       ; $41d0: $7c
    ld [$d33f], a                                 ; $41d1: $ea $3f $d3
    ret                                           ; $41d4: $c9


    ld hl, $fd9a                                  ; $41d5: $21 $9a $fd
    ld a, l                                       ; $41d8: $7d
    ld [$d33c], a                                 ; $41d9: $ea $3c $d3
    ld a, h                                       ; $41dc: $7c
    ld [$d33d], a                                 ; $41dd: $ea $3d $d3
    ld hl, $fef0                                  ; $41e0: $21 $f0 $fe
    ld a, l                                       ; $41e3: $7d
    ld [$d33e], a                                 ; $41e4: $ea $3e $d3
    ld a, h                                       ; $41e7: $7c
    ld [$d33f], a                                 ; $41e8: $ea $3f $d3
    ret                                           ; $41eb: $c9


    nop                                           ; $41ec: $00
    nop                                           ; $41ed: $00
    nop                                           ; $41ee: $00
    nop                                           ; $41ef: $00
    nop                                           ; $41f0: $00
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    nop                                           ; $41f6: $00
    ret                                           ; $41f7: $c9


    ld hl, $0500                                  ; $41f8: $21 $00 $05
    ld a, l                                       ; $41fb: $7d
    ld [$d33e], a                                 ; $41fc: $ea $3e $d3
    ld a, h                                       ; $41ff: $7c
    ld [$d33f], a                                 ; $4200: $ea $3f $d3
    ld hl, $9080                                  ; $4203: $21 $80 $90
    ld a, l                                       ; $4206: $7d
    ld [$d33a], a                                 ; $4207: $ea $3a $d3
    ld a, h                                       ; $420a: $7c
    ld [$d33b], a                                 ; $420b: $ea $3b $d3
    ret                                           ; $420e: $c9


    ld hl, $0000                                  ; $420f: $21 $00 $00
    ld a, l                                       ; $4212: $7d
    ld [$d33c], a                                 ; $4213: $ea $3c $d3
    ld a, h                                       ; $4216: $7c
    ld [$d33d], a                                 ; $4217: $ea $3d $d3
    ret                                           ; $421a: $c9


    ld hl, $0000                                  ; $421b: $21 $00 $00
    ld a, l                                       ; $421e: $7d
    ld [$d33e], a                                 ; $421f: $ea $3e $d3
    ld a, h                                       ; $4222: $7c
    ld [$d33f], a                                 ; $4223: $ea $3f $d3
    ret                                           ; $4226: $c9


    ld hl, $d33e                                  ; $4227: $21 $3e $d3
    ld a, [hl+]                                   ; $422a: $2a
    ld h, [hl]                                    ; $422b: $66
    ld l, a                                       ; $422c: $6f
    ld de, $ffe0                                  ; $422d: $11 $e0 $ff
    add hl, de                                    ; $4230: $19
    ld a, l                                       ; $4231: $7d
    ld [$d33e], a                                 ; $4232: $ea $3e $d3
    ld a, h                                       ; $4235: $7c
    ld [$d33f], a                                 ; $4236: $ea $3f $d3
    ret                                           ; $4239: $c9


    ld hl, $d33e                                  ; $423a: $21 $3e $d3
    ld a, [hl+]                                   ; $423d: $2a
    ld h, [hl]                                    ; $423e: $66
    ld l, a                                       ; $423f: $6f
    ld de, $0020                                  ; $4240: $11 $20 $00
    add hl, de                                    ; $4243: $19
    ld a, l                                       ; $4244: $7d
    ld [$d33e], a                                 ; $4245: $ea $3e $d3
    ld a, h                                       ; $4248: $7c
    ld [$d33f], a                                 ; $4249: $ea $3f $d3
    ret                                           ; $424c: $c9


    ld hl, $0500                                  ; $424d: $21 $00 $05
    ld a, l                                       ; $4250: $7d
    ld [$d33c], a                                 ; $4251: $ea $3c $d3
    ld a, h                                       ; $4254: $7c
    ld [$d33d], a                                 ; $4255: $ea $3d $d3
    ld hl, $a000                                  ; $4258: $21 $00 $a0
    ld a, l                                       ; $425b: $7d
    ld [$d338], a                                 ; $425c: $ea $38 $d3
    ld a, h                                       ; $425f: $7c
    ld [$d339], a                                 ; $4260: $ea $39 $d3
    ret                                           ; $4263: $c9


    ld hl, $d33c                                  ; $4264: $21 $3c $d3
    ld a, [hl+]                                   ; $4267: $2a
    ld h, [hl]                                    ; $4268: $66
    ld l, a                                       ; $4269: $6f
    ld de, $ffe0                                  ; $426a: $11 $e0 $ff
    add hl, de                                    ; $426d: $19
    ld a, l                                       ; $426e: $7d
    ld [$d33c], a                                 ; $426f: $ea $3c $d3
    ld a, h                                       ; $4272: $7c
    ld [$d33d], a                                 ; $4273: $ea $3d $d3
    ret                                           ; $4276: $c9


    ld hl, $0000                                  ; $4277: $21 $00 $00
    ld a, l                                       ; $427a: $7d
    ld [$d33c], a                                 ; $427b: $ea $3c $d3
    ld a, h                                       ; $427e: $7c
    ld [$d33d], a                                 ; $427f: $ea $3d $d3
    ret                                           ; $4282: $c9


    ld hl, $d33c                                  ; $4283: $21 $3c $d3
    ld a, [hl+]                                   ; $4286: $2a
    ld h, [hl]                                    ; $4287: $66
    ld l, a                                       ; $4288: $6f
    ld de, $0020                                  ; $4289: $11 $20 $00
    add hl, de                                    ; $428c: $19
    ld a, l                                       ; $428d: $7d
    ld [$d33c], a                                 ; $428e: $ea $3c $d3
    ld a, h                                       ; $4291: $7c
    ld [$d33d], a                                 ; $4292: $ea $3d $d3
    ret                                           ; $4295: $c9


    ld hl, $8000                                  ; $4296: $21 $00 $80
    ld a, l                                       ; $4299: $7d
    ld [$d33c], a                                 ; $429a: $ea $3c $d3
    ld a, h                                       ; $429d: $7c
    ld [$d33d], a                                 ; $429e: $ea $3d $d3
    ret                                           ; $42a1: $c9


    ldh a, [$8c]                                  ; $42a2: $f0 $8c
    and $01                                       ; $42a4: $e6 $01
    jr z, jr_03b_42e2                             ; $42a6: $28 $3a

    ld hl, $0000                                  ; $42a8: $21 $00 $00
    ld a, l                                       ; $42ab: $7d
    ld [$d338], a                                 ; $42ac: $ea $38 $d3
    ld a, h                                       ; $42af: $7c
    ld [$d339], a                                 ; $42b0: $ea $39 $d3
    ld hl, $1c00                                  ; $42b3: $21 $00 $1c
    ld a, l                                       ; $42b6: $7d
    ld [$d33a], a                                 ; $42b7: $ea $3a $d3
    ld a, h                                       ; $42ba: $7c
    ld [$d33b], a                                 ; $42bb: $ea $3b $d3
    ret                                           ; $42be: $c9


    ldh a, [$8c]                                  ; $42bf: $f0 $8c
    and $01                                       ; $42c1: $e6 $01
    jr z, jr_03b_42e2                             ; $42c3: $28 $1d

    ld hl, $0000                                  ; $42c5: $21 $00 $00
    ld a, l                                       ; $42c8: $7d
    ld [$d338], a                                 ; $42c9: $ea $38 $d3
    ld a, h                                       ; $42cc: $7c
    ld [$d339], a                                 ; $42cd: $ea $39 $d3
    ld hl, $f200                                  ; $42d0: $21 $00 $f2
    ld a, l                                       ; $42d3: $7d
    ld [$d33a], a                                 ; $42d4: $ea $3a $d3
    ld a, h                                       ; $42d7: $7c
    ld [$d33b], a                                 ; $42d8: $ea $3b $d3
    ret                                           ; $42db: $c9


    ld a, $0a                                     ; $42dc: $3e $0a
    ld [$c8a8], a                                 ; $42de: $ea $a8 $c8
    ret                                           ; $42e1: $c9


jr_03b_42e2:
    ld hl, $0000                                  ; $42e2: $21 $00 $00
    ld a, l                                       ; $42e5: $7d
    ld [$d338], a                                 ; $42e6: $ea $38 $d3
    ld a, h                                       ; $42e9: $7c
    ld [$d339], a                                 ; $42ea: $ea $39 $d3
    ld hl, $8000                                  ; $42ed: $21 $00 $80
    ld a, l                                       ; $42f0: $7d
    ld [$d33a], a                                 ; $42f1: $ea $3a $d3
    ld a, h                                       ; $42f4: $7c
    ld [$d33b], a                                 ; $42f5: $ea $3b $d3
    ret                                           ; $42f8: $c9


    ld hl, $0000                                  ; $42f9: $21 $00 $00
    ld a, l                                       ; $42fc: $7d
    ld [$d338], a                                 ; $42fd: $ea $38 $d3
    ld a, h                                       ; $4300: $7c
    ld [$d339], a                                 ; $4301: $ea $39 $d3
    ld hl, $1a00                                  ; $4304: $21 $00 $1a
    ld a, l                                       ; $4307: $7d
    ld [$d33a], a                                 ; $4308: $ea $3a $d3
    ld a, h                                       ; $430b: $7c
    ld [$d33b], a                                 ; $430c: $ea $3b $d3
    ret                                           ; $430f: $c9


Call_03b_4310:
jr_03b_4310:
    call Call_000_2e3b                            ; $4310: $cd $3b $2e
    ldh a, [$94]                                  ; $4313: $f0 $94
    or a                                          ; $4315: $b7
    jr nz, jr_03b_431f                            ; $4316: $20 $07

    ld a, [$d337]                                 ; $4318: $fa $37 $d3
    or a                                          ; $431b: $b7
    jr nz, jr_03b_4310                            ; $431c: $20 $f2

    ret                                           ; $431e: $c9


Call_03b_431f:
jr_03b_431f:
    ld a, $06                                     ; $431f: $3e $06
    ldh [$96], a                                  ; $4321: $e0 $96
    ldh [rSVBK], a                                ; $4323: $e0 $70
    xor a                                         ; $4325: $af
    ld [$d337], a                                 ; $4326: $ea $37 $d3
    ld hl, $4433                                  ; $4329: $21 $33 $44
    call Call_000_2449                            ; $432c: $cd $49 $24
    call Call_000_2e3b                            ; $432f: $cd $3b $2e
    rst $18                                       ; $4332: $df

    db $22, $12

    rst $18                                       ; $4335: $df

    db $1e, $12

    ret                                           ; $4338: $c9


Call_03b_4339:
    push af                                       ; $4339: $f5
    rst $18                                       ; $433a: $df

    db $20, $12

    rst $18                                       ; $433d: $df

    db $24, $12

    pop af                                        ; $4340: $f1
    push af                                       ; $4341: $f5
    cp $2c                                        ; $4342: $fe $2c
    jr c, jr_03b_4398                             ; $4344: $38 $52

    cp $33                                        ; $4346: $fe $33
    jr c, jr_03b_4350                             ; $4348: $38 $06

    cp $3d                                        ; $434a: $fe $3d
    jr c, jr_03b_4350                             ; $434c: $38 $02

    ld a, $3c                                     ; $434e: $3e $3c

jr_03b_4350:
    push af                                       ; $4350: $f5
    ld a, $3d                                     ; $4351: $3e $3d
    add a                                         ; $4353: $87
    add a                                         ; $4354: $87
    ld hl, $455b                                  ; $4355: $21 $5b $45
    add l                                         ; $4358: $85
    ld l, a                                       ; $4359: $6f
    jr nc, jr_03b_435d                            ; $435a: $30 $01

    inc h                                         ; $435c: $24

jr_03b_435d:
    inc hl                                        ; $435d: $23
    inc hl                                        ; $435e: $23
    ld a, [hl+]                                   ; $435f: $2a
    ld h, [hl]                                    ; $4360: $66
    ld l, a                                       ; $4361: $6f
    ld de, $8c00                                  ; $4362: $11 $00 $8c
    ld bc, $0002                                  ; $4365: $01 $02 $00
    call Call_000_0468                            ; $4368: $cd $68 $04
    call Call_000_0460                            ; $436b: $cd $60 $04
    call Call_000_2e3b                            ; $436e: $cd $3b $2e
    pop af                                        ; $4371: $f1
    cp $33                                        ; $4372: $fe $33
    jr c, jr_03b_4398                             ; $4374: $38 $22

    push af                                       ; $4376: $f5
    ld a, $3e                                     ; $4377: $3e $3e
    add a                                         ; $4379: $87
    add a                                         ; $437a: $87
    ld hl, $455b                                  ; $437b: $21 $5b $45
    add l                                         ; $437e: $85
    ld l, a                                       ; $437f: $6f
    jr nc, jr_03b_4383                            ; $4380: $30 $01

    inc h                                         ; $4382: $24

jr_03b_4383:
    inc hl                                        ; $4383: $23
    inc hl                                        ; $4384: $23
    ld a, [hl+]                                   ; $4385: $2a
    ld h, [hl]                                    ; $4386: $66
    ld l, a                                       ; $4387: $6f
    ld de, $8c20                                  ; $4388: $11 $20 $8c
    ld bc, $0002                                  ; $438b: $01 $02 $00
    call Call_000_0468                            ; $438e: $cd $68 $04
    call Call_000_0460                            ; $4391: $cd $60 $04
    call Call_000_2e3b                            ; $4394: $cd $3b $2e
    pop af                                        ; $4397: $f1

jr_03b_4398:
    add a                                         ; $4398: $87
    add a                                         ; $4399: $87
    ld hl, $455b                                  ; $439a: $21 $5b $45
    add l                                         ; $439d: $85
    ld l, a                                       ; $439e: $6f
    jr nc, jr_03b_43a2                            ; $439f: $30 $01

    inc h                                         ; $43a1: $24

jr_03b_43a2:
    ld a, [hl+]                                   ; $43a2: $2a
    ld [$d344], a                                 ; $43a3: $ea $44 $d3
    push af                                       ; $43a6: $f5
    push hl                                       ; $43a7: $e5
    ld a, [hl+]                                   ; $43a8: $2a
    and $0f                                       ; $43a9: $e6 $0f
    ld [$d345], a                                 ; $43ab: $ea $45 $d3
    pop hl                                        ; $43ae: $e1
    ld a, [hl+]                                   ; $43af: $2a
    push hl                                       ; $43b0: $e5
    swap a                                        ; $43b1: $cb $37
    and $0f                                       ; $43b3: $e6 $0f
    add a                                         ; $43b5: $87
    add a                                         ; $43b6: $87
    add a                                         ; $43b7: $87
    ld hl, $7220                                  ; $43b8: $21 $20 $72
    add l                                         ; $43bb: $85
    ld l, a                                       ; $43bc: $6f
    jr nc, jr_03b_43c0                            ; $43bd: $30 $01

    inc h                                         ; $43bf: $24

jr_03b_43c0:
    ld de, $0b01                                  ; $43c0: $11 $01 $0b
    call Call_000_056c                            ; $43c3: $cd $6c $05
    pop hl                                        ; $43c6: $e1
    ld a, [hl+]                                   ; $43c7: $2a
    ld h, [hl]                                    ; $43c8: $66
    ld l, a                                       ; $43c9: $6f
    pop bc                                        ; $43ca: $c1
    pop af                                        ; $43cb: $f1
    ld de, $8c00                                  ; $43cc: $11 $00 $8c
    cp $2c                                        ; $43cf: $fe $2c
    jr c, jr_03b_43f1                             ; $43d1: $38 $1e

    cp $33                                        ; $43d3: $fe $33
    jr c, jr_03b_43e4                             ; $43d5: $38 $0d

    ld a, $40                                     ; $43d7: $3e $40
    add e                                         ; $43d9: $83
    ld e, a                                       ; $43da: $5f
    jr nc, jr_03b_43de                            ; $43db: $30 $01

    inc d                                         ; $43dd: $14

jr_03b_43de:
    ld a, b                                       ; $43de: $78
    add $fe                                       ; $43df: $c6 $fe
    jp Jump_03b_43f2                              ; $43e1: $c3 $f2 $43


jr_03b_43e4:
    ld a, $20                                     ; $43e4: $3e $20
    add e                                         ; $43e6: $83
    ld e, a                                       ; $43e7: $5f
    jr nc, jr_03b_43eb                            ; $43e8: $30 $01

    inc d                                         ; $43ea: $14

jr_03b_43eb:
    ld a, b                                       ; $43eb: $78
    add $ff                                       ; $43ec: $c6 $ff
    jp Jump_03b_43f2                              ; $43ee: $c3 $f2 $43


jr_03b_43f1:
    ld a, b                                       ; $43f1: $78

Jump_03b_43f2:
    add a                                         ; $43f2: $87
    ld c, a                                       ; $43f3: $4f
    call Call_000_0468                            ; $43f4: $cd $68 $04
    call Call_000_0460                            ; $43f7: $cd $60 $04
    ld hl, $4014                                  ; $43fa: $21 $14 $40
    ld a, [$d345]                                 ; $43fd: $fa $45 $d3
    add a                                         ; $4400: $87
    add l                                         ; $4401: $85
    ld l, a                                       ; $4402: $6f
    jr nc, jr_03b_4406                            ; $4403: $30 $01

    inc h                                         ; $4405: $24

jr_03b_4406:
    ld a, [hl+]                                   ; $4406: $2a
    ld h, [hl]                                    ; $4407: $66
    ld l, a                                       ; $4408: $6f
    ld a, l                                       ; $4409: $7d
    ld [$d335], a                                 ; $440a: $ea $35 $d3
    ld a, h                                       ; $440d: $7c
    ld [$d336], a                                 ; $440e: $ea $36 $d3
    ld hl, $d338                                  ; $4411: $21 $38 $d3
    xor a                                         ; $4414: $af
    ld [hl+], a                                   ; $4415: $22
    ld [hl+], a                                   ; $4416: $22
    ld [hl+], a                                   ; $4417: $22
    ld [hl+], a                                   ; $4418: $22
    ld [hl+], a                                   ; $4419: $22
    ld [hl+], a                                   ; $441a: $22
    ld [hl+], a                                   ; $441b: $22
    ld [hl+], a                                   ; $441c: $22
    ld [hl+], a                                   ; $441d: $22
    ld [hl+], a                                   ; $441e: $22
    ld [hl+], a                                   ; $441f: $22
    ld [hl+], a                                   ; $4420: $22
    ld a, $8c                                     ; $4421: $3e $8c
    ld [$d337], a                                 ; $4423: $ea $37 $d3
    ld a, $00                                     ; $4426: $3e $00
    ld [$d343], a                                 ; $4428: $ea $43 $d3
    ld a, $1f                                     ; $442b: $3e $1f
    ld hl, $4433                                  ; $442d: $21 $33 $44
    call Call_000_23e8                            ; $4430: $cd $e8 $23

jr_03b_4433:
    ld a, $06                                     ; $4433: $3e $06
    ldh [$96], a                                  ; $4435: $e0 $96
    ldh [rSVBK], a                                ; $4437: $e0 $70
    ld hl, $d340                                  ; $4439: $21 $40 $d3
    ld a, [hl+]                                   ; $443c: $2a
    ld h, [hl]                                    ; $443d: $66
    ld l, a                                       ; $443e: $6f
    ld a, h                                       ; $443f: $7c
    or l                                          ; $4440: $b5
    jr z, jr_03b_4454                             ; $4441: $28 $11

    ld de, $4448                                  ; $4443: $11 $48 $44
    push de                                       ; $4446: $d5
    jp hl                                         ; $4447: $e9


    ld a, [$d342]                                 ; $4448: $fa $42 $d3
    or a                                          ; $444b: $b7
    jr nz, jr_03b_4454                            ; $444c: $20 $06

    xor a                                         ; $444e: $af
    ld hl, $d340                                  ; $444f: $21 $40 $d3
    ld [hl+], a                                   ; $4452: $22
    ld [hl], a                                    ; $4453: $77

jr_03b_4454:
    ld a, [$d343]                                 ; $4454: $fa $43 $d3
    or a                                          ; $4457: $b7
    jr nz, jr_03b_4478                            ; $4458: $20 $1e

    ld hl, $d335                                  ; $445a: $21 $35 $d3
    ld a, [hl+]                                   ; $445d: $2a
    ld h, [hl]                                    ; $445e: $66
    ld l, a                                       ; $445f: $6f
    ld de, $d340                                  ; $4460: $11 $40 $d3
    ld a, [hl+]                                   ; $4463: $2a
    ld [de], a                                    ; $4464: $12
    inc de                                        ; $4465: $13
    ld a, [hl+]                                   ; $4466: $2a
    ld [de], a                                    ; $4467: $12
    inc de                                        ; $4468: $13
    ld a, [hl+]                                   ; $4469: $2a
    ld [de], a                                    ; $446a: $12
    inc de                                        ; $446b: $13
    ld a, [hl+]                                   ; $446c: $2a
    ld [de], a                                    ; $446d: $12
    ld a, l                                       ; $446e: $7d
    ld [$d335], a                                 ; $446f: $ea $35 $d3
    ld a, h                                       ; $4472: $7c
    ld [$d336], a                                 ; $4473: $ea $36 $d3
    jr jr_03b_4433                                ; $4476: $18 $bb

jr_03b_4478:
    ld hl, $d343                                  ; $4478: $21 $43 $d3
    dec [hl]                                      ; $447b: $35
    ld hl, $d33c                                  ; $447c: $21 $3c $d3
    ld a, [hl+]                                   ; $447f: $2a
    ld d, [hl]                                    ; $4480: $56
    ld e, a                                       ; $4481: $5f
    ld hl, $d338                                  ; $4482: $21 $38 $d3
    ld a, [hl+]                                   ; $4485: $2a
    ld h, [hl]                                    ; $4486: $66
    ld l, a                                       ; $4487: $6f
    add hl, de                                    ; $4488: $19
    ld a, l                                       ; $4489: $7d
    ld [$d338], a                                 ; $448a: $ea $38 $d3
    ld a, h                                       ; $448d: $7c
    ld [$d339], a                                 ; $448e: $ea $39 $d3
    ld hl, $d33e                                  ; $4491: $21 $3e $d3
    ld a, [hl+]                                   ; $4494: $2a
    ld d, [hl]                                    ; $4495: $56
    ld e, a                                       ; $4496: $5f
    ld hl, $d33a                                  ; $4497: $21 $3a $d3
    ld a, [hl+]                                   ; $449a: $2a
    ld h, [hl]                                    ; $449b: $66
    ld l, a                                       ; $449c: $6f
    add hl, de                                    ; $449d: $19
    ld a, l                                       ; $449e: $7d
    ld [$d33a], a                                 ; $449f: $ea $3a $d3
    ld a, h                                       ; $44a2: $7c
    ld [$d33b], a                                 ; $44a3: $ea $3b $d3
    ld hl, $d337                                  ; $44a6: $21 $37 $d3
    dec [hl]                                      ; $44a9: $35
    ld a, [hl]                                    ; $44aa: $7e
    or a                                          ; $44ab: $b7
    jr nz, jr_03b_44ba                            ; $44ac: $20 $0c

    ld hl, $4433                                  ; $44ae: $21 $33 $44
    call Call_000_2449                            ; $44b1: $cd $49 $24
    rst $18                                       ; $44b4: $df

    db $22, $12

    rst $18                                       ; $44b7: $df

    db $1e, $12

jr_03b_44ba:
    ld a, [$d344]                                 ; $44ba: $fa $44 $d3
    and $0f                                       ; $44bd: $e6 $0f
    add a                                         ; $44bf: $87
    ld hl, $44da                                  ; $44c0: $21 $da $44
    add l                                         ; $44c3: $85
    ld l, a                                       ; $44c4: $6f
    jr nc, jr_03b_44c8                            ; $44c5: $30 $01

    inc h                                         ; $44c7: $24

jr_03b_44c8:
    ld a, [hl+]                                   ; $44c8: $2a
    ld h, [hl]                                    ; $44c9: $66
    ld l, a                                       ; $44ca: $6f
    ld a, [$d339]                                 ; $44cb: $fa $39 $d3
    ld d, a                                       ; $44ce: $57
    ld a, [$d33b]                                 ; $44cf: $fa $3b $d3
    ld e, a                                       ; $44d2: $5f
    ld bc, $03c0                                  ; $44d3: $01 $c0 $03
    call Call_000_26ea                            ; $44d6: $cd $ea $26
    ret                                           ; $44d9: $c9


    ld a, [$fa44]                                 ; $44da: $fa $44 $fa
    ld b, h                                       ; $44dd: $44

    db $fa, $44

    inc bc                                        ; $44e0: $03
    ld b, l                                       ; $44e1: $45

    db $10, $45

    db $10                                        ; $44e4: $10
    ld b, l                                       ; $44e5: $45

    db $21, $45

    db $21                                        ; $44e8: $21
    ld b, l                                       ; $44e9: $45

    db $3a, $45

    ld a, [hl-]                                   ; $44ec: $3a
    ld b, l                                       ; $44ed: $45
    ld a, [hl-]                                   ; $44ee: $3a
    ld b, l                                       ; $44ef: $45
    ld a, [hl-]                                   ; $44f0: $3a
    ld b, l                                       ; $44f1: $45
    ld a, [hl-]                                   ; $44f2: $3a
    ld b, l                                       ; $44f3: $45
    ld a, [hl-]                                   ; $44f4: $3a
    ld b, l                                       ; $44f5: $45
    ld a, [hl-]                                   ; $44f6: $3a
    ld b, l                                       ; $44f7: $45
    ld a, [hl-]                                   ; $44f8: $3a
    ld b, l                                       ; $44f9: $45

    db $40, $50, $00, $00, $40, $58, $02, $00, $80

    ld b, b                                       ; $4503: $40
    ld c, b                                       ; $4504: $48
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    ld b, b                                       ; $4507: $40
    ld d, b                                       ; $4508: $50
    ld [bc], a                                    ; $4509: $02
    nop                                           ; $450a: $00
    ld b, b                                       ; $450b: $40
    ld e, b                                       ; $450c: $58
    inc b                                         ; $450d: $04
    nop                                           ; $450e: $00
    add b                                         ; $450f: $80

    db $40, $48, $00, $00, $40, $50, $02, $00, $40, $58, $04, $00, $40, $60, $06, $00
    db $80, $40, $40, $00, $00, $40, $48, $02, $00, $40, $50, $04, $00, $40, $58, $06
    db $00, $40, $60, $08, $00, $40, $68, $0a, $00, $80, $40, $38, $00, $00, $40, $40
    db $02, $00, $40, $48, $04, $00, $40, $50, $06, $00, $40, $58, $08, $00, $40, $60
    db $0a, $00, $40, $68, $0c, $00, $40, $70, $0e, $00, $80

    ld b, $51                                     ; $455b: $06 $51
    ld h, b                                       ; $455d: $60
    ld b, [hl]                                    ; $455e: $46

    db $04, $11, $20, $47

    ld b, $11                                     ; $4563: $06 $11
    and b                                         ; $4565: $a0
    ld b, a                                       ; $4566: $47
    ld [$6021], sp                                ; $4567: $08 $21 $60
    ld c, b                                       ; $456a: $48
    inc b                                         ; $456b: $04
    ld sp, $4960                                  ; $456c: $31 $60 $49
    inc b                                         ; $456f: $04
    ld [hl-], a                                   ; $4570: $32
    ldh [rOBP1], a                                ; $4571: $e0 $49
    ld [$6031], sp                                ; $4573: $08 $31 $60
    ld c, d                                       ; $4576: $4a
    ld [$6051], sp                                ; $4577: $08 $51 $60
    ld c, e                                       ; $457a: $4b

    db $08, $00, $60, $4c

    ld [$6000], sp                                ; $457f: $08 $00 $60
    ld c, l                                       ; $4582: $4d
    ld [$6000], sp                                ; $4583: $08 $00 $60
    ld c, [hl]                                    ; $4586: $4e

    db $08, $00, $60, $4f

    ld [$6032], sp                                ; $458b: $08 $32 $60
    ld d, b                                       ; $458e: $50
    ld b, $32                                     ; $458f: $06 $32
    ld h, b                                       ; $4591: $60
    ld d, c                                       ; $4592: $51

    db $08, $42, $20, $52

    ld [$2042], sp                                ; $4597: $08 $42 $20
    ld l, d                                       ; $459a: $6a

    db $04, $42, $a0, $53

    ld [$2042], sp                                ; $459f: $08 $42 $20
    ld d, h                                       ; $45a2: $54

    db $06, $42, $20, $55

    ld [$e010], sp                                ; $45a7: $08 $10 $e0
    ld d, l                                       ; $45aa: $55
    ld [$e060], sp                                ; $45ab: $08 $60 $e0
    ld d, a                                       ; $45ae: $57

    db $08, $60, $e0, $58

    ld [$e060], sp                                ; $45b3: $08 $60 $e0
    ld e, c                                       ; $45b6: $59
    ld [$e060], sp                                ; $45b7: $08 $60 $e0
    ld e, d                                       ; $45ba: $5a
    ld [$e001], sp                                ; $45bb: $08 $01 $e0
    ld e, e                                       ; $45be: $5b
    ld [$e032], sp                                ; $45bf: $08 $32 $e0
    ld e, h                                       ; $45c2: $5c
    ld [$e002], sp                                ; $45c3: $08 $02 $e0
    ld e, l                                       ; $45c6: $5d
    ld [$e002], sp                                ; $45c7: $08 $02 $e0
    ld e, [hl]                                    ; $45ca: $5e
    ld [$e002], sp                                ; $45cb: $08 $02 $e0
    ld e, a                                       ; $45ce: $5f
    ld [$e042], sp                                ; $45cf: $08 $42 $e0
    ld h, b                                       ; $45d2: $60
    ld [$2000], sp                                ; $45d3: $08 $00 $20
    ld [hl], c                                    ; $45d6: $71
    ld b, $52                                     ; $45d7: $06 $52
    ldh [$61], a                                  ; $45d9: $e0 $61
    ld [$a002], sp                                ; $45db: $08 $02 $a0
    ld h, d                                       ; $45de: $62

    db $08, $02, $a0, $63

    ld [$a002], sp                                ; $45e3: $08 $02 $a0
    ld h, h                                       ; $45e6: $64
    ld [$a002], sp                                ; $45e7: $08 $02 $a0
    ld h, l                                       ; $45ea: $65

    db $08, $42, $a0, $66

    ld [$2032], sp                                ; $45ef: $08 $32 $20
    ld l, c                                       ; $45f2: $69
    ld [$2000], sp                                ; $45f3: $08 $00 $20
    ld l, e                                       ; $45f6: $6b
    ld [$2042], sp                                ; $45f7: $08 $42 $20
    ld [hl], b                                    ; $45fa: $70
    ld [$2000], sp                                ; $45fb: $08 $00 $20
    ld l, l                                       ; $45fe: $6d
    ld [$2000], sp                                ; $45ff: $08 $00 $20
    ld l, [hl]                                    ; $4602: $6e
    ld [$2000], sp                                ; $4603: $08 $00 $20
    ld l, a                                       ; $4606: $6f
    inc b                                         ; $4607: $04
    ld b, d                                       ; $4608: $42
    jr nz, jr_03b_465e                            ; $4609: $20 $53

    db $02, $01, $00, $68

    ld [bc], a                                    ; $460f: $02
    ld bc, $6820                                  ; $4610: $01 $20 $68
    ld [bc], a                                    ; $4613: $02
    ld bc, $6840                                  ; $4614: $01 $40 $68
    ld [bc], a                                    ; $4617: $02
    ld bc, $6860                                  ; $4618: $01 $60 $68
    ld [bc], a                                    ; $461b: $02
    ld bc, $6880                                  ; $461c: $01 $80 $68
    ld [bc], a                                    ; $461f: $02
    ld bc, $68a0                                  ; $4620: $01 $a0 $68
    ld [bc], a                                    ; $4623: $02
    ld bc, $68c0                                  ; $4624: $01 $c0 $68
    inc bc                                        ; $4627: $03
    ld bc, $67a0                                  ; $4628: $01 $a0 $67
    inc bc                                        ; $462b: $03
    ld bc, $67c0                                  ; $462c: $01 $c0 $67
    inc bc                                        ; $462f: $03
    ld bc, $67e0                                  ; $4630: $01 $e0 $67
    inc bc                                        ; $4633: $03
    ld bc, $6800                                  ; $4634: $01 $00 $68
    inc bc                                        ; $4637: $03
    ld bc, $6820                                  ; $4638: $01 $20 $68
    inc bc                                        ; $463b: $03
    ld bc, $6840                                  ; $463c: $01 $40 $68
    inc bc                                        ; $463f: $03
    ld bc, $6860                                  ; $4640: $01 $60 $68
    inc bc                                        ; $4643: $03
    ld bc, $6880                                  ; $4644: $01 $80 $68
    inc bc                                        ; $4647: $03
    ld bc, $68a0                                  ; $4648: $01 $a0 $68
    inc bc                                        ; $464b: $03
    ld bc, $68c0                                  ; $464c: $01 $c0 $68
    db $01                                        ; $464f: $01
    db $01                                        ; $4650: $01

    db $e0, $68

    ld bc, $c001                                  ; $4653: $01 $01 $c0
    ld h, a                                       ; $4656: $67
    nop                                           ; $4657: $00
    nop                                           ; $4658: $00
    nop                                           ; $4659: $00
    nop                                           ; $465a: $00
    nop                                           ; $465b: $00
    nop                                           ; $465c: $00
    nop                                           ; $465d: $00

jr_03b_465e:
    nop                                           ; $465e: $00
    nop                                           ; $465f: $00
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    inc bc                                        ; $4662: $03
    inc bc                                        ; $4663: $03
    dec b                                         ; $4664: $05
    ld b, $07                                     ; $4665: $06 $07
    inc b                                         ; $4667: $04
    rlca                                          ; $4668: $07
    inc b                                         ; $4669: $04
    rlca                                          ; $466a: $07
    inc b                                         ; $466b: $04
    rlca                                          ; $466c: $07
    inc b                                         ; $466d: $04
    rlca                                          ; $466e: $07
    inc b                                         ; $466f: $04
    rlca                                          ; $4670: $07
    inc b                                         ; $4671: $04
    rlca                                          ; $4672: $07
    inc b                                         ; $4673: $04
    dec bc                                        ; $4674: $0b
    inc c                                         ; $4675: $0c
    rrca                                          ; $4676: $0f
    ld [$0f0c], sp                                ; $4677: $08 $0c $0f
    rlca                                          ; $467a: $07
    rlca                                          ; $467b: $07
    inc bc                                        ; $467c: $03
    inc bc                                        ; $467d: $03
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    ld hl, sp-$08                                 ; $4682: $f8 $f8
    db $f4                                        ; $4684: $f4
    inc c                                         ; $4685: $0c
    inc d                                         ; $4686: $14
    db $ec                                        ; $4687: $ec
    ld h, h                                       ; $4688: $64
    db $fc                                        ; $4689: $fc
    ld a, l                                       ; $468a: $7d
    db $fd                                        ; $468b: $fd
    cp d                                          ; $468c: $ba
    ld a, e                                       ; $468d: $7b
    push de                                       ; $468e: $d5
    ld [hl], $1b                                  ; $468f: $36 $1b
    db $fc                                        ; $4691: $fc
    ld a, a                                       ; $4692: $7f
    ld hl, sp+$7b                                 ; $4693: $f8 $7b
    db $fc                                        ; $4695: $fc
    db $ed                                        ; $4696: $ed
    ld e, $ef                                     ; $4697: $1e $ef
    rra                                           ; $4699: $1f
    dec bc                                        ; $469a: $0b
    ei                                            ; $469b: $fb
    ld hl, sp-$08                                 ; $469c: $f8 $f8
    ldh a, [$f0]                                  ; $469e: $f0 $f0
    nop                                           ; $46a0: $00
    nop                                           ; $46a1: $00
    nop                                           ; $46a2: $00
    nop                                           ; $46a3: $00
    nop                                           ; $46a4: $00
    nop                                           ; $46a5: $00
    ld bc, $6201                                  ; $46a6: $01 $01 $62
    ld h, e                                       ; $46a9: $63
    sub l                                         ; $46aa: $95
    or $ed                                        ; $46ab: $f6 $ed
    ld e, $f6                                     ; $46ad: $1e $f6
    rrca                                          ; $46af: $0f
    scf                                           ; $46b0: $37
    rst $08                                       ; $46b1: $cf
    ld [hl], l                                    ; $46b2: $75
    call $0cf4                                    ; $46b3: $cd $f4 $0c
    push af                                       ; $46b6: $f5
    dec c                                         ; $46b7: $0d
    ld l, e                                       ; $46b8: $6b
    or a                                          ; $46b9: $b7
    di                                            ; $46ba: $f3
    rst $38                                       ; $46bb: $ff
    rst $18                                       ; $46bc: $df
    rst $18                                       ; $46bd: $df
    inc c                                         ; $46be: $0c
    inc c                                         ; $46bf: $0c
    nop                                           ; $46c0: $00
    nop                                           ; $46c1: $00
    add hl, de                                    ; $46c2: $19
    add hl, de                                    ; $46c3: $19
    rst $30                                       ; $46c4: $f7
    xor $77                                       ; $46c5: $ee $77
    adc [hl]                                      ; $46c7: $8e
    rst $30                                       ; $46c8: $f7
    ld c, $97                                     ; $46c9: $0e $97
    ld l, [hl]                                    ; $46cb: $6e
    or a                                          ; $46cc: $b7
    ld l, [hl]                                    ; $46cd: $6e
    rst $30                                       ; $46ce: $f7
    ld c, $77                                     ; $46cf: $0e $77
    adc [hl]                                      ; $46d1: $8e
    rst $28                                       ; $46d2: $ef
    sbc $eb                                       ; $46d3: $de $eb
    jp c, $9a6b                                   ; $46d5: $da $6b $9a

    db $db                                        ; $46d8: $db
    ld a, [hl-]                                   ; $46d9: $3a
    ld [hl-], a                                   ; $46da: $32
    di                                            ; $46db: $f3
    db $e3                                        ; $46dc: $e3
    db $e3                                        ; $46dd: $e3
    pop bc                                        ; $46de: $c1
    pop bc                                        ; $46df: $c1
    nop                                           ; $46e0: $00

jr_03b_46e1:
    nop                                           ; $46e1: $00
    add b                                         ; $46e2: $80
    add b                                         ; $46e3: $80
    ld b, b                                       ; $46e4: $40
    ret nz                                        ; $46e5: $c0

    ld b, b                                       ; $46e6: $40
    ret nz                                        ; $46e7: $c0

    ld b, b                                       ; $46e8: $40
    ret nz                                        ; $46e9: $c0

    ld b, b                                       ; $46ea: $40
    ret nz                                        ; $46eb: $c0

    ld b, e                                       ; $46ec: $43
    jp $c645                                      ; $46ed: $c3 $45 $c6


    ld c, e                                       ; $46f0: $4b
    call $d956                                    ; $46f1: $cd $56 $d9
    ld d, a                                       ; $46f4: $57
    ret c                                         ; $46f5: $d8

    ld e, a                                       ; $46f6: $5f
    ret c                                         ; $46f7: $d8

    ld c, e                                       ; $46f8: $4b
    call z, $cf4e                                 ; $46f9: $cc $4e $cf

jr_03b_46fc:
    rst $00                                       ; $46fc: $c7
    rst $00                                       ; $46fd: $c7
    add c                                         ; $46fe: $81
    add c                                         ; $46ff: $81
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    nop                                           ; $4707: $00
    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    ret nz                                        ; $470a: $c0

    ret nz                                        ; $470b: $c0

    jr nz, @-$1e                                  ; $470c: $20 $e0

    ret nc                                        ; $470e: $d0

    jr nc, jr_03b_46e1                            ; $470f: $30 $d0

    or b                                          ; $4711: $b0
    or b                                          ; $4712: $b0
    ld [hl], b                                    ; $4713: $70
    ldh [$e0], a                                  ; $4714: $e0 $e0
    ld b, b                                       ; $4716: $40
    ret nz                                        ; $4717: $c0

    and b                                         ; $4718: $a0
    ld h, b                                       ; $4719: $60
    jr nz, jr_03b_46fc                            ; $471a: $20 $e0

    ldh [$e0], a                                  ; $471c: $e0 $e0
    ret nz                                        ; $471e: $c0

    ret nz                                        ; $471f: $c0

    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    rrca                                          ; $4722: $0f
    rrca                                          ; $4723: $0f
    ld d, $19                                     ; $4724: $16 $19
    rra                                           ; $4726: $1f
    db $10                                        ; $4727: $10
    rra                                           ; $4728: $1f
    db $10                                        ; $4729: $10
    inc e                                         ; $472a: $1c
    inc de                                        ; $472b: $13
    dec e                                         ; $472c: $1d
    inc de                                        ; $472d: $13
    rra                                           ; $472e: $1f
    ld de, $101f                                  ; $472f: $11 $1f $10
    rra                                           ; $4732: $1f
    db $10                                        ; $4733: $10

jr_03b_4734:
    inc e                                         ; $4734: $1c
    inc de                                        ; $4735: $13
    dec l                                         ; $4736: $2d
    inc sp                                        ; $4737: $33
    dec sp                                        ; $4738: $3b
    daa                                           ; $4739: $27
    ld h, $3e                                     ; $473a: $26 $3e
    inc a                                         ; $473c: $3c
    inc a                                         ; $473d: $3c
    jr @+$1a                                      ; $473e: $18 $18

    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    nop                                           ; $4743: $00
    ret nz                                        ; $4744: $c0

    ret nz                                        ; $4745: $c0

    and b                                         ; $4746: $a0
    ld h, b                                       ; $4747: $60
    ret nc                                        ; $4748: $d0

    jr nc, jr_03b_4734                            ; $4749: $30 $e9

    add hl, de                                    ; $474b: $19
    ld [$6d9b], a                                 ; $474c: $ea $9b $6d
    sbc [hl]                                      ; $474f: $9e
    db $eb                                        ; $4750: $eb
    inc e                                         ; $4751: $1c
    rst $08                                       ; $4752: $cf
    jr c, @+$1d                                   ; $4753: $38 $1b

    db $fc                                        ; $4755: $fc
    db $fd                                        ; $4756: $fd
    cp $e7                                        ; $4757: $fe $e7
    rst $20                                       ; $4759: $e7
    inc bc                                        ; $475a: $03
    inc bc                                        ; $475b: $03
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
    ld h, b                                       ; $4768: $60
    ld h, b                                       ; $4769: $60
    sub c                                         ; $476a: $91
    pop af                                        ; $476b: $f1
    db $eb                                        ; $476c: $eb
    ld a, [de]                                    ; $476d: $1a
    rst $30                                       ; $476e: $f7
    ld c, $37                                     ; $476f: $0e $37
    adc $77                                       ; $4771: $ce $77
    adc $f7                                       ; $4773: $ce $f7
    ld c, $f7                                     ; $4775: $0e $f7
    ld c, $6b                                     ; $4777: $0e $6b
    or [hl]                                       ; $4779: $b6
    ld a, [c]                                     ; $477a: $f2
    rst $38                                       ; $477b: $ff
    rst $18                                       ; $477c: $df
    rst $18                                       ; $477d: $df
    dec c                                         ; $477e: $0d
    dec c                                         ; $477f: $0d
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
    or b                                          ; $478a: $b0
    or b                                          ; $478b: $b0
    ld c, b                                       ; $478c: $48
    ld hl, sp-$18                                 ; $478d: $f8 $e8
    jr jr_03b_47c9                                ; $478f: $18 $38

    ld hl, sp+$70                                 ; $4791: $f8 $70
    ldh a, [rLCDC]                                ; $4793: $f0 $40
    ret nz                                        ; $4795: $c0

    ld b, b                                       ; $4796: $40
    ret nz                                        ; $4797: $c0

    ld b, b                                       ; $4798: $40
    ret nz                                        ; $4799: $c0

    ld b, b                                       ; $479a: $40
    ret nz                                        ; $479b: $c0

    ret nz                                        ; $479c: $c0

    ret nz                                        ; $479d: $c0

    add b                                         ; $479e: $80
    add b                                         ; $479f: $80
    nop                                           ; $47a0: $00
    nop                                           ; $47a1: $00
    rra                                           ; $47a2: $1f
    rra                                           ; $47a3: $1f
    ld l, $31                                     ; $47a4: $2e $31
    ccf                                           ; $47a6: $3f
    jr nz, @+$31                                  ; $47a7: $20 $2f

    jr nc, jr_03b_47e7                            ; $47a9: $30 $3c

    inc sp                                        ; $47ab: $33
    dec e                                         ; $47ac: $1d
    inc de                                        ; $47ad: $13
    rra                                           ; $47ae: $1f
    ld de, $101f                                  ; $47af: $11 $1f $10
    rra                                           ; $47b2: $1f
    db $10                                        ; $47b3: $10
    inc e                                         ; $47b4: $1c
    inc de                                        ; $47b5: $13
    dec e                                         ; $47b6: $1d
    inc de                                        ; $47b7: $13
    rra                                           ; $47b8: $1f
    db $10                                        ; $47b9: $10
    db $10                                        ; $47ba: $10
    rra                                           ; $47bb: $1f
    rra                                           ; $47bc: $1f
    rra                                           ; $47bd: $1f
    rrca                                          ; $47be: $0f
    rrca                                          ; $47bf: $0f
    nop                                           ; $47c0: $00
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    nop                                           ; $47c3: $00
    ret nz                                        ; $47c4: $c0

    ret nz                                        ; $47c5: $c0

    or b                                          ; $47c6: $b0
    ld [hl], b                                    ; $47c7: $70
    jp hl                                         ; $47c8: $e9


jr_03b_47c9:
    add hl, de                                    ; $47c9: $19
    ld [hl], a                                    ; $47ca: $77
    adc [hl]                                      ; $47cb: $8e
    cp d                                          ; $47cc: $ba
    rst $00                                       ; $47cd: $c7
    ld a, e                                       ; $47ce: $7b
    add a                                         ; $47cf: $87
    rst $30                                       ; $47d0: $f7
    rrca                                          ; $47d1: $0f
    xor $1f                                       ; $47d2: $ee $1f
    scf                                           ; $47d4: $37
    adc $f7                                       ; $47d5: $ce $f7
    adc $e7                                       ; $47d7: $ce $e7
    ld e, $1e                                     ; $47d9: $1e $1e
    rst $38                                       ; $47db: $ff
    ei                                            ; $47dc: $fb
    ei                                            ; $47dd: $fb
    pop hl                                        ; $47de: $e1
    pop hl                                        ; $47df: $e1
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    nop                                           ; $47e3: $00
    nop                                           ; $47e4: $00
    nop                                           ; $47e5: $00
    nop                                           ; $47e6: $00

jr_03b_47e7:
    nop                                           ; $47e7: $00
    add b                                         ; $47e8: $80
    add b                                         ; $47e9: $80
    ld e, e                                       ; $47ea: $5b
    db $db                                        ; $47eb: $db
    ld [hl], h                                    ; $47ec: $74
    rst $28                                       ; $47ed: $ef
    rst $38                                       ; $47ee: $ff
    ldh [$73], a                                  ; $47ef: $e0 $73
    rst $28                                       ; $47f1: $ef
    ld [hl], a                                    ; $47f2: $77
    rst $28                                       ; $47f3: $ef
    ld [hl], l                                    ; $47f4: $75
    db $ed                                        ; $47f5: $ed
    ld [hl], l                                    ; $47f6: $75
    db $ed                                        ; $47f7: $ed
    ld [hl], h                                    ; $47f8: $74
    db $ec                                        ; $47f9: $ec
    ld h, h                                       ; $47fa: $64
    db $fc                                        ; $47fb: $fc
    db $fc                                        ; $47fc: $fc
    db $fc                                        ; $47fd: $fc
    sbc b                                         ; $47fe: $98
    sbc b                                         ; $47ff: $98
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    ld [bc], a                                    ; $4802: $02
    ld [bc], a                                    ; $4803: $02
    dec b                                         ; $4804: $05
    rlca                                          ; $4805: $07
    add hl, bc                                    ; $4806: $09
    rrca                                          ; $4807: $0f
    dec c                                         ; $4808: $0d
    dec bc                                        ; $4809: $0b
    dec c                                         ; $480a: $0d
    dec bc                                        ; $480b: $0b
    or l                                          ; $480c: $b5
    cp e                                          ; $480d: $bb
    db $dd                                        ; $480e: $dd
    db $e3                                        ; $480f: $e3
    cp l                                          ; $4810: $bd
    jp $9b65                                      ; $4811: $c3 $65 $9b


    ld l, l                                       ; $4814: $6d
    sbc e                                         ; $4815: $9b
    cp l                                          ; $4816: $bd
    jp $e3dd                                      ; $4817: $c3 $dd $e3


    ld [hl], c                                    ; $481a: $71
    ld a, a                                       ; $481b: $7f
    ccf                                           ; $481c: $3f
    ccf                                           ; $481d: $3f
    ld c, $0e                                     ; $481e: $0e $0e
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    ld h, b                                       ; $4828: $60
    ld h, b                                       ; $4829: $60
    ret nc                                        ; $482a: $d0

    or b                                          ; $482b: $b0
    sub c                                         ; $482c: $91
    pop af                                        ; $482d: $f1
    ld a, [c]                                     ; $482e: $f2
    di                                            ; $482f: $f3
    push de                                       ; $4830: $d5
    or $9b                                        ; $4831: $f6 $9b
    db $fc                                        ; $4833: $fc
    db $db                                        ; $4834: $db
    cp h                                          ; $4835: $bc
    rst $18                                       ; $4836: $df
    cp h                                          ; $4837: $bc
    push de                                       ; $4838: $d5

jr_03b_4839:
    or [hl]                                       ; $4839: $b6
    sub a                                         ; $483a: $97
    rst $30                                       ; $483b: $f7
    di                                            ; $483c: $f3
    di                                            ; $483d: $f3
    ld h, b                                       ; $483e: $60
    ld h, b                                       ; $483f: $60
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
    ld h, b                                       ; $484a: $60
    ld h, b                                       ; $484b: $60
    sub b                                         ; $484c: $90
    ldh a, [$e8]                                  ; $484d: $f0 $e8
    jr jr_03b_4839                                ; $484f: $18 $e8

    ret c                                         ; $4851: $d8

    ld e, b                                       ; $4852: $58
    cp b                                          ; $4853: $b8
    ldh a, [rSVBK]                                ; $4854: $f0 $70
    and b                                         ; $4856: $a0
    ld h, b                                       ; $4857: $60
    ret nc                                        ; $4858: $d0

    jr nc, jr_03b_486b                            ; $4859: $30 $10

    ldh a, [$f0]                                  ; $485b: $f0 $f0
    ldh a, [$e0]                                  ; $485d: $f0 $e0
    ldh [rP1], a                                  ; $485f: $e0 $00
    nop                                           ; $4861: $00
    add hl, sp                                    ; $4862: $39
    add hl, sp                                    ; $4863: $39
    ld d, [hl]                                    ; $4864: $56
    ld l, a                                       ; $4865: $6f
    ld [hl], a                                    ; $4866: $77
    ld c, [hl]                                    ; $4867: $4e
    ld [hl], a                                    ; $4868: $77
    ld c, [hl]                                    ; $4869: $4e
    ld [hl], a                                    ; $486a: $77

jr_03b_486b:
    ld c, [hl]                                    ; $486b: $4e
    ld [hl], l                                    ; $486c: $75
    ld c, [hl]                                    ; $486d: $4e
    ld a, a                                       ; $486e: $7f
    ld b, b                                       ; $486f: $40
    ld a, a                                       ; $4870: $7f
    ld b, b                                       ; $4871: $40
    ld a, c                                       ; $4872: $79
    ld b, [hl]                                    ; $4873: $46
    ld [hl], a                                    ; $4874: $77
    ld c, [hl]                                    ; $4875: $4e
    or a                                          ; $4876: $b7
    adc $e7                                       ; $4877: $ce $e7
    sbc [hl]                                      ; $4879: $9e
    adc [hl]                                      ; $487a: $8e
    rst $38                                       ; $487b: $ff
    ei                                            ; $487c: $fb
    ei                                            ; $487d: $fb
    ld [hl], c                                    ; $487e: $71
    ld [hl], c                                    ; $487f: $71
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    ret nz                                        ; $4882: $c0

    ret nz                                        ; $4883: $c0

    and b                                         ; $4884: $a0
    ld h, b                                       ; $4885: $60
    and b                                         ; $4886: $a0
    ld h, b                                       ; $4887: $60
    and b                                         ; $4888: $a0
    ld h, b                                       ; $4889: $60
    and [hl]                                      ; $488a: $a6
    ld h, [hl]                                    ; $488b: $66
    cp c                                          ; $488c: $b9
    ld a, a                                       ; $488d: $7f
    xor a                                         ; $488e: $af
    ld [hl], b                                    ; $488f: $70
    or e                                          ; $4890: $b3
    ld l, h                                       ; $4891: $6c
    rst $10                                       ; $4892: $d7
    ld l, h                                       ; $4893: $6c
    rst $38                                       ; $4894: $ff
    ld b, b                                       ; $4895: $40
    rst $18                                       ; $4896: $df
    ld h, b                                       ; $4897: $60
    xor $71                                       ; $4898: $ee $71
    ld sp, $ffff                                  ; $489a: $31 $ff $ff
    rst $38                                       ; $489d: $ff
    adc $ce                                       ; $489e: $ce $ce
    nop                                           ; $48a0: $00
    nop                                           ; $48a1: $00
    ld h, b                                       ; $48a2: $60
    ld h, b                                       ; $48a3: $60
    ret nc                                        ; $48a4: $d0

    or b                                          ; $48a5: $b0
    ret nc                                        ; $48a6: $d0

    or b                                          ; $48a7: $b0
    ret nc                                        ; $48a8: $d0

    or b                                          ; $48a9: $b0
    pop de                                        ; $48aa: $d1
    or c                                          ; $48ab: $b1
    sub $b7                                       ; $48ac: $d6 $b7
    db $db                                        ; $48ae: $db
    cp h                                          ; $48af: $bc
    rst $10                                       ; $48b0: $d7
    cp e                                          ; $48b1: $bb
    db $dd                                        ; $48b2: $dd
    or d                                          ; $48b3: $b2
    rst $18                                       ; $48b4: $df
    or c                                          ; $48b5: $b1
    sbc $b1                                       ; $48b6: $de $b1
    rst $10                                       ; $48b8: $d7
    cp b                                          ; $48b9: $b8
    sbc h                                         ; $48ba: $9c
    rst $38                                       ; $48bb: $ff
    rst $38                                       ; $48bc: $ff
    rst $38                                       ; $48bd: $ff
    ld h, e                                       ; $48be: $63
    ld h, e                                       ; $48bf: $63
    nop                                           ; $48c0: $00
    nop                                           ; $48c1: $00
    nop                                           ; $48c2: $00
    nop                                           ; $48c3: $00
    nop                                           ; $48c4: $00
    nop                                           ; $48c5: $00
    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    ld b, $06                                     ; $48c8: $06 $06
    adc l                                         ; $48ca: $8d
    adc e                                         ; $48cb: $8b
    ld c, a                                       ; $48cc: $4f
    ret                                           ; $48cd: $c9


    xor a                                         ; $48ce: $af
    ld l, a                                       ; $48cf: $6f
    xor l                                         ; $48d0: $ad
    ld l, a                                       ; $48d1: $6f
    ld l, c                                       ; $48d2: $69
    rst $28                                       ; $48d3: $ef
    call $8dcb                                    ; $48d4: $cd $cb $8d
    adc e                                         ; $48d7: $8b
    ld c, l                                       ; $48d8: $4d
    bit 1, c                                      ; $48d9: $cb $49
    rst $08                                       ; $48db: $cf
    rst $08                                       ; $48dc: $cf
    rst $08                                       ; $48dd: $cf
    add [hl]                                      ; $48de: $86
    add [hl]                                      ; $48df: $86
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
    ret nz                                        ; $48ea: $c0

    ret nz                                        ; $48eb: $c0

    cp b                                          ; $48ec: $b8
    ld a, b                                       ; $48ed: $78
    db $f4                                        ; $48ee: $f4
    inc c                                         ; $48ef: $0c
    ld a, [$9a06]                                 ; $48f0: $fa $06 $9a
    ld h, [hl]                                    ; $48f3: $66
    xor d                                         ; $48f4: $aa
    halt                                          ; $48f5: $76
    cp d                                          ; $48f6: $ba
    halt                                          ; $48f7: $76
    cp d                                          ; $48f8: $ba
    halt                                          ; $48f9: $76
    ld [hl-], a                                   ; $48fa: $32
    cp $fe                                        ; $48fb: $fe $fe
    cp $cc                                        ; $48fd: $fe $cc
    call z, $0000                                 ; $48ff: $cc $00 $00
    rrca                                          ; $4902: $0f
    rrca                                          ; $4903: $0f
    ld d, $19                                     ; $4904: $16 $19
    cpl                                           ; $4906: $2f
    jr nc, jr_03b_4962                            ; $4907: $30 $59

    ld h, [hl]                                    ; $4909: $66
    or [hl]                                       ; $490a: $b6
    rst $08                                       ; $490b: $cf
    rst $28                                       ; $490c: $ef
    sbc a                                         ; $490d: $9f
    ld sp, hl                                     ; $490e: $f9
    sbc c                                         ; $490f: $99
    pop af                                        ; $4910: $f1
    sub c                                         ; $4911: $91
    ld a, [c]                                     ; $4912: $f2
    sub e                                         ; $4913: $93
    db $ed                                        ; $4914: $ed
    sbc [hl]                                      ; $4915: $9e
    cp a                                          ; $4916: $bf
    ret nz                                        ; $4917: $c0

    sbc $e1                                       ; $4918: $de $e1
    ld h, c                                       ; $491a: $61
    ld a, a                                       ; $491b: $7f
    ccf                                           ; $491c: $3f
    ccf                                           ; $491d: $3f
    ld e, $1e                                     ; $491e: $1e $1e
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    add b                                         ; $4924: $80
    add b                                         ; $4925: $80
    ld b, b                                       ; $4926: $40
    ret nz                                        ; $4927: $c0

    and b                                         ; $4928: $a0
    ld h, b                                       ; $4929: $60
    ldh a, [$30]                                  ; $492a: $f0 $30
    xor $5e                                       ; $492c: $ee $5e
    db $fd                                        ; $492e: $fd
    ld b, e                                       ; $492f: $43
    cp $41                                        ; $4930: $fe $41
    and $59                                       ; $4932: $e6 $59
    ld [$6e5d], a                                 ; $4934: $ea $5d $6e
    db $dd                                        ; $4937: $dd
    ld l, [hl]                                    ; $4938: $6e
    db $dd                                        ; $4939: $dd
    call z, $ffff                                 ; $493a: $cc $ff $ff
    rst $38                                       ; $493d: $ff
    inc sp                                        ; $493e: $33
    inc sp                                        ; $493f: $33
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
    inc c                                         ; $494a: $0c
    inc c                                         ; $494b: $0c
    ld [hl-], a                                   ; $494c: $32
    ld a, $5d                                     ; $494d: $3e $5d
    ld h, e                                       ; $494f: $63
    cp l                                          ; $4950: $bd
    db $db                                        ; $4951: $db
    db $eb                                        ; $4952: $eb
    sub a                                         ; $4953: $97
    cp $8e                                        ; $4954: $fe $8e
    db $f4                                        ; $4956: $f4
    adc h                                         ; $4957: $8c
    cp d                                          ; $4958: $ba
    add $e2                                       ; $4959: $c6 $e2
    cp $be                                        ; $495b: $fe $be
    cp [hl]                                       ; $495d: $be
    inc e                                         ; $495e: $1c
    inc e                                         ; $495f: $1c
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00

jr_03b_4962:
    ld [hl], b                                    ; $4962: $70
    ld [hl], b                                    ; $4963: $70
    xor h                                         ; $4964: $ac
    call c, $86fa                                 ; $4965: $dc $fa $86
    db $fd                                        ; $4968: $fd
    add e                                         ; $4969: $83
    and $99                                       ; $496a: $e6 $99
    db $eb                                        ; $496c: $eb
    sbc h                                         ; $496d: $9c
    rst $38                                       ; $496e: $ff
    add b                                         ; $496f: $80
    cp $81                                        ; $4970: $fe $81
    db $fd                                        ; $4972: $fd
    add e                                         ; $4973: $83
    and $99                                       ; $4974: $e6 $99
    ld [$fe9d], a                                 ; $4976: $ea $9d $fe
    add c                                         ; $4979: $81
    add c                                         ; $497a: $81
    rst $38                                       ; $497b: $ff
    rst $38                                       ; $497c: $ff
    rst $38                                       ; $497d: $ff
    ld a, [hl]                                    ; $497e: $7e
    ld a, [hl]                                    ; $497f: $7e
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    ld bc, $0201                                  ; $4986: $01 $01 $02
    inc bc                                        ; $4989: $03
    adc a                                         ; $498a: $8f
    adc [hl]                                      ; $498b: $8e
    ld [hl], e                                    ; $498c: $73
    cp $5e                                        ; $498d: $fe $5e
    db $e3                                        ; $498f: $e3
    push hl                                       ; $4990: $e5
    db $db                                        ; $4991: $db
    xor a                                         ; $4992: $af
    reti                                          ; $4993: $d9


    rst $38                                       ; $4994: $ff
    add c                                         ; $4995: $81
    cp a                                          ; $4996: $bf
    pop bc                                        ; $4997: $c1
    db $dd                                        ; $4998: $dd
    db $e3                                        ; $4999: $e3
    db $e3                                        ; $499a: $e3
    rst $38                                       ; $499b: $ff
    ccf                                           ; $499c: $3f
    ccf                                           ; $499d: $3f
    inc e                                         ; $499e: $1c
    inc e                                         ; $499f: $1c
    nop                                           ; $49a0: $00
    nop                                           ; $49a1: $00
    jr nc, jr_03b_49d4                            ; $49a2: $30 $30

    add sp, -$28                                  ; $49a4: $e8 $d8
    ld l, b                                       ; $49a6: $68
    sbc b                                         ; $49a7: $98
    add sp, $18                                   ; $49a8: $e8 $18
    xor b                                         ; $49aa: $a8
    ld e, b                                       ; $49ab: $58
    db $eb                                        ; $49ac: $eb
    ld e, e                                       ; $49ad: $5b
    db $ed                                        ; $49ae: $ed
    ld e, $2b                                     ; $49af: $1e $2b
    db $dd                                        ; $49b1: $dd
    xor $d9                                       ; $49b2: $ee $d9
    rst $28                                       ; $49b4: $ef
    ret c                                         ; $49b5: $d8

    ld a, e                                       ; $49b6: $7b
    sbc h                                         ; $49b7: $9c
    db $dd                                        ; $49b8: $dd
    ld a, $36                                     ; $49b9: $3e $36
    rst $30                                       ; $49bb: $f7
    db $e3                                        ; $49bc: $e3
    db $e3                                        ; $49bd: $e3
    pop bc                                        ; $49be: $c1
    pop bc                                        ; $49bf: $c1
    nop                                           ; $49c0: $00
    nop                                           ; $49c1: $00
    nop                                           ; $49c2: $00
    nop                                           ; $49c3: $00
    ld [hl], $36                                  ; $49c4: $36 $36
    ld l, l                                       ; $49c6: $6d
    ld e, e                                       ; $49c7: $5b
    ld a, l                                       ; $49c8: $7d
    ld c, e                                       ; $49c9: $4b
    db $dd                                        ; $49ca: $dd
    db $eb                                        ; $49cb: $eb
    dec l                                         ; $49cc: $2d
    di                                            ; $49cd: $f3
    push de                                       ; $49ce: $d5
    dec sp                                        ; $49cf: $3b
    db $dd                                        ; $49d0: $dd
    cp e                                          ; $49d1: $bb
    cp l                                          ; $49d2: $bd
    ld a, e                                       ; $49d3: $7b

jr_03b_49d4:
    push af                                       ; $49d4: $f5
    ei                                            ; $49d5: $fb
    ld l, e                                       ; $49d6: $6b
    rst $30                                       ; $49d7: $f7
    cp d                                          ; $49d8: $ba
    ld h, [hl]                                    ; $49d9: $66
    ld h, $fe                                     ; $49da: $26 $fe
    db $fc                                        ; $49dc: $fc
    db $fc                                        ; $49dd: $fc
    ret c                                         ; $49de: $d8

    ret c                                         ; $49df: $d8

    nop                                           ; $49e0: $00
    nop                                           ; $49e1: $00
    nop                                           ; $49e2: $00
    nop                                           ; $49e3: $00
    ld bc, $0201                                  ; $49e4: $01 $01 $02
    inc bc                                        ; $49e7: $03
    dec b                                         ; $49e8: $05
    ld b, $07                                     ; $49e9: $06 $07
    inc b                                         ; $49eb: $04
    dec bc                                        ; $49ec: $0b
    inc c                                         ; $49ed: $0c
    ld c, $09                                     ; $49ee: $0e $09
    ld c, $09                                     ; $49f0: $0e $09
    ld c, $09                                     ; $49f2: $0e $09
    rrca                                          ; $49f4: $0f
    ld [$0c0b], sp                                ; $49f5: $08 $0b $0c
    dec c                                         ; $49f8: $0d
    ld c, $06                                     ; $49f9: $0e $06
    rlca                                          ; $49fb: $07
    inc bc                                        ; $49fc: $03
    inc bc                                        ; $49fd: $03
    ld bc, $0001                                  ; $49fe: $01 $01 $00
    nop                                           ; $4a01: $00
    ld hl, sp-$08                                 ; $4a02: $f8 $f8
    ld l, [hl]                                    ; $4a04: $6e
    sbc [hl]                                      ; $4a05: $9e
    ei                                            ; $4a06: $fb
    rlca                                          ; $4a07: $07
    ei                                            ; $4a08: $fb
    rlca                                          ; $4a09: $07
    sbc l                                         ; $4a0a: $9d
    ld h, e                                       ; $4a0b: $63
    dec l                                         ; $4a0c: $2d
    di                                            ; $4a0d: $f3

jr_03b_4a0e:
    ld a, l                                       ; $4a0e: $7d
    di                                            ; $4a0f: $f3
    db $dd                                        ; $4a10: $dd
    db $d3                                        ; $4a11: $d3
    db $dd                                        ; $4a12: $dd
    db $d3                                        ; $4a13: $d3
    ld l, l                                       ; $4a14: $6d
    di                                            ; $4a15: $f3
    ei                                            ; $4a16: $fb
    rlca                                          ; $4a17: $07
    di                                            ; $4a18: $f3
    rrca                                          ; $4a19: $0f
    rrca                                          ; $4a1a: $0f
    rst $38                                       ; $4a1b: $ff
    db $fc                                        ; $4a1c: $fc
    db $fc                                        ; $4a1d: $fc
    ldh a, [$f0]                                  ; $4a1e: $f0 $f0
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    ld a, a                                       ; $4a22: $7f
    ld a, a                                       ; $4a23: $7f
    cp l                                          ; $4a24: $bd
    jp $99e6                                      ; $4a25: $c3 $e6 $99


    ld e, [hl]                                    ; $4a28: $5e
    cp c                                          ; $4a29: $b9
    sub $39                                       ; $4a2a: $d6 $39
    push hl                                       ; $4a2c: $e5
    dec de                                        ; $4a2d: $1b
    cp $01                                        ; $4a2e: $fe $01
    rst $00                                       ; $4a30: $c7
    jr c, jr_03b_4a0e                             ; $4a31: $38 $db

    inc a                                         ; $4a33: $3c
    rst $18                                       ; $4a34: $df
    inc a                                         ; $4a35: $3c
    rst $38                                       ; $4a36: $ff
    nop                                           ; $4a37: $00
    ld a, [hl]                                    ; $4a38: $7e
    add c                                         ; $4a39: $81

jr_03b_4a3a:
    add b                                         ; $4a3a: $80
    rst $38                                       ; $4a3b: $ff
    rst $38                                       ; $4a3c: $ff
    rst $38                                       ; $4a3d: $ff
    ld a, a                                       ; $4a3e: $7f
    ld a, a                                       ; $4a3f: $7f
    nop                                           ; $4a40: $00
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    nop                                           ; $4a43: $00
    add b                                         ; $4a44: $80
    add b                                         ; $4a45: $80
    add b                                         ; $4a46: $80
    add b                                         ; $4a47: $80
    add b                                         ; $4a48: $80
    add b                                         ; $4a49: $80
    add b                                         ; $4a4a: $80
    add b                                         ; $4a4b: $80
    add b                                         ; $4a4c: $80
    add b                                         ; $4a4d: $80
    ret nz                                        ; $4a4e: $c0

    ret nz                                        ; $4a4f: $c0

    ld h, b                                       ; $4a50: $60
    ldh [$a0], a                                  ; $4a51: $e0 $a0
    ld h, b                                       ; $4a53: $60
    and b                                         ; $4a54: $a0
    ld h, b                                       ; $4a55: $60
    and b                                         ; $4a56: $a0
    ld h, b                                       ; $4a57: $60
    jr nz, jr_03b_4a3a                            ; $4a58: $20 $e0

    ldh [$e0], a                                  ; $4a5a: $e0 $e0
    ret nz                                        ; $4a5c: $c0

    ret nz                                        ; $4a5d: $c0

    nop                                           ; $4a5e: $00
    nop                                           ; $4a5f: $00
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    ld [hl], b                                    ; $4a62: $70
    ld [hl], b                                    ; $4a63: $70
    xor b                                         ; $4a64: $a8
    ret c                                         ; $4a65: $d8

    db $f4                                        ; $4a66: $f4
    adc h                                         ; $4a67: $8c
    ld a, [$fe86]                                 ; $4a68: $fa $86 $fe
    add d                                         ; $4a6b: $82
    push hl                                       ; $4a6c: $e5
    sbc e                                         ; $4a6d: $9b
    rst $28                                       ; $4a6e: $ef
    sbc c                                         ; $4a6f: $99
    db $ed                                        ; $4a70: $ed
    sbc e                                         ; $4a71: $9b
    xor $93                                       ; $4a72: $ee $93
    rst $38                                       ; $4a74: $ff
    add d                                         ; $4a75: $82
    ld a, [$f787]                                 ; $4a76: $fa $87 $f7
    adc a                                         ; $4a79: $8f
    adc l                                         ; $4a7a: $8d
    db $fd                                        ; $4a7b: $fd
    ld hl, sp-$08                                 ; $4a7c: $f8 $f8
    ld [hl], b                                    ; $4a7e: $70
    ld [hl], b                                    ; $4a7f: $70
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
    ld [hl], $36                                  ; $4a8a: $36 $36
    call Call_03b_7dfb                            ; $4a8c: $cd $fb $7d
    adc e                                         ; $4a8f: $8b
    sbc l                                         ; $4a90: $9d
    ld l, e                                       ; $4a91: $6b
    cp l                                          ; $4a92: $bd
    ld l, e                                       ; $4a93: $6b
    sbc $29                                       ; $4a94: $de $29
    ei                                            ; $4a96: $fb
    inc c                                         ; $4a97: $0c
    ld [hl], l                                    ; $4a98: $75
    adc [hl]                                      ; $4a99: $8e
    adc [hl]                                      ; $4a9a: $8e
    rst $38                                       ; $4a9b: $ff
    ei                                            ; $4a9c: $fb
    ei                                            ; $4a9d: $fb
    ld [hl], c                                    ; $4a9e: $71
    ld [hl], c                                    ; $4a9f: $71
    nop                                           ; $4aa0: $00
    nop                                           ; $4aa1: $00
    inc b                                         ; $4aa2: $04
    inc b                                         ; $4aa3: $04
    ld a, [bc]                                    ; $4aa4: $0a
    ld c, $12                                     ; $4aa5: $0e $12
    ld e, $1a                                     ; $4aa7: $1e $1a
    ld d, $1b                                     ; $4aa9: $16 $1b
    rla                                           ; $4aab: $17
    ld a, [hl]                                    ; $4aac: $7e
    ld [hl], c                                    ; $4aad: $71
    rst $18                                       ; $4aae: $df
    or b                                          ; $4aaf: $b0
    call c, $ddb3                                 ; $4ab0: $dc $b3 $dd
    or e                                          ; $4ab3: $b3
    ld e, a                                       ; $4ab4: $5f
    or b                                          ; $4ab5: $b0
    rst $18                                       ; $4ab6: $df
    jr nc, @-$22                                  ; $4ab7: $30 $dc

    inc sp                                        ; $4ab9: $33
    inc de                                        ; $4aba: $13
    rst $38                                       ; $4abb: $ff
    rst $38                                       ; $4abc: $ff
    rst $38                                       ; $4abd: $ff
    db $ec                                        ; $4abe: $ec
    db $ec                                        ; $4abf: $ec
    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    jr nc, jr_03b_4af4                            ; $4ac2: $30 $30

    ld l, b                                       ; $4ac4: $68
    ld e, b                                       ; $4ac5: $58
    ld l, b                                       ; $4ac6: $68
    ld e, b                                       ; $4ac7: $58
    ld l, b                                       ; $4ac8: $68
    ld e, b                                       ; $4ac9: $58
    ld l, c                                       ; $4aca: $69
    ld e, c                                       ; $4acb: $59
    xor $df                                       ; $4acc: $ee $df
    ld a, e                                       ; $4ace: $7b
    call c, Call_03b_5bf7                         ; $4acf: $dc $f7 $5b
    db $fd                                        ; $4ad2: $fd
    ld d, d                                       ; $4ad3: $52
    rst $38                                       ; $4ad4: $ff
    ld d, c                                       ; $4ad5: $51
    ld a, [hl]                                    ; $4ad6: $7e
    pop de                                        ; $4ad7: $d1
    rst $30                                       ; $4ad8: $f7
    ret c                                         ; $4ad9: $d8

    call c, Call_03b_7fff                         ; $4ada: $dc $ff $7f
    ld a, a                                       ; $4add: $7f
    inc sp                                        ; $4ade: $33
    inc sp                                        ; $4adf: $33
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    ld a, b                                       ; $4ae2: $78
    ld a, b                                       ; $4ae3: $78
    or [hl]                                       ; $4ae4: $b6
    adc $fd                                       ; $4ae5: $ce $fd
    add e                                         ; $4ae7: $83
    cp $81                                        ; $4ae8: $fe $81
    and a                                         ; $4aea: $a7
    ret c                                         ; $4aeb: $d8

    ld c, e                                       ; $4aec: $4b
    db $fc                                        ; $4aed: $fc
    cp a                                          ; $4aee: $bf
    ld h, b                                       ; $4aef: $60
    cp [hl]                                       ; $4af0: $be
    ld h, c                                       ; $4af1: $61
    ld e, l                                       ; $4af2: $5d
    db $e3                                        ; $4af3: $e3

jr_03b_4af4:
    and [hl]                                      ; $4af4: $a6
    reti                                          ; $4af5: $d9


    xor e                                         ; $4af6: $ab
    call c, $c17e                                 ; $4af7: $dc $7e $c1
    ld b, e                                       ; $4afa: $43
    rst $38                                       ; $4afb: $ff
    rst $38                                       ; $4afc: $ff
    rst $38                                       ; $4afd: $ff
    cp h                                          ; $4afe: $bc
    cp h                                          ; $4aff: $bc
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    ld bc, $8201                                  ; $4b06: $01 $01 $82
    add e                                         ; $4b09: $83
    ld c, a                                       ; $4b0a: $4f
    adc $73                                       ; $4b0b: $ce $73
    cp $5e                                        ; $4b0d: $fe $5e
    db $e3                                        ; $4b0f: $e3
    push hl                                       ; $4b10: $e5
    db $db                                        ; $4b11: $db
    xor a                                         ; $4b12: $af
    reti                                          ; $4b13: $d9


    rst $38                                       ; $4b14: $ff
    add c                                         ; $4b15: $81
    cp a                                          ; $4b16: $bf
    pop bc                                        ; $4b17: $c1
    db $dd                                        ; $4b18: $dd
    db $e3                                        ; $4b19: $e3
    db $e3                                        ; $4b1a: $e3
    rst $38                                       ; $4b1b: $ff
    ccf                                           ; $4b1c: $3f
    ccf                                           ; $4b1d: $3f
    inc e                                         ; $4b1e: $1c
    inc e                                         ; $4b1f: $1c
    nop                                           ; $4b20: $00
    nop                                           ; $4b21: $00
    jr nc, jr_03b_4b54                            ; $4b22: $30 $30

    add sp, -$28                                  ; $4b24: $e8 $d8
    ld l, b                                       ; $4b26: $68
    sbc b                                         ; $4b27: $98
    add sp, $18                                   ; $4b28: $e8 $18
    xor b                                         ; $4b2a: $a8
    ld e, b                                       ; $4b2b: $58
    db $eb                                        ; $4b2c: $eb
    ld e, e                                       ; $4b2d: $5b
    db $ed                                        ; $4b2e: $ed
    ld e, $2b                                     ; $4b2f: $1e $2b
    db $dd                                        ; $4b31: $dd
    xor $d9                                       ; $4b32: $ee $d9
    rst $28                                       ; $4b34: $ef
    ret c                                         ; $4b35: $d8

    ld a, e                                       ; $4b36: $7b
    sbc h                                         ; $4b37: $9c
    db $dd                                        ; $4b38: $dd
    ld a, $36                                     ; $4b39: $3e $36
    rst $30                                       ; $4b3b: $f7
    db $e3                                        ; $4b3c: $e3
    db $e3                                        ; $4b3d: $e3
    pop bc                                        ; $4b3e: $c1
    pop bc                                        ; $4b3f: $c1
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    ld [hl], $36                                  ; $4b44: $36 $36
    ld l, l                                       ; $4b46: $6d
    ld e, e                                       ; $4b47: $5b
    ld a, l                                       ; $4b48: $7d
    ld c, e                                       ; $4b49: $4b
    db $dd                                        ; $4b4a: $dd
    db $eb                                        ; $4b4b: $eb
    dec l                                         ; $4b4c: $2d
    di                                            ; $4b4d: $f3
    push de                                       ; $4b4e: $d5
    dec sp                                        ; $4b4f: $3b
    db $dd                                        ; $4b50: $dd
    cp e                                          ; $4b51: $bb
    cp l                                          ; $4b52: $bd
    ld a, e                                       ; $4b53: $7b

jr_03b_4b54:
    push af                                       ; $4b54: $f5
    ei                                            ; $4b55: $fb
    ld l, e                                       ; $4b56: $6b
    rst $30                                       ; $4b57: $f7
    cp d                                          ; $4b58: $ba
    ld h, [hl]                                    ; $4b59: $66
    ld h, $fe                                     ; $4b5a: $26 $fe
    db $fc                                        ; $4b5c: $fc
    db $fc                                        ; $4b5d: $fc
    ret c                                         ; $4b5e: $d8

    ret c                                         ; $4b5f: $d8

    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    ld bc, $0101                                  ; $4b66: $01 $01 $01
    ld bc, $0302                                  ; $4b69: $01 $02 $03
    inc bc                                        ; $4b6c: $03
    ld [bc], a                                    ; $4b6d: $02
    dec b                                         ; $4b6e: $05
    ld b, $07                                     ; $4b6f: $06 $07
    inc b                                         ; $4b71: $04
    dec bc                                        ; $4b72: $0b
    inc c                                         ; $4b73: $0c
    rrca                                          ; $4b74: $0f
    ld [$1916], sp                                ; $4b75: $08 $16 $19
    dec e                                         ; $4b78: $1d
    inc de                                        ; $4b79: $13
    ld de, $1f1f                                  ; $4b7a: $11 $1f $1f
    rra                                           ; $4b7d: $1f
    ld c, $0e                                     ; $4b7e: $0e $0e
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    ld [hl], c                                    ; $4b82: $71
    ld [hl], c                                    ; $4b83: $71
    xor e                                         ; $4b84: $ab
    jp c, $9a6b                                   ; $4b85: $da $6b $9a

    rst $30                                       ; $4b88: $f7
    ld c, $f7                                     ; $4b89: $0e $f7
    ld c, $9b                                     ; $4b8b: $0e $9b
    ld h, [hl]                                    ; $4b8d: $66
    ld a, e                                       ; $4b8e: $7b
    and $db                                       ; $4b8f: $e6 $db
    and $fb                                       ; $4b91: $e6 $fb
    ld b, $33                                     ; $4b93: $06 $33
    cp $fb                                        ; $4b95: $fe $fb
    cp $cb                                        ; $4b97: $fe $cb
    adc $0e                                       ; $4b99: $ce $0e
    rrca                                          ; $4b9b: $0f
    rlca                                          ; $4b9c: $07
    rlca                                          ; $4b9d: $07
    ld bc, $0001                                  ; $4b9e: $01 $01 $00
    nop                                           ; $4ba1: $00
    or b                                          ; $4ba2: $b0
    or b                                          ; $4ba3: $b0
    ld l, b                                       ; $4ba4: $68
    ld hl, sp+$48                                 ; $4ba5: $f8 $48
    ld hl, sp+$68                                 ; $4ba7: $f8 $68
    ret c                                         ; $4ba9: $d8

    ld l, h                                       ; $4baa: $6c
    call c, $c67a                                 ; $4bab: $dc $7a $c6
    ld a, l                                       ; $4bae: $7d
    jp $d966                                      ; $4baf: $c3 $66 $d9


    ld l, [hl]                                    ; $4bb2: $6e
    reti                                          ; $4bb3: $d9


    ld a, [hl]                                    ; $4bb4: $7e
    pop bc                                        ; $4bb5: $c1
    ld a, h                                       ; $4bb6: $7c
    jp $cf71                                      ; $4bb7: $c3 $71 $cf


    ld b, a                                       ; $4bba: $47
    rst $38                                       ; $4bbb: $ff
    cp $fe                                        ; $4bbc: $fe $fe
    cp b                                          ; $4bbe: $b8
    cp b                                          ; $4bbf: $b8
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    nop                                           ; $4bc2: $00
    nop                                           ; $4bc3: $00
    nop                                           ; $4bc4: $00
    nop                                           ; $4bc5: $00
    nop                                           ; $4bc6: $00
    nop                                           ; $4bc7: $00
    ld b, $06                                     ; $4bc8: $06 $06
    add hl, de                                    ; $4bca: $19
    rra                                           ; $4bcb: $1f
    ld l, $31                                     ; $4bcc: $2e $31
    ld e, [hl]                                    ; $4bce: $5e
    ld h, c                                       ; $4bcf: $61
    or d                                          ; $4bd0: $b2
    call $8df6                                    ; $4bd1: $cd $f6 $8d
    cp [hl]                                       ; $4bd4: $be
    pop bc                                        ; $4bd5: $c1
    rst $18                                       ; $4bd6: $df
    ldh [$f7], a                                  ; $4bd7: $e0 $f7
    ld a, [$3f3e]                                 ; $4bd9: $fa $3e $3f
    rrca                                          ; $4bdc: $0f
    rrca                                          ; $4bdd: $0f
    ld bc, $0001                                  ; $4bde: $01 $01 $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    nop                                           ; $4be5: $00
    jr nc, jr_03b_4c18                            ; $4be6: $30 $30

    ld l, b                                       ; $4be8: $68
    ld e, b                                       ; $4be9: $58
    ld l, c                                       ; $4bea: $69
    ld e, c                                       ; $4beb: $59
    rst $30                                       ; $4bec: $f7
    adc [hl]                                      ; $4bed: $8e
    rst $28                                       ; $4bee: $ef
    sbc $eb                                       ; $4bef: $de $eb
    jp c, $daeb                                   ; $4bf1: $da $eb $da

    rst $30                                       ; $4bf4: $f7
    adc $57                                       ; $4bf5: $ce $57
    xor $7b                                       ; $4bf7: $ee $7b
    and $62                                       ; $4bf9: $e6 $62
    rst $38                                       ; $4bfb: $ff
    rst $38                                       ; $4bfc: $ff
    rst $38                                       ; $4bfd: $ff
    sbc l                                         ; $4bfe: $9d
    sbc l                                         ; $4bff: $9d
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
    or c                                          ; $4c0a: $b1
    or c                                          ; $4c0b: $b1
    ld c, [hl]                                    ; $4c0c: $4e
    rst $38                                       ; $4c0d: $ff
    ei                                            ; $4c0e: $fb
    inc c                                         ; $4c0f: $0c
    inc a                                         ; $4c10: $3c
    ei                                            ; $4c11: $fb
    ld [hl], l                                    ; $4c12: $75
    ei                                            ; $4c13: $fb
    ld d, a                                       ; $4c14: $57
    ret c                                         ; $4c15: $d8

    ld d, a                                       ; $4c16: $57
    ret c                                         ; $4c17: $d8

jr_03b_4c18:
    ld e, e                                       ; $4c18: $5b
    call c, $cf4c                                 ; $4c19: $dc $4c $cf
    rst $00                                       ; $4c1c: $c7
    rst $00                                       ; $4c1d: $c7
    add e                                         ; $4c1e: $83
    add e                                         ; $4c1f: $83
    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    nop                                           ; $4c24: $00
    nop                                           ; $4c25: $00
    nop                                           ; $4c26: $00
    nop                                           ; $4c27: $00
    inc bc                                        ; $4c28: $03
    inc bc                                        ; $4c29: $03
    add h                                         ; $4c2a: $84
    add a                                         ; $4c2b: $87
    ld c, e                                       ; $4c2c: $4b
    call z, Call_03b_79b6                         ; $4c2d: $cc $b6 $79
    db $dd                                        ; $4c30: $dd
    inc sp                                        ; $4c31: $33
    sbc $31                                       ; $4c32: $de $31
    jp c, $f63d                                   ; $4c34: $da $3d $f6

    add hl, sp                                    ; $4c37: $39
    ld a, l                                       ; $4c38: $7d
    di                                            ; $4c39: $f3
    db $d3                                        ; $4c3a: $d3
    rst $18                                       ; $4c3b: $df
    sbc [hl]                                      ; $4c3c: $9e
    sbc [hl]                                      ; $4c3d: $9e
    inc c                                         ; $4c3e: $0c
    inc c                                         ; $4c3f: $0c
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    nop                                           ; $4c43: $00
    nop                                           ; $4c44: $00
    nop                                           ; $4c45: $00
    nop                                           ; $4c46: $00
    nop                                           ; $4c47: $00
    jr jr_03b_4c62                                ; $4c48: $18 $18

    and h                                         ; $4c4a: $a4
    cp h                                          ; $4c4b: $bc
    call c, $b4e4                                 ; $4c4c: $dc $e4 $b4
    call z, $9cec                                 ; $4c4f: $cc $ec $9c
    db $f4                                        ; $4c52: $f4
    adc h                                         ; $4c53: $8c
    call nc, $b4ec                                ; $4c54: $d4 $ec $b4
    call z, $9cec                                 ; $4c57: $cc $ec $9c
    sbc b                                         ; $4c5a: $98
    ld hl, sp-$10                                 ; $4c5b: $f8 $f0
    ldh a, [$60]                                  ; $4c5d: $f0 $60
    ld h, b                                       ; $4c5f: $60
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00

jr_03b_4c62:
    ld a, b                                       ; $4c62: $78
    ld a, b                                       ; $4c63: $78
    db $f4                                        ; $4c64: $f4
    adc h                                         ; $4c65: $8c
    cp d                                          ; $4c66: $ba
    add $fd                                       ; $4c67: $c6 $fd
    jp $417e                                      ; $4c69: $c3 $7e $41


    ld [hl], e                                    ; $4c6c: $73
    ld c, h                                       ; $4c6d: $4c
    ld [hl], l                                    ; $4c6e: $75
    ld c, [hl]                                    ; $4c6f: $4e
    halt                                          ; $4c70: $76
    ld c, a                                       ; $4c71: $4f
    ld [hl], a                                    ; $4c72: $77
    ld c, a                                       ; $4c73: $4f
    ld [hl], l                                    ; $4c74: $75
    ld c, l                                       ; $4c75: $4d
    ld [hl], h                                    ; $4c76: $74
    ld c, h                                       ; $4c77: $4c
    or h                                          ; $4c78: $b4
    call z, $fc84                                 ; $4c79: $cc $84 $fc
    db $fc                                        ; $4c7c: $fc
    db $fc                                        ; $4c7d: $fc
    ld a, b                                       ; $4c7e: $78
    ld a, b                                       ; $4c7f: $78
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    ld [hl], b                                    ; $4c82: $70
    ld [hl], b                                    ; $4c83: $70
    xor b                                         ; $4c84: $a8
    ret c                                         ; $4c85: $d8

    add sp, -$68                                  ; $4c86: $e8 $98
    xor $9e                                       ; $4c88: $ee $9e
    db $ed                                        ; $4c8a: $ed
    sbc e                                         ; $4c8b: $9b
    jp hl                                         ; $4c8c: $e9


    rra                                           ; $4c8d: $1f
    rst $28                                       ; $4c8e: $ef
    rra                                           ; $4c8f: $1f
    db $ed                                        ; $4c90: $ed
    rra                                           ; $4c91: $1f
    ld l, c                                       ; $4c92: $69
    sbc a                                         ; $4c93: $9f
    db $ed                                        ; $4c94: $ed
    sbc e                                         ; $4c95: $9b
    xor l                                         ; $4c96: $ad
    db $db                                        ; $4c97: $db
    db $ed                                        ; $4c98: $ed
    db $db                                        ; $4c99: $db
    ld c, c                                       ; $4c9a: $49
    ld a, a                                       ; $4c9b: $7f
    ld a, a                                       ; $4c9c: $7f
    ld a, a                                       ; $4c9d: $7f
    ld [hl], $36                                  ; $4c9e: $36 $36
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
    ld e, $1e                                     ; $4caa: $1e $1e
    ld l, l                                       ; $4cac: $6d
    ld [hl], e                                    ; $4cad: $73
    or c                                          ; $4cae: $b1
    rst $08                                       ; $4caf: $cf
    rst $28                                       ; $4cb0: $ef
    sbc a                                         ; $4cb1: $9f
    ld e, [hl]                                    ; $4cb2: $5e
    cp a                                          ; $4cb3: $bf
    ld l, [hl]                                    ; $4cb4: $6e
    sbc a                                         ; $4cb5: $9f
    cp l                                          ; $4cb6: $bd
    jp $e3dd                                      ; $4cb7: $c3 $dd $e3


    ld [hl], c                                    ; $4cba: $71
    ld a, a                                       ; $4cbb: $7f
    ccf                                           ; $4cbc: $3f
    ccf                                           ; $4cbd: $3f
    ld c, $0e                                     ; $4cbe: $0e $0e
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
    jr jr_03b_4ce4                                ; $4cca: $18 $18

    ld h, h                                       ; $4ccc: $64
    ld a, h                                       ; $4ccd: $7c
    cp d                                          ; $4cce: $ba
    add $7a                                       ; $4ccf: $c6 $7a
    or [hl]                                       ; $4cd1: $b6
    sub $2e                                       ; $4cd2: $d6 $2e
    db $fc                                        ; $4cd4: $fc
    inc e                                         ; $4cd5: $1c
    add sp, $18                                   ; $4cd6: $e8 $18
    ld [hl], h                                    ; $4cd8: $74
    adc h                                         ; $4cd9: $8c
    call nz, $fcfc                                ; $4cda: $c4 $fc $fc
    db $fc                                        ; $4cdd: $fc
    jr c, jr_03b_4d18                             ; $4cde: $38 $38

    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    ld b, $06                                     ; $4ce2: $06 $06

jr_03b_4ce4:
    dec bc                                        ; $4ce4: $0b
    dec c                                         ; $4ce5: $0d
    rla                                           ; $4ce6: $17
    add hl, de                                    ; $4ce7: $19
    dec l                                         ; $4ce8: $2d
    inc sp                                        ; $4ce9: $33
    ld e, e                                       ; $4cea: $5b
    ld h, a                                       ; $4ceb: $67
    ld e, l                                       ; $4cec: $5d
    ld h, e                                       ; $4ced: $63
    ld l, [hl]                                    ; $4cee: $6e
    ld [hl], c                                    ; $4cef: $71
    ld [hl], $39                                  ; $4cf0: $36 $39
    ld a, [de]                                    ; $4cf2: $1a
    dec e                                         ; $4cf3: $1d
    ld d, $19                                     ; $4cf4: $16 $19
    ld l, l                                       ; $4cf6: $6d
    ld [hl], e                                    ; $4cf7: $73
    ei                                            ; $4cf8: $fb
    add a                                         ; $4cf9: $87
    add [hl]                                      ; $4cfa: $86
    cp $fc                                        ; $4cfb: $fe $fc
    db $fc                                        ; $4cfd: $fc
    ld a, b                                       ; $4cfe: $78
    ld a, b                                       ; $4cff: $78
    nop                                           ; $4d00: $00
    nop                                           ; $4d01: $00
    jr nc, jr_03b_4d34                            ; $4d02: $30 $30

    ld l, b                                       ; $4d04: $68
    ld e, b                                       ; $4d05: $58
    ld l, b                                       ; $4d06: $68
    ld e, b                                       ; $4d07: $58
    xor b                                         ; $4d08: $a8
    ret c                                         ; $4d09: $d8

    db $ec                                        ; $4d0a: $ec
    sbc h                                         ; $4d0b: $9c
    ei                                            ; $4d0c: $fb
    add a                                         ; $4d0d: $87
    cp $81                                        ; $4d0e: $fe $81
    and $99                                       ; $4d10: $e6 $99
    ld [$ee9d], a                                 ; $4d12: $ea $9d $ee
    sbc l                                         ; $4d15: $9d
    xor $9d                                       ; $4d16: $ee $9d

jr_03b_4d18:
    adc a                                         ; $4d18: $8f
    db $fc                                        ; $4d19: $fc
    db $fc                                        ; $4d1a: $fc
    rst $38                                       ; $4d1b: $ff
    ld [hl], a                                    ; $4d1c: $77
    ld [hl], a                                    ; $4d1d: $77
    inc bc                                        ; $4d1e: $03
    inc bc                                        ; $4d1f: $03
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
    ld b, $06                                     ; $4d2a: $06 $06
    add hl, de                                    ; $4d2c: $19
    rra                                           ; $4d2d: $1f
    xor [hl]                                      ; $4d2e: $ae
    or c                                          ; $4d2f: $b1
    or e                                          ; $4d30: $b3
    xor h                                         ; $4d31: $ac
    rst $10                                       ; $4d32: $d7
    db $ec                                        ; $4d33: $ec

jr_03b_4d34:
    rst $38                                       ; $4d34: $ff
    ret nz                                        ; $4d35: $c0

    rst $18                                       ; $4d36: $df
    ldh [$6e], a                                  ; $4d37: $e0 $6e
    pop af                                        ; $4d39: $f1
    ld [hl], c                                    ; $4d3a: $71
    rst $38                                       ; $4d3b: $ff
    rst $18                                       ; $4d3c: $df
    rst $18                                       ; $4d3d: $df
    adc [hl]                                      ; $4d3e: $8e
    adc [hl]                                      ; $4d3f: $8e
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    jr jr_03b_4d60                                ; $4d46: $18 $18

    inc [hl]                                      ; $4d48: $34
    inc l                                         ; $4d49: $2c
    ld [hl], h                                    ; $4d4a: $74
    ld l, h                                       ; $4d4b: $6c
    ld a, [$f686]                                 ; $4d4c: $fa $86 $f6
    xor $74                                       ; $4d4f: $ee $74
    db $ec                                        ; $4d51: $ec
    ld [hl], h                                    ; $4d52: $74
    db $ec                                        ; $4d53: $ec
    ld a, d                                       ; $4d54: $7a
    and $6a                                       ; $4d55: $e6 $6a
    or $fd                                        ; $4d57: $f6 $fd
    di                                            ; $4d59: $f3
    sub c                                         ; $4d5a: $91
    sbc a                                         ; $4d5b: $9f
    rra                                           ; $4d5c: $1f
    rra                                           ; $4d5d: $1f
    ld c, $0e                                     ; $4d5e: $0e $0e

jr_03b_4d60:
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    ld a, b                                       ; $4d62: $78
    ld a, b                                       ; $4d63: $78
    push af                                       ; $4d64: $f5

jr_03b_4d65:
    adc l                                         ; $4d65: $8d
    cp e                                          ; $4d66: $bb
    rst $00                                       ; $4d67: $c7
    db $fd                                        ; $4d68: $fd
    jp $417e                                      ; $4d69: $c3 $7e $41


    ld [hl], e                                    ; $4d6c: $73
    ld c, h                                       ; $4d6d: $4c
    ld [hl], l                                    ; $4d6e: $75
    ld c, [hl]                                    ; $4d6f: $4e
    halt                                          ; $4d70: $76
    ld c, a                                       ; $4d71: $4f
    ld [hl], a                                    ; $4d72: $77
    ld c, a                                       ; $4d73: $4f
    ld [hl], l                                    ; $4d74: $75
    ld c, l                                       ; $4d75: $4d
    ld [hl], l                                    ; $4d76: $75
    ld c, l                                       ; $4d77: $4d
    or h                                          ; $4d78: $b4
    call z, $fc84                                 ; $4d79: $cc $84 $fc
    db $fc                                        ; $4d7c: $fc
    db $fc                                        ; $4d7d: $fc
    ld a, b                                       ; $4d7e: $78
    ld a, b                                       ; $4d7f: $78
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    ldh [$e0], a                                  ; $4d82: $e0 $e0
    ld d, b                                       ; $4d84: $50
    or b                                          ; $4d85: $b0
    ret nc                                        ; $4d86: $d0

    jr nc, jr_03b_4d65                            ; $4d87: $30 $dc

    inc a                                         ; $4d89: $3c
    jp c, $d236                                   ; $4d8a: $da $36 $d2

    ld a, $df                                     ; $4d8d: $3e $df
    ccf                                           ; $4d8f: $3f
    db $db                                        ; $4d90: $db
    ccf                                           ; $4d91: $3f
    ld e, d                                       ; $4d92: $5a
    or a                                          ; $4d93: $b7
    ld e, d                                       ; $4d94: $5a
    or a                                          ; $4d95: $b7
    db $db                                        ; $4d96: $db
    or a                                          ; $4d97: $b7
    sbc e                                         ; $4d98: $9b
    rst $30                                       ; $4d99: $f7
    sub d                                         ; $4d9a: $92
    cp $fe                                        ; $4d9b: $fe $fe
    cp $6c                                        ; $4d9d: $fe $6c
    ld l, h                                       ; $4d9f: $6c
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
    inc a                                         ; $4daa: $3c
    inc a                                         ; $4dab: $3c
    jp c, Jump_03b_63e6                           ; $4dac: $da $e6 $63

    sbc a                                         ; $4daf: $9f
    sbc $3f                                       ; $4db0: $de $3f
    cp l                                          ; $4db2: $bd
    ld a, [hl]                                    ; $4db3: $7e
    db $dd                                        ; $4db4: $dd
    ld a, $7f                                     ; $4db5: $3e $7f
    add [hl]                                      ; $4db7: $86
    cp d                                          ; $4db8: $ba
    rst $00                                       ; $4db9: $c7
    db $e3                                        ; $4dba: $e3
    rst $38                                       ; $4dbb: $ff
    ld a, a                                       ; $4dbc: $7f
    ld a, a                                       ; $4dbd: $7f
    inc e                                         ; $4dbe: $1c
    inc e                                         ; $4dbf: $1c
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    inc bc                                        ; $4dc2: $03
    inc bc                                        ; $4dc3: $03
    ld b, $05                                     ; $4dc4: $06 $05
    rlca                                          ; $4dc6: $07
    inc b                                         ; $4dc7: $04
    inc b                                         ; $4dc8: $04
    rlca                                          ; $4dc9: $07
    scf                                           ; $4dca: $37
    scf                                           ; $4dcb: $37
    set 7, e                                      ; $4dcc: $cb $fb

jr_03b_4dce:
    ld [hl], l                                    ; $4dce: $75
    adc l                                         ; $4dcf: $8d
    push af                                       ; $4dd0: $f5
    ld l, l                                       ; $4dd1: $6d
    xor l                                         ; $4dd2: $ad
    ld e, l                                       ; $4dd3: $5d

jr_03b_4dd4:
    ld sp, hl                                     ; $4dd4: $f9
    add hl, sp                                    ; $4dd5: $39
    pop de                                        ; $4dd6: $d1
    ld sp, $19e9                                  ; $4dd7: $31 $e9 $19
    adc c                                         ; $4dda: $89
    ld sp, hl                                     ; $4ddb: $f9
    ld hl, sp-$08                                 ; $4ddc: $f8 $f8
    ld [hl], b                                    ; $4dde: $70
    ld [hl], b                                    ; $4ddf: $70
    nop                                           ; $4de0: $00
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    nop                                           ; $4de3: $00
    cp $fe                                        ; $4de4: $fe $fe
    db $fd                                        ; $4de6: $fd
    inc bc                                        ; $4de7: $03
    pop bc                                        ; $4de8: $c1
    ccf                                           ; $4de9: $3f
    rst $18                                       ; $4dea: $df
    ccf                                           ; $4deb: $3f
    sbc $3f                                       ; $4dec: $de $3f
    db $db                                        ; $4dee: $db
    inc a                                         ; $4def: $3c
    call c, $d53b                                 ; $4df0: $dc $3b $d5
    dec sp                                        ; $4df3: $3b
    rst $18                                       ; $4df4: $df
    jr nc, jr_03b_4dce                            ; $4df5: $30 $d7

    jr c, jr_03b_4e54                             ; $4df7: $38 $5b

    cp h                                          ; $4df9: $bc
    sbc h                                         ; $4dfa: $9c
    rst $38                                       ; $4dfb: $ff
    rst $30                                       ; $4dfc: $f7
    rst $30                                       ; $4dfd: $f7
    ld h, e                                       ; $4dfe: $63
    ld h, e                                       ; $4dff: $63
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
    adc h                                         ; $4e0a: $8c
    adc h                                         ; $4e0b: $8c
    ld e, d                                       ; $4e0c: $5a
    sub $bb                                       ; $4e0d: $d6 $bb
    ld [hl], a                                    ; $4e0f: $77
    db $db                                        ; $4e10: $db
    scf                                           ; $4e11: $37
    db $db                                        ; $4e12: $db
    scf                                           ; $4e13: $37
    call c, $d733                                 ; $4e14: $dc $33 $d7
    jr c, jr_03b_4dd4                             ; $4e17: $38 $bb

    ld a, h                                       ; $4e19: $7c
    ld l, h                                       ; $4e1a: $6c
    rst $28                                       ; $4e1b: $ef
    rst $00                                       ; $4e1c: $c7
    rst $00                                       ; $4e1d: $c7
    add e                                         ; $4e1e: $83
    add e                                         ; $4e1f: $83
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
    inc bc                                        ; $4e2a: $03
    inc bc                                        ; $4e2b: $03
    call $b7ce                                    ; $4e2c: $cd $ce $b7
    ld a, b                                       ; $4e2f: $78
    cp l                                          ; $4e30: $bd
    ld [hl], e                                    ; $4e31: $73
    xor e                                         ; $4e32: $ab
    ld [hl], a                                    ; $4e33: $77
    xor l                                         ; $4e34: $ad
    ld [hl], e                                    ; $4e35: $73
    or a                                          ; $4e36: $b7
    ld a, b                                       ; $4e37: $78
    cp e                                          ; $4e38: $bb
    ld a, h                                       ; $4e39: $7c
    inc l                                         ; $4e3a: $2c
    rst $28                                       ; $4e3b: $ef
    rst $20                                       ; $4e3c: $e7
    rst $20                                       ; $4e3d: $e7
    jp Jump_000_00c3                              ; $4e3e: $c3 $c3 $00


    nop                                           ; $4e41: $00
    ld h, b                                       ; $4e42: $60
    ld h, b                                       ; $4e43: $60
    ret nc                                        ; $4e44: $d0

    or b                                          ; $4e45: $b0
    ret nc                                        ; $4e46: $d0

    or b                                          ; $4e47: $b0
    ret nc                                        ; $4e48: $d0

    or b                                          ; $4e49: $b0
    ret c                                         ; $4e4a: $d8

    cp b                                          ; $4e4b: $b8
    or $8e                                        ; $4e4c: $f6 $8e
    db $fd                                        ; $4e4e: $fd
    add e                                         ; $4e4f: $83
    db $ed                                        ; $4e50: $ed
    sub e                                         ; $4e51: $93
    push hl                                       ; $4e52: $e5
    sbc e                                         ; $4e53: $9b

jr_03b_4e54:
    db $ed                                        ; $4e54: $ed
    sbc e                                         ; $4e55: $9b
    db $ed                                        ; $4e56: $ed
    sbc e                                         ; $4e57: $9b
    adc l                                         ; $4e58: $8d
    ei                                            ; $4e59: $fb
    ld sp, hl                                     ; $4e5a: $f9
    rst $38                                       ; $4e5b: $ff
    rst $38                                       ; $4e5c: $ff
    rst $38                                       ; $4e5d: $ff
    ld b, $06                                     ; $4e5e: $06 $06
    nop                                           ; $4e60: $00
    nop                                           ; $4e61: $00
    inc bc                                        ; $4e62: $03
    inc bc                                        ; $4e63: $03
    rlca                                          ; $4e64: $07
    inc b                                         ; $4e65: $04
    dec b                                         ; $4e66: $05
    ld b, $07                                     ; $4e67: $06 $07
    ld b, $03                                     ; $4e69: $06 $03
    ld [bc], a                                    ; $4e6b: $02
    inc bc                                        ; $4e6c: $03
    ld [bc], a                                    ; $4e6d: $02
    inc bc                                        ; $4e6e: $03
    ld [bc], a                                    ; $4e6f: $02
    inc bc                                        ; $4e70: $03
    ld [bc], a                                    ; $4e71: $02
    inc bc                                        ; $4e72: $03
    ld [bc], a                                    ; $4e73: $02
    inc bc                                        ; $4e74: $03
    ld [bc], a                                    ; $4e75: $02
    inc bc                                        ; $4e76: $03
    ld [bc], a                                    ; $4e77: $02
    dec b                                         ; $4e78: $05
    ld b, $04                                     ; $4e79: $06 $04
    rlca                                          ; $4e7b: $07
    rlca                                          ; $4e7c: $07
    rlca                                          ; $4e7d: $07
    inc bc                                        ; $4e7e: $03
    inc bc                                        ; $4e7f: $03
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    jp $a5c3                                      ; $4e82: $c3 $c3 $a5


    ld h, [hl]                                    ; $4e85: $66
    rst $10                                       ; $4e86: $d7
    inc [hl]                                      ; $4e87: $34
    rst $28                                       ; $4e88: $ef
    inc e                                         ; $4e89: $1c
    rst $30                                       ; $4e8a: $f7
    inc c                                         ; $4e8b: $0c
    sbc a                                         ; $4e8c: $9f
    ld h, b                                       ; $4e8d: $60
    xor a                                         ; $4e8e: $af
    ld [hl], b                                    ; $4e8f: $70
    or a                                          ; $4e90: $b7
    ld a, b                                       ; $4e91: $78
    cp e                                          ; $4e92: $bb
    ld a, h                                       ; $4e93: $7c
    xor a                                         ; $4e94: $af
    ld l, h                                       ; $4e95: $6c
    and l                                         ; $4e96: $a5
    ld h, [hl]                                    ; $4e97: $66
    and a                                         ; $4e98: $a7
    ld h, [hl]                                    ; $4e99: $66
    ld [hl+], a                                   ; $4e9a: $22
    db $e3                                        ; $4e9b: $e3
    db $e3                                        ; $4e9c: $e3
    db $e3                                        ; $4e9d: $e3
    pop bc                                        ; $4e9e: $c1
    pop bc                                        ; $4e9f: $c1
    nop                                           ; $4ea0: $00
    nop                                           ; $4ea1: $00
    add b                                         ; $4ea2: $80
    add b                                         ; $4ea3: $80
    ld b, b                                       ; $4ea4: $40
    ret nz                                        ; $4ea5: $c0

    ld b, b                                       ; $4ea6: $40
    ret nz                                        ; $4ea7: $c0

    ld [hl], b                                    ; $4ea8: $70
    ldh a, [rBCPS]                                ; $4ea9: $f0 $68
    ret c                                         ; $4eab: $d8

    ld c, e                                       ; $4eac: $4b
    ei                                            ; $4ead: $fb
    ld a, l                                       ; $4eae: $7d
    cp $6f                                        ; $4eaf: $fe $6f
    db $fc                                        ; $4eb1: $fc
    ld c, d                                       ; $4eb2: $4a
    db $fd                                        ; $4eb3: $fd
    ld l, e                                       ; $4eb4: $6b
    call c, $de6d                                 ; $4eb5: $dc $6d $de
    ld l, [hl]                                    ; $4eb8: $6e
    rst $18                                       ; $4eb9: $df
    ld c, e                                       ; $4eba: $4b
    ei                                            ; $4ebb: $fb
    ld sp, hl                                     ; $4ebc: $f9
    ld sp, hl                                     ; $4ebd: $f9
    or b                                          ; $4ebe: $b0
    or b                                          ; $4ebf: $b0
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00

jr_03b_4ec4:
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    ldh a, [$f0]                                  ; $4eca: $f0 $f0
    ld l, e                                       ; $4ecc: $6b
    sbc e                                         ; $4ecd: $9b
    adc l                                         ; $4ece: $8d
    ld a, [hl]                                    ; $4ecf: $7e
    ld a, e                                       ; $4ed0: $7b
    db $fd                                        ; $4ed1: $fd
    or $f9                                        ; $4ed2: $f6 $f9
    ld [hl], a                                    ; $4ed4: $77
    ld hl, sp-$11                                 ; $4ed5: $f8 $ef
    jr jr_03b_4ec4                                ; $4ed7: $18 $eb

    inc e                                         ; $4ed9: $1c
    adc [hl]                                      ; $4eda: $8e
    rst $38                                       ; $4edb: $ff
    rst $38                                       ; $4edc: $ff
    rst $38                                       ; $4edd: $ff
    ld [hl], c                                    ; $4ede: $71
    ld [hl], c                                    ; $4edf: $71
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
    pop bc                                        ; $4eea: $c1
    pop bc                                        ; $4eeb: $c1
    ld hl, $d2e1                                  ; $4eec: $21 $e1 $d2
    inc sp                                        ; $4eef: $33
    db $d3                                        ; $4ef0: $d3
    or d                                          ; $4ef1: $b2
    or e                                          ; $4ef2: $b3
    ld [hl], d                                    ; $4ef3: $72
    db $e3                                        ; $4ef4: $e3
    ld [c], a                                     ; $4ef5: $e2
    ld b, d                                       ; $4ef6: $42
    jp Jump_03b_63a3                              ; $4ef7: $c3 $a3 $63


    ld hl, $e0e1                                  ; $4efa: $21 $e1 $e0
    ldh [$c0], a                                  ; $4efd: $e0 $c0
    ret nz                                        ; $4eff: $c0

    nop                                           ; $4f00: $00
    nop                                           ; $4f01: $00
    rrca                                          ; $4f02: $0f
    rrca                                          ; $4f03: $0f
    ld [hl], $39                                  ; $4f04: $36 $39
    ld e, a                                       ; $4f06: $5f
    ld h, b                                       ; $4f07: $60
    cp a                                          ; $4f08: $bf
    ret nz                                        ; $4f09: $c0

    ld h, c                                       ; $4f0a: $61
    sbc [hl]                                      ; $4f0b: $9e
    adc $3f                                       ; $4f0c: $ce $3f
    sbc e                                         ; $4f0e: $9b
    ld a, e                                       ; $4f0f: $7b
    or c                                          ; $4f10: $b1
    ld [hl], c                                    ; $4f11: $71
    and d                                         ; $4f12: $a2
    ld h, e                                       ; $4f13: $63
    db $dd                                        ; $4f14: $dd
    ld a, $fe                                     ; $4f15: $3e $fe
    ld bc, $837c                                  ; $4f17: $01 $7c $83
    add e                                         ; $4f1a: $83
    rst $38                                       ; $4f1b: $ff
    rst $38                                       ; $4f1c: $ff
    rst $38                                       ; $4f1d: $ff
    ld a, h                                       ; $4f1e: $7c
    ld a, h                                       ; $4f1f: $7c
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    add b                                         ; $4f24: $80
    add b                                         ; $4f25: $80
    ld b, b                                       ; $4f26: $40
    ret nz                                        ; $4f27: $c0

    and b                                         ; $4f28: $a0
    ld h, b                                       ; $4f29: $60
    cp b                                          ; $4f2a: $b8
    ld a, b                                       ; $4f2b: $78
    or a                                          ; $4f2c: $b7
    ld l, a                                       ; $4f2d: $6f
    cp [hl]                                       ; $4f2e: $be
    ld h, c                                       ; $4f2f: $61
    cp a                                          ; $4f30: $bf
    ld h, b                                       ; $4f31: $60
    cp c                                          ; $4f32: $b9
    ld h, [hl]                                    ; $4f33: $66
    dec sp                                        ; $4f34: $3b
    and $7b                                       ; $4f35: $e6 $7b
    and $fb                                       ; $4f37: $e6 $fb
    and $a2                                       ; $4f39: $e6 $a2
    cp a                                          ; $4f3b: $bf
    ccf                                           ; $4f3c: $3f
    ccf                                           ; $4f3d: $3f
    dec e                                         ; $4f3e: $1d
    dec e                                         ; $4f3f: $1d
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
    add b                                         ; $4f4e: $80
    add b                                         ; $4f4f: $80
    ld b, b                                       ; $4f50: $40
    ret nz                                        ; $4f51: $c0

    ld b, b                                       ; $4f52: $40
    ret nz                                        ; $4f53: $c0

    ld b, b                                       ; $4f54: $40
    ret nz                                        ; $4f55: $c0

    ld b, b                                       ; $4f56: $40
    ret nz                                        ; $4f57: $c0

    ld b, b                                       ; $4f58: $40
    ret nz                                        ; $4f59: $c0

    ld b, b                                       ; $4f5a: $40
    ret nz                                        ; $4f5b: $c0

    ret nz                                        ; $4f5c: $c0

    ret nz                                        ; $4f5d: $c0

    add b                                         ; $4f5e: $80
    add b                                         ; $4f5f: $80
    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    ld h, [hl]                                    ; $4f62: $66
    ld h, [hl]                                    ; $4f63: $66
    db $dd                                        ; $4f64: $dd
    cp e                                          ; $4f65: $bb
    db $ed                                        ; $4f66: $ed
    sbc e                                         ; $4f67: $9b
    push af                                       ; $4f68: $f5
    adc e                                         ; $4f69: $8b
    db $fd                                        ; $4f6a: $fd
    add e                                         ; $4f6b: $83
    db $fd                                        ; $4f6c: $fd
    add e                                         ; $4f6d: $83
    db $fd                                        ; $4f6e: $fd
    add e                                         ; $4f6f: $83
    db $fd                                        ; $4f70: $fd
    add e                                         ; $4f71: $83
    db $ed                                        ; $4f72: $ed
    sub e                                         ; $4f73: $93
    push hl                                       ; $4f74: $e5
    sbc e                                         ; $4f75: $9b
    db $ed                                        ; $4f76: $ed
    sbc e                                         ; $4f77: $9b
    db $ed                                        ; $4f78: $ed
    sbc e                                         ; $4f79: $9b
    adc c                                         ; $4f7a: $89
    rst $38                                       ; $4f7b: $ff
    rst $38                                       ; $4f7c: $ff
    rst $38                                       ; $4f7d: $ff
    ld [hl], a                                    ; $4f7e: $77
    ld [hl], a                                    ; $4f7f: $77
    nop                                           ; $4f80: $00
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    nop                                           ; $4f83: $00
    nop                                           ; $4f84: $00
    nop                                           ; $4f85: $00
    nop                                           ; $4f86: $00
    nop                                           ; $4f87: $00
    ret nz                                        ; $4f88: $c0

    ret nz                                        ; $4f89: $c0

    xor [hl]                                      ; $4f8a: $ae
    ld l, [hl]                                    ; $4f8b: $6e
    scf                                           ; $4f8c: $37
    ld sp, hl                                     ; $4f8d: $f9
    db $ed                                        ; $4f8e: $ed
    di                                            ; $4f8f: $f3
    cp e                                          ; $4f90: $bb
    rst $20                                       ; $4f91: $e7
    or [hl]                                       ; $4f92: $b6
    ld l, a                                       ; $4f93: $6f
    cp d                                          ; $4f94: $ba
    ld h, a                                       ; $4f95: $67
    xor a                                         ; $4f96: $af
    ld [hl], c                                    ; $4f97: $71
    or l                                          ; $4f98: $b5
    ld a, e                                       ; $4f99: $7b
    add hl, sp                                    ; $4f9a: $39
    rst $38                                       ; $4f9b: $ff
    rst $28                                       ; $4f9c: $ef
    rst $28                                       ; $4f9d: $ef
    add $c6                                       ; $4f9e: $c6 $c6
    nop                                           ; $4fa0: $00
    nop                                           ; $4fa1: $00
    nop                                           ; $4fa2: $00
    nop                                           ; $4fa3: $00
    nop                                           ; $4fa4: $00
    nop                                           ; $4fa5: $00
    ld bc, $0101                                  ; $4fa6: $01 $01 $01
    ld bc, $3332                                  ; $4fa9: $01 $32 $33
    set 7, d                                      ; $4fac: $cb $fa
    ld [hl], l                                    ; $4fae: $75
    adc [hl]                                      ; $4faf: $8e
    rst $30                                       ; $4fb0: $f7
    ld l, h                                       ; $4fb1: $6c
    xor a                                         ; $4fb2: $af
    ld e, h                                       ; $4fb3: $5c
    ei                                            ; $4fb4: $fb
    inc a                                         ; $4fb5: $3c
    rst $18                                       ; $4fb6: $df
    jr c, jr_03b_5027                             ; $4fb7: $38 $6e

    sbc c                                         ; $4fb9: $99
    adc b                                         ; $4fba: $88
    rst $38                                       ; $4fbb: $ff
    rst $38                                       ; $4fbc: $ff
    rst $38                                       ; $4fbd: $ff
    ld [hl], a                                    ; $4fbe: $77
    ld [hl], a                                    ; $4fbf: $77
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    ld b, b                                       ; $4fc2: $40
    ld b, b                                       ; $4fc3: $40
    xor [hl]                                      ; $4fc4: $ae
    xor $55                                       ; $4fc5: $ee $55
    cp e                                          ; $4fc7: $bb
    cp $11                                        ; $4fc8: $fe $11
    rst $38                                       ; $4fca: $ff
    db $10                                        ; $4fcb: $10
    cp a                                          ; $4fcc: $bf
    ld d, c                                       ; $4fcd: $51
    halt                                          ; $4fce: $76
    reti                                          ; $4fcf: $d9


    rst $28                                       ; $4fd0: $ef
    ret c                                         ; $4fd1: $d8

    xor $19                                       ; $4fd2: $ee $19
    xor l                                         ; $4fd4: $ad
    ld e, e                                       ; $4fd5: $5b
    ld l, l                                       ; $4fd6: $6d
    db $db                                        ; $4fd7: $db
    db $ed                                        ; $4fd8: $ed
    db $db                                        ; $4fd9: $db
    ret                                           ; $4fda: $c9


    rst $38                                       ; $4fdb: $ff
    rst $38                                       ; $4fdc: $ff
    rst $38                                       ; $4fdd: $ff
    ld a, $3e                                     ; $4fde: $3e $3e
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    nop                                           ; $4fe3: $00
    ldh [$e0], a                                  ; $4fe4: $e0 $e0
    ld d, b                                       ; $4fe6: $50
    or b                                          ; $4fe7: $b0
    xor b                                         ; $4fe8: $a8
    ret c                                         ; $4fe9: $d8

    halt                                          ; $4fea: $76
    adc $fd                                       ; $4feb: $ce $fd
    ld d, a                                       ; $4fed: $57
    rst $28                                       ; $4fee: $ef
    ld d, h                                       ; $4fef: $54
    halt                                          ; $4ff0: $76
    call $ddae                                    ; $4ff1: $cd $ae $dd
    ld e, [hl]                                    ; $4ff4: $5e
    cp l                                          ; $4ff5: $bd
    or [hl]                                       ; $4ff6: $b6
    ld [hl], l                                    ; $4ff7: $75
    and [hl]                                      ; $4ff8: $a6
    ld h, l                                       ; $4ff9: $65
    inc h                                         ; $4ffa: $24
    rst $20                                       ; $4ffb: $e7
    rst $20                                       ; $4ffc: $e7
    rst $20                                       ; $4ffd: $e7
    jp Jump_000_00c3                              ; $4ffe: $c3 $c3 $00


    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    nop                                           ; $5009: $00
    call z, $b2cc                                 ; $500a: $cc $cc $b2
    ld a, [hl]                                    ; $500d: $7e
    dec a                                         ; $500e: $3d
    db $e3                                        ; $500f: $e3
    rst $20                                       ; $5010: $e7
    reti                                          ; $5011: $d9


    xor a                                         ; $5012: $af
    reti                                          ; $5013: $d9


    rst $38                                       ; $5014: $ff
    add c                                         ; $5015: $81
    cp a                                          ; $5016: $bf
    pop bc                                        ; $5017: $c1
    db $dd                                        ; $5018: $dd
    db $e3                                        ; $5019: $e3
    db $e3                                        ; $501a: $e3
    rst $38                                       ; $501b: $ff
    cp [hl]                                       ; $501c: $be
    cp [hl]                                       ; $501d: $be
    inc e                                         ; $501e: $1c
    inc e                                         ; $501f: $1c
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00

jr_03b_5027:
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    jr nc, jr_03b_505c                            ; $502a: $30 $30

    ld c, e                                       ; $502c: $4b
    ld a, e                                       ; $502d: $7b
    or l                                          ; $502e: $b5
    adc $77                                       ; $502f: $ce $77
    adc h                                         ; $5031: $8c
    sub [hl]                                      ; $5032: $96
    ld l, l                                       ; $5033: $6d
    or a                                          ; $5034: $b7
    ld l, h                                       ; $5035: $6c
    push af                                       ; $5036: $f5
    ld c, $7a                                     ; $5037: $0e $7a
    add a                                         ; $5039: $87
    cp e                                          ; $503a: $bb
    rst $10                                       ; $503b: $d7
    rst $38                                       ; $503c: $ff
    rst $38                                       ; $503d: $ff
    ld l, h                                       ; $503e: $6c
    ld l, h                                       ; $503f: $6c
    nop                                           ; $5040: $00
    nop                                           ; $5041: $00
    jr nc, @+$32                                  ; $5042: $30 $30

    ld l, b                                       ; $5044: $68
    ld e, b                                       ; $5045: $58
    ld l, b                                       ; $5046: $68
    ld e, b                                       ; $5047: $58
    ld l, b                                       ; $5048: $68
    ld e, b                                       ; $5049: $58
    ret c                                         ; $504a: $d8

    add sp, $76                                   ; $504b: $e8 $76
    xor [hl]                                      ; $504d: $ae
    db $fd                                        ; $504e: $fd
    inc hl                                        ; $504f: $23
    ld [hl], l                                    ; $5050: $75
    db $eb                                        ; $5051: $eb
    db $fd                                        ; $5052: $fd
    bit 3, l                                      ; $5053: $cb $5d
    db $eb                                        ; $5055: $eb
    cp l                                          ; $5056: $bd
    ld l, e                                       ; $5057: $6b
    xor l                                         ; $5058: $ad
    ld a, e                                       ; $5059: $7b
    add hl, sp                                    ; $505a: $39
    rst $38                                       ; $505b: $ff

jr_03b_505c:
    rst $38                                       ; $505c: $ff
    rst $38                                       ; $505d: $ff
    add $c6                                       ; $505e: $c6 $c6
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    ld h, e                                       ; $5062: $63
    ld h, e                                       ; $5063: $63
    rst $10                                       ; $5064: $d7
    or h                                          ; $5065: $b4
    rst $10                                       ; $5066: $d7
    or h                                          ; $5067: $b4
    rst $10                                       ; $5068: $d7
    or h                                          ; $5069: $b4
    rst $10                                       ; $506a: $d7
    or h                                          ; $506b: $b4
    sub $b5                                       ; $506c: $d6 $b5
    sbc $bd                                       ; $506e: $de $bd
    sub $bd                                       ; $5070: $d6 $bd
    jp z, $beb5                                   ; $5072: $ca $b5 $be

    pop bc                                        ; $5075: $c1
    cp $c1                                        ; $5076: $fe $c1
    ld d, h                                       ; $5078: $54
    ld l, e                                       ; $5079: $6b
    ld c, c                                       ; $507a: $49
    ld a, a                                       ; $507b: $7f
    ld a, a                                       ; $507c: $7f
    ld a, a                                       ; $507d: $7f
    ld [hl], $36                                  ; $507e: $36 $36
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    add b                                         ; $5082: $80
    add b                                         ; $5083: $80
    ld b, b                                       ; $5084: $40
    ret nz                                        ; $5085: $c0

    ld b, b                                       ; $5086: $40
    ret nz                                        ; $5087: $c0

    ld a, c                                       ; $5088: $79
    ld sp, hl                                     ; $5089: $f9
    ld b, l                                       ; $508a: $45
    db $fd                                        ; $508b: $fd
    cp e                                          ; $508c: $bb
    add $fb                                       ; $508d: $c6 $fb
    add a                                         ; $508f: $87
    res 6, a                                      ; $5090: $cb $b7
    db $db                                        ; $5092: $db
    or a                                          ; $5093: $b7
    ei                                            ; $5094: $fb
    add a                                         ; $5095: $87
    cp e                                          ; $5096: $bb
    rst $00                                       ; $5097: $c7
    call $f9fb                                    ; $5098: $cd $fb $f9
    rst $38                                       ; $509b: $ff
    ccf                                           ; $509c: $3f
    ccf                                           ; $509d: $3f
    ld b, $06                                     ; $509e: $06 $06
    nop                                           ; $50a0: $00
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    nop                                           ; $50a3: $00
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    ret nz                                        ; $50a6: $c0

    ret nz                                        ; $50a7: $c0

    and b                                         ; $50a8: $a0
    ld h, b                                       ; $50a9: $60
    and [hl]                                      ; $50aa: $a6
    ld h, [hl]                                    ; $50ab: $66
    reti                                          ; $50ac: $d9


    ccf                                           ; $50ad: $3f
    or [hl]                                       ; $50ae: $b6
    ld a, c                                       ; $50af: $79
    xor [hl]                                      ; $50b0: $ae
    ld [hl], l                                    ; $50b1: $75
    cp l                                          ; $50b2: $bd
    ld h, e                                       ; $50b3: $63
    cp a                                          ; $50b4: $bf
    ld h, a                                       ; $50b5: $67
    cp e                                          ; $50b6: $bb
    ld h, a                                       ; $50b7: $67
    xor [hl]                                      ; $50b8: $ae
    ld [hl], c                                    ; $50b9: $71
    jr c, @+$01                                   ; $50ba: $38 $ff

    rst $38                                       ; $50bc: $ff
    rst $38                                       ; $50bd: $ff
    rst $00                                       ; $50be: $c7
    rst $00                                       ; $50bf: $c7
    nop                                           ; $50c0: $00
    nop                                           ; $50c1: $00
    ld bc, $0201                                  ; $50c2: $01 $01 $02
    inc bc                                        ; $50c5: $03
    inc bc                                        ; $50c6: $03
    ld [bc], a                                    ; $50c7: $02
    inc bc                                        ; $50c8: $03
    ld [bc], a                                    ; $50c9: $02
    ld l, a                                       ; $50ca: $6f
    ld l, [hl]                                    ; $50cb: $6e
    db $d3                                        ; $50cc: $d3
    cp [hl]                                       ; $50cd: $be
    rst $38                                       ; $50ce: $ff
    add d                                         ; $50cf: $82
    rst $28                                       ; $50d0: $ef
    sbc [hl]                                      ; $50d1: $9e
    db $db                                        ; $50d2: $db
    cp d                                          ; $50d3: $ba
    db $d3                                        ; $50d4: $d3
    or d                                          ; $50d5: $b2
    push de                                       ; $50d6: $d5
    or [hl]                                       ; $50d7: $b6
    rst $10                                       ; $50d8: $d7
    or h                                          ; $50d9: $b4
    sub h                                         ; $50da: $94
    rst $30                                       ; $50db: $f7
    rst $30                                       ; $50dc: $f7
    rst $30                                       ; $50dd: $f7
    ld h, e                                       ; $50de: $63
    ld h, e                                       ; $50df: $63
    nop                                           ; $50e0: $00
    nop                                           ; $50e1: $00
    or b                                          ; $50e2: $b0
    or b                                          ; $50e3: $b0
    ld c, b                                       ; $50e4: $48
    ld hl, sp+$68                                 ; $50e5: $f8 $68
    ret c                                         ; $50e7: $d8

    ld l, a                                       ; $50e8: $6f
    rst $18                                       ; $50e9: $df
    ld l, b                                       ; $50ea: $68
    rst $18                                       ; $50eb: $df
    scf                                           ; $50ec: $37
    ret c                                         ; $50ed: $d8

    rst $38                                       ; $50ee: $ff
    db $10                                        ; $50ef: $10
    ld sp, hl                                     ; $50f0: $f9
    ld d, $bb                                     ; $50f1: $16 $bb
    ld d, [hl]                                    ; $50f3: $56
    ld a, a                                       ; $50f4: $7f
    ret nc                                        ; $50f5: $d0

    ld [hl], a                                    ; $50f6: $77
    ret c                                         ; $50f7: $d8

    ld l, c                                       ; $50f8: $69
    rst $18                                       ; $50f9: $df
    rst $08                                       ; $50fa: $cf
    rst $38                                       ; $50fb: $ff
    rst $30                                       ; $50fc: $f7
    rst $30                                       ; $50fd: $f7
    jr nc, jr_03b_5130                            ; $50fe: $30 $30

    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    cp [hl]                                       ; $510a: $be
    cp [hl]                                       ; $510b: $be
    ld a, l                                       ; $510c: $7d
    jp $fb45                                      ; $510d: $c3 $45 $fb


    ld a, l                                       ; $5110: $7d
    ei                                            ; $5111: $fb
    ld [hl], a                                    ; $5112: $77
    ei                                            ; $5113: $fb
    ld l, e                                       ; $5114: $6b
    rst $30                                       ; $5115: $f7
    ld a, e                                       ; $5116: $7b
    rst $20                                       ; $5117: $e7
    cp l                                          ; $5118: $bd
    ld h, e                                       ; $5119: $63
    jr nz, @+$01                                  ; $511a: $20 $ff

    rst $38                                       ; $511c: $ff
    rst $38                                       ; $511d: $ff
    rst $18                                       ; $511e: $df
    rst $18                                       ; $511f: $df
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    ld [hl], b                                    ; $5128: $70
    ld [hl], b                                    ; $5129: $70
    adc e                                         ; $512a: $8b
    ei                                            ; $512b: $fb
    halt                                          ; $512c: $76
    adc l                                         ; $512d: $8d
    rst $30                                       ; $512e: $f7
    inc c                                         ; $512f: $0c

jr_03b_5130:
    sub [hl]                                      ; $5130: $96
    ld l, l                                       ; $5131: $6d
    or [hl]                                       ; $5132: $b6
    ld l, l                                       ; $5133: $6d
    or $0d                                        ; $5134: $f6 $0d
    halt                                          ; $5136: $76
    adc l                                         ; $5137: $8d
    sbc d                                         ; $5138: $9a
    rst $30                                       ; $5139: $f7
    ld a, [c]                                     ; $513a: $f2
    rst $38                                       ; $513b: $ff
    rst $38                                       ; $513c: $ff
    rst $38                                       ; $513d: $ff
    rrca                                          ; $513e: $0f
    rrca                                          ; $513f: $0f
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    ld [bc], a                                    ; $5142: $02
    ld [bc], a                                    ; $5143: $02
    dec b                                         ; $5144: $05
    rlca                                          ; $5145: $07
    add hl, bc                                    ; $5146: $09
    rrca                                          ; $5147: $0f
    dec c                                         ; $5148: $0d
    dec bc                                        ; $5149: $0b
    ld l, l                                       ; $514a: $6d
    ld l, e                                       ; $514b: $6b
    sub l                                         ; $514c: $95
    ei                                            ; $514d: $fb
    db $ed                                        ; $514e: $ed
    inc sp                                        ; $514f: $33
    ld e, l                                       ; $5150: $5d
    db $e3                                        ; $5151: $e3
    and l                                         ; $5152: $a5
    db $db                                        ; $5153: $db
    db $ed                                        ; $5154: $ed
    sbc e                                         ; $5155: $9b
    cp l                                          ; $5156: $bd
    jp $e3dd                                      ; $5157: $c3 $dd $e3


    pop af                                        ; $515a: $f1
    rst $38                                       ; $515b: $ff
    cp a                                          ; $515c: $bf
    cp a                                          ; $515d: $bf
    ld c, $0e                                     ; $515e: $0e $0e
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    ld a, $3e                                     ; $5162: $3e $3e
    ld e, l                                       ; $5164: $5d
    ld h, e                                       ; $5165: $63
    ld a, a                                       ; $5166: $7f
    ld b, b                                       ; $5167: $40
    ld e, a                                       ; $5168: $5f
    ld h, b                                       ; $5169: $60
    ld a, b                                       ; $516a: $78
    ld h, a                                       ; $516b: $67
    dec sp                                        ; $516c: $3b
    daa                                           ; $516d: $27
    ld a, $23                                     ; $516e: $3e $23
    ccf                                           ; $5170: $3f
    jr nz, jr_03b_51b2                            ; $5171: $20 $3f

    jr nz, jr_03b_51ad                            ; $5173: $20 $38

    daa                                           ; $5175: $27

jr_03b_5176:
    dec sp                                        ; $5176: $3b
    daa                                           ; $5177: $27
    ccf                                           ; $5178: $3f
    jr nz, jr_03b_519b                            ; $5179: $20 $20

    ccf                                           ; $517b: $3f
    ccf                                           ; $517c: $3f
    ccf                                           ; $517d: $3f
    rra                                           ; $517e: $1f
    rra                                           ; $517f: $1f
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    add b                                         ; $5184: $80
    add b                                         ; $5185: $80
    ld h, b                                       ; $5186: $60
    ldh [$d0], a                                  ; $5187: $e0 $d0
    jr nc, jr_03b_5176                            ; $5189: $30 $eb

    dec de                                        ; $518b: $1b
    halt                                          ; $518c: $76
    adc l                                         ; $518d: $8d
    or $0d                                        ; $518e: $f6 $0d
    xor $1d                                       ; $5190: $ee $1d
    sbc $3d                                       ; $5192: $de $3d
    ld l, a                                       ; $5194: $6f
    sbc h                                         ; $5195: $9c
    db $ed                                        ; $5196: $ed
    sbc [hl]                                      ; $5197: $9e
    adc $3f                                       ; $5198: $ce $3f
    dec sp                                        ; $519a: $3b

jr_03b_519b:
    ei                                            ; $519b: $fb
    pop af                                        ; $519c: $f1
    pop af                                        ; $519d: $f1
    ret nz                                        ; $519e: $c0

    ret nz                                        ; $519f: $c0

    nop                                           ; $51a0: $00
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    nop                                           ; $51a3: $00
    nop                                           ; $51a4: $00
    nop                                           ; $51a5: $00
    nop                                           ; $51a6: $00
    nop                                           ; $51a7: $00
    nop                                           ; $51a8: $00
    nop                                           ; $51a9: $00
    ld b, $06                                     ; $51aa: $06 $06
    cp l                                          ; $51ac: $bd

jr_03b_51ad:
    cp e                                          ; $51ad: $bb
    rst $28                                       ; $51ae: $ef
    ret c                                         ; $51af: $d8

    rst $28                                       ; $51b0: $ef
    ret c                                         ; $51b1: $d8

jr_03b_51b2:
    db $ec                                        ; $51b2: $ec
    db $db                                        ; $51b3: $db
    dec l                                         ; $51b4: $2d
    db $db                                        ; $51b5: $db
    db $ed                                        ; $51b6: $ed
    dec de                                        ; $51b7: $1b
    db $ed                                        ; $51b8: $ed
    dec de                                        ; $51b9: $1b
    add hl, bc                                    ; $51ba: $09
    rst $38                                       ; $51bb: $ff
    rst $38                                       ; $51bc: $ff
    rst $38                                       ; $51bd: $ff
    or $f6                                        ; $51be: $f6 $f6
    nop                                           ; $51c0: $00
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
    inc b                                         ; $51c4: $04
    inc b                                         ; $51c5: $04
    ld a, [bc]                                    ; $51c6: $0a
    ld c, $1a                                     ; $51c7: $0e $1a
    ld d, $1a                                     ; $51c9: $16 $1a
    ld d, $db                                     ; $51cb: $16 $db
    rst $10                                       ; $51cd: $d7
    cp d                                          ; $51ce: $ba
    ld [hl], a                                    ; $51cf: $77
    reti                                          ; $51d0: $d9


    ld [hl], $df                                  ; $51d1: $36 $df
    jr nc, jr_03b_5234                            ; $51d3: $30 $5f

    or b                                          ; $51d5: $b0
    reti                                          ; $51d6: $d9


    or [hl]                                       ; $51d7: $b6
    jp c, $93b7                                   ; $51d8: $da $b7 $93

    rst $38                                       ; $51db: $ff
    rst $38                                       ; $51dc: $ff
    rst $38                                       ; $51dd: $ff
    ld l, h                                       ; $51de: $6c
    ld l, h                                       ; $51df: $6c
    nop                                           ; $51e0: $00
    nop                                           ; $51e1: $00
    nop                                           ; $51e2: $00
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    nop                                           ; $51e7: $00
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    ld b, $06                                     ; $51ea: $06 $06
    adc c                                         ; $51ec: $89
    adc a                                         ; $51ed: $8f
    ld d, [hl]                                    ; $51ee: $56
    reti                                          ; $51ef: $d9


    ld l, [hl]                                    ; $51f0: $6e
    push af                                       ; $51f1: $f5
    ld e, l                                       ; $51f2: $5d
    db $e3                                        ; $51f3: $e3
    rst $18                                       ; $51f4: $df
    rst $20                                       ; $51f5: $e7
    ei                                            ; $51f6: $fb
    ld h, a                                       ; $51f7: $67
    xor [hl]                                      ; $51f8: $ae
    ld [hl], c                                    ; $51f9: $71
    jr c, @+$01                                   ; $51fa: $38 $ff

    rst $38                                       ; $51fc: $ff
    rst $38                                       ; $51fd: $ff
    rst $00                                       ; $51fe: $c7
    rst $00                                       ; $51ff: $c7
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    nop                                           ; $5206: $00
    nop                                           ; $5207: $00
    nop                                           ; $5208: $00
    nop                                           ; $5209: $00
    ld l, h                                       ; $520a: $6c
    ld l, h                                       ; $520b: $6c
    jp nc, $febe                                  ; $520c: $d2 $be $fe

    add d                                         ; $520f: $82
    xor $9e                                       ; $5210: $ee $9e
    ret c                                         ; $5212: $d8

    cp b                                          ; $5213: $b8
    ret nc                                        ; $5214: $d0

    or b                                          ; $5215: $b0
    ret nc                                        ; $5216: $d0

    or b                                          ; $5217: $b0
    ret nc                                        ; $5218: $d0

    or b                                          ; $5219: $b0
    sub b                                         ; $521a: $90
    ldh a, [$f0]                                  ; $521b: $f0 $f0
    ldh a, [$60]                                  ; $521d: $f0 $60
    ld h, b                                       ; $521f: $60
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    inc bc                                        ; $5222: $03
    inc bc                                        ; $5223: $03
    dec b                                         ; $5224: $05
    ld b, $07                                     ; $5225: $06 $07
    inc b                                         ; $5227: $04
    rlca                                          ; $5228: $07
    inc b                                         ; $5229: $04
    rlca                                          ; $522a: $07
    inc b                                         ; $522b: $04
    rlca                                          ; $522c: $07
    inc b                                         ; $522d: $04
    rlca                                          ; $522e: $07
    inc b                                         ; $522f: $04
    rlca                                          ; $5230: $07
    inc b                                         ; $5231: $04
    rlca                                          ; $5232: $07
    inc b                                         ; $5233: $04

jr_03b_5234:
    rlca                                          ; $5234: $07
    inc b                                         ; $5235: $04
    rlca                                          ; $5236: $07
    inc b                                         ; $5237: $04
    rlca                                          ; $5238: $07
    inc b                                         ; $5239: $04
    inc b                                         ; $523a: $04
    rlca                                          ; $523b: $07
    rlca                                          ; $523c: $07
    rlca                                          ; $523d: $07
    inc bc                                        ; $523e: $03
    inc bc                                        ; $523f: $03
    nop                                           ; $5240: $00
    nop                                           ; $5241: $00
    ld hl, sp-$08                                 ; $5242: $f8 $f8
    db $f4                                        ; $5244: $f4
    inc c                                         ; $5245: $0c
    inc d                                         ; $5246: $14
    db $ec                                        ; $5247: $ec
    ld h, h                                       ; $5248: $64
    db $fc                                        ; $5249: $fc
    ld a, a                                       ; $524a: $7f
    rst $38                                       ; $524b: $ff
    cp l                                          ; $524c: $bd
    ld a, [hl]                                    ; $524d: $7e
    db $db                                        ; $524e: $db
    inc a                                         ; $524f: $3c
    inc d                                         ; $5250: $14
    ei                                            ; $5251: $fb
    ld a, l                                       ; $5252: $7d
    di                                            ; $5253: $f3
    ld [hl], a                                    ; $5254: $77
    ld hl, sp+$5b                                 ; $5255: $f8 $5b
    call c, $ce4d                                 ; $5257: $dc $4d $ce
    ld b, a                                       ; $525a: $47
    rst $00                                       ; $525b: $c7
    jp $80c3                                      ; $525c: $c3 $c3 $80


    add b                                         ; $525f: $80
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    nop                                           ; $5267: $00
    add $c6                                       ; $5268: $c6 $c6
    dec l                                         ; $526a: $2d
    db $eb                                        ; $526b: $eb
    reti                                          ; $526c: $d9


    ccf                                           ; $526d: $3f
    rst $18                                       ; $526e: $df
    ccf                                           ; $526f: $3f
    push de                                       ; $5270: $d5
    scf                                           ; $5271: $37
    db $dd                                        ; $5272: $dd
    dec sp                                        ; $5273: $3b
    db $dd                                        ; $5274: $dd
    dec sp                                        ; $5275: $3b
    db $dd                                        ; $5276: $dd
    dec sp                                        ; $5277: $3b
    ld l, l                                       ; $5278: $6d
    db $db                                        ; $5279: $db
    ret                                           ; $527a: $c9


    rst $38                                       ; $527b: $ff

jr_03b_527c:
    rst $38                                       ; $527c: $ff
    rst $38                                       ; $527d: $ff
    ld [hl], $36                                  ; $527e: $36 $36
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    db $db                                        ; $528a: $db
    db $db                                        ; $528b: $db
    and a                                         ; $528c: $a7
    ld a, h                                       ; $528d: $7c
    db $fd                                        ; $528e: $fd
    ld b, $df                                     ; $528f: $06 $df
    ld a, $b2                                     ; $5291: $3e $b2
    ld [hl], e                                    ; $5293: $73
    and e                                         ; $5294: $a3
    ld h, e                                       ; $5295: $63
    and c                                         ; $5296: $a1
    ld h, c                                       ; $5297: $61
    and c                                         ; $5298: $a1
    ld h, c                                       ; $5299: $61
    jr nz, jr_03b_527c                            ; $529a: $20 $e0

    ldh [$e0], a                                  ; $529c: $e0 $e0
    ret nz                                        ; $529e: $c0

    ret nz                                        ; $529f: $c0

    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    nop                                           ; $52a3: $00
    nop                                           ; $52a4: $00
    nop                                           ; $52a5: $00
    nop                                           ; $52a6: $00
    nop                                           ; $52a7: $00
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    add c                                         ; $52aa: $81
    add c                                         ; $52ab: $81
    ld e, d                                       ; $52ac: $5a
    db $db                                        ; $52ad: $db
    and l                                         ; $52ae: $a5
    ld a, [hl]                                    ; $52af: $7e
    rst $30                                       ; $52b0: $f7
    inc l                                         ; $52b1: $2c
    sub $29                                       ; $52b2: $d6 $29
    cp $01                                        ; $52b4: $fe $01
    ld l, h                                       ; $52b6: $6c
    sub e                                         ; $52b7: $93
    push de                                       ; $52b8: $d5
    cp e                                          ; $52b9: $bb
    sbc c                                         ; $52ba: $99
    rst $38                                       ; $52bb: $ff
    rst $38                                       ; $52bc: $ff
    rst $38                                       ; $52bd: $ff
    ld h, [hl]                                    ; $52be: $66
    ld h, [hl]                                    ; $52bf: $66
    nop                                           ; $52c0: $00
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    nop                                           ; $52c3: $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    nop                                           ; $52c6: $00
    nop                                           ; $52c7: $00
    ld bc, $c601                                  ; $52c8: $01 $01 $c6
    rst $00                                       ; $52cb: $c7
    dec hl                                        ; $52cc: $2b
    db $ec                                        ; $52cd: $ec
    ld [hl], a                                    ; $52ce: $77
    ld hl, sp+$69                                 ; $52cf: $f8 $69
    or $7b                                        ; $52d1: $f6 $7b
    and $ef                                       ; $52d3: $e6 $ef
    ldh a, [$b7]                                  ; $52d5: $f0 $b7
    cp b                                          ; $52d7: $b8
    sbc d                                         ; $52d8: $9a
    sbc l                                         ; $52d9: $9d
    rrca                                          ; $52da: $0f
    rrca                                          ; $52db: $0f
    rlca                                          ; $52dc: $07
    rlca                                          ; $52dd: $07
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    inc c                                         ; $52e6: $0c
    inc c                                         ; $52e7: $0c
    sbc e                                         ; $52e8: $9b
    sub a                                         ; $52e9: $97
    ld e, a                                       ; $52ea: $5f
    db $d3                                        ; $52eb: $d3
    cp a                                          ; $52ec: $bf
    ld [hl], e                                    ; $52ed: $73
    or a                                          ; $52ee: $b7
    ld a, b                                       ; $52ef: $78
    cp b                                          ; $52f0: $b8
    ld a, a                                       ; $52f1: $7f
    xor a                                         ; $52f2: $af
    ld l, a                                       ; $52f3: $6f
    and [hl]                                      ; $52f4: $a6
    ld h, a                                       ; $52f5: $67
    xor l                                         ; $52f6: $ad
    ld l, [hl]                                    ; $52f7: $6e
    rst $10                                       ; $52f8: $d7
    cp b                                          ; $52f9: $b8
    sub b                                         ; $52fa: $90
    rst $38                                       ; $52fb: $ff
    rst $38                                       ; $52fc: $ff
    rst $38                                       ; $52fd: $ff
    ld l, a                                       ; $52fe: $6f
    ld l, a                                       ; $52ff: $6f
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    ret nz                                        ; $5306: $c0

    ret nz                                        ; $5307: $c0

    and b                                         ; $5308: $a0
    ld h, b                                       ; $5309: $60
    and b                                         ; $530a: $a0
    ld h, b                                       ; $530b: $60
    and b                                         ; $530c: $a0
    ld h, b                                       ; $530d: $60
    and b                                         ; $530e: $a0
    ld h, b                                       ; $530f: $60
    and b                                         ; $5310: $a0
    ld h, b                                       ; $5311: $60
    and b                                         ; $5312: $a0
    ld h, b                                       ; $5313: $60
    and b                                         ; $5314: $a0
    ld h, b                                       ; $5315: $60
    ld h, b                                       ; $5316: $60
    ldh [rLCDC], a                                ; $5317: $e0 $40
    ret nz                                        ; $5319: $c0

    ret nz                                        ; $531a: $c0

    ret nz                                        ; $531b: $c0

    add b                                         ; $531c: $80
    add b                                         ; $531d: $80
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    ld l, [hl]                                    ; $5322: $6e
    ld l, [hl]                                    ; $5323: $6e
    db $dd                                        ; $5324: $dd
    or e                                          ; $5325: $b3
    db $dd                                        ; $5326: $dd
    or e                                          ; $5327: $b3
    db $dd                                        ; $5328: $dd
    or e                                          ; $5329: $b3
    db $dd                                        ; $532a: $dd
    or e                                          ; $532b: $b3
    db $dd                                        ; $532c: $dd
    or e                                          ; $532d: $b3
    db $fd                                        ; $532e: $fd
    add e                                         ; $532f: $83
    db $fd                                        ; $5330: $fd
    add e                                         ; $5331: $83
    call $ddb3                                    ; $5332: $cd $b3 $dd
    or e                                          ; $5335: $b3
    db $dd                                        ; $5336: $dd
    or e                                          ; $5337: $b3
    sbc l                                         ; $5338: $9d
    di                                            ; $5339: $f3
    sub c                                         ; $533a: $91
    rst $38                                       ; $533b: $ff
    rst $38                                       ; $533c: $ff
    rst $38                                       ; $533d: $ff
    ld l, [hl]                                    ; $533e: $6e
    ld l, [hl]                                    ; $533f: $6e
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
    ld sp, $4a31                                  ; $534a: $31 $31 $4a
    ld a, e                                       ; $534d: $7b
    or l                                          ; $534e: $b5
    adc $76                                       ; $534f: $ce $76
    xor l                                         ; $5351: $ad
    xor $1d                                       ; $5352: $ee $1d
    rst $38                                       ; $5354: $ff
    inc a                                         ; $5355: $3c
    db $dd                                        ; $5356: $dd
    ld a, $76                                     ; $5357: $3e $76
    adc a                                         ; $5359: $8f
    add a                                         ; $535a: $87
    rst $38                                       ; $535b: $ff
    db $fd                                        ; $535c: $fd
    db $fd                                        ; $535d: $fd
    ld a, b                                       ; $535e: $78
    ld a, b                                       ; $535f: $78
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    ld b, $06                                     ; $5366: $06 $06
    call Call_000_2dcb                            ; $5368: $cd $cb $2d
    db $eb                                        ; $536b: $eb
    sbc $31                                       ; $536c: $de $31
    db $dd                                        ; $536e: $dd
    dec sp                                        ; $536f: $3b
    ld e, l                                       ; $5370: $5d
    cp e                                          ; $5371: $bb
    db $dd                                        ; $5372: $dd
    cp e                                          ; $5373: $bb
    sbc $39                                       ; $5374: $de $39
    jp c, $ef3d                                   ; $5376: $da $3d $ef

    ld e, h                                       ; $5379: $5c
    call z, $ffff                                 ; $537a: $cc $ff $ff
    rst $38                                       ; $537d: $ff
    inc sp                                        ; $537e: $33
    inc sp                                        ; $537f: $33
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    jr nc, jr_03b_53b6                            ; $5384: $30 $30

    ld l, b                                       ; $5386: $68
    ld e, b                                       ; $5387: $58

jr_03b_5388:
    ld l, b                                       ; $5388: $68
    ld e, b                                       ; $5389: $58
    ld l, b                                       ; $538a: $68
    ld e, b                                       ; $538b: $58
    db $ec                                        ; $538c: $ec
    call c, $c6fa                                 ; $538d: $dc $fa $c6
    ld a, l                                       ; $5390: $7d
    ld b, e                                       ; $5391: $43
    ld h, l                                       ; $5392: $65
    ld e, e                                       ; $5393: $5b
    db $ed                                        ; $5394: $ed
    db $db                                        ; $5395: $db
    db $ed                                        ; $5396: $ed
    db $db                                        ; $5397: $db
    ld l, l                                       ; $5398: $6d
    db $db                                        ; $5399: $db
    ld c, c                                       ; $539a: $49
    rst $38                                       ; $539b: $ff
    rst $38                                       ; $539c: $ff
    rst $38                                       ; $539d: $ff
    or [hl]                                       ; $539e: $b6
    or [hl]                                       ; $539f: $b6
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    ld [hl], b                                    ; $53a2: $70
    ld [hl], b                                    ; $53a3: $70
    xor h                                         ; $53a4: $ac
    call c, $86fa                                 ; $53a5: $dc $fa $86
    db $fd                                        ; $53a8: $fd
    add e                                         ; $53a9: $83
    adc $b1                                       ; $53aa: $ce $b1
    sbc $b9                                       ; $53ac: $de $b9
    or $99                                        ; $53ae: $f6 $99
    cp $81                                        ; $53b0: $fe $81
    db $fd                                        ; $53b2: $fd
    add e                                         ; $53b3: $83
    res 6, a                                      ; $53b4: $cb $b7

jr_03b_53b6:
    reti                                          ; $53b6: $d9


    or a                                          ; $53b7: $b7
    db $dd                                        ; $53b8: $dd
    or e                                          ; $53b9: $b3
    sub c                                         ; $53ba: $91
    rst $38                                       ; $53bb: $ff
    rst $38                                       ; $53bc: $ff
    rst $38                                       ; $53bd: $ff
    ld l, [hl]                                    ; $53be: $6e
    ld l, [hl]                                    ; $53bf: $6e
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
    sbc c                                         ; $53ca: $99
    sbc c                                         ; $53cb: $99
    rst $20                                       ; $53cc: $e7
    cp $bb                                        ; $53cd: $fe $bb
    add $cf                                       ; $53cf: $c6 $cf
    or d                                          ; $53d1: $b2
    ld e, a                                       ; $53d2: $5f
    or d                                          ; $53d3: $b2
    rst $38                                       ; $53d4: $ff
    ld [bc], a                                    ; $53d5: $02
    ld a, d                                       ; $53d6: $7a
    add a                                         ; $53d7: $87
    or e                                          ; $53d8: $b3
    rst $08                                       ; $53d9: $cf
    rst $00                                       ; $53da: $c7
    rst $38                                       ; $53db: $ff
    ld a, h                                       ; $53dc: $7c
    ld a, h                                       ; $53dd: $7c
    jr c, jr_03b_5418                             ; $53de: $38 $38

    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    ld bc, $0701                                  ; $53e2: $01 $01 $07
    ld b, $0b                                     ; $53e5: $06 $0b
    inc c                                         ; $53e7: $0c
    rla                                           ; $53e8: $17
    jr jr_03b_5388                                ; $53e9: $18 $9d

    sub d                                         ; $53eb: $92
    ld e, a                                       ; $53ec: $5f
    jp nc, $f877                                  ; $53ed: $d2 $77 $f8

    ld l, c                                       ; $53f0: $69
    sbc $6f                                       ; $53f1: $de $6f
    sbc $af                                       ; $53f3: $de $af
    ld e, [hl]                                    ; $53f5: $5e
    db $eb                                        ; $53f6: $eb
    inc e                                         ; $53f7: $1c
    ld l, [hl]                                    ; $53f8: $6e
    sbc c                                         ; $53f9: $99
    adc c                                         ; $53fa: $89
    rst $38                                       ; $53fb: $ff
    rst $38                                       ; $53fc: $ff
    rst $38                                       ; $53fd: $ff
    halt                                          ; $53fe: $76
    halt                                          ; $53ff: $76
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    add b                                         ; $5402: $80
    add b                                         ; $5403: $80
    ld [hl], b                                    ; $5404: $70
    ldh a, [rBCPS]                                ; $5405: $f0 $68
    ret c                                         ; $5407: $d8

    ld l, b                                       ; $5408: $68
    ret c                                         ; $5409: $d8

    ld l, b                                       ; $540a: $68
    ret c                                         ; $540b: $d8

    ld l, h                                       ; $540c: $6c
    call c, $c67a                                 ; $540d: $dc $7a $c6
    ld a, l                                       ; $5410: $7d
    jp $db65                                      ; $5411: $c3 $65 $db


    ld l, l                                       ; $5414: $6d
    db $db                                        ; $5415: $db
    db $ed                                        ; $5416: $ed
    db $db                                        ; $5417: $db

jr_03b_5418:
    db $ed                                        ; $5418: $ed
    db $db                                        ; $5419: $db
    ret                                           ; $541a: $c9


    rst $38                                       ; $541b: $ff
    ld a, a                                       ; $541c: $7f
    ld a, a                                       ; $541d: $7f
    ld [hl], $36                                  ; $541e: $36 $36
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    inc e                                         ; $5422: $1c
    inc e                                         ; $5423: $1c
    ld a, [hl+]                                   ; $5424: $2a
    ld [hl], $3d                                  ; $5425: $36 $3d
    inc hl                                        ; $5427: $23
    ld a, $21                                     ; $5428: $3e $21
    ccf                                           ; $542a: $3f
    jr nz, jr_03b_5466                            ; $542b: $20 $39

    ld h, $3b                                     ; $542d: $26 $3b
    ld h, $3b                                     ; $542f: $26 $3b
    ld h, $3b                                     ; $5431: $26 $3b
    inc h                                         ; $5433: $24
    ccf                                           ; $5434: $3f
    jr nz, jr_03b_5475                            ; $5435: $20 $3e

    ld hl, $233d                                  ; $5437: $21 $3d $23
    inc hl                                        ; $543a: $23
    ccf                                           ; $543b: $3f
    ld a, $3e                                     ; $543c: $3e $3e
    inc e                                         ; $543e: $1c
    inc e                                         ; $543f: $1c
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    nop                                           ; $5447: $00
    add b                                         ; $5448: $80
    add b                                         ; $5449: $80
    adc h                                         ; $544a: $8c
    adc h                                         ; $544b: $8c
    ld d, e                                       ; $544c: $53
    rst $18                                       ; $544d: $df
    db $ed                                        ; $544e: $ed
    ld [hl], e                                    ; $544f: $73
    db $dd                                        ; $5450: $dd
    ld l, e                                       ; $5451: $6b
    ei                                            ; $5452: $fb
    ld b, a                                       ; $5453: $47
    ld a, a                                       ; $5454: $7f
    rst $08                                       ; $5455: $cf
    rst $30                                       ; $5456: $f7
    rst $08                                       ; $5457: $cf
    db $dd                                        ; $5458: $dd
    db $e3                                        ; $5459: $e3
    ld h, c                                       ; $545a: $61
    ld a, a                                       ; $545b: $7f
    ccf                                           ; $545c: $3f
    ccf                                           ; $545d: $3f
    ld e, $1e                                     ; $545e: $1e $1e
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    inc bc                                        ; $5464: $03
    inc bc                                        ; $5465: $03

jr_03b_5466:
    dec b                                         ; $5466: $05
    ld b, $07                                     ; $5467: $06 $07
    inc b                                         ; $5469: $04
    scf                                           ; $546a: $37
    inc [hl]                                      ; $546b: $34
    ld c, a                                       ; $546c: $4f
    ld a, h                                       ; $546d: $7c
    or a                                          ; $546e: $b7
    call z, $ac77                                 ; $546f: $cc $77 $ac
    rst $28                                       ; $5472: $ef
    inc e                                         ; $5473: $1c
    rst $38                                       ; $5474: $ff

jr_03b_5475:
    inc a                                         ; $5475: $3c
    sbc $3d                                       ; $5476: $de $3d
    halt                                          ; $5478: $76
    adc l                                         ; $5479: $8d
    add h                                         ; $547a: $84
    rst $38                                       ; $547b: $ff
    rst $38                                       ; $547c: $ff
    rst $38                                       ; $547d: $ff
    ld a, e                                       ; $547e: $7b
    ld a, e                                       ; $547f: $7b
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    ld bc, $8201                                  ; $5482: $01 $01 $82
    add e                                         ; $5485: $83
    ld b, e                                       ; $5486: $43
    jp nz, Jump_03b_62a3                          ; $5487: $c2 $a3 $62

    di                                            ; $548a: $f3
    ld [de], a                                    ; $548b: $12
    dec hl                                        ; $548c: $2b
    jp c, $da6b                                   ; $548d: $da $6b $da

    db $db                                        ; $5490: $db
    ld a, [hl-]                                   ; $5491: $3a
    or e                                          ; $5492: $b3
    ld [hl], d                                    ; $5493: $72
    ld h, e                                       ; $5494: $63
    ld [c], a                                     ; $5495: $e2
    jp $83c2                                      ; $5496: $c3 $c2 $83


    add d                                         ; $5499: $82
    add d                                         ; $549a: $82
    add e                                         ; $549b: $83
    add e                                         ; $549c: $83
    add e                                         ; $549d: $83
    ld bc, $0001                                  ; $549e: $01 $01 $00
    nop                                           ; $54a1: $00
    ret nz                                        ; $54a2: $c0

    ret nz                                        ; $54a3: $c0

    or b                                          ; $54a4: $b0
    ld [hl], b                                    ; $54a5: $70
    add sp, $18                                   ; $54a6: $e8 $18
    db $f4                                        ; $54a8: $f4
    inc c                                         ; $54a9: $0c
    ld a, [hl-]                                   ; $54aa: $3a
    add $7b                                       ; $54ab: $c6 $7b
    rst $20                                       ; $54ad: $e7
    jp c, $fb67                                   ; $54ae: $da $67 $fb

    ld b, $e5                                     ; $54b1: $06 $e5
    ld e, $2f                                     ; $54b3: $1e $2f
    call c, $de6d                                 ; $54b5: $dc $6d $de
    halt                                          ; $54b8: $76
    rst $08                                       ; $54b9: $cf
    ld b, a                                       ; $54ba: $47
    rst $38                                       ; $54bb: $ff
    db $fd                                        ; $54bc: $fd
    db $fd                                        ; $54bd: $fd
    cp b                                          ; $54be: $b8
    cp b                                          ; $54bf: $b8
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
    ld h, [hl]                                    ; $54ca: $66
    ld h, [hl]                                    ; $54cb: $66
    sbc l                                         ; $54cc: $9d
    ei                                            ; $54cd: $fb
    db $ed                                        ; $54ce: $ed
    dec de                                        ; $54cf: $1b
    dec a                                         ; $54d0: $3d
    bit 7, l                                      ; $54d1: $cb $7d
    set 7, [hl]                                   ; $54d3: $cb $fe
    add hl, bc                                    ; $54d5: $09
    db $eb                                        ; $54d6: $eb
    inc e                                         ; $54d7: $1c
    call $1e3e                                    ; $54d8: $cd $3e $1e
    rst $38                                       ; $54db: $ff
    di                                            ; $54dc: $f3
    di                                            ; $54dd: $f3
    pop hl                                        ; $54de: $e1
    pop hl                                        ; $54df: $e1
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    ld b, $06                                     ; $54e2: $06 $06
    dec e                                         ; $54e4: $1d
    dec de                                        ; $54e5: $1b
    dec l                                         ; $54e6: $2d
    inc sp                                        ; $54e7: $33
    ld e, l                                       ; $54e8: $5d
    ld h, e                                       ; $54e9: $63
    ld [hl], l                                    ; $54ea: $75
    ld c, e                                       ; $54eb: $4b
    ld a, l                                       ; $54ec: $7d
    ld c, e                                       ; $54ed: $4b
    db $dd                                        ; $54ee: $dd
    db $e3                                        ; $54ef: $e3
    and l                                         ; $54f0: $a5
    ld a, e                                       ; $54f1: $7b
    cp l                                          ; $54f2: $bd
    ld a, e                                       ; $54f3: $7b
    cp l                                          ; $54f4: $bd
    ld a, e                                       ; $54f5: $7b
    xor a                                         ; $54f6: $af
    ld [hl], e                                    ; $54f7: $73
    cp e                                          ; $54f8: $bb
    ld h, a                                       ; $54f9: $67
    daa                                           ; $54fa: $27
    rst $38                                       ; $54fb: $ff
    db $fd                                        ; $54fc: $fd
    db $fd                                        ; $54fd: $fd
    ret c                                         ; $54fe: $d8

    ret c                                         ; $54ff: $d8

    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    ret nz                                        ; $5504: $c0

    ret nz                                        ; $5505: $c0

    and b                                         ; $5506: $a0
    ld h, b                                       ; $5507: $60
    and b                                         ; $5508: $a0
    ld h, b                                       ; $5509: $60
    and b                                         ; $550a: $a0
    ld h, b                                       ; $550b: $60
    or b                                          ; $550c: $b0
    ld [hl], b                                    ; $550d: $70
    add sp, $18                                   ; $550e: $e8 $18
    db $f4                                        ; $5510: $f4
    inc c                                         ; $5511: $0c
    sub h                                         ; $5512: $94
    ld l, h                                       ; $5513: $6c
    or h                                          ; $5514: $b4
    ld l, h                                       ; $5515: $6c
    or h                                          ; $5516: $b4
    ld l, h                                       ; $5517: $6c
    or h                                          ; $5518: $b4
    ld l, h                                       ; $5519: $6c
    inc h                                         ; $551a: $24
    db $fc                                        ; $551b: $fc
    db $fc                                        ; $551c: $fc
    db $fc                                        ; $551d: $fc
    ret c                                         ; $551e: $d8

    ret c                                         ; $551f: $d8

    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    inc c                                         ; $5522: $0c
    inc c                                         ; $5523: $0c
    ld d, $1a                                     ; $5524: $16 $1a
    ld l, $32                                     ; $5526: $2e $32
    ld e, d                                       ; $5528: $5a
    ld h, [hl]                                    ; $5529: $66
    or [hl]                                       ; $552a: $b6
    adc $ba                                       ; $552b: $ce $ba
    add $dd                                       ; $552d: $c6 $dd
    db $e3                                        ; $552f: $e3
    ld l, [hl]                                    ; $5530: $6e
    ld [hl], e                                    ; $5531: $73
    scf                                           ; $5532: $37
    ld a, [hl-]                                   ; $5533: $3a
    cpl                                           ; $5534: $2f
    ld [hl-], a                                   ; $5535: $32
    ld e, e                                       ; $5536: $5b
    ld h, [hl]                                    ; $5537: $66
    or $8f                                        ; $5538: $f6 $8f
    adc a                                         ; $553a: $8f
    rst $38                                       ; $553b: $ff
    ld sp, hl                                     ; $553c: $f9
    ld sp, hl                                     ; $553d: $f9
    ld [hl], b                                    ; $553e: $70
    ld [hl], b                                    ; $553f: $70
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
    ld h, b                                       ; $554a: $60
    ld h, b                                       ; $554b: $60
    sbc a                                         ; $554c: $9f
    rst $38                                       ; $554d: $ff
    ld l, a                                       ; $554e: $6f
    sbc b                                         ; $554f: $98
    rst $28                                       ; $5550: $ef
    ld e, b                                       ; $5551: $58
    rst $18                                       ; $5552: $df
    jr c, @+$01                                   ; $5553: $38 $ff

    ld a, d                                       ; $5555: $7a
    cp a                                          ; $5556: $bf
    ld a, d                                       ; $5557: $7a
    rst $28                                       ; $5558: $ef
    ld a, [de]                                    ; $5559: $1a
    ld a, [bc]                                    ; $555a: $0a
    rst $38                                       ; $555b: $ff
    rst $38                                       ; $555c: $ff
    rst $38                                       ; $555d: $ff
    push af                                       ; $555e: $f5
    push af                                       ; $555f: $f5
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    inc bc                                        ; $5562: $03
    inc bc                                        ; $5563: $03
    inc b                                         ; $5564: $04
    rlca                                          ; $5565: $07
    rlca                                          ; $5566: $07
    inc b                                         ; $5567: $04
    rra                                           ; $5568: $1f
    inc e                                         ; $5569: $1c
    ld [hl], $2d                                  ; $556a: $36 $2d
    rst $20                                       ; $556c: $e7
    db $fd                                        ; $556d: $fd
    ld a, a                                       ; $556e: $7f
    db $fd                                        ; $556f: $fd
    rst $30                                       ; $5570: $f7
    inc a                                         ; $5571: $3c
    rst $30                                       ; $5572: $f7
    inc l                                         ; $5573: $2c
    or $ad                                        ; $5574: $f6 $ad
    rst $30                                       ; $5576: $f7
    xor l                                         ; $5577: $ad
    rst $30                                       ; $5578: $f7
    xor l                                         ; $5579: $ad
    and l                                         ; $557a: $a5
    rst $38                                       ; $557b: $ff
    rst $38                                       ; $557c: $ff
    rst $38                                       ; $557d: $ff
    ld a, d                                       ; $557e: $7a
    ld a, d                                       ; $557f: $7a
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    add b                                         ; $5584: $80
    add b                                         ; $5585: $80
    ret nz                                        ; $5586: $c0

    ld b, b                                       ; $5587: $40
    and b                                         ; $5588: $a0
    ld h, b                                       ; $5589: $60
    sub $36                                       ; $558a: $d6 $36
    reti                                          ; $558c: $d9


    cp a                                          ; $558d: $bf
    ld d, [hl]                                    ; $558e: $56
    cp c                                          ; $558f: $b9
    db $db                                        ; $5590: $db
    inc [hl]                                      ; $5591: $34
    xor a                                         ; $5592: $af
    ld [hl], h                                    ; $5593: $74
    rst $38                                       ; $5594: $ff
    ld h, b                                       ; $5595: $60
    xor [hl]                                      ; $5596: $ae
    ld [hl], c                                    ; $5597: $71
    or h                                          ; $5598: $b4
    ld a, e                                       ; $5599: $7b
    add hl, sp                                    ; $559a: $39
    rst $38                                       ; $559b: $ff
    rst $28                                       ; $559c: $ef
    rst $28                                       ; $559d: $ef
    add $c6                                       ; $559e: $c6 $c6
    nop                                           ; $55a0: $00
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    nop                                           ; $55a3: $00
    inc bc                                        ; $55a4: $03
    inc bc                                        ; $55a5: $03
    dec b                                         ; $55a6: $05
    ld b, $0b                                     ; $55a7: $06 $0b
    inc c                                         ; $55a9: $0c
    ld c, [hl]                                    ; $55aa: $4e
    ld c, c                                       ; $55ab: $49
    rst $28                                       ; $55ac: $ef
    xor c                                         ; $55ad: $a9
    ei                                            ; $55ae: $fb
    cp h                                          ; $55af: $bc
    db $f4                                        ; $55b0: $f4
    xor a                                         ; $55b1: $af
    rst $30                                       ; $55b2: $f7
    xor a                                         ; $55b3: $af
    rst $10                                       ; $55b4: $d7
    xor a                                         ; $55b5: $af
    push af                                       ; $55b6: $f5
    adc [hl]                                      ; $55b7: $8e
    or a                                          ; $55b8: $b7
    call z, $ffc4                                 ; $55b9: $cc $c4 $ff
    ld a, a                                       ; $55bc: $7f
    ld a, a                                       ; $55bd: $7f
    dec sp                                        ; $55be: $3b
    dec sp                                        ; $55bf: $3b
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00
    ret nz                                        ; $55c2: $c0

    ret nz                                        ; $55c3: $c0

    or b                                          ; $55c4: $b0
    ld [hl], b                                    ; $55c5: $70
    cp b                                          ; $55c6: $b8
    ld l, b                                       ; $55c7: $68
    cp b                                          ; $55c8: $b8
    ld l, b                                       ; $55c9: $68
    cp b                                          ; $55ca: $b8
    ld l, b                                       ; $55cb: $68
    cp h                                          ; $55cc: $bc
    ld l, h                                       ; $55cd: $6c
    cp d                                          ; $55ce: $ba
    ld h, [hl]                                    ; $55cf: $66
    cp l                                          ; $55d0: $bd
    ld h, e                                       ; $55d1: $63
    or l                                          ; $55d2: $b5
    ld l, e                                       ; $55d3: $6b
    cp l                                          ; $55d4: $bd
    ld l, e                                       ; $55d5: $6b
    db $fd                                        ; $55d6: $fd
    ld l, e                                       ; $55d7: $6b
    ld a, l                                       ; $55d8: $7d
    db $eb                                        ; $55d9: $eb
    jp hl                                         ; $55da: $e9


    rst $38                                       ; $55db: $ff
    cp a                                          ; $55dc: $bf
    cp a                                          ; $55dd: $bf
    ld d, $16                                     ; $55de: $16 $16
    nop                                           ; $55e0: $00
    nop                                           ; $55e1: $00
    rra                                           ; $55e2: $1f
    rra                                           ; $55e3: $1f
    cpl                                           ; $55e4: $2f
    jr nc, jr_03b_561f                            ; $55e5: $30 $38

    daa                                           ; $55e7: $27
    dec sp                                        ; $55e8: $3b
    daa                                           ; $55e9: $27

jr_03b_55ea:
    dec sp                                        ; $55ea: $3b
    daa                                           ; $55eb: $27
    dec a                                         ; $55ec: $3d
    inc hl                                        ; $55ed: $23
    ld a, $21                                     ; $55ee: $3e $21
    jr c, jr_03b_5619                             ; $55f0: $38 $27

    dec sp                                        ; $55f2: $3b
    daa                                           ; $55f3: $27
    ld e, e                                       ; $55f4: $5b
    ld h, a                                       ; $55f5: $67
    ld a, a                                       ; $55f6: $7f
    ld b, b                                       ; $55f7: $40
    ld h, a                                       ; $55f8: $67
    ld a, b                                       ; $55f9: $78
    jr c, @+$41                                   ; $55fa: $38 $3f

    rra                                           ; $55fc: $1f
    rra                                           ; $55fd: $1f
    rlca                                          ; $55fe: $07
    rlca                                          ; $55ff: $07
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    ret nz                                        ; $5602: $c0

    ret nz                                        ; $5603: $c0

    and b                                         ; $5604: $a0
    ld h, b                                       ; $5605: $60
    and b                                         ; $5606: $a0
    ld h, b                                       ; $5607: $60
    jr nz, jr_03b_55ea                            ; $5608: $20 $e0

    ld hl, sp-$08                                 ; $560a: $f8 $f8
    push af                                       ; $560c: $f5
    db $ed                                        ; $560d: $ed
    cp d                                          ; $560e: $ba
    and a                                         ; $560f: $a7
    db $ed                                        ; $5610: $ed
    ld a, [c]                                     ; $5611: $f2
    rst $30                                       ; $5612: $f7
    ld hl, sp-$29                                 ; $5613: $f8 $d7
    ret c                                         ; $5615: $d8

    ld e, h                                       ; $5616: $5c
    db $d3                                        ; $5617: $d3
    ld l, e                                       ; $5618: $6b

jr_03b_5619:
    rst $30                                       ; $5619: $f7
    ld h, a                                       ; $561a: $67
    rst $38                                       ; $561b: $ff
    db $fc                                        ; $561c: $fc
    db $fc                                        ; $561d: $fc
    sbc b                                         ; $561e: $98

jr_03b_561f:
    sbc b                                         ; $561f: $98
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
    jp $adc3                                      ; $562a: $c3 $c3 $ad


    ld l, [hl]                                    ; $562d: $6e
    or [hl]                                       ; $562e: $b6
    ld a, c                                       ; $562f: $79
    ld a, l                                       ; $5630: $7d
    di                                            ; $5631: $f3
    db $eb                                        ; $5632: $eb
    rst $30                                       ; $5633: $f7
    ld l, l                                       ; $5634: $6d
    di                                            ; $5635: $f3
    or a                                          ; $5636: $b7
    ld a, b                                       ; $5637: $78
    dec sp                                        ; $5638: $3b
    db $fc                                        ; $5639: $fc
    xor $ef                                       ; $563a: $ee $ef
    rst $00                                       ; $563c: $c7
    rst $00                                       ; $563d: $c7
    ld bc, $0001                                  ; $563e: $01 $01 $00
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    jp $acc3                                      ; $564a: $c3 $c3 $ac


    ld l, a                                       ; $564d: $6f
    scf                                           ; $564e: $37
    ld hl, sp-$11                                 ; $564f: $f8 $ef
    or $da                                        ; $5651: $f6 $da
    push hl                                       ; $5653: $e5
    rst $18                                       ; $5654: $df
    db $e3                                        ; $5655: $e3
    cp l                                          ; $5656: $bd
    ld h, e                                       ; $5657: $63
    xor [hl]                                      ; $5658: $ae
    ld [hl], c                                    ; $5659: $71
    jr c, @+$01                                   ; $565a: $38 $ff

    rst $38                                       ; $565c: $ff
    rst $38                                       ; $565d: $ff
    rst $00                                       ; $565e: $c7
    rst $00                                       ; $565f: $c7
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    dec de                                        ; $5662: $1b
    dec de                                        ; $5663: $1b
    ld [hl], $2d                                  ; $5664: $36 $2d
    ld [hl], $2d                                  ; $5666: $36 $2d
    ld [hl], $2d                                  ; $5668: $36 $2d
    ld [hl], $2d                                  ; $566a: $36 $2d
    or [hl]                                       ; $566c: $b6
    xor l                                         ; $566d: $ad
    halt                                          ; $566e: $76
    db $ed                                        ; $566f: $ed
    halt                                          ; $5670: $76
    db $ed                                        ; $5671: $ed
    or $ed                                        ; $5672: $f6 $ed
    or [hl]                                       ; $5674: $b6
    xor l                                         ; $5675: $ad
    ld [hl], $2d                                  ; $5676: $36 $2d
    or [hl]                                       ; $5678: $b6
    xor l                                         ; $5679: $ad
    and h                                         ; $567a: $a4
    cp a                                          ; $567b: $bf
    cp a                                          ; $567c: $bf
    cp a                                          ; $567d: $bf
    dec de                                        ; $567e: $1b
    dec de                                        ; $567f: $1b
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    add b                                         ; $5684: $80
    add b                                         ; $5685: $80
    add b                                         ; $5686: $80
    add b                                         ; $5687: $80
    add b                                         ; $5688: $80
    add b                                         ; $5689: $80
    add [hl]                                      ; $568a: $86
    add [hl]                                      ; $568b: $86
    sbc c                                         ; $568c: $99
    sbc a                                         ; $568d: $9f
    xor [hl]                                      ; $568e: $ae
    or c                                          ; $568f: $b1
    sbc $ed                                       ; $5690: $de $ed
    or l                                          ; $5692: $b5
    res 7, a                                      ; $5693: $cb $bf
    rst $00                                       ; $5695: $c7
    ei                                            ; $5696: $fb
    rst $00                                       ; $5697: $c7
    sbc $e1                                       ; $5698: $de $e1
    ldh a, [rIE]                                  ; $569a: $f0 $ff
    cp a                                          ; $569c: $bf
    cp a                                          ; $569d: $bf
    ld c, $0e                                     ; $569e: $0e $0e
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
    ld h, b                                       ; $56aa: $60
    ld h, b                                       ; $56ab: $60
    db $dd                                        ; $56ac: $dd
    cp l                                          ; $56ad: $bd
    ei                                            ; $56ae: $fb
    add a                                         ; $56af: $87
    db $fd                                        ; $56b0: $fd
    add e                                         ; $56b1: $83
    push hl                                       ; $56b2: $e5
    sbc e                                         ; $56b3: $9b
    db $ed                                        ; $56b4: $ed
    sbc e                                         ; $56b5: $9b
    db $ed                                        ; $56b6: $ed
    sbc e                                         ; $56b7: $9b
    db $ed                                        ; $56b8: $ed
    sbc e                                         ; $56b9: $9b
    adc c                                         ; $56ba: $89
    rst $38                                       ; $56bb: $ff
    rst $38                                       ; $56bc: $ff
    rst $38                                       ; $56bd: $ff
    halt                                          ; $56be: $76
    halt                                          ; $56bf: $76
    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
    nop                                           ; $56c3: $00
    nop                                           ; $56c4: $00
    nop                                           ; $56c5: $00
    jr nc, @+$32                                  ; $56c6: $30 $30

    ld l, b                                       ; $56c8: $68
    ld e, b                                       ; $56c9: $58
    add sp, -$28                                  ; $56ca: $e8 $d8
    db $f4                                        ; $56cc: $f4
    inc c                                         ; $56cd: $0c
    db $ec                                        ; $56ce: $ec
    call c, $d8e8                                 ; $56cf: $dc $e8 $d8
    ld l, b                                       ; $56d2: $68
    ld e, b                                       ; $56d3: $58
    ld [hl], h                                    ; $56d4: $74
    ld c, h                                       ; $56d5: $4c
    ld d, h                                       ; $56d6: $54
    ld l, h                                       ; $56d7: $6c
    ld a, d                                       ; $56d8: $7a
    ld h, [hl]                                    ; $56d9: $66
    ld [hl+], a                                   ; $56da: $22
    ld a, $3e                                     ; $56db: $3e $3e
    ld a, $1c                                     ; $56dd: $3e $1c
    inc e                                         ; $56df: $1c
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    nop                                           ; $56e2: $00
    nop                                           ; $56e3: $00
    ld c, $0e                                     ; $56e4: $0e $0e
    rla                                           ; $56e6: $17
    dec de                                        ; $56e7: $1b
    ld l, a                                       ; $56e8: $6f
    ld [hl], b                                    ; $56e9: $70
    cp h                                          ; $56ea: $bc
    jp $8ff3                                      ; $56eb: $c3 $f3 $8f


    xor a                                         ; $56ee: $af
    rst $18                                       ; $56ef: $df
    db $dd                                        ; $56f0: $dd
    db $fd                                        ; $56f1: $fd
    halt                                          ; $56f2: $76
    ld [hl], a                                    ; $56f3: $77
    dec sp                                        ; $56f4: $3b
    inc a                                         ; $56f5: $3c
    cpl                                           ; $56f6: $2f
    jr nc, @+$38                                  ; $56f7: $30 $36

    add hl, sp                                    ; $56f9: $39
    add hl, de                                    ; $56fa: $19
    rra                                           ; $56fb: $1f
    rrca                                          ; $56fc: $0f
    rrca                                          ; $56fd: $0f
    ld b, $06                                     ; $56fe: $06 $06
    ld a, [hl]                                    ; $5700: $7e
    ld a, [hl]                                    ; $5701: $7e
    jp c, $dbb6                                   ; $5702: $da $b6 $db

    or a                                          ; $5705: $b7
    sub d                                         ; $5706: $92
    rst $38                                       ; $5707: $ff
    rst $38                                       ; $5708: $ff
    ld a, [hl]                                    ; $5709: $7e
    rst $28                                       ; $570a: $ef
    inc e                                         ; $570b: $1c
    ld a, a                                       ; $570c: $7f
    adc h                                         ; $570d: $8c
    ld l, [hl]                                    ; $570e: $6e
    sbc l                                         ; $570f: $9d
    db $fc                                        ; $5710: $fc
    rra                                           ; $5711: $1f
    rst $10                                       ; $5712: $d7
    scf                                           ; $5713: $37
    or e                                          ; $5714: $b3
    ld [hl], e                                    ; $5715: $73
    ld h, b                                       ; $5716: $60
    ldh [$c1], a                                  ; $5717: $e0 $c1
    pop bc                                        ; $5719: $c1
    add c                                         ; $571a: $81
    add c                                         ; $571b: $81

Jump_03b_571c:
    ld bc, $0001                                  ; $571c: $01 $01 $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    add a                                         ; $5724: $87
    add a                                         ; $5725: $87
    ret                                           ; $5726: $c9


    rst $08                                       ; $5727: $cf
    ld c, [hl]                                    ; $5728: $4e
    ret                                           ; $5729: $c9


    ld c, [hl]                                    ; $572a: $4e
    ret                                           ; $572b: $c9


    ld c, [hl]                                    ; $572c: $4e
    ret                                           ; $572d: $c9


    adc $c9                                       ; $572e: $ce $c9
    sub [hl]                                      ; $5730: $96
    sbc c                                         ; $5731: $99
    sbc l                                         ; $5732: $9d
    sub e                                         ; $5733: $93
    dec l                                         ; $5734: $2d
    inc sp                                        ; $5735: $33
    db $db                                        ; $5736: $db
    rst $20                                       ; $5737: $e7
    and $1e                                       ; $5738: $e6 $1e
    inc e                                         ; $573a: $1c
    db $fc                                        ; $573b: $fc
    ld hl, sp-$08                                 ; $573c: $f8 $f8
    ldh [$e0], a                                  ; $573e: $e0 $e0
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
    inc bc                                        ; $5744: $03
    inc bc                                        ; $5745: $03
    add a                                         ; $5746: $87
    add h                                         ; $5747: $84
    add l                                         ; $5748: $85
    add [hl]                                      ; $5749: $86
    add [hl]                                      ; $574a: $86
    add a                                         ; $574b: $87
    add e                                         ; $574c: $83
    add e                                         ; $574d: $83
    rst $38                                       ; $574e: $ff
    rst $38                                       ; $574f: $ff
    cp [hl]                                       ; $5750: $be
    jp nz, $8ef2                                  ; $5751: $c2 $f2 $8e

    adc a                                         ; $5754: $8f
    rst $38                                       ; $5755: $ff
    rst $38                                       ; $5756: $ff
    db $fc                                        ; $5757: $fc
    ld [hl], l                                    ; $5758: $75
    halt                                          ; $5759: $76
    ld b, $07                                     ; $575a: $06 $07
    inc bc                                        ; $575c: $03
    inc bc                                        ; $575d: $03
    ld bc, $0001                                  ; $575e: $01 $01 $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    add b                                         ; $5764: $80
    add b                                         ; $5765: $80
    ld h, c                                       ; $5766: $61
    pop hl                                        ; $5767: $e1
    jp nc, $d333                                  ; $5768: $d2 $33 $d3

    ld [hl-], a                                   ; $576b: $32
    sub l                                         ; $576c: $95
    or $fa                                        ; $576d: $f6 $fa
    db $fd                                        ; $576f: $fd
    halt                                          ; $5770: $76
    ld a, c                                       ; $5771: $79
    db $dd                                        ; $5772: $dd
    db $e3                                        ; $5773: $e3
    ld a, l                                       ; $5774: $7d
    add e                                         ; $5775: $83
    di                                            ; $5776: $f3
    rrca                                          ; $5777: $0f
    adc $3e                                       ; $5778: $ce $3e
    inc a                                         ; $577a: $3c
    db $fc                                        ; $577b: $fc
    ldh a, [$f0]                                  ; $577c: $f0 $f0
    ret nz                                        ; $577e: $c0

    ret nz                                        ; $577f: $c0

    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    inc bc                                        ; $5782: $03
    inc bc                                        ; $5783: $03
    ld [bc], a                                    ; $5784: $02
    inc bc                                        ; $5785: $03
    db $fd                                        ; $5786: $fd
    cp $ff                                        ; $5787: $fe $ff
    add b                                         ; $5789: $80
    cp b                                          ; $578a: $b8
    rst $00                                       ; $578b: $c7
    add $ff                                       ; $578c: $c6 $ff
    db $fd                                        ; $578e: $fd
    cp $b7                                        ; $578f: $fe $b7
    cp b                                          ; $5791: $b8
    call $fbf2                                    ; $5792: $cd $f2 $fb
    add [hl]                                      ; $5795: $86
    or l                                          ; $5796: $b5
    adc $cd                                       ; $5797: $ce $cd
    cp $7a                                        ; $5799: $fe $7a
    ld a, e                                       ; $579b: $7b
    inc sp                                        ; $579c: $33
    inc sp                                        ; $579d: $33
    ld bc, $0001                                  ; $579e: $01 $01 $00
    nop                                           ; $57a1: $00
    ldh [$e0], a                                  ; $57a2: $e0 $e0
    xor a                                         ; $57a4: $af
    ld l, a                                       ; $57a5: $6f
    cp [hl]                                       ; $57a6: $be
    ld a, c                                       ; $57a7: $79
    db $eb                                        ; $57a8: $eb
    inc e                                         ; $57a9: $1c
    call $bf3e                                    ; $57aa: $cd $3e $bf
    ld a, a                                       ; $57ad: $7f
    or e                                          ; $57ae: $b3
    ld [hl], e                                    ; $57af: $73
    and b                                         ; $57b0: $a0
    ld h, b                                       ; $57b1: $60
    and c                                         ; $57b2: $a1
    ld h, c                                       ; $57b3: $61
    xor [hl]                                      ; $57b4: $ae
    ld l, a                                       ; $57b5: $6f
    xor a                                         ; $57b6: $af
    ld l, b                                       ; $57b7: $68
    xor e                                         ; $57b8: $ab
    ld l, h                                       ; $57b9: $6c
    xor h                                         ; $57ba: $ac
    ld l, a                                       ; $57bb: $6f
    rst $20                                       ; $57bc: $e7
    rst $20                                       ; $57bd: $e7
    db $e3                                        ; $57be: $e3
    db $e3                                        ; $57bf: $e3
    nop                                           ; $57c0: $00
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    nop                                           ; $57c3: $00
    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    jp $a5c3                                      ; $57c6: $c3 $c3 $a5


    ld h, a                                       ; $57c9: $67
    and a                                         ; $57ca: $a7
    ld h, l                                       ; $57cb: $65
    dec hl                                        ; $57cc: $2b
    db $ed                                        ; $57cd: $ed
    push af                                       ; $57ce: $f5
    ei                                            ; $57cf: $fb
    db $ed                                        ; $57d0: $ed
    di                                            ; $57d1: $f3
    cp e                                          ; $57d2: $bb
    rst $00                                       ; $57d3: $c7
    ld a, [$e606]                                 ; $57d4: $fa $06 $e6
    ld e, $9c                                     ; $57d7: $1e $9c
    ld a, h                                       ; $57d9: $7c
    ld a, b                                       ; $57da: $78
    ld hl, sp-$20                                 ; $57db: $f8 $e0
    ldh [$80], a                                  ; $57dd: $e0 $80
    add b                                         ; $57df: $80
    nop                                           ; $57e0: $00
    nop                                           ; $57e1: $00
    ccf                                           ; $57e2: $3f
    ccf                                           ; $57e3: $3f
    ld e, a                                       ; $57e4: $5f
    ld h, b                                       ; $57e5: $60
    ld [hl], c                                    ; $57e6: $71
    ld c, [hl]                                    ; $57e7: $4e
    halt                                          ; $57e8: $76
    ld c, a                                       ; $57e9: $4f
    ld [hl], a                                    ; $57ea: $77
    ld c, a                                       ; $57eb: $4f
    ld a, e                                       ; $57ec: $7b
    ld b, a                                       ; $57ed: $47
    ld a, l                                       ; $57ee: $7d
    ld b, e                                       ; $57ef: $43
    ld [hl], c                                    ; $57f0: $71
    ld c, a                                       ; $57f1: $4f
    ld [hl], a                                    ; $57f2: $77
    ld c, a                                       ; $57f3: $4f
    or a                                          ; $57f4: $b7
    rst $08                                       ; $57f5: $cf
    cp $81                                        ; $57f6: $fe $81
    adc $f1                                       ; $57f8: $ce $f1
    ld [hl], b                                    ; $57fa: $70
    ld a, a                                       ; $57fb: $7f
    ccf                                           ; $57fc: $3f
    ccf                                           ; $57fd: $3f
    rrca                                          ; $57fe: $0f
    rrca                                          ; $57ff: $0f
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    add b                                         ; $5802: $80
    add b                                         ; $5803: $80
    ld b, b                                       ; $5804: $40
    ret nz                                        ; $5805: $c0

    ld b, b                                       ; $5806: $40
    ret nz                                        ; $5807: $c0

    ld b, [hl]                                    ; $5808: $46
    add $d9                                       ; $5809: $c6 $d9
    rst $18                                       ; $580b: $df
    xor [hl]                                      ; $580c: $ae
    or c                                          ; $580d: $b1
    ld e, a                                       ; $580e: $5f
    ld h, b                                       ; $580f: $60
    or e                                          ; $5810: $b3
    call z, $8cf7                                 ; $5811: $cc $f7 $8c
    cp a                                          ; $5814: $bf
    ret nz                                        ; $5815: $c0

    rst $18                                       ; $5816: $df
    ldh [$f7], a                                  ; $5817: $e0 $f7
    ld a, [$bfbe]                                 ; $5819: $fa $be $bf
    adc a                                         ; $581c: $8f
    adc a                                         ; $581d: $8f
    ld bc, $0001                                  ; $581e: $01 $01 $00
    nop                                           ; $5821: $00
    ld b, $06                                     ; $5822: $06 $06
    add hl, de                                    ; $5824: $19
    rra                                           ; $5825: $1f
    dec l                                         ; $5826: $2d
    inc sp                                        ; $5827: $33
    ld e, l                                       ; $5828: $5d
    ld h, e                                       ; $5829: $63
    or l                                          ; $582a: $b5
    res 7, l                                      ; $582b: $cb $bd
    set 3, l                                      ; $582d: $cb $dd
    db $e3                                        ; $582f: $e3
    db $ed                                        ; $5830: $ed
    di                                            ; $5831: $f3
    cp l                                          ; $5832: $bd
    or e                                          ; $5833: $b3
    cp l                                          ; $5834: $bd
    or e                                          ; $5835: $b3
    ld a, l                                       ; $5836: $7d
    jp $e75b                                      ; $5837: $c3 $5b $e7


    ld h, a                                       ; $583a: $67
    rst $38                                       ; $583b: $ff
    db $fd                                        ; $583c: $fd
    db $fd                                        ; $583d: $fd
    sbc b                                         ; $583e: $98
    sbc b                                         ; $583f: $98
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    ret nz                                        ; $5842: $c0

    ret nz                                        ; $5843: $c0

    and b                                         ; $5844: $a0
    ld h, b                                       ; $5845: $60
    and b                                         ; $5846: $a0
    ld h, b                                       ; $5847: $60
    and b                                         ; $5848: $a0
    ld h, b                                       ; $5849: $60
    and c                                         ; $584a: $a1
    ld h, c                                       ; $584b: $61
    and [hl]                                      ; $584c: $a6
    ld h, a                                       ; $584d: $67
    xor e                                         ; $584e: $ab
    ld l, h                                       ; $584f: $6c
    or a                                          ; $5850: $b7
    ld a, e                                       ; $5851: $7b
    xor l                                         ; $5852: $ad
    ld [hl], d                                    ; $5853: $72
    xor a                                         ; $5854: $af
    ld [hl], c                                    ; $5855: $71
    cp [hl]                                       ; $5856: $be
    ld [hl], c                                    ; $5857: $71
    or a                                          ; $5858: $b7
    ld a, b                                       ; $5859: $78
    inc a                                         ; $585a: $3c
    rst $38                                       ; $585b: $ff
    rst $28                                       ; $585c: $ef
    rst $28                                       ; $585d: $ef
    jp Jump_000_00c3                              ; $585e: $c3 $c3 $00


    nop                                           ; $5861: $00
    rlca                                          ; $5862: $07
    rlca                                          ; $5863: $07
    dec bc                                        ; $5864: $0b
    inc c                                         ; $5865: $0c
    rrca                                          ; $5866: $0f
    ld [$080f], sp                                ; $5867: $08 $0f $08
    adc [hl]                                      ; $586a: $8e
    adc c                                         ; $586b: $89
    ld c, [hl]                                    ; $586c: $4e
    ret                                           ; $586d: $c9


    xor a                                         ; $586e: $af
    ld l, b                                       ; $586f: $68
    xor a                                         ; $5870: $af

jr_03b_5871:
    ld l, b                                       ; $5871: $68
    ld l, a                                       ; $5872: $6f
    add sp, -$32                                  ; $5873: $e8 $ce
    ret                                           ; $5875: $c9


    sub l                                         ; $5876: $95
    sbc e                                         ; $5877: $9b
    ld e, l                                       ; $5878: $5d
    db $d3                                        ; $5879: $d3
    ld d, e                                       ; $587a: $53
    rst $18                                       ; $587b: $df
    sbc $de                                       ; $587c: $de $de
    adc h                                         ; $587e: $8c
    adc h                                         ; $587f: $8c
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    ret nz                                        ; $5882: $c0

    ret nz                                        ; $5883: $c0

    and b                                         ; $5884: $a0
    ld h, b                                       ; $5885: $60
    ret nc                                        ; $5886: $d0

    jr nc, jr_03b_5871                            ; $5887: $30 $e8

    jr @+$70                                      ; $5889: $18 $6e

    sbc [hl]                                      ; $588b: $9e
    db $ed                                        ; $588c: $ed
    db $db                                        ; $588d: $db
    xor l                                         ; $588e: $ad
    db $db                                        ; $588f: $db
    db $ed                                        ; $5890: $ed
    dec de                                        ; $5891: $1b
    call Call_000_1e3b                            ; $5892: $cd $3b $1e
    ld sp, hl                                     ; $5895: $f9
    ei                                            ; $5896: $fb
    db $fc                                        ; $5897: $fc
    db $ed                                        ; $5898: $ed
    xor $06                                       ; $5899: $ee $06
    rlca                                          ; $589b: $07
    inc bc                                        ; $589c: $03
    inc bc                                        ; $589d: $03
    ld bc, $0001                                  ; $589e: $01 $01 $00
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    nop                                           ; $58a4: $00
    nop                                           ; $58a5: $00
    ld b, $06                                     ; $58a6: $06 $06
    dec c                                         ; $58a8: $0d
    dec bc                                        ; $58a9: $0b
    dec e                                         ; $58aa: $1d
    dec de                                        ; $58ab: $1b
    ld a, [hl]                                    ; $58ac: $7e
    ld h, c                                       ; $58ad: $61
    db $dd                                        ; $58ae: $dd
    cp e                                          ; $58af: $bb
    db $dd                                        ; $58b0: $dd
    cp e                                          ; $58b1: $bb
    db $dd                                        ; $58b2: $dd
    cp e                                          ; $58b3: $bb
    ld e, [hl]                                    ; $58b4: $5e
    cp c                                          ; $58b5: $b9
    jp c, $df3d                                   ; $58b6: $da $3d $df

    inc a                                         ; $58b9: $3c
    inc d                                         ; $58ba: $14
    rst $30                                       ; $58bb: $f7
    rst $30                                       ; $58bc: $f7
    rst $30                                       ; $58bd: $f7
    di                                            ; $58be: $f3
    di                                            ; $58bf: $f3
    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    nop                                           ; $58c2: $00
    nop                                           ; $58c3: $00
    nop                                           ; $58c4: $00
    nop                                           ; $58c5: $00
    jr jr_03b_58e0                                ; $58c6: $18 $18

    inc [hl]                                      ; $58c8: $34
    inc l                                         ; $58c9: $2c
    ld [hl], h                                    ; $58ca: $74
    ld l, h                                       ; $58cb: $6c
    ld a, [$f686]                                 ; $58cc: $fa $86 $f6
    xor $f4                                       ; $58cf: $ee $f4
    db $ec                                        ; $58d1: $ec
    inc [hl]                                      ; $58d2: $34
    inc l                                         ; $58d3: $2c
    cp d                                          ; $58d4: $ba
    and [hl]                                      ; $58d5: $a6
    xor d                                         ; $58d6: $aa
    or [hl]                                       ; $58d7: $b6
    ld a, l                                       ; $58d8: $7d
    di                                            ; $58d9: $f3
    ld d, c                                       ; $58da: $51
    rst $18                                       ; $58db: $df
    rst $18                                       ; $58dc: $df
    rst $18                                       ; $58dd: $df
    adc [hl]                                      ; $58de: $8e
    adc [hl]                                      ; $58df: $8e

jr_03b_58e0:
    nop                                           ; $58e0: $00
    nop                                           ; $58e1: $00
    inc bc                                        ; $58e2: $03
    inc bc                                        ; $58e3: $03
    dec b                                         ; $58e4: $05
    ld b, $07                                     ; $58e5: $06 $07
    inc b                                         ; $58e7: $04
    rlca                                          ; $58e8: $07
    inc b                                         ; $58e9: $04
    rlca                                          ; $58ea: $07
    inc b                                         ; $58eb: $04
    rlca                                          ; $58ec: $07
    inc b                                         ; $58ed: $04
    rlca                                          ; $58ee: $07
    inc b                                         ; $58ef: $04
    rlca                                          ; $58f0: $07
    inc b                                         ; $58f1: $04
    rlca                                          ; $58f2: $07
    inc b                                         ; $58f3: $04
    rlca                                          ; $58f4: $07
    inc b                                         ; $58f5: $04
    ld a, [bc]                                    ; $58f6: $0a
    dec c                                         ; $58f7: $0d
    ld c, $09                                     ; $58f8: $0e $09
    add hl, bc                                    ; $58fa: $09
    rrca                                          ; $58fb: $0f
    rrca                                          ; $58fc: $0f
    rrca                                          ; $58fd: $0f
    ld b, $06                                     ; $58fe: $06 $06
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    ret nz                                        ; $5902: $c0

    ret nz                                        ; $5903: $c0

    or b                                          ; $5904: $b0
    ld [hl], b                                    ; $5905: $70
    add sp, $18                                   ; $5906: $e8 $18
    db $f4                                        ; $5908: $f4
    inc c                                         ; $5909: $0c
    ld a, [hl-]                                   ; $590a: $3a
    add $7a                                       ; $590b: $c6 $7a
    and $db                                       ; $590d: $e6 $db
    ld h, a                                       ; $590f: $67
    ld a, [$e307]                                 ; $5910: $fa $07 $e3
    ld e, $0e                                     ; $5913: $1e $0e
    rst $38                                       ; $5915: $ff
    ei                                            ; $5916: $fb
    ei                                            ; $5917: $fb
    pop af                                        ; $5918: $f1
    pop af                                        ; $5919: $f1
    add b                                         ; $591a: $80
    add b                                         ; $591b: $80
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
    jr jr_03b_5942                                ; $5928: $18 $18

    ld h, h                                       ; $592a: $64
    ld a, h                                       ; $592b: $7c
    cp d                                          ; $592c: $ba
    add $7a                                       ; $592d: $c6 $7a
    add [hl]                                      ; $592f: $86
    jp z, $da36                                   ; $5930: $ca $36 $da

    ld [hl], $fa                                  ; $5933: $36 $fa
    ld b, $7d                                     ; $5935: $06 $7d
    add e                                         ; $5937: $83
    db $dd                                        ; $5938: $dd
    db $eb                                        ; $5939: $eb
    ld sp, hl                                     ; $593a: $f9
    rst $38                                       ; $593b: $ff
    ccf                                           ; $593c: $3f
    ccf                                           ; $593d: $3f
    ld b, $06                                     ; $593e: $06 $06
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00

jr_03b_5942:
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    ld l, h                                       ; $594a: $6c
    ld l, h                                       ; $594b: $6c
    jp c, $f2b6                                   ; $594c: $da $b6 $f2

    adc [hl]                                      ; $594f: $8e
    xor $9e                                       ; $5950: $ee $9e
    call c, $d0bc                                 ; $5952: $dc $bc $d0
    or b                                          ; $5955: $b0
    pop de                                        ; $5956: $d1
    or c                                          ; $5957: $b1
    pop de                                        ; $5958: $d1
    or c                                          ; $5959: $b1
    sub c                                         ; $595a: $91
    pop af                                        ; $595b: $f1
    pop af                                        ; $595c: $f1
    pop af                                        ; $595d: $f1
    ld h, b                                       ; $595e: $60
    ld h, b                                       ; $595f: $60
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    ld a, b                                       ; $5962: $78
    ld a, b                                       ; $5963: $78
    or [hl]                                       ; $5964: $b6
    adc $fd                                       ; $5965: $ce $fd
    add e                                         ; $5967: $83
    cp $81                                        ; $5968: $fe $81
    rst $20                                       ; $596a: $e7
    sbc b                                         ; $596b: $98

jr_03b_596c:
    rst $28                                       ; $596c: $ef
    sbc h                                         ; $596d: $9c
    ei                                            ; $596e: $fb
    adc h                                         ; $596f: $8c
    rst $38                                       ; $5970: $ff
    add b                                         ; $5971: $80
    db $fc                                        ; $5972: $fc
    add e                                         ; $5973: $83
    pop hl                                        ; $5974: $e1
    sbc a                                         ; $5975: $9f
    ld e, a                                       ; $5976: $5f
    cp a                                          ; $5977: $bf
    sbc $3e                                       ; $5978: $de $3e
    jr nc, jr_03b_596c                            ; $597a: $30 $f0

    ldh [$e0], a                                  ; $597c: $e0 $e0
    ret nz                                        ; $597e: $c0

jr_03b_597f:
    ret nz                                        ; $597f: $c0

    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    add b                                         ; $5988: $80
    add b                                         ; $5989: $80
    ld [hl], b                                    ; $598a: $70
    ldh a, [rOCPD]                                ; $598b: $f0 $6b
    db $db                                        ; $598d: $db
    ld l, [hl]                                    ; $598e: $6e
    db $dd                                        ; $598f: $dd
    ld l, [hl]                                    ; $5990: $6e
    db $dd                                        ; $5991: $dd
    ld l, [hl]                                    ; $5992: $6e
    db $dd                                        ; $5993: $dd
    ld a, [c]                                     ; $5994: $f2
    call $c1fe                                    ; $5995: $cd $fe $c1
    ld a, [hl]                                    ; $5998: $7e
    ld h, c                                       ; $5999: $61
    jr nc, jr_03b_59db                            ; $599a: $30 $3f

    rra                                           ; $599c: $1f
    rra                                           ; $599d: $1f
    rrca                                          ; $599e: $0f
    rrca                                          ; $599f: $0f
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    nop                                           ; $59a3: $00
    nop                                           ; $59a4: $00
    nop                                           ; $59a5: $00
    jr nc, jr_03b_59d8                            ; $59a6: $30 $30

    ld l, c                                       ; $59a8: $69
    ld e, c                                       ; $59a9: $59
    db $eb                                        ; $59aa: $eb
    db $db                                        ; $59ab: $db
    rst $30                                       ; $59ac: $f7
    inc c                                         ; $59ad: $0c
    rst $28                                       ; $59ae: $ef
    rst $18                                       ; $59af: $df
    rst $28                                       ; $59b0: $ef
    rst $18                                       ; $59b1: $df
    jp hl                                         ; $59b2: $e9


    reti                                          ; $59b3: $d9


    push af                                       ; $59b4: $f5
    call $edd5                                    ; $59b5: $cd $d5 $ed
    ei                                            ; $59b8: $fb
    rst $20                                       ; $59b9: $e7
    and d                                         ; $59ba: $a2
    cp [hl]                                       ; $59bb: $be
    cp [hl]                                       ; $59bc: $be
    cp [hl]                                       ; $59bd: $be
    sbc h                                         ; $59be: $9c
    sbc h                                         ; $59bf: $9c
    nop                                           ; $59c0: $00
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    ret nz                                        ; $59c6: $c0

    ret nz                                        ; $59c7: $c0

    and b                                         ; $59c8: $a0
    ld h, b                                       ; $59c9: $60
    and b                                         ; $59ca: $a0
    ld h, b                                       ; $59cb: $60
    ret nc                                        ; $59cc: $d0

    jr nc, jr_03b_597f                            ; $59cd: $30 $b0

    ld [hl], b                                    ; $59cf: $70
    and b                                         ; $59d0: $a0
    ld h, b                                       ; $59d1: $60
    and b                                         ; $59d2: $a0
    ld h, b                                       ; $59d3: $60
    ret nc                                        ; $59d4: $d0

    jr nc, @+$52                                  ; $59d5: $30 $50

    or b                                          ; $59d7: $b0

jr_03b_59d8:
    add sp, -$68                                  ; $59d8: $e8 $98
    adc b                                         ; $59da: $88

jr_03b_59db:
    ld hl, sp-$08                                 ; $59db: $f8 $f8
    ld hl, sp+$70                                 ; $59dd: $f8 $70
    ld [hl], b                                    ; $59df: $70
    nop                                           ; $59e0: $00
    nop                                           ; $59e1: $00
    inc c                                         ; $59e2: $0c
    inc c                                         ; $59e3: $0c
    inc de                                        ; $59e4: $13
    rra                                           ; $59e5: $1f
    dec l                                         ; $59e6: $2d
    inc sp                                        ; $59e7: $33
    dec a                                         ; $59e8: $3d
    inc hl                                        ; $59e9: $23
    ld e, l                                       ; $59ea: $5d
    ld h, e                                       ; $59eb: $63
    ld [hl], l                                    ; $59ec: $75
    ld c, e                                       ; $59ed: $4b
    xor l                                         ; $59ee: $ad
    db $db                                        ; $59ef: $db
    db $ed                                        ; $59f0: $ed
    sbc e                                         ; $59f1: $9b
    db $fd                                        ; $59f2: $fd
    add e                                         ; $59f3: $83
    push af                                       ; $59f4: $f5
    adc e                                         ; $59f5: $8b
    db $ed                                        ; $59f6: $ed
    sbc e                                         ; $59f7: $9b
    reti                                          ; $59f8: $d9


    cp a                                          ; $59f9: $bf
    sbc a                                         ; $59fa: $9f
    rst $38                                       ; $59fb: $ff
    rst $30                                       ; $59fc: $f7
    rst $30                                       ; $59fd: $f7
    ld h, b                                       ; $59fe: $60
    ld h, b                                       ; $59ff: $60
    nop                                           ; $5a00: $00
    nop                                           ; $5a01: $00
    call c, $badc                                 ; $5a02: $dc $dc $ba
    halt                                          ; $5a05: $76
    xor d                                         ; $5a06: $aa
    halt                                          ; $5a07: $76
    cp d                                          ; $5a08: $ba
    ld h, [hl]                                    ; $5a09: $66
    cp d                                          ; $5a0a: $ba
    ld h, [hl]                                    ; $5a0b: $66
    cp c                                          ; $5a0c: $b9
    ld h, a                                       ; $5a0d: $67
    cp [hl]                                       ; $5a0e: $be
    ld h, c                                       ; $5a0f: $61
    cp a                                          ; $5a10: $bf
    ld h, b                                       ; $5a11: $60
    cp c                                          ; $5a12: $b9
    ld h, [hl]                                    ; $5a13: $66
    cp e                                          ; $5a14: $bb
    ld h, [hl]                                    ; $5a15: $66
    cp [hl]                                       ; $5a16: $be
    ld h, c                                       ; $5a17: $61
    cp h                                          ; $5a18: $bc
    ld h, e                                       ; $5a19: $63
    ld hl, $ffff                                  ; $5a1a: $21 $ff $ff
    rst $38                                       ; $5a1d: $ff
    sbc $de                                       ; $5a1e: $de $de
    nop                                           ; $5a20: $00
    nop                                           ; $5a21: $00
    nop                                           ; $5a22: $00
    nop                                           ; $5a23: $00
    nop                                           ; $5a24: $00
    nop                                           ; $5a25: $00
    ld bc, $1b01                                  ; $5a26: $01 $01 $1b
    ld a, [de]                                    ; $5a29: $1a
    daa                                           ; $5a2a: $27
    ld a, $5f                                     ; $5a2b: $3e $5f
    ld h, h                                       ; $5a2d: $64
    cp e                                          ; $5a2e: $bb
    add $cb                                       ; $5a2f: $c6 $cb
    or [hl]                                       ; $5a31: $b6
    db $db                                        ; $5a32: $db
    or [hl]                                       ; $5a33: $b6
    ei                                            ; $5a34: $fb
    add [hl]                                      ; $5a35: $86

Jump_03b_5a36:
    cp [hl]                                       ; $5a36: $be
    jp $fbcd                                      ; $5a37: $c3 $cd $fb


    db $fd                                        ; $5a3a: $fd
    ei                                            ; $5a3b: $fb
    ccf                                           ; $5a3c: $3f
    ccf                                           ; $5a3d: $3f
    ld b, $06                                     ; $5a3e: $06 $06
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    nop                                           ; $5a42: $00
    nop                                           ; $5a43: $00
    nop                                           ; $5a44: $00
    nop                                           ; $5a45: $00
    add b                                         ; $5a46: $80
    add b                                         ; $5a47: $80
    ld b, b                                       ; $5a48: $40
    ret nz                                        ; $5a49: $c0

    halt                                          ; $5a4a: $76
    or $ab                                        ; $5a4b: $f6 $ab
    ld a, a                                       ; $5a4d: $7f
    ld e, d                                       ; $5a4e: $5a
    rst $20                                       ; $5a4f: $e7
    ld [hl], l                                    ; $5a50: $75
    adc $6a                                       ; $5a51: $ce $6a
    db $dd                                        ; $5a53: $dd
    ld l, [hl]                                    ; $5a54: $6e
    reti                                          ; $5a55: $d9


    ld l, e                                       ; $5a56: $6b
    call c, $de6d                                 ; $5a57: $dc $6d $de
    ld c, [hl]                                    ; $5a5a: $4e
    rst $38                                       ; $5a5b: $ff
    ei                                            ; $5a5c: $fb
    ei                                            ; $5a5d: $fb
    pop af                                        ; $5a5e: $f1
    pop af                                        ; $5a5f: $f1
    nop                                           ; $5a60: $00
    nop                                           ; $5a61: $00
    nop                                           ; $5a62: $00
    nop                                           ; $5a63: $00
    nop                                           ; $5a64: $00
    nop                                           ; $5a65: $00
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    inc bc                                        ; $5a68: $03
    inc bc                                        ; $5a69: $03
    call nz, Call_000_2ac7                        ; $5a6a: $c4 $c7 $2a
    db $ed                                        ; $5a6d: $ed
    push de                                       ; $5a6e: $d5
    dec sp                                        ; $5a6f: $3b
    rst $38                                       ; $5a70: $ff
    inc de                                        ; $5a71: $13
    ld [hl], l                                    ; $5a72: $75
    sbc e                                         ; $5a73: $9b
    ld a, [$f79d]                                 ; $5a74: $fa $9d $f7
    add hl, de                                    ; $5a77: $19
    db $dd                                        ; $5a78: $dd
    inc sp                                        ; $5a79: $33
    inc sp                                        ; $5a7a: $33
    rst $38                                       ; $5a7b: $ff
    rst $38                                       ; $5a7c: $ff
    rst $38                                       ; $5a7d: $ff
    call z, Call_000_00cc                         ; $5a7e: $cc $cc $00
    nop                                           ; $5a81: $00
    rlca                                          ; $5a82: $07
    rlca                                          ; $5a83: $07
    ld a, [bc]                                    ; $5a84: $0a
    dec c                                         ; $5a85: $0d
    rrca                                          ; $5a86: $0f
    ld [$383f], sp                                ; $5a87: $08 $3f $38
    call z, $bdfb                                 ; $5a8a: $cc $fb $bd
    bit 5, a                                      ; $5a8d: $cb $6f
    sbc b                                         ; $5a8f: $98
    rst $18                                       ; $5a90: $df
    jr c, jr_03b_5b02                             ; $5a91: $38 $6f

    sbc b                                         ; $5a93: $98
    xor h                                         ; $5a94: $ac
    db $db                                        ; $5a95: $db
    ld l, l                                       ; $5a96: $6d
    sbc e                                         ; $5a97: $9b
    db $dd                                        ; $5a98: $dd
    dec sp                                        ; $5a99: $3b
    add hl, sp                                    ; $5a9a: $39
    rst $38                                       ; $5a9b: $ff
    rst $28                                       ; $5a9c: $ef
    rst $28                                       ; $5a9d: $ef
    add $c6                                       ; $5a9e: $c6 $c6
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    add b                                         ; $5aa4: $80
    add b                                         ; $5aa5: $80
    ld b, b                                       ; $5aa6: $40
    ret nz                                        ; $5aa7: $c0

    and c                                         ; $5aa8: $a1
    ld h, c                                       ; $5aa9: $61
    or e                                          ; $5aaa: $b3
    ld [hl], e                                    ; $5aab: $73
    rst $28                                       ; $5aac: $ef
    ld e, h                                       ; $5aad: $5c
    rst $28                                       ; $5aae: $ef
    ld e, e                                       ; $5aaf: $5b
    db $ed                                        ; $5ab0: $ed
    ld e, e                                       ; $5ab1: $5b
    ld l, l                                       ; $5ab2: $6d
    db $db                                        ; $5ab3: $db
    ld [hl], l                                    ; $5ab4: $75
    set 3, l                                      ; $5ab5: $cb $dd
    db $e3                                        ; $5ab7: $e3
    db $ed                                        ; $5ab8: $ed
    di                                            ; $5ab9: $f3
    ld sp, $1f3f                                  ; $5aba: $31 $3f $1f
    rra                                           ; $5abd: $1f
    rrca                                          ; $5abe: $0f
    rrca                                          ; $5abf: $0f
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    ret nz                                        ; $5ac6: $c0

    ret nz                                        ; $5ac7: $c0

    xor h                                         ; $5ac8: $ac
    ld l, h                                       ; $5ac9: $6c
    cp d                                          ; $5aca: $ba
    halt                                          ; $5acb: $76
    jp c, $ba36                                   ; $5acc: $da $36 $ba

    halt                                          ; $5acf: $76
    cp l                                          ; $5ad0: $bd
    ld h, e                                       ; $5ad1: $63
    cp e                                          ; $5ad2: $bb
    ld [hl], a                                    ; $5ad3: $77
    cp d                                          ; $5ad4: $ba
    halt                                          ; $5ad5: $76
    cp d                                          ; $5ad6: $ba
    halt                                          ; $5ad7: $76
    cp d                                          ; $5ad8: $ba
    halt                                          ; $5ad9: $76
    ld [hl-], a                                   ; $5ada: $32
    cp $fe                                        ; $5adb: $fe $fe
    cp $cc                                        ; $5add: $fe $cc
    call z, $0000                                 ; $5adf: $cc $00 $00
    ld a, b                                       ; $5ae2: $78
    ld a, b                                       ; $5ae3: $78
    or [hl]                                       ; $5ae4: $b6
    adc $fd                                       ; $5ae5: $ce $fd
    add e                                         ; $5ae7: $83
    rst $38                                       ; $5ae8: $ff
    add b                                         ; $5ae9: $80
    db $e3                                        ; $5aea: $e3
    sbc h                                         ; $5aeb: $9c
    db $ed                                        ; $5aec: $ed
    sbc [hl]                                      ; $5aed: $9e
    db $eb                                        ; $5aee: $eb
    sbc h                                         ; $5aef: $9c
    rst $38                                       ; $5af0: $ff
    add b                                         ; $5af1: $80
    rst $38                                       ; $5af2: $ff
    add b                                         ; $5af3: $80
    rst $20                                       ; $5af4: $e7
    sbc b                                         ; $5af5: $98
    rst $28                                       ; $5af6: $ef
    sbc h                                         ; $5af7: $9c
    rst $38                                       ; $5af8: $ff
    add b                                         ; $5af9: $80
    add b                                         ; $5afa: $80
    rst $38                                       ; $5afb: $ff
    rst $38                                       ; $5afc: $ff
    rst $38                                       ; $5afd: $ff
    ld a, a                                       ; $5afe: $7f
    ld a, a                                       ; $5aff: $7f
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00

jr_03b_5b02:
    nop                                           ; $5b02: $00
    nop                                           ; $5b03: $00
    nop                                           ; $5b04: $00
    nop                                           ; $5b05: $00
    add b                                         ; $5b06: $80
    add b                                         ; $5b07: $80
    ld e, b                                       ; $5b08: $58
    ret c                                         ; $5b09: $d8

    or a                                          ; $5b0a: $b7
    ld l, a                                       ; $5b0b: $6f
    and [hl]                                      ; $5b0c: $a6
    ld a, l                                       ; $5b0d: $7d
    cp a                                          ; $5b0e: $bf
    ld a, h                                       ; $5b0f: $7c
    scf                                           ; $5b10: $37
    db $fc                                        ; $5b11: $fc
    halt                                          ; $5b12: $76
    db $ed                                        ; $5b13: $ed
    or [hl]                                       ; $5b14: $b6
    ld l, l                                       ; $5b15: $6d
    or [hl]                                       ; $5b16: $b6
    ld l, l                                       ; $5b17: $6d
    ld [hl], $ed                                  ; $5b18: $36 $ed
    db $e4                                        ; $5b1a: $e4
    rst $38                                       ; $5b1b: $ff
    rst $38                                       ; $5b1c: $ff
    rst $38                                       ; $5b1d: $ff
    dec de                                        ; $5b1e: $1b
    dec de                                        ; $5b1f: $1b
    nop                                           ; $5b20: $00
    nop                                           ; $5b21: $00
    nop                                           ; $5b22: $00
    nop                                           ; $5b23: $00
    ld bc, $0201                                  ; $5b24: $01 $01 $02
    inc bc                                        ; $5b27: $03
    inc bc                                        ; $5b28: $03
    ld [bc], a                                    ; $5b29: $02
    ld h, e                                       ; $5b2a: $63
    ld h, d                                       ; $5b2b: $62
    db $dd                                        ; $5b2c: $dd
    cp [hl]                                       ; $5b2d: $be
    sub a                                         ; $5b2e: $97
    ld a, b                                       ; $5b2f: $78
    ld l, a                                       ; $5b30: $6f
    ldh a, [$f9]                                  ; $5b31: $f0 $f9
    and $bb                                       ; $5b33: $e6 $bb
    and [hl]                                      ; $5b35: $a6
    xor a                                         ; $5b36: $af
    or b                                          ; $5b37: $b0
    or a                                          ; $5b38: $b7
    cp b                                          ; $5b39: $b8
    sbc h                                         ; $5b3a: $9c
    sbc a                                         ; $5b3b: $9f
    adc a                                         ; $5b3c: $8f
    adc a                                         ; $5b3d: $8f
    inc bc                                        ; $5b3e: $03
    inc bc                                        ; $5b3f: $03
    nop                                           ; $5b40: $00
    nop                                           ; $5b41: $00
    add b                                         ; $5b42: $80
    add b                                         ; $5b43: $80
    ld b, b                                       ; $5b44: $40
    ret nz                                        ; $5b45: $c0

    ld b, b                                       ; $5b46: $40
    ret nz                                        ; $5b47: $c0

    ld [hl], b                                    ; $5b48: $70
    ldh a, [rBCPS]                                ; $5b49: $f0 $68
    ret c                                         ; $5b4b: $d8

    ld c, e                                       ; $5b4c: $4b
    ei                                            ; $5b4d: $fb
    ld a, l                                       ; $5b4e: $7d
    cp $6b                                        ; $5b4f: $fe $6b
    db $fd                                        ; $5b51: $fd
    ld l, [hl]                                    ; $5b52: $6e
    reti                                          ; $5b53: $d9


    ld l, a                                       ; $5b54: $6f
    ret c                                         ; $5b55: $d8

    ld l, a                                       ; $5b56: $6f
    ret c                                         ; $5b57: $d8

    ld l, e                                       ; $5b58: $6b
    call c, $ff4e                                 ; $5b59: $dc $4e $ff
    ei                                            ; $5b5c: $fb
    ei                                            ; $5b5d: $fb
    or c                                          ; $5b5e: $b1
    or c                                          ; $5b5f: $b1
    nop                                           ; $5b60: $00
    nop                                           ; $5b61: $00
    rlca                                          ; $5b62: $07
    rlca                                          ; $5b63: $07
    dec bc                                        ; $5b64: $0b
    inc c                                         ; $5b65: $0c
    rrca                                          ; $5b66: $0f
    ld [$080f], sp                                ; $5b67: $08 $0f $08
    adc $c9                                       ; $5b6a: $ce $c9
    ld l, $e9                                     ; $5b6c: $2e $e9
    rst $18                                       ; $5b6e: $df
    jr c, @-$1f                                   ; $5b6f: $38 $df

jr_03b_5b71:
    cp b                                          ; $5b71: $b8
    cp a                                          ; $5b72: $bf
    ld a, b                                       ; $5b73: $78
    db $ec                                        ; $5b74: $ec
    db $eb                                        ; $5b75: $eb
    ld d, l                                       ; $5b76: $55
    db $db                                        ; $5b77: $db
    cp l                                          ; $5b78: $bd
    ld [hl], e                                    ; $5b79: $73
    inc sp                                        ; $5b7a: $33
    rst $38                                       ; $5b7b: $ff
    cp $fe                                        ; $5b7c: $fe $fe
    call z, Call_000_00cc                         ; $5b7e: $cc $cc $00
    nop                                           ; $5b81: $00
    ret nz                                        ; $5b82: $c0

    ret nz                                        ; $5b83: $c0

    and b                                         ; $5b84: $a0
    ld h, b                                       ; $5b85: $60
    ret nc                                        ; $5b86: $d0

    jr nc, jr_03b_5b71                            ; $5b87: $30 $e8

    jr @+$70                                      ; $5b89: $18 $6e

    sbc [hl]                                      ; $5b8b: $9e
    db $ed                                        ; $5b8c: $ed
    db $db                                        ; $5b8d: $db
    xor l                                         ; $5b8e: $ad
    db $db                                        ; $5b8f: $db
    db $ed                                        ; $5b90: $ed
    dec de                                        ; $5b91: $1b
    adc l                                         ; $5b92: $8d
    ld a, e                                       ; $5b93: $7b
    ld a, $f9                                     ; $5b94: $3e $f9
    ei                                            ; $5b96: $fb
    db $fc                                        ; $5b97: $fc
    call $06ce                                    ; $5b98: $cd $ce $06
    rlca                                          ; $5b9b: $07
    inc bc                                        ; $5b9c: $03
    inc bc                                        ; $5b9d: $03
    ld bc, $0001                                  ; $5b9e: $01 $01 $00
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    nop                                           ; $5ba4: $00
    nop                                           ; $5ba5: $00
    ld b, $06                                     ; $5ba6: $06 $06
    dec c                                         ; $5ba8: $0d
    dec bc                                        ; $5ba9: $0b
    dec e                                         ; $5baa: $1d
    dec de                                        ; $5bab: $1b
    ld a, [hl]                                    ; $5bac: $7e
    ld h, c                                       ; $5bad: $61
    db $dd                                        ; $5bae: $dd
    cp e                                          ; $5baf: $bb
    db $dd                                        ; $5bb0: $dd
    cp e                                          ; $5bb1: $bb
    db $dd                                        ; $5bb2: $dd
    cp e                                          ; $5bb3: $bb
    ld e, [hl]                                    ; $5bb4: $5e
    cp c                                          ; $5bb5: $b9
    jp c, $df3d                                   ; $5bb6: $da $3d $df

    inc a                                         ; $5bb9: $3c
    inc d                                         ; $5bba: $14
    rst $30                                       ; $5bbb: $f7

Call_03b_5bbc:
    rst $30                                       ; $5bbc: $f7
    rst $30                                       ; $5bbd: $f7
    di                                            ; $5bbe: $f3
    di                                            ; $5bbf: $f3
    nop                                           ; $5bc0: $00
    nop                                           ; $5bc1: $00
    nop                                           ; $5bc2: $00
    nop                                           ; $5bc3: $00
    nop                                           ; $5bc4: $00
    nop                                           ; $5bc5: $00
    jr jr_03b_5be0                                ; $5bc6: $18 $18

    inc [hl]                                      ; $5bc8: $34
    inc l                                         ; $5bc9: $2c
    ld [hl], h                                    ; $5bca: $74
    ld l, h                                       ; $5bcb: $6c
    ld a, [$f686]                                 ; $5bcc: $fa $86 $f6
    xor $f4                                       ; $5bcf: $ee $f4
    db $ec                                        ; $5bd1: $ec
    inc [hl]                                      ; $5bd2: $34
    inc l                                         ; $5bd3: $2c
    cp d                                          ; $5bd4: $ba
    and [hl]                                      ; $5bd5: $a6
    xor d                                         ; $5bd6: $aa
    or [hl]                                       ; $5bd7: $b6
    ld a, l                                       ; $5bd8: $7d
    di                                            ; $5bd9: $f3
    ld d, c                                       ; $5bda: $51
    rst $18                                       ; $5bdb: $df
    rst $18                                       ; $5bdc: $df
    rst $18                                       ; $5bdd: $df
    adc [hl]                                      ; $5bde: $8e
    adc [hl]                                      ; $5bdf: $8e

jr_03b_5be0:
    nop                                           ; $5be0: $00
    nop                                           ; $5be1: $00
    nop                                           ; $5be2: $00
    nop                                           ; $5be3: $00
    ld bc, $0101                                  ; $5be4: $01 $01 $01
    ld bc, $0101                                  ; $5be7: $01 $01 $01
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

Call_03b_5bf7:
    nop                                           ; $5bf7: $00
    ld bc, $0101                                  ; $5bf8: $01 $01 $01
    ld bc, $0101                                  ; $5bfb: $01 $01 $01
    nop                                           ; $5bfe: $00
    nop                                           ; $5bff: $00
    nop                                           ; $5c00: $00
    nop                                           ; $5c01: $00
    ldh a, [$f0]                                  ; $5c02: $f0 $f0
    jp hl                                         ; $5c04: $e9


jr_03b_5c05:
    add hl, de                                    ; $5c05: $19
    ld [hl], l                                    ; $5c06: $75
    adc l                                         ; $5c07: $8d
    ei                                            ; $5c08: $fb
    add a                                         ; $5c09: $87
    db $fd                                        ; $5c0a: $fd
    add e                                         ; $5c0b: $83
    rst $20                                       ; $5c0c: $e7
    sbc b                                         ; $5c0d: $98
    db $eb                                        ; $5c0e: $eb
    sbc h                                         ; $5c0f: $9c
    db $ed                                        ; $5c10: $ed
    sbc [hl]                                      ; $5c11: $9e
    xor $9f                                       ; $5c12: $ee $9f
    db $eb                                        ; $5c14: $eb
    sbc e                                         ; $5c15: $9b
    jp hl                                         ; $5c16: $e9


    sbc c                                         ; $5c17: $99
    ld l, c                                       ; $5c18: $69
    sbc c                                         ; $5c19: $99
    ld [$f8f8], sp                                ; $5c1a: $08 $f8 $f8
    ld hl, sp-$10                                 ; $5c1d: $f8 $f0
    ldh a, [rP1]                                  ; $5c1f: $f0 $00
    nop                                           ; $5c21: $00
    ldh [$e0], a                                  ; $5c22: $e0 $e0
    ld d, b                                       ; $5c24: $50
    or b                                          ; $5c25: $b0
    ret nc                                        ; $5c26: $d0

    jr nc, jr_03b_5c05                            ; $5c27: $30 $dc

    inc a                                         ; $5c29: $3c
    jp c, $d236                                   ; $5c2a: $da $36 $d2

    ld a, $df                                     ; $5c2d: $3e $df
    ccf                                           ; $5c2f: $3f
    db $db                                        ; $5c30: $db
    ccf                                           ; $5c31: $3f
    jp nc, $da3f                                  ; $5c32: $d2 $3f $da

    scf                                           ; $5c35: $37
    ld e, e                                       ; $5c36: $5b
    or a                                          ; $5c37: $b7
    db $db                                        ; $5c38: $db
    or a                                          ; $5c39: $b7
    sub d                                         ; $5c3a: $92
    cp $fe                                        ; $5c3b: $fe $fe
    cp $6c                                        ; $5c3d: $fe $6c
    ld l, h                                       ; $5c3f: $6c
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
    inc a                                         ; $5c4a: $3c
    inc a                                         ; $5c4b: $3c
    jp c, Jump_03b_63e6                           ; $5c4c: $da $e6 $63

    sbc a                                         ; $5c4f: $9f
    sbc $3f                                       ; $5c50: $de $3f
    cp l                                          ; $5c52: $bd
    ld a, [hl]                                    ; $5c53: $7e
    db $dd                                        ; $5c54: $dd
    ld a, $7b                                     ; $5c55: $3e $7b
    add [hl]                                      ; $5c57: $86
    cp d                                          ; $5c58: $ba
    rst $00                                       ; $5c59: $c7
    db $e3                                        ; $5c5a: $e3
    rst $38                                       ; $5c5b: $ff
    ld a, a                                       ; $5c5c: $7f
    ld a, a                                       ; $5c5d: $7f
    inc e                                         ; $5c5e: $1c
    inc e                                         ; $5c5f: $1c
    nop                                           ; $5c60: $00

jr_03b_5c61:
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    nop                                           ; $5c64: $00
    nop                                           ; $5c65: $00
    nop                                           ; $5c66: $00
    nop                                           ; $5c67: $00
    nop                                           ; $5c68: $00
    nop                                           ; $5c69: $00
    jr nc, jr_03b_5c9c                            ; $5c6a: $30 $30

    ret z                                         ; $5c6c: $c8

    ld hl, sp+$74                                 ; $5c6d: $f8 $74
    adc h                                         ; $5c6f: $8c
    db $f4                                        ; $5c70: $f4
    ld l, h                                       ; $5c71: $6c
    xor h                                         ; $5c72: $ac
    ld e, h                                       ; $5c73: $5c
    ld hl, sp+$38                                 ; $5c74: $f8 $38
    ret nc                                        ; $5c76: $d0

    jr nc, jr_03b_5c61                            ; $5c77: $30 $e8

    jr @-$76                                      ; $5c79: $18 $88

    ld hl, sp-$08                                 ; $5c7b: $f8 $f8
    ld hl, sp+$70                                 ; $5c7d: $f8 $70
    ld [hl], b                                    ; $5c7f: $70
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    rrca                                          ; $5c82: $0f
    rrca                                          ; $5c83: $0f
    ld e, $11                                     ; $5c84: $1e $11
    ld d, $19                                     ; $5c86: $16 $19
    dec e                                         ; $5c88: $1d
    dec de                                        ; $5c89: $1b
    dec c                                         ; $5c8a: $0d
    dec bc                                        ; $5c8b: $0b
    dec c                                         ; $5c8c: $0d
    dec bc                                        ; $5c8d: $0b
    dec c                                         ; $5c8e: $0d
    dec bc                                        ; $5c8f: $0b
    dec c                                         ; $5c90: $0d
    dec bc                                        ; $5c91: $0b
    dec c                                         ; $5c92: $0d
    dec bc                                        ; $5c93: $0b
    dec c                                         ; $5c94: $0d
    dec bc                                        ; $5c95: $0b
    dec c                                         ; $5c96: $0d
    dec bc                                        ; $5c97: $0b
    ld d, $19                                     ; $5c98: $16 $19
    db $10                                        ; $5c9a: $10
    rra                                           ; $5c9b: $1f

jr_03b_5c9c:
    rra                                           ; $5c9c: $1f
    rra                                           ; $5c9d: $1f
    rrca                                          ; $5c9e: $0f
    rrca                                          ; $5c9f: $0f
    nop                                           ; $5ca0: $00
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    nop                                           ; $5ca3: $00
    add b                                         ; $5ca4: $80
    add b                                         ; $5ca5: $80
    add b                                         ; $5ca6: $80
    add b                                         ; $5ca7: $80
    add b                                         ; $5ca8: $80
    add b                                         ; $5ca9: $80
    ld [hl], b                                    ; $5caa: $70
    ld [hl], b                                    ; $5cab: $70
    ld l, [hl]                                    ; $5cac: $6e
    ld e, [hl]                                    ; $5cad: $5e
    ld a, l                                       ; $5cae: $7d
    ld b, e                                       ; $5caf: $43
    ld a, [hl]                                    ; $5cb0: $7e
    ld b, c                                       ; $5cb1: $41
    ld [hl], d                                    ; $5cb2: $72
    ld c, l                                       ; $5cb3: $4d
    halt                                          ; $5cb4: $76
    ld c, l                                       ; $5cb5: $4d
    halt                                          ; $5cb6: $76
    ld c, l                                       ; $5cb7: $4d
    or $cd                                        ; $5cb8: $f6 $cd
    call nz, $ffff                                ; $5cba: $c4 $ff $ff
    rst $38                                       ; $5cbd: $ff
    dec sp                                        ; $5cbe: $3b
    dec sp                                        ; $5cbf: $3b
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
    add b                                         ; $5cd0: $80
    add b                                         ; $5cd1: $80
    add b                                         ; $5cd2: $80
    add b                                         ; $5cd3: $80
    add b                                         ; $5cd4: $80
    add b                                         ; $5cd5: $80
    add b                                         ; $5cd6: $80
    add b                                         ; $5cd7: $80
    add b                                         ; $5cd8: $80
    add b                                         ; $5cd9: $80
    add b                                         ; $5cda: $80
    add b                                         ; $5cdb: $80
    add b                                         ; $5cdc: $80
    add b                                         ; $5cdd: $80
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    nop                                           ; $5ce0: $00
    nop                                           ; $5ce1: $00
    nop                                           ; $5ce2: $00
    nop                                           ; $5ce3: $00
    ld bc, $0201                                  ; $5ce4: $01 $01 $02
    inc bc                                        ; $5ce7: $03
    dec b                                         ; $5ce8: $05
    ld b, $07                                     ; $5ce9: $06 $07
    inc b                                         ; $5ceb: $04
    ld a, [bc]                                    ; $5cec: $0a
    dec c                                         ; $5ced: $0d
    rrca                                          ; $5cee: $0f
    add hl, bc                                    ; $5cef: $09
    rla                                           ; $5cf0: $17
    add hl, de                                    ; $5cf1: $19
    ld d, $19                                     ; $5cf2: $16 $19
    dec de                                        ; $5cf4: $1b
    inc e                                         ; $5cf5: $1c
    dec c                                         ; $5cf6: $0d
    ld c, $06                                     ; $5cf7: $0e $06
    rlca                                          ; $5cf9: $07
    inc bc                                        ; $5cfa: $03
    inc bc                                        ; $5cfb: $03
    ld bc, $0001                                  ; $5cfc: $01 $01 $00
    nop                                           ; $5cff: $00
    nop                                           ; $5d00: $00
    nop                                           ; $5d01: $00
    ld a, b                                       ; $5d02: $78
    ld a, b                                       ; $5d03: $78
    or h                                          ; $5d04: $b4
    call z, Call_000_3cc4                         ; $5d05: $cc $c4 $3c
    cp l                                          ; $5d08: $bd
    ld a, l                                       ; $5d09: $7d
    ld a, e                                       ; $5d0a: $7b
    ld a, [$c3c2]                                 ; $5d0b: $fa $c2 $c3
    adc a                                         ; $5d0e: $8f
    adc a                                         ; $5d0f: $8f
    dec de                                        ; $5d10: $1b
    rla                                           ; $5d11: $17
    ld a, [$dbf7]                                 ; $5d12: $fa $f7 $db
    ld [hl], $fb                                  ; $5d15: $36 $fb
    ld b, $7b                                     ; $5d17: $06 $7b
    add [hl]                                      ; $5d19: $86
    jp nz, $ffff                                  ; $5d1a: $c2 $ff $ff

    rst $38                                       ; $5d1d: $ff
    dec a                                         ; $5d1e: $3d
    dec a                                         ; $5d1f: $3d
    nop                                           ; $5d20: $00
    nop                                           ; $5d21: $00
    nop                                           ; $5d22: $00
    nop                                           ; $5d23: $00
    nop                                           ; $5d24: $00
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    add b                                         ; $5d28: $80
    add b                                         ; $5d29: $80
    ld a, b                                       ; $5d2a: $78
    ld hl, sp+$75                                 ; $5d2b: $f8 $75
    call $edd5                                    ; $5d2d: $cd $d5 $ed
    ld a, d                                       ; $5d30: $7a
    rst $20                                       ; $5d31: $e7
    ld l, e                                       ; $5d32: $6b
    or $7f                                        ; $5d33: $f6 $7f
    ldh a, [$57]                                  ; $5d35: $f0 $57
    ret c                                         ; $5d37: $d8

    ld e, [hl]                                    ; $5d38: $5e
    reti                                          ; $5d39: $d9


    ld c, c                                       ; $5d3a: $49
    rst $08                                       ; $5d3b: $cf
    rst $08                                       ; $5d3c: $cf
    rst $08                                       ; $5d3d: $cf
    add [hl]                                      ; $5d3e: $86
    add [hl]                                      ; $5d3f: $86
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
    ldh [$e0], a                                  ; $5d4a: $e0 $e0
    ld d, e                                       ; $5d4c: $53
    or e                                          ; $5d4d: $b3
    push de                                       ; $5d4e: $d5
    ld [hl], $bb                                  ; $5d4f: $36 $bb
    ld a, l                                       ; $5d51: $7d
    or [hl]                                       ; $5d52: $b6

Call_03b_5d53:
    ld a, c                                       ; $5d53: $79
    ld [hl], a                                    ; $5d54: $77
    ld hl, sp+$5f                                 ; $5d55: $f8 $5f
    ret c                                         ; $5d57: $d8

    set 1, h                                      ; $5d58: $cb $cc
    adc [hl]                                      ; $5d5a: $8e
    adc a                                         ; $5d5b: $8f
    rlca                                          ; $5d5c: $07
    rlca                                          ; $5d5d: $07
    ld bc, $0001                                  ; $5d5e: $01 $01 $00
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    nop                                           ; $5d63: $00
    ld bc, $0101                                  ; $5d64: $01 $01 $01
    ld bc, $0101                                  ; $5d67: $01 $01 $01
    pop bc                                        ; $5d6a: $c1
    pop bc                                        ; $5d6b: $c1
    ld hl, $d1e1                                  ; $5d6c: $21 $e1 $d1
    ld sp, $b1d1                                  ; $5d6f: $31 $d1 $b1
    or c                                          ; $5d72: $b1
    ld [hl], c                                    ; $5d73: $71
    pop hl                                        ; $5d74: $e1
    pop hl                                        ; $5d75: $e1
    ld h, b                                       ; $5d76: $60
    ldh [$d0], a                                  ; $5d77: $e0 $d0
    jr nc, jr_03b_5d8b                            ; $5d79: $30 $10

    ldh a, [$f0]                                  ; $5d7b: $f0 $f0
    ldh a, [$e0]                                  ; $5d7d: $f0 $e0
    ldh [rP1], a                                  ; $5d7f: $e0 $00
    nop                                           ; $5d81: $00
    ldh [$e0], a                                  ; $5d82: $e0 $e0
    ld d, c                                       ; $5d84: $51
    or c                                          ; $5d85: $b1
    pop de                                        ; $5d86: $d1
    ld sp, $31d1                                  ; $5d87: $31 $d1 $31
    pop de                                        ; $5d8a: $d1

jr_03b_5d8b:
    ld sp, $31d1                                  ; $5d8b: $31 $d1 $31
    pop de                                        ; $5d8e: $d1
    ld sp, $31d1                                  ; $5d8f: $31 $d1 $31
    ld l, c                                       ; $5d92: $69
    sbc c                                         ; $5d93: $99
    or $8f                                        ; $5d94: $f6 $8f
    cp a                                          ; $5d96: $bf
    ret nz                                        ; $5d97: $c0

    rst $18                                       ; $5d98: $df
    ldh [$60], a                                  ; $5d99: $e0 $60
    ld a, a                                       ; $5d9b: $7f
    ccf                                           ; $5d9c: $3f
    ccf                                           ; $5d9d: $3f
    rra                                           ; $5d9e: $1f
    rra                                           ; $5d9f: $1f
    nop                                           ; $5da0: $00
    nop                                           ; $5da1: $00
    ret nz                                        ; $5da2: $c0

    ret nz                                        ; $5da3: $c0

    and e                                         ; $5da4: $a3
    ld h, e                                       ; $5da5: $63
    push de                                       ; $5da6: $d5
    ld [hl], $d7                                  ; $5da7: $36 $d7
    inc [hl]                                      ; $5da9: $34
    rst $10                                       ; $5daa: $d7
    inc [hl]                                      ; $5dab: $34
    rst $10                                       ; $5dac: $d7
    inc [hl]                                      ; $5dad: $34
    rst $10                                       ; $5dae: $d7
    inc [hl]                                      ; $5daf: $34
    rst $10                                       ; $5db0: $d7
    inc [hl]                                      ; $5db1: $34
    rst $10                                       ; $5db2: $d7

jr_03b_5db3:
    inc [hl]                                      ; $5db3: $34
    rst $10                                       ; $5db4: $d7
    inc [hl]                                      ; $5db5: $34
    sub [hl]                                      ; $5db6: $96
    ld [hl], l                                    ; $5db7: $75
    ld [hl], $f5                                  ; $5db8: $36 $f5
    ld h, h                                       ; $5dba: $64
    rst $20                                       ; $5dbb: $e7
    rst $00                                       ; $5dbc: $c7
    rst $00                                       ; $5dbd: $c7
    add e                                         ; $5dbe: $83
    add e                                         ; $5dbf: $83
    nop                                           ; $5dc0: $00
    nop                                           ; $5dc1: $00
    nop                                           ; $5dc2: $00
    nop                                           ; $5dc3: $00
    add b                                         ; $5dc4: $80
    add b                                         ; $5dc5: $80
    ld h, b                                       ; $5dc6: $60
    ldh [$d0], a                                  ; $5dc7: $e0 $d0
    jr nc, jr_03b_5db3                            ; $5dc9: $30 $e8

    jr jr_03b_5df5                                ; $5dcb: $18 $28

    ret c                                         ; $5dcd: $d8

    ld l, b                                       ; $5dce: $68
    ret c                                         ; $5dcf: $d8

    ret c                                         ; $5dd0: $d8

    jr c, @-$4e                                   ; $5dd1: $38 $b0

    ld [hl], b                                    ; $5dd3: $70
    ld h, b                                       ; $5dd4: $60
    ldh [$c0], a                                  ; $5dd5: $e0 $c0
    ret nz                                        ; $5dd7: $c0

    add b                                         ; $5dd8: $80
    add b                                         ; $5dd9: $80
    add b                                         ; $5dda: $80
    add b                                         ; $5ddb: $80
    add b                                         ; $5ddc: $80
    add b                                         ; $5ddd: $80
    nop                                           ; $5dde: $00
    nop                                           ; $5ddf: $00
    nop                                           ; $5de0: $00
    nop                                           ; $5de1: $00
    rlca                                          ; $5de2: $07
    rlca                                          ; $5de3: $07
    dec bc                                        ; $5de4: $0b
    inc c                                         ; $5de5: $0c
    ld d, $19                                     ; $5de6: $16 $19
    dec l                                         ; $5de8: $2d
    inc sp                                        ; $5de9: $33
    ld e, e                                       ; $5dea: $5b
    ld h, a                                       ; $5deb: $67
    ld e, l                                       ; $5dec: $5d
    ld h, e                                       ; $5ded: $63
    ld l, [hl]                                    ; $5dee: $6e
    ld [hl], c                                    ; $5def: $71
    scf                                           ; $5df0: $37
    jr c, jr_03b_5e0e                             ; $5df1: $38 $1b

    inc e                                         ; $5df3: $1c
    ld h, [hl]                                    ; $5df4: $66

jr_03b_5df5:
    ld a, c                                       ; $5df5: $79
    cp l                                          ; $5df6: $bd
    jp $87fb                                      ; $5df7: $c3 $fb $87


    add [hl]                                      ; $5dfa: $86
    cp $fc                                        ; $5dfb: $fe $fc
    db $fc                                        ; $5dfd: $fc
    ld a, b                                       ; $5dfe: $78
    ld a, b                                       ; $5dff: $78
    nop                                           ; $5e00: $00
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    nop                                           ; $5e03: $00
    add b                                         ; $5e04: $80
    add b                                         ; $5e05: $80
    add b                                         ; $5e06: $80
    add b                                         ; $5e07: $80
    or b                                          ; $5e08: $b0
    or b                                          ; $5e09: $b0
    ld l, [hl]                                    ; $5e0a: $6e
    ld e, [hl]                                    ; $5e0b: $5e
    ld c, l                                       ; $5e0c: $4d
    ld a, e                                       ; $5e0d: $7b

jr_03b_5e0e:
    rst $38                                       ; $5e0e: $ff
    ld hl, sp+$6f                                 ; $5e0f: $f8 $6f
    ld hl, sp+$6e                                 ; $5e11: $f8 $6e
    reti                                          ; $5e13: $d9


    xor $d9                                       ; $5e14: $ee $d9
    xor $d9                                       ; $5e16: $ee $d9
    ld l, [hl]                                    ; $5e18: $6e
    ld e, c                                       ; $5e19: $59
    ld c, b                                       ; $5e1a: $48
    ld a, a                                       ; $5e1b: $7f
    ld a, a                                       ; $5e1c: $7f
    ld a, a                                       ; $5e1d: $7f
    scf                                           ; $5e1e: $37
    scf                                           ; $5e1f: $37
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    nop                                           ; $5e22: $00
    nop                                           ; $5e23: $00
    inc b                                         ; $5e24: $04
    inc b                                         ; $5e25: $04
    ld a, [bc]                                    ; $5e26: $0a
    ld c, $1a                                     ; $5e27: $0e $1a
    ld d, $1a                                     ; $5e29: $16 $1a
    ld d, $db                                     ; $5e2b: $16 $db
    rst $10                                       ; $5e2d: $d7
    cp e                                          ; $5e2e: $bb
    halt                                          ; $5e2f: $76
    reti                                          ; $5e30: $d9


    ld [hl], $5f                                  ; $5e31: $36 $5f
    or b                                          ; $5e33: $b0
    sbc $b1                                       ; $5e34: $de $b1
    reti                                          ; $5e36: $d9


    or [hl]                                       ; $5e37: $b6
    jp c, $93b7                                   ; $5e38: $da $b7 $93

    rst $38                                       ; $5e3b: $ff
    rst $38                                       ; $5e3c: $ff
    rst $38                                       ; $5e3d: $ff
    ld l, h                                       ; $5e3e: $6c
    ld l, h                                       ; $5e3f: $6c
    nop                                           ; $5e40: $00
    nop                                           ; $5e41: $00
    nop                                           ; $5e42: $00
    nop                                           ; $5e43: $00
    nop                                           ; $5e44: $00
    nop                                           ; $5e45: $00
    ld b, $06                                     ; $5e46: $06 $06
    dec c                                         ; $5e48: $0d
    dec bc                                        ; $5e49: $0b
    dec e                                         ; $5e4a: $1d
    dec de                                        ; $5e4b: $1b
    cp [hl]                                       ; $5e4c: $be
    and c                                         ; $5e4d: $a1
    ld a, l                                       ; $5e4e: $7d
    ei                                            ; $5e4f: $fb
    ld e, l                                       ; $5e50: $5d
    db $db                                        ; $5e51: $db
    ld c, l                                       ; $5e52: $4d
    set 1, [hl]                                   ; $5e53: $cb $ce
    ret                                           ; $5e55: $c9


    jp z, $af4d                                   ; $5e56: $ca $4d $af

    ld l, h                                       ; $5e59: $6c
    inc h                                         ; $5e5a: $24
    rst $20                                       ; $5e5b: $e7
    rst $20                                       ; $5e5c: $e7
    rst $20                                       ; $5e5d: $e7
    jp Jump_000_00c3                              ; $5e5e: $c3 $c3 $00


    nop                                           ; $5e61: $00
    nop                                           ; $5e62: $00
    nop                                           ; $5e63: $00
    nop                                           ; $5e64: $00
    nop                                           ; $5e65: $00
    nop                                           ; $5e66: $00
    nop                                           ; $5e67: $00
    nop                                           ; $5e68: $00
    nop                                           ; $5e69: $00
    inc c                                         ; $5e6a: $0c
    inc c                                         ; $5e6b: $0c
    or d                                          ; $5e6c: $b2
    cp [hl]                                       ; $5e6d: $be
    db $dd                                        ; $5e6e: $dd
    db $e3                                        ; $5e6f: $e3
    ld h, [hl]                                    ; $5e70: $66
    ld e, c                                       ; $5e71: $59
    xor [hl]                                      ; $5e72: $ae
    reti                                          ; $5e73: $d9


    cp $81                                        ; $5e74: $fe $81
    cp [hl]                                       ; $5e76: $be
    pop bc                                        ; $5e77: $c1
    ld e, l                                       ; $5e78: $5d
    db $e3                                        ; $5e79: $e3
    ld h, e                                       ; $5e7a: $63
    rst $38                                       ; $5e7b: $ff
    cp [hl]                                       ; $5e7c: $be
    cp [hl]                                       ; $5e7d: $be
    sbc h                                         ; $5e7e: $9c
    sbc h                                         ; $5e7f: $9c
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    ld h, b                                       ; $5e82: $60
    ld h, b                                       ; $5e83: $60
    ret nc                                        ; $5e84: $d0

    or b                                          ; $5e85: $b0
    add sp, -$68                                  ; $5e86: $e8 $98
    xor b                                         ; $5e88: $a8
    ret c                                         ; $5e89: $d8

    db $f4                                        ; $5e8a: $f4
    call z, Call_03b_6e56                         ; $5e8b: $cc $56 $6e
    ld [hl], l                                    ; $5e8e: $75
    ld l, a                                       ; $5e8f: $6f
    or [hl]                                       ; $5e90: $b6
    xor l                                         ; $5e91: $ad
    cp e                                          ; $5e92: $bb
    and h                                         ; $5e93: $a4
    xor a                                         ; $5e94: $af
    or b                                          ; $5e95: $b0
    cp a                                          ; $5e96: $bf
    or b                                          ; $5e97: $b0
    sub h                                         ; $5e98: $94
    sbc e                                         ; $5e99: $9b
    add hl, de                                    ; $5e9a: $19
    rra                                           ; $5e9b: $1f
    rrca                                          ; $5e9c: $0f
    rrca                                          ; $5e9d: $0f
    ld b, $06                                     ; $5e9e: $06 $06
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    jr jr_03b_5ebc                                ; $5ea2: $18 $18

    inc h                                         ; $5ea4: $24
    inc a                                         ; $5ea5: $3c
    ld d, h                                       ; $5ea6: $54
    ld l, h                                       ; $5ea7: $6c
    ld [hl], a                                    ; $5ea8: $77
    ld c, a                                       ; $5ea9: $4f
    halt                                          ; $5eaa: $76
    ld c, l                                       ; $5eab: $4d
    or h                                          ; $5eac: $b4
    rst $08                                       ; $5ead: $cf
    rst $28                                       ; $5eae: $ef
    sbc a                                         ; $5eaf: $9f
    xor $9f                                       ; $5eb0: $ee $9f
    ld l, [hl]                                    ; $5eb2: $6e
    sbc l                                         ; $5eb3: $9d
    sbc $3d                                       ; $5eb4: $de $3d
    sub $35                                       ; $5eb6: $d6 $35
    sub $35                                       ; $5eb8: $d6 $35
    inc [hl]                                      ; $5eba: $34
    rst $30                                       ; $5ebb: $f7

jr_03b_5ebc:
    rst $20                                       ; $5ebc: $e7
    rst $20                                       ; $5ebd: $e7
    jp Jump_000_00c3                              ; $5ebe: $c3 $c3 $00


    nop                                           ; $5ec1: $00
    nop                                           ; $5ec2: $00
    nop                                           ; $5ec3: $00
    nop                                           ; $5ec4: $00
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    nop                                           ; $5ec7: $00
    nop                                           ; $5ec8: $00
    nop                                           ; $5ec9: $00
    ldh [$e0], a                                  ; $5eca: $e0 $e0
    call c, $fabc                                 ; $5ecc: $dc $bc $fa
    add [hl]                                      ; $5ecf: $86
    db $fd                                        ; $5ed0: $fd
    add e                                         ; $5ed1: $83
    push hl                                       ; $5ed2: $e5
    sbc e                                         ; $5ed3: $9b
    db $ed                                        ; $5ed4: $ed
    sbc e                                         ; $5ed5: $9b
    db $ed                                        ; $5ed6: $ed
    sbc e                                         ; $5ed7: $9b
    db $ed                                        ; $5ed8: $ed
    sbc e                                         ; $5ed9: $9b
    adc c                                         ; $5eda: $89
    rst $38                                       ; $5edb: $ff
    rst $38                                       ; $5edc: $ff
    rst $38                                       ; $5edd: $ff
    halt                                          ; $5ede: $76
    halt                                          ; $5edf: $76
    nop                                           ; $5ee0: $00
    nop                                           ; $5ee1: $00
    ld bc, $0201                                  ; $5ee2: $01 $01 $02
    inc bc                                        ; $5ee5: $03
    inc bc                                        ; $5ee6: $03
    ld [bc], a                                    ; $5ee7: $02
    inc bc                                        ; $5ee8: $03
    ld [bc], a                                    ; $5ee9: $02
    inc bc                                        ; $5eea: $03
    ld [bc], a                                    ; $5eeb: $02
    inc bc                                        ; $5eec: $03
    ld [bc], a                                    ; $5eed: $02
    inc bc                                        ; $5eee: $03
    ld [bc], a                                    ; $5eef: $02
    inc bc                                        ; $5ef0: $03
    ld [bc], a                                    ; $5ef1: $02
    inc bc                                        ; $5ef2: $03
    ld [bc], a                                    ; $5ef3: $02
    inc bc                                        ; $5ef4: $03
    ld [bc], a                                    ; $5ef5: $02
    dec b                                         ; $5ef6: $05
    ld b, $07                                     ; $5ef7: $06 $07
    inc b                                         ; $5ef9: $04
    inc b                                         ; $5efa: $04

jr_03b_5efb:
    rlca                                          ; $5efb: $07
    rlca                                          ; $5efc: $07
    rlca                                          ; $5efd: $07
    inc bc                                        ; $5efe: $03
    inc bc                                        ; $5eff: $03
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    ldh [$e0], a                                  ; $5f02: $e0 $e0
    ret c                                         ; $5f04: $d8

    jr c, jr_03b_5efb                             ; $5f05: $38 $f4

    inc c                                         ; $5f07: $0c
    ld a, [$9d06]                                 ; $5f08: $fa $06 $9d
    ld h, e                                       ; $5f0b: $63
    cp l                                          ; $5f0c: $bd
    ld [hl], e                                    ; $5f0d: $73
    db $ed                                        ; $5f0e: $ed
    inc sp                                        ; $5f0f: $33
    db $fd                                        ; $5f10: $fd
    inc bc                                        ; $5f11: $03
    pop af                                        ; $5f12: $f1
    rrca                                          ; $5f13: $0f
    add a                                         ; $5f14: $87
    ld a, a                                       ; $5f15: $7f
    ld a, [hl]                                    ; $5f16: $7e
    cp $78                                        ; $5f17: $fe $78
    ld hl, sp-$40                                 ; $5f19: $f8 $c0
    ret nz                                        ; $5f1b: $c0

    add b                                         ; $5f1c: $80
    add b                                         ; $5f1d: $80
    nop                                           ; $5f1e: $00
    nop                                           ; $5f1f: $00
    nop                                           ; $5f20: $00
    nop                                           ; $5f21: $00
    nop                                           ; $5f22: $00
    nop                                           ; $5f23: $00
    nop                                           ; $5f24: $00
    nop                                           ; $5f25: $00
    nop                                           ; $5f26: $00
    nop                                           ; $5f27: $00
    ld h, b                                       ; $5f28: $60
    ld h, b                                       ; $5f29: $60
    call c, $9bbc                                 ; $5f2a: $dc $bc $9b
    rst $30                                       ; $5f2d: $f7
    rst $38                                       ; $5f2e: $ff
    ldh a, [$df]                                  ; $5f2f: $f0 $df
    ldh a, [$dc]                                  ; $5f31: $f0 $dc
    or e                                          ; $5f33: $b3
    db $dd                                        ; $5f34: $dd
    or e                                          ; $5f35: $b3
    db $dd                                        ; $5f36: $dd
    or e                                          ; $5f37: $b3
    db $dd                                        ; $5f38: $dd
    or e                                          ; $5f39: $b3
    sub c                                         ; $5f3a: $91
    rst $38                                       ; $5f3b: $ff
    rst $38                                       ; $5f3c: $ff
    rst $38                                       ; $5f3d: $ff
    ld l, [hl]                                    ; $5f3e: $6e
    ld l, [hl]                                    ; $5f3f: $6e
    nop                                           ; $5f40: $00
    nop                                           ; $5f41: $00
    nop                                           ; $5f42: $00
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    ld bc, $0201                                  ; $5f46: $01 $01 $02
    inc bc                                        ; $5f49: $03
    dec b                                         ; $5f4a: $05

jr_03b_5f4b:
    ld b, $85                                     ; $5f4b: $06 $85
    add [hl]                                      ; $5f4d: $86
    ld b, [hl]                                    ; $5f4e: $46
    rst $00                                       ; $5f4f: $c7
    and e                                         ; $5f50: $a3
    ld h, e                                       ; $5f51: $63
    and c                                         ; $5f52: $a1
    ld h, c                                       ; $5f53: $61
    and [hl]                                      ; $5f54: $a6
    ld h, a                                       ; $5f55: $67
    xor e                                         ; $5f56: $ab
    ld l, h                                       ; $5f57: $6c
    xor a                                         ; $5f58: $af
    ld l, b                                       ; $5f59: $68
    jr z, jr_03b_5f4b                             ; $5f5a: $28 $ef

    rst $28                                       ; $5f5c: $ef
    rst $28                                       ; $5f5d: $ef

jr_03b_5f5e:
    rst $00                                       ; $5f5e: $c7
    rst $00                                       ; $5f5f: $c7
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    ld [hl], e                                    ; $5f62: $73
    ld [hl], e                                    ; $5f63: $73
    cp [hl]                                       ; $5f64: $be
    call $9d6e                                    ; $5f65: $cd $6e $9d
    jp c, $be3d                                   ; $5f68: $da $3d $be

    ld a, c                                       ; $5f6b: $79
    rst $18                                       ; $5f6c: $df
    jr c, jr_03b_5f5e                             ; $5f6d: $38 $ef

    jr jr_03b_5fdf                                ; $5f6f: $18 $6e

    sbc c                                         ; $5f71: $99
    xor [hl]                                      ; $5f72: $ae
    reti                                          ; $5f73: $d9


    ld l, [hl]                                    ; $5f74: $6e
    sbc c                                         ; $5f75: $99
    sbc $39                                       ; $5f76: $de $39
    cp b                                          ; $5f78: $b8
    ld a, a                                       ; $5f79: $7f
    ld l, a                                       ; $5f7a: $6f
    rst $28                                       ; $5f7b: $ef
    rst $00                                       ; $5f7c: $c7
    rst $00                                       ; $5f7d: $c7
    add b                                         ; $5f7e: $80
    add b                                         ; $5f7f: $80
    nop                                           ; $5f80: $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    add b                                         ; $5f84: $80
    add b                                         ; $5f85: $80
    add b                                         ; $5f86: $80
    add b                                         ; $5f87: $80
    add b                                         ; $5f88: $80
    add b                                         ; $5f89: $80
    ret nz                                        ; $5f8a: $c0

    ret nz                                        ; $5f8b: $c0

    or c                                          ; $5f8c: $b1
    ld [hl], c                                    ; $5f8d: $71
    ld [$6b1b], a                                 ; $5f8e: $ea $1b $6b
    sbc d                                         ; $5f91: $9a
    xor l                                         ; $5f92: $ad
    sbc $ef                                       ; $5f93: $de $ef
    call c, $deed                                 ; $5f95: $dc $ed $de
    or $cf                                        ; $5f98: $f6 $cf
    rst $00                                       ; $5f9a: $c7
    rst $38                                       ; $5f9b: $ff
    ld a, l                                       ; $5f9c: $7d
    ld a, l                                       ; $5f9d: $7d
    jr c, jr_03b_5fd8                             ; $5f9e: $38 $38

    nop                                           ; $5fa0: $00
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    nop                                           ; $5fa4: $00
    nop                                           ; $5fa5: $00
    ld bc, $0301                                  ; $5fa6: $01 $01 $03
    ld [bc], a                                    ; $5fa9: $02
    ld h, a                                       ; $5faa: $67
    ld h, [hl]                                    ; $5fab: $66
    sbc a                                         ; $5fac: $9f
    ld hl, sp-$11                                 ; $5fad: $f8 $ef
    ld e, $37                                     ; $5faf: $1e $37
    adc $77                                       ; $5fb1: $ce $77
    adc $f7                                       ; $5fb3: $ce $f7
    ld c, $f6                                     ; $5fb5: $0e $f6
    rrca                                          ; $5fb7: $0f
    rst $28                                       ; $5fb8: $ef
    rra                                           ; $5fb9: $1f
    add hl, de                                    ; $5fba: $19
    ld sp, hl                                     ; $5fbb: $f9
    pop af                                        ; $5fbc: $f1
    pop af                                        ; $5fbd: $f1
    ldh [$e0], a                                  ; $5fbe: $e0 $e0
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    nop                                           ; $5fc2: $00
    nop                                           ; $5fc3: $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    add b                                         ; $5fc6: $80
    add b                                         ; $5fc7: $80
    ld b, b                                       ; $5fc8: $40
    ret nz                                        ; $5fc9: $c0

    ld b, b                                       ; $5fca: $40
    ret nz                                        ; $5fcb: $c0

    and b                                         ; $5fcc: $a0
    ld h, b                                       ; $5fcd: $60
    ld h, b                                       ; $5fce: $60
    ldh [rLCDC], a                                ; $5fcf: $e0 $40
    ret nz                                        ; $5fd1: $c0

    ld b, b                                       ; $5fd2: $40
    ret nz                                        ; $5fd3: $c0

    and b                                         ; $5fd4: $a0
    ld h, b                                       ; $5fd5: $60
    and b                                         ; $5fd6: $a0
    ld h, b                                       ; $5fd7: $60

jr_03b_5fd8:
    ret nc                                        ; $5fd8: $d0

    jr nc, jr_03b_5feb                            ; $5fd9: $30 $10

    ldh a, [$f0]                                  ; $5fdb: $f0 $f0
    ldh a, [$e0]                                  ; $5fdd: $f0 $e0

jr_03b_5fdf:
    ldh [rP1], a                                  ; $5fdf: $e0 $00
    nop                                           ; $5fe1: $00
    scf                                           ; $5fe2: $37
    scf                                           ; $5fe3: $37
    ld c, d                                       ; $5fe4: $4a
    ld a, l                                       ; $5fe5: $7d
    ld h, [hl]                                    ; $5fe6: $66
    ld e, c                                       ; $5fe7: $59
    cp [hl]                                       ; $5fe8: $be
    pop bc                                        ; $5fe9: $c1
    rst $38                                       ; $5fea: $ff

jr_03b_5feb:
    add b                                         ; $5feb: $80
    rst $38                                       ; $5fec: $ff
    add b                                         ; $5fed: $80
    rst $38                                       ; $5fee: $ff
    add b                                         ; $5fef: $80
    ret                                           ; $5ff0: $c9


    or [hl]                                       ; $5ff1: $b6
    db $d3                                        ; $5ff2: $d3
    cp [hl]                                       ; $5ff3: $be
    rst $10                                       ; $5ff4: $d7
    cp [hl]                                       ; $5ff5: $be
    rst $18                                       ; $5ff6: $df
    cp [hl]                                       ; $5ff7: $be
    db $db                                        ; $5ff8: $db
    cp d                                          ; $5ff9: $ba
    sub d                                         ; $5ffa: $92
    di                                            ; $5ffb: $f3
    di                                            ; $5ffc: $f3
    di                                            ; $5ffd: $f3
    ld h, c                                       ; $5ffe: $61
    ld h, c                                       ; $5fff: $61
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    add b                                         ; $6004: $80
    add b                                         ; $6005: $80
    add b                                         ; $6006: $80
    add b                                         ; $6007: $80
    or c                                          ; $6008: $b1
    or c                                          ; $6009: $b1
    ld l, d                                       ; $600a: $6a
    db $db                                        ; $600b: $db
    ld c, l                                       ; $600c: $4d
    cp $7a                                        ; $600d: $fe $7a
    db $fd                                        ; $600f: $fd
    ld l, a                                       ; $6010: $6f
    ld sp, hl                                     ; $6011: $f9
    ld l, d                                       ; $6012: $6a
    db $dd                                        ; $6013: $dd
    ld l, l                                       ; $6014: $6d
    sbc $6b                                       ; $6015: $de $6b
    call c, $d96e                                 ; $6017: $dc $6e $d9
    ld c, c                                       ; $601a: $49
    rst $38                                       ; $601b: $ff
    rst $38                                       ; $601c: $ff
    rst $38                                       ; $601d: $ff
    or [hl]                                       ; $601e: $b6
    or [hl]                                       ; $601f: $b6
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    sbc b                                         ; $6028: $98
    sbc b                                         ; $6029: $98
    ld h, l                                       ; $602a: $65
    db $fd                                        ; $602b: $fd
    ld e, [hl]                                    ; $602c: $5e
    rst $20                                       ; $602d: $e7
    or l                                          ; $602e: $b5
    adc $ee                                       ; $602f: $ce $ee
    sbc l                                         ; $6031: $9d
    or [hl]                                       ; $6032: $b6
    call $ec57                                    ; $6033: $cd $57 $ec
    or l                                          ; $6036: $b5
    adc $ee                                       ; $6037: $ce $ee
    sbc a                                         ; $6039: $9f
    sbc e                                         ; $603a: $9b
    ei                                            ; $603b: $fb
    pop af                                        ; $603c: $f1
    pop af                                        ; $603d: $f1
    ld h, b                                       ; $603e: $60
    ld h, b                                       ; $603f: $60
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    ret nz                                        ; $6048: $c0

    ret nz                                        ; $6049: $c0

    inc l                                         ; $604a: $2c
    db $ec                                        ; $604b: $ec
    db $db                                        ; $604c: $db
    scf                                           ; $604d: $37
    sbc $31                                       ; $604e: $de $31
    ld e, a                                       ; $6050: $5f
    or b                                          ; $6051: $b0
    db $dd                                        ; $6052: $dd
    or d                                          ; $6053: $b2
    rst $10                                       ; $6054: $d7
    ld a, [hl-]                                   ; $6055: $3a
    rst $28                                       ; $6056: $ef
    ld a, [de]                                    ; $6057: $1a
    rst $28                                       ; $6058: $ef
    ld e, d                                       ; $6059: $5a
    ld [$ffdf], a                                 ; $605a: $ea $df $ff
    rst $38                                       ; $605d: $ff
    ld a, l                                       ; $605e: $7d
    ld a, l                                       ; $605f: $7d
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    ld bc, $0201                                  ; $6062: $01 $01 $02
    inc bc                                        ; $6065: $03
    ld b, $05                                     ; $6066: $06 $05
    ld b, $05                                     ; $6068: $06 $05
    ld b, $05                                     ; $606a: $06 $05
    ld a, [de]                                    ; $606c: $1a
    dec e                                         ; $606d: $1d
    xor [hl]                                      ; $606e: $ae
    or c                                          ; $606f: $b1
    ld e, [hl]                                    ; $6070: $5e
    pop hl                                        ; $6071: $e1
    ld [hl], d                                    ; $6072: $72
    call $cd76                                    ; $6073: $cd $76 $cd
    ld e, [hl]                                    ; $6076: $5e
    pop hl                                        ; $6077: $e1
    ld l, [hl]                                    ; $6078: $6e
    pop af                                        ; $6079: $f1
    ld a, b                                       ; $607a: $78
    rst $38                                       ; $607b: $ff
    rst $18                                       ; $607c: $df
    rst $18                                       ; $607d: $df
    add a                                         ; $607e: $87
    add a                                         ; $607f: $87
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    ld h, b                                       ; $6082: $60
    ld h, b                                       ; $6083: $60
    ret nc                                        ; $6084: $d0

    or b                                          ; $6085: $b0
    ret nc                                        ; $6086: $d0

    or b                                          ; $6087: $b0
    ret nc                                        ; $6088: $d0

    or b                                          ; $6089: $b0
    ret nc                                        ; $608a: $d0

    or b                                          ; $608b: $b0
    db $d3                                        ; $608c: $d3
    or e                                          ; $608d: $b3
    push de                                       ; $608e: $d5
    or [hl]                                       ; $608f: $b6
    sub $b5                                       ; $6090: $d6 $b5
    jp c, $dfbd                                   ; $6092: $da $bd $df

    cp b                                          ; $6095: $b8
    db $db                                        ; $6096: $db
    cp h                                          ; $6097: $bc
    push af                                       ; $6098: $f5
    adc [hl]                                      ; $6099: $8e
    add d                                         ; $609a: $82
    rst $38                                       ; $609b: $ff
    rst $38                                       ; $609c: $ff
    rst $38                                       ; $609d: $ff
    ld a, l                                       ; $609e: $7d
    ld a, l                                       ; $609f: $7d
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    inc bc                                        ; $60a8: $03
    inc bc                                        ; $60a9: $03
    call nz, Call_000_2bc7                        ; $60aa: $c4 $c7 $2b
    db $ec                                        ; $60ad: $ec
    or $19                                        ; $60ae: $f6 $19
    ld a, l                                       ; $60b0: $7d
    sub e                                         ; $60b1: $93
    or $99                                        ; $60b2: $f6 $99
    ld a, [$f61d]                                 ; $60b4: $fa $1d $f6
    add hl, de                                    ; $60b7: $19
    db $dd                                        ; $60b8: $dd
    inc sp                                        ; $60b9: $33
    inc sp                                        ; $60ba: $33
    rst $38                                       ; $60bb: $ff
    cp $fe                                        ; $60bc: $fe $fe
    call z, Call_000_00cc                         ; $60be: $cc $cc $00
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    nop                                           ; $60c3: $00
    nop                                           ; $60c4: $00
    nop                                           ; $60c5: $00
    nop                                           ; $60c6: $00
    nop                                           ; $60c7: $00
    nop                                           ; $60c8: $00
    nop                                           ; $60c9: $00
    adc h                                         ; $60ca: $8c
    adc h                                         ; $60cb: $8c
    or d                                          ; $60cc: $b2
    cp [hl]                                       ; $60cd: $be
    db $dd                                        ; $60ce: $dd
    db $e3                                        ; $60cf: $e3
    cp l                                          ; $60d0: $bd
    db $db                                        ; $60d1: $db
    db $eb                                        ; $60d2: $eb
    sub a                                         ; $60d3: $97
    cp $8e                                        ; $60d4: $fe $8e
    or [hl]                                       ; $60d6: $b6
    adc $dd                                       ; $60d7: $ce $dd
    db $e3                                        ; $60d9: $e3
    ld h, c                                       ; $60da: $61
    ld a, a                                       ; $60db: $7f
    ccf                                           ; $60dc: $3f
    ccf                                           ; $60dd: $3f
    ld e, $1e                                     ; $60de: $1e $1e
    nop                                           ; $60e0: $00
    nop                                           ; $60e1: $00
    ld [hl], b                                    ; $60e2: $70
    ld [hl], b                                    ; $60e3: $70
    xor h                                         ; $60e4: $ac
    call c, $87fb                                 ; $60e5: $dc $fb $87
    cp $81                                        ; $60e8: $fe $81
    rst $20                                       ; $60ea: $e7
    sbc b                                         ; $60eb: $98
    rst $28                                       ; $60ec: $ef
    sbc h                                         ; $60ed: $9c
    db $eb                                        ; $60ee: $eb
    sbc h                                         ; $60ef: $9c
    rst $38                                       ; $60f0: $ff
    add b                                         ; $60f1: $80
    cp $81                                        ; $60f2: $fe $81
    rst $20                                       ; $60f4: $e7
    sbc b                                         ; $60f5: $98
    rst $28                                       ; $60f6: $ef
    sbc h                                         ; $60f7: $9c
    cp $81                                        ; $60f8: $fe $81
    add c                                         ; $60fa: $81
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    rst $38                                       ; $60fd: $ff
    ld a, [hl]                                    ; $60fe: $7e
    ld a, [hl]                                    ; $60ff: $7e
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00
    nop                                           ; $6105: $00
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    add b                                         ; $6108: $80
    add b                                         ; $6109: $80
    ld b, e                                       ; $610a: $43
    jp Jump_03b_6fac                              ; $610b: $c3 $ac $6f


    or a                                          ; $610e: $b7
    ld a, b                                       ; $610f: $78
    ld l, a                                       ; $6110: $6f
    or $da                                        ; $6111: $f6 $da
    push hl                                       ; $6113: $e5
    ld e, a                                       ; $6114: $5f
    db $e3                                        ; $6115: $e3
    ld a, l                                       ; $6116: $7d
    db $e3                                        ; $6117: $e3
    ld l, [hl]                                    ; $6118: $6e
    pop af                                        ; $6119: $f1
    ld hl, sp-$01                                 ; $611a: $f8 $ff
    sbc a                                         ; $611c: $9f
    sbc a                                         ; $611d: $9f
    rlca                                          ; $611e: $07
    rlca                                          ; $611f: $07
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    inc c                                         ; $6128: $0c
    inc c                                         ; $6129: $0c
    inc de                                        ; $612a: $13
    rra                                           ; $612b: $1f
    xor a                                         ; $612c: $af
    or d                                          ; $612d: $b2
    ld e, e                                       ; $612e: $5b
    rst $20                                       ; $612f: $e7
    ld [hl], a                                    ; $6130: $77
    rst $08                                       ; $6131: $cf
    ld a, [$eac6]                                 ; $6132: $fa $c6 $ea
    or $5a                                        ; $6135: $f6 $5a
    ld h, [hl]                                    ; $6137: $66
    or $8e                                        ; $6138: $f6 $8e
    adc h                                         ; $613a: $8c
    db $fc                                        ; $613b: $fc
    ld hl, sp-$08                                 ; $613c: $f8 $f8
    jr nc, jr_03b_6170                            ; $613e: $30 $30

    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    ld bc, $6101                                  ; $6144: $01 $01 $61
    ld h, c                                       ; $6147: $61
    pop de                                        ; $6148: $d1
    or c                                          ; $6149: $b1
    pop de                                        ; $614a: $d1
    or c                                          ; $614b: $b1
    jp hl                                         ; $614c: $e9


    add hl, de                                    ; $614d: $19
    reti                                          ; $614e: $d9


    cp c                                          ; $614f: $b9
    pop de                                        ; $6150: $d1
    or c                                          ; $6151: $b1
    pop de                                        ; $6152: $d1
    or c                                          ; $6153: $b1
    jp hl                                         ; $6154: $e9


    sbc c                                         ; $6155: $99
    xor c                                         ; $6156: $a9
    reti                                          ; $6157: $d9


    push af                                       ; $6158: $f5
    call Call_03b_7d45                            ; $6159: $cd $45 $7d
    ld a, l                                       ; $615c: $7d
    ld a, l                                       ; $615d: $7d
    jr c, jr_03b_6198                             ; $615e: $38 $38

    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    ret nz                                        ; $6162: $c0

    ret nz                                        ; $6163: $c0

    or b                                          ; $6164: $b0
    ld [hl], b                                    ; $6165: $70
    add sp, $18                                   ; $6166: $e8 $18
    db $f4                                        ; $6168: $f4
    inc c                                         ; $6169: $0c
    ld a, [$cd06]                                 ; $616a: $fa $06 $cd
    inc sp                                        ; $616d: $33
    push de                                       ; $616e: $d5
    dec sp                                        ; $616f: $3b

jr_03b_6170:
    db $dd                                        ; $6170: $dd
    dec sp                                        ; $6171: $3b
    db $dd                                        ; $6172: $dd
    inc sp                                        ; $6173: $33
    db $fd                                        ; $6174: $fd
    inc bc                                        ; $6175: $03
    ei                                            ; $6176: $fb
    rlca                                          ; $6177: $07
    rst $20                                       ; $6178: $e7
    rra                                           ; $6179: $1f
    dec e                                         ; $617a: $1d
    db $fd                                        ; $617b: $fd
    ld sp, hl                                     ; $617c: $f9
    ld sp, hl                                     ; $617d: $f9
    ldh [$e0], a                                  ; $617e: $e0 $e0
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    inc bc                                        ; $6188: $03
    inc bc                                        ; $6189: $03
    sbc $dd                                       ; $618a: $de $dd
    or h                                          ; $618c: $b4
    ld l, a                                       ; $618d: $6f
    rst $20                                       ; $618e: $e7
    rra                                           ; $618f: $1f
    sbc $3f                                       ; $6190: $de $3f
    cp [hl]                                       ; $6192: $be
    ld a, l                                       ; $6193: $7d
    and [hl]                                      ; $6194: $a6
    ld h, l                                       ; $6195: $65
    and [hl]                                      ; $6196: $a6
    ld h, l                                       ; $6197: $65

jr_03b_6198:
    and [hl]                                      ; $6198: $a6
    ld h, l                                       ; $6199: $65
    inc h                                         ; $619a: $24
    rst $20                                       ; $619b: $e7
    rst $20                                       ; $619c: $e7
    rst $20                                       ; $619d: $e7
    jp Jump_000_00c3                              ; $619e: $c3 $c3 $00


    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    nop                                           ; $61a3: $00
    nop                                           ; $61a4: $00
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00
    nop                                           ; $61a7: $00
    nop                                           ; $61a8: $00
    nop                                           ; $61a9: $00
    db $e3                                        ; $61aa: $e3
    db $e3                                        ; $61ab: $e3
    sub $b5                                       ; $61ac: $d6 $b5
    sub $b5                                       ; $61ae: $d6 $b5
    ld [$ad9d], a                                 ; $61b0: $ea $9d $ad
    db $db                                        ; $61b3: $db
    db $fd                                        ; $61b4: $fd
    jp $e7db                                      ; $61b5: $c3 $db $e7


    ld a, [$a6e6]                                 ; $61b8: $fa $e6 $a6
    cp [hl]                                       ; $61bb: $be
    cp h                                          ; $61bc: $bc
    cp h                                          ; $61bd: $bc
    jr jr_03b_61d8                                ; $61be: $18 $18

    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    nop                                           ; $61c3: $00
    nop                                           ; $61c4: $00
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    nop                                           ; $61c8: $00
    nop                                           ; $61c9: $00
    inc c                                         ; $61ca: $0c
    inc c                                         ; $61cb: $0c
    or d                                          ; $61cc: $b2
    cp [hl]                                       ; $61cd: $be
    db $dd                                        ; $61ce: $dd
    db $e3                                        ; $61cf: $e3
    cp l                                          ; $61d0: $bd
    db $db                                        ; $61d1: $db
    ld l, e                                       ; $61d2: $6b
    sub a                                         ; $61d3: $97
    ld a, [hl]                                    ; $61d4: $7e
    adc [hl]                                      ; $61d5: $8e
    or $8e                                        ; $61d6: $f6 $8e

jr_03b_61d8:
    cp l                                          ; $61d8: $bd
    jp $ffe1                                      ; $61d9: $c3 $e1 $ff


    ld a, a                                       ; $61dc: $7f
    ld a, a                                       ; $61dd: $7f
    ld e, $1e                                     ; $61de: $1e $1e
    nop                                           ; $61e0: $00
    nop                                           ; $61e1: $00
    ld bc, $0601                                  ; $61e2: $01 $01 $06
    rlca                                          ; $61e5: $07
    dec bc                                        ; $61e6: $0b
    inc c                                         ; $61e7: $0c

jr_03b_61e8:
    ld d, $19                                     ; $61e8: $16 $19
    dec e                                         ; $61ea: $1d
    inc de                                        ; $61eb: $13
    dec hl                                        ; $61ec: $2b
    scf                                           ; $61ed: $37
    ld a, $26                                     ; $61ee: $3e $26
    ld e, h                                       ; $61f0: $5c
    ld h, h                                       ; $61f1: $64
    ld e, e                                       ; $61f2: $5b
    ld h, a                                       ; $61f3: $67
    ld e, a                                       ; $61f4: $5f
    ld h, b                                       ; $61f5: $60
    ld h, a                                       ; $61f6: $67
    ld a, b                                       ; $61f7: $78
    jr c, jr_03b_6239                             ; $61f8: $38 $3f

    rra                                           ; $61fa: $1f
    rra                                           ; $61fb: $1f
    rlca                                          ; $61fc: $07
    rlca                                          ; $61fd: $07
    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    ret nz                                        ; $6202: $c0

    ret nz                                        ; $6203: $c0

    and b                                         ; $6204: $a0
    ld h, b                                       ; $6205: $60
    jr nz, jr_03b_61e8                            ; $6206: $20 $e0

    ldh [$e0], a                                  ; $6208: $e0 $e0
    add e                                         ; $620a: $83
    add e                                         ; $620b: $83
    ld b, $05                                     ; $620c: $06 $05
    scf                                           ; $620e: $37
    inc [hl]                                      ; $620f: $34
    ld c, a                                       ; $6210: $4f
    ld a, h                                       ; $6211: $7c
    xor $dd                                       ; $6212: $ee $dd
    ld l, [hl]                                    ; $6214: $6e
    db $dd                                        ; $6215: $dd
    xor $1d                                       ; $6216: $ee $1d
    xor $1d                                       ; $6218: $ee $1d
    inc c                                         ; $621a: $0c
    rst $38                                       ; $621b: $ff
    rst $38                                       ; $621c: $ff
    rst $38                                       ; $621d: $ff
    di                                            ; $621e: $f3
    di                                            ; $621f: $f3
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    ld h, b                                       ; $622a: $60
    ld h, b                                       ; $622b: $60
    sub e                                         ; $622c: $93
    di                                            ; $622d: $f3
    push af                                       ; $622e: $f5
    ld d, $7b                                     ; $622f: $16 $7b
    db $fd                                        ; $6231: $fd
    or $f9                                        ; $6232: $f6 $f9
    rst $10                                       ; $6234: $d7
    ret c                                         ; $6235: $d8

    sbc a                                         ; $6236: $9f
    sbc b                                         ; $6237: $98
    adc e                                         ; $6238: $8b

jr_03b_6239:
    adc h                                         ; $6239: $8c
    adc [hl]                                      ; $623a: $8e
    adc a                                         ; $623b: $8f
    add a                                         ; $623c: $87
    add a                                         ; $623d: $87
    ld bc, $0001                                  ; $623e: $01 $01 $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    ret nz                                        ; $624a: $c0

    ret nz                                        ; $624b: $c0

    ld hl, $d2e1                                  ; $624c: $21 $e1 $d2
    inc sp                                        ; $624f: $33
    push de                                       ; $6250: $d5
    or [hl]                                       ; $6251: $b6
    cp e                                          ; $6252: $bb
    ld a, h                                       ; $6253: $7c
    rst $28                                       ; $6254: $ef
    add sp, $6b                                   ; $6255: $e8 $6b
    db $ec                                        ; $6257: $ec
    db $dd                                        ; $6258: $dd
    ld a, $17                                     ; $6259: $3e $17
    rst $30                                       ; $625b: $f7
    di                                            ; $625c: $f3
    di                                            ; $625d: $f3
    ldh [$e0], a                                  ; $625e: $e0 $e0
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    ld bc, $6301                                  ; $6268: $01 $01 $63
    ld h, e                                       ; $626b: $63
    sub a                                         ; $626c: $97
    db $f4                                        ; $626d: $f4
    rst $28                                       ; $626e: $ef
    rra                                           ; $626f: $1f
    db $eb                                        ; $6270: $eb
    dec de                                        ; $6271: $1b
    add hl, hl                                    ; $6272: $29
    reti                                          ; $6273: $d9


    ld l, c                                       ; $6274: $69
    reti                                          ; $6275: $d9


    jp hl                                         ; $6276: $e9


    add hl, de                                    ; $6277: $19
    push af                                       ; $6278: $f5
    dec c                                         ; $6279: $0d
    inc [hl]                                      ; $627a: $34
    db $ec                                        ; $627b: $ec
    db $fc                                        ; $627c: $fc
    db $fc                                        ; $627d: $fc
    ret c                                         ; $627e: $d8

    ret c                                         ; $627f: $d8

    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    ret nz                                        ; $6286: $c0

    ret nz                                        ; $6287: $c0

    and b                                         ; $6288: $a0
    ld h, b                                       ; $6289: $60
    and b                                         ; $628a: $a0
    ld h, b                                       ; $628b: $60
    ret nc                                        ; $628c: $d0

    jr nc, @-$4e                                  ; $628d: $30 $b0

    ld [hl], b                                    ; $628f: $70
    and b                                         ; $6290: $a0
    ld h, b                                       ; $6291: $60
    and b                                         ; $6292: $a0
    ld h, b                                       ; $6293: $60
    ret nc                                        ; $6294: $d0

    jr nc, jr_03b_62e7                            ; $6295: $30 $50

    or b                                          ; $6297: $b0
    add sp, -$68                                  ; $6298: $e8 $98
    adc b                                         ; $629a: $88
    ld hl, sp-$08                                 ; $629b: $f8 $f8
    ld hl, sp+$70                                 ; $629d: $f8 $70
    ld [hl], b                                    ; $629f: $70
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    ld h, b                                       ; $62a2: $60

Jump_03b_62a3:
    ld h, b                                       ; $62a3: $60
    ret nc                                        ; $62a4: $d0

    or b                                          ; $62a5: $b0
    ret nc                                        ; $62a6: $d0

    or b                                          ; $62a7: $b0
    ret nc                                        ; $62a8: $d0

    or b                                          ; $62a9: $b0
    ret nc                                        ; $62aa: $d0

    or b                                          ; $62ab: $b0
    db $d3                                        ; $62ac: $d3
    or e                                          ; $62ad: $b3
    push de                                       ; $62ae: $d5
    or [hl]                                       ; $62af: $b6
    sub $b5                                       ; $62b0: $d6 $b5
    jp c, $dfbd                                   ; $62b2: $da $bd $df

    cp b                                          ; $62b5: $b8
    db $db                                        ; $62b6: $db
    cp h                                          ; $62b7: $bc
    push af                                       ; $62b8: $f5
    adc [hl]                                      ; $62b9: $8e
    add d                                         ; $62ba: $82
    rst $38                                       ; $62bb: $ff
    rst $38                                       ; $62bc: $ff
    rst $38                                       ; $62bd: $ff
    ld a, a                                       ; $62be: $7f
    ld a, a                                       ; $62bf: $7f
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    nop                                           ; $62c7: $00
    nop                                           ; $62c8: $00
    nop                                           ; $62c9: $00
    call c, Call_000_3bdc                         ; $62ca: $dc $dc $3b
    rst $30                                       ; $62cd: $f7
    sbc $31                                       ; $62ce: $de $31
    ld a, a                                       ; $62d0: $7f
    sub b                                         ; $62d1: $90
    db $fc                                        ; $62d2: $fc
    sub e                                         ; $62d3: $93
    db $fd                                        ; $62d4: $fd
    inc de                                        ; $62d5: $13
    db $fd                                        ; $62d6: $fd
    inc de                                        ; $62d7: $13
    db $dd                                        ; $62d8: $dd
    inc sp                                        ; $62d9: $33
    ld sp, $ffff                                  ; $62da: $31 $ff $ff
    rst $38                                       ; $62dd: $ff
    adc $ce                                       ; $62de: $ce $ce
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    ld b, $06                                     ; $62e2: $06 $06
    add hl, de                                    ; $62e4: $19
    rra                                           ; $62e5: $1f
    dec l                                         ; $62e6: $2d

jr_03b_62e7:
    inc sp                                        ; $62e7: $33
    ld e, l                                       ; $62e8: $5d
    ld h, e                                       ; $62e9: $63
    or l                                          ; $62ea: $b5
    res 7, l                                      ; $62eb: $cb $bd
    bit 3, l                                      ; $62ed: $cb $5d
    db $e3                                        ; $62ef: $e3
    xor [hl]                                      ; $62f0: $ae
    ld [hl], e                                    ; $62f1: $73
    cp a                                          ; $62f2: $bf
    ld [hl], d                                    ; $62f3: $72
    cp e                                          ; $62f4: $bb
    halt                                          ; $62f5: $76
    xor d                                         ; $62f6: $aa
    ld [hl], a                                    ; $62f7: $77
    ei                                            ; $62f8: $fb
    ld b, a                                       ; $62f9: $47
    ld d, a                                       ; $62fa: $57
    rst $28                                       ; $62fb: $ef
    db $fc                                        ; $62fc: $fc
    db $fc                                        ; $62fd: $fc
    ld hl, sp-$08                                 ; $62fe: $f8 $f8
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    ld bc, $6201                                  ; $6308: $01 $01 $62
    ld h, e                                       ; $630b: $63
    sub l                                         ; $630c: $95
    or $6b                                        ; $630d: $f6 $6b
    sbc h                                         ; $630f: $9c
    cp $69                                        ; $6310: $fe $69
    xor a                                         ; $6312: $af
    ld e, b                                       ; $6313: $58
    db $fd                                        ; $6314: $fd
    ld a, $db                                     ; $6315: $3e $db
    inc a                                         ; $6317: $3c
    ld l, [hl]                                    ; $6318: $6e
    sbc c                                         ; $6319: $99
    adc c                                         ; $631a: $89
    rst $38                                       ; $631b: $ff
    rst $38                                       ; $631c: $ff
    rst $38                                       ; $631d: $ff
    ld a, [hl]                                    ; $631e: $7e
    ld a, [hl]                                    ; $631f: $7e
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    inc bc                                        ; $6322: $03
    inc bc                                        ; $6323: $03
    ld b, $05                                     ; $6324: $06 $05
    scf                                           ; $6326: $37
    inc [hl]                                      ; $6327: $34
    rst $28                                       ; $6328: $ef
    call c, $dcef                                 ; $6329: $dc $ef $dc
    rst $30                                       ; $632c: $f7
    adc h                                         ; $632d: $8c
    ld l, a                                       ; $632e: $6f
    call c, $dcef                                 ; $632f: $dc $ef $dc
    rst $28                                       ; $6332: $ef
    ld e, h                                       ; $6333: $5c
    ld l, a                                       ; $6334: $6f
    call c, $cc77                                 ; $6335: $dc $77 $cc

jr_03b_6338:
    rst $10                                       ; $6338: $d7
    db $ec                                        ; $6339: $ec
    db $e4                                        ; $633a: $e4
    rst $38                                       ; $633b: $ff
    ccf                                           ; $633c: $3f
    ccf                                           ; $633d: $3f
    dec de                                        ; $633e: $1b
    dec de                                        ; $633f: $1b
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    ret nz                                        ; $6344: $c0

    ret nz                                        ; $6345: $c0

    and b                                         ; $6346: $a0
    ld h, b                                       ; $6347: $60
    ret nc                                        ; $6348: $d0

    jr nc, jr_03b_6338                            ; $6349: $30 $ed

    dec e                                         ; $634b: $1d
    dec sp                                        ; $634c: $3b
    adc $5e                                       ; $634d: $ce $5e
    jp hl                                         ; $634f: $e9


    ld a, l                                       ; $6350: $7d
    db $eb                                        ; $6351: $eb
    ld l, a                                       ; $6352: $6f
    db $db                                        ; $6353: $db
    xor $1a                                       ; $6354: $ee $1a
    sub $3a                                       ; $6356: $d6 $3a
    cp d                                          ; $6358: $ba
    halt                                          ; $6359: $76
    ld [hl], d                                    ; $635a: $72
    cp $de                                        ; $635b: $fe $de

Jump_03b_635d:
    sbc $8c                                       ; $635d: $de $8c
    adc h                                         ; $635f: $8c
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    ld h, b                                       ; $6368: $60
    ld h, b                                       ; $6369: $60
    call c, Call_03b_5bbc                         ; $636a: $dc $bc $5b
    rst $30                                       ; $636d: $f7
    ld a, e                                       ; $636e: $7b
    rst $30                                       ; $636f: $f7
    jp c, $95f7                                   ; $6370: $da $f7 $95

    ld a, [$b8df]                                 ; $6373: $fa $df $b8
    db $db                                        ; $6376: $db
    cp h                                          ; $6377: $bc
    sbc $bd                                       ; $6378: $de $bd
    sub h                                         ; $637a: $94
    rst $30                                       ; $637b: $f7
    rst $30                                       ; $637c: $f7
    rst $30                                       ; $637d: $f7
    ld h, e                                       ; $637e: $63
    ld h, e                                       ; $637f: $63
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
    call z, $b2cc                                 ; $638a: $cc $cc $b2
    ld a, [hl]                                    ; $638d: $7e
    xor l                                         ; $638e: $ad
    ld [hl], e                                    ; $638f: $73
    cp a                                          ; $6390: $bf
    ld l, l                                       ; $6391: $6d
    push de                                       ; $6392: $d5
    ld l, e                                       ; $6393: $6b
    ld a, a                                       ; $6394: $7f
    rst $00                                       ; $6395: $c7
    ld a, d                                       ; $6396: $7a
    add $dd                                       ; $6397: $c6 $dd
    db $e3                                        ; $6399: $e3
    pop af                                        ; $639a: $f1
    rst $38                                       ; $639b: $ff
    cp a                                          ; $639c: $bf
    cp a                                          ; $639d: $bf
    ld c, $0e                                     ; $639e: $0e $0e
    nop                                           ; $63a0: $00
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00

Jump_03b_63a3:
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
    ld bc, $0101                                  ; $63ae: $01 $01 $01
    ld bc, $0101                                  ; $63b1: $01 $01 $01
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
    ld c, $0e                                     ; $63c2: $0e $0e
    dec d                                         ; $63c4: $15
    dec de                                        ; $63c5: $1b
    dec l                                         ; $63c6: $2d
    inc sp                                        ; $63c7: $33
    ld e, c                                       ; $63c8: $59
    ld h, a                                       ; $63c9: $67
    or a                                          ; $63ca: $b7
    rst $08                                       ; $63cb: $cf
    xor $9e                                       ; $63cc: $ee $9e
    ld a, b                                       ; $63ce: $78
    sbc b                                         ; $63cf: $98
    ld [hl], b                                    ; $63d0: $70
    sub b                                         ; $63d1: $90
    xor $9e                                       ; $63d2: $ee $9e
    cp l                                          ; $63d4: $bd
    jp $e1de                                      ; $63d5: $c3 $de $e1


    ld l, [hl]                                    ; $63d8: $6e
    ld [hl], c                                    ; $63d9: $71
    jr c, jr_03b_641b                             ; $63da: $38 $3f

    rra                                           ; $63dc: $1f
    rra                                           ; $63dd: $1f
    rlca                                          ; $63de: $07
    rlca                                          ; $63df: $07
    nop                                           ; $63e0: $00
    nop                                           ; $63e1: $00
    jr jr_03b_63fc                                ; $63e2: $18 $18

    inc [hl]                                      ; $63e4: $34
    inc l                                         ; $63e5: $2c

Jump_03b_63e6:
    inc [hl]                                      ; $63e6: $34
    inc l                                         ; $63e7: $2c
    ld d, h                                       ; $63e8: $54
    ld l, h                                       ; $63e9: $6c
    halt                                          ; $63ea: $76
    ld c, [hl]                                    ; $63eb: $4e
    ld a, l                                       ; $63ec: $7d
    ld b, e                                       ; $63ed: $43
    ld a, a                                       ; $63ee: $7f
    ld b, b                                       ; $63ef: $40
    ld [hl], e                                    ; $63f0: $73
    ld c, h                                       ; $63f1: $4c
    ld [hl], l                                    ; $63f2: $75
    ld c, [hl]                                    ; $63f3: $4e
    ld [hl], a                                    ; $63f4: $77
    ld c, [hl]                                    ; $63f5: $4e
    rst $30                                       ; $63f6: $f7
    adc $c7                                       ; $63f7: $ce $c7
    cp $fe                                        ; $63f9: $fe $fe
    rst $38                                       ; $63fb: $ff

jr_03b_63fc:
    cp e                                          ; $63fc: $bb
    cp e                                          ; $63fd: $bb
    ld bc, $0001                                  ; $63fe: $01 $01 $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    ld b, $06                                     ; $6408: $06 $06
    dec c                                         ; $640a: $0d
    dec bc                                        ; $640b: $0b
    adc c                                         ; $640c: $89
    adc a                                         ; $640d: $8f
    ld c, a                                       ; $640e: $4f
    rst $08                                       ; $640f: $cf
    ld b, l                                       ; $6410: $45
    rst $00                                       ; $6411: $c7
    ld c, l                                       ; $6412: $4d
    bit 1, l                                      ; $6413: $cb $4d
    bit 1, l                                      ; $6415: $cb $4d
    res 5, l                                      ; $6417: $cb $ad
    ld l, e                                       ; $6419: $6b
    add hl, hl                                    ; $641a: $29

jr_03b_641b:
    rst $28                                       ; $641b: $ef
    rst $28                                       ; $641c: $ef
    rst $28                                       ; $641d: $ef
    add $c6                                       ; $641e: $c6 $c6
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    nop                                           ; $6423: $00
    jr c, jr_03b_645e                             ; $6424: $38 $38

    ld d, h                                       ; $6426: $54
    ld l, h                                       ; $6427: $6c
    ld a, d                                       ; $6428: $7a
    ld b, [hl]                                    ; $6429: $46
    ld a, a                                       ; $642a: $7f
    ld b, c                                       ; $642b: $41
    ld [hl], d                                    ; $642c: $72
    ld c, l                                       ; $642d: $4d
    halt                                          ; $642e: $76
    ld c, l                                       ; $642f: $4d
    ld a, l                                       ; $6430: $7d
    ld b, e                                       ; $6431: $43
    ld a, e                                       ; $6432: $7b
    ld b, a                                       ; $6433: $47
    halt                                          ; $6434: $76
    ld c, [hl]                                    ; $6435: $4e
    ld l, h                                       ; $6436: $6c
    ld e, h                                       ; $6437: $5c
    ld l, b                                       ; $6438: $68
    ld e, b                                       ; $6439: $58
    ld c, b                                       ; $643a: $48
    ld a, b                                       ; $643b: $78
    ld a, b                                       ; $643c: $78
    ld a, b                                       ; $643d: $78
    jr nc, jr_03b_6470                            ; $643e: $30 $30

    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    rrca                                          ; $6442: $0f
    rrca                                          ; $6443: $0f
    ld e, $11                                     ; $6444: $1e $11
    inc d                                         ; $6446: $14
    dec de                                        ; $6447: $1b
    dec e                                         ; $6448: $1d
    dec de                                        ; $6449: $1b
    dec c                                         ; $644a: $0d
    dec bc                                        ; $644b: $0b
    adc l                                         ; $644c: $8d
    adc e                                         ; $644d: $8b
    adc l                                         ; $644e: $8d
    adc e                                         ; $644f: $8b
    adc l                                         ; $6450: $8d
    adc e                                         ; $6451: $8b
    dec c                                         ; $6452: $0d
    dec bc                                        ; $6453: $0b
    dec c                                         ; $6454: $0d
    dec bc                                        ; $6455: $0b
    dec c                                         ; $6456: $0d
    dec bc                                        ; $6457: $0b
    ld d, $19                                     ; $6458: $16 $19
    db $10                                        ; $645a: $10
    rra                                           ; $645b: $1f
    rra                                           ; $645c: $1f
    rra                                           ; $645d: $1f

jr_03b_645e:
    rrca                                          ; $645e: $0f
    rrca                                          ; $645f: $0f
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    add b                                         ; $6464: $80
    add b                                         ; $6465: $80
    add b                                         ; $6466: $80
    add b                                         ; $6467: $80
    add b                                         ; $6468: $80
    add b                                         ; $6469: $80
    ld [hl], b                                    ; $646a: $70
    ld [hl], b                                    ; $646b: $70
    ld l, [hl]                                    ; $646c: $6e
    ld e, [hl]                                    ; $646d: $5e
    ld a, l                                       ; $646e: $7d
    ld b, e                                       ; $646f: $43

jr_03b_6470:
    ld a, [hl]                                    ; $6470: $7e
    ld b, c                                       ; $6471: $41
    ld [hl], d                                    ; $6472: $72
    ld c, l                                       ; $6473: $4d
    halt                                          ; $6474: $76
    ld c, l                                       ; $6475: $4d
    halt                                          ; $6476: $76
    ld c, l                                       ; $6477: $4d
    or $cd                                        ; $6478: $f6 $cd
    call nz, $ffff                                ; $647a: $c4 $ff $ff
    rst $38                                       ; $647d: $ff
    dec sp                                        ; $647e: $3b
    dec sp                                        ; $647f: $3b
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
    add b                                         ; $6490: $80
    add b                                         ; $6491: $80
    add b                                         ; $6492: $80
    add b                                         ; $6493: $80
    add b                                         ; $6494: $80
    add b                                         ; $6495: $80
    add b                                         ; $6496: $80
    add b                                         ; $6497: $80
    add b                                         ; $6498: $80
    add b                                         ; $6499: $80
    add b                                         ; $649a: $80
    add b                                         ; $649b: $80
    add b                                         ; $649c: $80
    add b                                         ; $649d: $80
    nop                                           ; $649e: $00
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00
    rrca                                          ; $64a2: $0f
    rrca                                          ; $64a3: $0f
    dec d                                         ; $64a4: $15
    dec de                                        ; $64a5: $1b
    dec l                                         ; $64a6: $2d
    inc sp                                        ; $64a7: $33
    ld e, c                                       ; $64a8: $59
    ld h, a                                       ; $64a9: $67
    ld [hl], a                                    ; $64aa: $77
    ld c, a                                       ; $64ab: $4f
    xor [hl]                                      ; $64ac: $ae
    rst $18                                       ; $64ad: $df
    ei                                            ; $64ae: $fb
    sbc d                                         ; $64af: $9a
    di                                            ; $64b0: $f3
    sub d                                         ; $64b1: $92
    xor [hl]                                      ; $64b2: $ae
    rst $18                                       ; $64b3: $df
    db $fd                                        ; $64b4: $fd
    jp Jump_03b_635d                              ; $64b5: $c3 $5d $63


    ld l, l                                       ; $64b8: $6d
    ld [hl], e                                    ; $64b9: $73
    add hl, sp                                    ; $64ba: $39
    ccf                                           ; $64bb: $3f
    rra                                           ; $64bc: $1f
    rra                                           ; $64bd: $1f
    rlca                                          ; $64be: $07
    rlca                                          ; $64bf: $07
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    add b                                         ; $64c2: $80
    add b                                         ; $64c3: $80
    ld b, b                                       ; $64c4: $40
    ret nz                                        ; $64c5: $c0

    ret nz                                        ; $64c6: $c0

    ld b, b                                       ; $64c7: $40
    ret nz                                        ; $64c8: $c0

    ld b, b                                       ; $64c9: $40
    call z, $f24c                                 ; $64ca: $cc $4c $f2
    ld a, [hl]                                    ; $64cd: $7e
    db $dd                                        ; $64ce: $dd
    ld h, e                                       ; $64cf: $63
    rst $20                                       ; $64d0: $e7
    ld e, c                                       ; $64d1: $59
    rst $28                                       ; $64d2: $ef
    ld e, c                                       ; $64d3: $59
    rst $38                                       ; $64d4: $ff
    ld b, c                                       ; $64d5: $41
    rst $38                                       ; $64d6: $ff
    ld b, c                                       ; $64d7: $41
    db $dd                                        ; $64d8: $dd
    ld h, e                                       ; $64d9: $63
    ld h, e                                       ; $64da: $63
    rst $38                                       ; $64db: $ff
    rst $38                                       ; $64dc: $ff
    rst $38                                       ; $64dd: $ff
    sbc h                                         ; $64de: $9c
    sbc h                                         ; $64df: $9c
    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    jr nc, jr_03b_651a                            ; $64e8: $30 $30

    ld c, c                                       ; $64ea: $49
    ld a, c                                       ; $64eb: $79
    cp d                                          ; $64ec: $ba
    bit 5, l                                      ; $64ed: $cb $6d
    sbc [hl]                                      ; $64ef: $9e
    db $db                                        ; $64f0: $db
    dec a                                         ; $64f1: $3d
    xor $19                                       ; $64f2: $ee $19
    xor a                                         ; $64f4: $af
    ret c                                         ; $64f5: $d8

    ld l, e                                       ; $64f6: $6b
    sbc h                                         ; $64f7: $9c
    db $dd                                        ; $64f8: $dd
    ld a, $36                                     ; $64f9: $3e $36
    rst $30                                       ; $64fb: $f7
    db $e3                                        ; $64fc: $e3
    db $e3                                        ; $64fd: $e3
    pop bc                                        ; $64fe: $c1
    pop bc                                        ; $64ff: $c1
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    ld b, $06                                     ; $6508: $06 $06
    adc c                                         ; $650a: $89
    adc a                                         ; $650b: $8f
    ld d, a                                       ; $650c: $57

jr_03b_650d:
    reti                                          ; $650d: $d9


    db $ed                                        ; $650e: $ed
    inc sp                                        ; $650f: $33
    ei                                            ; $6510: $fb
    and a                                         ; $6511: $a7
    cp l                                          ; $6512: $bd
    ld h, e                                       ; $6513: $63
    push af                                       ; $6514: $f5
    ei                                            ; $6515: $fb
    ld l, l                                       ; $6516: $6d
    di                                            ; $6517: $f3
    cp e                                          ; $6518: $bb
    ld h, a                                       ; $6519: $67

jr_03b_651a:
    ld h, $fe                                     ; $651a: $26 $fe
    db $fc                                        ; $651c: $fc
    db $fc                                        ; $651d: $fc
    ret c                                         ; $651e: $d8

    ret c                                         ; $651f: $d8

    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    ld h, e                                       ; $6526: $63
    ld h, e                                       ; $6527: $63
    sub $b5                                       ; $6528: $d6 $b5
    sub $b5                                       ; $652a: $d6 $b5
    rst $28                                       ; $652c: $ef
    jr jr_03b_650d                                ; $652d: $18 $de

    cp l                                          ; $652f: $bd
    sbc $bd                                       ; $6530: $de $bd
    sub $b5                                       ; $6532: $d6 $b5
    sub $b5                                       ; $6534: $d6 $b5
    xor l                                         ; $6536: $ad
    sbc $ef                                       ; $6537: $de $ef
    sbc $4a                                       ; $6539: $de $4a
    ld a, e                                       ; $653b: $7b
    ld a, e                                       ; $653c: $7b
    ld a, e                                       ; $653d: $7b
    ld sp, $0031                                  ; $653e: $31 $31 $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    ld bc, $0101                                  ; $6544: $01 $01 $01
    ld bc, $8181                                  ; $6547: $01 $81 $81
    adc l                                         ; $654a: $8d
    adc l                                         ; $654b: $8d
    ld [hl], e                                    ; $654c: $73
    rst $38                                       ; $654d: $ff
    db $dd                                        ; $654e: $dd
    db $e3                                        ; $654f: $e3
    rst $20                                       ; $6550: $e7
    reti                                          ; $6551: $d9


    rst $28                                       ; $6552: $ef
    reti                                          ; $6553: $d9


    rst $38                                       ; $6554: $ff
    pop bc                                        ; $6555: $c1
    ld a, a                                       ; $6556: $7f
    pop bc                                        ; $6557: $c1
    ld e, l                                       ; $6558: $5d
    db $e3                                        ; $6559: $e3
    ld h, e                                       ; $655a: $63
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    rst $38                                       ; $655d: $ff
    sbc h                                         ; $655e: $9c
    sbc h                                         ; $655f: $9c
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    ldh a, [$f0]                                  ; $6562: $f0 $f0
    ld l, b                                       ; $6564: $68
    sbc b                                         ; $6565: $98
    db $f4                                        ; $6566: $f4
    inc c                                         ; $6567: $0c
    ei                                            ; $6568: $fb
    rlca                                          ; $6569: $07
    swap [hl]                                     ; $656a: $cb $36
    jp c, $fb37                                   ; $656c: $da $37 $fb

    rlca                                          ; $656f: $07
    ei                                            ; $6570: $fb
    rlca                                          ; $6571: $07
    rst $20                                       ; $6572: $e7
    ld e, $df                                     ; $6573: $1e $df
    ld a, $db                                     ; $6575: $3e $db
    ld a, [hl-]                                   ; $6577: $3a
    db $d3                                        ; $6578: $d3
    ld [hl-], a                                   ; $6579: $32
    ld [de], a                                    ; $657a: $12
    di                                            ; $657b: $f3
    di                                            ; $657c: $f3
    di                                            ; $657d: $f3
    pop hl                                        ; $657e: $e1
    pop hl                                        ; $657f: $e1
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    add b                                         ; $6588: $80
    add b                                         ; $6589: $80
    ld [hl], b                                    ; $658a: $70
    ldh a, [$6c]                                  ; $658b: $f0 $6c
    call c, $c6fa                                 ; $658d: $dc $fa $c6
    ld a, l                                       ; $6590: $7d
    jp $cb75                                      ; $6591: $c3 $75 $cb


    ld l, l                                       ; $6594: $6d
    db $db                                        ; $6595: $db
    ld l, l                                       ; $6596: $6d
    db $db                                        ; $6597: $db
    ld l, l                                       ; $6598: $6d
    db $db                                        ; $6599: $db
    ld c, c                                       ; $659a: $49
    rst $38                                       ; $659b: $ff
    rst $38                                       ; $659c: $ff
    rst $38                                       ; $659d: $ff
    or [hl]                                       ; $659e: $b6
    or [hl]                                       ; $659f: $b6
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
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    nop                                           ; $660a: $00
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    nop                                           ; $660e: $00
    nop                                           ; $660f: $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661a: $00
    nop                                           ; $661b: $00
    nop                                           ; $661c: $00
    nop                                           ; $661d: $00
    nop                                           ; $661e: $00
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    nop                                           ; $662b: $00
    nop                                           ; $662c: $00
    nop                                           ; $662d: $00
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
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
    ld bc, $0201                                  ; $66a8: $01 $01 $02
    inc bc                                        ; $66ab: $03
    inc bc                                        ; $66ac: $03
    ld [bc], a                                    ; $66ad: $02
    inc bc                                        ; $66ae: $03
    ld [bc], a                                    ; $66af: $02
    inc bc                                        ; $66b0: $03
    ld [bc], a                                    ; $66b1: $02
    inc bc                                        ; $66b2: $03
    ld [bc], a                                    ; $66b3: $02
    inc bc                                        ; $66b4: $03
    ld [bc], a                                    ; $66b5: $02
    ld [bc], a                                    ; $66b6: $02
    inc bc                                        ; $66b7: $03
    inc bc                                        ; $66b8: $03
    inc bc                                        ; $66b9: $03
    ld bc, $0001                                  ; $66ba: $01 $01 $00
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    nop                                           ; $66bf: $00
    nop                                           ; $66c0: $00
    nop                                           ; $66c1: $00
    inc a                                         ; $66c2: $3c
    inc a                                         ; $66c3: $3c
    ld e, d                                       ; $66c4: $5a
    ld h, [hl]                                    ; $66c5: $66
    cp l                                          ; $66c6: $bd
    jp $9966                                      ; $66c7: $c3 $66 $99


    db $db                                        ; $66ca: $db
    inc a                                         ; $66cb: $3c
    cp a                                          ; $66cc: $bf
    ld a, l                                       ; $66cd: $7d
    rst $20                                       ; $66ce: $e7
    ld h, l                                       ; $66cf: $65
    rst $00                                       ; $66d0: $c7
    ld b, l                                       ; $66d1: $45
    bit 1, l                                      ; $66d2: $cb $4d
    or a                                          ; $66d4: $b7
    ld a, c                                       ; $66d5: $79
    db $fd                                        ; $66d6: $fd
    inc bc                                        ; $66d7: $03
    ld a, c                                       ; $66d8: $79
    add a                                         ; $66d9: $87
    add a                                         ; $66da: $87
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    ld a, b                                       ; $66de: $78
    ld a, b                                       ; $66df: $78
    nop                                           ; $66e0: $00
    nop                                           ; $66e1: $00
    nop                                           ; $66e2: $00
    nop                                           ; $66e3: $00
    nop                                           ; $66e4: $00
    nop                                           ; $66e5: $00
    nop                                           ; $66e6: $00
    nop                                           ; $66e7: $00
    add b                                         ; $66e8: $80
    add b                                         ; $66e9: $80
    ret nz                                        ; $66ea: $c0

    ret nz                                        ; $66eb: $c0

    cp b                                          ; $66ec: $b8
    ld a, b                                       ; $66ed: $78
    db $f4                                        ; $66ee: $f4
    inc c                                         ; $66ef: $0c
    ld a, [$9a06]                                 ; $66f0: $fa $06 $9a
    ld h, [hl]                                    ; $66f3: $66
    xor d                                         ; $66f4: $aa
    halt                                          ; $66f5: $76
    cp d                                          ; $66f6: $ba
    halt                                          ; $66f7: $76
    cp d                                          ; $66f8: $ba
    halt                                          ; $66f9: $76
    ld [hl-], a                                   ; $66fa: $32
    cp $fe                                        ; $66fb: $fe $fe
    cp $cc                                        ; $66fd: $fe $cc
    call z, $0000                                 ; $66ff: $cc $00 $00
    inc bc                                        ; $6702: $03
    inc bc                                        ; $6703: $03
    dec c                                         ; $6704: $0d
    ld c, $16                                     ; $6705: $0e $16
    add hl, de                                    ; $6707: $19
    dec l                                         ; $6708: $2d
    inc sp                                        ; $6709: $33
    dec sp                                        ; $670a: $3b
    daa                                           ; $670b: $27
    ld d, [hl]                                    ; $670c: $56
    ld l, [hl]                                    ; $670d: $6e
    ld a, l                                       ; $670e: $7d
    ld c, l                                       ; $670f: $4d
    cp d                                          ; $6710: $ba
    res 6, a                                      ; $6711: $cb $b7
    adc $bf                                       ; $6713: $ce $bf
    ret nz                                        ; $6715: $c0

    rst $08                                       ; $6716: $cf
    ldh a, [$71]                                  ; $6717: $f0 $71
    ld a, [hl]                                    ; $6719: $7e
    ld a, $3f                                     ; $671a: $3e $3f
    rrca                                          ; $671c: $0f
    rrca                                          ; $671d: $0f
    ld bc, $0001                                  ; $671e: $01 $01 $00
    nop                                           ; $6721: $00
    add b                                         ; $6722: $80
    add b                                         ; $6723: $80
    ld b, b                                       ; $6724: $40
    ret nz                                        ; $6725: $c0

    ld b, b                                       ; $6726: $40
    ret nz                                        ; $6727: $c0

    ret nz                                        ; $6728: $c0

    ret nz                                        ; $6729: $c0

    ld [hl], $36                                  ; $672a: $36 $36
    ld l, c                                       ; $672c: $69
    ld e, a                                       ; $672d: $5f
    rst $38                                       ; $672e: $ff
    pop bc                                        ; $672f: $c1
    halt                                          ; $6730: $76
    rst $08                                       ; $6731: $cf
    ld l, l                                       ; $6732: $6d
    sbc $6d                                       ; $6733: $de $6d
    sbc $6f                                       ; $6735: $de $6f
    sbc $6a                                       ; $6737: $de $6a
    db $db                                        ; $6739: $db
    ld c, e                                       ; $673a: $4b
    ei                                            ; $673b: $fb
    ld sp, hl                                     ; $673c: $f9
    ld sp, hl                                     ; $673d: $f9
    or b                                          ; $673e: $b0
    or b                                          ; $673f: $b0
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
    ld h, c                                       ; $674a: $61
    ld h, c                                       ; $674b: $61

jr_03b_674c:
    sub d                                         ; $674c: $92
    di                                            ; $674d: $f3
    ld l, l                                       ; $674e: $6d
    sbc [hl]                                      ; $674f: $9e
    db $eb                                        ; $6750: $eb
    ld e, l                                       ; $6751: $5d
    rst $10                                       ; $6752: $d7
    jr c, jr_03b_674c                             ; $6753: $38 $f7

    ld a, c                                       ; $6755: $79
    cp [hl]                                       ; $6756: $be
    ld a, c                                       ; $6757: $79
    db $eb                                        ; $6758: $eb
    inc e                                         ; $6759: $1c
    adc [hl]                                      ; $675a: $8e
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    ld [hl], c                                    ; $675e: $71
    ld [hl], c                                    ; $675f: $71
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
    sbc b                                         ; $676a: $98
    sbc b                                         ; $676b: $98
    ld [hl], a                                    ; $676c: $77
    rst $28                                       ; $676d: $ef
    cp [hl]                                       ; $676e: $be
    ld h, c                                       ; $676f: $61
    cp a                                          ; $6770: $bf
    ld h, b                                       ; $6771: $60
    ld [hl], e                                    ; $6772: $73
    db $ec                                        ; $6773: $ec
    push af                                       ; $6774: $f5
    xor $f7                                       ; $6775: $ee $f7
    xor $b7                                       ; $6777: $ee $b7
    ld l, [hl]                                    ; $6779: $6e
    ld h, $ff                                     ; $677a: $26 $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    reti                                          ; $677e: $d9


    reti                                          ; $677f: $d9


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
    add b                                         ; $678e: $80
    add b                                         ; $678f: $80
    ld b, b                                       ; $6790: $40
    ret nz                                        ; $6791: $c0

    ld b, b                                       ; $6792: $40
    ret nz                                        ; $6793: $c0

    ld b, b                                       ; $6794: $40
    ret nz                                        ; $6795: $c0

    ld b, b                                       ; $6796: $40
    ret nz                                        ; $6797: $c0

    ld b, b                                       ; $6798: $40
    ret nz                                        ; $6799: $c0

    ld b, b                                       ; $679a: $40
    ret nz                                        ; $679b: $c0

    ret nz                                        ; $679c: $c0

    ret nz                                        ; $679d: $c0

    add b                                         ; $679e: $80
    add b                                         ; $679f: $80
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    inc a                                         ; $67a2: $3c
    inc a                                         ; $67a3: $3c
    ld e, d                                       ; $67a4: $5a
    ld h, [hl]                                    ; $67a5: $66
    cp l                                          ; $67a6: $bd
    jp $89f7                                      ; $67a7: $c3 $f7 $89


    rst $28                                       ; $67aa: $ef
    sbc c                                         ; $67ab: $99
    rst $38                                       ; $67ac: $ff
    sbc c                                         ; $67ad: $99
    rst $38                                       ; $67ae: $ff
    sbc c                                         ; $67af: $99
    rst $38                                       ; $67b0: $ff
    sbc c                                         ; $67b1: $99
    rst $38                                       ; $67b2: $ff
    sbc c                                         ; $67b3: $99
    rst $38                                       ; $67b4: $ff
    sbc c                                         ; $67b5: $99
    rst $30                                       ; $67b6: $f7
    adc c                                         ; $67b7: $89
    cp l                                          ; $67b8: $bd
    jp $e7db                                      ; $67b9: $c3 $db $e7


    ld a, [hl]                                    ; $67bc: $7e
    ld a, [hl]                                    ; $67bd: $7e
    inc a                                         ; $67be: $3c
    inc a                                         ; $67bf: $3c
    nop                                           ; $67c0: $00
    nop                                           ; $67c1: $00
    rlca                                          ; $67c2: $07
    rlca                                          ; $67c3: $07
    dec de                                        ; $67c4: $1b
    dec e                                         ; $67c5: $1d
    daa                                           ; $67c6: $27
    add hl, sp                                    ; $67c7: $39
    ccf                                           ; $67c8: $3f
    ld hl, $213f                                  ; $67c9: $21 $3f $21
    scf                                           ; $67cc: $37
    add hl, sp                                    ; $67cd: $39
    rla                                           ; $67ce: $17
    add hl, de                                    ; $67cf: $19
    rla                                           ; $67d0: $17
    add hl, de                                    ; $67d1: $19
    rla                                           ; $67d2: $17
    add hl, de                                    ; $67d3: $19
    rla                                           ; $67d4: $17
    add hl, de                                    ; $67d5: $19
    rla                                           ; $67d6: $17
    add hl, de                                    ; $67d7: $19
    rla                                           ; $67d8: $17
    add hl, de                                    ; $67d9: $19
    rla                                           ; $67da: $17
    add hl, de                                    ; $67db: $19
    rra                                           ; $67dc: $1f
    rra                                           ; $67dd: $1f
    rra                                           ; $67de: $1f
    rra                                           ; $67df: $1f
    nop                                           ; $67e0: $00
    nop                                           ; $67e1: $00
    ld a, h                                       ; $67e2: $7c
    ld a, h                                       ; $67e3: $7c
    ld e, d                                       ; $67e4: $5a
    ld h, [hl]                                    ; $67e5: $66
    cp a                                          ; $67e6: $bf
    jp $83fd                                      ; $67e7: $c3 $fd $83


    rst $28                                       ; $67ea: $ef
    sub c                                         ; $67eb: $91
    rst $10                                       ; $67ec: $d7
    cp c                                          ; $67ed: $b9
    push af                                       ; $67ee: $f5
    ei                                            ; $67ef: $fb
    rra                                           ; $67f0: $1f
    inc de                                        ; $67f1: $13
    ld a, [hl+]                                   ; $67f2: $2a
    ld [hl], $5e                                  ; $67f3: $36 $5e
    ld h, [hl]                                    ; $67f5: $66
    cp a                                          ; $67f6: $bf
    rst $08                                       ; $67f7: $cf
    rst $38                                       ; $67f8: $ff
    add c                                         ; $67f9: $81
    rst $38                                       ; $67fa: $ff
    add c                                         ; $67fb: $81
    rst $38                                       ; $67fc: $ff
    rst $38                                       ; $67fd: $ff
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    ld a, h                                       ; $6802: $7c
    ld a, h                                       ; $6803: $7c
    ld e, d                                       ; $6804: $5a
    ld h, [hl]                                    ; $6805: $66
    cp a                                          ; $6806: $bf
    jp $93ed                                      ; $6807: $c3 $ed $93


    sub a                                         ; $680a: $97
    ld sp, hl                                     ; $680b: $f9
    rst $38                                       ; $680c: $ff
    pop af                                        ; $680d: $f1
    ccf                                           ; $680e: $3f
    inc hl                                        ; $680f: $23
    ccf                                           ; $6810: $3f
    inc hl                                        ; $6811: $23
    rst $38                                       ; $6812: $ff
    pop af                                        ; $6813: $f1
    sub a                                         ; $6814: $97
    ld sp, hl                                     ; $6815: $f9
    db $ed                                        ; $6816: $ed
    sub e                                         ; $6817: $93
    cp a                                          ; $6818: $bf
    jp $e7db                                      ; $6819: $c3 $db $e7


    ld a, [hl]                                    ; $681c: $7e
    ld a, [hl]                                    ; $681d: $7e
    inc a                                         ; $681e: $3c
    inc a                                         ; $681f: $3c
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    ld e, $1e                                     ; $6822: $1e $1e
    ld d, $1a                                     ; $6824: $16 $1a
    ld l, $32                                     ; $6826: $2e $32
    ld a, $22                                     ; $6828: $3e $22
    ld d, [hl]                                    ; $682a: $56
    ld l, d                                       ; $682b: $6a
    ld l, [hl]                                    ; $682c: $6e
    ld e, d                                       ; $682d: $5a
    cp a                                          ; $682e: $bf
    db $db                                        ; $682f: $db
    rst $38                                       ; $6830: $ff
    add c                                         ; $6831: $81
    rst $38                                       ; $6832: $ff
    add c                                         ; $6833: $81
    rst $28                                       ; $6834: $ef
    di                                            ; $6835: $f3
    rst $28                                       ; $6836: $ef
    di                                            ; $6837: $f3
    ld l, $32                                     ; $6838: $2e $32
    ld l, $32                                     ; $683a: $2e $32
    ld a, $3e                                     ; $683c: $3e $3e
    ld a, $3e                                     ; $683e: $3e $3e
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    rst $38                                       ; $6844: $ff
    add c                                         ; $6845: $81
    rst $38                                       ; $6846: $ff
    add c                                         ; $6847: $81
    rst $38                                       ; $6848: $ff
    sbc a                                         ; $6849: $9f
    rst $38                                       ; $684a: $ff
    sbc a                                         ; $684b: $9f
    ld a, [$fd86]                                 ; $684c: $fa $86 $fd
    add e                                         ; $684f: $83
    rst $38                                       ; $6850: $ff
    ld sp, hl                                     ; $6851: $f9
    rst $38                                       ; $6852: $ff
    ld sp, hl                                     ; $6853: $f9
    rrca                                          ; $6854: $0f
    add hl, bc                                    ; $6855: $09
    rst $30                                       ; $6856: $f7
    ld sp, hl                                     ; $6857: $f9
    db $fd                                        ; $6858: $fd
    add e                                         ; $6859: $83
    ei                                            ; $685a: $fb
    add a                                         ; $685b: $87
    cp $fe                                        ; $685c: $fe $fe
    db $fc                                        ; $685e: $fc
    db $fc                                        ; $685f: $fc
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    inc a                                         ; $6862: $3c
    inc a                                         ; $6863: $3c
    ld e, h                                       ; $6864: $5c
    ld h, h                                       ; $6865: $64
    ld [hl], h                                    ; $6866: $74
    ld c, h                                       ; $6867: $4c
    cp h                                          ; $6868: $bc
    call z, $9eee                                 ; $6869: $cc $ee $9e
    ei                                            ; $686c: $fb
    add a                                         ; $686d: $87
    db $fd                                        ; $686e: $fd
    add e                                         ; $686f: $83
    rst $30                                       ; $6870: $f7
    sbc c                                         ; $6871: $99
    rst $38                                       ; $6872: $ff
    sbc c                                         ; $6873: $99
    rst $38                                       ; $6874: $ff
    sbc c                                         ; $6875: $99
    rst $30                                       ; $6876: $f7
    sbc c                                         ; $6877: $99
    cp l                                          ; $6878: $bd
    jp $e7db                                      ; $6879: $c3 $db $e7


    cp $fe                                        ; $687c: $fe $fe
    ld a, h                                       ; $687e: $7c
    ld a, h                                       ; $687f: $7c
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    add c                                         ; $6885: $81
    rst $38                                       ; $6886: $ff
    add c                                         ; $6887: $81
    db $e3                                        ; $6888: $e3
    sbc l                                         ; $6889: $9d
    db $db                                        ; $688a: $db
    cp l                                          ; $688b: $bd
    db $eb                                        ; $688c: $eb
    db $ed                                        ; $688d: $ed
    dec bc                                        ; $688e: $0b
    dec c                                         ; $688f: $0d
    rla                                           ; $6890: $17
    add hl, de                                    ; $6891: $19
    cpl                                           ; $6892: $2f
    inc sp                                        ; $6893: $33
    ld l, $32                                     ; $6894: $2e $32
    ld l, $32                                     ; $6896: $2e $32
    ld l, $32                                     ; $6898: $2e $32
    ld l, $32                                     ; $689a: $2e $32
    ld a, $3e                                     ; $689c: $3e $3e
    ld a, $3e                                     ; $689e: $3e $3e
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    inc a                                         ; $68a2: $3c
    inc a                                         ; $68a3: $3c
    ld e, d                                       ; $68a4: $5a
    ld h, [hl]                                    ; $68a5: $66
    cp l                                          ; $68a6: $bd
    jp $99f7                                      ; $68a7: $c3 $f7 $99


    rst $38                                       ; $68aa: $ff
    sbc c                                         ; $68ab: $99
    rst $38                                       ; $68ac: $ff
    sbc c                                         ; $68ad: $99
    cp l                                          ; $68ae: $bd
    jp $c3bd                                      ; $68af: $c3 $bd $c3


    rst $30                                       ; $68b2: $f7
    sbc c                                         ; $68b3: $99
    rst $38                                       ; $68b4: $ff
    sbc c                                         ; $68b5: $99
    rst $38                                       ; $68b6: $ff
    sbc c                                         ; $68b7: $99
    cp l                                          ; $68b8: $bd
    jp $e7db                                      ; $68b9: $c3 $db $e7


    ld a, [hl]                                    ; $68bc: $7e
    ld a, [hl]                                    ; $68bd: $7e
    inc a                                         ; $68be: $3c
    inc a                                         ; $68bf: $3c
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00
    inc a                                         ; $68c2: $3c
    inc a                                         ; $68c3: $3c
    ld e, d                                       ; $68c4: $5a
    ld h, [hl]                                    ; $68c5: $66
    cp l                                          ; $68c6: $bd
    jp $99f7                                      ; $68c7: $c3 $f7 $99


    rst $38                                       ; $68ca: $ff
    sbc c                                         ; $68cb: $99
    rst $38                                       ; $68cc: $ff
    sbc c                                         ; $68cd: $99
    cp a                                          ; $68ce: $bf
    pop bc                                        ; $68cf: $c1
    ld c, a                                       ; $68d0: $4f
    ld [hl], c                                    ; $68d1: $71
    scf                                           ; $68d2: $37
    add hl, sp                                    ; $68d3: $39
    rla                                           ; $68d4: $17
    add hl, de                                    ; $68d5: $19
    ld [hl], a                                    ; $68d6: $77
    ld a, c                                       ; $68d7: $79
    db $fd                                        ; $68d8: $fd
    add e                                         ; $68d9: $83
    add e                                         ; $68da: $83
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    ld a, [hl]                                    ; $68de: $7e
    ld a, [hl]                                    ; $68df: $7e
    nop                                           ; $68e0: $00
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    nop                                           ; $68e4: $00
    nop                                           ; $68e5: $00
    inc a                                         ; $68e6: $3c
    inc a                                         ; $68e7: $3c
    inc h                                         ; $68e8: $24
    inc a                                         ; $68e9: $3c
    inc a                                         ; $68ea: $3c
    inc h                                         ; $68eb: $24
    inc a                                         ; $68ec: $3c
    inc h                                         ; $68ed: $24
    rst $38                                       ; $68ee: $ff
    rst $20                                       ; $68ef: $e7
    rst $38                                       ; $68f0: $ff
    add c                                         ; $68f1: $81
    rst $38                                       ; $68f2: $ff
    add c                                         ; $68f3: $81
    rst $38                                       ; $68f4: $ff
    rst $20                                       ; $68f5: $e7
    rst $38                                       ; $68f6: $ff
    rst $20                                       ; $68f7: $e7
    inc a                                         ; $68f8: $3c
    inc h                                         ; $68f9: $24
    inc h                                         ; $68fa: $24
    inc a                                         ; $68fb: $3c
    inc a                                         ; $68fc: $3c
    inc a                                         ; $68fd: $3c
    inc a                                         ; $68fe: $3c
    inc a                                         ; $68ff: $3c
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
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    cp a                                          ; $6910: $bf
    pop bc                                        ; $6911: $c1
    cp a                                          ; $6912: $bf
    pop bc                                        ; $6913: $c1
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
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
    ld [hl], b                                    ; $6924: $70
    ld [hl], b                                    ; $6925: $70
    add sp, -$68                                  ; $6926: $e8 $98
    add sp, -$68                                  ; $6928: $e8 $98

jr_03b_692a:
    add sp, -$68                                  ; $692a: $e8 $98
    xor l                                         ; $692c: $ad
    db $dd                                        ; $692d: $dd
    db $eb                                        ; $692e: $eb
    rst $18                                       ; $692f: $df
    ld l, l                                       ; $6930: $6d
    ld e, e                                       ; $6931: $5b
    halt                                          ; $6932: $76
    ld c, c                                       ; $6933: $49
    ld e, a                                       ; $6934: $5f
    ld h, b                                       ; $6935: $60
    ld a, a                                       ; $6936: $7f
    ld h, b                                       ; $6937: $60
    add hl, hl                                    ; $6938: $29
    ld [hl], $32                                  ; $6939: $36 $32
    ccf                                           ; $693b: $3f
    rra                                           ; $693c: $1f
    rra                                           ; $693d: $1f
    dec c                                         ; $693e: $0d
    dec c                                         ; $693f: $0d
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    jr nc, jr_03b_6974                            ; $6942: $30 $30

    ld c, b                                       ; $6944: $48
    ld a, b                                       ; $6945: $78
    xor b                                         ; $6946: $a8
    ret c                                         ; $6947: $d8

    db $eb                                        ; $6948: $eb
    sbc e                                         ; $6949: $9b
    db $ec                                        ; $694a: $ec
    sbc a                                         ; $694b: $9f
    ld l, e                                       ; $694c: $6b
    sbc h                                         ; $694d: $9c
    rst $10                                       ; $694e: $d7
    jr c, jr_03b_692a                             ; $694f: $38 $d9

    ld [hl], $db                                  ; $6951: $36 $db
    ld [hl], $bf                                  ; $6953: $36 $bf
    ld [hl], b                                    ; $6955: $70
    or a                                          ; $6956: $b7
    ld a, b                                       ; $6957: $78
    cp c                                          ; $6958: $b9
    ld a, a                                       ; $6959: $7f
    ld a, a                                       ; $695a: $7f
    rst $38                                       ; $695b: $ff
    rst $08                                       ; $695c: $cf
    rst $08                                       ; $695d: $cf
    add c                                         ; $695e: $81
    add c                                         ; $695f: $81
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    ld b, $06                                     ; $6968: $06 $06
    adc c                                         ; $696a: $89
    adc a                                         ; $696b: $8f
    ld d, a                                       ; $696c: $57
    reti                                          ; $696d: $d9


    ld l, l                                       ; $696e: $6d
    di                                            ; $696f: $f3
    ld a, e                                       ; $6970: $7b
    rst $20                                       ; $6971: $e7
    ld a, l                                       ; $6972: $7d
    db $e3                                        ; $6973: $e3

jr_03b_6974:
    ld [hl], l                                    ; $6974: $75
    ei                                            ; $6975: $fb
    xor l                                         ; $6976: $ad
    ld [hl], e                                    ; $6977: $73
    cp e                                          ; $6978: $bb
    ld h, a                                       ; $6979: $67
    and [hl]                                      ; $697a: $a6
    ld a, [hl]                                    ; $697b: $7e
    db $fc                                        ; $697c: $fc
    db $fc                                        ; $697d: $fc
    sbc b                                         ; $697e: $98
    sbc b                                         ; $697f: $98
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    ld h, b                                       ; $6986: $60
    ld h, b                                       ; $6987: $60
    ret nc                                        ; $6988: $d0

    or b                                          ; $6989: $b0
    db $d3                                        ; $698a: $d3
    or e                                          ; $698b: $b3
    db $ec                                        ; $698c: $ec
    rra                                           ; $698d: $1f
    db $db                                        ; $698e: $db
    cp h                                          ; $698f: $bc
    rst $10                                       ; $6990: $d7
    cp d                                          ; $6991: $ba
    sbc $b1                                       ; $6992: $de $b1
    rst $18                                       ; $6994: $df
    or e                                          ; $6995: $b3
    db $dd                                        ; $6996: $dd
    or e                                          ; $6997: $b3
    rst $10                                       ; $6998: $d7
    cp b                                          ; $6999: $b8
    sbc h                                         ; $699a: $9c
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    ld [hl], e                                    ; $699e: $73
    ld [hl], e                                    ; $699f: $73
    nop                                           ; $69a0: $00
    nop                                           ; $69a1: $00
    ld bc, $0301                                  ; $69a2: $01 $01 $03
    ld [bc], a                                    ; $69a5: $02
    dec b                                         ; $69a6: $05
    ld b, $07                                     ; $69a7: $06 $07
    inc b                                         ; $69a9: $04
    dec bc                                        ; $69aa: $0b
    inc c                                         ; $69ab: $0c
    adc [hl]                                      ; $69ac: $8e
    adc c                                         ; $69ad: $89

jr_03b_69ae:
    ld d, l                                       ; $69ae: $55
    db $db                                        ; $69af: $db
    ld e, [hl]                                    ; $69b0: $5e
    db $d3                                        ; $69b1: $d3
    rst $28                                       ; $69b2: $ef
    ldh a, [$fc]                                  ; $69b3: $f0 $fc
    db $e3                                        ; $69b5: $e3
    db $db                                        ; $69b6: $db
    rst $20                                       ; $69b7: $e7
    ld [hl], a                                    ; $69b8: $77
    rst $08                                       ; $69b9: $cf
    ld b, l                                       ; $69ba: $45
    db $fd                                        ; $69bb: $fd
    db $fd                                        ; $69bc: $fd
    db $fd                                        ; $69bd: $fd
    ld hl, sp-$08                                 ; $69be: $f8 $f8
    nop                                           ; $69c0: $00
    nop                                           ; $69c1: $00
    add b                                         ; $69c2: $80
    add b                                         ; $69c3: $80
    ld b, b                                       ; $69c4: $40
    ret nz                                        ; $69c5: $c0

    ld b, b                                       ; $69c6: $40
    ret nz                                        ; $69c7: $c0

    and b                                         ; $69c8: $a0
    ld h, b                                       ; $69c9: $60
    xor l                                         ; $69ca: $ad
    ld l, l                                       ; $69cb: $6d
    jp c, $df37                                   ; $69cc: $da $37 $df

    jr nc, jr_03b_69ae                            ; $69cf: $30 $dd

    inc sp                                        ; $69d1: $33
    db $db                                        ; $69d2: $db
    scf                                           ; $69d3: $37
    db $db                                        ; $69d4: $db
    scf                                           ; $69d5: $37
    ld e, d                                       ; $69d6: $5a
    or [hl]                                       ; $69d7: $b6
    ld e, d                                       ; $69d8: $5a
    or [hl]                                       ; $69d9: $b6
    ld [hl-], a                                   ; $69da: $32
    cp $fe                                        ; $69db: $fe $fe
    cp $cc                                        ; $69dd: $fe $cc
    call z, $0000                                 ; $69df: $cc $00 $00
    nop                                           ; $69e2: $00
    nop                                           ; $69e3: $00
    nop                                           ; $69e4: $00
    nop                                           ; $69e5: $00
    nop                                           ; $69e6: $00
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    adc h                                         ; $69ea: $8c
    adc h                                         ; $69eb: $8c
    ld d, d                                       ; $69ec: $52
    sbc $ed                                       ; $69ed: $de $ed
    ld [hl], e                                    ; $69ef: $73
    db $dd                                        ; $69f0: $dd
    db $eb                                        ; $69f1: $eb
    cp e                                          ; $69f2: $bb
    rst $00                                       ; $69f3: $c7
    cp a                                          ; $69f4: $bf
    rst $08                                       ; $69f5: $cf
    rst $30                                       ; $69f6: $f7
    rst $08                                       ; $69f7: $cf
    ld e, l                                       ; $69f8: $5d
    ld h, e                                       ; $69f9: $63
    ld [hl], c                                    ; $69fa: $71
    ld a, a                                       ; $69fb: $7f
    ccf                                           ; $69fc: $3f
    ccf                                           ; $69fd: $3f
    ld c, $0e                                     ; $69fe: $0e $0e
    nop                                           ; $6a00: $00
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    nop                                           ; $6a03: $00
    nop                                           ; $6a04: $00
    nop                                           ; $6a05: $00
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    jr jr_03b_6a22                                ; $6a08: $18 $18

    ld h, h                                       ; $6a0a: $64
    ld a, h                                       ; $6a0b: $7c
    cp d                                          ; $6a0c: $ba
    add $7a                                       ; $6a0d: $c6 $7a
    add [hl]                                      ; $6a0f: $86
    jp z, $da36                                   ; $6a10: $ca $36 $da

    ld [hl], $fa                                  ; $6a13: $36 $fa
    ld b, $7a                                     ; $6a15: $06 $7a
    add [hl]                                      ; $6a17: $86
    xor l                                         ; $6a18: $ad
    db $db                                        ; $6a19: $db
    ld sp, hl                                     ; $6a1a: $f9
    rst $38                                       ; $6a1b: $ff
    ld a, a                                       ; $6a1c: $7f
    ld a, a                                       ; $6a1d: $7f
    ld b, $06                                     ; $6a1e: $06 $06
    nop                                           ; $6a20: $00
    nop                                           ; $6a21: $00

jr_03b_6a22:
    inc bc                                        ; $6a22: $03
    inc bc                                        ; $6a23: $03
    dec c                                         ; $6a24: $0d
    ld c, $16                                     ; $6a25: $0e $16
    add hl, de                                    ; $6a27: $19
    dec l                                         ; $6a28: $2d
    inc sp                                        ; $6a29: $33
    dec sp                                        ; $6a2a: $3b
    daa                                           ; $6a2b: $27
    ld d, [hl]                                    ; $6a2c: $56
    ld l, [hl]                                    ; $6a2d: $6e
    ld a, l                                       ; $6a2e: $7d
    ld c, l                                       ; $6a2f: $4d
    cp d                                          ; $6a30: $ba
    res 6, a                                      ; $6a31: $cb $b7
    adc $bf                                       ; $6a33: $ce $bf
    ret nz                                        ; $6a35: $c0

    rst $08                                       ; $6a36: $cf
    ldh a, [$71]                                  ; $6a37: $f0 $71
    ld a, [hl]                                    ; $6a39: $7e
    ld a, $3f                                     ; $6a3a: $3e $3f
    rrca                                          ; $6a3c: $0f
    rrca                                          ; $6a3d: $0f
    ld bc, $0001                                  ; $6a3e: $01 $01 $00
    nop                                           ; $6a41: $00
    add b                                         ; $6a42: $80
    add b                                         ; $6a43: $80
    ld b, b                                       ; $6a44: $40
    ret nz                                        ; $6a45: $c0

    ld b, b                                       ; $6a46: $40
    ret nz                                        ; $6a47: $c0

    ret nz                                        ; $6a48: $c0

    ret nz                                        ; $6a49: $c0

    ld [hl], $36                                  ; $6a4a: $36 $36
    ld l, c                                       ; $6a4c: $69
    ld e, a                                       ; $6a4d: $5f
    rst $38                                       ; $6a4e: $ff
    pop bc                                        ; $6a4f: $c1
    halt                                          ; $6a50: $76
    rst $08                                       ; $6a51: $cf
    ld l, l                                       ; $6a52: $6d
    sbc $6d                                       ; $6a53: $de $6d
    sbc $6f                                       ; $6a55: $de $6f
    sbc $6a                                       ; $6a57: $de $6a
    db $db                                        ; $6a59: $db
    ld c, e                                       ; $6a5a: $4b
    ei                                            ; $6a5b: $fb
    ld sp, hl                                     ; $6a5c: $f9
    ld sp, hl                                     ; $6a5d: $f9
    or b                                          ; $6a5e: $b0
    or b                                          ; $6a5f: $b0
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
    ld h, c                                       ; $6a6a: $61
    ld h, c                                       ; $6a6b: $61

jr_03b_6a6c:
    sub d                                         ; $6a6c: $92
    di                                            ; $6a6d: $f3
    ld l, l                                       ; $6a6e: $6d
    sbc [hl]                                      ; $6a6f: $9e
    db $eb                                        ; $6a70: $eb
    ld e, l                                       ; $6a71: $5d
    rst $10                                       ; $6a72: $d7
    jr c, jr_03b_6a6c                             ; $6a73: $38 $f7

    ld a, c                                       ; $6a75: $79
    cp [hl]                                       ; $6a76: $be
    ld a, c                                       ; $6a77: $79
    db $eb                                        ; $6a78: $eb
    inc e                                         ; $6a79: $1c
    adc [hl]                                      ; $6a7a: $8e
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    ld [hl], c                                    ; $6a7e: $71
    ld [hl], c                                    ; $6a7f: $71
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
    sbc b                                         ; $6a8a: $98
    sbc b                                         ; $6a8b: $98
    ld [hl], a                                    ; $6a8c: $77
    rst $28                                       ; $6a8d: $ef
    cp [hl]                                       ; $6a8e: $be
    ld h, c                                       ; $6a8f: $61
    cp a                                          ; $6a90: $bf
    ld h, b                                       ; $6a91: $60
    ld [hl], e                                    ; $6a92: $73
    db $ec                                        ; $6a93: $ec
    push af                                       ; $6a94: $f5
    xor $f7                                       ; $6a95: $ee $f7
    xor $b7                                       ; $6a97: $ee $b7
    ld l, [hl]                                    ; $6a99: $6e
    ld h, $ff                                     ; $6a9a: $26 $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    reti                                          ; $6a9e: $d9


    reti                                          ; $6a9f: $d9


    nop                                           ; $6aa0: $00
    nop                                           ; $6aa1: $00
    rrca                                          ; $6aa2: $0f
    rrca                                          ; $6aa3: $0f
    rla                                           ; $6aa4: $17
    jr @+$1e                                      ; $6aa5: $18 $1c

    inc de                                        ; $6aa7: $13
    dec e                                         ; $6aa8: $1d
    inc de                                        ; $6aa9: $13
    dec e                                         ; $6aaa: $1d
    inc de                                        ; $6aab: $13
    ld e, $11                                     ; $6aac: $1e $11
    sbc a                                         ; $6aae: $9f
    sub b                                         ; $6aaf: $90
    ld e, h                                       ; $6ab0: $5c
    db $d3                                        ; $6ab1: $d3
    ld e, l                                       ; $6ab2: $5d
    db $d3                                        ; $6ab3: $d3
    ld l, l                                       ; $6ab4: $6d
    di                                            ; $6ab5: $f3
    ld a, a                                       ; $6ab6: $7f
    ldh [$73], a                                  ; $6ab7: $e0 $73
    db $fc                                        ; $6ab9: $fc
    ld e, h                                       ; $6aba: $5c
    rst $18                                       ; $6abb: $df
    rst $08                                       ; $6abc: $cf
    rst $08                                       ; $6abd: $cf
    add e                                         ; $6abe: $83
    add e                                         ; $6abf: $83
    nop                                           ; $6ac0: $00
    nop                                           ; $6ac1: $00
    ldh [$e0], a                                  ; $6ac2: $e0 $e0
    pop de                                        ; $6ac4: $d1
    ld sp, $b352                                  ; $6ac5: $31 $52 $b3
    sub e                                         ; $6ac8: $93
    ld a, [c]                                     ; $6ac9: $f2
    di                                            ; $6aca: $f3
    ld a, [c]                                     ; $6acb: $f2
    db $ed                                        ; $6acc: $ed
    xor $57                                       ; $6acd: $ee $57
    ret c                                         ; $6acf: $d8

    ld l, a                                       ; $6ad0: $6f
    ldh a, [$d9]                                  ; $6ad1: $f0 $d9
    and $db                                       ; $6ad3: $e6 $db
    and $af                                       ; $6ad5: $e6 $af
    ld [hl], b                                    ; $6ad7: $70
    or a                                          ; $6ad8: $b7
    ld a, b                                       ; $6ad9: $78
    inc a                                         ; $6ada: $3c
    rst $38                                       ; $6adb: $ff
    rst $28                                       ; $6adc: $ef
    rst $28                                       ; $6add: $ef
    jp Jump_000_00c3                              ; $6ade: $c3 $c3 $00


    nop                                           ; $6ae1: $00
    add e                                         ; $6ae2: $83
    add e                                         ; $6ae3: $83
    ld c, h                                       ; $6ae4: $4c
    rst $08                                       ; $6ae5: $cf
    ld d, [hl]                                    ; $6ae6: $56
    reti                                          ; $6ae7: $d9


    ld l, [hl]                                    ; $6ae8: $6e
    pop af                                        ; $6ae9: $f1
    ld e, d                                       ; $6aea: $5a
    push hl                                       ; $6aeb: $e5
    ld e, [hl]                                    ; $6aec: $5e
    push hl                                       ; $6aed: $e5
    ld l, [hl]                                    ; $6aee: $6e
    pop af                                        ; $6aef: $f1
    halt                                          ; $6af0: $76
    ld sp, hl                                     ; $6af1: $f9
    ld e, [hl]                                    ; $6af2: $5e
    reti                                          ; $6af3: $d9


    ld e, [hl]                                    ; $6af4: $5e
    reti                                          ; $6af5: $d9


    ld a, [hl]                                    ; $6af6: $7e
    pop hl                                        ; $6af7: $e1
    ld l, l                                       ; $6af8: $6d
    di                                            ; $6af9: $f3
    ld [hl], e                                    ; $6afa: $73
    rst $38                                       ; $6afb: $ff
    sbc $de                                       ; $6afc: $de $de
    adc h                                         ; $6afe: $8c
    adc h                                         ; $6aff: $8c
    nop                                           ; $6b00: $00
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    nop                                           ; $6b03: $00
    add b                                         ; $6b04: $80
    add b                                         ; $6b05: $80
    add b                                         ; $6b06: $80
    add b                                         ; $6b07: $80
    add b                                         ; $6b08: $80
    add b                                         ; $6b09: $80
    adc h                                         ; $6b0a: $8c
    adc h                                         ; $6b0b: $8c
    sub d                                         ; $6b0c: $92
    sbc [hl]                                      ; $6b0d: $9e
    xor l                                         ; $6b0e: $ad
    or e                                          ; $6b0f: $b3
    db $dd                                        ; $6b10: $dd
    db $eb                                        ; $6b11: $eb
    cp e                                          ; $6b12: $bb
    rst $00                                       ; $6b13: $c7
    cp [hl]                                       ; $6b14: $be
    adc $f6                                       ; $6b15: $ce $f6
    adc $dd                                       ; $6b17: $ce $dd
    db $e3                                        ; $6b19: $e3
    ld [hl], c                                    ; $6b1a: $71
    ld a, a                                       ; $6b1b: $7f
    ccf                                           ; $6b1c: $3f
    ccf                                           ; $6b1d: $3f
    ld c, $0e                                     ; $6b1e: $0e $0e
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
    ld a, b                                       ; $6b42: $78
    ld a, b                                       ; $6b43: $78
    or [hl]                                       ; $6b44: $b6
    adc $fd                                       ; $6b45: $ce $fd
    add e                                         ; $6b47: $83
    cp [hl]                                       ; $6b48: $be
    pop bc                                        ; $6b49: $c1
    rst $38                                       ; $6b4a: $ff
    ret nz                                        ; $6b4b: $c0

    ld [hl], e                                    ; $6b4c: $73
    ld c, h                                       ; $6b4d: $4c
    ld [hl], l                                    ; $6b4e: $75
    ld c, [hl]                                    ; $6b4f: $4e
    ld [hl], a                                    ; $6b50: $77
    ld c, [hl]                                    ; $6b51: $4e
    ld [hl], a                                    ; $6b52: $77
    ld c, h                                       ; $6b53: $4c
    ld a, a                                       ; $6b54: $7f
    ld b, b                                       ; $6b55: $40
    ld a, a                                       ; $6b56: $7f
    ld b, b                                       ; $6b57: $40
    ld a, h                                       ; $6b58: $7c
    ld b, e                                       ; $6b59: $43
    ld b, e                                       ; $6b5a: $43
    ld a, a                                       ; $6b5b: $7f
    ld a, a                                       ; $6b5c: $7f
    ld a, a                                       ; $6b5d: $7f
    inc a                                         ; $6b5e: $3c
    inc a                                         ; $6b5f: $3c
    nop                                           ; $6b60: $00
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    nop                                           ; $6b63: $00
    nop                                           ; $6b64: $00
    nop                                           ; $6b65: $00
    nop                                           ; $6b66: $00
    nop                                           ; $6b67: $00
    add b                                         ; $6b68: $80
    add b                                         ; $6b69: $80
    ld b, c                                       ; $6b6a: $41
    pop bc                                        ; $6b6b: $c1
    and [hl]                                      ; $6b6c: $a6
    ld h, a                                       ; $6b6d: $67
    db $db                                        ; $6b6e: $db
    inc a                                         ; $6b6f: $3c
    call c, $d53b                                 ; $6b70: $dc $3b $d5
    dec sp                                        ; $6b73: $3b
    cp a                                          ; $6b74: $bf
    ld [hl], b                                    ; $6b75: $70
    ld [hl], a                                    ; $6b76: $77
    ld hl, sp-$25                                 ; $6b77: $f8 $db
    call c, $8f8c                                 ; $6b79: $dc $8c $8f
    rlca                                          ; $6b7c: $07
    rlca                                          ; $6b7d: $07
    inc bc                                        ; $6b7e: $03
    inc bc                                        ; $6b7f: $03
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
    adc l                                         ; $6b8a: $8d
    adc l                                         ; $6b8b: $8d
    ld e, e                                       ; $6b8c: $5b
    sub $be                                       ; $6b8d: $d6 $be
    ld [hl], c                                    ; $6b8f: $71
    db $dd                                        ; $6b90: $dd
    inc sp                                        ; $6b91: $33
    db $db                                        ; $6b92: $db
    scf                                           ; $6b93: $37
    jp c, $da36                                   ; $6b94: $da $36 $da

    ld [hl], $ba                                  ; $6b97: $36 $ba
    halt                                          ; $6b99: $76
    ld [hl], d                                    ; $6b9a: $72
    cp $de                                        ; $6b9b: $fe $de
    sbc $8c                                       ; $6b9d: $de $8c
    adc h                                         ; $6b9f: $8c
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
    add b                                         ; $6baa: $80
    add b                                         ; $6bab: $80
    ld a, a                                       ; $6bac: $7f
    rst $38                                       ; $6bad: $ff
    ld a, l                                       ; $6bae: $7d
    jp $c0ff                                      ; $6baf: $c3 $ff $c0


    rst $38                                       ; $6bb2: $ff
    ret nz                                        ; $6bb3: $c0

    ld l, l                                       ; $6bb4: $6d
    ld e, e                                       ; $6bb5: $5b
    ld l, l                                       ; $6bb6: $6d
    ld e, e                                       ; $6bb7: $5b
    ld l, l                                       ; $6bb8: $6d
    ld e, e                                       ; $6bb9: $5b
    ld c, c                                       ; $6bba: $49
    ld a, a                                       ; $6bbb: $7f
    ld a, a                                       ; $6bbc: $7f
    ld a, a                                       ; $6bbd: $7f
    ld [hl], $36                                  ; $6bbe: $36 $36
    nop                                           ; $6bc0: $00
    nop                                           ; $6bc1: $00
    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    nop                                           ; $6bc4: $00
    nop                                           ; $6bc5: $00
    nop                                           ; $6bc6: $00
    nop                                           ; $6bc7: $00
    inc c                                         ; $6bc8: $0c
    inc c                                         ; $6bc9: $0c
    ld a, [de]                                    ; $6bca: $1a
    ld d, $92                                     ; $6bcb: $16 $92
    sbc [hl]                                      ; $6bcd: $9e
    ld e, [hl]                                    ; $6bce: $5e
    sbc $ab                                       ; $6bcf: $de $ab
    ld l, a                                       ; $6bd1: $6f
    cp d                                          ; $6bd2: $ba
    ld [hl], a                                    ; $6bd3: $77
    cp d                                          ; $6bd4: $ba
    ld [hl], a                                    ; $6bd5: $77
    cp e                                          ; $6bd6: $bb
    ld [hl], a                                    ; $6bd7: $77
    cp e                                          ; $6bd8: $bb
    ld [hl], a                                    ; $6bd9: $77
    inc sp                                        ; $6bda: $33
    rst $38                                       ; $6bdb: $ff
    cp $fe                                        ; $6bdc: $fe $fe
    call z, Call_000_00cc                         ; $6bde: $cc $cc $00
    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    nop                                           ; $6be4: $00
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    jr jr_03b_6c04                                ; $6bea: $18 $18

    ld h, h                                       ; $6bec: $64
    ld a, h                                       ; $6bed: $7c
    cp d                                          ; $6bee: $ba
    add $7a                                       ; $6bef: $c6 $7a
    or [hl]                                       ; $6bf1: $b6
    sub $2e                                       ; $6bf2: $d6 $2e
    db $fc                                        ; $6bf4: $fc
    inc e                                         ; $6bf5: $1c
    db $ec                                        ; $6bf6: $ec
    inc e                                         ; $6bf7: $1c
    ld a, d                                       ; $6bf8: $7a
    add [hl]                                      ; $6bf9: $86
    jp nz, $fefe                                  ; $6bfa: $c2 $fe $fe

    cp $3c                                        ; $6bfd: $fe $3c
    inc a                                         ; $6bff: $3c
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    nop                                           ; $6c03: $00

jr_03b_6c04:
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
    ld c, $0e                                     ; $6c24: $0e $0e
    rla                                           ; $6c26: $17
    dec de                                        ; $6c27: $1b
    ld l, a                                       ; $6c28: $6f
    ld [hl], b                                    ; $6c29: $70
    cp h                                          ; $6c2a: $bc
    jp $8ff3                                      ; $6c2b: $c3 $f3 $8f


    xor a                                         ; $6c2e: $af
    rst $18                                       ; $6c2f: $df
    db $dd                                        ; $6c30: $dd
    db $fd                                        ; $6c31: $fd
    halt                                          ; $6c32: $76
    ld [hl], a                                    ; $6c33: $77
    dec sp                                        ; $6c34: $3b
    inc a                                         ; $6c35: $3c
    cpl                                           ; $6c36: $2f
    jr nc, @+$38                                  ; $6c37: $30 $36

    add hl, sp                                    ; $6c39: $39
    add hl, de                                    ; $6c3a: $19
    rra                                           ; $6c3b: $1f
    rrca                                          ; $6c3c: $0f
    rrca                                          ; $6c3d: $0f
    ld b, $06                                     ; $6c3e: $06 $06
    ld a, [hl]                                    ; $6c40: $7e
    ld a, [hl]                                    ; $6c41: $7e
    jp c, $dbb6                                   ; $6c42: $da $b6 $db

    or a                                          ; $6c45: $b7
    sub d                                         ; $6c46: $92
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    ld a, [hl]                                    ; $6c49: $7e
    rst $28                                       ; $6c4a: $ef
    inc e                                         ; $6c4b: $1c
    ld a, a                                       ; $6c4c: $7f
    adc h                                         ; $6c4d: $8c
    ld l, [hl]                                    ; $6c4e: $6e
    sbc l                                         ; $6c4f: $9d
    db $fc                                        ; $6c50: $fc
    rra                                           ; $6c51: $1f
    rst $10                                       ; $6c52: $d7
    scf                                           ; $6c53: $37
    or e                                          ; $6c54: $b3
    ld [hl], e                                    ; $6c55: $73
    ld h, b                                       ; $6c56: $60
    ldh [$c1], a                                  ; $6c57: $e0 $c1
    pop bc                                        ; $6c59: $c1
    add c                                         ; $6c5a: $81
    add c                                         ; $6c5b: $81
    ld bc, $0001                                  ; $6c5c: $01 $01 $00
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    nop                                           ; $6c61: $00
    nop                                           ; $6c62: $00
    nop                                           ; $6c63: $00
    add a                                         ; $6c64: $87
    add a                                         ; $6c65: $87
    ret                                           ; $6c66: $c9


    rst $08                                       ; $6c67: $cf
    ld c, [hl]                                    ; $6c68: $4e
    ret                                           ; $6c69: $c9


    ld c, [hl]                                    ; $6c6a: $4e
    ret                                           ; $6c6b: $c9


    ld c, [hl]                                    ; $6c6c: $4e
    ret                                           ; $6c6d: $c9


    adc $c9                                       ; $6c6e: $ce $c9
    sub [hl]                                      ; $6c70: $96
    sbc c                                         ; $6c71: $99
    sbc l                                         ; $6c72: $9d
    sub e                                         ; $6c73: $93
    dec l                                         ; $6c74: $2d
    inc sp                                        ; $6c75: $33
    db $db                                        ; $6c76: $db
    rst $20                                       ; $6c77: $e7
    and $1e                                       ; $6c78: $e6 $1e
    inc e                                         ; $6c7a: $1c
    db $fc                                        ; $6c7b: $fc
    ld hl, sp-$08                                 ; $6c7c: $f8 $f8
    ldh [$e0], a                                  ; $6c7e: $e0 $e0
    nop                                           ; $6c80: $00
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    nop                                           ; $6c83: $00
    inc bc                                        ; $6c84: $03
    inc bc                                        ; $6c85: $03
    add a                                         ; $6c86: $87
    add h                                         ; $6c87: $84
    add l                                         ; $6c88: $85
    add [hl]                                      ; $6c89: $86
    add [hl]                                      ; $6c8a: $86
    add a                                         ; $6c8b: $87
    add e                                         ; $6c8c: $83
    add e                                         ; $6c8d: $83
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    cp [hl]                                       ; $6c90: $be
    jp nz, $8ef2                                  ; $6c91: $c2 $f2 $8e

    adc a                                         ; $6c94: $8f
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    db $fc                                        ; $6c97: $fc
    ld [hl], l                                    ; $6c98: $75
    halt                                          ; $6c99: $76
    ld b, $07                                     ; $6c9a: $06 $07
    inc bc                                        ; $6c9c: $03
    inc bc                                        ; $6c9d: $03
    ld bc, $0001                                  ; $6c9e: $01 $01 $00
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    nop                                           ; $6ca3: $00
    add b                                         ; $6ca4: $80
    add b                                         ; $6ca5: $80
    ld h, c                                       ; $6ca6: $61
    pop hl                                        ; $6ca7: $e1
    jp nc, $d333                                  ; $6ca8: $d2 $33 $d3

    ld [hl-], a                                   ; $6cab: $32
    sub l                                         ; $6cac: $95
    or $fa                                        ; $6cad: $f6 $fa
    db $fd                                        ; $6caf: $fd
    halt                                          ; $6cb0: $76
    ld a, c                                       ; $6cb1: $79
    db $dd                                        ; $6cb2: $dd
    db $e3                                        ; $6cb3: $e3
    ld a, l                                       ; $6cb4: $7d
    add e                                         ; $6cb5: $83
    di                                            ; $6cb6: $f3
    rrca                                          ; $6cb7: $0f
    adc $3e                                       ; $6cb8: $ce $3e
    inc a                                         ; $6cba: $3c
    db $fc                                        ; $6cbb: $fc
    ldh a, [$f0]                                  ; $6cbc: $f0 $f0
    ret nz                                        ; $6cbe: $c0

    ret nz                                        ; $6cbf: $c0

    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    inc bc                                        ; $6cc2: $03
    inc bc                                        ; $6cc3: $03
    ld [bc], a                                    ; $6cc4: $02
    inc bc                                        ; $6cc5: $03
    db $fd                                        ; $6cc6: $fd
    cp $ff                                        ; $6cc7: $fe $ff
    add b                                         ; $6cc9: $80
    cp b                                          ; $6cca: $b8
    rst $00                                       ; $6ccb: $c7
    add $ff                                       ; $6ccc: $c6 $ff
    db $fd                                        ; $6cce: $fd
    cp $b7                                        ; $6ccf: $fe $b7
    cp b                                          ; $6cd1: $b8
    call $fbf2                                    ; $6cd2: $cd $f2 $fb
    add [hl]                                      ; $6cd5: $86
    or l                                          ; $6cd6: $b5
    adc $cd                                       ; $6cd7: $ce $cd
    cp $7a                                        ; $6cd9: $fe $7a
    ld a, e                                       ; $6cdb: $7b
    inc sp                                        ; $6cdc: $33
    inc sp                                        ; $6cdd: $33
    ld bc, $0001                                  ; $6cde: $01 $01 $00
    nop                                           ; $6ce1: $00
    ldh [$e0], a                                  ; $6ce2: $e0 $e0
    xor a                                         ; $6ce4: $af
    ld l, a                                       ; $6ce5: $6f
    cp [hl]                                       ; $6ce6: $be
    ld a, c                                       ; $6ce7: $79
    db $eb                                        ; $6ce8: $eb
    inc e                                         ; $6ce9: $1c
    call $bf3e                                    ; $6cea: $cd $3e $bf
    ld a, a                                       ; $6ced: $7f
    or e                                          ; $6cee: $b3
    ld [hl], e                                    ; $6cef: $73
    and b                                         ; $6cf0: $a0
    ld h, b                                       ; $6cf1: $60
    and c                                         ; $6cf2: $a1
    ld h, c                                       ; $6cf3: $61
    xor [hl]                                      ; $6cf4: $ae
    ld l, a                                       ; $6cf5: $6f
    xor a                                         ; $6cf6: $af
    ld l, b                                       ; $6cf7: $68
    xor e                                         ; $6cf8: $ab
    ld l, h                                       ; $6cf9: $6c
    xor h                                         ; $6cfa: $ac
    ld l, a                                       ; $6cfb: $6f
    rst $20                                       ; $6cfc: $e7
    rst $20                                       ; $6cfd: $e7
    db $e3                                        ; $6cfe: $e3
    db $e3                                        ; $6cff: $e3
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    nop                                           ; $6d04: $00
    nop                                           ; $6d05: $00
    jp $a5c3                                      ; $6d06: $c3 $c3 $a5


    ld h, a                                       ; $6d09: $67
    and a                                         ; $6d0a: $a7
    ld h, l                                       ; $6d0b: $65
    dec hl                                        ; $6d0c: $2b
    db $ed                                        ; $6d0d: $ed
    push af                                       ; $6d0e: $f5
    ei                                            ; $6d0f: $fb
    db $ed                                        ; $6d10: $ed
    di                                            ; $6d11: $f3
    cp e                                          ; $6d12: $bb
    rst $00                                       ; $6d13: $c7
    ld a, [$e606]                                 ; $6d14: $fa $06 $e6
    ld e, $9c                                     ; $6d17: $1e $9c
    ld a, h                                       ; $6d19: $7c
    ld a, b                                       ; $6d1a: $78
    ld hl, sp-$20                                 ; $6d1b: $f8 $e0
    ldh [$80], a                                  ; $6d1d: $e0 $80
    add b                                         ; $6d1f: $80
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    rra                                           ; $6d22: $1f
    rra                                           ; $6d23: $1f
    cpl                                           ; $6d24: $2f
    jr nc, jr_03b_6d66                            ; $6d25: $30 $3f

    jr nz, jr_03b_6d55                            ; $6d27: $20 $2c

    inc sp                                        ; $6d29: $33
    dec a                                         ; $6d2a: $3d
    inc sp                                        ; $6d2b: $33
    dec e                                         ; $6d2c: $1d
    inc de                                        ; $6d2d: $13
    rra                                           ; $6d2e: $1f
    db $10                                        ; $6d2f: $10
    rra                                           ; $6d30: $1f
    db $10                                        ; $6d31: $10
    inc e                                         ; $6d32: $1c
    inc de                                        ; $6d33: $13
    dec e                                         ; $6d34: $1d
    inc de                                        ; $6d35: $13
    dec e                                         ; $6d36: $1d
    inc de                                        ; $6d37: $13
    dec e                                         ; $6d38: $1d
    inc de                                        ; $6d39: $13
    inc de                                        ; $6d3a: $13
    rra                                           ; $6d3b: $1f
    ld e, $1e                                     ; $6d3c: $1e $1e
    inc c                                         ; $6d3e: $0c
    inc c                                         ; $6d3f: $0c
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    call z, $bacc                                 ; $6d42: $cc $cc $ba
    halt                                          ; $6d45: $76
    jp c, Jump_03b_5a36                           ; $6d46: $da $36 $5a

    or [hl]                                       ; $6d49: $b6
    sbc d                                         ; $6d4a: $9a
    or $fb                                        ; $6d4b: $f6 $fb
    rst $30                                       ; $6d4d: $f7
    jp c, $db37                                   ; $6d4e: $da $37 $db

    ld [hl], $3b                                  ; $6d51: $36 $3b
    or $fb                                        ; $6d53: $f6 $fb

jr_03b_6d55:
    or $da                                        ; $6d55: $f6 $da
    rst $10                                       ; $6d57: $d7
    dec de                                        ; $6d58: $1b
    rla                                           ; $6d59: $17
    inc de                                        ; $6d5a: $13
    rra                                           ; $6d5b: $1f
    ld e, $1e                                     ; $6d5c: $1e $1e
    inc c                                         ; $6d5e: $0c
    inc c                                         ; $6d5f: $0c
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00

jr_03b_6d66:
    ld bc, $3201                                  ; $6d66: $01 $01 $32
    inc sp                                        ; $6d69: $33
    call Call_03b_75fe                            ; $6d6a: $cd $fe $75
    adc [hl]                                      ; $6d6d: $8e
    or $0f                                        ; $6d6e: $f6 $0f
    sub a                                         ; $6d70: $97
    ld l, a                                       ; $6d71: $6f
    or l                                          ; $6d72: $b5
    ld l, l                                       ; $6d73: $6d
    db $f4                                        ; $6d74: $f4
    inc c                                         ; $6d75: $0c
    ei                                            ; $6d76: $fb
    rlca                                          ; $6d77: $07
    cp e                                          ; $6d78: $bb
    sub $fa                                       ; $6d79: $d6 $fa
    rst $30                                       ; $6d7b: $f7
    ld a, a                                       ; $6d7c: $7f
    ld a, a                                       ; $6d7d: $7f
    dec c                                         ; $6d7e: $0d
    dec c                                         ; $6d7f: $0d
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    jr nc, jr_03b_6db4                            ; $6d82: $30 $30

    ret z                                         ; $6d84: $c8

    ld hl, sp+$68                                 ; $6d85: $f8 $68
    sbc b                                         ; $6d87: $98
    jp hl                                         ; $6d88: $e9


    add hl, de                                    ; $6d89: $19
    xor d                                         ; $6d8a: $aa
    ld e, e                                       ; $6d8b: $5b
    ld [$eb5b], a                                 ; $6d8c: $ea $5b $eb
    dec de                                        ; $6d8f: $1b
    ld l, c                                       ; $6d90: $69
    sbc c                                         ; $6d91: $99
    add sp, -$68                                  ; $6d92: $e8 $98
    ret c                                         ; $6d94: $d8

    cp b                                          ; $6d95: $b8
    ld d, e                                       ; $6d96: $53
    or e                                          ; $6d97: $b3
    or a                                          ; $6d98: $b7
    ld [hl], h                                    ; $6d99: $74
    inc h                                         ; $6d9a: $24
    rst $20                                       ; $6d9b: $e7
    rst $20                                       ; $6d9c: $e7
    rst $20                                       ; $6d9d: $e7
    jp Jump_000_00c3                              ; $6d9e: $c3 $c3 $00


    nop                                           ; $6da1: $00
    ld sp, $4b31                                  ; $6da2: $31 $31 $4b
    ld a, d                                       ; $6da5: $7a
    xor e                                         ; $6da6: $ab
    jp c, $9e6d                                   ; $6da7: $da $6d $9e

    rst $18                                       ; $6daa: $df
    inc a                                         ; $6dab: $3c
    rst $28                                       ; $6dac: $ef
    inc e                                         ; $6dad: $1c
    ld [hl], a                                    ; $6dae: $77
    adc h                                         ; $6daf: $8c
    or a                                          ; $6db0: $b7
    call z, $ecd7                                 ; $6db1: $cc $d7 $ec

jr_03b_6db4:
    or a                                          ; $6db4: $b7
    call z, $9c6f                                 ; $6db5: $cc $6f $9c
    call c, Call_000_373f                         ; $6db8: $dc $3f $37
    rst $30                                       ; $6dbb: $f7
    db $e3                                        ; $6dbc: $e3
    db $e3                                        ; $6dbd: $e3
    ret nz                                        ; $6dbe: $c0

jr_03b_6dbf:
    ret nz                                        ; $6dbf: $c0

    nop                                           ; $6dc0: $00
    nop                                           ; $6dc1: $00
    add b                                         ; $6dc2: $80
    add b                                         ; $6dc3: $80

jr_03b_6dc4:
    ld b, b                                       ; $6dc4: $40
    ret nz                                        ; $6dc5: $c0

    ld b, b                                       ; $6dc6: $40
    ret nz                                        ; $6dc7: $c0

    ld b, b                                       ; $6dc8: $40
    ret nz                                        ; $6dc9: $c0

    ld h, b                                       ; $6dca: $60
    ldh [$d8], a                                  ; $6dcb: $e0 $d8
    jr c, jr_03b_6dc4                             ; $6dcd: $38 $f5

    dec c                                         ; $6dcf: $0d
    dec [hl]                                      ; $6dd0: $35
    call $ef56                                    ; $6dd1: $cd $56 $ef
    ld [hl], a                                    ; $6dd4: $77
    xor $76                                       ; $6dd5: $ee $76
    rst $28                                       ; $6dd7: $ef
    ei                                            ; $6dd8: $fb
    rst $20                                       ; $6dd9: $e7
    and e                                         ; $6dda: $a3
    cp a                                          ; $6ddb: $bf
    ld a, $3e                                     ; $6ddc: $3e $3e
    inc e                                         ; $6dde: $1c
    inc e                                         ; $6ddf: $1c
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    nop                                           ; $6de2: $00
    nop                                           ; $6de3: $00
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    ld bc, $3301                                  ; $6de8: $01 $01 $33
    inc sp                                        ; $6deb: $33
    rst $08                                       ; $6dec: $cf
    db $fc                                        ; $6ded: $fc
    ld [hl], a                                    ; $6dee: $77
    adc a                                         ; $6def: $8f
    sbc e                                         ; $6df0: $9b
    ld h, a                                       ; $6df1: $67
    cp e                                          ; $6df2: $bb
    ld h, a                                       ; $6df3: $67
    ei                                            ; $6df4: $fb
    rlca                                          ; $6df5: $07
    ei                                            ; $6df6: $fb
    rlca                                          ; $6df7: $07
    ld [hl], a                                    ; $6df8: $77
    adc a                                         ; $6df9: $8f
    adc h                                         ; $6dfa: $8c
    db $fc                                        ; $6dfb: $fc
    ld hl, sp-$08                                 ; $6dfc: $f8 $f8
    ld [hl], b                                    ; $6dfe: $70
    ld [hl], b                                    ; $6dff: $70
    nop                                           ; $6e00: $00
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    nop                                           ; $6e03: $00
    nop                                           ; $6e04: $00
    nop                                           ; $6e05: $00
    ret nz                                        ; $6e06: $c0

    ret nz                                        ; $6e07: $c0

    and b                                         ; $6e08: $a0
    ld h, b                                       ; $6e09: $60
    and b                                         ; $6e0a: $a0
    ld h, b                                       ; $6e0b: $60
    ret nc                                        ; $6e0c: $d0

    jr nc, jr_03b_6dbf                            ; $6e0d: $30 $b0

    ld [hl], b                                    ; $6e0f: $70
    and b                                         ; $6e10: $a0
    ld h, b                                       ; $6e11: $60
    and b                                         ; $6e12: $a0
    ld h, b                                       ; $6e13: $60
    ret nc                                        ; $6e14: $d0

    jr nc, jr_03b_6e67                            ; $6e15: $30 $50

    or b                                          ; $6e17: $b0
    add sp, -$68                                  ; $6e18: $e8 $98
    adc b                                         ; $6e1a: $88
    ld hl, sp-$08                                 ; $6e1b: $f8 $f8
    ld hl, sp+$70                                 ; $6e1d: $f8 $70
    ld [hl], b                                    ; $6e1f: $70
    nop                                           ; $6e20: $00
    nop                                           ; $6e21: $00
    ld h, b                                       ; $6e22: $60
    ld h, b                                       ; $6e23: $60
    ret nc                                        ; $6e24: $d0

    or b                                          ; $6e25: $b0
    ret nc                                        ; $6e26: $d0

    or b                                          ; $6e27: $b0
    ret nc                                        ; $6e28: $d0

    or b                                          ; $6e29: $b0
    ret nc                                        ; $6e2a: $d0

    or b                                          ; $6e2b: $b0
    db $d3                                        ; $6e2c: $d3
    or e                                          ; $6e2d: $b3
    push de                                       ; $6e2e: $d5
    or [hl]                                       ; $6e2f: $b6
    sub $b5                                       ; $6e30: $d6 $b5
    jp c, $dfbd                                   ; $6e32: $da $bd $df

    cp b                                          ; $6e35: $b8
    db $db                                        ; $6e36: $db
    cp h                                          ; $6e37: $bc
    push af                                       ; $6e38: $f5
    adc [hl]                                      ; $6e39: $8e
    add d                                         ; $6e3a: $82
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    ld a, a                                       ; $6e3e: $7f
    ld a, a                                       ; $6e3f: $7f
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
    call c, Call_000_3bdc                         ; $6e4a: $dc $dc $3b
    rst $30                                       ; $6e4d: $f7
    sbc $31                                       ; $6e4e: $de $31
    ld a, a                                       ; $6e50: $7f
    sub b                                         ; $6e51: $90
    db $fc                                        ; $6e52: $fc
    sub e                                         ; $6e53: $93
    db $fd                                        ; $6e54: $fd
    inc de                                        ; $6e55: $13

Call_03b_6e56:
    db $fd                                        ; $6e56: $fd
    inc de                                        ; $6e57: $13
    db $dd                                        ; $6e58: $dd
    inc sp                                        ; $6e59: $33
    ld sp, $ffff                                  ; $6e5a: $31 $ff $ff
    rst $38                                       ; $6e5d: $ff
    adc $ce                                       ; $6e5e: $ce $ce
    nop                                           ; $6e60: $00
    nop                                           ; $6e61: $00
    ld b, $06                                     ; $6e62: $06 $06
    add hl, de                                    ; $6e64: $19
    rra                                           ; $6e65: $1f
    dec l                                         ; $6e66: $2d

jr_03b_6e67:
    inc sp                                        ; $6e67: $33
    ld e, l                                       ; $6e68: $5d
    ld h, e                                       ; $6e69: $63
    or l                                          ; $6e6a: $b5
    res 7, l                                      ; $6e6b: $cb $bd
    bit 3, l                                      ; $6e6d: $cb $5d
    db $e3                                        ; $6e6f: $e3
    xor [hl]                                      ; $6e70: $ae
    ld [hl], e                                    ; $6e71: $73
    cp a                                          ; $6e72: $bf
    ld [hl], d                                    ; $6e73: $72
    cp e                                          ; $6e74: $bb
    halt                                          ; $6e75: $76
    xor e                                         ; $6e76: $ab
    halt                                          ; $6e77: $76
    ld a, [$5747]                                 ; $6e78: $fa $47 $57
    rst $28                                       ; $6e7b: $ef
    db $fc                                        ; $6e7c: $fc
    db $fc                                        ; $6e7d: $fc
    ld hl, sp-$08                                 ; $6e7e: $f8 $f8
    nop                                           ; $6e80: $00
    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    nop                                           ; $6e83: $00
    nop                                           ; $6e84: $00
    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    ld bc, $6201                                  ; $6e88: $01 $01 $62
    ld h, e                                       ; $6e8b: $63
    sub l                                         ; $6e8c: $95
    or $6b                                        ; $6e8d: $f6 $6b
    sbc h                                         ; $6e8f: $9c
    xor $59                                       ; $6e90: $ee $59

jr_03b_6e92:
    rst $18                                       ; $6e92: $df
    jr c, jr_03b_6e92                             ; $6e93: $38 $fd

    ld a, [hl]                                    ; $6e95: $7e
    cp e                                          ; $6e96: $bb
    ld a, h                                       ; $6e97: $7c
    xor $19                                       ; $6e98: $ee $19
    adc c                                         ; $6e9a: $89
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    ld a, [hl]                                    ; $6e9e: $7e
    ld a, [hl]                                    ; $6e9f: $7e
    nop                                           ; $6ea0: $00
    nop                                           ; $6ea1: $00
    inc bc                                        ; $6ea2: $03
    inc bc                                        ; $6ea3: $03
    ld b, $05                                     ; $6ea4: $06 $05
    scf                                           ; $6ea6: $37
    inc [hl]                                      ; $6ea7: $34
    rst $28                                       ; $6ea8: $ef
    call c, $dcef                                 ; $6ea9: $dc $ef $dc
    rst $30                                       ; $6eac: $f7
    adc h                                         ; $6ead: $8c
    ld l, a                                       ; $6eae: $6f
    call c, $dcef                                 ; $6eaf: $dc $ef $dc
    rst $28                                       ; $6eb2: $ef
    ld e, h                                       ; $6eb3: $5c
    ld l, a                                       ; $6eb4: $6f
    call c, $cc77                                 ; $6eb5: $dc $77 $cc

jr_03b_6eb8:
    rst $10                                       ; $6eb8: $d7
    db $ec                                        ; $6eb9: $ec
    db $e4                                        ; $6eba: $e4
    rst $38                                       ; $6ebb: $ff
    ccf                                           ; $6ebc: $3f
    ccf                                           ; $6ebd: $3f
    dec de                                        ; $6ebe: $1b
    dec de                                        ; $6ebf: $1b
    nop                                           ; $6ec0: $00
    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    nop                                           ; $6ec3: $00
    ret nz                                        ; $6ec4: $c0

    ret nz                                        ; $6ec5: $c0

    and b                                         ; $6ec6: $a0
    ld h, b                                       ; $6ec7: $60
    ret nc                                        ; $6ec8: $d0

    jr nc, jr_03b_6eb8                            ; $6ec9: $30 $ed

    dec e                                         ; $6ecb: $1d
    dec sp                                        ; $6ecc: $3b
    adc $5e                                       ; $6ecd: $ce $5e
    jp hl                                         ; $6ecf: $e9


    ld a, l                                       ; $6ed0: $7d
    db $eb                                        ; $6ed1: $eb
    ld l, a                                       ; $6ed2: $6f
    db $db                                        ; $6ed3: $db
    xor $1a                                       ; $6ed4: $ee $1a
    sub $3a                                       ; $6ed6: $d6 $3a
    cp d                                          ; $6ed8: $ba
    halt                                          ; $6ed9: $76
    ld [hl], d                                    ; $6eda: $72
    cp $de                                        ; $6edb: $fe $de
    sbc $8c                                       ; $6edd: $de $8c
    adc h                                         ; $6edf: $8c
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    nop                                           ; $6ee3: $00
    nop                                           ; $6ee4: $00
    nop                                           ; $6ee5: $00
    nop                                           ; $6ee6: $00
    nop                                           ; $6ee7: $00
    ld h, b                                       ; $6ee8: $60
    ld h, b                                       ; $6ee9: $60
    call c, Call_03b_5bbc                         ; $6eea: $dc $bc $5b
    rst $30                                       ; $6eed: $f7
    ld a, e                                       ; $6eee: $7b
    rst $30                                       ; $6eef: $f7
    jp c, $95f7                                   ; $6ef0: $da $f7 $95

    ld a, [$b8df]                                 ; $6ef3: $fa $df $b8
    db $db                                        ; $6ef6: $db
    cp h                                          ; $6ef7: $bc
    sbc $bd                                       ; $6ef8: $de $bd
    sub h                                         ; $6efa: $94
    rst $30                                       ; $6efb: $f7
    rst $30                                       ; $6efc: $f7
    rst $30                                       ; $6efd: $f7
    ld h, e                                       ; $6efe: $63
    ld h, e                                       ; $6eff: $63
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
    call z, $b2cc                                 ; $6f0a: $cc $cc $b2
    ld a, [hl]                                    ; $6f0d: $7e
    xor l                                         ; $6f0e: $ad
    ld [hl], e                                    ; $6f0f: $73
    cp l                                          ; $6f10: $bd
    ld l, e                                       ; $6f11: $6b
    db $db                                        ; $6f12: $db
    ld h, a                                       ; $6f13: $67
    ld a, [hl]                                    ; $6f14: $7e
    adc $76                                       ; $6f15: $ce $76
    adc $dd                                       ; $6f17: $ce $dd
    db $e3                                        ; $6f19: $e3
    pop af                                        ; $6f1a: $f1
    rst $38                                       ; $6f1b: $ff
    cp a                                          ; $6f1c: $bf
    cp a                                          ; $6f1d: $bf
    ld c, $0e                                     ; $6f1e: $0e $0e
    nop                                           ; $6f20: $00
    nop                                           ; $6f21: $00
    rrca                                          ; $6f22: $0f
    rrca                                          ; $6f23: $0f
    dec d                                         ; $6f24: $15
    dec de                                        ; $6f25: $1b
    dec l                                         ; $6f26: $2d
    inc sp                                        ; $6f27: $33
    ld e, c                                       ; $6f28: $59
    ld h, a                                       ; $6f29: $67
    ld [hl], a                                    ; $6f2a: $77
    ld c, a                                       ; $6f2b: $4f
    xor [hl]                                      ; $6f2c: $ae
    rst $18                                       ; $6f2d: $df
    ei                                            ; $6f2e: $fb
    sbc d                                         ; $6f2f: $9a
    di                                            ; $6f30: $f3
    sub d                                         ; $6f31: $92
    xor [hl]                                      ; $6f32: $ae
    rst $18                                       ; $6f33: $df
    db $fd                                        ; $6f34: $fd
    jp Jump_03b_635d                              ; $6f35: $c3 $5d $63


    ld l, l                                       ; $6f38: $6d
    ld [hl], e                                    ; $6f39: $73
    add hl, sp                                    ; $6f3a: $39
    ccf                                           ; $6f3b: $3f
    rra                                           ; $6f3c: $1f
    rra                                           ; $6f3d: $1f
    rlca                                          ; $6f3e: $07
    rlca                                          ; $6f3f: $07
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    add b                                         ; $6f42: $80
    add b                                         ; $6f43: $80
    ld b, b                                       ; $6f44: $40
    ret nz                                        ; $6f45: $c0

    ret nz                                        ; $6f46: $c0

    ld b, b                                       ; $6f47: $40
    ret nz                                        ; $6f48: $c0

    ld b, b                                       ; $6f49: $40
    call z, $f24c                                 ; $6f4a: $cc $4c $f2
    ld a, [hl]                                    ; $6f4d: $7e
    db $dd                                        ; $6f4e: $dd
    ld h, e                                       ; $6f4f: $63
    rst $20                                       ; $6f50: $e7
    ld e, c                                       ; $6f51: $59
    rst $28                                       ; $6f52: $ef
    ld e, c                                       ; $6f53: $59
    rst $38                                       ; $6f54: $ff
    ld b, c                                       ; $6f55: $41
    rst $38                                       ; $6f56: $ff
    ld b, c                                       ; $6f57: $41
    db $dd                                        ; $6f58: $dd
    ld h, e                                       ; $6f59: $63
    ld h, e                                       ; $6f5a: $63
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    sbc h                                         ; $6f5e: $9c
    sbc h                                         ; $6f5f: $9c
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    nop                                           ; $6f64: $00
    nop                                           ; $6f65: $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    jr nc, jr_03b_6f9a                            ; $6f68: $30 $30

    ld c, c                                       ; $6f6a: $49
    ld a, c                                       ; $6f6b: $79
    cp d                                          ; $6f6c: $ba
    bit 5, l                                      ; $6f6d: $cb $6d
    sbc [hl]                                      ; $6f6f: $9e
    db $db                                        ; $6f70: $db
    dec a                                         ; $6f71: $3d
    xor $19                                       ; $6f72: $ee $19
    xor a                                         ; $6f74: $af
    ret c                                         ; $6f75: $d8

    ld l, e                                       ; $6f76: $6b
    sbc h                                         ; $6f77: $9c
    db $dd                                        ; $6f78: $dd
    ld a, $36                                     ; $6f79: $3e $36
    rst $30                                       ; $6f7b: $f7
    db $e3                                        ; $6f7c: $e3
    db $e3                                        ; $6f7d: $e3
    pop bc                                        ; $6f7e: $c1
    pop bc                                        ; $6f7f: $c1
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    nop                                           ; $6f83: $00
    nop                                           ; $6f84: $00
    nop                                           ; $6f85: $00
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    ld b, $06                                     ; $6f88: $06 $06
    adc c                                         ; $6f8a: $89
    adc a                                         ; $6f8b: $8f
    ld d, a                                       ; $6f8c: $57

jr_03b_6f8d:
    reti                                          ; $6f8d: $d9


    db $ed                                        ; $6f8e: $ed
    inc sp                                        ; $6f8f: $33
    ei                                            ; $6f90: $fb
    and a                                         ; $6f91: $a7
    cp l                                          ; $6f92: $bd
    ld h, e                                       ; $6f93: $63
    push af                                       ; $6f94: $f5
    ei                                            ; $6f95: $fb
    ld l, l                                       ; $6f96: $6d
    di                                            ; $6f97: $f3
    cp e                                          ; $6f98: $bb
    ld h, a                                       ; $6f99: $67

jr_03b_6f9a:
    ld h, $fe                                     ; $6f9a: $26 $fe
    db $fc                                        ; $6f9c: $fc
    db $fc                                        ; $6f9d: $fc
    ret c                                         ; $6f9e: $d8

    ret c                                         ; $6f9f: $d8

    nop                                           ; $6fa0: $00
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    nop                                           ; $6fa3: $00
    nop                                           ; $6fa4: $00
    nop                                           ; $6fa5: $00
    ld h, e                                       ; $6fa6: $63
    ld h, e                                       ; $6fa7: $63
    sub $b5                                       ; $6fa8: $d6 $b5
    sub $b5                                       ; $6faa: $d6 $b5

Jump_03b_6fac:
    rst $28                                       ; $6fac: $ef
    jr jr_03b_6f8d                                ; $6fad: $18 $de

    cp l                                          ; $6faf: $bd
    sbc $bd                                       ; $6fb0: $de $bd
    sub $b5                                       ; $6fb2: $d6 $b5
    sub $b5                                       ; $6fb4: $d6 $b5
    xor l                                         ; $6fb6: $ad
    sbc $ef                                       ; $6fb7: $de $ef
    sbc $4a                                       ; $6fb9: $de $4a
    ld a, e                                       ; $6fbb: $7b
    ld a, e                                       ; $6fbc: $7b
    ld a, e                                       ; $6fbd: $7b
    ld sp, $0031                                  ; $6fbe: $31 $31 $00
    nop                                           ; $6fc1: $00
    nop                                           ; $6fc2: $00
    nop                                           ; $6fc3: $00
    ld bc, $0101                                  ; $6fc4: $01 $01 $01
    ld bc, $8181                                  ; $6fc7: $01 $81 $81
    adc l                                         ; $6fca: $8d
    adc l                                         ; $6fcb: $8d
    ld [hl], e                                    ; $6fcc: $73
    rst $38                                       ; $6fcd: $ff
    db $dd                                        ; $6fce: $dd
    db $e3                                        ; $6fcf: $e3
    rst $20                                       ; $6fd0: $e7
    reti                                          ; $6fd1: $d9


    rst $28                                       ; $6fd2: $ef
    reti                                          ; $6fd3: $d9


    rst $38                                       ; $6fd4: $ff
    pop bc                                        ; $6fd5: $c1
    ld a, a                                       ; $6fd6: $7f
    pop bc                                        ; $6fd7: $c1
    ld e, l                                       ; $6fd8: $5d
    db $e3                                        ; $6fd9: $e3
    ld h, e                                       ; $6fda: $63
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    sbc h                                         ; $6fde: $9c
    sbc h                                         ; $6fdf: $9c
    nop                                           ; $6fe0: $00
    nop                                           ; $6fe1: $00
    ldh a, [$f0]                                  ; $6fe2: $f0 $f0
    ld l, b                                       ; $6fe4: $68
    sbc b                                         ; $6fe5: $98
    db $f4                                        ; $6fe6: $f4
    inc c                                         ; $6fe7: $0c
    ei                                            ; $6fe8: $fb
    rlca                                          ; $6fe9: $07
    swap [hl]                                     ; $6fea: $cb $36
    jp c, $fb37                                   ; $6fec: $da $37 $fb

    rlca                                          ; $6fef: $07
    ei                                            ; $6ff0: $fb
    rlca                                          ; $6ff1: $07
    rst $20                                       ; $6ff2: $e7
    ld e, $df                                     ; $6ff3: $1e $df
    ld a, $db                                     ; $6ff5: $3e $db
    ld a, [hl-]                                   ; $6ff7: $3a
    db $d3                                        ; $6ff8: $d3
    ld [hl-], a                                   ; $6ff9: $32
    ld [de], a                                    ; $6ffa: $12
    di                                            ; $6ffb: $f3
    di                                            ; $6ffc: $f3
    di                                            ; $6ffd: $f3
    pop hl                                        ; $6ffe: $e1
    pop hl                                        ; $6fff: $e1
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    add b                                         ; $7008: $80
    add b                                         ; $7009: $80
    ld [hl], b                                    ; $700a: $70
    ldh a, [$6c]                                  ; $700b: $f0 $6c
    call c, $c6fa                                 ; $700d: $dc $fa $c6
    ld a, l                                       ; $7010: $7d
    jp $cb75                                      ; $7011: $c3 $75 $cb


    ld l, l                                       ; $7014: $6d
    db $db                                        ; $7015: $db
    ld l, l                                       ; $7016: $6d
    db $db                                        ; $7017: $db
    ld l, l                                       ; $7018: $6d
    db $db                                        ; $7019: $db
    ld c, c                                       ; $701a: $49
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    or [hl]                                       ; $701e: $b6
    or [hl]                                       ; $701f: $b6
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    ld bc, $0201                                  ; $7028: $01 $01 $02
    inc bc                                        ; $702b: $03
    inc bc                                        ; $702c: $03
    ld [bc], a                                    ; $702d: $02
    inc bc                                        ; $702e: $03
    ld [bc], a                                    ; $702f: $02
    inc bc                                        ; $7030: $03
    ld [bc], a                                    ; $7031: $02
    inc bc                                        ; $7032: $03
    ld [bc], a                                    ; $7033: $02
    inc bc                                        ; $7034: $03
    ld [bc], a                                    ; $7035: $02
    ld [bc], a                                    ; $7036: $02
    inc bc                                        ; $7037: $03
    inc bc                                        ; $7038: $03
    inc bc                                        ; $7039: $03
    ld bc, $0001                                  ; $703a: $01 $01 $00
    nop                                           ; $703d: $00
    nop                                           ; $703e: $00
    nop                                           ; $703f: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    inc a                                         ; $7042: $3c
    inc a                                         ; $7043: $3c
    ld e, d                                       ; $7044: $5a
    ld h, [hl]                                    ; $7045: $66
    cp l                                          ; $7046: $bd
    jp $9966                                      ; $7047: $c3 $66 $99


    db $db                                        ; $704a: $db
    inc a                                         ; $704b: $3c
    cp a                                          ; $704c: $bf
    ld a, l                                       ; $704d: $7d
    rst $20                                       ; $704e: $e7
    ld h, l                                       ; $704f: $65
    rst $00                                       ; $7050: $c7
    ld b, l                                       ; $7051: $45
    bit 1, l                                      ; $7052: $cb $4d
    or a                                          ; $7054: $b7
    ld a, c                                       ; $7055: $79
    db $fd                                        ; $7056: $fd
    inc bc                                        ; $7057: $03
    ld a, c                                       ; $7058: $79
    add a                                         ; $7059: $87
    add a                                         ; $705a: $87
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    ld a, b                                       ; $705e: $78
    ld a, b                                       ; $705f: $78
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    add b                                         ; $7068: $80
    add b                                         ; $7069: $80
    ret nz                                        ; $706a: $c0

    ret nz                                        ; $706b: $c0

    cp b                                          ; $706c: $b8
    ld a, b                                       ; $706d: $78
    db $f4                                        ; $706e: $f4
    inc c                                         ; $706f: $0c
    ld a, [$9a06]                                 ; $7070: $fa $06 $9a
    ld h, [hl]                                    ; $7073: $66
    xor d                                         ; $7074: $aa
    halt                                          ; $7075: $76
    cp d                                          ; $7076: $ba
    halt                                          ; $7077: $76
    cp d                                          ; $7078: $ba
    halt                                          ; $7079: $76
    ld [hl-], a                                   ; $707a: $32
    cp $fe                                        ; $707b: $fe $fe
    cp $cc                                        ; $707d: $fe $cc
    call z, $0000                                 ; $707f: $cc $00 $00
    inc bc                                        ; $7082: $03
    inc bc                                        ; $7083: $03
    dec c                                         ; $7084: $0d
    ld c, $16                                     ; $7085: $0e $16
    add hl, de                                    ; $7087: $19
    dec l                                         ; $7088: $2d
    inc sp                                        ; $7089: $33
    dec sp                                        ; $708a: $3b
    daa                                           ; $708b: $27
    ld d, [hl]                                    ; $708c: $56
    ld l, [hl]                                    ; $708d: $6e
    ld a, l                                       ; $708e: $7d
    ld c, l                                       ; $708f: $4d
    cp d                                          ; $7090: $ba
    res 6, a                                      ; $7091: $cb $b7
    adc $bf                                       ; $7093: $ce $bf
    ret nz                                        ; $7095: $c0

    rst $08                                       ; $7096: $cf
    ldh a, [$71]                                  ; $7097: $f0 $71
    ld a, [hl]                                    ; $7099: $7e
    ld a, $3f                                     ; $709a: $3e $3f
    rrca                                          ; $709c: $0f
    rrca                                          ; $709d: $0f
    ld bc, $0001                                  ; $709e: $01 $01 $00
    nop                                           ; $70a1: $00
    add b                                         ; $70a2: $80
    add b                                         ; $70a3: $80
    ld b, b                                       ; $70a4: $40
    ret nz                                        ; $70a5: $c0

    ld b, b                                       ; $70a6: $40
    ret nz                                        ; $70a7: $c0

    ret nz                                        ; $70a8: $c0

    ret nz                                        ; $70a9: $c0

    ld [hl], $36                                  ; $70aa: $36 $36
    ld l, c                                       ; $70ac: $69
    ld e, a                                       ; $70ad: $5f
    rst $38                                       ; $70ae: $ff
    pop bc                                        ; $70af: $c1
    halt                                          ; $70b0: $76
    rst $08                                       ; $70b1: $cf
    ld l, l                                       ; $70b2: $6d
    sbc $6d                                       ; $70b3: $de $6d
    sbc $6f                                       ; $70b5: $de $6f
    sbc $6a                                       ; $70b7: $de $6a
    db $db                                        ; $70b9: $db
    ld c, e                                       ; $70ba: $4b
    ei                                            ; $70bb: $fb
    ld sp, hl                                     ; $70bc: $f9
    ld sp, hl                                     ; $70bd: $f9
    or b                                          ; $70be: $b0
    or b                                          ; $70bf: $b0
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
    ld h, c                                       ; $70ca: $61
    ld h, c                                       ; $70cb: $61

jr_03b_70cc:
    sub d                                         ; $70cc: $92
    di                                            ; $70cd: $f3
    ld l, l                                       ; $70ce: $6d
    sbc [hl]                                      ; $70cf: $9e
    db $eb                                        ; $70d0: $eb
    ld e, l                                       ; $70d1: $5d
    rst $10                                       ; $70d2: $d7
    jr c, jr_03b_70cc                             ; $70d3: $38 $f7

    ld a, c                                       ; $70d5: $79
    cp [hl]                                       ; $70d6: $be
    ld a, c                                       ; $70d7: $79
    db $eb                                        ; $70d8: $eb
    inc e                                         ; $70d9: $1c
    adc [hl]                                      ; $70da: $8e
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    ld [hl], c                                    ; $70de: $71
    ld [hl], c                                    ; $70df: $71
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
    sbc b                                         ; $70ea: $98
    sbc b                                         ; $70eb: $98
    ld [hl], a                                    ; $70ec: $77
    rst $28                                       ; $70ed: $ef
    cp [hl]                                       ; $70ee: $be
    ld h, c                                       ; $70ef: $61
    cp a                                          ; $70f0: $bf
    ld h, b                                       ; $70f1: $60
    ld [hl], e                                    ; $70f2: $73
    db $ec                                        ; $70f3: $ec
    push af                                       ; $70f4: $f5
    xor $f7                                       ; $70f5: $ee $f7
    xor $b7                                       ; $70f7: $ee $b7
    ld l, [hl]                                    ; $70f9: $6e
    ld h, $ff                                     ; $70fa: $26 $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    reti                                          ; $70fe: $d9


    reti                                          ; $70ff: $d9


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
    add b                                         ; $710e: $80
    add b                                         ; $710f: $80
    ld b, b                                       ; $7110: $40
    ret nz                                        ; $7111: $c0

    ld b, b                                       ; $7112: $40
    ret nz                                        ; $7113: $c0

    ld b, b                                       ; $7114: $40
    ret nz                                        ; $7115: $c0

    ld b, b                                       ; $7116: $40
    ret nz                                        ; $7117: $c0

    ld b, b                                       ; $7118: $40
    ret nz                                        ; $7119: $c0

    ld b, b                                       ; $711a: $40
    ret nz                                        ; $711b: $c0

    ret nz                                        ; $711c: $c0

    ret nz                                        ; $711d: $c0

    add b                                         ; $711e: $80
    add b                                         ; $711f: $80
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    inc c                                         ; $7122: $0c
    inc c                                         ; $7123: $0c
    ld [de], a                                    ; $7124: $12
    ld e, $2a                                     ; $7125: $1e $2a
    ld [hl], $5a                                  ; $7127: $36 $5a
    ld h, [hl]                                    ; $7129: $66
    or a                                          ; $712a: $b7
    rst $08                                       ; $712b: $cf
    cp e                                          ; $712c: $bb
    rst $00                                       ; $712d: $c7
    ld e, l                                       ; $712e: $5d
    ld h, e                                       ; $712f: $63
    dec l                                         ; $7130: $2d
    inc sp                                        ; $7131: $33
    dec d                                         ; $7132: $15
    dec de                                        ; $7133: $1b
    dec l                                         ; $7134: $2d
    inc sp                                        ; $7135: $33
    ld e, e                                       ; $7136: $5b
    ld h, a                                       ; $7137: $67
    rst $30                                       ; $7138: $f7
    adc a                                         ; $7139: $8f
    adc h                                         ; $713a: $8c
    db $fc                                        ; $713b: $fc
    ld hl, sp-$08                                 ; $713c: $f8 $f8
    ld [hl], b                                    ; $713e: $70
    ld [hl], b                                    ; $713f: $70
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    ret nz                                        ; $714a: $c0

    ret nz                                        ; $714b: $c0

    cp c                                          ; $714c: $b9
    ld a, c                                       ; $714d: $79
    or [hl]                                       ; $714e: $b6
    ld l, a                                       ; $714f: $6f
    or l                                          ; $7150: $b5
    ld l, [hl]                                    ; $7151: $6e
    or [hl]                                       ; $7152: $b6
    ld l, l                                       ; $7153: $6d
    sub $2d                                       ; $7154: $d6 $2d
    ld [hl], l                                    ; $7156: $75
    adc [hl]                                      ; $7157: $8e
    or [hl]                                       ; $7158: $b6
    rst $08                                       ; $7159: $cf
    rst $00                                       ; $715a: $c7
    rst $38                                       ; $715b: $ff
    ld a, l                                       ; $715c: $7d
    ld a, l                                       ; $715d: $7d
    jr c, jr_03b_7198                             ; $715e: $38 $38

    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    ld hl, $5221                                  ; $7162: $21 $21 $52
    ld [hl], e                                    ; $7165: $73
    sub h                                         ; $7166: $94
    rst $30                                       ; $7167: $f7
    sub $b5                                       ; $7168: $d6 $b5
    sub $b5                                       ; $716a: $d6 $b5
    ld e, d                                       ; $716c: $5a
    cp l                                          ; $716d: $bd
    sub $39                                       ; $716e: $d6 $39
    rst $28                                       ; $7170: $ef
    ld sp, $ad73                                  ; $7171: $31 $73 $ad
    rst $30                                       ; $7174: $f7
    xor l                                         ; $7175: $ad
    rst $28                                       ; $7176: $ef
    ld sp, $39f7                                  ; $7177: $31 $f7 $39
    jr @+$01                                      ; $717a: $18 $ff

    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $20                                       ; $717e: $e7
    rst $20                                       ; $717f: $e7
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    add b                                         ; $7184: $80
    add b                                         ; $7185: $80

jr_03b_7186:
    add b                                         ; $7186: $80
    add b                                         ; $7187: $80
    add b                                         ; $7188: $80
    add b                                         ; $7189: $80
    or b                                          ; $718a: $b0
    or b                                          ; $718b: $b0
    rst $08                                       ; $718c: $cf
    rst $38                                       ; $718d: $ff
    cp a                                          ; $718e: $bf
    call nz, $b47f                                ; $718f: $c4 $7f $b4
    rst $10                                       ; $7192: $d7
    inc l                                         ; $7193: $2c
    cp $1d                                        ; $7194: $fe $1d
    ld l, [hl]                                    ; $7196: $6e
    sbc l                                         ; $7197: $9d

jr_03b_7198:
    or [hl]                                       ; $7198: $b6
    call $ffc4                                    ; $7199: $cd $c4 $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    dec sp                                        ; $719e: $3b
    dec sp                                        ; $719f: $3b
    nop                                           ; $71a0: $00
    nop                                           ; $71a1: $00
    ld e, $1e                                     ; $71a2: $1e $1e
    dec l                                         ; $71a4: $2d
    inc sp                                        ; $71a5: $33
    ld a, $21                                     ; $71a6: $3e $21
    cpl                                           ; $71a8: $2f
    jr nc, jr_03b_71ea                            ; $71a9: $30 $3f

    jr nc, jr_03b_7186                            ; $71ab: $30 $d9

    sub $ba                                       ; $71ad: $d6 $ba
    ld [hl], a                                    ; $71af: $77
    db $db                                        ; $71b0: $db
    scf                                           ; $71b1: $37
    ld e, e                                       ; $71b2: $5b
    or [hl]                                       ; $71b3: $b6
    rst $18                                       ; $71b4: $df
    or b                                          ; $71b5: $b0
    rst $18                                       ; $71b6: $df
    or b                                          ; $71b7: $b0
    call c, $93b3                                 ; $71b8: $dc $b3 $93
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    ld l, h                                       ; $71be: $6c
    ld l, h                                       ; $71bf: $6c
    nop                                           ; $71c0: $00
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    nop                                           ; $71c3: $00
    nop                                           ; $71c4: $00
    nop                                           ; $71c5: $00
    add b                                         ; $71c6: $80
    add b                                         ; $71c7: $80
    ld b, b                                       ; $71c8: $40
    ret nz                                        ; $71c9: $c0

    ld c, h                                       ; $71ca: $4c
    call z, Call_03b_7fb3                         ; $71cb: $cc $b3 $7f
    xor l                                         ; $71ce: $ad
    ld [hl], e                                    ; $71cf: $73
    rst $18                                       ; $71d0: $df
    ld l, l                                       ; $71d1: $6d
    push af                                       ; $71d2: $f5
    ld c, e                                       ; $71d3: $4b
    rst $38                                       ; $71d4: $ff
    ld b, a                                       ; $71d5: $47
    ld e, e                                       ; $71d6: $5b
    rst $20                                       ; $71d7: $e7
    db $ed                                        ; $71d8: $ed
    di                                            ; $71d9: $f3
    or c                                          ; $71da: $b1
    cp a                                          ; $71db: $bf
    rra                                           ; $71dc: $1f
    rra                                           ; $71dd: $1f
    ld c, $0e                                     ; $71de: $0e $0e
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    ld bc, $3301                                  ; $71e6: $01 $01 $33
    ld [hl-], a                                   ; $71e9: $32

jr_03b_71ea:
    ld c, e                                       ; $71ea: $4b
    ld a, d                                       ; $71eb: $7a
    or a                                          ; $71ec: $b7
    call z, $8e77                                 ; $71ed: $cc $77 $8e
    sub a                                         ; $71f0: $97
    ld l, [hl]                                    ; $71f1: $6e
    or a                                          ; $71f2: $b7
    ld l, [hl]                                    ; $71f3: $6e
    rst $30                                       ; $71f4: $f7
    ld c, $7b                                     ; $71f5: $0e $7b
    add [hl]                                      ; $71f7: $86
    sbc d                                         ; $71f8: $9a
    rst $30                                       ; $71f9: $f7
    ei                                            ; $71fa: $fb
    rst $30                                       ; $71fb: $f7
    ld a, a                                       ; $71fc: $7f
    ld a, a                                       ; $71fd: $7f
    inc c                                         ; $71fe: $0c
    inc c                                         ; $71ff: $0c
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    jr jr_03b_721c                                ; $7202: $18 $18

    inc [hl]                                      ; $7204: $34
    inc l                                         ; $7205: $2c
    or h                                          ; $7206: $b4
    xor h                                         ; $7207: $ac
    ld [hl], h                                    ; $7208: $74
    db $ec                                        ; $7209: $ec
    ld [hl], h                                    ; $720a: $74
    db $ec                                        ; $720b: $ec
    cp d                                          ; $720c: $ba
    ld h, [hl]                                    ; $720d: $66
    ld a, l                                       ; $720e: $7d
    db $e3                                        ; $720f: $e3
    ld [hl], a                                    ; $7210: $77
    jp hl                                         ; $7211: $e9


    ld [hl], e                                    ; $7212: $73
    db $ed                                        ; $7213: $ed
    ld [hl], a                                    ; $7214: $77
    db $ed                                        ; $7215: $ed
    ld [hl], a                                    ; $7216: $77
    db $ed                                        ; $7217: $ed
    and a                                         ; $7218: $a7
    ld a, l                                       ; $7219: $7d
    dec a                                         ; $721a: $3d
    rst $38                                       ; $721b: $ff

jr_03b_721c:
    rst $20                                       ; $721c: $e7
    rst $20                                       ; $721d: $e7
    db $c2                                        ; $721e: $c2
    db $c2                                        ; $721f: $c2

    db $1c, $57, $ff, $03, $ff, $01, $00, $00, $1c, $57, $e0, $03, $a0, $02, $00, $00

    inc e                                         ; $7230: $1c
    ld d, a                                       ; $7231: $57
    rra                                           ; $7232: $1f
    nop                                           ; $7233: $00
    inc de                                        ; $7234: $13
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    inc e                                         ; $7238: $1c
    ld d, a                                       ; $7239: $57
    rra                                           ; $723a: $1f
    ld a, h                                       ; $723b: $7c
    ld c, $7c                                     ; $723c: $0e $7c
    nop                                           ; $723e: $00
    nop                                           ; $723f: $00

    db $1c, $57, $e0, $43, $a0, $42, $00, $00

    inc e                                         ; $7248: $1c
    ld d, a                                       ; $7249: $57
    ldh [$7f], a                                  ; $724a: $e0 $7f
    ld h, b                                       ; $724c: $60
    ld a, [hl]                                    ; $724d: $7e
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00

    db $1c, $57, $1f, $02, $fd, $00, $00, $00

    ld [$1f25], sp                                ; $7258: $08 $25 $1f
    ld [bc], a                                    ; $725b: $02
    db $fd                                        ; $725c: $fd
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00

    ld b, a                                       ; $7260: $47
    call Call_03b_431f                            ; $7261: $cd $1f $43
    ld a, [$c834]                                 ; $7264: $fa $34 $c8
    cp $05                                        ; $7267: $fe $05
    jp z, Jump_03b_75cc                           ; $7269: $ca $cc $75

    cp $0b                                        ; $726c: $fe $0b
    jp z, Jump_03b_75cc                           ; $726e: $ca $cc $75

    cp $06                                        ; $7271: $fe $06
    jp z, Jump_03b_75ce                           ; $7273: $ca $ce $75

    cp $07                                        ; $7276: $fe $07
    jp z, Jump_03b_76a8                           ; $7278: $ca $a8 $76

    cp $0c                                        ; $727b: $fe $0c
    jp z, Jump_03b_76c0                           ; $727d: $ca $c0 $76

    ld a, b                                       ; $7280: $78
    push af                                       ; $7281: $f5
    ld a, [$d48e]                                 ; $7282: $fa $8e $d4
    bit 0, a                                      ; $7285: $cb $47
    jr z, jr_03b_728f                             ; $7287: $28 $06

    ld de, $000a                                  ; $7289: $11 $0a $00
    rst $18                                       ; $728c: $df
    ld e, d                                       ; $728d: $5a
    ld [bc], a                                    ; $728e: $02

jr_03b_728f:
    pop af                                        ; $728f: $f1
    cp $80                                        ; $7290: $fe $80
    jr z, jr_03b_72c3                             ; $7292: $28 $2f

    and $0f                                       ; $7294: $e6 $0f
    add a                                         ; $7296: $87
    ld hl, $72a3                                  ; $7297: $21 $a3 $72
    add l                                         ; $729a: $85
    ld l, a                                       ; $729b: $6f
    jr nc, jr_03b_729f                            ; $729c: $30 $01

    inc h                                         ; $729e: $24

jr_03b_729f:
    ld a, [hl+]                                   ; $729f: $2a
    ld h, [hl]                                    ; $72a0: $66
    ld l, a                                       ; $72a1: $6f
    jp hl                                         ; $72a2: $e9


    db $41, $75, $6b, $75

    add hl, hl                                    ; $72a7: $29
    ld [hl], l                                    ; $72a8: $75
    ld h, $74                                     ; $72a9: $26 $74
    jp z, $9075                                   ; $72ab: $ca $75 $90

    ld [hl], l                                    ; $72ae: $75

    db $47, $74

    ld de, $ca74                                  ; $72b1: $11 $74 $ca
    ld [hl], l                                    ; $72b4: $75

    db $7f, $75

    ld d, l                                       ; $72b7: $55
    ld [hl], l                                    ; $72b8: $75
    jp z, $a175                                   ; $72b9: $ca $75 $a1

    ld [hl], l                                    ; $72bc: $75
    or d                                          ; $72bd: $b2
    ld [hl], l                                    ; $72be: $75
    ld b, c                                       ; $72bf: $41
    ld [hl], l                                    ; $72c0: $75
    ld l, e                                       ; $72c1: $6b
    ld [hl], l                                    ; $72c2: $75

jr_03b_72c3:
    push af                                       ; $72c3: $f5
    ld hl, $d4f1                                  ; $72c4: $21 $f1 $d4
    ld a, [hl+]                                   ; $72c7: $2a
    ld d, [hl]                                    ; $72c8: $56
    ld e, a                                       ; $72c9: $5f
    rst $18                                       ; $72ca: $df

    db $52, $02

    ld a, [$d48e]                                 ; $72cd: $fa $8e $d4
    bit 2, a                                      ; $72d0: $cb $57
    jr z, jr_03b_72e1                             ; $72d2: $28 $0d

    ld a, $28                                     ; $72d4: $3e $28
    call Call_03b_76f8                            ; $72d6: $cd $f8 $76
    ld de, $000a                                  ; $72d9: $11 $0a $00
    rst $18                                       ; $72dc: $df
    ld d, d                                       ; $72dd: $52
    ld [bc], a                                    ; $72de: $02
    jr jr_03b_732c                                ; $72df: $18 $4b

jr_03b_72e1:
    ld a, [$d4cd]                                 ; $72e1: $fa $cd $d4
    cp $06                                        ; $72e4: $fe $06
    jr z, jr_03b_7312                             ; $72e6: $28 $2a

    ld a, $20                                     ; $72e8: $3e $20
    rst $18                                       ; $72ea: $df
    inc d                                         ; $72eb: $14
    db $10                                        ; $72ec: $10
    ld a, [hl]                                    ; $72ed: $7e
    cp $01                                        ; $72ee: $fe $01
    jr z, jr_03b_732c                             ; $72f0: $28 $3a

    ld a, $21                                     ; $72f2: $3e $21
    call Call_03b_76f8                            ; $72f4: $cd $f8 $76
    rst $18                                       ; $72f7: $df
    jr c, jr_03b_730a                             ; $72f8: $38 $10

    ld de, $f880                                  ; $72fa: $11 $80 $f8
    add hl, de                                    ; $72fd: $19
    bit 7, h                                      ; $72fe: $cb $7c
    jr z, jr_03b_730a                             ; $7300: $28 $08

    ld de, $0006                                  ; $7302: $11 $06 $00
    rst $18                                       ; $7305: $df
    ld d, d                                       ; $7306: $52
    ld [bc], a                                    ; $7307: $02
    jr jr_03b_732c                                ; $7308: $18 $22

jr_03b_730a:
    ld de, $0008                                  ; $730a: $11 $08 $00
    rst $18                                       ; $730d: $df
    ld d, d                                       ; $730e: $52
    ld [bc], a                                    ; $730f: $02
    jr jr_03b_732c                                ; $7310: $18 $1a

jr_03b_7312:
    ld a, [$d329]                                 ; $7312: $fa $29 $d3
    cp $0d                                        ; $7315: $fe $0d
    jr nz, jr_03b_732c                            ; $7317: $20 $13

    rst $18                                       ; $7319: $df

    db $38, $10

    ld de, $fd80                                  ; $731c: $11 $80 $fd
    add hl, de                                    ; $731f: $19
    bit 7, h                                      ; $7320: $cb $7c
    jr nz, jr_03b_732c                            ; $7322: $20 $08

    ld de, $0004                                  ; $7324: $11 $04 $00
    rst $18                                       ; $7327: $df
    ld d, d                                       ; $7328: $52
    ld [bc], a                                    ; $7329: $02
    jr jr_03b_732c                                ; $732a: $18 $00

jr_03b_732c:
    pop af                                        ; $732c: $f1
    ld a, [$d325]                                 ; $732d: $fa $25 $d3
    ld b, a                                       ; $7330: $47
    push hl                                       ; $7331: $e5
    ld a, $20                                     ; $7332: $3e $20
    rst $18                                       ; $7334: $df

    db $14, $10

    ld a, [hl]                                    ; $7337: $7e
    pop hl                                        ; $7338: $e1
    cp $01                                        ; $7339: $fe $01
    jr nz, jr_03b_7357                            ; $733b: $20 $1a

    ld b, $03                                     ; $733d: $06 $03
    rst $18                                       ; $733f: $df
    inc l                                         ; $7340: $2c
    ld [bc], a                                    ; $7341: $02
    rst $08                                       ; $7342: $cf
    dec de                                        ; $7343: $1b
    ld a, $00                                     ; $7344: $3e $00
    call Call_03b_7717                            ; $7346: $cd $17 $77
    rst $18                                       ; $7349: $df
    ld c, b                                       ; $734a: $48
    ld [bc], a                                    ; $734b: $02
    ld de, $0014                                  ; $734c: $11 $14 $00
    rst $18                                       ; $734f: $df
    ld d, d                                       ; $7350: $52
    ld [bc], a                                    ; $7351: $02
    call Call_03b_773f                            ; $7352: $cd $3f $77
    xor a                                         ; $7355: $af
    ret                                           ; $7356: $c9


jr_03b_7357:
    sub b                                         ; $7357: $90
    jr nz, jr_03b_736b                            ; $7358: $20 $11

    rst $08                                       ; $735a: $cf

    db $1d

    ld a, $04                                     ; $735c: $3e $04
    call Call_03b_7717                            ; $735e: $cd $17 $77
    ld a, $01                                     ; $7361: $3e $01
    call Call_03b_76f8                            ; $7363: $cd $f8 $76
    call Call_03b_773f                            ; $7366: $cd $3f $77
    xor a                                         ; $7369: $af
    ret                                           ; $736a: $c9


jr_03b_736b:
    cp $ff                                        ; $736b: $fe $ff
    jr nz, jr_03b_738e                            ; $736d: $20 $1f

    ld b, $00                                     ; $736f: $06 $00
    rst $18                                       ; $7371: $df
    inc l                                         ; $7372: $2c
    ld [bc], a                                    ; $7373: $02
    rst $08                                       ; $7374: $cf
    inc e                                         ; $7375: $1c
    ld a, $03                                     ; $7376: $3e $03
    call Call_03b_7717                            ; $7378: $cd $17 $77
    ld a, $02                                     ; $737b: $3e $02
    call Call_03b_76f8                            ; $737d: $cd $f8 $76
    rst $18                                       ; $7380: $df
    ld c, b                                       ; $7381: $48
    ld [bc], a                                    ; $7382: $02
    ld de, $0006                                  ; $7383: $11 $06 $00
    rst $18                                       ; $7386: $df
    ld d, d                                       ; $7387: $52
    ld [bc], a                                    ; $7388: $02
    call Call_03b_773f                            ; $7389: $cd $3f $77
    xor a                                         ; $738c: $af
    ret                                           ; $738d: $c9


jr_03b_738e:
    cp $fe                                        ; $738e: $fe $fe
    jr nz, jr_03b_73b1                            ; $7390: $20 $1f

    ld b, $01                                     ; $7392: $06 $01
    rst $18                                       ; $7394: $df
    inc l                                         ; $7395: $2c
    ld [bc], a                                    ; $7396: $02
    rst $08                                       ; $7397: $cf
    dec de                                        ; $7398: $1b
    ld a, $02                                     ; $7399: $3e $02
    call Call_03b_7717                            ; $739b: $cd $17 $77
    ld a, $00                                     ; $739e: $3e $00
    call Call_03b_76f8                            ; $73a0: $cd $f8 $76
    rst $18                                       ; $73a3: $df
    ld c, b                                       ; $73a4: $48
    ld [bc], a                                    ; $73a5: $02
    ld de, $000a                                  ; $73a6: $11 $0a $00
    rst $18                                       ; $73a9: $df
    ld d, d                                       ; $73aa: $52
    ld [bc], a                                    ; $73ab: $02
    call Call_03b_773f                            ; $73ac: $cd $3f $77
    xor a                                         ; $73af: $af
    ret                                           ; $73b0: $c9


jr_03b_73b1:
    cp $fd                                        ; $73b1: $fe $fd
    jr nz, jr_03b_73d4                            ; $73b3: $20 $1f

    ld b, $02                                     ; $73b5: $06 $02
    rst $18                                       ; $73b7: $df
    inc l                                         ; $73b8: $2c
    ld [bc], a                                    ; $73b9: $02
    rst $08                                       ; $73ba: $cf
    dec de                                        ; $73bb: $1b
    ld a, $01                                     ; $73bc: $3e $01
    call Call_03b_7717                            ; $73be: $cd $17 $77
    ld a, $07                                     ; $73c1: $3e $07
    call Call_03b_76f8                            ; $73c3: $cd $f8 $76
    rst $18                                       ; $73c6: $df
    ld c, b                                       ; $73c7: $48
    ld [bc], a                                    ; $73c8: $02
    ld de, $0010                                  ; $73c9: $11 $10 $00
    rst $18                                       ; $73cc: $df
    ld d, d                                       ; $73cd: $52
    ld [bc], a                                    ; $73ce: $02
    call Call_03b_773f                            ; $73cf: $cd $3f $77
    xor a                                         ; $73d2: $af
    ret                                           ; $73d3: $c9


jr_03b_73d4:
    rst $08                                       ; $73d4: $cf

    db $1e

    cp $01                                        ; $73d6: $fe $01
    jr nz, jr_03b_73e9                            ; $73d8: $20 $0f

    ld a, $05                                     ; $73da: $3e $05
    call Call_03b_7717                            ; $73dc: $cd $17 $77
    ld a, $04                                     ; $73df: $3e $04
    call Call_03b_76f8                            ; $73e1: $cd $f8 $76
    call Call_03b_773f                            ; $73e4: $cd $3f $77
    xor a                                         ; $73e7: $af
    ret                                           ; $73e8: $c9


jr_03b_73e9:
    cp $02                                        ; $73e9: $fe $02
    jr nz, jr_03b_73fe                            ; $73eb: $20 $11

    rst $08                                       ; $73ed: $cf
    rra                                           ; $73ee: $1f
    ld a, $05                                     ; $73ef: $3e $05
    call Call_03b_7717                            ; $73f1: $cd $17 $77
    ld a, $06                                     ; $73f4: $3e $06
    call Call_03b_76f8                            ; $73f6: $cd $f8 $76
    call Call_03b_773f                            ; $73f9: $cd $3f $77
    xor a                                         ; $73fc: $af
    ret                                           ; $73fd: $c9


jr_03b_73fe:
    push af                                       ; $73fe: $f5
    rst $08                                       ; $73ff: $cf

    db $1f

    ld a, $05                                     ; $7401: $3e $05
    call Call_03b_7717                            ; $7403: $cd $17 $77
    pop af                                        ; $7406: $f1
    add $29                                       ; $7407: $c6 $29
    call Call_03b_76f8                            ; $7409: $cd $f8 $76
    call Call_03b_773f                            ; $740c: $cd $3f $77
    xor a                                         ; $740f: $af
    ret                                           ; $7410: $c9


    ld a, $00                                     ; $7411: $3e $00
    ld c, $10                                     ; $7413: $0e $10
    ld de, $5034                                  ; $7415: $11 $34 $50
    rst $18                                       ; $7418: $df
    inc b                                         ; $7419: $04
    ld c, a                                       ; $741a: $4f
    ld a, $05                                     ; $741b: $3e $05
    call Call_03b_76f8                            ; $741d: $cd $f8 $76
    rst $18                                       ; $7420: $df
    ld d, $10                                     ; $7421: $16 $10
    ld a, $ff                                     ; $7423: $3e $ff
    ret                                           ; $7425: $c9


    ld hl, $d485                                  ; $7426: $21 $85 $d4
    res 2, [hl]                                   ; $7429: $cb $96
    call Call_000_2ed5                            ; $742b: $cd $d5 $2e
    ld e, $cb                                     ; $742e: $1e $cb
    sbc [hl]                                      ; $7430: $9e
    ld a, $01                                     ; $7431: $3e $01
    ld c, $10                                     ; $7433: $0e $10
    ld de, $5034                                  ; $7435: $11 $34 $50
    rst $18                                       ; $7438: $df
    inc b                                         ; $7439: $04
    ld c, a                                       ; $743a: $4f
    ld a, $0c                                     ; $743b: $3e $0c
    call Call_03b_76f8                            ; $743d: $cd $f8 $76
    rst $18                                       ; $7440: $df
    ld d, $10                                     ; $7441: $16 $10
    rst $18                                       ; $7443: $df
    jr jr_03b_7456                                ; $7444: $18 $10

    ret                                           ; $7446: $c9


    ld a, $2b                                     ; $7447: $3e $2b
    rst $18                                       ; $7449: $df

    db $14, $10

    ld a, [hl]                                    ; $744c: $7e
    or a                                          ; $744d: $b7
    jp nz, Jump_03b_7500                          ; $744e: $c2 $00 $75

    ld [hl], $01                                  ; $7451: $36 $01
    ld a, [$d48e]                                 ; $7453: $fa $8e $d4

jr_03b_7456:
    bit 1, a                                      ; $7456: $cb $4f
    jr z, jr_03b_7468                             ; $7458: $28 $0e

    ld a, $1b                                     ; $745a: $3e $1b
    call Call_03b_76f8                            ; $745c: $cd $f8 $76
    ld de, $0004                                  ; $745f: $11 $04 $00
    rst $18                                       ; $7462: $df
    ld e, d                                       ; $7463: $5a
    ld [bc], a                                    ; $7464: $02
    jp Jump_03b_74fe                              ; $7465: $c3 $fe $74


jr_03b_7468:
    ld a, $20                                     ; $7468: $3e $20
    rst $18                                       ; $746a: $df

    db $14, $10

    ld a, [$d325]                                 ; $746d: $fa $25 $d3
    sub [hl]                                      ; $7470: $96
    bit 7, a                                      ; $7471: $cb $7f
    jp nz, Jump_03b_74f1                          ; $7473: $c2 $f1 $74

    cp $03                                        ; $7476: $fe $03
    jr c, jr_03b_7488                             ; $7478: $38 $0e

    ld a, $1f                                     ; $747a: $3e $1f
    call Call_03b_76f8                            ; $747c: $cd $f8 $76
    ld de, $0002                                  ; $747f: $11 $02 $00
    rst $18                                       ; $7482: $df
    ld e, d                                       ; $7483: $5a
    ld [bc], a                                    ; $7484: $02
    jp Jump_03b_74fe                              ; $7485: $c3 $fe $74


jr_03b_7488:
    cp $02                                        ; $7488: $fe $02
    jr c, jr_03b_74c0                             ; $748a: $38 $34

    rst $18                                       ; $748c: $df
    inc b                                         ; $748d: $04
    db $10                                        ; $748e: $10
    ld de, $ffdf                                  ; $748f: $11 $df $ff
    add hl, de                                    ; $7492: $19
    bit 7, h                                      ; $7493: $cb $7c
    jr z, jr_03b_74a5                             ; $7495: $28 $0e

    ld a, $13                                     ; $7497: $3e $13
    call Call_03b_76f8                            ; $7499: $cd $f8 $76
    ld de, $0002                                  ; $749c: $11 $02 $00
    rst $18                                       ; $749f: $df
    ld e, d                                       ; $74a0: $5a
    ld [bc], a                                    ; $74a1: $02
    jp Jump_03b_74fe                              ; $74a2: $c3 $fe $74


jr_03b_74a5:
    ld a, [$d329]                                 ; $74a5: $fa $29 $d3
    cp $0d                                        ; $74a8: $fe $0d
    jr z, jr_03b_74b3                             ; $74aa: $28 $07

    ld a, [$d32a]                                 ; $74ac: $fa $2a $d3
    cp $02                                        ; $74af: $fe $02
    jr c, jr_03b_74e9                             ; $74b1: $38 $36

jr_03b_74b3:
    rst $18                                       ; $74b3: $df
    inc b                                         ; $74b4: $04
    db $10                                        ; $74b5: $10
    ld de, $ffcb                                  ; $74b6: $11 $cb $ff
    add hl, de                                    ; $74b9: $19
    bit 7, h                                      ; $74ba: $cb $7c
    jr z, jr_03b_74e9                             ; $74bc: $28 $2b

    jr jr_03b_74e1                                ; $74be: $18 $21

jr_03b_74c0:
    cp $01                                        ; $74c0: $fe $01
    jr c, jr_03b_74df                             ; $74c2: $38 $1b

    ld a, [$d329]                                 ; $74c4: $fa $29 $d3
    cp $0d                                        ; $74c7: $fe $0d
    jr z, jr_03b_74d2                             ; $74c9: $28 $07

    ld a, [$d32a]                                 ; $74cb: $fa $2a $d3
    cp $02                                        ; $74ce: $fe $02
    jr c, jr_03b_74e9                             ; $74d0: $38 $17

jr_03b_74d2:
    rst $18                                       ; $74d2: $df

    db $04, $10

    ld de, $ffcb                                  ; $74d5: $11 $cb $ff
    add hl, de                                    ; $74d8: $19
    bit 7, h                                      ; $74d9: $cb $7c
    jr z, jr_03b_74e9                             ; $74db: $28 $0c

    jr jr_03b_74e1                                ; $74dd: $18 $02

jr_03b_74df:
    jr jr_03b_74f1                                ; $74df: $18 $10

jr_03b_74e1:
    ld a, $0b                                     ; $74e1: $3e $0b
    call Call_03b_76f8                            ; $74e3: $cd $f8 $76
    jp Jump_03b_74fe                              ; $74e6: $c3 $fe $74


jr_03b_74e9:
    ld a, $0a                                     ; $74e9: $3e $0a
    call Call_03b_76f8                            ; $74eb: $cd $f8 $76
    jp Jump_03b_74fe                              ; $74ee: $c3 $fe $74


Jump_03b_74f1:
jr_03b_74f1:
    ld hl, $d485                                  ; $74f1: $21 $85 $d4
    res 3, [hl]                                   ; $74f4: $cb $9e
    ld a, $24                                     ; $74f6: $3e $24
    call Call_03b_76f8                            ; $74f8: $cd $f8 $76
    jp Jump_03b_74fe                              ; $74fb: $c3 $fe $74


Jump_03b_74fe:
    xor a                                         ; $74fe: $af
    ret                                           ; $74ff: $c9


Jump_03b_7500:
    rst $18                                       ; $7500: $df

    db $38, $10

    ld de, $fec0                                  ; $7503: $11 $c0 $fe
    add hl, de                                    ; $7506: $19
    bit 7, h                                      ; $7507: $cb $7c
    jr nz, jr_03b_751d                            ; $7509: $20 $12

    rst $18                                       ; $750b: $df
    inc b                                         ; $750c: $04
    db $10                                        ; $750d: $10
    ld de, $ffdf                                  ; $750e: $11 $df $ff
    add hl, de                                    ; $7511: $19
    bit 7, h                                      ; $7512: $cb $7c
    jr z, jr_03b_751d                             ; $7514: $28 $07

    ld a, $09                                     ; $7516: $3e $09
    call Call_03b_76f8                            ; $7518: $cd $f8 $76
    xor a                                         ; $751b: $af
    ret                                           ; $751c: $c9


jr_03b_751d:
    ld hl, $d485                                  ; $751d: $21 $85 $d4
    res 3, [hl]                                   ; $7520: $cb $9e
    ld a, $24                                     ; $7522: $3e $24
    call Call_03b_76f8                            ; $7524: $cd $f8 $76
    xor a                                         ; $7527: $af
    ret                                           ; $7528: $c9


    call Call_000_2ed5                            ; $7529: $cd $d5 $2e
    ld e, $fa                                     ; $752c: $1e $fa
    ld b, [hl]                                    ; $752e: $46
    call nc, Call_000_02c6                        ; $752f: $d4 $c6 $02
    ld c, $10                                     ; $7532: $0e $10
    ld de, $5034                                  ; $7534: $11 $34 $50
    rst $18                                       ; $7537: $df
    inc b                                         ; $7538: $04
    ld c, a                                       ; $7539: $4f
    ld a, $0d                                     ; $753a: $3e $0d
    call Call_03b_76f8                            ; $753c: $cd $f8 $76
    xor a                                         ; $753f: $af
    ret                                           ; $7540: $c9


    ld a, [$d446]                                 ; $7541: $fa $46 $d4
    add $05                                       ; $7544: $c6 $05
    ld c, $10                                     ; $7546: $0e $10
    ld de, $5034                                  ; $7548: $11 $34 $50
    rst $18                                       ; $754b: $df

    db $04, $4f

    ld a, $0e                                     ; $754e: $3e $0e
    call Call_03b_76f8                            ; $7550: $cd $f8 $76
    xor a                                         ; $7553: $af
    ret                                           ; $7554: $c9


    ld hl, $d485                                  ; $7555: $21 $85 $d4
    res 3, [hl]                                   ; $7558: $cb $9e
    ld a, $05                                     ; $755a: $3e $05
    ld c, $10                                     ; $755c: $0e $10
    ld de, $5034                                  ; $755e: $11 $34 $50
    rst $18                                       ; $7561: $df
    inc b                                         ; $7562: $04
    ld c, a                                       ; $7563: $4f
    ld a, $0f                                     ; $7564: $3e $0f
    call Call_03b_76f8                            ; $7566: $cd $f8 $76
    xor a                                         ; $7569: $af
    ret                                           ; $756a: $c9


    ld a, [$d446]                                 ; $756b: $fa $46 $d4
    add $08                                       ; $756e: $c6 $08
    ld c, $10                                     ; $7570: $0e $10
    ld de, $5034                                  ; $7572: $11 $34 $50
    rst $18                                       ; $7575: $df

    db $04, $4f

    ld a, $10                                     ; $7578: $3e $10
    call Call_03b_76f8                            ; $757a: $cd $f8 $76
    xor a                                         ; $757d: $af
    ret                                           ; $757e: $c9


    ld a, $06                                     ; $757f: $3e $06
    ld c, $10                                     ; $7581: $0e $10
    ld de, $5034                                  ; $7583: $11 $34 $50
    rst $18                                       ; $7586: $df

    db $04, $4f

    ld a, $12                                     ; $7589: $3e $12
    call Call_03b_76f8                            ; $758b: $cd $f8 $76
    xor a                                         ; $758e: $af
    ret                                           ; $758f: $c9


    ld a, $0a                                     ; $7590: $3e $0a
    ld c, $10                                     ; $7592: $0e $10
    ld de, $5034                                  ; $7594: $11 $34 $50
    rst $18                                       ; $7597: $df
    inc b                                         ; $7598: $04
    ld c, a                                       ; $7599: $4f
    ld a, $11                                     ; $759a: $3e $11
    call Call_03b_76f8                            ; $759c: $cd $f8 $76
    xor a                                         ; $759f: $af
    ret                                           ; $75a0: $c9


    ld a, $0a                                     ; $75a1: $3e $0a
    ld c, $10                                     ; $75a3: $0e $10
    ld de, $5034                                  ; $75a5: $11 $34 $50
    rst $18                                       ; $75a8: $df
    inc b                                         ; $75a9: $04
    ld c, a                                       ; $75aa: $4f
    ld a, $2b                                     ; $75ab: $3e $2b
    call Call_03b_76f8                            ; $75ad: $cd $f8 $76
    xor a                                         ; $75b0: $af
    ret                                           ; $75b1: $c9


    call Call_000_2ed5                            ; $75b2: $cd $d5 $2e
    ld e, $fa                                     ; $75b5: $1e $fa
    ld b, [hl]                                    ; $75b7: $46
    call nc, Call_000_0bc6                        ; $75b8: $d4 $c6 $0b
    ld c, $10                                     ; $75bb: $0e $10
    ld de, $5034                                  ; $75bd: $11 $34 $50
    rst $18                                       ; $75c0: $df
    inc b                                         ; $75c1: $04
    ld c, a                                       ; $75c2: $4f
    ld a, $25                                     ; $75c3: $3e $25
    call Call_03b_76f8                            ; $75c5: $cd $f8 $76
    xor a                                         ; $75c8: $af
    ret                                           ; $75c9: $c9


    xor a                                         ; $75ca: $af
    ret                                           ; $75cb: $c9


Jump_03b_75cc:
    xor a                                         ; $75cc: $af
    ret                                           ; $75cd: $c9


Jump_03b_75ce:
    ld a, b                                       ; $75ce: $78
    cp $80                                        ; $75cf: $fe $80
    jr z, jr_03b_7602                             ; $75d1: $28 $2f

    and $0f                                       ; $75d3: $e6 $0f
    add a                                         ; $75d5: $87
    ld hl, $75e2                                  ; $75d6: $21 $e2 $75
    add l                                         ; $75d9: $85
    ld l, a                                       ; $75da: $6f
    jr nc, jr_03b_75de                            ; $75db: $30 $01

    inc h                                         ; $75dd: $24

jr_03b_75de:
    ld a, [hl+]                                   ; $75de: $2a
    ld h, [hl]                                    ; $75df: $66
    ld l, a                                       ; $75e0: $6f
    jp hl                                         ; $75e1: $e9


    ld b, c                                       ; $75e2: $41
    ld [hl], l                                    ; $75e3: $75
    ld l, e                                       ; $75e4: $6b
    ld [hl], l                                    ; $75e5: $75
    add hl, hl                                    ; $75e6: $29
    ld [hl], l                                    ; $75e7: $75
    ld h, $74                                     ; $75e8: $26 $74
    jp z, $9075                                   ; $75ea: $ca $75 $90

    ld [hl], l                                    ; $75ed: $75
    add hl, sp                                    ; $75ee: $39
    halt                                          ; $75ef: $76
    ld de, $ca74                                  ; $75f0: $11 $74 $ca
    ld [hl], l                                    ; $75f3: $75
    ld a, a                                       ; $75f4: $7f
    ld [hl], l                                    ; $75f5: $75
    ld d, l                                       ; $75f6: $55
    ld [hl], l                                    ; $75f7: $75
    jp z, $a175                                   ; $75f8: $ca $75 $a1

    ld [hl], l                                    ; $75fb: $75
    or d                                          ; $75fc: $b2
    ld [hl], l                                    ; $75fd: $75

Call_03b_75fe:
    ld b, c                                       ; $75fe: $41
    ld [hl], l                                    ; $75ff: $75
    ld l, e                                       ; $7600: $6b
    ld [hl], l                                    ; $7601: $75

jr_03b_7602:
    push hl                                       ; $7602: $e5
    ld a, $20                                     ; $7603: $3e $20
    rst $18                                       ; $7605: $df
    inc d                                         ; $7606: $14
    db $10                                        ; $7607: $10
    ld a, [hl]                                    ; $7608: $7e
    pop hl                                        ; $7609: $e1
    cp $01                                        ; $760a: $fe $01
    jr nz, jr_03b_7628                            ; $760c: $20 $1a

    ld b, $03                                     ; $760e: $06 $03
    rst $18                                       ; $7610: $df
    inc l                                         ; $7611: $2c
    ld [bc], a                                    ; $7612: $02
    rst $08                                       ; $7613: $cf
    dec de                                        ; $7614: $1b
    ld a, $00                                     ; $7615: $3e $00
    call Call_03b_7717                            ; $7617: $cd $17 $77
    rst $18                                       ; $761a: $df
    ld c, b                                       ; $761b: $48
    ld [bc], a                                    ; $761c: $02
    ld de, $0014                                  ; $761d: $11 $14 $00
    rst $18                                       ; $7620: $df
    ld d, d                                       ; $7621: $52
    ld [bc], a                                    ; $7622: $02
    call Call_03b_773f                            ; $7623: $cd $3f $77
    xor a                                         ; $7626: $af
    ret                                           ; $7627: $c9


jr_03b_7628:
    rst $08                                       ; $7628: $cf
    dec e                                         ; $7629: $1d
    ld a, $04                                     ; $762a: $3e $04
    call Call_03b_7717                            ; $762c: $cd $17 $77
    ld a, $18                                     ; $762f: $3e $18
    call Call_03b_76f8                            ; $7631: $cd $f8 $76
    call Call_03b_773f                            ; $7634: $cd $3f $77
    xor a                                         ; $7637: $af
    ret                                           ; $7638: $c9


    ld a, $2b                                     ; $7639: $3e $2b
    rst $18                                       ; $763b: $df
    inc d                                         ; $763c: $14
    db $10                                        ; $763d: $10
    ld a, [hl]                                    ; $763e: $7e
    or a                                          ; $763f: $b7
    jp nz, Jump_03b_7684                          ; $7640: $c2 $84 $76

    ld [hl], $01                                  ; $7643: $36 $01
    ld a, [$d48e]                                 ; $7645: $fa $8e $d4
    bit 1, a                                      ; $7648: $cb $4f
    jr z, jr_03b_7654                             ; $764a: $28 $08

    ld a, $1b                                     ; $764c: $3e $1b
    call Call_03b_76f8                            ; $764e: $cd $f8 $76
    jp Jump_03b_7682                              ; $7651: $c3 $82 $76


jr_03b_7654:
    ld a, [$d329]                                 ; $7654: $fa $29 $d3
    cp $0d                                        ; $7657: $fe $0d
    jr z, jr_03b_7662                             ; $7659: $28 $07

    ld a, [$d32a]                                 ; $765b: $fa $2a $d3
    cp $02                                        ; $765e: $fe $02
    jr c, jr_03b_7675                             ; $7660: $38 $13

jr_03b_7662:
    rst $18                                       ; $7662: $df
    inc b                                         ; $7663: $04
    db $10                                        ; $7664: $10
    ld de, $ffcb                                  ; $7665: $11 $cb $ff
    add hl, de                                    ; $7668: $19
    bit 7, h                                      ; $7669: $cb $7c
    jr z, jr_03b_7675                             ; $766b: $28 $08

    ld a, $0b                                     ; $766d: $3e $0b
    call Call_03b_76f8                            ; $766f: $cd $f8 $76
    jp Jump_03b_7682                              ; $7672: $c3 $82 $76


jr_03b_7675:
    ld a, $0a                                     ; $7675: $3e $0a
    call Call_03b_76f8                            ; $7677: $cd $f8 $76
    jp Jump_03b_7682                              ; $767a: $c3 $82 $76


    ld a, $24                                     ; $767d: $3e $24
    call Call_03b_76f8                            ; $767f: $cd $f8 $76

Jump_03b_7682:
    xor a                                         ; $7682: $af
    ret                                           ; $7683: $c9


Jump_03b_7684:
    rst $18                                       ; $7684: $df
    jr c, @+$12                                   ; $7685: $38 $10

    ld de, $fec0                                  ; $7687: $11 $c0 $fe
    add hl, de                                    ; $768a: $19
    bit 7, h                                      ; $768b: $cb $7c
    jr nz, jr_03b_76a1                            ; $768d: $20 $12

    rst $18                                       ; $768f: $df
    inc b                                         ; $7690: $04
    db $10                                        ; $7691: $10
    ld de, $ffdf                                  ; $7692: $11 $df $ff
    add hl, de                                    ; $7695: $19
    bit 7, h                                      ; $7696: $cb $7c
    jr z, jr_03b_76a1                             ; $7698: $28 $07

    ld a, $09                                     ; $769a: $3e $09
    call Call_03b_76f8                            ; $769c: $cd $f8 $76
    xor a                                         ; $769f: $af
    ret                                           ; $76a0: $c9


jr_03b_76a1:
    ld a, $24                                     ; $76a1: $3e $24
    call Call_03b_76f8                            ; $76a3: $cd $f8 $76
    xor a                                         ; $76a6: $af
    ret                                           ; $76a7: $c9


Jump_03b_76a8:
    ld a, b                                       ; $76a8: $78
    cp $80                                        ; $76a9: $fe $80
    jr z, jr_03b_76af                             ; $76ab: $28 $02

    xor a                                         ; $76ad: $af
    ret                                           ; $76ae: $c9


jr_03b_76af:
    rst $08                                       ; $76af: $cf
    dec e                                         ; $76b0: $1d
    ld a, $04                                     ; $76b1: $3e $04
    call Call_03b_7717                            ; $76b3: $cd $17 $77
    ld a, $18                                     ; $76b6: $3e $18
    call Call_03b_76f8                            ; $76b8: $cd $f8 $76
    call Call_03b_773f                            ; $76bb: $cd $3f $77
    xor a                                         ; $76be: $af
    ret                                           ; $76bf: $c9


Jump_03b_76c0:
    ld a, b                                       ; $76c0: $78
    cp $80                                        ; $76c1: $fe $80
    jr z, jr_03b_76c7                             ; $76c3: $28 $02

    xor a                                         ; $76c5: $af
    ret                                           ; $76c6: $c9


jr_03b_76c7:
    rst $08                                       ; $76c7: $cf

    db $1d

    ld a, $04                                     ; $76c9: $3e $04
    call Call_03b_7717                            ; $76cb: $cd $17 $77
    ld a, $21                                     ; $76ce: $3e $21
    call Call_03b_76f8                            ; $76d0: $cd $f8 $76
    call Call_03b_773f                            ; $76d3: $cd $3f $77
    xor a                                         ; $76d6: $af
    ret                                           ; $76d7: $c9


    ld a, [$d443]                                 ; $76d8: $fa $43 $d4
    or a                                          ; $76db: $b7
    jr nz, jr_03b_76e3                            ; $76dc: $20 $05

    ld a, $01                                     ; $76de: $3e $01
    rst $18                                       ; $76e0: $df
    nop                                           ; $76e1: $00
    inc de                                        ; $76e2: $13

jr_03b_76e3:
    ld a, $ff                                     ; $76e3: $3e $ff
    ld [$d443], a                                 ; $76e5: $ea $43 $d4
    rst $08                                       ; $76e8: $cf
    rra                                           ; $76e9: $1f
    ld a, $05                                     ; $76ea: $3e $05
    call Call_03b_7717                            ; $76ec: $cd $17 $77
    ld a, $19                                     ; $76ef: $3e $19
    call Call_03b_76f8                            ; $76f1: $cd $f8 $76
    call Call_03b_773f                            ; $76f4: $cd $3f $77
    ret                                           ; $76f7: $c9


Call_03b_76f8:
    call Call_000_2e3b                            ; $76f8: $cd $3b $2e
    ld d, a                                       ; $76fb: $57
    ld a, [$d485]                                 ; $76fc: $fa $85 $d4
    push af                                       ; $76ff: $f5
    and $ed                                       ; $7700: $e6 $ed
    ld [$d485], a                                 ; $7702: $ea $85 $d4
    ld a, d                                       ; $7705: $7a
    call Call_03b_4339                            ; $7706: $cd $39 $43
    call Call_03b_4310                            ; $7709: $cd $10 $43
    rst $18                                       ; $770c: $df

    db $06, $4f

    call Call_000_2e3b                            ; $770f: $cd $3b $2e
    pop af                                        ; $7712: $f1
    ld [$d485], a                                 ; $7713: $ea $85 $d4
    ret                                           ; $7716: $c9


Call_03b_7717:
    push af                                       ; $7717: $f5
    push bc                                       ; $7718: $c5
    push de                                       ; $7719: $d5
    push hl                                       ; $771a: $e5
    ld b, a                                       ; $771b: $47
    ld a, $06                                     ; $771c: $3e $06
    ldh [$96], a                                  ; $771e: $e0 $96
    ldh [rSVBK], a                                ; $7720: $e0 $70
    ld a, $f0                                     ; $7722: $3e $f0
    ld [$d34d], a                                 ; $7724: $ea $4d $d3
    ld a, $10                                     ; $7727: $3e $10
    rst $18                                       ; $7729: $df

    db $14, $10

    ld c, [hl]                                    ; $772c: $4e
    ld a, $19                                     ; $772d: $3e $19
    rst $18                                       ; $772f: $df

    db $14, $10

    ld a, [hl]                                    ; $7732: $7e
    and $10                                       ; $7733: $e6 $10
    or c                                          ; $7735: $b1
    ld c, a                                       ; $7736: $4f
    rst $18                                       ; $7737: $df

    db $06, $77

    pop hl                                        ; $773a: $e1
    pop de                                        ; $773b: $d1
    pop bc                                        ; $773c: $c1
    pop af                                        ; $773d: $f1
    ret                                           ; $773e: $c9


Call_03b_773f:
    push af                                       ; $773f: $f5
    ldh a, [$96]                                  ; $7740: $f0 $96
    push af                                       ; $7742: $f5
    ld a, $06                                     ; $7743: $3e $06
    ldh [$96], a                                  ; $7745: $e0 $96
    ldh [rSVBK], a                                ; $7747: $e0 $70

jr_03b_7749:
    call Call_000_2e3b                            ; $7749: $cd $3b $2e
    ld a, [$d34d]                                 ; $774c: $fa $4d $d3
    or a                                          ; $774f: $b7
    jr z, jr_03b_775c                             ; $7750: $28 $0a

    ldh a, [$94]                                  ; $7752: $f0 $94
    and $03                                       ; $7754: $e6 $03
    jr z, jr_03b_7749                             ; $7756: $28 $f1

    xor a                                         ; $7758: $af
    ld [$d34d], a                                 ; $7759: $ea $4d $d3

jr_03b_775c:
    call Call_000_2e3b                            ; $775c: $cd $3b $2e
    pop af                                        ; $775f: $f1
    ldh [$96], a                                  ; $7760: $e0 $96
    ldh [rSVBK], a                                ; $7762: $e0 $70
    pop af                                        ; $7764: $f1
    ret                                           ; $7765: $c9


    ld hl, $7858                                  ; $7766: $21 $58 $78
    call Call_000_2449                            ; $7769: $cd $49 $24
    ret                                           ; $776c: $c9


    ld hl, $7850                                  ; $776d: $21 $50 $78
    ld de, $0b01                                  ; $7770: $11 $01 $0b
    call Call_000_056c                            ; $7773: $cd $6c $05
    ld hl, $7790                                  ; $7776: $21 $90 $77
    ld de, $8c00                                  ; $7779: $11 $00 $8c
    ld c, $0c                                     ; $777c: $0e $0c
    call Call_000_0468                            ; $777e: $cd $68 $04
    ld a, $10                                     ; $7781: $3e $10
    ld hl, $7858                                  ; $7783: $21 $58 $78
    call Call_000_23e8                            ; $7786: $cd $e8 $23
    ret                                           ; $7789: $c9


    nop                                           ; $778a: $00
    nop                                           ; $778b: $00
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    ld a, b                                       ; $7790: $78
    ld a, b                                       ; $7791: $78
    xor $9e                                       ; $7792: $ee $9e
    ld a, [$fa86]                                 ; $7794: $fa $86 $fa
    add [hl]                                      ; $7797: $86
    ld [$da96], a                                 ; $7798: $ea $96 $da
    or [hl]                                       ; $779b: $b6
    db $db                                        ; $779c: $db
    or a                                          ; $779d: $b7
    db $db                                        ; $779e: $db
    or [hl]                                       ; $779f: $b6
    ei                                            ; $77a0: $fb
    add [hl]                                      ; $77a1: $86
    rst $30                                       ; $77a2: $f7
    adc [hl]                                      ; $77a3: $8e
    db $db                                        ; $77a4: $db
    or [hl]                                       ; $77a5: $b6
    db $db                                        ; $77a6: $db
    or [hl]                                       ; $77a7: $b6
    db $db                                        ; $77a8: $db
    or [hl]                                       ; $77a9: $b6
    sub d                                         ; $77aa: $92
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    ld l, l                                       ; $77ae: $6d
    ld l, l                                       ; $77af: $6d
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
    rst $28                                       ; $77bc: $ef
    rst $28                                       ; $77bd: $ef
    ei                                            ; $77be: $fb
    or [hl]                                       ; $77bf: $b6
    ei                                            ; $77c0: $fb
    or [hl]                                       ; $77c1: $b6
    ei                                            ; $77c2: $fb
    or [hl]                                       ; $77c3: $b6
    ei                                            ; $77c4: $fb
    and [hl]                                      ; $77c5: $a6
    ei                                            ; $77c6: $fb
    add [hl]                                      ; $77c7: $86
    rst $30                                       ; $77c8: $f7
    adc $ee                                       ; $77c9: $ce $ee
    rst $38                                       ; $77cb: $ff
    cp a                                          ; $77cc: $bf
    cp a                                          ; $77cd: $bf
    add hl, de                                    ; $77ce: $19
    add hl, de                                    ; $77cf: $19
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    ld bc, $0301                                  ; $77d6: $01 $01 $03
    ld [bc], a                                    ; $77d9: $02
    xor $ef                                       ; $77da: $ee $ef
    cp e                                          ; $77dc: $bb
    ld [hl], a                                    ; $77dd: $77
    jp c, $da36                                   ; $77de: $da $36 $da

    or [hl]                                       ; $77e1: $b6
    jp c, $dab6                                   ; $77e2: $da $b6 $da

    ld [hl], $db                                  ; $77e5: $36 $db
    scf                                           ; $77e7: $37
    db $db                                        ; $77e8: $db
    or a                                          ; $77e9: $b7
    sbc a                                         ; $77ea: $9f
    ldh a, [rIE]                                  ; $77eb: $f0 $ff
    rst $38                                       ; $77ed: $ff
    ld l, a                                       ; $77ee: $6f
    ld l, a                                       ; $77ef: $6f
    nop                                           ; $77f0: $00
    nop                                           ; $77f1: $00
    rrca                                          ; $77f2: $0f
    rrca                                          ; $77f3: $0f
    rst $18                                       ; $77f4: $df
    ret nc                                        ; $77f5: $d0

    call c, Call_03b_5d53                         ; $77f6: $dc $53 $5d
    db $db                                        ; $77f9: $db
    db $fd                                        ; $77fa: $fd
    ei                                            ; $77fb: $fb
    db $ed                                        ; $77fc: $ed
    sbc e                                         ; $77fd: $9b
    db $fd                                        ; $77fe: $fd
    cp e                                          ; $77ff: $bb
    db $dd                                        ; $7800: $dd
    cp e                                          ; $7801: $bb
    db $ed                                        ; $7802: $ed
    db $db                                        ; $7803: $db
    ld a, l                                       ; $7804: $7d
    ld l, e                                       ; $7805: $6b
    db $fd                                        ; $7806: $fd
    db $eb                                        ; $7807: $eb
    db $ed                                        ; $7808: $ed
    sbc e                                         ; $7809: $9b
    adc c                                         ; $780a: $89
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    halt                                          ; $780e: $76
    halt                                          ; $780f: $76
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    ldh [$e0], a                                  ; $7812: $e0 $e0
    and b                                         ; $7814: $a0
    ld h, b                                       ; $7815: $60
    jr nz, @-$1e                                  ; $7816: $20 $e0

    ldh [$e0], a                                  ; $7818: $e0 $e0
    ldh [$e0], a                                  ; $781a: $e0 $e0
    rst $18                                       ; $781c: $df
    rst $18                                       ; $781d: $df
    rst $30                                       ; $781e: $f7
    ld l, h                                       ; $781f: $6c
    rst $30                                       ; $7820: $f7
    ld l, l                                       ; $7821: $6d
    rst $30                                       ; $7822: $f7
    ld l, l                                       ; $7823: $6d
    rst $30                                       ; $7824: $f7
    ld l, h                                       ; $7825: $6c
    rst $30                                       ; $7826: $f7
    ld l, h                                       ; $7827: $6c
    ld [hl], a                                    ; $7828: $77
    adc l                                         ; $7829: $8d
    add l                                         ; $782a: $85
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    ld a, d                                       ; $782e: $7a
    ld a, d                                       ; $782f: $7a
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
    db $db                                        ; $783c: $db
    db $db                                        ; $783d: $db
    ld l, a                                       ; $783e: $6f
    db $fd                                        ; $783f: $fd
    or a                                          ; $7840: $b7
    ld l, l                                       ; $7841: $6d
    cp e                                          ; $7842: $bb
    ld h, l                                       ; $7843: $65
    cp a                                          ; $7844: $bf
    ld h, c                                       ; $7845: $61
    ld [hl], a                                    ; $7846: $77
    jp hl                                         ; $7847: $e9


    cp e                                          ; $7848: $bb
    ld l, l                                       ; $7849: $6d
    dec l                                         ; $784a: $2d
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    db $db                                        ; $784e: $db
    db $db                                        ; $784f: $db
    nop                                           ; $7850: $00
    ld d, a                                       ; $7851: $57
    rst $38                                       ; $7852: $ff
    inc bc                                        ; $7853: $03
    rst $38                                       ; $7854: $ff
    ld bc, $0000                                  ; $7855: $01 $00 $00
    ldh a, [$8c]                                  ; $7858: $f0 $8c
    and $0f                                       ; $785a: $e6 $0f
    cp $06                                        ; $785c: $fe $06
    jr nc, jr_03b_7861                            ; $785e: $30 $01

    ret                                           ; $7860: $c9


jr_03b_7861:
    ld hl, $786e                                  ; $7861: $21 $6e $78
    ld de, $0040                                  ; $7864: $11 $40 $00
    ld bc, $03c0                                  ; $7867: $01 $c0 $03
    call Call_000_26ea                            ; $786a: $cd $ea $26
    ret                                           ; $786d: $c9


    ld b, b                                       ; $786e: $40
    ld b, b                                       ; $786f: $40
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    ld b, b                                       ; $7872: $40
    ld c, b                                       ; $7873: $48
    ld [bc], a                                    ; $7874: $02
    nop                                           ; $7875: $00
    ld b, b                                       ; $7876: $40
    ld d, b                                       ; $7877: $50
    inc b                                         ; $7878: $04
    nop                                           ; $7879: $00
    ld b, b                                       ; $787a: $40
    ld e, b                                       ; $787b: $58
    ld b, $00                                     ; $787c: $06 $00
    ld b, b                                       ; $787e: $40
    ld h, b                                       ; $787f: $60
    ld [$4000], sp                                ; $7880: $08 $00 $40
    ld l, b                                       ; $7883: $68
    ld a, [bc]                                    ; $7884: $0a
    nop                                           ; $7885: $00
    add b                                         ; $7886: $80
    rst $38                                       ; $7887: $ff
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
    rst $38                                       ; $7898: $ff
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
    rst $38                                       ; $78a9: $ff
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
    rst $38                                       ; $78ba: $ff
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
    rst $38                                       ; $78cb: $ff
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
    rst $38                                       ; $78dc: $ff
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
    rst $38                                       ; $7903: $ff
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
    rst $38                                       ; $7918: $ff
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
    rst $38                                       ; $7929: $ff
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
    rst $38                                       ; $793a: $ff
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
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
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
    rst $38                                       ; $795f: $ff
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
    rst $38                                       ; $7970: $ff
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
    rst $38                                       ; $7981: $ff
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
    rst $38                                       ; $7992: $ff
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
    rst $38                                       ; $79a3: $ff
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
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff

Call_03b_79b6:
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
    rst $38                                       ; $79c5: $ff
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
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
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
    rst $38                                       ; $7a1e: $ff
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
    rst $38                                       ; $7a2f: $ff
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
    rst $38                                       ; $7a40: $ff
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
    rst $38                                       ; $7a51: $ff
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
    rst $38                                       ; $7a62: $ff
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
    rst $38                                       ; $7a73: $ff
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
    rst $38                                       ; $7a84: $ff
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
    rst $38                                       ; $7a95: $ff
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
    rst $38                                       ; $7aa6: $ff
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
    rst $38                                       ; $7ab7: $ff
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
    rst $38                                       ; $7ae2: $ff
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
    rst $38                                       ; $7af3: $ff
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
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    rst $38                                       ; $7b22: $ff
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
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

Call_03b_7d45:
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

Call_03b_7dfb:
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

Call_03b_7fb3:
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

Call_03b_7fff:
    rst $38                                       ; $7fff: $ff
