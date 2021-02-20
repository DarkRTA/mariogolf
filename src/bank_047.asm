; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $047", ROMX[$4000], BANK[$47]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    rst $28                                       ; $4002: $ef
    ld b, l                                       ; $4003: $45
    rst $38                                       ; $4004: $ff
    ld a, a                                       ; $4005: $7f
    rst $38                                       ; $4006: $ff
    ld bc, $0000                                  ; $4007: $01 $00 $00
    ccf                                           ; $400a: $3f
    ld b, a                                       ; $400b: $47
    nop                                           ; $400c: $00
    ld c, e                                       ; $400d: $4b
    rst $38                                       ; $400e: $ff
    ld a, a                                       ; $400f: $7f
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    rst $38                                       ; $4012: $ff
    inc de                                        ; $4013: $13
    nop                                           ; $4014: $00
    ld c, e                                       ; $4015: $4b
    rst $38                                       ; $4016: $ff
    ld bc, $0000                                  ; $4017: $01 $00 $00
    adc $00                                       ; $401a: $ce $00
    ccf                                           ; $401c: $3f
    ld b, a                                       ; $401d: $47
    nop                                           ; $401e: $00
    ld c, e                                       ; $401f: $4b
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    rst $38                                       ; $4022: $ff
    ld a, a                                       ; $4023: $7f
    adc $00                                       ; $4024: $ce $00
    rst $38                                       ; $4026: $ff
    inc de                                        ; $4027: $13
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    ccf                                           ; $402a: $3f
    ld b, a                                       ; $402b: $47
    rst $38                                       ; $402c: $ff
    ld bc, $13ff                                  ; $402d: $01 $ff $13
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    ccf                                           ; $4032: $3f
    ld b, a                                       ; $4033: $47
    rst $38                                       ; $4034: $ff
    ld bc, $4b00                                  ; $4035: $01 $00 $4b
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    rst $38                                       ; $403a: $ff
    ld bc, $00ce                                  ; $403b: $01 $ce $00
    nop                                           ; $403e: $00
    ld c, e                                       ; $403f: $4b
    ei                                            ; $4040: $fb
    nop                                           ; $4041: $00
    rst $38                                       ; $4042: $ff
    cp $f4                                        ; $4043: $fe $f4
    ldh a, [rIF]                                  ; $4045: $f0 $0f
    rst $28                                       ; $4047: $ef
    dec e                                         ; $4048: $1d
    db $dd                                        ; $4049: $dd
    ei                                            ; $404a: $fb
    dec sp                                        ; $404b: $3b
    cp e                                          ; $404c: $bb
    ldh [$e6], a                                  ; $404d: $e0 $e6

jr_047_404f:
    ld a, a                                       ; $404f: $7f
    add b                                         ; $4050: $80
    cp a                                          ; $4051: $bf
    ret nz                                        ; $4052: $c0

    rst $18                                       ; $4053: $df
    rst $30                                       ; $4054: $f7
    ldh [$ef], a                                  ; $4055: $e0 $ef
    rst $38                                       ; $4057: $ff
    rst $38                                       ; $4058: $ff
    and $fc                                       ; $4059: $e6 $fc
    db $fc                                        ; $405b: $fc
    ei                                            ; $405c: $fb
    ld hl, sp-$05                                 ; $405d: $f8 $fb
    or $f1                                        ; $405f: $f6 $f1
    ld hl, sp-$1f                                 ; $4061: $f8 $e1
    ld a, [c]                                     ; $4063: $f2
    ldh a, [$ce]                                  ; $4064: $f0 $ce
    ret nz                                        ; $4066: $c0

    ld a, $7f                                     ; $4067: $3e $7f
    nop                                           ; $4069: $00
    cp [hl]                                       ; $406a: $be
    ld b, b                                       ; $406b: $40
    ld a, l                                       ; $406c: $7d
    add b                                         ; $406d: $80
    ld l, a                                       ; $406e: $6f
    sub b                                         ; $406f: $90
    ldh [$e3], a                                  ; $4070: $e0 $e3
    rst $38                                       ; $4072: $ff
    ldh a, [$f0]                                  ; $4073: $f0 $f0
    adc a                                         ; $4075: $8f
    add b                                         ; $4076: $80

jr_047_4077:
    ld a, e                                       ; $4077: $7b
    inc b                                         ; $4078: $04
    rst $20                                       ; $4079: $e7
    jr jr_047_4077                                ; $407a: $18 $fb

    rst $00                                       ; $407c: $c7
    jr c, jr_047_404f                             ; $407d: $38 $d0

    db $e3                                        ; $407f: $e3
    rlca                                          ; $4080: $07
    rlca                                          ; $4081: $07
    rst $28                                       ; $4082: $ef
    rrca                                          ; $4083: $0f
    rst $18                                       ; $4084: $df
    di                                            ; $4085: $f3
    rra                                           ; $4086: $1f
    ldh [$93], a                                  ; $4087: $e0 $93
    pop hl                                        ; $4089: $e1
    rst $38                                       ; $408a: $ff
    add sp, $7f                                   ; $408b: $e8 $7f
    ld a, a                                       ; $408d: $7f
    adc a                                         ; $408e: $8f
    rrca                                          ; $408f: $0f
    ld hl, sp-$10                                 ; $4090: $f8 $f0

jr_047_4092:
    jp hl                                         ; $4092: $e9


    and h                                         ; $4093: $a4
    pop hl                                        ; $4094: $e1
    ld [hl], b                                    ; $4095: $70
    ldh [$fe], a                                  ; $4096: $e0 $fe
    ld bc, $01fd                                  ; $4098: $01 $fd $01
    db $fd                                        ; $409b: $fd
    ei                                            ; $409c: $fb
    inc bc                                        ; $409d: $03
    ei                                            ; $409e: $fb
    cp $e3                                        ; $409f: $fe $e3
    ld b, $71                                     ; $40a1: $06 $71
    dec c                                         ; $40a3: $0d
    ld [c], a                                     ; $40a4: $e2
    ld e, $ff                                     ; $40a5: $1e $ff
    pop bc                                        ; $40a7: $c1
    dec a                                         ; $40a8: $3d
    add d                                         ; $40a9: $82
    ld a, [hl-]                                   ; $40aa: $3a
    add l                                         ; $40ab: $85
    ld [hl], l                                    ; $40ac: $75
    ld a, [bc]                                    ; $40ad: $0a
    ld l, d                                       ; $40ae: $6a
    ld a, a                                       ; $40af: $7f
    dec d                                         ; $40b0: $15
    ld d, h                                       ; $40b1: $54
    dec hl                                        ; $40b2: $2b
    ldh [$ef], a                                  ; $40b3: $e0 $ef
    ldh a, [$f7]                                  ; $40b5: $f0 $f7
    cp $e5                                        ; $40b7: $fe $e5
    rst $38                                       ; $40b9: $ff
    ldh [$ef], a                                  ; $40ba: $e0 $ef
    ldh [$ef], a                                  ; $40bc: $e0 $ef
    db $ec                                        ; $40be: $ec
    db $e3                                        ; $40bf: $e3
    ret c                                         ; $40c0: $d8

    rst $00                                       ; $40c1: $c7
    rst $38                                       ; $40c2: $ff
    pop de                                        ; $40c3: $d1
    adc $a0                                       ; $40c4: $ce $a0
    sbc a                                         ; $40c6: $9f
    add c                                         ; $40c7: $81
    cp [hl]                                       ; $40c8: $be
    ld b, e                                       ; $40c9: $43
    inc a                                         ; $40ca: $3c
    rst $38                                       ; $40cb: $ff
    ld b, a                                       ; $40cc: $47
    jr c, @+$80                                   ; $40cd: $38 $7e

    nop                                           ; $40cf: $00
    rst $18                                       ; $40d0: $df
    jr nz, jr_047_4092                            ; $40d1: $20 $bf

    ld b, b                                       ; $40d3: $40
    ei                                            ; $40d4: $fb
    ld a, a                                       ; $40d5: $7f
    add b                                         ; $40d6: $80
    dec hl                                        ; $40d7: $2b
    pop hl                                        ; $40d8: $e1
    ld hl, sp+$00                                 ; $40d9: $f8 $00
    ret nz                                        ; $40db: $c0

    rlca                                          ; $40dc: $07
    nop                                           ; $40dd: $00
    rst $38                                       ; $40de: $ff
    ccf                                           ; $40df: $3f
    adc h                                         ; $40e0: $8c
    ld [hl], e                                    ; $40e1: $73
    add hl, de                                    ; $40e2: $19
    and $3f                                       ; $40e3: $e6 $3f
    ret nz                                        ; $40e5: $c0

    ld hl, sp-$61                                 ; $40e6: $f8 $9f
    nop                                           ; $40e8: $00
    add b                                         ; $40e9: $80
    rlca                                          ; $40ea: $07
    nop                                           ; $40eb: $00
    ld a, a                                       ; $40ec: $7f
    add c                                         ; $40ed: $81
    ld [c], a                                     ; $40ee: $e2
    rrca                                          ; $40ef: $0f
    ld [c], a                                     ; $40f0: $e2
    ccf                                           ; $40f1: $3f
    rst $38                                       ; $40f2: $ff
    nop                                           ; $40f3: $00
    rrca                                          ; $40f4: $0f
    ret nz                                        ; $40f5: $c0

    inc bc                                        ; $40f6: $03
    ldh a, [rSB]                                  ; $40f7: $f0 $01
    db $fc                                        ; $40f9: $fc
    nop                                           ; $40fa: $00
    rst $08                                       ; $40fb: $cf
    cp $f1                                        ; $40fc: $fe $f1
    ld bc, $fdfe                                  ; $40fe: $01 $fe $fd
    bit 5, b                                      ; $4101: $cb $68
    ld [c], a                                     ; $4103: $e2
    cp a                                          ; $4104: $bf
    ccf                                           ; $4105: $3f
    rst $38                                       ; $4106: $ff
    rst $18                                       ; $4107: $df
    rra                                           ; $4108: $1f
    rst $28                                       ; $4109: $ef
    rrca                                          ; $410a: $0f
    rst $30                                       ; $410b: $f7
    rlca                                          ; $410c: $07
    ei                                            ; $410d: $fb
    inc bc                                        ; $410e: $03
    cp h                                          ; $410f: $bc
    ld a, b                                       ; $4110: $78
    pop hl                                        ; $4111: $e1
    ld [hl], b                                    ; $4112: $70
    pop hl                                        ; $4113: $e1
    ld bc, $00fd                                  ; $4114: $01 $fd $00
    cp $fe                                        ; $4117: $fe $fe
    pop hl                                        ; $4119: $e1
    ld a, a                                       ; $411a: $7f
    rst $38                                       ; $411b: $ff
    ld a, a                                       ; $411c: $7f
    rst $38                                       ; $411d: $ff
    rst $38                                       ; $411e: $ff
    ld hl, sp-$08                                 ; $411f: $f8 $f8
    ldh [$e7], a                                  ; $4121: $e0 $e7
    ret nz                                        ; $4123: $c0

    dec e                                         ; $4124: $1d
    rst $18                                       ; $4125: $df
    cp e                                          ; $4126: $bb
    ldh [$3f], a                                  ; $4127: $e0 $3f
    ret nz                                        ; $4129: $c0

    rst $18                                       ; $412a: $df
    ld hl, sp-$1e                                 ; $412b: $f8 $e2

jr_047_412d:
    pop bc                                        ; $412d: $c1
    db $eb                                        ; $412e: $eb
    db $dd                                        ; $412f: $dd
    jp nz, $fefd                                  ; $4130: $c2 $fd $fe

    rst $38                                       ; $4133: $ff
    ldh [$fc], a                                  ; $4134: $e0 $fc
    db $fd                                        ; $4136: $fd
    db $fc                                        ; $4137: $fc
    db $fd                                        ; $4138: $fd
    ld a, b                                       ; $4139: $78

jr_047_413a:
    ld bc, $60cf                                  ; $413a: $01 $cf $60
    rlca                                          ; $413d: $07
    nop                                           ; $413e: $00
    rra                                           ; $413f: $1f
    add h                                         ; $4140: $84
    db $e3                                        ; $4141: $e3
    sub h                                         ; $4142: $94
    jp $f807                                      ; $4143: $c3 $07 $f8


    rst $28                                       ; $4146: $ef
    inc c                                         ; $4147: $0c
    ldh a, [rNR10]                                ; $4148: $f0 $10
    db $e3                                        ; $414a: $e3
    adc b                                         ; $414b: $88
    jp nz, Jump_000_00fe                          ; $414c: $c2 $fe $00

    ldh a, [$cc]                                  ; $414f: $f0 $cc
    and h                                         ; $4151: $a4
    jp $c27a                                      ; $4152: $c3 $7a $c2


    ret nz                                        ; $4155: $c0

    nop                                           ; $4156: $00
    rst $38                                       ; $4157: $ff
    pop hl                                        ; $4158: $e1
    sbc d                                         ; $4159: $9a
    ldh [rSB], a                                  ; $415a: $e0 $01
    db $fc                                        ; $415c: $fc
    ei                                            ; $415d: $fb
    inc bc                                        ; $415e: $03
    ld hl, sp-$02                                 ; $415f: $f8 $fe
    ldh [$78], a                                  ; $4161: $e0 $78
    inc bc                                        ; $4163: $03
    jr c, jr_047_4167                             ; $4164: $38 $01

    inc c                                         ; $4166: $0c

jr_047_4167:
    add d                                         ; $4167: $82
    ld h, c                                       ; $4168: $61
    call $50fd                                    ; $4169: $cd $fd $50
    ldh [$4e], a                                  ; $416c: $e0 $4e
    ld [$c4b6], a                                 ; $416e: $ea $b6 $c4
    ld c, h                                       ; $4171: $4c
    pop hl                                        ; $4172: $e1
    cp $e1                                        ; $4173: $fe $e1
    ld b, b                                       ; $4175: $40
    rst $38                                       ; $4176: $ff
    ld e, a                                       ; $4177: $5f
    ld b, b                                       ; $4178: $40
    ld e, a                                       ; $4179: $5f
    ld h, b                                       ; $417a: $60
    ld l, a                                       ; $417b: $6f
    jr nz, jr_047_412d                            ; $417c: $20 $af

    jr nz, @+$01                                  ; $417e: $20 $ff

    xor a                                         ; $4180: $af
    jr nc, jr_047_413a                            ; $4181: $30 $b7

    db $10                                        ; $4183: $10
    rst $10                                       ; $4184: $d7
    db $10                                        ; $4185: $10
    rst $10                                       ; $4186: $d7
    nop                                           ; $4187: $00
    rst $18                                       ; $4188: $df
    ld hl, sp+$01                                 ; $4189: $f8 $01
    ld hl, sp+$07                                 ; $418b: $f8 $07

Jump_047_418d:
    ldh a, [$fe]                                  ; $418d: $f0 $fe
    db $e3                                        ; $418f: $e3
    ld bc, $fbf0                                  ; $4190: $01 $f0 $fb
    nop                                           ; $4193: $00
    ldh [rNR11], a                                ; $4194: $e0 $11
    pop bc                                        ; $4196: $c1
    db $fc                                        ; $4197: $fc
    nop                                           ; $4198: $00
    ei                                            ; $4199: $fb
    inc bc                                        ; $419a: $03
    rst $30                                       ; $419b: $f7
    rst $38                                       ; $419c: $ff
    rlca                                          ; $419d: $07
    rst $20                                       ; $419e: $e7
    rlca                                          ; $419f: $07
    rst $00                                       ; $41a0: $c7
    rlca                                          ; $41a1: $07
    rlca                                          ; $41a2: $07
    rlca                                          ; $41a3: $07
    adc $e7                                       ; $41a4: $ce $e7
    ld c, $3e                                     ; $41a6: $0e $3e
    ld a, $54                                     ; $41a8: $3e $54
    pop hl                                        ; $41aa: $e1
    db $fc                                        ; $41ab: $fc
    db $e3                                        ; $41ac: $e3
    db $fc                                        ; $41ad: $fc
    db $fc                                        ; $41ae: $fc
    and b                                         ; $41af: $a0
    ld a, [$e2ff]                                 ; $41b0: $fa $ff $e2
    add b                                         ; $41b3: $80
    rst $38                                       ; $41b4: $ff
    ld [c], a                                     ; $41b5: $e2
    ld bc, $0300                                  ; $41b6: $01 $00 $03
    nop                                           ; $41b9: $00
    ld bc, $6be4                                  ; $41ba: $01 $e4 $6b
    ld [c], a                                     ; $41bd: $e2
    ld h, [hl]                                    ; $41be: $66
    ldh [$78], a                                  ; $41bf: $e0 $78
    adc c                                         ; $41c1: $89
    db $e3                                        ; $41c2: $e3
    jp nz, Jump_000_1fc3                          ; $41c3: $c2 $c3 $1f

    nop                                           ; $41c6: $00
    rlca                                          ; $41c7: $07
    xor $e6                                       ; $41c8: $ee $e6
    pop hl                                        ; $41ca: $e1
    add b                                         ; $41cb: $80
    nop                                           ; $41cc: $00
    ret nz                                        ; $41cd: $c0

    pop bc                                        ; $41ce: $c1
    xor e                                         ; $41cf: $ab
    ccf                                           ; $41d0: $3f
    nop                                           ; $41d1: $00
    rst $18                                       ; $41d2: $df
    db $ed                                        ; $41d3: $ed
    rra                                           ; $41d4: $1f
    cp $e1                                        ; $41d5: $fe $e1
    rst $28                                       ; $41d7: $ef
    rrca                                          ; $41d8: $0f
    cp $e5                                        ; $41d9: $fe $e5
    jr @-$23                                      ; $41db: $18 $db

    jr @+$01                                      ; $41dd: $18 $ff

    db $db                                        ; $41df: $db
    ld [$0ceb], sp                                ; $41e0: $08 $eb $0c
    db $ed                                        ; $41e3: $ed
    inc c                                         ; $41e4: $0c
    db $ed                                        ; $41e5: $ed
    inc b                                         ; $41e6: $04
    rra                                           ; $41e7: $1f
    push af                                       ; $41e8: $f5
    ld b, $f6                                     ; $41e9: $06 $f6
    ld b, $f6                                     ; $41eb: $06 $f6
    sub b                                         ; $41ed: $90
    and h                                         ; $41ee: $a4
    ld a, [de]                                    ; $41ef: $1a
    pop hl                                        ; $41f0: $e1
    xor d                                         ; $41f1: $aa
    jp $c0ff                                      ; $41f2: $c3 $ff $c0


    db $10                                        ; $41f5: $10
    sub b                                         ; $41f6: $90
    ld d, b                                       ; $41f7: $50
    ld d, b                                       ; $41f8: $50
    ret nc                                        ; $41f9: $d0

    ret nc                                        ; $41fa: $d0

    db $d3                                        ; $41fb: $d3
    rst $38                                       ; $41fc: $ff
    ret nc                                        ; $41fd: $d0

    rst $10                                       ; $41fe: $d7
    ret nc                                        ; $41ff: $d0

    rst $00                                       ; $4200: $c7
    ret nz                                        ; $4201: $c0

    rst $00                                       ; $4202: $c7
    ret nz                                        ; $4203: $c0

    rlca                                          ; $4204: $07
    cp a                                          ; $4205: $bf
    rlca                                          ; $4206: $07
    inc bc                                        ; $4207: $03
    inc bc                                        ; $4208: $03
    pop hl                                        ; $4209: $e1
    ld bc, $697c                                  ; $420a: $01 $7c $69
    and [hl]                                      ; $420d: $a6
    ld hl, sp-$01                                 ; $420e: $f8 $ff
    ld hl, sp-$10                                 ; $4210: $f8 $f0
    ldh a, [$e0]                                  ; $4212: $f0 $e0
    ldh [rP1], a                                  ; $4214: $e0 $00
    nop                                           ; $4216: $00
    add c                                         ; $4217: $81
    xor $57                                       ; $4218: $ee $57
    and h                                         ; $421a: $a4
    rlca                                          ; $421b: $07
    nop                                           ; $421c: $00
    rrca                                          ; $421d: $0f
    or c                                          ; $421e: $b1

jr_047_421f:
    jp z, $c018                                   ; $421f: $ca $18 $c0

    ld e, $df                                     ; $4222: $1e $df
    ret nz                                        ; $4224: $c0

    rrca                                          ; $4225: $0f
    ldh [rIF], a                                  ; $4226: $e0 $0f
    ldh [rNR32], a                                ; $4228: $e0 $1c
    db $e3                                        ; $422a: $e3
    inc bc                                        ; $422b: $03
    ldh a, [$f7]                                  ; $422c: $f0 $f7
    nop                                           ; $422e: $00
    ld de, $910e                                  ; $422f: $11 $0e $91
    ret nz                                        ; $4232: $c0

    inc a                                         ; $4233: $3c
    add b                                         ; $4234: $80
    dec sp                                        ; $4235: $3b
    add b                                         ; $4236: $80
    cp a                                          ; $4237: $bf
    ld [hl], a                                    ; $4238: $77
    nop                                           ; $4239: $00
    ld [hl], a                                    ; $423a: $77
    nop                                           ; $423b: $00
    ld l, b                                       ; $423c: $68
    nop                                           ; $423d: $00
    ld [hl], a                                    ; $423e: $77
    ldh [$6f], a                                  ; $423f: $e0 $6f
    rst $30                                       ; $4241: $f7
    adc a                                         ; $4242: $8f
    cpl                                           ; $4243: $2f
    rst $08                                       ; $4244: $cf
    ld [hl], b                                    ; $4245: $70
    ld [c], a                                     ; $4246: $e2
    rst $30                                       ; $4247: $f7
    rlca                                          ; $4248: $07
    rst $30                                       ; $4249: $f7
    rlca                                          ; $424a: $07
    ld h, e                                       ; $424b: $63
    ld [bc], a                                    ; $424c: $02
    ld a, [$cc2e]                                 ; $424d: $fa $2e $cc
    add d                                         ; $4250: $82
    pop bc                                        ; $4251: $c1
    cp $e0                                        ; $4252: $fe $e0
    add b                                         ; $4254: $80
    cp a                                          ; $4255: $bf
    cp $e1                                        ; $4256: $fe $e1
    di                                            ; $4258: $f3
    ret nz                                        ; $4259: $c0

    rst $18                                       ; $425a: $df
    jr jr_047_421f                                ; $425b: $18 $c2

    db $ec                                        ; $425d: $ec
    adc b                                         ; $425e: $88
    rst $00                                       ; $425f: $c7
    ret nz                                        ; $4260: $c0

jr_047_4261:
    add e                                         ; $4261: $83
    add b                                         ; $4262: $80
    rst $28                                       ; $4263: $ef
    nop                                           ; $4264: $00
    nop                                           ; $4265: $00
    rlca                                          ; $4266: $07
    ret nz                                        ; $4267: $c0

    and b                                         ; $4268: $a0
    db $e4                                        ; $4269: $e4
    ld hl, sp-$31                                 ; $426a: $f8 $cf
    jr nc, jr_047_4261                            ; $426c: $30 $f3

    rra                                           ; $426e: $1f
    ret nz                                        ; $426f: $c0

    rrca                                          ; $4270: $0f
    jp z, $80bf                                   ; $4271: $ca $bf $80

    di                                            ; $4274: $f3
    nop                                           ; $4275: $00
    rst $20                                       ; $4276: $e7
    nop                                           ; $4277: $00
    rst $30                                       ; $4278: $f7
    rst $08                                       ; $4279: $cf
    nop                                           ; $427a: $00
    sbc a                                         ; $427b: $9f
    sbc a                                         ; $427c: $9f
    and d                                         ; $427d: $a2
    ld hl, sp+$04                                 ; $427e: $f8 $04
    push af                                       ; $4280: $f5
    ld a, [bc]                                    ; $4281: $0a
    ei                                            ; $4282: $fb
    ld [$fc15], a                                 ; $4283: $ea $15 $fc
    pop hl                                        ; $4286: $e1
    push de                                       ; $4287: $d5
    ld a, [hl+]                                   ; $4288: $2a
    ld [$d415], a                                 ; $4289: $ea $15 $d4
    rst $38                                       ; $428c: $ff
    dec hl                                        ; $428d: $2b
    ld h, a                                       ; $428e: $67
    ld h, a                                       ; $428f: $67
    rst $28                                       ; $4290: $ef
    rst $28                                       ; $4291: $ef
    xor $ee                                       ; $4292: $ee $ee
    rst $38                                       ; $4294: $ff
    rst $38                                       ; $4295: $ff
    rst $38                                       ; $4296: $ff
    ld sp, hl                                     ; $4297: $f9
    ld sp, hl                                     ; $4298: $f9
    ldh a, [$f6]                                  ; $4299: $f0 $f6
    ldh [$ef], a                                  ; $429b: $e0 $ef
    jp hl                                         ; $429d: $e9


    rst $08                                       ; $429e: $cf
    rst $28                                       ; $429f: $ef
    ld [hl], a                                    ; $42a0: $77
    rlca                                          ; $42a1: $07
    ld [hl], a                                    ; $42a2: $77
    ld a, d                                       ; $42a3: $7a
    ldh [$e0], a                                  ; $42a4: $e0 $e0
    pop bc                                        ; $42a6: $c1
    rst $18                                       ; $42a7: $df
    rra                                           ; $42a8: $1f
    rst $28                                       ; $42a9: $ef
    ccf                                           ; $42aa: $3f
    ccf                                           ; $42ab: $3f
    ld a, a                                       ; $42ac: $7f
    ld a, a                                       ; $42ad: $7f
    inc sp                                        ; $42ae: $33
    rlc b                                         ; $42af: $cb $00
    rst $38                                       ; $42b1: $ff
    ret nz                                        ; $42b2: $c0

    sbc c                                         ; $42b3: $99
    rst $18                                       ; $42b4: $df
    ld b, b                                       ; $42b5: $40
    pop bc                                        ; $42b6: $c1
    ld a, $c1                                     ; $42b7: $3e $c1
    jr nc, @-$47                                  ; $42b9: $30 $b7

    ld a, $c1                                     ; $42bb: $3e $c1
    or $a1                                        ; $42bd: $f6 $a1
    ld bc, $fce1                                  ; $42bf: $01 $e1 $fc
    cp $e1                                        ; $42c2: $fe $e1
    add b                                         ; $42c4: $80
    and e                                         ; $42c5: $a3
    rst $18                                       ; $42c6: $df
    add e                                         ; $42c7: $83
    db $db                                        ; $42c8: $db
    add d                                         ; $42c9: $82
    ld [bc], a                                    ; $42ca: $02
    ld a, [$ff05]                                 ; $42cb: $fa $05 $ff
    push af                                       ; $42ce: $f5
    ld a, [bc]                                    ; $42cf: $0a
    xor d                                         ; $42d0: $aa
    ld d, l                                       ; $42d1: $55
    ld d, h                                       ; $42d2: $54
    xor e                                         ; $42d3: $ab
    xor b                                         ; $42d4: $a8
    ld d, a                                       ; $42d5: $57
    ei                                            ; $42d6: $fb
    ld d, b                                       ; $42d7: $50
    xor a                                         ; $42d8: $af
    db $fc                                        ; $42d9: $fc
    pop hl                                        ; $42da: $e1
    and b                                         ; $42db: $a0
    ld e, a                                       ; $42dc: $5f
    ld b, b                                       ; $42dd: $40
    cp a                                          ; $42de: $bf
    or $ff                                        ; $42df: $f6 $ff
    nop                                           ; $42e1: $00
    ldh [$09], a                                  ; $42e2: $e0 $09
    ldh [rIF], a                                  ; $42e4: $e0 $0f
    ret nz                                        ; $42e6: $c0

jr_047_42e7:
    rra                                           ; $42e7: $1f
    add b                                         ; $42e8: $80
    rst $20                                       ; $42e9: $e7
    ccf                                           ; $42ea: $3f
    add b                                         ; $42eb: $80

jr_047_42ec:
    ccf                                           ; $42ec: $3f
    ld h, $e2                                     ; $42ed: $26 $e2
    rra                                           ; $42ef: $1f
    adc l                                         ; $42f0: $8d
    rst $38                                       ; $42f1: $ff
    ccf                                           ; $42f2: $3f
    ccf                                           ; $42f3: $3f
    rst $30                                       ; $42f4: $f7
    rst $00                                       ; $42f5: $c7
    rlca                                          ; $42f6: $07
    ld sp, hl                                     ; $42f7: $f9
    ld a, [bc]                                    ; $42f8: $0a
    and d                                         ; $42f9: $a2
    cp $00                                        ; $42fa: $fe $00
    pop hl                                        ; $42fc: $e1
    ld bc, $747e                                  ; $42fd: $01 $7e $74
    add a                                         ; $4300: $87
    cp a                                          ; $4301: $bf
    ccf                                           ; $4302: $3f
    rra                                           ; $4303: $1f
    rra                                           ; $4304: $1f
    rst $38                                       ; $4305: $ff
    rst $38                                       ; $4306: $ff
    ld d, b                                       ; $4307: $50
    pop bc                                        ; $4308: $c1
    sbc e                                         ; $4309: $9b

jr_047_430a:
    jr jr_047_42e7                                ; $430a: $18 $db

    ld d, b                                       ; $430c: $50
    pop bc                                        ; $430d: $c1
    ld c, $ee                                     ; $430e: $0e $ee
    ld d, b                                       ; $4310: $50
    pop bc                                        ; $4311: $c1
    db $e3                                        ; $4312: $e3
    pop bc                                        ; $4313: $c1
    ccf                                           ; $4314: $3f
    inc sp                                        ; $4315: $33
    add b                                         ; $4316: $80
    rra                                           ; $4317: $1f
    sbc h                                         ; $4318: $9c
    ret nz                                        ; $4319: $c0

    ld [bc], a                                    ; $431a: $02
    pop hl                                        ; $431b: $e1
    ld bc, $d1fc                                  ; $431c: $01 $fc $d1
    ld h, l                                       ; $431f: $65
    add b                                         ; $4320: $80
    pop hl                                        ; $4321: $e1
    ld c, a                                       ; $4322: $4f
    ld [$5515], a                                 ; $4323: $ea $15 $55
    xor d                                         ; $4326: $aa
    jr jr_047_430a                                ; $4327: $18 $e1

    ld a, h                                       ; $4329: $7c
    push hl                                       ; $432a: $e5
    add b                                         ; $432b: $80
    ld [hl-], a                                   ; $432c: $32
    ldh [$7b], a                                  ; $432d: $e0 $7b
    add b                                         ; $432f: $80
    ld a, [hl]                                    ; $4330: $7e
    ld b, d                                       ; $4331: $42
    add e                                         ; $4332: $83
    ld bc, $00f9                                  ; $4333: $01 $f9 $00
    and $ed                                       ; $4336: $e6 $ed
    ret nz                                        ; $4338: $c0

    dec a                                         ; $4339: $3d
    ld a, b                                       ; $433a: $78
    ret z                                         ; $433b: $c8

    ld h, l                                       ; $433c: $65
    ldh a, [$f7]                                  ; $433d: $f0 $f7
    ld hl, sp-$05                                 ; $433f: $f8 $fb
    ld [hl], h                                    ; $4341: $74
    xor $34                                       ; $4342: $ee $34
    ret nz                                        ; $4344: $c0

    pop bc                                        ; $4345: $c1
    sbc a                                         ; $4346: $9f
    sbc b                                         ; $4347: $98
    add h                                         ; $4348: $84
    jr z, jr_047_42ec                             ; $4349: $28 $a1

    ld c, h                                       ; $434b: $4c
    add c                                         ; $434c: $81
    ld [hl], b                                    ; $434d: $70
    ld l, d                                       ; $434e: $6a
    add l                                         ; $434f: $85
    ldh [rTAC], a                                 ; $4350: $e0 $07
    rst $30                                       ; $4352: $f7
    db $fc                                        ; $4353: $fc
    or $63                                        ; $4354: $f6 $63
    ld a, h                                       ; $4356: $7c
    add l                                         ; $4357: $85
    ld a, [hl+]                                   ; $4358: $2a
    ld d, l                                       ; $4359: $55

Call_047_435a:
    add l                                         ; $435a: $85
    sbc d                                         ; $435b: $9a
    ldh [$e7], a                                  ; $435c: $e0 $e7
    ld a, e                                       ; $435e: $7b
    ld hl, sp-$08                                 ; $435f: $f8 $f8
    ld a, b                                       ; $4361: $78
    ld h, l                                       ; $4362: $65
    xor d                                         ; $4363: $aa
    ld d, l                                       ; $4364: $55
    ld d, b                                       ; $4365: $50
    xor a                                         ; $4366: $af
    inc a                                         ; $4367: $3c
    ld h, d                                       ; $4368: $62
    ld e, a                                       ; $4369: $5f
    inc a                                         ; $436a: $3c
    ret nz                                        ; $436b: $c0

    jp $cfc0                                      ; $436c: $c3 $c0 $cf


    sub [hl]                                      ; $436f: $96
    add b                                         ; $4370: $80
    db $fd                                        ; $4371: $fd
    ld [hl], c                                    ; $4372: $71
    ret nz                                        ; $4373: $c0

    push af                                       ; $4374: $f5
    rst $08                                       ; $4375: $cf

jr_047_4376:
    rra                                           ; $4376: $1f
    add b                                         ; $4377: $80
    cp $d5                                        ; $4378: $fe $d5
    add b                                         ; $437a: $80
    ei                                            ; $437b: $fb
    ld [bc], a                                    ; $437c: $02

jr_047_437d:
    rst $30                                       ; $437d: $f7
    rst $20                                       ; $437e: $e7

jr_047_437f:
    rst $38                                       ; $437f: $ff
    rst $20                                       ; $4380: $e7
    rst $18                                       ; $4381: $df
    db $dd                                        ; $4382: $dd
    cp a                                          ; $4383: $bf
    cp d                                          ; $4384: $ba
    ld a, a                                       ; $4385: $7f
    ld d, h                                       ; $4386: $54
    rst $38                                       ; $4387: $ff
    rst $28                                       ; $4388: $ef
    xor b                                         ; $4389: $a8
    rst $38                                       ; $438a: $ff
    ld d, b                                       ; $438b: $50
    rst $38                                       ; $438c: $ff
    add sp, $61                                   ; $438d: $e8 $61
    and c                                         ; $438f: $a1
    rst $38                                       ; $4390: $ff
    ld b, b                                       ; $4391: $40
    db $fc                                        ; $4392: $fc
    ld hl, sp-$1e                                 ; $4393: $f8 $e2
    add hl, de                                    ; $4395: $19
    ld h, l                                       ; $4396: $65
    ld [hl], b                                    ; $4397: $70
    db $fc                                        ; $4398: $fc
    xor h                                         ; $4399: $ac
    rst $38                                       ; $439a: $ff
    rla                                           ; $439b: $17
    rst $38                                       ; $439c: $ff
    add e                                         ; $439d: $83
    dec bc                                        ; $439e: $0b
    rst $38                                       ; $439f: $ff
    xor h                                         ; $43a0: $ac
    ret nz                                        ; $43a1: $c0

    push af                                       ; $43a2: $f5
    ld b, c                                       ; $43a3: $41
    daa                                           ; $43a4: $27
    and b                                         ; $43a5: $a0
    ret z                                         ; $43a6: $c8

    ret nz                                        ; $43a7: $c0

    inc d                                         ; $43a8: $14
    ld h, d                                       ; $43a9: $62
    xor a                                         ; $43aa: $af
    rst $08                                       ; $43ab: $cf
    ldh a, [$57]                                  ; $43ac: $f0 $57
    ld hl, sp+$2b                                 ; $43ae: $f8 $2b
    call c, Call_047_60a4                         ; $43b0: $dc $a4 $60
    ret z                                         ; $43b3: $c8

    ldh [$ef], a                                  ; $43b4: $e0 $ef
    rst $38                                       ; $43b6: $ff
    ld h, b                                       ; $43b7: $60
    ld l, a                                       ; $43b8: $6f
    ld [hl], b                                    ; $43b9: $70
    ld [hl], a                                    ; $43ba: $77
    ld [hl], b                                    ; $43bb: $70
    ld [hl], a                                    ; $43bc: $77
    jr nc, jr_047_4376                            ; $43bd: $30 $b7

    ld l, a                                       ; $43bf: $6f
    jr c, jr_047_437d                             ; $43c0: $38 $bb

    jr c, jr_047_437f                             ; $43c2: $38 $bb

    ld [hl], $a7                                  ; $43c4: $36 $a7
    ld [bc], a                                    ; $43c6: $02
    ld a, [$e1fe]                                 ; $43c7: $fa $fe $e1
    db $fd                                        ; $43ca: $fd
    cp a                                          ; $43cb: $bf
    rst $38                                       ; $43cc: $ff
    ld [c], a                                     ; $43cd: $e2
    ld e, a                                       ; $43ce: $5f
    rra                                           ; $43cf: $1f
    ld e, a                                       ; $43d0: $5f
    rra                                           ; $43d1: $1f
    sbc $1e                                       ; $43d2: $de $1e
    rst $38                                       ; $43d4: $ff
    db $ed                                        ; $43d5: $ed
    inc c                                         ; $43d6: $0c
    ld l, e                                       ; $43d7: $6b
    ld [$eaef], sp                                ; $43d8: $08 $ef $ea
    rst $28                                       ; $43db: $ef
    db $e4                                        ; $43dc: $e4
    rst $20                                       ; $43dd: $e7
    rst $18                                       ; $43de: $df
    ret nz                                        ; $43df: $c0

    cp a                                          ; $43e0: $bf
    push hl                                       ; $43e1: $e5
    ret nz                                        ; $43e2: $c0

    sub a                                         ; $43e3: $97

jr_047_43e4:
    ld c, h                                       ; $43e4: $4c
    db $10                                        ; $43e5: $10
    rst $38                                       ; $43e6: $ff
    ld [$efff], sp                                ; $43e7: $08 $ff $ef
    inc b                                         ; $43ea: $04
    rst $28                                       ; $43eb: $ef
    ld a, [bc]                                    ; $43ec: $0a
    db $fc                                        ; $43ed: $fc
    dec b                                         ; $43ee: $05
    cp $02                                        ; $43ef: $fe $02
    rst $38                                       ; $43f1: $ff
    rst $38                                       ; $43f2: $ff
    inc bc                                        ; $43f3: $03
    cp $00                                        ; $43f4: $fe $00
    ld sp, hl                                     ; $43f6: $f9
    ld bc, $07e7                                  ; $43f7: $01 $e7 $07
    rst $00                                       ; $43fa: $c7
    rst $18                                       ; $43fb: $df
    rra                                           ; $43fc: $1f
    cp a                                          ; $43fd: $bf
    or h                                          ; $43fe: $b4
    ld h, e                                       ; $43ff: $63
    adc l                                         ; $4400: $8d
    ret nz                                        ; $4401: $c0

    call z, $80c3                                 ; $4402: $cc $c3 $80
    add a                                         ; $4405: $87
    ccf                                           ; $4406: $3f
    jr jr_047_43e4                                ; $4407: $18 $db

    inc e                                         ; $4409: $1c
    db $dd                                        ; $440a: $dd
    inc e                                         ; $440b: $1c
    db $dd                                        ; $440c: $dd
    ld [hl], d                                    ; $440d: $72
    pop bc                                        ; $440e: $c1
    ld [hl], b                                    ; $440f: $70
    pop bc                                        ; $4410: $c1
    db $db                                        ; $4411: $db
    rlca                                          ; $4412: $07
    rst $30                                       ; $4413: $f7
    db $e4                                        ; $4414: $e4
    ld b, b                                       ; $4415: $40
    ld sp, hl                                     ; $4416: $f9
    ld [bc], a                                    ; $4417: $02
    ld l, $80                                     ; $4418: $2e $80
    inc b                                         ; $441a: $04
    ldh a, [$7f]                                  ; $441b: $f0 $7f
    dec bc                                        ; $441d: $0b
    db $e3                                        ; $441e: $e3
    dec bc                                        ; $441f: $0b
    db $e3                                        ; $4420: $e3
    inc e                                         ; $4421: $1c
    ret nz                                        ; $4422: $c0

    or a                                          ; $4423: $b7
    ld b, a                                       ; $4424: $47
    and b                                         ; $4425: $a0
    db $fc                                        ; $4426: $fc
    and e                                         ; $4427: $a3
    ld h, e                                       ; $4428: $63
    add hl, sp                                    ; $4429: $39
    and c                                         ; $442a: $a1
    rst $38                                       ; $442b: $ff
    nop                                           ; $442c: $00
    rst $30                                       ; $442d: $f7
    dec b                                         ; $442e: $05
    rst $30                                       ; $442f: $f7
    ld [bc], a                                    ; $4430: $02
    xor a                                         ; $4431: $af
    rst $30                                       ; $4432: $f7
    dec b                                         ; $4433: $05
    ei                                            ; $4434: $fb
    ld [bc], a                                    ; $4435: $02
    xor [hl]                                      ; $4436: $ae
    ret nz                                        ; $4437: $c0

    dec b                                         ; $4438: $05
    call nc, $0260                                ; $4439: $d4 $60 $02
    ld a, [$4021]                                 ; $443c: $fa $21 $40
    add b                                         ; $443f: $80
    ld b, $e0                                     ; $4440: $06 $e0
    xor b                                         ; $4442: $a8
    rst $38                                       ; $4443: $ff
    ld d, h                                       ; $4444: $54
    rst $38                                       ; $4445: $ff
    cp d                                          ; $4446: $ba
    adc a                                         ; $4447: $8f
    rst $38                                       ; $4448: $ff
    db $dd                                        ; $4449: $dd
    rst $38                                       ; $444a: $ff
    ld a, [$6389]                                 ; $444b: $fa $89 $63
    cpl                                           ; $444e: $2f
    ld h, c                                       ; $444f: $61
    sbc a                                         ; $4450: $9f
    ld b, c                                       ; $4451: $41
    rst $30                                       ; $4452: $f7
    cp a                                          ; $4453: $bf
    add a                                         ; $4454: $87
    nop                                           ; $4455: $00
    ld a, [hl]                                    ; $4456: $7e
    ld bc, $037c                                  ; $4457: $01 $7c $03
    sbc $60                                       ; $445a: $de $60
    rrca                                          ; $445c: $0f
    rst $30                                       ; $445d: $f7
    ldh [$1f], a                                  ; $445e: $e0 $1f
    ret nz                                        ; $4460: $c0

    ld h, $a0                                     ; $4461: $26 $a0

jr_047_4463:
    add b                                         ; $4463: $80
    rlca                                          ; $4464: $07
    ld [hl], a                                    ; $4465: $77
    di                                            ; $4466: $f3
    sbc a                                         ; $4467: $9f
    dec bc                                        ; $4468: $0b
    ld sp, hl                                     ; $4469: $f9
    dec b                                         ; $446a: $05
    db $fc                                        ; $446b: $fc
    ld [bc], a                                    ; $446c: $02
    sbc h                                         ; $446d: $9c
    and e                                         ; $446e: $a3
    ld d, b                                       ; $446f: $50
    ld b, a                                       ; $4470: $47
    ld a, a                                       ; $4471: $7f
    ld a, a                                       ; $4472: $7f
    ld a, a                                       ; $4473: $7f
    ccf                                           ; $4474: $3f
    cp a                                          ; $4475: $bf
    sbc a                                         ; $4476: $9f
    ld e, a                                       ; $4477: $5f
    rra                                           ; $4478: $1f
    rst $18                                       ; $4479: $df
    call nc, Call_000_0089                        ; $447a: $d4 $89 $00
    ld [bc], a                                    ; $447d: $02
    ld h, c                                       ; $447e: $61
    call z, $fee1                                 ; $447f: $cc $e1 $fe
    pop hl                                        ; $4482: $e1
    cp e                                          ; $4483: $bb
    add d                                         ; $4484: $82
    or e                                          ; $4485: $b3
    ld hl, $c1b8                                  ; $4486: $21 $b8 $c1
    or h                                          ; $4489: $b4
    call nz, $e11c                                ; $448a: $c4 $1c $e1
    rst $38                                       ; $448d: $ff
    ld a, a                                       ; $448e: $7f
    ld a, l                                       ; $448f: $7d
    cp a                                          ; $4490: $bf
    cp [hl]                                       ; $4491: $be
    rst $18                                       ; $4492: $df
    ld e, a                                       ; $4493: $5f
    rst $28                                       ; $4494: $ef
    xor a                                         ; $4495: $af
    rst $38                                       ; $4496: $ff
    rst $30                                       ; $4497: $f7
    ld [hl], a                                    ; $4498: $77
    ei                                            ; $4499: $fb
    cp e                                          ; $449a: $bb
    db $fc                                        ; $449b: $fc
    ld e, h                                       ; $449c: $5c
    rst $38                                       ; $449d: $ff
    ccf                                           ; $449e: $3f
    rst $38                                       ; $449f: $ff
    and b                                         ; $44a0: $a0
    rst $30                                       ; $44a1: $f7
    ld b, b                                       ; $44a2: $40
    rst $28                                       ; $44a3: $ef
    and b                                         ; $44a4: $a0
    xor $40                                       ; $44a5: $ee $40

jr_047_44a7:
    xor $ff                                       ; $44a7: $ee $ff
    add b                                         ; $44a9: $80
    db $dd                                        ; $44aa: $dd
    nop                                           ; $44ab: $00
    db $dd                                        ; $44ac: $dd
    nop                                           ; $44ad: $00

jr_047_44ae:
    ret c                                         ; $44ae: $d8

    nop                                           ; $44af: $00
    jr jr_047_44ae                                ; $44b0: $18 $fc

    ld c, d                                       ; $44b2: $4a
    db $e3                                        ; $44b3: $e3
    and e                                         ; $44b4: $a3
    jr nz, jr_047_44f7                            ; $44b5: $20 $40

    ld e, a                                       ; $44b7: $5f
    and b                                         ; $44b8: $a0
    cpl                                           ; $44b9: $2f
    ret nc                                        ; $44ba: $d0

    rrca                                          ; $44bb: $0f
    ld sp, hl                                     ; $44bc: $f9
    ld b, b                                       ; $44bd: $40
    ld [hl], c                                    ; $44be: $71
    add hl, hl                                    ; $44bf: $29
    jr jr_047_4463                                ; $44c0: $18 $a1

    adc a                                         ; $44c2: $8f
    ld l, a                                       ; $44c3: $6f
    ld c, a                                       ; $44c4: $4f
    xor a                                         ; $44c5: $af
    adc a                                         ; $44c6: $8f
    rra                                           ; $44c7: $1f
    ld l, a                                       ; $44c8: $6f
    ld b, a                                       ; $44c9: $47
    or a                                          ; $44ca: $b7
    add a                                         ; $44cb: $87
    ld [hl], a                                    ; $44cc: $77
    db $fc                                        ; $44cd: $fc
    db $e3                                        ; $44ce: $e3
    inc c                                         ; $44cf: $0c
    ld b, c                                       ; $44d0: $41
    add b                                         ; $44d1: $80
    rst $00                                       ; $44d2: $c7
    jp $b330                                      ; $44d3: $c3 $30 $b3


    jp nc, $e041                                  ; $44d6: $d2 $41 $e0

    add c                                         ; $44d9: $81
    adc $42                                       ; $44da: $ce $42
    ld d, $60                                     ; $44dc: $16 $60
    rst $38                                       ; $44de: $ff
    inc d                                         ; $44df: $14
    rst $28                                       ; $44e0: $ef
    rst $38                                       ; $44e1: $ff
    ld a, [bc]                                    ; $44e2: $0a
    rst $38                                       ; $44e3: $ff
    rlca                                          ; $44e4: $07
    jr nc, jr_047_44a7                            ; $44e5: $30 $c0

    dec b                                         ; $44e7: $05
    rst $38                                       ; $44e8: $ff
    inc bc                                        ; $44e9: $03
    cp $fc                                        ; $44ea: $fe $fc
    ldh [rSC], a                                  ; $44ec: $e0 $02
    cp $5e                                        ; $44ee: $fe $5e
    rst $38                                       ; $44f0: $ff
    cpl                                           ; $44f1: $2f
    rst $38                                       ; $44f2: $ff
    ld e, a                                       ; $44f3: $5f
    rst $28                                       ; $44f4: $ef
    rst $38                                       ; $44f5: $ff
    xor a                                         ; $44f6: $af

jr_047_44f7:
    rst $38                                       ; $44f7: $ff

jr_047_44f8:
    rst $18                                       ; $44f8: $df
    ld c, [hl]                                    ; $44f9: $4e
    ld hl, $f0f3                                  ; $44fa: $21 $f3 $f0
    nop                                           ; $44fd: $00
    rst $38                                       ; $44fe: $ff
    adc h                                         ; $44ff: $8c
    nop                                           ; $4500: $00
    ld b, b                                       ; $4501: $40
    nop                                           ; $4502: $00
    and b                                         ; $4503: $a0
    ld bc, $03c0                                  ; $4504: $01 $c0 $03
    ld h, b                                       ; $4507: $60
    call z, Call_000_3660                         ; $4508: $cc $60 $36
    add c                                         ; $450b: $81
    db $db                                        ; $450c: $db
    add c                                         ; $450d: $81
    adc h                                         ; $450e: $8c
    db $eb                                        ; $450f: $eb
    xor b                                         ; $4510: $a8
    add c                                         ; $4511: $81
    db $f4                                        ; $4512: $f4
    dec bc                                        ; $4513: $0b
    ld b, h                                       ; $4514: $44
    add c                                         ; $4515: $81
    ld [c], a                                     ; $4516: $e2
    xor b                                         ; $4517: $a8
    add c                                         ; $4518: $81
    add a                                         ; $4519: $87
    ld d, c                                       ; $451a: $51
    add b                                         ; $451b: $80
    inc sp                                        ; $451c: $33

jr_047_451d:
    ld h, c                                       ; $451d: $61
    add hl, hl                                    ; $451e: $29
    ld h, c                                       ; $451f: $61
    ccf                                           ; $4520: $3f
    cp a                                          ; $4521: $bf
    ld a, a                                       ; $4522: $7f
    rst $38                                       ; $4523: $ff
    ld a, a                                       ; $4524: $7f
    set 0, e                                      ; $4525: $cb $c3
    db $dd                                        ; $4527: $dd
    pop bc                                        ; $4528: $c1
    db $dd                                        ; $4529: $dd
    pop bc                                        ; $452a: $c1
    sbc $0f                                       ; $452b: $de $0f
    ret nz                                        ; $452d: $c0

    sbc $c0                                       ; $452e: $de $c0
    xor $81                                       ; $4530: $ee $81
    ld hl, $6288                                  ; $4532: $21 $88 $62
    add b                                         ; $4535: $80
    ld h, c                                       ; $4536: $61
    ld a, h                                       ; $4537: $7c
    ld h, c                                       ; $4538: $61
    call c, $c1be                                 ; $4539: $dc $be $c1
    or c                                          ; $453c: $b1
    ld b, $01                                     ; $453d: $06 $01
    rst $38                                       ; $453f: $ff
    ld [bc], a                                    ; $4540: $02
    ld a, h                                       ; $4541: $7c
    ldh [$0b], a                                  ; $4542: $e0 $0b
    rst $38                                       ; $4544: $ff
    rst $20                                       ; $4545: $e7
    inc b                                         ; $4546: $04
    rst $38                                       ; $4547: $ff
    ld [$c014], sp                                ; $4548: $08 $14 $c0
    add d                                         ; $454b: $82
    and c                                         ; $454c: $a1
    and b                                         ; $454d: $a0
    rst $38                                       ; $454e: $ff
    ret nc                                        ; $454f: $d0

    db $eb                                        ; $4550: $eb
    db $fc                                        ; $4551: $fc
    ldh [$e0], a                                  ; $4552: $e0 $e0
    add $01                                       ; $4554: $c6 $01
    ld a, [bc]                                    ; $4556: $0a
    ret nz                                        ; $4557: $c0

    ld [bc], a                                    ; $4558: $02
    nop                                           ; $4559: $00
    nop                                           ; $455a: $00
    rst $38                                       ; $455b: $ff
    rst $28                                       ; $455c: $ef
    ld h, b                                       ; $455d: $60
    sbc $c0                                       ; $455e: $de $c0
    cp [hl]                                       ; $4560: $be
    nop                                           ; $4561: $00
    cp [hl]                                       ; $4562: $be
    add b                                         ; $4563: $80
    ld l, c                                       ; $4564: $69
    ld a, [hl]                                    ; $4565: $7e
    db $dd                                        ; $4566: $dd

jr_047_4567:
    inc h                                         ; $4567: $24
    rst $10                                       ; $4568: $d7
    daa                                           ; $4569: $27
    ld a, a                                       ; $456a: $7f
    ld h, l                                       ; $456b: $65
    ret nz                                        ; $456c: $c0

    or l                                          ; $456d: $b5
    adc d                                         ; $456e: $8a
    jr jr_047_44f8                                ; $456f: $18 $87

    ld a, [hl]                                    ; $4571: $7e
    jr nz, jr_047_44f7                            ; $4572: $20 $83

    and b                                         ; $4574: $a0
    ld e, [hl]                                    ; $4575: $5e
    ld b, c                                       ; $4576: $41
    cp l                                          ; $4577: $bd
    add e                                         ; $4578: $83
    ld a, e                                       ; $4579: $7b
    ld l, h                                       ; $457a: $6c
    pop hl                                        ; $457b: $e1
    ld c, h                                       ; $457c: $4c
    ld [hl], b                                    ; $457d: $70
    db $e3                                        ; $457e: $e3
    di                                            ; $457f: $f3
    inc bc                                        ; $4580: $03
    ei                                            ; $4581: $fb
    ld hl, sp-$02                                 ; $4582: $f8 $fe

jr_047_4584:
    pop hl                                        ; $4584: $e1
    sub c                                         ; $4585: $91
    jr nz, jr_047_4584                            ; $4586: $20 $fc

    ld hl, sp+$25                                 ; $4588: $f8 $25
    and [hl]                                      ; $458a: $a6
    ld a, b                                       ; $458b: $78
    ld b, c                                       ; $458c: $41
    ret z                                         ; $458d: $c8

    ld [$00fe], sp                                ; $458e: $08 $fe $00
    ld [hl+], a                                   ; $4591: $22
    dec bc                                        ; $4592: $0b
    rra                                           ; $4593: $1f
    ld a, [de]                                    ; $4594: $1a
    jp $9f3f                                      ; $4595: $c3 $3f $9f


    add b                                         ; $4598: $80
    ld a, $80                                     ; $4599: $3e $80
    jr nc, jr_047_451d                            ; $459b: $30 $80

    ld b, b                                       ; $459d: $40
    ld b, b                                       ; $459e: $40
    ld [hl], b                                    ; $459f: $70
    ld [bc], a                                    ; $45a0: $02
    cp $f7                                        ; $45a1: $fe $f7
    cp $f0                                        ; $45a3: $fe $f0
    pop af                                        ; $45a5: $f1
    xor c                                         ; $45a6: $a9
    ld b, d                                       ; $45a7: $42
    rra                                           ; $45a8: $1f
    nop                                           ; $45a9: $00
    inc e                                         ; $45aa: $1c
    ld hl, sp-$21                                 ; $45ab: $f8 $df
    ld hl, sp-$40                                 ; $45ad: $f8 $c0
    add $00                                       ; $45af: $c6 $00
    ld a, $14                                     ; $45b1: $3e $14
    ld [hl+], a                                   ; $45b3: $22
    ldh a, [rIF]                                  ; $45b4: $f0 $0f
    jp nz, $802f                                  ; $45b6: $c2 $2f $80

    nop                                           ; $45b9: $00
    rst $10                                       ; $45ba: $d7
    pop bc                                        ; $45bb: $c1
    sbc a                                         ; $45bc: $9f
    ld b, c                                       ; $45bd: $41
    ld b, h                                       ; $45be: $44
    add h                                         ; $45bf: $84
    sub h                                         ; $45c0: $94
    call nz, Call_000_07f9                        ; $45c1: $c4 $f9 $07
    ld a, a                                       ; $45c4: $7f
    ld bc, $01f7                                  ; $45c5: $01 $f7 $01

jr_047_45c8:
    rst $30                                       ; $45c8: $f7
    inc bc                                        ; $45c9: $03
    rst $30                                       ; $45ca: $f7
    inc bc                                        ; $45cb: $03
    ld h, b                                       ; $45cc: $60
    jr nz, jr_047_45c8                            ; $45cd: $20 $f9

    ld [bc], a                                    ; $45cf: $02
    call nz, Call_000_0e80                        ; $45d0: $c4 $80 $0e
    push bc                                       ; $45d3: $c5
    nop                                           ; $45d4: $00
    adc d                                         ; $45d5: $8a
    push de                                       ; $45d6: $d5
    call nz, Call_047_7feb                        ; $45d7: $c4 $eb $7f
    ret nz                                        ; $45da: $c0

    rst $30                                       ; $45db: $f7

jr_047_45dc:
    ld h, b                                       ; $45dc: $60
    ei                                            ; $45dd: $fb
    jr nc, jr_047_45dc                            ; $45de: $30 $fc

    jr jr_047_4567                                ; $45e0: $18 $85

    and c                                         ; $45e2: $a1
    db $fd                                        ; $45e3: $fd
    rst $08                                       ; $45e4: $cf
    ldh a, [$61]                                  ; $45e5: $f0 $61
    inc bc                                        ; $45e7: $03
    ei                                            ; $45e8: $fb
    rlca                                          ; $45e9: $07
    rst $20                                       ; $45ea: $e7
    rrca                                          ; $45eb: $0f
    rst $08                                       ; $45ec: $cf
    rst $38                                       ; $45ed: $ff
    rrca                                          ; $45ee: $0f
    rrca                                          ; $45ef: $0f
    rrca                                          ; $45f0: $0f
    rst $08                                       ; $45f1: $cf
    rra                                           ; $45f2: $1f
    sbc a                                         ; $45f3: $9f
    ld hl, sp-$08                                 ; $45f4: $f8 $f8
    ei                                            ; $45f6: $fb
    rst $30                                       ; $45f7: $f7
    ldh a, [$c8]                                  ; $45f8: $f0 $c8
    pop bc                                        ; $45fa: $c1
    rst $28                                       ; $45fb: $ef
    ldh [$f3], a                                  ; $45fc: $e0 $f3
    db $f4                                        ; $45fe: $f4
    ld hl, sp-$51                                 ; $45ff: $f8 $af
    ld sp, hl                                     ; $4601: $f9
    ld a, [$1ff8]                                 ; $4602: $fa $f8 $1f
    ld [hl], h                                    ; $4605: $74
    nop                                           ; $4606: $00
    cp a                                          ; $4607: $bf
    cp $e0                                        ; $4608: $fe $e0
    cp h                                          ; $460a: $bc
    ld a, a                                       ; $460b: $7f
    ld [bc], a                                    ; $460c: $02
    cp h                                          ; $460d: $bc
    ld [bc], a                                    ; $460e: $02
    jr c, @-$79                                   ; $460f: $38 $85

    jr c, jr_047_4618                             ; $4611: $38 $05

    ld a, [c]                                     ; $4613: $f2
    ld h, e                                       ; $4614: $63
    rst $38                                       ; $4615: $ff
    db $fc                                        ; $4616: $fc
    nop                                           ; $4617: $00

jr_047_4618:
    ld a, l                                       ; $4618: $7d
    nop                                           ; $4619: $00
    dec l                                         ; $461a: $2d
    ret nc                                        ; $461b: $d0

    ld d, a                                       ; $461c: $57
    xor b                                         ; $461d: $a8
    ld a, a                                       ; $461e: $7f
    dec hl                                        ; $461f: $2b
    call nc, $f8f9                                ; $4620: $d4 $f9 $f8
    rst $20                                       ; $4623: $e7
    ldh [$1f], a                                  ; $4624: $e0 $1f
    adc [hl]                                      ; $4626: $8e
    ld h, h                                       ; $4627: $64
    cp h                                          ; $4628: $bc
    ld [de], a                                    ; $4629: $12
    ld h, c                                       ; $462a: $61
    ld [hl], c                                    ; $462b: $71
    dec h                                         ; $462c: $25
    nop                                           ; $462d: $00
    ld b, e                                       ; $462e: $43
    nop                                           ; $462f: $00
    ld a, e                                       ; $4630: $7b
    cp $e2                                        ; $4631: $fe $e2
    inc bc                                        ; $4633: $03
    ccf                                           ; $4634: $3f
    db $10                                        ; $4635: $10
    rrca                                          ; $4636: $0f
    db $10                                        ; $4637: $10
    cpl                                           ; $4638: $2f
    db $10                                        ; $4639: $10
    rst $28                                       ; $463a: $ef
    cp $e5                                        ; $463b: $fe $e5
    ld l, h                                       ; $463d: $6c
    pop hl                                        ; $463e: $e1
    sub [hl]                                      ; $463f: $96
    db $fc                                        ; $4640: $fc
    ld [c], a                                     ; $4641: $e2
    ld bc, $fefb                                  ; $4642: $01 $fb $fe
    ldh [$fd], a                                  ; $4645: $e0 $fd
    ld l, b                                       ; $4647: $68
    and $b8                                       ; $4648: $e6 $b8
    nop                                           ; $464a: $00
    dec b                                         ; $464b: $05
    cp $e6                                        ; $464c: $fe $e6
    and b                                         ; $464e: $a0
    rla                                           ; $464f: $17
    ldh a, [$30]                                  ; $4650: $f0 $30

jr_047_4652:
    cp $5e                                        ; $4652: $fe $5e
    cp $3e                                        ; $4654: $fe $3e
    rst $38                                       ; $4656: $ff
    db $fc                                        ; $4657: $fc
    ld e, h                                       ; $4658: $5c
    db $fc                                        ; $4659: $fc
    cp h                                          ; $465a: $bc
    ld a, [$f67a]                                 ; $465b: $fa $7a $f6
    or $db                                        ; $465e: $f6 $db
    ret nz                                        ; $4660: $c0

    pop bc                                        ; $4661: $c1
    ld b, d                                       ; $4662: $42
    dec bc                                        ; $4663: $0b
    nop                                           ; $4664: $00
    rst $38                                       ; $4665: $ff
    cp b                                          ; $4666: $b8
    jp $fdfc                                      ; $4667: $c3 $fc $fd


    ei                                            ; $466a: $fb
    cp $fe                                        ; $466b: $fe $fe
    ld [hl], $03                                  ; $466d: $36 $03
    ret nz                                        ; $466f: $c0

    jr jr_047_4652                                ; $4670: $18 $e0

    ld b, $f0                                     ; $4672: $06 $f0
    db $fd                                        ; $4674: $fd
    ld c, $bc                                     ; $4675: $0e $bc
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    ld a, h                                       ; $4679: $7c
    inc bc                                        ; $467a: $03
    ld a, b                                       ; $467b: $78
    rlca                                          ; $467c: $07
    and b                                         ; $467d: $a0
    rst $38                                       ; $467e: $ff
    sbc h                                         ; $467f: $9c
    dec d                                         ; $4680: $15
    ld [$750a], a                                 ; $4681: $ea $0a $75
    dec b                                         ; $4684: $05
    ld a, [bc]                                    ; $4685: $0a
    ld [bc], a                                    ; $4686: $02
    db $fd                                        ; $4687: $fd
    cp l                                          ; $4688: $bd
    ld c, e                                       ; $4689: $4b
    ldh [$be], a                                  ; $468a: $e0 $be
    nop                                           ; $468c: $00
    inc e                                         ; $468d: $1c
    inc bc                                        ; $468e: $03
    db $db                                        ; $468f: $db
    ld d, l                                       ; $4690: $55
    rra                                           ; $4691: $1f
    xor d                                         ; $4692: $aa
    xor b                                         ; $4693: $a8
    ld d, a                                       ; $4694: $57
    ld b, b                                       ; $4695: $40
    cp a                                          ; $4696: $bf
    daa                                           ; $4697: $27
    ld h, h                                       ; $4698: $64
    pop hl                                        ; $4699: $e1
    ld bc, $e06a                                  ; $469a: $01 $6a $e0
    rst $38                                       ; $469d: $ff
    inc bc                                        ; $469e: $03
    ld a, b                                       ; $469f: $78
    inc e                                         ; $46a0: $1c
    ld h, c                                       ; $46a1: $61
    ld sp, $004c                                  ; $46a2: $31 $4c $00
    ld a, l                                       ; $46a5: $7d
    cp $a6                                        ; $46a6: $fe $a6
    add b                                         ; $46a8: $80
    ld a, b                                       ; $46a9: $78
    db $10                                        ; $46aa: $10
    rst $28                                       ; $46ab: $ef
    add hl, bc                                    ; $46ac: $09
    or $0b                                        ; $46ad: $f6 $0b
    db $f4                                        ; $46af: $f4
    rst $38                                       ; $46b0: $ff
    ld c, $f1                                     ; $46b1: $0e $f1
    ld c, h                                       ; $46b3: $4c
    or e                                          ; $46b4: $b3
    sbc h                                         ; $46b5: $9c
    ld h, e                                       ; $46b6: $63
    ld e, l                                       ; $46b7: $5d
    and d                                         ; $46b8: $a2
    ei                                            ; $46b9: $fb
    dec sp                                        ; $46ba: $3b
    call nz, Call_047_435a                        ; $46bb: $c4 $5a $43
    add b                                         ; $46be: $80
    ld a, a                                       ; $46bf: $7f
    dec c                                         ; $46c0: $0d
    ld a, [c]                                     ; $46c1: $f2
    ld a, d                                       ; $46c2: $7a
    rra                                           ; $46c3: $1f
    add l                                         ; $46c4: $85
    db $f4                                        ; $46c5: $f4
    dec bc                                        ; $46c6: $0b
    add sp, $17                                   ; $46c7: $e8 $17
    db $ed                                        ; $46c9: $ed
    ld b, e                                       ; $46ca: $43
    ld b, [hl]                                    ; $46cb: $46
    ld b, c                                       ; $46cc: $41
    db $e3                                        ; $46cd: $e3
    ld b, e                                       ; $46ce: $43
    db $fc                                        ; $46cf: $fc
    ld hl, sp+$43                                 ; $46d0: $f8 $43
    ld d, b                                       ; $46d2: $50
    ld c, c                                       ; $46d3: $49
    cp $fe                                        ; $46d4: $fe $fe
    ld a, a                                       ; $46d6: $7f
    ld a, a                                       ; $46d7: $7f
    sbc a                                         ; $46d8: $9f
    rra                                           ; $46d9: $1f
    rst $38                                       ; $46da: $ff
    ld b, a                                       ; $46db: $47
    and a                                         ; $46dc: $a7
    xor b                                         ; $46dd: $a8
    ld d, b                                       ; $46de: $50
    ld e, a                                       ; $46df: $5f
    and b                                         ; $46e0: $a0
    xor a                                         ; $46e1: $af
    ld d, b                                       ; $46e2: $50
    rst $28                                       ; $46e3: $ef
    sbc h                                         ; $46e4: $9c
    sbc h                                         ; $46e5: $9c
    ld a, [hl]                                    ; $46e6: $7e
    ld a, [hl]                                    ; $46e7: $7e
    ld e, b                                       ; $46e8: $58
    ld bc, $f0f3                                  ; $46e9: $01 $f3 $f0
    rrca                                          ; $46ec: $0f
    nop                                           ; $46ed: $00
    adc l                                         ; $46ee: $8d
    db $e4                                        ; $46ef: $e4
    pop de                                        ; $46f0: $d1
    and [hl]                                      ; $46f1: $a6
    jr c, jr_047_4716                             ; $46f2: $38 $22

    nop                                           ; $46f4: $00
    nop                                           ; $46f5: $00
    nop                                           ; $46f6: $00
    reti                                          ; $46f7: $d9


    nop                                           ; $46f8: $00
    rst $38                                       ; $46f9: $ff
    rst $38                                       ; $46fa: $ff
    cp $fd                                        ; $46fb: $fe $fd
    ld bc, $dc02                                  ; $46fd: $01 $02 $dc
    ld [c], a                                     ; $4700: $e2
    inc bc                                        ; $4701: $03
    inc b                                         ; $4702: $04
    rst $08                                       ; $4703: $cf
    dec b                                         ; $4704: $05
    ld b, $07                                     ; $4705: $06 $07
    ld [$ffd1], sp                                ; $4707: $08 $d1 $ff
    xor $ed                                       ; $470a: $ee $ed
    add hl, bc                                    ; $470c: $09
    ld a, [bc]                                    ; $470d: $0a
    db $fd                                        ; $470e: $fd
    dec bc                                        ; $470f: $0b
    db $db                                        ; $4710: $db
    ld [c], a                                     ; $4711: $e2
    inc c                                         ; $4712: $0c
    dec c                                         ; $4713: $0d
    ld c, $0f                                     ; $4714: $0e $0f

jr_047_4716:
    db $10                                        ; $4716: $10
    ld de, $d0dc                                  ; $4717: $11 $dc $d0
    rst $38                                       ; $471a: $ff
    xor $ed                                       ; $471b: $ee $ed
    ld [de], a                                    ; $471d: $12
    inc de                                        ; $471e: $13
    inc d                                         ; $471f: $14
    db $db                                        ; $4720: $db
    pop hl                                        ; $4721: $e1
    dec d                                         ; $4722: $15
    ld d, $3f                                     ; $4723: $16 $3f
    rla                                           ; $4725: $17
    jr @+$1b                                      ; $4726: $18 $19

    ld a, [de]                                    ; $4728: $1a
    dec de                                        ; $4729: $1b
    inc e                                         ; $472a: $1c
    rst $08                                       ; $472b: $cf
    rst $38                                       ; $472c: $ff
    xor $ed                                       ; $472d: $ee $ed
    db $fd                                        ; $472f: $fd
    dec e                                         ; $4730: $1d

jr_047_4731:
    db $dd                                        ; $4731: $dd
    ld [c], a                                     ; $4732: $e2
    ld e, $1f                                     ; $4733: $1e $1f
    jr nz, jr_047_4758                            ; $4735: $20 $21

    ld [hl+], a                                   ; $4737: $22
    inc hl                                        ; $4738: $23
    db $d3                                        ; $4739: $d3
    inc h                                         ; $473a: $24
    dec h                                         ; $473b: $25
    ret nc                                        ; $473c: $d0

    rst $38                                       ; $473d: $ff
    xor $ed                                       ; $473e: $ee $ed
    ld h, $dd                                     ; $4740: $26 $dd
    pop hl                                        ; $4742: $e1
    daa                                           ; $4743: $27
    jr z, jr_047_47c5                             ; $4744: $28 $7f

    add hl, hl                                    ; $4746: $29
    ld a, [hl+]                                   ; $4747: $2a
    dec hl                                        ; $4748: $2b
    ld a, [de]                                    ; $4749: $1a
    inc l                                         ; $474a: $2c
    dec l                                         ; $474b: $2d
    ld l, $d0                                     ; $474c: $2e $d0
    rst $38                                       ; $474e: $ff
    or $ee                                        ; $474f: $f6 $ee
    db $ed                                        ; $4751: $ed
    cpl                                           ; $4752: $2f
    jr nc, jr_047_4731                            ; $4753: $30 $dc

    ldh [$31], a                                  ; $4755: $e0 $31
    ld [hl-], a                                   ; $4757: $32

jr_047_4758:
    inc sp                                        ; $4758: $33
    inc [hl]                                      ; $4759: $34
    sbc a                                         ; $475a: $9f
    ld a, [de]                                    ; $475b: $1a
    ld a, [de]                                    ; $475c: $1a
    dec [hl]                                      ; $475d: $35
    ld [hl], $37                                  ; $475e: $36 $37
    ret nc                                        ; $4760: $d0

    rst $38                                       ; $4761: $ff
    xor $ed                                       ; $4762: $ee $ed
    jr c, @-$01                                   ; $4764: $38 $fd

    add hl, sp                                    ; $4766: $39
    call c, Call_000_3ae1                         ; $4767: $dc $e1 $3a
    ld a, [de]                                    ; $476a: $1a
    ld a, [de]                                    ; $476b: $1a
    ld a, [de]                                    ; $476c: $1a
    dec sp                                        ; $476d: $3b
    inc a                                         ; $476e: $3c
    ld c, a                                       ; $476f: $4f
    dec a                                         ; $4770: $3d
    ld a, $3f                                     ; $4771: $3e $3f
    ld b, b                                       ; $4773: $40
    adc $ff                                       ; $4774: $ce $ff
    db $ed                                        ; $4776: $ed
    db $ec                                        ; $4777: $ec
    ld b, c                                       ; $4778: $41
    db $dd                                        ; $4779: $dd
    ld [c], a                                     ; $477a: $e2
    rst $38                                       ; $477b: $ff
    ld b, d                                       ; $477c: $42
    ld a, [de]                                    ; $477d: $1a
    ld b, e                                       ; $477e: $43
    ld b, h                                       ; $477f: $44
    ld b, l                                       ; $4780: $45
    ld b, [hl]                                    ; $4781: $46
    ld b, a                                       ; $4782: $47
    ld c, b                                       ; $4783: $48
    reti                                          ; $4784: $d9


    ld c, c                                       ; $4785: $49
    rst $08                                       ; $4786: $cf
    rst $38                                       ; $4787: $ff
    db $ed                                        ; $4788: $ed
    db $ec                                        ; $4789: $ec
    ld c, d                                       ; $478a: $4a

jr_047_478b:
    ld [de], a                                    ; $478b: $12
    ld a, c                                       ; $478c: $79
    ld [c], a                                     ; $478d: $e2
    ld c, e                                       ; $478e: $4b
    ld c, h                                       ; $478f: $4c
    sbc a                                         ; $4790: $9f
    ld c, l                                       ; $4791: $4d
    ld c, [hl]                                    ; $4792: $4e
    ld c, a                                       ; $4793: $4f
    ld d, b                                       ; $4794: $50
    ld d, c                                       ; $4795: $51
    ret nc                                        ; $4796: $d0

    rst $38                                       ; $4797: $ff
    xor $ed                                       ; $4798: $ee $ed
    ld d, d                                       ; $479a: $52
    db $fd                                        ; $479b: $fd
    ld d, e                                       ; $479c: $53
    call c, Call_047_54e2                         ; $479d: $dc $e2 $54
    ld d, l                                       ; $47a0: $55
    ld d, [hl]                                    ; $47a1: $56
    ld d, a                                       ; $47a2: $57
    ld a, [de]                                    ; $47a3: $1a
    ld a, [de]                                    ; $47a4: $1a
    or e                                          ; $47a5: $b3
    ld e, b                                       ; $47a6: $58
    ld e, c                                       ; $47a7: $59
    rst $08                                       ; $47a8: $cf
    rst $38                                       ; $47a9: $ff
    xor $ed                                       ; $47aa: $ee $ed
    ld e, d                                       ; $47ac: $5a
    jr c, jr_047_478b                             ; $47ad: $38 $dc

    pop hl                                        ; $47af: $e1
    ld e, e                                       ; $47b0: $5b
    rst $38                                       ; $47b1: $ff
    ld e, h                                       ; $47b2: $5c
    ld a, [de]                                    ; $47b3: $1a
    ld e, l                                       ; $47b4: $5d
    ld e, [hl]                                    ; $47b5: $5e
    ld e, a                                       ; $47b6: $5f
    ld h, b                                       ; $47b7: $60
    ld h, c                                       ; $47b8: $61
    ld h, d                                       ; $47b9: $62
    db $f4                                        ; $47ba: $f4
    rst $08                                       ; $47bb: $cf
    rst $38                                       ; $47bc: $ff
    ccf                                           ; $47bd: $3f
    db $ed                                        ; $47be: $ed
    ld h, e                                       ; $47bf: $63
    cp c                                          ; $47c0: $b9
    pop bc                                        ; $47c1: $c1
    ld h, h                                       ; $47c2: $64

Jump_047_47c3:
    ld a, [de]                                    ; $47c3: $1a
    ld a, [de]                                    ; $47c4: $1a

jr_047_47c5:
    ld h, l                                       ; $47c5: $65
    sbc a                                         ; $47c6: $9f
    ld h, [hl]                                    ; $47c7: $66
    ld h, a                                       ; $47c8: $67
    ld l, b                                       ; $47c9: $68
    ld l, c                                       ; $47ca: $69
    ld l, d                                       ; $47cb: $6a
    rst $08                                       ; $47cc: $cf
    rst $38                                       ; $47cd: $ff
    ccf                                           ; $47ce: $3f
    db $ed                                        ; $47cf: $ed
    ld l, e                                       ; $47d0: $6b
    ld a, [$e0dc]                                 ; $47d1: $fa $dc $e0
    ld l, h                                       ; $47d4: $6c
    ld a, a                                       ; $47d5: $7f
    ret nz                                        ; $47d6: $c0

    ld l, l                                       ; $47d7: $6d
    ld l, [hl]                                    ; $47d8: $6e
    ld l, a                                       ; $47d9: $6f
    ld [hl], b                                    ; $47da: $70
    ld [hl], c                                    ; $47db: $71
    ld sp, hl                                     ; $47dc: $f9
    ld [hl], d                                    ; $47dd: $72
    rst $08                                       ; $47de: $cf
    rst $38                                       ; $47df: $ff
    xor $ed                                       ; $47e0: $ee $ed
    ld [hl], e                                    ; $47e2: $73
    ld d, d                                       ; $47e3: $52
    nop                                           ; $47e4: $00
    nop                                           ; $47e5: $00
    ld [hl], h                                    ; $47e6: $74
    rst $38                                       ; $47e7: $ff
    ld a, [de]                                    ; $47e8: $1a
    ld [hl], l                                    ; $47e9: $75
    halt                                          ; $47ea: $76
    ld [hl], a                                    ; $47eb: $77
    ld a, b                                       ; $47ec: $78
    ld a, c                                       ; $47ed: $79
    ld a, d                                       ; $47ee: $7a
    ld a, e                                       ; $47ef: $7b
    db $fc                                        ; $47f0: $fc
    cp h                                          ; $47f1: $bc
    sbc a                                         ; $47f2: $9f
    rst $28                                       ; $47f3: $ef
    xor $7c                                       ; $47f4: $ee $7c
    ld a, l                                       ; $47f6: $7d
    ld a, [hl]                                    ; $47f7: $7e
    jr c, jr_047_4879                             ; $47f8: $38 $7f

    add b                                         ; $47fa: $80
    ccf                                           ; $47fb: $3f
    add c                                         ; $47fc: $81
    add d                                         ; $47fd: $82
    add e                                         ; $47fe: $83
    add h                                         ; $47ff: $84
    add l                                         ; $4800: $85
    add [hl]                                      ; $4801: $86
    pop bc                                        ; $4802: $c1
    rst $38                                       ; $4803: $ff
    ldh a, [$ef]                                  ; $4804: $f0 $ef
    rst $38                                       ; $4806: $ff
    add a                                         ; $4807: $87
    adc b                                         ; $4808: $88
    adc c                                         ; $4809: $89
    adc d                                         ; $480a: $8a
    adc e                                         ; $480b: $8b
    adc h                                         ; $480c: $8c
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    rst $08                                       ; $480f: $cf
    adc l                                         ; $4810: $8d
    adc [hl]                                      ; $4811: $8e
    adc a                                         ; $4812: $8f
    sub b                                         ; $4813: $90
    jp nc, $f0ff                                  ; $4814: $d2 $ff $f0

    rst $28                                       ; $4817: $ef
    sub c                                         ; $4818: $91
    sub d                                         ; $4819: $92
    rst $38                                       ; $481a: $ff
    sub e                                         ; $481b: $93
    sub h                                         ; $481c: $94
    sub l                                         ; $481d: $95
    sub [hl]                                      ; $481e: $96
    sub a                                         ; $481f: $97
    sbc b                                         ; $4820: $98
    sbc c                                         ; $4821: $99
    sbc d                                         ; $4822: $9a
    inc bc                                        ; $4823: $03
    sbc e                                         ; $4824: $9b
    sbc h                                         ; $4825: $9c
    jp nc, $ffff                                  ; $4826: $d2 $ff $ff

    rst $38                                       ; $4829: $ff
    rst $38                                       ; $482a: $ff
    rst $38                                       ; $482b: $ff
    rst $38                                       ; $482c: $ff
    rst $38                                       ; $482d: $ff
    rst $38                                       ; $482e: $ff
    rst $38                                       ; $482f: $ff
    rst $38                                       ; $4830: $ff
    rst $38                                       ; $4831: $ff
    nop                                           ; $4832: $00
    rst $38                                       ; $4833: $ff
    rst $38                                       ; $4834: $ff
    rst $38                                       ; $4835: $ff
    rst $38                                       ; $4836: $ff
    rst $38                                       ; $4837: $ff
    rst $38                                       ; $4838: $ff
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
    nop                                           ; $4843: $00
    rst $38                                       ; $4844: $ff
    rst $38                                       ; $4845: $ff
    rst $38                                       ; $4846: $ff
    rst $38                                       ; $4847: $ff
    rst $38                                       ; $4848: $ff
    rst $38                                       ; $4849: $ff
    rst $38                                       ; $484a: $ff
    rst $38                                       ; $484b: $ff
    rst $38                                       ; $484c: $ff
    rst $38                                       ; $484d: $ff
    rst $38                                       ; $484e: $ff
    rst $38                                       ; $484f: $ff
    rst $38                                       ; $4850: $ff
    rst $38                                       ; $4851: $ff
    rst $38                                       ; $4852: $ff
    rst $38                                       ; $4853: $ff
    nop                                           ; $4854: $00
    rst $38                                       ; $4855: $ff
    rst $38                                       ; $4856: $ff
    rst $38                                       ; $4857: $ff
    rst $38                                       ; $4858: $ff
    rst $38                                       ; $4859: $ff
    rst $38                                       ; $485a: $ff
    rst $38                                       ; $485b: $ff
    rst $38                                       ; $485c: $ff
    rst $38                                       ; $485d: $ff
    rst $38                                       ; $485e: $ff
    rst $38                                       ; $485f: $ff
    rst $38                                       ; $4860: $ff
    rst $38                                       ; $4861: $ff
    rst $38                                       ; $4862: $ff
    rst $38                                       ; $4863: $ff
    rst $38                                       ; $4864: $ff
    nop                                           ; $4865: $00
    rst $38                                       ; $4866: $ff
    rst $38                                       ; $4867: $ff
    rst $38                                       ; $4868: $ff
    rst $38                                       ; $4869: $ff
    rst $38                                       ; $486a: $ff
    rst $38                                       ; $486b: $ff
    rst $38                                       ; $486c: $ff
    rst $38                                       ; $486d: $ff
    rst $38                                       ; $486e: $ff
    rst $38                                       ; $486f: $ff
    rst $38                                       ; $4870: $ff
    rst $38                                       ; $4871: $ff
    rst $38                                       ; $4872: $ff
    rst $38                                       ; $4873: $ff
    rst $38                                       ; $4874: $ff
    rst $38                                       ; $4875: $ff
    nop                                           ; $4876: $00
    rst $38                                       ; $4877: $ff
    rst $38                                       ; $4878: $ff

jr_047_4879:
    rst $38                                       ; $4879: $ff
    rst $38                                       ; $487a: $ff
    rst $38                                       ; $487b: $ff
    rst $38                                       ; $487c: $ff
    rst $38                                       ; $487d: $ff
    rst $38                                       ; $487e: $ff
    rst $38                                       ; $487f: $ff
    rst $38                                       ; $4880: $ff
    rst $38                                       ; $4881: $ff
    rst $38                                       ; $4882: $ff
    rst $38                                       ; $4883: $ff
    rst $38                                       ; $4884: $ff
    rst $38                                       ; $4885: $ff
    rst $38                                       ; $4886: $ff
    nop                                           ; $4887: $00
    rst $38                                       ; $4888: $ff
    rst $38                                       ; $4889: $ff
    rst $38                                       ; $488a: $ff
    rst $38                                       ; $488b: $ff
    rst $38                                       ; $488c: $ff
    rst $38                                       ; $488d: $ff
    rst $38                                       ; $488e: $ff
    rst $38                                       ; $488f: $ff
    rst $38                                       ; $4890: $ff
    rst $38                                       ; $4891: $ff
    rst $38                                       ; $4892: $ff
    rst $38                                       ; $4893: $ff
    rst $38                                       ; $4894: $ff
    rst $38                                       ; $4895: $ff
    rst $38                                       ; $4896: $ff
    rst $38                                       ; $4897: $ff
    nop                                           ; $4898: $00
    rst $38                                       ; $4899: $ff
    rst $38                                       ; $489a: $ff
    rst $38                                       ; $489b: $ff
    rst $38                                       ; $489c: $ff
    rst $38                                       ; $489d: $ff
    rst $38                                       ; $489e: $ff
    rst $38                                       ; $489f: $ff
    rst $38                                       ; $48a0: $ff
    rst $38                                       ; $48a1: $ff
    rst $38                                       ; $48a2: $ff
    rst $38                                       ; $48a3: $ff
    rst $38                                       ; $48a4: $ff
    rst $38                                       ; $48a5: $ff
    rst $38                                       ; $48a6: $ff
    rst $38                                       ; $48a7: $ff
    rst $38                                       ; $48a8: $ff
    nop                                           ; $48a9: $00
    rst $38                                       ; $48aa: $ff
    rst $38                                       ; $48ab: $ff
    rst $38                                       ; $48ac: $ff
    rst $38                                       ; $48ad: $ff
    rst $38                                       ; $48ae: $ff
    rst $38                                       ; $48af: $ff
    rst $38                                       ; $48b0: $ff
    rst $38                                       ; $48b1: $ff
    rst $38                                       ; $48b2: $ff
    rst $38                                       ; $48b3: $ff
    rst $38                                       ; $48b4: $ff
    rst $38                                       ; $48b5: $ff
    rst $38                                       ; $48b6: $ff
    rst $38                                       ; $48b7: $ff
    rst $38                                       ; $48b8: $ff
    rst $38                                       ; $48b9: $ff
    nop                                           ; $48ba: $00
    rst $38                                       ; $48bb: $ff
    rst $38                                       ; $48bc: $ff
    rst $38                                       ; $48bd: $ff
    rst $38                                       ; $48be: $ff
    rst $38                                       ; $48bf: $ff
    rst $38                                       ; $48c0: $ff
    rst $38                                       ; $48c1: $ff
    rst $38                                       ; $48c2: $ff
    rst $38                                       ; $48c3: $ff
    rst $38                                       ; $48c4: $ff
    rst $38                                       ; $48c5: $ff
    rst $38                                       ; $48c6: $ff
    rst $38                                       ; $48c7: $ff
    rst $38                                       ; $48c8: $ff
    rst $38                                       ; $48c9: $ff
    rst $38                                       ; $48ca: $ff
    nop                                           ; $48cb: $00
    rst $38                                       ; $48cc: $ff
    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    rst $38                                       ; $48d0: $ff
    rst $38                                       ; $48d1: $ff
    rst $38                                       ; $48d2: $ff
    rst $38                                       ; $48d3: $ff
    rst $38                                       ; $48d4: $ff
    rst $38                                       ; $48d5: $ff
    rst $38                                       ; $48d6: $ff
    rst $38                                       ; $48d7: $ff
    rst $38                                       ; $48d8: $ff
    rst $38                                       ; $48d9: $ff
    rst $38                                       ; $48da: $ff
    rst $38                                       ; $48db: $ff
    nop                                           ; $48dc: $00
    rst $38                                       ; $48dd: $ff
    rst $38                                       ; $48de: $ff
    rst $38                                       ; $48df: $ff
    db $fd                                        ; $48e0: $fd
    nop                                           ; $48e1: $00
    nop                                           ; $48e2: $00
    nop                                           ; $48e3: $00
    ld de, $ff09                                  ; $48e4: $11 $09 $ff
    rst $38                                       ; $48e7: $ff
    rst $38                                       ; $48e8: $ff
    rst $38                                       ; $48e9: $ff
    db $e3                                        ; $48ea: $e3
    ld [c], a                                     ; $48eb: $e2
    dec bc                                        ; $48ec: $0b
    rst $38                                       ; $48ed: $ff
    ld [c], a                                     ; $48ee: $e2
    ret c                                         ; $48ef: $d8

    rst $38                                       ; $48f0: $ff
    rst $28                                       ; $48f1: $ef
    xor $01                                       ; $48f2: $ee $01

jr_047_48f4:
    ld [$ffc0], sp                                ; $48f4: $08 $c0 $ff
    rst $38                                       ; $48f7: $ff
    rst $38                                       ; $48f8: $ff
    pop bc                                        ; $48f9: $c1
    db $e4                                        ; $48fa: $e4
    cp a                                          ; $48fb: $bf
    rst $38                                       ; $48fc: $ff
    cp h                                          ; $48fd: $bc
    db $fd                                        ; $48fe: $fd
    jp c, $f8ff                                   ; $48ff: $da $ff $f8

    rst $30                                       ; $4902: $f7
    rst $08                                       ; $4903: $cf
    ld c, $0b                                     ; $4904: $0e $0b
    rrca                                          ; $4906: $0f
    rrca                                          ; $4907: $0f
    jp c, $f5ff                                   ; $4908: $da $ff $f5

    db $f4                                        ; $490b: $f4
    dec c                                         ; $490c: $0d
    add hl, bc                                    ; $490d: $09
    rst $08                                       ; $490e: $cf
    ld c, $0e                                     ; $490f: $0e $0e
    ld c, $08                                     ; $4911: $0e $08
    ret nz                                        ; $4913: $c0

    rst $38                                       ; $4914: $ff
    add c                                         ; $4915: $81
    ld hl, sp+$0e                                 ; $4916: $f8 $0e
    ld c, $a1                                     ; $4918: $0e $a1
    rrca                                          ; $491a: $0f
    ld a, $ff                                     ; $491b: $3e $ff
    ret nz                                        ; $491d: $c0

    db $fd                                        ; $491e: $fd
    ret c                                         ; $491f: $d8

    rst $38                                       ; $4920: $ff
    rst $28                                       ; $4921: $ef
    xor $69                                       ; $4922: $ee $69
    add c                                         ; $4924: $81
    db $e4                                        ; $4925: $e4
    dec c                                         ; $4926: $0d
    ld bc, $ff0a                                  ; $4927: $01 $0a $ff
    ldh [$d1], a                                  ; $492a: $e0 $d1
    rst $38                                       ; $492c: $ff
    push af                                       ; $492d: $f5
    db $f4                                        ; $492e: $f4
    jp $bfe1                                      ; $492f: $c3 $e1 $bf


    rst $38                                       ; $4932: $ff
    ld a, a                                       ; $4933: $7f
    rst $30                                       ; $4934: $f7
    ret nz                                        ; $4935: $c0

    db $e3                                        ; $4936: $e3
    jr z, jr_047_48f4                             ; $4937: $28 $bb

    ret nz                                        ; $4939: $c0

    ret nc                                        ; $493a: $d0

    rst $38                                       ; $493b: $ff
    ld a, [c]                                     ; $493c: $f2
    pop af                                        ; $493d: $f1
    ld c, c                                       ; $493e: $49
    add b                                         ; $493f: $80
    ld [c], a                                     ; $4940: $e2
    dec c                                         ; $4941: $0d
    ret nz                                        ; $4942: $c0

    rst $38                                       ; $4943: $ff
    ld b, c                                       ; $4944: $41
    ld a, [$c040]                                 ; $4945: $fa $40 $c0
    rst $38                                       ; $4948: $ff
    call nz, $be92                                ; $4949: $c4 $92 $be
    ret nz                                        ; $494c: $c0

    ret nz                                        ; $494d: $c0

    rst $38                                       ; $494e: $ff
    add h                                         ; $494f: $84
    sbc c                                         ; $4950: $99
    ld b, c                                       ; $4951: $41
    ldh [$0c], a                                  ; $4952: $e0 $0c
    rst $38                                       ; $4954: $ff
    ldh [$58], a                                  ; $4955: $e0 $58
    ret nz                                        ; $4957: $c0

    pop hl                                        ; $4958: $e1
    pop de                                        ; $4959: $d1
    rst $38                                       ; $495a: $ff
    add $b1                                       ; $495b: $c6 $b1
    ld c, $08                                     ; $495d: $0e $08
    rst $38                                       ; $495f: $ff
    ldh [$0c], a                                  ; $4960: $e0 $0c
    add d                                         ; $4962: $82
    rst $18                                       ; $4963: $df
    ld [bc], a                                    ; $4964: $02
    ret nz                                        ; $4965: $c0

    ei                                            ; $4966: $fb
    ld [$8433], sp                                ; $4967: $08 $33 $84
    rst $38                                       ; $496a: $ff
    rst $38                                       ; $496b: $ff
    rst $38                                       ; $496c: $ff
    rst $38                                       ; $496d: $ff
    rst $38                                       ; $496e: $ff
    rst $38                                       ; $496f: $ff
    rst $38                                       ; $4970: $ff
    rst $38                                       ; $4971: $ff
    rst $38                                       ; $4972: $ff
    rst $38                                       ; $4973: $ff
    nop                                           ; $4974: $00
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
    rst $38                                       ; $4984: $ff
    nop                                           ; $4985: $00
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
    rst $38                                       ; $4995: $ff
    nop                                           ; $4996: $00
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
    rst $38                                       ; $49a5: $ff
    rst $38                                       ; $49a6: $ff
    nop                                           ; $49a7: $00
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
    rst $38                                       ; $49b7: $ff
    nop                                           ; $49b8: $00
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
    rst $38                                       ; $49c8: $ff
    nop                                           ; $49c9: $00
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
    rst $38                                       ; $49d9: $ff
    nop                                           ; $49da: $00
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
    rst $38                                       ; $49ea: $ff
    nop                                           ; $49eb: $00
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
    rst $38                                       ; $49fb: $ff
    nop                                           ; $49fc: $00
    rst $38                                       ; $49fd: $ff
    rst $38                                       ; $49fe: $ff
    rst $38                                       ; $49ff: $ff
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
    rst $38                                       ; $4a0c: $ff
    nop                                           ; $4a0d: $00
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
    rst $38                                       ; $4a1d: $ff
    nop                                           ; $4a1e: $00
    rst $38                                       ; $4a1f: $ff
    rst $38                                       ; $4a20: $ff
    rst $38                                       ; $4a21: $ff
    rst $38                                       ; $4a22: $ff
    rst $38                                       ; $4a23: $ff
    ld hl, sp+$00                                 ; $4a24: $f8 $00
    nop                                           ; $4a26: $00
    nop                                           ; $4a27: $00
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    rst $38                                       ; $4a2a: $ff
    ld bc, $7fff                                  ; $4a2b: $01 $ff $7f
    rst $28                                       ; $4a2e: $ef
    ld b, l                                       ; $4a2f: $45
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    adc $00                                       ; $4a32: $ce $00
    ccf                                           ; $4a34: $3f
    ld b, a                                       ; $4a35: $47
    rst $38                                       ; $4a36: $ff
    ld bc, $0000                                  ; $4a37: $01 $00 $00
    rst $38                                       ; $4a3a: $ff
    ld bc, $473f                                  ; $4a3b: $01 $3f $47
    rst $38                                       ; $4a3e: $ff
    ld a, a                                       ; $4a3f: $7f
    nop                                           ; $4a40: $00
    nop                                           ; $4a41: $00
    adc $00                                       ; $4a42: $ce $00
    rst $38                                       ; $4a44: $ff
    ld bc, $13ff                                  ; $4a45: $01 $ff $13
    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    ccf                                           ; $4a4a: $3f
    ld b, a                                       ; $4a4b: $47
    rst $38                                       ; $4a4c: $ff
    ld bc, $00b9                                  ; $4a4d: $01 $b9 $00
    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    ccf                                           ; $4a52: $3f
    ld b, a                                       ; $4a53: $47
    rst $38                                       ; $4a54: $ff
    ld bc, $13ff                                  ; $4a55: $01 $ff $13
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    rst $38                                       ; $4a5a: $ff
    inc de                                        ; $4a5b: $13
    rst $38                                       ; $4a5c: $ff
    ld bc, $00b9                                  ; $4a5d: $01 $b9 $00
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    adc $00                                       ; $4a62: $ce $00
    rst $38                                       ; $4a64: $ff
    ld bc, $00b9                                  ; $4a65: $01 $b9 $00
    db $fd                                        ; $4a68: $fd
    nop                                           ; $4a69: $00
    rst $38                                       ; $4a6a: $ff
    ei                                            ; $4a6b: $fb
    ld bc, $0300                                  ; $4a6c: $01 $00 $03
    inc bc                                        ; $4a6f: $03
    rlca                                          ; $4a70: $07
    inc b                                         ; $4a71: $04
    rst $38                                       ; $4a72: $ff
    rrca                                          ; $4a73: $0f
    ld [$111e], sp                                ; $4a74: $08 $1e $11
    ccf                                           ; $4a77: $3f
    nop                                           ; $4a78: $00
    ld a, e                                       ; $4a79: $7b
    ld b, h                                       ; $4a7a: $44
    rst $38                                       ; $4a7b: $ff
    db $fd                                        ; $4a7c: $fd
    ld [bc], a                                    ; $4a7d: $02
    xor $00                                       ; $4a7e: $ee $00
    ret nz                                        ; $4a80: $c0

    ret nz                                        ; $4a81: $c0

    ldh [$60], a                                  ; $4a82: $e0 $60
    rst $38                                       ; $4a84: $ff
    ldh a, [$30]                                  ; $4a85: $f0 $30
    ld hl, sp+$18                                 ; $4a87: $f8 $18
    ld a, h                                       ; $4a89: $7c
    adc h                                         ; $4a8a: $8c
    cp [hl]                                       ; $4a8b: $be
    ld b, h                                       ; $4a8c: $44
    rst $20                                       ; $4a8d: $e7
    sbc $20                                       ; $4a8e: $de $20
    xor $d1                                       ; $4a90: $ee $d1
    db $ed                                        ; $4a92: $ed
    or b                                          ; $4a93: $b0
    push hl                                       ; $4a94: $e5
    ld e, $00                                     ; $4a95: $1e $00
    ld a, a                                       ; $4a97: $7f
    rst $38                                       ; $4a98: $ff
    nop                                           ; $4a99: $00
    rst $38                                       ; $4a9a: $ff
    nop                                           ; $4a9b: $00
    db $e3                                        ; $4a9c: $e3
    inc e                                         ; $4a9d: $1c
    nop                                           ; $4a9e: $00
    inc bc                                        ; $4a9f: $03
    nop                                           ; $4aa0: $00
    rst $20                                       ; $4aa1: $e7
    rlca                                          ; $4aa2: $07
    nop                                           ; $4aa3: $00

jr_047_4aa4:
    rrca                                          ; $4aa4: $0f
    pop af                                        ; $4aa5: $f1
    ldh [$c0], a                                  ; $4aa6: $e0 $c0
    ldh [$80], a                                  ; $4aa8: $e0 $80
    dec a                                         ; $4aaa: $3d
    ret nz                                        ; $4aab: $c0

    rst $38                                       ; $4aac: $ff
    ld e, $11                                     ; $4aad: $1e $11
    rst $30                                       ; $4aaf: $f7
    ld [$04bb], sp                                ; $4ab0: $08 $bb $04
    db $dd                                        ; $4ab3: $dd
    ld [hl+], a                                   ; $4ab4: $22
    rst $30                                       ; $4ab5: $f7
    xor $11                                       ; $4ab6: $ee $11

jr_047_4ab8:
    ld [hl], a                                    ; $4ab8: $77
    ld hl, sp-$1d                                 ; $4ab9: $f8 $e3
    db $10                                        ; $4abb: $10
    halt                                          ; $4abc: $76
    adc b                                         ; $4abd: $88
    cp b                                          ; $4abe: $b8
    rst $38                                       ; $4abf: $ff
    ld b, b                                       ; $4ac0: $40
    ret c                                         ; $4ac1: $d8

    jr nz, jr_047_4aa4                            ; $4ac2: $20 $e0

    ld [bc], a                                    ; $4ac4: $02
    ld h, b                                       ; $4ac5: $60
    sub l                                         ; $4ac6: $95
    add b                                         ; $4ac7: $80
    ld [hl], a                                    ; $4ac8: $77
    dec bc                                        ; $4ac9: $0b
    add b                                         ; $4aca: $80
    ld d, a                                       ; $4acb: $57
    ld [hl], c                                    ; $4acc: $71
    and $f0                                       ; $4acd: $e6 $f0
    nop                                           ; $4acf: $00
    ld a, [hl]                                    ; $4ad0: $7e
    ret nz                                        ; $4ad1: $c0

    ldh [$e5], a                                  ; $4ad2: $e0 $e5
    rst $38                                       ; $4ad4: $ff
    ld h, c                                       ; $4ad5: $61
    ld [c], a                                     ; $4ad6: $e2
    ld [bc], a                                    ; $4ad7: $02
    cp e                                          ; $4ad8: $bb
    ldh [$fe], a                                  ; $4ad9: $e0 $fe
    pop hl                                        ; $4adb: $e1
    jp $fb00                                      ; $4adc: $c3 $00 $fb


    ld a, $51                                     ; $4adf: $3e $51
    and $80                                       ; $4ae1: $e6 $80
    nop                                           ; $4ae3: $00
    ret nz                                        ; $4ae4: $c0

    nop                                           ; $4ae5: $00
    ldh [$da], a                                  ; $4ae6: $e0 $da
    ldh [$f2], a                                  ; $4ae8: $e0 $f2
    db $eb                                        ; $4aea: $eb
    db $fd                                        ; $4aeb: $fd
    ld hl, sp-$6f                                 ; $4aec: $f8 $91
    db $e4                                        ; $4aee: $e4
    rrca                                          ; $4aef: $0f
    db $10                                        ; $4af0: $10
    rra                                           ; $4af1: $1f
    jr nz, @+$31                                  ; $4af2: $20 $2f

    db $10                                        ; $4af4: $10
    rst $38                                       ; $4af5: $ff
    rra                                           ; $4af6: $1f
    ld h, b                                       ; $4af7: $60
    cpl                                           ; $4af8: $2f
    ld d, b                                       ; $4af9: $50
    add b                                         ; $4afa: $80
    ld a, a                                       ; $4afb: $7f
    nop                                           ; $4afc: $00
    ret nz                                        ; $4afd: $c0

    di                                            ; $4afe: $f3

Jump_047_4aff:
jr_047_4aff:
    rra                                           ; $4aff: $1f
    jr nz, jr_047_4ab8                            ; $4b00: $20 $b6

    pop hl                                        ; $4b02: $e1
    db $fc                                        ; $4b03: $fc
    db $e3                                        ; $4b04: $e3
    ldh [rTAC], a                                 ; $4b05: $e0 $07
    nop                                           ; $4b07: $00
    dec bc                                        ; $4b08: $0b
    rst $38                                       ; $4b09: $ff
    ret nz                                        ; $4b0a: $c0

    dec l                                         ; $4b0b: $2d
    ldh [rNR21], a                                ; $4b0c: $e0 $16
    ldh a, [rTAC]                                 ; $4b0e: $f0 $07
    ldh a, [$0b]                                  ; $4b10: $f0 $0b
    rst $38                                       ; $4b12: $ff
    jr jr_047_4b16                                ; $4b13: $18 $01

    ret nz                                        ; $4b15: $c0

jr_047_4b16:
    ld [hl+], a                                   ; $4b16: $22
    db $10                                        ; $4b17: $10
    halt                                          ; $4b18: $76
    ld bc, $ffb8                                  ; $4b19: $01 $b8 $ff
    ld b, d                                       ; $4b1c: $42
    ret c                                         ; $4b1d: $d8

    dec b                                         ; $4b1e: $05
    ldh [$0a], a                                  ; $4b1f: $e0 $0a
    ld h, b                                       ; $4b21: $60
    ld de, $ff80                                  ; $4b22: $11 $80 $ff
    ld h, $8e                                     ; $4b25: $26 $8e
    ld c, l                                       ; $4b27: $4d
    dec e                                         ; $4b28: $1d
    xor e                                         ; $4b29: $ab
    nop                                           ; $4b2a: $00
    ld d, l                                       ; $4b2b: $55
    nop                                           ; $4b2c: $00
    rst $38                                       ; $4b2d: $ff
    rst $28                                       ; $4b2e: $ef
    nop                                           ; $4b2f: $00
    ld [hl], a                                    ; $4b30: $77
    nop                                           ; $4b31: $00
    cp e                                          ; $4b32: $bb
    nop                                           ; $4b33: $00
    dec e                                         ; $4b34: $1d
    nop                                           ; $4b35: $00
    ld c, a                                       ; $4b36: $4f
    rst $28                                       ; $4b37: $ef
    ldh [$61], a                                  ; $4b38: $e0 $61
    ldh [$c6], a                                  ; $4b3a: $e0 $c6
    rst $20                                       ; $4b3c: $e7
    cp h                                          ; $4b3d: $bc
    db $e3                                        ; $4b3e: $e3
    db $fd                                        ; $4b3f: $fd
    ldh a, [$ec]                                  ; $4b40: $f0 $ec
    rst $18                                       ; $4b42: $df
    ld hl, sp+$00                                 ; $4b43: $f8 $00
    db $fc                                        ; $4b45: $fc
    nop                                           ; $4b46: $00
    cp $16                                        ; $4b47: $fe $16
    ldh [$bf], a                                  ; $4b49: $e0 $bf
    ld b, b                                       ; $4b4b: $40
    rst $38                                       ; $4b4c: $ff
    rst $18                                       ; $4b4d: $df
    jr nz, jr_047_4aff                            ; $4b4e: $20 $af

jr_047_4b50:
    ld d, b                                       ; $4b50: $50
    rst $00                                       ; $4b51: $c7
    jr c, jr_047_4b50                             ; $4b52: $38 $fc

    nop                                           ; $4b54: $00
    rst $38                                       ; $4b55: $ff
    xor $10                                       ; $4b56: $ee $10
    rst $30                                       ; $4b58: $f7
    ld [$04fb], sp                                ; $4b59: $08 $fb $04
    push af                                       ; $4b5c: $f5
    ld a, [bc]                                    ; $4b5d: $0a
    ccf                                           ; $4b5e: $3f
    ei                                            ; $4b5f: $fb
    inc b                                         ; $4b60: $04
    db $fd                                        ; $4b61: $fd
    ld [bc], a                                    ; $4b62: $02
    ld a, [$5205]                                 ; $4b63: $fa $05 $52
    push hl                                       ; $4b66: $e5
    ld d, b                                       ; $4b67: $50
    db $e3                                        ; $4b68: $e3
    rst $38                                       ; $4b69: $ff
    ldh [rP1], a                                  ; $4b6a: $e0 $00
    rla                                           ; $4b6c: $17
    ld l, b                                       ; $4b6d: $68
    rrca                                          ; $4b6e: $0f
    ld [hl], b                                    ; $4b6f: $70
    rla                                           ; $4b70: $17
    ld l, b                                       ; $4b71: $68
    ei                                            ; $4b72: $fb
    dec bc                                        ; $4b73: $0b
    ld [hl], h                                    ; $4b74: $74
    db $fc                                        ; $4b75: $fc
    pop hl                                        ; $4b76: $e1
    dec b                                         ; $4b77: $05
    ld a, d                                       ; $4b78: $7a
    dec bc                                        ; $4b79: $0b
    ld [hl], h                                    ; $4b7a: $74
    ld a, [bc]                                    ; $4b7b: $0a
    rst $38                                       ; $4b7c: $ff
    ld a, [$f8c1]                                 ; $4b7d: $fa $c1 $f8
    ld [hl+], a                                   ; $4b80: $22
    jr c, jr_047_4b94                             ; $4b81: $38 $11

    reti                                          ; $4b83: $d9


    inc bc                                        ; $4b84: $03
    rst $38                                       ; $4b85: $ff
    db $e3                                        ; $4b86: $e3
    rlca                                          ; $4b87: $07
    rst $20                                       ; $4b88: $e7
    rrca                                          ; $4b89: $0f
    rst $08                                       ; $4b8a: $cf
    rra                                           ; $4b8b: $1f
    rst $18                                       ; $4b8c: $df
    ld a, [bc]                                    ; $4b8d: $0a
    rst $38                                       ; $4b8e: $ff
    dec sp                                        ; $4b8f: $3b
    dec d                                         ; $4b90: $15
    ld [hl], a                                    ; $4b91: $77
    dec bc                                        ; $4b92: $0b
    rst $28                                       ; $4b93: $ef

jr_047_4b94:
    ld d, $df                                     ; $4b94: $16 $df
    inc l                                         ; $4b96: $2c
    rst $38                                       ; $4b97: $ff
    cp [hl]                                       ; $4b98: $be
    ld e, c                                       ; $4b99: $59
    ld a, l                                       ; $4b9a: $7d
    or e                                          ; $4b9b: $b3
    ei                                            ; $4b9c: $fb
    ld h, a                                       ; $4b9d: $67
    rst $38                                       ; $4b9e: $ff
    xor $ff                                       ; $4b9f: $ee $ff
    xor $9e                                       ; $4ba1: $ee $9e
    sbc $3e                                       ; $4ba3: $de $3e
    cp [hl]                                       ; $4ba5: $be
    ld a, [hl]                                    ; $4ba6: $7e
    ld a, [hl]                                    ; $4ba7: $7e
    db $fd                                        ; $4ba8: $fd
    ld a, a                                       ; $4ba9: $7f
    db $fc                                        ; $4baa: $fc
    db $fd                                        ; $4bab: $fd
    db $fc                                        ; $4bac: $fc
    ei                                            ; $4bad: $fb
    ld hl, sp-$05                                 ; $4bae: $f8 $fb
    ld hl, sp+$36                                 ; $4bb0: $f8 $36
    push hl                                       ; $4bb2: $e5
    rst $38                                       ; $4bb3: $ff

jr_047_4bb4:
    rst $30                                       ; $4bb4: $f7
    nop                                           ; $4bb5: $00
    ld a, [$d500]                                 ; $4bb6: $fa $00 $d5
    dec b                                         ; $4bb9: $05
    rst $28                                       ; $4bba: $ef
    rrca                                          ; $4bbb: $0f
    cp $dc                                        ; $4bbc: $fe $dc
    pop bc                                        ; $4bbe: $c1
    ld a, a                                       ; $4bbf: $7f
    nop                                           ; $4bc0: $00
    cp a                                          ; $4bc1: $bf

jr_047_4bc2:
    nop                                           ; $4bc2: $00
    ld e, a                                       ; $4bc3: $5f
    ld b, b                                       ; $4bc4: $40
    rst $28                                       ; $4bc5: $ef
    rst $38                                       ; $4bc6: $ff
    ldh [$d7], a                                  ; $4bc7: $e0 $d7
    ldh a, [$a3]                                  ; $4bc9: $f0 $a3
    ld hl, sp-$1d                                 ; $4bcb: $f8 $e3
    inc e                                         ; $4bcd: $1c
    pop af                                        ; $4bce: $f1
    rst $38                                       ; $4bcf: $ff
    ld c, $e9                                     ; $4bd0: $0e $e9
    ld d, $f4                                     ; $4bd2: $16 $f4
    dec bc                                        ; $4bd4: $0b
    ld hl, sp+$07                                 ; $4bd5: $f8 $07
    db $f4                                        ; $4bd7: $f4
    rst $38                                       ; $4bd8: $ff
    dec bc                                        ; $4bd9: $0b
    ld a, [$fd05]                                 ; $4bda: $fa $05 $fd
    ld [bc], a                                    ; $4bdd: $02
    db $fc                                        ; $4bde: $fc
    inc bc                                        ; $4bdf: $03
    ld a, [$05fd]                                 ; $4be0: $fa $fd $05
    db $fc                                        ; $4be3: $fc
    db $e3                                        ; $4be4: $e3
    ld a, [hl]                                    ; $4be5: $7e
    add c                                         ; $4be6: $81
    ld a, l                                       ; $4be7: $7d
    add d                                         ; $4be8: $82
    ld a, $c1                                     ; $4be9: $3e $c1
    rst $38                                       ; $4beb: $ff
    ldh a, [rP1]                                  ; $4bec: $f0 $00
    ld [hl], b                                    ; $4bee: $70
    add b                                         ; $4bef: $80
    ld a, b                                       ; $4bf0: $78
    add b                                         ; $4bf1: $80
    jr c, jr_047_4bb4                             ; $4bf2: $38 $c0

    rst $08                                       ; $4bf4: $cf
    jr c, @-$3e                                   ; $4bf5: $38 $c0

    inc e                                         ; $4bf7: $1c
    ldh [$fe], a                                  ; $4bf8: $e0 $fe
    pop hl                                        ; $4bfa: $e1
    jr jr_047_4bc2                                ; $4bfb: $18 $c5

    dec b                                         ; $4bfd: $05
    ld [bc], a                                    ; $4bfe: $02
    di                                            ; $4bff: $f3
    ld a, [bc]                                    ; $4c00: $0a
    dec d                                         ; $4c01: $15
    ld c, [hl]                                    ; $4c02: $4e
    pop bc                                        ; $4c03: $c1
    ld l, h                                       ; $4c04: $6c
    pop hl                                        ; $4c05: $e1
    dec b                                         ; $4c06: $05
    ld a, d                                       ; $4c07: $7a
    inc bc                                        ; $4c08: $03
    sbc h                                         ; $4c09: $9c
    xor a                                         ; $4c0a: $af
    ld b, a                                       ; $4c0b: $47
    xor b                                         ; $4c0c: $a8
    xor a                                         ; $4c0d: $af
    ld d, b                                       ; $4c0e: $50
    add b                                         ; $4c0f: $80
    pop bc                                        ; $4c10: $c1
    cp $fe                                        ; $4c11: $fe $fe
    and $fc                                       ; $4c13: $e6 $fc
    rst $38                                       ; $4c15: $ff
    ld bc, $01fc                                  ; $4c16: $01 $fc $01
    ld hl, sp+$03                                 ; $4c19: $f8 $03
    nop                                           ; $4c1b: $00
    ccf                                           ; $4c1c: $3f
    ld bc, $7fff                                  ; $4c1d: $01 $ff $7f
    ld [bc], a                                    ; $4c20: $02
    ld a, a                                       ; $4c21: $7f
    dec b                                         ; $4c22: $05
    rst $38                                       ; $4c23: $ff
    dec bc                                        ; $4c24: $0b
    rst $38                                       ; $4c25: $ff
    rla                                           ; $4c26: $17
    ei                                            ; $4c27: $fb
    rst $38                                       ; $4c28: $ff
    dec hl                                        ; $4c29: $2b
    db $fc                                        ; $4c2a: $fc
    ldh [$cf], a                                  ; $4c2b: $e0 $cf
    rst $38                                       ; $4c2d: $ff
    ld e, a                                       ; $4c2e: $5f
    rst $38                                       ; $4c2f: $ff
    rst $18                                       ; $4c30: $df
    push af                                       ; $4c31: $f5
    rst $38                                       ; $4c32: $ff
    rst $38                                       ; $4c33: $ff
    db $e3                                        ; $4c34: $e3
    cp $f8                                        ; $4c35: $fe $f8
    ldh [$f7], a                                  ; $4c37: $e0 $f7
    ldh a, [$ec]                                  ; $4c39: $f0 $ec
    ldh [rIE], a                                  ; $4c3b: $e0 $ff
    db $eb                                        ; $4c3d: $eb
    db $e3                                        ; $4c3e: $e3
    rst $10                                       ; $4c3f: $d7
    rst $00                                       ; $4c40: $c7
    adc a                                         ; $4c41: $8f
    rst $08                                       ; $4c42: $cf
    sbc a                                         ; $4c43: $9f
    rst $18                                       ; $4c44: $df
    rst $38                                       ; $4c45: $ff
    ccf                                           ; $4c46: $3f
    cp a                                          ; $4c47: $bf
    cp $fe                                        ; $4c48: $fe $fe
    cp a                                          ; $4c4a: $bf
    ccf                                           ; $4c4b: $3f
    ld a, [hl]                                    ; $4c4c: $7e
    ld a, a                                       ; $4c4d: $7f
    rst $38                                       ; $4c4e: $ff
    ld a, l                                       ; $4c4f: $7d
    ld a, a                                       ; $4c50: $7f
    ld a, d                                       ; $4c51: $7a
    ld a, a                                       ; $4c52: $7f
    ld [hl], l                                    ; $4c53: $75
    ld a, a                                       ; $4c54: $7f
    ld l, d                                       ; $4c55: $6a
    ld a, a                                       ; $4c56: $7f
    rst $38                                       ; $4c57: $ff
    ld [hl], h                                    ; $4c58: $74
    ld a, a                                       ; $4c59: $7f
    add sp, -$01                                  ; $4c5a: $e8 $ff
    ld d, c                                       ; $4c5c: $51
    db $fc                                        ; $4c5d: $fc
    and b                                         ; $4c5e: $a0
    cp $f7                                        ; $4c5f: $fe $f7
    ld b, b                                       ; $4c61: $40
    rst $38                                       ; $4c62: $ff
    add b                                         ; $4c63: $80
    ld l, a                                       ; $4c64: $6f
    add $fe                                       ; $4c65: $c6 $fe
    ld bc, $00df                                  ; $4c67: $01 $df $00
    rst $38                                       ; $4c6a: $ff
    ld l, a                                       ; $4c6b: $6f
    nop                                           ; $4c6c: $00
    daa                                           ; $4c6d: $27
    add b                                         ; $4c6e: $80
    inc de                                        ; $4c6f: $13
    ret z                                         ; $4c70: $c8

    nop                                           ; $4c71: $00
    db $ec                                        ; $4c72: $ec
    sbc $0f                                       ; $4c73: $de $0f
    pop bc                                        ; $4c75: $c1
    cp a                                          ; $4c76: $bf
    ld b, b                                       ; $4c77: $40
    cp [hl]                                       ; $4c78: $be
    ld b, c                                       ; $4c79: $41
    ld d, d                                       ; $4c7a: $52
    push bc                                       ; $4c7b: $c5
    ld a, a                                       ; $4c7c: $7f
    nop                                           ; $4c7d: $00
    cp a                                          ; $4c7e: $bf
    rra                                           ; $4c7f: $1f
    add b                                         ; $4c80: $80
    ld c, $f0                                     ; $4c81: $0e $f0
    adc [hl]                                      ; $4c83: $8e
    ld [hl], b                                    ; $4c84: $70
    db $fc                                        ; $4c85: $fc
    pop hl                                        ; $4c86: $e1
    ld c, [hl]                                    ; $4c87: $4e
    ld a, a                                       ; $4c88: $7f
    or b                                          ; $4c89: $b0
    adc [hl]                                      ; $4c8a: $8e
    ld [hl], b                                    ; $4c8b: $70
    adc $30                                       ; $4c8c: $ce $30
    xor $10                                       ; $4c8e: $ee $10
    ld h, c                                       ; $4c90: $61
    xor h                                         ; $4c91: $ac
    ld [hl], l                                    ; $4c92: $75
    ld [bc], a                                    ; $4c93: $02
    ld b, b                                       ; $4c94: $40
    and e                                         ; $4c95: $a3
    inc bc                                        ; $4c96: $03
    sbc l                                         ; $4c97: $9d
    and b                                         ; $4c98: $a0
    ccf                                           ; $4c99: $3f
    nop                                           ; $4c9a: $00
    ld a, a                                       ; $4c9b: $7f
    xor c                                         ; $4c9c: $a9
    ldh [$e7], a                                  ; $4c9d: $e0 $e7
    rlca                                          ; $4c9f: $07
    ld [$4e3f], sp                                ; $4ca0: $08 $3f $4e
    jp z, $c841                                   ; $4ca3: $ca $41 $c8

    cp $01                                        ; $4ca6: $fe $01
    db $fd                                        ; $4ca8: $fd
    rst $38                                       ; $4ca9: $ff
    ld [bc], a                                    ; $4caa: $02
    ei                                            ; $4cab: $fb
    inc bc                                        ; $4cac: $03
    ei                                            ; $4cad: $fb
    rlca                                          ; $4cae: $07
    rst $30                                       ; $4caf: $f7
    rlca                                          ; $4cb0: $07
    rst $30                                       ; $4cb1: $f7
    ld a, a                                       ; $4cb2: $7f
    rrca                                          ; $4cb3: $0f
    rst $28                                       ; $4cb4: $ef
    rrca                                          ; $4cb5: $0f
    rst $08                                       ; $4cb6: $cf
    cpl                                           ; $4cb7: $2f
    cpl                                           ; $4cb8: $2f
    rst $28                                       ; $4cb9: $ef
    rst $38                                       ; $4cba: $ff
    ldh [$c9], a                                  ; $4cbb: $e0 $c9
    cpl                                           ; $4cbd: $2f
    ld b, b                                       ; $4cbe: $40
    ldh [$fc], a                                  ; $4cbf: $e0 $fc
    pop hl                                        ; $4cc1: $e1
    cp a                                          ; $4cc2: $bf
    db $fc                                        ; $4cc3: $fc
    db $e4                                        ; $4cc4: $e4
    rst $38                                       ; $4cc5: $ff
    db $ed                                        ; $4cc6: $ed
    cp $fe                                        ; $4cc7: $fe $fe
    ld a, [c]                                     ; $4cc9: $f2
    add a                                         ; $4cca: $87
    ret nz                                        ; $4ccb: $c0

    db $fd                                        ; $4ccc: $fd
    add a                                         ; $4ccd: $87
    ret nz                                        ; $4cce: $c0

    add e                                         ; $4ccf: $83
    ret nz                                        ; $4cd0: $c0

    ldh a, [$f7]                                  ; $4cd1: $f0 $f7
    pop hl                                        ; $4cd3: $e1
    or $2f                                        ; $4cd4: $f6 $2f
    ret nc                                        ; $4cd6: $d0

    rst $38                                       ; $4cd7: $ff
    and b                                         ; $4cd8: $a0
    rst $38                                       ; $4cd9: $ff
    db $fc                                        ; $4cda: $fc
    pop hl                                        ; $4cdb: $e1
    ld b, b                                       ; $4cdc: $40
    db $fc                                        ; $4cdd: $fc
    ld [c], a                                     ; $4cde: $e2
    jr c, @-$17                                   ; $4cdf: $38 $e7

    rst $38                                       ; $4ce1: $ff
    ld a, b                                       ; $4ce2: $78
    add a                                         ; $4ce3: $87
    db $fc                                        ; $4ce4: $fc
    inc bc                                        ; $4ce5: $03
    ld e, $e1                                     ; $4ce6: $1e $e1
    ld b, $f9                                     ; $4ce8: $06 $f9
    rst $08                                       ; $4cea: $cf
    dec b                                         ; $4ceb: $05
    ldh [rSC], a                                  ; $4cec: $e0 $02
    ld hl, sp-$25                                 ; $4cee: $f8 $db
    xor c                                         ; $4cf0: $a9
    ret nz                                        ; $4cf1: $c0

    pop bc                                        ; $4cf2: $c1
    ld c, h                                       ; $4cf3: $4c
    nop                                           ; $4cf4: $00
    db $e3                                        ; $4cf5: $e3
    nop                                           ; $4cf6: $00
    or b                                          ; $4cf7: $b0
    reti                                          ; $4cf8: $d9


    and b                                         ; $4cf9: $a0
    cp $e3                                        ; $4cfa: $fe $e3

jr_047_4cfc:
    and d                                         ; $4cfc: $a2
    adc e                                         ; $4cfd: $8b
    ld bc, $0403                                  ; $4cfe: $01 $03 $04
    rst $38                                       ; $4d01: $ff
    rlca                                          ; $4d02: $07
    ld [$140b], sp                                ; $4d03: $08 $0b $14
    rla                                           ; $4d06: $17
    jr z, jr_047_4d38                             ; $4d07: $28 $2f

    ld d, b                                       ; $4d09: $50
    cp a                                          ; $4d0a: $bf
    ld e, a                                       ; $4d0b: $5f
    and b                                         ; $4d0c: $a0
    cpl                                           ; $4d0d: $2f
    ret nc                                        ; $4d0e: $d0

    ld e, a                                       ; $4d0f: $5f
    and b                                         ; $4d10: $a0
    ld d, e                                       ; $4d11: $53
    and $00                                       ; $4d12: $e6 $00
    rst $30                                       ; $4d14: $f7
    ld hl, sp+$04                                 ; $4d15: $f8 $04
    ldh a, [rNR34]                                ; $4d17: $f0 $1e
    and b                                         ; $4d19: $a0
    nop                                           ; $4d1a: $00
    rst $30                                       ; $4d1b: $f7
    ld hl, $7fef                                  ; $4d1c: $21 $ef $7f
    ld [bc], a                                    ; $4d1f: $02
    adc a                                         ; $4d20: $8f
    ld bc, $0a0f                                  ; $4d21: $01 $0f $0a
    ld c, $08                                     ; $4d24: $0e $08
    cp $e0                                        ; $4d26: $fe $e0
    rst $38                                       ; $4d28: $ff
    inc b                                         ; $4d29: $04
    rlca                                          ; $4d2a: $07
    jr nz, jr_047_4cfc                            ; $4d2b: $20 $cf

    ld b, b                                       ; $4d2d: $40
    sbc a                                         ; $4d2e: $9f
    ld [bc], a                                    ; $4d2f: $02
    cp a                                          ; $4d30: $bf
    rst $18                                       ; $4d31: $df
    dec b                                         ; $4d32: $05
    ld a, a                                       ; $4d33: $7f
    dec bc                                        ; $4d34: $0b
    rst $38                                       ; $4d35: $ff
    dec b                                         ; $4d36: $05
    inc sp                                        ; $4d37: $33

jr_047_4d38:
    and b                                         ; $4d38: $a0
    nop                                           ; $4d39: $00
    ld e, a                                       ; $4d3a: $5f
    ld a, a                                       ; $4d3b: $7f
    cpl                                           ; $4d3c: $2f
    rst $38                                       ; $4d3d: $ff
    ld d, a                                       ; $4d3e: $57
    rst $38                                       ; $4d3f: $ff
    xor e                                         ; $4d40: $ab
    rst $38                                       ; $4d41: $ff
    push af                                       ; $4d42: $f5
    ld a, [hl]                                    ; $4d43: $7e
    jp nz, $0fff                                  ; $4d44: $c2 $ff $0f

    rrca                                          ; $4d47: $0f
    ld bc, $fef1                                  ; $4d48: $01 $f1 $fe
    rst $38                                       ; $4d4b: $ff
    db $fd                                        ; $4d4c: $fd
    rst $38                                       ; $4d4d: $ff
    rst $38                                       ; $4d4e: $ff
    ld a, [$f4ff]                                 ; $4d4f: $fa $ff $f4
    rst $38                                       ; $4d52: $ff
    ld hl, sp-$02                                 ; $4d53: $f8 $fe
    ldh a, [$f8]                                  ; $4d55: $f0 $f8
    rst $38                                       ; $4d57: $ff
    ld hl, sp-$04                                 ; $4d58: $f8 $fc
    db $f4                                        ; $4d5a: $f4
    db $fc                                        ; $4d5b: $fc
    jp nz, $05ed                                  ; $4d5c: $c2 $ed $05

    ld [$82a3], a                                 ; $4d5f: $ea $a3 $82
    pop bc                                        ; $4d62: $c1
    pop de                                        ; $4d63: $d1
    add b                                         ; $4d64: $80
    rla                                           ; $4d65: $17
    add l                                         ; $4d66: $85
    push af                                       ; $4d67: $f5
    add l                                         ; $4d68: $85
    ccf                                           ; $4d69: $3f
    ld l, d                                       ; $4d6a: $6a
    add b                                         ; $4d6b: $80
    inc bc                                        ; $4d6c: $03
    rra                                           ; $4d6d: $1f
    jr nz, @+$22                                  ; $4d6e: $20 $20

    inc bc                                        ; $4d70: $03
    db $fc                                        ; $4d71: $fc
    ld bc, $a141                                  ; $4d72: $01 $41 $a1
    rst $18                                       ; $4d75: $df
    add [hl]                                      ; $4d76: $86
    ld e, c                                       ; $4d77: $59
    push hl                                       ; $4d78: $e5
    pop bc                                        ; $4d79: $c1
    db $fc                                        ; $4d7a: $fc
    or h                                          ; $4d7b: $b4
    add b                                         ; $4d7c: $80
    cp $e1                                        ; $4d7d: $fe $e1
    add l                                         ; $4d7f: $85
    add h                                         ; $4d80: $84
    ld a, a                                       ; $4d81: $7f
    add c                                         ; $4d82: $81
    ld d, d                                       ; $4d83: $52
    ldh [rP1], a                                  ; $4d84: $e0 $00
    nop                                           ; $4d86: $00
    cp $5c                                        ; $4d87: $fe $5c
    pop hl                                        ; $4d89: $e1
    cpl                                           ; $4d8a: $2f
    ret nc                                        ; $4d8b: $d0

    ld d, a                                       ; $4d8c: $57
    xor b                                         ; $4d8d: $a8
    dec hl                                        ; $4d8e: $2b
    call nc, $1f15                                ; $4d8f: $d4 $15 $1f
    ld [$f50a], a                                 ; $4d92: $ea $0a $f5
    dec b                                         ; $4d95: $05
    ld a, [$8be0]                                 ; $4d96: $fa $e0 $8b
    ld a, [hl]                                    ; $4d99: $7e
    pop bc                                        ; $4d9a: $c1
    call z, $daa1                                 ; $4d9b: $cc $a1 $da
    jp nz, $f4e1                                  ; $4d9e: $c2 $e1 $f4

    call nz, $80a2                                ; $4da1: $c4 $a2 $80
    ld b, b                                       ; $4da4: $40
    ld d, c                                       ; $4da5: $51
    adc c                                         ; $4da6: $89
    inc b                                         ; $4da7: $04
    db $f4                                        ; $4da8: $f4
    rst $38                                       ; $4da9: $ff
    inc b                                         ; $4daa: $04
    rlca                                          ; $4dab: $07
    ld [bc], a                                    ; $4dac: $02
    inc bc                                        ; $4dad: $03
    ld [bc], a                                    ; $4dae: $02
    inc bc                                        ; $4daf: $03
    ld bc, $ff01                                  ; $4db0: $01 $01 $ff
    ld a, [bc]                                    ; $4db3: $0a
    nop                                           ; $4db4: $00
    rla                                           ; $4db5: $17
    nop                                           ; $4db6: $00
    cpl                                           ; $4db7: $2f
    nop                                           ; $4db8: $00
    ld e, a                                       ; $4db9: $5f
    nop                                           ; $4dba: $00
    rst $38                                       ; $4dbb: $ff
    sbc a                                         ; $4dbc: $9f
    sbc a                                         ; $4dbd: $9f
    ld e, d                                       ; $4dbe: $5a
    rst $18                                       ; $4dbf: $df
    dec d                                         ; $4dc0: $15
    rst $18                                       ; $4dc1: $df
    xor d                                         ; $4dc2: $aa
    cp a                                          ; $4dc3: $bf
    rst $38                                       ; $4dc4: $ff
    sub b                                         ; $4dc5: $90
    cp a                                          ; $4dc6: $bf
    jr nz, jr_047_4e08                            ; $4dc7: $20 $3f

    ld b, b                                       ; $4dc9: $40
    ld a, a                                       ; $4dca: $7f
    nop                                           ; $4dcb: $00
    ld a, a                                       ; $4dcc: $7f
    cp a                                          ; $4dcd: $bf
    ld a, [bc]                                    ; $4dce: $0a
    db $f4                                        ; $4dcf: $f4
    ld d, l                                       ; $4dd0: $55
    xor d                                         ; $4dd1: $aa
    cp a                                          ; $4dd2: $bf
    ld b, b                                       ; $4dd3: $40
    ld d, b                                       ; $4dd4: $50
    add a                                         ; $4dd5: $87
    inc a                                         ; $4dd6: $3c
    rst $38                                       ; $4dd7: $ff
    inc a                                         ; $4dd8: $3c
    ld e, h                                       ; $4dd9: $5c
    sbc h                                         ; $4dda: $9c
    ret z                                         ; $4ddb: $c8

    ld a, [hl+]                                   ; $4ddc: $2a
    ret nz                                        ; $4ddd: $c0

    ld [hl+], a                                   ; $4dde: $22
    ret nz                                        ; $4ddf: $c0

    ld a, a                                       ; $4de0: $7f
    rlca                                          ; $4de1: $07
    pop bc                                        ; $4de2: $c1
    ld e, $c2                                     ; $4de3: $1e $c2
    dec e                                         ; $4de5: $1d
    push bc                                       ; $4de6: $c5
    ld a, [de]                                    ; $4de7: $1a
    ld l, e                                       ; $4de8: $6b
    ld h, d                                       ; $4de9: $62
    rst $38                                       ; $4dea: $ff
    ld bc, $0202                                  ; $4deb: $01 $02 $02
    inc b                                         ; $4dee: $04
    inc b                                         ; $4def: $04
    ld [$0108], sp                                ; $4df0: $08 $08 $01
    rst $38                                       ; $4df3: $ff
    add c                                         ; $4df4: $81
    add e                                         ; $4df5: $83
    inc bc                                        ; $4df6: $03
    ld b, h                                       ; $4df7: $44
    ld b, h                                       ; $4df8: $44
    adc h                                         ; $4df9: $8c
    adc h                                         ; $4dfa: $8c
    add hl, de                                    ; $4dfb: $19
    rst $38                                       ; $4dfc: $ff
    add hl, de                                    ; $4dfd: $19
    inc sp                                        ; $4dfe: $33
    inc sp                                        ; $4dff: $33
    ld h, a                                       ; $4e00: $67
    ld h, a                                       ; $4e01: $67
    rst $08                                       ; $4e02: $cf
    rst $08                                       ; $4e03: $cf
    sbc a                                         ; $4e04: $9f
    ei                                            ; $4e05: $fb
    sbc a                                         ; $4e06: $9f
    ccf                                           ; $4e07: $3f

jr_047_4e08:
    ei                                            ; $4e08: $fb
    and b                                         ; $4e09: $a0
    nop                                           ; $4e0a: $00
    ccf                                           ; $4e0b: $3f
    add b                                         ; $4e0c: $80
    sbc a                                         ; $4e0d: $9f
    ret nz                                        ; $4e0e: $c0

    rst $38                                       ; $4e0f: $ff
    rst $08                                       ; $4e10: $cf
    ldh [$e7], a                                  ; $4e11: $e0 $e7
    ldh a, [$f3]                                  ; $4e13: $f0 $f3
    ld hl, sp-$07                                 ; $4e15: $f8 $f9
    db $fc                                        ; $4e17: $fc
    rrca                                          ; $4e18: $0f
    db $fc                                        ; $4e19: $fc
    nop                                           ; $4e1a: $00
    rst $38                                       ; $4e1b: $ff
    inc bc                                        ; $4e1c: $03
    db $fc                                        ; $4e1d: $fc
    ldh [$3b], a                                  ; $4e1e: $e0 $3b
    add a                                         ; $4e20: $87
    inc l                                         ; $4e21: $2c
    ld [c], a                                     ; $4e22: $e2
    ld [hl], a                                    ; $4e23: $77

jr_047_4e24:
    add c                                         ; $4e24: $81
    ld a, l                                       ; $4e25: $7d
    ret nz                                        ; $4e26: $c0

    cp $e2                                        ; $4e27: $fe $e2
    add b                                         ; $4e29: $80
    ld [bc], a                                    ; $4e2a: $02
    db $fd                                        ; $4e2b: $fd
    ld bc, $647e                                  ; $4e2c: $01 $7e $64
    ld h, b                                       ; $4e2f: $60
    rst $30                                       ; $4e30: $f7
    ccf                                           ; $4e31: $3f
    nop                                           ; $4e32: $00
    rra                                           ; $4e33: $1f
    ret                                           ; $4e34: $c9


    ld h, c                                       ; $4e35: $61
    nop                                           ; $4e36: $00
    rlca                                          ; $4e37: $07
    cp a                                          ; $4e38: $bf
    ld b, b                                       ; $4e39: $40
    ld c, a                                       ; $4e3a: $4f
    ld e, a                                       ; $4e3b: $5f
    and b                                         ; $4e3c: $a0
    xor a                                         ; $4e3d: $af
    ld d, b                                       ; $4e3e: $50
    jr nz, jr_047_4e24                            ; $4e3f: $20 $e3

    db $e4                                        ; $4e41: $e4
    ldh [$fe], a                                  ; $4e42: $e0 $fe
    ld a, [bc]                                    ; $4e44: $0a
    and c                                         ; $4e45: $a1
    cp $08                                        ; $4e46: $fe $08
    and c                                         ; $4e48: $a1
    ld hl, sp+$03                                 ; $4e49: $f8 $03
    ld [hl], b                                    ; $4e4b: $70
    add a                                         ; $4e4c: $87
    or b                                          ; $4e4d: $b0
    ld b, a                                       ; $4e4e: $47
    ld b, b                                       ; $4e4f: $40
    rst $20                                       ; $4e50: $e7
    xor a                                         ; $4e51: $af
    ld b, $f6                                     ; $4e52: $06 $f6
    call nz, $fea0                                ; $4e54: $c4 $a0 $fe
    ldh [$1f], a                                  ; $4e57: $e0 $1f
    rst $18                                       ; $4e59: $df
    rra                                           ; $4e5a: $1f
    xor $20                                       ; $4e5b: $ee $20
    and b                                         ; $4e5d: $a0
    ccf                                           ; $4e5e: $3f
    cp a                                          ; $4e5f: $bf
    xor a                                         ; $4e60: $af
    inc a                                         ; $4e61: $3c
    ldh [$8c], a                                  ; $4e62: $e0 $8c
    add b                                         ; $4e64: $80
    ld [bc], a                                    ; $4e65: $02
    rst $38                                       ; $4e66: $ff
    ldh [$88], a                                  ; $4e67: $e0 $88
    db $fc                                        ; $4e69: $fc
    ld d, $fe                                     ; $4e6a: $16 $fe
    xor [hl]                                      ; $4e6c: $ae
    cp $5e                                        ; $4e6d: $fe $5e
    pop af                                        ; $4e6f: $f1
    cp $3d                                        ; $4e70: $fe $3d
    ldh [$fa], a                                  ; $4e72: $e0 $fa
    call nz, Call_047_638c                        ; $4e74: $c4 $8c $63
    add d                                         ; $4e77: $82
    ld e, l                                       ; $4e78: $5d
    add l                                         ; $4e79: $85
    ld a, [hl-]                                   ; $4e7a: $3a
    rst $38                                       ; $4e7b: $ff
    adc d                                         ; $4e7c: $8a
    dec [hl]                                      ; $4e7d: $35
    add l                                         ; $4e7e: $85
    ld a, [hl-]                                   ; $4e7f: $3a
    dec bc                                        ; $4e80: $0b
    or h                                          ; $4e81: $b4
    dec d                                         ; $4e82: $15
    ld l, d                                       ; $4e83: $6a
    and $0a                                       ; $4e84: $e6 $0a
    add c                                         ; $4e86: $81
    ld bc, $57c1                                  ; $4e87: $01 $c1 $57
    ld h, h                                       ; $4e8a: $64
    adc d                                         ; $4e8b: $8a
    call nz, Call_047_7f7f                        ; $4e8c: $c4 $7f $7f

jr_047_4e8f:
    rst $38                                       ; $4e8f: $ff
    sbc $fc                                       ; $4e90: $de $fc
    ldh [$1f], a                                  ; $4e92: $e0 $1f
    rra                                           ; $4e94: $1f
    inc bc                                        ; $4e95: $03
    inc bc                                        ; $4e96: $03
    dec l                                         ; $4e97: $2d
    ld h, b                                       ; $4e98: $60
    ldh [rP1], a                                  ; $4e99: $e0 $00
    ei                                            ; $4e9b: $fb
    db $fc                                        ; $4e9c: $fc
    cp $ff                                        ; $4e9d: $fe $ff
    ldh [$fd], a                                  ; $4e9f: $e0 $fd
    db $fd                                        ; $4ea1: $fd
    ld a, [$f4fa]                                 ; $4ea2: $fa $fa $f4
    dec de                                        ; $4ea5: $1b
    db $f4                                        ; $4ea6: $f4
    nop                                           ; $4ea7: $00
    rst $00                                       ; $4ea8: $c7
    ld b, b                                       ; $4ea9: $40
    dec bc                                        ; $4eaa: $0b
    inc d                                         ; $4eab: $14
    jr nc, jr_047_4e8f                            ; $4eac: $30 $e1

    ret nz                                        ; $4eae: $c0

    ld b, b                                       ; $4eaf: $40
    ld a, [bc]                                    ; $4eb0: $0a
    db $e4                                        ; $4eb1: $e4
    db $f4                                        ; $4eb2: $f4
    add hl, sp                                    ; $4eb3: $39
    ret nz                                        ; $4eb4: $c0

    dec [hl]                                      ; $4eb5: $35
    ld h, e                                       ; $4eb6: $63
    ld a, [hl]                                    ; $4eb7: $7e
    sbc a                                         ; $4eb8: $9f
    ld b, b                                       ; $4eb9: $40
    inc b                                         ; $4eba: $04
    ld c, b                                       ; $4ebb: $48
    ld c, b                                       ; $4ebc: $48
    sbc h                                         ; $4ebd: $9c
    rst $38                                       ; $4ebe: $ff
    sbc h                                         ; $4ebf: $9c
    jr jr_047_4ed5                                ; $4ec0: $18 $13

    inc e                                         ; $4ec2: $1c
    add hl, de                                    ; $4ec3: $19
    ld a, $34                                     ; $4ec4: $3e $34
    ccf                                           ; $4ec6: $3f
    scf                                           ; $4ec7: $37
    ld a, [hl-]                                   ; $4ec8: $3a
    ccf                                           ; $4ec9: $3f
    inc a                                         ; $4eca: $3c
    sbc e                                         ; $4ecb: $9b
    add b                                         ; $4ecc: $80

jr_047_4ecd:
    ld a, l                                       ; $4ecd: $7d
    ld a, a                                       ; $4ece: $7f
    bit 0, e                                      ; $4ecf: $cb $43
    ldh [$e0], a                                  ; $4ed1: $e0 $e0
    rst $38                                       ; $4ed3: $ff
    add b                                         ; $4ed4: $80

jr_047_4ed5:
    dec a                                         ; $4ed5: $3d
    jp nz, $d403                                  ; $4ed6: $c2 $03 $d4

    rra                                           ; $4ed9: $1f
    ld a, [hl+]                                   ; $4eda: $2a
    ccf                                           ; $4edb: $3f
    dec sp                                        ; $4edc: $3b
    add b                                         ; $4edd: $80
    ld e, a                                       ; $4ede: $5f
    db $e3                                        ; $4edf: $e3
    ld h, b                                       ; $4ee0: $60
    ld a, [hl]                                    ; $4ee1: $7e
    ld bc, $08fd                                  ; $4ee2: $01 $fd $08
    and c                                         ; $4ee5: $a1
    ld c, d                                       ; $4ee6: $4a
    pop hl                                        ; $4ee7: $e1
    ld sp, hl                                     ; $4ee8: $f9
    ld a, a                                       ; $4ee9: $7f
    rst $38                                       ; $4eea: $ff
    ldh [rNR31], a                                ; $4eeb: $e0 $1b
    xor c                                         ; $4eed: $a9
    cp h                                          ; $4eee: $bc
    cp $7d                                        ; $4eef: $fe $7d
    db $fc                                        ; $4ef1: $fc
    db $fc                                        ; $4ef2: $fc
    ld b, l                                       ; $4ef3: $45
    db $fd                                        ; $4ef4: $fd
    db $fc                                        ; $4ef5: $fc
    pop hl                                        ; $4ef6: $e1
    db $fd                                        ; $4ef7: $fd
    db $fc                                        ; $4ef8: $fc
    ld [c], a                                     ; $4ef9: $e2
    inc a                                         ; $4efa: $3c
    jp $e7fc                                      ; $4efb: $c3 $fc $e7


    cp $e1                                        ; $4efe: $fe $e1
    and b                                         ; $4f00: $a0
    cp $fe                                        ; $4f01: $fe $fe
    add sp, $01                                   ; $4f03: $e8 $01
    dec hl                                        ; $4f05: $2b
    ld d, h                                       ; $4f06: $54
    rla                                           ; $4f07: $17
    add sp, $2b                                   ; $4f08: $e8 $2b
    call nc, $fcfa                                ; $4f0a: $d4 $fa $fc
    and $68                                       ; $4f0d: $e6 $68
    and [hl]                                      ; $4f0f: $a6
    ld b, a                                       ; $4f10: $47

jr_047_4f11:
    rst $18                                       ; $4f11: $df
    nop                                           ; $4f12: $00
    xor a                                         ; $4f13: $af
    jr nz, jr_047_4ecd                            ; $4f14: $20 $b7

    rst $28                                       ; $4f16: $ef
    jr nc, jr_047_4f11                            ; $4f17: $30 $f8

    rlca                                          ; $4f19: $07
    db $fc                                        ; $4f1a: $fc
    adc a                                         ; $4f1b: $8f
    ret z                                         ; $4f1c: $c8

    ldh [$1f], a                                  ; $4f1d: $e0 $1f
    pop bc                                        ; $4f1f: $c1
    ei                                            ; $4f20: $fb
    ld bc, $5442                                  ; $4f21: $01 $42 $54
    ret nz                                        ; $4f24: $c0

    ld bc, $0381                                  ; $4f25: $01 $81 $03
    jp $ff07                                      ; $4f28: $c3 $07 $ff


    rst $00                                       ; $4f2b: $c7
    inc bc                                        ; $4f2c: $03
    jp $9800                                      ; $4f2d: $c3 $00 $98


    inc a                                         ; $4f30: $3c
    inc a                                         ; $4f31: $3c
    ld a, b                                       ; $4f32: $78
    rst $38                                       ; $4f33: $ff
    ld a, b                                       ; $4f34: $78
    db $f4                                        ; $4f35: $f4
    db $f4                                        ; $4f36: $f4
    add sp, -$18                                  ; $4f37: $e8 $e8
    ret nc                                        ; $4f39: $d0

    ret nc                                        ; $4f3a: $d0

    and b                                         ; $4f3b: $a0
    db $fd                                        ; $4f3c: $fd
    and b                                         ; $4f3d: $a0
    add h                                         ; $4f3e: $84
    ld hl, $7c7c                                  ; $4f3f: $21 $7c $7c
    inc bc                                        ; $4f42: $03
    inc bc                                        ; $4f43: $03
    ld a, a                                       ; $4f44: $7f
    ld a, a                                       ; $4f45: $7f
    rst $38                                       ; $4f46: $ff
    ccf                                           ; $4f47: $3f
    ccf                                           ; $4f48: $3f
    rra                                           ; $4f49: $1f
    rra                                           ; $4f4a: $1f
    rrca                                          ; $4f4b: $0f
    rrca                                          ; $4f4c: $0f
    rlca                                          ; $4f4d: $07
    rlca                                          ; $4f4e: $07
    rst $30                                       ; $4f4f: $f7
    nop                                           ; $4f50: $00
    ld [$42f5], sp                                ; $4f51: $08 $f5 $42
    and c                                         ; $4f54: $a1
    cp $f9                                        ; $4f55: $fe $f9
    ld hl, sp-$0e                                 ; $4f57: $f8 $f2
    rst $38                                       ; $4f59: $ff
    push af                                       ; $4f5a: $f5
    push bc                                       ; $4f5b: $c5
    jp z, Jump_000_3d02                           ; $4f5c: $ca $02 $3d

    dec b                                         ; $4f5f: $05
    ld a, [$b6bf]                                 ; $4f60: $fa $bf $b6
    ccf                                           ; $4f63: $3f
    ld b, b                                       ; $4f64: $40
    cp a                                          ; $4f65: $bf
    ld b, b                                       ; $4f66: $40
    ld l, h                                       ; $4f67: $6c
    push hl                                       ; $4f68: $e5
    rst $38                                       ; $4f69: $ff
    nop                                           ; $4f6a: $00
    ld e, b                                       ; $4f6b: $58
    db $e3                                        ; $4f6c: $e3
    ld sp, hl                                     ; $4f6d: $f9

jr_047_4f6e:
    rst $38                                       ; $4f6e: $ff
    db $fc                                        ; $4f6f: $fc

jr_047_4f70:
    ld hl, sp-$07                                 ; $4f70: $f8 $f9
    pop af                                        ; $4f72: $f1
    ld hl, sp-$0c                                 ; $4f73: $f8 $f4
    push af                                       ; $4f75: $f5
    db $e4                                        ; $4f76: $e4
    pop hl                                        ; $4f77: $e1
    push af                                       ; $4f78: $f5
    adc h                                         ; $4f79: $8c
    and c                                         ; $4f7a: $a1
    ldh [$e1], a                                  ; $4f7b: $e0 $e1
    ld c, b                                       ; $4f7d: $48
    pop bc                                        ; $4f7e: $c1
    ld b, h                                       ; $4f7f: $44
    pop bc                                        ; $4f80: $c1
    dec hl                                        ; $4f81: $2b
    ld d, h                                       ; $4f82: $54
    sub a                                         ; $4f83: $97

jr_047_4f84:
    ccf                                           ; $4f84: $3f
    jr z, @-$33                                   ; $4f85: $28 $cb

    inc d                                         ; $4f87: $14
    rst $20                                       ; $4f88: $e7
    ld [$56f3], sp                                ; $4f89: $08 $f3 $56
    ld b, b                                       ; $4f8c: $40
    ld l, b                                       ; $4f8d: $68
    ld b, c                                       ; $4f8e: $41
    rst $38                                       ; $4f8f: $ff
    or a                                          ; $4f90: $b7
    jr nc, jr_047_4f6e                            ; $4f91: $30 $db

    jr jr_047_4f70                                ; $4f93: $18 $db

    jr jr_047_4f84                                ; $4f95: $18 $ed

    inc c                                         ; $4f97: $0c
    dec a                                         ; $4f98: $3d
    pop af                                        ; $4f99: $f1
    ret c                                         ; $4f9a: $d8

    ld b, d                                       ; $4f9b: $42
    and a                                         ; $4f9c: $a7
    nop                                           ; $4f9d: $00
    ldh a, [$08]                                  ; $4f9e: $f0 $08
    ld c, [hl]                                    ; $4fa0: $4e
    xor h                                         ; $4fa1: $ac
    ld d, d                                       ; $4fa2: $52
    and h                                         ; $4fa3: $a4
    adc b                                         ; $4fa4: $88
    sub h                                         ; $4fa5: $94
    add c                                         ; $4fa6: $81
    pop af                                        ; $4fa7: $f1
    and b                                         ; $4fa8: $a0
    adc e                                         ; $4fa9: $8b
    pop bc                                        ; $4faa: $c1
    rlca                                          ; $4fab: $07
    inc d                                         ; $4fac: $14
    and l                                         ; $4fad: $a5
    and [hl]                                      ; $4fae: $a6
    ld h, d                                       ; $4faf: $62
    sbc b                                         ; $4fb0: $98
    add b                                         ; $4fb1: $80
    ld [bc], a                                    ; $4fb2: $02
    ld a, [hl]                                    ; $4fb3: $7e
    db $fc                                        ; $4fb4: $fc
    ld [c], a                                     ; $4fb5: $e2
    ld bc, $02ff                                  ; $4fb6: $01 $ff $02
    ld a, a                                       ; $4fb9: $7f
    ld bc, $153f                                  ; $4fba: $01 $3f $15
    ld h, c                                       ; $4fbd: $61
    ld e, a                                       ; $4fbe: $5f
    ei                                            ; $4fbf: $fb
    rst $38                                       ; $4fc0: $ff
    rst $30                                       ; $4fc1: $f7
    rst $38                                       ; $4fc2: $ff
    db $eb                                        ; $4fc3: $eb
    adc b                                         ; $4fc4: $88
    add d                                         ; $4fc5: $82
    dec b                                         ; $4fc6: $05
    ret nc                                        ; $4fc7: $d0

    ld h, [hl]                                    ; $4fc8: $66
    cp $4a                                        ; $4fc9: $fe $4a
    pop hl                                        ; $4fcb: $e1
    jp hl                                         ; $4fcc: $e9


    db $fd                                        ; $4fcd: $fd
    db $d3                                        ; $4fce: $d3
    ei                                            ; $4fcf: $fb
    db $ec                                        ; $4fd0: $ec
    db $ed                                        ; $4fd1: $ed
    sbc $9f                                       ; $4fd2: $de $9f
    sbc $9e                                       ; $4fd4: $de $9e
    sbc $3f                                       ; $4fd6: $de $3f
    cp a                                          ; $4fd8: $bf
    sbc d                                         ; $4fd9: $9a
    push bc                                       ; $4fda: $c5
    call nc, $6a84                                ; $4fdb: $d4 $84 $6a
    rst $38                                       ; $4fde: $ff

jr_047_4fdf:
    adc d                                         ; $4fdf: $8a
    or l                                          ; $4fe0: $b5
    pop bc                                        ; $4fe1: $c1
    sbc $e0                                       ; $4fe2: $de $e0
    rst $28                                       ; $4fe4: $ef
    ldh a, [$f7]                                  ; $4fe5: $f0 $f7
    db $fc                                        ; $4fe7: $fc
    ret c                                         ; $4fe8: $d8

    add l                                         ; $4fe9: $85
    sbc b                                         ; $4fea: $98
    and l                                         ; $4feb: $a5
    jp $e018                                      ; $4fec: $c3 $18 $e0


    inc c                                         ; $4fef: $0c
    ldh [$0e], a                                  ; $4ff0: $e0 $0e
    db $e3                                        ; $4ff2: $e3
    ldh a, [rTMA]                                 ; $4ff3: $f0 $06
    ld [hl], b                                    ; $4ff5: $70

jr_047_4ff6:
    jr nz, jr_047_4ff6                            ; $4ff6: $20 $fe

    ld [c], a                                     ; $4ff8: $e2
    jr nc, jr_047_503e                            ; $4ff9: $30 $43

    sbc a                                         ; $4ffb: $9f
    add b                                         ; $4ffc: $80
    ld h, a                                       ; $4ffd: $67
    ld a, a                                       ; $4ffe: $7f
    ld h, b                                       ; $4fff: $60
    ld a, b                                       ; $5000: $78
    ld a, b                                       ; $5001: $78
    ld a, h                                       ; $5002: $7c
    ld a, h                                       ; $5003: $7c
    ld a, [hl]                                    ; $5004: $7e
    ld a, [hl]                                    ; $5005: $7e
    ld c, $e0                                     ; $5006: $0e $e0
    ld b, d                                       ; $5008: $42
    db $f4                                        ; $5009: $f4
    nop                                           ; $500a: $00
    ret nz                                        ; $500b: $c0

    ld e, c                                       ; $500c: $59
    rlca                                          ; $500d: $07
    ld e, b                                       ; $500e: $58
    and c                                         ; $500f: $a1
    ld e, [hl]                                    ; $5010: $5e
    pop hl                                        ; $5011: $e1
    ld [hl], b                                    ; $5012: $70
    add h                                         ; $5013: $84
    ld a, [bc]                                    ; $5014: $0a
    ld l, b                                       ; $5015: $68
    pop hl                                        ; $5016: $e1
    ei                                            ; $5017: $fb
    rst $38                                       ; $5018: $ff
    inc b                                         ; $5019: $04
    ld h, l                                       ; $501a: $65
    inc h                                         ; $501b: $24
    ld bc, $a7ff                                  ; $501c: $01 $ff $a7
    rst $30                                       ; $501f: $f7
    ld c, a                                       ; $5020: $4f

Jump_047_5021:
    cp a                                          ; $5021: $bf
    rst $28                                       ; $5022: $ef
    sbc a                                         ; $5023: $9f
    rst $18                                       ; $5024: $df
    rra                                           ; $5025: $1f
    cp a                                          ; $5026: $bf
    ccf                                           ; $5027: $3f
    and a                                         ; $5028: $a7
    and b                                         ; $5029: $a0
    cp a                                          ; $502a: $bf
    rst $38                                       ; $502b: $ff
    rst $38                                       ; $502c: $ff
    ld a, a                                       ; $502d: $7f
    rst $38                                       ; $502e: $ff
    ld hl, sp-$05                                 ; $502f: $f8 $fb
    db $fc                                        ; $5031: $fc
    db $fd                                        ; $5032: $fd
    cp $f8                                        ; $5033: $fe $f8
    ld h, a                                       ; $5035: $67
    ld b, c                                       ; $5036: $41
    ld e, h                                       ; $5037: $5c
    ld b, h                                       ; $5038: $44
    jr z, jr_047_4fdf                             ; $5039: $28 $a4

    ld a, [hl]                                    ; $503b: $7e
    add b                                         ; $503c: $80
    cp a                                          ; $503d: $bf

jr_047_503e:
    ret nz                                        ; $503e: $c0

    rst $08                                       ; $503f: $cf
    rst $28                                       ; $5040: $ef
    ldh a, [$f7]                                  ; $5041: $f0 $f7
    ld hl, sp-$07                                 ; $5043: $f8 $f9
    ret nz                                        ; $5045: $c0

    jp $a857                                      ; $5046: $c3 $57 $a8


    xor d                                         ; $5049: $aa
    db $ed                                        ; $504a: $ed
    ld d, l                                       ; $504b: $55
    db $10                                        ; $504c: $10
    and c                                         ; $504d: $a1
    nop                                           ; $504e: $00
    rst $38                                       ; $504f: $ff
    ld a, b                                       ; $5050: $78
    push hl                                       ; $5051: $e5
    ldh [rIF], a                                  ; $5052: $e0 $0f
    ld b, b                                       ; $5054: $40
    rra                                           ; $5055: $1f
    xor a                                         ; $5056: $af
    and b                                         ; $5057: $a0
    ld c, [hl]                                    ; $5058: $4e
    ld b, b                                       ; $5059: $40
    sbc [hl]                                      ; $505a: $9e
    ret nc                                        ; $505b: $d0

    and c                                         ; $505c: $a1
    db $fc                                        ; $505d: $fc
    push hl                                       ; $505e: $e5
    add hl, de                                    ; $505f: $19
    ld b, c                                       ; $5060: $41
    cp [hl]                                       ; $5061: $be
    add [hl]                                      ; $5062: $86
    nop                                           ; $5063: $00
    add b                                         ; $5064: $80
    ret nz                                        ; $5065: $c0

    ret nz                                        ; $5066: $c0

    ret nz                                        ; $5067: $c0

    ldh [rIE], a                                  ; $5068: $e0 $ff
    ldh [$f0], a                                  ; $506a: $e0 $f0
    ld e, b                                       ; $506c: $58
    rst $38                                       ; $506d: $ff
    pop hl                                        ; $506e: $e1
    db $e4                                        ; $506f: $e4
    ret nz                                        ; $5070: $c0

    ldh a, [rNR42]                                ; $5071: $f0 $21
    ld a, a                                       ; $5073: $7f
    inc bc                                        ; $5074: $03
    db $fc                                        ; $5075: $fc
    ldh [$0b], a                                  ; $5076: $e0 $0b
    ld hl, sp-$20                                 ; $5078: $f8 $e0
    xor $bf                                       ; $507a: $ee $bf
    ld b, a                                       ; $507c: $47
    rst $18                                       ; $507d: $df
    rst $38                                       ; $507e: $ff
    rst $28                                       ; $507f: $ef
    and $20                                       ; $5080: $e6 $20
    ld hl, sp+$04                                 ; $5082: $f8 $04
    push af                                       ; $5084: $f5
    rst $38                                       ; $5085: $ff
    add hl, bc                                    ; $5086: $09
    ld sp, hl                                     ; $5087: $f9
    dec b                                         ; $5088: $05
    push af                                       ; $5089: $f5
    add hl, bc                                    ; $508a: $09
    jp hl                                         ; $508b: $e9


    dec d                                         ; $508c: $15
    pop af                                        ; $508d: $f1
    ld sp, hl                                     ; $508e: $f9
    dec c                                         ; $508f: $0d

jr_047_5090:
    db $fc                                        ; $5090: $fc
    pop hl                                        ; $5091: $e1
    ld e, e                                       ; $5092: $5b
    ld b, b                                       ; $5093: $40
    sbc a                                         ; $5094: $9f
    ldh [$c7], a                                  ; $5095: $e0 $c7
    ld hl, sp-$5f                                 ; $5097: $f8 $a1
    rst $38                                       ; $5099: $ff
    cp $d0                                        ; $509a: $fe $d0
    cp $e8                                        ; $509c: $fe $e8
    cp $f4                                        ; $509e: $fe $f4
    db $fd                                        ; $50a0: $fd
    ld sp, hl                                     ; $50a1: $f9
    rst $38                                       ; $50a2: $ff
    nop                                           ; $50a3: $00
    sbc $15                                       ; $50a4: $de $15
    call c, $bc29                                 ; $50a6: $dc $29 $bc
    inc de                                        ; $50a9: $13
    cp b                                          ; $50aa: $b8
    rst $38                                       ; $50ab: $ff
    ld l, e                                       ; $50ac: $6b
    ld a, b                                       ; $50ad: $78
    rst $30                                       ; $50ae: $f7
    ldh a, [$f7]                                  ; $50af: $f0 $f7
    ldh a, [$e7]                                  ; $50b1: $f0 $e7
    add sp, -$02                                  ; $50b3: $e8 $fe
    ret nz                                        ; $50b5: $c0

    db $eb                                        ; $50b6: $eb
    rst $30                                       ; $50b7: $f7
    rst $38                                       ; $50b8: $ff
    ldh a, [$f8]                                  ; $50b9: $f0 $f8
    cp b                                          ; $50bb: $b8
    ld hl, sp-$28                                 ; $50bc: $f8 $d8
    rst $38                                       ; $50be: $ff
    db $fc                                        ; $50bf: $fc
    db $ec                                        ; $50c0: $ec
    db $fc                                        ; $50c1: $fc

Call_047_50c2:
    call c, $eefe                                 ; $50c2: $dc $fe $ee
    cp $f4                                        ; $50c5: $fe $f4
    ld b, a                                       ; $50c7: $47
    cp $e8                                        ; $50c8: $fe $e8
    db $fc                                        ; $50ca: $fc
    sbc h                                         ; $50cb: $9c
    pop hl                                        ; $50cc: $e1
    db $fc                                        ; $50cd: $fc
    push hl                                       ; $50ce: $e5
    adc h                                         ; $50cf: $8c
    pop hl                                        ; $50d0: $e1
    rst $28                                       ; $50d1: $ef
    ld a, [hl]                                    ; $50d2: $7e
    jr nz, jr_047_5154                            ; $50d3: $20 $7f

    rst $20                                       ; $50d5: $e7
    rst $38                                       ; $50d6: $ff

jr_047_50d7:
    rst $10                                       ; $50d7: $d7
    rst $38                                       ; $50d8: $ff
    db $e3                                        ; $50d9: $e3
    rst $38                                       ; $50da: $ff
    db $d3                                        ; $50db: $d3
    ld l, h                                       ; $50dc: $6c
    ret nz                                        ; $50dd: $c0

    ld a, a                                       ; $50de: $7f
    pop af                                        ; $50df: $f1
    rst $38                                       ; $50e0: $ff
    jp hl                                         ; $50e1: $e9


    dec d                                         ; $50e2: $15
    ret nc                                        ; $50e3: $d0

    ld l, $e8                                     ; $50e4: $2e $e8
    nop                                           ; $50e6: $00
    jr nz, @-$3f                                  ; $50e7: $20 $bf

    add sp, $17                                   ; $50e9: $e8 $17
    db $f4                                        ; $50eb: $f4
    dec bc                                        ; $50ec: $0b
    ld [$7a15], a                                 ; $50ed: $ea $15 $7a
    nop                                           ; $50f0: $00
    ei                                            ; $50f1: $fb
    rst $38                                       ; $50f2: $ff
    rst $30                                       ; $50f3: $f7
    rst $30                                       ; $50f4: $f7
    adc a                                         ; $50f5: $8f
    adc a                                         ; $50f6: $8f
    ld a, a                                       ; $50f7: $7f
    ld a, a                                       ; $50f8: $7f
    ld a, $be                                     ; $50f9: $3e $be
    rst $38                                       ; $50fb: $ff
    jr jr_047_50d7                                ; $50fc: $18 $d9

    nop                                           ; $50fe: $00
    rst $20                                       ; $50ff: $e7
    nop                                           ; $5100: $00
    ld sp, hl                                     ; $5101: $f9
    adc $d1                                       ; $5102: $ce $d1
    ccf                                           ; $5104: $3f
    rst $10                                       ; $5105: $d7
    ret z                                         ; $5106: $c8

    adc d                                         ; $5107: $8a
    or l                                          ; $5108: $b5
    rlca                                          ; $5109: $07
    ld a, b                                       ; $510a: $78
    ld b, h                                       ; $510b: $44
    ld h, c                                       ; $510c: $61
    jr nz, jr_047_5090                            ; $510d: $20 $81

    cp $9c                                        ; $510f: $fe $9c
    pop hl                                        ; $5111: $e1
    db $eb                                        ; $5112: $eb
    rst $38                                       ; $5113: $ff
    ld [hl], a                                    ; $5114: $77
    rst $38                                       ; $5115: $ff
    di                                            ; $5116: $f3
    rst $38                                       ; $5117: $ff
    ld a, c                                       ; $5118: $79
    ld a, a                                       ; $5119: $7f
    rst $38                                       ; $511a: $ff
    ld a, [hl-]                                   ; $511b: $3a
    rst $38                                       ; $511c: $ff
    ld e, c                                       ; $511d: $59
    rst $38                                       ; $511e: $ff
    db $f4                                        ; $511f: $f4
    db $fc                                        ; $5120: $fc
    jp z, $f741                                   ; $5121: $ca $41 $f7

    ld hl, sp-$04                                 ; $5124: $f8 $fc
    ld hl, sp-$01                                 ; $5126: $f8 $ff

jr_047_5128:
    ld [c], a                                     ; $5128: $e2
    ld a, b                                       ; $5129: $78
    ld hl, sp+$02                                 ; $512a: $f8 $02
    ccf                                           ; $512c: $3f
    dec bc                                        ; $512d: $0b
    dec b                                         ; $512e: $05
    ccf                                           ; $512f: $3f
    db $fc                                        ; $5130: $fc
    db $e3                                        ; $5131: $e3
    ld bc, $e2fc                                  ; $5132: $01 $fc $e2
    dec d                                         ; $5135: $15
    inc hl                                        ; $5136: $23
    cp l                                          ; $5137: $bd
    add c                                         ; $5138: $81
    and b                                         ; $5139: $a0
    jp $e9a9                                      ; $513a: $c3 $a9 $e9


    sub h                                         ; $513d: $94
    ld b, c                                       ; $513e: $41
    sub b                                         ; $513f: $90
    ld b, b                                       ; $5140: $40
    ld a, [$4288]                                 ; $5141: $fa $88 $42
    db $fd                                        ; $5144: $fd
    or $04                                        ; $5145: $f6 $04
    ld a, a                                       ; $5147: $7f
    dec sp                                        ; $5148: $3b
    rst $38                                       ; $5149: $ff
    ccf                                           ; $514a: $3f
    cp $e0                                        ; $514b: $fe $e0
    rra                                           ; $514d: $1f
    rst $38                                       ; $514e: $ff
    rrca                                          ; $514f: $0f
    ld [hl], h                                    ; $5150: $74
    ld b, b                                       ; $5151: $40
    ld l, $a1                                     ; $5152: $2e $a1

jr_047_5154:
    xor $e8                                       ; $5154: $ee $e8
    push hl                                       ; $5156: $e5
    rst $38                                       ; $5157: $ff
    rst $38                                       ; $5158: $ff
    add b                                         ; $5159: $80
    ld [bc], a                                    ; $515a: $02
    jr nz, @-$5e                                  ; $515b: $20 $a0

    rst $38                                       ; $515d: $ff
    ld d, b                                       ; $515e: $50
    rst $08                                       ; $515f: $cf
    rst $38                                       ; $5160: $ff
    xor b                                         ; $5161: $a8
    rst $38                                       ; $5162: $ff
    call nc, $e2cc                                ; $5163: $d4 $cc $e2
    ld b, c                                       ; $5166: $41
    inc b                                         ; $5167: $04
    rst $08                                       ; $5168: $cf
    nop                                           ; $5169: $00
    rst $38                                       ; $516a: $ff
    di                                            ; $516b: $f3
    nop                                           ; $516c: $00
    db $fc                                        ; $516d: $fc
    add b                                         ; $516e: $80
    rst $38                                       ; $516f: $ff
    ld d, h                                       ; $5170: $54
    rst $38                                       ; $5171: $ff
    inc l                                         ; $5172: $2c
    cp e                                          ; $5173: $bb
    rst $38                                       ; $5174: $ff
    dec d                                         ; $5175: $15
    db $fc                                        ; $5176: $fc
    ldh [rNR14], a                                ; $5177: $e0 $14
    rst $38                                       ; $5179: $ff
    ld a, [bc]                                    ; $517a: $0a
    inc l                                         ; $517b: $2c
    ret nz                                        ; $517c: $c0

    ld [bc], a                                    ; $517d: $02
    rst $38                                       ; $517e: $ff
    rra                                           ; $517f: $1f
    dec b                                         ; $5180: $05
    rst $20                                       ; $5181: $e7
    ldh a, [$f0]                                  ; $5182: $f0 $f0
    ld [hl], b                                    ; $5184: $70
    ldh a, [$b0]                                  ; $5185: $f0 $b0
    cpl                                           ; $5187: $2f
    ldh a, [rLCDC]                                ; $5188: $f0 $40
    ldh [rNR41], a                                ; $518a: $e0 $20
    ld c, [hl]                                    ; $518c: $4e
    ld h, e                                       ; $518d: $63
    add b                                         ; $518e: $80
    ld a, b                                       ; $518f: $78
    pop hl                                        ; $5190: $e1
    ld a, h                                       ; $5191: $7c
    nop                                           ; $5192: $00
    ld d, [hl]                                    ; $5193: $56
    ld d, b                                       ; $5194: $50
    ld h, b                                       ; $5195: $60
    ld bc, $4c1f                                  ; $5196: $01 $1f $4c
    ld h, b                                       ; $5199: $60
    rra                                           ; $519a: $1f
    ld c, b                                       ; $519b: $48
    inc hl                                        ; $519c: $23
    ld d, a                                       ; $519d: $57
    ld b, b                                       ; $519e: $40
    jr nz, jr_047_5128                            ; $519f: $20 $87

    ld d, l                                       ; $51a1: $55
    rst $38                                       ; $51a2: $ff
    xor a                                         ; $51a3: $af
    db $fc                                        ; $51a4: $fc
    ldh [rP1], a                                  ; $51a5: $e0 $00
    ld b, c                                       ; $51a7: $41
    db $fc                                        ; $51a8: $fc
    db $e3                                        ; $51a9: $e3
    db $ec                                        ; $51aa: $ec
    ld hl, $3f55                                  ; $51ab: $21 $55 $3f
    rst $38                                       ; $51ae: $ff
    add a                                         ; $51af: $87
    rst $38                                       ; $51b0: $ff
    ld b, e                                       ; $51b1: $43
    rst $38                                       ; $51b2: $ff
    and c                                         ; $51b3: $a1
    ld d, d                                       ; $51b4: $52
    ld [hl+], a                                   ; $51b5: $22
    adc h                                         ; $51b6: $8c
    pop hl                                        ; $51b7: $e1
    xor c                                         ; $51b8: $a9
    ld d, h                                       ; $51b9: $54
    jr nz, jr_047_51e2                            ; $51ba: $20 $26

    ld e, [hl]                                    ; $51bc: $5e
    pop hl                                        ; $51bd: $e1
    rrca                                          ; $51be: $0f
    inc l                                         ; $51bf: $2c
    and b                                         ; $51c0: $a0
    db $eb                                        ; $51c1: $eb
    inc [hl]                                      ; $51c2: $34
    and b                                         ; $51c3: $a0
    ei                                            ; $51c4: $fb
    ld e, h                                       ; $51c5: $5c
    ld e, h                                       ; $51c6: $5c
    db $e4                                        ; $51c7: $e4
    inc a                                         ; $51c8: $3c
    pop hl                                        ; $51c9: $e1
    ld a, [bc]                                    ; $51ca: $0a
    rst $38                                       ; $51cb: $ff
    push bc                                       ; $51cc: $c5
    or h                                          ; $51cd: $b4
    ret nz                                        ; $51ce: $c0

    ld sp, hl                                     ; $51cf: $f9
    inc [hl]                                      ; $51d0: $34
    nop                                           ; $51d1: $00
    ld e, $3c                                     ; $51d2: $1e $3c
    pop hl                                        ; $51d4: $e1
    rra                                           ; $51d5: $1f
    rst $38                                       ; $51d6: $ff
    ld b, b                                       ; $51d7: $40
    ld b, b                                       ; $51d8: $40
    ld [de], a                                    ; $51d9: $12
    pop bc                                        ; $51da: $c1
    db $10                                        ; $51db: $10
    jp nz, $c00e                                  ; $51dc: $c2 $0e $c0

    inc bc                                        ; $51df: $03
    ldh [$f0], a                                  ; $51e0: $e0 $f0

jr_047_51e2:
    nop                                           ; $51e2: $00
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    ld [hl], c                                    ; $51e5: $71
    nop                                           ; $51e6: $00
    rst $38                                       ; $51e7: $ff
    rst $38                                       ; $51e8: $ff
    rst $38                                       ; $51e9: $ff
    rst $38                                       ; $51ea: $ff
    pop hl                                        ; $51eb: $e1
    ldh [rSB], a                                  ; $51ec: $e0 $01
    ld [bc], a                                    ; $51ee: $02
    inc bc                                        ; $51ef: $03
    db $db                                        ; $51f0: $db
    rst $38                                       ; $51f1: $ff
    cp $f7                                        ; $51f2: $fe $f7
    or $04                                        ; $51f4: $f6 $04
    dec b                                         ; $51f6: $05
    ld b, $07                                     ; $51f7: $06 $07
    ld [$0a09], sp                                ; $51f9: $08 $09 $0a
    di                                            ; $51fc: $f3
    dec bc                                        ; $51fd: $0b
    inc c                                         ; $51fe: $0c
    push de                                       ; $51ff: $d5
    rst $38                                       ; $5200: $ff
    di                                            ; $5201: $f3
    ld a, [c]                                     ; $5202: $f2
    dec c                                         ; $5203: $0d
    ld c, $0f                                     ; $5204: $0e $0f
    db $10                                        ; $5206: $10
    ccf                                           ; $5207: $3f
    ld de, $1312                                  ; $5208: $11 $12 $13
    inc d                                         ; $520b: $14
    dec d                                         ; $520c: $15
    ld d, $d4                                     ; $520d: $16 $d4
    rst $38                                       ; $520f: $ff
    ld a, [c]                                     ; $5210: $f2
    pop af                                        ; $5211: $f1
    rst $38                                       ; $5212: $ff
    rla                                           ; $5213: $17
    inc de                                        ; $5214: $13
    jr @+$1b                                      ; $5215: $18 $19

    ld a, [de]                                    ; $5217: $1a
    dec de                                        ; $5218: $1b
    inc e                                         ; $5219: $1c
    dec e                                         ; $521a: $1d
    di                                            ; $521b: $f3
    ld e, $1f                                     ; $521c: $1e $1f
    call nc, $42ff                                ; $521e: $d4 $ff $42
    ldh a, [rNR41]                                ; $5221: $f0 $20
    ld hl, $2322                                  ; $5223: $21 $22 $23
    ld a, a                                       ; $5226: $7f
    inc h                                         ; $5227: $24
    dec h                                         ; $5228: $25
    ld h, $27                                     ; $5229: $26 $27
    jr z, jr_047_5256                             ; $522b: $28 $29

    ld a, [hl+]                                   ; $522d: $2a
    jp nc, $feff                                  ; $522e: $d2 $ff $fe

    xor $ed                                       ; $5231: $ee $ed
    dec hl                                        ; $5233: $2b
    inc l                                         ; $5234: $2c
    dec l                                         ; $5235: $2d
    ld [de], a                                    ; $5236: $12
    ld l, $2f                                     ; $5237: $2e $2f
    jr nc, jr_047_52ba                            ; $5239: $30 $7f

    ld sp, $3332                                  ; $523b: $31 $32 $33
    inc [hl]                                      ; $523e: $34
    ld [de], a                                    ; $523f: $12
    dec [hl]                                      ; $5240: $35
    ld [hl], $d0                                  ; $5241: $36 $d0
    rst $38                                       ; $5243: $ff
    cp $ed                                        ; $5244: $fe $ed
    db $ec                                        ; $5246: $ec
    scf                                           ; $5247: $37
    jr c, jr_047_525c                             ; $5248: $38 $12

    ld [de], a                                    ; $524a: $12
    add hl, sp                                    ; $524b: $39
    ld a, [hl-]                                   ; $524c: $3a
    dec sp                                        ; $524d: $3b
    rst $38                                       ; $524e: $ff
    inc a                                         ; $524f: $3c
    dec a                                         ; $5250: $3d
    ld a, $3f                                     ; $5251: $3e $3f
    ld b, b                                       ; $5253: $40
    ld [de], a                                    ; $5254: $12
    ld [de], a                                    ; $5255: $12

jr_047_5256:
    ld b, c                                       ; $5256: $41
    db $fc                                        ; $5257: $fc
    rst $08                                       ; $5258: $cf
    rst $38                                       ; $5259: $ff
    db $ed                                        ; $525a: $ed
    db $ec                                        ; $525b: $ec

jr_047_525c:
    ld b, d                                       ; $525c: $42
    ld b, e                                       ; $525d: $43
    ld b, h                                       ; $525e: $44
    ld b, l                                       ; $525f: $45
    ld b, [hl]                                    ; $5260: $46
    ld b, a                                       ; $5261: $47
    rst $38                                       ; $5262: $ff
    ld c, b                                       ; $5263: $48
    ld c, c                                       ; $5264: $49
    ld c, d                                       ; $5265: $4a
    ld c, e                                       ; $5266: $4b
    ld c, h                                       ; $5267: $4c
    ld c, l                                       ; $5268: $4d
    ld [de], a                                    ; $5269: $12
    ld c, [hl]                                    ; $526a: $4e
    ld sp, hl                                     ; $526b: $f9
    ld c, a                                       ; $526c: $4f
    rst $08                                       ; $526d: $cf
    rst $38                                       ; $526e: $ff
    xor $ed                                       ; $526f: $ee $ed
    ld d, b                                       ; $5271: $50
    ld d, c                                       ; $5272: $51
    ld d, d                                       ; $5273: $52
    ld d, e                                       ; $5274: $53
    ld d, h                                       ; $5275: $54
    rst $38                                       ; $5276: $ff
    ld d, l                                       ; $5277: $55
    ld [de], a                                    ; $5278: $12
    ld d, [hl]                                    ; $5279: $56
    ld d, a                                       ; $527a: $57
    ld e, b                                       ; $527b: $58
    ld e, c                                       ; $527c: $59
    ld e, d                                       ; $527d: $5a
    ld e, e                                       ; $527e: $5b
    ld sp, hl                                     ; $527f: $f9
    inc b                                         ; $5280: $04
    ret nc                                        ; $5281: $d0

    rst $38                                       ; $5282: $ff
    xor $ed                                       ; $5283: $ee $ed
    ld e, h                                       ; $5285: $5c
    ld e, l                                       ; $5286: $5d
    ld e, [hl]                                    ; $5287: $5e
    ld e, a                                       ; $5288: $5f
    ld h, b                                       ; $5289: $60
    rst $38                                       ; $528a: $ff
    ld h, c                                       ; $528b: $61
    ld h, d                                       ; $528c: $62
    ld h, e                                       ; $528d: $63
    ld h, h                                       ; $528e: $64
    ld [de], a                                    ; $528f: $12
    ld h, l                                       ; $5290: $65
    ld h, [hl]                                    ; $5291: $66
    ld h, a                                       ; $5292: $67
    db $fc                                        ; $5293: $fc
    pop de                                        ; $5294: $d1
    rst $38                                       ; $5295: $ff
    rst $28                                       ; $5296: $ef
    xor $68                                       ; $5297: $ee $68
    ld l, c                                       ; $5299: $69
    ld l, d                                       ; $529a: $6a
    ld sp, $6c6b                                  ; $529b: $31 $6b $6c
    ccf                                           ; $529e: $3f
    ld [de], a                                    ; $529f: $12
    ld l, l                                       ; $52a0: $6d
    ld l, [hl]                                    ; $52a1: $6e
    ld [de], a                                    ; $52a2: $12
    ld l, a                                       ; $52a3: $6f
    ld [hl], b                                    ; $52a4: $70
    jp nc, $f0ff                                  ; $52a5: $d2 $ff $f0

    rst $28                                       ; $52a8: $ef
    rst $38                                       ; $52a9: $ff
    ld [hl], c                                    ; $52aa: $71
    ld [hl], d                                    ; $52ab: $72
    ld [hl], e                                    ; $52ac: $73
    ld [hl], h                                    ; $52ad: $74
    ld [hl], l                                    ; $52ae: $75
    halt                                          ; $52af: $76
    ld [hl], a                                    ; $52b0: $77
    ld [de], a                                    ; $52b1: $12
    rst $20                                       ; $52b2: $e7
    ld a, b                                       ; $52b3: $78
    ld a, c                                       ; $52b4: $79
    ld a, d                                       ; $52b5: $7a
    db $d3                                        ; $52b6: $d3
    rst $38                                       ; $52b7: $ff
    ld a, [c]                                     ; $52b8: $f2
    pop af                                        ; $52b9: $f1

jr_047_52ba:
    ld a, e                                       ; $52ba: $7b
    ld a, h                                       ; $52bb: $7c
    ld a, l                                       ; $52bc: $7d
    ld a, a                                       ; $52bd: $7f
    ld sp, $7f7e                                  ; $52be: $31 $7e $7f
    add b                                         ; $52c1: $80
    add c                                         ; $52c2: $81
    add d                                         ; $52c3: $82
    add e                                         ; $52c4: $83
    call nc, $feff                                ; $52c5: $d4 $ff $fe
    di                                            ; $52c8: $f3
    ld a, [c]                                     ; $52c9: $f2
    add h                                         ; $52ca: $84
    ld sp, $3185                                  ; $52cb: $31 $85 $31
    add [hl]                                      ; $52ce: $86
    add a                                         ; $52cf: $87
    adc b                                         ; $52d0: $88
    di                                            ; $52d1: $f3
    adc c                                         ; $52d2: $89
    adc d                                         ; $52d3: $8a
    push de                                       ; $52d4: $d5
    rst $38                                       ; $52d5: $ff
    di                                            ; $52d6: $f3
    ld a, [c]                                     ; $52d7: $f2
    adc e                                         ; $52d8: $8b
    ld sp, $318c                                  ; $52d9: $31 $8c $31
    sbc a                                         ; $52dc: $9f
    adc l                                         ; $52dd: $8d
    adc [hl]                                      ; $52de: $8e
    adc a                                         ; $52df: $8f
    sub b                                         ; $52e0: $90
    sub c                                         ; $52e1: $91
    push de                                       ; $52e2: $d5
    rst $38                                       ; $52e3: $ff
    di                                            ; $52e4: $f3
    ld a, [c]                                     ; $52e5: $f2
    sub d                                         ; $52e6: $92
    rst $38                                       ; $52e7: $ff
    sub e                                         ; $52e8: $93
    sub h                                         ; $52e9: $94
    sub l                                         ; $52ea: $95
    sub [hl]                                      ; $52eb: $96
    sub a                                         ; $52ec: $97
    sbc b                                         ; $52ed: $98
    sbc c                                         ; $52ee: $99
    sbc d                                         ; $52ef: $9a
    db $fc                                        ; $52f0: $fc
    push de                                       ; $52f1: $d5
    rst $38                                       ; $52f2: $ff
    di                                            ; $52f3: $f3
    ld a, [c]                                     ; $52f4: $f2
    sbc e                                         ; $52f5: $9b
    sbc h                                         ; $52f6: $9c
    sbc l                                         ; $52f7: $9d
    sbc [hl]                                      ; $52f8: $9e
    sbc a                                         ; $52f9: $9f
    ld sp, $a007                                  ; $52fa: $31 $07 $a0
    and c                                         ; $52fd: $a1
    and d                                         ; $52fe: $a2
    push de                                       ; $52ff: $d5
    rst $38                                       ; $5300: $ff
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    rst $38                                       ; $5304: $ff
    rst $38                                       ; $5305: $ff
    rst $38                                       ; $5306: $ff
    rst $38                                       ; $5307: $ff
    rst $38                                       ; $5308: $ff
    nop                                           ; $5309: $00
    rst $38                                       ; $530a: $ff
    rst $38                                       ; $530b: $ff
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
    db $10                                        ; $531a: $10
    rst $38                                       ; $531b: $ff
    rst $38                                       ; $531c: $ff
    rst $38                                       ; $531d: $ff
    rst $38                                       ; $531e: $ff
    rst $38                                       ; $531f: $ff
    rst $38                                       ; $5320: $ff
    db $fc                                        ; $5321: $fc
    ei                                            ; $5322: $fb
    ccf                                           ; $5323: $3f
    db $dd                                        ; $5324: $dd
    rst $38                                       ; $5325: $ff
    ld a, [$40f9]                                 ; $5326: $fa $f9 $40
    ld h, b                                       ; $5329: $60
    nop                                           ; $532a: $00
    db $db                                        ; $532b: $db
    rst $38                                       ; $532c: $ff
    ld a, [$40f9]                                 ; $532d: $fa $f9 $40
    ld h, c                                       ; $5330: $61
    jp c, $faff                                   ; $5331: $da $ff $fa

    ld sp, hl                                     ; $5334: $f9
    ld b, b                                       ; $5335: $40
    ld a, a                                       ; $5336: $7f
    rst $38                                       ; $5337: $ff
    rst $38                                       ; $5338: $ff
    rst $38                                       ; $5339: $ff
    rst $38                                       ; $533a: $ff
    jr nz, @+$01                                  ; $533b: $20 $ff

    rst $38                                       ; $533d: $ff
    rst $38                                       ; $533e: $ff
    rst $38                                       ; $533f: $ff
    rst $38                                       ; $5340: $ff
    rst $38                                       ; $5341: $ff
    rst $38                                       ; $5342: $ff
    rst $38                                       ; $5343: $ff
    db $ec                                        ; $5344: $ec
    db $eb                                        ; $5345: $eb
    add a                                         ; $5346: $87
    db $dd                                        ; $5347: $dd
    rst $38                                       ; $5348: $ff
    ei                                            ; $5349: $fb
    ld a, [$8e01]                                 ; $534a: $fa $01 $8e
    db $dd                                        ; $534d: $dd
    rst $38                                       ; $534e: $ff
    rst $38                                       ; $534f: $ff
    rst $38                                       ; $5350: $ff
    rst $38                                       ; $5351: $ff
    rst $38                                       ; $5352: $ff
    rst $38                                       ; $5353: $ff
    rst $38                                       ; $5354: $ff
    rst $38                                       ; $5355: $ff
    rst $38                                       ; $5356: $ff
    rst $38                                       ; $5357: $ff
    rst $38                                       ; $5358: $ff
    rst $38                                       ; $5359: $ff
    rst $38                                       ; $535a: $ff
    nop                                           ; $535b: $00
    rst $38                                       ; $535c: $ff
    rst $38                                       ; $535d: $ff
    rst $38                                       ; $535e: $ff
    rst $38                                       ; $535f: $ff
    rst $38                                       ; $5360: $ff
    rst $38                                       ; $5361: $ff
    rst $38                                       ; $5362: $ff
    rst $38                                       ; $5363: $ff
    rst $38                                       ; $5364: $ff
    rst $38                                       ; $5365: $ff
    rst $38                                       ; $5366: $ff
    rst $38                                       ; $5367: $ff
    rst $38                                       ; $5368: $ff
    rst $38                                       ; $5369: $ff
    rst $38                                       ; $536a: $ff
    rst $38                                       ; $536b: $ff
    nop                                           ; $536c: $00
    rst $38                                       ; $536d: $ff
    rst $38                                       ; $536e: $ff
    rst $38                                       ; $536f: $ff
    rst $38                                       ; $5370: $ff
    rst $38                                       ; $5371: $ff
    rst $38                                       ; $5372: $ff
    rst $38                                       ; $5373: $ff
    rst $38                                       ; $5374: $ff
    rst $38                                       ; $5375: $ff
    rst $38                                       ; $5376: $ff
    rst $38                                       ; $5377: $ff
    rst $38                                       ; $5378: $ff
    rst $38                                       ; $5379: $ff
    rst $38                                       ; $537a: $ff
    rst $38                                       ; $537b: $ff
    rst $38                                       ; $537c: $ff
    nop                                           ; $537d: $00
    rst $38                                       ; $537e: $ff
    rst $38                                       ; $537f: $ff
    rst $38                                       ; $5380: $ff
    rst $38                                       ; $5381: $ff
    rst $38                                       ; $5382: $ff
    rst $38                                       ; $5383: $ff
    rst $38                                       ; $5384: $ff
    rst $38                                       ; $5385: $ff
    rst $38                                       ; $5386: $ff
    rst $38                                       ; $5387: $ff
    rst $38                                       ; $5388: $ff
    rst $38                                       ; $5389: $ff
    rst $38                                       ; $538a: $ff
    rst $38                                       ; $538b: $ff
    rst $38                                       ; $538c: $ff
    rst $38                                       ; $538d: $ff
    nop                                           ; $538e: $00
    rst $38                                       ; $538f: $ff
    rst $38                                       ; $5390: $ff
    rst $38                                       ; $5391: $ff
    rst $38                                       ; $5392: $ff
    rst $38                                       ; $5393: $ff
    rst $38                                       ; $5394: $ff
    rst $38                                       ; $5395: $ff
    rst $38                                       ; $5396: $ff
    rst $38                                       ; $5397: $ff
    rst $38                                       ; $5398: $ff
    rst $38                                       ; $5399: $ff
    rst $38                                       ; $539a: $ff
    rst $38                                       ; $539b: $ff
    rst $38                                       ; $539c: $ff
    rst $38                                       ; $539d: $ff
    rst $38                                       ; $539e: $ff
    nop                                           ; $539f: $00
    rst $38                                       ; $53a0: $ff
    rst $38                                       ; $53a1: $ff
    rst $38                                       ; $53a2: $ff
    rst $38                                       ; $53a3: $ff
    rst $38                                       ; $53a4: $ff

jr_047_53a5:
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
    rst $38                                       ; $53af: $ff
    nop                                           ; $53b0: $00
    rst $38                                       ; $53b1: $ff
    rst $38                                       ; $53b2: $ff
    rst $38                                       ; $53b3: $ff
    rst $38                                       ; $53b4: $ff
    rst $38                                       ; $53b5: $ff
    rst $38                                       ; $53b6: $ff
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
    nop                                           ; $53c1: $00
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    rst $38                                       ; $53c4: $ff
    db $e3                                        ; $53c5: $e3
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    nop                                           ; $53c8: $00
    ld [hl], c                                    ; $53c9: $71
    ld [$ffff], sp                                ; $53ca: $08 $ff $ff
    rst $38                                       ; $53cd: $ff
    rst $38                                       ; $53ce: $ff
    pop hl                                        ; $53cf: $e1
    ldh [$0d], a                                  ; $53d0: $e0 $0d
    dec c                                         ; $53d2: $0d
    dec c                                         ; $53d3: $0d
    db $db                                        ; $53d4: $db
    rst $38                                       ; $53d5: $ff
    adc [hl]                                      ; $53d6: $8e
    jp nz, Jump_000_0df9                          ; $53d7: $c2 $f9 $0d

    dec bc                                        ; $53da: $0b
    add hl, bc                                    ; $53db: $09
    rst $38                                       ; $53dc: $ff
    ldh [$d5], a                                  ; $53dd: $e0 $d5
    rst $38                                       ; $53df: $ff
    add d                                         ; $53e0: $82
    push af                                       ; $53e1: $f5
    dec bc                                        ; $53e2: $0b
    jr jr_047_53a5                                ; $53e3: $18 $c0

    ld [c], a                                     ; $53e5: $e2
    cp a                                          ; $53e6: $bf
    rst $38                                       ; $53e7: $ff
    ld b, e                                       ; $53e8: $43
    di                                            ; $53e9: $f3
    ld c, l                                       ; $53ea: $4d
    add hl, bc                                    ; $53eb: $09
    add b                                         ; $53ec: $80
    db $e3                                        ; $53ed: $e3
    ret nz                                        ; $53ee: $c0

    rst $38                                       ; $53ef: $ff
    ld b, d                                       ; $53f0: $42
    db $f4                                        ; $53f1: $f4
    jr jr_047_5434                                ; $53f2: $18 $40

    db $e4                                        ; $53f4: $e4
    ret nz                                        ; $53f5: $c0

    rst $38                                       ; $53f6: $ff
    inc b                                         ; $53f7: $04
    ld a, [c]                                     ; $53f8: $f2
    add hl, bc                                    ; $53f9: $09

jr_047_53fa:
    add hl, bc                                    ; $53fa: $09
    ei                                            ; $53fb: $fb
    db $e3                                        ; $53fc: $e3
    ret nz                                        ; $53fd: $c0

    rst $38                                       ; $53fe: $ff
    add e                                         ; $53ff: $83
    di                                            ; $5400: $f3
    dec bc                                        ; $5401: $0b
    add hl, bc                                    ; $5402: $09
    dec bc                                        ; $5403: $0b
    add b                                         ; $5404: $80
    ret nz                                        ; $5405: $c0

    ld a, [bc]                                    ; $5406: $0a
    cp e                                          ; $5407: $bb
    pop hl                                        ; $5408: $e1
    rst $08                                       ; $5409: $cf
    rst $38                                       ; $540a: $ff
    ret nz                                        ; $540b: $c0

    ld a, [c]                                     ; $540c: $f2
    add b                                         ; $540d: $80
    ldh [$87], a                                  ; $540e: $e0 $87
    ld a, [bc]                                    ; $5410: $0a
    ld a, [bc]                                    ; $5411: $0a
    ld a, [bc]                                    ; $5412: $0a
    add b                                         ; $5413: $80
    rst $38                                       ; $5414: $ff
    inc bc                                        ; $5415: $03
    db $f4                                        ; $5416: $f4
    add c                                         ; $5417: $81
    ld [c], a                                     ; $5418: $e2
    rst $38                                       ; $5419: $ff
    pop hl                                        ; $541a: $e1
    ld l, l                                       ; $541b: $6d
    inc l                                         ; $541c: $2c
    rst $08                                       ; $541d: $cf
    rst $38                                       ; $541e: $ff
    xor $ed                                       ; $541f: $ee $ed
    rrca                                          ; $5421: $0f
    rrca                                          ; $5422: $0f
    ret nz                                        ; $5423: $c0

    jp Jump_047_7d0c                              ; $5424: $c3 $0c $7d


    pop hl                                        ; $5427: $e1
    pop de                                        ; $5428: $d1
    rst $38                                       ; $5429: $ff
    ld b, $c0                                     ; $542a: $06 $c0
    rst $28                                       ; $542c: $ef
    ld c, $0e                                     ; $542d: $0e $0e
    ret nz                                        ; $542f: $c0

    push hl                                       ; $5430: $e5
    ld [bc], a                                    ; $5431: $02
    rst $38                                       ; $5432: $ff
    ld b, d                                       ; $5433: $42

jr_047_5434:
    sub $3c                                       ; $5434: $d6 $3c
    jp nz, $ffd3                                  ; $5436: $c2 $d3 $ff

    jr jr_047_53fa                                ; $5439: $18 $bf

    ei                                            ; $543b: $fb
    call nc, $c1ff                                ; $543c: $d4 $ff $c1
    or [hl]                                       ; $543f: $b6
    ld c, $0f                                     ; $5440: $0e $0f
    ld a, [hl-]                                   ; $5442: $3a
    ldh [$d4], a                                  ; $5443: $e0 $d4
    rst $38                                       ; $5445: $ff
    ret nz                                        ; $5446: $c0

    rst $38                                       ; $5447: $ff
    nop                                           ; $5448: $00
    rst $38                                       ; $5449: $ff
    rst $38                                       ; $544a: $ff
    ld b, b                                       ; $544b: $40
    rst $38                                       ; $544c: $ff
    rst $38                                       ; $544d: $ff
    rst $38                                       ; $544e: $ff
    cp [hl]                                       ; $544f: $be
    db $d3                                        ; $5450: $d3
    push de                                       ; $5451: $d5
    rst $38                                       ; $5452: $ff
    rst $38                                       ; $5453: $ff
    rst $38                                       ; $5454: $ff
    rst $38                                       ; $5455: $ff
    rst $38                                       ; $5456: $ff
    ld a, [c]                                     ; $5457: $f2
    pop af                                        ; $5458: $f1
    ld bc, $ff48                                  ; $5459: $01 $48 $ff
    ldh [$da], a                                  ; $545c: $e0 $da
    rst $38                                       ; $545e: $ff
    rst $38                                       ; $545f: $ff
    rst $38                                       ; $5460: $ff
    rst $38                                       ; $5461: $ff
    rst $38                                       ; $5462: $ff
    rst $38                                       ; $5463: $ff
    rst $38                                       ; $5464: $ff
    rst $38                                       ; $5465: $ff
    rst $38                                       ; $5466: $ff
    rst $38                                       ; $5467: $ff
    rst $38                                       ; $5468: $ff
    nop                                           ; $5469: $00
    rst $38                                       ; $546a: $ff
    rst $38                                       ; $546b: $ff
    rst $38                                       ; $546c: $ff
    rst $38                                       ; $546d: $ff
    rst $38                                       ; $546e: $ff
    rst $38                                       ; $546f: $ff
    rst $38                                       ; $5470: $ff
    rst $38                                       ; $5471: $ff
    rst $38                                       ; $5472: $ff
    rst $38                                       ; $5473: $ff
    rst $38                                       ; $5474: $ff
    rst $38                                       ; $5475: $ff
    rst $38                                       ; $5476: $ff
    rst $38                                       ; $5477: $ff
    db $e4                                        ; $5478: $e4
    db $e3                                        ; $5479: $e3
    nop                                           ; $547a: $00
    inc bc                                        ; $547b: $03
    sbc a                                         ; $547c: $9f
    pop bc                                        ; $547d: $c1
    ei                                            ; $547e: $fb
    jp nz, $bf7f                                  ; $547f: $c2 $7f $bf

    cp $be                                        ; $5482: $fe $be
    rst $38                                       ; $5484: $ff
    ld a, l                                       ; $5485: $7d
    db $fc                                        ; $5486: $fc
    call c, $ffff                                 ; $5487: $dc $ff $ff
    rst $38                                       ; $548a: $ff
    nop                                           ; $548b: $00
    rst $38                                       ; $548c: $ff
    rst $38                                       ; $548d: $ff
    rst $38                                       ; $548e: $ff
    rst $38                                       ; $548f: $ff
    rst $38                                       ; $5490: $ff
    rst $38                                       ; $5491: $ff
    rst $38                                       ; $5492: $ff
    rst $38                                       ; $5493: $ff
    rst $38                                       ; $5494: $ff
    rst $38                                       ; $5495: $ff
    add hl, sp                                    ; $5496: $39
    ld c, d                                       ; $5497: $4a
    db $dd                                        ; $5498: $dd
    rst $38                                       ; $5499: $ff
    ret nz                                        ; $549a: $c0

    rst $38                                       ; $549b: $ff
    nop                                           ; $549c: $00
    rst $38                                       ; $549d: $ff
    rst $38                                       ; $549e: $ff
    rst $38                                       ; $549f: $ff
    rst $38                                       ; $54a0: $ff
    rst $38                                       ; $54a1: $ff
    rst $38                                       ; $54a2: $ff
    rst $38                                       ; $54a3: $ff
    rst $38                                       ; $54a4: $ff
    rst $38                                       ; $54a5: $ff
    rst $38                                       ; $54a6: $ff
    rst $38                                       ; $54a7: $ff
    rst $38                                       ; $54a8: $ff
    rst $38                                       ; $54a9: $ff
    rst $38                                       ; $54aa: $ff
    rst $38                                       ; $54ab: $ff
    rst $38                                       ; $54ac: $ff
    nop                                           ; $54ad: $00
    rst $38                                       ; $54ae: $ff
    rst $38                                       ; $54af: $ff
    rst $38                                       ; $54b0: $ff
    rst $38                                       ; $54b1: $ff
    rst $38                                       ; $54b2: $ff
    rst $38                                       ; $54b3: $ff
    rst $38                                       ; $54b4: $ff
    rst $38                                       ; $54b5: $ff
    rst $38                                       ; $54b6: $ff
    rst $38                                       ; $54b7: $ff
    rst $38                                       ; $54b8: $ff
    rst $38                                       ; $54b9: $ff
    rst $38                                       ; $54ba: $ff
    rst $38                                       ; $54bb: $ff
    rst $38                                       ; $54bc: $ff
    rst $38                                       ; $54bd: $ff
    nop                                           ; $54be: $00
    rst $38                                       ; $54bf: $ff
    rst $38                                       ; $54c0: $ff
    rst $38                                       ; $54c1: $ff
    rst $38                                       ; $54c2: $ff
    rst $38                                       ; $54c3: $ff
    rst $38                                       ; $54c4: $ff
    rst $38                                       ; $54c5: $ff
    rst $38                                       ; $54c6: $ff
    rst $38                                       ; $54c7: $ff
    rst $38                                       ; $54c8: $ff
    rst $38                                       ; $54c9: $ff
    rst $38                                       ; $54ca: $ff
    rst $38                                       ; $54cb: $ff
    rst $38                                       ; $54cc: $ff
    rst $38                                       ; $54cd: $ff
    rst $38                                       ; $54ce: $ff
    nop                                           ; $54cf: $00
    rst $38                                       ; $54d0: $ff
    rst $38                                       ; $54d1: $ff
    rst $38                                       ; $54d2: $ff
    rst $38                                       ; $54d3: $ff
    rst $38                                       ; $54d4: $ff
    rst $38                                       ; $54d5: $ff
    rst $38                                       ; $54d6: $ff
    rst $38                                       ; $54d7: $ff
    rst $38                                       ; $54d8: $ff
    rst $38                                       ; $54d9: $ff
    rst $38                                       ; $54da: $ff
    rst $38                                       ; $54db: $ff
    rst $38                                       ; $54dc: $ff
    rst $38                                       ; $54dd: $ff
    rst $38                                       ; $54de: $ff
    rst $38                                       ; $54df: $ff
    nop                                           ; $54e0: $00
    rst $38                                       ; $54e1: $ff

Call_047_54e2:
    rst $38                                       ; $54e2: $ff
    rst $38                                       ; $54e3: $ff
    rst $38                                       ; $54e4: $ff
    rst $38                                       ; $54e5: $ff
    rst $38                                       ; $54e6: $ff
    rst $38                                       ; $54e7: $ff
    rst $38                                       ; $54e8: $ff
    rst $38                                       ; $54e9: $ff
    rst $38                                       ; $54ea: $ff
    rst $38                                       ; $54eb: $ff
    rst $38                                       ; $54ec: $ff
    rst $38                                       ; $54ed: $ff
    rst $38                                       ; $54ee: $ff
    rst $38                                       ; $54ef: $ff
    rst $38                                       ; $54f0: $ff
    nop                                           ; $54f1: $00
    rst $38                                       ; $54f2: $ff
    rst $38                                       ; $54f3: $ff
    rst $38                                       ; $54f4: $ff
    rst $38                                       ; $54f5: $ff
    rst $38                                       ; $54f6: $ff
    rst $38                                       ; $54f7: $ff
    rst $38                                       ; $54f8: $ff
    rst $38                                       ; $54f9: $ff
    rst $38                                       ; $54fa: $ff
    rst $38                                       ; $54fb: $ff
    rst $38                                       ; $54fc: $ff
    rst $38                                       ; $54fd: $ff
    rst $38                                       ; $54fe: $ff
    rst $38                                       ; $54ff: $ff
    rst $38                                       ; $5500: $ff
    rst $38                                       ; $5501: $ff
    nop                                           ; $5502: $00
    rst $38                                       ; $5503: $ff
    rst $38                                       ; $5504: $ff
    rst $38                                       ; $5505: $ff
    rst $38                                       ; $5506: $ff
    rst $38                                       ; $5507: $ff
    rst $38                                       ; $5508: $ff
    rst $38                                       ; $5509: $ff
    rst $38                                       ; $550a: $ff
    rst $38                                       ; $550b: $ff
    rst $38                                       ; $550c: $ff
    rst $38                                       ; $550d: $ff
    rst $38                                       ; $550e: $ff
    rst $38                                       ; $550f: $ff
    rst $38                                       ; $5510: $ff
    rst $38                                       ; $5511: $ff
    rst $38                                       ; $5512: $ff
    inc bc                                        ; $5513: $03
    ld [$0008], sp                                ; $5514: $08 $08 $00
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    ccf                                           ; $551b: $3f
    ccf                                           ; $551c: $3f
    rst $38                                       ; $551d: $ff
    ld a, a                                       ; $551e: $7f
    rra                                           ; $551f: $1f
    dec d                                         ; $5520: $15
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    db $ec                                        ; $5523: $ec
    nop                                           ; $5524: $00
    daa                                           ; $5525: $27
    ld [bc], a                                    ; $5526: $02
    rst $38                                       ; $5527: $ff
    ld a, a                                       ; $5528: $7f
    daa                                           ; $5529: $27
    ld [bc], a                                    ; $552a: $02
    add b                                         ; $552b: $80
    ld a, [hl]                                    ; $552c: $7e
    cpl                                           ; $552d: $2f
    ld a, a                                       ; $552e: $7f
    ld h, b                                       ; $552f: $60
    ld bc, $0000                                  ; $5530: $01 $00 $00
    cpl                                           ; $5533: $2f
    ld a, a                                       ; $5534: $7f
    db $ec                                        ; $5535: $ec
    nop                                           ; $5536: $00
    rra                                           ; $5537: $1f
    dec d                                         ; $5538: $15
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    cpl                                           ; $553b: $2f
    ld a, a                                       ; $553c: $7f
    ccf                                           ; $553d: $3f
    ccf                                           ; $553e: $3f
    rra                                           ; $553f: $1f

jr_047_5540:
    dec d                                         ; $5540: $15
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    rra                                           ; $5543: $1f
    dec d                                         ; $5544: $15
    ccf                                           ; $5545: $3f
    ccf                                           ; $5546: $3f
    db $ec                                        ; $5547: $ec
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554a: $00
    daa                                           ; $554b: $27
    ld [bc], a                                    ; $554c: $02
    ccf                                           ; $554d: $3f
    ccf                                           ; $554e: $3f
    rst $38                                       ; $554f: $ff
    ld a, a                                       ; $5550: $7f
    rst $30                                       ; $5551: $f7
    dec sp                                        ; $5552: $3b
    sub c                                         ; $5553: $91
    dec bc                                        ; $5554: $0b
    ld h, b                                       ; $5555: $60
    ld bc, $0227                                  ; $5556: $01 $27 $02
    ei                                            ; $5559: $fb
    rst $38                                       ; $555a: $ff
    nop                                           ; $555b: $00
    cp $eb                                        ; $555c: $fe $eb
    ld hl, sp+$07                                 ; $555e: $f8 $07
    ld c, a                                       ; $5560: $4f
    or b                                          ; $5561: $b0
    and b                                         ; $5562: $a0
    rst $38                                       ; $5563: $ff
    ld e, a                                       ; $5564: $5f
    ld d, h                                       ; $5565: $54
    xor e                                         ; $5566: $ab
    ld [$f515], a                                 ; $5567: $ea $15 $f5

jr_047_556a:
    ld a, [bc]                                    ; $556a: $0a
    cp $fd                                        ; $556b: $fe $fd
    ld bc, $e1e2                                  ; $556d: $01 $e2 $e1
    rra                                           ; $5570: $1f
    ldh [$ef], a                                  ; $5571: $e0 $ef
    stop                                          ; $5573: $10 $00
    rst $38                                       ; $5575: $ff
    cp a                                          ; $5576: $bf
    jr c, jr_047_5540                             ; $5577: $38 $c7

    ld [hl], h                                    ; $5579: $74
    adc e                                         ; $557a: $8b
    ld a, [$ee05]                                 ; $557b: $fa $05 $ee
    db $e3                                        ; $557e: $e3
    rst $38                                       ; $557f: $ff
    rst $38                                       ; $5580: $ff
    nop                                           ; $5581: $00
    ld a, a                                       ; $5582: $7f
    add b                                         ; $5583: $80
    rlca                                          ; $5584: $07
    ld hl, sp+$43                                 ; $5585: $f8 $43
    cp h                                          ; $5587: $bc
    xor a                                         ; $5588: $af
    rst $30                                       ; $5589: $f7
    ld d, b                                       ; $558a: $50
    ld [hl], a                                    ; $558b: $77
    adc b                                         ; $558c: $88
    ret nz                                        ; $558d: $c0

    rst $20                                       ; $558e: $e7
    cp $01                                        ; $558f: $fe $01
    rst $18                                       ; $5591: $df
    jr nz, jr_047_560f                            ; $5592: $20 $7b

    ld bc, $b0fe                                  ; $5594: $01 $fe $b0
    rst $20                                       ; $5597: $e7
    ld a, a                                       ; $5598: $7f
    add b                                         ; $5599: $80
    sbc a                                         ; $559a: $9f
    ld h, b                                       ; $559b: $60
    db $e4                                        ; $559c: $e4
    rst $20                                       ; $559d: $e7
    db $fc                                        ; $559e: $fc
    or d                                          ; $559f: $b2
    push hl                                       ; $55a0: $e5
    sub b                                         ; $55a1: $90
    pop hl                                        ; $55a2: $e1
    rst $20                                       ; $55a3: $e7
    jr jr_047_55a9                                ; $55a4: $18 $03

    db $fc                                        ; $55a6: $fc
    ld d, a                                       ; $55a7: $57
    xor b                                         ; $55a8: $a8

jr_047_55a9:
    ei                                            ; $55a9: $fb
    xor a                                         ; $55aa: $af
    ld d, b                                       ; $55ab: $50
    add h                                         ; $55ac: $84
    push hl                                       ; $55ad: $e5
    db $fc                                        ; $55ae: $fc
    inc bc                                        ; $55af: $03
    pop de                                        ; $55b0: $d1
    ld l, $fa                                     ; $55b1: $2e $fa
    db $fd                                        ; $55b3: $fd
    dec b                                         ; $55b4: $05
    halt                                          ; $55b5: $76
    db $e3                                        ; $55b6: $e3
    rst $18                                       ; $55b7: $df
    jr nz, jr_047_556a                            ; $55b8: $20 $b0

    ld c, a                                       ; $55ba: $4f
    ld b, d                                       ; $55bb: $42
    cp l                                          ; $55bc: $bd
    cp a                                          ; $55bd: $bf
    dec b                                         ; $55be: $05
    ld a, [$45ba]                                 ; $55bf: $fa $ba $45
    ld e, a                                       ; $55c2: $5f
    and b                                         ; $55c3: $a0
    ld h, h                                       ; $55c4: $64
    pop hl                                        ; $55c5: $e1
    ld b, b                                       ; $55c6: $40
    rst $38                                       ; $55c7: $ff
    cp a                                          ; $55c8: $bf

jr_047_55c9:
    nop                                           ; $55c9: $00
    rst $38                                       ; $55ca: $ff
    ld a, [hl+]                                   ; $55cb: $2a
    push de                                       ; $55cc: $d5
    ld d, h                                       ; $55cd: $54
    xor e                                         ; $55ce: $ab
    xor d                                         ; $55cf: $aa
    rst $30                                       ; $55d0: $f7
    ld d, l                                       ; $55d1: $55
    db $fd                                        ; $55d2: $fd
    ld [bc], a                                    ; $55d3: $02
    ld d, h                                       ; $55d4: $54
    pop hl                                        ; $55d5: $e1
    add hl, hl                                    ; $55d6: $29
    sub $01                                       ; $55d7: $d6 $01
    cp $ff                                        ; $55d9: $fe $ff
    and b                                         ; $55db: $a0
    ld e, a                                       ; $55dc: $5f
    db $10                                        ; $55dd: $10
    rst $28                                       ; $55de: $ef
    add b                                         ; $55df: $80
    ld a, a                                       ; $55e0: $7f
    ld d, l                                       ; $55e1: $55
    xor d                                         ; $55e2: $aa
    rst $38                                       ; $55e3: $ff
    cp [hl]                                       ; $55e4: $be
    ld b, c                                       ; $55e5: $41
    rst $38                                       ; $55e6: $ff
    nop                                           ; $55e7: $00
    jr nz, jr_047_55c9                            ; $55e8: $20 $df

    add b                                         ; $55ea: $80
    ld a, a                                       ; $55eb: $7f
    rst $38                                       ; $55ec: $ff
    nop                                           ; $55ed: $00
    rst $38                                       ; $55ee: $ff
    dec d                                         ; $55ef: $15
    ld [$d52a], a                                 ; $55f0: $ea $2a $d5
    ld d, l                                       ; $55f3: $55
    xor d                                         ; $55f4: $aa
    rst $38                                       ; $55f5: $ff
    xor a                                         ; $55f6: $af
    ld d, b                                       ; $55f7: $50
    rst $18                                       ; $55f8: $df
    jr nz, jr_047_560c                            ; $55f9: $20 $11

    xor $02                                       ; $55fb: $ee $02
    db $fd                                        ; $55fd: $fd
    rst $38                                       ; $55fe: $ff
    nop                                           ; $55ff: $00
    rst $38                                       ; $5600: $ff
    db $10                                        ; $5601: $10
    rst $28                                       ; $5602: $ef
    adc c                                         ; $5603: $89
    halt                                          ; $5604: $76
    ld d, h                                       ; $5605: $54
    xor e                                         ; $5606: $ab
    ei                                            ; $5607: $fb
    xor e                                         ; $5608: $ab
    ld d, h                                       ; $5609: $54
    ld [hl+], a                                   ; $560a: $22
    pop hl                                        ; $560b: $e1

jr_047_560c:
    ld bc, $00fe                                  ; $560c: $01 $fe $00

jr_047_560f:
    rst $38                                       ; $560f: $ff
    and b                                         ; $5610: $a0
    or a                                          ; $5611: $b7
    ld e, a                                       ; $5612: $5f
    ld d, l                                       ; $5613: $55
    xor d                                         ; $5614: $aa
    xor [hl]                                      ; $5615: $ae
    pop hl                                        ; $5616: $e1
    cp a                                          ; $5617: $bf
    ld b, b                                       ; $5618: $40
    db $10                                        ; $5619: $10
    pop hl                                        ; $561a: $e1
    dec b                                         ; $561b: $05
    rst $38                                       ; $561c: $ff
    ld a, [$fd02]                                 ; $561d: $fa $02 $fd
    ld b, l                                       ; $5620: $45
    cp d                                          ; $5621: $ba
    xor e                                         ; $5622: $ab
    ld d, h                                       ; $5623: $54
    db $dd                                        ; $5624: $dd
    rst $30                                       ; $5625: $f7
    ld [hl+], a                                   ; $5626: $22
    rst $28                                       ; $5627: $ef
    db $10                                        ; $5628: $10
    ld [hl-], a                                   ; $5629: $32
    db $e3                                        ; $562a: $e3
    xor e                                         ; $562b: $ab
    ld d, h                                       ; $562c: $54
    ld a, a                                       ; $562d: $7f
    add b                                         ; $562e: $80
    ld a, [hl]                                    ; $562f: $7e
    ld hl, sp-$33                                 ; $5630: $f8 $cd
    call nc, $fb2b                                ; $5632: $d4 $2b $fb
    inc b                                         ; $5635: $04
    push af                                       ; $5636: $f5
    ld a, [bc]                                    ; $5637: $0a
    ldh [$c5], a                                  ; $5638: $e0 $c5
    cp a                                          ; $563a: $bf
    ld e, $e1                                     ; $563b: $1e $e1
    nop                                           ; $563d: $00
    rst $38                                       ; $563e: $ff
    xor d                                         ; $563f: $aa
    ld d, l                                       ; $5640: $55
    ldh a, [$e7]                                  ; $5641: $f0 $e7
    rra                                           ; $5643: $1f
    rst $38                                       ; $5644: $ff
    ldh [rVBK], a                                 ; $5645: $e0 $4f
    or b                                          ; $5647: $b0
    sub c                                         ; $5648: $91
    ld l, [hl]                                    ; $5649: $6e
    ld h, a                                       ; $564a: $67
    sbc b                                         ; $564b: $98
    ld h, d                                       ; $564c: $62
    ld a, a                                       ; $564d: $7f
    sbc l                                         ; $564e: $9d
    pop af                                        ; $564f: $f1
    ld c, $d6                                     ; $5650: $0e $d6
    add hl, hl                                    ; $5652: $29
    db $ed                                        ; $5653: $ed
    ld [de], a                                    ; $5654: $12
    cp b                                          ; $5655: $b8
    push bc                                       ; $5656: $c5
    ld a, [hl]                                    ; $5657: $7e
    ld [hl], d                                    ; $5658: $72

jr_047_5659:
    pop hl                                        ; $5659: $e1
    adc d                                         ; $565a: $8a
    ld [hl], l                                    ; $565b: $75
    ld d, a                                       ; $565c: $57
    xor b                                         ; $565d: $a8
    db $eb                                        ; $565e: $eb
    inc d                                         ; $565f: $14
    call nz, $ffe3                                ; $5660: $c4 $e3 $ff
    rst $18                                       ; $5663: $df
    jr nz, @+$11                                  ; $5664: $20 $0f

    ldh a, [$81]                                  ; $5666: $f0 $81
    ld a, [hl]                                    ; $5668: $7e
    ld b, c                                       ; $5669: $41
    cp [hl]                                       ; $566a: $be
    ld a, [hl]                                    ; $566b: $7e
    call nz, $ffe9                                ; $566c: $c4 $e9 $ff
    nop                                           ; $566f: $00
    ld e, a                                       ; $5670: $5f
    and b                                         ; $5671: $a0
    xor c                                         ; $5672: $a9
    ld d, [hl]                                    ; $5673: $56
    jr nc, jr_047_5659                            ; $5674: $30 $e3

    cp h                                          ; $5676: $bc
    db $ec                                        ; $5677: $ec
    jp hl                                         ; $5678: $e9


    ld [hl], h                                    ; $5679: $74
    call Call_000_01fe                            ; $567a: $cd $fe $01
    and b                                         ; $567d: $a0
    ld e, a                                       ; $567e: $5f
    ld h, b                                       ; $567f: $60
    ret                                           ; $5680: $c9


    ccf                                           ; $5681: $3f
    or a                                          ; $5682: $b7
    ret nz                                        ; $5683: $c0

    ld d, a                                       ; $5684: $57
    xor b                                         ; $5685: $a8
    ld d, b                                       ; $5686: $50
    rst $00                                       ; $5687: $c7
    xor d                                         ; $5688: $aa
    ld d, l                                       ; $5689: $55
    ld b, h                                       ; $568a: $44
    pop bc                                        ; $568b: $c1
    ei                                            ; $568c: $fb
    pop bc                                        ; $568d: $c1
    inc b                                         ; $568e: $04
    ldh a, [$eb]                                  ; $568f: $f0 $eb
    sub [hl]                                      ; $5691: $96
    pop bc                                        ; $5692: $c1
    or h                                          ; $5693: $b4
    jp $e3e0                                      ; $5694: $c3 $e0 $e3


    ld b, b                                       ; $5697: $40
    pop bc                                        ; $5698: $c1
    and l                                         ; $5699: $a5
    ld e, d                                       ; $569a: $5a
    cp h                                          ; $569b: $bc
    or h                                          ; $569c: $b4
    pop bc                                        ; $569d: $c1
    ret nc                                        ; $569e: $d0

    db $e3                                        ; $569f: $e3
    ld [$f715], a                                 ; $56a0: $ea $15 $f7
    ld [$c10c], sp                                ; $56a3: $08 $0c $c1
    db $fd                                        ; $56a6: $fd
    ld a, c                                       ; $56a7: $79
    ld [bc], a                                    ; $56a8: $02
    ret nz                                        ; $56a9: $c0

    db $e3                                        ; $56aa: $e3
    xor $c1                                       ; $56ab: $ee $c1
    ldh a, [rIF]                                  ; $56ad: $f0 $0f
    add b                                         ; $56af: $80
    ld a, a                                       ; $56b0: $7f
    sbc [hl]                                      ; $56b1: $9e
    pop bc                                        ; $56b2: $c1
    cp $72                                        ; $56b3: $fe $72
    push bc                                       ; $56b5: $c5
    cp $01                                        ; $56b6: $fe $01
    rra                                           ; $56b8: $1f
    ldh [rSCX], a                                 ; $56b9: $e0 $43
    cp h                                          ; $56bb: $bc
    xor b                                         ; $56bc: $a8
    rst $30                                       ; $56bd: $f7

jr_047_56be:
    ld d, a                                       ; $56be: $57
    ld d, l                                       ; $56bf: $55
    xor d                                         ; $56c0: $aa
    ld [c], a                                     ; $56c1: $e2
    and c                                         ; $56c2: $a1
    ld [hl], a                                    ; $56c3: $77
    adc b                                         ; $56c4: $88
    cp d                                          ; $56c5: $ba
    ld b, l                                       ; $56c6: $45
    ldh a, [$0e]                                  ; $56c7: $f0 $0e
    pop bc                                        ; $56c9: $c1
    sub b                                         ; $56ca: $90
    db $e3                                        ; $56cb: $e3
    adc d                                         ; $56cc: $8a
    pop hl                                        ; $56cd: $e1
    add sp, -$1f                                  ; $56ce: $e8 $e1
    xor d                                         ; $56d0: $aa
    ld d, l                                       ; $56d1: $55
    ld d, l                                       ; $56d2: $55
    xor d                                         ; $56d3: $aa
    ld a, [hl]                                    ; $56d4: $7e
    db $fc                                        ; $56d5: $fc
    db $e3                                        ; $56d6: $e3
    ldh [rIE], a                                  ; $56d7: $e0 $ff
    db $fd                                        ; $56d9: $fd
    ld a, [$fffe]                                 ; $56da: $fa $fe $ff
    rst $38                                       ; $56dd: $ff
    push hl                                       ; $56de: $e5
    cp a                                          ; $56df: $bf
    xor d                                         ; $56e0: $aa
    ld d, l                                       ; $56e1: $55
    nop                                           ; $56e2: $00
    rst $38                                       ; $56e3: $ff
    ld d, l                                       ; $56e4: $55
    xor d                                         ; $56e5: $aa
    call nc, $80c1                                ; $56e6: $d4 $c1 $80
    sbc a                                         ; $56e9: $9f
    rst $38                                       ; $56ea: $ff
    ret nz                                        ; $56eb: $c0

    rst $38                                       ; $56ec: $ff
    jp z, $f0f5                                   ; $56ed: $ca $f5 $f0

    rst $20                                       ; $56f0: $e7
    sub a                                         ; $56f1: $97
    and c                                         ; $56f2: $a1
    xor d                                         ; $56f3: $aa
    db $fd                                        ; $56f4: $fd
    ld d, l                                       ; $56f5: $55
    ldh [$e7], a                                  ; $56f6: $e0 $e7
    ld bc, $03ff                                  ; $56f8: $01 $ff $03
    rst $38                                       ; $56fb: $ff
    xor a                                         ; $56fc: $af
    ld d, a                                       ; $56fd: $57
    jp nc, $e3d0                                  ; $56fe: $d2 $d0 $e3

    ccf                                           ; $5701: $3f
    ret nz                                        ; $5702: $c0

    and $f7                                       ; $5703: $e6 $f7
    db $ed                                        ; $5705: $ed
    ldh [$fe], a                                  ; $5706: $e0 $fe
    and $f0                                       ; $5708: $e6 $f0
    rst $38                                       ; $570a: $ff
    and e                                         ; $570b: $a3
    db $fc                                        ; $570c: $fc
    rst $38                                       ; $570d: $ff
    and c                                         ; $570e: $a1
    xor b                                         ; $570f: $a8
    ld b, a                                       ; $5710: $47
    and h                                         ; $5711: $a4
    ld b, b                                       ; $5712: $40
    xor e                                         ; $5713: $ab
    db $fc                                        ; $5714: $fc
    jr c, jr_047_56be                             ; $5715: $38 $a7

    nop                                           ; $5717: $00
    rst $18                                       ; $5718: $df
    jp nz, Jump_000_3507                          ; $5719: $c2 $07 $35

    ccf                                           ; $571c: $3f
    ld [$e4e0], a                                 ; $571d: $ea $e0 $e4
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00

jr_047_5722:
    sbc a                                         ; $5722: $9f
    ld d, a                                       ; $5723: $57
    rst $38                                       ; $5724: $ff
    xor e                                         ; $5725: $ab
    rst $38                                       ; $5726: $ff
    ld e, a                                       ; $5727: $5f
    ld e, d                                       ; $5728: $5a
    pop hl                                        ; $5729: $e1
    ld b, d                                       ; $572a: $42
    jp $ff00                                      ; $572b: $c3 $00 $ff


    rst $20                                       ; $572e: $e7
    ldh [$fb], a                                  ; $572f: $e0 $fb
    ld hl, sp-$03                                 ; $5731: $f8 $fd
    db $fc                                        ; $5733: $fc
    cp $fe                                        ; $5734: $fe $fe
    ld d, a                                       ; $5736: $57
    rrca                                          ; $5737: $0f
    rst $38                                       ; $5738: $ff
    rra                                           ; $5739: $1f
    cp $e0                                        ; $573a: $fe $e0
    ccf                                           ; $573c: $3f
    cp $e0                                        ; $573d: $fe $e0
    ld a, a                                       ; $573f: $7f
    cp $e2                                        ; $5740: $fe $e2
    sub a                                         ; $5742: $97
    nop                                           ; $5743: $00
    rst $38                                       ; $5744: $ff
    add b                                         ; $5745: $80
    cp $e0                                        ; $5746: $fe $e0
    ret nz                                        ; $5748: $c0

    cp $e2                                        ; $5749: $fe $e2
    add h                                         ; $574b: $84
    pop hl                                        ; $574c: $e1
    ei                                            ; $574d: $fb
    rst $38                                       ; $574e: $ff
    inc bc                                        ; $574f: $03
    rst $30                                       ; $5750: $f7
    rlca                                          ; $5751: $07
    rst $28                                       ; $5752: $ef
    rrca                                          ; $5753: $0f
    db $e3                                        ; $5754: $e3
    inc bc                                        ; $5755: $03
    pop bc                                        ; $5756: $c1
    rst $38                                       ; $5757: $ff
    dec e                                         ; $5758: $1d
    ret z                                         ; $5759: $c8

    ld e, $ec                                     ; $575a: $1e $ec
    ld c, $f1                                     ; $575c: $0e $f1
    ld bc, $f7d7                                  ; $575e: $01 $d7 $f7
    jr z, jr_047_5722                             ; $5761: $28 $bf

    ld b, b                                       ; $5763: $40
    call nc, Call_000_04a0                        ; $5764: $d4 $a0 $04
    rst $38                                       ; $5767: $ff
    ld a, [hl+]                                   ; $5768: $2a
    rst $38                                       ; $5769: $ff
    rst $28                                       ; $576a: $ef
    ld d, h                                       ; $576b: $54
    nop                                           ; $576c: $00
    nop                                           ; $576d: $00
    ld hl, sp+$2c                                 ; $576e: $f8 $2c
    and [hl]                                      ; $5770: $a6
    rst $38                                       ; $5771: $ff
    ld bc, $ffc0                                  ; $5772: $01 $c0 $ff
    nop                                           ; $5775: $00
    ccf                                           ; $5776: $3f
    ccf                                           ; $5777: $3f
    ld e, $de                                     ; $5778: $1e $de
    cp $04                                        ; $577a: $fe $04
    rst $38                                       ; $577c: $ff
    cp a                                          ; $577d: $bf
    ld a, [bc]                                    ; $577e: $0a
    rst $38                                       ; $577f: $ff
    ld d, l                                       ; $5780: $55
    rst $38                                       ; $5781: $ff
    xor d                                         ; $5782: $aa
    cp $e2                                        ; $5783: $fe $e2
    ldh [rIF], a                                  ; $5785: $e0 $0f
    rlca                                          ; $5787: $07
    ld l, a                                       ; $5788: $6f
    rlca                                          ; $5789: $07
    rst $30                                       ; $578a: $f7
    call nc, $fe80                                ; $578b: $d4 $80 $fe
    ld [c], a                                     ; $578e: $e2
    jp z, $f482                                   ; $578f: $ca $82 $f4

    ldh [$91], a                                  ; $5792: $e0 $91
    adc e                                         ; $5794: $8b
    sbc h                                         ; $5795: $9c
    pop bc                                        ; $5796: $c1
    rst $20                                       ; $5797: $e7
    ld a, c                                       ; $5798: $79
    add c                                         ; $5799: $81
    and e                                         ; $579a: $a3
    rst $38                                       ; $579b: $ff
    ld d, a                                       ; $579c: $57
    ld a, d                                       ; $579d: $7a
    ldh [$f5], a                                  ; $579e: $e0 $f5
    rrc a                                         ; $57a0: $cb $0f
    rst $38                                       ; $57a2: $ff
    rrca                                          ; $57a3: $0f
    and e                                         ; $57a4: $a3
    and e                                         ; $57a5: $a3
    ld d, c                                       ; $57a6: $51
    ld d, c                                       ; $57a7: $51
    xor b                                         ; $57a8: $a8
    xor b                                         ; $57a9: $a8
    call nc, $d45f                                ; $57aa: $d4 $5f $d4
    ld a, [$fdfa]                                 ; $57ad: $fa $fa $fd
    db $fd                                        ; $57b0: $fd
    reti                                          ; $57b1: $d9


    rst $00                                       ; $57b2: $c7
    ld a, a                                       ; $57b3: $7f
    rst $38                                       ; $57b4: $ff
    ldh [$b9], a                                  ; $57b5: $e0 $b9
    ccf                                           ; $57b7: $3f
    ret                                           ; $57b8: $c9


    ret nz                                        ; $57b9: $c0

    add sp, -$3f                                  ; $57ba: $e8 $c1
    ld hl, sp-$01                                 ; $57bc: $f8 $ff
    db $f4                                        ; $57be: $f4
    db $fc                                        ; $57bf: $fc
    db $e4                                        ; $57c0: $e4
    db $fd                                        ; $57c1: $fd
    cp $31                                        ; $57c2: $fe $31
    adc b                                         ; $57c4: $88
    ld a, [bc]                                    ; $57c5: $0a
    rst $38                                       ; $57c6: $ff
    dec d                                         ; $57c7: $15
    rst $38                                       ; $57c8: $ff
    ld a, [$f7ff]                                 ; $57c9: $fa $ff $f7
    ccf                                           ; $57cc: $3f
    rlca                                          ; $57cd: $07
    xor $0f                                       ; $57ce: $ee $0f
    add sp, $0e                                   ; $57d0: $e8 $0e
    ldh a, [$fb]                                  ; $57d2: $f0 $fb
    add c                                         ; $57d4: $81
    ldh [$c2], a                                  ; $57d5: $e0 $c2
    rst $38                                       ; $57d7: $ff
    and a                                         ; $57d8: $a7
    and b                                         ; $57d9: $a0
    rrca                                          ; $57da: $0f
    nop                                           ; $57db: $00
    ccf                                           ; $57dc: $3f
    nop                                           ; $57dd: $00
    ld b, a                                       ; $57de: $47
    nop                                           ; $57df: $00
    rst $38                                       ; $57e0: $ff
    add e                                         ; $57e1: $83
    jr c, jr_047_57e7                             ; $57e2: $38 $03

    inc c                                         ; $57e4: $0c
    ld b, e                                       ; $57e5: $43
    inc b                                         ; $57e6: $04

jr_047_57e7:
    ld h, d                                       ; $57e7: $62
    ld [$0cff], sp                                ; $57e8: $08 $ff $0c
    db $ed                                        ; $57eb: $ed
    inc c                                         ; $57ec: $0c
    db $ed                                        ; $57ed: $ed
    inc e                                         ; $57ee: $1c
    db $dd                                        ; $57ef: $dd
    inc a                                         ; $57f0: $3c
    cp l                                          ; $57f1: $bd
    rst $38                                       ; $57f2: $ff
    inc l                                         ; $57f3: $2c
    xor l                                         ; $57f4: $ad
    inc c                                         ; $57f5: $0c
    call $f300                                    ; $57f6: $cd $00 $f3
    nop                                           ; $57f9: $00
    rst $38                                       ; $57fa: $ff
    rst $38                                       ; $57fb: $ff
    inc bc                                        ; $57fc: $03
    sbc e                                         ; $57fd: $9b
    ld h, e                                       ; $57fe: $63
    dec de                                        ; $57ff: $1b
    ld h, e                                       ; $5800: $63
    dec de                                        ; $5801: $1b
    inc bc                                        ; $5802: $03
    dec sp                                        ; $5803: $3b
    rst $38                                       ; $5804: $ff
    rlca                                          ; $5805: $07
    ld [hl], a                                    ; $5806: $77
    dec c                                         ; $5807: $0d
    db $ed                                        ; $5808: $ed
    ld e, $9e                                     ; $5809: $1e $9e
    ld l, $ce                                     ; $580b: $2e $ce
    sbc h                                         ; $580d: $9c
    ld b, d                                       ; $580e: $42
    db $e3                                        ; $580f: $e3
    inc a                                         ; $5810: $3c
    pop hl                                        ; $5811: $e1
    ccf                                           ; $5812: $3f
    add b                                         ; $5813: $80
    ccf                                           ; $5814: $3f
    sub l                                         ; $5815: $95
    add b                                         ; $5816: $80
    pop de                                        ; $5817: $d1
    ld h, c                                       ; $5818: $61
    ld c, $ee                                     ; $5819: $0e $ee
    adc $c8                                       ; $581b: $ce $c8
    ld [bc], a                                    ; $581d: $02
    rst $38                                       ; $581e: $ff
    dec b                                         ; $581f: $05
    db $fc                                        ; $5820: $fc
    ld [c], a                                     ; $5821: $e2
    adc d                                         ; $5822: $8a
    rst $38                                       ; $5823: $ff
    push bc                                       ; $5824: $c5
    cp a                                          ; $5825: $bf
    rst $38                                       ; $5826: $ff
    jp z, $f5ff                                   ; $5827: $ca $ff $f5

    rst $38                                       ; $582a: $ff
    xor a                                         ; $582b: $af
    inc a                                         ; $582c: $3c
    ldh [$af], a                                  ; $582d: $e0 $af
    ret z                                         ; $582f: $c8

    sub [hl]                                      ; $5830: $96
    ret nz                                        ; $5831: $c0

    db $fc                                        ; $5832: $fc
    push hl                                       ; $5833: $e5
    rst $20                                       ; $5834: $e7
    and l                                         ; $5835: $a5
    cp $ff                                        ; $5836: $fe $ff
    ldh [rLCDC], a                                ; $5838: $e0 $40
    pop hl                                        ; $583a: $e1
    ldh a, [$f0]                                  ; $583b: $f0 $f0
    rst $38                                       ; $583d: $ff
    pop bc                                        ; $583e: $c1
    pop bc                                        ; $583f: $c1
    adc d                                         ; $5840: $8a
    adc d                                         ; $5841: $8a
    dec d                                         ; $5842: $15
    dec d                                         ; $5843: $15
    dec hl                                        ; $5844: $2b
    dec hl                                        ; $5845: $2b
    rst $28                                       ; $5846: $ef
    ld e, a                                       ; $5847: $5f
    ld e, a                                       ; $5848: $5f
    cp a                                          ; $5849: $bf
    cp a                                          ; $584a: $bf
    add sp, -$1f                                  ; $584b: $e8 $e1
    ld hl, sp-$08                                 ; $584d: $f8 $f8
    push af                                       ; $584f: $f5
    db $fd                                        ; $5850: $fd
    push af                                       ; $5851: $f5
    pop bc                                        ; $5852: $c1
    and e                                         ; $5853: $a3
    rst $00                                       ; $5854: $c7
    rst $00                                       ; $5855: $c7
    and e                                         ; $5856: $a3
    and e                                         ; $5857: $a3
    rra                                           ; $5858: $1f
    rra                                           ; $5859: $1f
    rst $38                                       ; $585a: $ff
    rlca                                          ; $585b: $07
    rlca                                          ; $585c: $07
    ld b, e                                       ; $585d: $43
    ld b, e                                       ; $585e: $43
    xor c                                         ; $585f: $a9
    xor c                                         ; $5860: $a9
    push de                                       ; $5861: $d5
    push de                                       ; $5862: $d5
    ld a, a                                       ; $5863: $7f
    ld hl, sp-$08                                 ; $5864: $f8 $f8
    db $fc                                        ; $5866: $fc
    db $fc                                        ; $5867: $fc
    ld a, [$fbfa]                                 ; $5868: $fa $fa $fb
    and $a8                                       ; $586b: $e6 $a8
    rra                                           ; $586d: $1f
    jp $a1c3                                      ; $586e: $c3 $c3 $a1


    and c                                         ; $5871: $a1
    db $fd                                        ; $5872: $fd
    db $fc                                        ; $5873: $fc
    and b                                         ; $5874: $a0
    or d                                          ; $5875: $b2
    ldh [$90], a                                  ; $5876: $e0 $90
    and [hl]                                      ; $5878: $a6
    ld e, l                                       ; $5879: $5d
    ld b, b                                       ; $587a: $40
    ld d, b                                       ; $587b: $50
    ret nz                                        ; $587c: $c0

    ld b, b                                       ; $587d: $40
    rst $38                                       ; $587e: $ff
    and b                                         ; $587f: $a0
    ld a, [$fcc2]                                 ; $5880: $fa $c2 $fc
    sbc $a0                                       ; $5883: $de $a0
    ld l, a                                       ; $5885: $6f
    ld hl, sp+$03                                 ; $5886: $f8 $03
    ldh a, [rTAC]                                 ; $5888: $f0 $07
    cp $e1                                        ; $588a: $fe $e1
    ld a, [$f403]                                 ; $588c: $fa $03 $f4
    and e                                         ; $588f: $a3
    ei                                            ; $5890: $fb
    nop                                           ; $5891: $00
    or $eb                                        ; $5892: $f6 $eb
    and b                                         ; $5894: $a0
    add sp, $20                                   ; $5895: $e8 $20
    ldh [rSTAT], a                                ; $5897: $e0 $41
    pop bc                                        ; $5899: $c1
    cp a                                          ; $589a: $bf
    nop                                           ; $589b: $00
    ld bc, $0382                                  ; $589c: $01 $82 $03
    pop bc                                        ; $589f: $c1
    inc bc                                        ; $58a0: $03
    ld sp, $fee6                                  ; $58a1: $31 $e6 $fe
    rst $38                                       ; $58a4: $ff
    ld [bc], a                                    ; $58a5: $02
    cp $05                                        ; $58a6: $fe $05
    db $fd                                        ; $58a8: $fd
    dec de                                        ; $58a9: $1b

jr_047_58aa:
    ei                                            ; $58aa: $fb
    db $10                                        ; $58ab: $10
    ldh [rIE], a                                  ; $58ac: $e0 $ff
    cpl                                           ; $58ae: $2f
    jp z, $811f                                   ; $58af: $ca $1f $81

    ld a, a                                       ; $58b2: $7f
    nop                                           ; $58b3: $00
    rst $10                                       ; $58b4: $d7
    jr z, jr_047_58aa                             ; $58b5: $28 $f3

    xor e                                         ; $58b7: $ab
    ld d, h                                       ; $58b8: $54
    ldh [$61], a                                  ; $58b9: $e0 $61
    jr @-$1e                                      ; $58bb: $18 $e0

    nop                                           ; $58bd: $00
    adc a                                         ; $58be: $8f
    ret nz                                        ; $58bf: $c0

    rst $10                                       ; $58c0: $d7
    ld a, a                                       ; $58c1: $7f
    ldh a, [$eb]                                  ; $58c2: $f0 $eb
    ld hl, sp-$0b                                 ; $58c4: $f8 $f5
    db $fc                                        ; $58c6: $fc
    ld a, [$8ffe]                                 ; $58c7: $fa $fe $8f
    ret nz                                        ; $58ca: $c0

    ld e, h                                       ; $58cb: $5c
    ldh [rWY], a                                  ; $58cc: $e0 $4a
    ld b, b                                       ; $58ce: $40
    push bc                                       ; $58cf: $c5
    inc bc                                        ; $58d0: $03
    rst $38                                       ; $58d1: $ff
    rlca                                          ; $58d2: $07
    cp $e4                                        ; $58d3: $fe $e4
    rst $28                                       ; $58d5: $ef
    ld b, [hl]                                    ; $58d6: $46
    xor h                                         ; $58d7: $ac
    rst $30                                       ; $58d8: $f7
    xor a                                         ; $58d9: $af
    rst $38                                       ; $58da: $ff
    rst $18                                       ; $58db: $df
    db $ec                                        ; $58dc: $ec
    add sp, $37                                   ; $58dd: $e8 $37
    scf                                           ; $58df: $37
    rst $38                                       ; $58e0: $ff
    rst $38                                       ; $58e1: $ff
    rst $28                                       ; $58e2: $ef
    ld e, a                                       ; $58e3: $5f
    ld e, a                                       ; $58e4: $5f
    xor a                                         ; $58e5: $af
    xor a                                         ; $58e6: $af
    pop hl                                        ; $58e7: $e1
    add e                                         ; $58e8: $83
    db $e3                                        ; $58e9: $e3
    db $e3                                        ; $58ea: $e3
    push bc                                       ; $58eb: $c5
    rst $38                                       ; $58ec: $ff
    push bc                                       ; $58ed: $c5
    push de                                       ; $58ee: $d5
    push de                                       ; $58ef: $d5
    ld [$fdea], a                                 ; $58f0: $ea $ea $fd
    db $fd                                        ; $58f3: $fd
    cp $60                                        ; $58f4: $fe $60
    rst $08                                       ; $58f6: $cf
    add b                                         ; $58f7: $80
    ld l, e                                       ; $58f8: $6b
    and b                                         ; $58f9: $a0
    ld l, b                                       ; $58fa: $68
    and b                                         ; $58fb: $a0
    rst $00                                       ; $58fc: $c7
    add c                                         ; $58fd: $81
    ldh a, [$e3]                                  ; $58fe: $f0 $e3
    dec d                                         ; $5900: $15
    dec d                                         ; $5901: $15
    xor $e1                                       ; $5902: $ee $e1
    rst $38                                       ; $5904: $ff
    call nc, $ead4                                ; $5905: $d4 $d4 $ea
    ld [$3d3d], a                                 ; $5908: $ea $3d $3d
    sbc a                                         ; $590b: $9f
    sbc a                                         ; $590c: $9f
    pop af                                        ; $590d: $f1
    ld e, a                                       ; $590e: $5f
    ld d, e                                       ; $590f: $53
    and b                                         ; $5910: $a0
    xor $e1                                       ; $5911: $ee $e1
    and a                                         ; $5913: $a7
    add e                                         ; $5914: $83
    adc a                                         ; $5915: $8f
    adc a                                         ; $5916: $8f
    ld d, [hl]                                    ; $5917: $56
    ld d, [hl]                                    ; $5918: $56
    ld a, a                                       ; $5919: $7f
    db $eb                                        ; $591a: $eb
    db $eb                                        ; $591b: $eb
    rst $38                                       ; $591c: $ff
    rst $38                                       ; $591d: $ff
    dec b                                         ; $591e: $05
    dec b                                         ; $591f: $05
    cp $04                                        ; $5920: $fe $04
    db $e4                                        ; $5922: $e4
    rst $18                                       ; $5923: $df
    cp a                                          ; $5924: $bf
    cp a                                          ; $5925: $bf
    ld d, a                                       ; $5926: $57
    ld d, a                                       ; $5927: $57
    ei                                            ; $5928: $fb
    db $e3                                        ; $5929: $e3
    ret nz                                        ; $592a: $c0

    jr nz, @+$01                                  ; $592b: $20 $ff

    ld a, l                                       ; $592d: $7d
    ld d, b                                       ; $592e: $50
    ld [bc], a                                    ; $592f: $02
    ldh [$d4], a                                  ; $5930: $e0 $d4
    rst $38                                       ; $5932: $ff
    ld [$f7ff], a                                 ; $5933: $ea $ff $f7
    ld [hl], h                                    ; $5936: $74
    ldh [$9c], a                                  ; $5937: $e0 $9c
    sub c                                         ; $5939: $91
    and b                                         ; $593a: $a0
    cpl                                           ; $593b: $2f
    ld b, [hl]                                    ; $593c: $46
    ld d, b                                       ; $593d: $50
    rst $38                                       ; $593e: $ff
    xor b                                         ; $593f: $a8
    add sp, -$20                                  ; $5940: $e8 $e0
    ld hl, $4249                                  ; $5942: $21 $49 $42
    rst $38                                       ; $5945: $ff
    rst $38                                       ; $5946: $ff
    xor c                                         ; $5947: $a9
    rst $38                                       ; $5948: $ff
    inc bc                                        ; $5949: $03
    inc bc                                        ; $594a: $03
    jp c, $b51b                                   ; $594b: $da $1b $b5

    rst $38                                       ; $594e: $ff
    scf                                           ; $594f: $37
    or [hl]                                       ; $5950: $b6
    scf                                           ; $5951: $37
    jp $9103                                      ; $5952: $c3 $03 $91


    dec [hl]                                      ; $5955: $35
    and b                                         ; $5956: $a0
    cp a                                          ; $5957: $bf
    ld [hl], $00                                  ; $5958: $36 $00
    ld l, a                                       ; $595a: $6f
    ld a, a                                       ; $595b: $7f
    rst $38                                       ; $595c: $ff
    cp a                                          ; $595d: $bf
    adc h                                         ; $595e: $8c
    and [hl]                                      ; $595f: $a6
    ld a, [hl]                                    ; $5960: $7e
    rst $28                                       ; $5961: $ef
    ld a, [hl]                                    ; $5962: $7e
    ld bc, $fe81                                  ; $5963: $01 $81 $fe
    cp h                                          ; $5966: $bc
    and b                                         ; $5967: $a0
    cp [hl]                                       ; $5968: $be
    cp a                                          ; $5969: $bf
    cp a                                          ; $596a: $bf
    ld sp, hl                                     ; $596b: $f9
    cp a                                          ; $596c: $bf
    and b                                         ; $596d: $a0
    and c                                         ; $596e: $a1
    sbc b                                         ; $596f: $98
    ld [c], a                                     ; $5970: $e2
    add b                                         ; $5971: $80
    cp a                                          ; $5972: $bf
    add b                                         ; $5973: $80
    rst $18                                       ; $5974: $df
    ret nz                                        ; $5975: $c0

    rst $38                                       ; $5976: $ff
    rst $28                                       ; $5977: $ef
    ldh [$ef], a                                  ; $5978: $e0 $ef
    ldh [$f7], a                                  ; $597a: $e0 $f7
    ldh a, [$db]                                  ; $597c: $f0 $db
    ld hl, sp-$75                                 ; $597e: $f8 $8b

jr_047_5980:
    and a                                         ; $5980: $a7

jr_047_5981:
    ldh a, [$d0]                                  ; $5981: $f0 $d0
    add e                                         ; $5983: $83
    ld e, a                                       ; $5984: $5f
    jp z, $fce0                                   ; $5985: $ca $e0 $fc

    db $e3                                        ; $5988: $e3
    rlca                                          ; $5989: $07
    add l                                         ; $598a: $85
    rst $30                                       ; $598b: $f7
    ld a, a                                       ; $598c: $7f
    rst $30                                       ; $598d: $f7
    db $eb                                        ; $598e: $eb
    db $eb                                        ; $598f: $eb
    or a                                          ; $5990: $b7
    or a                                          ; $5991: $b7
    rst $38                                       ; $5992: $ff
    rst $38                                       ; $5993: $ff
    ld c, h                                       ; $5994: $4c
    pop bc                                        ; $5995: $c1
    or $56                                        ; $5996: $f6 $56
    pop bc                                        ; $5998: $c1
    add l                                         ; $5999: $85
    add l                                         ; $599a: $85
    ld e, $c1                                     ; $599b: $1e $c1
    rst $38                                       ; $599d: $ff
    rst $38                                       ; $599e: $ff
    ld e, [hl]                                    ; $599f: $5e
    ld e, [hl]                                    ; $59a0: $5e
    cp $1a                                        ; $59a1: $fe $1a
    pop bc                                        ; $59a3: $c1
    pop af                                        ; $59a4: $f1
    pop af                                        ; $59a5: $f1
    ld l, e                                       ; $59a6: $6b
    ld l, e                                       ; $59a7: $6b
    rst $10                                       ; $59a8: $d7
    rst $10                                       ; $59a9: $d7
    rst $38                                       ; $59aa: $ff
    rst $38                                       ; $59ab: $ff
    rst $38                                       ; $59ac: $ff
    and b                                         ; $59ad: $a0
    and b                                         ; $59ae: $a0
    cp a                                          ; $59af: $bf
    cp a                                          ; $59b0: $bf
    ldh a, [$f0]                                  ; $59b1: $f0 $f0
    pop hl                                        ; $59b3: $e1
    rst $30                                       ; $59b4: $f7
    pop hl                                        ; $59b5: $e1
    jp z, $f2ca                                   ; $59b6: $ca $ca $f2

    pop hl                                        ; $59b9: $e1
    db $f4                                        ; $59ba: $f4
    db $f4                                        ; $59bb: $f4
    nop                                           ; $59bc: $00
    nop                                           ; $59bd: $00
    rst $28                                       ; $59be: $ef
    xor a                                         ; $59bf: $af
    xor a                                         ; $59c0: $af
    rst $18                                       ; $59c1: $df
    rst $18                                       ; $59c2: $df
    sub [hl]                                      ; $59c3: $96
    pop hl                                        ; $59c4: $e1
    db $f4                                        ; $59c5: $f4
    db $f4                                        ; $59c6: $f4
    xor b                                         ; $59c7: $a8
    ld d, l                                       ; $59c8: $55
    xor b                                         ; $59c9: $a8
    ldh a, [$c2]                                  ; $59ca: $f0 $c2
    ld d, a                                       ; $59cc: $57
    ld c, e                                       ; $59cd: $4b
    and b                                         ; $59ce: $a0
    rst $18                                       ; $59cf: $df
    pop af                                        ; $59d0: $f1
    ld l, d                                       ; $59d1: $6a
    xor [hl]                                      ; $59d2: $ae
    xor c                                         ; $59d3: $a9
    and b                                         ; $59d4: $a0
    db $ec                                        ; $59d5: $ec
    rrca                                          ; $59d6: $0f
    ldh [$dd], a                                  ; $59d7: $e0 $dd
    ld l, b                                       ; $59d9: $68
    ld [hl], l                                    ; $59da: $75
    rst $38                                       ; $59db: $ff
    jp hl                                         ; $59dc: $e9


    and e                                         ; $59dd: $a3
    db $fd                                        ; $59de: $fd
    rst $38                                       ; $59df: $ff
    xor d                                         ; $59e0: $aa
    ret z                                         ; $59e1: $c8

    di                                            ; $59e2: $f3
    add e                                         ; $59e3: $83
    sbc $e2                                       ; $59e4: $de $e2
    ld hl, sp-$1f                                 ; $59e6: $f8 $e1
    xor l                                         ; $59e8: $ad
    or a                                          ; $59e9: $b7
    ld l, b                                       ; $59ea: $68
    add e                                         ; $59eb: $83
    and e                                         ; $59ec: $a3
    nop                                           ; $59ed: $00
    cp $de                                        ; $59ee: $fe $de
    cp $e2                                        ; $59f0: $fe $e2
    db $fc                                        ; $59f2: $fc
    ld bc, $02f8                                  ; $59f3: $01 $f8 $02
    cp $e1                                        ; $59f6: $fe $e1
    ld c, a                                       ; $59f8: $4f
    nop                                           ; $59f9: $00
    rst $38                                       ; $59fa: $ff
    adc a                                         ; $59fb: $8f
    jr nz, jr_047_5981                            ; $59fc: $20 $83

    jr nc, jr_047_5980                            ; $59fe: $30 $80

    inc e                                         ; $5a00: $1c
    nop                                           ; $5a01: $00
    ld l, a                                       ; $5a02: $6f
    cp $d3                                        ; $5a03: $fe $d3
    ld h, b                                       ; $5a05: $60
    rst $08                                       ; $5a06: $cf
    nop                                           ; $5a07: $00
    or c                                          ; $5a08: $b1
    rst $30                                       ; $5a09: $f7
    and a                                         ; $5a0a: $a7
    db $eb                                        ; $5a0b: $eb
    ld c, e                                       ; $5a0c: $4b
    ld a, a                                       ; $5a0d: $7f
    rst $10                                       ; $5a0e: $d7
    sub a                                         ; $5a0f: $97
    ccf                                           ; $5a10: $3f
    ccf                                           ; $5a11: $3f
    inc a                                         ; $5a12: $3c
    cp h                                          ; $5a13: $bc
    nop                                           ; $5a14: $00
    db $e4                                        ; $5a15: $e4
    and d                                         ; $5a16: $a2
    rst $38                                       ; $5a17: $ff
    rst $38                                       ; $5a18: $ff
    db $fd                                        ; $5a19: $fd
    cp $ea                                        ; $5a1a: $fe $ea
    db $fc                                        ; $5a1c: $fc
    ld d, l                                       ; $5a1d: $55
    ldh [$e3], a                                  ; $5a1e: $e0 $e3
    cp h                                          ; $5a20: $bc
    db $dd                                        ; $5a21: $dd
    ld h, b                                       ; $5a22: $60
    push hl                                       ; $5a23: $e5
    ld [bc], a                                    ; $5a24: $02
    rrca                                          ; $5a25: $0f
    add b                                         ; $5a26: $80
    ld l, a                                       ; $5a27: $6f
    ld h, b                                       ; $5a28: $60
    ld [bc], a                                    ; $5a29: $02
    pop hl                                        ; $5a2a: $e1
    rst $28                                       ; $5a2b: $ef
    add a                                         ; $5a2c: $87
    ldh [$df], a                                  ; $5a2d: $e0 $df
    ret nz                                        ; $5a2f: $c0

    cp $e1                                        ; $5a30: $fe $e1
    ld l, h                                       ; $5a32: $6c
    and $4e                                       ; $5a33: $e6 $4e
    ld l, e                                       ; $5a35: $6b
    ld sp, hl                                     ; $5a36: $f9
    xor c                                         ; $5a37: $a9
    db $eb                                        ; $5a38: $eb
    xor d                                         ; $5a39: $aa
    sub a                                         ; $5a3a: $97
    ld h, d                                       ; $5a3b: $62
    rst $30                                       ; $5a3c: $f7
    dec l                                         ; $5a3d: $2d
    ld l, b                                       ; $5a3e: $68
    ld e, [hl]                                    ; $5a3f: $5e
    ld hl, $bf68                                  ; $5a40: $21 $68 $bf
    ld e, e                                       ; $5a43: $5b
    add b                                         ; $5a44: $80
    xor e                                         ; $5a45: $ab
    ld d, h                                       ; $5a46: $54
    pop de                                        ; $5a47: $d1
    ld b, h                                       ; $5a48: $44
    ld b, b                                       ; $5a49: $40
    pop hl                                        ; $5a4a: $e1
    or a                                          ; $5a4b: $b7
    db $db                                        ; $5a4c: $db
    add [hl]                                      ; $5a4d: $86
    cp $c8                                        ; $5a4e: $fe $c8
    ld h, b                                       ; $5a50: $60
    add b                                         ; $5a51: $80
    db $fd                                        ; $5a52: $fd
    ld h, b                                       ; $5a53: $60
    adc [hl]                                      ; $5a54: $8e
    adc d                                         ; $5a55: $8a
    ld b, c                                       ; $5a56: $41
    and b                                         ; $5a57: $a0
    rst $38                                       ; $5a58: $ff
    push de                                       ; $5a59: $d5
    ld b, e                                       ; $5a5a: $43
    add b                                         ; $5a5b: $80
    cp c                                          ; $5a5c: $b9
    add c                                         ; $5a5d: $81
    ld b, $e1                                     ; $5a5e: $06 $e1
    ld d, l                                       ; $5a60: $55
    db $10                                        ; $5a61: $10
    xor h                                         ; $5a62: $ac
    ld h, d                                       ; $5a63: $62
    dec l                                         ; $5a64: $2d
    pop bc                                        ; $5a65: $c1
    and h                                         ; $5a66: $a4
    ret nz                                        ; $5a67: $c0

    db $10                                        ; $5a68: $10
    ld [c], a                                     ; $5a69: $e2
    xor d                                         ; $5a6a: $aa
    inc sp                                        ; $5a6b: $33
    ld h, b                                       ; $5a6c: $60
    ld h, h                                       ; $5a6d: $64
    ld hl, $e300                                  ; $5a6e: $21 $00 $e3
    ld [hl], d                                    ; $5a71: $72
    add l                                         ; $5a72: $85
    and l                                         ; $5a73: $a5
    dec d                                         ; $5a74: $15
    and [hl]                                      ; $5a75: $a6
    and $70                                       ; $5a76: $e6 $70
    ld b, e                                       ; $5a78: $43
    ld d, a                                       ; $5a79: $57
    rst $38                                       ; $5a7a: $ff
    rst $38                                       ; $5a7b: $ff
    ld a, [bc]                                    ; $5a7c: $0a
    ldh [$eb], a                                  ; $5a7d: $e0 $eb
    inc bc                                        ; $5a7f: $03
    db $fc                                        ; $5a80: $fc
    db $fd                                        ; $5a81: $fd
    nop                                           ; $5a82: $00
    db $fc                                        ; $5a83: $fc
    xor $40                                       ; $5a84: $ee $40
    pop af                                        ; $5a86: $f1
    nop                                           ; $5a87: $00
    db $e3                                        ; $5a88: $e3
    rst $38                                       ; $5a89: $ff
    nop                                           ; $5a8a: $00
    db $dd                                        ; $5a8b: $dd
    db $dd                                        ; $5a8c: $dd
    ld h, d                                       ; $5a8d: $62
    ld h, d                                       ; $5a8e: $62
    inc a                                         ; $5a8f: $3c
    dec a                                         ; $5a90: $3d
    ret nz                                        ; $5a91: $c0

    rst $30                                       ; $5a92: $f7
    inc bc                                        ; $5a93: $03
    ld b, b                                       ; $5a94: $40
    rra                                           ; $5a95: $1f
    ld l, e                                       ; $5a96: $6b
    ld h, e                                       ; $5a97: $63
    ccf                                           ; $5a98: $3f
    ccf                                           ; $5a99: $3f
    rlca                                          ; $5a9a: $07
    rst $00                                       ; $5a9b: $c7
    rrca                                          ; $5a9c: $0f
    add hl, bc                                    ; $5a9d: $09
    jp hl                                         ; $5a9e: $e9


    dec c                                         ; $5a9f: $0d
    db $ed                                        ; $5aa0: $ed
    cp $e5                                        ; $5aa1: $fe $e5
    db $10                                        ; $5aa3: $10
    pop bc                                        ; $5aa4: $c1

jr_047_5aa5:
    db $fc                                        ; $5aa5: $fc
    jp hl                                         ; $5aa6: $e9


    daa                                           ; $5aa7: $27
    ld b, [hl]                                    ; $5aa8: $46
    add hl, bc                                    ; $5aa9: $09
    ld d, l                                       ; $5aaa: $55
    sub b                                         ; $5aab: $90
    jp nz, $e558                                  ; $5aac: $c2 $58 $e5

    db $eb                                        ; $5aaf: $eb
    ldh a, [$e2]                                  ; $5ab0: $f0 $e2
    db $ec                                        ; $5ab2: $ec
    pop hl                                        ; $5ab3: $e1
    dec c                                         ; $5ab4: $0d
    ld b, b                                       ; $5ab5: $40
    db $10                                        ; $5ab6: $10
    ld h, b                                       ; $5ab7: $60
    pop bc                                        ; $5ab8: $c1
    and b                                         ; $5ab9: $a0
    db $f4                                        ; $5aba: $f4
    db $e4                                        ; $5abb: $e4
    ret c                                         ; $5abc: $d8

    pop hl                                        ; $5abd: $e1
    ld e, h                                       ; $5abe: $5c
    ld hl, $e1f0                                  ; $5abf: $21 $f0 $e1
    jr nc, jr_047_5aa5                            ; $5ac2: $30 $e1

    ld a, [$44ff]                                 ; $5ac4: $fa $ff $44
    ld a, h                                       ; $5ac7: $7c
    ld [bc], a                                    ; $5ac8: $02
    jr z, jr_047_5aeb                             ; $5ac9: $28 $20

    dec b                                         ; $5acb: $05
    ld d, h                                       ; $5acc: $54
    ret nz                                        ; $5acd: $c0

    inc h                                         ; $5ace: $24
    db $e3                                        ; $5acf: $e3
    add hl, bc                                    ; $5ad0: $09

jr_047_5ad1:
    ld h, c                                       ; $5ad1: $61
    ld a, [hl+]                                   ; $5ad2: $2a
    call c, $a040                                 ; $5ad3: $dc $40 $a0
    inc h                                         ; $5ad6: $24
    db $e3                                        ; $5ad7: $e3
    ld b, b                                       ; $5ad8: $40
    jp $a024                                      ; $5ad9: $c3 $24 $a0


    inc [hl]                                      ; $5adc: $34
    call nz, $e5b8                                ; $5add: $c4 $b8 $e5
    rst $38                                       ; $5ae0: $ff
    jp c, $eac2                                   ; $5ae1: $da $c2 $ea

    db $10                                        ; $5ae4: $10
    cp h                                          ; $5ae5: $bc
    ld [c], a                                     ; $5ae6: $e2
    and d                                         ; $5ae7: $a2
    dec h                                         ; $5ae8: $25
    cp [hl]                                       ; $5ae9: $be
    and b                                         ; $5aea: $a0

jr_047_5aeb:
    and h                                         ; $5aeb: $a4
    ld b, b                                       ; $5aec: $40
    cp a                                          ; $5aed: $bf
    jr z, jr_047_5ad1                             ; $5aee: $28 $e1

    ld l, b                                       ; $5af0: $68
    ld [$29c2], a                                 ; $5af1: $ea $c2 $29
    ld hl, sp-$73                                 ; $5af4: $f8 $8d
    ld h, a                                       ; $5af6: $67
    ld bc, $adc3                                  ; $5af7: $01 $c3 $ad
    rlca                                          ; $5afa: $07
    ret nz                                        ; $5afb: $c0

    nop                                           ; $5afc: $00
    add b                                         ; $5afd: $80
    ccf                                           ; $5afe: $3f
    ccf                                           ; $5aff: $3f
    db $fc                                        ; $5b00: $fc
    and l                                         ; $5b01: $a5
    dec b                                         ; $5b02: $05
    push de                                       ; $5b03: $d5
    jr nz, jr_047_5b1e                            ; $5b04: $20 $18

    nop                                           ; $5b06: $00
    ld bc, $c3c0                                  ; $5b07: $01 $c0 $c3
    rst $00                                       ; $5b0a: $c7
    adc e                                         ; $5b0b: $8b
    nop                                           ; $5b0c: $00
    adc a                                         ; $5b0d: $8f
    ld a, [c]                                     ; $5b0e: $f2
    jr nz, jr_047_5b50                            ; $5b0f: $20 $3f

    ld e, [hl]                                    ; $5b11: $5e
    ld b, h                                       ; $5b12: $44
    ret nc                                        ; $5b13: $d0

    ld h, b                                       ; $5b14: $60

jr_047_5b15:
    add e                                         ; $5b15: $83
    rlca                                          ; $5b16: $07
    db $fc                                        ; $5b17: $fc
    cp $fe                                        ; $5b18: $fe $fe
    pop hl                                        ; $5b1a: $e1
    dec c                                         ; $5b1b: $0d
    db $ed                                        ; $5b1c: $ed
    dec e                                         ; $5b1d: $1d

jr_047_5b1e:
    db $dd                                        ; $5b1e: $dd
    dec de                                        ; $5b1f: $1b
    db $db                                        ; $5b20: $db
    rlca                                          ; $5b21: $07
    rst $38                                       ; $5b22: $ff
    rlca                                          ; $5b23: $07

jr_047_5b24:
    reti                                          ; $5b24: $d9


    add c                                         ; $5b25: $81
    cp [hl]                                       ; $5b26: $be
    jr jr_047_5ba8                                ; $5b27: $18 $7f

    inc [hl]                                      ; $5b29: $34
    ld a, a                                       ; $5b2a: $7f
    add l                                         ; $5b2b: $85
    ld [$497e], sp                                ; $5b2c: $08 $7e $49
    add b                                         ; $5b2f: $80
    ld d, d                                       ; $5b30: $52
    nop                                           ; $5b31: $00
    pop de                                        ; $5b32: $d1
    pop bc                                        ; $5b33: $c1
    rst $20                                       ; $5b34: $e7
    and d                                         ; $5b35: $a2
    pop hl                                        ; $5b36: $e1
    and b                                         ; $5b37: $a0
    nop                                           ; $5b38: $00
    add a                                         ; $5b39: $87
    ccf                                           ; $5b3a: $3f
    jp z, Jump_000_3815                           ; $5b3b: $ca $15 $38

    db $e4                                        ; $5b3e: $e4
    add a                                         ; $5b3f: $87
    jr nz, jr_047_5b6f                            ; $5b40: $20 $2d

    jr nc, jr_047_5b24                            ; $5b42: $30 $e0

    add b                                         ; $5b44: $80
    ld [hl], c                                    ; $5b45: $71
    rst $38                                       ; $5b46: $ff
    ld [hl], c                                    ; $5b47: $71
    ld l, [hl]                                    ; $5b48: $6e
    ld l, [hl]                                    ; $5b49: $6e
    ld e, a                                       ; $5b4a: $5f
    ld e, a                                       ; $5b4b: $5f
    rra                                           ; $5b4c: $1f
    sbc a                                         ; $5b4d: $9f
    ld c, $f7                                     ; $5b4e: $0e $f7

jr_047_5b50:
    xor $01                                       ; $5b50: $ee $01
    ldh a, [rLYC]                                 ; $5b52: $f0 $45
    ld hl, $e7e0                                  ; $5b54: $21 $e0 $e7
    ldh [$e7], a                                  ; $5b57: $e0 $e7
    rst $38                                       ; $5b59: $ff
    ld b, b                                       ; $5b5a: $40
    ld c, a                                       ; $5b5b: $4f
    inc d                                         ; $5b5c: $14
    dec hl                                        ; $5b5d: $2b
    xor b                                         ; $5b5e: $a8
    ld d, a                                       ; $5b5f: $57
    ld d, b                                       ; $5b60: $50
    xor a                                         ; $5b61: $af
    cp $35                                        ; $5b62: $fe $35
    ld hl, $ea14                                  ; $5b64: $21 $14 $ea
    ld a, [hl+]                                   ; $5b67: $2a
    call nc, $ea15                                ; $5b68: $d4 $15 $ea
    ld [bc], a                                    ; $5b6b: $02
    db $dd                                        ; $5b6c: $dd
    db $fd                                        ; $5b6d: $fd
    add hl, hl                                    ; $5b6e: $29

jr_047_5b6f:
    dec h                                         ; $5b6f: $25
    ld a, a                                       ; $5b70: $7f
    nop                                           ; $5b71: $00
    cp a                                          ; $5b72: $bf
    ld b, d                                       ; $5b73: $42
    jr nz, jr_047_5b15                            ; $5b74: $20 $9f

    ld b, b                                       ; $5b76: $40
    ei                                            ; $5b77: $fb
    nop                                           ; $5b78: $00
    ldh [rNR10], a                                ; $5b79: $e0 $10
    daa                                           ; $5b7b: $27
    nop                                           ; $5b7c: $00
    nop                                           ; $5b7d: $00
    rst $28                                       ; $5b7e: $ef
    nop                                           ; $5b7f: $00
    nop                                           ; $5b80: $00
    db $fd                                        ; $5b81: $fd
    db $10                                        ; $5b82: $10
    rlca                                          ; $5b83: $07
    inc hl                                        ; $5b84: $23
    push de                                       ; $5b85: $d5
    ld a, [bc]                                    ; $5b86: $0a
    jp z, Jump_000_1515                           ; $5b87: $ca $15 $15

    ld a, [hl+]                                   ; $5b8a: $2a
    inc bc                                        ; $5b8b: $03
    xor b                                         ; $5b8c: $a8
    rla                                           ; $5b8d: $17
    ccf                                           ; $5b8e: $3f
    push hl                                       ; $5b8f: $e5
    ld e, b                                       ; $5b90: $58
    jp nz, $81ea                                  ; $5b91: $c2 $ea $81

    ld l, d                                       ; $5b94: $6a
    pop bc                                        ; $5b95: $c1
    ld h, [hl]                                    ; $5b96: $66
    pop bc                                        ; $5b97: $c1
    ldh a, [$e7]                                  ; $5b98: $f0 $e7
    nop                                           ; $5b9a: $00
    ld d, [hl]                                    ; $5b9b: $56
    jp $c34e                                      ; $5b9c: $c3 $4e $c3


    ldh a, [$eb]                                  ; $5b9f: $f0 $eb
    and h                                         ; $5ba1: $a4
    add c                                         ; $5ba2: $81
    ldh [$e9], a                                  ; $5ba3: $e0 $e9
    call c, Call_000_1ee7                         ; $5ba5: $dc $e7 $1e

jr_047_5ba8:
    jp Jump_047_418d                              ; $5ba8: $c3 $8d $41


    db $10                                        ; $5bab: $10
    xor h                                         ; $5bac: $ac
    push hl                                       ; $5bad: $e5
    ld d, h                                       ; $5bae: $54
    ld b, c                                       ; $5baf: $41
    or b                                          ; $5bb0: $b0
    jp hl                                         ; $5bb1: $e9


    sub b                                         ; $5bb2: $90
    rst $20                                       ; $5bb3: $e7
    push af                                       ; $5bb4: $f5
    adc h                                         ; $5bb5: $8c
    and $2d                                       ; $5bb6: $e6 $2d
    nop                                           ; $5bb8: $00
    ld h, h                                       ; $5bb9: $64
    and d                                         ; $5bba: $a2
    nop                                           ; $5bbb: $00
    rra                                           ; $5bbc: $1f
    ld hl, $a1e2                                  ; $5bbd: $21 $e2 $a1
    ld b, d                                       ; $5bc0: $42
    and e                                         ; $5bc1: $a3
    jr z, @-$5d                                   ; $5bc2: $28 $a1

    ld l, h                                       ; $5bc4: $6c
    db $e3                                        ; $5bc5: $e3
    call c, $f0e3                                 ; $5bc6: $dc $e3 $f0
    rst $20                                       ; $5bc9: $e7
    ret nc                                        ; $5bca: $d0

    rst $20                                       ; $5bcb: $e7
    ld bc, $0050                                  ; $5bcc: $01 $50 $00
    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00
    rst $38                                       ; $5bd1: $ff
    nop                                           ; $5bd2: $00
    ld bc, $0302                                  ; $5bd3: $01 $02 $03
    inc b                                         ; $5bd6: $04
    dec b                                         ; $5bd7: $05
    nop                                           ; $5bd8: $00
    nop                                           ; $5bd9: $00
    rst $38                                       ; $5bda: $ff
    nop                                           ; $5bdb: $00
    ld b, $07                                     ; $5bdc: $06 $07
    ld [$0a09], sp                                ; $5bde: $08 $09 $0a
    dec bc                                        ; $5be1: $0b
    inc c                                         ; $5be2: $0c
    adc a                                         ; $5be3: $8f
    dec c                                         ; $5be4: $0d
    ld c, $0f                                     ; $5be5: $0e $0f
    db $10                                        ; $5be7: $10
    ld a, [c]                                     ; $5be8: $f2
    ldh [rIE], a                                  ; $5be9: $e0 $ff
    rst $38                                       ; $5beb: $ff
    push hl                                       ; $5bec: $e5
    db $e4                                        ; $5bed: $e4
    ld de, $127f                                  ; $5bee: $11 $7f $12
    inc de                                        ; $5bf1: $13
    inc d                                         ; $5bf2: $14
    dec d                                         ; $5bf3: $15
    ld d, $17                                     ; $5bf4: $16 $17
    jr @-$28                                      ; $5bf6: $18 $d6

    pop hl                                        ; $5bf8: $e1
    ld [hl], e                                    ; $5bf9: $73
    add hl, de                                    ; $5bfa: $19
    ld a, [de]                                    ; $5bfb: $1a
    ret nc                                        ; $5bfc: $d0

    rst $38                                       ; $5bfd: $ff
    xor $ed                                       ; $5bfe: $ee $ed
    dec de                                        ; $5c00: $1b
    inc e                                         ; $5c01: $1c
    dec de                                        ; $5c02: $1b
    rst $38                                       ; $5c03: $ff
    ldh [$7b], a                                  ; $5c04: $e0 $7b
    dec e                                         ; $5c06: $1d
    ld e, $fa                                     ; $5c07: $1e $fa
    pop hl                                        ; $5c09: $e1
    rra                                           ; $5c0a: $1f
    jr nz, jr_047_5c2e                            ; $5c0b: $20 $21

    ld [hl+], a                                   ; $5c0d: $22
    ld a, [c]                                     ; $5c0e: $f2

jr_047_5c0f:
    pop hl                                        ; $5c0f: $e1
    call nz, $ffca                                ; $5c10: $c4 $ca $ff
    add sp, -$19                                  ; $5c13: $e8 $e7
    inc hl                                        ; $5c15: $23
    rst $38                                       ; $5c16: $ff
    ldh a, [$ca]                                  ; $5c17: $f0 $ca
    rst $38                                       ; $5c19: $ff
    add sp, -$19                                  ; $5c1a: $e8 $e7
    inc h                                         ; $5c1c: $24
    dec h                                         ; $5c1d: $25
    call $ff26                                    ; $5c1e: $cd $26 $ff
    db $ec                                        ; $5c21: $ec
    daa                                           ; $5c22: $27
    jr z, @-$34                                   ; $5c23: $28 $ca

    rst $38                                       ; $5c25: $ff
    add sp, -$19                                  ; $5c26: $e8 $e7
    add hl, hl                                    ; $5c28: $29
    ld a, [hl+]                                   ; $5c29: $2a
    cp l                                          ; $5c2a: $bd
    dec hl                                        ; $5c2b: $2b
    rst $38                                       ; $5c2c: $ff
    ld [c], a                                     ; $5c2d: $e2

jr_047_5c2e:
    inc l                                         ; $5c2e: $2c
    dec l                                         ; $5c2f: $2d
    ld l, $2f                                     ; $5c30: $2e $2f
    or $e3                                        ; $5c32: $f6 $e3
    jr nc, jr_047_5c0f                            ; $5c34: $30 $d9

    add hl, hl                                    ; $5c36: $29
    jp z, $c0ff                                   ; $5c37: $ca $ff $c0

    add sp, $29                                   ; $5c3a: $e8 $29
    ld sp, $e2bf                                  ; $5c3c: $31 $bf $e2
    ld [hl-], a                                   ; $5c3f: $32
    inc sp                                        ; $5c40: $33
    ld [hl], a                                    ; $5c41: $77
    inc [hl]                                      ; $5c42: $34
    dec [hl]                                      ; $5c43: $35
    ld [hl], $b5                                  ; $5c44: $36 $b5
    ldh [$37], a                                  ; $5c46: $e0 $37
    jr c, jr_047_5c83                             ; $5c48: $38 $39

    ret nz                                        ; $5c4a: $c0

    rst $38                                       ; $5c4b: $ff
    cp [hl]                                       ; $5c4c: $be
    jp hl                                         ; $5c4d: $e9


    add sp, $3a                                   ; $5c4e: $e8 $3a
    dec sp                                        ; $5c50: $3b
    inc a                                         ; $5c51: $3c
    dec a                                         ; $5c52: $3d
    scf                                           ; $5c53: $37
    ld a, l                                       ; $5c54: $7d
    ldh [$3e], a                                  ; $5c55: $e0 $3e
    rst $38                                       ; $5c57: $ff
    ccf                                           ; $5c58: $3f
    ld b, b                                       ; $5c59: $40
    ld b, c                                       ; $5c5a: $41
    ld b, d                                       ; $5c5b: $42
    dec hl                                        ; $5c5c: $2b
    dec hl                                        ; $5c5d: $2b
    ld b, e                                       ; $5c5e: $43
    ld b, h                                       ; $5c5f: $44
    rst $20                                       ; $5c60: $e7
    ld b, l                                       ; $5c61: $45
    ld b, [hl]                                    ; $5c62: $46
    ld b, a                                       ; $5c63: $47
    jp z, $e8ff                                   ; $5c64: $ca $ff $e8

    rst $20                                       ; $5c67: $e7
    ld c, b                                       ; $5c68: $48
    ld c, c                                       ; $5c69: $49
    ld c, d                                       ; $5c6a: $4a
    ei                                            ; $5c6b: $fb
    ld c, e                                       ; $5c6c: $4b
    ld c, h                                       ; $5c6d: $4c
    dec a                                         ; $5c6e: $3d
    ldh [rKEY1], a                                ; $5c6f: $e0 $4d
    ld c, [hl]                                    ; $5c71: $4e
    ld c, a                                       ; $5c72: $4f
    ld d, b                                       ; $5c73: $50
    ld d, c                                       ; $5c74: $51
    ld a, a                                       ; $5c75: $7f
    ld d, d                                       ; $5c76: $52
    ld d, e                                       ; $5c77: $53
    add hl, hl                                    ; $5c78: $29
    ld d, h                                       ; $5c79: $54
    ld d, l                                       ; $5c7a: $55
    ld c, c                                       ; $5c7b: $49
    ld d, [hl]                                    ; $5c7c: $56
    jp z, $feff                                   ; $5c7d: $ca $ff $fe

    add sp, -$19                                  ; $5c80: $e8 $e7
    ld d, a                                       ; $5c82: $57

jr_047_5c83:
    ld e, b                                       ; $5c83: $58
    ld e, c                                       ; $5c84: $59
    ld e, d                                       ; $5c85: $5a
    ld e, e                                       ; $5c86: $5b
    ld e, h                                       ; $5c87: $5c
    ld e, l                                       ; $5c88: $5d
    rst $38                                       ; $5c89: $ff
    ld e, [hl]                                    ; $5c8a: $5e
    dec hl                                        ; $5c8b: $2b
    inc l                                         ; $5c8c: $2c
    ld e, a                                       ; $5c8d: $5f
    ld h, b                                       ; $5c8e: $60
    ld h, c                                       ; $5c8f: $61
    ld h, d                                       ; $5c90: $62
    ld h, e                                       ; $5c91: $63
    sbc a                                         ; $5c92: $9f
    ld h, h                                       ; $5c93: $64
    ld h, l                                       ; $5c94: $65
    ld h, [hl]                                    ; $5c95: $66
    ld h, a                                       ; $5c96: $67
    ld l, b                                       ; $5c97: $68
    jp z, $e8ff                                   ; $5c98: $ca $ff $e8

    rst $20                                       ; $5c9b: $e7
    ld l, c                                       ; $5c9c: $69
    rst $28                                       ; $5c9d: $ef
    ld l, d                                       ; $5c9e: $6a
    ld l, e                                       ; $5c9f: $6b
    ld l, h                                       ; $5ca0: $6c
    ld l, l                                       ; $5ca1: $6d
    cp l                                          ; $5ca2: $bd
    pop bc                                        ; $5ca3: $c1
    ld l, [hl]                                    ; $5ca4: $6e
    ld l, a                                       ; $5ca5: $6f
    ld [hl], b                                    ; $5ca6: $70
    rst $38                                       ; $5ca7: $ff
    ld [hl], c                                    ; $5ca8: $71
    ld [hl], d                                    ; $5ca9: $72
    ld [hl], e                                    ; $5caa: $73
    ld [hl], h                                    ; $5cab: $74
    ld [hl], l                                    ; $5cac: $75
    halt                                          ; $5cad: $76
    ld [hl], a                                    ; $5cae: $77
    ld a, b                                       ; $5caf: $78
    ld a, h                                       ; $5cb0: $7c
    jp z, $e8ff                                   ; $5cb1: $ca $ff $e8

    rst $20                                       ; $5cb4: $e7
    ld a, c                                       ; $5cb5: $79
    ld a, d                                       ; $5cb6: $7a
    ld a, e                                       ; $5cb7: $7b
    ld a, h                                       ; $5cb8: $7c
    ld a, l                                       ; $5cb9: $7d
    ld a, l                                       ; $5cba: $7d
    pop bc                                        ; $5cbb: $c1
    rst $38                                       ; $5cbc: $ff
    ld a, [hl]                                    ; $5cbd: $7e
    ld a, a                                       ; $5cbe: $7f
    add b                                         ; $5cbf: $80
    dec hl                                        ; $5cc0: $2b
    add c                                         ; $5cc1: $81
    add d                                         ; $5cc2: $82
    add e                                         ; $5cc3: $83
    add h                                         ; $5cc4: $84
    rst $20                                       ; $5cc5: $e7
    add l                                         ; $5cc6: $85
    add [hl]                                      ; $5cc7: $86
    add a                                         ; $5cc8: $87
    jp z, $e8ff                                   ; $5cc9: $ca $ff $e8

    rst $20                                       ; $5ccc: $e7
    adc b                                         ; $5ccd: $88
    adc c                                         ; $5cce: $89
    adc d                                         ; $5ccf: $8a
    rst $38                                       ; $5cd0: $ff
    adc e                                         ; $5cd1: $8b
    adc h                                         ; $5cd2: $8c
    adc l                                         ; $5cd3: $8d
    dec hl                                        ; $5cd4: $2b
    adc [hl]                                      ; $5cd5: $8e
    adc a                                         ; $5cd6: $8f
    sub b                                         ; $5cd7: $90
    sub c                                         ; $5cd8: $91
    scf                                           ; $5cd9: $37
    sub d                                         ; $5cda: $92
    sub e                                         ; $5cdb: $93
    sub h                                         ; $5cdc: $94
    inc [hl]                                      ; $5cdd: $34
    pop bc                                        ; $5cde: $c1
    ld a, l                                       ; $5cdf: $7d
    sub l                                         ; $5ce0: $95
    jp z, $e8ff                                   ; $5ce1: $ca $ff $e8

    rst $20                                       ; $5ce4: $e7
    db $fd                                        ; $5ce5: $fd
    sub [hl]                                      ; $5ce6: $96
    ld bc, $97c3                                  ; $5ce7: $01 $c3 $97
    sbc b                                         ; $5cea: $98
    dec hl                                        ; $5ceb: $2b
    sbc c                                         ; $5cec: $99
    sbc d                                         ; $5ced: $9a
    sbc e                                         ; $5cee: $9b
    push hl                                       ; $5cef: $e5
    sbc h                                         ; $5cf0: $9c
    db $f4                                        ; $5cf1: $f4
    and d                                         ; $5cf2: $a2
    ld a, l                                       ; $5cf3: $7d
    jp z, $e8ff                                   ; $5cf4: $ca $ff $e8

    rst $20                                       ; $5cf7: $e7
    sbc l                                         ; $5cf8: $9d
    sbc [hl]                                      ; $5cf9: $9e
    sbc a                                         ; $5cfa: $9f
    sub $ff                                       ; $5cfb: $d6 $ff
    ldh [$a0], a                                  ; $5cfd: $e0 $a0
    and c                                         ; $5cff: $a1
    rst $38                                       ; $5d00: $ff
    pop hl                                        ; $5d01: $e1
    and d                                         ; $5d02: $a2
    push af                                       ; $5d03: $f5
    pop hl                                        ; $5d04: $e1
    sbc a                                         ; $5d05: $9f
    and e                                         ; $5d06: $a3
    cp c                                          ; $5d07: $b9
    and h                                         ; $5d08: $a4
    jp z, $e8ff                                   ; $5d09: $ca $ff $e8

    rst $20                                       ; $5d0c: $e7
    and l                                         ; $5d0d: $a5
    and [hl]                                      ; $5d0e: $a6
    and a                                         ; $5d0f: $a7
    rst $38                                       ; $5d10: $ff
    db $ed                                        ; $5d11: $ed
    xor b                                         ; $5d12: $a8
    nop                                           ; $5d13: $00
    jp z, $ffff                                   ; $5d14: $ca $ff $ff

    rst $38                                       ; $5d17: $ff
    rst $38                                       ; $5d18: $ff
    rst $38                                       ; $5d19: $ff
    rst $38                                       ; $5d1a: $ff
    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    rst $38                                       ; $5d1d: $ff
    rst $38                                       ; $5d1e: $ff
    rst $38                                       ; $5d1f: $ff
    rst $38                                       ; $5d20: $ff
    rst $38                                       ; $5d21: $ff
    rst $38                                       ; $5d22: $ff
    rst $38                                       ; $5d23: $ff
    nop                                           ; $5d24: $00
    rst $38                                       ; $5d25: $ff
    rst $38                                       ; $5d26: $ff
    rst $38                                       ; $5d27: $ff
    rst $38                                       ; $5d28: $ff
    rst $38                                       ; $5d29: $ff
    rst $38                                       ; $5d2a: $ff
    rst $38                                       ; $5d2b: $ff
    rst $38                                       ; $5d2c: $ff
    rst $38                                       ; $5d2d: $ff
    rst $38                                       ; $5d2e: $ff
    rst $38                                       ; $5d2f: $ff
    rst $38                                       ; $5d30: $ff
    rst $38                                       ; $5d31: $ff
    rst $38                                       ; $5d32: $ff
    rst $38                                       ; $5d33: $ff
    rst $38                                       ; $5d34: $ff
    nop                                           ; $5d35: $00
    rst $38                                       ; $5d36: $ff
    rst $38                                       ; $5d37: $ff
    rst $38                                       ; $5d38: $ff
    rst $38                                       ; $5d39: $ff
    rst $38                                       ; $5d3a: $ff
    rst $38                                       ; $5d3b: $ff
    rst $38                                       ; $5d3c: $ff
    rst $38                                       ; $5d3d: $ff
    rst $38                                       ; $5d3e: $ff
    rst $38                                       ; $5d3f: $ff
    rst $38                                       ; $5d40: $ff
    rst $38                                       ; $5d41: $ff
    rst $20                                       ; $5d42: $e7
    and $c0                                       ; $5d43: $e6 $c0
    ld h, c                                       ; $5d45: $61
    nop                                           ; $5d46: $00
    jp c, $f5ff                                   ; $5d47: $da $ff $f5

    db $f4                                        ; $5d4a: $f4
    ret nz                                        ; $5d4b: $c0

    ld h, h                                       ; $5d4c: $64
    rst $10                                       ; $5d4d: $d7
    rst $38                                       ; $5d4e: $ff
    rst $38                                       ; $5d4f: $ff
    rst $38                                       ; $5d50: $ff
    rst $38                                       ; $5d51: $ff
    rst $38                                       ; $5d52: $ff
    rst $38                                       ; $5d53: $ff
    rst $38                                       ; $5d54: $ff
    rst $38                                       ; $5d55: $ff
    rst $38                                       ; $5d56: $ff
    nop                                           ; $5d57: $00
    rst $38                                       ; $5d58: $ff
    rst $38                                       ; $5d59: $ff
    rst $38                                       ; $5d5a: $ff
    rst $38                                       ; $5d5b: $ff
    rst $38                                       ; $5d5c: $ff
    rst $38                                       ; $5d5d: $ff
    rst $38                                       ; $5d5e: $ff
    rst $38                                       ; $5d5f: $ff
    rst $38                                       ; $5d60: $ff
    rst $38                                       ; $5d61: $ff
    rst $38                                       ; $5d62: $ff
    rst $38                                       ; $5d63: $ff
    rst $38                                       ; $5d64: $ff
    rst $38                                       ; $5d65: $ff
    rst $38                                       ; $5d66: $ff
    rst $38                                       ; $5d67: $ff
    nop                                           ; $5d68: $00
    rst $38                                       ; $5d69: $ff
    rst $38                                       ; $5d6a: $ff
    rst $38                                       ; $5d6b: $ff
    rst $38                                       ; $5d6c: $ff
    rst $38                                       ; $5d6d: $ff
    rst $38                                       ; $5d6e: $ff
    rst $38                                       ; $5d6f: $ff
    rst $38                                       ; $5d70: $ff
    rst $38                                       ; $5d71: $ff
    rst $38                                       ; $5d72: $ff
    rst $38                                       ; $5d73: $ff
    rst $38                                       ; $5d74: $ff
    rst $38                                       ; $5d75: $ff
    rst $38                                       ; $5d76: $ff
    rst $38                                       ; $5d77: $ff
    rst $38                                       ; $5d78: $ff
    nop                                           ; $5d79: $00
    rst $38                                       ; $5d7a: $ff
    rst $38                                       ; $5d7b: $ff
    rst $38                                       ; $5d7c: $ff
    rst $38                                       ; $5d7d: $ff
    rst $38                                       ; $5d7e: $ff
    rst $38                                       ; $5d7f: $ff
    rst $38                                       ; $5d80: $ff
    rst $38                                       ; $5d81: $ff
    rst $38                                       ; $5d82: $ff
    rst $38                                       ; $5d83: $ff
    rst $38                                       ; $5d84: $ff
    rst $38                                       ; $5d85: $ff
    rst $38                                       ; $5d86: $ff
    rst $38                                       ; $5d87: $ff
    rst $38                                       ; $5d88: $ff
    rst $38                                       ; $5d89: $ff
    nop                                           ; $5d8a: $00
    rst $38                                       ; $5d8b: $ff
    rst $38                                       ; $5d8c: $ff
    rst $38                                       ; $5d8d: $ff
    rst $38                                       ; $5d8e: $ff
    rst $38                                       ; $5d8f: $ff
    rst $38                                       ; $5d90: $ff
    rst $38                                       ; $5d91: $ff
    rst $38                                       ; $5d92: $ff
    rst $38                                       ; $5d93: $ff
    rst $38                                       ; $5d94: $ff
    rst $38                                       ; $5d95: $ff
    rst $38                                       ; $5d96: $ff
    rst $38                                       ; $5d97: $ff
    rst $38                                       ; $5d98: $ff
    rst $38                                       ; $5d99: $ff
    rst $38                                       ; $5d9a: $ff
    nop                                           ; $5d9b: $00
    rst $38                                       ; $5d9c: $ff
    rst $38                                       ; $5d9d: $ff
    rst $38                                       ; $5d9e: $ff
    rst $38                                       ; $5d9f: $ff
    rst $38                                       ; $5da0: $ff
    rst $38                                       ; $5da1: $ff
    rst $38                                       ; $5da2: $ff
    rst $38                                       ; $5da3: $ff
    rst $38                                       ; $5da4: $ff
    rst $38                                       ; $5da5: $ff
    rst $38                                       ; $5da6: $ff
    rst $38                                       ; $5da7: $ff
    rst $38                                       ; $5da8: $ff
    rst $38                                       ; $5da9: $ff
    rst $38                                       ; $5daa: $ff
    rst $38                                       ; $5dab: $ff
    nop                                           ; $5dac: $00
    rst $38                                       ; $5dad: $ff
    rst $38                                       ; $5dae: $ff
    rst $38                                       ; $5daf: $ff
    rst $38                                       ; $5db0: $ff
    rst $38                                       ; $5db1: $ff
    rst $38                                       ; $5db2: $ff
    rst $38                                       ; $5db3: $ff
    rst $38                                       ; $5db4: $ff
    rst $38                                       ; $5db5: $ff
    rst $38                                       ; $5db6: $ff
    rst $38                                       ; $5db7: $ff
    rst $38                                       ; $5db8: $ff
    rst $38                                       ; $5db9: $ff
    rst $38                                       ; $5dba: $ff
    rst $38                                       ; $5dbb: $ff
    rst $38                                       ; $5dbc: $ff
    nop                                           ; $5dbd: $00
    rst $38                                       ; $5dbe: $ff
    rst $38                                       ; $5dbf: $ff
    rst $38                                       ; $5dc0: $ff
    rst $38                                       ; $5dc1: $ff
    rst $38                                       ; $5dc2: $ff
    rst $38                                       ; $5dc3: $ff
    rst $38                                       ; $5dc4: $ff
    rst $38                                       ; $5dc5: $ff
    rst $38                                       ; $5dc6: $ff
    rst $38                                       ; $5dc7: $ff
    rst $38                                       ; $5dc8: $ff
    rst $38                                       ; $5dc9: $ff
    rst $38                                       ; $5dca: $ff
    rst $38                                       ; $5dcb: $ff
    rst $38                                       ; $5dcc: $ff
    rst $38                                       ; $5dcd: $ff
    nop                                           ; $5dce: $00
    rst $38                                       ; $5dcf: $ff
    rst $38                                       ; $5dd0: $ff
    rst $38                                       ; $5dd1: $ff
    rst $38                                       ; $5dd2: $ff
    rst $38                                       ; $5dd3: $ff
    rst $38                                       ; $5dd4: $ff
    rst $38                                       ; $5dd5: $ff
    rst $38                                       ; $5dd6: $ff
    rst $38                                       ; $5dd7: $ff
    rst $38                                       ; $5dd8: $ff
    rst $38                                       ; $5dd9: $ff
    rst $38                                       ; $5dda: $ff
    rst $38                                       ; $5ddb: $ff
    ld [$0000], a                                 ; $5ddc: $ea $00 $00
    nop                                           ; $5ddf: $00
    dec b                                         ; $5de0: $05
    ld a, [bc]                                    ; $5de1: $0a
    rst $38                                       ; $5de2: $ff
    ldh a, [rIF]                                  ; $5de3: $f0 $0f
    rst $38                                       ; $5de5: $ff
    pop hl                                        ; $5de6: $e1
    rst $20                                       ; $5de7: $e7
    pop af                                        ; $5de8: $f1
    rst $38                                       ; $5de9: $ff
    rst $38                                       ; $5dea: $ff
    ret nz                                        ; $5deb: $c0

    rst $38                                       ; $5dec: $ff
    rst $38                                       ; $5ded: $ff
    rst $38                                       ; $5dee: $ff
    ld b, b                                       ; $5def: $40
    ret nz                                        ; $5df0: $c0

    rst $38                                       ; $5df1: $ff
    ret nz                                        ; $5df2: $c0

    rst $38                                       ; $5df3: $ff
    ret nz                                        ; $5df4: $c0

    rst $38                                       ; $5df5: $ff
    ret nz                                        ; $5df6: $c0

    rst $38                                       ; $5df7: $ff
    rst $38                                       ; $5df8: $ff
    rst $38                                       ; $5df9: $ff
    jp $0ce8                                      ; $5dfa: $c3 $e8 $0c


    rst $38                                       ; $5dfd: $ff
    ldh [rNR32], a                                ; $5dfe: $e0 $1c
    ret nz                                        ; $5e00: $c0

    rst $38                                       ; $5e01: $ff
    ret nz                                        ; $5e02: $c0

    ld hl, sp+$0d                                 ; $5e03: $f8 $0d
    dec c                                         ; $5e05: $0d
    dec c                                         ; $5e06: $0d
    cp a                                          ; $5e07: $bf
    push hl                                       ; $5e08: $e5
    ret nz                                        ; $5e09: $c0

    rst $38                                       ; $5e0a: $ff
    ld c, d                                       ; $5e0b: $4a
    db $eb                                        ; $5e0c: $eb
    dec a                                         ; $5e0d: $3d
    ld a, [hl+]                                   ; $5e0e: $2a
    add b                                         ; $5e0f: $80
    pop hl                                        ; $5e10: $e1
    ld [$0d0d], sp                                ; $5e11: $08 $0d $0d
    dec bc                                        ; $5e14: $0b
    ret nz                                        ; $5e15: $c0

    rst $38                                       ; $5e16: $ff
    ld b, b                                       ; $5e17: $40
    ld sp, hl                                     ; $5e18: $f9
    rrc l                                         ; $5e19: $cb $0d
    dec bc                                        ; $5e1b: $0b
    cp a                                          ; $5e1c: $bf
    ld [c], a                                     ; $5e1d: $e2
    ld a, [hl+]                                   ; $5e1e: $2a
    ret nz                                        ; $5e1f: $c0

    rst $38                                       ; $5e20: $ff
    set 2, c                                      ; $5e21: $cb $d1
    ld c, h                                       ; $5e23: $4c
    inc c                                         ; $5e24: $0c
    and e                                         ; $5e25: $a3
    inc c                                         ; $5e26: $0c
    dec bc                                        ; $5e27: $0b
    cp $c4                                        ; $5e28: $fe $c4
    ret nz                                        ; $5e2a: $c0

    rst $38                                       ; $5e2b: $ff
    sub h                                         ; $5e2c: $94
    call z, $ff09                                 ; $5e2d: $cc $09 $ff
    ldh [$0e], a                                  ; $5e30: $e0 $0e
    rrca                                          ; $5e32: $0f
    ld [$0808], sp                                ; $5e33: $08 $08 $08
    ld c, $c6                                     ; $5e36: $0e $c6
    ld [c], a                                     ; $5e38: $e2
    ei                                            ; $5e39: $fb
    db $e3                                        ; $5e3a: $e3
    push bc                                       ; $5e3b: $c5
    rst $38                                       ; $5e3c: $ff
    ret nz                                        ; $5e3d: $c0

    db $ec                                        ; $5e3e: $ec
    add e                                         ; $5e3f: $83
    add hl, bc                                    ; $5e40: $09
    add hl, bc                                    ; $5e41: $09
    ret nz                                        ; $5e42: $c0

    rst $38                                       ; $5e43: $ff
    inc d                                         ; $5e44: $14
    call nc, $e17f                                ; $5e45: $d4 $7f $e1
    ret nz                                        ; $5e48: $c0

    ldh [$fe], a                                  ; $5e49: $e0 $fe
    db $e3                                        ; $5e4b: $e3
    ld l, a                                       ; $5e4c: $6f
    db $10                                        ; $5e4d: $10
    ret nz                                        ; $5e4e: $c0

    rst $38                                       ; $5e4f: $ff
    call nc, $c9a9                                ; $5e50: $d4 $a9 $c9
    push hl                                       ; $5e53: $e5
    ld hl, sp-$19                                 ; $5e54: $f8 $e7
    cpl                                           ; $5e56: $2f
    ret nz                                        ; $5e57: $c0

    rst $38                                       ; $5e58: $ff
    add b                                         ; $5e59: $80
    db $ed                                        ; $5e5a: $ed
    ld a, [$00f0]                                 ; $5e5b: $fa $f0 $00
    push bc                                       ; $5e5e: $c5
    rst $38                                       ; $5e5f: $ff
    ret nz                                        ; $5e60: $c0

    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    ret nz                                        ; $5e64: $c0

    rst $38                                       ; $5e65: $ff
    ret nz                                        ; $5e66: $c0

    rst $38                                       ; $5e67: $ff
    ret nz                                        ; $5e68: $c0

    rst $38                                       ; $5e69: $ff
    ret nz                                        ; $5e6a: $c0

    rst $38                                       ; $5e6b: $ff
    ret nz                                        ; $5e6c: $c0

    rst $38                                       ; $5e6d: $ff
    ld [bc], a                                    ; $5e6e: $02
    push af                                       ; $5e6f: $f5
    db $f4                                        ; $5e70: $f4
    ld c, a                                       ; $5e71: $4f
    rst $38                                       ; $5e72: $ff
    push af                                       ; $5e73: $f5
    push bc                                       ; $5e74: $c5
    rst $38                                       ; $5e75: $ff
    ret nz                                        ; $5e76: $c0

    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    ret nz                                        ; $5e7a: $c0

    rst $30                                       ; $5e7b: $f7
    cp l                                          ; $5e7c: $bd
    rst $38                                       ; $5e7d: $ff
    nop                                           ; $5e7e: $00
    ret nz                                        ; $5e7f: $c0

    rst $38                                       ; $5e80: $ff
    rst $38                                       ; $5e81: $ff
    rst $38                                       ; $5e82: $ff
    ret nz                                        ; $5e83: $c0

    rst $38                                       ; $5e84: $ff
    ret nz                                        ; $5e85: $c0

    rst $38                                       ; $5e86: $ff
    ret nz                                        ; $5e87: $c0

    rst $38                                       ; $5e88: $ff
    ret nz                                        ; $5e89: $c0

    rst $38                                       ; $5e8a: $ff
    ret nz                                        ; $5e8b: $c0

    rst $38                                       ; $5e8c: $ff
    ret nz                                        ; $5e8d: $c0

    rst $38                                       ; $5e8e: $ff
    nop                                           ; $5e8f: $00
    rst $00                                       ; $5e90: $c7
    rst $38                                       ; $5e91: $ff
    ret nz                                        ; $5e92: $c0

    ld sp, hl                                     ; $5e93: $f9
    ret nz                                        ; $5e94: $c0

    ld h, c                                       ; $5e95: $61
    pop de                                        ; $5e96: $d1
    rst $38                                       ; $5e97: $ff
    push af                                       ; $5e98: $f5
    db $f4                                        ; $5e99: $f4
    ret nz                                        ; $5e9a: $c0

    ld h, h                                       ; $5e9b: $64
    rst $10                                       ; $5e9c: $d7
    rst $38                                       ; $5e9d: $ff
    rst $38                                       ; $5e9e: $ff
    rst $38                                       ; $5e9f: $ff
    nop                                           ; $5ea0: $00
    rst $38                                       ; $5ea1: $ff
    rst $38                                       ; $5ea2: $ff
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
    nop                                           ; $5eb1: $00
    rst $38                                       ; $5eb2: $ff
    rst $38                                       ; $5eb3: $ff
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
    nop                                           ; $5ec2: $00
    rst $38                                       ; $5ec3: $ff
    rst $38                                       ; $5ec4: $ff
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
    nop                                           ; $5ed3: $00
    rst $38                                       ; $5ed4: $ff
    rst $38                                       ; $5ed5: $ff
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
    nop                                           ; $5ee4: $00
    rst $38                                       ; $5ee5: $ff
    rst $38                                       ; $5ee6: $ff
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
    nop                                           ; $5ef5: $00
    rst $38                                       ; $5ef6: $ff
    rst $38                                       ; $5ef7: $ff
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
    nop                                           ; $5f06: $00
    rst $38                                       ; $5f07: $ff
    rst $38                                       ; $5f08: $ff
    rst $38                                       ; $5f09: $ff
    rst $38                                       ; $5f0a: $ff
    rst $38                                       ; $5f0b: $ff
    rst $38                                       ; $5f0c: $ff
    rst $38                                       ; $5f0d: $ff
    rst $38                                       ; $5f0e: $ff
    rst $38                                       ; $5f0f: $ff
    rst $38                                       ; $5f10: $ff
    rst $38                                       ; $5f11: $ff
    rst $38                                       ; $5f12: $ff
    rst $38                                       ; $5f13: $ff
    rst $38                                       ; $5f14: $ff
    rst $38                                       ; $5f15: $ff
    rst $38                                       ; $5f16: $ff
    nop                                           ; $5f17: $00
    rst $38                                       ; $5f18: $ff
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    rst $38                                       ; $5f1b: $ff
    rst $38                                       ; $5f1c: $ff
    rst $38                                       ; $5f1d: $ff
    rst $38                                       ; $5f1e: $ff
    rst $38                                       ; $5f1f: $ff
    rst $38                                       ; $5f20: $ff
    rst $38                                       ; $5f21: $ff
    rst $38                                       ; $5f22: $ff
    rst $38                                       ; $5f23: $ff
    rst $38                                       ; $5f24: $ff
    rst $38                                       ; $5f25: $ff
    rst $38                                       ; $5f26: $ff
    rst $38                                       ; $5f27: $ff
    nop                                           ; $5f28: $00
    rst $38                                       ; $5f29: $ff
    rst $38                                       ; $5f2a: $ff
    rst $38                                       ; $5f2b: $ff
    ld [$0000], a                                 ; $5f2c: $ea $00 $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    ccf                                           ; $5f32: $3f
    ccf                                           ; $5f33: $3f
    rst $38                                       ; $5f34: $ff
    ld a, a                                       ; $5f35: $7f
    rra                                           ; $5f36: $1f
    dec d                                         ; $5f37: $15
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    db $ec                                        ; $5f3a: $ec
    nop                                           ; $5f3b: $00
    daa                                           ; $5f3c: $27
    ld [bc], a                                    ; $5f3d: $02
    rst $38                                       ; $5f3e: $ff
    ld a, a                                       ; $5f3f: $7f
    daa                                           ; $5f40: $27
    ld [bc], a                                    ; $5f41: $02
    add b                                         ; $5f42: $80
    ld a, [hl]                                    ; $5f43: $7e
    cpl                                           ; $5f44: $2f
    ld a, a                                       ; $5f45: $7f
    ld h, b                                       ; $5f46: $60
    ld bc, $0000                                  ; $5f47: $01 $00 $00
    cpl                                           ; $5f4a: $2f
    ld a, a                                       ; $5f4b: $7f
    db $ec                                        ; $5f4c: $ec
    nop                                           ; $5f4d: $00
    rra                                           ; $5f4e: $1f
    dec d                                         ; $5f4f: $15
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    cpl                                           ; $5f52: $2f
    ld a, a                                       ; $5f53: $7f
    ccf                                           ; $5f54: $3f
    ccf                                           ; $5f55: $3f
    rra                                           ; $5f56: $1f

jr_047_5f57:
    dec d                                         ; $5f57: $15
    nop                                           ; $5f58: $00
    nop                                           ; $5f59: $00
    rra                                           ; $5f5a: $1f
    dec d                                         ; $5f5b: $15
    ccf                                           ; $5f5c: $3f
    ccf                                           ; $5f5d: $3f
    db $ec                                        ; $5f5e: $ec
    nop                                           ; $5f5f: $00
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    daa                                           ; $5f62: $27
    ld [bc], a                                    ; $5f63: $02
    ccf                                           ; $5f64: $3f
    ccf                                           ; $5f65: $3f
    rst $38                                       ; $5f66: $ff
    ld a, a                                       ; $5f67: $7f
    rst $30                                       ; $5f68: $f7
    dec sp                                        ; $5f69: $3b
    sub c                                         ; $5f6a: $91
    dec bc                                        ; $5f6b: $0b
    ld h, b                                       ; $5f6c: $60
    ld bc, $0227                                  ; $5f6d: $01 $27 $02
    ei                                            ; $5f70: $fb
    rst $38                                       ; $5f71: $ff
    nop                                           ; $5f72: $00
    cp $eb                                        ; $5f73: $fe $eb
    ld hl, sp+$07                                 ; $5f75: $f8 $07
    ld c, a                                       ; $5f77: $4f
    or b                                          ; $5f78: $b0
    and b                                         ; $5f79: $a0
    rst $38                                       ; $5f7a: $ff
    ld e, a                                       ; $5f7b: $5f
    ld d, h                                       ; $5f7c: $54
    xor e                                         ; $5f7d: $ab
    ld [$f515], a                                 ; $5f7e: $ea $15 $f5

jr_047_5f81:
    ld a, [bc]                                    ; $5f81: $0a
    cp $fd                                        ; $5f82: $fe $fd
    ld bc, $e1e2                                  ; $5f84: $01 $e2 $e1
    rra                                           ; $5f87: $1f
    ldh [$ef], a                                  ; $5f88: $e0 $ef
    stop                                          ; $5f8a: $10 $00
    rst $38                                       ; $5f8c: $ff
    cp a                                          ; $5f8d: $bf
    jr c, jr_047_5f57                             ; $5f8e: $38 $c7

    ld [hl], h                                    ; $5f90: $74
    adc e                                         ; $5f91: $8b
    ld a, [$ee05]                                 ; $5f92: $fa $05 $ee
    db $e3                                        ; $5f95: $e3
    rst $38                                       ; $5f96: $ff
    rst $38                                       ; $5f97: $ff
    nop                                           ; $5f98: $00
    ld a, a                                       ; $5f99: $7f
    add b                                         ; $5f9a: $80
    rlca                                          ; $5f9b: $07
    ld hl, sp+$43                                 ; $5f9c: $f8 $43
    cp h                                          ; $5f9e: $bc
    xor a                                         ; $5f9f: $af
    rst $30                                       ; $5fa0: $f7
    ld d, b                                       ; $5fa1: $50
    ld [hl], a                                    ; $5fa2: $77
    adc b                                         ; $5fa3: $88
    ret nz                                        ; $5fa4: $c0

    rst $20                                       ; $5fa5: $e7
    cp $01                                        ; $5fa6: $fe $01
    rst $18                                       ; $5fa8: $df
    jr nz, jr_047_6026                            ; $5fa9: $20 $7b

    ld bc, $b0fe                                  ; $5fab: $01 $fe $b0
    rst $20                                       ; $5fae: $e7
    ld a, a                                       ; $5faf: $7f
    add b                                         ; $5fb0: $80
    sbc a                                         ; $5fb1: $9f
    ld h, b                                       ; $5fb2: $60
    db $e4                                        ; $5fb3: $e4
    rst $20                                       ; $5fb4: $e7
    db $fc                                        ; $5fb5: $fc
    or d                                          ; $5fb6: $b2
    push hl                                       ; $5fb7: $e5
    sub b                                         ; $5fb8: $90
    pop hl                                        ; $5fb9: $e1
    rst $20                                       ; $5fba: $e7
    jr jr_047_5fc0                                ; $5fbb: $18 $03

    db $fc                                        ; $5fbd: $fc
    ld d, a                                       ; $5fbe: $57
    xor b                                         ; $5fbf: $a8

jr_047_5fc0:
    ei                                            ; $5fc0: $fb
    xor a                                         ; $5fc1: $af
    ld d, b                                       ; $5fc2: $50
    add h                                         ; $5fc3: $84
    push hl                                       ; $5fc4: $e5
    db $fc                                        ; $5fc5: $fc
    inc bc                                        ; $5fc6: $03
    pop de                                        ; $5fc7: $d1
    ld l, $fa                                     ; $5fc8: $2e $fa
    db $fd                                        ; $5fca: $fd
    dec b                                         ; $5fcb: $05
    halt                                          ; $5fcc: $76
    db $e3                                        ; $5fcd: $e3
    rst $18                                       ; $5fce: $df
    jr nz, jr_047_5f81                            ; $5fcf: $20 $b0

    ld c, a                                       ; $5fd1: $4f
    ld b, d                                       ; $5fd2: $42
    cp l                                          ; $5fd3: $bd
    cp a                                          ; $5fd4: $bf
    dec b                                         ; $5fd5: $05
    ld a, [$45ba]                                 ; $5fd6: $fa $ba $45
    ld e, a                                       ; $5fd9: $5f
    and b                                         ; $5fda: $a0
    ld h, h                                       ; $5fdb: $64
    pop hl                                        ; $5fdc: $e1
    ld b, b                                       ; $5fdd: $40
    rst $38                                       ; $5fde: $ff
    cp a                                          ; $5fdf: $bf

jr_047_5fe0:
    nop                                           ; $5fe0: $00
    rst $38                                       ; $5fe1: $ff
    ld a, [hl+]                                   ; $5fe2: $2a
    push de                                       ; $5fe3: $d5
    ld d, h                                       ; $5fe4: $54
    xor e                                         ; $5fe5: $ab
    xor d                                         ; $5fe6: $aa
    rst $30                                       ; $5fe7: $f7
    ld d, l                                       ; $5fe8: $55
    db $fd                                        ; $5fe9: $fd
    ld [bc], a                                    ; $5fea: $02
    ld d, h                                       ; $5feb: $54
    pop hl                                        ; $5fec: $e1
    add hl, hl                                    ; $5fed: $29
    sub $01                                       ; $5fee: $d6 $01
    cp $ff                                        ; $5ff0: $fe $ff
    and b                                         ; $5ff2: $a0
    ld e, a                                       ; $5ff3: $5f
    db $10                                        ; $5ff4: $10
    rst $28                                       ; $5ff5: $ef
    add b                                         ; $5ff6: $80
    ld a, a                                       ; $5ff7: $7f
    ld d, l                                       ; $5ff8: $55
    xor d                                         ; $5ff9: $aa
    rst $38                                       ; $5ffa: $ff
    cp [hl]                                       ; $5ffb: $be
    ld b, c                                       ; $5ffc: $41
    rst $38                                       ; $5ffd: $ff
    nop                                           ; $5ffe: $00
    jr nz, jr_047_5fe0                            ; $5fff: $20 $df

    add b                                         ; $6001: $80
    ld a, a                                       ; $6002: $7f
    rst $38                                       ; $6003: $ff
    nop                                           ; $6004: $00
    rst $38                                       ; $6005: $ff
    dec d                                         ; $6006: $15
    ld [$d52a], a                                 ; $6007: $ea $2a $d5
    ld d, l                                       ; $600a: $55
    xor d                                         ; $600b: $aa
    rst $38                                       ; $600c: $ff
    xor a                                         ; $600d: $af
    ld d, b                                       ; $600e: $50
    rst $18                                       ; $600f: $df
    jr nz, jr_047_6023                            ; $6010: $20 $11

    xor $02                                       ; $6012: $ee $02
    db $fd                                        ; $6014: $fd
    rst $38                                       ; $6015: $ff
    nop                                           ; $6016: $00
    rst $38                                       ; $6017: $ff
    db $10                                        ; $6018: $10
    rst $28                                       ; $6019: $ef
    adc c                                         ; $601a: $89
    halt                                          ; $601b: $76
    ld d, h                                       ; $601c: $54
    xor e                                         ; $601d: $ab
    ei                                            ; $601e: $fb
    xor e                                         ; $601f: $ab
    ld d, h                                       ; $6020: $54
    ld [hl+], a                                   ; $6021: $22
    pop hl                                        ; $6022: $e1

jr_047_6023:
    ld bc, $00fe                                  ; $6023: $01 $fe $00

jr_047_6026:
    rst $38                                       ; $6026: $ff
    and b                                         ; $6027: $a0
    or a                                          ; $6028: $b7
    ld e, a                                       ; $6029: $5f
    ld d, l                                       ; $602a: $55
    xor d                                         ; $602b: $aa
    xor [hl]                                      ; $602c: $ae
    pop hl                                        ; $602d: $e1
    cp a                                          ; $602e: $bf
    ld b, b                                       ; $602f: $40
    db $10                                        ; $6030: $10
    pop hl                                        ; $6031: $e1
    dec b                                         ; $6032: $05
    rst $38                                       ; $6033: $ff
    ld a, [$fd02]                                 ; $6034: $fa $02 $fd
    ld b, l                                       ; $6037: $45
    cp d                                          ; $6038: $ba
    xor e                                         ; $6039: $ab
    ld d, h                                       ; $603a: $54
    db $dd                                        ; $603b: $dd
    rst $30                                       ; $603c: $f7
    ld [hl+], a                                   ; $603d: $22
    rst $28                                       ; $603e: $ef
    db $10                                        ; $603f: $10
    ld [hl-], a                                   ; $6040: $32
    db $e3                                        ; $6041: $e3
    xor e                                         ; $6042: $ab
    ld d, h                                       ; $6043: $54
    ld a, a                                       ; $6044: $7f
    add b                                         ; $6045: $80
    ld a, [hl]                                    ; $6046: $7e
    ld hl, sp-$33                                 ; $6047: $f8 $cd
    call nc, $fb2b                                ; $6049: $d4 $2b $fb
    inc b                                         ; $604c: $04
    push af                                       ; $604d: $f5
    ld a, [bc]                                    ; $604e: $0a
    ldh [$c5], a                                  ; $604f: $e0 $c5
    cp a                                          ; $6051: $bf
    ld e, $e1                                     ; $6052: $1e $e1
    nop                                           ; $6054: $00
    rst $38                                       ; $6055: $ff
    xor d                                         ; $6056: $aa
    ld d, l                                       ; $6057: $55
    ldh a, [$e7]                                  ; $6058: $f0 $e7
    rra                                           ; $605a: $1f
    rst $38                                       ; $605b: $ff
    ldh [rVBK], a                                 ; $605c: $e0 $4f
    or b                                          ; $605e: $b0
    sub c                                         ; $605f: $91
    ld l, [hl]                                    ; $6060: $6e
    ld h, a                                       ; $6061: $67
    sbc b                                         ; $6062: $98
    ld h, d                                       ; $6063: $62
    ld a, a                                       ; $6064: $7f
    sbc l                                         ; $6065: $9d
    pop af                                        ; $6066: $f1
    ld c, $d6                                     ; $6067: $0e $d6
    add hl, hl                                    ; $6069: $29
    db $ed                                        ; $606a: $ed
    ld [de], a                                    ; $606b: $12
    cp b                                          ; $606c: $b8
    push bc                                       ; $606d: $c5
    ld a, [hl]                                    ; $606e: $7e
    ld [hl], d                                    ; $606f: $72

jr_047_6070:
    pop hl                                        ; $6070: $e1
    adc d                                         ; $6071: $8a
    ld [hl], l                                    ; $6072: $75
    ld d, a                                       ; $6073: $57
    xor b                                         ; $6074: $a8
    db $eb                                        ; $6075: $eb
    inc d                                         ; $6076: $14
    call nz, $ffe3                                ; $6077: $c4 $e3 $ff
    rst $18                                       ; $607a: $df
    jr nz, @+$11                                  ; $607b: $20 $0f

    ldh a, [$81]                                  ; $607d: $f0 $81
    ld a, [hl]                                    ; $607f: $7e
    ld b, c                                       ; $6080: $41
    cp [hl]                                       ; $6081: $be
    ld a, [hl]                                    ; $6082: $7e
    call nz, $ffe9                                ; $6083: $c4 $e9 $ff
    nop                                           ; $6086: $00
    ld e, a                                       ; $6087: $5f
    and b                                         ; $6088: $a0
    xor c                                         ; $6089: $a9
    ld d, [hl]                                    ; $608a: $56
    jr nc, jr_047_6070                            ; $608b: $30 $e3

    cp h                                          ; $608d: $bc
    db $ec                                        ; $608e: $ec
    jp hl                                         ; $608f: $e9


    ld [hl], h                                    ; $6090: $74
    call Call_000_01fe                            ; $6091: $cd $fe $01
    and b                                         ; $6094: $a0
    ld e, a                                       ; $6095: $5f
    ld h, b                                       ; $6096: $60
    ret                                           ; $6097: $c9


    ccf                                           ; $6098: $3f
    or a                                          ; $6099: $b7
    ret nz                                        ; $609a: $c0

    ld d, a                                       ; $609b: $57
    xor b                                         ; $609c: $a8
    ld d, b                                       ; $609d: $50
    rst $00                                       ; $609e: $c7
    xor d                                         ; $609f: $aa
    ld d, l                                       ; $60a0: $55
    ld b, h                                       ; $60a1: $44
    pop bc                                        ; $60a2: $c1
    ei                                            ; $60a3: $fb

Call_047_60a4:
    pop bc                                        ; $60a4: $c1
    inc b                                         ; $60a5: $04
    ldh a, [$eb]                                  ; $60a6: $f0 $eb
    sub [hl]                                      ; $60a8: $96
    pop bc                                        ; $60a9: $c1
    or h                                          ; $60aa: $b4
    jp $e3e0                                      ; $60ab: $c3 $e0 $e3


    ld b, b                                       ; $60ae: $40
    pop bc                                        ; $60af: $c1
    and l                                         ; $60b0: $a5
    ld e, d                                       ; $60b1: $5a
    cp h                                          ; $60b2: $bc
    or h                                          ; $60b3: $b4
    pop bc                                        ; $60b4: $c1
    ret nc                                        ; $60b5: $d0

    db $e3                                        ; $60b6: $e3
    ld [$f715], a                                 ; $60b7: $ea $15 $f7
    ld [$c10c], sp                                ; $60ba: $08 $0c $c1
    db $fd                                        ; $60bd: $fd
    ld a, c                                       ; $60be: $79
    ld [bc], a                                    ; $60bf: $02
    ret nz                                        ; $60c0: $c0

    db $e3                                        ; $60c1: $e3
    xor $c1                                       ; $60c2: $ee $c1
    ldh a, [rIF]                                  ; $60c4: $f0 $0f
    add b                                         ; $60c6: $80
    ld a, a                                       ; $60c7: $7f
    sbc [hl]                                      ; $60c8: $9e
    pop bc                                        ; $60c9: $c1
    cp $72                                        ; $60ca: $fe $72
    push bc                                       ; $60cc: $c5
    cp $01                                        ; $60cd: $fe $01
    rra                                           ; $60cf: $1f
    ldh [rSCX], a                                 ; $60d0: $e0 $43
    cp h                                          ; $60d2: $bc
    xor b                                         ; $60d3: $a8
    rst $30                                       ; $60d4: $f7
    ld d, a                                       ; $60d5: $57
    ld d, l                                       ; $60d6: $55
    xor d                                         ; $60d7: $aa
    ld [c], a                                     ; $60d8: $e2
    and c                                         ; $60d9: $a1
    ld [hl], a                                    ; $60da: $77
    adc b                                         ; $60db: $88
    cp d                                          ; $60dc: $ba
    ld b, l                                       ; $60dd: $45
    ldh a, [$0e]                                  ; $60de: $f0 $0e
    pop bc                                        ; $60e0: $c1
    sub b                                         ; $60e1: $90
    db $e3                                        ; $60e2: $e3
    adc d                                         ; $60e3: $8a
    pop hl                                        ; $60e4: $e1
    add sp, -$1f                                  ; $60e5: $e8 $e1
    xor d                                         ; $60e7: $aa
    ld d, l                                       ; $60e8: $55
    ld d, l                                       ; $60e9: $55
    xor d                                         ; $60ea: $aa
    ld a, [hl]                                    ; $60eb: $7e
    db $fc                                        ; $60ec: $fc
    db $e3                                        ; $60ed: $e3
    ldh [rIE], a                                  ; $60ee: $e0 $ff
    db $fd                                        ; $60f0: $fd
    ld a, [$fffe]                                 ; $60f1: $fa $fe $ff
    rst $38                                       ; $60f4: $ff
    push hl                                       ; $60f5: $e5
    cp a                                          ; $60f6: $bf
    xor d                                         ; $60f7: $aa
    ld d, l                                       ; $60f8: $55
    nop                                           ; $60f9: $00
    rst $38                                       ; $60fa: $ff
    ld d, l                                       ; $60fb: $55
    xor d                                         ; $60fc: $aa
    call nc, $80c1                                ; $60fd: $d4 $c1 $80
    sbc a                                         ; $6100: $9f
    rst $38                                       ; $6101: $ff
    ret nz                                        ; $6102: $c0

    rst $38                                       ; $6103: $ff
    jp z, $f0f5                                   ; $6104: $ca $f5 $f0

    rst $20                                       ; $6107: $e7
    sub a                                         ; $6108: $97
    and c                                         ; $6109: $a1
    xor d                                         ; $610a: $aa
    db $fd                                        ; $610b: $fd
    ld d, l                                       ; $610c: $55
    ldh [$e7], a                                  ; $610d: $e0 $e7
    ld bc, $03ff                                  ; $610f: $01 $ff $03
    rst $38                                       ; $6112: $ff
    xor a                                         ; $6113: $af
    ld d, a                                       ; $6114: $57
    jp nc, $e3d0                                  ; $6115: $d2 $d0 $e3

    ccf                                           ; $6118: $3f
    ret nz                                        ; $6119: $c0

    and $f7                                       ; $611a: $e6 $f7
    db $ed                                        ; $611c: $ed
    ldh [$fe], a                                  ; $611d: $e0 $fe
    and $f0                                       ; $611f: $e6 $f0
    rst $38                                       ; $6121: $ff
    db $e3                                        ; $6122: $e3
    db $fc                                        ; $6123: $fc
    rst $38                                       ; $6124: $ff
    and c                                         ; $6125: $a1
    xor b                                         ; $6126: $a8
    ld b, a                                       ; $6127: $47
    and h                                         ; $6128: $a4
    add d                                         ; $6129: $82
    and [hl]                                      ; $612a: $a6
    nop                                           ; $612b: $00
    db $fd                                        ; $612c: $fd
    ld bc, $faf7                                  ; $612d: $01 $f7 $fa
    ld [bc], a                                    ; $6130: $02
    db $f4                                        ; $6131: $f4
    cp d                                          ; $6132: $ba
    and d                                         ; $6133: $a2
    ldh [rP1], a                                  ; $6134: $e0 $00
    sub l                                         ; $6136: $95
    rra                                           ; $6137: $1f
    rst $38                                       ; $6138: $ff
    ld l, d                                       ; $6139: $6a
    ld a, a                                       ; $613a: $7f
    db $10                                        ; $613b: $10
    db $10                                        ; $613c: $10
    ld a, [bc]                                    ; $613d: $0a
    rst $08                                       ; $613e: $cf
    dec [hl]                                      ; $613f: $35
    ccf                                           ; $6140: $3f
    cp $c8                                        ; $6141: $fe $c8
    jp nz, $c300                                  ; $6143: $c2 $00 $c3

    ret nz                                        ; $6146: $c0

    db $fc                                        ; $6147: $fc
    db $fc                                        ; $6148: $fc
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    rst $28                                       ; $614b: $ef
    rra                                           ; $614c: $1f
    rra                                           ; $614d: $1f
    ld h, a                                       ; $614e: $67

jr_047_614f:
    rst $20                                       ; $614f: $e7
    or d                                          ; $6150: $b2
    ret z                                         ; $6151: $c8

    nop                                           ; $6152: $00
    rst $18                                       ; $6153: $df
    ret nz                                        ; $6154: $c0

    ld e, a                                       ; $6155: $5f
    rst $28                                       ; $6156: $ef
    ldh [rIF], a                                  ; $6157: $e0 $0f
    rst $38                                       ; $6159: $ff
    rra                                           ; $615a: $1f
    cp $e0                                        ; $615b: $fe $e0
    ccf                                           ; $615d: $3f
    cp $e0                                        ; $615e: $fe $e0
    ld e, l                                       ; $6160: $5d
    ld a, a                                       ; $6161: $7f
    cp $e2                                        ; $6162: $fe $e2
    nop                                           ; $6164: $00
    rst $38                                       ; $6165: $ff
    add b                                         ; $6166: $80
    cp $e0                                        ; $6167: $fe $e0
    ret nz                                        ; $6169: $c0

    cp $e2                                        ; $616a: $fe $e2
    cp $84                                        ; $616c: $fe $84
    pop hl                                        ; $616e: $e1
    db $ec                                        ; $616f: $ec
    inc c                                         ; $6170: $0c
    db $eb                                        ; $6171: $eb
    dec bc                                        ; $6172: $0b
    rst $20                                       ; $6173: $e7
    rlca                                          ; $6174: $07
    rst $28                                       ; $6175: $ef
    rst $38                                       ; $6176: $ff
    rrca                                          ; $6177: $0f
    sbc $1e                                       ; $6178: $de $1e
    db $dd                                        ; $617a: $dd
    dec e                                         ; $617b: $1d
    ret c                                         ; $617c: $d8

    jr jr_047_614f                                ; $617d: $18 $d0

jr_047_617f:
    rst $38                                       ; $617f: $ff
    ld de, $ccfc                                  ; $6180: $11 $fc $cc
    ldh a, [$b0]                                  ; $6183: $f0 $b0
    ret z                                         ; $6185: $c8

    ret z                                         ; $6186: $c8

    ld [hl-], a                                   ; $6187: $32
    rst $38                                       ; $6188: $ff
    jr nz, jr_047_617f                            ; $6189: $20 $f4

    add c                                         ; $618b: $81
    db $fc                                        ; $618c: $fc
    ld bc, $007c                                  ; $618d: $01 $7c $00
    ld a, $ff                                     ; $6190: $3e $ff
    nop                                           ; $6192: $00
    ei                                            ; $6193: $fb
    ei                                            ; $6194: $fb
    ld bc, $fe01                                  ; $6195: $01 $01 $fe
    add d                                         ; $6198: $82
    ccf                                           ; $6199: $3f
    rst $38                                       ; $619a: $ff
    nop                                           ; $619b: $00
    rra                                           ; $619c: $1f
    ld b, b                                       ; $619d: $40
    rrca                                          ; $619e: $0f
    jr nz, @+$11                                  ; $619f: $20 $0f

    jr nc, @+$0f                                  ; $61a1: $30 $0d

    rst $38                                       ; $61a3: $ff
    ld h, b                                       ; $61a4: $60
    rst $30                                       ; $61a5: $f7
    ldh a, [$f7]                                  ; $61a6: $f0 $f7
    ldh a, [$7b]                                  ; $61a8: $f0 $7b
    ld a, b                                       ; $61aa: $78
    dec sp                                        ; $61ab: $3b
    rst $38                                       ; $61ac: $ff
    jr c, jr_047_61c7                             ; $61ad: $38 $18

    jr jr_047_61b1                                ; $61af: $18 $00

jr_047_61b1:
    rlca                                          ; $61b1: $07
    nop                                           ; $61b2: $00
    dec c                                         ; $61b3: $0d
    ld [bc], a                                    ; $61b4: $02
    add hl, de                                    ; $61b5: $19
    dec bc                                        ; $61b6: $0b
    ldh a, [$88]                                  ; $61b7: $f0 $88
    cp $e0                                        ; $61b9: $fe $e0
    nop                                           ; $61bb: $00
    add b                                         ; $61bc: $80
    sub c                                         ; $61bd: $91
    adc e                                         ; $61be: $8b
    db $ed                                        ; $61bf: $ed
    add [hl]                                      ; $61c0: $86
    ld a, c                                       ; $61c1: $79
    add d                                         ; $61c2: $82
    rst $20                                       ; $61c3: $e7
    and e                                         ; $61c4: $a3
    rst $38                                       ; $61c5: $ff
    ld d, a                                       ; $61c6: $57

jr_047_61c7:
    ld a, d                                       ; $61c7: $7a
    ldh [$f5], a                                  ; $61c8: $e0 $f5
    rrc a                                         ; $61ca: $cb $0f
    rrca                                          ; $61cc: $0f
    and e                                         ; $61cd: $a3
    rst $38                                       ; $61ce: $ff
    and e                                         ; $61cf: $a3
    ld d, c                                       ; $61d0: $51
    ld d, c                                       ; $61d1: $51
    xor b                                         ; $61d2: $a8
    xor b                                         ; $61d3: $a8
    call nc, $fad4                                ; $61d4: $d4 $d4 $fa
    ld d, a                                       ; $61d7: $57
    ld a, [$fdfd]                                 ; $61d8: $fa $fd $fd
    reti                                          ; $61db: $d9


    rst $00                                       ; $61dc: $c7
    ld a, a                                       ; $61dd: $7f
    rst $38                                       ; $61de: $ff
    ldh [$3f], a                                  ; $61df: $e0 $3f
    ret                                           ; $61e1: $c9


    ret nz                                        ; $61e2: $c0

    xor [hl]                                      ; $61e3: $ae
    add sp, -$3f                                  ; $61e4: $e8 $c1
    ld hl, sp-$01                                 ; $61e6: $f8 $ff
    db $f4                                        ; $61e8: $f4
    db $fc                                        ; $61e9: $fc
    db $e4                                        ; $61ea: $e4
    db $fd                                        ; $61eb: $fd
    ld sp, $0a88                                  ; $61ec: $31 $88 $0a
    rst $38                                       ; $61ef: $ff
    rst $38                                       ; $61f0: $ff
    dec d                                         ; $61f1: $15
    rst $38                                       ; $61f2: $ff
    ld a, [$e8ff]                                 ; $61f3: $fa $ff $e8
    ld a, [bc]                                    ; $61f6: $0a
    add sp, -$01                                  ; $61f7: $e8 $ff
    ld [$02f0], sp                                ; $61f9: $08 $f0 $02
    ldh a, [rSC]                                  ; $61fc: $f0 $02
    ld a, [$f803]                                 ; $61fe: $fa $03 $f8
    rst $38                                       ; $6201: $ff
    ld bc, $01f9                                  ; $6202: $01 $f9 $01
    db $fc                                        ; $6205: $fc
    nop                                           ; $6206: $00
    inc de                                        ; $6207: $13
    ld d, d                                       ; $6208: $52
    rrca                                          ; $6209: $0f
    rst $38                                       ; $620a: $ff
    ld b, b                                       ; $620b: $40
    rla                                           ; $620c: $17
    ld [$9c23], sp                                ; $620d: $08 $23 $9c
    scf                                           ; $6210: $37
    ld [$ffbf], sp                                ; $6211: $08 $bf $ff
    ld hl, $1ede                                  ; $6214: $21 $de $1e
    ldh [rNR41], a                                ; $6217: $e0 $20
    add hl, de                                    ; $6219: $19
    nop                                           ; $621a: $00
    ldh a, [rIE]                                  ; $621b: $f0 $ff
    nop                                           ; $621d: $00
    ldh [rLCDC], a                                ; $621e: $e0 $40
    add c                                         ; $6220: $81
    ld bc, $8081                                  ; $6221: $01 $81 $80
    inc bc                                        ; $6224: $03
    rst $38                                       ; $6225: $ff
    ld [bc], a                                    ; $6226: $02
    rrca                                          ; $6227: $0f
    ld [$000f], sp                                ; $6228: $08 $0f $00
    inc hl                                        ; $622b: $23
    xor b                                         ; $622c: $a8
    ld bc, $c8fd                                  ; $622d: $01 $fd $c8
    cp [hl]                                       ; $6230: $be
    add c                                         ; $6231: $81
    ld [$09f6], sp                                ; $6232: $08 $f6 $09
    ldh a, [rTMA]                                 ; $6235: $f0 $06
    pop af                                        ; $6237: $f1
    rst $38                                       ; $6238: $ff
    nop                                           ; $6239: $00
    rst $30                                       ; $623a: $f7
    and c                                         ; $623b: $a1
    ld l, $b2                                     ; $623c: $2e $b2
    dec b                                         ; $623e: $05

jr_047_623f:
    cp c                                          ; $623f: $b9
    ld [bc], a                                    ; $6240: $02
    rst $38                                       ; $6241: $ff
    ld a, b                                       ; $6242: $78
    ld b, e                                       ; $6243: $43
    ld hl, sp-$7d                                 ; $6244: $f8 $83
    ld hl, sp+$02                                 ; $6246: $f8 $02
    pop de                                        ; $6248: $d1
    nop                                           ; $6249: $00
    rst $38                                       ; $624a: $ff
    ret z                                         ; $624b: $c8

    rlca                                          ; $624c: $07
    ld a, a                                       ; $624d: $7f
    nop                                           ; $624e: $00
    ccf                                           ; $624f: $3f
    add b                                         ; $6250: $80
    rra                                           ; $6251: $1f
    ret nz                                        ; $6252: $c0

    ld c, [hl]                                    ; $6253: $4e
    cp $e0                                        ; $6254: $fe $e0
    ld b, b                                       ; $6256: $40
    rra                                           ; $6257: $1f
    ret nz                                        ; $6258: $c0

    or $e0                                        ; $6259: $f6 $e0
    jr nc, jr_047_623f                            ; $625b: $30 $e2

    ld c, $be                                     ; $625d: $0e $be
    ret z                                         ; $625f: $c8

    rst $30                                       ; $6260: $f7
    ld [bc], a                                    ; $6261: $02
    rst $38                                       ; $6262: $ff
    dec b                                         ; $6263: $05
    db $fc                                        ; $6264: $fc
    ld [c], a                                     ; $6265: $e2
    adc d                                         ; $6266: $8a
    rst $38                                       ; $6267: $ff
    push bc                                       ; $6268: $c5
    rst $38                                       ; $6269: $ff
    rst $18                                       ; $626a: $df
    jp z, $f5ff                                   ; $626b: $ca $ff $f5

    rst $38                                       ; $626e: $ff
    xor a                                         ; $626f: $af
    inc l                                         ; $6270: $2c
    ldh [$af], a                                  ; $6271: $e0 $af
    rst $38                                       ; $6273: $ff
    ret                                           ; $6274: $c9


    ld e, a                                       ; $6275: $5f
    db $fc                                        ; $6276: $fc
    and $d7                                       ; $6277: $e6 $d7
    and l                                         ; $6279: $a5
    cp $ff                                        ; $627a: $fe $ff
    ldh [$30], a                                  ; $627c: $e0 $30
    pop hl                                        ; $627e: $e1
    ldh a, [$f0]                                  ; $627f: $f0 $f0
    rst $38                                       ; $6281: $ff
    pop bc                                        ; $6282: $c1
    pop bc                                        ; $6283: $c1
    adc d                                         ; $6284: $8a
    adc d                                         ; $6285: $8a
    dec d                                         ; $6286: $15
    dec d                                         ; $6287: $15
    dec hl                                        ; $6288: $2b
    dec hl                                        ; $6289: $2b
    rst $28                                       ; $628a: $ef
    ld e, a                                       ; $628b: $5f
    ld e, a                                       ; $628c: $5f
    cp a                                          ; $628d: $bf
    cp a                                          ; $628e: $bf
    add sp, -$1f                                  ; $628f: $e8 $e1
    ld hl, sp-$08                                 ; $6291: $f8 $f8
    push af                                       ; $6293: $f5
    db $fd                                        ; $6294: $fd
    push af                                       ; $6295: $f5
    or c                                          ; $6296: $b1
    and e                                         ; $6297: $a3
    rst $00                                       ; $6298: $c7
    rst $00                                       ; $6299: $c7
    and e                                         ; $629a: $a3
    and e                                         ; $629b: $a3
    rra                                           ; $629c: $1f
    rra                                           ; $629d: $1f
    rst $38                                       ; $629e: $ff
    rlca                                          ; $629f: $07
    rlca                                          ; $62a0: $07
    ld b, e                                       ; $62a1: $43
    ld b, e                                       ; $62a2: $43
    xor c                                         ; $62a3: $a9
    xor c                                         ; $62a4: $a9
    push de                                       ; $62a5: $d5
    push de                                       ; $62a6: $d5
    ld a, a                                       ; $62a7: $7f
    ld hl, sp-$08                                 ; $62a8: $f8 $f8
    db $fc                                        ; $62aa: $fc
    db $fc                                        ; $62ab: $fc
    ld a, [$fbfa]                                 ; $62ac: $fa $fa $fb
    sub $a8                                       ; $62af: $d6 $a8
    rra                                           ; $62b1: $1f
    jp $a1c3                                      ; $62b2: $c3 $c3 $a1


    and c                                         ; $62b5: $a1
    db $fd                                        ; $62b6: $fd
    db $ec                                        ; $62b7: $ec
    and b                                         ; $62b8: $a0
    or d                                          ; $62b9: $b2
    ldh [$80], a                                  ; $62ba: $e0 $80
    and [hl]                                      ; $62bc: $a6
    ld e, l                                       ; $62bd: $5d
    ld b, b                                       ; $62be: $40
    ld b, b                                       ; $62bf: $40
    ret nz                                        ; $62c0: $c0

    ld b, b                                       ; $62c1: $40
    rst $38                                       ; $62c2: $ff
    and b                                         ; $62c3: $a0
    ld [$fcc2], a                                 ; $62c4: $ea $c2 $fc
    adc $a0                                       ; $62c7: $ce $a0
    ld a, a                                       ; $62c9: $7f
    ld a, [$fa02]                                 ; $62ca: $fa $02 $fa
    ld [bc], a                                    ; $62cd: $02
    ld hl, sp+$02                                 ; $62ce: $f8 $02
    db $fc                                        ; $62d0: $fc
    ei                                            ; $62d1: $fb
    ld h, c                                       ; $62d2: $61
    db $fc                                        ; $62d3: $fc
    ld d, $62                                     ; $62d4: $16 $62
    rst $38                                       ; $62d6: $ff
    pop hl                                        ; $62d7: $e1
    add c                                         ; $62d8: $81
    add c                                         ; $62d9: $81
    ld c, b                                       ; $62da: $48
    ld c, a                                       ; $62db: $4f
    jr nz, jr_047_631d                            ; $62dc: $20 $3f

    rst $38                                       ; $62de: $ff
    ret nc                                        ; $62df: $d0

    rra                                           ; $62e0: $1f
    db $e3                                        ; $62e1: $e3

jr_047_62e2:
    inc bc                                        ; $62e2: $03
    db $fc                                        ; $62e3: $fc
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    rra                                           ; $62e6: $1f
    cp $7a                                        ; $62e7: $fe $7a
    pop bc                                        ; $62e9: $c1
    ld [$27f8], sp                                ; $62ea: $08 $f8 $27
    rst $20                                       ; $62ed: $e7
    dec d                                         ; $62ee: $15
    sbc a                                         ; $62ef: $9f
    ld l, e                                       ; $62f0: $6b
    ld a, a                                       ; $62f1: $7f
    ld a, a                                       ; $62f2: $7f
    push bc                                       ; $62f3: $c5
    rst $38                                       ; $62f4: $ff
    nop                                           ; $62f5: $00
    rst $28                                       ; $62f6: $ef
    ld b, b                                       ; $62f7: $40
    rst $18                                       ; $62f8: $df
    dec e                                         ; $62f9: $1d
    ldh [rIE], a                                  ; $62fa: $e0 $ff
    cp a                                          ; $62fc: $bf
    and b                                         ; $62fd: $a0
    cp a                                          ; $62fe: $bf
    pop bc                                        ; $62ff: $c1
    rst $18                                       ; $6300: $df
    jp z, $d4df                                   ; $6301: $ca $df $d4

    rst $38                                       ; $6304: $ff
    sbc $d0                                       ; $6305: $de $d0
    rrca                                          ; $6307: $0f
    ret nz                                        ; $6308: $c0

    ld e, $c1                                     ; $6309: $1e $c1
    nop                                           ; $630b: $00
    rst $18                                       ; $630c: $df
    rst $38                                       ; $630d: $ff
    db $10                                        ; $630e: $10
    rst $18                                       ; $630f: $df
    ld c, b                                       ; $6310: $48
    cp a                                          ; $6311: $bf
    ld sp, $2a3f                                  ; $6312: $31 $3f $2a
    sbc $1d                                       ; $6315: $de $1d
    call nc, $e00a                                ; $6317: $d4 $0a $e0
    nop                                           ; $631a: $00
    cp a                                          ; $631b: $bf
    add b                                         ; $631c: $80

jr_047_631d:
    cp $e1                                        ; $631d: $fe $e1
    jr nc, jr_047_62e2                            ; $631f: $30 $c1

    or b                                          ; $6321: $b0
    ldh [$ae], a                                  ; $6322: $e0 $ae
    cp a                                          ; $6324: $bf
    ld b, d                                       ; $6325: $42
    inc bc                                        ; $6326: $03
    rst $38                                       ; $6327: $ff
    rlca                                          ; $6328: $07
    cp $e4                                        ; $6329: $fe $e4
    rst $28                                       ; $632b: $ef
    ld [hl], $ac                                  ; $632c: $36 $ac
    xor a                                         ; $632e: $af
    ei                                            ; $632f: $fb
    rst $38                                       ; $6330: $ff
    rst $18                                       ; $6331: $df
    db $ec                                        ; $6332: $ec
    add sp, $37                                   ; $6333: $e8 $37
    scf                                           ; $6335: $37
    rst $38                                       ; $6336: $ff
    rst $38                                       ; $6337: $ff
    ld e, a                                       ; $6338: $5f
    rst $30                                       ; $6339: $f7
    ld e, a                                       ; $633a: $5f
    xor a                                         ; $633b: $af
    xor a                                         ; $633c: $af
    pop de                                        ; $633d: $d1
    add e                                         ; $633e: $83
    db $e3                                        ; $633f: $e3
    db $e3                                        ; $6340: $e3
    push bc                                       ; $6341: $c5
    push bc                                       ; $6342: $c5
    ld a, a                                       ; $6343: $7f
    push de                                       ; $6344: $d5
    push de                                       ; $6345: $d5
    ld [$fdea], a                                 ; $6346: $ea $ea $fd
    db $fd                                        ; $6349: $fd
    cp $bf                                        ; $634a: $fe $bf
    add b                                         ; $634c: $80
    ld l, h                                       ; $634d: $6c
    ld h, l                                       ; $634e: $65
    ld [c], a                                     ; $634f: $e2
    cpl                                           ; $6350: $2f
    and b                                         ; $6351: $a0
    rst $38                                       ; $6352: $ff
    rst $38                                       ; $6353: $ff
    ldh a, [$e3]                                  ; $6354: $f0 $e3
    dec d                                         ; $6356: $15
    dec d                                         ; $6357: $15
    ld d, e                                       ; $6358: $53
    pop hl                                        ; $6359: $e1
    rst $38                                       ; $635a: $ff
    call nc, $ead4                                ; $635b: $d4 $d4 $ea
    ld [$3d3d], a                                 ; $635e: $ea $3d $3d
    sbc a                                         ; $6361: $9f
    sbc a                                         ; $6362: $9f
    pop af                                        ; $6363: $f1
    ld e, a                                       ; $6364: $5f
    push bc                                       ; $6365: $c5
    ret nz                                        ; $6366: $c0

    xor $e1                                       ; $6367: $ee $e1
    sub a                                         ; $6369: $97
    add e                                         ; $636a: $83
    adc a                                         ; $636b: $8f
    adc a                                         ; $636c: $8f
    ld d, [hl]                                    ; $636d: $56
    ld d, [hl]                                    ; $636e: $56
    ld a, a                                       ; $636f: $7f
    db $eb                                        ; $6370: $eb
    db $eb                                        ; $6371: $eb
    rst $38                                       ; $6372: $ff
    rst $38                                       ; $6373: $ff
    dec b                                         ; $6374: $05
    dec b                                         ; $6375: $05
    cp $04                                        ; $6376: $fe $04
    db $e4                                        ; $6378: $e4
    rst $18                                       ; $6379: $df
    cp a                                          ; $637a: $bf
    cp a                                          ; $637b: $bf
    ld d, a                                       ; $637c: $57
    ld d, a                                       ; $637d: $57
    ei                                            ; $637e: $fb
    db $e3                                        ; $637f: $e3
    ret nz                                        ; $6380: $c0

    jr nz, @+$01                                  ; $6381: $20 $ff

    ld a, l                                       ; $6383: $7d
    ld d, b                                       ; $6384: $50
    ld [bc], a                                    ; $6385: $02
    ldh [$d4], a                                  ; $6386: $e0 $d4
    rst $38                                       ; $6388: $ff
    ld [$f7ff], a                                 ; $6389: $ea $ff $f7

Call_047_638c:
    ld [hl], h                                    ; $638c: $74
    ldh [$9d], a                                  ; $638d: $e0 $9d
    rst $30                                       ; $638f: $f7
    ld hl, $5048                                  ; $6390: $21 $48 $50
    rst $38                                       ; $6393: $ff
    xor b                                         ; $6394: $a8
    add sp, -$20                                  ; $6395: $e8 $e0
    ld de, $4249                                  ; $6397: $11 $49 $42
    db $d3                                        ; $639a: $d3
    rst $38                                       ; $639b: $ff
    xor c                                         ; $639c: $a9
    ret nz                                        ; $639d: $c0

    add [hl]                                      ; $639e: $86
    cp h                                          ; $639f: $bc
    add e                                         ; $63a0: $83
    db $fc                                        ; $63a1: $fc
    cp b                                          ; $63a2: $b8
    add d                                         ; $63a3: $82
    ld sp, hl                                     ; $63a4: $f9
    ld bc, $e1ff                                  ; $63a5: $01 $ff $e1
    ld bc, $01c4                                  ; $63a8: $01 $c4 $01
    adc l                                         ; $63ab: $8d
    ld bc, $013c                                  ; $63ac: $01 $3c $01
    rra                                           ; $63af: $1f
    ld a, l                                       ; $63b0: $7d
    ld bc, $ffab                                  ; $63b1: $01 $ab $ff
    rst $10                                       ; $63b4: $d7
    inc a                                         ; $63b5: $3c
    ret nz                                        ; $63b6: $c0

    ld hl, $bc83                                  ; $63b7: $21 $83 $bc
    add c                                         ; $63ba: $81
    rst $38                                       ; $63bb: $ff
    add sp, -$14                                  ; $63bc: $e8 $ec
    db $e3                                        ; $63be: $e3
    db $eb                                        ; $63bf: $eb
    di                                            ; $63c0: $f3
    di                                            ; $63c1: $f3
    ei                                            ; $63c2: $fb
    ei                                            ; $63c3: $fb
    rst $18                                       ; $63c4: $df
    rst $20                                       ; $63c5: $e7
    rst $20                                       ; $63c6: $e7
    sbc a                                         ; $63c7: $9f
    sbc a                                         ; $63c8: $9f
    ld a, a                                       ; $63c9: $7f
    ld d, e                                       ; $63ca: $53
    and b                                         ; $63cb: $a0
    pop hl                                        ; $63cc: $e1
    ldh [rIE], a                                  ; $63cd: $e0 $ff
    ld d, a                                       ; $63cf: $57
    ld d, b                                       ; $63d0: $50
    xor e                                         ; $63d1: $ab
    cp b                                          ; $63d2: $b8
    push de                                       ; $63d3: $d5
    db $fc                                        ; $63d4: $fc
    jp hl                                         ; $63d5: $e9


    db $fc                                        ; $63d6: $fc
    rst $08                                       ; $63d7: $cf
    or $fe                                        ; $63d8: $f6 $fe
    ld [$47fe], a                                 ; $63da: $ea $fe $47
    ret nz                                        ; $63dd: $c0

    or b                                          ; $63de: $b0
    ld a, [hl+]                                   ; $63df: $2a
    ld a, a                                       ; $63e0: $7f
    nop                                           ; $63e1: $00
    adc $a0                                       ; $63e2: $ce $a0
    add e                                         ; $63e4: $83
    ld e, a                                       ; $63e5: $5f
    rst $38                                       ; $63e6: $ff
    cp a                                          ; $63e7: $bf
    db $fc                                        ; $63e8: $fc
    db $e4                                        ; $63e9: $e4
    rst $10                                       ; $63ea: $d7
    ld h, l                                       ; $63eb: $65
    rst $30                                       ; $63ec: $f7
    rst $30                                       ; $63ed: $f7
    ld l, a                                       ; $63ee: $6f
    db $eb                                        ; $63ef: $eb
    db $eb                                        ; $63f0: $eb
    or a                                          ; $63f1: $b7
    or a                                          ; $63f2: $b7
    xor h                                         ; $63f3: $ac
    pop hl                                        ; $63f4: $e1
    ld a, [$36fa]                                 ; $63f5: $fa $fa $36
    pop bc                                        ; $63f8: $c1
    ld a, e                                       ; $63f9: $7b
    add l                                         ; $63fa: $85
    add l                                         ; $63fb: $85
    cp $a1                                        ; $63fc: $fe $a1
    rst $38                                       ; $63fe: $ff
    rst $38                                       ; $63ff: $ff
    ld e, [hl]                                    ; $6400: $5e
    ld e, [hl]                                    ; $6401: $5e
    ld a, [$ffa1]                                 ; $6402: $fa $a1 $ff
    pop af                                        ; $6405: $f1
    pop af                                        ; $6406: $f1
    ld l, e                                       ; $6407: $6b
    ld l, e                                       ; $6408: $6b
    rst $10                                       ; $6409: $d7
    rst $10                                       ; $640a: $d7
    rst $38                                       ; $640b: $ff
    rst $38                                       ; $640c: $ff
    rst $38                                       ; $640d: $ff
    and b                                         ; $640e: $a0
    and b                                         ; $640f: $a0
    cp a                                          ; $6410: $bf
    cp a                                          ; $6411: $bf
    ldh a, [$f0]                                  ; $6412: $f0 $f0
    pop hl                                        ; $6414: $e1
    pop hl                                        ; $6415: $e1
    ei                                            ; $6416: $fb
    jp z, $f2ca                                   ; $6417: $ca $ca $f2

    pop hl                                        ; $641a: $e1
    db $f4                                        ; $641b: $f4
    db $f4                                        ; $641c: $f4
    nop                                           ; $641d: $00

jr_047_641e:
    nop                                           ; $641e: $00
    xor a                                         ; $641f: $af
    rst $30                                       ; $6420: $f7
    xor a                                         ; $6421: $af
    rst $18                                       ; $6422: $df
    rst $18                                       ; $6423: $df
    adc b                                         ; $6424: $88
    pop hl                                        ; $6425: $e1
    db $f4                                        ; $6426: $f4
    db $f4                                        ; $6427: $f4
    xor b                                         ; $6428: $a8
    xor b                                         ; $6429: $a8
    ld a, [hl+]                                   ; $642a: $2a
    ret nc                                        ; $642b: $d0

    jp nz, Jump_000_1b57                          ; $642c: $c2 $57 $1b

    and b                                         ; $642f: $a0
    rst $18                                       ; $6430: $df
    pop bc                                        ; $6431: $c1
    ld l, d                                       ; $6432: $6a
    xor [hl]                                      ; $6433: $ae
    adc c                                         ; $6434: $89
    and b                                         ; $6435: $a0
    rst $28                                       ; $6436: $ef
    ret nz                                        ; $6437: $c0

    halt                                          ; $6438: $76
    xor l                                         ; $6439: $ad
    ld l, b                                       ; $643a: $68
    ld [hl], l                                    ; $643b: $75
    rst $38                                       ; $643c: $ff
    ret                                           ; $643d: $c9


    and e                                         ; $643e: $a3
    db $fd                                        ; $643f: $fd
    rst $38                                       ; $6440: $ff
    xor d                                         ; $6441: $aa
    jp $c483                                      ; $6442: $c3 $83 $c4


    sbc $e2                                       ; $6445: $de $e2
    ld hl, sp-$1f                                 ; $6447: $f8 $e1
    xor l                                         ; $6449: $ad
    add a                                         ; $644a: $87
    ld l, b                                       ; $644b: $68
    ld h, e                                       ; $644c: $63
    and d                                         ; $644d: $a2
    push af                                       ; $644e: $f5
    ret z                                         ; $644f: $c8

    ld hl, sp+$01                                 ; $6450: $f8 $01
    rst $38                                       ; $6452: $ff
    pop af                                        ; $6453: $f1
    ld [bc], a                                    ; $6454: $02
    ld a, [c]                                     ; $6455: $f2
    nop                                           ; $6456: $00
    pop af                                        ; $6457: $f1
    nop                                           ; $6458: $00
    db $e3                                        ; $6459: $e3
    nop                                           ; $645a: $00
    dec d                                         ; $645b: $15
    adc a                                         ; $645c: $8f
    jp c, Jump_000_3fa0                           ; $645d: $da $a0 $3f

    cp $e2                                        ; $6460: $fe $e2
    rra                                           ; $6462: $1f
    sub a                                         ; $6463: $97
    ld h, b                                       ; $6464: $60
    cp $e7                                        ; $6465: $fe $e7
    add b                                         ; $6467: $80
    ld h, e                                       ; $6468: $63
    cp h                                          ; $6469: $bc
    adc a                                         ; $646a: $8f
    and c                                         ; $646b: $a1
    adc e                                         ; $646c: $8b
    and d                                         ; $646d: $a2
    ld a, h                                       ; $646e: $7c
    ld d, b                                       ; $646f: $50
    ld h, b                                       ; $6470: $60
    inc hl                                        ; $6471: $23
    rst $30                                       ; $6472: $f7
    ld b, l                                       ; $6473: $45
    ld hl, sp-$41                                 ; $6474: $f8 $bf
    ld hl, sp-$7c                                 ; $6476: $f8 $84
    add e                                         ; $6478: $83
    ld b, b                                       ; $6479: $40
    ccf                                           ; $647a: $3f
    nop                                           ; $647b: $00
    jr jr_047_641e                                ; $647c: $18 $a0

    db $fc                                        ; $647e: $fc
    rst $18                                       ; $647f: $df
    db $fd                                        ; $6480: $fd
    ldh a, [$f3]                                  ; $6481: $f0 $f3
    add b                                         ; $6483: $80
    adc a                                         ; $6484: $8f
    ld bc, $fd80                                  ; $6485: $01 $80 $fd
    nop                                           ; $6488: $00
    rlca                                          ; $6489: $07
    ei                                            ; $648a: $fb

jr_047_648b:
    nop                                           ; $648b: $00
    rst $30                                       ; $648c: $f7
    rst $30                                       ; $648d: $f7
    ld h, h                                       ; $648e: $64
    db $fc                                        ; $648f: $fc
    and $4c                                       ; $6490: $e6 $4c
    and $fe                                       ; $6492: $e6 $fe
    ld c, e                                       ; $6494: $4b
    cp c                                          ; $6495: $b9
    xor c                                         ; $6496: $a9
    ld d, l                                       ; $6497: $55
    db $eb                                        ; $6498: $eb
    ret                                           ; $6499: $c9


    add d                                         ; $649a: $82
    rst $30                                       ; $649b: $f7
    db $dd                                        ; $649c: $dd
    ld c, b                                       ; $649d: $48
    ld e, [hl]                                    ; $649e: $5e
    pop de                                        ; $649f: $d1
    ld c, b                                       ; $64a0: $48
    cp a                                          ; $64a1: $bf
    dec bc                                        ; $64a2: $0b
    add b                                         ; $64a3: $80
    jp hl                                         ; $64a4: $e9


    xor e                                         ; $64a5: $ab
    add c                                         ; $64a6: $81
    ld b, h                                       ; $64a7: $44
    jr nz, jr_047_648b                            ; $64a8: $20 $e1

    or a                                          ; $64aa: $b7
    sbc e                                         ; $64ab: $9b
    add [hl]                                      ; $64ac: $86
    cp $ff                                        ; $64ad: $fe $ff
    ld d, l                                       ; $64af: $55
    ld [hl-], a                                   ; $64b0: $32
    inc sp                                        ; $64b1: $33
    ld h, b                                       ; $64b2: $60
    ld d, a                                       ; $64b3: $57
    inc c                                         ; $64b4: $0c
    ldh [rIE], a                                  ; $64b5: $e0 $ff
    nop                                           ; $64b7: $00
    rst $38                                       ; $64b8: $ff
    push de                                       ; $64b9: $d5
    di                                            ; $64ba: $f3
    ld h, b                                       ; $64bb: $60
    ld a, c                                       ; $64bc: $79
    add c                                         ; $64bd: $81
    sub d                                         ; $64be: $92
    and $c1                                       ; $64bf: $e6 $c1
    ld d, l                                       ; $64c1: $55
    db $e3                                        ; $64c2: $e3
    ld h, b                                       ; $64c3: $60
    jp nz, Jump_047_5021                          ; $64c4: $c2 $21 $50

    rst $18                                       ; $64c7: $df
    ld h, b                                       ; $64c8: $60
    ldh a, [$c3]                                  ; $64c9: $f0 $c3
    xor d                                         ; $64cb: $aa
    sub b                                         ; $64cc: $90
    ld e, l                                       ; $64cd: $5d
    add b                                         ; $64ce: $80
    inc d                                         ; $64cf: $14
    ld hl, $c3e0                                  ; $64d0: $21 $e0 $c3
    ld b, l                                       ; $64d3: $45
    and l                                         ; $64d4: $a5
    dec d                                         ; $64d5: $15
    and [hl]                                      ; $64d6: $a6
    and $20                                       ; $64d7: $e6 $20
    ld b, e                                       ; $64d9: $43
    ld d, a                                       ; $64da: $57
    cp a                                          ; $64db: $bf
    rst $38                                       ; $64dc: $ff
    rst $38                                       ; $64dd: $ff
    ld [bc], a                                    ; $64de: $02
    ld a, [c]                                     ; $64df: $f2
    ld bc, $cdf1                                  ; $64e0: $01 $f1 $cd
    ld h, b                                       ; $64e3: $60
    ldh a, [$3b]                                  ; $64e4: $f0 $3b
    nop                                           ; $64e6: $00
    ld hl, sp-$2d                                 ; $64e7: $f8 $d3
    and d                                         ; $64e9: $a2
    rst $38                                       ; $64ea: $ff
    nop                                           ; $64eb: $00
    rrca                                          ; $64ec: $0f
    cp $e1                                        ; $64ed: $fe $e1
    jr nz, @-$1e                                  ; $64ef: $20 $e0

    ld sp, hl                                     ; $64f1: $f9
    rrca                                          ; $64f2: $0f
    call c, Call_047_50c2                         ; $64f3: $dc $c2 $50
    ld h, b                                       ; $64f6: $60
    rra                                           ; $64f7: $1f
    rst $18                                       ; $64f8: $df
    rra                                           ; $64f9: $1f
    rst $18                                       ; $64fa: $df
    rrca                                          ; $64fb: $0f
    rra                                           ; $64fc: $1f
    rst $28                                       ; $64fd: $ef
    rrca                                          ; $64fe: $0f
    rst $28                                       ; $64ff: $ef
    rlca                                          ; $6500: $07
    rst $30                                       ; $6501: $f7
    cp $e1                                        ; $6502: $fe $e1
    ret z                                         ; $6504: $c8

    and e                                         ; $6505: $a3
    ld [de], a                                    ; $6506: $12
    add e                                         ; $6507: $83
    rst $38                                       ; $6508: $ff
    db $fd                                        ; $6509: $fd
    db $fd                                        ; $650a: $fd
    ei                                            ; $650b: $fb
    ei                                            ; $650c: $fb
    rst $08                                       ; $650d: $cf
    rst $08                                       ; $650e: $cf
    ccf                                           ; $650f: $3f
    ccf                                           ; $6510: $3f
    ld c, b                                       ; $6511: $48
    ld b, b                                       ; $6512: $40
    pop bc                                        ; $6513: $c1
    ld a, [$c765]                                 ; $6514: $fa $65 $c7
    ld h, $55                                     ; $6517: $26 $55
    ld h, b                                       ; $6519: $60
    jp nz, $e548                                  ; $651a: $c2 $48 $e5

    db $eb                                        ; $651d: $eb
    ldh a, [$e2]                                  ; $651e: $f0 $e2
    ld [$e1ec], sp                                ; $6520: $08 $ec $e1
    xor l                                         ; $6523: $ad
    jr nz, jr_047_655e                            ; $6524: $20 $38

    ldh [$a0], a                                  ; $6526: $e0 $a0
    db $f4                                        ; $6528: $f4
    db $e4                                        ; $6529: $e4
    ret c                                         ; $652a: $d8

    pop hl                                        ; $652b: $e1
    db $fc                                        ; $652c: $fc
    ld bc, $e1f0                                  ; $652d: $01 $f0 $e1
    ld l, $20                                     ; $6530: $2e $20
    pop hl                                        ; $6532: $e1
    ld a, [$54ff]                                 ; $6533: $fa $ff $54
    call z, $0504                                 ; $6536: $cc $04 $05
    inc h                                         ; $6539: $24
    ret nz                                        ; $653a: $c0

    inc d                                         ; $653b: $14
    db $e3                                        ; $653c: $e3
    ld [bc], a                                    ; $653d: $02
    xor c                                         ; $653e: $a9
    ld b, c                                       ; $653f: $41
    ld a, [hl+]                                   ; $6540: $2a
    inc b                                         ; $6541: $04
    ldh [rNR14], a                                ; $6542: $e0 $14
    db $e3                                        ; $6544: $e3
    db $10                                        ; $6545: $10
    jp $80d4                                      ; $6546: $c3 $d4 $80


    inc b                                         ; $6549: $04
    call nz, $e5b8                                ; $654a: $c4 $b8 $e5
    add l                                         ; $654d: $85
    rst $38                                       ; $654e: $ff
    jp z, $eac2                                   ; $654f: $ca $c2 $ea

    cp h                                          ; $6552: $bc
    ld [c], a                                     ; $6553: $e2
    ld b, d                                       ; $6554: $42
    dec h                                         ; $6555: $25
    adc [hl]                                      ; $6556: $8e
    and b                                         ; $6557: $a0
    call z, $bfc0                                 ; $6558: $cc $c0 $bf
    ldh [rNR23], a                                ; $655b: $e0 $18
    pop hl                                        ; $655d: $e1

jr_047_655e:
    ld l, b                                       ; $655e: $68
    ld [$2962], a                                 ; $655f: $ea $62 $29
    dec a                                         ; $6562: $3d
    ld h, a                                       ; $6563: $67
    inc c                                         ; $6564: $0c
    ld [hl+], a                                   ; $6565: $22
    rlca                                          ; $6566: $07
    rst $30                                       ; $6567: $f7
    inc bc                                        ; $6568: $03
    cp a                                          ; $6569: $bf
    ld a, [$f903]                                 ; $656a: $fa $03 $f9
    nop                                           ; $656d: $00
    ld hl, sp+$03                                 ; $656e: $f8 $03
    cp $e0                                        ; $6570: $fe $e0
    ld bc, $fcff                                  ; $6572: $01 $ff $fc
    dec d                                         ; $6575: $15
    add sp, -$05                                  ; $6576: $e8 $fb
    db $d3                                        ; $6578: $d3

jr_047_6579:
    ei                                            ; $6579: $fb
    xor e                                         ; $657a: $ab
    rst $00                                       ; $657b: $c7
    rst $30                                       ; $657c: $f7
    ld b, a                                       ; $657d: $47
    scf                                           ; $657e: $37
    rlca                                          ; $657f: $07
    ret z                                         ; $6580: $c8

    jr nz, @-$16                                  ; $6581: $20 $e8

    rst $20                                       ; $6583: $e7
    nop                                           ; $6584: $00
    rst $28                                       ; $6585: $ef
    ld sp, hl                                     ; $6586: $f9
    nop                                           ; $6587: $00
    jr jr_047_65eb                                ; $6588: $18 $61

    inc d                                         ; $658a: $14
    ld h, c                                       ; $658b: $61
    ld c, $0e                                     ; $658c: $0e $0e
    di                                            ; $658e: $f3
    inc bc                                        ; $658f: $03
    db $fc                                        ; $6590: $fc
    ld b, a                                       ; $6591: $47
    ldh a, [rIE]                                  ; $6592: $f0 $ff
    jr c, jr_047_6579                             ; $6594: $38 $e3

    adc d                                         ; $6596: $8a
    db $f4                                        ; $6597: $f4
    and b                                         ; $6598: $a0
    ld l, b                                       ; $6599: $68
    db $e4                                        ; $659a: $e4
    ld [$12ff], a                                 ; $659b: $ea $ff $12
    cp $e0                                        ; $659e: $fe $e0
    add b                                         ; $65a0: $80
    ld a, [hl+]                                   ; $65a1: $2a
    call nc, $aa55                                ; $65a2: $d4 $55 $aa
    ld a, [hl+]                                   ; $65a5: $2a
    push de                                       ; $65a6: $d5
    dec d                                         ; $65a7: $15
    db $fd                                        ; $65a8: $fd
    ld [$85a9], a                                 ; $65a9: $ea $a9 $85
    rra                                           ; $65ac: $1f
    nop                                           ; $65ad: $00
    ld e, a                                       ; $65ae: $5f
    add b                                         ; $65af: $80
    sbc a                                         ; $65b0: $9f
    ld b, b                                       ; $65b1: $40
    ld c, a                                       ; $65b2: $4f
    ld c, b                                       ; $65b3: $48
    and b                                         ; $65b4: $a0
    and a                                         ; $65b5: $a7
    ld d, b                                       ; $65b6: $50
    ld a, [hl]                                    ; $65b7: $7e
    ret nz                                        ; $65b8: $c0

    nop                                           ; $65b9: $00
    ld h, $01                                     ; $65ba: $26 $01
    ld [hl], e                                    ; $65bc: $73
    and b                                         ; $65bd: $a0
    inc a                                         ; $65be: $3c
    ei                                            ; $65bf: $fb
    ldh [$83], a                                  ; $65c0: $e0 $83
    add b                                         ; $65c2: $80
    jr z, @+$59                                   ; $65c3: $28 $57

    ld d, b                                       ; $65c5: $50
    cpl                                           ; $65c6: $2f
    db $fc                                        ; $65c7: $fc
    pop hl                                        ; $65c8: $e1
    ld h, c                                       ; $65c9: $61
    ld h, b                                       ; $65ca: $60
    nop                                           ; $65cb: $00
    ldh [$03], a                                  ; $65cc: $e0 $03
    xor b                                         ; $65ce: $a8
    pop bc                                        ; $65cf: $c1
    ld a, [bc]                                    ; $65d0: $0a
    and c                                         ; $65d1: $a1
    cp d                                          ; $65d2: $ba
    pop bc                                        ; $65d3: $c1
    or [hl]                                       ; $65d4: $b6
    pop bc                                        ; $65d5: $c1
    ldh a, [$e7]                                  ; $65d6: $f0 $e7
    and [hl]                                      ; $65d8: $a6
    jp $c39e                                      ; $65d9: $c3 $9e $c3


    nop                                           ; $65dc: $00
    ldh a, [$eb]                                  ; $65dd: $f0 $eb
    call nz, $e081                                ; $65df: $c4 $81 $e0
    jp hl                                         ; $65e2: $e9


    call c, Call_047_6ee7                         ; $65e3: $dc $e7 $6e
    jp Jump_047_418d                              ; $65e6: $c3 $8d $41


    xor h                                         ; $65e9: $ac
    push hl                                       ; $65ea: $e5

jr_047_65eb:
    ld d, h                                       ; $65eb: $54
    ld b, c                                       ; $65ec: $41
    sub h                                         ; $65ed: $94
    or b                                          ; $65ee: $b0
    jp hl                                         ; $65ef: $e9


    sub b                                         ; $65f0: $90
    rst $20                                       ; $65f1: $e7
    push af                                       ; $65f2: $f5
    adc h                                         ; $65f3: $8c
    and $00                                       ; $65f4: $e6 $00
    sub d                                         ; $65f6: $92
    and d                                         ; $65f7: $a2
    ld a, b                                       ; $65f8: $78
    and c                                         ; $65f9: $a1
    ld bc, $3280                                  ; $65fa: $01 $80 $32
    jp nz, $a382                                  ; $65fd: $c2 $82 $a3

    ld l, b                                       ; $6600: $68
    and c                                         ; $6601: $a1
    ld l, h                                       ; $6602: $6c
    db $e3                                        ; $6603: $e3
    call c, $f0e3                                 ; $6604: $dc $e3 $f0
    rst $20                                       ; $6607: $e7
    ret nc                                        ; $6608: $d0

    rst $20                                       ; $6609: $e7
    ld d, b                                       ; $660a: $50

jr_047_660b:
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    rst $38                                       ; $660e: $ff
    nop                                           ; $660f: $00
    ld bc, $0302                                  ; $6610: $01 $02 $03
    inc b                                         ; $6613: $04
    dec b                                         ; $6614: $05
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    rst $38                                       ; $6617: $ff
    nop                                           ; $6618: $00
    ld b, $07                                     ; $6619: $06 $07
    ld [$0a09], sp                                ; $661b: $08 $09 $0a
    dec bc                                        ; $661e: $0b
    inc c                                         ; $661f: $0c
    adc a                                         ; $6620: $8f
    dec c                                         ; $6621: $0d
    ld c, $0f                                     ; $6622: $0e $0f
    db $10                                        ; $6624: $10
    ld a, [c]                                     ; $6625: $f2
    ldh [rIE], a                                  ; $6626: $e0 $ff
    rst $38                                       ; $6628: $ff
    push hl                                       ; $6629: $e5
    db $e4                                        ; $662a: $e4
    ld de, $127f                                  ; $662b: $11 $7f $12
    inc de                                        ; $662e: $13
    inc d                                         ; $662f: $14
    dec d                                         ; $6630: $15
    ld d, $17                                     ; $6631: $16 $17
    jr jr_047_660b                                ; $6633: $18 $d6

    pop hl                                        ; $6635: $e1
    ld [hl], e                                    ; $6636: $73
    add hl, de                                    ; $6637: $19
    ld a, [de]                                    ; $6638: $1a
    ret nc                                        ; $6639: $d0

    rst $38                                       ; $663a: $ff
    xor $ed                                       ; $663b: $ee $ed
    dec de                                        ; $663d: $1b
    inc e                                         ; $663e: $1c
    dec de                                        ; $663f: $1b
    rst $38                                       ; $6640: $ff
    ldh [$7b], a                                  ; $6641: $e0 $7b
    dec e                                         ; $6643: $1d
    ld e, $fa                                     ; $6644: $1e $fa
    pop hl                                        ; $6646: $e1
    rra                                           ; $6647: $1f
    jr nz, jr_047_666b                            ; $6648: $20 $21

    ld [hl+], a                                   ; $664a: $22
    ld a, [c]                                     ; $664b: $f2

jr_047_664c:
    pop hl                                        ; $664c: $e1
    call nz, $ffca                                ; $664d: $c4 $ca $ff
    add sp, -$19                                  ; $6650: $e8 $e7
    inc hl                                        ; $6652: $23
    rst $38                                       ; $6653: $ff
    ldh a, [$ca]                                  ; $6654: $f0 $ca
    rst $38                                       ; $6656: $ff
    add sp, -$19                                  ; $6657: $e8 $e7
    inc h                                         ; $6659: $24
    dec h                                         ; $665a: $25
    call $ff26                                    ; $665b: $cd $26 $ff
    db $ec                                        ; $665e: $ec
    daa                                           ; $665f: $27
    jr z, @-$34                                   ; $6660: $28 $ca

    rst $38                                       ; $6662: $ff
    add sp, -$19                                  ; $6663: $e8 $e7
    add hl, hl                                    ; $6665: $29
    ld a, [hl+]                                   ; $6666: $2a
    cp l                                          ; $6667: $bd
    dec hl                                        ; $6668: $2b
    rst $38                                       ; $6669: $ff
    ld [c], a                                     ; $666a: $e2

jr_047_666b:
    inc l                                         ; $666b: $2c
    dec l                                         ; $666c: $2d
    ld l, $2f                                     ; $666d: $2e $2f
    or $e3                                        ; $666f: $f6 $e3
    jr nc, jr_047_664c                            ; $6671: $30 $d9

    add hl, hl                                    ; $6673: $29
    jp z, $c0ff                                   ; $6674: $ca $ff $c0

    add sp, $29                                   ; $6677: $e8 $29
    ld sp, $e2bf                                  ; $6679: $31 $bf $e2
    ld [hl-], a                                   ; $667c: $32
    inc sp                                        ; $667d: $33
    ld [hl], a                                    ; $667e: $77
    inc [hl]                                      ; $667f: $34
    dec [hl]                                      ; $6680: $35
    ld [hl], $b5                                  ; $6681: $36 $b5
    ldh [$37], a                                  ; $6683: $e0 $37
    jr c, jr_047_66c0                             ; $6685: $38 $39

    ret nz                                        ; $6687: $c0

    rst $38                                       ; $6688: $ff
    cp [hl]                                       ; $6689: $be
    jp hl                                         ; $668a: $e9


    add sp, $3a                                   ; $668b: $e8 $3a
    dec sp                                        ; $668d: $3b
    inc a                                         ; $668e: $3c
    dec a                                         ; $668f: $3d
    scf                                           ; $6690: $37
    ld a, l                                       ; $6691: $7d
    ldh [$3e], a                                  ; $6692: $e0 $3e
    rst $38                                       ; $6694: $ff
    ccf                                           ; $6695: $3f
    ld b, b                                       ; $6696: $40
    ld b, c                                       ; $6697: $41
    ld b, d                                       ; $6698: $42
    ld b, e                                       ; $6699: $43
    dec hl                                        ; $669a: $2b
    ld b, h                                       ; $669b: $44
    ld b, l                                       ; $669c: $45
    rst $20                                       ; $669d: $e7
    ld b, [hl]                                    ; $669e: $46
    ld b, a                                       ; $669f: $47
    ld c, b                                       ; $66a0: $48
    jp z, $e8ff                                   ; $66a1: $ca $ff $e8

    rst $20                                       ; $66a4: $e7
    ld c, c                                       ; $66a5: $49
    ld c, d                                       ; $66a6: $4a
    ld c, e                                       ; $66a7: $4b
    ei                                            ; $66a8: $fb
    ld c, h                                       ; $66a9: $4c
    ld c, l                                       ; $66aa: $4d
    dec a                                         ; $66ab: $3d
    ldh [$4e], a                                  ; $66ac: $e0 $4e
    ld c, a                                       ; $66ae: $4f
    ld d, b                                       ; $66af: $50
    ld d, c                                       ; $66b0: $51
    ld d, d                                       ; $66b1: $52
    ld a, a                                       ; $66b2: $7f
    ld d, e                                       ; $66b3: $53
    ld d, h                                       ; $66b4: $54
    add hl, hl                                    ; $66b5: $29
    ld d, l                                       ; $66b6: $55
    ld d, [hl]                                    ; $66b7: $56
    ld c, d                                       ; $66b8: $4a
    ld d, a                                       ; $66b9: $57
    jp z, $feff                                   ; $66ba: $ca $ff $fe

    add sp, -$19                                  ; $66bd: $e8 $e7
    ld e, b                                       ; $66bf: $58

jr_047_66c0:
    ld e, c                                       ; $66c0: $59
    ld e, d                                       ; $66c1: $5a
    ld e, e                                       ; $66c2: $5b
    ld e, h                                       ; $66c3: $5c
    ld e, l                                       ; $66c4: $5d
    ld e, [hl]                                    ; $66c5: $5e
    rst $38                                       ; $66c6: $ff
    ld e, a                                       ; $66c7: $5f
    ld h, b                                       ; $66c8: $60
    ld h, c                                       ; $66c9: $61
    ld h, d                                       ; $66ca: $62
    ld h, e                                       ; $66cb: $63
    ld h, h                                       ; $66cc: $64
    ld h, l                                       ; $66cd: $65
    ld h, [hl]                                    ; $66ce: $66
    sbc a                                         ; $66cf: $9f
    ld h, a                                       ; $66d0: $67
    ld l, b                                       ; $66d1: $68
    ld l, c                                       ; $66d2: $69
    ld l, d                                       ; $66d3: $6a
    ld l, e                                       ; $66d4: $6b
    jp z, $e8ff                                   ; $66d5: $ca $ff $e8

    rst $20                                       ; $66d8: $e7
    ld l, h                                       ; $66d9: $6c
    rst $38                                       ; $66da: $ff
    ld l, l                                       ; $66db: $6d
    ld l, [hl]                                    ; $66dc: $6e
    ld l, a                                       ; $66dd: $6f
    ld [hl], b                                    ; $66de: $70
    dec hl                                        ; $66df: $2b
    dec hl                                        ; $66e0: $2b
    ld [hl], c                                    ; $66e1: $71
    ld [hl], d                                    ; $66e2: $72
    rst $38                                       ; $66e3: $ff
    ld [hl], e                                    ; $66e4: $73
    ld [hl], h                                    ; $66e5: $74
    ld [hl], l                                    ; $66e6: $75
    halt                                          ; $66e7: $76
    ld [hl], a                                    ; $66e8: $77
    ld a, b                                       ; $66e9: $78
    ld a, c                                       ; $66ea: $79
    ld a, d                                       ; $66eb: $7a
    rst $20                                       ; $66ec: $e7
    ld a, e                                       ; $66ed: $7b
    ld a, h                                       ; $66ee: $7c
    ld a, l                                       ; $66ef: $7d
    jp z, $e8ff                                   ; $66f0: $ca $ff $e8

    rst $20                                       ; $66f3: $e7
    ld a, [hl]                                    ; $66f4: $7e
    ld a, a                                       ; $66f5: $7f
    add b                                         ; $66f6: $80
    rst $38                                       ; $66f7: $ff
    add c                                         ; $66f8: $81
    add d                                         ; $66f9: $82
    dec hl                                        ; $66fa: $2b
    dec hl                                        ; $66fb: $2b
    add e                                         ; $66fc: $83
    add h                                         ; $66fd: $84
    dec hl                                        ; $66fe: $2b
    add l                                         ; $66ff: $85
    rst $38                                       ; $6700: $ff
    add [hl]                                      ; $6701: $86
    add a                                         ; $6702: $87
    ld [hl], a                                    ; $6703: $77
    adc b                                         ; $6704: $88
    adc c                                         ; $6705: $89
    adc d                                         ; $6706: $8a
    adc e                                         ; $6707: $8b
    adc h                                         ; $6708: $8c
    ld sp, hl                                     ; $6709: $f9
    adc l                                         ; $670a: $8d
    jp z, $e8ff                                   ; $670b: $ca $ff $e8

    rst $20                                       ; $670e: $e7
    adc [hl]                                      ; $670f: $8e
    adc a                                         ; $6710: $8f
    sub b                                         ; $6711: $90
    sub c                                         ; $6712: $91
    sub d                                         ; $6713: $92
    cp l                                          ; $6714: $bd
    sub e                                         ; $6715: $93
    inc a                                         ; $6716: $3c
    pop bc                                        ; $6717: $c1
    sub h                                         ; $6718: $94
    sub l                                         ; $6719: $95
    sub [hl]                                      ; $671a: $96
    sub a                                         ; $671b: $97
    inc [hl]                                      ; $671c: $34
    pop bc                                        ; $671d: $c1
    add d                                         ; $671e: $82
    ret                                           ; $671f: $c9


    sbc b                                         ; $6720: $98
    jp z, $e8ff                                   ; $6721: $ca $ff $e8

    rst $20                                       ; $6724: $e7
    sbc c                                         ; $6725: $99
    ld bc, $fbc3                                  ; $6726: $01 $c3 $fb
    and b                                         ; $6729: $a0
    sbc d                                         ; $672a: $9a
    sbc e                                         ; $672b: $9b
    res 3, h                                      ; $672c: $cb $9c
    sbc l                                         ; $672e: $9d
    db $f4                                        ; $672f: $f4
    and d                                         ; $6730: $a2
    add d                                         ; $6731: $82
    jp z, $e8ff                                   ; $6732: $ca $ff $e8

    rst $20                                       ; $6735: $e7
    sbc [hl]                                      ; $6736: $9e
    sbc a                                         ; $6737: $9f
    xor l                                         ; $6738: $ad
    and b                                         ; $6739: $a0
    rst $38                                       ; $673a: $ff
    ldh [$a1], a                                  ; $673b: $e0 $a1
    and d                                         ; $673d: $a2
    rst $38                                       ; $673e: $ff
    pop hl                                        ; $673f: $e1
    and e                                         ; $6740: $a3
    push af                                       ; $6741: $f5
    pop hl                                        ; $6742: $e1
    and b                                         ; $6743: $a0
    ld [hl], e                                    ; $6744: $73
    and h                                         ; $6745: $a4
    and l                                         ; $6746: $a5
    jp z, $e8ff                                   ; $6747: $ca $ff $e8

    rst $20                                       ; $674a: $e7
    and [hl]                                      ; $674b: $a6
    and a                                         ; $674c: $a7
    xor b                                         ; $674d: $a8
    rst $38                                       ; $674e: $ff
    db $ed                                        ; $674f: $ed
    ld bc, $caa9                                  ; $6750: $01 $a9 $ca
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    rst $38                                       ; $6759: $ff
    rst $38                                       ; $675a: $ff
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    nop                                           ; $6760: $00
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    nop                                           ; $6771: $00
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    nop                                           ; $6782: $00
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    nop                                           ; $6793: $00
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    rst $38                                       ; $679c: $ff
    rst $38                                       ; $679d: $ff
    rst $38                                       ; $679e: $ff
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    rst $38                                       ; $67a3: $ff
    nop                                           ; $67a4: $00
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    nop                                           ; $67b5: $00
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    nop                                           ; $67c6: $00
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    nop                                           ; $67d7: $00
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    nop                                           ; $67e8: $00
    rst $38                                       ; $67e9: $ff
    rst $38                                       ; $67ea: $ff
    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    rst $38                                       ; $67ed: $ff
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff
    rst $38                                       ; $67f4: $ff
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    rst $38                                       ; $67f8: $ff
    nop                                           ; $67f9: $00
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
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
    nop                                           ; $680a: $00
    rst $38                                       ; $680b: $ff
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    di                                            ; $6814: $f3
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    ld bc, $ff0a                                  ; $6818: $01 $0a $ff
    rst $38                                       ; $681b: $ff
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    rst $38                                       ; $6822: $ff
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    rst $38                                       ; $6826: $ff
    rst $38                                       ; $6827: $ff
    adc b                                         ; $6828: $88
    rst $38                                       ; $6829: $ff
    rst $38                                       ; $682a: $ff
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    di                                            ; $682d: $f3
    ld a, [c]                                     ; $682e: $f2
    inc c                                         ; $682f: $0c
    rst $38                                       ; $6830: $ff
    ldh [$da], a                                  ; $6831: $e0 $da
    rst $38                                       ; $6833: $ff
    ret nz                                        ; $6834: $c0

    ld hl, sp+$08                                 ; $6835: $f8 $08
    ld l, c                                       ; $6837: $69
    ld [$ffbf], sp                                ; $6838: $08 $bf $ff
    push af                                       ; $683b: $f5
    db $f4                                        ; $683c: $f4
    ld a, [hl+]                                   ; $683d: $2a
    ret nz                                        ; $683e: $c0

    db $e3                                        ; $683f: $e3
    dec c                                         ; $6840: $0d
    ld [$ffbf], sp                                ; $6841: $08 $bf $ff
    ld h, b                                       ; $6844: $60
    ld b, b                                       ; $6845: $40
    ld a, [$e3c0]                                 ; $6846: $fa $c0 $e3
    or d                                          ; $6849: $b2
    pop hl                                        ; $684a: $e1
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    xor $ed                                       ; $684d: $ee $ed
    dec bc                                        ; $684f: $0b
    dec bc                                        ; $6850: $0b
    cp $df                                        ; $6851: $fe $df
    ld [$f1f2], a                                 ; $6853: $ea $f2 $f1
    rrca                                          ; $6856: $0f
    rst $38                                       ; $6857: $ff
    pop hl                                        ; $6858: $e1
    add hl, bc                                    ; $6859: $09
    rst $38                                       ; $685a: $ff
    pop hl                                        ; $685b: $e1
    dec c                                         ; $685c: $0d
    ld [$4508], sp                                ; $685d: $08 $08 $45
    add hl, bc                                    ; $6860: $09
    ld a, [c]                                     ; $6861: $f2
    ld [c], a                                     ; $6862: $e2
    rrca                                          ; $6863: $0f
    jp z, $c0ff                                   ; $6864: $ca $ff $c0

    pop af                                        ; $6867: $f1
    cp e                                          ; $6868: $bb
    ldh [rOBP1], a                                ; $6869: $e0 $49
    ret nz                                        ; $686b: $c0

    rst $38                                       ; $686c: $ff
    ld [$f280], sp                                ; $686d: $08 $80 $f2
    cp a                                          ; $6870: $bf
    and $77                                       ; $6871: $e6 $77
    pop hl                                        ; $6873: $e1
    ld l, a                                       ; $6874: $6f
    ret nz                                        ; $6875: $c0

    rst $38                                       ; $6876: $ff
    ld b, b                                       ; $6877: $40
    jp hl                                         ; $6878: $e9


    push bc                                       ; $6879: $c5
    jp hl                                         ; $687a: $e9


    ld a, b                                       ; $687b: $78
    db $e3                                        ; $687c: $e3
    ld bc, $ca2f                                  ; $687d: $01 $2f $ca
    rst $38                                       ; $6880: $ff
    add b                                         ; $6881: $80
    db $ed                                        ; $6882: $ed
    ld a, [$caeb]                                 ; $6883: $fa $eb $ca
    rst $38                                       ; $6886: $ff
    ret nz                                        ; $6887: $c0

    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    rst $38                                       ; $688a: $ff
    ret nz                                        ; $688b: $c0

    rst $38                                       ; $688c: $ff
    nop                                           ; $688d: $00
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    ret nz                                        ; $6890: $c0

    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    rst $38                                       ; $6893: $ff
    rst $38                                       ; $6894: $ff
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    rst $38                                       ; $689a: $ff
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    rst $38                                       ; $689d: $ff
    nop                                           ; $689e: $00
    rst $38                                       ; $689f: $ff
    rst $38                                       ; $68a0: $ff
    rst $38                                       ; $68a1: $ff
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    rst $38                                       ; $68a7: $ff
    rst $38                                       ; $68a8: $ff
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff
    nop                                           ; $68af: $00
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    rst $38                                       ; $68b2: $ff
    rst $38                                       ; $68b3: $ff
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    nop                                           ; $68c0: $00
    rst $38                                       ; $68c1: $ff
    rst $38                                       ; $68c2: $ff
    rst $38                                       ; $68c3: $ff
    rst $38                                       ; $68c4: $ff
    rst $38                                       ; $68c5: $ff
    rst $38                                       ; $68c6: $ff
    rst $38                                       ; $68c7: $ff
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    nop                                           ; $68d1: $00
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    nop                                           ; $68e2: $00
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    nop                                           ; $68f3: $00
    rst $38                                       ; $68f4: $ff
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    nop                                           ; $6904: $00
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    nop                                           ; $6915: $00
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    rst $38                                       ; $6925: $ff
    nop                                           ; $6926: $00
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    rst $38                                       ; $692c: $ff
    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    rst $38                                       ; $6933: $ff
    rst $38                                       ; $6934: $ff
    rst $38                                       ; $6935: $ff
    rst $38                                       ; $6936: $ff
    nop                                           ; $6937: $00
    rst $38                                       ; $6938: $ff
    rst $38                                       ; $6939: $ff
    rst $38                                       ; $693a: $ff
    rst $38                                       ; $693b: $ff
    rst $38                                       ; $693c: $ff
    rst $38                                       ; $693d: $ff
    rst $38                                       ; $693e: $ff
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    rst $38                                       ; $6942: $ff
    rst $38                                       ; $6943: $ff
    rst $38                                       ; $6944: $ff
    rst $38                                       ; $6945: $ff
    rst $38                                       ; $6946: $ff
    rst $38                                       ; $6947: $ff
    nop                                           ; $6948: $00
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    rst $28                                       ; $694c: $ef
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    ccf                                           ; $6952: $3f
    ccf                                           ; $6953: $3f
    rst $38                                       ; $6954: $ff
    ld a, a                                       ; $6955: $7f
    rra                                           ; $6956: $1f
    dec d                                         ; $6957: $15
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    db $ec                                        ; $695a: $ec
    nop                                           ; $695b: $00
    daa                                           ; $695c: $27
    ld [bc], a                                    ; $695d: $02
    rst $38                                       ; $695e: $ff
    ld a, a                                       ; $695f: $7f
    daa                                           ; $6960: $27
    ld [bc], a                                    ; $6961: $02
    add b                                         ; $6962: $80
    ld a, [hl]                                    ; $6963: $7e
    cpl                                           ; $6964: $2f
    ld a, a                                       ; $6965: $7f
    ld h, b                                       ; $6966: $60
    ld bc, $0000                                  ; $6967: $01 $00 $00
    cpl                                           ; $696a: $2f
    ld a, a                                       ; $696b: $7f
    db $ec                                        ; $696c: $ec
    nop                                           ; $696d: $00
    rra                                           ; $696e: $1f
    dec d                                         ; $696f: $15
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    cpl                                           ; $6972: $2f
    ld a, a                                       ; $6973: $7f
    ccf                                           ; $6974: $3f
    ccf                                           ; $6975: $3f
    rra                                           ; $6976: $1f
    dec d                                         ; $6977: $15
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    rra                                           ; $697a: $1f
    dec d                                         ; $697b: $15
    ccf                                           ; $697c: $3f
    ccf                                           ; $697d: $3f
    db $ec                                        ; $697e: $ec
    nop                                           ; $697f: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    daa                                           ; $6982: $27
    ld [bc], a                                    ; $6983: $02
    ccf                                           ; $6984: $3f
    ccf                                           ; $6985: $3f
    rst $38                                       ; $6986: $ff
    ld a, a                                       ; $6987: $7f
    rst $30                                       ; $6988: $f7
    dec sp                                        ; $6989: $3b
    sub c                                         ; $698a: $91
    dec bc                                        ; $698b: $0b
    ld h, b                                       ; $698c: $60
    ld bc, $0227                                  ; $698d: $01 $27 $02
    db $db                                        ; $6990: $db
    rst $38                                       ; $6991: $ff
    nop                                           ; $6992: $00
    cp $f9                                        ; $6993: $fe $f9
    ld hl, sp+$07                                 ; $6995: $f8 $07
    ldh [$eb], a                                  ; $6997: $e0 $eb
    ccf                                           ; $6999: $3f
    ret nz                                        ; $699a: $c0

    ld a, [hl]                                    ; $699b: $7e
    ret nc                                        ; $699c: $d0

    rst $20                                       ; $699d: $e7
    push af                                       ; $699e: $f5
    ld a, [bc]                                    ; $699f: $0a
    cp $01                                        ; $69a0: $fe $01
    add sp, $17                                   ; $69a2: $e8 $17
    ret nz                                        ; $69a4: $c0

    push hl                                       ; $69a5: $e5
    rst $38                                       ; $69a6: $ff
    scf                                           ; $69a7: $37
    ret z                                         ; $69a8: $c8

    ld b, d                                       ; $69a9: $42
    cp l                                          ; $69aa: $bd
    or l                                          ; $69ab: $b5
    ld c, d                                       ; $69ac: $4a
    ld a, a                                       ; $69ad: $7f
    add b                                         ; $69ae: $80
    sbc $b0                                       ; $69af: $de $b0
    rst $20                                       ; $69b1: $e7
    rst $18                                       ; $69b2: $df
    jr nz, jr_047_6a24                            ; $69b3: $20 $6f

    sub b                                         ; $69b5: $90
    and d                                         ; $69b6: $a2
    db $e3                                        ; $69b7: $e3
    db $eb                                        ; $69b8: $eb
    inc d                                         ; $69b9: $14
    ei                                            ; $69ba: $fb
    db $fd                                        ; $69bb: $fd
    ld [bc], a                                    ; $69bc: $02
    sbc b                                         ; $69bd: $98
    push hl                                       ; $69be: $e5
    add sp, $17                                   ; $69bf: $e8 $17
    ld b, h                                       ; $69c1: $44
    cp e                                          ; $69c2: $bb
    and b                                         ; $69c3: $a0

jr_047_69c4:
    sbc a                                         ; $69c4: $9f
    ld e, a                                       ; $69c5: $5f
    ld d, h                                       ; $69c6: $54
    xor e                                         ; $69c7: $ab
    ld [$c015], a                                 ; $69c8: $ea $15 $c0
    pop hl                                        ; $69cb: $e1
    xor h                                         ; $69cc: $ac
    db $e3                                        ; $69cd: $e3
    rrca                                          ; $69ce: $0f
    rst $38                                       ; $69cf: $ff
    ldh a, [rSB]                                  ; $69d0: $f0 $01
    cp $a8                                        ; $69d2: $fe $a8
    ld d, a                                       ; $69d4: $57
    ld d, h                                       ; $69d5: $54
    xor e                                         ; $69d6: $ab
    ld a, [$05fd]                                 ; $69d7: $fa $fd $05
    ld [hl], d                                    ; $69da: $72
    push hl                                       ; $69db: $e5
    ld a, a                                       ; $69dc: $7f
    add b                                         ; $69dd: $80
    rlca                                          ; $69de: $07
    ld hl, sp+$43                                 ; $69df: $f8 $43
    cp h                                          ; $69e1: $bc
    rst $28                                       ; $69e2: $ef
    xor a                                         ; $69e3: $af
    ld d, b                                       ; $69e4: $50
    ld [hl], a                                    ; $69e5: $77
    adc b                                         ; $69e6: $88
    ld h, b                                       ; $69e7: $60
    rst $20                                       ; $69e8: $e7
    cp $01                                        ; $69e9: $fe $01
    rst $08                                       ; $69eb: $cf
    rst $30                                       ; $69ec: $f7
    jr nc, @+$03                                  ; $69ed: $30 $01

    cp $50                                        ; $69ef: $fe $50
    rst $20                                       ; $69f1: $e7
    ld a, a                                       ; $69f2: $7f
    add b                                         ; $69f3: $80
    rra                                           ; $69f4: $1f
    ldh [$e3], a                                  ; $69f5: $e0 $e3
    xor a                                         ; $69f7: $af
    ld d, b                                       ; $69f8: $50
    db $e4                                        ; $69f9: $e4
    push hl                                       ; $69fa: $e5
    or d                                          ; $69fb: $b2
    push hl                                       ; $69fc: $e5
    jr nc, @-$1d                                  ; $69fd: $30 $e1

    rst $20                                       ; $69ff: $e7
    jr jr_047_6a04                                ; $6a00: $18 $02

    rst $30                                       ; $6a02: $f7
    db $fd                                        ; $6a03: $fd

jr_047_6a04:
    ld d, l                                       ; $6a04: $55
    xor d                                         ; $6a05: $aa
    db $e4                                        ; $6a06: $e4
    push hl                                       ; $6a07: $e5
    rst $38                                       ; $6a08: $ff
    nop                                           ; $6a09: $00
    db $fc                                        ; $6a0a: $fc
    inc bc                                        ; $6a0b: $03
    ei                                            ; $6a0c: $fb
    pop de                                        ; $6a0d: $d1
    ld l, $a4                                     ; $6a0e: $2e $a4
    push hl                                       ; $6a10: $e5
    rst $18                                       ; $6a11: $df
    jr nz, jr_047_69c4                            ; $6a12: $20 $b0

    ld c, a                                       ; $6a14: $4f
    ld b, d                                       ; $6a15: $42
    ld a, a                                       ; $6a16: $7f
    cp l                                          ; $6a17: $bd
    dec b                                         ; $6a18: $05
    ld a, [$45ba]                                 ; $6a19: $fa $ba $45
    ld e, a                                       ; $6a1c: $5f
    and b                                         ; $6a1d: $a0
    inc b                                         ; $6a1e: $04
    pop hl                                        ; $6a1f: $e1
    rst $38                                       ; $6a20: $ff

jr_047_6a21:
    ld b, b                                       ; $6a21: $40
    cp a                                          ; $6a22: $bf
    nop                                           ; $6a23: $00

jr_047_6a24:
    rst $38                                       ; $6a24: $ff
    ld a, [hl+]                                   ; $6a25: $2a
    push de                                       ; $6a26: $d5
    ld d, h                                       ; $6a27: $54
    xor e                                         ; $6a28: $ab
    ei                                            ; $6a29: $fb
    xor d                                         ; $6a2a: $aa
    ld d, l                                       ; $6a2b: $55
    ld e, h                                       ; $6a2c: $5c
    db $e3                                        ; $6a2d: $e3
    add hl, bc                                    ; $6a2e: $09
    or $00                                        ; $6a2f: $f6 $00
    rst $38                                       ; $6a31: $ff
    add b                                         ; $6a32: $80
    rst $38                                       ; $6a33: $ff
    ld a, a                                       ; $6a34: $7f
    db $10                                        ; $6a35: $10
    rst $28                                       ; $6a36: $ef
    add b                                         ; $6a37: $80
    ld a, a                                       ; $6a38: $7f
    ld d, l                                       ; $6a39: $55
    xor d                                         ; $6a3a: $aa
    cp [hl]                                       ; $6a3b: $be
    rst $38                                       ; $6a3c: $ff
    ld b, c                                       ; $6a3d: $41
    rst $38                                       ; $6a3e: $ff
    nop                                           ; $6a3f: $00
    jr nz, jr_047_6a21                            ; $6a40: $20 $df

    add b                                         ; $6a42: $80
    ld a, a                                       ; $6a43: $7f
    nop                                           ; $6a44: $00
    rst $18                                       ; $6a45: $df
    rst $38                                       ; $6a46: $ff
    dec d                                         ; $6a47: $15
    ld [$d52a], a                                 ; $6a48: $ea $2a $d5
    xor [hl]                                      ; $6a4b: $ae
    pop hl                                        ; $6a4c: $e1
    rst $18                                       ; $6a4d: $df
    jr nz, @+$01                                  ; $6a4e: $20 $ff

    ld de, $02ee                                  ; $6a50: $11 $ee $02
    db $fd                                        ; $6a53: $fd
    nop                                           ; $6a54: $00
    rst $38                                       ; $6a55: $ff
    db $10                                        ; $6a56: $10
    rst $28                                       ; $6a57: $ef
    cp a                                          ; $6a58: $bf
    adc c                                         ; $6a59: $89
    halt                                          ; $6a5a: $76
    ld d, h                                       ; $6a5b: $54
    xor e                                         ; $6a5c: $ab
    xor e                                         ; $6a5d: $ab
    ld d, h                                       ; $6a5e: $54
    jp nz, Jump_000_01c1                          ; $6a5f: $c2 $c1 $01

    ld a, a                                       ; $6a62: $7f
    cp $00                                        ; $6a63: $fe $00
    rst $38                                       ; $6a65: $ff
    and b                                         ; $6a66: $a0
    ld e, a                                       ; $6a67: $5f
    ld d, l                                       ; $6a68: $55
    xor d                                         ; $6a69: $aa
    xor [hl]                                      ; $6a6a: $ae
    pop hl                                        ; $6a6b: $e1
    ei                                            ; $6a6c: $fb
    cp a                                          ; $6a6d: $bf
    ld b, b                                       ; $6a6e: $40
    or b                                          ; $6a6f: $b0
    pop bc                                        ; $6a70: $c1
    dec b                                         ; $6a71: $05
    ld a, [$fd02]                                 ; $6a72: $fa $02 $fd
    ld b, l                                       ; $6a75: $45
    ld a, a                                       ; $6a76: $7f
    cp d                                          ; $6a77: $ba
    xor e                                         ; $6a78: $ab
    ld d, h                                       ; $6a79: $54
    db $dd                                        ; $6a7a: $dd
    ld [hl+], a                                   ; $6a7b: $22
    rst $28                                       ; $6a7c: $ef
    db $10                                        ; $6a7d: $10
    ld [hl-], a                                   ; $6a7e: $32
    db $e3                                        ; $6a7f: $e3
    di                                            ; $6a80: $f3
    xor e                                         ; $6a81: $ab
    ld d, h                                       ; $6a82: $54
    and $c9                                       ; $6a83: $e6 $c9
    and [hl]                                      ; $6a85: $a6
    jp $2bd4                                      ; $6a86: $c3 $d4 $2b


    ei                                            ; $6a89: $fb
    inc b                                         ; $6a8a: $04
    ei                                            ; $6a8b: $fb
    push af                                       ; $6a8c: $f5
    ld a, [bc]                                    ; $6a8d: $0a
    add b                                         ; $6a8e: $80
    push bc                                       ; $6a8f: $c5
    ld e, $e1                                     ; $6a90: $1e $e1
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    xor d                                         ; $6a94: $aa
    db $fd                                        ; $6a95: $fd
    ld d, l                                       ; $6a96: $55
    ldh a, [$e7]                                  ; $6a97: $f0 $e7
    rra                                           ; $6a99: $1f
    ldh [rWX], a                                  ; $6a9a: $e0 $4b
    or h                                          ; $6a9c: $b4
    sub l                                         ; $6a9d: $95
    ld l, d                                       ; $6a9e: $6a
    rst $38                                       ; $6a9f: $ff
    ld l, a                                       ; $6aa0: $6f
    sub b                                         ; $6aa1: $90
    ld [c], a                                     ; $6aa2: $e2
    dec e                                         ; $6aa3: $1d
    pop af                                        ; $6aa4: $f1
    ld c, $d6                                     ; $6aa5: $0e $d6
    add hl, hl                                    ; $6aa7: $29
    di                                            ; $6aa8: $f3
    db $ed                                        ; $6aa9: $ed
    ld [de], a                                    ; $6aaa: $12
    ld e, b                                       ; $6aab: $58
    push bc                                       ; $6aac: $c5
    ld [hl], d                                    ; $6aad: $72
    pop hl                                        ; $6aae: $e1
    adc d                                         ; $6aaf: $8a
    ld [hl], l                                    ; $6ab0: $75
    ld d, a                                       ; $6ab1: $57
    xor b                                         ; $6ab2: $a8
    ei                                            ; $6ab3: $fb
    db $eb                                        ; $6ab4: $eb
    inc d                                         ; $6ab5: $14
    call nz, $dde3                                ; $6ab6: $c4 $e3 $dd
    ld [hl+], a                                   ; $6ab9: $22
    rrca                                          ; $6aba: $0f
    ldh a, [$80]                                  ; $6abb: $f0 $80
    rst $30                                       ; $6abd: $f7
    ld a, a                                       ; $6abe: $7f
    ld b, c                                       ; $6abf: $41
    cp [hl]                                       ; $6ac0: $be
    call nz, $ffe9                                ; $6ac1: $c4 $e9 $ff
    nop                                           ; $6ac4: $00
    ld e, a                                       ; $6ac5: $5f
    and b                                         ; $6ac6: $a0
    db $e3                                        ; $6ac7: $e3
    xor e                                         ; $6ac8: $ab
    ld d, h                                       ; $6ac9: $54
    adc h                                         ; $6aca: $8c
    rst $00                                       ; $6acb: $c7
    db $ec                                        ; $6acc: $ec
    push hl                                       ; $6acd: $e5
    inc d                                         ; $6ace: $14
    call Call_000_21de                            ; $6acf: $cd $de $21
    and b                                         ; $6ad2: $a0
    ld l, l                                       ; $6ad3: $6d
    ld e, a                                       ; $6ad4: $5f
    ld [hl+], a                                   ; $6ad5: $22
    bit 2, a                                      ; $6ad6: $cb $57
    xor b                                         ; $6ad8: $a8
    ldh a, [$a7]                                  ; $6ad9: $f0 $a7
    xor d                                         ; $6adb: $aa
    ld d, l                                       ; $6adc: $55
    db $e4                                        ; $6add: $e4
    and c                                         ; $6ade: $a1
    add e                                         ; $6adf: $83
    ei                                            ; $6ae0: $fb
    inc b                                         ; $6ae1: $04
    ldh a, [$eb]                                  ; $6ae2: $f0 $eb
    sub [hl]                                      ; $6ae4: $96
    pop bc                                        ; $6ae5: $c1
    ld e, b                                       ; $6ae6: $58
    jp $e3e0                                      ; $6ae7: $c3 $e0 $e3


    ld d, [hl]                                    ; $6aea: $56
    pop hl                                        ; $6aeb: $e1
    and l                                         ; $6aec: $a5
    ld a, c                                       ; $6aed: $79
    ld e, d                                       ; $6aee: $5a
    or h                                          ; $6aef: $b4
    pop bc                                        ; $6af0: $c1
    ret nc                                        ; $6af1: $d0

    db $e3                                        ; $6af2: $e3
    ld [$f715], a                                 ; $6af3: $ea $15 $f7
    ld [$a1ac], sp                                ; $6af6: $08 $ac $a1
    di                                            ; $6af9: $f3
    db $fd                                        ; $6afa: $fd
    ld [bc], a                                    ; $6afb: $02
    ret nz                                        ; $6afc: $c0

    db $e3                                        ; $6afd: $e3
    xor $c1                                       ; $6afe: $ee $c1
    ldh a, [rIF]                                  ; $6b00: $f0 $0f
    add b                                         ; $6b02: $80
    ld a, a                                       ; $6b03: $7f
    db $fc                                        ; $6b04: $fc
    sbc [hl]                                      ; $6b05: $9e
    pop bc                                        ; $6b06: $c1
    ld [hl], d                                    ; $6b07: $72
    push bc                                       ; $6b08: $c5
    cp $01                                        ; $6b09: $fe $01
    rra                                           ; $6b0b: $1f
    ldh [rSCX], a                                 ; $6b0c: $e0 $43
    cp h                                          ; $6b0e: $bc
    rst $28                                       ; $6b0f: $ef
    xor b                                         ; $6b10: $a8
    ld d, a                                       ; $6b11: $57
    ld d, l                                       ; $6b12: $55
    xor d                                         ; $6b13: $aa
    add d                                         ; $6b14: $82
    and c                                         ; $6b15: $a1
    ld [hl], a                                    ; $6b16: $77
    adc b                                         ; $6b17: $88
    cp d                                          ; $6b18: $ba
    pop hl                                        ; $6b19: $e1
    ld b, l                                       ; $6b1a: $45
    ld c, $c1                                     ; $6b1b: $0e $c1
    sub b                                         ; $6b1d: $90
    db $e3                                        ; $6b1e: $e3
    adc d                                         ; $6b1f: $8a
    pop hl                                        ; $6b20: $e1
    add sp, -$1f                                  ; $6b21: $e8 $e1
    xor d                                         ; $6b23: $aa
    ld d, l                                       ; $6b24: $55
    ld d, l                                       ; $6b25: $55
    db $fd                                        ; $6b26: $fd
    xor d                                         ; $6b27: $aa
    db $fc                                        ; $6b28: $fc
    db $e3                                        ; $6b29: $e3
    ldh [rIE], a                                  ; $6b2a: $e0 $ff
    db $fd                                        ; $6b2c: $fd
    ld a, [$fffe]                                 ; $6b2d: $fa $fe $ff
    ld a, [hl]                                    ; $6b30: $7e
    rst $38                                       ; $6b31: $ff
    push hl                                       ; $6b32: $e5
    xor d                                         ; $6b33: $aa
    ld d, l                                       ; $6b34: $55
    nop                                           ; $6b35: $00
    rst $38                                       ; $6b36: $ff
    ld d, l                                       ; $6b37: $55
    xor d                                         ; $6b38: $aa
    call nc, Call_000_3fc1                        ; $6b39: $d4 $c1 $3f
    add b                                         ; $6b3c: $80
    rst $38                                       ; $6b3d: $ff
    ret nz                                        ; $6b3e: $c0

    rst $38                                       ; $6b3f: $ff
    jp z, $f0f5                                   ; $6b40: $ca $f5 $f0

    rst $20                                       ; $6b43: $e7
    scf                                           ; $6b44: $37
    and c                                         ; $6b45: $a1
    ei                                            ; $6b46: $fb
    xor d                                         ; $6b47: $aa
    ld d, l                                       ; $6b48: $55
    ldh [$e7], a                                  ; $6b49: $e0 $e7
    ld bc, $03ff                                  ; $6b4b: $01 $ff $03
    rst $38                                       ; $6b4e: $ff
    xor a                                         ; $6b4f: $af
    and l                                         ; $6b50: $a5
    ld d, a                                       ; $6b51: $57
    ret nc                                        ; $6b52: $d0

    db $e3                                        ; $6b53: $e3
    ccf                                           ; $6b54: $3f
    ret nz                                        ; $6b55: $c0

    and $f7                                       ; $6b56: $e6 $f7
    db $ed                                        ; $6b58: $ed
    ldh [$fe], a                                  ; $6b59: $e0 $fe
    and $f0                                       ; $6b5b: $e6 $f0
    ld b, a                                       ; $6b5d: $47
    rst $38                                       ; $6b5e: $ff
    db $fc                                        ; $6b5f: $fc
    rst $38                                       ; $6b60: $ff
    and c                                         ; $6b61: $a1
    xor b                                         ; $6b62: $a8
    rst $20                                       ; $6b63: $e7
    add h                                         ; $6b64: $84
    ldh [$8b], a                                  ; $6b65: $e0 $8b
    db $fc                                        ; $6b67: $fc
    and $87                                       ; $6b68: $e6 $87
    cp a                                          ; $6b6a: $bf
    nop                                           ; $6b6b: $00
    jp nz, Jump_000_3507                          ; $6b6c: $c2 $07 $35

    ccf                                           ; $6b6f: $3f
    ld [$e4e0], a                                 ; $6b70: $ea $e0 $e4
    nop                                           ; $6b73: $00
    ccf                                           ; $6b74: $3f
    nop                                           ; $6b75: $00
    ld d, a                                       ; $6b76: $57
    rst $38                                       ; $6b77: $ff
    xor e                                         ; $6b78: $ab
    rst $38                                       ; $6b79: $ff
    ld e, a                                       ; $6b7a: $5f
    ld e, d                                       ; $6b7b: $5a
    pop hl                                        ; $6b7c: $e1
    ld b, d                                       ; $6b7d: $42
    jp Jump_000_00ff                              ; $6b7e: $c3 $ff $00


    rst $20                                       ; $6b81: $e7
    ldh [$fb], a                                  ; $6b82: $e0 $fb
    ld hl, sp-$03                                 ; $6b84: $f8 $fd
    db $fc                                        ; $6b86: $fc
    cp $af                                        ; $6b87: $fe $af
    cp $0f                                        ; $6b89: $fe $0f
    rst $38                                       ; $6b8b: $ff
    rra                                           ; $6b8c: $1f
    cp $e0                                        ; $6b8d: $fe $e0
    ccf                                           ; $6b8f: $3f
    cp $e0                                        ; $6b90: $fe $e0
    ld a, a                                       ; $6b92: $7f
    ret z                                         ; $6b93: $c8

    cp $e2                                        ; $6b94: $fe $e2
    and d                                         ; $6b96: $a2
    and b                                         ; $6b97: $a0
    cp $e0                                        ; $6b98: $fe $e0
    ret nz                                        ; $6b9a: $c0

    cp $e2                                        ; $6b9b: $fe $e2
    add h                                         ; $6b9d: $84
    pop hl                                        ; $6b9e: $e1
    ei                                            ; $6b9f: $fb
    inc bc                                        ; $6ba0: $03
    rst $38                                       ; $6ba1: $ff
    rst $30                                       ; $6ba2: $f7
    rlca                                          ; $6ba3: $07
    rst $28                                       ; $6ba4: $ef
    rrca                                          ; $6ba5: $0f
    db $e3                                        ; $6ba6: $e3
    inc bc                                        ; $6ba7: $03
    pop bc                                        ; $6ba8: $c1
    dec e                                         ; $6ba9: $1d
    rst $38                                       ; $6baa: $ff
    ret z                                         ; $6bab: $c8

    ld e, $ec                                     ; $6bac: $1e $ec
    ld c, $f1                                     ; $6bae: $0e $f1
    ld bc, $28d7                                  ; $6bb0: $01 $d7 $28
    ei                                            ; $6bb3: $fb
    cp a                                          ; $6bb4: $bf
    ld b, b                                       ; $6bb5: $40
    cp d                                          ; $6bb6: $ba
    add b                                         ; $6bb7: $80
    inc b                                         ; $6bb8: $04
    rst $38                                       ; $6bb9: $ff
    ld a, [hl+]                                   ; $6bba: $2a
    rst $38                                       ; $6bbb: $ff
    ld d, h                                       ; $6bbc: $54
    rst $30                                       ; $6bbd: $f7
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    ld hl, sp+$2c                                 ; $6bc0: $f8 $2c
    and [hl]                                      ; $6bc2: $a6
    rst $38                                       ; $6bc3: $ff
    ld bc, $00c0                                  ; $6bc4: $01 $c0 $00
    rst $38                                       ; $6bc7: $ff
    ccf                                           ; $6bc8: $3f
    ccf                                           ; $6bc9: $3f
    ld e, $de                                     ; $6bca: $1e $de
    cp $04                                        ; $6bcc: $fe $04
    rst $38                                       ; $6bce: $ff
    ld a, [bc]                                    ; $6bcf: $0a
    rst $18                                       ; $6bd0: $df
    rst $38                                       ; $6bd1: $ff
    ld d, l                                       ; $6bd2: $55
    rst $38                                       ; $6bd3: $ff
    xor d                                         ; $6bd4: $aa
    cp $e2                                        ; $6bd5: $fe $e2
    ldh [rIF], a                                  ; $6bd7: $e0 $0f
    ld l, a                                       ; $6bd9: $6f
    inc bc                                        ; $6bda: $03
    rlca                                          ; $6bdb: $07
    rst $30                                       ; $6bdc: $f7
    call nc, $fe80                                ; $6bdd: $d4 $80 $fe
    ld [c], a                                     ; $6be0: $e2
    jp z, $f482                                   ; $6be1: $ca $82 $f4

    ldh [$31], a                                  ; $6be4: $e0 $31
    adc e                                         ; $6be6: $8b
    pop bc                                        ; $6be7: $c1
    rst $20                                       ; $6be8: $e7
    adc $19                                       ; $6be9: $ce $19
    add c                                         ; $6beb: $81
    and e                                         ; $6bec: $a3
    rst $38                                       ; $6bed: $ff
    ld d, a                                       ; $6bee: $57
    ld a, d                                       ; $6bef: $7a
    ldh [$f5], a                                  ; $6bf0: $e0 $f5
    rrc a                                         ; $6bf2: $cb $0f
    rrca                                          ; $6bf4: $0f
    rst $38                                       ; $6bf5: $ff
    and e                                         ; $6bf6: $a3
    and e                                         ; $6bf7: $a3
    ld d, c                                       ; $6bf8: $51
    ld d, c                                       ; $6bf9: $51
    xor b                                         ; $6bfa: $a8
    xor b                                         ; $6bfb: $a8
    call nc, $afd4                                ; $6bfc: $d4 $d4 $af
    ld a, [$fdfa]                                 ; $6bff: $fa $fa $fd
    db $fd                                        ; $6c02: $fd
    reti                                          ; $6c03: $d9


    rst $00                                       ; $6c04: $c7
    ld a, a                                       ; $6c05: $7f
    rst $38                                       ; $6c06: $ff
    ldh [$3f], a                                  ; $6c07: $e0 $3f
    ld e, h                                       ; $6c09: $5c
    ret                                           ; $6c0a: $c9


    ret nz                                        ; $6c0b: $c0

    add sp, -$3f                                  ; $6c0c: $e8 $c1
    ld hl, sp-$01                                 ; $6c0e: $f8 $ff
    db $f4                                        ; $6c10: $f4
    db $fc                                        ; $6c11: $fc
    db $e4                                        ; $6c12: $e4
    db $fd                                        ; $6c13: $fd
    pop de                                        ; $6c14: $d1
    ld l, b                                       ; $6c15: $68
    rst $38                                       ; $6c16: $ff
    ld a, [bc]                                    ; $6c17: $0a
    rst $38                                       ; $6c18: $ff
    dec d                                         ; $6c19: $15
    rst $38                                       ; $6c1a: $ff
    ld a, [$f7ff]                                 ; $6c1b: $fa $ff $f7
    rlca                                          ; $6c1e: $07
    rst $08                                       ; $6c1f: $cf
    xor $0f                                       ; $6c20: $ee $0f
    add sp, $0e                                   ; $6c22: $e8 $0e
    ccf                                           ; $6c24: $3f
    add b                                         ; $6c25: $80
    ldh [$c4], a                                  ; $6c26: $e0 $c4
    and a                                         ; $6c28: $a7
    and b                                         ; $6c29: $a0
    rst $38                                       ; $6c2a: $ff
    rrca                                          ; $6c2b: $0f
    nop                                           ; $6c2c: $00
    ccf                                           ; $6c2d: $3f
    nop                                           ; $6c2e: $00
    ld b, a                                       ; $6c2f: $47
    nop                                           ; $6c30: $00
    add e                                         ; $6c31: $83
    jr c, @+$01                                   ; $6c32: $38 $ff

    inc bc                                        ; $6c34: $03
    inc c                                         ; $6c35: $0c
    ld b, e                                       ; $6c36: $43
    inc b                                         ; $6c37: $04
    ld h, d                                       ; $6c38: $62
    ld [$ed0c], sp                                ; $6c39: $08 $0c $ed
    rst $38                                       ; $6c3c: $ff
    inc c                                         ; $6c3d: $0c
    db $ed                                        ; $6c3e: $ed
    inc e                                         ; $6c3f: $1c
    db $dd                                        ; $6c40: $dd
    inc a                                         ; $6c41: $3c
    cp l                                          ; $6c42: $bd
    inc l                                         ; $6c43: $2c
    xor l                                         ; $6c44: $ad
    rst $38                                       ; $6c45: $ff
    inc c                                         ; $6c46: $0c
    call $f300                                    ; $6c47: $cd $00 $f3
    nop                                           ; $6c4a: $00
    rst $38                                       ; $6c4b: $ff
    inc bc                                        ; $6c4c: $03
    sbc e                                         ; $6c4d: $9b
    rst $38                                       ; $6c4e: $ff
    ld h, e                                       ; $6c4f: $63
    dec de                                        ; $6c50: $1b
    ld h, e                                       ; $6c51: $63
    dec de                                        ; $6c52: $1b
    inc bc                                        ; $6c53: $03
    dec sp                                        ; $6c54: $3b
    rlca                                          ; $6c55: $07
    ld [hl], a                                    ; $6c56: $77
    ccf                                           ; $6c57: $3f
    dec c                                         ; $6c58: $0d
    db $ed                                        ; $6c59: $ed
    ld e, $9e                                     ; $6c5a: $1e $9e
    ld l, $ce                                     ; $6c5c: $2e $ce
    ld b, d                                       ; $6c5e: $42
    db $e3                                        ; $6c5f: $e3
    inc a                                         ; $6c60: $3c
    pop hl                                        ; $6c61: $e1
    and a                                         ; $6c62: $a7
    ccf                                           ; $6c63: $3f
    add b                                         ; $6c64: $80
    ccf                                           ; $6c65: $3f
    sub l                                         ; $6c66: $95
    add b                                         ; $6c67: $80
    ld [hl], c                                    ; $6c68: $71
    ld h, c                                       ; $6c69: $61
    ld c, $ce                                     ; $6c6a: $0e $ce
    ret z                                         ; $6c6c: $c8

    ld [bc], a                                    ; $6c6d: $02
    ei                                            ; $6c6e: $fb
    rst $38                                       ; $6c6f: $ff
    dec b                                         ; $6c70: $05
    db $fc                                        ; $6c71: $fc
    ld [c], a                                     ; $6c72: $e2
    adc d                                         ; $6c73: $8a
    rst $38                                       ; $6c74: $ff
    push bc                                       ; $6c75: $c5
    rst $38                                       ; $6c76: $ff
    jp z, $ff2f                                   ; $6c77: $ca $2f $ff

    push af                                       ; $6c7a: $f5
    rst $38                                       ; $6c7b: $ff
    xor a                                         ; $6c7c: $af
    inc a                                         ; $6c7d: $3c
    ldh [$af], a                                  ; $6c7e: $e0 $af
    sub [hl]                                      ; $6c80: $96
    ret nz                                        ; $6c81: $c0

    db $fc                                        ; $6c82: $fc
    push hl                                       ; $6c83: $e5
    ld a, [c]                                     ; $6c84: $f2
    rst $20                                       ; $6c85: $e7
    and l                                         ; $6c86: $a5
    cp $ff                                        ; $6c87: $fe $ff
    ldh [rLCDC], a                                ; $6c89: $e0 $40
    pop hl                                        ; $6c8b: $e1
    ldh a, [$f0]                                  ; $6c8c: $f0 $f0
    pop bc                                        ; $6c8e: $c1
    pop bc                                        ; $6c8f: $c1
    rst $38                                       ; $6c90: $ff
    adc d                                         ; $6c91: $8a
    adc d                                         ; $6c92: $8a
    dec d                                         ; $6c93: $15
    dec d                                         ; $6c94: $15
    dec hl                                        ; $6c95: $2b
    dec hl                                        ; $6c96: $2b
    ld e, a                                       ; $6c97: $5f
    ld e, a                                       ; $6c98: $5f
    ld a, e                                       ; $6c99: $7b
    cp a                                          ; $6c9a: $bf
    cp a                                          ; $6c9b: $bf
    add sp, -$1f                                  ; $6c9c: $e8 $e1
    ld hl, sp-$08                                 ; $6c9e: $f8 $f8
    push af                                       ; $6ca0: $f5
    push af                                       ; $6ca1: $f5
    pop bc                                        ; $6ca2: $c1
    and e                                         ; $6ca3: $a3
    rst $38                                       ; $6ca4: $ff
    rst $00                                       ; $6ca5: $c7
    rst $00                                       ; $6ca6: $c7
    and e                                         ; $6ca7: $a3
    and e                                         ; $6ca8: $a3
    rra                                           ; $6ca9: $1f
    rra                                           ; $6caa: $1f
    rlca                                          ; $6cab: $07
    rlca                                          ; $6cac: $07
    rst $38                                       ; $6cad: $ff
    ld b, e                                       ; $6cae: $43
    ld b, e                                       ; $6caf: $43
    xor c                                         ; $6cb0: $a9
    xor c                                         ; $6cb1: $a9
    push de                                       ; $6cb2: $d5

jr_047_6cb3:
    push de                                       ; $6cb3: $d5
    ld hl, sp-$08                                 ; $6cb4: $f8 $f8
    rst $18                                       ; $6cb6: $df
    db $fc                                        ; $6cb7: $fc
    db $fc                                        ; $6cb8: $fc
    ld a, [$fbfa]                                 ; $6cb9: $fa $fa $fb
    and $a8                                       ; $6cbc: $e6 $a8
    jp Jump_047_47c3                              ; $6cbe: $c3 $c3 $47


    and c                                         ; $6cc1: $a1
    and c                                         ; $6cc2: $a1
    db $fd                                        ; $6cc3: $fd
    db $fc                                        ; $6cc4: $fc
    and b                                         ; $6cc5: $a0
    or d                                          ; $6cc6: $b2
    ldh [$90], a                                  ; $6cc7: $e0 $90
    and [hl]                                      ; $6cc9: $a6
    ld b, b                                       ; $6cca: $40
    ld d, b                                       ; $6ccb: $50
    ret nz                                        ; $6ccc: $c0

    rst $10                                       ; $6ccd: $d7
    ld b, b                                       ; $6cce: $40
    rst $38                                       ; $6ccf: $ff
    and b                                         ; $6cd0: $a0
    ld a, [$fcc2]                                 ; $6cd1: $fa $c2 $fc
    sbc $a0                                       ; $6cd4: $de $a0
    ld hl, sp+$03                                 ; $6cd6: $f8 $03
    db $db                                        ; $6cd8: $db
    ldh a, [rTAC]                                 ; $6cd9: $f0 $07
    cp $e1                                        ; $6cdb: $fe $e1
    ld a, [$f403]                                 ; $6cdd: $fa $03 $f4
    and e                                         ; $6ce0: $a3
    nop                                           ; $6ce1: $00
    or $fe                                        ; $6ce2: $f6 $fe
    db $eb                                        ; $6ce4: $eb
    and b                                         ; $6ce5: $a0
    add sp, $20                                   ; $6ce6: $e8 $20
    ldh [rSTAT], a                                ; $6ce8: $e0 $41
    pop bc                                        ; $6cea: $c1
    nop                                           ; $6ceb: $00
    ld bc, $82ef                                  ; $6cec: $01 $ef $82
    inc bc                                        ; $6cef: $03
    pop bc                                        ; $6cf0: $c1
    inc bc                                        ; $6cf1: $03
    ld sp, $fee6                                  ; $6cf2: $31 $e6 $fe
    ld [bc], a                                    ; $6cf5: $02
    cp $ff                                        ; $6cf6: $fe $ff
    dec b                                         ; $6cf8: $05
    db $fd                                        ; $6cf9: $fd
    dec de                                        ; $6cfa: $1b
    ei                                            ; $6cfb: $fb
    db $10                                        ; $6cfc: $10
    ldh [$2f], a                                  ; $6cfd: $e0 $2f
    jp z, Jump_000_1fff                           ; $6cff: $ca $ff $1f

    add c                                         ; $6d02: $81
    ld a, a                                       ; $6d03: $7f
    nop                                           ; $6d04: $00
    rst $10                                       ; $6d05: $d7
    jr z, jr_047_6cb3                             ; $6d06: $28 $ab

    ld d, h                                       ; $6d08: $54
    db $fc                                        ; $6d09: $fc
    ldh [$61], a                                  ; $6d0a: $e0 $61
    jr @-$1e                                      ; $6d0c: $18 $e0

    nop                                           ; $6d0e: $00
    adc a                                         ; $6d0f: $8f
    ret nz                                        ; $6d10: $c0

    rst $10                                       ; $6d11: $d7
    ldh a, [$eb]                                  ; $6d12: $f0 $eb
    rra                                           ; $6d14: $1f
    ld hl, sp-$0b                                 ; $6d15: $f8 $f5
    db $fc                                        ; $6d17: $fc
    ld a, [$8ffe]                                 ; $6d18: $fa $fe $8f
    ret nz                                        ; $6d1b: $c0

    add b                                         ; $6d1c: $80
    ld c, d                                       ; $6d1d: $4a
    ld b, b                                       ; $6d1e: $40
    push bc                                       ; $6d1f: $c5
    rst $10                                       ; $6d20: $d7
    inc bc                                        ; $6d21: $03
    rst $38                                       ; $6d22: $ff
    rlca                                          ; $6d23: $07
    cp $e4                                        ; $6d24: $fe $e4
    rst $28                                       ; $6d26: $ef
    ld b, [hl]                                    ; $6d27: $46
    xor h                                         ; $6d28: $ac
    xor a                                         ; $6d29: $af
    rst $38                                       ; $6d2a: $ff
    db $fd                                        ; $6d2b: $fd
    rst $18                                       ; $6d2c: $df
    db $ec                                        ; $6d2d: $ec
    add sp, $37                                   ; $6d2e: $e8 $37
    scf                                           ; $6d30: $37
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    ld e, a                                       ; $6d33: $5f
    ld e, a                                       ; $6d34: $5f
    ei                                            ; $6d35: $fb
    xor a                                         ; $6d36: $af
    xor a                                         ; $6d37: $af
    pop hl                                        ; $6d38: $e1
    add e                                         ; $6d39: $83
    db $e3                                        ; $6d3a: $e3
    db $e3                                        ; $6d3b: $e3
    push bc                                       ; $6d3c: $c5
    push bc                                       ; $6d3d: $c5
    push de                                       ; $6d3e: $d5
    ccf                                           ; $6d3f: $3f
    push de                                       ; $6d40: $d5
    ld [$fdea], a                                 ; $6d41: $ea $ea $fd
    db $fd                                        ; $6d44: $fd
    cp $cf                                        ; $6d45: $fe $cf
    add b                                         ; $6d47: $80
    ld l, e                                       ; $6d48: $6b
    and b                                         ; $6d49: $a0
    ret c                                         ; $6d4a: $d8

    ld l, b                                       ; $6d4b: $68
    and b                                         ; $6d4c: $a0
    rst $00                                       ; $6d4d: $c7
    add c                                         ; $6d4e: $81
    ldh a, [$e3]                                  ; $6d4f: $f0 $e3
    dec d                                         ; $6d51: $15
    dec d                                         ; $6d52: $15
    xor $e1                                       ; $6d53: $ee $e1
    call nc, Call_047_7fd4                        ; $6d55: $d4 $d4 $7f
    ld [$3dea], a                                 ; $6d58: $ea $ea $3d
    dec a                                         ; $6d5b: $3d
    sbc a                                         ; $6d5c: $9f
    sbc a                                         ; $6d5d: $9f
    ld e, a                                       ; $6d5e: $5f
    ld d, e                                       ; $6d5f: $53
    and b                                         ; $6d60: $a0
    db $fc                                        ; $6d61: $fc
    xor $e1                                       ; $6d62: $ee $e1
    and a                                         ; $6d64: $a7
    add e                                         ; $6d65: $83
    adc a                                         ; $6d66: $8f
    adc a                                         ; $6d67: $8f
    ld d, [hl]                                    ; $6d68: $56
    ld d, [hl]                                    ; $6d69: $56
    db $eb                                        ; $6d6a: $eb
    db $eb                                        ; $6d6b: $eb
    rst $18                                       ; $6d6c: $df
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    dec b                                         ; $6d6f: $05
    dec b                                         ; $6d70: $05
    cp $04                                        ; $6d71: $fe $04
    db $e4                                        ; $6d73: $e4
    cp a                                          ; $6d74: $bf
    cp a                                          ; $6d75: $bf
    ld [hl], a                                    ; $6d76: $77
    ld d, a                                       ; $6d77: $57
    ld d, a                                       ; $6d78: $57
    ei                                            ; $6d79: $fb
    db $e3                                        ; $6d7a: $e3
    ret nz                                        ; $6d7b: $c0

    jr nz, @+$01                                  ; $6d7c: $20 $ff

    ld d, b                                       ; $6d7e: $50
    ld [bc], a                                    ; $6d7f: $02
    ldh [$1f], a                                  ; $6d80: $e0 $1f
    call nc, $eaff                                ; $6d82: $d4 $ff $ea
    rst $38                                       ; $6d85: $ff
    rst $30                                       ; $6d86: $f7
    ld [hl], h                                    ; $6d87: $74
    ldh [$91], a                                  ; $6d88: $e0 $91
    and b                                         ; $6d8a: $a0
    rst $08                                       ; $6d8b: $cf
    ld h, $e7                                     ; $6d8c: $26 $e7
    ld d, b                                       ; $6d8e: $50
    rst $38                                       ; $6d8f: $ff
    xor b                                         ; $6d90: $a8
    add sp, -$20                                  ; $6d91: $e8 $e0
    pop bc                                        ; $6d93: $c1
    add hl, hl                                    ; $6d94: $29
    ld b, d                                       ; $6d95: $42
    rst $38                                       ; $6d96: $ff
    xor c                                         ; $6d97: $a9
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    inc bc                                        ; $6d9a: $03
    inc bc                                        ; $6d9b: $03
    jp c, $b51b                                   ; $6d9c: $da $1b $b5

    scf                                           ; $6d9f: $37
    or [hl]                                       ; $6da0: $b6
    rst $38                                       ; $6da1: $ff
    scf                                           ; $6da2: $37
    jp $9103                                      ; $6da3: $c3 $03 $91


    dec [hl]                                      ; $6da6: $35
    and b                                         ; $6da7: $a0
    ld [hl], $00                                  ; $6da8: $36 $00
    rst $28                                       ; $6daa: $ef
    ld l, a                                       ; $6dab: $6f
    ld a, a                                       ; $6dac: $7f
    rst $38                                       ; $6dad: $ff
    cp a                                          ; $6dae: $bf
    adc h                                         ; $6daf: $8c
    and [hl]                                      ; $6db0: $a6
    ld a, [hl]                                    ; $6db1: $7e
    ld a, [hl]                                    ; $6db2: $7e
    ld bc, $817b                                  ; $6db3: $01 $7b $81
    cp $bc                                        ; $6db6: $fe $bc
    and b                                         ; $6db8: $a0
    cp [hl]                                       ; $6db9: $be
    cp a                                          ; $6dba: $bf
    cp a                                          ; $6dbb: $bf
    cp a                                          ; $6dbc: $bf
    and b                                         ; $6dbd: $a0
    and c                                         ; $6dbe: $a1
    cp $98                                        ; $6dbf: $fe $98
    ld [c], a                                     ; $6dc1: $e2
    add b                                         ; $6dc2: $80
    cp a                                          ; $6dc3: $bf
    add b                                         ; $6dc4: $80
    rst $18                                       ; $6dc5: $df
    ret nz                                        ; $6dc6: $c0

    rst $28                                       ; $6dc7: $ef
    ldh [rIE], a                                  ; $6dc8: $e0 $ff
    rst $28                                       ; $6dca: $ef
    ldh [$f7], a                                  ; $6dcb: $e0 $f7
    ldh a, [$db]                                  ; $6dcd: $f0 $db
    ld hl, sp-$59                                 ; $6dcf: $f8 $a7

jr_047_6dd1:
    ldh a, [$e2]                                  ; $6dd1: $f0 $e2
    ret nc                                        ; $6dd3: $d0

    add e                                         ; $6dd4: $83
    ld e, a                                       ; $6dd5: $5f
    jp z, $fce0                                   ; $6dd6: $ca $e0 $fc

    db $e3                                        ; $6dd9: $e3
    rlca                                          ; $6dda: $07
    add l                                         ; $6ddb: $85
    rst $30                                       ; $6ddc: $f7
    rst $30                                       ; $6ddd: $f7
    db $eb                                        ; $6dde: $eb
    sbc a                                         ; $6ddf: $9f
    db $eb                                        ; $6de0: $eb
    or a                                          ; $6de1: $b7
    or a                                          ; $6de2: $b7
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    ld c, h                                       ; $6de5: $4c
    pop bc                                        ; $6de6: $c1
    ld d, [hl]                                    ; $6de7: $56
    pop bc                                        ; $6de8: $c1
    add l                                         ; $6de9: $85
    cp l                                          ; $6dea: $bd
    add l                                         ; $6deb: $85
    ld e, $c1                                     ; $6dec: $1e $c1
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    ld e, [hl]                                    ; $6df0: $5e
    ld e, [hl]                                    ; $6df1: $5e
    ld a, [de]                                    ; $6df2: $1a
    pop bc                                        ; $6df3: $c1
    pop af                                        ; $6df4: $f1
    rst $38                                       ; $6df5: $ff
    pop af                                        ; $6df6: $f1
    ld l, e                                       ; $6df7: $6b
    ld l, e                                       ; $6df8: $6b
    rst $10                                       ; $6df9: $d7
    rst $10                                       ; $6dfa: $d7
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    and b                                         ; $6dfd: $a0
    rst $38                                       ; $6dfe: $ff
    and b                                         ; $6dff: $a0
    cp a                                          ; $6e00: $bf
    cp a                                          ; $6e01: $bf
    ldh a, [$f0]                                  ; $6e02: $f0 $f0
    pop hl                                        ; $6e04: $e1
    pop hl                                        ; $6e05: $e1
    jp z, $cafd                                   ; $6e06: $ca $fd $ca

    ld a, [c]                                     ; $6e09: $f2
    pop hl                                        ; $6e0a: $e1
    db $f4                                        ; $6e0b: $f4
    db $f4                                        ; $6e0c: $f4

jr_047_6e0d:
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    xor a                                         ; $6e0f: $af
    xor a                                         ; $6e10: $af
    ld a, e                                       ; $6e11: $7b
    rst $18                                       ; $6e12: $df
    rst $18                                       ; $6e13: $df
    sub [hl]                                      ; $6e14: $96
    pop hl                                        ; $6e15: $e1
    db $f4                                        ; $6e16: $f4
    db $f4                                        ; $6e17: $f4
    xor b                                         ; $6e18: $a8
    xor b                                         ; $6e19: $a8
    ldh a, [$c2]                                  ; $6e1a: $f0 $c2
    dec d                                         ; $6e1c: $15
    ld d, a                                       ; $6e1d: $57
    ld c, e                                       ; $6e1e: $4b
    and b                                         ; $6e1f: $a0
    rst $18                                       ; $6e20: $df
    pop af                                        ; $6e21: $f1
    ld l, d                                       ; $6e22: $6a
    xor [hl]                                      ; $6e23: $ae
    xor c                                         ; $6e24: $a9
    and b                                         ; $6e25: $a0
    rrca                                          ; $6e26: $0f
    ldh [$dd], a                                  ; $6e27: $e0 $dd
    ld l, b                                       ; $6e29: $68
    dec sp                                        ; $6e2a: $3b
    ld [hl], l                                    ; $6e2b: $75
    rst $38                                       ; $6e2c: $ff
    jp hl                                         ; $6e2d: $e9


    and e                                         ; $6e2e: $a3
    db $fd                                        ; $6e2f: $fd
    rst $38                                       ; $6e30: $ff
    xor d                                         ; $6e31: $aa
    di                                            ; $6e32: $f3
    add e                                         ; $6e33: $83
    sbc $e2                                       ; $6e34: $de $e2
    or d                                          ; $6e36: $b2
    ld hl, sp-$1f                                 ; $6e37: $f8 $e1
    xor l                                         ; $6e39: $ad
    or a                                          ; $6e3a: $b7
    ld l, b                                       ; $6e3b: $68
    add e                                         ; $6e3c: $83
    and e                                         ; $6e3d: $a3
    nop                                           ; $6e3e: $00
    cp $fe                                        ; $6e3f: $fe $fe
    ld [c], a                                     ; $6e41: $e2
    db $fc                                        ; $6e42: $fc
    rst $30                                       ; $6e43: $f7
    ld bc, $02f8                                  ; $6e44: $01 $f8 $02
    cp $e1                                        ; $6e47: $fe $e1
    ld c, a                                       ; $6e49: $4f
    nop                                           ; $6e4a: $00
    adc a                                         ; $6e4b: $8f
    jr nz, jr_047_6e0d                            ; $6e4c: $20 $bf

    add e                                         ; $6e4e: $83
    jr nc, jr_047_6dd1                            ; $6e4f: $30 $80

    inc e                                         ; $6e51: $1c
    nop                                           ; $6e52: $00
    ld l, a                                       ; $6e53: $6f
    db $d3                                        ; $6e54: $d3
    ld h, b                                       ; $6e55: $60
    rst $08                                       ; $6e56: $cf
    rst $38                                       ; $6e57: $ff
    nop                                           ; $6e58: $00
    or c                                          ; $6e59: $b1
    rst $30                                       ; $6e5a: $f7
    and a                                         ; $6e5b: $a7
    db $eb                                        ; $6e5c: $eb
    ld c, e                                       ; $6e5d: $4b
    rst $10                                       ; $6e5e: $d7
    sub a                                         ; $6e5f: $97
    sbc a                                         ; $6e60: $9f
    ccf                                           ; $6e61: $3f
    ccf                                           ; $6e62: $3f
    inc a                                         ; $6e63: $3c
    cp h                                          ; $6e64: $bc
    nop                                           ; $6e65: $00
    db $e4                                        ; $6e66: $e4
    and d                                         ; $6e67: $a2
    cp l                                          ; $6e68: $bd
    add b                                         ; $6e69: $80
    ld [$fccf], a                                 ; $6e6a: $ea $cf $fc
    ld d, h                                       ; $6e6d: $54
    ldh [$e3], a                                  ; $6e6e: $e0 $e3
    db $dd                                        ; $6e70: $dd
    ld h, b                                       ; $6e71: $60
    add l                                         ; $6e72: $85
    ld [bc], a                                    ; $6e73: $02
    rrca                                          ; $6e74: $0f
    ret nz                                        ; $6e75: $c0

    ld a, e                                       ; $6e76: $7b
    cpl                                           ; $6e77: $2f
    jr nz, jr_047_6e7c                            ; $6e78: $20 $02

    pop hl                                        ; $6e7a: $e1
    rst $28                                       ; $6e7b: $ef

jr_047_6e7c:
    ldh [$df], a                                  ; $6e7c: $e0 $df
    ret nz                                        ; $6e7e: $c0

    cp $e1                                        ; $6e7f: $fe $e1
    xor b                                         ; $6e81: $a8
    ld l, h                                       ; $6e82: $6c
    and $4e                                       ; $6e83: $e6 $4e
    ld l, e                                       ; $6e85: $6b
    ld sp, hl                                     ; $6e86: $f9
    xor c                                         ; $6e87: $a9
    db $eb                                        ; $6e88: $eb
    sub a                                         ; $6e89: $97
    ld h, d                                       ; $6e8a: $62
    rst $30                                       ; $6e8b: $f7
    dec l                                         ; $6e8c: $2d
    ld l, b                                       ; $6e8d: $68
    ld e, [hl]                                    ; $6e8e: $5e
    ld c, d                                       ; $6e8f: $4a
    ld hl, $bf68                                  ; $6e90: $21 $68 $bf
    ld e, e                                       ; $6e93: $5b
    add b                                         ; $6e94: $80
    xor e                                         ; $6e95: $ab
    pop de                                        ; $6e96: $d1
    ld b, h                                       ; $6e97: $44
    ld b, b                                       ; $6e98: $40
    pop hl                                        ; $6e99: $e1
    or a                                          ; $6e9a: $b7
    db $db                                        ; $6e9b: $db
    add [hl]                                      ; $6e9c: $86
    push hl                                       ; $6e9d: $e5
    cp $c8                                        ; $6e9e: $fe $c8
    ld h, b                                       ; $6ea0: $60
    add b                                         ; $6ea1: $80
    db $fd                                        ; $6ea2: $fd
    ld h, b                                       ; $6ea3: $60
    adc d                                         ; $6ea4: $8a
    ld b, c                                       ; $6ea5: $41
    and b                                         ; $6ea6: $a0
    rst $38                                       ; $6ea7: $ff
    push de                                       ; $6ea8: $d5
    ld [$8043], sp                                ; $6ea9: $08 $43 $80
    cp c                                          ; $6eac: $b9
    add c                                         ; $6ead: $81
    ld b, $e1                                     ; $6eae: $06 $e1
    ld d, l                                       ; $6eb0: $55
    xor h                                         ; $6eb1: $ac
    ld h, d                                       ; $6eb2: $62
    dec l                                         ; $6eb3: $2d
    pop bc                                        ; $6eb4: $c1
    and h                                         ; $6eb5: $a4
    ret nz                                        ; $6eb6: $c0

    db $10                                        ; $6eb7: $10
    ld [c], a                                     ; $6eb8: $e2
    ld hl, $33aa                                  ; $6eb9: $21 $aa $33
    ld h, b                                       ; $6ebc: $60
    ld h, h                                       ; $6ebd: $64
    ld hl, $e300                                  ; $6ebe: $21 $00 $e3
    add l                                         ; $6ec1: $85
    and l                                         ; $6ec2: $a5
    dec d                                         ; $6ec3: $15
    and [hl]                                      ; $6ec4: $a6
    and $70                                       ; $6ec5: $e6 $70
    ld b, e                                       ; $6ec7: $43
    or a                                          ; $6ec8: $b7
    ld d, a                                       ; $6ec9: $57
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    ld a, [bc]                                    ; $6ecc: $0a
    ldh [$03], a                                  ; $6ecd: $e0 $03
    db $fc                                        ; $6ecf: $fc
    db $fd                                        ; $6ed0: $fd
    nop                                           ; $6ed1: $00
    db $fc                                        ; $6ed2: $fc
    cp $ee                                        ; $6ed3: $fe $ee
    ld b, b                                       ; $6ed5: $40
    di                                            ; $6ed6: $f3
    nop                                           ; $6ed7: $00
    rst $20                                       ; $6ed8: $e7
    nop                                           ; $6ed9: $00
    db $dd                                        ; $6eda: $dd
    db $dd                                        ; $6edb: $dd
    ld h, d                                       ; $6edc: $62
    sbc a                                         ; $6edd: $9f
    ld h, d                                       ; $6ede: $62
    inc a                                         ; $6edf: $3c
    dec a                                         ; $6ee0: $3d
    ret nz                                        ; $6ee1: $c0

    inc bc                                        ; $6ee2: $03
    ei                                            ; $6ee3: $fb
    ld h, b                                       ; $6ee4: $60
    sub c                                         ; $6ee5: $91
    ld [hl+], a                                   ; $6ee6: $22

Call_047_6ee7:
    ccf                                           ; $6ee7: $3f
    ld a, a                                       ; $6ee8: $7f
    ccf                                           ; $6ee9: $3f
    rlca                                          ; $6eea: $07
    rst $00                                       ; $6eeb: $c7
    add hl, bc                                    ; $6eec: $09
    jp hl                                         ; $6eed: $e9


    dec c                                         ; $6eee: $0d
    db $ed                                        ; $6eef: $ed
    cp $e5                                        ; $6ef0: $fe $e5
    ld c, b                                       ; $6ef2: $48
    db $10                                        ; $6ef3: $10
    pop bc                                        ; $6ef4: $c1
    db $fc                                        ; $6ef5: $fc
    jp hl                                         ; $6ef6: $e9


    daa                                           ; $6ef7: $27
    ld b, [hl]                                    ; $6ef8: $46
    ld d, l                                       ; $6ef9: $55
    sub b                                         ; $6efa: $90
    jp nz, $e558                                  ; $6efb: $c2 $58 $e5

    db $eb                                        ; $6efe: $eb
    ldh a, [$e2]                                  ; $6eff: $f0 $e2
    ld [$e1ec], sp                                ; $6f01: $08 $ec $e1
    dec c                                         ; $6f04: $0d
    ld b, b                                       ; $6f05: $40
    db $10                                        ; $6f06: $10
    ld h, b                                       ; $6f07: $60
    and b                                         ; $6f08: $a0
    db $f4                                        ; $6f09: $f4
    db $e4                                        ; $6f0a: $e4
    ret c                                         ; $6f0b: $d8

    pop hl                                        ; $6f0c: $e1
    ld e, h                                       ; $6f0d: $5c
    ld hl, $e1f0                                  ; $6f0e: $21 $f0 $e1
    ld h, $30                                     ; $6f11: $26 $30
    pop hl                                        ; $6f13: $e1
    ld a, [$7cff]                                 ; $6f14: $fa $ff $7c
    ld [bc], a                                    ; $6f17: $02
    ld h, $20                                     ; $6f18: $26 $20
    dec b                                         ; $6f1a: $05
    ld d, h                                       ; $6f1b: $54
    ret nz                                        ; $6f1c: $c0

    inc h                                         ; $6f1d: $24
    db $e3                                        ; $6f1e: $e3
    ld [bc], a                                    ; $6f1f: $02
    add hl, bc                                    ; $6f20: $09

jr_047_6f21:
    ld h, c                                       ; $6f21: $61
    ld a, [hl+]                                   ; $6f22: $2a
    call c, $2440                                 ; $6f23: $dc $40 $24
    db $e3                                        ; $6f26: $e3
    ld b, b                                       ; $6f27: $40
    jp $a024                                      ; $6f28: $c3 $24 $a0


    inc [hl]                                      ; $6f2b: $34
    call nz, $e5b8                                ; $6f2c: $c4 $b8 $e5
    add l                                         ; $6f2f: $85
    rst $38                                       ; $6f30: $ff
    jp c, $eac2                                   ; $6f31: $da $c2 $ea

    cp h                                          ; $6f34: $bc
    ld [c], a                                     ; $6f35: $e2
    and d                                         ; $6f36: $a2
    dec h                                         ; $6f37: $25
    cp [hl]                                       ; $6f38: $be
    and b                                         ; $6f39: $a0
    and h                                         ; $6f3a: $a4
    ld b, b                                       ; $6f3b: $40
    cp a                                          ; $6f3c: $bf
    ret nz                                        ; $6f3d: $c0

    jr z, jr_047_6f21                             ; $6f3e: $28 $e1

    ld l, b                                       ; $6f40: $68
    ld [$29c2], a                                 ; $6f41: $ea $c2 $29
    adc l                                         ; $6f44: $8d
    ld h, a                                       ; $6f45: $67
    ld bc, $abc3                                  ; $6f46: $01 $c3 $ab
    rlca                                          ; $6f49: $07
    ret nz                                        ; $6f4a: $c0

    nop                                           ; $6f4b: $00
    di                                            ; $6f4c: $f3
    add b                                         ; $6f4d: $80
    ccf                                           ; $6f4e: $3f
    ld a, [bc]                                    ; $6f4f: $0a
    db $e4                                        ; $6f50: $e4
    rst $28                                       ; $6f51: $ef
    and c                                         ; $6f52: $a1
    nop                                           ; $6f53: $00
    add hl, de                                    ; $6f54: $19
    nop                                           ; $6f55: $00
    inc bc                                        ; $6f56: $03
    rra                                           ; $6f57: $1f
    ret nz                                        ; $6f58: $c0

    rst $00                                       ; $6f59: $c7
    rst $08                                       ; $6f5a: $cf
    nop                                           ; $6f5b: $00
    sbc a                                         ; $6f5c: $9f
    ldh a, [rLCDC]                                ; $6f5d: $f0 $40
    ld h, b                                       ; $6f5f: $60
    ld b, e                                       ; $6f60: $43
    ret nc                                        ; $6f61: $d0

    ld h, d                                       ; $6f62: $62
    xor $7b                                       ; $6f63: $ee $7b
    dec b                                         ; $6f65: $05

jr_047_6f66:
    cp $01                                        ; $6f66: $fe $01
    db $fc                                        ; $6f68: $fc
    cp $e1                                        ; $6f69: $fe $e1
    dec c                                         ; $6f6b: $0d
    db $ed                                        ; $6f6c: $ed
    dec e                                         ; $6f6d: $1d
    rst $38                                       ; $6f6e: $ff
    db $dd                                        ; $6f6f: $dd
    dec de                                        ; $6f70: $1b
    db $db                                        ; $6f71: $db
    rlca                                          ; $6f72: $07
    rlca                                          ; $6f73: $07
    reti                                          ; $6f74: $d9


jr_047_6f75:
    add c                                         ; $6f75: $81
    cp [hl]                                       ; $6f76: $be
    ld e, a                                       ; $6f77: $5f
    jr jr_047_6ff9                                ; $6f78: $18 $7f

    inc [hl]                                      ; $6f7a: $34
    ld a, a                                       ; $6f7b: $7f
    ld [$497e], sp                                ; $6f7c: $08 $7e $49
    add b                                         ; $6f7f: $80
    ld d, b                                       ; $6f80: $50
    nop                                           ; $6f81: $00
    ld a, b                                       ; $6f82: $78
    pop de                                        ; $6f83: $d1
    pop bc                                        ; $6f84: $c1
    rst $20                                       ; $6f85: $e7
    and d                                         ; $6f86: $a2
    pop hl                                        ; $6f87: $e1
    and b                                         ; $6f88: $a0
    nop                                           ; $6f89: $00
    ccf                                           ; $6f8a: $3f
    jp z, Jump_000_3815                           ; $6f8b: $ca $15 $38

    db $e4                                        ; $6f8e: $e4
    ld hl, sp-$79                                 ; $6f8f: $f8 $87
    jr nz, jr_047_6fc0                            ; $6f91: $20 $2d

    jr nc, jr_047_6f75                            ; $6f93: $30 $e0

    add b                                         ; $6f95: $80
    ld [hl], c                                    ; $6f96: $71
    ld [hl], c                                    ; $6f97: $71
    ld l, [hl]                                    ; $6f98: $6e
    ld l, [hl]                                    ; $6f99: $6e
    ld e, a                                       ; $6f9a: $5f
    ld a, a                                       ; $6f9b: $7f
    ld e, a                                       ; $6f9c: $5f
    rra                                           ; $6f9d: $1f
    sbc a                                         ; $6f9e: $9f
    ld c, $ee                                     ; $6f9f: $0e $ee
    ld bc, $45f0                                  ; $6fa1: $01 $f0 $45
    ld hl, $e0ff                                  ; $6fa4: $21 $ff $e0
    rst $20                                       ; $6fa7: $e7
    ldh [$e7], a                                  ; $6fa8: $e0 $e7
    ld b, b                                       ; $6faa: $40
    ld c, a                                       ; $6fab: $4f
    inc d                                         ; $6fac: $14
    dec hl                                        ; $6fad: $2b
    rst $28                                       ; $6fae: $ef
    xor b                                         ; $6faf: $a8
    ld d, a                                       ; $6fb0: $57
    ld d, b                                       ; $6fb1: $50
    xor a                                         ; $6fb2: $af
    dec [hl]                                      ; $6fb3: $35
    ld hl, $ea14                                  ; $6fb4: $21 $14 $ea
    ld a, [hl+]                                   ; $6fb7: $2a
    rst $18                                       ; $6fb8: $df
    call nc, $ea15                                ; $6fb9: $d4 $15 $ea
    ld [bc], a                                    ; $6fbc: $02
    db $fd                                        ; $6fbd: $fd
    add hl, hl                                    ; $6fbe: $29
    dec h                                         ; $6fbf: $25

jr_047_6fc0:
    ld a, a                                       ; $6fc0: $7f
    nop                                           ; $6fc1: $00
    cp l                                          ; $6fc2: $bd
    cp a                                          ; $6fc3: $bf
    ld b, d                                       ; $6fc4: $42
    jr nz, jr_047_6f66                            ; $6fc5: $20 $9f

    ld b, b                                       ; $6fc7: $40
    nop                                           ; $6fc8: $00
    ldh [rNR10], a                                ; $6fc9: $e0 $10
    daa                                           ; $6fcb: $27
    nop                                           ; $6fcc: $00
    rst $18                                       ; $6fcd: $df
    nop                                           ; $6fce: $00
    rst $28                                       ; $6fcf: $ef
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    db $10                                        ; $6fd2: $10
    rlca                                          ; $6fd3: $07
    inc hl                                        ; $6fd4: $23
    push de                                       ; $6fd5: $d5
    ld a, [bc]                                    ; $6fd6: $0a
    ccf                                           ; $6fd7: $3f
    jp z, Jump_000_1515                           ; $6fd8: $ca $15 $15

    ld a, [hl+]                                   ; $6fdb: $2a
    xor b                                         ; $6fdc: $a8
    rla                                           ; $6fdd: $17
    dec a                                         ; $6fde: $3d
    push hl                                       ; $6fdf: $e5
    ld e, b                                       ; $6fe0: $58
    jp nz, $ea00                                  ; $6fe1: $c2 $00 $ea

    add c                                         ; $6fe4: $81
    ld l, d                                       ; $6fe5: $6a
    pop bc                                        ; $6fe6: $c1
    ld h, [hl]                                    ; $6fe7: $66
    pop bc                                        ; $6fe8: $c1
    ldh a, [$e7]                                  ; $6fe9: $f0 $e7
    ld d, [hl]                                    ; $6feb: $56
    jp $c34e                                      ; $6fec: $c3 $4e $c3


    ldh a, [$eb]                                  ; $6fef: $f0 $eb
    and h                                         ; $6ff1: $a4
    add c                                         ; $6ff2: $81
    nop                                           ; $6ff3: $00
    ldh [$e9], a                                  ; $6ff4: $e0 $e9
    call c, Call_000_1ee7                         ; $6ff6: $dc $e7 $1e

jr_047_6ff9:
    jp Jump_047_418d                              ; $6ff9: $c3 $8d $41


    xor h                                         ; $6ffc: $ac
    push hl                                       ; $6ffd: $e5
    ld d, h                                       ; $6ffe: $54
    ld b, c                                       ; $6fff: $41
    or b                                          ; $7000: $b0
    jp hl                                         ; $7001: $e9


    sub b                                         ; $7002: $90
    rst $20                                       ; $7003: $e7
    ld bc, $8cf5                                  ; $7004: $01 $f5 $8c
    and $2d                                       ; $7007: $e6 $2d
    nop                                           ; $7009: $00
    ld h, h                                       ; $700a: $64
    and d                                         ; $700b: $a2
    rra                                           ; $700c: $1f
    ld hl, $a1e2                                  ; $700d: $21 $e2 $a1
    ld b, d                                       ; $7010: $42
    and e                                         ; $7011: $a3
    jr z, @-$5d                                   ; $7012: $28 $a1

    db $10                                        ; $7014: $10
    ld l, h                                       ; $7015: $6c
    db $e3                                        ; $7016: $e3
    call c, $f0e3                                 ; $7017: $dc $e3 $f0
    rst $20                                       ; $701a: $e7
    ret nc                                        ; $701b: $d0

    rst $20                                       ; $701c: $e7
    ld d, b                                       ; $701d: $50
    nop                                           ; $701e: $00
    nop                                           ; $701f: $00
    nop                                           ; $7020: $00
    ld a, l                                       ; $7021: $7d
    nop                                           ; $7022: $00
    rst $38                                       ; $7023: $ff
    jp hl                                         ; $7024: $e9


    ld bc, $0302                                  ; $7025: $01 $02 $03
    inc b                                         ; $7028: $04
    dec b                                         ; $7029: $05
    xor $ea                                       ; $702a: $ee $ea
    ld a, [hl]                                    ; $702c: $7e
    rst $38                                       ; $702d: $ff
    cp $06                                        ; $702e: $fe $06
    rlca                                          ; $7030: $07
    ld [$0a09], sp                                ; $7031: $08 $09 $0a
    dec bc                                        ; $7034: $0b
    cp d                                          ; $7035: $ba
    ldh [rIE], a                                  ; $7036: $e0 $ff
    inc c                                         ; $7038: $0c
    dec c                                         ; $7039: $0d
    ld c, $0f                                     ; $703a: $0e $0f
    db $10                                        ; $703c: $10
    ld de, $1312                                  ; $703d: $11 $12 $13
    rst $20                                       ; $7040: $e7
    inc d                                         ; $7041: $14
    dec d                                         ; $7042: $15
    ld d, $ca                                     ; $7043: $16 $ca
    rst $38                                       ; $7045: $ff
    adc d                                         ; $7046: $8a
    rst $20                                       ; $7047: $e7
    rla                                           ; $7048: $17
    jr jr_047_7064                                ; $7049: $18 $19

    rst $18                                       ; $704b: $df
    ld a, [de]                                    ; $704c: $1a
    dec de                                        ; $704d: $1b
    inc e                                         ; $704e: $1c
    dec e                                         ; $704f: $1d
    ld e, $78                                     ; $7050: $1e $78
    pop hl                                        ; $7052: $e1
    rra                                           ; $7053: $1f
    jr nz, @-$22                                  ; $7054: $20 $dc

    ret nc                                        ; $7056: $d0

    rst $38                                       ; $7057: $ff
    xor $ed                                       ; $7058: $ee $ed
    ld hl, $2122                                  ; $705a: $21 $22 $21
    rst $38                                       ; $705d: $ff
    ldh [rNR44], a                                ; $705e: $e0 $23
    inc h                                         ; $7060: $24
    ld e, $fa                                     ; $7061: $1e $fa
    pop hl                                        ; $7063: $e1

jr_047_7064:
    dec h                                         ; $7064: $25
    ld h, $27                                     ; $7065: $26 $27
    jr z, @-$0c                                   ; $7067: $28 $f2

    pop hl                                        ; $7069: $e1
    jp z, $0aff                                   ; $706a: $ca $ff $0a

    rst $20                                       ; $706d: $e7
    ld [hl], c                                    ; $706e: $71
    add hl, hl                                    ; $706f: $29
    rst $38                                       ; $7070: $ff
    ldh a, [$ca]                                  ; $7071: $f0 $ca
    rst $38                                       ; $7073: $ff
    jp z, Jump_000_2ac7                           ; $7074: $ca $c7 $2a

    dec hl                                        ; $7077: $2b
    inc l                                         ; $7078: $2c
    rst $38                                       ; $7079: $ff
    db $ec                                        ; $707a: $ec
    ld [hl], e                                    ; $707b: $73
    dec l                                         ; $707c: $2d
    ld l, $ca                                     ; $707d: $2e $ca
    rst $38                                       ; $707f: $ff
    adc d                                         ; $7080: $8a
    rst $00                                       ; $7081: $c7
    cpl                                           ; $7082: $2f
    jr nc, jr_047_70b6                            ; $7083: $30 $31

    rst $38                                       ; $7085: $ff
    ld [c], a                                     ; $7086: $e2
    ld l, a                                       ; $7087: $6f
    ld [hl-], a                                   ; $7088: $32
    inc sp                                        ; $7089: $33
    inc [hl]                                      ; $708a: $34
    dec [hl]                                      ; $708b: $35
    or $e3                                        ; $708c: $f6 $e3
    ld [hl], $2f                                  ; $708e: $36 $2f
    jp z, $f6ff                                   ; $7090: $ca $ff $f6

    ret nz                                        ; $7093: $c0

    add sp, $2f                                   ; $7094: $e8 $2f
    scf                                           ; $7096: $37
    cp a                                          ; $7097: $bf
    ld [c], a                                     ; $7098: $e2
    jr c, jr_047_70d4                             ; $7099: $38 $39

    ld a, [hl-]                                   ; $709b: $3a
    dec sp                                        ; $709c: $3b
    ld a, a                                       ; $709d: $7f
    inc a                                         ; $709e: $3c
    ld sp, $0031                                  ; $709f: $31 $31 $00
    dec a                                         ; $70a2: $3d
    ld a, $3f                                     ; $70a3: $3e $3f
    ret nz                                        ; $70a5: $c0

    rst $38                                       ; $70a6: $ff
    cp [hl]                                       ; $70a7: $be
    dec bc                                        ; $70a8: $0b
    ret z                                         ; $70a9: $c8

    ld b, b                                       ; $70aa: $40
    ld b, c                                       ; $70ab: $41
    ld b, d                                       ; $70ac: $42
    ld b, e                                       ; $70ad: $43
    dec a                                         ; $70ae: $3d
    ld a, l                                       ; $70af: $7d
    ldh [rLY], a                                  ; $70b0: $e0 $44
    rst $38                                       ; $70b2: $ff
    ld b, l                                       ; $70b3: $45
    ld b, [hl]                                    ; $70b4: $46
    ld b, a                                       ; $70b5: $47

jr_047_70b6:
    ld c, b                                       ; $70b6: $48
    ld sp, $4931                                  ; $70b7: $31 $31 $49
    ld c, d                                       ; $70ba: $4a
    rst $20                                       ; $70bb: $e7
    ld c, e                                       ; $70bc: $4b
    ld c, h                                       ; $70bd: $4c
    ld c, l                                       ; $70be: $4d
    jp z, $caff                                   ; $70bf: $ca $ff $ca

    and a                                         ; $70c2: $a7
    ld c, [hl]                                    ; $70c3: $4e
    ld c, a                                       ; $70c4: $4f
    ld d, b                                       ; $70c5: $50
    ei                                            ; $70c6: $fb
    ld d, c                                       ; $70c7: $51
    ld d, d                                       ; $70c8: $52
    dec a                                         ; $70c9: $3d
    ldh [rHDMA3], a                               ; $70ca: $e0 $53
    ld d, h                                       ; $70cc: $54
    ld d, l                                       ; $70cd: $55
    ld d, [hl]                                    ; $70ce: $56
    ld d, a                                       ; $70cf: $57
    ld a, a                                       ; $70d0: $7f
    ld e, b                                       ; $70d1: $58
    ld e, c                                       ; $70d2: $59
    cpl                                           ; $70d3: $2f

jr_047_70d4:
    ld e, d                                       ; $70d4: $5a
    ld e, e                                       ; $70d5: $5b
    ld c, a                                       ; $70d6: $4f
    ld e, h                                       ; $70d7: $5c
    jp z, $feff                                   ; $70d8: $ca $ff $fe

    adc d                                         ; $70db: $8a
    and a                                         ; $70dc: $a7
    ld e, l                                       ; $70dd: $5d
    ld e, [hl]                                    ; $70de: $5e
    ld e, a                                       ; $70df: $5f
    ld h, b                                       ; $70e0: $60
    ld h, c                                       ; $70e1: $61
    ld h, d                                       ; $70e2: $62
    ld h, e                                       ; $70e3: $63
    rst $38                                       ; $70e4: $ff
    ld h, h                                       ; $70e5: $64
    ld sp, $6532                                  ; $70e6: $31 $32 $65
    ld h, [hl]                                    ; $70e9: $66
    ld h, a                                       ; $70ea: $67
    ld l, b                                       ; $70eb: $68
    ld l, c                                       ; $70ec: $69
    sbc a                                         ; $70ed: $9f
    ld l, d                                       ; $70ee: $6a
    ld l, e                                       ; $70ef: $6b
    ld l, h                                       ; $70f0: $6c
    ld l, l                                       ; $70f1: $6d
    ld l, [hl]                                    ; $70f2: $6e
    jp z, Jump_047_4aff                           ; $70f3: $ca $ff $4a

    and a                                         ; $70f6: $a7
    ld l, a                                       ; $70f7: $6f
    rst $28                                       ; $70f8: $ef
    ld [hl], b                                    ; $70f9: $70
    ld [hl], c                                    ; $70fa: $71
    ld [hl], d                                    ; $70fb: $72
    ld [hl], e                                    ; $70fc: $73
    cp l                                          ; $70fd: $bd
    pop bc                                        ; $70fe: $c1
    ld [hl], h                                    ; $70ff: $74
    ld [hl], l                                    ; $7100: $75
    halt                                          ; $7101: $76
    rst $38                                       ; $7102: $ff
    ld [hl], a                                    ; $7103: $77
    ld a, b                                       ; $7104: $78
    ld a, c                                       ; $7105: $79
    ld a, d                                       ; $7106: $7a
    ld a, e                                       ; $7107: $7b
    ld a, h                                       ; $7108: $7c
    ld a, l                                       ; $7109: $7d
    ld a, [hl]                                    ; $710a: $7e
    ld a, h                                       ; $710b: $7c
    jp z, $0aff                                   ; $710c: $ca $ff $0a

    and a                                         ; $710f: $a7
    ld a, a                                       ; $7110: $7f
    add b                                         ; $7111: $80
    add c                                         ; $7112: $81
    add d                                         ; $7113: $82
    add e                                         ; $7114: $83
    ld a, l                                       ; $7115: $7d
    pop bc                                        ; $7116: $c1
    rst $38                                       ; $7117: $ff
    add h                                         ; $7118: $84
    add l                                         ; $7119: $85
    add [hl]                                      ; $711a: $86
    ld sp, $8887                                  ; $711b: $31 $87 $88
    adc c                                         ; $711e: $89
    adc d                                         ; $711f: $8a
    rst $20                                       ; $7120: $e7
    adc e                                         ; $7121: $8b
    adc h                                         ; $7122: $8c
    adc l                                         ; $7123: $8d
    jp z, $caff                                   ; $7124: $ca $ff $ca

    add a                                         ; $7127: $87
    adc [hl]                                      ; $7128: $8e
    adc a                                         ; $7129: $8f
    sub b                                         ; $712a: $90
    rst $38                                       ; $712b: $ff
    sub c                                         ; $712c: $91
    sub d                                         ; $712d: $92
    sub e                                         ; $712e: $93
    ld sp, $9594                                  ; $712f: $31 $94 $95
    sub [hl]                                      ; $7132: $96
    sub a                                         ; $7133: $97
    scf                                           ; $7134: $37
    sbc b                                         ; $7135: $98
    sbc c                                         ; $7136: $99
    sbc d                                         ; $7137: $9a
    inc [hl]                                      ; $7138: $34
    pop bc                                        ; $7139: $c1
    add e                                         ; $713a: $83
    sbc e                                         ; $713b: $9b
    jp z, $8aff                                   ; $713c: $ca $ff $8a

    add a                                         ; $713f: $87
    db $fd                                        ; $7140: $fd
    sbc h                                         ; $7141: $9c
    ld bc, $9dc3                                  ; $7142: $01 $c3 $9d
    sbc [hl]                                      ; $7145: $9e
    ld sp, $a09f                                  ; $7146: $31 $9f $a0
    and c                                         ; $7149: $a1
    push hl                                       ; $714a: $e5
    and d                                         ; $714b: $a2
    db $f4                                        ; $714c: $f4
    and d                                         ; $714d: $a2
    add e                                         ; $714e: $83
    jp z, Jump_047_4aff                           ; $714f: $ca $ff $4a

    add a                                         ; $7152: $87
    and e                                         ; $7153: $a3
    and h                                         ; $7154: $a4
    and l                                         ; $7155: $a5
    sub $ff                                       ; $7156: $d6 $ff
    ldh [$a6], a                                  ; $7158: $e0 $a6
    and a                                         ; $715a: $a7
    rst $38                                       ; $715b: $ff
    pop hl                                        ; $715c: $e1
    xor b                                         ; $715d: $a8
    push af                                       ; $715e: $f5
    pop hl                                        ; $715f: $e1
    and l                                         ; $7160: $a5
    xor c                                         ; $7161: $a9
    cp c                                          ; $7162: $b9
    xor d                                         ; $7163: $aa
    jp z, $0aff                                   ; $7164: $ca $ff $0a

    add a                                         ; $7167: $87
    xor e                                         ; $7168: $ab
    xor h                                         ; $7169: $ac
    xor l                                         ; $716a: $ad
    rst $38                                       ; $716b: $ff
    db $ed                                        ; $716c: $ed
    xor [hl]                                      ; $716d: $ae
    nop                                           ; $716e: $00
    jp z, $ffff                                   ; $716f: $ca $ff $ff

    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    nop                                           ; $717f: $00
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    nop                                           ; $7190: $00
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    nop                                           ; $71a1: $00
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    nop                                           ; $71b2: $00
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    nop                                           ; $71c3: $00
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    nop                                           ; $71d4: $00
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    nop                                           ; $71e5: $00
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    nop                                           ; $71f6: $00
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    nop                                           ; $7207: $00
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    nop                                           ; $7218: $00
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    nop                                           ; $7229: $00
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $30                                       ; $722d: $f7
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    nop                                           ; $7230: $00
    dec b                                         ; $7231: $05
    ld a, [bc]                                    ; $7232: $0a
    rst $38                                       ; $7233: $ff
    ldh a, [rIF]                                  ; $7234: $f0 $0f
    rst $38                                       ; $7236: $ff
    pop hl                                        ; $7237: $e1
    rst $20                                       ; $7238: $e7
    pop af                                        ; $7239: $f1
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    ret nz                                        ; $723c: $c0

    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    nop                                           ; $7240: $00
    ret nz                                        ; $7241: $c0

    rst $38                                       ; $7242: $ff
    ret nz                                        ; $7243: $c0

    rst $38                                       ; $7244: $ff
    ret nz                                        ; $7245: $c0

    rst $38                                       ; $7246: $ff
    ret nz                                        ; $7247: $c0

    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    ret nz                                        ; $724b: $c0

    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    cp a                                          ; $724f: $bf
    db $e4                                        ; $7250: $e4
    ld [hl], c                                    ; $7251: $71
    inc c                                         ; $7252: $0c
    rst $38                                       ; $7253: $ff
    ldh [$c0], a                                  ; $7254: $e0 $c0
    rst $38                                       ; $7256: $ff
    ret nz                                        ; $7257: $c0

    ld hl, sp+$0d                                 ; $7258: $f8 $0d
    dec c                                         ; $725a: $0d
    dec c                                         ; $725b: $0d
    cp a                                          ; $725c: $bf
    ldh [$e9], a                                  ; $725d: $e0 $e9
    dec bc                                        ; $725f: $0b
    ret nz                                        ; $7260: $c0

    rst $38                                       ; $7261: $ff
    ld c, [hl]                                    ; $7262: $4e
    rst $28                                       ; $7263: $ef
    ld a, [hl+]                                   ; $7264: $2a
    add b                                         ; $7265: $80
    pop hl                                        ; $7266: $e1
    ld [$0d0d], sp                                ; $7267: $08 $0d $0d
    ld e, b                                       ; $726a: $58
    jp $c0e2                                      ; $726b: $c3 $e2 $c0


    rst $38                                       ; $726e: $ff
    ld b, b                                       ; $726f: $40
    push af                                       ; $7270: $f5
    dec c                                         ; $7271: $0d
    dec bc                                        ; $7272: $0b
    add d                                         ; $7273: $82
    ld [c], a                                     ; $7274: $e2
    ld a, [hl+]                                   ; $7275: $2a
    ret nz                                        ; $7276: $c0

    rst $38                                       ; $7277: $ff
    ld e, $cb                                     ; $7278: $1e $cb
    pop de                                        ; $727a: $d1
    ld c, h                                       ; $727b: $4c
    inc c                                         ; $727c: $0c
    inc c                                         ; $727d: $0c
    dec bc                                        ; $727e: $0b
    cp $c4                                        ; $727f: $fe $c4
    ret nz                                        ; $7281: $c0

    rst $38                                       ; $7282: $ff
    sub h                                         ; $7283: $94
    call z, Call_000_097d                         ; $7284: $cc $7d $09
    rst $38                                       ; $7287: $ff
    ldh [$0e], a                                  ; $7288: $e0 $0e
    ld [$0808], sp                                ; $728a: $08 $08 $08

jr_047_728d:
    ld c, $c6                                     ; $728d: $0e $c6
    ld [c], a                                     ; $728f: $e2
    jr jr_047_728d                                ; $7290: $18 $fb

    db $e3                                        ; $7292: $e3
    push bc                                       ; $7293: $c5
    rst $38                                       ; $7294: $ff
    ret nz                                        ; $7295: $c0

    db $ec                                        ; $7296: $ec
    add hl, bc                                    ; $7297: $09
    add hl, bc                                    ; $7298: $09
    ret nz                                        ; $7299: $c0

    rst $38                                       ; $729a: $ff
    inc d                                         ; $729b: $14
    call nc, $e17f                                ; $729c: $d4 $7f $e1
    add h                                         ; $729f: $84
    ret nz                                        ; $72a0: $c0

    ldh [$fe], a                                  ; $72a1: $e0 $fe
    db $e3                                        ; $72a3: $e3
    ld l, a                                       ; $72a4: $6f
    ret nz                                        ; $72a5: $c0

    rst $38                                       ; $72a6: $ff
    call nc, $c9a9                                ; $72a7: $d4 $a9 $c9
    push hl                                       ; $72aa: $e5
    ld hl, sp-$19                                 ; $72ab: $f8 $e7
    cpl                                           ; $72ad: $2f
    nop                                           ; $72ae: $00
    ret nz                                        ; $72af: $c0

    rst $38                                       ; $72b0: $ff
    add b                                         ; $72b1: $80
    db $ed                                        ; $72b2: $ed
    ld a, [$c5f0]                                 ; $72b3: $fa $f0 $c5
    rst $38                                       ; $72b6: $ff
    ret nz                                        ; $72b7: $c0

    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    ret nz                                        ; $72bb: $c0

    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    ld [$f3af], sp                                ; $72bf: $08 $af $f3
    sub $ff                                       ; $72c2: $d6 $ff
    db $f4                                        ; $72c4: $f4
    di                                            ; $72c5: $f3
    ld c, a                                       ; $72c6: $4f
    rst $38                                       ; $72c7: $ff
    db $e4                                        ; $72c8: $e4
    sub $ff                                       ; $72c9: $d6 $ff
    ret nz                                        ; $72cb: $c0

    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    nop                                           ; $72cf: $00
    ret nz                                        ; $72d0: $c0

    rst $30                                       ; $72d1: $f7
    cp l                                          ; $72d2: $bd
    rst $38                                       ; $72d3: $ff
    ret nz                                        ; $72d4: $c0

    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    ret nz                                        ; $72d8: $c0

    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    ret nz                                        ; $72dc: $c0

    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    nop                                           ; $72e0: $00
    ret nz                                        ; $72e1: $c0

    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    add b                                         ; $72e5: $80
    rst $00                                       ; $72e6: $c7
    jp c, $ffff                                   ; $72e7: $da $ff $ff

    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    nop                                           ; $72f1: $00
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    nop                                           ; $7302: $00
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
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
    nop                                           ; $7313: $00
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
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
    nop                                           ; $7324: $00
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    nop                                           ; $7335: $00
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
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
    nop                                           ; $7346: $00
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    nop                                           ; $7357: $00
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    nop                                           ; $7368: $00
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    nop                                           ; $7379: $00
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    db $fc                                        ; $737d: $fc
    nop                                           ; $737e: $00
    nop                                           ; $737f: $00
    nop                                           ; $7380: $00
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
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
    rst $38                                       ; $7418: $ff
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
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
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
    rst $38                                       ; $746c: $ff
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
    rst $38                                       ; $747d: $ff
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
    rst $38                                       ; $748c: $ff
    rst $38                                       ; $748d: $ff
    rst $38                                       ; $748e: $ff
    rst $38                                       ; $748f: $ff
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
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
    rst $38                                       ; $749f: $ff
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
    rst $38                                       ; $74b0: $ff
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
    rst $38                                       ; $74c1: $ff
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
    rst $38                                       ; $74d2: $ff
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
    rst $38                                       ; $74e3: $ff
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
    rst $38                                       ; $74f4: $ff
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
    rst $38                                       ; $7505: $ff
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
    rst $38                                       ; $751b: $ff
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
    rst $38                                       ; $752c: $ff
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
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
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
    rst $38                                       ; $754d: $ff
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
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
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
    rst $38                                       ; $7580: $ff
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
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
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
    rst $38                                       ; $75a2: $ff
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
    rst $38                                       ; $75b3: $ff
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
    rst $38                                       ; $75c4: $ff
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
    rst $38                                       ; $75d5: $ff
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
    rst $38                                       ; $75e6: $ff
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
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
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
    rst $38                                       ; $7613: $ff
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
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
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
    rst $38                                       ; $765a: $ff
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
    rst $38                                       ; $766b: $ff
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
    rst $38                                       ; $767c: $ff
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
    rst $38                                       ; $768d: $ff
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
    rst $38                                       ; $769e: $ff
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
    rst $38                                       ; $76af: $ff
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
    rst $38                                       ; $76c0: $ff
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
    rst $38                                       ; $76d1: $ff
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
    rst $38                                       ; $76e2: $ff
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
    rst $38                                       ; $76f3: $ff
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
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
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
    rst $38                                       ; $7716: $ff
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
    rst $38                                       ; $7727: $ff
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
    rst $38                                       ; $7738: $ff
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
    rst $38                                       ; $7749: $ff
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
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
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
    rst $38                                       ; $7770: $ff
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
    rst $38                                       ; $7781: $ff
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
    rst $38                                       ; $7792: $ff
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
    rst $38                                       ; $77a3: $ff
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
    rst $38                                       ; $77b4: $ff
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
    rst $38                                       ; $77c5: $ff
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
    rst $38                                       ; $77d6: $ff
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
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
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
    rst $38                                       ; $7826: $ff
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
    rst $38                                       ; $7843: $ff
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
    rst $38                                       ; $7854: $ff
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
    rst $38                                       ; $7865: $ff
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
    rst $38                                       ; $7876: $ff
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

Jump_047_7d0c:
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

Call_047_7f7f:
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

Call_047_7fd4:
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

Call_047_7feb:
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
