; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    ld [$1140], sp                                ; $4000: $08 $40 $11
    ld d, h                                       ; $4003: $54
    ld b, $5d                                     ; $4004: $06 $5d
    ld d, c                                       ; $4006: $51
    ld [hl], c                                    ; $4007: $71
    jr nz, jr_037_404a                            ; $4008: $20 $40

    ld d, b                                       ; $400a: $50
    ld b, l                                       ; $400b: $45
    ldh [rOBP0], a                                ; $400c: $e0 $48
    db $10                                        ; $400e: $10
    ld c, l                                       ; $400f: $4d
    ld [hl], b                                    ; $4010: $70
    ld d, b                                       ; $4011: $50
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    nop                                           ; $401b: $00
    nop                                           ; $401c: $00
    nop                                           ; $401d: $00
    nop                                           ; $401e: $00
    nop                                           ; $401f: $00
    ld l, a                                       ; $4020: $6f
    rst $38                                       ; $4021: $ff
    rst $38                                       ; $4022: $ff
    rst $38                                       ; $4023: $ff
    nop                                           ; $4024: $00
    cp $ea                                        ; $4025: $fe $ea
    rst $38                                       ; $4027: $ff
    nop                                           ; $4028: $00
    rst $38                                       ; $4029: $ff
    ld [$e052], a                                 ; $402a: $ea $52 $e0
    ldh [$80], a                                  ; $402d: $e0 $80
    cp $ea                                        ; $402f: $fe $ea
    ldh [$e0], a                                  ; $4031: $e0 $e0
    add b                                         ; $4033: $80
    cp $e0                                        ; $4034: $fe $e0
    ret nz                                        ; $4036: $c0

    cp $e0                                        ; $4037: $fe $e0
    xor c                                         ; $4039: $a9
    ldh [$fe], a                                  ; $403a: $e0 $fe
    ldh [$c0], a                                  ; $403c: $e0 $c0
    pop hl                                        ; $403e: $e1
    cp $fe                                        ; $403f: $fe $fe
    ldh [$fc], a                                  ; $4041: $e0 $fc
    cp $e0                                        ; $4043: $fe $e0
    ld hl, sp+$0e                                 ; $4045: $f8 $0e
    cp $e0                                        ; $4047: $fe $e0
    rst $38                                       ; $4049: $ff

jr_037_404a:
    rst $38                                       ; $404a: $ff
    ld bc, $eaff                                  ; $404b: $01 $ff $ea
    or d                                          ; $404e: $b2
    db $eb                                        ; $404f: $eb
    or b                                          ; $4050: $b0
    ldh [$fe], a                                  ; $4051: $e0 $fe
    db $ed                                        ; $4053: $ed
    ld e, $a2                                     ; $4054: $1e $a2
    db $eb                                        ; $4056: $eb
    add b                                         ; $4057: $80
    ldh a, [rP1]                                  ; $4058: $f0 $00
    ldh a, [$b8]                                  ; $405a: $f0 $b8
    ld [c], a                                     ; $405c: $e2
    or b                                          ; $405d: $b0
    pop hl                                        ; $405e: $e1
    xor b                                         ; $405f: $a8
    pop hl                                        ; $4060: $e1
    ldh [$f0], a                                  ; $4061: $e0 $f0
    pop hl                                        ; $4063: $e1
    sbc b                                         ; $4064: $98
    pop hl                                        ; $4065: $e1
    sub b                                         ; $4066: $90
    pop hl                                        ; $4067: $e1
    adc b                                         ; $4068: $88
    pop hl                                        ; $4069: $e1
    and d                                         ; $406a: $a2
    db $eb                                        ; $406b: $eb
    ld bc, $ff01                                  ; $406c: $01 $01 $ff
    rst $38                                       ; $406f: $ff
    rlca                                          ; $4070: $07
    ld hl, sp+$1f                                 ; $4071: $f8 $1f
    db $e3                                        ; $4073: $e3
    ccf                                           ; $4074: $3f
    adc $7d                                       ; $4075: $ce $7d
    sbc $ff                                       ; $4077: $de $ff
    ld [hl], c                                    ; $4079: $71
    cp a                                          ; $407a: $bf
    rst $20                                       ; $407b: $e7
    ld hl, sp-$11                                 ; $407c: $f8 $ef
    ldh a, [$bf]                                  ; $407e: $f0 $bf
    ldh a, [rIE]                                  ; $4080: $f0 $ff
    ldh a, [$0c]                                  ; $4082: $f0 $0c
    db $fc                                        ; $4084: $fc
    ld [c], a                                     ; $4085: $e2
    cp $b9                                        ; $4086: $fe $b9
    ld e, a                                       ; $4088: $5f
    dec a                                         ; $4089: $3d
    ld a, a                                       ; $408a: $7f
    rst $00                                       ; $408b: $c7
    db $fc                                        ; $408c: $fc
    rst $30                                       ; $408d: $f7
    rrca                                          ; $408e: $0f
    ei                                            ; $408f: $fb
    rlca                                          ; $4090: $07
    cp $32                                        ; $4091: $fe $32
    rst $20                                       ; $4093: $e7
    db $fd                                        ; $4094: $fd
    add b                                         ; $4095: $80
    rst $38                                       ; $4096: $ff
    ld [c], a                                     ; $4097: $e2
    rlca                                          ; $4098: $07
    rlca                                          ; $4099: $07
    jr jr_037_40bb                                ; $409a: $18 $1f

    inc hl                                        ; $409c: $23
    ccf                                           ; $409d: $3f
    rst $30                                       ; $409e: $f7
    ld c, [hl]                                    ; $409f: $4e
    ld a, l                                       ; $40a0: $7d
    ld e, [hl]                                    ; $40a1: $5e
    ret nc                                        ; $40a2: $d0

    db $e4                                        ; $40a3: $e4
    rst $38                                       ; $40a4: $ff
    ldh a, [rIF]                                  ; $40a5: $f0 $0f
    db $fc                                        ; $40a7: $fc
    ld bc, $d0e3                                  ; $40a8: $01 $e3 $d0
    add sp, $66                                   ; $40ab: $e8 $66
    db $ed                                        ; $40ad: $ed
    add $e2                                       ; $40ae: $c6 $e2
    db $10                                        ; $40b0: $10
    jp hl                                         ; $40b1: $e9


    jp nc, Jump_000_10c0                          ; $40b2: $d2 $c0 $10

    ld [$c1c2], a                                 ; $40b5: $ea $c2 $c1
    cp a                                          ; $40b8: $bf
    add hl, de                                    ; $40b9: $19
    rst $28                                       ; $40ba: $ef

jr_037_40bb:
    add hl, sp                                    ; $40bb: $39
    and $3f                                       ; $40bc: $e6 $3f
    pop hl                                        ; $40be: $e1
    cp $e0                                        ; $40bf: $fe $e0
    pop af                                        ; $40c1: $f1
    rst $38                                       ; $40c2: $ff
    rra                                           ; $40c3: $1f
    rst $28                                       ; $40c4: $ef
    ldh a, [rIE]                                  ; $40c5: $f0 $ff
    rst $08                                       ; $40c7: $cf
    ld a, a                                       ; $40c8: $7f
    ld a, [c]                                     ; $40c9: $f2
    ld a, a                                       ; $40ca: $7f
    rst $38                                       ; $40cb: $ff
    ret nz                                        ; $40cc: $c0

    rst $38                                       ; $40cd: $ff
    call z, Call_037_7eff                         ; $40ce: $cc $ff $7e
    rst $38                                       ; $40d1: $ff

jr_037_40d2:
    ld [de], a                                    ; $40d2: $12
    rst $38                                       ; $40d3: $ff
    rst $38                                       ; $40d4: $ff
    jr nz, jr_037_40d2                            ; $40d5: $20 $fb

    rlca                                          ; $40d7: $07
    rst $38                                       ; $40d8: $ff
    ld sp, hl                                     ; $40d9: $f9
    rst $38                                       ; $40da: $ff
    daa                                           ; $40db: $27
    rst $38                                       ; $40dc: $ff
    rst $38                                       ; $40dd: $ff
    ld bc, $19ff                                  ; $40de: $01 $ff $19
    rst $38                                       ; $40e1: $ff
    ccf                                           ; $40e2: $3f
    rst $38                                       ; $40e3: $ff
    inc h                                         ; $40e4: $24
    rst $38                                       ; $40e5: $ff
    db $fd                                        ; $40e6: $fd
    ld [bc], a                                    ; $40e7: $02
    ld a, d                                       ; $40e8: $7a
    pop hl                                        ; $40e9: $e1
    ld b, h                                       ; $40ea: $44
    call nz, $ce4a                                ; $40eb: $c4 $4a $ce
    xor d                                         ; $40ee: $aa
    xor $bf                                       ; $40ef: $ee $bf
    jp nc, $c27e                                  ; $40f1: $d2 $7e $c2

    ld a, [hl]                                    ; $40f4: $7e
    call nz, $927c                                ; $40f5: $c4 $7c $92
    pop bc                                        ; $40f8: $c1
    add hl, de                                    ; $40f9: $19
    cp a                                          ; $40fa: $bf
    add hl, de                                    ; $40fb: $19
    add hl, hl                                    ; $40fc: $29
    add hl, sp                                    ; $40fd: $39
    ld h, $3f                                     ; $40fe: $26 $3f
    ld hl, $e0fe                                  ; $4100: $21 $fe $e0
    ld de, $1ffd                                  ; $4103: $11 $fd $1f
    sub d                                         ; $4106: $92
    pop bc                                        ; $4107: $c1
    ld a, a                                       ; $4108: $7f
    call nz, $ce7b                                ; $4109: $c4 $7b $ce
    cp e                                          ; $410c: $bb
    xor $bf                                       ; $410d: $ee $bf
    db $d3                                        ; $410f: $d3
    ld a, [hl]                                    ; $4110: $7e
    jp $c77e                                      ; $4111: $c3 $7e $c7


    ld a, h                                       ; $4114: $7c
    add d                                         ; $4115: $82
    pop bc                                        ; $4116: $c1
    cp a                                          ; $4117: $bf
    rst $38                                       ; $4118: $ff
    add b                                         ; $4119: $80
    sbc a                                         ; $411a: $9f
    add b                                         ; $411b: $80
    adc a                                         ; $411c: $8f
    add b                                         ; $411d: $80
    add a                                         ; $411e: $87
    add b                                         ; $411f: $80
    add e                                         ; $4120: $83
    rst $30                                       ; $4121: $f7
    add b                                         ; $4122: $80
    add c                                         ; $4123: $81
    add b                                         ; $4124: $80
    and d                                         ; $4125: $a2
    pop bc                                        ; $4126: $c1
    inc bc                                        ; $4127: $03
    ld bc, $0107                                  ; $4128: $01 $07 $01
    rst $38                                       ; $412b: $ff
    rrca                                          ; $412c: $0f
    ld bc, $011f                                  ; $412d: $01 $1f $01
    ccf                                           ; $4130: $3f
    ld bc, $017f                                  ; $4131: $01 $7f $01
    rst $38                                       ; $4134: $ff
    ldh a, [$1f]                                  ; $4135: $f0 $1f
    ld hl, sp+$0f                                 ; $4137: $f8 $0f
    ld a, h                                       ; $4139: $7c
    rra                                           ; $413a: $1f
    ld a, a                                       ; $413b: $7f
    scf                                           ; $413c: $37
    rst $38                                       ; $413d: $ff
    ld a, a                                       ; $413e: $7f
    ld l, e                                       ; $413f: $6b
    ld a, a                                       ; $4140: $7f
    ld d, l                                       ; $4141: $55
    ld a, a                                       ; $4142: $7f
    ld b, d                                       ; $4143: $42
    ccf                                           ; $4144: $3f
    dec h                                         ; $4145: $25
    rst $38                                       ; $4146: $ff
    rst $38                                       ; $4147: $ff
    ldh [$1f], a                                  ; $4148: $e0 $1f
    pop af                                        ; $414a: $f1
    rrca                                          ; $414b: $0f
    ld hl, sp+$0f                                 ; $414c: $f8 $0f
    cp $ff                                        ; $414e: $fe $ff
    ei                                            ; $4150: $fb
    rst $38                                       ; $4151: $ff
    push af                                       ; $4152: $f5
    ld e, a                                       ; $4153: $5f
    di                                            ; $4154: $f3
    sbc [hl]                                      ; $4155: $9e
    pop af                                        ; $4156: $f1
    rra                                           ; $4157: $1f
    rst $38                                       ; $4158: $ff
    rst $38                                       ; $4159: $ff
    add e                                         ; $415a: $83
    db $fc                                        ; $415b: $fc
    rst $00                                       ; $415c: $c7
    ld hl, sp+$0f                                 ; $415d: $f8 $0f
    ldh a, [$3f]                                  ; $415f: $f0 $3f
    rst $38                                       ; $4161: $ff
    rst $18                                       ; $4162: $df
    rst $38                                       ; $4163: $ff
    xor a                                         ; $4164: $af
    ld sp, hl                                     ; $4165: $f9
    rst $08                                       ; $4166: $cf
    ld a, b                                       ; $4167: $78
    adc a                                         ; $4168: $8f
    ld hl, sp-$01                                 ; $4169: $f8 $ff
    add h                                         ; $416b: $84
    db $fc                                        ; $416c: $fc
    ld [$11f8], sp                                ; $416d: $08 $f8 $11
    ldh a, [$61]                                  ; $4170: $f0 $61
    ldh [rIE], a                                  ; $4172: $e0 $ff
    rst $38                                       ; $4174: $ff
    db $fc                                        ; $4175: $fc
    ld d, e                                       ; $4176: $53
    ld a, [hl]                                    ; $4177: $7e
    db $d3                                        ; $4178: $d3
    cp $d3                                        ; $4179: $fe $d3
    cp $ff                                        ; $417b: $fe $ff
    inc e                                         ; $417d: $1c
    rra                                           ; $417e: $1f
    ld a, $37                                     ; $417f: $3e $37
    rst $38                                       ; $4181: $ff
    ld l, e                                       ; $4182: $6b
    rst $38                                       ; $4183: $ff
    ld d, l                                       ; $4184: $55
    rst $38                                       ; $4185: $ff
    cp $42                                        ; $4186: $fe $42
    db $fd                                        ; $4188: $fd
    dec h                                         ; $4189: $25
    rst $38                                       ; $418a: $ff
    ld [hl+], a                                   ; $418b: $22
    rst $38                                       ; $418c: $ff
    ld de, $c0fe                                  ; $418d: $11 $fe $c0
    pop hl                                        ; $4190: $e1
    adc a                                         ; $4191: $8f
    ld sp, hl                                     ; $4192: $f9
    ld l, a                                       ; $4193: $6f
    ld a, [hl]                                    ; $4194: $7e
    ei                                            ; $4195: $fb
    rst $18                                       ; $4196: $df
    push af                                       ; $4197: $f5
    rst $30                                       ; $4198: $f7
    rra                                           ; $4199: $1f
    di                                            ; $419a: $f3
    ld e, $c0                                     ; $419b: $1e $c0
    db $e3                                        ; $419d: $e3
    ld a, b                                       ; $419e: $78
    rst $08                                       ; $419f: $cf
    ldh a, [$bf]                                  ; $41a0: $f0 $bf
    cp $c0                                        ; $41a2: $fe $c0
    ldh [$fb], a                                  ; $41a4: $e0 $fb
    rst $08                                       ; $41a6: $cf
    ld a, c                                       ; $41a7: $79
    adc a                                         ; $41a8: $8f
    ld hl, sp-$79                                 ; $41a9: $f8 $87
    db $fc                                        ; $41ab: $fc
    cp a                                          ; $41ac: $bf
    rrca                                          ; $41ad: $0f
    ld hl, sp+$1e                                 ; $41ae: $f8 $1e
    ldh a, [$fe]                                  ; $41b0: $f0 $fe
    ldh [rNR10], a                                ; $41b2: $e0 $10
    ret nz                                        ; $41b4: $c0

    ld a, h                                       ; $41b5: $7c
    rst $30                                       ; $41b6: $f7
    jp nc, $d27e                                  ; $41b7: $d2 $7e $d2

    ret nc                                        ; $41ba: $d0

    ret nz                                        ; $41bb: $c0

    ld a, a                                       ; $41bc: $7f
    nop                                           ; $41bd: $00
    ccf                                           ; $41be: $3f
    nop                                           ; $41bf: $00
    rst $38                                       ; $41c0: $ff
    rra                                           ; $41c1: $1f
    nop                                           ; $41c2: $00
    rrca                                          ; $41c3: $0f
    nop                                           ; $41c4: $00
    rlca                                          ; $41c5: $07
    nop                                           ; $41c6: $00
    inc bc                                        ; $41c7: $03
    nop                                           ; $41c8: $00
    ld a, [hl+]                                   ; $41c9: $2a
    ld de, $01c1                                  ; $41ca: $11 $c1 $01
    ld hl, sp-$20                                 ; $41cd: $f8 $e0
    rlca                                          ; $41cf: $07
    ldh a, [$e0]                                  ; $41d0: $f0 $e0
    rra                                           ; $41d2: $1f
    add sp, -$20                                  ; $41d3: $e8 $e0
    db $e4                                        ; $41d5: $e4
    ldh [rIE], a                                  ; $41d6: $e0 $ff
    ld [hl+], a                                   ; $41d8: $22
    rra                                           ; $41d9: $1f
    ld de, $101f                                  ; $41da: $11 $1f $10
    rrca                                          ; $41dd: $0f
    ld [$6f07], sp                                ; $41de: $08 $07 $6f
    inc b                                         ; $41e1: $04
    inc bc                                        ; $41e2: $03
    inc bc                                        ; $41e3: $03
    ld bc, $e0e0                                  ; $41e4: $01 $e0 $e0
    ldh a, [$1f]                                  ; $41e7: $f0 $1f
    cp $e0                                        ; $41e9: $fe $e0
    rst $38                                       ; $41eb: $ff
    sbc a                                         ; $41ec: $9f
    ldh a, [$7f]                                  ; $41ed: $f0 $7f
    rst $38                                       ; $41ef: $ff
    sbc a                                         ; $41f0: $9f
    ei                                            ; $41f1: $fb
    ld c, $ff                                     ; $41f2: $0e $ff
    rst $18                                       ; $41f4: $df
    rrca                                          ; $41f5: $0f
    ldh a, [$1f]                                  ; $41f6: $f0 $1f
    rrca                                          ; $41f8: $0f
    ld sp, hl                                     ; $41f9: $f9
    cp $e0                                        ; $41fa: $fe $e0
    cp $0b                                        ; $41fc: $fe $0b
    rst $38                                       ; $41fe: $ff
    ld a, [$f9f9]                                 ; $41ff: $fa $f9 $f9
    ret nc                                        ; $4202: $d0

    ld [hl], b                                    ; $4203: $70
    ld hl, sp-$08                                 ; $4204: $f8 $f8
    inc b                                         ; $4206: $04
    rst $38                                       ; $4207: $ff
    db $fc                                        ; $4208: $fc
    db $e3                                        ; $4209: $e3
    ld a, $f7                                     ; $420a: $3e $f7
    inc e                                         ; $420c: $1c
    rst $38                                       ; $420d: $ff

jr_037_420e:
    jr @+$01                                      ; $420e: $18 $ff

    or a                                          ; $4210: $b7
    jr nz, @+$01                                  ; $4211: $20 $ff

    ret nz                                        ; $4213: $c0

    jp nz, Jump_037_7fe1                          ; $4214: $c2 $e1 $7f

    nop                                           ; $4217: $00
    ld l, [hl]                                    ; $4218: $6e
    ldh [$08], a                                  ; $4219: $e0 $08
    rst $08                                       ; $421b: $cf
    rst $38                                       ; $421c: $ff
    inc b                                         ; $421d: $04
    ei                                            ; $421e: $fb
    inc bc                                        ; $421f: $03
    ldh a, [$a6]                                  ; $4220: $f0 $a6
    jp nz, $9fe1                                  ; $4222: $c2 $e1 $9f

    ld [hl], b                                    ; $4225: $70
    rst $38                                       ; $4226: $ff
    ld a, a                                       ; $4227: $7f
    rra                                           ; $4228: $1f
    rra                                           ; $4229: $1f
    dec bc                                        ; $422a: $0b
    ld c, $0f                                     ; $422b: $0e $0f
    rrca                                          ; $422d: $0f
    db $10                                        ; $422e: $10
    db $fd                                        ; $422f: $fd
    rra                                           ; $4230: $1f
    inc d                                         ; $4231: $14
    ldh [$f9], a                                  ; $4232: $e0 $f9
    rrca                                          ; $4234: $0f
    db $fd                                        ; $4235: $fd
    rrca                                          ; $4236: $0f
    ld a, [$ffff]                                 ; $4237: $fa $ff $ff
    ld a, [$71df]                                 ; $423a: $fa $df $71
    rst $38                                       ; $423d: $ff
    ld hl, sp+$07                                 ; $423e: $f8 $07
    db $fc                                        ; $4240: $fc
    jp nc, $feff                                  ; $4241: $d2 $ff $fe

    ld [c], a                                     ; $4244: $e2
    ld a, $f4                                     ; $4245: $3e $f4
    inc e                                         ; $4247: $1c
    ld hl, sp+$18                                 ; $4248: $f8 $18
    ldh [$e7], a                                  ; $424a: $e0 $e7
    jr nz, jr_037_420e                            ; $424c: $20 $c0

    ret nz                                        ; $424e: $c0

    ld e, b                                       ; $424f: $58
    and c                                         ; $4250: $a1
    ld a, [bc]                                    ; $4251: $0a
    jp $8080                                      ; $4252: $c3 $80 $80


    ret nz                                        ; $4255: $c0

    xor a                                         ; $4256: $af
    add b                                         ; $4257: $80
    ldh a, [$80]                                  ; $4258: $f0 $80
    db $fc                                        ; $425a: $fc
    ld [hl], $a1                                  ; $425b: $36 $a1

jr_037_425d:
    ld bc, $e3fe                                  ; $425d: $01 $fe $e3
    db $fd                                        ; $4260: $fd
    rst $28                                       ; $4261: $ef
    ld bc, $01f1                                  ; $4262: $01 $f1 $01
    pop bc                                        ; $4265: $c1
    ld d, l                                       ; $4266: $55
    and b                                         ; $4267: $a0
    ldh a, [$1f]                                  ; $4268: $f0 $1f
    ld [c], a                                     ; $426a: $e2
    rst $38                                       ; $426b: $ff
    ccf                                           ; $426c: $3f
    ld h, c                                       ; $426d: $61
    ccf                                           ; $426e: $3f
    ld l, h                                       ; $426f: $6c
    ccf                                           ; $4270: $3f
    ccf                                           ; $4271: $3f
    inc sp                                        ; $4272: $33
    ccf                                           ; $4273: $3f
    rst $38                                       ; $4274: $ff
    db $10                                        ; $4275: $10
    rra                                           ; $4276: $1f
    db $10                                        ; $4277: $10
    ccf                                           ; $4278: $3f
    jr nz, @+$06                                  ; $4279: $20 $04

    db $fc                                        ; $427b: $fc
    ld b, d                                       ; $427c: $42
    rst $38                                       ; $427d: $ff
    cp $83                                        ; $427e: $fe $83
    cp $bb                                        ; $4280: $fe $bb
    cp $ff                                        ; $4282: $fe $ff
    add $ff                                       ; $4284: $c6 $ff
    db $fd                                        ; $4286: $fd
    add h                                         ; $4287: $84
    cp $e0                                        ; $4288: $fe $e0
    add d                                         ; $428a: $82
    db $10                                        ; $428b: $10
    rra                                           ; $428c: $1f
    ld [hl+], a                                   ; $428d: $22
    ccf                                           ; $428e: $3f
    and c                                         ; $428f: $a1
    rst $38                                       ; $4290: $ff
    ccf                                           ; $4291: $3f
    xor h                                         ; $4292: $ac
    ccf                                           ; $4293: $3f
    rst $38                                       ; $4294: $ff
    inc sp                                        ; $4295: $33
    rst $18                                       ; $4296: $df
    db $10                                        ; $4297: $10
    rst $38                                       ; $4298: $ff
    rst $38                                       ; $4299: $ff
    db $10                                        ; $429a: $10
    rst $38                                       ; $429b: $ff
    jr nz, jr_037_42a5                            ; $429c: $20 $07

    db $fc                                        ; $429e: $fc
    ld b, e                                       ; $429f: $43
    cp $82                                        ; $42a0: $fe $82
    rst $38                                       ; $42a2: $ff
    cp $ba                                        ; $42a3: $fe $ba

jr_037_42a5:
    cp $fe                                        ; $42a5: $fe $fe
    add $fc                                       ; $42a7: $c6 $fc
    add h                                         ; $42a9: $84
    db $fc                                        ; $42aa: $fc
    cpl                                           ; $42ab: $2f
    add h                                         ; $42ac: $84
    cp $82                                        ; $42ad: $fe $82
    ret nz                                        ; $42af: $c0

    ld d, b                                       ; $42b0: $50
    and b                                         ; $42b1: $a0
    db $fc                                        ; $42b2: $fc
    cp [hl]                                       ; $42b3: $be
    adc b                                         ; $42b4: $88
    jp nz, $8a85                                  ; $42b5: $c2 $85 $8a

    add sp, -$13                                  ; $42b8: $e8 $ed
    db $fc                                        ; $42ba: $fc
    jr z, jr_037_425d                             ; $42bb: $28 $a0

    ret nz                                        ; $42bd: $c0

    and l                                         ; $42be: $a5
    add b                                         ; $42bf: $80
    ld hl, sp-$1b                                 ; $42c0: $f8 $e5
    sbc d                                         ; $42c2: $9a
    add l                                         ; $42c3: $85
    ccf                                           ; $42c4: $3f
    ld a, [$c0c6]                                 ; $42c5: $fa $c6 $c0
    inc bc                                        ; $42c8: $03
    sub d                                         ; $42c9: $92
    adc b                                         ; $42ca: $88
    ccf                                           ; $42cb: $3f
    ld hl, $5eff                                  ; $42cc: $21 $ff $5e
    rst $38                                       ; $42cf: $ff
    rst $38                                       ; $42d0: $ff
    ld h, d                                       ; $42d1: $62
    cp a                                          ; $42d2: $bf
    cp $c1                                        ; $42d3: $fe $c1
    rst $38                                       ; $42d5: $ff
    cp a                                          ; $42d6: $bf
    rst $38                                       ; $42d7: $ff
    pop bc                                        ; $42d8: $c1
    db $fc                                        ; $42d9: $fc
    ld h, e                                       ; $42da: $63
    add b                                         ; $42db: $80
    inc l                                         ; $42dc: $2c
    ret nz                                        ; $42dd: $c0

    dec a                                         ; $42de: $3d
    ccf                                           ; $42df: $3f
    inc hl                                        ; $42e0: $23
    ld a, $3f                                     ; $42e1: $3e $3f
    ld b, c                                       ; $42e3: $41
    rst $38                                       ; $42e4: $ff
    ld a, a                                       ; $42e5: $7f
    ld a, [hl]                                    ; $42e6: $7e
    ld a, a                                       ; $42e7: $7f
    ld b, c                                       ; $42e8: $41
    ld a, a                                       ; $42e9: $7f
    rst $38                                       ; $42ea: $ff
    rst $38                                       ; $42eb: $ff
    inc bc                                        ; $42ec: $03
    ld [$c096], a                                 ; $42ed: $ea $96 $c0
    ccf                                           ; $42f0: $3f
    jp z, $ff87                                   ; $42f1: $ca $87 $ff

    add b                                         ; $42f4: $80
    db $ec                                        ; $42f5: $ec
    rst $38                                       ; $42f6: $ff
    rst $38                                       ; $42f7: $ff
    ld hl, $7edf                                  ; $42f8: $21 $df $7e
    ld e, [hl]                                    ; $42fb: $5e
    ld a, [hl]                                    ; $42fc: $7e
    ld h, d                                       ; $42fd: $62
    cp [hl]                                       ; $42fe: $be
    ret nz                                        ; $42ff: $c0

    and $fe                                       ; $4300: $e6 $fe
    ld b, d                                       ; $4302: $42
    rst $38                                       ; $4303: $ff
    rst $38                                       ; $4304: $ff
    dec a                                         ; $4305: $3d
    rst $38                                       ; $4306: $ff
    inc hl                                        ; $4307: $23
    cp $3f                                        ; $4308: $fe $3f
    pop bc                                        ; $430a: $c1
    ld a, a                                       ; $430b: $7f
    add a                                         ; $430c: $87
    cp $7f                                        ; $430d: $fe $7f
    pop bc                                        ; $430f: $c1
    ret nz                                        ; $4310: $c0

    ldh [$78], a                                  ; $4311: $e0 $78
    db $e3                                        ; $4313: $e3
    ld [$02c5], a                                 ; $4314: $ea $c5 $02
    add b                                         ; $4317: $80
    ld c, $fe                                     ; $4318: $0e $fe
    inc c                                         ; $431a: $0c
    ret nz                                        ; $431b: $c0

    inc hl                                        ; $431c: $23
    rst $38                                       ; $431d: $ff

jr_037_431e:
    ld c, d                                       ; $431e: $4a
    rst $38                                       ; $431f: $ff
    ld b, h                                       ; $4320: $44
    rst $38                                       ; $4321: $ff
    jr z, jr_037_431e                             ; $4322: $28 $fa

    adc d                                         ; $4324: $8a
    ret nz                                        ; $4325: $c0

    ld de, $62f2                                  ; $4326: $11 $f2 $62
    add a                                         ; $4329: $87
    ld hl, sp-$61                                 ; $432a: $f8 $9f
    db $e3                                        ; $432c: $e3
    cp a                                          ; $432d: $bf
    ccf                                           ; $432e: $3f
    adc $fd                                       ; $432f: $ce $fd
    sbc [hl]                                      ; $4331: $9e
    pop af                                        ; $4332: $f1
    ccf                                           ; $4333: $3f
    rst $20                                       ; $4334: $e7
    ld a, [c]                                     ; $4335: $f2
    ld h, c                                       ; $4336: $61
    xor h                                         ; $4337: $ac
    add a                                         ; $4338: $87
    set 7, [hl]                                   ; $4339: $cb $fe
    di                                            ; $433b: $f3
    ld [c], a                                     ; $433c: $e2
    ld l, e                                       ; $433d: $6b
    add b                                         ; $433e: $80
    ldh [$82], a                                  ; $433f: $e0 $82
    adc $61                                       ; $4341: $ce $61
    ld c, $0e                                     ; $4343: $0e $0e
    ccf                                           ; $4345: $3f
    rra                                           ; $4346: $1f
    ld de, $233f                                  ; $4347: $11 $3f $23
    ld a, a                                       ; $434a: $7f
    ld c, d                                       ; $434b: $4a
    jp nz, $9865                                  ; $434c: $c2 $65 $98

    add c                                         ; $434f: $81
    or c                                          ; $4350: $b1
    and e                                         ; $4351: $a3
    cp h                                          ; $4352: $bc
    ldh [$a2], a                                  ; $4353: $e0 $a2
    ld h, [hl]                                    ; $4355: $66
    sbc b                                         ; $4356: $98
    add h                                         ; $4357: $84
    rst $38                                       ; $4358: $ff
    add hl, bc                                    ; $4359: $09
    cp $e0                                        ; $435a: $fe $e0
    ld [$2cfe], sp                                ; $435c: $08 $fe $2c
    pop bc                                        ; $435f: $c1
    rst $38                                       ; $4360: $ff
    inc [hl]                                      ; $4361: $34
    rst $18                                       ; $4362: $df
    ld [hl], h                                    ; $4363: $74
    rst $08                                       ; $4364: $cf
    ld a, [hl]                                    ; $4365: $7e
    ei                                            ; $4366: $fb
    rst $30                                       ; $4367: $f7
    db $fc                                        ; $4368: $fc
    rst $28                                       ; $4369: $ef
    or e                                          ; $436a: $b3
    call nc, $f280                                ; $436b: $d4 $80 $f2
    rst $38                                       ; $436e: $ff
    ret nz                                        ; $436f: $c0

    rst $38                                       ; $4370: $ff
    ld a, l                                       ; $4371: $7d
    ld c, h                                       ; $4372: $4c
    adc $80                                       ; $4373: $ce $80
    ld d, d                                       ; $4375: $52
    rst $28                                       ; $4376: $ef
    rra                                           ; $4377: $1f
    ei                                            ; $4378: $fb
    and $d4                                       ; $4379: $e6 $d4
    add b                                         ; $437b: $80
    ld a, [$85ce]                                 ; $437c: $fa $ce $85
    dec h                                         ; $437f: $25
    ld b, b                                       ; $4380: $40
    push bc                                       ; $4381: $c5
    ld b, b                                       ; $4382: $40
    ret nz                                        ; $4383: $c0

    ld b, [hl]                                    ; $4384: $46
    add $a5                                       ; $4385: $c6 $a5
    rst $38                                       ; $4387: $ff
    rst $20                                       ; $4388: $e7
    reti                                          ; $4389: $d9


    ld a, a                                       ; $438a: $7f
    ld a, a                                       ; $438b: $7f
    ld b, h                                       ; $438c: $44
    ccf                                           ; $438d: $3f
    jr z, jr_037_43cf                             ; $438e: $28 $3f

    rst $38                                       ; $4390: $ff
    ld hl, $111f                                  ; $4391: $21 $1f $11
    rrca                                          ; $4394: $0f
    add hl, bc                                    ; $4395: $09
    rrca                                          ; $4396: $0f
    ld [$7f0f], sp                                ; $4397: $08 $0f $7f
    ld [$3437], sp                                ; $439a: $08 $37 $34
    sbc [hl]                                      ; $439d: $9e
    pop af                                        ; $439e: $f1
    cp a                                          ; $439f: $bf
    rst $20                                       ; $43a0: $e7
    cp h                                          ; $43a1: $bc
    add sp, -$0f                                  ; $43a2: $e8 $f1
    call z, $e15c                                 ; $43a4: $cc $5c $e1
    cp h                                          ; $43a7: $bc
    ld [$689e], a                                 ; $43a8: $ea $9e $68
    ld a, a                                       ; $43ab: $7f
    ret nz                                        ; $43ac: $c0

    ld a, a                                       ; $43ad: $7f
    add $bf                                       ; $43ae: $c6 $bf
    jp $e37e                                      ; $43b0: $c3 $7e $e3


    ld a, $e3                                     ; $43b3: $3e $e3
    ld a, $e8                                     ; $43b5: $3e $e8
    add b                                         ; $43b7: $80
    rrca                                          ; $43b8: $0f
    db $eb                                        ; $43b9: $eb
    rst $38                                       ; $43ba: $ff
    ld [bc], a                                    ; $43bb: $02
    ld a, h                                       ; $43bc: $7c
    ldh [rSC], a                                  ; $43bd: $e0 $02
    sub [hl]                                      ; $43bf: $96
    and b                                         ; $43c0: $a0
    jr nz, @+$01                                  ; $43c1: $20 $ff

    ld sp, $ffef                                  ; $43c3: $31 $ef $ff
    ld d, c                                       ; $43c6: $51
    rst $38                                       ; $43c7: $ff
    adc c                                         ; $43c8: $89
    or $c0                                        ; $43c9: $f6 $c0
    rra                                           ; $43cb: $1f

jr_037_43cc:
    push af                                       ; $43cc: $f5
    rra                                           ; $43cd: $1f
    db $db                                        ; $43ce: $db

jr_037_43cf:
    rst $38                                       ; $43cf: $ff
    add d                                         ; $43d0: $82
    add sp, -$20                                  ; $43d1: $e8 $e0
    jp Jump_000_0c7c                              ; $43d3: $c3 $7c $0c


    and b                                         ; $43d6: $a0
    ld sp, hl                                     ; $43d7: $f9
    cp a                                          ; $43d8: $bf
    rst $38                                       ; $43d9: $ff
    rst $38                                       ; $43da: $ff
    rst $38                                       ; $43db: $ff
    ld e, l                                       ; $43dc: $5d
    push af                                       ; $43dd: $f5
    pop bc                                        ; $43de: $c1

jr_037_43df:
    ld a, a                                       ; $43df: $7f
    jp nz, $ff7e                                  ; $43e0: $c2 $7e $ff

    add h                                         ; $43e3: $84
    db $fc                                        ; $43e4: $fc
    jr c, jr_037_43df                             ; $43e5: $38 $f8

    ld b, h                                       ; $43e7: $44
    db $fc                                        ; $43e8: $fc
    call nz, $fffc                                ; $43e9: $c4 $fc $ff
    ld b, h                                       ; $43ec: $44
    db $fc                                        ; $43ed: $fc
    inc h                                         ; $43ee: $24
    db $fc                                        ; $43ef: $fc
    ld d, a                                       ; $43f0: $57
    ld [hl], h                                    ; $43f1: $74
    ld c, a                                       ; $43f2: $4f
    ld a, h                                       ; $43f3: $7c
    rst $38                                       ; $43f4: $ff
    ld b, a                                       ; $43f5: $47
    ld a, h                                       ; $43f6: $7c
    inc hl                                        ; $43f7: $23
    ld a, $23                                     ; $43f8: $3e $23
    ld a, $11                                     ; $43fa: $3e $11
    rra                                           ; $43fc: $1f
    ld l, a                                       ; $43fd: $6f
    dec c                                         ; $43fe: $0d
    rrca                                          ; $43ff: $0f
    inc bc                                        ; $4400: $03
    inc bc                                        ; $4401: $03
    ld c, h                                       ; $4402: $4c
    pop hl                                        ; $4403: $e1
    rst $38                                       ; $4404: $ff
    ld h, b                                       ; $4405: $60
    ld d, b                                       ; $4406: $50
    and b                                         ; $4407: $a0
    push bc                                       ; $4408: $c5
    ld hl, $e0ba                                  ; $4409: $21 $ba $e0
    ret z                                         ; $440c: $c8

    or d                                          ; $440d: $b2
    ret nz                                        ; $440e: $c0

    ld c, h                                       ; $440f: $4c
    ldh [$bc], a                                  ; $4410: $e0 $bc
    push hl                                       ; $4412: $e5
    ld hl, sp-$71                                 ; $4413: $f8 $8f
    rst $30                                       ; $4415: $f7
    ld sp, hl                                     ; $4416: $f9
    ccf                                           ; $4417: $3f
    cp l                                          ; $4418: $bd

jr_037_4419:
    ld c, h                                       ; $4419: $4c
    ldh [$c1], a                                  ; $441a: $e0 $c1
    ld a, a                                       ; $441c: $7f
    jp $9e7e                                      ; $441d: $c3 $7e $9e


    ret z                                         ; $4420: $c8

    add c                                         ; $4421: $81
    ccf                                           ; $4422: $3f
    ldh a, [rIE]                                  ; $4423: $f0 $ff
    ld hl, sp-$0a                                 ; $4425: $f8 $f6
    ld h, b                                       ; $4427: $60
    jr z, jr_037_43cc                             ; $4428: $28 $a2

    ccf                                           ; $442a: $3f
    cp $ca                                        ; $442b: $fe $ca
    add d                                         ; $442d: $82
    rra                                           ; $442e: $1f
    nop                                           ; $442f: $00
    rst $30                                       ; $4430: $f7
    ld e, $e3                                     ; $4431: $1e $e3
    cp a                                          ; $4433: $bf
    ldh [$df], a                                  ; $4434: $e0 $df
    ld a, a                                       ; $4436: $7f
    ldh [$3f], a                                  ; $4437: $e0 $3f
    ldh [$3f], a                                  ; $4439: $e0 $3f
    and $81                                       ; $443b: $e6 $81
    rst $38                                       ; $443d: $ff
    rra                                           ; $443e: $1f
    rst $38                                       ; $443f: $ff
    sbc [hl]                                      ; $4440: $9e
    ld a, [c]                                     ; $4441: $f2
    ccf                                           ; $4442: $3f
    db $e3                                        ; $4443: $e3
    ccf                                           ; $4444: $3f
    db $e4                                        ; $4445: $e4
    ccf                                           ; $4446: $3f
    ld hl, sp-$02                                 ; $4447: $f8 $fe
    reti                                          ; $4449: $d9


    add b                                         ; $444a: $80
    pop af                                        ; $444b: $f1
    ld a, $fe                                     ; $444c: $3e $fe
    ldh [$e0], a                                  ; $444e: $e0 $e0
    adc b                                         ; $4450: $88
    ld hl, sp-$01                                 ; $4451: $f8 $ff
    ldh a, [rSVBK]                                ; $4453: $f0 $70
    pop hl                                        ; $4455: $e1
    jr nz, jr_037_4419                            ; $4456: $20 $c1

    ld b, b                                       ; $4458: $40
    add e                                         ; $4459: $83
    add b                                         ; $445a: $80
    ld a, h                                       ; $445b: $7c
    xor d                                         ; $445c: $aa
    add c                                         ; $445d: $81
    cp $e0                                        ; $445e: $fe $e0
    inc b                                         ; $4460: $04
    inc bc                                        ; $4461: $03
    ld [bc], a                                    ; $4462: $02
    add c                                         ; $4463: $81
    ld bc, $4880                                  ; $4464: $01 $80 $48
    ld a, h                                       ; $4467: $7c
    ld c, h                                       ; $4468: $4c
    ldh [$bc], a                                  ; $4469: $e0 $bc
    pop hl                                        ; $446b: $e1
    ld h, b                                       ; $446c: $60
    ld a, a                                       ; $446d: $7f
    jr nz, jr_037_44af                            ; $446e: $20 $3f

    jr nc, jr_037_44af                            ; $4470: $30 $3d

    and b                                         ; $4472: $a0
    rst $38                                       ; $4473: $ff
    rst $18                                       ; $4474: $df
    cp $2f                                        ; $4475: $fe $2f
    ld a, [$f9cf]                                 ; $4477: $fa $cf $f9
    rra                                           ; $447a: $1f
    pop af                                        ; $447b: $f1
    rst $18                                       ; $447c: $df
    rra                                           ; $447d: $1f
    di                                            ; $447e: $f3
    rra                                           ; $447f: $1f
    or $1f                                        ; $4480: $f6 $1f
    adc [hl]                                      ; $4482: $8e
    ldh [$87], a                                  ; $4483: $e0 $87
    db $fc                                        ; $4485: $fc
    rst $30                                       ; $4486: $f7
    add a                                         ; $4487: $87
    db $fc                                        ; $4488: $fc
    ld b, [hl]                                    ; $4489: $46
    cp $e0                                        ; $448a: $fe $e0
    adc h                                         ; $448c: $8c
    ld hl, sp-$04                                 ; $448d: $f8 $fc
    ld [hl], b                                    ; $448f: $70
    rst $38                                       ; $4490: $ff
    ld hl, sp+$20                                 ; $4491: $f8 $20
    ld hl, sp-$40                                 ; $4493: $f8 $c0
    rst $30                                       ; $4495: $f7
    inc e                                         ; $4496: $1c
    rst $18                                       ; $4497: $df
    rra                                           ; $4498: $1f
    xor $92                                       ; $4499: $ee $92
    pop hl                                        ; $449b: $e1
    call nz, $c37f                                ; $449c: $c4 $7f $c3
    ldh a, [$a1]                                  ; $449f: $f0 $a1
    ld a, a                                       ; $44a1: $7f
    and b                                         ; $44a2: $a0
    ldh [$5f], a                                  ; $44a3: $e0 $5f
    ldh a, [$f0]                                  ; $44a5: $f0 $f0
    ld [$08f8], sp                                ; $44a7: $08 $f8 $08
    add sp, $60                                   ; $44aa: $e8 $60
    inc b                                         ; $44ac: $04
    cp $e0                                        ; $44ad: $fe $e0

jr_037_44af:
    rst $38                                       ; $44af: $ff
    db $fc                                        ; $44b0: $fc
    db $fc                                        ; $44b1: $fc

jr_037_44b2:
    rra                                           ; $44b2: $1f
    rra                                           ; $44b3: $1f
    rla                                           ; $44b4: $17
    inc e                                         ; $44b5: $1c
    rra                                           ; $44b6: $1f
    rra                                           ; $44b7: $1f
    ei                                            ; $44b8: $fb
    jr nz, jr_037_44fa                            ; $44b9: $20 $3f

    cp $e1                                        ; $44bb: $fe $e1
    ld b, h                                       ; $44bd: $44
    ld a, a                                       ; $44be: $7f
    ld b, e                                       ; $44bf: $43
    ld a, a                                       ; $44c0: $7f
    rst $38                                       ; $44c1: $ff
    rst $10                                       ; $44c2: $d7
    rst $28                                       ; $44c3: $ef
    cp a                                          ; $44c4: $bf
    ldh [$dc], a                                  ; $44c5: $e0 $dc
    ld b, b                                       ; $44c7: $40
    ld hl, sp-$02                                 ; $44c8: $f8 $fe
    pop hl                                        ; $44ca: $e1
    add a                                         ; $44cb: $87

jr_037_44cc:
    db $fc                                        ; $44cc: $fc
    ei                                            ; $44cd: $fb
    rlca                                          ; $44ce: $07
    db $fc                                        ; $44cf: $fc
    jr jr_037_44b2                                ; $44d0: $18 $e0

    ld hl, $217f                                  ; $44d2: $21 $7f $21
    ld a, a                                       ; $44d5: $7f
    inc de                                        ; $44d6: $13
    ei                                            ; $44d7: $fb
    ccf                                           ; $44d8: $3f
    ld de, $6053                                  ; $44d9: $11 $53 $60
    rra                                           ; $44dc: $1f
    rra                                           ; $44dd: $1f
    ld de, $82fe                                  ; $44de: $11 $fe $82
    xor e                                         ; $44e1: $ab
    ld a, [hl]                                    ; $44e2: $7e
    ld b, d                                       ; $44e3: $42
    adc b                                         ; $44e4: $88
    ld h, b                                       ; $44e5: $60
    ld [hl+], a                                   ; $44e6: $22
    cp $e0                                        ; $44e7: $fe $e0
    ld hl, $e1f0                                  ; $44e9: $21 $f0 $e1
    ld b, c                                       ; $44ec: $41
    cp a                                          ; $44ed: $bf
    ld a, a                                       ; $44ee: $7f
    ld a, a                                       ; $44ef: $7f
    ld a, a                                       ; $44f0: $7f
    cp a                                          ; $44f1: $bf
    ld hl, $dabf                                  ; $44f2: $21 $bf $da
    ldh [$df], a                                  ; $44f5: $e0 $df
    ld d, l                                       ; $44f7: $55
    inc de                                        ; $44f8: $13
    or d                                          ; $44f9: $b2

jr_037_44fa:
    ld h, b                                       ; $44fa: $60
    ld de, $e0ce                                  ; $44fb: $11 $ce $e0
    db $fc                                        ; $44fe: $fc
    rst $08                                       ; $44ff: $cf
    add b                                         ; $4500: $80
    ld b, d                                       ; $4501: $42
    cp $e0                                        ; $4502: $fe $e0
    rst $28                                       ; $4504: $ef
    ld [hl+], a                                   ; $4505: $22
    cp $22                                        ; $4506: $fe $22
    rst $38                                       ; $4508: $ff
    ld b, [hl]                                    ; $4509: $46
    ret nz                                        ; $450a: $c0

    cp a                                          ; $450b: $bf
    inc sp                                        ; $450c: $33
    db $dd                                        ; $450d: $dd
    rst $28                                       ; $450e: $ef
    ld a, a                                       ; $450f: $7f
    add l                                         ; $4510: $85
    rst $38                                       ; $4511: $ff
    jp $809c                                      ; $4512: $c3 $9c $80


    push bc                                       ; $4515: $c5
    db $fc                                        ; $4516: $fc
    rst $38                                       ; $4517: $ff
    db $ed                                        ; $4518: $ed
    rst $38                                       ; $4519: $ff
    ld [c], a                                     ; $451a: $e2
    ld h, b                                       ; $451b: $60
    ld de, $dd1e                                  ; $451c: $11 $1e $dd
    ld h, b                                       ; $451f: $60
    jr nc, jr_037_4541                            ; $4520: $30 $1f

    ccf                                           ; $4522: $3f
    rst $10                                       ; $4523: $d7
    rra                                           ; $4524: $1f
    ld a, b                                       ; $4525: $78
    rra                                           ; $4526: $1f
    jr nz, jr_037_44cc                            ; $4527: $20 $a3

    cp a                                          ; $4529: $bf
    sub d                                         ; $452a: $92
    jr z, @+$01                                   ; $452b: $28 $ff

    rra                                           ; $452d: $1f
    rst $18                                       ; $452e: $df
    ld a, a                                       ; $452f: $7f
    ld de, $717f                                  ; $4530: $11 $7f $71
    adc a                                         ; $4533: $8f
    ld h, c                                       ; $4534: $61
    ret nz                                        ; $4535: $c0

    rst $38                                       ; $4536: $ff
    rst $38                                       ; $4537: $ff
    db $ed                                        ; $4538: $ed
    add c                                         ; $4539: $81
    ld d, e                                       ; $453a: $53
    jr nz, @+$01                                  ; $453b: $20 $ff

    rra                                           ; $453d: $1f
    ld e, h                                       ; $453e: $5c
    ld h, b                                       ; $453f: $60
    rla                                           ; $4540: $17

jr_037_4541:
    ld hl, sp+$1f                                 ; $4541: $f8 $1f
    rra                                           ; $4543: $1f
    ret nc                                        ; $4544: $d0

    rra                                           ; $4545: $1f
    rst $18                                       ; $4546: $df
    rra                                           ; $4547: $1f
    sub b                                         ; $4548: $90
    ret nc                                        ; $4549: $d0

    ldh [rP1], a                                  ; $454a: $e0 $00
    nop                                           ; $454c: $00
    nop                                           ; $454d: $00
    nop                                           ; $454e: $00
    nop                                           ; $454f: $00
    ld e, a                                       ; $4550: $5f
    rst $38                                       ; $4551: $ff
    rst $38                                       ; $4552: $ff
    rst $38                                       ; $4553: $ff
    nop                                           ; $4554: $00
    cp $fe                                        ; $4555: $fe $fe
    ldh [$fc], a                                  ; $4557: $e0 $fc
    cp $e0                                        ; $4559: $fe $e0
    xor a                                         ; $455b: $af
    ld hl, sp+$00                                 ; $455c: $f8 $00
    add d                                         ; $455e: $82
    nop                                           ; $455f: $00
    ldh a, [$e0]                                  ; $4560: $f0 $e0
    add b                                         ; $4562: $80
    cp $e1                                        ; $4563: $fe $e1
    cp a                                          ; $4565: $bf
    cp [hl]                                       ; $4566: $be
    cp $e0                                        ; $4567: $fe $e0
    sbc a                                         ; $4569: $9f
    add b                                         ; $456a: $80
    pop bc                                        ; $456b: $c1
    add b                                         ; $456c: $80
    nop                                           ; $456d: $00
    rst $38                                       ; $456e: $ff
    db $ec                                        ; $456f: $ec
    jp nz, Jump_000_00ef                          ; $4570: $c2 $ef $00

    ld [c], a                                     ; $4573: $e2
    nop                                           ; $4574: $00
    ldh a, [$fe]                                  ; $4575: $f0 $fe
    ldh [$e0], a                                  ; $4577: $e0 $e0
    nop                                           ; $4579: $00
    pop hl                                        ; $457a: $e1
    rst $38                                       ; $457b: $ff
    nop                                           ; $457c: $00
    rst $00                                       ; $457d: $c7
    nop                                           ; $457e: $00
    rst $08                                       ; $457f: $cf
    nop                                           ; $4580: $00
    ld b, e                                       ; $4581: $43
    nop                                           ; $4582: $00
    ld b, a                                       ; $4583: $47
    rst $38                                       ; $4584: $ff
    nop                                           ; $4585: $00
    rrca                                          ; $4586: $0f
    rlca                                          ; $4587: $07
    jr jr_037_45a9                                ; $4588: $18 $1f

    inc hl                                        ; $458a: $23
    ccf                                           ; $458b: $3f
    adc $df                                       ; $458c: $ce $df
    ld a, l                                       ; $458e: $7d
    sbc $71                                       ; $458f: $de $71
    cp a                                          ; $4591: $bf
    rst $20                                       ; $4592: $e7
    ldh [$e2], a                                  ; $4593: $e0 $e2
    ldh a, [$0c]                                  ; $4595: $f0 $0c
    rst $38                                       ; $4597: $ff
    db $fc                                        ; $4598: $fc
    ld [c], a                                     ; $4599: $e2
    cp $b9                                        ; $459a: $fe $b9
    ld e, a                                       ; $459c: $5f
    dec a                                         ; $459d: $3d
    rst $00                                       ; $459e: $c7
    cp $f9                                        ; $459f: $fe $f9
    di                                            ; $45a1: $f3
    ldh [$e2], a                                  ; $45a2: $e0 $e2
    cp $e0                                        ; $45a4: $fe $e0
    rlca                                          ; $45a6: $07
    nop                                           ; $45a7: $00
    add a                                         ; $45a8: $87

jr_037_45a9:
    nop                                           ; $45a9: $00
    db $e3                                        ; $45aa: $e3
    rst $30                                       ; $45ab: $f7
    nop                                           ; $45ac: $00
    di                                            ; $45ad: $f3
    add b                                         ; $45ae: $80
    ldh a, [$e6]                                  ; $45af: $f0 $e6
    rlca                                          ; $45b1: $07
    sbc b                                         ; $45b2: $98
    rra                                           ; $45b3: $1f
    db $e3                                        ; $45b4: $e3
    ld a, h                                       ; $45b5: $7c
    call z, $b0e0                                 ; $45b6: $cc $e0 $b0
    push hl                                       ; $45b9: $e5
    ldh a, [$f0]                                  ; $45ba: $f0 $f0
    dec c                                         ; $45bc: $0d
    db $fc                                        ; $45bd: $fc
    db $e3                                        ; $45be: $e3
    call z, Call_037_5fe0                         ; $45bf: $cc $e0 $5f
    jp $c780                                      ; $45c2: $c3 $80 $c7


    add b                                         ; $45c5: $80
    adc a                                         ; $45c6: $8f
    cp $e0                                        ; $45c7: $fe $e0
    add a                                         ; $45c9: $87
    cp $e0                                        ; $45ca: $fe $e0
    rst $38                                       ; $45cc: $ff
    db $e3                                        ; $45cd: $e3
    add b                                         ; $45ce: $80
    di                                            ; $45cf: $f3
    add b                                         ; $45d0: $80
    rst $38                                       ; $45d1: $ff
    nop                                           ; $45d2: $00
    rst $38                                       ; $45d3: $ff
    nop                                           ; $45d4: $00
    db $fd                                        ; $45d5: $fd
    ld a, a                                       ; $45d6: $7f
    cp $e0                                        ; $45d7: $fe $e0
    ccf                                           ; $45d9: $3f
    ld bc, $313f                                  ; $45da: $01 $3f $31
    ld e, [hl]                                    ; $45dd: $5e
    ld [hl], e                                    ; $45de: $73
    rst $38                                       ; $45df: $ff
    ld c, l                                       ; $45e0: $4d
    ld a, a                                       ; $45e1: $7f
    ei                                            ; $45e2: $fb
    db $fc                                        ; $45e3: $fc
    rst $28                                       ; $45e4: $ef
    or e                                          ; $45e5: $b3
    rst $38                                       ; $45e6: $ff
    call z, $ffff                                 ; $45e7: $cc $ff $ff
    ld a, [c]                                     ; $45ea: $f2
    ld a, a                                       ; $45eb: $7f
    ret nz                                        ; $45ec: $c0

    ld a, a                                       ; $45ed: $7f
    call z, $feff                                 ; $45ee: $cc $ff $fe
    rst $38                                       ; $45f1: $ff
    rst $38                                       ; $45f2: $ff
    ld d, d                                       ; $45f3: $52
    rst $28                                       ; $45f4: $ef
    rra                                           ; $45f5: $1f
    ei                                            ; $45f6: $fb
    and $ff                                       ; $45f7: $e6 $ff
    add hl, de                                    ; $45f9: $19
    rst $28                                       ; $45fa: $ef
    rst $38                                       ; $45fb: $ff
    daa                                           ; $45fc: $27
    rst $38                                       ; $45fd: $ff
    ld bc, $e0fa                                  ; $45fe: $01 $fa $e0
    ccf                                           ; $4601: $3f
    rst $38                                       ; $4602: $ff
    dec h                                         ; $4603: $25
    ld a, [$e142]                                 ; $4604: $fa $42 $e1
    cp $fe                                        ; $4607: $fe $fe
    ldh [$7c], a                                  ; $4609: $e0 $7c
    ret nz                                        ; $460b: $c0

    ld a, h                                       ; $460c: $7c
    ret nz                                        ; $460d: $c0

    cp [hl]                                       ; $460e: $be
    rst $20                                       ; $460f: $e7
    and $d5                                       ; $4610: $e6 $d5
    ld [hl], a                                    ; $4612: $77
    ret nz                                        ; $4613: $c0

    and $fe                                       ; $4614: $e6 $fe
    pop hl                                        ; $4616: $e1
    ld sp, $7151                                  ; $4617: $31 $51 $71
    ld d, b                                       ; $461a: $50
    ld e, h                                       ; $461b: $5c
    pop hl                                        ; $461c: $e1
    cp h                                          ; $461d: $bc
    jp hl                                         ; $461e: $e9


    ld e, h                                       ; $461f: $5c
    pop hl                                        ; $4620: $e1
    cp h                                          ; $4621: $bc
    ld [$c000], a                                 ; $4622: $ea $00 $c0
    db $e3                                        ; $4625: $e3
    db $fc                                        ; $4626: $fc
    cp $e0                                        ; $4627: $fe $e0
    rst $08                                       ; $4629: $cf
    ld a, b                                       ; $462a: $78
    ret nz                                        ; $462b: $c0

    ld b, [hl]                                    ; $462c: $46
    add $b0                                       ; $462d: $c6 $b0
    push hl                                       ; $462f: $e5
    ldh a, [$e1]                                  ; $4630: $f0 $e1
    ld hl, sp-$80                                 ; $4632: $f8 $80
    ld sp, hl                                     ; $4634: $f9
    add d                                         ; $4635: $82
    ld [hl], b                                    ; $4636: $70
    rst $20                                       ; $4637: $e7
    xor [hl]                                      ; $4638: $ae
    ldh [$1f], a                                  ; $4639: $e0 $1f
    nop                                           ; $463b: $00
    ld b, c                                       ; $463c: $41
    nop                                           ; $463d: $00
    ld b, c                                       ; $463e: $41
    rst $38                                       ; $463f: $ff
    ld a, a                                       ; $4640: $7f
    ld a, a                                       ; $4641: $7f
    ccf                                           ; $4642: $3f
    ld a, a                                       ; $4643: $7f
    ld h, e                                       ; $4644: $63
    ld a, a                                       ; $4645: $7f
    ld b, l                                       ; $4646: $45
    ld a, a                                       ; $4647: $7f
    rst $38                                       ; $4648: $ff
    ld b, e                                       ; $4649: $43
    cp a                                          ; $464a: $bf
    dec h                                         ; $464b: $25
    rst $38                                       ; $464c: $ff
    ld [hl+], a                                   ; $464d: $22
    rst $38                                       ; $464e: $ff
    ld de, $fdff                                  ; $464f: $11 $ff $fd

jr_037_4652:
    jr nz, jr_037_4652                            ; $4652: $20 $fe

    ldh [$e1], a                                  ; $4654: $e0 $e1
    rra                                           ; $4656: $1f
    pop af                                        ; $4657: $f1
    rrca                                          ; $4658: $0f
    ld sp, hl                                     ; $4659: $f9
    rst $28                                       ; $465a: $ef
    rst $38                                       ; $465b: $ff
    cp $fb                                        ; $465c: $fe $fb
    sbc a                                         ; $465e: $9f
    push af                                       ; $465f: $f5
    rra                                           ; $4660: $1f
    rst $38                                       ; $4661: $ff
    add d                                         ; $4662: $82
    rst $38                                       ; $4663: $ff
    rst $38                                       ; $4664: $ff
    ld [bc], a                                    ; $4665: $02
    rst $38                                       ; $4666: $ff
    jp $c77c                                      ; $4667: $c3 $7c $c7


    ld a, b                                       ; $466a: $78
    rst $08                                       ; $466b: $cf
    pop af                                        ; $466c: $f1
    rst $38                                       ; $466d: $ff
    cp a                                          ; $466e: $bf
    rst $18                                       ; $466f: $df
    cp $af                                        ; $4670: $fe $af

jr_037_4672:
    ld a, [$7fc9]                                 ; $4672: $fa $c9 $7f
    pop bc                                        ; $4675: $c1

jr_037_4676:
    rst $38                                       ; $4676: $ff
    ld a, a                                       ; $4677: $7f
    add d                                         ; $4678: $82
    cp $04                                        ; $4679: $fe $04
    db $fc                                        ; $467b: $fc
    jr c, jr_037_4676                             ; $467c: $38 $f8

    pop hl                                        ; $467e: $e1
    db $fd                                        ; $467f: $fd
    ret nz                                        ; $4680: $c0

    ret nz                                        ; $4681: $c0

    pop bc                                        ; $4682: $c1
    ld c, [hl]                                    ; $4683: $4e
    ld a, e                                       ; $4684: $7b
    ld b, l                                       ; $4685: $45
    ld a, a                                       ; $4686: $7f
    ld hl, $bf3f                                  ; $4687: $21 $3f $bf
    ld hl, $103f                                  ; $468a: $21 $3f $10
    rra                                           ; $468d: $1f
    adc [hl]                                      ; $468e: $8e
    rrca                                          ; $468f: $0f
    jr c, jr_037_4672                             ; $4690: $38 $e0

    ld sp, $2c7c                                  ; $4692: $31 $7c $2c
    pop hl                                        ; $4695: $e1
    cp h                                          ; $4696: $bc
    db $e4                                        ; $4697: $e4
    ldh a, [rIF]                                  ; $4698: $f0 $0f
    ld hl, sp-$31                                 ; $469a: $f8 $cf
    cp $2c                                        ; $469c: $fe $2c
    ld [c], a                                     ; $469e: $e2
    cp $bc                                        ; $469f: $fe $bc
    ld [c], a                                     ; $46a1: $e2
    db $fc                                        ; $46a2: $fc
    rlca                                          ; $46a3: $07
    ld hl, sp+$0f                                 ; $46a4: $f8 $0f
    pop af                                        ; $46a6: $f1
    ccf                                           ; $46a7: $3f
    and l                                         ; $46a8: $a5
    ei                                            ; $46a9: $fb
    rst $20                                       ; $46aa: $e7
    reti                                          ; $46ab: $d9


    cp [hl]                                       ; $46ac: $be
    ldh [$c2], a                                  ; $46ad: $e0 $c2
    ld a, [hl]                                    ; $46af: $7e
    add h                                         ; $46b0: $84
    db $fc                                        ; $46b1: $fc
    add hl, de                                    ; $46b2: $19
    rst $38                                       ; $46b3: $ff
    ld hl, sp+$77                                 ; $46b4: $f8 $77
    ldh a, [$cf]                                  ; $46b6: $f0 $cf
    ld hl, sp-$3e                                 ; $46b8: $f8 $c2
    add b                                         ; $46ba: $80
    ld [c], a                                     ; $46bb: $e2
    cp e                                          ; $46bc: $bb
    add b                                         ; $46bd: $80
    ldh a, [$fe]                                  ; $46be: $f0 $fe
    ldh [$e0], a                                  ; $46c0: $e0 $e0
    add b                                         ; $46c2: $80
    pop hl                                        ; $46c3: $e1
    add $c0                                       ; $46c4: $c6 $c0
    rst $08                                       ; $46c6: $cf
    rst $38                                       ; $46c7: $ff
    add b                                         ; $46c8: $80
    rst $38                                       ; $46c9: $ff
    db $10                                        ; $46ca: $10
    rst $38                                       ; $46cb: $ff
    ld [$06ff], sp                                ; $46cc: $08 $ff $06
    rst $38                                       ; $46cf: $ff
    db $fd                                        ; $46d0: $fd
    ld bc, $c530                                  ; $46d1: $01 $30 $c5
    di                                            ; $46d4: $f3
    sbc [hl]                                      ; $46d5: $9e
    pop af                                        ; $46d6: $f1
    ld e, a                                       ; $46d7: $5f
    ldh a, [$3f]                                  ; $46d8: $f0 $3f
    rst $38                                       ; $46da: $ff
    ldh a, [rIE]                                  ; $46db: $f0 $ff
    jr nc, jr_037_46fe                            ; $46dd: $30 $1f

    jr nc, jr_037_4700                            ; $46df: $30 $1f

    rra                                           ; $46e1: $1f
    rrca                                          ; $46e2: $0f
    rst $38                                       ; $46e3: $ff
    ld c, e                                       ; $46e4: $4b
    ld c, $cf                                     ; $46e5: $0e $cf
    ld a, c                                       ; $46e7: $79
    adc a                                         ; $46e8: $8f
    ld sp, hl                                     ; $46e9: $f9
    rrca                                          ; $46ea: $0f

jr_037_46eb:
    ei                                            ; $46eb: $fb
    rst $38                                       ; $46ec: $ff
    rrca                                          ; $46ed: $0f
    db $fc                                        ; $46ee: $fc
    rrca                                          ; $46ef: $0f
    ld hl, sp+$0f                                 ; $46f0: $f8 $0f
    db $fc                                        ; $46f2: $fc
    ei                                            ; $46f3: $fb
    ld a, [c]                                     ; $46f4: $f2
    di                                            ; $46f5: $f3
    db $d3                                        ; $46f6: $d3
    ld [hl], c                                    ; $46f7: $71
    and b                                         ; $46f8: $a0
    jp $c00c                                      ; $46f9: $c3 $0c $c0


    ld h, b                                       ; $46fc: $60
    rst $38                                       ; $46fd: $ff

jr_037_46fe:
    sbc h                                         ; $46fe: $9c
    db $e3                                        ; $46ff: $e3

jr_037_4700:
    ld [hl], a                                    ; $4700: $77
    ld a, $e9                                     ; $4701: $3e $e9
    cp a                                          ; $4703: $bf
    inc a                                         ; $4704: $3c
    ldh [rNR42], a                                ; $4705: $e0 $21
    rst $38                                       ; $4707: $ff
    ld [de], a                                    ; $4708: $12
    jr c, jr_037_46eb                             ; $4709: $38 $e0

    db $fd                                        ; $470b: $fd
    ld [$e0b8], sp                                ; $470c: $08 $b8 $e0
    inc b                                         ; $470f: $04
    add e                                         ; $4710: $83
    ld [bc], a                                    ; $4711: $02
    ei                                            ; $4712: $fb
    cp a                                          ; $4713: $bf
    push af                                       ; $4714: $f5

jr_037_4715:
    cp l                                          ; $4715: $bd
    ld e, a                                       ; $4716: $5f
    cp h                                          ; $4717: $bc
    ldh [$1f], a                                  ; $4718: $e0 $1f
    ldh a, [$9f]                                  ; $471a: $f0 $9f
    ldh a, [$b8]                                  ; $471c: $f0 $b8
    ldh [$d0], a                                  ; $471e: $e0 $d0
    xor c                                         ; $4720: $a9
    ld e, a                                       ; $4721: $5f
    inc a                                         ; $4722: $3c
    pop hl                                        ; $4723: $e1
    cp h                                          ; $4724: $bc
    ld [c], a                                     ; $4725: $e2
    ld a, [$e3bc]                                 ; $4726: $fa $bc $e3
    and a                                         ; $4729: $a7
    cp $e0                                        ; $472a: $fe $e0
    rst $10                                       ; $472c: $d7
    rst $38                                       ; $472d: $ff
    db $fc                                        ; $472e: $fc
    rst $00                                       ; $472f: $c7
    ld a, h                                       ; $4730: $7c
    rst $28                                       ; $4731: $ef
    jr c, @+$01                                   ; $4732: $38 $ff

    jr nc, jr_037_4715                            ; $4734: $30 $df

    di                                            ; $4736: $f3
    ld b, b                                       ; $4737: $40
    pop bc                                        ; $4738: $c1
    call nz, $c0a2                                ; $4739: $c4 $a2 $c0
    xor c                                         ; $473c: $a9
    ld e, a                                       ; $473d: $5f
    rra                                           ; $473e: $1f
    ld d, b                                       ; $473f: $50
    rra                                           ; $4740: $1f
    db $fd                                        ; $4741: $fd
    db $10                                        ; $4742: $10
    cp $e0                                        ; $4743: $fe $e0
    ld [hl+], a                                   ; $4745: $22
    ccf                                           ; $4746: $3f
    and c                                         ; $4747: $a1
    ccf                                           ; $4748: $3f
    ldh [$3f], a                                  ; $4749: $e0 $3f
    ld a, a                                       ; $474b: $7f
    rst $38                                       ; $474c: $ff
    ccf                                           ; $474d: $3f
    ld a, [$06f8]                                 ; $474e: $fa $f8 $06
    db $fc                                        ; $4751: $fc
    inc b                                         ; $4752: $04
    cp $e0                                        ; $4753: $fe $e0
    rst $30                                       ; $4755: $f7
    ld b, d                                       ; $4756: $42
    cp $83                                        ; $4757: $fe $83
    cp $e0                                        ; $4759: $fe $e0
    rst $38                                       ; $475b: $ff
    cp $65                                        ; $475c: $fe $65
    ld a, a                                       ; $475e: $7f
    cp a                                          ; $475f: $bf
    ld a, c                                       ; $4760: $79
    ccf                                           ; $4761: $3f
    inc de                                        ; $4762: $13
    ld e, $0f                                     ; $4763: $1e $0f
    inc c                                         ; $4765: $0c
    ldh [$a4], a                                  ; $4766: $e0 $a4
    nop                                           ; $4768: $00
    ei                                            ; $4769: $fb
    jp $a001                                      ; $476a: $c3 $01 $a0


    xor e                                         ; $476d: $ab
    rst $08                                       ; $476e: $cf
    adc a                                         ; $476f: $8f
    ld c, e                                       ; $4770: $4b
    ld c, $0f                                     ; $4771: $0e $0f
    db $fd                                        ; $4773: $fd
    rrca                                          ; $4774: $0f
    cp [hl]                                       ; $4775: $be
    pop hl                                        ; $4776: $e1
    sub b                                         ; $4777: $90
    rra                                           ; $4778: $1f
    ld [c], a                                     ; $4779: $e2
    ccf                                           ; $477a: $3f
    pop hl                                        ; $477b: $e1
    ccf                                           ; $477c: $3f
    cp a                                          ; $477d: $bf
    di                                            ; $477e: $f3
    di                                            ; $477f: $f3
    jp nc, $f870                                  ; $4780: $d2 $70 $f8

    ld hl, sp-$42                                 ; $4783: $f8 $be
    pop hl                                        ; $4785: $e1
    dec b                                         ; $4786: $05
    ei                                            ; $4787: $fb
    db $fc                                        ; $4788: $fc
    ld b, e                                       ; $4789: $43
    cp [hl]                                       ; $478a: $be
    pop hl                                        ; $478b: $e1
    ld b, d                                       ; $478c: $42
    rst $38                                       ; $478d: $ff
    ld b, d                                       ; $478e: $42
    cp $42                                        ; $478f: $fe $42
    rst $38                                       ; $4791: $ff
    cp $44                                        ; $4792: $fe $44
    db $fc                                        ; $4794: $fc
    ld b, h                                       ; $4795: $44
    db $fc                                        ; $4796: $fc
    add h                                         ; $4797: $84
    ld hl, sp-$08                                 ; $4798: $f8 $f8
    ld h, e                                       ; $479a: $63
    ld a, [$9c88]                                 ; $479b: $fa $88 $9c
    pop hl                                        ; $479e: $e1
    ld a, $e0                                     ; $479f: $3e $e0
    cp $e4                                        ; $47a1: $fe $e4
    cp a                                          ; $47a3: $bf
    ld sp, $e19c                                  ; $47a4: $31 $9c $e1
    rst $28                                       ; $47a7: $ef
    rst $38                                       ; $47a8: $ff
    add h                                         ; $47a9: $84
    ld a, a                                       ; $47aa: $7f
    ld b, h                                       ; $47ab: $44
    cp $e0                                        ; $47ac: $fe $e0
    ld b, d                                       ; $47ae: $42
    rst $38                                       ; $47af: $ff
    jp nc, $ffdb                                  ; $47b0: $d2 $db $ff

    and c                                         ; $47b3: $a1
    ld d, b                                       ; $47b4: $50
    and b                                         ; $47b5: $a0
    ld bc, $fe0f                                  ; $47b6: $01 $0f $fe
    ldh [rTAC], a                                 ; $47b9: $e0 $07
    ld bc, $87ff                                  ; $47bb: $01 $ff $87
    ld bc, $01e3                                  ; $47be: $01 $e3 $01
    rst $38                                       ; $47c1: $ff
    rst $38                                       ; $47c2: $ff
    ld a, [$df88]                                 ; $47c3: $fa $88 $df
    ld a, [$6898]                                 ; $47c6: $fa $98 $68
    ld hl, sp+$08                                 ; $47c9: $f8 $08
    cp $e0                                        ; $47cb: $fe $e0
    ld sp, hl                                     ; $47cd: $f9
    ld hl, sp-$11                                 ; $47ce: $f8 $ef
    rrca                                          ; $47d0: $0f
    ld hl, sp-$01                                 ; $47d1: $f8 $ff
    rst $38                                       ; $47d3: $ff
    ld d, b                                       ; $47d4: $50
    xor e                                         ; $47d5: $ab
    rst $38                                       ; $47d6: $ff
    rst $38                                       ; $47d7: $ff
    xor $9e                                       ; $47d8: $ee $9e
    adc h                                         ; $47da: $8c
    ldh [$e1], a                                  ; $47db: $e0 $e1
    ccf                                           ; $47dd: $3f
    cp $1e                                        ; $47de: $fe $1e
    db $10                                        ; $47e0: $10
    and e                                         ; $47e1: $a3
    jp nc, $af80                                  ; $47e2: $d2 $80 $af

    rst $18                                       ; $47e5: $df
    ld e, a                                       ; $47e6: $5f
    ld de, $171f                                  ; $47e7: $11 $1f $17
    jr jr_037_4818                                ; $47ea: $18 $2c

    ldh [$9f], a                                  ; $47ec: $e0 $9f
    rra                                           ; $47ee: $1f
    rrca                                          ; $47ef: $0f
    ldh a, [$1f]                                  ; $47f0: $f0 $1f
    rst $38                                       ; $47f2: $ff
    rst $38                                       ; $47f3: $ff
    ldh a, [$84]                                  ; $47f4: $f0 $84
    add b                                         ; $47f6: $80
    call nz, $e0f0                                ; $47f7: $c4 $f0 $e0
    ld [hl], b                                    ; $47fa: $70
    jp z, $a2fe                                   ; $47fb: $ca $fe $a2

    add b                                         ; $47fe: $80
    ld b, c                                       ; $47ff: $41
    rst $38                                       ; $4800: $ff
    ld b, b                                       ; $4801: $40
    rst $38                                       ; $4802: $ff
    jp $e03f                                      ; $4803: $c3 $3f $e0


    rst $38                                       ; $4806: $ff
    rra                                           ; $4807: $1f
    ldh a, [$8f]                                  ; $4808: $f0 $8f
    db $fc                                        ; $480a: $fc
    ei                                            ; $480b: $fb
    rst $38                                       ; $480c: $ff
    push af                                       ; $480d: $f5
    ld e, a                                       ; $480e: $5f
    db $eb                                        ; $480f: $eb
    rst $38                                       ; $4810: $ff
    inc b                                         ; $4811: $04
    cp $e0                                        ; $4812: $fe $e0
    add a                                         ; $4814: $87
    ld [hl], $c0                                  ; $4815: $36 $c0
    rra                                           ; $4817: $1f

jr_037_4818:
    rst $30                                       ; $4818: $f7
    ld a, [hl]                                    ; $4819: $7e
    ld a, a                                       ; $481a: $7f
    rst $18                                       ; $481b: $df
    ld sp, hl                                     ; $481c: $f9
    xor a                                         ; $481d: $af
    ld hl, sp-$7e                                 ; $481e: $f8 $82
    cp $86                                        ; $4820: $fe $86
    db $f4                                        ; $4822: $f4
    and b                                         ; $4823: $a0
    rst $38                                       ; $4824: $ff
    ld c, h                                       ; $4825: $4c
    db $fc                                        ; $4826: $fc
    add $fe                                       ; $4827: $c6 $fe
    and e                                         ; $4829: $a3
    cp $d3                                        ; $482a: $fe $d3
    ld a, [hl]                                    ; $482c: $7e
    rst $18                                       ; $482d: $df
    rst $20                                       ; $482e: $e7
    cp h                                          ; $482f: $bc
    and l                                         ; $4830: $a5
    rst $20                                       ; $4831: $e7
    sbc e                                         ; $4832: $9b
    and $c0                                       ; $4833: $e6 $c0
    ld b, e                                       ; $4835: $43
    ld a, [hl]                                    ; $4836: $7e
    rst $38                                       ; $4837: $ff
    ld hl, $903f                                  ; $4838: $21 $3f $90
    rra                                           ; $483b: $1f
    db $ec                                        ; $483c: $ec
    rrca                                          ; $483d: $0f
    di                                            ; $483e: $f3
    inc bc                                        ; $483f: $03
    rst $28                                       ; $4840: $ef
    rst $38                                       ; $4841: $ff
    db $fc                                        ; $4842: $fc
    rst $38                                       ; $4843: $ff
    and h                                         ; $4844: $a4
    cp h                                          ; $4845: $bc
    rst $20                                       ; $4846: $e7
    rrca                                          ; $4847: $0f
    db $fc                                        ; $4848: $fc
    ld d, d                                       ; $4849: $52
    rst $38                                       ; $484a: $ff
    sbc $a2                                       ; $484b: $de $a2
    cp $84                                        ; $484d: $fe $84
    db $fc                                        ; $484f: $fc
    add h                                         ; $4850: $84
    db $fc                                        ; $4851: $fc
    ld [$f87f], sp                                ; $4852: $08 $7f $f8
    ld [hl], c                                    ; $4855: $71
    ldh a, [$9f]                                  ; $4856: $f0 $9f
    ld hl, sp-$71                                 ; $4858: $f8 $8f
    db $fc                                        ; $485a: $fc
    ldh [$81], a                                  ; $485b: $e0 $81
    cp e                                          ; $485d: $bb
    cp $00                                        ; $485e: $fe $00
    ld [bc], a                                    ; $4860: $02
    and b                                         ; $4861: $a0
    ld b, $ff                                     ; $4862: $06 $ff
    add hl, sp                                    ; $4864: $39
    sub [hl]                                      ; $4865: $96
    ldh [$92], a                                  ; $4866: $e0 $92
    rst $18                                       ; $4868: $df
    rst $08                                       ; $4869: $cf
    ld a, b                                       ; $486a: $78
    adc a                                         ; $486b: $8f
    ld hl, sp+$0f                                 ; $486c: $f8 $0f
    ld h, d                                       ; $486e: $62
    ret nz                                        ; $486f: $c0

    dec c                                         ; $4870: $0d
    db $fd                                        ; $4871: $fd
    rst $38                                       ; $4872: $ff
    inc c                                         ; $4873: $0c
    ld hl, sp-$08                                 ; $4874: $f8 $f8
    ldh a, [$d2]                                  ; $4876: $f0 $d2
    ld [hl], b                                    ; $4878: $70
    rst $38                                       ; $4879: $ff
    ld e, b                                       ; $487a: $58
    xor e                                         ; $487b: $ab
    rst $38                                       ; $487c: $ff
    adc b                                         ; $487d: $88
    xor $a0                                       ; $487e: $ee $a0
    db $10                                        ; $4880: $10
    ld l, b                                       ; $4881: $68
    and b                                         ; $4882: $a0
    ret nz                                        ; $4883: $c0

    ld d, b                                       ; $4884: $50
    and c                                         ; $4885: $a1
    rst $38                                       ; $4886: $ff
    ld sp, hl                                     ; $4887: $f9
    inc e                                         ; $4888: $1c
    ld e, $c2                                     ; $4889: $1e $c2
    ld a, [de]                                    ; $488b: $1a
    pop bc                                        ; $488c: $c1

jr_037_488d:
    jr @+$01                                      ; $488d: $18 $ff

    ld b, $83                                     ; $488f: $06 $83
    ld bc, $6cde                                  ; $4891: $01 $de $6c
    ldh [$9f], a                                  ; $4894: $e0 $9f
    di                                            ; $4896: $f3
    ld e, $f1                                     ; $4897: $1e $f1

jr_037_4899:
    ld [hl+], a                                   ; $4899: $22
    pop bc                                        ; $489a: $c1
    cp a                                          ; $489b: $bf
    ldh a, [$7f]                                  ; $489c: $f0 $7f
    rra                                           ; $489e: $1f
    ldh a, [$3f]                                  ; $489f: $f0 $3f
    rst $18                                       ; $48a1: $df
    db $fd                                        ; $48a2: $fd
    xor a                                         ; $48a3: $af
    ld hl, sp-$44                                 ; $48a4: $f8 $bc
    push hl                                       ; $48a6: $e5
    rst $18                                       ; $48a7: $df
    rrca                                          ; $48a8: $0f
    db $fc                                        ; $48a9: $fc
    dec bc                                        ; $48aa: $0b
    ld a, [$1e47]                                 ; $48ab: $fa $47 $1e
    ret nz                                        ; $48ae: $c0

    rst $08                                       ; $48af: $cf
    ld a, b                                       ; $48b0: $78
    di                                            ; $48b1: $f3
    rst $38                                       ; $48b2: $ff
    or b                                          ; $48b3: $b0
    xor b                                         ; $48b4: $a8
    and b                                         ; $48b5: $a0
    cp h                                          ; $48b6: $bc
    ldh [$c1], a                                  ; $48b7: $e0 $c1
    ld b, b                                       ; $48b9: $40
    rst $38                                       ; $48ba: $ff
    and e                                         ; $48bb: $a3
    cp a                                          ; $48bc: $bf
    cp $94                                        ; $48bd: $fe $94
    ld hl, sp+$48                                 ; $48bf: $f8 $48
    ldh a, [$30]                                  ; $48c1: $f0 $30
    nop                                           ; $48c3: $00
    add l                                         ; $48c4: $85
    ld c, a                                       ; $48c5: $4f
    db $dd                                        ; $48c6: $dd
    rrca                                          ; $48c7: $0f
    jr nz, jr_037_488d                            ; $48c8: $20 $c3

    ld hl, $a03f                                  ; $48ca: $21 $3f $a0
    jr nz, jr_037_4899                            ; $48cd: $20 $ca

    ld [hl+], a                                   ; $48cf: $22
    cp $01                                        ; $48d0: $fe $01
    jp $c220                                      ; $48d2: $c3 $20 $c2


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
    rst $38                                       ; $48e0: $ff
    rst $38                                       ; $48e1: $ff
    rst $38                                       ; $48e2: $ff
    di                                            ; $48e3: $f3
    nop                                           ; $48e4: $00
    dec e                                         ; $48e5: $1d
    nop                                           ; $48e6: $00
    and $00                                       ; $48e7: $e6 $00
    push af                                       ; $48e9: $f5
    cp d                                          ; $48ea: $ba
    cp $e0                                        ; $48eb: $fe $e0
    and $f6                                       ; $48ed: $e6 $f6
    ldh [rIE], a                                  ; $48ef: $e0 $ff
    rst $38                                       ; $48f1: $ff
    rst $38                                       ; $48f2: $ff
    nop                                           ; $48f3: $00
    cp $fe                                        ; $48f4: $fe $fe
    jp hl                                         ; $48f6: $e9


    di                                            ; $48f7: $f3
    nop                                           ; $48f8: $00
    rrca                                          ; $48f9: $0f
    nop                                           ; $48fa: $00
    ld a, c                                       ; $48fb: $79
    nop                                           ; $48fc: $00
    ld h, c                                       ; $48fd: $61
    rst $38                                       ; $48fe: $ff
    nop                                           ; $48ff: $00
    ld b, c                                       ; $4900: $41
    nop                                           ; $4901: $00
    inc bc                                        ; $4902: $03
    nop                                           ; $4903: $00
    rlca                                          ; $4904: $07
    nop                                           ; $4905: $00
    rra                                           ; $4906: $1f
    cp $e4                                        ; $4907: $fe $e4
    rst $20                                       ; $4909: $e7
    rrca                                          ; $490a: $0f
    ldh a, [$3f]                                  ; $490b: $f0 $3f
    rst $00                                       ; $490d: $c7
    ld a, a                                       ; $490e: $7f
    sbc l                                         ; $490f: $9d
    ld a, [$d2fe]                                 ; $4910: $fa $fe $d2
    push hl                                       ; $4913: $e5
    rst $28                                       ; $4914: $ef
    ldh [rNR31], a                                ; $4915: $e0 $1b
    ld hl, sp-$3b                                 ; $4917: $f8 $c5
    db $fc                                        ; $4919: $fc
    ld [hl], d                                    ; $491a: $72
    db $fd                                        ; $491b: $fd
    cp [hl]                                       ; $491c: $be
    jp nz, $f0e5                                  ; $491d: $c2 $e5 $f0

    nop                                           ; $4920: $00
    rst $08                                       ; $4921: $cf
    nop                                           ; $4922: $00
    cp a                                          ; $4923: $bf
    rrca                                          ; $4924: $0f
    db $eb                                        ; $4925: $eb
    ld [hl], b                                    ; $4926: $70
    ccf                                           ; $4927: $3f
    or d                                          ; $4928: $b2
    push hl                                       ; $4929: $e5
    rrca                                          ; $492a: $0f
    or [hl]                                       ; $492b: $b6
    ldh [$fd], a                                  ; $492c: $e0 $fd
    ldh [rNR34], a                                ; $492e: $e0 $1e
    rst $38                                       ; $4930: $ff
    ld hl, sp-$0d                                 ; $4931: $f8 $f3
    nop                                           ; $4933: $00
    ccf                                           ; $4934: $3f
    jr z, jr_037_49b4                             ; $4935: $28 $7d

    ld d, l                                       ; $4937: $55
    rst $38                                       ; $4938: $ff
    rst $38                                       ; $4939: $ff
    xor d                                         ; $493a: $aa
    rst $38                                       ; $493b: $ff
    call nc, $a9ff                                ; $493c: $d4 $ff $a9
    ld a, a                                       ; $493f: $7f
    ld d, c                                       ; $4940: $51
    ld a, a                                       ; $4941: $7f
    db $fd                                        ; $4942: $fd
    ld b, c                                       ; $4943: $41
    sub d                                         ; $4944: $92
    ld [c], a                                     ; $4945: $e2
    adc a                                         ; $4946: $8f
    ldh a, [$bf]                                  ; $4947: $f0 $bf
    rst $00                                       ; $4949: $c7
    rst $38                                       ; $494a: $ff
    sbc l                                         ; $494b: $9d
    rst $18                                       ; $494c: $df
    ld a, d                                       ; $494d: $7a
    cp h                                          ; $494e: $bc
    db $e3                                        ; $494f: $e3
    ld a, a                                       ; $4950: $7f
    rst $08                                       ; $4951: $cf
    add d                                         ; $4952: $82
    ld [c], a                                     ; $4953: $e2
    db $e3                                        ; $4954: $e3
    ld e, $ff                                     ; $4955: $1e $ff
    ei                                            ; $4957: $fb
    add $ff                                       ; $4958: $c6 $ff
    ld [hl], e                                    ; $495a: $73
    cp l                                          ; $495b: $bd
    ld a, e                                       ; $495c: $7b
    adc a                                         ; $495d: $8f
    rst $38                                       ; $495e: $ff
    rst $38                                       ; $495f: $ff
    rst $20                                       ; $4960: $e7
    rst $08                                       ; $4961: $cf
    nop                                           ; $4962: $00
    ld hl, sp+$28                                 ; $4963: $f8 $28
    sub $7c                                       ; $4965: $d6 $7c
    xor d                                         ; $4967: $aa
    rst $38                                       ; $4968: $ff
    cp $56                                        ; $4969: $fe $56
    cp $2a                                        ; $496b: $fe $2a
    cp $14                                        ; $496d: $fe $14
    db $fc                                        ; $496f: $fc
    inc b                                         ; $4970: $04
    add c                                         ; $4971: $81
    db $fc                                        ; $4972: $fc
    ld [hl], b                                    ; $4973: $70
    ld [c], a                                     ; $4974: $e2
    cp [hl]                                       ; $4975: $be
    add sp, $52                                   ; $4976: $e8 $52
    db $e4                                        ; $4978: $e4
    cp [hl]                                       ; $4979: $be
    and $42                                       ; $497a: $e6 $42
    db $e4                                        ; $497c: $e4
    cp [hl]                                       ; $497d: $be
    ld [c], a                                     ; $497e: $e2
    ld [hl], c                                    ; $497f: $71
    ld c, d                                       ; $4980: $4a
    cp [hl]                                       ; $4981: $be
    ldh [$cf], a                                  ; $4982: $e0 $cf
    halt                                          ; $4984: $76
    ldh [$be], a                                  ; $4985: $e0 $be
    cp [hl]                                       ; $4987: $be
    add sp, $22                                   ; $4988: $e8 $22
    ldh [rSB], a                                  ; $498a: $e0 $01
    cp $e5                                        ; $498c: $fe $e5
    rst $28                                       ; $498e: $ef
    cp $03                                        ; $498f: $fe $03
    cp $03                                        ; $4991: $fe $03
    adc h                                         ; $4993: $8c
    pop hl                                        ; $4994: $e1
    rst $30                                       ; $4995: $f7
    ld hl, sp-$21                                 ; $4996: $f8 $df
    rst $18                                       ; $4998: $df
    ld h, a                                       ; $4999: $67
    rst $38                                       ; $499a: $ff
    sbc b                                         ; $499b: $98
    rst $38                                       ; $499c: $ff
    db $e4                                        ; $499d: $e4
    db $fc                                        ; $499e: $fc
    ldh [$a4], a                                  ; $499f: $e0 $a4
    ld a, d                                       ; $49a1: $7a
    rst $38                                       ; $49a2: $ff
    adc [hl]                                      ; $49a3: $8e
    db $fd                                        ; $49a4: $fd
    rst $20                                       ; $49a5: $e7
    rst $18                                       ; $49a6: $df
    ccf                                           ; $49a7: $3f
    rst $30                                       ; $49a8: $f7
    call Call_037_7fff                            ; $49a9: $cd $ff $7f
    inc sp                                        ; $49ac: $33
    rst $38                                       ; $49ad: $ff
    ld c, a                                       ; $49ae: $4f
    cp $33                                        ; $49af: $fe $33
    cp $4b                                        ; $49b1: $fe $4b
    ld a, [c]                                     ; $49b3: $f2

jr_037_49b4:
    jp z, $8027                                   ; $49b4: $ca $27 $80

    rst $38                                       ; $49b7: $ff
    adc h                                         ; $49b8: $8c
    ld [c], a                                     ; $49b9: $e2
    call nz, $e6bc                                ; $49ba: $c4 $bc $e6
    ld b, a                                       ; $49bd: $47
    db $fc                                        ; $49be: $fc
    ret nz                                        ; $49bf: $c0

    cp h                                          ; $49c0: $bc
    jp hl                                         ; $49c1: $e9


    pop af                                        ; $49c2: $f1
    add $fc                                       ; $49c3: $c6 $fc
    ret nz                                        ; $49c5: $c0

    cp h                                          ; $49c6: $bc
    jp hl                                         ; $49c7: $e9


    or d                                          ; $49c8: $b2
    set 7, a                                      ; $49c9: $cb $ff
    nop                                           ; $49cb: $00
    cp $23                                        ; $49cc: $fe $23
    db $eb                                        ; $49ce: $eb
    rst $38                                       ; $49cf: $ff
    inc de                                        ; $49d0: $13
    cp $e0                                        ; $49d1: $fe $e0
    ld de, $e0fe                                  ; $49d3: $11 $fe $e0
    add hl, bc                                    ; $49d6: $09
    rst $38                                       ; $49d7: $ff
    ld l, b                                       ; $49d8: $68
    cp a                                          ; $49d9: $bf
    cp a                                          ; $49da: $bf
    add sp, $77                                   ; $49db: $e8 $77
    ld hl, sp-$21                                 ; $49dd: $f8 $df
    rst $20                                       ; $49df: $e7
    add h                                         ; $49e0: $84
    ld [c], a                                     ; $49e1: $e2
    add b                                         ; $49e2: $80
    ld e, [hl]                                    ; $49e3: $5e
    ld a, [hl]                                    ; $49e4: $7e
    ldh [$fc], a                                  ; $49e5: $e0 $fc
    rst $38                                       ; $49e7: $ff
    and h                                         ; $49e8: $a4
    sbc $c8                                       ; $49e9: $de $c8
    push hl                                       ; $49eb: $e5
    inc bc                                        ; $49ec: $03
    ld a, [hl]                                    ; $49ed: $7e
    ldh [rIE], a                                  ; $49ee: $e0 $ff
    ld a, [hl]                                    ; $49f0: $7e
    rst $38                                       ; $49f1: $ff
    ld c, d                                       ; $49f2: $4a
    rst $08                                       ; $49f3: $cf
    ld hl, sp-$01                                 ; $49f4: $f8 $ff
    or b                                          ; $49f6: $b0
    rst $38                                       ; $49f7: $ff
    rst $30                                       ; $49f8: $f7
    sub b                                         ; $49f9: $90
    rst $38                                       ; $49fa: $ff
    db $10                                        ; $49fb: $10
    cp $e0                                        ; $49fc: $fe $e0
    jr nz, @+$01                                  ; $49fe: $20 $ff

    inc l                                         ; $4a00: $2c
    ei                                            ; $4a01: $fb
    or a                                          ; $4a02: $b7
    ld l, $ff                                     ; $4a03: $2e $ff
    ld b, c                                       ; $4a05: $41
    cp [hl]                                       ; $4a06: $be
    db $eb                                        ; $4a07: $eb
    ld a, a                                       ; $4a08: $7f
    rst $08                                       ; $4a09: $cf
    cp [hl]                                       ; $4a0a: $be
    db $ec                                        ; $4a0b: $ec
    rst $20                                       ; $4a0c: $e7
    or $be                                        ; $4a0d: $f6 $be
    db $eb                                        ; $4a0f: $eb
    rlca                                          ; $4a10: $07
    db $fc                                        ; $4a11: $fc
    cp [hl]                                       ; $4a12: $be
    db $eb                                        ; $4a13: $eb
    ld l, l                                       ; $4a14: $6d
    ld h, a                                       ; $4a15: $67
    cp e                                          ; $4a16: $bb
    xor $ff                                       ; $4a17: $ee $ff
    sub e                                         ; $4a19: $93
    cp $83                                        ; $4a1a: $fe $83
    cp $c1                                        ; $4a1c: $fe $c1
    ld a, a                                       ; $4a1e: $7f
    and b                                         ; $4a1f: $a0
    ccf                                           ; $4a20: $3f
    rst $38                                       ; $4a21: $ff
    db $fc                                        ; $4a22: $fc
    ccf                                           ; $4a23: $3f
    ld a, a                                       ; $4a24: $7f
    ld c, a                                       ; $4a25: $4f
    rst $38                                       ; $4a26: $ff
    db $ec                                        ; $4a27: $ec
    rst $38                                       ; $4a28: $ff
    xor h                                         ; $4a29: $ac
    rst $38                                       ; $4a2a: $ff
    rst $38                                       ; $4a2b: $ff
    ld e, l                                       ; $4a2c: $5d
    rst $38                                       ; $4a2d: $ff
    ld b, b                                       ; $4a2e: $40
    rst $38                                       ; $4a2f: $ff
    jp $e03f                                      ; $4a30: $c3 $3f $e0


    rst $38                                       ; $4a33: $ff
    rra                                           ; $4a34: $1f
    ldh a, [$8f]                                  ; $4a35: $f0 $8f
    db $fc                                        ; $4a37: $fc
    rst $38                                       ; $4a38: $ff
    ld l, a                                       ; $4a39: $6f
    rst $38                                       ; $4a3a: $ff
    ld l, d                                       ; $4a3b: $6a
    rst $38                                       ; $4a3c: $ff
    rst $38                                       ; $4a3d: $ff
    ld [hl], h                                    ; $4a3e: $74
    rst $38                                       ; $4a3f: $ff
    inc b                                         ; $4a40: $04
    rst $38                                       ; $4a41: $ff
    add a                                         ; $4a42: $87
    ld hl, sp+$0f                                 ; $4a43: $f8 $0f
    rst $38                                       ; $4a45: $ff
    pop af                                        ; $4a46: $f1
    rra                                           ; $4a47: $1f
    rst $30                                       ; $4a48: $f7
    ld a, [hl]                                    ; $4a49: $7e
    ld a, d                                       ; $4a4a: $7a
    adc $b3                                       ; $4a4b: $ce $b3
    cp $ff                                        ; $4a4d: $fe $ff
    add d                                         ; $4a4f: $82
    cp $87                                        ; $4a50: $fe $87
    db $fc                                        ; $4a52: $fc
    dec a                                         ; $4a53: $3d
    ld hl, sp+$4d                                 ; $4a54: $f8 $4d
    db $fc                                        ; $4a56: $fc
    rst $38                                       ; $4a57: $ff
    rst $00                                       ; $4a58: $c7
    cp $a2                                        ; $4a59: $fe $a2
    cp $0e                                        ; $4a5b: $fe $0e
    inc bc                                        ; $4a5d: $03
    ld a, [c]                                     ; $4a5e: $f2
    ld h, e                                       ; $4a5f: $63
    rst $30                                       ; $4a60: $f7
    cp l                                          ; $4a61: $bd
    rst $20                                       ; $4a62: $e7
    sbc e                                         ; $4a63: $9b
    cp [hl]                                       ; $4a64: $be
    ldh [$c3], a                                  ; $4a65: $e0 $c3
    ld a, [hl]                                    ; $4a67: $7e
    pop hl                                        ; $4a68: $e1
    ccf                                           ; $4a69: $3f
    jp Jump_000_1f10                              ; $4a6a: $c3 $10 $1f


    call z, $bcc1                                 ; $4a6d: $cc $c1 $bc
    jp hl                                         ; $4a70: $e9


    call z, $bcc2                                 ; $4a71: $cc $c2 $bc
    add sp, -$04                                  ; $4a74: $e8 $fc
    adc h                                         ; $4a76: $8c
    rst $38                                       ; $4a77: $ff
    res 1, [hl]                                   ; $4a78: $cb $8e
    ld [hl], d                                    ; $4a7a: $72
    sbc $a3                                       ; $4a7b: $de $a3
    cp $85                                        ; $4a7d: $fe $85
    db $fc                                        ; $4a7f: $fc
    rst $38                                       ; $4a80: $ff
    add l                                         ; $4a81: $85
    db $fc                                        ; $4a82: $fc
    rrca                                          ; $4a83: $0f
    ld hl, sp+$78                                 ; $4a84: $f8 $78
    ldh a, [$9f]                                  ; $4a86: $f0 $9f
    db $fc                                        ; $4a88: $fc
    rst $38                                       ; $4a89: $ff
    add a                                         ; $4a8a: $87
    db $fc                                        ; $4a8b: $fc
    ld b, a                                       ; $4a8c: $47
    ld a, h                                       ; $4a8d: $7c
    rst $00                                       ; $4a8e: $c7
    ld a, h                                       ; $4a8f: $7c
    and e                                         ; $4a90: $a3
    ld a, $ff                                     ; $4a91: $3e $ff
    cp a                                          ; $4a93: $bf
    rra                                           ; $4a94: $1f
    rst $20                                       ; $4a95: $e7
    ld [bc], a                                    ; $4a96: $02
    rra                                           ; $4a97: $1f
    ld [bc], a                                    ; $4a98: $02
    rst $38                                       ; $4a99: $ff
    pop bc                                        ; $4a9a: $c1
    xor $84                                       ; $4a9b: $ee $84
    ldh [rSCX], a                                 ; $4a9d: $e0 $43
    cp $63                                        ; $4a9f: $fe $63
    inc e                                         ; $4aa1: $1c
    ldh [$0c], a                                  ; $4aa2: $e0 $0c
    ei                                            ; $4aa4: $fb
    rra                                           ; $4aa5: $1f
    cp e                                          ; $4aa6: $bb
    push af                                       ; $4aa7: $f5
    rra                                           ; $4aa8: $1f
    add [hl]                                      ; $4aa9: $86
    ldh [rDIV], a                                 ; $4aaa: $e0 $04
    rst $38                                       ; $4aac: $ff
    add h                                         ; $4aad: $84
    sbc b                                         ; $4aae: $98
    ret nz                                        ; $4aaf: $c0

    ld [de], a                                    ; $4ab0: $12
    rst $38                                       ; $4ab1: $ff
    rst $38                                       ; $4ab2: $ff
    ld [hl], c                                    ; $4ab3: $71
    rst $18                                       ; $4ab4: $df
    ld hl, sp-$51                                 ; $4ab5: $f8 $af
    ld hl, sp-$0e                                 ; $4ab7: $f8 $f2
    ld a, [hl]                                    ; $4ab9: $7e
    rst $30                                       ; $4aba: $f7
    jp $c47e                                      ; $4abb: $c3 $7e $c4


    ret nc                                        ; $4abe: $d0

    ldh [$8d], a                                  ; $4abf: $e0 $8d
    ld hl, sp-$03                                 ; $4ac1: $f8 $fd
    ldh a, [$bf]                                  ; $4ac3: $f0 $bf
    rst $20                                       ; $4ac5: $e7
    add b                                         ; $4ac6: $80
    cp b                                          ; $4ac7: $b8
    add b                                         ; $4ac8: $80
    xor a                                         ; $4ac9: $af
    add sp, -$42                                  ; $4aca: $e8 $be
    pop hl                                        ; $4acc: $e1
    rst $00                                       ; $4acd: $c7
    sub $be                                       ; $4ace: $d6 $be
    ld [c], a                                     ; $4ad0: $e2
    rst $38                                       ; $4ad1: $ff
    rra                                           ; $4ad2: $1f
    ret nz                                        ; $4ad3: $c0

    ldh [$a4], a                                  ; $4ad4: $e0 $a4
    cp [hl]                                       ; $4ad6: $be
    db $eb                                        ; $4ad7: $eb
    rst $38                                       ; $4ad8: $ff
    ld c, d                                       ; $4ad9: $4a
    cp $be                                        ; $4ada: $fe $be
    db $eb                                        ; $4adc: $eb
    ld a, [$f32e]                                 ; $4add: $fa $2e $f3
    ld a, [hl]                                    ; $4ae0: $7e
    jp nz, $c77e                                  ; $4ae1: $c2 $7e $c7

    ld a, e                                       ; $4ae4: $7b
    ld a, h                                       ; $4ae5: $7c
    push bc                                       ; $4ae6: $c5
    cp [hl]                                       ; $4ae7: $be
    ldh [$f7], a                                  ; $4ae8: $e0 $f7
    ldh a, [$b8]                                  ; $4aea: $f0 $b8
    add b                                         ; $4aec: $80
    and h                                         ; $4aed: $a4
    ldh [rIE], a                                  ; $4aee: $e0 $ff
    add d                                         ; $4af0: $82
    ld a, a                                       ; $4af1: $7f
    ld b, [hl]                                    ; $4af2: $46
    ld a, a                                       ; $4af3: $7f
    inc hl                                        ; $4af4: $23
    ld e, a                                       ; $4af5: $5f
    inc d                                         ; $4af6: $14
    rrca                                          ; $4af7: $0f
    rst $38                                       ; $4af8: $ff
    ld [$0407], sp                                ; $4af9: $08 $07 $04
    rra                                           ; $4afc: $1f
    ld [bc], a                                    ; $4afd: $02
    ei                                            ; $4afe: $fb
    rst $38                                       ; $4aff: $ff
    push af                                       ; $4b00: $f5
    rst $38                                       ; $4b01: $ff
    ld e, a                                       ; $4b02: $5f
    di                                            ; $4b03: $f3
    sbc [hl]                                      ; $4b04: $9e
    pop af                                        ; $4b05: $f1
    rra                                           ; $4b06: $1f
    ldh a, [$9f]                                  ; $4b07: $f0 $9f
    ldh a, [rIE]                                  ; $4b09: $f0 $ff
    ld e, a                                       ; $4b0b: $5f
    ldh a, [$3f]                                  ; $4b0c: $f0 $3f
    ldh a, [$5f]                                  ; $4b0e: $f0 $5f
    rst $18                                       ; $4b10: $df
    ld sp, hl                                     ; $4b11: $f9
    xor a                                         ; $4b12: $af
    rst $38                                       ; $4b13: $ff
    ld hl, sp-$31                                 ; $4b14: $f8 $cf
    ld a, b                                       ; $4b16: $78
    adc a                                         ; $4b17: $8f
    ld hl, sp+$0f                                 ; $4b18: $f8 $0f
    ld sp, hl                                     ; $4b1a: $f9
    rrca                                          ; $4b1b: $0f
    rst $38                                       ; $4b1c: $ff
    ld a, [$fd0d]                                 ; $4b1d: $fa $0d $fd
    ld c, $f8                                     ; $4b20: $0e $f8
    db $d3                                        ; $4b22: $d3
    ld a, [hl]                                    ; $4b23: $7e
    db $e4                                        ; $4b24: $e4
    rst $38                                       ; $4b25: $ff
    cp h                                          ; $4b26: $bc
    cp $58                                        ; $4b27: $fe $58
    cp $88                                        ; $4b29: $fe $88
    ld a, [$f008]                                 ; $4b2b: $fa $08 $f0
    rst $38                                       ; $4b2e: $ff
    db $10                                        ; $4b2f: $10
    ldh [rNR41], a                                ; $4b30: $e0 $20
    ld hl, sp-$40                                 ; $4b32: $f8 $c0
    db $fc                                        ; $4b34: $fc
    rrca                                          ; $4b35: $0f
    rrca                                          ; $4b36: $0f
    rst $38                                       ; $4b37: $ff
    inc bc                                        ; $4b38: $03
    ld a, l                                       ; $4b39: $7d
    inc e                                         ; $4b3a: $1c
    ld a, a                                       ; $4b3b: $7f
    ld [hl+], a                                   ; $4b3c: $22
    ld a, a                                       ; $4b3d: $7f
    ld hl, $7e3f                                  ; $4b3e: $21 $3f $7e
    cp $e0                                        ; $4b41: $fe $e0
    rra                                           ; $4b43: $1f
    jr jr_037_4b65                                ; $4b44: $18 $1f

    ldh a, [rIF]                                  ; $4b46: $f0 $0f
    db $fc                                        ; $4b48: $fc
    cp h                                          ; $4b49: $bc
    ldh [$ef], a                                  ; $4b4a: $e0 $ef
    sbc a                                         ; $4b4c: $9f
    di                                            ; $4b4d: $f3
    ld e, $f1                                     ; $4b4e: $1e $f1
    cp [hl]                                       ; $4b50: $be
    pop hl                                        ; $4b51: $e1
    cp a                                          ; $4b52: $bf
    ldh a, [$1f]                                  ; $4b53: $f0 $1f
    rst $28                                       ; $4b55: $ef
    di                                            ; $4b56: $f3
    ld a, a                                       ; $4b57: $7f
    rst $18                                       ; $4b58: $df
    db $fd                                        ; $4b59: $fd
    cp h                                          ; $4b5a: $bc
    rst $20                                       ; $4b5b: $e7
    rst $08                                       ; $4b5c: $cf
    add b                                         ; $4b5d: $80
    ldh a, [rIE]                                  ; $4b5e: $f0 $ff
    nop                                           ; $4b60: $00
    sbc [hl]                                      ; $4b61: $9e
    nop                                           ; $4b62: $00
    sbc [hl]                                      ; $4b63: $9e
    sbc h                                         ; $4b64: $9c

jr_037_4b65:
    ld [c], a                                     ; $4b65: $e2
    ld a, [hl]                                    ; $4b66: $7e
    and d                                         ; $4b67: $a2
    ld a, a                                       ; $4b68: $7f
    cp $92                                        ; $4b69: $fe $92
    cp $d2                                        ; $4b6b: $fe $d2
    ld a, [hl]                                    ; $4b6d: $7e
    di                                            ; $4b6e: $f3
    ld bc, $8bb0                                  ; $4b6f: $01 $b0 $8b
    cp $c8                                        ; $4b72: $fe $c8
    db $e4                                        ; $4b74: $e4
    ccf                                           ; $4b75: $3f
    ldh a, [$1f]                                  ; $4b76: $f0 $1f
    ret nc                                        ; $4b78: $d0

    rra                                           ; $4b79: $1f
    cp a                                          ; $4b7a: $bf
    rrca                                          ; $4b7b: $0f
    ld a, a                                       ; $4b7c: $7f
    ld l, e                                       ; $4b7d: $6b
    ld c, $cf                                     ; $4b7e: $0e $cf
    ld a, c                                       ; $4b80: $79
    adc a                                         ; $4b81: $8f
    ld a, [$d60f]                                 ; $4b82: $fa $0f $d6
    ret nz                                        ; $4b85: $c0

    rst $30                                       ; $4b86: $f7
    rrca                                          ; $4b87: $0f
    ld hl, sp+$0b                                 ; $4b88: $f8 $0b
    ld c, $e0                                     ; $4b8a: $0e $e0
    sub $70                                       ; $4b8c: $d6 $70
    di                                            ; $4b8e: $f3
    ld [bc], a                                    ; $4b8f: $02
    db $db                                        ; $4b90: $db
    rrca                                          ; $4b91: $0f
    ld bc, $8980                                  ; $4b92: $01 $80 $89
    push af                                       ; $4b95: $f5
    rra                                           ; $4b96: $1f
    adc $e5                                       ; $4b97: $ce $e5
    ret nc                                        ; $4b99: $d0

    rra                                           ; $4b9a: $1f
    rst $08                                       ; $4b9b: $cf
    or b                                          ; $4b9c: $b0
    rra                                           ; $4b9d: $1f
    ld l, a                                       ; $4b9e: $6f
    rrca                                          ; $4b9f: $0f
    ld d, d                                       ; $4ba0: $52
    ldh [$ce], a                                  ; $4ba1: $e0 $ce
    db $e4                                        ; $4ba3: $e4
    dec bc                                        ; $4ba4: $0b
    ld hl, sp-$31                                 ; $4ba5: $f8 $cf
    dec c                                         ; $4ba7: $0d
    ld hl, sp-$0a                                 ; $4ba8: $f8 $f6
    ldh a, [rNR43]                                ; $4baa: $f0 $22
    and b                                         ; $4bac: $a0
    ld b, b                                       ; $4bad: $40
    adc d                                         ; $4bae: $8a
    rst $18                                       ; $4baf: $df
    adc a                                         ; $4bb0: $8f
    rst $18                                       ; $4bb1: $df
    ld e, e                                       ; $4bb2: $5b
    ld c, $6f                                     ; $4bb3: $0e $6f
    rrca                                          ; $4bb5: $0f
    or b                                          ; $4bb6: $b0
    and d                                         ; $4bb7: $a2
    ldh [$f0], a                                  ; $4bb8: $e0 $f0
    rra                                           ; $4bba: $1f
    rst $38                                       ; $4bbb: $ff
    and c                                         ; $4bbc: $a1
    ccf                                           ; $4bbd: $3f
    and b                                         ; $4bbe: $a0
    ccf                                           ; $4bbf: $3f
    ld a, [$daf0]                                 ; $4bc0: $fa $f0 $da
    ld [hl], b                                    ; $4bc3: $70
    rst $38                                       ; $4bc4: $ff
    or $f0                                        ; $4bc5: $f6 $f0
    dec c                                         ; $4bc7: $0d
    ld hl, sp+$07                                 ; $4bc8: $f8 $07
    db $fc                                        ; $4bca: $fc
    rlca                                          ; $4bcb: $07
    db $fc                                        ; $4bcc: $fc
    cp a                                          ; $4bcd: $bf
    inc hl                                        ; $4bce: $23
    cp $c3                                        ; $4bcf: $fe $c3
    cp $ff                                        ; $4bd1: $fe $ff
    ld b, $ce                                     ; $4bd3: $06 $ce
    db $eb                                        ; $4bd5: $eb
    ldh a, [rIE]                                  ; $4bd6: $f0 $ff
    rra                                           ; $4bd8: $1f
    ldh a, [$3f]                                  ; $4bd9: $f0 $3f
    rst $28                                       ; $4bdb: $ef
    rst $08                                       ; $4bdc: $cf
    cp e                                          ; $4bdd: $bb
    ld c, $cf                                     ; $4bde: $0e $cf
    rst $28                                       ; $4be0: $ef
    rrca                                          ; $4be1: $0f
    ldh a, [$1f]                                  ; $4be2: $f0 $1f
    sub b                                         ; $4be4: $90
    adc $e0                                       ; $4be5: $ce $e0
    rrca                                          ; $4be7: $0f
    db $fc                                        ; $4be8: $fc
    dec bc                                        ; $4be9: $0b
    rst $38                                       ; $4bea: $ff
    ld a, [$f1f7]                                 ; $4beb: $fa $f7 $f1
    db $dd                                        ; $4bee: $dd
    ld [hl], b                                    ; $4bef: $70
    di                                            ; $4bf0: $f3
    ldh a, [rIF]                                  ; $4bf1: $f0 $0f
    ei                                            ; $4bf3: $fb
    ld hl, sp+$05                                 ; $4bf4: $f8 $05
    adc $e0                                       ; $4bf6: $ce $e0
    rst $10                                       ; $4bf8: $d7
    ld a, h                                       ; $4bf9: $7c
    rst $38                                       ; $4bfa: $ff
    jr c, @+$01                                   ; $4bfb: $38 $ff

    ld a, l                                       ; $4bfd: $7d
    ret nz                                        ; $4bfe: $c0

    call c, Call_037_5f67                         ; $4bff: $dc $67 $5f
    rrca                                          ; $4c02: $0f
    ld d, b                                       ; $4c03: $50
    rra                                           ; $4c04: $1f
    ld [hl], b                                    ; $4c05: $70
    halt                                          ; $4c06: $76
    ldh [$f7], a                                  ; $4c07: $e0 $f7
    pop hl                                        ; $4c09: $e1
    ccf                                           ; $4c0a: $3f
    ldh [$a2], a                                  ; $4c0b: $e0 $a2
    ldh [$bf], a                                  ; $4c0d: $e0 $bf
    ccf                                           ; $4c0f: $3f
    ld a, [$aff8]                                 ; $4c10: $fa $f8 $af
    ld b, $fc                                     ; $4c13: $06 $fc
    ld b, $fc                                     ; $4c15: $06 $fc
    sub $e1                                       ; $4c17: $d6 $e1
    jp $a09a                                      ; $4c19: $c3 $9a $a0


    rst $38                                       ; $4c1c: $ff
    ld e, a                                       ; $4c1d: $5f
    cp $5b                                        ; $4c1e: $fe $5b
    ld c, $5f                                     ; $4c20: $0e $5f
    rrca                                          ; $4c22: $0f
    ldh [$e1], a                                  ; $4c23: $e0 $e1
    ret nc                                        ; $4c25: $d0

    sbc $e0                                       ; $4c26: $de $e0
    xor l                                         ; $4c28: $ad
    and b                                         ; $4c29: $a0
    add b                                         ; $4c2a: $80
    ldh [$da], a                                  ; $4c2b: $e0 $da
    ld [hl], b                                    ; $4c2d: $70
    sbc $e1                                       ; $4c2e: $de $e1
    dec b                                         ; $4c30: $05
    add d                                         ; $4c31: $82
    db $e4                                        ; $4c32: $e4
    add e                                         ; $4c33: $83
    ld sp, hl                                     ; $4c34: $f9
    cp $e8                                        ; $4c35: $fe $e8
    ld h, c                                       ; $4c37: $61
    add b                                         ; $4c38: $80
    ld l, c                                       ; $4c39: $69
    and b                                         ; $4c3a: $a0
    ccf                                           ; $4c3b: $3f
    rst $38                                       ; $4c3c: $ff
    ccf                                           ; $4c3d: $3f
    cp $7f                                        ; $4c3e: $fe $7f
    ld b, d                                       ; $4c40: $42
    cp $42                                        ; $4c41: $fe $42
    rst $38                                       ; $4c43: $ff
    ld b, d                                       ; $4c44: $42
    rst $38                                       ; $4c45: $ff
    ld b, h                                       ; $4c46: $44
    cp $e0                                        ; $4c47: $fe $e0
    ld e, l                                       ; $4c49: $5d
    add h                                         ; $4c4a: $84
    cp h                                          ; $4c4b: $bc
    pop hl                                        ; $4c4c: $e1
    ld a, a                                       ; $4c4d: $7f
    ld b, d                                       ; $4c4e: $42
    ld a, a                                       ; $4c4f: $7f
    ldh a, [$e1]                                  ; $4c50: $f0 $e1
    ld [hl+], a                                   ; $4c52: $22
    cp $e0                                        ; $4c53: $fe $e0
    ld l, a                                       ; $4c55: $6f
    ld hl, $3fa0                                  ; $4c56: $21 $a0 $3f
    pop hl                                        ; $4c59: $e1
    sbc $e0                                       ; $4c5a: $de $e0
    rst $38                                       ; $4c5c: $ff
    ld hl, $e0f2                                  ; $4c5d: $21 $f2 $e0
    ld l, l                                       ; $4c60: $6d
    ld b, d                                       ; $4c61: $42
    inc d                                         ; $4c62: $14
    ret nz                                        ; $4c63: $c0

    add h                                         ; $4c64: $84
    jp $803b                                      ; $4c65: $c3 $3b $80


    rst $38                                       ; $4c68: $ff
    cp $ce                                        ; $4c69: $fe $ce
    and b                                         ; $4c6b: $a0
    db $dd                                        ; $4c6c: $dd
    ld b, h                                       ; $4c6d: $44
    adc $e0                                       ; $4c6e: $ce $e0
    ld d, d                                       ; $4c70: $52
    rst $38                                       ; $4c71: $ff
    ld hl, $e1c4                                  ; $4c72: $21 $c4 $e1
    cp $42                                        ; $4c75: $fe $42
    ld a, l                                       ; $4c77: $7d
    db $fc                                        ; $4c78: $fc
    call nz, $ffe2                                ; $4c79: $c4 $e2 $ff
    ld hl, sp-$01                                 ; $4c7c: $f8 $ff
    adc b                                         ; $4c7e: $88
    cp a                                          ; $4c7f: $bf
    or d                                          ; $4c80: $b2
    ld [c], a                                     ; $4c81: $e2
    ld h, b                                       ; $4c82: $60
    or b                                          ; $4c83: $b0
    ldh [$ee], a                                  ; $4c84: $e0 $ee
    push hl                                       ; $4c86: $e5
    or d                                          ; $4c87: $b2
    ld [c], a                                     ; $4c88: $e2
    or b                                          ; $4c89: $b0
    ldh [$b2], a                                  ; $4c8a: $e0 $b2
    ld [c], a                                     ; $4c8c: $e2
    rst $38                                       ; $4c8d: $ff
    rra                                           ; $4c8e: $1f
    jr nz, jr_037_4cf5                            ; $4c8f: $20 $64

    ld a, a                                       ; $4c91: $7f
    ld bc, $0141                                  ; $4c92: $01 $41 $01
    inc bc                                        ; $4c95: $03
    ld bc, $0107                                  ; $4c96: $01 $07 $01
    ld [bc], a                                    ; $4c99: $02
    ld h, b                                       ; $4c9a: $60
    xor [hl]                                      ; $4c9b: $ae
    call z, $ffe0                                 ; $4c9c: $cc $e0 $ff
    add sp, $1f                                   ; $4c9f: $e8 $1f
    add b                                         ; $4ca1: $80
    ret nz                                        ; $4ca2: $c0

    rst $38                                       ; $4ca3: $ff
    db $fc                                        ; $4ca4: $fc
    pop hl                                        ; $4ca5: $e1
    rst $38                                       ; $4ca6: $ff
    ld [hl], e                                    ; $4ca7: $73
    rst $38                                       ; $4ca8: $ff
    db $f4                                        ; $4ca9: $f4
    ldh a, [$eb]                                  ; $4caa: $f0 $eb
    ldh a, [rLCDC]                                ; $4cac: $f0 $40
    ld bc, $0179                                  ; $4cae: $01 $79 $01
    ret nc                                        ; $4cb1: $d0

    add sp, $4f                                   ; $4cb2: $e8 $4f
    adc b                                         ; $4cb4: $88
    rst $38                                       ; $4cb5: $ff
    sbc b                                         ; $4cb6: $98
    ld l, a                                       ; $4cb7: $6f
    ld d, d                                       ; $4cb8: $52
    ret nz                                        ; $4cb9: $c0

    ret nc                                        ; $4cba: $d0

    and $88                                       ; $4cbb: $e6 $88
    ret nz                                        ; $4cbd: $c0

    db $ec                                        ; $4cbe: $ec
    ret                                           ; $4cbf: $c9


    rst $38                                       ; $4cc0: $ff
    jp z, $fe60                                   ; $4cc1: $ca $60 $fe

    add sp, $00                                   ; $4cc4: $e8 $00
    rst $38                                       ; $4cc6: $ff
    db $ec                                        ; $4cc7: $ec
    ld [c], a                                     ; $4cc8: $e2
    push hl                                       ; $4cc9: $e5
    ldh a, [$80]                                  ; $4cca: $f0 $80
    call $22cf                                    ; $4ccc: $cd $cf $22
    and b                                         ; $4ccf: $a0
    rst $20                                       ; $4cd0: $e7
    add b                                         ; $4cd1: $80
    ret nc                                        ; $4cd2: $d0

    ld c, c                                       ; $4cd3: $49
    ld l, b                                       ; $4cd4: $68
    ld b, c                                       ; $4cd5: $41
    db $dd                                        ; $4cd6: $dd
    add b                                         ; $4cd7: $80
    push af                                       ; $4cd8: $f5
    db $dd                                        ; $4cd9: $dd
    ld [$b8e0], a                                 ; $4cda: $ea $e0 $b8
    ld [c], a                                     ; $4cdd: $e2
    ldh [$f0], a                                  ; $4cde: $e0 $f0
    add b                                         ; $4ce0: $80
    sbc [hl]                                      ; $4ce1: $9e
    add b                                         ; $4ce2: $80
    di                                            ; $4ce3: $f3
    add [hl]                                      ; $4ce4: $86
    add b                                         ; $4ce5: $80
    ld e, b                                       ; $4ce6: $58
    ld b, l                                       ; $4ce7: $45
    ld l, b                                       ; $4ce8: $68
    ld b, l                                       ; $4ce9: $45
    add d                                         ; $4cea: $82
    add b                                         ; $4ceb: $80
    ret nz                                        ; $4cec: $c0

    add b                                         ; $4ced: $80
    rst $00                                       ; $4cee: $c7
    ldh [$80], a                                  ; $4cef: $e0 $80
    ld hl, sp-$64                                 ; $4cf1: $f8 $9c
    and $58                                       ; $4cf3: $e6 $58

jr_037_4cf5:
    ld c, l                                       ; $4cf5: $4d
    nop                                           ; $4cf6: $00
    ld h, c                                       ; $4cf7: $61
    sbc [hl]                                      ; $4cf8: $9e
    nop                                           ; $4cf9: $00
    ld a, a                                       ; $4cfa: $7f
    add [hl]                                      ; $4cfb: $86
    nop                                           ; $4cfc: $00
    add d                                         ; $4cfd: $82
    nop                                           ; $4cfe: $00
    ret nz                                        ; $4cff: $c0

    nop                                           ; $4d00: $00
    ldh [rNR43], a                                ; $4d01: $e0 $22
    ld b, b                                       ; $4d03: $40
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
    rst $38                                       ; $4d10: $ff
    rst $38                                       ; $4d11: $ff
    rst $38                                       ; $4d12: $ff
    ccf                                           ; $4d13: $3f
    nop                                           ; $4d14: $00
    rst $08                                       ; $4d15: $cf
    nop                                           ; $4d16: $00
    rst $30                                       ; $4d17: $f7
    nop                                           ; $4d18: $00
    rst $18                                       ; $4d19: $df
    inc sp                                        ; $4d1a: $33
    nop                                           ; $4d1b: $00
    ld de, $1900                                  ; $4d1c: $11 $00 $19
    cp $e0                                        ; $4d1f: $fe $e0
    rst $38                                       ; $4d21: $ff
    rst $38                                       ; $4d22: $ff
    ei                                            ; $4d23: $fb
    rst $38                                       ; $4d24: $ff
    nop                                           ; $4d25: $00
    cp $e9                                        ; $4d26: $fe $e9
    dec a                                         ; $4d28: $3d
    nop                                           ; $4d29: $00
    ei                                            ; $4d2a: $fb
    nop                                           ; $4d2b: $00
    rlca                                          ; $4d2c: $07
    cp e                                          ; $4d2d: $bb
    nop                                           ; $4d2e: $00
    or a                                          ; $4d2f: $b7
    cp $e0                                        ; $4d30: $fe $e0
    rst $28                                       ; $4d32: $ef
    nop                                           ; $4d33: $00
    rra                                           ; $4d34: $1f
    and $e9                                       ; $4d35: $e6 $e9
    rlca                                          ; $4d37: $07
    cp a                                          ; $4d38: $bf
    ld hl, sp+$1f                                 ; $4d39: $f8 $1f
    db $e3                                        ; $4d3b: $e3
    ccf                                           ; $4d3c: $3f
    adc $7d                                       ; $4d3d: $ce $7d
    jp nc, $f0e6                                  ; $4d3f: $d2 $e6 $f0

    cp a                                          ; $4d42: $bf
    rrca                                          ; $4d43: $0f
    db $fc                                        ; $4d44: $fc
    db $e3                                        ; $4d45: $e3
    cp $b9                                        ; $4d46: $fe $b9
    ld e, a                                       ; $4d48: $5f
    jp nz, $fce7                                  ; $4d49: $c2 $e7 $fc

    inc de                                        ; $4d4c: $13
    nop                                           ; $4d4d: $00
    rst $30                                       ; $4d4e: $f7
    call c, $b2e0                                 ; $4d4f: $dc $e0 $b2
    rst $20                                       ; $4d52: $e7
    ccf                                           ; $4d53: $3f
    call c, $bee2                                 ; $4d54: $dc $e2 $be
    db $ed                                        ; $4d57: $ed
    sub d                                         ; $4d58: $92
    add sp, -$04                                  ; $4d59: $e8 $fc
    cp [hl]                                       ; $4d5b: $be
    ld [c], a                                     ; $4d5c: $e2
    add d                                         ; $4d5d: $82
    ld [$ff01], a                                 ; $4d5e: $ea $01 $ff
    ld sp, $71de                                  ; $4d61: $31 $de $71
    cp a                                          ; $4d64: $bf
    rst $38                                       ; $4d65: $ff
    rst $20                                       ; $4d66: $e7
    ei                                            ; $4d67: $fb
    db $fc                                        ; $4d68: $fc
    rst $28                                       ; $4d69: $ef
    or e                                          ; $4d6a: $b3
    rst $38                                       ; $4d6b: $ff
    call z, $ffff                                 ; $4d6c: $cc $ff $ff
    ld a, [c]                                     ; $4d6f: $f2
    ld a, a                                       ; $4d70: $7f
    call z, $d27f                                 ; $4d71: $cc $7f $d2
    dec a                                         ; $4d74: $3d
    rst $00                                       ; $4d75: $c7
    cp $ff                                        ; $4d76: $fe $ff
    di                                            ; $4d78: $f3
    rst $28                                       ; $4d79: $ef
    rra                                           ; $4d7a: $1f
    ei                                            ; $4d7b: $fb
    and $ff                                       ; $4d7c: $e6 $ff
    add hl, de                                    ; $4d7e: $19
    rst $38                                       ; $4d7f: $ff
    push de                                       ; $4d80: $d5
    daa                                           ; $4d81: $27
    db $fc                                        ; $4d82: $fc
    ldh [rNR51], a                                ; $4d83: $e0 $25
    ld d, d                                       ; $4d85: $52
    ldh [$80], a                                  ; $4d86: $e0 $80
    cp $e5                                        ; $4d88: $fe $e5
    ld a, a                                       ; $4d8a: $7f
    ret nz                                        ; $4d8b: $c0

    dec de                                        ; $4d8c: $1b
    ld a, a                                       ; $4d8d: $7f
    ret nz                                        ; $4d8e: $c0

    ld b, d                                       ; $4d8f: $42
    db $eb                                        ; $4d90: $eb
    rst $38                                       ; $4d91: $ff
    nop                                           ; $4d92: $00
    ld e, h                                       ; $4d93: $5c
    pop hl                                        ; $4d94: $e1
    cp h                                          ; $4d95: $bc
    jp hl                                         ; $4d96: $e9


    ld e, h                                       ; $4d97: $5c
    pop hl                                        ; $4d98: $e1
    ret nc                                        ; $4d99: $d0

    cp h                                          ; $4d9a: $bc
    ld [$e312], a                                 ; $4d9b: $ea $12 $e3
    cp h                                          ; $4d9e: $bc
    and $c0                                       ; $4d9f: $e6 $c0
    db $ec                                        ; $4da1: $ec
    ld bc, $ebc2                                  ; $4da2: $01 $c2 $eb
    ld a, a                                       ; $4da5: $7f
    ret nz                                        ; $4da6: $c0

    jp c, $ecc2                                   ; $4da7: $da $c2 $ec

    ld bc, $ebc2                                  ; $4daa: $01 $c2 $eb
    ld a, a                                       ; $4dad: $7f
    ret nz                                        ; $4dae: $c0

    jp nc, Jump_037_7feb                          ; $4daf: $d2 $eb $7f

    call z, $d2fe                                 ; $4db2: $cc $fe $d2
    db $ec                                        ; $4db5: $ec
    add hl, de                                    ; $4db6: $19
    sbc $73                                       ; $4db7: $de $73
    ld c, l                                       ; $4db9: $4d
    ld a, a                                       ; $4dba: $7f
    pop bc                                        ; $4dbb: $c1
    ld a, a                                       ; $4dbc: $7f
    rst $38                                       ; $4dbd: $ff
    rst $38                                       ; $4dbe: $ff
    ccf                                           ; $4dbf: $3f
    ld a, a                                       ; $4dc0: $7f
    ld h, e                                       ; $4dc1: $63
    ld a, a                                       ; $4dc2: $7f
    ld b, l                                       ; $4dc3: $45
    ld a, a                                       ; $4dc4: $7f
    ld b, e                                       ; $4dc5: $43
    rst $38                                       ; $4dc6: $ff
    ccf                                           ; $4dc7: $3f
    dec h                                         ; $4dc8: $25
    rst $38                                       ; $4dc9: $ff
    or $ff                                        ; $4dca: $f6 $ff
    ld d, [hl]                                    ; $4dcc: $56
    rst $38                                       ; $4dcd: $ff
    ld l, $ff                                     ; $4dce: $2e $ff
    rst $38                                       ; $4dd0: $ff
    jr nz, @+$01                                  ; $4dd1: $20 $ff

    pop hl                                        ; $4dd3: $e1
    rra                                           ; $4dd4: $1f
    ldh a, [rIF]                                  ; $4dd5: $f0 $0f
    ld hl, sp-$01                                 ; $4dd7: $f8 $ff
    rst $28                                       ; $4dd9: $ef
    cp $ff                                        ; $4dda: $fe $ff
    scf                                           ; $4ddc: $37
    rst $38                                       ; $4ddd: $ff
    dec [hl]                                      ; $4dde: $35
    rst $38                                       ; $4ddf: $ff
    cp d                                          ; $4de0: $ba
    rst $38                                       ; $4de1: $ff
    rst $38                                       ; $4de2: $ff
    ld [bc], a                                    ; $4de3: $02
    rst $38                                       ; $4de4: $ff
    jp Jump_000_07fc                              ; $4de5: $c3 $fc $07


    ld hl, sp+$0f                                 ; $4de8: $f8 $0f
    ld a, a                                       ; $4dea: $7f
    pop af                                        ; $4deb: $f1
    ccf                                           ; $4dec: $3f
    cp a                                          ; $4ded: $bf
    and $dd                                       ; $4dee: $e6 $dd
    ld [hl], a                                    ; $4df0: $77
    ret                                           ; $4df1: $c9


    adc $e0                                       ; $4df2: $ce $e0
    rst $38                                       ; $4df4: $ff
    add d                                         ; $4df5: $82
    cp $04                                        ; $4df6: $fe $04
    db $fc                                        ; $4df8: $fc
    ld a, b                                       ; $4df9: $78
    ld hl, sp-$38                                 ; $4dfa: $f8 $c8
    ld hl, sp-$01                                 ; $4dfc: $f8 $ff
    rst $38                                       ; $4dfe: $ff
    ld sp, $715f                                  ; $4dff: $31 $5f $71
    adc $7b                                       ; $4e02: $ce $7b
    push bc                                       ; $4e04: $c5
    ld a, a                                       ; $4e05: $7f
    rst $38                                       ; $4e06: $ff
    ld hl, $213f                                  ; $4e07: $21 $3f $21
    ccf                                           ; $4e0a: $3f
    db $10                                        ; $4e0b: $10
    rra                                           ; $4e0c: $1f
    ld e, $0f                                     ; $4e0d: $1e $0f
    ldh a, [$ec]                                  ; $4e0f: $f0 $ec
    pop bc                                        ; $4e11: $c1
    cp h                                          ; $4e12: $bc
    jp hl                                         ; $4e13: $e9


    db $ec                                        ; $4e14: $ec
    jp nz, $e8bc                                  ; $4e15: $c2 $bc $e8

    ld a, a                                       ; $4e18: $7f
    ret nz                                        ; $4e19: $c0

    ld a, [hl]                                    ; $4e1a: $7e
    add $f7                                       ; $4e1b: $c6 $f7
    or l                                          ; $4e1d: $b5
    rst $20                                       ; $4e1e: $e7
    reti                                          ; $4e1f: $d9


    adc h                                         ; $4e20: $8c
    ldh [$c2], a                                  ; $4e21: $e0 $c2
    ld a, [hl]                                    ; $4e23: $7e
    add h                                         ; $4e24: $84
    db $fc                                        ; $4e25: $fc
    db $dd                                        ; $4e26: $dd
    jr @-$3e                                      ; $4e27: $18 $c0

    ldh [$5e], a                                  ; $4e29: $e0 $5e
    ld [hl], e                                    ; $4e2b: $73
    call $e07e                                    ; $4e2c: $cd $7e $e0
    ld hl, $ff3f                                  ; $4e2f: $21 $3f $ff
    ld de, $661f                                  ; $4e32: $11 $1f $66
    ld a, a                                       ; $4e35: $7f
    cp $bb                                        ; $4e36: $fe $bb
    ld a, a                                       ; $4e38: $7f
    call z, $ffcf                                 ; $4e39: $cc $cf $ff
    cp $ff                                        ; $4e3c: $fe $ff
    ld d, d                                       ; $4e3e: $52
    add b                                         ; $4e3f: $80
    ldh [$7e], a                                  ; $4e40: $e0 $7e
    pop hl                                        ; $4e42: $e1
    pop af                                        ; $4e43: $f1
    rrca                                          ; $4e44: $0f
    push de                                       ; $4e45: $d5
    ld sp, hl                                     ; $4e46: $f9
    xor b                                         ; $4e47: $a8
    ret nz                                        ; $4e48: $c0

    ccf                                           ; $4e49: $3f
    xor d                                         ; $4e4a: $aa
    ret nz                                        ; $4e4b: $c0

    add d                                         ; $4e4c: $82
    ld a, [hl]                                    ; $4e4d: $7e
    pop hl                                        ; $4e4e: $e1
    ld a, h                                       ; $4e4f: $7c
    rst $00                                       ; $4e50: $c7
    ld a, a                                       ; $4e51: $7f
    ld a, b                                       ; $4e52: $78
    rst $08                                       ; $4e53: $cf
    ld a, a                                       ; $4e54: $7f
    ret nz                                        ; $4e55: $c0

    cp [hl]                                       ; $4e56: $be
    and $d5                                       ; $4e57: $e6 $d5
    ld a, [hl]                                    ; $4e59: $7e
    db $e4                                        ; $4e5a: $e4
    xor a                                         ; $4e5b: $af
    ld h, [hl]                                    ; $4e5c: $66
    cp $5d                                        ; $4e5d: $fe $5d
    rst $38                                       ; $4e5f: $ff
    ld b, b                                       ; $4e60: $40
    db $e3                                        ; $4e61: $e3
    pop hl                                        ; $4e62: $e1
    add d                                         ; $4e63: $82
    ldh [rNR23], a                                ; $4e64: $e0 $18
    ld e, a                                       ; $4e66: $5f
    rra                                           ; $4e67: $1f
    inc e                                         ; $4e68: $1c
    rlca                                          ; $4e69: $07
    dec de                                        ; $4e6a: $1b
    inc bc                                        ; $4e6b: $03
    jp nz, $87eb                                  ; $4e6c: $c2 $eb $87

    or c                                          ; $4e6f: $b1
    and b                                         ; $4e70: $a0
    add $c2                                       ; $4e71: $c6 $c2
    jp hl                                         ; $4e73: $e9


    pop af                                        ; $4e74: $f1
    rst $38                                       ; $4e75: $ff
    ld b, b                                       ; $4e76: $40
    ldh [rNR10], a                                ; $4e77: $e0 $10
    ldh [rLCDC], a                                ; $4e79: $e0 $40
    db $e3                                        ; $4e7b: $e3
    ld [$fff8], sp                                ; $4e7c: $08 $f8 $ff
    ld hl, sp-$10                                 ; $4e7f: $f8 $f0
    ccf                                           ; $4e81: $3f
    ld [hl+], a                                   ; $4e82: $22
    rst $38                                       ; $4e83: $ff
    ld de, $101f                                  ; $4e84: $11 $1f $10
    cp a                                          ; $4e87: $bf
    cp a                                          ; $4e88: $bf
    ld [$06b7], sp                                ; $4e89: $08 $b7 $06
    rst $28                                       ; $4e8c: $ef
    ld bc, $a1b0                                  ; $4e8d: $01 $b0 $a1
    ei                                            ; $4e90: $fb
    rst $38                                       ; $4e91: $ff
    sbc a                                         ; $4e92: $9f
    push af                                       ; $4e93: $f5
    rra                                           ; $4e94: $1f
    di                                            ; $4e95: $f3
    sbc [hl]                                      ; $4e96: $9e
    pop af                                        ; $4e97: $f1
    ld e, a                                       ; $4e98: $5f
    ldh a, [rIE]                                  ; $4e99: $f0 $ff
    ccf                                           ; $4e9b: $3f
    ldh a, [rIE]                                  ; $4e9c: $f0 $ff
    ldh a, [$1f]                                  ; $4e9e: $f0 $1f
    ldh a, [$1f]                                  ; $4ea0: $f0 $1f
    rst $18                                       ; $4ea2: $df
    rst $38                                       ; $4ea3: $ff
    cp $af                                        ; $4ea4: $fe $af
    ld a, [$79cf]                                 ; $4ea6: $fa $cf $79
    adc a                                         ; $4ea9: $8f
    ld sp, hl                                     ; $4eaa: $f9
    rrca                                          ; $4eab: $0f
    rst $38                                       ; $4eac: $ff
    ld a, [$fc0f]                                 ; $4ead: $fa $0f $fc
    rrca                                          ; $4eb0: $0f
    ld hl, sp+$0f                                 ; $4eb1: $f8 $0f
    db $fc                                        ; $4eb3: $fc
    and h                                         ; $4eb4: $a4
    rst $38                                       ; $4eb5: $ff
    db $fc                                        ; $4eb6: $fc
    and a                                         ; $4eb7: $a7

jr_037_4eb8:
    db $fc                                        ; $4eb8: $fc
    call nc, $c5fc                                ; $4eb9: $d4 $fc $c5
    ld a, h                                       ; $4ebc: $7c
    db $ed                                        ; $4ebd: $ed
    rst $38                                       ; $4ebe: $ff
    jr c, jr_037_4eb8                             ; $4ebf: $38 $f7

    jr nc, @-$06                                  ; $4ec1: $30 $f8

    ld b, b                                       ; $4ec3: $40
    rst $38                                       ; $4ec4: $ff
    add b                                         ; $4ec5: $80
    ccf                                           ; $4ec6: $3f
    rst $38                                       ; $4ec7: $ff
    add hl, de                                    ; $4ec8: $19
    rst $38                                       ; $4ec9: $ff
    ld sp, $223f                                  ; $4eca: $31 $3f $22
    cp a                                          ; $4ecd: $bf
    ld hl, $fdbf                                  ; $4ece: $21 $bf $fd
    ld [de], a                                    ; $4ed1: $12
    cp b                                          ; $4ed2: $b8
    ldh [$08], a                                  ; $4ed3: $e0 $08
    rst $38                                       ; $4ed5: $ff
    ld [$f80f], sp                                ; $4ed6: $08 $0f $f8
    rst $08                                       ; $4ed9: $cf
    rst $18                                       ; $4eda: $df
    cp $fb                                        ; $4edb: $fe $fb
    cp a                                          ; $4edd: $bf
    push af                                       ; $4ede: $f5
    ld e, a                                       ; $4edf: $5f
    cp h                                          ; $4ee0: $bc
    ldh [$1f], a                                  ; $4ee1: $e0 $1f
    ldh a, [$e7]                                  ; $4ee3: $f0 $e7
    sbc a                                         ; $4ee5: $9f
    ldh a, [$5f]                                  ; $4ee6: $f0 $5f
    call z, $bcc1                                 ; $4ee8: $cc $c1 $bc
    jp hl                                         ; $4eeb: $e9


    ld a, h                                       ; $4eec: $7c
    ldh a, [$cf]                                  ; $4eed: $f0 $cf
    rst $38                                       ; $4eef: $ff
    ld hl, sp-$5c                                 ; $4ef0: $f8 $a4
    db $fc                                        ; $4ef2: $fc
    and l                                         ; $4ef3: $a5
    db $fc                                        ; $4ef4: $fc
    push de                                       ; $4ef5: $d5
    db $fc                                        ; $4ef6: $fc
    rst $00                                       ; $4ef7: $c7
    rst $38                                       ; $4ef8: $ff
    ld a, h                                       ; $4ef9: $7c
    add sp, $38                                   ; $4efa: $e8 $38
    rst $38                                       ; $4efc: $ff
    jr nc, @+$01                                  ; $4efd: $30 $ff

    db $d3                                        ; $4eff: $d3
    rst $38                                       ; $4f00: $ff
    rst $38                                       ; $4f01: $ff
    xor c                                         ; $4f02: $a9
    ld a, a                                       ; $4f03: $7f
    ld d, c                                       ; $4f04: $51
    rst $38                                       ; $4f05: $ff
    ld h, e                                       ; $4f06: $63
    cp a                                          ; $4f07: $bf
    jr nz, @+$01                                  ; $4f08: $20 $ff

    rst $38                                       ; $4f0a: $ff
    jr jr_037_4f2c                                ; $4f0b: $18 $1f

    inc b                                         ; $4f0d: $04
    rst $38                                       ; $4f0e: $ff
    ld [bc], a                                    ; $4f0f: $02
    adc a                                         ; $4f10: $8f
    cp $fb                                        ; $4f11: $fe $fb
    ld [hl], c                                    ; $4f13: $71
    ld a, a                                       ; $4f14: $7f
    jp nz, $c4e2                                  ; $4f15: $c2 $e2 $c4

    ldh [$7c], a                                  ; $4f18: $e0 $7c
    ldh [$1f], a                                  ; $4f1a: $e0 $1f
    pop af                                        ; $4f1c: $f1
    cp a                                          ; $4f1d: $bf
    ld a, [hl]                                    ; $4f1e: $7e
    db $eb                                        ; $4f1f: $eb
    rst $38                                       ; $4f20: $ff
    set 7, a                                      ; $4f21: $cb $ff
    sub l                                         ; $4f23: $95
    rst $38                                       ; $4f24: $ff
    adc d                                         ; $4f25: $8a
    cp $c7                                        ; $4f26: $fe $c7
    cp $ff                                        ; $4f28: $fe $ff
    push bc                                       ; $4f2a: $c5
    ld a, h                                       ; $4f2b: $7c

jr_037_4f2c:
    rst $28                                       ; $4f2c: $ef
    jr c, @-$06                                   ; $4f2d: $38 $f8

    jr nc, @+$01                                  ; $4f2f: $30 $ff

    ld b, b                                       ; $4f31: $40
    ld a, [$8af0]                                 ; $4f32: $fa $f0 $8a
    ld bc, $a05e                                  ; $4f35: $01 $5e $a0
    ld a, [hl]                                    ; $4f38: $7e
    rst $38                                       ; $4f39: $ff
    inc d                                         ; $4f3a: $14
    rst $38                                       ; $4f3b: $ff
    inc h                                         ; $4f3c: $24
    rst $38                                       ; $4f3d: $ff
    rst $38                                       ; $4f3e: $ff
    ld b, h                                       ; $4f3f: $44
    rst $38                                       ; $4f40: $ff
    ld l, h                                       ; $4f41: $6c
    rst $38                                       ; $4f42: $ff
    sbc b                                         ; $4f43: $98
    rst $38                                       ; $4f44: $ff
    ld bc, $feff                                  ; $4f45: $01 $ff $fe
    inc bc                                        ; $4f48: $03
    cp a                                          ; $4f49: $bf
    cp $9f                                        ; $4f4a: $fe $9f
    db $f4                                        ; $4f4c: $f4
    sbc a                                         ; $4f4d: $9f
    ld a, [c]                                     ; $4f4e: $f2
    rst $38                                       ; $4f4f: $ff
    sbc a                                         ; $4f50: $9f
    pop af                                        ; $4f51: $f1
    sbc a                                         ; $4f52: $9f
    ei                                            ; $4f53: $fb
    adc a                                         ; $4f54: $8f
    db $fc                                        ; $4f55: $fc
    rst $08                                       ; $4f56: $cf
    ld hl, sp-$01                                 ; $4f57: $f8 $ff
    cpl                                           ; $4f59: $2f
    ld hl, sp-$44                                 ; $4f5a: $f8 $bc
    nop                                           ; $4f5c: $00
    rst $18                                       ; $4f5d: $df
    nop                                           ; $4f5e: $00
    ldh [rP1], a                                  ; $4f5f: $e0 $00
    db $ed                                        ; $4f61: $ed
    db $ed                                        ; $4f62: $ed
    cp $e0                                        ; $4f63: $fe $e0
    rst $30                                       ; $4f65: $f7
    add b                                         ; $4f66: $80
    ld b, b                                       ; $4f67: $40
    ldh [rLCDC], a                                ; $4f68: $e0 $40
    rst $08                                       ; $4f6a: $cf
    rrca                                          ; $4f6b: $0f
    rst $38                                       ; $4f6c: $ff
    adc e                                         ; $4f6d: $8b
    ld c, $9f                                     ; $4f6e: $0e $9f
    rra                                           ; $4f70: $1f
    sub b                                         ; $4f71: $90
    rra                                           ; $4f72: $1f
    or b                                          ; $4f73: $b0
    rra                                           ; $4f74: $1f
    rst $38                                       ; $4f75: $ff
    ret nc                                        ; $4f76: $d0

    rra                                           ; $4f77: $1f
    ld [c], a                                     ; $4f78: $e2
    ccf                                           ; $4f79: $3f
    pop hl                                        ; $4f7a: $e1
    ccf                                           ; $4f7b: $3f
    di                                            ; $4f7c: $f3
    di                                            ; $4f7d: $f3
    rst $38                                       ; $4f7e: $ff
    pop de                                        ; $4f7f: $d1
    ld [hl], b                                    ; $4f80: $70
    ld sp, hl                                     ; $4f81: $f9
    ld hl, sp+$05                                 ; $4f82: $f8 $05
    db $fc                                        ; $4f84: $fc
    dec b                                         ; $4f85: $05
    db $fc                                        ; $4f86: $fc
    ld a, a                                       ; $4f87: $7f
    rlca                                          ; $4f88: $07
    db $fc                                        ; $4f89: $fc
    ld b, e                                       ; $4f8a: $43
    cp $83                                        ; $4f8b: $fe $83
    cp $ff                                        ; $4f8d: $fe $ff
    ld l, h                                       ; $4f8f: $6c
    ldh [$fc], a                                  ; $4f90: $e0 $fc
    xor d                                         ; $4f92: $aa
    and h                                         ; $4f93: $a4
    ld a, b                                       ; $4f94: $78
    add d                                         ; $4f95: $82
    ldh a, [$3f]                                  ; $4f96: $f0 $3f
    ret nc                                        ; $4f98: $d0

    ld e, a                                       ; $4f99: $5f
    sbc a                                         ; $4f9a: $9f
    adc a                                         ; $4f9b: $8f
    rst $18                                       ; $4f9c: $df
    sbc e                                         ; $4f9d: $9b
    ld c, $bf                                     ; $4f9e: $0e $bf
    rrca                                          ; $4fa0: $0f
    ret nc                                        ; $4fa1: $d0

    ld [c], a                                     ; $4fa2: $e2
    ret nz                                        ; $4fa3: $c0

    ld [c], a                                     ; $4fa4: $e2
    ccf                                           ; $4fa5: $3f
    cp $ec                                        ; $4fa6: $fe $ec
    pop bc                                        ; $4fa8: $c1
    ei                                            ; $4fa9: $fb
    di                                            ; $4faa: $f3
    reti                                          ; $4fab: $d9


    ld [hl], b                                    ; $4fac: $70
    db $fd                                        ; $4fad: $fd
    ld hl, sp+$07                                 ; $4fae: $f8 $07
    ld a, [c]                                     ; $4fb0: $f2
    adc $e2                                       ; $4fb1: $ce $e2
    rst $38                                       ; $4fb3: $ff
    db $ec                                        ; $4fb4: $ec
    ret nz                                        ; $4fb5: $c0

    ld c, [hl]                                    ; $4fb6: $4e
    adc c                                         ; $4fb7: $89
    rst $28                                       ; $4fb8: $ef
    cpl                                           ; $4fb9: $2f
    set 1, [hl]                                   ; $4fba: $cb $ce
    sbc $a0                                       ; $4fbc: $de $a0
    jp hl                                         ; $4fbe: $e9


    rst $30                                       ; $4fbf: $f7
    db $f4                                        ; $4fc0: $f4
    db $d3                                        ; $4fc1: $d3
    ld [hl], e                                    ; $4fc2: $73
    and b                                         ; $4fc3: $a0
    ld [$fb87], a                                 ; $4fc4: $ea $87 $fb
    dec a                                         ; $4fc7: $3d
    cp $80                                        ; $4fc8: $fe $80
    jp hl                                         ; $4fca: $e9


    rst $38                                       ; $4fcb: $ff
    ld hl, sp-$29                                 ; $4fcc: $f8 $d7
    ld [hl], a                                    ; $4fce: $77
    add b                                         ; $4fcf: $80
    ld [$8058], a                                 ; $4fd0: $ea $58 $80
    cp $f0                                        ; $4fd3: $fe $f0
    ld l, c                                       ; $4fd5: $69
    ldh [$3f], a                                  ; $4fd6: $e0 $3f
    rst $38                                       ; $4fd8: $ff
    ccf                                           ; $4fd9: $3f
    cp $42                                        ; $4fda: $fe $42
    rst $38                                       ; $4fdc: $ff
    ld l, d                                       ; $4fdd: $6a
    cp $e1                                        ; $4fde: $fe $e1
    ld b, h                                       ; $4fe0: $44
    ld a, [de]                                    ; $4fe1: $1a
    ldh [$84], a                                  ; $4fe2: $e0 $84
    ld e, [hl]                                    ; $4fe4: $5e
    ldh [$fe], a                                  ; $4fe5: $e0 $fe
    ld a, a                                       ; $4fe7: $7f
    ldh a, [$e3]                                  ; $4fe8: $f0 $e3
    dec e                                         ; $4fea: $1d
    ld [hl+], a                                   ; $4feb: $22
    cp $e0                                        ; $4fec: $fe $e0
    ld hl, $3fe1                                  ; $4fee: $21 $e1 $3f
    sbc $e1                                       ; $4ff1: $de $e1
    ldh [$e2], a                                  ; $4ff3: $e0 $e2
    sbc $e1                                       ; $4ff5: $de $e1
    ldh [$e0], a                                  ; $4ff7: $e0 $e0
    ldh [$de], a                                  ; $4ff9: $e0 $de
    pop hl                                        ; $4ffb: $e1
    ldh a, [$e4]                                  ; $4ffc: $f0 $e4
    ldh [$e0], a                                  ; $4ffe: $e0 $e0
    ret nz                                        ; $5000: $c0

    ld h, h                                       ; $5001: $64
    ld bc, $01b7                                  ; $5002: $01 $b7 $01
    ld a, [$c010]                                 ; $5005: $fa $10 $c0
    ld bc, $60a2                                  ; $5008: $01 $a2 $60
    ld hl, sp-$01                                 ; $500b: $f8 $ff
    adc b                                         ; $500d: $88
    rst $38                                       ; $500e: $ff
    add sp, $1f                                   ; $500f: $e8 $1f
    rra                                           ; $5011: $1f
    ld hl, sp+$0f                                 ; $5012: $f8 $0f
    ld hl, sp-$01                                 ; $5014: $f8 $ff
    db $fc                                        ; $5016: $fc
    pop hl                                        ; $5017: $e1
    rst $38                                       ; $5018: $ff
    pop hl                                        ; $5019: $e1
    add h                                         ; $501a: $84
    add a                                         ; $501b: $87
    ld a, [c]                                     ; $501c: $f2
    ld [hl], $80                                  ; $501d: $36 $80
    nop                                           ; $501f: $00
    rst $38                                       ; $5020: $ff
    db $ec                                        ; $5021: $ec
    ld [hl+], a                                   ; $5022: $22
    add a                                         ; $5023: $87
    db $fc                                        ; $5024: $fc
    add b                                         ; $5025: $80
    di                                            ; $5026: $f3
    add b                                         ; $5027: $80
    ld sp, hl                                     ; $5028: $f9
    rst $28                                       ; $5029: $ef
    ld h, b                                       ; $502a: $60
    adc b                                         ; $502b: $88
    ld c, b                                       ; $502c: $48
    ld h, e                                       ; $502d: $63
    call z, $8880                                 ; $502e: $cc $80 $88
    add b                                         ; $5031: $80
    sbc b                                         ; $5032: $98
    cp $fe                                        ; $5033: $fe $fe
    ldh [$bc], a                                  ; $5035: $e0 $bc
    add b                                         ; $5037: $80
    rst $18                                       ; $5038: $df
    add b                                         ; $5039: $80
    ldh [$80], a                                  ; $503a: $e0 $80
    db $ed                                        ; $503c: $ed
    ld sp, hl                                     ; $503d: $f9
    add b                                         ; $503e: $80
    jr c, jr_037_50a6                             ; $503f: $38 $65

    ld c, b                                       ; $5041: $48
    ld h, l                                       ; $5042: $65
    inc sp                                        ; $5043: $33
    ld bc, $0113                                  ; $5044: $01 $13 $01
    dec de                                        ; $5047: $1b
    cp [hl]                                       ; $5048: $be
    cp $e0                                        ; $5049: $fe $e0
    ccf                                           ; $504b: $3f
    ld bc, $01fb                                  ; $504c: $01 $fb $01
    rlca                                          ; $504f: $07
    ld a, d                                       ; $5050: $7a
    ldh [$ed], a                                  ; $5051: $e0 $ed
    ld h, c                                       ; $5053: $61
    add b                                         ; $5054: $80
    ld a, b                                       ; $5055: $78
    ret nz                                        ; $5056: $c0

    adc [hl]                                      ; $5057: $8e
    add sp, $28                                   ; $5058: $e8 $28
    ld l, l                                       ; $505a: $6d
    ld d, b                                       ; $505b: $50
    ret z                                         ; $505c: $c8

    nop                                           ; $505d: $00
    ld hl, sp-$0e                                 ; $505e: $f8 $f2
    ld b, b                                       ; $5060: $40
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    nop                                           ; $506b: $00
    nop                                           ; $506c: $00
    nop                                           ; $506d: $00
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    rst $38                                       ; $5070: $ff
    rst $38                                       ; $5071: $ff
    rst $38                                       ; $5072: $ff
    rst $38                                       ; $5073: $ff
    nop                                           ; $5074: $00
    rst $38                                       ; $5075: $ff
    nop                                           ; $5076: $00
    inc b                                         ; $5077: $04
    nop                                           ; $5078: $00
    scf                                           ; $5079: $37
    di                                            ; $507a: $f3
    nop                                           ; $507b: $00
    ld b, $fa                                     ; $507c: $06 $fa
    ldh [$64], a                                  ; $507e: $e0 $64
    nop                                           ; $5080: $00
    ldh a, [$e3]                                  ; $5081: $f0 $e3
    db $fc                                        ; $5083: $fc
    add sp, -$02                                  ; $5084: $e8 $fe
    ldh [$e2], a                                  ; $5086: $e0 $e2
    ld hl, sp+$00                                 ; $5088: $f8 $00
    push hl                                       ; $508a: $e5
    nop                                           ; $508b: $00
    call z, $ac00                                 ; $508c: $cc $00 $ac
    xor e                                         ; $508f: $ab
    nop                                           ; $5090: $00
    cp b                                          ; $5091: $b8
    ldh [$e1], a                                  ; $5092: $e0 $e1
    add b                                         ; $5094: $80
    cp $e9                                        ; $5095: $fe $e9
    nop                                           ; $5097: $00
    rst $38                                       ; $5098: $ff
    db $ec                                        ; $5099: $ec
    ld [hl], h                                    ; $509a: $74
    cpl                                           ; $509b: $2f
    nop                                           ; $509c: $00
    db $f4                                        ; $509d: $f4
    nop                                           ; $509e: $00
    db $e4                                        ; $509f: $e4
    db $eb                                        ; $50a0: $eb
    ldh [rDIV], a                                 ; $50a1: $e0 $04
    cp d                                          ; $50a3: $ba
    db $eb                                        ; $50a4: $eb
    xor h                                         ; $50a5: $ac

jr_037_50a6:
    pop hl                                        ; $50a6: $e1
    rst $18                                       ; $50a7: $df
    rrca                                          ; $50a8: $0f
    ldh a, [$3f]                                  ; $50a9: $f0 $3f
    pop bc                                        ; $50ab: $c1
    ld a, a                                       ; $50ac: $7f
    and d                                         ; $50ad: $a2
    add sp, -$10                                  ; $50ae: $e8 $f0
    rst $38                                       ; $50b0: $ff
    rst $38                                       ; $50b1: $ff
    sub b                                         ; $50b2: $90
    rst $18                                       ; $50b3: $df
    cpl                                           ; $50b4: $2f
    add e                                         ; $50b5: $83
    nop                                           ; $50b6: $00
    add a                                         ; $50b7: $87
    nop                                           ; $50b8: $00
    rst $00                                       ; $50b9: $c7
    inc de                                        ; $50ba: $13
    nop                                           ; $50bb: $00
    db $e3                                        ; $50bc: $e3
    sbc [hl]                                      ; $50bd: $9e
    ldh [$88], a                                  ; $50be: $e0 $88
    ld [c], a                                     ; $50c0: $e2
    ret nz                                        ; $50c1: $c0

    add d                                         ; $50c2: $82
    db $eb                                        ; $50c3: $eb
    ld [$6ee4], a                                 ; $50c4: $ea $e4 $6e
    and $6b                                       ; $50c7: $e6 $6b
    inc b                                         ; $50c9: $04
    nop                                           ; $50ca: $00
    ret nc                                        ; $50cb: $d0

    db $ec                                        ; $50cc: $ec
    nop                                           ; $50cd: $00
    ld [hl], d                                    ; $50ce: $72
    db $eb                                        ; $50cf: $eb
    ld hl, sp-$80                                 ; $50d0: $f8 $80
    ld [hl-], a                                   ; $50d2: $32
    ldh [$9f], a                                  ; $50d3: $e0 $9f
    ld bc, $01ff                                  ; $50d5: $01 $ff $01
    cp $03                                        ; $50d8: $fe $03
    cp $e1                                        ; $50da: $fe $e1
    or $e1                                        ; $50dc: $f6 $e1
    add c                                         ; $50de: $81
    cp $f1                                        ; $50df: $fe $f1
    pop hl                                        ; $50e1: $e1
    rst $38                                       ; $50e2: $ff
    inc bc                                        ; $50e3: $03

jr_037_50e4:
    rst $38                                       ; $50e4: $ff
    rra                                           ; $50e5: $1f
    db $fd                                        ; $50e6: $fd
    ccf                                           ; $50e7: $3f
    pop af                                        ; $50e8: $f1
    rst $38                                       ; $50e9: $ff
    rst $38                                       ; $50ea: $ff
    rst $08                                       ; $50eb: $cf
    pop af                                        ; $50ec: $f1
    ccf                                           ; $50ed: $3f
    ret z                                         ; $50ee: $c8

    ccf                                           ; $50ef: $3f
    pop af                                        ; $50f0: $f1
    ld a, $ff                                     ; $50f1: $3e $ff
    rst $00                                       ; $50f3: $c7
    ld sp, hl                                     ; $50f4: $f9
    ld e, $e6                                     ; $50f5: $1e $e6
    cp $1a                                        ; $50f7: $fe $1a
    db $fc                                        ; $50f9: $fc
    db $f4                                        ; $50fa: $f4
    ccf                                           ; $50fb: $3f
    cp $26                                        ; $50fc: $fe $26
    db $fc                                        ; $50fe: $fc
    ld c, h                                       ; $50ff: $4c
    rst $38                                       ; $5100: $ff
    ld b, b                                       ; $5101: $40
    jr nc, jr_037_50e4                            ; $5102: $30 $e0

    ld d, h                                       ; $5104: $54
    rst $28                                       ; $5105: $ef
    ld [c], a                                     ; $5106: $e2
    cp h                                          ; $5107: $bc
    and $ef                                       ; $5108: $e6 $ef
    ld c, d                                       ; $510a: $4a
    ldh [rOCPD], a                                ; $510b: $e0 $6b
    pop hl                                        ; $510d: $e1
    cp d                                          ; $510e: $ba
    push hl                                       ; $510f: $e5
    di                                            ; $5110: $f3
    add b                                         ; $5111: $80
    ld a, [hl]                                    ; $5112: $7e
    rst $38                                       ; $5113: $ff
    ld hl, sp+$7c                                 ; $5114: $f8 $7c
    ret z                                         ; $5116: $c8

    rst $08                                       ; $5117: $cf
    or a                                          ; $5118: $b7
    ret c                                         ; $5119: $d8

    ccf                                           ; $511a: $3f
    db $e3                                        ; $511b: $e3
    ld e, a                                       ; $511c: $5f
    ld a, h                                       ; $511d: $7c
    adc a                                         ; $511e: $8f
    di                                            ; $511f: $f3
    cp $0e                                        ; $5120: $fe $0e
    jp nc, $c0c4                                  ; $5122: $d2 $c4 $c0

    cp b                                          ; $5125: $b8
    push hl                                       ; $5126: $e5
    rst $38                                       ; $5127: $ff
    push hl                                       ; $5128: $e5
    add b                                         ; $5129: $80
    call z, $ac80                                 ; $512a: $cc $80 $ac
    add b                                         ; $512d: $80
    cp b                                          ; $512e: $b8
    add b                                         ; $512f: $80
    rst $38                                       ; $5130: $ff
    add e                                         ; $5131: $83
    add b                                         ; $5132: $80
    add a                                         ; $5133: $87
    add b                                         ; $5134: $80
    rst $00                                       ; $5135: $c7
    add b                                         ; $5136: $80
    db $e3                                        ; $5137: $e3
    add b                                         ; $5138: $80
    ld hl, sp-$58                                 ; $5139: $f8 $a8
    push bc                                       ; $513b: $c5
    add sp, -$3b                                  ; $513c: $e8 $c5
    ld [$03ce], a                                 ; $513e: $ea $ce $03
    db $fd                                        ; $5141: $fd
    rlca                                          ; $5142: $07
    db $fd                                        ; $5143: $fd
    scf                                           ; $5144: $37
    rst $38                                       ; $5145: $ff
    ld d, [hl]                                    ; $5146: $56
    ld [hl], e                                    ; $5147: $73
    call z, $207f                                 ; $5148: $cc $7f $20
    ccf                                           ; $514b: $3f
    jr nz, @+$41                                  ; $514c: $20 $3f

    cp a                                          ; $514e: $bf
    ld [hl], b                                    ; $514f: $70
    rra                                           ; $5150: $1f
    call Call_000_1fff                            ; $5151: $cd $ff $1f
    ld a, [c]                                     ; $5154: $f2
    cp $e0                                        ; $5155: $fe $e0
    db $f4                                        ; $5157: $f4
    rst $38                                       ; $5158: $ff
    rra                                           ; $5159: $1f
    ldh a, [rIF]                                  ; $515a: $f0 $0f
    ld a, [$ff07]                                 ; $515c: $fa $07 $ff
    rrca                                          ; $515f: $0f
    ld sp, hl                                     ; $5160: $f9
    cp a                                          ; $5161: $bf
    db $fc                                        ; $5162: $fc
    inc a                                         ; $5163: $3c
    rst $38                                       ; $5164: $ff
    db $db                                        ; $5165: $db
    rst $38                                       ; $5166: $ff
    add hl, sp                                    ; $5167: $39
    inc l                                         ; $5168: $2c
    ldh [rSC], a                                  ; $5169: $e0 $02
    adc [hl]                                      ; $516b: $8e
    cp $e0                                        ; $516c: $fe $e0
    inc b                                         ; $516e: $04
    rst $38                                       ; $516f: $ff
    adc b                                         ; $5170: $88
    add sp, -$3b                                  ; $5171: $e8 $c5
    ld [hl], b                                    ; $5173: $70
    add $21                                       ; $5174: $c6 $21
    ld [c], a                                     ; $5176: $e2
    dec b                                         ; $5177: $05
    ei                                            ; $5178: $fb
    rlca                                          ; $5179: $07
    push af                                       ; $517a: $f5
    cp h                                          ; $517b: $bc
    ldh [$4c], a                                  ; $517c: $e0 $4c
    ld a, a                                       ; $517e: $7f
    ld h, b                                       ; $517f: $60
    ccf                                           ; $5180: $3f
    rst $38                                       ; $5181: $ff
    rst $38                                       ; $5182: $ff
    pop hl                                        ; $5183: $e1
    rst $38                                       ; $5184: $ff
    rrca                                          ; $5185: $0f
    pop af                                        ; $5186: $f1
    rst $38                                       ; $5187: $ff
    add c                                         ; $5188: $81
    rst $38                                       ; $5189: $ff
    rrca                                          ; $518a: $0f
    db $fd                                        ; $518b: $fd
    cp $ba                                        ; $518c: $fe $ba
    db $e3                                        ; $518e: $e3
    cp $f2                                        ; $518f: $fe $f2
    rst $38                                       ; $5191: $ff
    ld b, h                                       ; $5192: $44
    rst $38                                       ; $5193: $ff
    inc [hl]                                      ; $5194: $34
    rst $38                                       ; $5195: $ff
    rst $38                                       ; $5196: $ff
    ld b, [hl]                                    ; $5197: $46
    rst $38                                       ; $5198: $ff
    inc a                                         ; $5199: $3c
    rst $38                                       ; $519a: $ff
    jp c, Jump_000_3aff                           ; $519b: $da $ff $3a

    cp a                                          ; $519e: $bf
    rst $38                                       ; $519f: $ff
    ld bc, $0f7c                                  ; $51a0: $01 $7c $0f
    rst $30                                       ; $51a3: $f7
    inc bc                                        ; $51a4: $03
    ld h, b                                       ; $51a5: $60
    ret                                           ; $51a6: $c9


    ccf                                           ; $51a7: $3f
    rst $18                                       ; $51a8: $df
    cp $fd                                        ; $51a9: $fe $fd
    rst $20                                       ; $51ab: $e7
    cp $43                                        ; $51ac: $fe $43
    cp $e0                                        ; $51ae: $fe $e0
    ld b, a                                       ; $51b0: $47
    rst $38                                       ; $51b1: $ff
    rst $18                                       ; $51b2: $df
    ld c, c                                       ; $51b3: $49
    cp a                                          ; $51b4: $bf
    ldh a, [$9f]                                  ; $51b5: $f0 $9f
    ldh a, [rOCPS]                                ; $51b7: $f0 $6a
    ret nz                                        ; $51b9: $c0

    ld [hl], b                                    ; $51ba: $70
    rst $28                                       ; $51bb: $ef
    rst $38                                       ; $51bc: $ff
    ld hl, sp-$01                                 ; $51bd: $f8 $ff
    cp b                                          ; $51bf: $b8
    ld a, a                                       ; $51c0: $7f
    db $f4                                        ; $51c1: $f4
    rra                                           ; $51c2: $1f
    db $f4                                        ; $51c3: $f4
    sbc a                                         ; $51c4: $9f
    rst $38                                       ; $51c5: $ff
    ld a, [c]                                     ; $51c6: $f2
    cp $72                                        ; $51c7: $fe $72
    ld h, b                                       ; $51c9: $60
    ccf                                           ; $51ca: $3f
    ldh a, [$1f]                                  ; $51cb: $f0 $1f
    xor $e7                                       ; $51cd: $ee $e7
    rrca                                          ; $51cf: $0f
    ld bc, $3001                                  ; $51d0: $01 $01 $30
    push bc                                       ; $51d3: $c5
    ld l, d                                       ; $51d4: $6a
    ldh [$fe], a                                  ; $51d5: $e0 $fe
    rrca                                          ; $51d7: $0f
    ld sp, hl                                     ; $51d8: $f9
    rst $38                                       ; $51d9: $ff
    rst $38                                       ; $51da: $ff
    cp $fd                                        ; $51db: $fe $fd
    daa                                           ; $51dd: $27
    cp $43                                        ; $51de: $fe $43
    rst $38                                       ; $51e0: $ff
    ld b, c                                       ; $51e1: $41
    ei                                            ; $51e2: $fb
    rst $38                                       ; $51e3: $ff
    ld b, a                                       ; $51e4: $47
    ld b, b                                       ; $51e5: $40
    pop hl                                        ; $51e6: $e1
    cp $1b                                        ; $51e7: $fe $1b
    rst $38                                       ; $51e9: $ff
    push de                                       ; $51ea: $d5
    rst $38                                       ; $51eb: $ff
    ld a, a                                       ; $51ec: $7f
    ld [hl], d                                    ; $51ed: $72
    rst $38                                       ; $51ee: $ff
    pop af                                        ; $51ef: $f1
    ld a, a                                       ; $51f0: $7f
    ret nc                                        ; $51f1: $d0

    cp a                                          ; $51f2: $bf
    ldh [$30], a                                  ; $51f3: $e0 $30
    jp nz, $80ff                                  ; $51f5: $c2 $ff $80

    ld h, e                                       ; $51f8: $63
    ret nz                                        ; $51f9: $c0

    cp b                                          ; $51fa: $b8
    ldh [rIE], a                                  ; $51fb: $e0 $ff
    ld h, b                                       ; $51fd: $60
    cp a                                          ; $51fe: $bf
    pop hl                                        ; $51ff: $e1
    ldh [$30], a                                  ; $5200: $e0 $30
    jp nz, $c17f                                  ; $5202: $c2 $7f $c1

    cp a                                          ; $5205: $bf
    jp $e0f8                                      ; $5206: $c3 $f8 $e0


    adc a                                         ; $5209: $8f
    ld hl, sp+$07                                 ; $520a: $f8 $07
    rst $28                                       ; $520c: $ef
    db $fc                                        ; $520d: $fc
    ld a, a                                       ; $520e: $7f
    cp $81                                        ; $520f: $fe $81
    adc c                                         ; $5211: $89
    and d                                         ; $5212: $a2
    ld bc, $83ff                                  ; $5213: $01 $ff $83
    ld a, a                                       ; $5216: $7f
    cp $ff                                        ; $5217: $fe $ff
    dec h                                         ; $5219: $25
    rst $38                                       ; $521a: $ff
    db $10                                        ; $521b: $10
    rst $38                                       ; $521c: $ff
    adc a                                         ; $521d: $8f
    ld a, h                                       ; $521e: $7c
    and b                                         ; $521f: $a0
    rst $38                                       ; $5220: $ff
    add c                                         ; $5221: $81
    ld a, a                                       ; $5222: $7f
    jp nz, $e5ff                                  ; $5223: $c2 $ff $e5

    rst $38                                       ; $5226: $ff
    ld e, d                                       ; $5227: $5a
    rst $38                                       ; $5228: $ff
    rst $38                                       ; $5229: $ff
    ldh [$9f], a                                  ; $522a: $e0 $9f
    ld hl, sp-$69                                 ; $522c: $f8 $97
    db $fc                                        ; $522e: $fc
    xor a                                         ; $522f: $af
    db $fc                                        ; $5230: $fc
    rst $10                                       ; $5231: $d7
    sbc a                                         ; $5232: $9f
    ld a, h                                       ; $5233: $7c
    rst $08                                       ; $5234: $cf
    db $fc                                        ; $5235: $fc
    rst $30                                       ; $5236: $f7
    ld a, h                                       ; $5237: $7c
    db $10                                        ; $5238: $10
    push hl                                       ; $5239: $e5
    ret nz                                        ; $523a: $c0

    and $01                                       ; $523b: $e6 $01
    rst $38                                       ; $523d: $ff
    rst $38                                       ; $523e: $ff
    ld c, b                                       ; $523f: $48
    cp a                                          ; $5240: $bf
    add sp, -$61                                  ; $5241: $e8 $9f
    db $fc                                        ; $5243: $fc
    add e                                         ; $5244: $83
    cp $df                                        ; $5245: $fe $df
    ld bc, $e0ff                                  ; $5247: $01 $ff $e0

jr_037_524a:
    rst $38                                       ; $524a: $ff
    rra                                           ; $524b: $1f
    inc de                                        ; $524c: $13
    ldh [$bf], a                                  ; $524d: $e0 $bf
    pop hl                                        ; $524f: $e1
    ei                                            ; $5250: $fb
    rst $38                                       ; $5251: $ff
    ld b, d                                       ; $5252: $42
    add sp, -$40                                  ; $5253: $e8 $c0
    add hl, bc                                    ; $5255: $09
    cp $16                                        ; $5256: $fe $16
    db $fc                                        ; $5258: $fc
    ld hl, sp+$3f                                 ; $5259: $f8 $3f
    db $e4                                        ; $525b: $e4
    ret nz                                        ; $525c: $c0

    ld h, b                                       ; $525d: $60
    ldh [$7f], a                                  ; $525e: $e0 $7f
    ret nz                                        ; $5260: $c0

    ld h, b                                       ; $5261: $60
    and d                                         ; $5262: $a2
    ret z                                         ; $5263: $c8

    xor [hl]                                      ; $5264: $ae
    cp $20                                        ; $5265: $fe $20
    and l                                         ; $5267: $a5
    add a                                         ; $5268: $87
    db $fc                                        ; $5269: $fc
    rst $08                                       ; $526a: $cf
    ld a, b                                       ; $526b: $78
    rst $28                                       ; $526c: $ef
    jr c, @+$01                                   ; $526d: $38 $ff

    push af                                       ; $526f: $f5
    inc e                                         ; $5270: $1c
    or h                                          ; $5271: $b4
    ret nz                                        ; $5272: $c0

    ld [$e086], sp                                ; $5273: $08 $86 $e0
    ld de, $4fff                                  ; $5276: $11 $ff $4f
    rst $38                                       ; $5279: $ff
    ld a, l                                       ; $527a: $7d

jr_037_527b:
    jr z, jr_037_527b                             ; $527b: $28 $fe

    db $e4                                        ; $527d: $e4
    ld d, b                                       ; $527e: $50
    rst $38                                       ; $527f: $ff
    sub b                                         ; $5280: $90
    rst $38                                       ; $5281: $ff
    jr nz, jr_037_524a                            ; $5282: $20 $c6

    and e                                         ; $5284: $a3
    ld c, a                                       ; $5285: $4f
    dec b                                         ; $5286: $05
    ld bc, $01f3                                  ; $5287: $01 $f3 $01
    ldh a, [$83]                                  ; $528a: $f0 $83
    ld [de], a                                    ; $528c: $12
    ldh [$f8], a                                  ; $528d: $e0 $f8
    cp $e2                                        ; $528f: $fe $e2
    rst $38                                       ; $5291: $ff
    cp $cf                                        ; $5292: $fe $cf
    db $fc                                        ; $5294: $fc
    rst $38                                       ; $5295: $ff
    jr c, @+$01                                   ; $5296: $38 $ff

    db $10                                        ; $5298: $10
    db $f4                                        ; $5299: $f4
    and l                                         ; $529a: $a5
    ldh a, [$d0]                                  ; $529b: $f0 $d0
    ldh [rNR14], a                                ; $529d: $e0 $14
    cp $e2                                        ; $529f: $fe $e2
    adc $e1                                       ; $52a1: $ce $e1
    and b                                         ; $52a3: $a0
    db $10                                        ; $52a4: $10
    xor h                                         ; $52a5: $ac
    rst $38                                       ; $52a6: $ff
    rst $38                                       ; $52a7: $ff
    rst $38                                       ; $52a8: $ff
    cpl                                           ; $52a9: $2f
    rst $38                                       ; $52aa: $ff
    ld hl, $4fff                                  ; $52ab: $21 $ff $4f
    ldh a, [$7f]                                  ; $52ae: $f0 $7f

jr_037_52b0:
    ld sp, hl                                     ; $52b0: $f9
    sub b                                         ; $52b1: $90
    rst $10                                       ; $52b2: $d7
    add d                                         ; $52b3: $82
    and d                                         ; $52b4: $a2
    add b                                         ; $52b5: $80
    ldh [rIE], a                                  ; $52b6: $e0 $ff
    jr nz, @+$01                                  ; $52b8: $20 $ff

    ldh a, [$5f]                                  ; $52ba: $f0 $5f
    adc a                                         ; $52bc: $8f
    ld hl, sp-$71                                 ; $52bd: $f8 $8f
    ld hl, sp-$01                                 ; $52bf: $f8 $ff
    db $fc                                        ; $52c1: $fc
    pop hl                                        ; $52c2: $e1
    rst $38                                       ; $52c3: $ff
    db $10                                        ; $52c4: $10
    xor h                                         ; $52c5: $ac
    add hl, de                                    ; $52c6: $19
    rst $38                                       ; $52c7: $ff
    jr z, jr_037_52b0                             ; $52c8: $28 $e6

    ldh [$c2], a                                  ; $52ca: $e0 $c2
    dec b                                         ; $52cc: $05
    ld bc, $8598                                  ; $52cd: $01 $98 $85
    add sp, -$7b                                  ; $52d0: $e8 $85
    ld l, b                                       ; $52d2: $68
    add l                                         ; $52d3: $85
    rst $38                                       ; $52d4: $ff
    ld a, a                                       ; $52d5: $7f
    rrca                                          ; $52d6: $0f
    ldh a, [$1f]                                  ; $52d7: $f0 $1f
    ldh [$3f], a                                  ; $52d9: $e0 $3f
    ld [hl], b                                    ; $52db: $70
    ld e, a                                       ; $52dc: $5f
    sbc [hl]                                      ; $52dd: $9e
    ld h, d                                       ; $52de: $62
    add [hl]                                      ; $52df: $86
    add b                                         ; $52e0: $80
    ld a, a                                       ; $52e1: $7f
    ldh [$1f], a                                  ; $52e2: $e0 $1f
    or h                                          ; $52e4: $b4
    ret nz                                        ; $52e5: $c0

    ret nc                                        ; $52e6: $d0

    db $ec                                        ; $52e7: $ec
    ld h, c                                       ; $52e8: $61
    xor $38                                       ; $52e9: $ee $38
    add e                                         ; $52eb: $83
    ld l, a                                       ; $52ec: $6f
    rrca                                          ; $52ed: $0f
    ld [hl], b                                    ; $52ee: $70
    jp nc, $f0e0                                  ; $52ef: $d2 $e0 $f0

    ld e, a                                       ; $52f2: $5f
    ld hl, sp+$7d                                 ; $52f3: $f8 $7d
    rst $08                                       ; $52f5: $cf
    jp nc, Jump_000_07eb                          ; $52f6: $d2 $eb $07

    db $fc                                        ; $52f9: $fc
    di                                            ; $52fa: $f3
    ld bc, $9a07                                  ; $52fb: $01 $07 $9a
    ldh [rIE], a                                  ; $52fe: $e0 $ff
    ld h, l                                       ; $5300: $65
    ld bc, $0175                                  ; $5301: $01 $75 $01
    push af                                       ; $5304: $f5
    ld bc, $01e5                                  ; $5305: $01 $e5 $01
    pop hl                                        ; $5308: $e1
    ld bc, $c166                                  ; $5309: $01 $66 $c1
    nop                                           ; $530c: $00
    add b                                         ; $530d: $80
    db $10                                        ; $530e: $10
    pop hl                                        ; $530f: $e1
    add sp, -$1f                                  ; $5310: $e8 $e1
    ld h, h                                       ; $5312: $64
    nop                                           ; $5313: $00
    ld sp, hl                                     ; $5314: $f9
    rst $38                                       ; $5315: $ff
    ld h, c                                       ; $5316: $61
    cp [hl]                                       ; $5317: $be
    db $e3                                        ; $5318: $e3
    cp l                                          ; $5319: $bd
    rst $20                                       ; $531a: $e7
    ld a, $e7                                     ; $531b: $3e $e7

jr_037_531d:
    jr jr_037_531d                                ; $531d: $18 $fe

    ld sp, hl                                     ; $531f: $f9
    ld h, d                                       ; $5320: $62
    add c                                         ; $5321: $81
    rst $38                                       ; $5322: $ff
    ld hl, sp-$31                                 ; $5323: $f8 $cf
    cp h                                          ; $5325: $bc
    rst $20                                       ; $5326: $e7
    ld e, $ff                                     ; $5327: $1e $ff
    di                                            ; $5329: $f3
    rrca                                          ; $532a: $0f
    ld sp, hl                                     ; $532b: $f9
    rlca                                          ; $532c: $07
    db $fc                                        ; $532d: $fc
    ld h, e                                       ; $532e: $63
    cp $f1                                        ; $532f: $fe $f1
    rst $18                                       ; $5331: $df
    sbc a                                         ; $5332: $9f
    ld sp, hl                                     ; $5333: $f9
    rrca                                          ; $5334: $0f
    rlca                                          ; $5335: $07
    db $fc                                        ; $5336: $fc
    and l                                         ; $5337: $a5
    add c                                         ; $5338: $81
    ld bc, $ffff                                  ; $5339: $01 $ff $ff
    sbc c                                         ; $533c: $99
    rst $38                                       ; $533d: $ff
    db $fd                                        ; $533e: $fd
    ld h, a                                       ; $533f: $67
    rst $38                                       ; $5340: $ff
    jp Jump_037_61bf                              ; $5341: $c3 $bf $61


    ld l, b                                       ; $5344: $68
    jp nc, $c083                                  ; $5345: $d2 $83 $c0

    db $e3                                        ; $5348: $e3
    ret nz                                        ; $5349: $c0

    ld h, c                                       ; $534a: $61
    cp d                                          ; $534b: $ba
    jp nz, $81ea                                  ; $534c: $c2 $ea $81

    rst $38                                       ; $534f: $ff
    jp nz, $fbeb                                  ; $5350: $c2 $eb $fb

    di                                            ; $5353: $f3
    ccf                                           ; $5354: $3f
    jp nz, $9deb                                  ; $5355: $c2 $eb $9d

    di                                            ; $5358: $f3
    add c                                         ; $5359: $81
    rst $38                                       ; $535a: $ff
    pop bc                                        ; $535b: $c1
    ld a, a                                       ; $535c: $7f
    ld a, a                                       ; $535d: $7f
    ldh [$3f], a                                  ; $535e: $e0 $3f
    ld hl, sp+$1f                                 ; $5360: $f8 $1f
    rst $38                                       ; $5362: $ff
    rlca                                          ; $5363: $07
    ld e, $a0                                     ; $5364: $1e $a0
    rst $38                                       ; $5366: $ff
    rra                                           ; $5367: $1f
    rst $38                                       ; $5368: $ff
    inc hl                                        ; $5369: $23
    di                                            ; $536a: $f3
    ccf                                           ; $536b: $3f
    rst $38                                       ; $536c: $ff
    inc c                                         ; $536d: $0c
    rst $38                                       ; $536e: $ff
    rst $38                                       ; $536f: $ff
    pop bc                                        ; $5370: $c1
    rst $38                                       ; $5371: $ff
    add h                                         ; $5372: $84
    rst $38                                       ; $5373: $ff
    add [hl]                                      ; $5374: $86
    rst $38                                       ; $5375: $ff
    sbc e                                         ; $5376: $9b
    rst $38                                       ; $5377: $ff
    rst $38                                       ; $5378: $ff
    sub l                                         ; $5379: $95
    rst $38                                       ; $537a: $ff
    ld d, d                                       ; $537b: $52
    sbc l                                         ; $537c: $9d
    di                                            ; $537d: $f3
    res 7, l                                      ; $537e: $cb $bd
    rst $20                                       ; $5380: $e7
    rst $38                                       ; $5381: $ff
    ld e, [hl]                                    ; $5382: $5e
    di                                            ; $5383: $f3
    xor $f9                                       ; $5384: $ee $f9
    ld [hl], a                                    ; $5386: $77
    rst $38                                       ; $5387: $ff
    xor c                                         ; $5388: $a9
    rst $38                                       ; $5389: $ff
    rst $00                                       ; $538a: $c7
    ld h, a                                       ; $538b: $67
    cp a                                          ; $538c: $bf
    ldh [$d2], a                                  ; $538d: $e0 $d2
    db $eb                                        ; $538f: $eb
    ld a, [hl]                                    ; $5390: $7e
    and b                                         ; $5391: $a0
    jp nc, $ffea                                  ; $5392: $d2 $ea $ff

    pop af                                        ; $5395: $f1
    ld h, $d2                                     ; $5396: $26 $d2
    db $eb                                        ; $5398: $eb
    rst $38                                       ; $5399: $ff
    ld h, b                                       ; $539a: $60
    inc l                                         ; $539b: $2c
    adc e                                         ; $539c: $8b
    db $e4                                        ; $539d: $e4
    ld h, b                                       ; $539e: $60
    ld b, c                                       ; $539f: $41
    ld c, d                                       ; $53a0: $4a
    and d                                         ; $53a1: $a2
    cp d                                          ; $53a2: $ba
    and b                                         ; $53a3: $a0
    call Call_000_361f                            ; $53a4: $cd $1f $36
    ldh [rSB], a                                  ; $53a7: $e0 $01
    rst $38                                       ; $53a9: $ff
    ld c, d                                       ; $53aa: $4a
    and e                                         ; $53ab: $a3
    cp d                                          ; $53ac: $ba
    and d                                         ; $53ad: $a2
    dec b                                         ; $53ae: $05
    cp $87                                        ; $53af: $fe $87
    ld b, $f8                                     ; $53b1: $06 $f8
    adc b                                         ; $53b3: $88
    ld c, d                                       ; $53b4: $4a
    and e                                         ; $53b5: $a3
    cp d                                          ; $53b6: $ba
    and d                                         ; $53b7: $a2
    ld hl, sp+$43                                 ; $53b8: $f8 $43
    jp nc, $80ea                                  ; $53ba: $d2 $ea $80

    pop af                                        ; $53bd: $f1
    rst $38                                       ; $53be: $ff
    inc e                                         ; $53bf: $1c
    and c                                         ; $53c0: $a1
    sbc h                                         ; $53c1: $9c
    add b                                         ; $53c2: $80
    jp nc, $fce2                                  ; $53c3: $d2 $e2 $fc

    ld [$f0f0], sp                                ; $53c6: $08 $f0 $f0
    ld a, b                                       ; $53c9: $78
    jp nc, $82ec                                  ; $53ca: $d2 $ec $82

    ld h, b                                       ; $53cd: $60
    adc b                                         ; $53ce: $88
    ld h, b                                       ; $53cf: $60
    inc bc                                        ; $53d0: $03
    ld b, $03                                     ; $53d1: $06 $03
    ld a, [c]                                     ; $53d3: $f2
    db $fc                                        ; $53d4: $fc
    ldh [rIE], a                                  ; $53d5: $e0 $ff
    ld b, $03                                     ; $53d7: $06 $03
    ld h, l                                       ; $53d9: $65
    ld bc, $ffc1                                  ; $53da: $01 $c1 $ff
    ccf                                           ; $53dd: $3f
    cp $fd                                        ; $53de: $fe $fd
    rst $08                                       ; $53e0: $cf
    cp [hl]                                       ; $53e1: $be
    and c                                         ; $53e2: $a1
    ei                                            ; $53e3: $fb
    rlca                                          ; $53e4: $07
    db $fc                                        ; $53e5: $fc
    rrca                                          ; $53e6: $0f
    ld hl, sp+$1f                                 ; $53e7: $f8 $1f
    db $dd                                        ; $53e9: $dd
    ld hl, sp-$40                                 ; $53ea: $f8 $c0
    and b                                         ; $53ec: $a0
    inc a                                         ; $53ed: $3c
    rst $38                                       ; $53ee: $ff
    ld a, [bc]                                    ; $53ef: $0a
    cp $e2                                        ; $53f0: $fe $e2
    inc c                                         ; $53f2: $0c
    rst $38                                       ; $53f3: $ff
    rst $10                                       ; $53f4: $d7
    jr @+$01                                      ; $53f5: $18 $ff

    ld [hl], b                                    ; $53f7: $70
    jp nc, $fee1                                  ; $53f8: $d2 $e1 $fe

    ret nc                                        ; $53fb: $d0

    add sp, $41                                   ; $53fc: $e8 $41
    rst $38                                       ; $53fe: $ff
    reti                                          ; $53ff: $d9


    rst $38                                       ; $5400: $ff
    adc [hl]                                      ; $5401: $8e
    and e                                         ; $5402: $a3
    ret nc                                        ; $5403: $d0

    db $e4                                        ; $5404: $e4
    db $e4                                        ; $5405: $e4
    ldh [$d0], a                                  ; $5406: $e0 $d0
    db $eb                                        ; $5408: $eb
    rst $38                                       ; $5409: $ff
    rst $30                                       ; $540a: $f7
    nop                                           ; $540b: $00
    and b                                         ; $540c: $a0
    xor e                                         ; $540d: $ab
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    nop                                           ; $5410: $00
    ld h, c                                       ; $5411: $61
    ld d, h                                       ; $5412: $54
    db $e4                                        ; $5413: $e4
    ld d, h                                       ; $5414: $54
    ld d, d                                       ; $5415: $52
    ld d, l                                       ; $5416: $55
    rst $10                                       ; $5417: $d7
    ld d, l                                       ; $5418: $55
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    nop                                           ; $541c: $00
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    nop                                           ; $541f: $00
    nop                                           ; $5420: $00
    ld b, l                                       ; $5421: $45
    ld d, [hl]                                    ; $5422: $56
    xor [hl]                                      ; $5423: $ae
    ld d, [hl]                                    ; $5424: $56
    jr jr_037_547e                                ; $5425: $18 $57

    add e                                         ; $5427: $83
    ld d, a                                       ; $5428: $57
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    nop                                           ; $542b: $00
    nop                                           ; $542c: $00
    nop                                           ; $542d: $00
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    nop                                           ; $5430: $00
    rst $28                                       ; $5431: $ef
    ld d, a                                       ; $5432: $57
    ld h, c                                       ; $5433: $61
    ld e, b                                       ; $5434: $58
    db $d3                                        ; $5435: $d3
    ld e, b                                       ; $5436: $58
    ld b, h                                       ; $5437: $44
    ld e, c                                       ; $5438: $59
    nop                                           ; $5439: $00
    nop                                           ; $543a: $00
    nop                                           ; $543b: $00
    nop                                           ; $543c: $00
    nop                                           ; $543d: $00
    nop                                           ; $543e: $00
    nop                                           ; $543f: $00
    nop                                           ; $5440: $00
    or e                                          ; $5441: $b3
    ld e, c                                       ; $5442: $59
    daa                                           ; $5443: $27
    ld e, d                                       ; $5444: $5a
    sbc d                                         ; $5445: $9a
    ld e, d                                       ; $5446: $5a
    inc d                                         ; $5447: $14
    ld e, e                                       ; $5448: $5b
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    nop                                           ; $544b: $00
    nop                                           ; $544c: $00
    nop                                           ; $544d: $00
    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    adc e                                         ; $5451: $8b
    ld e, e                                       ; $5452: $5b
    db $ec                                        ; $5453: $ec
    ld e, e                                       ; $5454: $5b
    ld c, d                                       ; $5455: $4a
    ld e, h                                       ; $5456: $5c
    xor b                                         ; $5457: $a8
    ld e, h                                       ; $5458: $5c
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    nop                                           ; $545b: $00
    nop                                           ; $545c: $00
    nop                                           ; $545d: $00
    nop                                           ; $545e: $00
    nop                                           ; $545f: $00
    nop                                           ; $5460: $00
    sub a                                         ; $5461: $97
    dec l                                         ; $5462: $2d
    dec l                                         ; $5463: $2d
    dec c                                         ; $5464: $0d
    rst $38                                       ; $5465: $ff
    ld [c], a                                     ; $5466: $e2
    dec l                                         ; $5467: $2d
    rst $38                                       ; $5468: $ff
    ldh [$f6], a                                  ; $5469: $e0 $f6
    and $0d                                       ; $546b: $e6 $0d
    nop                                           ; $546d: $00
    db $eb                                        ; $546e: $eb
    ld [c], a                                     ; $546f: $e2
    ld sp, hl                                     ; $5470: $f9
    ldh [$f6], a                                  ; $5471: $e0 $f6
    rst $20                                       ; $5473: $e7
    db $ed                                        ; $5474: $ed
    db $e3                                        ; $5475: $e3
    push af                                       ; $5476: $f5
    add sp, -$1e                                  ; $5477: $e8 $e2
    pop hl                                        ; $5479: $e1
    call z, $c6e2                                 ; $547a: $cc $e2 $c6
    pop hl                                        ; $547d: $e1

jr_037_547e:
    rst $30                                       ; $547e: $f7
    ld l, l                                       ; $547f: $6d
    ld c, l                                       ; $5480: $4d
    ld c, l                                       ; $5481: $4d
    cp c                                          ; $5482: $b9
    pop hl                                        ; $5483: $e1
    ld c, l                                       ; $5484: $4d
    ld c, l                                       ; $5485: $4d
    ld l, l                                       ; $5486: $6d
    dec b                                         ; $5487: $05
    rst $38                                       ; $5488: $ff
    inc b                                         ; $5489: $04
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    ld bc, $0101                                  ; $548d: $01 $01 $01
    inc bc                                        ; $5490: $03
    rst $38                                       ; $5491: $ff
    ld [bc], a                                    ; $5492: $02
    dec bc                                        ; $5493: $0b
    ld a, [bc]                                    ; $5494: $0a
    rlca                                          ; $5495: $07
    rlca                                          ; $5496: $07
    rlca                                          ; $5497: $07
    ld b, $06                                     ; $5498: $06 $06
    rst $38                                       ; $549a: $ff
    ld b, $09                                     ; $549b: $06 $09
    ld [$060b], sp                                ; $549d: $08 $0b $06
    inc de                                        ; $54a0: $13
    rlca                                          ; $54a1: $07
    inc c                                         ; $54a2: $0c
    rst $38                                       ; $54a3: $ff
    dec c                                         ; $54a4: $0d
    ld c, $12                                     ; $54a5: $0e $12
    rlca                                          ; $54a7: $07
    ld [$061b], sp                                ; $54a8: $08 $1b $06
    ld a, [bc]                                    ; $54ab: $0a
    rst $38                                       ; $54ac: $ff
    inc d                                         ; $54ad: $14
    dec d                                         ; $54ae: $15
    ld d, $17                                     ; $54af: $16 $17
    add hl, bc                                    ; $54b1: $09
    rlca                                          ; $54b2: $07
    ld a, [de]                                    ; $54b3: $1a
    ld [$25ff], sp                                ; $54b4: $08 $ff $25
    ld b, $1c                                     ; $54b7: $06 $1c
    dec e                                         ; $54b9: $1d
    ld e, $1f                                     ; $54ba: $1e $1f
    rlca                                          ; $54bc: $07
    inc h                                         ; $54bd: $24
    rst $38                                       ; $54be: $ff
    dec bc                                        ; $54bf: $0b
    cpl                                           ; $54c0: $2f
    rlca                                          ; $54c1: $07
    dec h                                         ; $54c2: $25
    ld h, $27                                     ; $54c3: $26 $27
    jr z, jr_037_54f0                             ; $54c5: $28 $29

    rst $38                                       ; $54c7: $ff
    inc h                                         ; $54c8: $24
    ld b, $2e                                     ; $54c9: $06 $2e
    dec bc                                        ; $54cb: $0b
    scf                                           ; $54cc: $37
    ld [hl], $25                                  ; $54cd: $36 $25
    jr nc, @+$01                                  ; $54cf: $30 $ff

    ld sp, $3524                                  ; $54d1: $31 $24 $35
    inc [hl]                                      ; $54d4: $34
    ld [$0105], sp                                ; $54d5: $08 $05 $01
    ld bc, $387f                                  ; $54d8: $01 $7f $38
    add hl, sp                                    ; $54db: $39
    ld a, [hl-]                                   ; $54dc: $3a
    dec sp                                        ; $54dd: $3b
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    ld [bc], a                                    ; $54e0: $02
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    ret                                           ; $54e4: $c9


    dec c                                         ; $54e5: $0d
    rst $38                                       ; $54e6: $ff
    rst $38                                       ; $54e7: $ff
    db $e3                                        ; $54e8: $e3
    ld [c], a                                     ; $54e9: $e2
    dec l                                         ; $54ea: $2d
    rst $30                                       ; $54eb: $f7
    xor $cc                                       ; $54ec: $ee $cc
    jp hl                                         ; $54ee: $e9


    ld c, l                                       ; $54ef: $4d

jr_037_54f0:
    ld c, l                                       ; $54f0: $4d
    db $fd                                        ; $54f1: $fd
    ld c, l                                       ; $54f2: $4d
    ld sp, hl                                     ; $54f3: $f9
    db $e4                                        ; $54f4: $e4
    ld [bc], a                                    ; $54f5: $02
    inc bc                                        ; $54f6: $03
    ld bc, $0101                                  ; $54f7: $01 $01 $01
    nop                                           ; $54fa: $00
    rst $38                                       ; $54fb: $ff
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    inc b                                         ; $54fe: $04
    dec b                                         ; $54ff: $05
    ld [$0609], sp                                ; $5500: $08 $09 $06
    ld b, $ff                                     ; $5503: $06 $ff
    ld b, $07                                     ; $5505: $06 $07
    rlca                                          ; $5507: $07
    rlca                                          ; $5508: $07
    ld a, [bc]                                    ; $5509: $0a
    dec bc                                        ; $550a: $0b
    ld [$ff07], sp                                ; $550b: $08 $07 $ff
    ld [de], a                                    ; $550e: $12
    ld b, $0f                                     ; $550f: $06 $0f
    db $10                                        ; $5511: $10
    ld de, $0613                                  ; $5512: $11 $13 $06
    dec bc                                        ; $5515: $0b
    rst $38                                       ; $5516: $ff
    ld a, [de]                                    ; $5517: $1a
    rlca                                          ; $5518: $07
    add hl, bc                                    ; $5519: $09
    jr jr_037_5531                                ; $551a: $18 $15

    ld d, $19                                     ; $551c: $16 $19
    ld a, [bc]                                    ; $551e: $0a
    rst $38                                       ; $551f: $ff
    ld b, $1b                                     ; $5520: $06 $1b
    dec bc                                        ; $5522: $0b
    inc h                                         ; $5523: $24
    rlca                                          ; $5524: $07
    jr nz, jr_037_5548                            ; $5525: $20 $21

    ld [hl+], a                                   ; $5527: $22
    rst $38                                       ; $5528: $ff
    inc hl                                        ; $5529: $23
    ld b, $25                                     ; $552a: $06 $25
    ld [$062e], sp                                ; $552c: $08 $2e $06
    inc h                                         ; $552f: $24
    ld a, [hl+]                                   ; $5530: $2a

jr_037_5531:
    rst $38                                       ; $5531: $ff
    dec hl                                        ; $5532: $2b
    inc l                                         ; $5533: $2c
    dec l                                         ; $5534: $2d
    dec h                                         ; $5535: $25
    rlca                                          ; $5536: $07
    cpl                                           ; $5537: $2f
    ld [$ff34], sp                                ; $5538: $08 $34 $ff
    dec [hl]                                      ; $553b: $35
    inc h                                         ; $553c: $24
    ld [hl-], a                                   ; $553d: $32
    inc sp                                        ; $553e: $33
    dec h                                         ; $553f: $25
    ld [hl], $37                                  ; $5540: $36 $37
    dec bc                                        ; $5542: $0b
    rst $38                                       ; $5543: $ff
    ld [bc], a                                    ; $5544: $02
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    inc a                                         ; $5547: $3c

jr_037_5548:
    dec a                                         ; $5548: $3d
    ld a, $3f                                     ; $5549: $3e $3f
    ld bc, $0103                                  ; $554b: $01 $03 $01
    dec b                                         ; $554e: $05
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    sub a                                         ; $5552: $97
    dec l                                         ; $5553: $2d
    dec l                                         ; $5554: $2d
    dec c                                         ; $5555: $0d
    rst $38                                       ; $5556: $ff
    ld [c], a                                     ; $5557: $e2
    dec l                                         ; $5558: $2d
    rst $38                                       ; $5559: $ff
    ldh [$f6], a                                  ; $555a: $e0 $f6
    and $0d                                       ; $555c: $e6 $0d
    nop                                           ; $555e: $00
    db $eb                                        ; $555f: $eb
    ld [c], a                                     ; $5560: $e2
    ld sp, hl                                     ; $5561: $f9
    ldh [$f6], a                                  ; $5562: $e0 $f6
    rst $20                                       ; $5564: $e7
    db $ed                                        ; $5565: $ed
    db $e3                                        ; $5566: $e3
    push af                                       ; $5567: $f5
    db $e4                                        ; $5568: $e4
    call z, $dbe0                                 ; $5569: $cc $e0 $db
    pop hl                                        ; $556c: $e1
    call z, $eee3                                 ; $556d: $cc $e3 $ee
    add $e1                                       ; $5570: $c6 $e1
    ld l, l                                       ; $5572: $6d
    ld c, l                                       ; $5573: $4d
    ld c, l                                       ; $5574: $4d
    cp c                                          ; $5575: $b9
    pop hl                                        ; $5576: $e1
    ld c, l                                       ; $5577: $4d
    ld c, l                                       ; $5578: $4d
    ld l, l                                       ; $5579: $6d
    rst $38                                       ; $557a: $ff
    dec b                                         ; $557b: $05
    inc b                                         ; $557c: $04
    nop                                           ; $557d: $00
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    ld bc, $0101                                  ; $5580: $01 $01 $01
    rst $38                                       ; $5583: $ff
    inc bc                                        ; $5584: $03
    ld [bc], a                                    ; $5585: $02
    dec bc                                        ; $5586: $0b
    ld a, [bc]                                    ; $5587: $0a
    rlca                                          ; $5588: $07
    ld b, b                                       ; $5589: $40
    ld b, c                                       ; $558a: $41
    ld b, d                                       ; $558b: $42
    rst $38                                       ; $558c: $ff
    ld b, e                                       ; $558d: $43
    ld b, $09                                     ; $558e: $06 $09
    ld [$060b], sp                                ; $5590: $08 $0b $06
    inc de                                        ; $5593: $13
    ld b, a                                       ; $5594: $47
    rst $38                                       ; $5595: $ff
    ld c, b                                       ; $5596: $48
    ld c, c                                       ; $5597: $49
    ld c, d                                       ; $5598: $4a
    ld [de], a                                    ; $5599: $12
    rlca                                          ; $559a: $07
    ld [$061b], sp                                ; $559b: $08 $1b $06
    rst $38                                       ; $559e: $ff
    ld a, [bc]                                    ; $559f: $0a
    ld c, a                                       ; $55a0: $4f
    ld d, b                                       ; $55a1: $50
    ld d, c                                       ; $55a2: $51
    ld d, d                                       ; $55a3: $52
    add hl, bc                                    ; $55a4: $09
    rlca                                          ; $55a5: $07
    ld a, [de]                                    ; $55a6: $1a
    rst $38                                       ; $55a7: $ff
    ld [$0625], sp                                ; $55a8: $08 $25 $06
    ld d, a                                       ; $55ab: $57
    ld e, b                                       ; $55ac: $58
    ld e, c                                       ; $55ad: $59
    ld e, d                                       ; $55ae: $5a
    rlca                                          ; $55af: $07
    rst $38                                       ; $55b0: $ff
    inc h                                         ; $55b1: $24
    dec bc                                        ; $55b2: $0b
    cpl                                           ; $55b3: $2f
    rlca                                          ; $55b4: $07
    dec h                                         ; $55b5: $25
    ld a, [bc]                                    ; $55b6: $0a
    ld e, a                                       ; $55b7: $5f
    ld h, b                                       ; $55b8: $60
    rst $38                                       ; $55b9: $ff
    add hl, bc                                    ; $55ba: $09
    inc h                                         ; $55bb: $24
    ld b, $2e                                     ; $55bc: $06 $2e
    dec bc                                        ; $55be: $0b
    scf                                           ; $55bf: $37
    ld [hl], $25                                  ; $55c0: $36 $25
    rst $38                                       ; $55c2: $ff
    ld h, e                                       ; $55c3: $63
    ld h, h                                       ; $55c4: $64
    inc h                                         ; $55c5: $24
    dec [hl]                                      ; $55c6: $35
    inc [hl]                                      ; $55c7: $34
    ld [$0105], sp                                ; $55c8: $08 $05 $01
    rst $38                                       ; $55cb: $ff
    ld bc, $6738                                  ; $55cc: $01 $38 $67
    ld l, b                                       ; $55cf: $68
    ld l, c                                       ; $55d0: $69
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    ld [bc], a                                    ; $55d3: $02
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    ret                                           ; $55d7: $c9


    dec c                                         ; $55d8: $0d
    rst $38                                       ; $55d9: $ff
    rst $38                                       ; $55da: $ff
    db $e3                                        ; $55db: $e3
    ld [c], a                                     ; $55dc: $e2
    dec l                                         ; $55dd: $2d
    rst $30                                       ; $55de: $f7
    xor $cc                                       ; $55df: $ee $cc
    jp hl                                         ; $55e1: $e9


    ld c, l                                       ; $55e2: $4d
    ld c, l                                       ; $55e3: $4d
    db $fd                                        ; $55e4: $fd
    ld c, l                                       ; $55e5: $4d
    ld sp, hl                                     ; $55e6: $f9
    db $e4                                        ; $55e7: $e4
    ld [bc], a                                    ; $55e8: $02
    inc bc                                        ; $55e9: $03
    ld bc, $0101                                  ; $55ea: $01 $01 $01
    nop                                           ; $55ed: $00
    rst $38                                       ; $55ee: $ff
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    inc b                                         ; $55f1: $04
    dec b                                         ; $55f2: $05
    ld [$0609], sp                                ; $55f3: $08 $09 $06
    ld b, h                                       ; $55f6: $44
    rst $38                                       ; $55f7: $ff
    ld b, l                                       ; $55f8: $45
    ld b, [hl]                                    ; $55f9: $46
    rlca                                          ; $55fa: $07
    rlca                                          ; $55fb: $07
    ld a, [bc]                                    ; $55fc: $0a
    dec bc                                        ; $55fd: $0b
    ld [$ff07], sp                                ; $55fe: $08 $07 $ff
    ld [de], a                                    ; $5601: $12
    ld c, e                                       ; $5602: $4b
    ld c, h                                       ; $5603: $4c
    ld c, l                                       ; $5604: $4d
    ld c, [hl]                                    ; $5605: $4e
    inc de                                        ; $5606: $13
    ld b, $0b                                     ; $5607: $06 $0b
    rst $38                                       ; $5609: $ff
    ld a, [de]                                    ; $560a: $1a
    rlca                                          ; $560b: $07
    add hl, bc                                    ; $560c: $09
    ld d, e                                       ; $560d: $53
    ld d, h                                       ; $560e: $54
    ld d, l                                       ; $560f: $55
    ld d, [hl]                                    ; $5610: $56
    ld a, [bc]                                    ; $5611: $0a
    rst $38                                       ; $5612: $ff
    ld b, $1b                                     ; $5613: $06 $1b
    dec bc                                        ; $5615: $0b
    inc h                                         ; $5616: $24
    rlca                                          ; $5617: $07
    ld e, e                                       ; $5618: $5b
    ld e, h                                       ; $5619: $5c
    ld e, l                                       ; $561a: $5d
    rst $38                                       ; $561b: $ff
    ld e, [hl]                                    ; $561c: $5e
    ld b, $25                                     ; $561d: $06 $25
    ld [$062e], sp                                ; $561f: $08 $2e $06
    inc h                                         ; $5622: $24
    add hl, bc                                    ; $5623: $09
    rst $38                                       ; $5624: $ff
    ld h, c                                       ; $5625: $61
    ld h, d                                       ; $5626: $62
    ld a, [bc]                                    ; $5627: $0a
    dec h                                         ; $5628: $25
    rlca                                          ; $5629: $07
    cpl                                           ; $562a: $2f
    ld [$ff34], sp                                ; $562b: $08 $34 $ff
    dec [hl]                                      ; $562e: $35
    inc h                                         ; $562f: $24
    ld h, l                                       ; $5630: $65
    ld h, [hl]                                    ; $5631: $66
    dec h                                         ; $5632: $25
    ld [hl], $37                                  ; $5633: $36 $37
    dec bc                                        ; $5635: $0b
    rst $38                                       ; $5636: $ff
    ld [bc], a                                    ; $5637: $02
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    inc a                                         ; $563a: $3c
    ld l, d                                       ; $563b: $6a
    ld l, e                                       ; $563c: $6b
    ccf                                           ; $563d: $3f
    ld bc, $0103                                  ; $563e: $01 $03 $01
    dec b                                         ; $5641: $05
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    rla                                           ; $5645: $17
    dec c                                         ; $5646: $0d
    dec c                                         ; $5647: $0d
    dec l                                         ; $5648: $2d
    cp $e3                                        ; $5649: $fe $e3
    dec l                                         ; $564b: $2d
    or $e1                                        ; $564c: $f6 $e1
    rst $38                                       ; $564e: $ff
    pop hl                                        ; $564f: $e1
    or $ea                                        ; $5650: $f6 $ea
    ret nz                                        ; $5652: $c0

    db $ed                                        ; $5653: $ed
    db $e4                                        ; $5654: $e4
    db $db                                        ; $5655: $db
    ld [c], a                                     ; $5656: $e2
    or $e5                                        ; $5657: $f6 $e5
    ret c                                         ; $5659: $d8

    db $eb                                        ; $565a: $eb
    db $db                                        ; $565b: $db
    pop hl                                        ; $565c: $e1
    or $e8                                        ; $565d: $f6 $e8
    ld bc, $fe00                                  ; $565f: $01 $00 $fe
    rst $38                                       ; $5662: $ff
    db $e4                                        ; $5663: $e4
    ld bc, $0309                                  ; $5664: $01 $09 $03
    inc bc                                        ; $5667: $03
    inc bc                                        ; $5668: $03
    inc b                                         ; $5669: $04
    dec b                                         ; $566a: $05
    rst $38                                       ; $566b: $ff
    ld b, $03                                     ; $566c: $06 $03
    inc bc                                        ; $566e: $03
    add hl, bc                                    ; $566f: $09

jr_037_5670:
    ld [de], a                                    ; $5670: $12
    inc de                                        ; $5671: $13
    inc de                                        ; $5672: $13
    ld a, [bc]                                    ; $5673: $0a
    rst $38                                       ; $5674: $ff
    dec bc                                        ; $5675: $0b
    inc c                                         ; $5676: $0c
    dec c                                         ; $5677: $0d
    inc de                                        ; $5678: $13
    inc de                                        ; $5679: $13
    ld [de], a                                    ; $567a: $12
    inc e                                         ; $567b: $1c
    inc bc                                        ; $567c: $03
    rst $38                                       ; $567d: $ff
    inc bc                                        ; $567e: $03
    inc d                                         ; $567f: $14
    dec d                                         ; $5680: $15
    ld d, $17                                     ; $5681: $16 $17
    inc bc                                        ; $5683: $03
    inc bc                                        ; $5684: $03
    inc e                                         ; $5685: $1c
    rst $38                                       ; $5686: $ff
    dec h                                         ; $5687: $25
    inc de                                        ; $5688: $13
    inc de                                        ; $5689: $13
    dec e                                         ; $568a: $1d
    ld e, $1f                                     ; $568b: $1e $1f
    jr nz, @+$15                                  ; $568d: $20 $13

    cp e                                          ; $568f: $bb
    inc de                                        ; $5690: $13
    dec h                                         ; $5691: $25
    ret c                                         ; $5692: $d8

    pop hl                                        ; $5693: $e1
    ld h, $27                                     ; $5694: $26 $27
    jr z, jr_037_5670                             ; $5696: $28 $d8

    db $e3                                        ; $5698: $e3
    inc de                                        ; $5699: $13
    ei                                            ; $569a: $fb
    inc l                                         ; $569b: $2c
    inc l                                         ; $569c: $2c
    ei                                            ; $569d: $fb
    ldh [rNR12], a                                ; $569e: $e0 $12
    dec [hl]                                      ; $56a0: $35
    ld sp, $2f31                                  ; $56a1: $31 $31 $2f
    ccf                                           ; $56a4: $3f
    jr nc, @+$32                                  ; $56a5: $30 $30

    cpl                                           ; $56a7: $2f
    ld sp, $3531                                  ; $56a8: $31 $31 $35
    nop                                           ; $56ab: $00
    nop                                           ; $56ac: $00
    nop                                           ; $56ad: $00
    rla                                           ; $56ae: $17
    dec c                                         ; $56af: $0d
    dec c                                         ; $56b0: $0d
    dec l                                         ; $56b1: $2d
    cp $e3                                        ; $56b2: $fe $e3
    dec l                                         ; $56b4: $2d
    or $e1                                        ; $56b5: $f6 $e1
    ld a, [c]                                     ; $56b7: $f2
    ld [c], a                                     ; $56b8: $e2
    or $e4                                        ; $56b9: $f6 $e4
    add b                                         ; $56bb: $80
    and $e0                                       ; $56bc: $e6 $e0
    push hl                                       ; $56be: $e5
    pop hl                                        ; $56bf: $e1
    rst $30                                       ; $56c0: $f7
    ld [c], a                                     ; $56c1: $e2
    db $db                                        ; $56c2: $db
    ld [c], a                                     ; $56c3: $e2
    or $e5                                        ; $56c4: $f6 $e5
    ret c                                         ; $56c6: $d8

    db $ec                                        ; $56c7: $ec
    adc $eb                                       ; $56c8: $ce $eb
    ld bc, $00fd                                  ; $56ca: $01 $fd $00
    rst $38                                       ; $56cd: $ff
    db $e4                                        ; $56ce: $e4
    ld bc, $0309                                  ; $56cf: $01 $09 $03
    inc bc                                        ; $56d2: $03
    inc bc                                        ; $56d3: $03
    rlca                                          ; $56d4: $07
    db $fd                                        ; $56d5: $fd
    ld [$e0fb], sp                                ; $56d6: $08 $fb $e0
    add hl, bc                                    ; $56d9: $09
    ld [de], a                                    ; $56da: $12
    inc de                                        ; $56db: $13
    inc de                                        ; $56dc: $13
    ld c, $0f                                     ; $56dd: $0e $0f
    rst $38                                       ; $56df: $ff
    db $10                                        ; $56e0: $10
    ld de, $1313                                  ; $56e1: $11 $13 $13
    ld [de], a                                    ; $56e4: $12
    inc e                                         ; $56e5: $1c
    inc bc                                        ; $56e6: $03
    inc bc                                        ; $56e7: $03
    rst $38                                       ; $56e8: $ff
    jr jr_037_5704                                ; $56e9: $18 $19

    ld a, [de]                                    ; $56eb: $1a
    dec de                                        ; $56ec: $1b
    inc bc                                        ; $56ed: $03
    inc bc                                        ; $56ee: $03
    inc e                                         ; $56ef: $1c
    dec h                                         ; $56f0: $25
    rst $38                                       ; $56f1: $ff
    inc de                                        ; $56f2: $13
    inc de                                        ; $56f3: $13
    ld hl, $2322                                  ; $56f4: $21 $22 $23
    inc h                                         ; $56f7: $24
    inc de                                        ; $56f8: $13
    inc de                                        ; $56f9: $13
    db $dd                                        ; $56fa: $dd
    dec h                                         ; $56fb: $25
    ret c                                         ; $56fc: $d8

    ldh [$29], a                                  ; $56fd: $e0 $29
    ld a, [hl+]                                   ; $56ff: $2a
    dec hl                                        ; $5700: $2b
    ret c                                         ; $5701: $d8

    db $e4                                        ; $5702: $e4
    inc de                                        ; $5703: $13

jr_037_5704:
    dec l                                         ; $5704: $2d
    db $fd                                        ; $5705: $fd
    ld l, $fb                                     ; $5706: $2e $fb
    ldh [rNR12], a                                ; $5708: $e0 $12
    dec [hl]                                      ; $570a: $35
    ld sp, $3131                                  ; $570b: $31 $31 $31
    ld [hl-], a                                   ; $570e: $32
    rra                                           ; $570f: $1f
    inc sp                                        ; $5710: $33
    inc [hl]                                      ; $5711: $34
    ld sp, $3531                                  ; $5712: $31 $31 $35
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    rla                                           ; $5718: $17
    dec c                                         ; $5719: $0d
    dec c                                         ; $571a: $0d
    dec l                                         ; $571b: $2d
    cp $e3                                        ; $571c: $fe $e3
    dec l                                         ; $571e: $2d
    or $e0                                        ; $571f: $f6 $e0
    rst $38                                       ; $5721: $ff
    pop hl                                        ; $5722: $e1
    or $eb                                        ; $5723: $f6 $eb
    add b                                         ; $5725: $80
    db $e3                                        ; $5726: $e3
    pop hl                                        ; $5727: $e1
    db $dd                                        ; $5728: $dd
    push hl                                       ; $5729: $e5
    db $fd                                        ; $572a: $fd
    db $e3                                        ; $572b: $e3
    ld hl, sp-$1d                                 ; $572c: $f8 $e3
    adc $e5                                       ; $572e: $ce $e5
    set 4, c                                      ; $5730: $cb $e1
    or $ea                                        ; $5732: $f6 $ea
    ld bc, $00fd                                  ; $5734: $01 $fd $00
    rst $38                                       ; $5737: $ff
    db $e4                                        ; $5738: $e4
    ld bc, $0309                                  ; $5739: $01 $09 $03
    inc bc                                        ; $573c: $03
    ld b, $05                                     ; $573d: $06 $05
    rst $38                                       ; $573f: $ff
    inc b                                         ; $5740: $04
    inc bc                                        ; $5741: $03
    inc bc                                        ; $5742: $03
    inc bc                                        ; $5743: $03
    add hl, bc                                    ; $5744: $09
    ld [de], a                                    ; $5745: $12
    inc de                                        ; $5746: $13
    inc de                                        ; $5747: $13
    rst $38                                       ; $5748: $ff
    dec c                                         ; $5749: $0d
    inc c                                         ; $574a: $0c
    dec bc                                        ; $574b: $0b
    ld a, [bc]                                    ; $574c: $0a
    inc de                                        ; $574d: $13
    inc de                                        ; $574e: $13
    ld [de], a                                    ; $574f: $12
    inc e                                         ; $5750: $1c
    rst $38                                       ; $5751: $ff
    inc bc                                        ; $5752: $03
    inc bc                                        ; $5753: $03
    rla                                           ; $5754: $17
    ld [hl], $37                                  ; $5755: $36 $37
    jr c, jr_037_575c                             ; $5757: $38 $03

    inc bc                                        ; $5759: $03
    rst $38                                       ; $575a: $ff
    inc e                                         ; $575b: $1c

jr_037_575c:
    dec h                                         ; $575c: $25
    inc de                                        ; $575d: $13
    inc de                                        ; $575e: $13
    inc a                                         ; $575f: $3c
    rra                                           ; $5760: $1f
    dec a                                         ; $5761: $3d
    ld a, $77                                     ; $5762: $3e $77
    inc de                                        ; $5764: $13
    inc de                                        ; $5765: $13
    dec h                                         ; $5766: $25
    ret c                                         ; $5767: $d8

    ldh [rSCX], a                                 ; $5768: $e0 $43
    ld b, h                                       ; $576a: $44
    ld b, l                                       ; $576b: $45
    ret c                                         ; $576c: $d8

    db $e4                                        ; $576d: $e4
    rst $30                                       ; $576e: $f7
    inc de                                        ; $576f: $13
    inc l                                         ; $5770: $2c
    inc l                                         ; $5771: $2c
    ei                                            ; $5772: $fb
    ldh [rNR12], a                                ; $5773: $e0 $12
    dec [hl]                                      ; $5775: $35
    ld sp, $7f31                                  ; $5776: $31 $31 $7f
    cpl                                           ; $5779: $2f
    jr nc, jr_037_57ac                            ; $577a: $30 $30

    cpl                                           ; $577c: $2f
    ld sp, $3531                                  ; $577d: $31 $31 $35
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    rla                                           ; $5783: $17
    dec c                                         ; $5784: $0d
    dec c                                         ; $5785: $0d
    dec l                                         ; $5786: $2d
    cp $e3                                        ; $5787: $fe $e3
    dec l                                         ; $5789: $2d
    or $e2                                        ; $578a: $f6 $e2
    ld sp, hl                                     ; $578c: $f9
    ldh [$f6], a                                  ; $578d: $e0 $f6
    ld [c], a                                     ; $578f: $e2
    nop                                           ; $5790: $00
    rst $38                                       ; $5791: $ff
    pop hl                                        ; $5792: $e1
    db $ec                                        ; $5793: $ec
    pop hl                                        ; $5794: $e1
    ld [$dfe0], a                                 ; $5795: $ea $e0 $df
    push hl                                       ; $5798: $e5
    or $e0                                        ; $5799: $f6 $e0
    db $d3                                        ; $579b: $d3
    db $e3                                        ; $579c: $e3
    ret c                                         ; $579d: $d8

    jp hl                                         ; $579e: $e9


    adc $ee                                       ; $579f: $ce $ee
    ei                                            ; $57a1: $fb
    ld bc, $ff00                                  ; $57a2: $01 $00 $ff
    db $e4                                        ; $57a5: $e4
    ld bc, $0309                                  ; $57a6: $01 $09 $03
    inc bc                                        ; $57a9: $03
    inc bc                                        ; $57aa: $03
    ei                                            ; $57ab: $fb

jr_037_57ac:
    ld [$fb07], sp                                ; $57ac: $08 $07 $fb
    ldh [$09], a                                  ; $57af: $e0 $09
    ld [de], a                                    ; $57b1: $12
    inc de                                        ; $57b2: $13
    inc de                                        ; $57b3: $13
    ld de, $10ff                                  ; $57b4: $11 $ff $10
    rrca                                          ; $57b7: $0f
    ld c, $13                                     ; $57b8: $0e $13
    inc de                                        ; $57ba: $13
    ld [de], a                                    ; $57bb: $12
    inc e                                         ; $57bc: $1c
    inc bc                                        ; $57bd: $03
    rst $38                                       ; $57be: $ff
    inc bc                                        ; $57bf: $03
    add hl, sp                                    ; $57c0: $39
    ld a, [hl-]                                   ; $57c1: $3a
    add hl, de                                    ; $57c2: $19
    dec sp                                        ; $57c3: $3b
    inc bc                                        ; $57c4: $03
    inc bc                                        ; $57c5: $03
    inc e                                         ; $57c6: $1c
    rst $38                                       ; $57c7: $ff
    dec h                                         ; $57c8: $25
    inc de                                        ; $57c9: $13
    inc de                                        ; $57ca: $13
    ccf                                           ; $57cb: $3f
    ld b, b                                       ; $57cc: $40
    ld b, c                                       ; $57cd: $41
    ld b, d                                       ; $57ce: $42
    inc de                                        ; $57cf: $13
    cp e                                          ; $57d0: $bb
    inc de                                        ; $57d1: $13
    dec h                                         ; $57d2: $25
    ret c                                         ; $57d3: $d8

    pop hl                                        ; $57d4: $e1
    dec hl                                        ; $57d5: $2b
    ld a, [hl+]                                   ; $57d6: $2a
    add hl, hl                                    ; $57d7: $29
    ret c                                         ; $57d8: $d8

    db $e3                                        ; $57d9: $e3
    inc de                                        ; $57da: $13
    ei                                            ; $57db: $fb
    ld l, $2d                                     ; $57dc: $2e $2d
    ei                                            ; $57de: $fb
    ldh [rNR12], a                                ; $57df: $e0 $12
    dec [hl]                                      ; $57e1: $35
    ld sp, $3431                                  ; $57e2: $31 $31 $34
    ccf                                           ; $57e5: $3f
    inc sp                                        ; $57e6: $33
    ld [hl-], a                                   ; $57e7: $32
    ld sp, $3131                                  ; $57e8: $31 $31 $31
    dec [hl]                                      ; $57eb: $35
    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    nop                                           ; $57ee: $00
    adc a                                         ; $57ef: $8f
    dec c                                         ; $57f0: $0d
    dec c                                         ; $57f1: $0d
    dec l                                         ; $57f2: $2d
    dec c                                         ; $57f3: $0d
    db $fc                                        ; $57f4: $fc
    ld [c], a                                     ; $57f5: $e2
    db $fd                                        ; $57f6: $fd
    db $e3                                        ; $57f7: $e3
    ld a, [c]                                     ; $57f8: $f2
    ldh [$2d], a                                  ; $57f9: $e0 $2d
    add b                                         ; $57fb: $80
    rst $28                                       ; $57fc: $ef
    pop hl                                        ; $57fd: $e1
    db $fd                                        ; $57fe: $fd
    ld [c], a                                     ; $57ff: $e2
    or $e1                                        ; $5800: $f6 $e1
    di                                            ; $5802: $f3
    db $e3                                        ; $5803: $e3
    or $eb                                        ; $5804: $f6 $eb
    ld [c], a                                     ; $5806: $e2
    db $eb                                        ; $5807: $eb
    adc $e1                                       ; $5808: $ce $e1
    ld c, l                                       ; $580a: $4d
    db $fd                                        ; $580b: $fd
    ld c, l                                       ; $580c: $4d
    pop de                                        ; $580d: $d1
    ld [c], a                                     ; $580e: $e2
    dec l                                         ; $580f: $2d
    ld c, l                                       ; $5810: $4d
    ld l, l                                       ; $5811: $6d
    ld d, [hl]                                    ; $5812: $56
    ld bc, $fb00                                  ; $5813: $01 $00 $fb
    nop                                           ; $5816: $00
    ld bc, $e1fc                                  ; $5817: $01 $fc $e1
    ld d, [hl]                                    ; $581a: $56
    ld e, b                                       ; $581b: $58
    ld e, c                                       ; $581c: $59
    ld [bc], a                                    ; $581d: $02
    ld [bc], a                                    ; $581e: $02
    rst $38                                       ; $581f: $ff
    inc bc                                        ; $5820: $03
    inc b                                         ; $5821: $04
    ld [bc], a                                    ; $5822: $02
    ld [bc], a                                    ; $5823: $02
    ld e, c                                       ; $5824: $59
    ld e, b                                       ; $5825: $58
    ld e, d                                       ; $5826: $5a
    ld e, e                                       ; $5827: $5b
    rst $38                                       ; $5828: $ff
    ld d, $0f                                     ; $5829: $16 $0f
    db $10                                        ; $582b: $10
    ld de, $1612                                  ; $582c: $11 $12 $16
    ld e, e                                       ; $582f: $5b
    ld e, d                                       ; $5830: $5a
    rst $38                                       ; $5831: $ff
    ld e, h                                       ; $5832: $5c
    ld e, l                                       ; $5833: $5d
    ld c, b                                       ; $5834: $48
    rra                                           ; $5835: $1f
    jr nz, jr_037_5859                            ; $5836: $20 $21

    ld [hl+], a                                   ; $5838: $22
    ld c, b                                       ; $5839: $48
    ld a, e                                       ; $583a: $7b
    ld e, l                                       ; $583b: $5d
    ld e, h                                       ; $583c: $5c
    ld [c], a                                     ; $583d: $e2
    ldh [$2f], a                                  ; $583e: $e0 $2f
    jr nc, @+$33                                  ; $5840: $30 $31

    ld [hl-], a                                   ; $5842: $32
    ld [c], a                                     ; $5843: $e2
    db $e3                                        ; $5844: $e3
    rst $28                                       ; $5845: $ef
    dec a                                         ; $5846: $3d
    ld a, $3f                                     ; $5847: $3e $3f
    ld d, $e2                                     ; $5849: $16 $e2
    db $e3                                        ; $584b: $e3
    ld c, b                                       ; $584c: $48
    ld c, c                                       ; $584d: $49
    ld c, d                                       ; $584e: $4a
    db $fd                                        ; $584f: $fd
    ld c, b                                       ; $5850: $48
    ld [c], a                                     ; $5851: $e2
    ldh [rRP], a                                  ; $5852: $e0 $56
    ld bc, $505e                                  ; $5854: $01 $5e $50
    ld d, c                                       ; $5857: $51
    ld d, c                                       ; $5858: $51

jr_037_5859:
    rrca                                          ; $5859: $0f
    ld d, b                                       ; $585a: $50
    ld e, [hl]                                    ; $585b: $5e
    ld bc, $0056                                  ; $585c: $01 $56 $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    adc a                                         ; $5861: $8f
    dec c                                         ; $5862: $0d
    dec c                                         ; $5863: $0d
    dec l                                         ; $5864: $2d
    dec c                                         ; $5865: $0d
    db $fc                                        ; $5866: $fc
    ld [c], a                                     ; $5867: $e2
    db $fd                                        ; $5868: $fd
    db $e3                                        ; $5869: $e3
    ld a, [c]                                     ; $586a: $f2
    ldh [$2d], a                                  ; $586b: $e0 $2d
    add b                                         ; $586d: $80
    rst $28                                       ; $586e: $ef
    pop hl                                        ; $586f: $e1
    db $fd                                        ; $5870: $fd
    ld [c], a                                     ; $5871: $e2
    or $e1                                        ; $5872: $f6 $e1
    di                                            ; $5874: $f3
    db $e3                                        ; $5875: $e3
    or $eb                                        ; $5876: $f6 $eb
    ld [c], a                                     ; $5878: $e2
    db $eb                                        ; $5879: $eb
    adc $e1                                       ; $587a: $ce $e1
    ld c, l                                       ; $587c: $4d
    db $fd                                        ; $587d: $fd
    ld c, l                                       ; $587e: $4d
    pop de                                        ; $587f: $d1
    ld [c], a                                     ; $5880: $e2
    dec l                                         ; $5881: $2d
    ld c, l                                       ; $5882: $4d
    ld l, l                                       ; $5883: $6d
    ld d, [hl]                                    ; $5884: $56
    ld bc, $fb00                                  ; $5885: $01 $00 $fb
    nop                                           ; $5888: $00
    ld bc, $e1fc                                  ; $5889: $01 $fc $e1
    ld d, [hl]                                    ; $588c: $56
    ld e, b                                       ; $588d: $58
    ld e, c                                       ; $588e: $59
    ld [bc], a                                    ; $588f: $02
    ld [bc], a                                    ; $5890: $02
    rst $38                                       ; $5891: $ff
    dec b                                         ; $5892: $05
    ld b, $02                                     ; $5893: $06 $02
    ld [bc], a                                    ; $5895: $02
    ld e, c                                       ; $5896: $59
    ld e, b                                       ; $5897: $58
    ld e, d                                       ; $5898: $5a
    ld e, e                                       ; $5899: $5b
    rst $38                                       ; $589a: $ff
    ld d, $13                                     ; $589b: $16 $13
    inc d                                         ; $589d: $14
    dec d                                         ; $589e: $15
    ld d, $16                                     ; $589f: $16 $16
    ld e, e                                       ; $58a1: $5b
    ld e, d                                       ; $58a2: $5a
    rst $38                                       ; $58a3: $ff
    ld e, h                                       ; $58a4: $5c
    ld e, l                                       ; $58a5: $5d
    ld c, b                                       ; $58a6: $48
    inc hl                                        ; $58a7: $23
    inc h                                         ; $58a8: $24
    dec h                                         ; $58a9: $25
    ld h, $48                                     ; $58aa: $26 $48
    ld a, e                                       ; $58ac: $7b
    ld e, l                                       ; $58ad: $5d
    ld e, h                                       ; $58ae: $5c
    ld [c], a                                     ; $58af: $e2
    ldh [$33], a                                  ; $58b0: $e0 $33
    inc [hl]                                      ; $58b2: $34
    dec [hl]                                      ; $58b3: $35
    ld [hl], $e2                                  ; $58b4: $36 $e2
    db $e3                                        ; $58b6: $e3
    rst $28                                       ; $58b7: $ef
    ld b, b                                       ; $58b8: $40
    ld b, c                                       ; $58b9: $41
    ld b, d                                       ; $58ba: $42
    ld b, e                                       ; $58bb: $43
    ld [c], a                                     ; $58bc: $e2
    db $e3                                        ; $58bd: $e3
    ld c, b                                       ; $58be: $48
    ld c, e                                       ; $58bf: $4b
    ld c, h                                       ; $58c0: $4c
    db $fd                                        ; $58c1: $fd
    ld c, b                                       ; $58c2: $48
    ld [c], a                                     ; $58c3: $e2
    ldh [rRP], a                                  ; $58c4: $e0 $56
    ld bc, $505e                                  ; $58c6: $01 $5e $50
    ld d, d                                       ; $58c9: $52
    ld d, d                                       ; $58ca: $52
    rrca                                          ; $58cb: $0f
    ld d, b                                       ; $58cc: $50
    ld e, [hl]                                    ; $58cd: $5e
    ld bc, $0056                                  ; $58ce: $01 $56 $00
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    rrca                                          ; $58d3: $0f
    dec c                                         ; $58d4: $0d
    dec c                                         ; $58d5: $0d
    dec l                                         ; $58d6: $2d
    dec c                                         ; $58d7: $0d
    db $fc                                        ; $58d8: $fc
    ld [c], a                                     ; $58d9: $e2
    db $fd                                        ; $58da: $fd
    db $e3                                        ; $58db: $e3
    db $f4                                        ; $58dc: $f4
    pop hl                                        ; $58dd: $e1
    ld sp, hl                                     ; $58de: $f9
    db $e3                                        ; $58df: $e3
    ldh [$f6], a                                  ; $58e0: $e0 $f6
    db $e4                                        ; $58e2: $e4
    db $ec                                        ; $58e3: $ec
    rst $20                                       ; $58e4: $e7
    ret c                                         ; $58e5: $d8

    db $e3                                        ; $58e6: $e3
    ld [c], a                                     ; $58e7: $e2
    xor $d1                                       ; $58e8: $ee $d1
    ldh [$2d], a                                  ; $58ea: $e0 $2d
    dec l                                         ; $58ec: $2d
    ld c, l                                       ; $58ed: $4d
    db $fd                                        ; $58ee: $fd
    ld c, l                                       ; $58ef: $4d
    rst $00                                       ; $58f0: $c7
    ld [c], a                                     ; $58f1: $e2
    dec l                                         ; $58f2: $2d
    ld c, l                                       ; $58f3: $4d
    ld l, l                                       ; $58f4: $6d
    ld d, [hl]                                    ; $58f5: $56
    ld bc, $fb00                                  ; $58f6: $01 $00 $fb
    nop                                           ; $58f9: $00
    ld bc, $e1fc                                  ; $58fa: $01 $fc $e1
    ld d, [hl]                                    ; $58fd: $56
    ld e, b                                       ; $58fe: $58
    ld e, c                                       ; $58ff: $59
    ld [bc], a                                    ; $5900: $02
    rlca                                          ; $5901: $07
    rst $38                                       ; $5902: $ff
    ld [$0a09], sp                                ; $5903: $08 $09 $0a
    ld [bc], a                                    ; $5906: $02
    ld e, c                                       ; $5907: $59
    ld e, b                                       ; $5908: $58
    ld e, d                                       ; $5909: $5a
    ld e, e                                       ; $590a: $5b
    rst $38                                       ; $590b: $ff
    ld d, $17                                     ; $590c: $16 $17
    jr jr_037_5929                                ; $590e: $18 $19

    ld a, [de]                                    ; $5910: $1a
    ld d, $5b                                     ; $5911: $16 $5b
    ld e, d                                       ; $5913: $5a
    rst $38                                       ; $5914: $ff
    ld e, h                                       ; $5915: $5c
    ld e, l                                       ; $5916: $5d
    ld c, b                                       ; $5917: $48
    daa                                           ; $5918: $27
    jr z, jr_037_5944                             ; $5919: $28 $29

    ld a, [hl+]                                   ; $591b: $2a
    ld c, b                                       ; $591c: $48
    ld a, e                                       ; $591d: $7b
    ld e, l                                       ; $591e: $5d
    ld e, h                                       ; $591f: $5c
    ld [c], a                                     ; $5920: $e2
    ldh [$37], a                                  ; $5921: $e0 $37
    jr c, jr_037_595e                             ; $5923: $38 $39

    ld [bc], a                                    ; $5925: $02
    ld [c], a                                     ; $5926: $e2
    db $e3                                        ; $5927: $e3
    rst $28                                       ; $5928: $ef

jr_037_5929:
    ld d, $44                                     ; $5929: $16 $44
    ld b, l                                       ; $592b: $45
    ld d, $e2                                     ; $592c: $16 $e2
    db $e3                                        ; $592e: $e3
    ld c, b                                       ; $592f: $48
    ld c, l                                       ; $5930: $4d
    ld c, l                                       ; $5931: $4d
    db $fd                                        ; $5932: $fd
    ld c, b                                       ; $5933: $48
    ld [c], a                                     ; $5934: $e2
    ldh [rRP], a                                  ; $5935: $e0 $56
    ld bc, $535e                                  ; $5937: $01 $5e $53
    ld d, h                                       ; $593a: $54
    ld d, h                                       ; $593b: $54
    rrca                                          ; $593c: $0f
    ld d, e                                       ; $593d: $53
    ld e, [hl]                                    ; $593e: $5e
    ld bc, $0056                                  ; $593f: $01 $56 $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00

jr_037_5944:
    rrca                                          ; $5944: $0f
    dec c                                         ; $5945: $0d
    dec c                                         ; $5946: $0d
    dec l                                         ; $5947: $2d
    dec c                                         ; $5948: $0d
    db $fc                                        ; $5949: $fc
    ld [c], a                                     ; $594a: $e2
    db $fd                                        ; $594b: $fd
    db $e3                                        ; $594c: $e3
    db $f4                                        ; $594d: $f4
    pop hl                                        ; $594e: $e1
    ld sp, hl                                     ; $594f: $f9
    db $e3                                        ; $5950: $e3
    ld h, b                                       ; $5951: $60
    or $e4                                        ; $5952: $f6 $e4
    db $ec                                        ; $5954: $ec
    rst $20                                       ; $5955: $e7
    ret c                                         ; $5956: $d8

    db $e3                                        ; $5957: $e3
    ld [c], a                                     ; $5958: $e2
    rst $28                                       ; $5959: $ef
    db $ec                                        ; $595a: $ec
    pop hl                                        ; $595b: $e1
    ld c, l                                       ; $595c: $4d
    ld c, l                                       ; $595d: $4d

jr_037_595e:
    rst $00                                       ; $595e: $c7
    ld [c], a                                     ; $595f: $e2
    rst $38                                       ; $5960: $ff
    dec l                                         ; $5961: $2d
    ld c, l                                       ; $5962: $4d
    ld l, l                                       ; $5963: $6d
    ld d, [hl]                                    ; $5964: $56
    ld bc, $0000                                  ; $5965: $01 $00 $00
    ld bc, $fcfe                                  ; $5968: $01 $fe $fc
    pop hl                                        ; $596b: $e1
    ld d, [hl]                                    ; $596c: $56
    ld e, b                                       ; $596d: $58
    ld e, c                                       ; $596e: $59
    ld [bc], a                                    ; $596f: $02
    dec bc                                        ; $5970: $0b
    inc c                                         ; $5971: $0c
    dec c                                         ; $5972: $0d
    rst $38                                       ; $5973: $ff
    ld c, $02                                     ; $5974: $0e $02
    ld e, c                                       ; $5976: $59
    ld e, b                                       ; $5977: $58
    ld e, d                                       ; $5978: $5a
    ld e, e                                       ; $5979: $5b
    ld d, $1b                                     ; $597a: $16 $1b
    rst $38                                       ; $597c: $ff
    inc e                                         ; $597d: $1c
    dec e                                         ; $597e: $1d
    ld e, $16                                     ; $597f: $1e $16
    ld e, e                                       ; $5981: $5b
    ld e, d                                       ; $5982: $5a
    ld e, h                                       ; $5983: $5c
    ld e, l                                       ; $5984: $5d
    rst $38                                       ; $5985: $ff
    ld c, b                                       ; $5986: $48
    dec hl                                        ; $5987: $2b
    inc l                                         ; $5988: $2c
    dec l                                         ; $5989: $2d
    ld l, $48                                     ; $598a: $2e $48
    ld e, l                                       ; $598c: $5d
    ld e, h                                       ; $598d: $5c
    sbc $e2                                       ; $598e: $de $e2
    ldh [$3a], a                                  ; $5990: $e0 $3a
    dec sp                                        ; $5992: $3b
    inc a                                         ; $5993: $3c
    scf                                           ; $5994: $37
    ld [c], a                                     ; $5995: $e2
    db $e3                                        ; $5996: $e3
    ld d, $46                                     ; $5997: $16 $46
    ld a, e                                       ; $5999: $7b
    ld b, a                                       ; $599a: $47
    ld d, $e2                                     ; $599b: $16 $e2
    db $e3                                        ; $599d: $e3
    ld c, b                                       ; $599e: $48
    ld c, [hl]                                    ; $599f: $4e
    ld c, a                                       ; $59a0: $4f
    ld c, b                                       ; $59a1: $48
    ld [c], a                                     ; $59a2: $e2
    ldh [rIE], a                                  ; $59a3: $e0 $ff
    ld d, [hl]                                    ; $59a5: $56
    ld bc, $505e                                  ; $59a6: $01 $5e $50
    ld d, l                                       ; $59a9: $55
    ld d, l                                       ; $59aa: $55
    ld d, b                                       ; $59ab: $50
    ld e, [hl]                                    ; $59ac: $5e
    inc bc                                        ; $59ad: $03
    ld bc, $0056                                  ; $59ae: $01 $56 $00
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    adc a                                         ; $59b3: $8f
    dec c                                         ; $59b4: $0d
    dec c                                         ; $59b5: $0d
    dec l                                         ; $59b6: $2d
    dec c                                         ; $59b7: $0d
    db $fc                                        ; $59b8: $fc
    ld [c], a                                     ; $59b9: $e2
    db $fd                                        ; $59ba: $fd
    db $e3                                        ; $59bb: $e3
    ld a, [c]                                     ; $59bc: $f2
    ldh [$2d], a                                  ; $59bd: $e0 $2d
    nop                                           ; $59bf: $00
    rst $28                                       ; $59c0: $ef
    pop hl                                        ; $59c1: $e1
    db $fd                                        ; $59c2: $fd
    ld [c], a                                     ; $59c3: $e2
    and $e4                                       ; $59c4: $e6 $e4
    ldh [$e1], a                                  ; $59c6: $e0 $e1
    ld [c], a                                     ; $59c8: $e2
    db $e4                                        ; $59c9: $e4
    or $e3                                        ; $59ca: $f6 $e3
    ld [c], a                                     ; $59cc: $e2
    db $eb                                        ; $59cd: $eb
    adc $e1                                       ; $59ce: $ce $e1
    ei                                            ; $59d0: $fb
    ld c, l                                       ; $59d1: $4d
    ld c, l                                       ; $59d2: $4d
    db $db                                        ; $59d3: $db
    ld [c], a                                     ; $59d4: $e2
    dec l                                         ; $59d5: $2d
    ld c, l                                       ; $59d6: $4d
    ld l, l                                       ; $59d7: $6d
    ld c, b                                       ; $59d8: $48
    ld bc, $00f7                                  ; $59d9: $01 $f7 $00
    nop                                           ; $59dc: $00
    ld bc, $e1fc                                  ; $59dd: $01 $fc $e1
    ld c, b                                       ; $59e0: $48
    ld c, d                                       ; $59e1: $4a
    ld c, e                                       ; $59e2: $4b
    ld [bc], a                                    ; $59e3: $02
    rst $38                                       ; $59e4: $ff
    ld [bc], a                                    ; $59e5: $02
    inc bc                                        ; $59e6: $03
    inc b                                         ; $59e7: $04
    ld [bc], a                                    ; $59e8: $02
    ld [bc], a                                    ; $59e9: $02
    ld c, e                                       ; $59ea: $4b
    ld c, d                                       ; $59eb: $4a
    ld c, h                                       ; $59ec: $4c
    rst $38                                       ; $59ed: $ff
    ld c, l                                       ; $59ee: $4d
    dec c                                         ; $59ef: $0d
    add hl, bc                                    ; $59f0: $09
    ld a, [bc]                                    ; $59f1: $0a
    dec bc                                        ; $59f2: $0b
    inc c                                         ; $59f3: $0c
    dec c                                         ; $59f4: $0d
    ld c, l                                       ; $59f5: $4d
    rst $38                                       ; $59f6: $ff
    ld c, [hl]                                    ; $59f7: $4e
    ld c, a                                       ; $59f8: $4f
    ld d, b                                       ; $59f9: $50
    ld b, c                                       ; $59fa: $41
    rla                                           ; $59fb: $17
    jr jr_037_5a17                                ; $59fc: $18 $19

    ld a, [de]                                    ; $59fe: $1a
    rst $30                                       ; $59ff: $f7
    ld b, c                                       ; $5a00: $41
    ld d, b                                       ; $5a01: $50
    ld c, a                                       ; $5a02: $4f
    ld [c], a                                     ; $5a03: $e2
    ldh [$27], a                                  ; $5a04: $e0 $27
    jr z, jr_037_5a31                             ; $5a06: $28 $29

    ld a, [hl+]                                   ; $5a08: $2a
    sbc $e2                                       ; $5a09: $de $e2
    db $e3                                        ; $5a0b: $e3
    dec c                                         ; $5a0c: $0d
    scf                                           ; $5a0d: $37
    jr c, jr_037_5a1d                             ; $5a0e: $38 $0d

    ld [c], a                                     ; $5a10: $e2
    db $e3                                        ; $5a11: $e3
    ld b, c                                       ; $5a12: $41
    ld b, d                                       ; $5a13: $42
    ei                                            ; $5a14: $fb
    ld b, e                                       ; $5a15: $43
    ld b, c                                       ; $5a16: $41

jr_037_5a17:
    ld [c], a                                     ; $5a17: $e2
    ldh [rOBP0], a                                ; $5a18: $e0 $48
    ld bc, $4651                                  ; $5a1a: $01 $51 $46

jr_037_5a1d:
    ld b, a                                       ; $5a1d: $47
    rra                                           ; $5a1e: $1f
    ld b, a                                       ; $5a1f: $47
    ld b, [hl]                                    ; $5a20: $46
    ld d, c                                       ; $5a21: $51
    ld bc, $0048                                  ; $5a22: $01 $48 $00
    nop                                           ; $5a25: $00
    nop                                           ; $5a26: $00
    adc a                                         ; $5a27: $8f
    dec c                                         ; $5a28: $0d
    dec c                                         ; $5a29: $0d
    dec l                                         ; $5a2a: $2d
    dec c                                         ; $5a2b: $0d
    db $fc                                        ; $5a2c: $fc
    ld [c], a                                     ; $5a2d: $e2
    db $fd                                        ; $5a2e: $fd
    db $e3                                        ; $5a2f: $e3
    ld a, [c]                                     ; $5a30: $f2

jr_037_5a31:
    ldh [$2d], a                                  ; $5a31: $e0 $2d
    nop                                           ; $5a33: $00
    rst $28                                       ; $5a34: $ef
    pop hl                                        ; $5a35: $e1
    db $fd                                        ; $5a36: $fd
    ld [c], a                                     ; $5a37: $e2
    and $e4                                       ; $5a38: $e6 $e4
    ldh [$e1], a                                  ; $5a3a: $e0 $e1
    ld [c], a                                     ; $5a3c: $e2
    db $e4                                        ; $5a3d: $e4
    or $e3                                        ; $5a3e: $f6 $e3
    ld [c], a                                     ; $5a40: $e2
    db $eb                                        ; $5a41: $eb
    adc $e1                                       ; $5a42: $ce $e1
    ei                                            ; $5a44: $fb
    ld c, l                                       ; $5a45: $4d
    ld c, l                                       ; $5a46: $4d
    db $db                                        ; $5a47: $db
    ld [c], a                                     ; $5a48: $e2
    dec l                                         ; $5a49: $2d
    ld c, l                                       ; $5a4a: $4d
    ld l, l                                       ; $5a4b: $6d
    ld c, b                                       ; $5a4c: $48
    ld bc, $00f7                                  ; $5a4d: $01 $f7 $00
    nop                                           ; $5a50: $00
    ld bc, $e1fc                                  ; $5a51: $01 $fc $e1
    ld c, b                                       ; $5a54: $48
    ld c, d                                       ; $5a55: $4a
    ld c, e                                       ; $5a56: $4b
    ld [bc], a                                    ; $5a57: $02
    rst $38                                       ; $5a58: $ff
    ld [bc], a                                    ; $5a59: $02
    dec b                                         ; $5a5a: $05
    ld b, $02                                     ; $5a5b: $06 $02
    ld [bc], a                                    ; $5a5d: $02
    ld c, e                                       ; $5a5e: $4b
    ld c, d                                       ; $5a5f: $4a
    ld c, h                                       ; $5a60: $4c
    cp $e2                                        ; $5a61: $fe $e2
    ldh [$0e], a                                  ; $5a63: $e0 $0e
    rrca                                          ; $5a65: $0f
    db $10                                        ; $5a66: $10
    dec c                                         ; $5a67: $0d
    ld c, l                                       ; $5a68: $4d
    ld c, [hl]                                    ; $5a69: $4e
    ld c, a                                       ; $5a6a: $4f
    rst $38                                       ; $5a6b: $ff
    ld d, b                                       ; $5a6c: $50
    ld b, c                                       ; $5a6d: $41
    dec de                                        ; $5a6e: $1b
    inc e                                         ; $5a6f: $1c
    dec e                                         ; $5a70: $1d
    ld e, $41                                     ; $5a71: $1e $41
    ld d, b                                       ; $5a73: $50
    cp l                                          ; $5a74: $bd
    ld c, a                                       ; $5a75: $4f
    ld [c], a                                     ; $5a76: $e2
    ldh [$2b], a                                  ; $5a77: $e0 $2b
    inc l                                         ; $5a79: $2c
    dec l                                         ; $5a7a: $2d
    ld l, $e2                                     ; $5a7b: $2e $e2
    db $e3                                        ; $5a7d: $e3
    add hl, sp                                    ; $5a7e: $39
    rst $30                                       ; $5a7f: $f7
    ld a, [hl-]                                   ; $5a80: $3a
    dec sp                                        ; $5a81: $3b
    inc a                                         ; $5a82: $3c
    ld [c], a                                     ; $5a83: $e2
    db $e3                                        ; $5a84: $e3
    ld b, c                                       ; $5a85: $41
    ld b, h                                       ; $5a86: $44
    ld b, l                                       ; $5a87: $45
    ld b, c                                       ; $5a88: $41
    cp $e2                                        ; $5a89: $fe $e2
    ldh [rOBP0], a                                ; $5a8b: $e0 $48
    ld bc, $4651                                  ; $5a8d: $01 $51 $46
    ld b, a                                       ; $5a90: $47
    ld b, a                                       ; $5a91: $47
    ld b, [hl]                                    ; $5a92: $46
    rlca                                          ; $5a93: $07
    ld d, c                                       ; $5a94: $51
    ld bc, $0048                                  ; $5a95: $01 $48 $00
    nop                                           ; $5a98: $00
    nop                                           ; $5a99: $00
    adc a                                         ; $5a9a: $8f
    dec c                                         ; $5a9b: $0d
    dec c                                         ; $5a9c: $0d
    dec l                                         ; $5a9d: $2d
    dec c                                         ; $5a9e: $0d
    db $fc                                        ; $5a9f: $fc
    ld [c], a                                     ; $5aa0: $e2
    db $fd                                        ; $5aa1: $fd
    db $e3                                        ; $5aa2: $e3
    ld a, [c]                                     ; $5aa3: $f2
    ldh [$2d], a                                  ; $5aa4: $e0 $2d
    ret nz                                        ; $5aa6: $c0

    rst $28                                       ; $5aa7: $ef
    pop hl                                        ; $5aa8: $e1
    db $fd                                        ; $5aa9: $fd
    ld [c], a                                     ; $5aaa: $e2
    and $e4                                       ; $5aab: $e6 $e4
    ldh [$e1], a                                  ; $5aad: $e0 $e1
    ld [c], a                                     ; $5aaf: $e2
    db $e4                                        ; $5ab0: $e4
    or $e3                                        ; $5ab1: $f6 $e3
    dec c                                         ; $5ab3: $0d
    ld c, l                                       ; $5ab4: $4d
    daa                                           ; $5ab5: $27
    dec c                                         ; $5ab6: $0d
    dec c                                         ; $5ab7: $0d
    ld l, l                                       ; $5ab8: $6d
    ld [c], a                                     ; $5ab9: $e2
    and $ce                                       ; $5aba: $e6 $ce
    pop hl                                        ; $5abc: $e1
    ld c, l                                       ; $5abd: $4d
    xor $e0                                       ; $5abe: $ee $e0
    rst $00                                       ; $5ac0: $c7
    ldh [rIE], a                                  ; $5ac1: $e0 $ff
    dec l                                         ; $5ac3: $2d
    ld c, l                                       ; $5ac4: $4d
    ld l, l                                       ; $5ac5: $6d
    ld c, b                                       ; $5ac6: $48
    ld bc, $0000                                  ; $5ac7: $01 $00 $00
    ld bc, $fcfe                                  ; $5aca: $01 $fe $fc
    pop hl                                        ; $5acd: $e1
    ld c, b                                       ; $5ace: $48
    ld c, d                                       ; $5acf: $4a
    ld c, e                                       ; $5ad0: $4b
    ld [bc], a                                    ; $5ad1: $02
    ld [bc], a                                    ; $5ad2: $02
    rlca                                          ; $5ad3: $07
    ld [$02ff], sp                                ; $5ad4: $08 $ff $02
    ld [bc], a                                    ; $5ad7: $02
    ld c, e                                       ; $5ad8: $4b
    ld c, d                                       ; $5ad9: $4a
    ld c, h                                       ; $5ada: $4c
    ld c, l                                       ; $5adb: $4d
    dec c                                         ; $5adc: $0d
    ld de, $12ff                                  ; $5add: $11 $ff $12
    inc de                                        ; $5ae0: $13
    inc d                                         ; $5ae1: $14
    dec c                                         ; $5ae2: $0d
    ld c, l                                       ; $5ae3: $4d
    ld c, [hl]                                    ; $5ae4: $4e
    ld c, a                                       ; $5ae5: $4f
    ld d, b                                       ; $5ae6: $50
    rst $38                                       ; $5ae7: $ff
    ld b, c                                       ; $5ae8: $41
    rra                                           ; $5ae9: $1f
    jr nz, jr_037_5b0d                            ; $5aea: $20 $21

    ld [hl+], a                                   ; $5aec: $22
    ld b, c                                       ; $5aed: $41
    ld d, b                                       ; $5aee: $50
    ld c, a                                       ; $5aef: $4f
    sbc $e2                                       ; $5af0: $de $e2
    ldh [$2f], a                                  ; $5af2: $e0 $2f
    jr nc, jr_037_5b27                            ; $5af4: $30 $31

    ld [hl-], a                                   ; $5af6: $32
    ld [c], a                                     ; $5af7: $e2
    db $e4                                        ; $5af8: $e4
    dec a                                         ; $5af9: $3d
    ld a, $bd                                     ; $5afa: $3e $bd
    ld de, $e3e2                                  ; $5afc: $11 $e2 $e3
    ld b, c                                       ; $5aff: $41
    ld b, d                                       ; $5b00: $42
    ld b, e                                       ; $5b01: $43
    ld b, c                                       ; $5b02: $41
    ld [c], a                                     ; $5b03: $e2
    ldh [rOBP0], a                                ; $5b04: $e0 $48
    rst $38                                       ; $5b06: $ff
    ld bc, $4651                                  ; $5b07: $01 $51 $46
    ld b, a                                       ; $5b0a: $47
    ld b, a                                       ; $5b0b: $47
    ld b, [hl]                                    ; $5b0c: $46

jr_037_5b0d:
    ld d, c                                       ; $5b0d: $51
    ld bc, $4801                                  ; $5b0e: $01 $01 $48
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    adc a                                         ; $5b14: $8f
    dec c                                         ; $5b15: $0d
    dec c                                         ; $5b16: $0d
    dec l                                         ; $5b17: $2d
    dec c                                         ; $5b18: $0d
    db $fc                                        ; $5b19: $fc
    ld [c], a                                     ; $5b1a: $e2
    db $fd                                        ; $5b1b: $fd
    db $e3                                        ; $5b1c: $e3
    ld a, [c]                                     ; $5b1d: $f2
    ldh [$2d], a                                  ; $5b1e: $e0 $2d
    add b                                         ; $5b20: $80
    rst $28                                       ; $5b21: $ef
    pop hl                                        ; $5b22: $e1
    db $fd                                        ; $5b23: $fd
    ld [c], a                                     ; $5b24: $e2
    and $e4                                       ; $5b25: $e6 $e4

jr_037_5b27:
    ldh [$e1], a                                  ; $5b27: $e0 $e1
    ld [c], a                                     ; $5b29: $e2
    db $e4                                        ; $5b2a: $e4
    or $e3                                        ; $5b2b: $f6 $e3
    ldh [$e1], a                                  ; $5b2d: $e0 $e1
    ld l, l                                       ; $5b2f: $6d
    db $ec                                        ; $5b30: $ec
    ld [c], a                                     ; $5b31: $e2
    and $ce                                       ; $5b32: $e6 $ce
    pop hl                                        ; $5b34: $e1
    ld c, l                                       ; $5b35: $4d
    ld c, l                                       ; $5b36: $4d
    db $db                                        ; $5b37: $db
    ld [c], a                                     ; $5b38: $e2
    dec l                                         ; $5b39: $2d
    ld c, l                                       ; $5b3a: $4d
    ld l, l                                       ; $5b3b: $6d
    rst $18                                       ; $5b3c: $df
    ld c, b                                       ; $5b3d: $48
    ld bc, $0000                                  ; $5b3e: $01 $00 $00
    ld bc, $e1fc                                  ; $5b41: $01 $fc $e1
    ld c, b                                       ; $5b44: $48
    ld c, d                                       ; $5b45: $4a
    rst $38                                       ; $5b46: $ff
    ld c, e                                       ; $5b47: $4b
    ld [bc], a                                    ; $5b48: $02
    ld [bc], a                                    ; $5b49: $02
    inc bc                                        ; $5b4a: $03
    inc b                                         ; $5b4b: $04
    ld [bc], a                                    ; $5b4c: $02
    ld [bc], a                                    ; $5b4d: $02
    ld c, e                                       ; $5b4e: $4b
    rst $38                                       ; $5b4f: $ff
    ld c, d                                       ; $5b50: $4a
    ld c, h                                       ; $5b51: $4c
    ld c, l                                       ; $5b52: $4d
    dec c                                         ; $5b53: $0d
    add hl, bc                                    ; $5b54: $09
    dec d                                         ; $5b55: $15
    ld d, $0c                                     ; $5b56: $16 $0c
    rst $38                                       ; $5b58: $ff
    dec c                                         ; $5b59: $0d
    ld c, l                                       ; $5b5a: $4d
    ld c, [hl]                                    ; $5b5b: $4e
    ld c, a                                       ; $5b5c: $4f
    ld d, b                                       ; $5b5d: $50
    ld b, c                                       ; $5b5e: $41
    inc hl                                        ; $5b5f: $23
    inc h                                         ; $5b60: $24
    rst $18                                       ; $5b61: $df
    dec h                                         ; $5b62: $25
    ld h, $41                                     ; $5b63: $26 $41
    ld d, b                                       ; $5b65: $50
    ld c, a                                       ; $5b66: $4f
    ld [c], a                                     ; $5b67: $e2
    ldh [$33], a                                  ; $5b68: $e0 $33
    inc [hl]                                      ; $5b6a: $34
    ld a, e                                       ; $5b6b: $7b
    dec [hl]                                      ; $5b6c: $35
    ld [hl], $e2                                  ; $5b6d: $36 $e2
    db $e3                                        ; $5b6f: $e3
    dec c                                         ; $5b70: $0d
    ccf                                           ; $5b71: $3f
    ld b, b                                       ; $5b72: $40
    ld de, $e3e2                                  ; $5b73: $11 $e2 $e3
    rst $28                                       ; $5b76: $ef
    ld b, c                                       ; $5b77: $41
    ld b, d                                       ; $5b78: $42
    ld b, e                                       ; $5b79: $43
    ld b, c                                       ; $5b7a: $41
    ld [c], a                                     ; $5b7b: $e2
    ldh [rOBP0], a                                ; $5b7c: $e0 $48
    ld bc, $7f51                                  ; $5b7e: $01 $51 $7f
    ld b, [hl]                                    ; $5b81: $46
    ld b, a                                       ; $5b82: $47
    ld b, a                                       ; $5b83: $47
    ld b, [hl]                                    ; $5b84: $46
    ld d, c                                       ; $5b85: $51
    ld bc, $0048                                  ; $5b86: $01 $48 $00
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    ld h, l                                       ; $5b8b: $65
    dec c                                         ; $5b8c: $0d
    rst $38                                       ; $5b8d: $ff
    push hl                                       ; $5b8e: $e5
    dec l                                         ; $5b8f: $2d
    or $e6                                        ; $5b90: $f6 $e6
    rst $30                                       ; $5b92: $f7
    add sp, $4d                                   ; $5b93: $e8 $4d
    ld c, l                                       ; $5b95: $4d
    ld hl, sp-$15                                 ; $5b96: $f8 $eb
    db $fc                                        ; $5b98: $fc
    ld [c], a                                     ; $5b99: $e2
    push af                                       ; $5b9a: $f5
    ret c                                         ; $5b9b: $d8

    and $6d                                       ; $5b9c: $e6 $6d
    inc bc                                        ; $5b9e: $03
    ld bc, $0002                                  ; $5b9f: $01 $02 $00
    ld bc, $fcfe                                  ; $5ba2: $01 $fe $fc
    pop hl                                        ; $5ba5: $e1
    inc bc                                        ; $5ba6: $03

jr_037_5ba7:
    inc c                                         ; $5ba7: $0c
    ld a, [bc]                                    ; $5ba8: $0a
    dec bc                                        ; $5ba9: $0b
    dec b                                         ; $5baa: $05
    ld b, $07                                     ; $5bab: $06 $07
    rst $38                                       ; $5bad: $ff
    ld [$0905], sp                                ; $5bae: $08 $05 $09
    jr c, @+$17                                   ; $5bb1: $38 $15

    ld d, $17                                     ; $5bb3: $16 $17
    dec c                                         ; $5bb5: $0d
    rst $38                                       ; $5bb6: $ff
    ld c, $0f                                     ; $5bb7: $0e $0f
    db $10                                        ; $5bb9: $10
    rla                                           ; $5bba: $17
    add hl, sp                                    ; $5bbb: $39
    ccf                                           ; $5bbc: $3f
    inc c                                         ; $5bbd: $0c

jr_037_5bbe:
    ld a, [bc]                                    ; $5bbe: $0a
    rst $38                                       ; $5bbf: $ff
    dec de                                        ; $5bc0: $1b
    jr jr_037_5bdc                                ; $5bc1: $18 $19

    ld a, [de]                                    ; $5bc3: $1a
    dec de                                        ; $5bc4: $1b
    ld l, $09                                     ; $5bc5: $2e $09
    jr c, jr_037_5ba7                             ; $5bc7: $38 $de

    ld [c], a                                     ; $5bc9: $e2
    ldh [$1f], a                                  ; $5bca: $e0 $1f
    jr nz, jr_037_5bef                            ; $5bcc: $20 $21

    dec bc                                        ; $5bce: $0b
    ld [c], a                                     ; $5bcf: $e2
    db $e3                                        ; $5bd0: $e3
    ld h, $27                                     ; $5bd1: $26 $27
    cp e                                          ; $5bd3: $bb
    jr z, jr_037_5bff                             ; $5bd4: $28 $29

    ld [c], a                                     ; $5bd6: $e2
    db $e3                                        ; $5bd7: $e3
    ld l, $2f                                     ; $5bd8: $2e $2f
    jr nc, jr_037_5bbe                            ; $5bda: $30 $e2

jr_037_5bdc:
    pop hl                                        ; $5bdc: $e1
    inc bc                                        ; $5bdd: $03
    rst $38                                       ; $5bde: $ff
    ld bc, $3437                                  ; $5bdf: $01 $37 $34
    dec [hl]                                      ; $5be2: $35
    ld [hl], $37                                  ; $5be3: $36 $37
    inc [hl]                                      ; $5be5: $34
    ld bc, $0301                                  ; $5be6: $01 $01 $03
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    nop                                           ; $5beb: $00
    ld h, l                                       ; $5bec: $65
    dec c                                         ; $5bed: $0d
    rst $38                                       ; $5bee: $ff

jr_037_5bef:
    push hl                                       ; $5bef: $e5
    dec l                                         ; $5bf0: $2d
    or $e6                                        ; $5bf1: $f6 $e6
    rst $30                                       ; $5bf3: $f7
    add sp, $4d                                   ; $5bf4: $e8 $4d
    ld c, l                                       ; $5bf6: $4d
    ld hl, sp-$15                                 ; $5bf7: $f8 $eb
    db $fc                                        ; $5bf9: $fc
    ld [c], a                                     ; $5bfa: $e2
    push af                                       ; $5bfb: $f5
    ret c                                         ; $5bfc: $d8

    and $6d                                       ; $5bfd: $e6 $6d

jr_037_5bff:
    inc bc                                        ; $5bff: $03
    ld bc, $0002                                  ; $5c00: $01 $02 $00
    ld bc, $fc7e                                  ; $5c03: $01 $7e $fc
    pop hl                                        ; $5c06: $e1
    inc bc                                        ; $5c07: $03
    inc c                                         ; $5c08: $0c
    ld a, [bc]                                    ; $5c09: $0a

jr_037_5c0a:
    dec bc                                        ; $5c0a: $0b
    dec b                                         ; $5c0b: $05
    add hl, bc                                    ; $5c0c: $09
    db $fc                                        ; $5c0d: $fc
    pop hl                                        ; $5c0e: $e1
    rst $38                                       ; $5c0f: $ff
    jr c, @+$17                                   ; $5c10: $38 $15

    ld d, $17                                     ; $5c12: $16 $17
    ld de, $1312                                  ; $5c14: $11 $12 $13
    inc d                                         ; $5c17: $14
    rst $38                                       ; $5c18: $ff
    rla                                           ; $5c19: $17
    add hl, sp                                    ; $5c1a: $39
    ccf                                           ; $5c1b: $3f
    inc c                                         ; $5c1c: $0c
    ld a, [bc]                                    ; $5c1d: $0a
    dec de                                        ; $5c1e: $1b
    inc e                                         ; $5c1f: $1c
    dec e                                         ; $5c20: $1d
    rst $18                                       ; $5c21: $df
    ld e, $1b                                     ; $5c22: $1e $1b
    ld l, $09                                     ; $5c24: $2e $09
    jr c, jr_037_5c0a                             ; $5c26: $38 $e2

    ldh [rNR43], a                                ; $5c28: $e0 $22
    inc hl                                        ; $5c2a: $23
    ld a, e                                       ; $5c2b: $7b
    inc h                                         ; $5c2c: $24
    dec h                                         ; $5c2d: $25
    ld [c], a                                     ; $5c2e: $e2
    db $e3                                        ; $5c2f: $e3
    ld a, [hl+]                                   ; $5c30: $2a
    dec hl                                        ; $5c31: $2b
    inc l                                         ; $5c32: $2c
    dec l                                         ; $5c33: $2d
    ld [c], a                                     ; $5c34: $e2
    db $e3                                        ; $5c35: $e3
    rst $30                                       ; $5c36: $f7
    ld sp, $3332                                  ; $5c37: $31 $32 $33
    ld [c], a                                     ; $5c3a: $e2
    pop hl                                        ; $5c3b: $e1
    inc bc                                        ; $5c3c: $03
    ld bc, $3437                                  ; $5c3d: $01 $37 $34
    ccf                                           ; $5c40: $3f
    dec [hl]                                      ; $5c41: $35
    ld [hl], $37                                  ; $5c42: $36 $37
    inc [hl]                                      ; $5c44: $34
    ld bc, $0003                                  ; $5c45: $01 $03 $00
    nop                                           ; $5c48: $00
    nop                                           ; $5c49: $00
    ld h, l                                       ; $5c4a: $65
    dec c                                         ; $5c4b: $0d
    rst $38                                       ; $5c4c: $ff
    push hl                                       ; $5c4d: $e5
    dec l                                         ; $5c4e: $2d
    or $e6                                        ; $5c4f: $f6 $e6
    rst $30                                       ; $5c51: $f7
    add sp, $4d                                   ; $5c52: $e8 $4d
    ld c, l                                       ; $5c54: $4d
    ld hl, sp-$15                                 ; $5c55: $f8 $eb
    db $fc                                        ; $5c57: $fc
    ld [c], a                                     ; $5c58: $e2
    push af                                       ; $5c59: $f5
    ret c                                         ; $5c5a: $d8

    and $6d                                       ; $5c5b: $e6 $6d
    inc bc                                        ; $5c5d: $03
    ld bc, $0002                                  ; $5c5e: $01 $02 $00
    ld bc, $fc7e                                  ; $5c61: $01 $7e $fc
    pop hl                                        ; $5c64: $e1
    inc bc                                        ; $5c65: $03
    inc c                                         ; $5c66: $0c
    ld a, [bc]                                    ; $5c67: $0a

jr_037_5c68:
    dec bc                                        ; $5c68: $0b
    dec b                                         ; $5c69: $05
    add hl, bc                                    ; $5c6a: $09
    db $fc                                        ; $5c6b: $fc
    pop hl                                        ; $5c6c: $e1
    rst $38                                       ; $5c6d: $ff
    jr c, @+$17                                   ; $5c6e: $38 $15

    ld d, $17                                     ; $5c70: $16 $17
    rla                                           ; $5c72: $17
    add hl, sp                                    ; $5c73: $39
    ld a, [hl-]                                   ; $5c74: $3a
    dec sp                                        ; $5c75: $3b
    rst $38                                       ; $5c76: $ff
    rla                                           ; $5c77: $17
    add hl, sp                                    ; $5c78: $39
    ccf                                           ; $5c79: $3f
    inc c                                         ; $5c7a: $0c
    ld a, [bc]                                    ; $5c7b: $0a
    dec de                                        ; $5c7c: $1b
    ld b, b                                       ; $5c7d: $40
    ld b, c                                       ; $5c7e: $41
    rst $18                                       ; $5c7f: $df
    ld b, d                                       ; $5c80: $42
    ld b, e                                       ; $5c81: $43
    ld l, $09                                     ; $5c82: $2e $09
    jr c, jr_037_5c68                             ; $5c84: $38 $e2

    pop hl                                        ; $5c86: $e1
    ld c, b                                       ; $5c87: $48
    ld c, c                                       ; $5c88: $49
    cp l                                          ; $5c89: $bd
    ld c, d                                       ; $5c8a: $4a
    ld [c], a                                     ; $5c8b: $e2
    db $e3                                        ; $5c8c: $e3
    ld c, [hl]                                    ; $5c8d: $4e
    ld c, a                                       ; $5c8e: $4f
    ld d, b                                       ; $5c8f: $50
    ld d, c                                       ; $5c90: $51
    ld [c], a                                     ; $5c91: $e2
    db $e3                                        ; $5c92: $e3
    ld d, l                                       ; $5c93: $55
    rst $30                                       ; $5c94: $f7
    ld d, [hl]                                    ; $5c95: $56
    ld d, a                                       ; $5c96: $57
    dec de                                        ; $5c97: $1b
    ld [c], a                                     ; $5c98: $e2
    ldh [$03], a                                  ; $5c99: $e0 $03
    ld bc, $3437                                  ; $5c9b: $01 $37 $34
    ccf                                           ; $5c9e: $3f
    ld e, e                                       ; $5c9f: $5b
    ld [hl], $37                                  ; $5ca0: $36 $37
    inc [hl]                                      ; $5ca2: $34
    ld bc, $0003                                  ; $5ca3: $01 $03 $00
    nop                                           ; $5ca6: $00
    nop                                           ; $5ca7: $00
    ld h, l                                       ; $5ca8: $65
    dec c                                         ; $5ca9: $0d
    rst $38                                       ; $5caa: $ff
    push hl                                       ; $5cab: $e5
    dec l                                         ; $5cac: $2d
    or $e6                                        ; $5cad: $f6 $e6
    rst $30                                       ; $5caf: $f7
    add sp, $4d                                   ; $5cb0: $e8 $4d
    ld c, l                                       ; $5cb2: $4d
    ld hl, sp-$15                                 ; $5cb3: $f8 $eb
    db $fc                                        ; $5cb5: $fc
    ld [c], a                                     ; $5cb6: $e2
    push af                                       ; $5cb7: $f5
    ret c                                         ; $5cb8: $d8

    and $6d                                       ; $5cb9: $e6 $6d
    inc bc                                        ; $5cbb: $03
    ld bc, $0002                                  ; $5cbc: $01 $02 $00
    ld bc, $fc7e                                  ; $5cbf: $01 $7e $fc
    pop hl                                        ; $5cc2: $e1
    inc bc                                        ; $5cc3: $03
    inc c                                         ; $5cc4: $0c
    ld a, [bc]                                    ; $5cc5: $0a

jr_037_5cc6:
    dec bc                                        ; $5cc6: $0b
    dec b                                         ; $5cc7: $05
    add hl, bc                                    ; $5cc8: $09
    db $fc                                        ; $5cc9: $fc
    pop hl                                        ; $5cca: $e1
    rst $38                                       ; $5ccb: $ff
    jr c, @+$17                                   ; $5ccc: $38 $15

    ld d, $17                                     ; $5cce: $16 $17
    rla                                           ; $5cd0: $17
    inc a                                         ; $5cd1: $3c
    dec a                                         ; $5cd2: $3d
    ld a, $ff                                     ; $5cd3: $3e $ff
    rla                                           ; $5cd5: $17
    add hl, sp                                    ; $5cd6: $39
    ccf                                           ; $5cd7: $3f
    inc c                                         ; $5cd8: $0c
    ld a, [bc]                                    ; $5cd9: $0a
    dec de                                        ; $5cda: $1b
    ld b, h                                       ; $5cdb: $44
    ld b, l                                       ; $5cdc: $45
    rst $18                                       ; $5cdd: $df
    ld b, [hl]                                    ; $5cde: $46
    ld b, a                                       ; $5cdf: $47
    ld l, $09                                     ; $5ce0: $2e $09
    jr c, jr_037_5cc6                             ; $5ce2: $38 $e2

    pop hl                                        ; $5ce4: $e1
    ld c, e                                       ; $5ce5: $4b
    ld c, h                                       ; $5ce6: $4c
    cp l                                          ; $5ce7: $bd
    ld c, l                                       ; $5ce8: $4d
    ld [c], a                                     ; $5ce9: $e2
    db $e3                                        ; $5cea: $e3
    ld a, [hl+]                                   ; $5ceb: $2a
    ld d, d                                       ; $5cec: $52
    ld d, e                                       ; $5ced: $53
    ld d, h                                       ; $5cee: $54
    ld [c], a                                     ; $5cef: $e2
    db $e3                                        ; $5cf0: $e3
    ld e, b                                       ; $5cf1: $58
    rst $30                                       ; $5cf2: $f7
    ld e, c                                       ; $5cf3: $59
    ld e, d                                       ; $5cf4: $5a
    dec de                                        ; $5cf5: $1b
    ld [c], a                                     ; $5cf6: $e2
    ldh [$03], a                                  ; $5cf7: $e0 $03
    ld bc, $3437                                  ; $5cf9: $01 $37 $34
    ccf                                           ; $5cfc: $3f
    ld e, e                                       ; $5cfd: $5b
    ld [hl], $37                                  ; $5cfe: $36 $37
    inc [hl]                                      ; $5d00: $34
    ld bc, $0003                                  ; $5d01: $01 $03 $00
    nop                                           ; $5d04: $00
    nop                                           ; $5d05: $00
    db $10                                        ; $5d06: $10
    ld e, l                                       ; $5d07: $5d
    ld b, b                                       ; $5d08: $40
    ld h, d                                       ; $5d09: $62
    jr nz, jr_037_5d72                            ; $5d0a: $20 $66

    ld h, b                                       ; $5d0c: $60
    ld l, e                                       ; $5d0d: $6b
    ld b, b                                       ; $5d0e: $40
    ld l, [hl]                                    ; $5d0f: $6e
    ld l, a                                       ; $5d10: $6f
    rst $38                                       ; $5d11: $ff
    rst $38                                       ; $5d12: $ff
    rst $38                                       ; $5d13: $ff
    nop                                           ; $5d14: $00
    cp $ea                                        ; $5d15: $fe $ea
    rst $38                                       ; $5d17: $ff
    nop                                           ; $5d18: $00
    rst $38                                       ; $5d19: $ff
    ld [$e2fc], a                                 ; $5d1a: $ea $fc $e2
    db $ec                                        ; $5d1d: $ec
    call nc, $01e7                                ; $5d1e: $d4 $e7 $01
    cp $03                                        ; $5d21: $fe $03
    db $fc                                        ; $5d23: $fc
    rrca                                          ; $5d24: $0f
    di                                            ; $5d25: $f3
    db $fd                                        ; $5d26: $fd
    rra                                           ; $5d27: $1f
    jp nc, $e0e5                                  ; $5d28: $d2 $e5 $e0

    ldh [rNR23], a                                ; $5d2b: $e0 $18
    ld hl, sp+$06                                 ; $5d2d: $f8 $06
    cp $f9                                        ; $5d2f: $fe $f9
    add hl, de                                    ; $5d31: $19
    jp nz, $b4ec                                  ; $5d32: $c2 $ec $b4

    rst $20                                       ; $5d35: $e7
    inc bc                                        ; $5d36: $03
    inc bc                                        ; $5d37: $03
    inc b                                         ; $5d38: $04
    rlca                                          ; $5d39: $07
    jr @-$07                                      ; $5d3a: $18 $f7

    rra                                           ; $5d3c: $1f
    ld h, $3f                                     ; $5d3d: $26 $3f
    sub d                                         ; $5d3f: $92
    and $c0                                       ; $5d40: $e6 $c0
    ccf                                           ; $5d42: $3f
    ldh a, [rIF]                                  ; $5d43: $f0 $0f
    ld [hl], a                                    ; $5d45: $77
    db $fc                                        ; $5d46: $fc
    inc sp                                        ; $5d47: $33
    cp $82                                        ; $5d48: $fe $82
    ld [$ff06], a                                 ; $5d4a: $ea $06 $ff
    ld a, [bc]                                    ; $5d4d: $0a
    ld [hl], d                                    ; $5d4e: $72

jr_037_5d4f:
    and $7f                                       ; $5d4f: $e6 $7f
    inc bc                                        ; $5d51: $03
    db $fc                                        ; $5d52: $fc
    rlca                                          ; $5d53: $07
    ld hl, sp+$1f                                 ; $5d54: $f8 $1f
    and $3f                                       ; $5d56: $e6 $3f
    ld [hl], d                                    ; $5d58: $72
    push hl                                       ; $5d59: $e5
    rst $38                                       ; $5d5a: $ff
    ret nz                                        ; $5d5b: $c0

    ret nz                                        ; $5d5c: $c0

    jr nc, jr_037_5d4f                            ; $5d5d: $30 $f0

    inc c                                         ; $5d5f: $0c
    db $fc                                        ; $5d60: $fc
    ld [hl-], a                                   ; $5d61: $32
    cp $9e                                        ; $5d62: $fe $9e
    ld h, d                                       ; $5d64: $62
    push hl                                       ; $5d65: $e5
    ld b, $06                                     ; $5d66: $06 $06
    ld c, $0a                                     ; $5d68: $0e $0a
    cp $e1                                        ; $5d6a: $fe $e1
    and d                                         ; $5d6c: $a2
    db $eb                                        ; $5d6d: $eb
    cpl                                           ; $5d6e: $2f
    db $fd                                        ; $5d6f: $fd
    add hl, sp                                    ; $5d70: $39
    and d                                         ; $5d71: $a2

jr_037_5d72:
    db $eb                                        ; $5d72: $eb
    ei                                            ; $5d73: $fb
    adc $f7                                       ; $5d74: $ce $f7
    inc e                                         ; $5d76: $1c
    rst $28                                       ; $5d77: $ef
    jr c, @+$01                                   ; $5d78: $38 $ff

    rst $38                                       ; $5d7a: $ff
    inc sp                                        ; $5d7b: $33
    rst $38                                       ; $5d7c: $ff
    jr nc, @+$01                                  ; $5d7d: $30 $ff

    daa                                           ; $5d7f: $27
    ei                                            ; $5d80: $fb
    ccf                                           ; $5d81: $3f
    rst $38                                       ; $5d82: $ff
    ei                                            ; $5d83: $fb
    ld a, a                                       ; $5d84: $7f
    ei                                            ; $5d85: $fb
    sbc a                                         ; $5d86: $9f
    db $fd                                        ; $5d87: $fd
    rst $20                                       ; $5d88: $e7
    cp $03                                        ; $5d89: $fe $03
    rst $38                                       ; $5d8b: $ff
    rst $38                                       ; $5d8c: $ff
    add hl, de                                    ; $5d8d: $19
    rst $38                                       ; $5d8e: $ff
    ld bc, $1cff                                  ; $5d8f: $01 $ff $1c
    rst $28                                       ; $5d92: $ef
    cp a                                          ; $5d93: $bf
    rst $10                                       ; $5d94: $d7
    rst $28                                       ; $5d95: $ef
    rst $38                                       ; $5d96: $ff
    rst $28                                       ; $5d97: $ef
    ld [de], a                                    ; $5d98: $12
    ldh [$80], a                                  ; $5d99: $e0 $80
    rst $38                                       ; $5d9b: $ff
    and $c0                                       ; $5d9c: $e6 $c0
    ret nz                                        ; $5d9e: $c0

    ei                                            ; $5d9f: $fb
    ldh [rNR41], a                                ; $5da0: $e0 $20
    ld [bc], a                                    ; $5da2: $02
    db $eb                                        ; $5da3: $eb
    ld bc, $2f01                                  ; $5da4: $01 $01 $2f
    add hl, sp                                    ; $5da7: $39
    ld e, a                                       ; $5da8: $5f
    rst $38                                       ; $5da9: $ff
    ld [hl], b                                    ; $5daa: $70
    ld a, a                                       ; $5dab: $7f
    ld h, [hl]                                    ; $5dac: $66
    ld a, a                                       ; $5dad: $7f
    ld h, b                                       ; $5dae: $60
    ld a, a                                       ; $5daf: $7f
    ld c, [hl]                                    ; $5db0: $4e
    ld [hl], a                                    ; $5db1: $77
    rst $38                                       ; $5db2: $ff
    ld a, a                                       ; $5db3: $7f
    rst $30                                       ; $5db4: $f7
    rst $38                                       ; $5db5: $ff
    rst $30                                       ; $5db6: $f7
    ccf                                           ; $5db7: $3f
    ei                                            ; $5db8: $fb
    adc $fd                                       ; $5db9: $ce $fd
    db $fd                                        ; $5dbb: $fd
    rlca                                          ; $5dbc: $07
    or b                                          ; $5dbd: $b0
    ldh [$03], a                                  ; $5dbe: $e0 $03
    rst $38                                       ; $5dc0: $ff
    add hl, sp                                    ; $5dc1: $39
    rst $18                                       ; $5dc2: $df
    ld a, a                                       ; $5dc3: $7f
    rst $18                                       ; $5dc4: $df
    cp e                                          ; $5dc5: $bb
    rst $38                                       ; $5dc6: $ff
    rst $18                                       ; $5dc7: $df
    ld b, b                                       ; $5dc8: $40
    db $eb                                        ; $5dc9: $eb
    add b                                         ; $5dca: $80
    rst $38                                       ; $5dcb: $ff
    ld b, b                                       ; $5dcc: $40
    ld a, $e0                                     ; $5dcd: $3e $e0
    ld a, [bc]                                    ; $5dcf: $0a
    rst $38                                       ; $5dd0: $ff
    rst $38                                       ; $5dd1: $ff
    ld a, [de]                                    ; $5dd2: $1a
    rst $38                                       ; $5dd3: $ff
    ld l, [hl]                                    ; $5dd4: $6e
    rst $38                                       ; $5dd5: $ff
    reti                                          ; $5dd6: $d9


    rst $38                                       ; $5dd7: $ff
    and c                                         ; $5dd8: $a1
    rst $38                                       ; $5dd9: $ff
    rst $38                                       ; $5dda: $ff
    ld e, c                                       ; $5ddb: $59
    rst $38                                       ; $5ddc: $ff
    ld [hl], c                                    ; $5ddd: $71
    rst $28                                       ; $5dde: $ef
    add hl, sp                                    ; $5ddf: $39
    rst $18                                       ; $5de0: $df
    ld [hl], b                                    ; $5de1: $70
    ld a, a                                       ; $5de2: $7f
    rst $38                                       ; $5de3: $ff
    ld h, [hl]                                    ; $5de4: $66
    rst $38                                       ; $5de5: $ff
    ld h, b                                       ; $5de6: $60
    rst $38                                       ; $5de7: $ff
    ld c, [hl]                                    ; $5de8: $4e
    rst $30                                       ; $5de9: $f7
    ret nz                                        ; $5dea: $c0

    ld [c], a                                     ; $5deb: $e2
    pop af                                        ; $5dec: $f1
    ld a, [$ecc0]                                 ; $5ded: $fa $c0 $ec
    sub d                                         ; $5df0: $92
    ret                                           ; $5df1: $c9


    ld a, [hl]                                    ; $5df2: $7e
    ldh [rLCDC], a                                ; $5df3: $e0 $40
    ld e, $1a                                     ; $5df5: $1e $1a
    ld a, a                                       ; $5df7: $7f
    db $fd                                        ; $5df8: $fd
    ld l, a                                       ; $5df9: $6f
    call nz, Call_037_7fe1                        ; $5dfa: $c4 $e1 $7f
    ld e, c                                       ; $5dfd: $59
    ld a, a                                       ; $5dfe: $7f
    ld [hl], c                                    ; $5dff: $71
    ccf                                           ; $5e00: $3f
    inc hl                                        ; $5e01: $23
    cp a                                          ; $5e02: $bf
    rra                                           ; $5e03: $1f
    ld de, $765f                                  ; $5e04: $11 $5f $76
    ld a, a                                       ; $5e07: $7f
    ld l, b                                       ; $5e08: $68
    add d                                         ; $5e09: $82
    rst $20                                       ; $5e0a: $e7
    rst $38                                       ; $5e0b: $ff
    ld e, a                                       ; $5e0c: $5f
    ld l, a                                       ; $5e0d: $6f
    db $fd                                        ; $5e0e: $fd
    scf                                           ; $5e0f: $37
    rst $38                                       ; $5e10: $ff
    dec bc                                        ; $5e11: $0b
    add d                                         ; $5e12: $82
    add sp, $7b                                   ; $5e13: $e8 $7b
    add d                                         ; $5e15: $82
    db $ec                                        ; $5e16: $ec
    rst $38                                       ; $5e17: $ff
    ld b, b                                       ; $5e18: $40
    rst $38                                       ; $5e19: $ff
    or a                                          ; $5e1a: $b7
    rst $38                                       ; $5e1b: $ff
    sub b                                         ; $5e1c: $90
    rst $38                                       ; $5e1d: $ff
    or b                                          ; $5e1e: $b0
    rst $18                                       ; $5e1f: $df

jr_037_5e20:
    rst $38                                       ; $5e20: $ff
    ld a, b                                       ; $5e21: $78
    rst $38                                       ; $5e22: $ff
    jr c, @+$01                                   ; $5e23: $38 $ff

    jr @+$01                                      ; $5e25: $18 $ff

    inc c                                         ; $5e27: $0c
    rst $38                                       ; $5e28: $ff
    rst $10                                       ; $5e29: $d7
    inc b                                         ; $5e2a: $04
    rst $38                                       ; $5e2b: $ff
    cp l                                          ; $5e2c: $bd
    ld a, b                                       ; $5e2d: $78
    ldh [rSTAT], a                                ; $5e2e: $e0 $41
    ld d, b                                       ; $5e30: $50
    ldh [rNR13], a                                ; $5e31: $e0 $13
    cp $ff                                        ; $5e33: $fe $ff
    ld [c], a                                     ; $5e35: $e2
    db $fc                                        ; $5e36: $fc
    inc b                                         ; $5e37: $04
    db $fc                                        ; $5e38: $fc
    inc b                                         ; $5e39: $04
    ldh [$a0], a                                  ; $5e3a: $e0 $a0
    ldh [$7f], a                                  ; $5e3c: $e0 $7f
    jr nz, jr_037_5e20                            ; $5e3e: $20 $e0

    and b                                         ; $5e40: $a0
    ld b, b                                       ; $5e41: $40
    ret nz                                        ; $5e42: $c0

    add b                                         ; $5e43: $80
    add b                                         ; $5e44: $80
    ld e, $e5                                     ; $5e45: $1e $e5
    db $fc                                        ; $5e47: $fc
    cp $e1                                        ; $5e48: $fe $e1
    db $10                                        ; $5e4a: $10
    ret z                                         ; $5e4b: $c8

    ld l, a                                       ; $5e4c: $6f

jr_037_5e4d:
    rst $38                                       ; $5e4d: $ff
    ld hl, $60ff                                  ; $5e4e: $21 $ff $60
    cp a                                          ; $5e51: $bf
    rst $38                                       ; $5e52: $ff
    ldh a, [$7f]                                  ; $5e53: $f0 $7f
    ld [hl], d                                    ; $5e55: $72
    rra                                           ; $5e56: $1f
    ld de, $080f                                  ; $5e57: $11 $0f $08
    rrca                                          ; $5e5a: $0f
    db $fd                                        ; $5e5b: $fd
    ld [$e09e], sp                                ; $5e5c: $08 $9e $e0
    ld b, d                                       ; $5e5f: $42
    rst $38                                       ; $5e60: $ff
    add e                                         ; $5e61: $83
    cp $07                                        ; $5e62: $fe $07
    rst $38                                       ; $5e64: $ff
    ld a, a                                       ; $5e65: $7f
    ld h, a                                       ; $5e66: $67
    cp a                                          ; $5e67: $bf
    db $e4                                        ; $5e68: $e4
    rst $38                                       ; $5e69: $ff
    ret z                                         ; $5e6a: $c8

    rst $38                                       ; $5e6b: $ff
    ld [$e29c], sp                                ; $5e6c: $08 $9c $e2
    cp c                                          ; $5e6f: $b9
    ld b, b                                       ; $5e70: $40
    ld d, $e0                                     ; $5e71: $16 $e0
    jp z, Jump_000_23a5                           ; $5e73: $ca $a5 $23

    rst $38                                       ; $5e76: $ff
    ld de, $e0fe                                  ; $5e77: $11 $fe $e0

jr_037_5e7a:
    ld [$e6ea], sp                                ; $5e7a: $08 $ea $e6
    ldh [rDIV], a                                 ; $5e7d: $e0 $04
    sub d                                         ; $5e7f: $92
    ldh [rSC], a                                  ; $5e80: $e0 $02
    ret nz                                        ; $5e82: $c0

    push hl                                       ; $5e83: $e5
    rst $38                                       ; $5e84: $ff
    ld [hl], d                                    ; $5e85: $72
    rst $38                                       ; $5e86: $ff
    push af                                       ; $5e87: $f5
    ld sp, $c098                                  ; $5e88: $31 $98 $c0
    jr jr_037_5e4d                                ; $5e8b: $18 $c0

    rst $20                                       ; $5e8d: $e7
    cp h                                          ; $5e8e: $bc
    db $e4                                        ; $5e8f: $e4
    jr c, jr_037_5e7a                             ; $5e90: $38 $e8

    rst $08                                       ; $5e92: $cf
    ld hl, sp-$38                                 ; $5e93: $f8 $c8
    ret nz                                        ; $5e95: $c0

    ld b, b                                       ; $5e96: $40
    cp $e1                                        ; $5e97: $fe $e1
    add d                                         ; $5e99: $82
    push hl                                       ; $5e9a: $e5
    nop                                           ; $5e9b: $00
    nop                                           ; $5e9c: $00
    rst $38                                       ; $5e9d: $ff
    rrca                                          ; $5e9e: $0f
    add hl, bc                                    ; $5e9f: $09
    rrca                                          ; $5ea0: $0f
    add hl, bc                                    ; $5ea1: $09
    rlca                                          ; $5ea2: $07
    inc b                                         ; $5ea3: $04
    rlca                                          ; $5ea4: $07
    inc b                                         ; $5ea5: $04
    ld c, a                                       ; $5ea6: $4f
    inc bc                                        ; $5ea7: $03
    ld [bc], a                                    ; $5ea8: $02
    inc bc                                        ; $5ea9: $03
    ld [bc], a                                    ; $5eaa: $02
    ld [hl], h                                    ; $5eab: $74
    pop hl                                        ; $5eac: $e1
    jp nz, Jump_000_33e6                          ; $5ead: $c2 $e6 $33

    ld e, d                                       ; $5eb0: $5a
    ret nz                                        ; $5eb1: $c0

    rst $30                                       ; $5eb2: $f7
    add hl, sp                                    ; $5eb3: $39
    rst $00                                       ; $5eb4: $c7
    db $fc                                        ; $5eb5: $fc
    add d                                         ; $5eb6: $82
    push hl                                       ; $5eb7: $e5
    rst $38                                       ; $5eb8: $ff
    db $e4                                        ; $5eb9: $e4
    cp a                                          ; $5eba: $bf
    add sp, -$51                                  ; $5ebb: $e8 $af
    ccf                                           ; $5ebd: $3f
    add sp, -$01                                  ; $5ebe: $e8 $ff
    ret nc                                        ; $5ec0: $d0

    ld d, d                                       ; $5ec1: $52
    and c                                         ; $5ec2: $a1
    ld a, a                                       ; $5ec3: $7f
    cp $e0                                        ; $5ec4: $fe $e0
    ccf                                           ; $5ec6: $3f
    ld a, [c]                                     ; $5ec7: $f2
    cp $e0                                        ; $5ec8: $fe $e0
    rra                                           ; $5eca: $1f
    cp $e0                                        ; $5ecb: $fe $e0
    call z, Call_000_0ea0                         ; $5ecd: $cc $a0 $0e
    di                                            ; $5ed0: $f3
    rra                                           ; $5ed1: $1f
    pop hl                                        ; $5ed2: $e1
    ei                                            ; $5ed3: $fb
    ccf                                           ; $5ed4: $3f
    ldh [$fe], a                                  ; $5ed5: $e0 $fe
    ld [c], a                                     ; $5ed7: $e2
    ldh a, [$1f]                                  ; $5ed8: $f0 $1f
    ld hl, sp+$08                                 ; $5eda: $f8 $08
    db $fc                                        ; $5edc: $fc
    rst $38                                       ; $5edd: $ff
    inc c                                         ; $5ede: $0c
    ld a, [c]                                     ; $5edf: $f2
    ld a, $e5                                     ; $5ee0: $3e $e5
    rst $38                                       ; $5ee2: $ff
    adc b                                         ; $5ee3: $88
    rst $38                                       ; $5ee4: $ff
    ld d, b                                       ; $5ee5: $50
    rst $28                                       ; $5ee6: $ef
    rst $38                                       ; $5ee7: $ff
    ld h, d                                       ; $5ee8: $62
    rst $38                                       ; $5ee9: $ff
    jp nz, $a232                                  ; $5eea: $c2 $32 $a2

    ld bc, $c100                                  ; $5eed: $01 $00 $c1
    rst $38                                       ; $5ef0: $ff
    ret nz                                        ; $5ef1: $c0

    inc hl                                        ; $5ef2: $23
    ldh [rNR13], a                                ; $5ef3: $e0 $13
    ldh a, [$37]                                  ; $5ef5: $f0 $37
    ldh a, [$7f]                                  ; $5ef7: $f0 $7f
    cp l                                          ; $5ef9: $bd
    ret z                                         ; $5efa: $c8

    sbc b                                         ; $5efb: $98
    jp nz, $8100                                  ; $5efc: $c2 $00 $81

    ld bc, $fec1                                  ; $5eff: $01 $c1 $fe
    ldh [$e1], a                                  ; $5f02: $e0 $e1
    rst $38                                       ; $5f04: $ff
    ld bc, $00e0                                  ; $5f05: $01 $e0 $00
    ccf                                           ; $5f08: $3f
    inc a                                         ; $5f09: $3c
    ld c, a                                       ; $5f0a: $4f
    ld a, h                                       ; $5f0b: $7c
    cp e                                          ; $5f0c: $bb
    rst $38                                       ; $5f0d: $ff
    cp $7f                                        ; $5f0e: $fe $7f
    rst $08                                       ; $5f10: $cf
    rst $38                                       ; $5f11: $ff
    add c                                         ; $5f12: $81
    rst $38                                       ; $5f13: $ff
    and d                                         ; $5f14: $a2
    rst $38                                       ; $5f15: $ff
    rst $38                                       ; $5f16: $ff
    pop bc                                        ; $5f17: $c1
    rst $38                                       ; $5f18: $ff
    call nz, Call_000_10ff                        ; $5f19: $c4 $ff $10
    rst $38                                       ; $5f1c: $ff
    jr @-$17                                      ; $5f1d: $18 $e7

    cp a                                          ; $5f1f: $bf
    ld a, h                                       ; $5f20: $7c
    set 7, [hl]                                   ; $5f21: $cb $fe
    inc de                                        ; $5f23: $13
    rst $38                                       ; $5f24: $ff
    and b                                         ; $5f25: $a0
    ld sp, $84c0                                  ; $5f26: $31 $c0 $84
    ld a, [$82e2]                                 ; $5f29: $fa $e2 $82
    cp $fe                                        ; $5f2c: $fe $fe
    ldh [$fc], a                                  ; $5f2e: $e0 $fc
    add b                                         ; $5f30: $80
    ld a, h                                       ; $5f31: $7c
    ret nz                                        ; $5f32: $c0

    jr c, @+$79                                   ; $5f33: $38 $77

    ldh [$78], a                                  ; $5f35: $e0 $78
    ldh [$c6], a                                  ; $5f37: $e0 $c6
    and b                                         ; $5f39: $a0
    ld bc, $017f                                  ; $5f3a: $01 $7f $01
    add b                                         ; $5f3d: $80
    rst $20                                       ; $5f3e: $e7
    rst $38                                       ; $5f3f: $ff
    rst $20                                       ; $5f40: $e7
    ld a, h                                       ; $5f41: $7c
    add a                                         ; $5f42: $87
    db $fc                                        ; $5f43: $fc
    rlca                                          ; $5f44: $07
    cp $89                                        ; $5f45: $fe $89
    rst $38                                       ; $5f47: $ff
    rst $38                                       ; $5f48: $ff
    bit 7, a                                      ; $5f49: $cb $7f
    jp c, $e47f                                   ; $5f4b: $da $7f $e4

    ld a, a                                       ; $5f4e: $7f
    push hl                                       ; $5f4f: $e5
    ld a, a                                       ; $5f50: $7f
    ld a, a                                       ; $5f51: $7f
    ldh a, [rNR10]                                ; $5f52: $f0 $10
    ld hl, sp+$18                                 ; $5f54: $f8 $18
    db $e4                                        ; $5f56: $e4
    ld a, h                                       ; $5f57: $7c
    jp z, $e2c0                                   ; $5f58: $ca $c0 $e2

    ld sp, hl                                     ; $5f5b: $f9
    ret nz                                        ; $5f5c: $c0

    add c                                         ; $5f5d: $81
    ret nz                                        ; $5f5e: $c0

    add b                                         ; $5f5f: $80
    db $e3                                        ; $5f60: $e3
    ld bc, $0300                                  ; $5f61: $01 $00 $03
    nop                                           ; $5f64: $00
    add e                                         ; $5f65: $83
    ld e, a                                       ; $5f66: $5f

Call_037_5f67:
    add b                                         ; $5f67: $80
    ld b, a                                       ; $5f68: $47
    ret nz                                        ; $5f69: $c0

    ld b, a                                       ; $5f6a: $47
    ret nz                                        ; $5f6b: $c0

    sub h                                         ; $5f6c: $94
    pop bc                                        ; $5f6d: $c1
    add b                                         ; $5f6e: $80
    ld a, [hl]                                    ; $5f6f: $7e
    ldh [$75], a                                  ; $5f70: $e0 $75
    ret nz                                        ; $5f72: $c0

    cp $e0                                        ; $5f73: $fe $e0
    ldh [$fe], a                                  ; $5f75: $e0 $fe
    ldh [rTAC], a                                 ; $5f77: $e0 $07
    db $fc                                        ; $5f79: $fc
    add a                                         ; $5f7a: $87
    jp nz, $ffe0                                  ; $5f7b: $c2 $e0 $ff

    ld c, e                                       ; $5f7e: $4b
    ld a, a                                       ; $5f7f: $7f
    ld e, d                                       ; $5f80: $5a
    ld a, a                                       ; $5f81: $7f
    ld h, h                                       ; $5f82: $64
    ld a, a                                       ; $5f83: $7f
    ld h, l                                       ; $5f84: $65
    ld a, a                                       ; $5f85: $7f
    sub e                                         ; $5f86: $93
    ld b, l                                       ; $5f87: $45
    ld a, a                                       ; $5f88: $7f
    add d                                         ; $5f89: $82
    rst $20                                       ; $5f8a: $e7
    jp nz, Jump_000_04e1                          ; $5f8b: $c2 $e1 $04

    add b                                         ; $5f8e: $80
    push hl                                       ; $5f8f: $e5
    add d                                         ; $5f90: $82
    ldh [$3c], a                                  ; $5f91: $e0 $3c
    cp $82                                        ; $5f93: $fe $82
    ldh [$f8], a                                  ; $5f95: $e0 $f8
    sub b                                         ; $5f97: $90
    rrca                                          ; $5f98: $0f
    nop                                           ; $5f99: $00
    rrca                                          ; $5f9a: $0f
    nop                                           ; $5f9b: $00
    rlca                                          ; $5f9c: $07
    ld a, [c]                                     ; $5f9d: $f2
    cp $e0                                        ; $5f9e: $fe $e0
    inc bc                                        ; $5fa0: $03
    xor [hl]                                      ; $5fa1: $ae
    ldh [$a8], a                                  ; $5fa2: $e0 $a8
    pop hl                                        ; $5fa4: $e1
    pop af                                        ; $5fa5: $f1
    rra                                           ; $5fa6: $1f
    ei                                            ; $5fa7: $fb
    rra                                           ; $5fa8: $1f
    rst $18                                       ; $5fa9: $df
    rst $30                                       ; $5faa: $f7
    ld e, $f1                                     ; $5fab: $1e $f1
    rra                                           ; $5fad: $1f
    ldh a, [$fe]                                  ; $5fae: $f0 $fe
    ldh [rIE], a                                  ; $5fb0: $e0 $ff
    rra                                           ; $5fb2: $1f
    rst $38                                       ; $5fb3: $ff
    db $fc                                        ; $5fb4: $fc
    rla                                           ; $5fb5: $17
    ld [c], a                                     ; $5fb6: $e2
    cp a                                          ; $5fb7: $bf
    pop af                                        ; $5fb8: $f1
    rra                                           ; $5fb9: $1f
    ld sp, hl                                     ; $5fba: $f9
    rrca                                          ; $5fbb: $0f
    cp $b6                                        ; $5fbc: $fe $b6
    add b                                         ; $5fbe: $80
    add e                                         ; $5fbf: $83
    ld a, a                                       ; $5fc0: $7f
    ret nz                                        ; $5fc1: $c0

jr_037_5fc2:
    rst $38                                       ; $5fc2: $ff

jr_037_5fc3:
    ldh [rIE], a                                  ; $5fc3: $e0 $ff
    sbc $ea                                       ; $5fc5: $de $ea
    dec a                                         ; $5fc7: $3d
    ldh [$c4], a                                  ; $5fc8: $e0 $c4
    ld a, [$08a0]                                 ; $5fca: $fa $a0 $08
    add $c0                                       ; $5fcd: $c6 $c0
    ld a, h                                       ; $5fcf: $7c
    rst $38                                       ; $5fd0: $ff
    ld b, h                                       ; $5fd1: $44
    ld a, a                                       ; $5fd2: $7f
    rst $38                                       ; $5fd3: $ff
    ld a, b                                       ; $5fd4: $78
    ldh a, [rP1]                                  ; $5fd5: $f0 $00
    ldh a, [rP1]                                  ; $5fd7: $f0 $00
    ld hl, sp-$02                                 ; $5fd9: $f8 $fe
    ldh [$f9], a                                  ; $5fdb: $e0 $f9
    db $fc                                        ; $5fdd: $fc
    cp $e0                                        ; $5fde: $fe $e0

Call_037_5fe0:
    jr z, jr_037_5fc3                             ; $5fe0: $28 $e1

    ld a, a                                       ; $5fe2: $7f
    ld l, d                                       ; $5fe3: $6a
    ld e, a                                       ; $5fe4: $5f
    ld [hl], a                                    ; $5fe5: $77
    ld c, h                                       ; $5fe6: $4c
    ei                                            ; $5fe7: $fb
    ld a, a                                       ; $5fe8: $7f
    ld b, b                                       ; $5fe9: $40
    cp $e2                                        ; $5fea: $fe $e2
    ld a, a                                       ; $5fec: $7f
    ld a, a                                       ; $5fed: $7f
    ld [hl], e                                    ; $5fee: $73

jr_037_5fef:
    ld e, a                                       ; $5fef: $5f
    call nz, Call_037_7ffb                        ; $5ff0: $c4 $fb $7f
    push bc                                       ; $5ff3: $c5
    inc hl                                        ; $5ff4: $23
    and b                                         ; $5ff5: $a0
    inc bc                                        ; $5ff6: $03
    cp $07                                        ; $5ff7: $fe $07
    db $fc                                        ; $5ff9: $fc
    rlca                                          ; $5ffa: $07
    rst $38                                       ; $5ffb: $ff
    db $fc                                        ; $5ffc: $fc
    rst $38                                       ; $5ffd: $ff
    db $fc                                        ; $5ffe: $fc
    rst $38                                       ; $5fff: $ff

jr_037_6000:
    cp d                                          ; $6000: $ba
    ldh a, [$90]                                  ; $6001: $f0 $90
    ld hl, sp-$01                                 ; $6003: $f8 $ff
    ld [$88f8], sp                                ; $6005: $08 $f8 $88
    ld hl, sp+$08                                 ; $6008: $f8 $08
    ldh a, [rNR10]                                ; $600a: $f0 $10
    ldh a, [rIE]                                  ; $600c: $f0 $ff
    jr nc, jr_037_6000                            ; $600e: $30 $f0

    ld d, b                                       ; $6010: $50
    ldh a, [$30]                                  ; $6011: $f0 $30
    push bc                                       ; $6013: $c5
    ld a, a                                       ; $6014: $7f
    rst $00                                       ; $6015: $c7
    db $eb                                        ; $6016: $eb
    ld a, a                                       ; $6017: $7f
    ret nz                                        ; $6018: $c0

    cp $e0                                        ; $6019: $fe $e0
    add b                                         ; $601b: $80
    inc de                                        ; $601c: $13
    and b                                         ; $601d: $a0
    rst $38                                       ; $601e: $ff
    rst $38                                       ; $601f: $ff
    rst $20                                       ; $6020: $e7
    adc a                                         ; $6021: $8f
    cp a                                          ; $6022: $bf
    inc b                                         ; $6023: $04
    rst $38                                       ; $6024: $ff
    dec b                                         ; $6025: $05
    jp nc, $cee0                                  ; $6026: $d2 $e0 $ce

    db $e3                                        ; $6029: $e3
    ret nc                                        ; $602a: $d0

    ldh [$74], a                                  ; $602b: $e0 $74
    ld c, a                                       ; $602d: $4f
    rst $28                                       ; $602e: $ef
    and b                                         ; $602f: $a0
    rst $28                                       ; $6030: $ef
    jr nz, jr_037_5fef                            ; $6031: $20 $bc

    ret nz                                        ; $6033: $c0

    cp $e1                                        ; $6034: $fe $e1
    jr nz, jr_037_5fc2                            ; $6036: $20 $8a

    add b                                         ; $6038: $80
    ld h, e                                       ; $6039: $63
    ld d, b                                       ; $603a: $50
    ld b, a                                       ; $603b: $47
    and h                                         ; $603c: $a4
    ldh [$d4], a                                  ; $603d: $e0 $d4
    pop hl                                        ; $603f: $e1
    jp nc, $ffe3                                  ; $6040: $d2 $e3 $ff

    sbc b                                         ; $6043: $98
    jp nc, $6ee0                                  ; $6044: $d2 $e0 $6e

    and d                                         ; $6047: $a2
    rst $20                                       ; $6048: $e7
    halt                                          ; $6049: $76
    rst $38                                       ; $604a: $ff
    inc bc                                        ; $604b: $03
    and d                                         ; $604c: $a2
    db $eb                                        ; $604d: $eb
    ldh [$e0], a                                  ; $604e: $e0 $e0
    ld h, d                                       ; $6050: $62
    pop bc                                        ; $6051: $c1
    ld a, [hl]                                    ; $6052: $7e
    and $c1                                       ; $6053: $e6 $c1
    ldh a, [rP1]                                  ; $6055: $f0 $00
    ld sp, hl                                     ; $6057: $f9
    ld bc, $01fd                                  ; $6058: $01 $fd $01
    or b                                          ; $605b: $b0
    and b                                         ; $605c: $a0
    ld e, a                                       ; $605d: $5f
    inc hl                                        ; $605e: $23
    rst $38                                       ; $605f: $ff
    ld b, b                                       ; $6060: $40
    ld a, a                                       ; $6061: $7f
    ld b, d                                       ; $6062: $42
    ld h, d                                       ; $6063: $62
    ret nz                                        ; $6064: $c0

    add c                                         ; $6065: $81
    and h                                         ; $6066: $a4
    and b                                         ; $6067: $a0
    ld [hl], l                                    ; $6068: $75
    ld [bc], a                                    ; $6069: $02
    ld [hl], $e2                                  ; $606a: $36 $e2
    rlca                                          ; $606c: $07
    jr nc, @-$5e                                  ; $606d: $30 $a0

    pop bc                                        ; $606f: $c1
    ld a, a                                       ; $6070: $7f
    ld b, c                                       ; $6071: $41
    ld c, e                                       ; $6072: $4b
    pop hl                                        ; $6073: $e1
    ld a, a                                       ; $6074: $7f
    ccf                                           ; $6075: $3f
    jr nz, @+$01                                  ; $6076: $20 $ff

    and b                                         ; $6078: $a0
    cp $c0                                        ; $6079: $fe $c0
    db $fc                                        ; $607b: $fc
    ld l, $e0                                     ; $607c: $2e $e0
    rst $38                                       ; $607e: $ff
    ldh a, [$80]                                  ; $607f: $f0 $80
    ldh a, [$f0]                                  ; $6081: $f0 $f0
    db $fc                                        ; $6083: $fc
    inc c                                         ; $6084: $0c
    cp $06                                        ; $6085: $fe $06
    cp h                                          ; $6087: $bc
    ld [c], a                                     ; $6088: $e2
    and c                                         ; $6089: $a1
    and $a0                                       ; $608a: $e6 $a0
    ld bc, $010f                                  ; $608c: $01 $0f $01
    rlca                                          ; $608f: $07
    xor [hl]                                      ; $6090: $ae
    and b                                         ; $6091: $a0
    inc bc                                        ; $6092: $03
    di                                            ; $6093: $f3
    ld [bc], a                                    ; $6094: $02
    ld a, a                                       ; $6095: $7f
    inc hl                                        ; $6096: $23
    ldh [rBCPS], a                                ; $6097: $e0 $68
    add b                                         ; $6099: $80

jr_037_609a:
    rlca                                          ; $609a: $07
    cp $02                                        ; $609b: $fe $02
    db $fc                                        ; $609d: $fc
    and l                                         ; $609e: $a5
    inc b                                         ; $609f: $04
    ld [hl], $e0                                  ; $60a0: $36 $e0
    ld [$c140], sp                                ; $60a2: $08 $40 $c1
    ld b, d                                       ; $60a5: $42
    add b                                         ; $60a6: $80
    pop bc                                        ; $60a7: $c1
    ld d, [hl]                                    ; $60a8: $56
    add b                                         ; $60a9: $80
    jr nz, jr_037_609a                            ; $60aa: $20 $ee

    ld e, [hl]                                    ; $60ac: $5e
    ldh [rNR10], a                                ; $60ad: $e0 $10
    ldh [$e0], a                                  ; $60af: $e0 $e0
    ld h, h                                       ; $60b1: $64
    pop bc                                        ; $60b2: $c1
    rlca                                          ; $60b3: $07
    nop                                           ; $60b4: $00
    adc a                                         ; $60b5: $8f
    rst $10                                       ; $60b6: $d7
    add b                                         ; $60b7: $80
    rst $18                                       ; $60b8: $df
    ld b, b                                       ; $60b9: $40
    jp c, $0860                                   ; $60ba: $da $60 $08

    ld [c], a                                     ; $60bd: $e2
    and c                                         ; $60be: $a1
    pop bc                                        ; $60bf: $c1
    ld bc, $e3df                                  ; $60c0: $01 $df $e3
    ld [bc], a                                    ; $60c3: $02
    di                                            ; $60c4: $f3
    ld [bc], a                                    ; $60c5: $02
    ei                                            ; $60c6: $fb
    sub b                                         ; $60c7: $90
    pop hl                                        ; $60c8: $e1
    ld [bc], a                                    ; $60c9: $02
    rst $38                                       ; $60ca: $ff
    ld b, l                                       ; $60cb: $45
    sbc b                                         ; $60cc: $98
    ld a, [hl+]                                   ; $60cd: $2a
    add b                                         ; $60ce: $80
    inc c                                         ; $60cf: $0c
    db $10                                        ; $60d0: $10
    add b                                         ; $60d1: $80
    cp h                                          ; $60d2: $bc
    pop bc                                        ; $60d3: $c1
    inc e                                         ; $60d4: $1c
    and c                                         ; $60d5: $a1
    ld b, $e1                                     ; $60d6: $06 $e1
    pop bc                                        ; $60d8: $c1
    cp $80                                        ; $60d9: $fe $80
    pop hl                                        ; $60db: $e1
    ccf                                           ; $60dc: $3f
    jr nz, jr_037_611e                            ; $60dd: $20 $3f

    jr nz, jr_037_6100                            ; $60df: $20 $1f

    db $10                                        ; $60e1: $10
    rst $38                                       ; $60e2: $ff
    or a                                          ; $60e3: $b7

jr_037_60e4:
    jr nc, jr_037_60e4                            ; $60e4: $30 $fe

    ldh [$80], a                                  ; $60e6: $e0 $80
    ld [c], a                                     ; $60e8: $e2
    nop                                           ; $60e9: $00
    ldh [rSCY], a                                 ; $60ea: $e0 $42
    add b                                         ; $60ec: $80
    ldh a, [$5d]                                  ; $60ed: $f0 $5d
    jr nc, jr_037_6153                            ; $60ef: $30 $62

    and b                                         ; $60f1: $a0
    ld bc, HeaderManufacturerCode                 ; $60f2: $01 $3f $01
    add b                                         ; $60f5: $80
    ldh [rSC], a                                  ; $60f6: $e0 $02
    add b                                         ; $60f8: $80
    db $e3                                        ; $60f9: $e3
    ret nc                                        ; $60fa: $d0

    jp nz, $84e3                                  ; $60fb: $c2 $e3 $84

    db $e3                                        ; $60fe: $e3
    ld h, h                                       ; $60ff: $64

jr_037_6100:
    and b                                         ; $6100: $a0
    sbc $81                                       ; $6101: $de $81
    ld bc, $e782                                  ; $6103: $01 $82 $e7
    rst $38                                       ; $6106: $ff
    db $10                                        ; $6107: $10
    ld a, [hl]                                    ; $6108: $7e
    ld h, d                                       ; $6109: $62
    and c                                         ; $610a: $a1
    inc bc                                        ; $610b: $03
    nop                                           ; $610c: $00
    add a                                         ; $610d: $87
    add b                                         ; $610e: $80
    rst $08                                       ; $610f: $cf
    ld b, b                                       ; $6110: $40
    add b                                         ; $6111: $80
    ldh [rIE], a                                  ; $6112: $e0 $ff
    jr nz, @+$01                                  ; $6114: $20 $ff

    jr jr_037_6157                                ; $6116: $18 $3f

    inc b                                         ; $6118: $04
    rra                                           ; $6119: $1f
    rra                                           ; $611a: $1f
    ld [hl+], a                                   ; $611b: $22
    push hl                                       ; $611c: $e5
    ccf                                           ; $611d: $3f

jr_037_611e:
    inc hl                                        ; $611e: $23
    pop hl                                        ; $611f: $e1
    ld a, a                                       ; $6120: $7f
    ld l, d                                       ; $6121: $6a
    ret nz                                        ; $6122: $c0

    ld h, d                                       ; $6123: $62
    ld b, b                                       ; $6124: $40
    inc b                                         ; $6125: $04
    rst $38                                       ; $6126: $ff
    adc h                                         ; $6127: $8c
    rst $30                                       ; $6128: $f7
    ld a, a                                       ; $6129: $7f
    db $e4                                        ; $612a: $e4
    rra                                           ; $612b: $1f
    ld [hl], d                                    ; $612c: $72
    jp nz, $fc45                                  ; $612d: $c2 $45 $fc

    rst $38                                       ; $6130: $ff
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    rra                                           ; $6133: $1f
    jr jr_037_6145                                ; $6134: $18 $0f

    ld b, $1d                                     ; $6136: $06 $1d
    ld bc, $0119                                  ; $6138: $01 $19 $01
    rst $20                                       ; $613b: $e7
    inc sp                                        ; $613c: $33
    ld bc, $782f                                  ; $613d: $01 $2f $78
    and b                                         ; $6140: $a0
    ld b, d                                       ; $6141: $42
    ld b, b                                       ; $6142: $40
    rrca                                          ; $6143: $0f
    db $fd                                        ; $6144: $fd

jr_037_6145:
    ld a, a                                       ; $6145: $7f
    db $dd                                        ; $6146: $dd
    add l                                         ; $6147: $85
    ld sp, $0760                                  ; $6148: $31 $60 $07
    rst $38                                       ; $614b: $ff
    ld sp, hl                                     ; $614c: $f9
    rst $20                                       ; $614d: $e7
    ret nz                                        ; $614e: $c0

    rst $38                                       ; $614f: $ff
    rst $38                                       ; $6150: $ff
    ld a, a                                       ; $6151: $7f
    rst $00                                       ; $6152: $c7

jr_037_6153:
    inc b                                         ; $6153: $04
    rst $38                                       ; $6154: $ff
    rra                                           ; $6155: $1f
    ld [c], a                                     ; $6156: $e2

jr_037_6157:
    ccf                                           ; $6157: $3f
    pop bc                                        ; $6158: $c1
    ld e, h                                       ; $6159: $5c
    ret nz                                        ; $615a: $c0

    push af                                       ; $615b: $f5
    rst $38                                       ; $615c: $ff
    db $fc                                        ; $615d: $fc
    pop hl                                        ; $615e: $e1
    rst $38                                       ; $615f: $ff
    ldh a, [$80]                                  ; $6160: $f0 $80
    add h                                         ; $6162: $84
    ld a, h                                       ; $6163: $7c
    db $e4                                        ; $6164: $e4
    inc e                                         ; $6165: $1c
    xor $05                                       ; $6166: $ee $05
    add b                                         ; $6168: $80
    db $fc                                        ; $6169: $fc
    db $fc                                        ; $616a: $fc
    ld b, [hl]                                    ; $616b: $46
    ret nz                                        ; $616c: $c0

    ldh [rIE], a                                  ; $616d: $e0 $ff
    ld [$fff7], sp                                ; $616f: $08 $f7 $ff
    inc b                                         ; $6172: $04
    db $e3                                        ; $6173: $e3
    inc bc                                        ; $6174: $03
    and $03                                       ; $6175: $e6 $03
    adc $03                                       ; $6177: $ce $03
    db $d3                                        ; $6179: $d3
    rst $38                                       ; $617a: $ff
    inc bc                                        ; $617b: $03
    add d                                         ; $617c: $82
    inc bc                                        ; $617d: $03
    rst $38                                       ; $617e: $ff
    rst $38                                       ; $617f: $ff
    db $fc                                        ; $6180: $fc
    inc b                                         ; $6181: $04
    ld a, [$feff]                                 ; $6182: $fa $ff $fe
    ld c, $fe                                     ; $6185: $0e $fe
    ld b, $fe                                     ; $6187: $06 $fe
    ld [bc], a                                    ; $6189: $02
    cp $fe                                        ; $618a: $fe $fe
    db $fc                                        ; $618c: $fc
    db $fc                                        ; $618d: $fc
    ldh [$a0], a                                  ; $618e: $e0 $a0
    ldh [rNR10], a                                ; $6190: $e0 $10
    rrca                                          ; $6192: $0f
    ld [$051f], sp                                ; $6193: $08 $1f $05
    ld a, [de]                                    ; $6196: $1a
    cp a                                          ; $6197: $bf
    inc bc                                        ; $6198: $03
    ld [hl-], a                                   ; $6199: $32
    inc bc                                        ; $619a: $03
    cpl                                           ; $619b: $2f
    inc bc                                        ; $619c: $03
    ld a, [hl]                                    ; $619d: $7e
    ldh [$e0], a                                  ; $619e: $e0 $e0
    ei                                            ; $61a0: $fb
    rst $38                                       ; $61a1: $ff
    ld [$fcff], sp                                ; $61a2: $08 $ff $fc
    rrca                                          ; $61a5: $0f
    cp $07                                        ; $61a6: $fe $07
    cp $03                                        ; $61a8: $fe $03
    cp e                                          ; $61aa: $bb
    cp $ff                                        ; $61ab: $fe $ff
    db $fc                                        ; $61ad: $fc
    pop hl                                        ; $61ae: $e1
    rst $38                                       ; $61af: $ff
    db $fc                                        ; $61b0: $fc
    inc c                                         ; $61b1: $0c
    or l                                          ; $61b2: $b5
    pop hl                                        ; $61b3: $e1
    inc b                                         ; $61b4: $04
    ld a, a                                       ; $61b5: $7f
    db $fc                                        ; $61b6: $fc
    inc a                                         ; $61b7: $3c
    db $fc                                        ; $61b8: $fc
    call nz, Call_037_7efc                        ; $61b9: $c4 $fc $7e
    ld hl, sp-$50                                 ; $61bc: $f8 $b0

jr_037_61be:
    db $e3                                        ; $61be: $e3

Jump_037_61bf:
    ld a, e                                       ; $61bf: $7b
    rst $20                                       ; $61c0: $e7
    dec b                                         ; $61c1: $05
    or b                                          ; $61c2: $b0
    add sp, $0c                                   ; $61c3: $e8 $0c
    ld a, [$0afe]                                 ; $61c5: $fa $fe $0a
    or b                                          ; $61c8: $b0
    ldh [$15], a                                  ; $61c9: $e0 $15
    ld b, $b0                                     ; $61cb: $06 $b0
    ldh [rDIV], a                                 ; $61cd: $e0 $04
    sub b                                         ; $61cf: $90
    pop hl                                        ; $61d0: $e1
    rst $38                                       ; $61d1: $ff
    and b                                         ; $61d2: $a0
    ld b, a                                       ; $61d3: $47
    sub [hl]                                      ; $61d4: $96
    ld b, c                                       ; $61d5: $41
    sub b                                         ; $61d6: $90
    ld hl, $4010                                  ; $61d7: $21 $10 $40
    adc d                                         ; $61da: $8a
    sub b                                         ; $61db: $90
    jr nz, jr_037_61be                            ; $61dc: $20 $e0

    add e                                         ; $61de: $83
    ld a, d                                       ; $61df: $7a
    pop bc                                        ; $61e0: $c1
    rlca                                          ; $61e1: $07
    add b                                         ; $61e2: $80
    jr nz, jr_037_6243                            ; $61e3: $20 $5e

    jp nz, $e7fc                                  ; $61e5: $c2 $fc $e7

    db $10                                        ; $61e8: $10
    jp $faa3                                      ; $61e9: $c3 $a3 $fa


    and $e0                                       ; $61ec: $e6 $e0
    and a                                         ; $61ee: $a7
    inc a                                         ; $61ef: $3c
    and c                                         ; $61f0: $a1
    cp $40                                        ; $61f1: $fe $40
    ld h, h                                       ; $61f3: $64
    ld a, [$d0e7]                                 ; $61f4: $fa $e7 $d0
    push hl                                       ; $61f7: $e5
    sbc a                                         ; $61f8: $9f
    cp a                                          ; $61f9: $bf
    add b                                         ; $61fa: $80
    adc a                                         ; $61fb: $8f
    add b                                         ; $61fc: $80

jr_037_61fd:
    add e                                         ; $61fd: $83
    dec h                                         ; $61fe: $25
    ld b, b                                       ; $61ff: $40
    ldh [$e5], a                                  ; $6200: $e0 $e5
    inc bc                                        ; $6202: $03
    and d                                         ; $6203: $a2
    xor $a0                                       ; $6204: $ee $a0
    ccf                                           ; $6206: $3f
    ld b, h                                       ; $6207: $44
    add b                                         ; $6208: $80
    ld [hl], b                                    ; $6209: $70
    add a                                         ; $620a: $87
    sub b                                         ; $620b: $90
    db $e3                                        ; $620c: $e3
    ccf                                           ; $620d: $3f
    or b                                          ; $620e: $b0
    add b                                         ; $620f: $80
    inc bc                                        ; $6210: $03
    inc d                                         ; $6211: $14
    db $10                                        ; $6212: $10
    jr nc, jr_037_61fd                            ; $6213: $30 $e8

    db $ed                                        ; $6215: $ed
    inc bc                                        ; $6216: $03
    adc b                                         ; $6217: $88
    add b                                         ; $6218: $80
    ccf                                           ; $6219: $3f
    sub $00                                       ; $621a: $d6 $00
    ld hl, sp-$1b                                 ; $621c: $f8 $e5
    jp z, $fe05                                   ; $621e: $ca $05 $fe

    ret z                                         ; $6221: $c8

    ld [hl+], a                                   ; $6222: $22
    add b                                         ; $6223: $80
    ldh [$80], a                                  ; $6224: $e0 $80
    ldh a, [$80]                                  ; $6226: $f0 $80
    ld hl, sp-$80                                 ; $6228: $f8 $80
    rst $18                                       ; $622a: $df
    db $fc                                        ; $622b: $fc
    add b                                         ; $622c: $80
    cp $80                                        ; $622d: $fe $80
    rst $38                                       ; $622f: $ff
    ld c, d                                       ; $6230: $4a
    and b                                         ; $6231: $a0
    ld sp, hl                                     ; $6232: $f9
    ld bc, $f11d                                  ; $6233: $01 $1d $f1
    and h                                         ; $6236: $a4
    ld h, b                                       ; $6237: $60
    pop bc                                        ; $6238: $c1
    ld bc, $a681                                  ; $6239: $01 $81 $a6
    ld b, b                                       ; $623c: $40
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    nop                                           ; $623f: $00
    ld e, a                                       ; $6240: $5f
    rst $38                                       ; $6241: $ff
    rst $38                                       ; $6242: $ff

jr_037_6243:
    rst $38                                       ; $6243: $ff
    nop                                           ; $6244: $00
    cp $fe                                        ; $6245: $fe $fe
    ldh [$fc], a                                  ; $6247: $e0 $fc
    cp $e0                                        ; $6249: $fe $e0
    rst $38                                       ; $624b: $ff
    ld hl, sp+$00                                 ; $624c: $f8 $00
    add d                                         ; $624e: $82
    nop                                           ; $624f: $00
    jp nz, $e200                                  ; $6250: $c2 $00 $e2

    nop                                           ; $6253: $00
    db $fd                                        ; $6254: $fd
    ldh a, [$fe]                                  ; $6255: $f0 $fe
    ldh [$e0], a                                  ; $6257: $e0 $e0
    nop                                           ; $6259: $00
    pop hl                                        ; $625a: $e1
    nop                                           ; $625b: $00
    rst $00                                       ; $625c: $c7
    nop                                           ; $625d: $00
    ld a, a                                       ; $625e: $7f
    rst $08                                       ; $625f: $cf
    nop                                           ; $6260: $00
    ld b, e                                       ; $6261: $43
    nop                                           ; $6262: $00
    ld b, a                                       ; $6263: $47
    nop                                           ; $6264: $00
    rrca                                          ; $6265: $0f
    cp $e0                                        ; $6266: $fe $e0
    rst $38                                       ; $6268: $ff
    rlca                                          ; $6269: $07
    nop                                           ; $626a: $00
    add a                                         ; $626b: $87
    ld bc, $03e2                                  ; $626c: $01 $e2 $03
    db $fc                                        ; $626f: $fc
    rrca                                          ; $6270: $0f
    cp [hl]                                       ; $6271: $be
    ldh [$e8], a                                  ; $6272: $e0 $e8
    ldh [$1f], a                                  ; $6274: $e0 $1f
    ld hl, sp+$07                                 ; $6276: $f8 $07
    cp $e0                                        ; $6278: $fe $e0
    and $01                                       ; $627a: $e6 $01
    cp a                                          ; $627c: $bf
    add [hl]                                      ; $627d: $86
    inc bc                                        ; $627e: $03
    db $ec                                        ; $627f: $ec
    rrca                                          ; $6280: $0f
    di                                            ; $6281: $f3
    rra                                           ; $6282: $1f
    ret nz                                        ; $6283: $c0

    and $e0                                       ; $6284: $e6 $e0
    db $ed                                        ; $6286: $ed
    add hl, de                                    ; $6287: $19
    ld [c], a                                     ; $6288: $e2
    ldh [rNR24], a                                ; $6289: $e0 $19
    rst $38                                       ; $628b: $ff
    ret nz                                        ; $628c: $c0

    db $e4                                        ; $628d: $e4

jr_037_628e:
    inc bc                                        ; $628e: $03
    inc b                                         ; $628f: $04
    rlca                                          ; $6290: $07
    cp a                                          ; $6291: $bf
    sbc b                                         ; $6292: $98
    rra                                           ; $6293: $1f
    and $3f                                       ; $6294: $e6 $3f
    rst $28                                       ; $6296: $ef
    add hl, sp                                    ; $6297: $39
    and b                                         ; $6298: $a0
    db $e4                                        ; $6299: $e4
    ret nz                                        ; $629a: $c0

    rst $38                                       ; $629b: $ff
    jr nc, jr_037_628e                            ; $629c: $30 $f0

    dec c                                         ; $629e: $0d
    db $fc                                        ; $629f: $fc
    inc sp                                        ; $62a0: $33
    cp $fb                                        ; $62a1: $fe $fb
    adc $5f                                       ; $62a3: $ce $5f
    rst $38                                       ; $62a5: $ff
    nop                                           ; $62a6: $00
    rst $38                                       ; $62a7: $ff
    nop                                           ; $62a8: $00
    ld a, a                                       ; $62a9: $7f
    cp $e0                                        ; $62aa: $fe $e0
    ccf                                           ; $62ac: $3f
    cp $e0                                        ; $62ad: $fe $e0
    rst $38                                       ; $62af: $ff
    rra                                           ; $62b0: $1f
    nop                                           ; $62b1: $00
    ld b, c                                       ; $62b2: $41
    nop                                           ; $62b3: $00
    di                                            ; $62b4: $f3
    rra                                           ; $62b5: $1f
    rst $30                                       ; $62b6: $f7
    inc e                                         ; $62b7: $1c
    rst $38                                       ; $62b8: $ff
    rst $28                                       ; $62b9: $ef
    jr c, @+$01                                   ; $62ba: $38 $ff

    inc sp                                        ; $62bc: $33
    rst $38                                       ; $62bd: $ff
    jr nc, @+$01                                  ; $62be: $30 $ff

    daa                                           ; $62c0: $27
    rst $38                                       ; $62c1: $ff
    ei                                            ; $62c2: $fb
    ccf                                           ; $62c3: $3f
    ei                                            ; $62c4: $fb
    ld a, a                                       ; $62c5: $7f
    add hl, de                                    ; $62c6: $19
    rst $38                                       ; $62c7: $ff
    db $fd                                        ; $62c8: $fd
    rst $20                                       ; $62c9: $e7
    rst $38                                       ; $62ca: $ff
    cp $03                                        ; $62cb: $fe $03
    rst $38                                       ; $62cd: $ff
    add hl, de                                    ; $62ce: $19
    rst $38                                       ; $62cf: $ff
    ld bc, $1cff                                  ; $62d0: $01 $ff $1c
    rst $20                                       ; $62d3: $e7
    rst $28                                       ; $62d4: $ef
    cp a                                          ; $62d5: $bf
    rst $28                                       ; $62d6: $ef
    ld d, d                                       ; $62d7: $52
    ldh [$50], a                                  ; $62d8: $e0 $50
    ldh [$80], a                                  ; $62da: $e0 $80
    cp $80                                        ; $62dc: $fe $80
    cp l                                          ; $62de: $bd
    db $fc                                        ; $62df: $fc
    cp $e0                                        ; $62e0: $fe $e0
    ld hl, sp-$80                                 ; $62e2: $f8 $80
    jp nz, $d2c0                                  ; $62e4: $c2 $c0 $d2

    db $eb                                        ; $62e7: $eb
    ei                                            ; $62e8: $fb
    pop hl                                        ; $62e9: $e1
    sbc a                                         ; $62ea: $9f
    jp nc, $d0eb                                  ; $62eb: $d2 $eb $d0

    ld [c], a                                     ; $62ee: $e2
    jp nc, $d0e0                                  ; $62ef: $d2 $e0 $d0

    db $e4                                        ; $62f2: $e4
    ret nz                                        ; $62f3: $c0

    ld [c], a                                     ; $62f4: $e2

jr_037_62f5:
    jr nz, jr_037_62f5                            ; $62f5: $20 $fe

    sub b                                         ; $62f7: $90
    ld [$4101], a                                 ; $62f8: $ea $01 $41
    ld bc, $70df                                  ; $62fb: $01 $df $70
    rst $38                                       ; $62fe: $ff
    ld h, [hl]                                    ; $62ff: $66
    rst $38                                       ; $6300: $ff
    rst $38                                       ; $6301: $ff
    ld h, b                                       ; $6302: $60
    rst $38                                       ; $6303: $ff
    ld c, [hl]                                    ; $6304: $4e
    rst $30                                       ; $6305: $f7
    ld a, a                                       ; $6306: $7f
    rst $30                                       ; $6307: $f7
    rst $38                                       ; $6308: $ff
    cp a                                          ; $6309: $bf
    rst $30                                       ; $630a: $f7
    ccf                                           ; $630b: $3f
    rst $38                                       ; $630c: $ff
    ld l, a                                       ; $630d: $6f
    db $fd                                        ; $630e: $fd
    rlca                                          ; $630f: $07
    add h                                         ; $6310: $84
    ldh [$03], a                                  ; $6311: $e0 $03
    rst $38                                       ; $6313: $ff
    rst $38                                       ; $6314: $ff
    add hl, sp                                    ; $6315: $39
    rst $18                                       ; $6316: $df
    ld a, a                                       ; $6317: $7f
    rst $18                                       ; $6318: $df
    rst $38                                       ; $6319: $ff
    rst $18                                       ; $631a: $df
    cp $f3                                        ; $631b: $fe $f3
    rst $38                                       ; $631d: $ff
    ld a, e                                       ; $631e: $7b
    sub b                                         ; $631f: $90
    ld [c], a                                     ; $6320: $e2
    ldh [$c3], a                                  ; $6321: $e0 $c3
    add b                                         ; $6323: $80
    ld hl, sp+$40                                 ; $6324: $f8 $40
    jp nz, $40ff                                  ; $6326: $c2 $ff $40

    ei                                            ; $6329: $fb
    sbc a                                         ; $632a: $9f
    rst $38                                       ; $632b: $ff
    or a                                          ; $632c: $b7
    rst $38                                       ; $632d: $ff
    sub b                                         ; $632e: $90

jr_037_632f:
    rst $38                                       ; $632f: $ff
    rst $38                                       ; $6330: $ff
    or b                                          ; $6331: $b0
    rst $18                                       ; $6332: $df
    ld a, b                                       ; $6333: $78
    rst $38                                       ; $6334: $ff
    add hl, sp                                    ; $6335: $39
    rst $08                                       ; $6336: $cf
    ld [$7dcf], sp                                ; $6337: $08 $cf $7d
    inc b                                         ; $633a: $04
    ld l, [hl]                                    ; $633b: $6e
    ldh [$bd], a                                  ; $633c: $e0 $bd
    rst $38                                       ; $633e: $ff
    and c                                         ; $633f: $a1
    rst $38                                       ; $6340: $ff
    ld b, c                                       ; $6341: $41
    call z, $ffe0                                 ; $6342: $cc $e0 $ff
    inc sp                                        ; $6345: $33
    rst $18                                       ; $6346: $df
    ld a, [c]                                     ; $6347: $f2
    sbc a                                         ; $6348: $9f
    db $f4                                        ; $6349: $f4
    ld [c], a                                     ; $634a: $e2
    jr nz, jr_037_632f                            ; $634b: $20 $e2

    rst $38                                       ; $634d: $ff
    and b                                         ; $634e: $a0
    ldh a, [rNR41]                                ; $634f: $f0 $20
    ldh a, [$a0]                                  ; $6351: $f0 $a0
    ld h, b                                       ; $6353: $60
    ret nz                                        ; $6354: $c0

    pop hl                                        ; $6355: $e1
    ld sp, hl                                     ; $6356: $f9
    add b                                         ; $6357: $80
    ret nz                                        ; $6358: $c0

    pop bc                                        ; $6359: $c1
    jp nc, $efe7                                  ; $635a: $d2 $e7 $ef

    ld [$04c7], sp                                ; $635d: $08 $c7 $04
    rst $08                                       ; $6360: $cf
    ld a, l                                       ; $6361: $7d
    inc b                                         ; $6362: $04
    jp nc, $ffeb                                  ; $6363: $d2 $eb $ff

    ld h, l                                       ; $6366: $65
    ld [c], a                                     ; $6367: $e2
    and b                                         ; $6368: $a0
    ld [c], a                                     ; $6369: $e2
    jp nc, $ffe0                                  ; $636a: $d2 $e0 $ff

    ld [hl], b                                    ; $636d: $70
    ret nz                                        ; $636e: $c0

    ldh [$80], a                                  ; $636f: $e0 $80
    pop hl                                        ; $6371: $e1
    nop                                           ; $6372: $00
    rst $30                                       ; $6373: $f7
    ld [hl], b                                    ; $6374: $70
    cp a                                          ; $6375: $bf
    rst $38                                       ; $6376: $ff
    adc b                                         ; $6377: $88
    ld b, e                                       ; $6378: $43
    ld bc, HeaderCartridgeType                    ; $6379: $01 $47 $01
    sub b                                         ; $637c: $90

jr_037_637d:
    call nz, $ff00                                ; $637d: $c4 $00 $ff
    db $e3                                        ; $6380: $e3
    nop                                           ; $6381: $00
    di                                            ; $6382: $f3
    nop                                           ; $6383: $00
    rst $38                                       ; $6384: $ff
    ld hl, $60ff                                  ; $6385: $21 $ff $60
    rst $38                                       ; $6388: $ff
    cp a                                          ; $6389: $bf
    ldh a, [rIE]                                  ; $638a: $f0 $ff
    ld [hl], d                                    ; $638c: $72
    rst $38                                       ; $638d: $ff
    ld de, $08ef                                  ; $638e: $11 $ef $08
    cp $90                                        ; $6391: $fe $90
    pop hl                                        ; $6393: $e1
    rst $38                                       ; $6394: $ff

jr_037_6395:
    ld b, d                                       ; $6395: $42
    rst $38                                       ; $6396: $ff
    add e                                         ; $6397: $83
    cp $07                                        ; $6398: $fe $07
    rst $38                                       ; $639a: $ff
    rst $38                                       ; $639b: $ff
    ld h, a                                       ; $639c: $67
    cp a                                          ; $639d: $bf
    db $e4                                        ; $639e: $e4
    rst $38                                       ; $639f: $ff
    ret z                                         ; $63a0: $c8

    ei                                            ; $63a1: $fb
    dec bc                                        ; $63a2: $0b
    rst $30                                       ; $63a3: $f7
    ld a, a                                       ; $63a4: $7f
    inc d                                         ; $63a5: $14
    jp nz, $e240                                  ; $63a6: $c2 $40 $e2

    ld b, b                                       ; $63a9: $40
    ldh a, [$80]                                  ; $63aa: $f0 $80
    ld d, b                                       ; $63ac: $50
    call nz, $c0db                                ; $63ad: $c4 $db $c0
    rst $28                                       ; $63b0: $ef
    jr nz, jr_037_6395                            ; $63b1: $20 $e2

    cp $00                                        ; $63b3: $fe $00
    jp nc, $02c0                                  ; $63b5: $d2 $c0 $02

    rst $38                                       ; $63b8: $ff
    rst $18                                       ; $63b9: $df
    inc b                                         ; $63ba: $04
    rst $38                                       ; $63bb: $ff
    jr jr_037_637d                                ; $63bc: $18 $bf

    ld hl, $e0fa                                  ; $63be: $21 $fa $e0
    ld a, [hl]                                    ; $63c1: $7e
    di                                            ; $63c2: $f3
    rst $38                                       ; $63c3: $ff
    sbc [hl]                                      ; $63c4: $9e
    rst $20                                       ; $63c5: $e7
    ccf                                           ; $63c6: $3f
    call nz, $d57f                                ; $63c7: $c4 $7f $d5
    ld a, a                                       ; $63ca: $7f
    rst $20                                       ; $63cb: $e7
    rst $38                                       ; $63cc: $ff
    rst $38                                       ; $63cd: $ff
    rst $38                                       ; $63ce: $ff
    cp b                                          ; $63cf: $b8
    rst $38                                       ; $63d0: $ff
    ld h, h                                       ; $63d1: $64
    rst $38                                       ; $63d2: $ff
    ld [$fffe], sp                                ; $63d3: $08 $fe $ff
    inc c                                         ; $63d6: $0c
    rst $30                                       ; $63d7: $f7
    rra                                           ; $63d8: $1f
    db $e4                                        ; $63d9: $e4
    rst $38                                       ; $63da: $ff
    adc [hl]                                      ; $63db: $8e
    rst $38                                       ; $63dc: $ff
    rst $38                                       ; $63dd: $ff
    ld sp, hl                                     ; $63de: $f9
    ld sp, hl                                     ; $63df: $f9
    ld c, b                                       ; $63e0: $48
    ldh [$80], a                                  ; $63e1: $e0 $80
    call nz, $80bf                                ; $63e3: $c4 $bf $80
    ld a, a                                       ; $63e6: $7f
    ret nz                                        ; $63e7: $c0

    ld e, a                                       ; $63e8: $5f
    rst $20                                       ; $63e9: $e7
    ret nz                                        ; $63ea: $c0

    ld b, c                                       ; $63eb: $41
    ret nz                                        ; $63ec: $c0

    add $e4                                       ; $63ed: $c6 $e4
    cp $e1                                        ; $63ef: $fe $e1
    ld [bc], a                                    ; $63f1: $02
    ei                                            ; $63f2: $fb
    ld [bc], a                                    ; $63f3: $02
    rst $38                                       ; $63f4: $ff
    add e                                         ; $63f5: $83
    ld bc, $f2ff                                  ; $63f6: $01 $ff $f2
    rst $08                                       ; $63f9: $cf
    ld a, [hl]                                    ; $63fa: $7e
    push hl                                       ; $63fb: $e5
    ccf                                           ; $63fc: $3f
    rst $38                                       ; $63fd: $ff
    db $f4                                        ; $63fe: $f4
    ld e, a                                       ; $63ff: $5f
    ld a, [c]                                     ; $6400: $f2
    ccf                                           ; $6401: $3f
    jp hl                                         ; $6402: $e9


    ccf                                           ; $6403: $3f
    ldh a, [$3f]                                  ; $6404: $f0 $3f
    rst $38                                       ; $6406: $ff
    ldh [$3f], a                                  ; $6407: $e0 $3f
    cp $0f                                        ; $6409: $fe $0f
    ld a, [$fa0f]                                 ; $640b: $fa $0f $fa
    sbc a                                         ; $640e: $9f
    db $fd                                        ; $640f: $fd
    push af                                       ; $6410: $f5
    cp c                                          ; $6411: $b9
    ldh [rOBP0], a                                ; $6412: $e0 $48
    rst $38                                       ; $6414: $ff
    xor c                                         ; $6415: $a9
    rst $38                                       ; $6416: $ff
    or d                                          ; $6417: $b2
    cp $ef                                        ; $6418: $fe $ef
    ld a, a                                       ; $641a: $7f
    call nz, $e43f                                ; $641b: $c4 $3f $e4
    cp $e1                                        ; $641e: $fe $e1
    ld a, a                                       ; $6420: $7f
    db $e4                                        ; $6421: $e4
    rst $38                                       ; $6422: $ff
    rst $18                                       ; $6423: $df
    call z, $c4ff                                 ; $6424: $cc $ff $c4
    db $fd                                        ; $6427: $fd
    add h                                         ; $6428: $84
    adc d                                         ; $6429: $8a
    ldh [$0e], a                                  ; $642a: $e0 $0e
    ld a, e                                       ; $642c: $7b
    rst $38                                       ; $642d: $ff
    rrca                                          ; $642e: $0f
    ld a, b                                       ; $642f: $78
    rra                                           ; $6430: $1f
    ld l, $3f                                     ; $6431: $2e $3f
    ld b, e                                       ; $6433: $43
    ld a, a                                       ; $6434: $7f
    ld b, a                                       ; $6435: $47
    rst $38                                       ; $6436: $ff
    ld a, a                                       ; $6437: $7f
    ld c, a                                       ; $6438: $4f
    ld a, c                                       ; $6439: $79
    rst $38                                       ; $643a: $ff
    inc e                                         ; $643b: $1c
    di                                            ; $643c: $f3
    ld a, $e9                                     ; $643d: $3e $e9
    cp $97                                        ; $643f: $fe $97
    ldh [rIE], a                                  ; $6441: $e0 $ff
    rst $00                                       ; $6443: $c7
    cp $82                                        ; $6444: $fe $82
    rst $38                                       ; $6446: $ff
    add c                                         ; $6447: $81
    rst $38                                       ; $6448: $ff
    rst $30                                       ; $6449: $f7
    dec b                                         ; $644a: $05
    rst $38                                       ; $644b: $ff
    db $10                                        ; $644c: $10
    add a                                         ; $644d: $87
    ldh [$e1], a                                  ; $644e: $e0 $e1
    ld a, a                                       ; $6450: $7f
    ld b, c                                       ; $6451: $41
    ld a, a                                       ; $6452: $7f
    rst $38                                       ; $6453: $ff
    ld d, l                                       ; $6454: $55
    ld a, a                                       ; $6455: $7f
    ld d, l                                       ; $6456: $55
    ccf                                           ; $6457: $3f
    ld l, $51                                     ; $6458: $2e $51
    db $10                                        ; $645a: $10
    rst $38                                       ; $645b: $ff
    rst $38                                       ; $645c: $ff
    ld b, b                                       ; $645d: $40
    rst $38                                       ; $645e: $ff
    ld d, [hl]                                    ; $645f: $56
    rst $38                                       ; $6460: $ff
    ld d, d                                       ; $6461: $52
    rst $38                                       ; $6462: $ff
    dec hl                                        ; $6463: $2b
    db $fd                                        ; $6464: $fd
    rst $38                                       ; $6465: $ff
    dec e                                         ; $6466: $1d
    pop hl                                        ; $6467: $e1

jr_037_6468:
    ld bc, $01c7                                  ; $6468: $01 $c7 $01
    rst $08                                       ; $646b: $cf
    ld bc, $ffdf                                  ; $646c: $01 $df $ff
    ldh a, [$df]                                  ; $646f: $f0 $df
    ldh a, [$9f]                                  ; $6471: $f0 $9f
    di                                            ; $6473: $f3
    adc a                                         ; $6474: $8f
    ld hl, sp+$07                                 ; $6475: $f8 $07
    sbc $0f                                       ; $6477: $de $0f
    ret nz                                        ; $6479: $c0

    rst $38                                       ; $647a: $ff
    rst $38                                       ; $647b: $ff
    db $fd                                        ; $647c: $fd
    rst $18                                       ; $647d: $df
    ld [$43c0], sp                                ; $647e: $08 $c0 $43
    db $fd                                        ; $6481: $fd
    ld a, a                                       ; $6482: $7f
    rst $38                                       ; $6483: $ff
    add [hl]                                      ; $6484: $86
    cp $fc                                        ; $6485: $fe $fc
    db $fc                                        ; $6487: $fc
    db $fd                                        ; $6488: $fd
    adc h                                         ; $6489: $8c
    ld l, h                                       ; $648a: $6c
    pop hl                                        ; $648b: $e1
    rst $28                                       ; $648c: $ef
    ld b, e                                       ; $648d: $43
    ret nz                                        ; $648e: $c0

    rst $00                                       ; $648f: $c7
    add b                                         ; $6490: $80
    ldh [$c9], a                                  ; $6491: $e0 $c9
    jp $e702                                      ; $6493: $c3 $02 $e7


    rst $38                                       ; $6496: $ff
    ld b, $ff                                     ; $6497: $06 $ff
    add hl, bc                                    ; $6499: $09
    rst $38                                       ; $649a: $ff
    ld c, $e7                                     ; $649b: $0e $e7
    inc b                                         ; $649d: $04
    db $e3                                        ; $649e: $e3
    db $ed                                        ; $649f: $ed
    inc bc                                        ; $64a0: $03
    ld d, b                                       ; $64a1: $50
    and c                                         ; $64a2: $a1
    ldh a, [$1f]                                  ; $64a3: $f0 $1f
    cp $e2                                        ; $64a5: $fe $e2
    ld e, a                                       ; $64a7: $5f
    ldh [$bf], a                                  ; $64a8: $e0 $bf
    db $fd                                        ; $64aa: $fd
    ld b, b                                       ; $64ab: $40
    dec h                                         ; $64ac: $25
    and b                                         ; $64ad: $a0
    ld hl, sp-$41                                 ; $64ae: $f8 $bf
    and d                                         ; $64b0: $a2
    cp $e2                                        ; $64b1: $fe $e2
    cp $7d                                        ; $64b3: $fe $7d
    ld [bc], a                                    ; $64b5: $02
    cp $e0                                        ; $64b6: $fe $e0
    inc a                                         ; $64b8: $3c
    db $fc                                        ; $64b9: $fc
    ld a, a                                       ; $64ba: $7f
    jp nz, Jump_037_7eff                          ; $64bb: $c2 $ff $7e

    pop hl                                        ; $64be: $e1
    ld a, a                                       ; $64bf: $7f
    adc d                                         ; $64c0: $8a
    rst $38                                       ; $64c1: $ff
    and d                                         ; $64c2: $a2
    ld a, a                                       ; $64c3: $7f
    ld e, h                                       ; $64c4: $5c
    ccf                                           ; $64c5: $3f
    jr c, jr_037_6468                             ; $64c6: $38 $a0

jr_037_64c8:
    push bc                                       ; $64c8: $c5
    rst $38                                       ; $64c9: $ff
    ld e, a                                       ; $64ca: $5f
    ld [hl], d                                    ; $64cb: $72
    ld a, a                                       ; $64cc: $7f
    ld [hl], b                                    ; $64cd: $70
    ld c, a                                       ; $64ce: $4f
    ld a, b                                       ; $64cf: $78
    ld b, a                                       ; $64d0: $47
    ld a, h                                       ; $64d1: $7c
    rst $30                                       ; $64d2: $f7
    add e                                         ; $64d3: $83
    rst $38                                       ; $64d4: $ff
    add b                                         ; $64d5: $80
    push af                                       ; $64d6: $f5
    add b                                         ; $64d7: $80
    db $fc                                        ; $64d8: $fc
    rst $18                                       ; $64d9: $df
    rst $38                                       ; $64da: $ff
    dec de                                        ; $64db: $1b
    rst $18                                       ; $64dc: $df
    xor $3e                                       ; $64dd: $ee $3e
    jp nz, $827e                                  ; $64df: $c2 $7e $82

    adc l                                         ; $64e2: $8d
    and b                                         ; $64e3: $a0
    rrca                                          ; $64e4: $0f
    db $fc                                        ; $64e5: $fc

jr_037_64e6:
    rst $28                                       ; $64e6: $ef
    rst $38                                       ; $64e7: $ff
    ldh a, [$7f]                                  ; $64e8: $f0 $7f
    ldh [rP1], a                                  ; $64ea: $e0 $00
    and l                                         ; $64ec: $a5
    rst $00                                       ; $64ed: $c7
    ret nz                                        ; $64ee: $c0

    rst $20                                       ; $64ef: $e7
    rra                                           ; $64f0: $1f
    jr nz, jr_037_64e6                            ; $64f1: $20 $f3

    db $10                                        ; $64f3: $10
    di                                            ; $64f4: $f3

jr_037_64f5:
    db $10                                        ; $64f5: $10
    sub b                                         ; $64f6: $90
    ld [$e050], a                                 ; $64f7: $ea $50 $e0
    sub b                                         ; $64fa: $90
    db $eb                                        ; $64fb: $eb
    dec hl                                        ; $64fc: $2b
    db $fc                                        ; $64fd: $fc
    rst $18                                       ; $64fe: $df
    sub b                                         ; $64ff: $90
    ld [$0e81], a                                 ; $6500: $ea $81 $0e
    ldh [rSB], a                                  ; $6503: $e0 $01
    jr nz, @-$53                                  ; $6505: $20 $ab

    and h                                         ; $6507: $a4
    and b                                         ; $6508: $a0
    rst $30                                       ; $6509: $f7
    add c                                         ; $650a: $81
    rst $38                                       ; $650b: $ff
    add a                                         ; $650c: $87
    ret nc                                        ; $650d: $d0

jr_037_650e:
    and b                                         ; $650e: $a0
    ld hl, $11ff                                  ; $650f: $21 $ff $11
    rst $38                                       ; $6512: $ff
    or a                                          ; $6513: $b7
    ld de, $20bf                                  ; $6514: $11 $bf $20
    ld l, h                                       ; $6517: $6c
    ldh [$f9], a                                  ; $6518: $e0 $f9
    add a                                         ; $651a: $87
    rra                                           ; $651b: $1f
    and b                                         ; $651c: $a0
    nop                                           ; $651d: $00
    ld hl, sp+$77                                 ; $651e: $f8 $77
    add c                                         ; $6520: $81
    ld [hl], e                                    ; $6521: $73
    add b                                         ; $6522: $80
    jr nz, jr_037_64c8                            ; $6523: $20 $a3

    ld a, [hl]                                    ; $6525: $7e
    ret nz                                        ; $6526: $c0

    db $fc                                        ; $6527: $fc
    ret nz                                        ; $6528: $c0

    ld a, h                                       ; $6529: $7c
    rst $18                                       ; $652a: $df
    ret nz                                        ; $652b: $c0

    ld hl, sp-$80                                 ; $652c: $f8 $80
    add d                                         ; $652e: $82
    nop                                           ; $652f: $00
    call nc, $80e0                                ; $6530: $d4 $e0 $80
    rst $38                                       ; $6533: $ff
    ld a, l                                       ; $6534: $7d
    add e                                         ; $6535: $83
    jp c, $40c0                                   ; $6536: $da $c0 $40

    rst $38                                       ; $6539: $ff
    jr nz, @+$01                                  ; $653a: $20 $ff

    jr nz, jr_037_650e                            ; $653c: $20 $d0

    ldh [rIE], a                                  ; $653e: $e0 $ff
    add c                                         ; $6540: $81
    rst $38                                       ; $6541: $ff
    sbc [hl]                                      ; $6542: $9e
    pop hl                                        ; $6543: $e1
    cp a                                          ; $6544: $bf
    ret nz                                        ; $6545: $c0

    rst $38                                       ; $6546: $ff
    ret nz                                        ; $6547: $c0

    dec de                                        ; $6548: $1b
    rst $38                                       ; $6549: $ff
    cp a                                          ; $654a: $bf
    db $fc                                        ; $654b: $fc
    ldh [rIE], a                                  ; $654c: $e0 $ff
    ld a, a                                       ; $654e: $7f
    jr nz, jr_037_64f5                            ; $654f: $20 $a4

    ret nc                                        ; $6551: $d0

    rst $20                                       ; $6552: $e7
    scf                                           ; $6553: $37
    pop hl                                        ; $6554: $e1
    rst $20                                       ; $6555: $e7
    adc h                                         ; $6556: $8c
    rst $38                                       ; $6557: $ff
    ld b, e                                       ; $6558: $43
    adc $e3                                       ; $6559: $ce $e3
    and b                                         ; $655b: $a0
    ldh [$90], a                                  ; $655c: $e0 $90
    rst $38                                       ; $655e: $ff
    ld hl, $fe9f                                  ; $655f: $21 $9f $fe
    ld h, e                                       ; $6562: $63
    db $fc                                        ; $6563: $fc
    rst $08                                       ; $6564: $cf
    ldh a, [rNR22]                                ; $6565: $f0 $17
    add b                                         ; $6567: $80
    ret nc                                        ; $6568: $d0

    ldh [$bf], a                                  ; $6569: $e0 $bf
    cp $ba                                        ; $656b: $fe $ba
    ldh [$e0], a                                  ; $656d: $e0 $e0
    ld a, $e0                                     ; $656f: $3e $e0
    ld e, $f0                                     ; $6571: $1e $f0
    inc e                                         ; $6573: $1c
    ldh a, [$3f]                                  ; $6574: $f0 $3f
    db $fc                                        ; $6576: $fc
    ldh a, [rNR23]                                ; $6577: $f0 $18
    ldh a, [$e2]                                  ; $6579: $f0 $e2
    ldh [rNR14], a                                ; $657b: $e0 $14
    and b                                         ; $657d: $a0
    and b                                         ; $657e: $a0
    ld [$10f8], a                                 ; $657f: $ea $f8 $10
    adc b                                         ; $6582: $88
    add b                                         ; $6583: $80
    and b                                         ; $6584: $a0
    ld [c], a                                     ; $6585: $e2
    ld h, b                                       ; $6586: $60
    ld b, b                                       ; $6587: $40
    rst $38                                       ; $6588: $ff
    add e                                         ; $6589: $83
    db $fc                                        ; $658a: $fc
    rst $00                                       ; $658b: $c7
    rst $38                                       ; $658c: $ff
    cp b                                          ; $658d: $b8
    rst $38                                       ; $658e: $ff
    or b                                          ; $658f: $b0
    rst $38                                       ; $6590: $ff
    rst $18                                       ; $6591: $df
    ld a, a                                       ; $6592: $7f
    ldh [$3f], a                                  ; $6593: $e0 $3f
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    jp $c740                                      ; $6598: $c3 $40 $c7


    ret nz                                        ; $659b: $c0

    cpl                                           ; $659c: $2f
    ldh [$7f], a                                  ; $659d: $e0 $7f
    rra                                           ; $659f: $1f
    ldh a, [rNR22]                                ; $65a0: $f0 $17
    ldh a, [$f7]                                  ; $65a2: $f0 $f7
    ldh a, [rNR13]                                ; $65a4: $f0 $13
    xor e                                         ; $65a6: $ab
    pop hl                                        ; $65a7: $e1
    rst $38                                       ; $65a8: $ff
    jr nz, @+$01                                  ; $65a9: $20 $ff

    ld b, a                                       ; $65ab: $47
    ld hl, sp+$4f                                 ; $65ac: $f8 $4f
    or b                                          ; $65ae: $b0
    rst $38                                       ; $65af: $ff
    and b                                         ; $65b0: $a0
    sub $e0                                       ; $65b1: $d6 $e0
    ldh [$c0], a                                  ; $65b3: $e0 $c0
    ld a, a                                       ; $65b5: $7f
    ldh [$e3], a                                  ; $65b6: $e0 $e3
    ld c, a                                       ; $65b8: $4f
    sbc $e0                                       ; $65b9: $de $e0
    daa                                           ; $65bb: $27
    ldh [$ef], a                                  ; $65bc: $e0 $ef
    rst $20                                       ; $65be: $e7
    ldh [rNR44], a                                ; $65bf: $e0 $23
    ldh [$a2], a                                  ; $65c1: $e0 $a2
    ld h, b                                       ; $65c3: $60
    ld b, c                                       ; $65c4: $41
    rst $38                                       ; $65c5: $ff
    ld c, a                                       ; $65c6: $4f
    ld hl, sp+$72                                 ; $65c7: $f8 $72
    ret nz                                        ; $65c9: $c0

    db $e4                                        ; $65ca: $e4
    pop hl                                        ; $65cb: $e1
    ldh [$e3], a                                  ; $65cc: $e0 $e3
    add b                                         ; $65ce: $80
    rst $00                                       ; $65cf: $c7
    add b                                         ; $65d0: $80
    adc a                                         ; $65d1: $8f
    add b                                         ; $65d2: $80
    ld a, a                                       ; $65d3: $7f
    ld c, a                                       ; $65d4: $4f
    ret nz                                        ; $65d5: $c0

    ld b, a                                       ; $65d6: $47
    ret nz                                        ; $65d7: $c0

    rst $00                                       ; $65d8: $c7
    ret nz                                        ; $65d9: $c0

    ld h, e                                       ; $65da: $63
    ccf                                           ; $65db: $3f
    ldh [$ea], a                                  ; $65dc: $e0 $ea
    add b                                         ; $65de: $80
    ld h, b                                       ; $65df: $60
    add b                                         ; $65e0: $80
    cp $e1                                        ; $65e1: $fe $e1
    cp a                                          ; $65e3: $bf
    cp $e0                                        ; $65e4: $fe $e0
    sbc a                                         ; $65e6: $9f
    add b                                         ; $65e7: $80
    pop bc                                        ; $65e8: $c1
    db $e4                                        ; $65e9: $e4
    db $f4                                        ; $65ea: $f4
    ld [c], a                                     ; $65eb: $e2
    ldh a, [$e9]                                  ; $65ec: $f0 $e9
    nop                                           ; $65ee: $00
    rst $38                                       ; $65ef: $ff
    db $ec                                        ; $65f0: $ec
    ret nz                                        ; $65f1: $c0

    db $e3                                        ; $65f2: $e3
    adc a                                         ; $65f3: $8f
    add b                                         ; $65f4: $80
    add a                                         ; $65f5: $87
    adc $fe                                       ; $65f6: $ce $fe
    ldh [$e3], a                                  ; $65f8: $e0 $e3
    add b                                         ; $65fa: $80
    di                                            ; $65fb: $f3
    call nz, $f0e2                                ; $65fc: $c4 $e2 $f0
    ld h, a                                       ; $65ff: $67
    add d                                         ; $6600: $82
    add b                                         ; $6601: $80
    cpl                                           ; $6602: $2f
    jp nz, $e280                                  ; $6603: $c2 $80 $e2

    add b                                         ; $6606: $80
    ldh a, [$80]                                  ; $6607: $f0 $80
    add b                                         ; $6609: $80
    or b                                          ; $660a: $b0
    add b                                         ; $660b: $80
    sub [hl]                                      ; $660c: $96
    ldh [$0d], a                                  ; $660d: $e0 $0d
    rst $08                                       ; $660f: $cf
    ldh a, [$ec]                                  ; $6610: $f0 $ec
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
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
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    rst $38                                       ; $6622: $ff
    di                                            ; $6623: $f3
    nop                                           ; $6624: $00
    dec e                                         ; $6625: $1d
    nop                                           ; $6626: $00
    and $00                                       ; $6627: $e6 $00
    push af                                       ; $6629: $f5
    cp d                                          ; $662a: $ba
    cp $e0                                        ; $662b: $fe $e0
    and $f6                                       ; $662d: $e6 $f6
    ldh [rIE], a                                  ; $662f: $e0 $ff
    rst $38                                       ; $6631: $ff
    rst $38                                       ; $6632: $ff
    nop                                           ; $6633: $00
    cp $fe                                        ; $6634: $fe $fe
    jp hl                                         ; $6636: $e9


    di                                            ; $6637: $f3
    nop                                           ; $6638: $00
    rrca                                          ; $6639: $0f
    nop                                           ; $663a: $00
    ld a, c                                       ; $663b: $79
    nop                                           ; $663c: $00
    ld h, c                                       ; $663d: $61
    rst $38                                       ; $663e: $ff
    nop                                           ; $663f: $00
    ld b, c                                       ; $6640: $41
    nop                                           ; $6641: $00
    inc bc                                        ; $6642: $03
    nop                                           ; $6643: $00
    rlca                                          ; $6644: $07
    nop                                           ; $6645: $00
    rra                                           ; $6646: $1f
    cp $e4                                        ; $6647: $fe $e4
    and $f1                                       ; $6649: $e6 $f1
    ld bc, $03ce                                  ; $664b: $01 $ce $03
    cp h                                          ; $664e: $bc
    rrca                                          ; $664f: $0f
    ld [hl], e                                    ; $6650: $73
    db $fd                                        ; $6651: $fd
    rra                                           ; $6652: $1f
    jp nc, $efe5                                  ; $6653: $d2 $e5 $ef

    ldh [rNR31], a                                ; $6656: $e0 $1b
    ld hl, sp+$07                                 ; $6658: $f8 $07
    cp $f9                                        ; $665a: $fe $f9
    add hl, de                                    ; $665c: $19
    or d                                          ; $665d: $b2
    ldh [$d0], a                                  ; $665e: $e0 $d0
    pop hl                                        ; $6660: $e1
    ld h, e                                       ; $6661: $63
    inc bc                                        ; $6662: $03
    ld b, a                                       ; $6663: $47
    inc b                                         ; $6664: $04
    rlca                                          ; $6665: $07
    or $fe                                        ; $6666: $f6 $fe
    ldh [$1f], a                                  ; $6668: $e0 $1f
    inc b                                         ; $666a: $04
    or d                                          ; $666b: $b2
    db $e4                                        ; $666c: $e4
    add b                                         ; $666d: $80
    ldh a, [$80]                                  ; $666e: $f0 $80
    rst $08                                       ; $6670: $cf
    rst $18                                       ; $6671: $df
    add c                                         ; $6672: $81
    cp d                                          ; $6673: $ba
    add e                                         ; $6674: $83
    db $ec                                        ; $6675: $ec
    adc a                                         ; $6676: $8f
    and d                                         ; $6677: $a2
    push hl                                       ; $6678: $e5
    rrca                                          ; $6679: $0f
    nop                                           ; $667a: $00
    rst $38                                       ; $667b: $ff
    di                                            ; $667c: $f3
    ldh [rNR33], a                                ; $667d: $e0 $1d
    ld hl, sp+$07                                 ; $667f: $f8 $07
    rst $38                                       ; $6681: $ff
    rst $08                                       ; $6682: $cf
    nop                                           ; $6683: $00
    rst $38                                       ; $6684: $ff
    ldh a, [rP1]                                  ; $6685: $f0 $00
    sbc [hl]                                      ; $6687: $9e
    nop                                           ; $6688: $00
    add [hl]                                      ; $6689: $86
    nop                                           ; $668a: $00
    add d                                         ; $668b: $82
    nop                                           ; $668c: $00
    cp a                                          ; $668d: $bf
    ret nz                                        ; $668e: $c0

    nop                                           ; $668f: $00
    ldh [rP1], a                                  ; $6690: $e0 $00
    ld hl, sp-$80                                 ; $6692: $f8 $80
    add d                                         ; $6694: $82
    push hl                                       ; $6695: $e5
    ldh a, [$3f]                                  ; $6696: $f0 $3f
    nop                                           ; $6698: $00
    rst $08                                       ; $6699: $cf
    nop                                           ; $669a: $00
    cp b                                          ; $669b: $b8
    nop                                           ; $669c: $00
    ld h, a                                       ; $669d: $67
    ld [hl], h                                    ; $669e: $74
    ld [$e166], a                                 ; $669f: $ea $66 $e1
    rst $38                                       ; $66a2: $ff
    ld d, a                                       ; $66a3: $57
    inc e                                         ; $66a4: $1c
    ld l, a                                       ; $66a5: $6f
    jr c, jr_037_6727                             ; $66a6: $38 $7f

    inc sp                                        ; $66a8: $33
    cp a                                          ; $66a9: $bf
    jr nc, @+$01                                  ; $66aa: $30 $ff

    rst $38                                       ; $66ac: $ff
    daa                                           ; $66ad: $27
    ei                                            ; $66ae: $fb
    ccf                                           ; $66af: $3f
    ei                                            ; $66b0: $fb
    ld a, a                                       ; $66b1: $7f
    ei                                            ; $66b2: $fb
    sbc a                                         ; $66b3: $9f
    rst $38                                       ; $66b4: $ff
    db $fd                                        ; $66b5: $fd
    rst $20                                       ; $66b6: $e7
    cp $03                                        ; $66b7: $fe $03
    rst $38                                       ; $66b9: $ff
    add hl, de                                    ; $66ba: $19
    rst $38                                       ; $66bb: $ff
    ld bc, $ff7f                                  ; $66bc: $01 $7f $ff
    inc e                                         ; $66bf: $1c
    rst $28                                       ; $66c0: $ef
    cp a                                          ; $66c1: $bf
    rst $28                                       ; $66c2: $ef
    rst $38                                       ; $66c3: $ff
    rst $28                                       ; $66c4: $ef
    ld b, d                                       ; $66c5: $42
    pop hl                                        ; $66c6: $e1
    db $fd                                        ; $66c7: $fd
    add b                                         ; $66c8: $80
    cp $e6                                        ; $66c9: $fe $e6
    ret nz                                        ; $66cb: $c0

    rst $38                                       ; $66cc: $ff
    jr nz, @+$01                                  ; $66cd: $20 $ff

    inc b                                         ; $66cf: $04
    rst $38                                       ; $66d0: $ff
    rst $18                                       ; $66d1: $df
    inc c                                         ; $66d2: $0c
    rst $38                                       ; $66d3: $ff
    inc d                                         ; $66d4: $14
    rst $38                                       ; $66d5: $ff
    rla                                           ; $66d6: $17
    db $fc                                        ; $66d7: $fc
    ldh [rNR10], a                                ; $66d8: $e0 $10
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    add hl, bc                                    ; $66dc: $09
    rst $38                                       ; $66dd: $ff
    add hl, bc                                    ; $66de: $09
    db $d3                                        ; $66df: $d3
    sbc a                                         ; $66e0: $9f
    rst $10                                       ; $66e1: $d7
    sbc h                                         ; $66e2: $9c
    rst $28                                       ; $66e3: $ef
    ld a, a                                       ; $66e4: $7f
    cp b                                          ; $66e5: $b8
    cp a                                          ; $66e6: $bf
    inc sp                                        ; $66e7: $33
    rst $38                                       ; $66e8: $ff
    or b                                          ; $66e9: $b0
    rst $38                                       ; $66ea: $ff

Jump_037_66eb:
    ld h, a                                       ; $66eb: $67
    ret nz                                        ; $66ec: $c0

    ldh [$7f], a                                  ; $66ed: $e0 $7f
    rst $38                                       ; $66ef: $ff
    dec de                                        ; $66f0: $1b
    cp $ff                                        ; $66f1: $fe $ff
    rst $20                                       ; $66f3: $e7
    rst $38                                       ; $66f4: $ff
    ld [bc], a                                    ; $66f5: $02
    cp [hl]                                       ; $66f6: $be
    rst $20                                       ; $66f7: $e7
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    ld [hl], b                                    ; $66fa: $70
    rst $38                                       ; $66fb: $ff
    jr z, @+$01                                   ; $66fc: $28 $ff

    jr @+$01                                      ; $66fe: $18 $ff

    ld [$ffab], sp                                ; $6700: $08 $ab $ff
    adc b                                         ; $6703: $88
    cp $e2                                        ; $6704: $fe $e2
    call nz, $c2f2                                ; $6706: $c4 $f2 $c2
    ld bc, $e0de                                  ; $6709: $01 $de $e0
    inc b                                         ; $670c: $04
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    dec b                                         ; $670f: $05
    rst $38                                       ; $6710: $ff
    rlca                                          ; $6711: $07
    db $fc                                        ; $6712: $fc
    rlca                                          ; $6713: $07
    ld e, l                                       ; $6714: $5d
    nop                                           ; $6715: $00
    rst $38                                       ; $6716: $ff
    db $fd                                        ; $6717: $fd
    ldh a, [rIE]                                  ; $6718: $f0 $ff
    ld [$74fc], sp                                ; $671a: $08 $fc $74
    rst $38                                       ; $671d: $ff
    inc hl                                        ; $671e: $23
    cp a                                          ; $671f: $bf
    rst $38                                       ; $6720: $ff
    pop hl                                        ; $6721: $e1
    rra                                           ; $6722: $1f
    pop af                                        ; $6723: $f1
    rra                                           ; $6724: $1f
    jp hl                                         ; $6725: $e9


    ret z                                         ; $6726: $c8

jr_037_6727:
    jp $ff7d                                      ; $6727: $c3 $7d $ff


    ld [hl], b                                    ; $672a: $70
    ei                                            ; $672b: $fb
    ret z                                         ; $672c: $c8

    rst $38                                       ; $672d: $ff
    inc h                                         ; $672e: $24
    db $fd                                        ; $672f: $fd
    inc b                                         ; $6730: $04
    db $fd                                        ; $6731: $fd
    xor h                                         ; $6732: $ac
    db $10                                        ; $6733: $10
    push hl                                       ; $6734: $e5
    jp z, Jump_000_03e3                           ; $6735: $ca $e3 $03

    cp $d0                                        ; $6738: $fe $d0
    ldh [$5d], a                                  ; $673a: $e0 $5d

jr_037_673c:
    ld a, [hl-]                                   ; $673c: $3a
    ldh [$f8], a                                  ; $673d: $e0 $f8
    push de                                       ; $673f: $d5
    ld [hl], b                                    ; $6740: $70
    or b                                          ; $6741: $b0
    ldh [rNR22], a                                ; $6742: $e0 $17
    adc $e0                                       ; $6744: $ce $e0
    ld hl, sp-$68                                 ; $6746: $f8 $98
    call nz, $ff08                                ; $6748: $c4 $08 $ff
    ld a, a                                       ; $674b: $7f
    db $f4                                        ; $674c: $f4
    rst $38                                       ; $674d: $ff
    ld a, [bc]                                    ; $674e: $0a
    rst $38                                       ; $674f: $ff
    add d                                         ; $6750: $82
    rst $38                                       ; $6751: $ff
    ld b, d                                       ; $6752: $42
    ld hl, sp-$40                                 ; $6753: $f8 $c0
    cp $80                                        ; $6755: $fe $80
    res 6, a                                      ; $6757: $cb $b7
    rst $38                                       ; $6759: $ff
    sub b                                         ; $675a: $90
    rst $38                                       ; $675b: $ff
    or b                                          ; $675c: $b0
    rst $18                                       ; $675d: $df
    ld a, b                                       ; $675e: $78
    db $eb                                        ; $675f: $eb
    rst $38                                       ; $6760: $ff
    add hl, sp                                    ; $6761: $39
    ld a, h                                       ; $6762: $7c
    ldh [rDIV], a                                 ; $6763: $e0 $04
    ld b, d                                       ; $6765: $42
    ldh [$bd], a                                  ; $6766: $e0 $bd
    rst $38                                       ; $6768: $ff
    and c                                         ; $6769: $a1
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    ld b, c                                       ; $676c: $41
    rst $38                                       ; $676d: $ff
    inc bc                                        ; $676e: $03
    rst $38                                       ; $676f: $ff
    inc sp                                        ; $6770: $33
    rst $18                                       ; $6771: $df
    ld a, [c]                                     ; $6772: $f2
    rst $38                                       ; $6773: $ff
    sbc a                                         ; $6774: $9f
    db $f4                                        ; $6775: $f4
    rst $38                                       ; $6776: $ff
    ld h, h                                       ; $6777: $64
    ldh a, [$a0]                                  ; $6778: $f0 $a0
    rst $28                                       ; $677a: $ef
    jr nz, jr_037_673c                            ; $677b: $20 $bf

    ld hl, sp-$60                                 ; $677d: $f8 $a0
    ld h, a                                       ; $677f: $67

jr_037_6780:
    ret nz                                        ; $6780: $c0

    db $dd                                        ; $6781: $dd
    add b                                         ; $6782: $80
    xor b                                         ; $6783: $a8
    pop hl                                        ; $6784: $e1
    cp b                                          ; $6785: $b8
    rst $38                                       ; $6786: $ff
    nop                                           ; $6787: $00
    rrca                                          ; $6788: $0f
    ld [$04f7], sp                                ; $6789: $08 $f7 $04
    rra                                           ; $678c: $1f
    ld [bc], a                                    ; $678d: $02
    rst $20                                       ; $678e: $e7
    ei                                            ; $678f: $fb
    ld [bc], a                                    ; $6790: $02
    cp e                                          ; $6791: $bb
    cp $e0                                        ; $6792: $fe $e0
    rst $20                                       ; $6794: $e7
    ld [bc], a                                    ; $6795: $02
    dec e                                         ; $6796: $1d
    ld bc, $95fb                                  ; $6797: $01 $fb $95
    sbc a                                         ; $679a: $9f
    cp [hl]                                       ; $679b: $be
    and $38                                       ; $679c: $e6 $38
    jr c, jr_037_6780                             ; $679e: $38 $e0

    inc c                                         ; $67a0: $0c
    xor $c0                                       ; $67a1: $ee $c0
    cp [hl]                                       ; $67a3: $be
    db $e3                                        ; $67a4: $e3
    dec bc                                        ; $67a5: $0b
    rst $28                                       ; $67a6: $ef
    rst $38                                       ; $67a7: $ff
    inc sp                                        ; $67a8: $33
    rst $38                                       ; $67a9: $ff
    jp $e03e                                      ; $67aa: $c3 $3e $e0


    ld b, h                                       ; $67ad: $44
    rst $38                                       ; $67ae: $ff
    jp nz, $febf                                  ; $67af: $c2 $bf $fe

    ld b, d                                       ; $67b2: $42
    rst $38                                       ; $67b3: $ff
    jp nz, $c27f                                  ; $67b4: $c2 $7f $c2

    add d                                         ; $67b7: $82
    ldh [$84], a                                  ; $67b8: $e0 $84
    rst $38                                       ; $67ba: $ff
    db $fc                                        ; $67bb: $fc
    add h                                         ; $67bc: $84
    add hl, de                                    ; $67bd: $19
    rra                                           ; $67be: $1f
    db $e3                                        ; $67bf: $e3
    ld a, $43                                     ; $67c0: $3e $43
    ld a, [hl]                                    ; $67c2: $7e
    rst $38                                       ; $67c3: $ff
    rst $00                                       ; $67c4: $c7
    ld a, h                                       ; $67c5: $7c
    rst $00                                       ; $67c6: $c7
    ld a, l                                       ; $67c7: $7d
    rst $28                                       ; $67c8: $ef
    ld a, c                                       ; $67c9: $79
    rst $38                                       ; $67ca: $ff
    jr nc, @+$01                                  ; $67cb: $30 $ff

    rra                                           ; $67cd: $1f
    db $10                                        ; $67ce: $10
    rst $38                                       ; $67cf: $ff
    call nc, Call_000_2efb                        ; $67d0: $d4 $fb $2e
    rst $38                                       ; $67d3: $ff
    rlca                                          ; $67d4: $07
    ei                                            ; $67d5: $fb
    rst $38                                       ; $67d6: $ff
    pop bc                                        ; $67d7: $c1
    adc [hl]                                      ; $67d8: $8e
    ldh [$0e], a                                  ; $67d9: $e0 $0e
    rst $38                                       ; $67db: $ff
    ld a, $df                                     ; $67dc: $3e $df
    ld a, h                                       ; $67de: $7c
    rst $38                                       ; $67df: $ff
    db $fd                                        ; $67e0: $fd
    add h                                         ; $67e1: $84
    rst $38                                       ; $67e2: $ff
    jp nz, $e2ff                                  ; $67e3: $c2 $ff $e2

    rst $38                                       ; $67e6: $ff
    ld h, c                                       ; $67e7: $61
    ld [$c0b6], a                                 ; $67e8: $ea $b6 $c0
    db $10                                        ; $67eb: $10
    cp [hl]                                       ; $67ec: $be
    ret nz                                        ; $67ed: $c0

    ld [$c568], sp                                ; $67ee: $08 $68 $c5
    db $dd                                        ; $67f1: $dd
    ret nz                                        ; $67f2: $c0

    db $fd                                        ; $67f3: $fd
    rst $38                                       ; $67f4: $ff
    jr nc, @+$01                                  ; $67f5: $30 $ff

    jr @-$1a                                      ; $67f7: $18 $e4

    inc a                                         ; $67f9: $3c
    ld [$f30f], sp                                ; $67fa: $08 $0f $f3
    rst $38                                       ; $67fd: $ff
    ccf                                           ; $67fe: $3f
    ld b, a                                       ; $67ff: $47
    ld a, h                                       ; $6800: $7c
    add a                                         ; $6801: $87
    db $fc                                        ; $6802: $fc
    adc a                                         ; $6803: $8f
    ld hl, sp-$71                                 ; $6804: $f8 $8f
    rst $38                                       ; $6806: $ff
    ld sp, hl                                     ; $6807: $f9
    rst $18                                       ; $6808: $df
    pop af                                        ; $6809: $f1
    ld a, a                                       ; $680a: $7f
    ld h, b                                       ; $680b: $60
    cpl                                           ; $680c: $2f
    sub $f3                                       ; $680d: $d6 $f3
    rst $10                                       ; $680f: $d7
    xor a                                         ; $6810: $af
    di                                            ; $6811: $f3
    ld e, [hl]                                    ; $6812: $5e
    call nz, $83e0                                ; $6813: $c4 $e0 $83
    cp d                                          ; $6816: $ba
    ldh [rNR32], a                                ; $6817: $e0 $1c
    rst $38                                       ; $6819: $ff
    rst $30                                       ; $681a: $f7
    ld a, h                                       ; $681b: $7c
    rst $38                                       ; $681c: $ff

jr_037_681d:
    ld b, d                                       ; $681d: $42
    jp nz, Jump_000_31e0                          ; $681e: $c2 $e0 $31

    rst $38                                       ; $6821: $ff
    ret c                                         ; $6822: $d8

jr_037_6823:
    rst $38                                       ; $6823: $ff
    ld a, a                                       ; $6824: $7f
    sbc b                                         ; $6825: $98
    rst $20                                       ; $6826: $e7
    inc a                                         ; $6827: $3c
    rst $38                                       ; $6828: $ff
    inc a                                         ; $6829: $3c
    rst $38                                       ; $682a: $ff
    ld e, $28                                     ; $682b: $1e $28
    jp $e7ff                                      ; $682d: $c3 $ff $e7


    add b                                         ; $6830: $80
    db $dd                                        ; $6831: $dd
    ld b, b                                       ; $6832: $40
    db $fd                                        ; $6833: $fd
    jr nz, jr_037_681d                            ; $6834: $20 $e7

    jr nz, jr_037_6823                            ; $6836: $20 $eb

    ld hl, sp+$10                                 ; $6838: $f8 $10
    add h                                         ; $683a: $84
    ret nz                                        ; $683b: $c0

    ld [bc], a                                    ; $683c: $02
    xor b                                         ; $683d: $a8
    ret nz                                        ; $683e: $c0

    rra                                           ; $683f: $1f

jr_037_6840:
    db $ed                                        ; $6840: $ed
    ccf                                           ; $6841: $3f
    cp a                                          ; $6842: $bf

jr_037_6843:
    push de                                       ; $6843: $d5
    ld a, a                                       ; $6844: $7f
    jp nc, $e27f                                  ; $6845: $d2 $7f $e2

    rst $38                                       ; $6848: $ff
    add [hl]                                      ; $6849: $86
    ret nz                                        ; $684a: $c0

    inc c                                         ; $684b: $0c
    rst $38                                       ; $684c: $ff
    di                                            ; $684d: $f3
    ld a, $e5                                     ; $684e: $3e $e5
    rst $38                                       ; $6850: $ff
    adc c                                         ; $6851: $89
    rst $38                                       ; $6852: $ff
    ld d, b                                       ; $6853: $50
    rst $38                                       ; $6854: $ff
    ld sp, hl                                     ; $6855: $f9
    ld h, b                                       ; $6856: $60
    rst $18                                       ; $6857: $df
    ret nz                                        ; $6858: $c0

    ldh [$a6], a                                  ; $6859: $e0 $a6
    add b                                         ; $685b: $80
    ld b, b                                       ; $685c: $40
    ret nz                                        ; $685d: $c0

    jr nz, jr_037_6840                            ; $685e: $20 $e0

    rst $38                                       ; $6860: $ff
    jr c, jr_037_6843                             ; $6861: $38 $e0

    rst $38                                       ; $6863: $ff
    adc h                                         ; $6864: $8c
    rst $30                                       ; $6865: $f7
    ld e, [hl]                                    ; $6866: $5e
    db $e3                                        ; $6867: $e3
    ld a, [hl]                                    ; $6868: $7e
    rst $38                                       ; $6869: $ff
    jp $e47f                                      ; $686a: $c3 $7f $e4


    ccf                                           ; $686d: $3f
    push de                                       ; $686e: $d5
    rra                                           ; $686f: $1f
    cp l                                          ; $6870: $bd
    rrca                                          ; $6871: $0f
    rst $38                                       ; $6872: $ff
    ld l, d                                       ; $6873: $6a
    rrca                                          ; $6874: $0f
    rst $38                                       ; $6875: $ff
    rlca                                          ; $6876: $07
    cp $0f                                        ; $6877: $fe $0f
    cp $0f                                        ; $6879: $fe $0f
    rst $10                                       ; $687b: $d7
    ld a, [c]                                     ; $687c: $f2
    ccf                                           ; $687d: $3f
    db $e4                                        ; $687e: $e4
    ld c, a                                       ; $687f: $4f
    ret nz                                        ; $6880: $c0

jr_037_6881:
    ld d, c                                       ; $6881: $51
    adc $e0                                       ; $6882: $ce $e0
    ld a, a                                       ; $6884: $7f
    ret z                                         ; $6885: $c8

    rst $38                                       ; $6886: $ff
    jr c, jr_037_6881                             ; $6887: $38 $f8

    ld c, $f8                                     ; $6889: $0e $f8
    ld e, $f8                                     ; $688b: $1e $f8
    ld [hl-], a                                   ; $688d: $32
    ldh a, [rIE]                                  ; $688e: $f0 $ff
    ld h, b                                       ; $6890: $60
    ldh [$e0], a                                  ; $6891: $e0 $e0
    ret nz                                        ; $6893: $c0

    ld a, b                                       ; $6894: $78
    ret nz                                        ; $6895: $c0

    rst $38                                       ; $6896: $ff
    ld c, $ff                                     ; $6897: $0e $ff
    rrca                                          ; $6899: $0f
    dec b                                         ; $689a: $05
    ld a, e                                       ; $689b: $7b
    inc bc                                        ; $689c: $03
    ld h, l                                       ; $689d: $65
    rlca                                          ; $689e: $07
    ld b, l                                       ; $689f: $45
    rlca                                          ; $68a0: $07
    ei                                            ; $68a1: $fb
    inc bc                                        ; $68a2: $03
    inc bc                                        ; $68a3: $03
    ld b, b                                       ; $68a4: $40
    and c                                         ; $68a5: $a1
    rst $18                                       ; $68a6: $df
    ld a, h                                       ; $68a7: $7c
    rst $38                                       ; $68a8: $ff
    db $fc                                        ; $68a9: $fc
    rst $38                                       ; $68aa: $ff
    db $fd                                        ; $68ab: $fd
    ld hl, sp+$20                                 ; $68ac: $f8 $20
    ldh [$e9], a                                  ; $68ae: $e0 $e9
    rst $38                                       ; $68b0: $ff
    reti                                          ; $68b1: $d9


    rst $38                                       ; $68b2: $ff
    ld a, [c]                                     ; $68b3: $f2
    ld l, a                                       ; $68b4: $6f
    db $dd                                        ; $68b5: $dd
    ld a, [hl]                                    ; $68b6: $7e
    ldh [$a0], a                                  ; $68b7: $e0 $a0
    ld b, $fd                                     ; $68b9: $06 $fd
    rlca                                          ; $68bb: $07
    cp $e1                                        ; $68bc: $fe $e1
    rst $38                                       ; $68be: $ff
    rrca                                          ; $68bf: $0f
    rst $38                                       ; $68c0: $ff
    ld sp, hl                                     ; $68c1: $f9
    rrca                                          ; $68c2: $0f
    ld hl, sp-$61                                 ; $68c3: $f8 $9f
    rst $20                                       ; $68c5: $e7
    inc a                                         ; $68c6: $3c
    call nz, $ff7c                                ; $68c7: $c4 $7c $ff
    add [hl]                                      ; $68ca: $86
    db $fc                                        ; $68cb: $fc
    ld c, [hl]                                    ; $68cc: $4e
    ld hl, sp+$0a                                 ; $68cd: $f8 $0a
    ld hl, sp+$10                                 ; $68cf: $f8 $10
    ldh a, [rIE]                                  ; $68d1: $f0 $ff
    db $10                                        ; $68d3: $10
    ldh a, [rNR23]                                ; $68d4: $f0 $18
    ldh a, [rIE]                                  ; $68d6: $f0 $ff
    jr nz, jr_037_68f9                            ; $68d8: $20 $1f

    inc e                                         ; $68da: $1c
    rst $38                                       ; $68db: $ff
    ld a, a                                       ; $68dc: $7f
    dec bc                                        ; $68dd: $0b
    ld h, a                                       ; $68de: $67
    rlca                                          ; $68df: $07
    ld c, e                                       ; $68e0: $4b
    rrca                                          ; $68e1: $0f
    dec bc                                        ; $68e2: $0b
    rrca                                          ; $68e3: $0f
    rst $38                                       ; $68e4: $ff
    rlca                                          ; $68e5: $07
    rlca                                          ; $68e6: $07
    rra                                           ; $68e7: $1f
    ld bc, $f8bf                                  ; $68e8: $01 $bf $f8
    cp a                                          ; $68eb: $bf
    ld hl, sp-$06                                 ; $68ec: $f8 $fa
    ret nz                                        ; $68ee: $c0

    ldh [$f0], a                                  ; $68ef: $e0 $f0
    sbc d                                         ; $68f1: $9a
    and b                                         ; $68f2: $a0

jr_037_68f3:
    jp nc, $b2ff                                  ; $68f3: $d2 $ff $b2

    rst $38                                       ; $68f6: $ff
    db $e4                                        ; $68f7: $e4
    ld [hl], a                                    ; $68f8: $77

jr_037_68f9:
    rst $30                                       ; $68f9: $f7
    rra                                           ; $68fa: $1f
    ei                                            ; $68fb: $fb
    ret z                                         ; $68fc: $c8

    ldh [$f9], a                                  ; $68fd: $e0 $f9
    rrca                                          ; $68ff: $0f
    ld a, [$e0fe]                                 ; $6900: $fa $fe $e0
    ld a, a                                       ; $6903: $7f
    cp $1f                                        ; $6904: $fe $1f
    ld a, [c]                                     ; $6906: $f2
    rra                                           ; $6907: $1f
    rst $38                                       ; $6908: $ff
    jr c, jr_037_68f3                             ; $6909: $38 $e8

    add b                                         ; $690b: $80
    ldh [$27], a                                  ; $690c: $e0 $27
    ld c, $f8                                     ; $690e: $0e $f8
    adc d                                         ; $6910: $8a
    ret nz                                        ; $6911: $c0

    ldh [$50], a                                  ; $6912: $e0 $50
    ld [c], a                                     ; $6914: $e2
    ld bc, $e2fe                                  ; $6915: $01 $fe $e2
    cp d                                          ; $6918: $ba
    and e                                         ; $6919: $a3
    cp $f4                                        ; $691a: $fe $f4
    ldh [$e2], a                                  ; $691c: $e0 $e2
    ccf                                           ; $691e: $3f
    db $e3                                        ; $691f: $e3
    ccf                                           ; $6920: $3f
    ret nz                                        ; $6921: $c0

    ld a, a                                       ; $6922: $7f
    ret nz                                        ; $6923: $c0

    cp $65                                        ; $6924: $fe $65
    and b                                         ; $6926: $a0
    ret nz                                        ; $6927: $c0

    ld a, a                                       ; $6928: $7f
    rst $38                                       ; $6929: $ff
    ld a, a                                       ; $692a: $7f
    rst $38                                       ; $692b: $ff
    ld b, b                                       ; $692c: $40
    add d                                         ; $692d: $82
    db $ec                                        ; $692e: $ec
    ei                                            ; $692f: $fb
    and b                                         ; $6930: $a0
    db $dd                                        ; $6931: $dd
    db $e3                                        ; $6932: $e3
    inc bc                                        ; $6933: $03
    cp $66                                        ; $6934: $fe $66
    ldh [rDIV], a                                 ; $6936: $e0 $04
    ld a, a                                       ; $6938: $7f
    ret nc                                        ; $6939: $d0

    db $f4                                        ; $693a: $f4
    nop                                           ; $693b: $00
    ret nz                                        ; $693c: $c0

    add d                                         ; $693d: $82
    and c                                         ; $693e: $a1
    ld [$a050], sp                                ; $693f: $08 $50 $a0
    jr nz, @+$01                                  ; $6942: $20 $ff

    ld h, b                                       ; $6944: $60
    ld e, d                                       ; $6945: $5a
    rst $38                                       ; $6946: $ff
    rrca                                          ; $6947: $0f
    ld d, d                                       ; $6948: $52
    rra                                           ; $6949: $1f
    ld [hl], e                                    ; $694a: $73
    rra                                           ; $694b: $1f
    and b                                         ; $694c: $a0
    ccf                                           ; $694d: $3f
    ldh [$9e], a                                  ; $694e: $e0 $9e
    cp $e0                                        ; $6950: $fe $e0
    and b                                         ; $6952: $a0
    ccf                                           ; $6953: $3f
    cp a                                          ; $6954: $bf
    ccf                                           ; $6955: $3f
    inc hl                                        ; $6956: $23
    and c                                         ; $6957: $a1
    ld e, a                                       ; $6958: $5f
    add a                                         ; $6959: $87
    rst $38                                       ; $695a: $ff
    di                                            ; $695b: $f3
    rst $38                                       ; $695c: $ff
    ld a, a                                       ; $695d: $7f
    or e                                          ; $695e: $b3
    ldh [$fc], a                                  ; $695f: $e0 $fc
    rst $20                                       ; $6961: $e7
    rst $38                                       ; $6962: $ff
    ret nz                                        ; $6963: $c0

    ld h, e                                       ; $6964: $63
    ccf                                           ; $6965: $3f
    rst $38                                       ; $6966: $ff
    ld e, a                                       ; $6967: $5f

jr_037_6968:
    rra                                           ; $6968: $1f
    ld h, [hl]                                    ; $6969: $66
    inc bc                                        ; $696a: $03
    cp d                                          ; $696b: $ba
    inc bc                                        ; $696c: $03
    call z, Call_037_7f07                         ; $696d: $cc $07 $7f
    db $f4                                        ; $6970: $f4
    rlca                                          ; $6971: $07
    sbc a                                         ; $6972: $9f
    rrca                                          ; $6973: $0f
    adc a                                         ; $6974: $8f
    ld [$b8f0], sp                                ; $6975: $08 $f0 $b8
    ret nz                                        ; $6978: $c0

    db $fc                                        ; $6979: $fc
    or [hl]                                       ; $697a: $b6
    pop bc                                        ; $697b: $c1
    ld a, e                                       ; $697c: $7b
    add d                                         ; $697d: $82
    rst $38                                       ; $697e: $ff
    db $fc                                        ; $697f: $fc
    ld a, a                                       ; $6980: $7f
    rra                                           ; $6981: $1f
    ldh a, [rIF]                                  ; $6982: $f0 $0f
    pop af                                        ; $6984: $f1
    ld hl, sp-$02                                 ; $6985: $f8 $fe
    pop hl                                        ; $6987: $e1
    dec [hl]                                      ; $6988: $35
    and b                                         ; $6989: $a0
    cp $e2                                        ; $698a: $fe $e2
    rst $38                                       ; $698c: $ff
    cp $65                                        ; $698d: $fe $65
    ccf                                           ; $698f: $3f
    rst $38                                       ; $6990: $ff

jr_037_6991:
    ld a, h                                       ; $6991: $7c
    rra                                           ; $6992: $1f
    cp [hl]                                       ; $6993: $be
    rlca                                          ; $6994: $07
    adc $03                                       ; $6995: $ce $03
    db $f4                                        ; $6997: $f4
    rlca                                          ; $6998: $07
    rst $38                                       ; $6999: $ff
    sbc h                                         ; $699a: $9c
    rlca                                          ; $699b: $07
    add a                                         ; $699c: $87
    rlca                                          ; $699d: $07
    ldh a, [$3f]                                  ; $699e: $f0 $3f
    ldh [rIE], a                                  ; $69a0: $e0 $ff
    ld a, c                                       ; $69a2: $79
    and b                                         ; $69a3: $a0
    rst $00                                       ; $69a4: $c7
    add b                                         ; $69a5: $80
    ei                                            ; $69a6: $fb
    ld h, e                                       ; $69a7: $63
    ld hl, sp-$01                                 ; $69a8: $f8 $ff
    rra                                           ; $69aa: $1f
    ldh a, [$ce]                                  ; $69ab: $f0 $ce
    db $eb                                        ; $69ad: $eb
    ld a, $ac                                     ; $69ae: $3e $ac
    add b                                         ; $69b0: $80
    ld b, b                                       ; $69b1: $40
    rst $38                                       ; $69b2: $ff
    ld b, [hl]                                    ; $69b3: $46
    rst $38                                       ; $69b4: $ff
    ld hl, $80a6                                  ; $69b5: $21 $a6 $80
    cp $e3                                        ; $69b8: $fe $e3
    call $c204                                    ; $69ba: $cd $04 $c2
    add b                                         ; $69bd: $80
    ld bc, $cbff                                  ; $69be: $01 $ff $cb
    pop hl                                        ; $69c1: $e1
    cp $e1                                        ; $69c2: $fe $e1
    ld d, b                                       ; $69c4: $50
    ldh a, [$9f]                                  ; $69c5: $f0 $9f
    and b                                         ; $69c7: $a0
    rst $08                                       ; $69c8: $cf
    ld b, b                                       ; $69c9: $40
    cp b                                          ; $69ca: $b8
    add b                                         ; $69cb: $80
    jr nz, @-$3e                                  ; $69cc: $20 $c0

    ld e, $c0                                     ; $69ce: $1e $c0
    rst $20                                       ; $69d0: $e7
    rst $28                                       ; $69d1: $ef

jr_037_69d2:
    ld b, b                                       ; $69d2: $40
    ld hl, sp+$20                                 ; $69d3: $f8 $20
    cp a                                          ; $69d5: $bf
    ret c                                         ; $69d6: $d8

    pop hl                                        ; $69d7: $e1
    db $10                                        ; $69d8: $10
    rst $38                                       ; $69d9: $ff
    ld [de], a                                    ; $69da: $12
    ld d, d                                       ; $69db: $52
    adc $e0                                       ; $69dc: $ce $e0
    ld b, b                                       ; $69de: $40
    add $e0                                       ; $69df: $c6 $e0
    jr nz, jr_037_6968                            ; $69e1: $20 $85

    db $10                                        ; $69e3: $10
    adc $e0                                       ; $69e4: $ce $e0
    ld h, b                                       ; $69e6: $60
    jp z, $dfe1                                   ; $69e7: $ca $e1 $df

    ldh a, [rLCDC]                                ; $69ea: $f0 $40
    rst $08                                       ; $69ec: $cf
    ld b, b                                       ; $69ed: $40
    ld hl, sp-$2a                                 ; $69ee: $f8 $d6
    ldh [$dd], a                                  ; $69f0: $e0 $dd
    add b                                         ; $69f2: $80
    cp a                                          ; $69f3: $bf
    db $fd                                        ; $69f4: $fd
    ldh [rIE], a                                  ; $69f5: $e0 $ff
    ret c                                         ; $69f7: $d8

    db $fc                                        ; $69f8: $fc
    inc b                                         ; $69f9: $04
    ldh a, [$8c]                                  ; $69fa: $f0 $8c
    ld bc, $8fff                                  ; $69fc: $01 $ff $8f
    ld [$08cf], sp                                ; $69ff: $08 $cf $08
    rst $28                                       ; $6a02: $ef
    ld [$11ff], sp                                ; $6a03: $08 $ff $11
    ld c, d                                       ; $6a06: $4a
    cp $e0                                        ; $6a07: $fe $e0
    jr nz, jr_037_6991                            ; $6a09: $20 $86

    ldh [$81], a                                  ; $6a0b: $e0 $81
    or $80                                        ; $6a0d: $f6 $80
    ld h, b                                       ; $6a0f: $60
    ld h, c                                       ; $6a10: $61
    jr nz, jr_037_69d2                            ; $6a11: $20 $bf

    pop bc                                        ; $6a13: $c1
    cp $16                                        ; $6a14: $fe $16
    add c                                         ; $6a16: $81
    call nz, $f7fc                                ; $6a17: $c4 $fc $f7
    inc a                                         ; $6a1a: $3c
    ld hl, sp+$18                                 ; $6a1b: $f8 $18
    rst $30                                       ; $6a1d: $f7
    rst $38                                       ; $6a1e: $ff
    db $10                                        ; $6a1f: $10
    db $fd                                        ; $6a20: $fd
    jr nz, @-$21                                  ; $6a21: $20 $dd

    ret nz                                        ; $6a23: $c0

    rst $20                                       ; $6a24: $e7
    add b                                         ; $6a25: $80
    ld hl, sp-$03                                 ; $6a26: $f8 $fd
    ld h, b                                       ; $6a28: $60
    or b                                          ; $6a29: $b0
    adc e                                         ; $6a2a: $8b
    rra                                           ; $6a2b: $1f
    rrca                                          ; $6a2c: $0f
    add a                                         ; $6a2d: $87
    inc b                                         ; $6a2e: $04
    rst $00                                       ; $6a2f: $c7
    inc b                                         ; $6a30: $04
    ld d, e                                       ; $6a31: $53
    rst $20                                       ; $6a32: $e7
    inc b                                         ; $6a33: $04
    or d                                          ; $6a34: $b2
    call nz, $e129                                ; $6a35: $c4 $29 $e1
    rlca                                          ; $6a38: $07
    jr nz, jr_037_6a9d                            ; $6a39: $20 $62

    sub b                                         ; $6a3b: $90
    ld c, [hl]                                    ; $6a3c: $4e
    ldh [$fe], a                                  ; $6a3d: $e0 $fe
    ld [hl], b                                    ; $6a3f: $70
    pop hl                                        ; $6a40: $e1
    ret nz                                        ; $6a41: $c0

    db $fc                                        ; $6a42: $fc
    db $fc                                        ; $6a43: $fc
    rst $38                                       ; $6a44: $ff
    ld [$08f8], sp                                ; $6a45: $08 $f8 $08
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    ld [$10fd], sp                                ; $6a4a: $08 $fd $10
    db $fd                                        ; $6a4d: $fd
    ld h, b                                       ; $6a4e: $60
    rst $20                                       ; $6a4f: $e7
    ret nz                                        ; $6a50: $c0

    ei                                            ; $6a51: $fb
    ld hl, sp+$20                                 ; $6a52: $f8 $20
    db $10                                        ; $6a54: $10
    ld h, b                                       ; $6a55: $60
    ld bc, $037a                                  ; $6a56: $01 $7a $03
    ld h, h                                       ; $6a59: $64
    rlca                                          ; $6a5a: $07
    rst $20                                       ; $6a5b: $e7
    ld b, h                                       ; $6a5c: $44
    rlca                                          ; $6a5d: $07
    rlca                                          ; $6a5e: $07
    ccf                                           ; $6a5f: $3f
    ld h, b                                       ; $6a60: $60
    ld a, [c]                                     ; $6a61: $f2
    ld b, b                                       ; $6a62: $40
    ld b, b                                       ; $6a63: $40
    rst $38                                       ; $6a64: $ff
    ld hl, sp-$69                                 ; $6a65: $f8 $97
    daa                                           ; $6a67: $27
    cp $11                                        ; $6a68: $fe $11
    sub h                                         ; $6a6a: $94
    jp nz, $e304                                  ; $6a6b: $c2 $04 $e3

    ld b, b                                       ; $6a6e: $40
    ld l, c                                       ; $6a6f: $69
    and b                                         ; $6a70: $a0
    rst $10                                       ; $6a71: $d7

jr_037_6a72:
    rst $38                                       ; $6a72: $ff
    ld hl, sp+$6f                                 ; $6a73: $f8 $6f
    ldh a, [rIE]                                  ; $6a75: $f0 $ff
    ld [hl], b                                    ; $6a77: $70
    rst $18                                       ; $6a78: $df
    rst $38                                       ; $6a79: $ff
    rst $18                                       ; $6a7a: $df
    cp $fc                                        ; $6a7b: $fe $fc
    ldh [rIE], a                                  ; $6a7d: $e0 $ff
    rst $28                                       ; $6a7f: $ef
    jr nz, jr_037_6a72                            ; $6a80: $20 $f0

    sub b                                         ; $6a82: $90
    ld a, [hl]                                    ; $6a83: $7e
    add sp, -$61                                  ; $6a84: $e8 $9f
    ld e, $f8                                     ; $6a86: $1e $f8
    ld a, [de]                                    ; $6a88: $1a
    ld hl, sp-$10                                 ; $6a89: $f8 $f0
    ret nc                                        ; $6a8b: $d0

    and b                                         ; $6a8c: $a0
    or d                                          ; $6a8d: $b2
    ld b, b                                       ; $6a8e: $40
    ld bc, $0fff                                  ; $6a8f: $01 $ff $0f
    rlca                                          ; $6a92: $07
    ld a, b                                       ; $6a93: $78
    rrca                                          ; $6a94: $0f
    ld [hl], b                                    ; $6a95: $70
    rra                                           ; $6a96: $1f
    ld d, b                                       ; $6a97: $50
    rra                                           ; $6a98: $1f
    rst $28                                       ; $6a99: $ef
    rra                                           ; $6a9a: $1f
    rra                                           ; $6a9b: $1f
    db $10                                        ; $6a9c: $10

jr_037_6a9d:
    rra                                           ; $6a9d: $1f
    or d                                          ; $6a9e: $b2
    ld b, d                                       ; $6a9f: $42
    pop hl                                        ; $6aa0: $e1
    sbc a                                         ; $6aa1: $9f
    ld sp, hl                                     ; $6aa2: $f9
    ld d, a                                       ; $6aa3: $57
    ld b, a                                       ; $6aa4: $47
    cp $01                                        ; $6aa5: $fe $01
    and a                                         ; $6aa7: $a7
    ld b, b                                       ; $6aa8: $40
    ld de, $e1c0                                  ; $6aa9: $11 $c0 $e1
    sub b                                         ; $6aac: $90
    ld a, b                                       ; $6aad: $78
    ld h, c                                       ; $6aae: $61
    xor a                                         ; $6aaf: $af
    cp $8b                                        ; $6ab0: $fe $8b
    cp $87                                        ; $6ab2: $fe $87
    ld [c], a                                     ; $6ab4: $e2
    ld h, b                                       ; $6ab5: $60
    inc bc                                        ; $6ab6: $03
    sub d                                         ; $6ab7: $92
    ld b, b                                       ; $6ab8: $40
    ld c, $ff                                     ; $6ab9: $0e $ff
    ld a, [$fa1e]                                 ; $6abb: $fa $1e $fa
    cp $02                                        ; $6abe: $fe $02
    cp $0e                                        ; $6ac0: $fe $0e
    cp $ef                                        ; $6ac2: $fe $ef
    ld a, [c]                                     ; $6ac4: $f2
    cp $0c                                        ; $6ac5: $fe $0c
    db $fc                                        ; $6ac7: $fc
    ld [hl], d                                    ; $6ac8: $72
    ld b, b                                       ; $6ac9: $40
    inc bc                                        ; $6aca: $03
    rrca                                          ; $6acb: $0f
    ld c, $ff                                     ; $6acc: $0e $ff
    ld [hl], c                                    ; $6ace: $71
    rra                                           ; $6acf: $1f
    ld h, b                                       ; $6ad0: $60
    ccf                                           ; $6ad1: $3f
    ld h, b                                       ; $6ad2: $60
    ccf                                           ; $6ad3: $3f
    ccf                                           ; $6ad4: $3f
    ccf                                           ; $6ad5: $3f
    di                                            ; $6ad6: $f3
    jr nc, jr_037_6b18                            ; $6ad7: $30 $3f

    ld [hl], d                                    ; $6ad9: $72
    ld b, b                                       ; $6ada: $40
    ret nz                                        ; $6adb: $c0

    and c                                         ; $6adc: $a1
    add d                                         ; $6add: $82
    ld a, a                                       ; $6ade: $7f
    cp $43                                        ; $6adf: $fe $43
    rst $20                                       ; $6ae1: $e7
    cp $ff                                        ; $6ae2: $fe $ff
    cp $de                                        ; $6ae4: $fe $de
    and b                                         ; $6ae6: $a0
    ld [hl], b                                    ; $6ae7: $70
    pop hl                                        ; $6ae8: $e1
    ld c, a                                       ; $6ae9: $4f
    ld hl, sp+$2f                                 ; $6aea: $f8 $2f
    or $5a                                        ; $6aec: $f6 $5a
    ret nz                                        ; $6aee: $c0

    ccf                                           ; $6aef: $3f

jr_037_6af0:
    rst $38                                       ; $6af0: $ff
    db $fc                                        ; $6af1: $fc
    pop hl                                        ; $6af2: $e1
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff

jr_037_6af5:
    db $10                                        ; $6af5: $10
    ld hl, sp-$01                                 ; $6af6: $f8 $ff
    adc b                                         ; $6af8: $88
    ld a, [hl]                                    ; $6af9: $7e
    ld hl, sp+$2e                                 ; $6afa: $f8 $2e
    db $fc                                        ; $6afc: $fc
    ld d, $fc                                     ; $6afd: $16 $fc
    db $fc                                        ; $6aff: $fc
    cp e                                          ; $6b00: $bb
    db $fc                                        ; $6b01: $fc
    inc b                                         ; $6b02: $04
    ret nz                                        ; $6b03: $c0

    ldh [$f1], a                                  ; $6b04: $e0 $f1
    rra                                           ; $6b06: $1f
    jr nz, @-$3a                                  ; $6b07: $20 $c4

    ldh [$78], a                                  ; $6b09: $e0 $78
    cp a                                          ; $6b0b: $bf
    ccf                                           ; $6b0c: $3f
    ld h, a                                       ; $6b0d: $67
    ccf                                           ; $6b0e: $3f
    jr jr_037_6b30                                ; $6b0f: $18 $1f

    rlca                                          ; $6b11: $07
    ld b, b                                       ; $6b12: $40
    pop hl                                        ; $6b13: $e1
    nop                                           ; $6b14: $00
    xor a                                         ; $6b15: $af
    rst $38                                       ; $6b16: $ff
    add c                                         ; $6b17: $81

jr_037_6b18:
    ld a, a                                       ; $6b18: $7f
    pop bc                                        ; $6b19: $c1
    ret nz                                        ; $6b1a: $c0

    add sp, -$40                                  ; $6b1b: $e8 $c0
    ret nz                                        ; $6b1d: $c0

    ldh a, [$e4]                                  ; $6b1e: $f0 $e4
    ld b, c                                       ; $6b20: $41
    ld a, $c0                                     ; $6b21: $3e $c0
    and $00                                       ; $6b23: $e6 $00
    ld b, b                                       ; $6b25: $40
    ret nz                                        ; $6b26: $c0

    ld b, a                                       ; $6b27: $47
    or $e8                                        ; $6b28: $f6 $e8
    ld b, b                                       ; $6b2a: $40
    ld b, b                                       ; $6b2b: $40
    add b                                         ; $6b2c: $80
    jr z, jr_037_6af0                             ; $6b2d: $28 $c1

    pop de                                        ; $6b2f: $d1

jr_037_6b30:
    nop                                           ; $6b30: $00
    rst $38                                       ; $6b31: $ff
    db $ec                                        ; $6b32: $ec
    jr jr_037_6af5                                ; $6b33: $18 $c0

    ld [de], a                                    ; $6b35: $12
    ret nz                                        ; $6b36: $c0

    cp b                                          ; $6b37: $b8
    ld [c], a                                     ; $6b38: $e2
    ldh [$f0], a                                  ; $6b39: $e0 $f0
    add b                                         ; $6b3b: $80
    rst $08                                       ; $6b3c: $cf
    sbc [hl]                                      ; $6b3d: $9e
    add b                                         ; $6b3e: $80
    add [hl]                                      ; $6b3f: $86
    add b                                         ; $6b40: $80
    cp b                                          ; $6b41: $b8
    dec h                                         ; $6b42: $25
    ret z                                         ; $6b43: $c8

    dec h                                         ; $6b44: $25
    add d                                         ; $6b45: $82
    add b                                         ; $6b46: $80
    rrca                                          ; $6b47: $0f
    ret nz                                        ; $6b48: $c0

    add b                                         ; $6b49: $80
    ldh [$80], a                                  ; $6b4a: $e0 $80
    jr z, jr_037_6b8e                             ; $6b4c: $28 $40

    ld l, d                                       ; $6b4e: $6a
    ld b, h                                       ; $6b4f: $44
    cp b                                          ; $6b50: $b8
    dec l                                         ; $6b51: $2d
    nop                                           ; $6b52: $00
    ld c, e                                       ; $6b53: $4b
    inc bc                                        ; $6b54: $03
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    nop                                           ; $6b57: $00
    nop                                           ; $6b58: $00
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    ccf                                           ; $6b63: $3f
    nop                                           ; $6b64: $00
    rst $08                                       ; $6b65: $cf
    nop                                           ; $6b66: $00
    rst $30                                       ; $6b67: $f7
    nop                                           ; $6b68: $00
    rst $18                                       ; $6b69: $df
    inc sp                                        ; $6b6a: $33
    nop                                           ; $6b6b: $00
    ld de, $1900                                  ; $6b6c: $11 $00 $19
    cp $e0                                        ; $6b6f: $fe $e0
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    ei                                            ; $6b73: $fb
    rst $38                                       ; $6b74: $ff
    nop                                           ; $6b75: $00
    cp $e9                                        ; $6b76: $fe $e9
    dec a                                         ; $6b78: $3d
    nop                                           ; $6b79: $00
    ei                                            ; $6b7a: $fb
    nop                                           ; $6b7b: $00
    rlca                                          ; $6b7c: $07
    cp e                                          ; $6b7d: $bb
    nop                                           ; $6b7e: $00
    or a                                          ; $6b7f: $b7
    cp $e0                                        ; $6b80: $fe $e0
    rst $28                                       ; $6b82: $ef
    nop                                           ; $6b83: $00
    rra                                           ; $6b84: $1f
    and $ea                                       ; $6b85: $e6 $ea
    db $fc                                        ; $6b87: $fc
    di                                            ; $6b88: $f3
    nop                                           ; $6b89: $00
    di                                            ; $6b8a: $f3
    db $ec                                        ; $6b8b: $ec
    ldh [$d2], a                                  ; $6b8c: $e0 $d2

jr_037_6b8e:
    db $e4                                        ; $6b8e: $e4
    inc c                                         ; $6b8f: $0c
    rst $38                                       ; $6b90: $ff
    rrca                                          ; $6b91: $0f
    db $fd                                        ; $6b92: $fd
    ld e, a                                       ; $6b93: $5f
    dec b                                         ; $6b94: $05
    di                                            ; $6b95: $f3
    ld [bc], a                                    ; $6b96: $02
    rst $28                                       ; $6b97: $ef
    ld [bc], a                                    ; $6b98: $02
    jp nz, $c0e8                                  ; $6b99: $c2 $e8 $c0

    xor b                                         ; $6b9c: $a8
    pop hl                                        ; $6b9d: $e1
    cp $b2                                        ; $6b9e: $fe $b2
    ld [$fe03], a                                 ; $6ba0: $ea $03 $fe
    rlca                                          ; $6ba3: $07
    call z, $8800                                 ; $6ba4: $cc $00 $88
    nop                                           ; $6ba7: $00
    db $fd                                        ; $6ba8: $fd
    sbc b                                         ; $6ba9: $98
    cp $e0                                        ; $6baa: $fe $e0
    cp h                                          ; $6bac: $bc
    nop                                           ; $6bad: $00
    rst $18                                       ; $6bae: $df
    nop                                           ; $6baf: $00
    ldh [$e0], a                                  ; $6bb0: $e0 $e0
    jp $f81d                                      ; $6bb2: $c3 $1d $f8


    adc b                                         ; $6bb5: $88
    push hl                                       ; $6bb6: $e5
    sbc b                                         ; $6bb7: $98
    push hl                                       ; $6bb8: $e5
    add d                                         ; $6bb9: $82
    db $eb                                        ; $6bba: $eb
    ld [hl], h                                    ; $6bbb: $74
    ld [$ff01], a                                 ; $6bbc: $ea $01 $ff
    ei                                            ; $6bbf: $fb
    inc bc                                        ; $6bc0: $03
    db $fc                                        ; $6bc1: $fc
    ret nz                                        ; $6bc2: $c0

    add sp, -$01                                  ; $6bc3: $e8 $ff
    ldh a, [$0c]                                  ; $6bc5: $f0 $0c
    db $fc                                        ; $6bc7: $fc
    inc bc                                        ; $6bc8: $03
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    inc sp                                        ; $6bcb: $33
    nop                                           ; $6bcc: $00
    add hl, de                                    ; $6bcd: $19
    ld [$0c1d], sp                                ; $6bce: $08 $1d $0c
    dec de                                        ; $6bd1: $1b

jr_037_6bd2:
    rst $18                                       ; $6bd2: $df
    ld a, [bc]                                    ; $6bd3: $0a
    dec a                                         ; $6bd4: $3d
    jr jr_037_6bd2                                ; $6bd5: $18 $fb

    db $10                                        ; $6bd7: $10
    ld e, b                                       ; $6bd8: $58
    pop hl                                        ; $6bd9: $e1
    adc $06                                       ; $6bda: $ce $06
    rst $28                                       ; $6bdc: $ef
    adc [hl]                                      ; $6bdd: $8e
    ld c, $9c                                     ; $6bde: $0e $9c
    inc c                                         ; $6be0: $0c
    ldh [$e7], a                                  ; $6be1: $e0 $e7
    ld hl, sp+$0f                                 ; $6be3: $f8 $0f
    inc sp                                        ; $6be5: $33
    rst $38                                       ; $6be6: $ff
    ccf                                           ; $6be7: $3f
    rst $10                                       ; $6be8: $d7

jr_037_6be9:
    ld l, h                                       ; $6be9: $6c
    and a                                         ; $6bea: $a7
    call c, $d8af                                 ; $6beb: $dc $af $d8
    adc a                                         ; $6bee: $8f
    rst $38                                       ; $6bef: $ff
    ld sp, hl                                     ; $6bf0: $f9
    rst $18                                       ; $6bf1: $df
    pop af                                        ; $6bf2: $f1
    ld a, a                                       ; $6bf3: $7f
    ld h, b                                       ; $6bf4: $60
    rlca                                          ; $6bf5: $07
    cp $83                                        ; $6bf6: $fe $83
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    db $e3                                        ; $6bfa: $e3
    ld a, [hl]                                    ; $6bfb: $7e
    ei                                            ; $6bfc: $fb
    ld e, $ff                                     ; $6bfd: $1e $ff
    add a                                         ; $6bff: $87
    rst $38                                       ; $6c00: $ff
    rst $18                                       ; $6c01: $df
    ld b, $ff                                     ; $6c02: $06 $ff
    inc e                                         ; $6c04: $1c
    rst $38                                       ; $6c05: $ff
    ld a, h                                       ; $6c06: $7c
    jr z, jr_037_6be9                             ; $6c07: $28 $e0

    ret nz                                        ; $6c09: $c0

    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    jr nz, @+$01                                  ; $6c0c: $20 $ff

    ret nc                                        ; $6c0e: $d0

    rst $38                                       ; $6c0f: $ff
    sub b                                         ; $6c10: $90
    rst $28                                       ; $6c11: $ef
    jr c, @+$01                                   ; $6c12: $38 $ff

    rst $20                                       ; $6c14: $e7
    jr c, @+$01                                   ; $6c15: $38 $ff

    jr jr_037_6c41                                ; $6c17: $18 $28

    push hl                                       ; $6c19: $e5
    ld e, b                                       ; $6c1a: $58
    push hl                                       ; $6c1b: $e5
    ld sp, hl                                     ; $6c1c: $f9
    rra                                           ; $6c1d: $1f
    dec hl                                        ; $6c1e: $2b
    rst $38                                       ; $6c1f: $ff
    ld [hl], $d3                                  ; $6c20: $36 $d3
    ld l, [hl]                                    ; $6c22: $6e
    rst $10                                       ; $6c23: $d7
    ld l, h                                       ; $6c24: $6c
    ld b, a                                       ; $6c25: $47
    ld a, h                                       ; $6c26: $7c
    ld l, a                                       ; $6c27: $6f
    rst $38                                       ; $6c28: $ff
    ld a, b                                       ; $6c29: $78
    ccf                                           ; $6c2a: $3f
    jr nc, jr_037_6c4c                            ; $6c2b: $30 $1f

    db $10                                        ; $6c2d: $10
    pop bc                                        ; $6c2e: $c1
    rst $38                                       ; $6c2f: $ff
    pop af                                        ; $6c30: $f1
    rst $38                                       ; $6c31: $ff
    ccf                                           ; $6c32: $3f
    db $fd                                        ; $6c33: $fd
    rrca                                          ; $6c34: $0f
    rst $38                                       ; $6c35: $ff
    ld b, e                                       ; $6c36: $43
    rst $38                                       ; $6c37: $ff
    add e                                         ; $6c38: $83
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    add d                                         ; $6c3b: $82
    rst $38                                       ; $6c3c: $ff
    ld [hl], $ff                                  ; $6c3d: $36 $ff
    ld a, $f7                                     ; $6c3f: $3e $f7

jr_037_6c41:
    ldh [rIE], a                                  ; $6c41: $e0 $ff
    ld a, a                                       ; $6c43: $7f
    db $10                                        ; $6c44: $10
    rst $38                                       ; $6c45: $ff
    ld l, b                                       ; $6c46: $68
    rst $38                                       ; $6c47: $ff
    ret z                                         ; $6c48: $c8

    rst $30                                       ; $6c49: $f7
    inc e                                         ; $6c4a: $1c
    or d                                          ; $6c4b: $b2

jr_037_6c4c:
    ldh [rIE], a                                  ; $6c4c: $e0 $ff
    inc c                                         ; $6c4e: $0c
    ei                                            ; $6c4f: $fb
    ld c, $3f                                     ; $6c50: $0e $3f
    jr nz, @+$01                                  ; $6c52: $20 $ff

    inc e                                         ; $6c54: $1c
    rrca                                          ; $6c55: $0f
    rst $38                                       ; $6c56: $ff
    dec bc                                        ; $6c57: $0b
    or a                                          ; $6c58: $b7
    rlca                                          ; $6c59: $07
    cp e                                          ; $6c5a: $bb
    rra                                           ; $6c5b: $1f
    rst $38                                       ; $6c5c: $ff
    rla                                           ; $6c5d: $17
    rra                                           ; $6c5e: $1f
    rst $38                                       ; $6c5f: $ff
    rla                                           ; $6c60: $17
    rst $38                                       ; $6c61: $ff
    rrca                                          ; $6c62: $0f
    cp a                                          ; $6c63: $bf
    ld hl, sp-$41                                 ; $6c64: $f8 $bf
    ld hl, sp-$01                                 ; $6c66: $f8 $ff
    rst $38                                       ; $6c68: $ff
    ld hl, sp-$01                                 ; $6c69: $f8 $ff
    ldh a, [rIE]                                  ; $6c6b: $f0 $ff
    add c                                         ; $6c6d: $81
    rst $38                                       ; $6c6e: $ff
    pop de                                        ; $6c6f: $d1
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    or d                                          ; $6c72: $b2
    rst $38                                       ; $6c73: $ff
    db $e4                                        ; $6c74: $e4
    rst $30                                       ; $6c75: $f7
    inc e                                         ; $6c76: $1c
    ei                                            ; $6c77: $fb
    rrca                                          ; $6c78: $0f
    ei                                            ; $6c79: $fb
    ld a, e                                       ; $6c7a: $7b
    rrca                                          ; $6c7b: $0f
    ld a, [$e2fe]                                 ; $6c7c: $fa $fe $e2
    db $fd                                        ; $6c7f: $fd
    rra                                           ; $6c80: $1f
    ldh a, [$1f]                                  ; $6c81: $f0 $1f
    jr c, @-$1e                                   ; $6c83: $38 $e0

    rst $38                                       ; $6c85: $ff
    ldh [rNR23], a                                ; $6c86: $e0 $18
    ld hl, sp+$0d                                 ; $6c88: $f8 $0d
    ld hl, sp+$1d                                 ; $6c8a: $f8 $1d
    db $f4                                        ; $6c8c: $f4
    ccf                                           ; $6c8d: $3f
    rst $30                                       ; $6c8e: $f7
    ld [c], a                                     ; $6c8f: $e2
    ccf                                           ; $6c90: $3f
    pop hl                                        ; $6c91: $e1
    and e                                         ; $6c92: $a3
    ldh [$0e], a                                  ; $6c93: $e0 $0e
    rst $38                                       ; $6c95: $ff
    dec b                                         ; $6c96: $05
    rlca                                          ; $6c97: $07
    rst $38                                       ; $6c98: $ff
    ld [bc], a                                    ; $6c99: $02
    or a                                          ; $6c9a: $b7
    inc bc                                        ; $6c9b: $03
    or [hl]                                       ; $6c9c: $b6
    rlca                                          ; $6c9d: $07
    xor $0b                                       ; $6c9e: $ee $0b
    rra                                           ; $6ca0: $1f
    db $fd                                        ; $6ca1: $fd
    dec bc                                        ; $6ca2: $0b
    xor b                                         ; $6ca3: $a8
    ret nz                                        ; $6ca4: $c0

    ld e, $ef                                     ; $6ca5: $1e $ef
    ld a, h                                       ; $6ca7: $7c
    rst $28                                       ; $6ca8: $ef
    db $fc                                        ; $6ca9: $fc
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    db $fc                                        ; $6cac: $fc
    rst $38                                       ; $6cad: $ff
    add sp, -$01                                  ; $6cae: $e8 $ff
    reti                                          ; $6cb0: $d9


    rst $38                                       ; $6cb1: $ff
    ld a, [c]                                     ; $6cb2: $f2
    rst $38                                       ; $6cb3: $ff
    rst $30                                       ; $6cb4: $f7
    rst $38                                       ; $6cb5: $ff
    db $fd                                        ; $6cb6: $fd
    rlca                                          ; $6cb7: $07
    cp $e2                                        ; $6cb8: $fe $e2
    add a                                         ; $6cba: $87
    db $fd                                        ; $6cbb: $fd
    add a                                         ; $6cbc: $87
    cp $ff                                        ; $6cbd: $fe $ff
    rrca                                          ; $6cbf: $0f
    ld hl, sp+$0f                                 ; $6cc0: $f8 $0f
    ld hl, sp+$1f                                 ; $6cc2: $f8 $1f
    db $fc                                        ; $6cc4: $fc
    ldh [$1f], a                                  ; $6cc5: $e0 $1f
    xor e                                         ; $6cc7: $ab
    ld hl, sp+$08                                 ; $6cc8: $f8 $08
    jp nz, $e2e3                                  ; $6cca: $c2 $e3 $e2

    ld h, l                                       ; $6ccd: $65
    ldh [$f1], a                                  ; $6cce: $e0 $f1
    ret nc                                        ; $6cd0: $d0

    add sp, -$25                                  ; $6cd1: $e8 $db
    rrca                                          ; $6cd3: $0f
    rst $38                                       ; $6cd4: $ff
    pop af                                        ; $6cd5: $f1
    rst $38                                       ; $6cd6: $ff
    db $fc                                        ; $6cd7: $fc
    ret nc                                        ; $6cd8: $d0

    db $e4                                        ; $6cd9: $e4
    jp z, $d0e0                                   ; $6cda: $ca $e0 $d0

    db $e3                                        ; $6cdd: $e3
    ldh [$ea], a                                  ; $6cde: $e0 $ea
    ld [hl], l                                    ; $6ce0: $75
    ldh a, [$e0]                                  ; $6ce1: $f0 $e0
    db $ec                                        ; $6ce3: $ec
    adc a                                         ; $6ce4: $8f
    ldh [$e0], a                                  ; $6ce5: $e0 $e0
    ld [$0bff], sp                                ; $6ce7: $08 $ff $0b
    db $fc                                        ; $6cea: $fc
    ldh [$f7], a                                  ; $6ceb: $e0 $f7
    inc b                                         ; $6ced: $04
    rst $38                                       ; $6cee: $ff
    inc bc                                        ; $6cef: $03
    ld hl, sp-$5d                                 ; $6cf0: $f8 $a3
    rst $18                                       ; $6cf2: $df
    sbc $e5                                       ; $6cf3: $de $e5
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    db $e4                                        ; $6cf7: $e4
    ld a, a                                       ; $6cf8: $7f
    db $f4                                        ; $6cf9: $f4
    rra                                           ; $6cfa: $1f
    db $fc                                        ; $6cfb: $fc
    rrca                                          ; $6cfc: $0f
    cp $c7                                        ; $6cfd: $fe $c7
    rst $38                                       ; $6cff: $ff
    ld a, [$ef3b]                                 ; $6d00: $fa $3b $ef
    inc bc                                        ; $6d03: $03
    ldh a, [$3f]                                  ; $6d04: $f0 $3f
    ldh [rIE], a                                  ; $6d06: $e0 $ff
    rst $20                                       ; $6d08: $e7
    and b                                         ; $6d09: $a0
    rst $38                                       ; $6d0a: $ff
    pop bc                                        ; $6d0b: $c1
    ld [hl], e                                    ; $6d0c: $73
    ret nz                                        ; $6d0d: $c0

    cp $e1                                        ; $6d0e: $fe $e1
    ldh a, [rIE]                                  ; $6d10: $f0 $ff
    ccf                                           ; $6d12: $3f
    rst $10                                       ; $6d13: $d7
    pop hl                                        ; $6d14: $e1
    ld a, a                                       ; $6d15: $7f
    pop bc                                        ; $6d16: $c1
    or $c0                                        ; $6d17: $f6 $c0
    inc d                                         ; $6d19: $14
    or h                                          ; $6d1a: $b4
    ret nz                                        ; $6d1b: $c0

    inc l                                         ; $6d1c: $2c
    rst $38                                       ; $6d1d: $ff
    rst $18                                       ; $6d1e: $df
    inc h                                         ; $6d1f: $24
    rst $38                                       ; $6d20: $ff
    add h                                         ; $6d21: $84
    rst $38                                       ; $6d22: $ff
    add hl, bc                                    ; $6d23: $09
    cp $e0                                        ; $6d24: $fe $e0
    inc b                                         ; $6d26: $04
    rst $38                                       ; $6d27: $ff
    ld sp, hl                                     ; $6d28: $f9
    ld [bc], a                                    ; $6d29: $02
    ld d, d                                       ; $6d2a: $52
    ret nz                                        ; $6d2b: $c0

    cp b                                          ; $6d2c: $b8
    and d                                         ; $6d2d: $a2
    adc $4f                                       ; $6d2e: $ce $4f
    jp nc, $fadf                                  ; $6d30: $d2 $df $fa

    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    cp $2f                                        ; $6d35: $fe $2f
    cp $07                                        ; $6d37: $fe $07
    cp $87                                        ; $6d39: $fe $87
    ld a, [$7bad]                                 ; $6d3b: $fa $ad $7b
    ret nz                                        ; $6d3e: $c0

    ldh [rIE], a                                  ; $6d3f: $e0 $ff
    ld d, b                                       ; $6d41: $50
    cp $e0                                        ; $6d42: $fe $e0
    ld h, c                                       ; $6d44: $61
    ret nz                                        ; $6d45: $c0

    jp hl                                         ; $6d46: $e9


    jp nz, $c07a                                  ; $6d47: $c2 $7a $c0

    ld [$c008], a                                 ; $6d4a: $ea $08 $c0
    db $eb                                        ; $6d4d: $eb
    rst $08                                       ; $6d4e: $cf
    ld c, a                                       ; $6d4f: $4f
    jp nc, $c05f                                  ; $6d50: $d2 $5f $c0

    jp hl                                         ; $6d53: $e9


    ei                                            ; $6d54: $fb
    rst $38                                       ; $6d55: $ff
    nop                                           ; $6d56: $00
    ld d, b                                       ; $6d57: $50
    xor c                                         ; $6d58: $a9
    rra                                           ; $6d59: $1f
    rrca                                          ; $6d5a: $0f
    xor $03                                       ; $6d5b: $ee $03
    rst $30                                       ; $6d5d: $f7
    push af                                       ; $6d5e: $f5
    dec b                                         ; $6d5f: $05
    ld d, d                                       ; $6d60: $52
    ldh [$09], a                                  ; $6d61: $e0 $09
    ld a, d                                       ; $6d63: $7a
    ret nz                                        ; $6d64: $c0

    jr nz, @+$01                                  ; $6d65: $20 $ff

    ret nz                                        ; $6d67: $c0

    rst $38                                       ; $6d68: $ff
    rst $18                                       ; $6d69: $df
    nop                                           ; $6d6a: $00
    ld a, a                                       ; $6d6b: $7f
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    sbc e                                         ; $6d6e: $9b
    ld a, $a0                                     ; $6d6f: $3e $a0
    db $10                                        ; $6d71: $10
    rst $38                                       ; $6d72: $ff
    rst $30                                       ; $6d73: $f7
    ldh [rIE], a                                  ; $6d74: $e0 $ff
    ld b, b                                       ; $6d76: $40
    cp $e0                                        ; $6d77: $fe $e0
    ret nz                                        ; $6d79: $c0

    rst $38                                       ; $6d7a: $ff
    db $fc                                        ; $6d7b: $fc
    db $fc                                        ; $6d7c: $fc
    rst $38                                       ; $6d7d: $ff
    add sp, -$05                                  ; $6d7e: $e8 $fb
    ld [$08ff], sp                                ; $6d80: $08 $ff $08
    db $fc                                        ; $6d83: $fc
    db $10                                        ; $6d84: $10
    add sp, -$21                                  ; $6d85: $e8 $df
    ld h, b                                       ; $6d87: $60
    ret c                                         ; $6d88: $d8

    ret nz                                        ; $6d89: $c0

    ld hl, sp+$20                                 ; $6d8a: $f8 $20
    ret nc                                        ; $6d8c: $d0

    db $e4                                        ; $6d8d: $e4
    ld [$ddff], sp                                ; $6d8e: $08 $ff $dd
    ld de, $c00a                                  ; $6d91: $11 $0a $c0
    ld b, b                                       ; $6d94: $40
    rst $38                                       ; $6d95: $ff
    add b                                         ; $6d96: $80
    ret nc                                        ; $6d97: $d0

    ld [$ffc0], a                                 ; $6d98: $ea $c0 $ff
    rst $38                                       ; $6d9b: $ff
    ret nz                                        ; $6d9c: $c0

    ld sp, $e01f                                  ; $6d9d: $31 $1f $e0
    ccf                                           ; $6da0: $3f
    jr nc, @+$41                                  ; $6da1: $30 $3f

    xor h                                         ; $6da3: $ac
    ld a, a                                       ; $6da4: $7f
    ccf                                           ; $6da5: $3f
    or e                                          ; $6da6: $b3
    rra                                           ; $6da7: $1f
    db $ec                                        ; $6da8: $ec
    rrca                                          ; $6da9: $0f
    rra                                           ; $6daa: $1f
    inc bc                                        ; $6dab: $03
    ld a, [c]                                     ; $6dac: $f2
    add d                                         ; $6dad: $82
    rst $38                                       ; $6dae: $ff
    add c                                         ; $6daf: $81
    ld a, a                                       ; $6db0: $7f
    pop hl                                        ; $6db1: $e1
    ld a, a                                       ; $6db2: $7f
    rst $38                                       ; $6db3: $ff
    ld b, e                                       ; $6db4: $43
    cp $ff                                        ; $6db5: $fe $ff
    rst $30                                       ; $6db7: $f7
    cp $03                                        ; $6db8: $fe $03
    cp $e2                                        ; $6dba: $fe $e2
    add b                                         ; $6dbc: $80
    ret nz                                        ; $6dbd: $c0

    rst $38                                       ; $6dbe: $ff
    ld c, a                                       ; $6dbf: $4f
    ld hl, sp-$13                                 ; $6dc0: $f8 $ed
    cpl                                           ; $6dc2: $2f
    ld a, [$3fc0]                                 ; $6dc3: $fa $c0 $3f
    rst $38                                       ; $6dc6: $ff
    db $fc                                        ; $6dc7: $fc
    pop hl                                        ; $6dc8: $e1

jr_037_6dc9:
    rst $38                                       ; $6dc9: $ff
    db $fc                                        ; $6dca: $fc
    db $10                                        ; $6dcb: $10
    ld a, a                                       ; $6dcc: $7f
    rst $38                                       ; $6dcd: $ff
    adc b                                         ; $6dce: $88
    ld a, h                                       ; $6dcf: $7c
    db $e4                                        ; $6dd0: $e4
    dec a                                         ; $6dd1: $3d
    db $fc                                        ; $6dd2: $fc
    dec d                                         ; $6dd3: $15
    ld e, h                                       ; $6dd4: $5c
    ret nz                                        ; $6dd5: $c0

    rst $38                                       ; $6dd6: $ff
    inc b                                         ; $6dd7: $04
    db $fc                                        ; $6dd8: $fc
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    dec a                                         ; $6ddb: $3d
    ld bc, $0eff                                  ; $6ddc: $01 $ff $0e
    ld e, a                                       ; $6ddf: $5f
    ld de, $a01f                                  ; $6de0: $11 $1f $a0
    ccf                                           ; $6de3: $3f
    and b                                         ; $6de4: $a0
    ldh [$e0], a                                  ; $6de5: $e0 $e0
    jr nz, jr_037_6dc9                            ; $6de7: $20 $e0

    ldh [$2e], a                                  ; $6de9: $e0 $2e
    rst $10                                       ; $6deb: $d7
    jp nz, $ff02                                  ; $6dec: $c2 $02 $ff

    cp $c0                                        ; $6def: $fe $c0
    and $40                                       ; $6df1: $e6 $40
    ret nz                                        ; $6df3: $c0

    db $eb                                        ; $6df4: $eb
    sub b                                         ; $6df5: $90
    add b                                         ; $6df6: $80
    db $fd                                        ; $6df7: $fd
    add b                                         ; $6df8: $80
    cp $f3                                        ; $6df9: $fe $f3
    db $fc                                        ; $6dfb: $fc
    add b                                         ; $6dfc: $80
    di                                            ; $6dfd: $f3
    add b                                         ; $6dfe: $80
    rst $28                                       ; $6dff: $ef
    add b                                         ; $6e00: $80
    ld a, l                                       ; $6e01: $7d
    nop                                           ; $6e02: $00
    rst $38                                       ; $6e03: $ff
    db $ec                                        ; $6e04: $ec
    call z, $8880                                 ; $6e05: $cc $80 $88
    add b                                         ; $6e08: $80
    sbc b                                         ; $6e09: $98
    cp $e0                                        ; $6e0a: $fe $e0
    rst $38                                       ; $6e0c: $ff
    cp h                                          ; $6e0d: $bc
    add b                                         ; $6e0e: $80
    rst $18                                       ; $6e0f: $df
    add b                                         ; $6e10: $80
    ldh [$80], a                                  ; $6e11: $e0 $80
    db $ed                                        ; $6e13: $ed
    add b                                         ; $6e14: $80
    rst $18                                       ; $6e15: $df
    inc sp                                        ; $6e16: $33
    ld bc, $0113                                  ; $6e17: $01 $13 $01
    dec de                                        ; $6e1a: $1b
    cp $e0                                        ; $6e1b: $fe $e0
    ccf                                           ; $6e1d: $3f
    ld bc, $fbff                                  ; $6e1e: $01 $ff $fb
    ld bc, $0107                                  ; $6e21: $01 $07 $01
    or a                                          ; $6e24: $b7
    ld bc, $80ed                                  ; $6e25: $01 $ed $80
    rst $00                                       ; $6e28: $c7
    rst $30                                       ; $6e29: $f7
    add b                                         ; $6e2a: $80
    ld hl, sp-$52                                 ; $6e2b: $f8 $ae
    add sp, $48                                   ; $6e2d: $e8 $48
    adc l                                         ; $6e2f: $8d
    adc b                                         ; $6e30: $88
    add d                                         ; $6e31: $82
    nop                                           ; $6e32: $00
    db $ed                                        ; $6e33: $ed
    ld c, $fe                                     ; $6e34: $0e $fe
    ldh [$f7], a                                  ; $6e36: $e0 $f7
    nop                                           ; $6e38: $00
    ld hl, sp+$12                                 ; $6e39: $f8 $12
    add b                                         ; $6e3b: $80
    nop                                           ; $6e3c: $00
    nop                                           ; $6e3d: $00
    nop                                           ; $6e3e: $00
    nop                                           ; $6e3f: $00
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    nop                                           ; $6e44: $00
    rst $38                                       ; $6e45: $ff
    nop                                           ; $6e46: $00
    inc b                                         ; $6e47: $04
    nop                                           ; $6e48: $00
    scf                                           ; $6e49: $37
    di                                            ; $6e4a: $f3
    nop                                           ; $6e4b: $00
    ld b, $fa                                     ; $6e4c: $06 $fa
    ldh [$64], a                                  ; $6e4e: $e0 $64
    nop                                           ; $6e50: $00
    ldh a, [$e3]                                  ; $6e51: $f0 $e3
    db $fc                                        ; $6e53: $fc
    add sp, -$02                                  ; $6e54: $e8 $fe
    ldh [$e2], a                                  ; $6e56: $e0 $e2
    ld hl, sp+$00                                 ; $6e58: $f8 $00
    push hl                                       ; $6e5a: $e5
    nop                                           ; $6e5b: $00
    call z, $ac00                                 ; $6e5c: $cc $00 $ac
    rst $38                                       ; $6e5f: $ff
    nop                                           ; $6e60: $00

jr_037_6e61:
    cp b                                          ; $6e61: $b8
    nop                                           ; $6e62: $00
    ld [hl], h                                    ; $6e63: $74
    nop                                           ; $6e64: $00

jr_037_6e65:
    db $f4                                        ; $6e65: $f4
    nop                                           ; $6e66: $00
    db $e4                                        ; $6e67: $e4
    di                                            ; $6e68: $f3
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    adc $e0                                       ; $6e6b: $ce $e0
    ret c                                         ; $6e6d: $d8

    db $ec                                        ; $6e6e: $ec
    nop                                           ; $6e6f: $00
    rst $38                                       ; $6e70: $ff
    ld bc, $f7fe                                  ; $6e71: $01 $fe $f7
    inc bc                                        ; $6e74: $03
    db $fc                                        ; $6e75: $fc
    rrca                                          ; $6e76: $0f
    jp nz, $e0e8                                  ; $6e77: $c2 $e8 $e0

    rra                                           ; $6e7a: $1f
    ld hl, sp+$06                                 ; $6e7b: $f8 $06
    rst $38                                       ; $6e7d: $ff
    cp $83                                        ; $6e7e: $fe $83
    nop                                           ; $6e80: $00
    add a                                         ; $6e81: $87
    nop                                           ; $6e82: $00
    rst $00                                       ; $6e83: $c7
    nop                                           ; $6e84: $00
    db $e3                                        ; $6e85: $e3
    ret c                                         ; $6e86: $d8

    cp [hl]                                       ; $6e87: $be
    ldh [$d0], a                                  ; $6e88: $e0 $d0
    xor $88                                       ; $6e8a: $ee $88
    ldh [$f9], a                                  ; $6e8c: $e0 $f9
    ld bc, $eb92                                  ; $6e8e: $01 $92 $eb
    db $e4                                        ; $6e91: $e4
    ldh [$f8], a                                  ; $6e92: $e0 $f8
    add d                                         ; $6e94: $82
    db $eb                                        ; $6e95: $eb
    jp z, $8aed                                   ; $6e96: $ca $ed $8a

    rst $28                                       ; $6e99: $ef
    di                                            ; $6e9a: $f3
    rra                                           ; $6e9b: $1f
    rst $10                                       ; $6e9c: $d7
    inc e                                         ; $6e9d: $1c
    xor a                                         ; $6e9e: $af
    rst $38                                       ; $6e9f: $ff
    jr c, jr_037_6e61                             ; $6ea0: $38 $bf

    inc sp                                        ; $6ea2: $33
    cp a                                          ; $6ea3: $bf
    jr nc, jr_037_6e65                            ; $6ea4: $30 $bf

    daa                                           ; $6ea6: $27
    ld sp, hl                                     ; $6ea7: $f9
    rst $38                                       ; $6ea8: $ff
    ccf                                           ; $6ea9: $3f
    ei                                            ; $6eaa: $fb
    ld a, a                                       ; $6eab: $7f
    add hl, de                                    ; $6eac: $19
    rst $38                                       ; $6ead: $ff
    db $fd                                        ; $6eae: $fd
    rst $20                                       ; $6eaf: $e7
    cp $ff                                        ; $6eb0: $fe $ff
    inc bc                                        ; $6eb2: $03
    rst $38                                       ; $6eb3: $ff
    add hl, de                                    ; $6eb4: $19
    rst $38                                       ; $6eb5: $ff
    ld bc, $1cff                                  ; $6eb6: $01 $ff $1c
    rst $20                                       ; $6eb9: $e7
    db $eb                                        ; $6eba: $eb
    cp a                                          ; $6ebb: $bf
    rst $28                                       ; $6ebc: $ef
    ld [hl-], a                                   ; $6ebd: $32
    db $e3                                        ; $6ebe: $e3
    add b                                         ; $6ebf: $80
    cp $e6                                        ; $6ec0: $fe $e6
    ret nz                                        ; $6ec2: $c0

    and $03                                       ; $6ec3: $e6 $03
    rst $38                                       ; $6ec5: $ff
    call z, $b30f                                 ; $6ec6: $cc $0f $b3
    rra                                           ; $6ec9: $1f
    or a                                          ; $6eca: $b7
    inc e                                         ; $6ecb: $1c
    xor a                                         ; $6ecc: $af
    add hl, sp                                    ; $6ecd: $39
    ld a, a                                       ; $6ece: $7f
    cp a                                          ; $6ecf: $bf
    inc sp                                        ; $6ed0: $33
    rst $38                                       ; $6ed1: $ff
    jr nc, @+$01                                  ; $6ed2: $30 $ff

    daa                                           ; $6ed4: $27
    dec de                                        ; $6ed5: $1b
    ld e, h                                       ; $6ed6: $5c
    ldh [$c2], a                                  ; $6ed7: $e0 $c2
    call z, $13e2                                 ; $6ed9: $cc $e2 $13
    call z, Call_000_02e3                         ; $6edc: $cc $e3 $02
    and $cc                                       ; $6edf: $e6 $cc
    db $e4                                        ; $6ee1: $e4
    ld [$ade1], sp                                ; $6ee2: $08 $e1 $ad
    ld bc, $badf                                  ; $6ee5: $01 $df $ba
    inc bc                                        ; $6ee8: $03
    adc h                                         ; $6ee9: $8c
    rrca                                          ; $6eea: $0f
    sub e                                         ; $6eeb: $93
    sub [hl]                                      ; $6eec: $96
    ldh [$ef], a                                  ; $6eed: $e0 $ef
    add hl, sp                                    ; $6eef: $39
    adc [hl]                                      ; $6ef0: $8e
    ret c                                         ; $6ef1: $d8

    pop bc                                        ; $6ef2: $c1
    db $e4                                        ; $6ef3: $e4
    ldh [rNR32], a                                ; $6ef4: $e0 $1c
    jp z, $d2e7                                   ; $6ef6: $ca $e7 $d2

    set 2, b                                      ; $6ef9: $cb $d0

jr_037_6efb:
    ldh [$cd], a                                  ; $6efb: $e0 $cd
    xor a                                         ; $6efd: $af
    ld bc, $03ae                                  ; $6efe: $01 $ae $03
    cp h                                          ; $6f01: $bc
    jp nc, $97e0                                  ; $6f02: $d2 $e0 $97

    jp nc, $ffe0                                  ; $6f05: $d2 $e0 $ff

    cpl                                           ; $6f08: $2f
    ld [hl], $f3                                  ; $6f09: $36 $f3
    nop                                           ; $6f0b: $00
    and $d2                                       ; $6f0c: $e6 $d2
    jp hl                                         ; $6f0e: $e9


    dec c                                         ; $6f0f: $0d
    jp nc, Jump_037_66eb                          ; $6f10: $d2 $eb $66

    ldh [$fc], a                                  ; $6f13: $e0 $fc
    jr z, jr_037_6efb                             ; $6f15: $28 $e4

    add b                                         ; $6f17: $80
    add $9f                                       ; $6f18: $c6 $9f
    rst $38                                       ; $6f1a: $ff
    or a                                          ; $6f1b: $b7
    rst $38                                       ; $6f1c: $ff
    sub b                                         ; $6f1d: $90
    rst $38                                       ; $6f1e: $ff
    ld e, a                                       ; $6f1f: $5f
    or b                                          ; $6f20: $b0
    rst $18                                       ; $6f21: $df
    ld a, b                                       ; $6f22: $78
    rst $38                                       ; $6f23: $ff
    jr c, @-$2c                                   ; $6f24: $38 $d2

    ldh [rDIV], a                                 ; $6f26: $e0 $04
    ld h, b                                       ; $6f28: $60
    ret nz                                        ; $6f29: $c0

    rst $38                                       ; $6f2a: $ff
    cp l                                          ; $6f2b: $bd
    rst $38                                       ; $6f2c: $ff
    and c                                         ; $6f2d: $a1
    rst $38                                       ; $6f2e: $ff
    ld b, c                                       ; $6f2f: $41
    rst $38                                       ; $6f30: $ff
    inc bc                                        ; $6f31: $03
    rst $38                                       ; $6f32: $ff
    rst $30                                       ; $6f33: $f7
    db $e3                                        ; $6f34: $e3
    rst $38                                       ; $6f35: $ff
    ld d, $f0                                     ; $6f36: $16 $f0

jr_037_6f38:
    ldh [rNR41], a                                ; $6f38: $e0 $20
    rst $38                                       ; $6f3a: $ff
    and b                                         ; $6f3b: $a0
    rst $38                                       ; $6f3c: $ff
    ld a, a                                       ; $6f3d: $7f
    jr nz, jr_037_6f38                            ; $6f3e: $20 $f8

    and b                                         ; $6f40: $a0
    ld h, l                                       ; $6f41: $65
    ret nz                                        ; $6f42: $c0

    call z, Call_037_7080                         ; $6f43: $cc $80 $70
    pop bc                                        ; $6f46: $c1
    dec d                                         ; $6f47: $15
    ei                                            ; $6f48: $fb

jr_037_6f49:
    inc c                                         ; $6f49: $0c
    ldh [$fb], a                                  ; $6f4a: $e0 $fb
    call z, $efe8                                 ; $6f4c: $cc $e8 $ef
    inc c                                         ; $6f4f: $0c
    ldh [$0a], a                                  ; $6f50: $e0 $0a
    ldh [$cc], a                                  ; $6f52: $e0 $cc
    rst $20                                       ; $6f54: $e7
    db $fc                                        ; $6f55: $fc
    inc c                                         ; $6f56: $0c
    ldh [$d0], a                                  ; $6f57: $e0 $d0
    pop hl                                        ; $6f59: $e1
    push hl                                       ; $6f5a: $e5
    jr nz, jr_037_6f49                            ; $6f5b: $20 $ec

    and b                                         ; $6f5d: $a0
    ld l, h                                       ; $6f5e: $6c
    ret nz                                        ; $6f5f: $c0

    rst $28                                       ; $6f60: $ef
    cp b                                          ; $6f61: $b8
    add b                                         ; $6f62: $80
    rst $38                                       ; $6f63: $ff
    ld [hl], $0a                                  ; $6f64: $36 $0a
    ldh [rNR42], a                                ; $6f66: $e0 $21
    rst $38                                       ; $6f68: $ff
    scf                                           ; $6f69: $37
    sbc $ca                                       ; $6f6a: $de $ca
    pop hl                                        ; $6f6c: $e1
    ei                                            ; $6f6d: $fb
    cp a                                          ; $6f6e: $bf
    rst $38                                       ; $6f6f: $ff
    sub a                                         ; $6f70: $97
    ld l, [hl]                                    ; $6f71: $6e
    ldh [rSB], a                                  ; $6f72: $e0 $01
    rst $38                                       ; $6f74: $ff
    rst $20                                       ; $6f75: $e7
    db $10                                        ; $6f76: $10
    rst $38                                       ; $6f77: $ff
    dec e                                         ; $6f78: $1d
    ret z                                         ; $6f79: $c8

    and $d4                                       ; $6f7a: $e6 $d4
    jp nz, $80f8                                  ; $6f7c: $c2 $f8 $80

    push hl                                       ; $6f7f: $e5
    ld e, e                                       ; $6f80: $5b
    ret nz                                        ; $6f81: $c0

    db $ec                                        ; $6f82: $ec
    adc $e0                                       ; $6f83: $ce $e0
    ld hl, sp+$20                                 ; $6f85: $f8 $20
    jp nc, $b0ec                                  ; $6f87: $d2 $ec $b0

    jp nc, $95ec                                  ; $6f8a: $d2 $ec $95

    ld b, c                                       ; $6f8d: $41
    ret nc                                        ; $6f8e: $d0

    db $e4                                        ; $6f8f: $e4
    ret nz                                        ; $6f90: $c0

    and b                                         ; $6f91: $a0
    pop hl                                        ; $6f92: $e1
    db $ec                                        ; $6f93: $ec
    ld l, b                                       ; $6f94: $68
    ldh [$4e], a                                  ; $6f95: $e0 $4e
    ldh [rDIV], a                                 ; $6f97: $e0 $04
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    ld c, $f5                                     ; $6f9b: $0e $f5
    rra                                           ; $6f9d: $1f
    push af                                       ; $6f9e: $f5
    rra                                           ; $6f9f: $1f
    ld [c], a                                     ; $6fa0: $e2
    ccf                                           ; $6fa1: $3f
    ld sp, hl                                     ; $6fa2: $f9
    pop hl                                        ; $6fa3: $e1
    cp $e0                                        ; $6fa4: $fe $e0
    ld a, $e0                                     ; $6fa6: $3e $e0
    ld b, $fd                                     ; $6fa8: $06 $fd
    rrca                                          ; $6faa: $0f
    db $f4                                        ; $6fab: $f4
    rra                                           ; $6fac: $1f
    rst $38                                       ; $6fad: $ff
    db $f4                                        ; $6fae: $f4
    rst $38                                       ; $6faf: $ff
    cp h                                          ; $6fb0: $bc
    rst $38                                       ; $6fb1: $ff
    xor b                                         ; $6fb2: $a8
    rst $38                                       ; $6fb3: $ff
    add sp, -$01                                  ; $6fb4: $e8 $ff
    ld c, h                                       ; $6fb6: $4c
    ldh a, [$a4]                                  ; $6fb7: $f0 $a4
    sbc [hl]                                      ; $6fb9: $9e
    ldh [$7f], a                                  ; $6fba: $e0 $7f
    ret nz                                        ; $6fbc: $c0

    cp $e1                                        ; $6fbd: $fe $e1
    xor $c0                                       ; $6fbf: $ee $c0
    dec b                                         ; $6fc1: $05
    cp $e0                                        ; $6fc2: $fe $e0
    rst $38                                       ; $6fc4: $ff
    inc c                                         ; $6fc5: $0c
    di                                            ; $6fc6: $f3
    ld e, $f3                                     ; $6fc7: $1e $f3
    rra                                           ; $6fc9: $1f
    ldh [$3f], a                                  ; $6fca: $e0 $3f
    ld [c], a                                     ; $6fcc: $e2
    rst $38                                       ; $6fcd: $ff
    ccf                                           ; $6fce: $3f
    rst $38                                       ; $6fcf: $ff
    or $9f                                        ; $6fd0: $f6 $9f
    db $f4                                        ; $6fd2: $f4
    rst $38                                       ; $6fd3: $ff
    or $fd                                        ; $6fd4: $f6 $fd
    rst $38                                       ; $6fd6: $ff
    rlca                                          ; $6fd7: $07
    db $fc                                        ; $6fd8: $fc
    rrca                                          ; $6fd9: $0f
    ld hl, sp+$1f                                 ; $6fda: $f8 $1f
    ldh [rIE], a                                  ; $6fdc: $e0 $ff
    db $e4                                        ; $6fde: $e4
    add $d0                                       ; $6fdf: $c6 $d0
    push hl                                       ; $6fe1: $e5
    nop                                           ; $6fe2: $00
    ld hl, sp+$3c                                 ; $6fe3: $f8 $3c
    ret nz                                        ; $6fe5: $c0

    ret nc                                        ; $6fe6: $d0

    ld [c], a                                     ; $6fe7: $e2
    and $c5                                       ; $6fe8: $e6 $c5
    dec c                                         ; $6fea: $0d
    rst $30                                       ; $6feb: $f7
    rst $18                                       ; $6fec: $df
    dec e                                         ; $6fed: $1d
    rst $30                                       ; $6fee: $f7
    dec e                                         ; $6fef: $1d
    rst $20                                       ; $6ff0: $e7
    dec a                                         ; $6ff1: $3d
    and $c4                                       ; $6ff2: $e6 $c4
    or $fd                                        ; $6ff4: $f6 $fd
    ei                                            ; $6ff6: $fb
    rst $30                                       ; $6ff7: $f7
    db $fc                                        ; $6ff8: $fc
    cp $e0                                        ; $6ff9: $fe $e0
    call c, $e3f7                                 ; $6ffb: $dc $f7 $e3
    and b                                         ; $6ffe: $a0
    ld b, a                                       ; $6fff: $47
    rlca                                          ; $7000: $07
    ret nz                                        ; $7001: $c0

    rst $00                                       ; $7002: $c7
    add b                                         ; $7003: $80
    sub b                                         ; $7004: $90
    and d                                         ; $7005: $a2
    adc $e2                                       ; $7006: $ce $e2
    jp nc, $d0eb                                  ; $7008: $d2 $eb $d0

    ldh [$d2], a                                  ; $700b: $e0 $d2
    ld [$1c3f], a                                 ; $700d: $ea $3f $1c
    rst $30                                       ; $7010: $f7
    ld b, e                                       ; $7011: $43
    ret nz                                        ; $7012: $c0

    add a                                         ; $7013: $87
    add b                                         ; $7014: $80
    and b                                         ; $7015: $a0
    jp hl                                         ; $7016: $e9


    ld c, [hl]                                    ; $7017: $4e
    ldh [$f7], a                                  ; $7018: $e0 $f7
    ccf                                           ; $701a: $3f
    cp a                                          ; $701b: $bf
    ld sp, $e3fe                                  ; $701c: $31 $fe $e3
    rst $38                                       ; $701f: $ff
    ld sp, $20ff                                  ; $7020: $31 $ff $20
    cp a                                          ; $7023: $bf
    ld [$0fff], sp                                ; $7024: $08 $ff $0f
    rst $38                                       ; $7027: $ff
    rrca                                          ; $7028: $0f
    ld hl, sp-$02                                 ; $7029: $f8 $fe
    push hl                                       ; $702b: $e5
    sbc a                                         ; $702c: $9f
    add hl, hl                                    ; $702d: $29
    ldh a, [$4e]                                  ; $702e: $f0 $4e
    ldh [$fe], a                                  ; $7030: $e0 $fe
    jp hl                                         ; $7032: $e9


    ld b, b                                       ; $7033: $40
    inc e                                         ; $7034: $1c
    pop hl                                        ; $7035: $e1
    cp a                                          ; $7036: $bf
    adc $e4                                       ; $7037: $ce $e4
    ret nc                                        ; $7039: $d0

    ldh [$37], a                                  ; $703a: $e0 $37
    ld sp, $ff08                                  ; $703c: $31 $08 $ff
    adc $e9                                       ; $703f: $ce $e9
    sbc a                                         ; $7041: $9f
    ld hl, sp+$1c                                 ; $7042: $f8 $1c
    ld [c], a                                     ; $7044: $e2
    call z, Call_037_7ee8                         ; $7045: $cc $e8 $7e
    ld a, h                                       ; $7048: $7c
    pop hl                                        ; $7049: $e1
    and a                                         ; $704a: $a7
    dec a                                         ; $704b: $3d
    cp a                                          ; $704c: $bf
    inc a                                         ; $704d: $3c
    cp a                                          ; $704e: $bf
    scf                                           ; $704f: $37
    add b                                         ; $7050: $80
    and b                                         ; $7051: $a0
    ld a, [$e09e]                                 ; $7052: $fa $9e $e0
    inc e                                         ; $7055: $1c
    ld a, h                                       ; $7056: $7c
    ldh [$fc], a                                  ; $7057: $e0 $fc
    rst $30                                       ; $7059: $f7
    rst $38                                       ; $705a: $ff
    rlca                                          ; $705b: $07
    rst $38                                       ; $705c: $ff
    inc bc                                        ; $705d: $03
    inc e                                         ; $705e: $1c
    rst $28                                       ; $705f: $ef
    ret nc                                        ; $7060: $d0

    and $9c                                       ; $7061: $e6 $9c
    jp hl                                         ; $7063: $e9


    ld c, h                                       ; $7064: $4c
    pop hl                                        ; $7065: $e1
    jp nc, $a0e2                                  ; $7066: $d2 $e2 $a0

    db $e4                                        ; $7069: $e4
    jp nc, $fee9                                  ; $706a: $d2 $e9 $fe

    and b                                         ; $706d: $a0
    pop hl                                        ; $706e: $e1
    rst $38                                       ; $706f: $ff
    ld d, d                                       ; $7070: $52
    rst $38                                       ; $7071: $ff
    ld l, e                                       ; $7072: $6b
    rst $38                                       ; $7073: $ff
    add hl, hl                                    ; $7074: $29
    rst $38                                       ; $7075: $ff
    db $dd                                        ; $7076: $dd
    ld a, $e8                                     ; $7077: $3e $e8
    and b                                         ; $7079: $a0
    ld b, b                                       ; $707a: $40
    rst $38                                       ; $707b: $ff
    add c                                         ; $707c: $81
    cp $e0                                        ; $707d: $fe $e0
    db $f4                                        ; $707f: $f4

Call_037_7080:
    rst $38                                       ; $7080: $ff
    ld [hl], a                                    ; $7081: $77
    sbc l                                         ; $7082: $9d
    rst $38                                       ; $7083: $ff
    add hl, bc                                    ; $7084: $09
    or b                                          ; $7085: $b0
    ldh [rP1], a                                  ; $7086: $e0 $00
    rst $38                                       ; $7088: $ff
    ldh a, [$75]                                  ; $7089: $f0 $75
    ldh [$dd], a                                  ; $708b: $e0 $dd
    ld [$a0d2], sp                                ; $708d: $08 $d2 $a0
    ld h, b                                       ; $7090: $60
    rst $38                                       ; $7091: $ff
    ld b, b                                       ; $7092: $40
    ld h, b                                       ; $7093: $60
    ret nz                                        ; $7094: $c0

    ld b, b                                       ; $7095: $40

jr_037_7096:
    db $ec                                        ; $7096: $ec
    rra                                           ; $7097: $1f
    jr nz, jr_037_7096                            ; $7098: $20 $fc

    db $10                                        ; $709a: $10
    ld hl, sp+$10                                 ; $709b: $f8 $10
    ret nz                                        ; $709d: $c0

    and b                                         ; $709e: $a0
    adc $e5                                       ; $709f: $ce $e5
    ret nc                                        ; $70a1: $d0

    db $e3                                        ; $70a2: $e3
    and a                                         ; $70a3: $a7
    ldh a, [rIE]                                  ; $70a4: $f0 $ff
    sub h                                         ; $70a6: $94
    adc $e4                                       ; $70a7: $ce $e4
    ret nc                                        ; $70a9: $d0

    db $e3                                        ; $70aa: $e3
    ld b, b                                       ; $70ab: $40
    adc $e1                                       ; $70ac: $ce $e1
    ld hl, sp-$57                                 ; $70ae: $f8 $a9
    ld b, b                                       ; $70b0: $40
    nop                                           ; $70b1: $00
    pop bc                                        ; $70b2: $c1
    ret nc                                        ; $70b3: $d0

    ld [c], a                                     ; $70b4: $e2
    ld de, $e6ce                                  ; $70b5: $11 $ce $e6
    ld e, [hl]                                    ; $70b8: $5e
    and b                                         ; $70b9: $a0
    ld [c], a                                     ; $70ba: $e2
    ld hl, sp-$2c                                 ; $70bb: $f8 $d4
    ld h, d                                       ; $70bd: $62
    and b                                         ; $70be: $a0
    adc $e3                                       ; $70bf: $ce $e3
    rst $30                                       ; $70c1: $f7
    and b                                         ; $70c2: $a0
    ld [c], a                                     ; $70c3: $e2
    add b                                         ; $70c4: $80
    adc $e1                                       ; $70c5: $ce $e1
    ld hl, sp+$60                                 ; $70c7: $f8 $60
    ld a, [c]                                     ; $70c9: $f2
    and b                                         ; $70ca: $a0
    ldh [$a0], a                                  ; $70cb: $e0 $a0
    and b                                         ; $70cd: $a0
    pop hl                                        ; $70ce: $e1
    ldh [$61], a                                  ; $70cf: $e0 $61
    push hl                                       ; $70d1: $e5
    ld bc, $0302                                  ; $70d2: $01 $02 $03
    xor a                                         ; $70d5: $af
    ld b, $03                                     ; $70d6: $06 $03
    rst $38                                       ; $70d8: $ff
    inc bc                                        ; $70d9: $03
    ld a, b                                       ; $70da: $78
    add b                                         ; $70db: $80
    rst $38                                       ; $70dc: $ff
    add h                                         ; $70dd: $84
    add b                                         ; $70de: $80
    cp $97                                        ; $70df: $fe $97
    rlca                                          ; $70e1: $07
    rst $38                                       ; $70e2: $ff
    ld [bc], a                                    ; $70e3: $02
    cp $e0                                        ; $70e4: $fe $e0
    rst $38                                       ; $70e6: $ff
    ld l, l                                       ; $70e7: $6d

jr_037_70e8:
    add b                                         ; $70e8: $80
    sub d                                         ; $70e9: $92
    ld h, b                                       ; $70ea: $60
    sub b                                         ; $70eb: $90
    ld a, a                                       ; $70ec: $7f
    rst $38                                       ; $70ed: $ff
    ld h, a                                       ; $70ee: $67
    cp $6f                                        ; $70ef: $fe $6f
    db $f4                                        ; $70f1: $f4
    rst $38                                       ; $70f2: $ff
    ld h, h                                       ; $70f3: $64
    add a                                         ; $70f4: $87
    ld h, b                                       ; $70f5: $60
    db $fd                                        ; $70f6: $fd
    ld l, b                                       ; $70f7: $68
    add e                                         ; $70f8: $83
    ld h, b                                       ; $70f9: $60
    di                                            ; $70fa: $f3
    db $10                                        ; $70fb: $10
    rst $30                                       ; $70fc: $f7
    ldh a, [rIF]                                  ; $70fd: $f0 $0f
    ld hl, sp-$01                                 ; $70ff: $f8 $ff
    rlca                                          ; $7101: $07
    db $fc                                        ; $7102: $fc
    inc b                                         ; $7103: $04
    db $fc                                        ; $7104: $fc
    rst $38                                       ; $7105: $ff
    db $fc                                        ; $7106: $fc
    rlca                                          ; $7107: $07
    db $fc                                        ; $7108: $fc
    ret nc                                        ; $7109: $d0

    rst $18                                       ; $710a: $df
    pop hl                                        ; $710b: $e1
    ld d, d                                       ; $710c: $52
    adc b                                         ; $710d: $88
    or $ee                                        ; $710e: $f6 $ee
    ld a, [$01a0]                                 ; $7110: $fa $a0 $01
    cp $e9                                        ; $7113: $fe $e9
    dec b                                         ; $7115: $05
    ld bc, $75ec                                  ; $7116: $01 $ec $75
    ld h, b                                       ; $7119: $60
    db $fd                                        ; $711a: $fd
    ld [$80e5], a                                 ; $711b: $ea $e5 $80
    add sp, -$80                                  ; $711e: $e8 $80
    add b                                         ; $7120: $80
    cp b                                          ; $7121: $b8
    add b                                         ; $7122: $80
    dec sp                                        ; $7123: $3b
    add e                                         ; $7124: $83
    add b                                         ; $7125: $80
    jr z, jr_037_70e8                             ; $7126: $28 $c0

    add b                                         ; $7128: $80
    db $e3                                        ; $7129: $e3
    add b                                         ; $712a: $80
    jr z, jr_037_7192                             ; $712b: $28 $65

    ld c, b                                       ; $712d: $48
    ld h, l                                       ; $712e: $65
    call c, $6538                                 ; $712f: $dc $38 $65
    ld l, b                                       ; $7132: $68
    ld h, l                                       ; $7133: $65
    di                                            ; $7134: $f3
    ld bc, $ba07                                  ; $7135: $01 $07 $ba
    ldh [$65], a                                  ; $7138: $e0 $65
    ld bc, $757f                                  ; $713a: $01 $7f $75
    ld bc, $01f5                                  ; $713d: $01 $f5 $01
    push hl                                       ; $7140: $e5
    ld bc, $7001                                  ; $7141: $01 $01 $70
    ld h, h                                       ; $7144: $64
    inc d                                         ; $7145: $14
    db $10                                        ; $7146: $10
    ld h, a                                       ; $7147: $67
    ld b, b                                       ; $7148: $40
    ld l, h                                       ; $7149: $6c
    rst $38                                       ; $714a: $ff
    nop                                           ; $714b: $00
    ld l, h                                       ; $714c: $6c
    rst $38                                       ; $714d: $ff
    nop                                           ; $714e: $00
    nop                                           ; $714f: $00
    nop                                           ; $7150: $00
    and c                                         ; $7151: $a1
    ld [hl], c                                    ; $7152: $71
    jr jr_037_71c7                                ; $7153: $18 $72

    sbc d                                         ; $7155: $9a
    ld [hl], d                                    ; $7156: $72
    ld de, $0073                                  ; $7157: $11 $73 $00
    nop                                           ; $715a: $00
    nop                                           ; $715b: $00
    nop                                           ; $715c: $00
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00
    nop                                           ; $7160: $00
    sub h                                         ; $7161: $94
    ld [hl], e                                    ; $7162: $73
    rst $38                                       ; $7163: $ff
    ld [hl], e                                    ; $7164: $73
    ld l, c                                       ; $7165: $69
    ld [hl], h                                    ; $7166: $74
    call nc, Call_000_0074                        ; $7167: $d4 $74 $00
    nop                                           ; $716a: $00
    nop                                           ; $716b: $00
    nop                                           ; $716c: $00
    nop                                           ; $716d: $00
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    nop                                           ; $7170: $00
    ccf                                           ; $7171: $3f
    ld [hl], l                                    ; $7172: $75
    xor [hl]                                      ; $7173: $ae
    ld [hl], l                                    ; $7174: $75
    dec de                                        ; $7175: $1b
    halt                                          ; $7176: $76
    adc d                                         ; $7177: $8a
    halt                                          ; $7178: $76
    nop                                           ; $7179: $00
    nop                                           ; $717a: $00
    nop                                           ; $717b: $00
    nop                                           ; $717c: $00
    nop                                           ; $717d: $00
    nop                                           ; $717e: $00
    nop                                           ; $717f: $00
    nop                                           ; $7180: $00
    ld sp, hl                                     ; $7181: $f9
    halt                                          ; $7182: $76
    ld l, b                                       ; $7183: $68
    ld [hl], a                                    ; $7184: $77
    rst $10                                       ; $7185: $d7
    ld [hl], a                                    ; $7186: $77
    ld c, b                                       ; $7187: $48
    ld a, b                                       ; $7188: $78
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    nop                                           ; $718b: $00
    nop                                           ; $718c: $00
    nop                                           ; $718d: $00
    nop                                           ; $718e: $00
    nop                                           ; $718f: $00
    nop                                           ; $7190: $00
    or a                                          ; $7191: $b7

jr_037_7192:
    ld a, b                                       ; $7192: $78
    dec d                                         ; $7193: $15
    ld a, c                                       ; $7194: $79
    ld [hl], e                                    ; $7195: $73
    ld a, c                                       ; $7196: $79
    rst $08                                       ; $7197: $cf
    ld a, c                                       ; $7198: $79
    nop                                           ; $7199: $00
    nop                                           ; $719a: $00
    nop                                           ; $719b: $00
    nop                                           ; $719c: $00
    nop                                           ; $719d: $00
    nop                                           ; $719e: $00
    nop                                           ; $719f: $00
    nop                                           ; $71a0: $00
    dec d                                         ; $71a1: $15
    dec c                                         ; $71a2: $0d
    rst $38                                       ; $71a3: $ff
    and $2d                                       ; $71a4: $e6 $2d
    ld hl, sp-$1b                                 ; $71a6: $f8 $e5
    dec l                                         ; $71a8: $2d
    or $e5                                        ; $71a9: $f6 $e5
    db $ed                                        ; $71ab: $ed
    rst $20                                       ; $71ac: $e7
    jp c, $99e7                                   ; $71ad: $da $e7 $99

    ld c, l                                       ; $71b0: $4d
    rst $30                                       ; $71b1: $f7
    add sp, -$28                                  ; $71b2: $e8 $d8
    rst $20                                       ; $71b4: $e7
    ld c, l                                       ; $71b5: $4d
    ld c, l                                       ; $71b6: $4d
    add sp, -$1e                                  ; $71b7: $e8 $e2
    ld sp, hl                                     ; $71b9: $f9
    ldh [$66], a                                  ; $71ba: $e0 $66
    rst $38                                       ; $71bc: $ff
    ld h, a                                       ; $71bd: $67
    nop                                           ; $71be: $00
    nop                                           ; $71bf: $00
    nop                                           ; $71c0: $00
    ld bc, $0101                                  ; $71c1: $01 $01 $01
    ld l, b                                       ; $71c4: $68
    rst $38                                       ; $71c5: $ff
    ld l, c                                       ; $71c6: $69

jr_037_71c7:
    ld l, h                                       ; $71c7: $6c
    dec sp                                        ; $71c8: $3b
    ld [bc], a                                    ; $71c9: $02
    ld [bc], a                                    ; $71ca: $02
    inc bc                                        ; $71cb: $03
    inc b                                         ; $71cc: $04
    dec b                                         ; $71cd: $05
    rst $38                                       ; $71ce: $ff
    dec b                                         ; $71cf: $05
    ccf                                           ; $71d0: $3f
    ld l, d                                       ; $71d1: $6a
    ld l, h                                       ; $71d2: $6c
    dec b                                         ; $71d3: $05
    dec hl                                        ; $71d4: $2b
    ld [bc], a                                    ; $71d5: $02
    ld c, $ff                                     ; $71d6: $0e $ff
    rrca                                          ; $71d8: $0f
    db $10                                        ; $71d9: $10
    ld l, a                                       ; $71da: $6f
    ld [bc], a                                    ; $71db: $02
    ld l, d                                       ; $71dc: $6a
    ld [hl], h                                    ; $71dd: $74
    dec b                                         ; $71de: $05
    dec sp                                        ; $71df: $3b
    rst $38                                       ; $71e0: $ff
    ld [bc], a                                    ; $71e1: $02
    dec e                                         ; $71e2: $1d
    ld e, $1f                                     ; $71e3: $1e $1f
    ccf                                           ; $71e5: $3f
    ld [bc], a                                    ; $71e6: $02
    ld [hl], l                                    ; $71e7: $75
    ld l, d                                       ; $71e8: $6a
    rst $38                                       ; $71e9: $ff
    ld l, e                                       ; $71ea: $6b
    dec b                                         ; $71eb: $05
    dec hl                                        ; $71ec: $2b
    inc l                                         ; $71ed: $2c
    dec l                                         ; $71ee: $2d
    ld l, $02                                     ; $71ef: $2e $02
    ld l, e                                       ; $71f1: $6b
    rst $38                                       ; $71f2: $ff
    ld l, h                                       ; $71f3: $6c
    ld l, l                                       ; $71f4: $6d
    ld [bc], a                                    ; $71f5: $02
    ld l, e                                       ; $71f6: $6b
    dec sp                                        ; $71f7: $3b
    inc a                                         ; $71f8: $3c
    dec a                                         ; $71f9: $3d
    ld a, $ff                                     ; $71fa: $3e $ff
    ld l, e                                       ; $71fc: $6b
    dec b                                         ; $71fd: $05
    ld l, [hl]                                    ; $71fe: $6e
    ld l, h                                       ; $71ff: $6c
    ld [hl], b                                    ; $7200: $70
    ld [hl], c                                    ; $7201: $71
    ld c, c                                       ; $7202: $49
    ld c, d                                       ; $7203: $4a
    rst $38                                       ; $7204: $ff
    ld c, e                                       ; $7205: $4b
    ld c, h                                       ; $7206: $4c
    ld [hl], d                                    ; $7207: $72
    ld [hl], e                                    ; $7208: $73
    ld l, d                                       ; $7209: $6a
    ld h, [hl]                                    ; $720a: $66
    ld bc, $7f01                                  ; $720b: $01 $01 $7f
    ld e, c                                       ; $720e: $59
    ld e, d                                       ; $720f: $5a
    ld e, e                                       ; $7210: $5b
    ld e, h                                       ; $7211: $5c
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    ld l, c                                       ; $7214: $69
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    rrca                                          ; $7218: $0f
    dec l                                         ; $7219: $2d
    dec l                                         ; $721a: $2d
    dec l                                         ; $721b: $2d
    dec c                                         ; $721c: $0d

jr_037_721d:
    rst $38                                       ; $721d: $ff
    ldh [$f9], a                                  ; $721e: $e0 $f9
    ld [c], a                                     ; $7220: $e2
    or $e4                                        ; $7221: $f6 $e4
    db $fc                                        ; $7223: $fc
    db $e3                                        ; $7224: $e3
    jr jr_037_721d                                ; $7225: $18 $f6

    ld [c], a                                     ; $7227: $e2
    db $e3                                        ; $7228: $e3
    db $e3                                        ; $7229: $e3
    ld [c], a                                     ; $722a: $e2
    pop hl                                        ; $722b: $e1
    dec l                                         ; $722c: $2d
    ld l, l                                       ; $722d: $6d
    ret c                                         ; $722e: $d8

    push hl                                       ; $722f: $e5
    push af                                       ; $7230: $f5
    ldh [$ce], a                                  ; $7231: $e0 $ce
    push hl                                       ; $7233: $e5
    and $d8                                       ; $7234: $e6 $d8
    and $6d                                       ; $7236: $e6 $6d
    ld l, l                                       ; $7238: $6d
    db $ec                                        ; $7239: $ec
    ld [c], a                                     ; $723a: $e2
    ld sp, hl                                     ; $723b: $f9
    ldh [rBCPD], a                                ; $723c: $e0 $69
    ld l, b                                       ; $723e: $68
    ld bc, $01ff                                  ; $723f: $01 $ff $01
    ld bc, $0000                                  ; $7242: $01 $00 $00
    nop                                           ; $7245: $00
    ld h, a                                       ; $7246: $67
    ld h, [hl]                                    ; $7247: $66
    ld l, d                                       ; $7248: $6a
    rst $38                                       ; $7249: $ff
    ccf                                           ; $724a: $3f
    dec b                                         ; $724b: $05
    dec b                                         ; $724c: $05
    ld b, $07                                     ; $724d: $06 $07
    ld [bc], a                                    ; $724f: $02
    ld [bc], a                                    ; $7250: $02
    dec sp                                        ; $7251: $3b
    rst $38                                       ; $7252: $ff
    ld l, h                                       ; $7253: $6c
    ld l, d                                       ; $7254: $6a
    ld [bc], a                                    ; $7255: $02
    ld l, a                                       ; $7256: $6f
    ld de, $1312                                  ; $7257: $11 $12 $13
    inc d                                         ; $725a: $14
    rst $38                                       ; $725b: $ff
    dec hl                                        ; $725c: $2b
    dec b                                         ; $725d: $05
    ld l, h                                       ; $725e: $6c
    ld [hl], l                                    ; $725f: $75
    ld [bc], a                                    ; $7260: $02
    ccf                                           ; $7261: $3f
    jr nz, jr_037_7285                            ; $7262: $20 $21

    rst $38                                       ; $7264: $ff
    ld [hl+], a                                   ; $7265: $22
    inc hl                                        ; $7266: $23
    dec sp                                        ; $7267: $3b
    dec b                                         ; $7268: $05
    ld [hl], h                                    ; $7269: $74
    ld l, h                                       ; $726a: $6c
    ld l, e                                       ; $726b: $6b
    ld [bc], a                                    ; $726c: $02
    rst $38                                       ; $726d: $ff
    cpl                                           ; $726e: $2f
    jr nc, jr_037_72a2                            ; $726f: $30 $31

    ld [hl-], a                                   ; $7271: $32
    dec b                                         ; $7272: $05
    ld l, e                                       ; $7273: $6b
    ld l, d                                       ; $7274: $6a
    ld l, [hl]                                    ; $7275: $6e
    rst $38                                       ; $7276: $ff
    dec b                                         ; $7277: $05
    ld l, e                                       ; $7278: $6b
    ccf                                           ; $7279: $3f
    ld b, b                                       ; $727a: $40
    ld b, c                                       ; $727b: $41
    ld b, d                                       ; $727c: $42
    ld l, e                                       ; $727d: $6b
    ld [bc], a                                    ; $727e: $02
    rst $38                                       ; $727f: $ff
    ld l, l                                       ; $7280: $6d
    ld l, d                                       ; $7281: $6a
    ld [hl], e                                    ; $7282: $73
    ld [hl], d                                    ; $7283: $72
    ld c, l                                       ; $7284: $4d

jr_037_7285:
    ld c, [hl]                                    ; $7285: $4e
    ld c, a                                       ; $7286: $4f
    ld d, b                                       ; $7287: $50
    rst $38                                       ; $7288: $ff
    ld [hl], c                                    ; $7289: $71
    ld [hl], b                                    ; $728a: $70
    ld l, h                                       ; $728b: $6c
    ld l, c                                       ; $728c: $69
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    ld e, l                                       ; $728f: $5d
    ld e, [hl]                                    ; $7290: $5e
    rra                                           ; $7291: $1f
    ld e, a                                       ; $7292: $5f
    ld h, b                                       ; $7293: $60
    ld bc, $6601                                  ; $7294: $01 $01 $66
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    dec d                                         ; $729a: $15
    dec c                                         ; $729b: $0d
    rst $38                                       ; $729c: $ff
    and $2d                                       ; $729d: $e6 $2d
    ld hl, sp-$1b                                 ; $729f: $f8 $e5
    dec l                                         ; $72a1: $2d

jr_037_72a2:
    or $e5                                        ; $72a2: $f6 $e5
    db $ed                                        ; $72a4: $ed
    rst $20                                       ; $72a5: $e7
    jp c, $99e7                                   ; $72a6: $da $e7 $99

    ld c, l                                       ; $72a9: $4d
    rst $30                                       ; $72aa: $f7
    add sp, -$28                                  ; $72ab: $e8 $d8
    rst $20                                       ; $72ad: $e7
    ld c, l                                       ; $72ae: $4d
    ld c, l                                       ; $72af: $4d
    add sp, -$1e                                  ; $72b0: $e8 $e2
    ld sp, hl                                     ; $72b2: $f9
    ldh [$66], a                                  ; $72b3: $e0 $66
    rst $38                                       ; $72b5: $ff
    ld h, a                                       ; $72b6: $67
    nop                                           ; $72b7: $00
    nop                                           ; $72b8: $00
    nop                                           ; $72b9: $00
    ld bc, $0101                                  ; $72ba: $01 $01 $01
    ld l, b                                       ; $72bd: $68
    rst $38                                       ; $72be: $ff
    ld l, c                                       ; $72bf: $69
    ld l, h                                       ; $72c0: $6c
    dec sp                                        ; $72c1: $3b
    ld [bc], a                                    ; $72c2: $02
    ld [$0a09], sp                                ; $72c3: $08 $09 $0a
    dec b                                         ; $72c6: $05
    rst $38                                       ; $72c7: $ff
    dec b                                         ; $72c8: $05
    ccf                                           ; $72c9: $3f
    ld l, d                                       ; $72ca: $6a
    ld l, h                                       ; $72cb: $6c
    dec b                                         ; $72cc: $05
    dec hl                                        ; $72cd: $2b
    dec d                                         ; $72ce: $15
    ld d, $ff                                     ; $72cf: $16 $ff
    rla                                           ; $72d1: $17
    jr jr_037_7343                                ; $72d2: $18 $6f

    ld [bc], a                                    ; $72d4: $02
    ld l, d                                       ; $72d5: $6a
    ld [hl], h                                    ; $72d6: $74
    dec b                                         ; $72d7: $05
    dec sp                                        ; $72d8: $3b
    rst $38                                       ; $72d9: $ff
    inc h                                         ; $72da: $24
    dec h                                         ; $72db: $25
    ld h, $27                                     ; $72dc: $26 $27
    ccf                                           ; $72de: $3f
    ld [bc], a                                    ; $72df: $02
    ld [hl], l                                    ; $72e0: $75
    ld l, d                                       ; $72e1: $6a
    rst $38                                       ; $72e2: $ff
    ld l, e                                       ; $72e3: $6b
    dec b                                         ; $72e4: $05
    inc sp                                        ; $72e5: $33
    inc [hl]                                      ; $72e6: $34
    dec [hl]                                      ; $72e7: $35
    ld [hl], $02                                  ; $72e8: $36 $02
    ld l, e                                       ; $72ea: $6b
    rst $38                                       ; $72eb: $ff
    ld l, h                                       ; $72ec: $6c
    ld l, l                                       ; $72ed: $6d
    ld [bc], a                                    ; $72ee: $02
    ld l, e                                       ; $72ef: $6b
    dec sp                                        ; $72f0: $3b
    ld b, e                                       ; $72f1: $43
    ld b, h                                       ; $72f2: $44
    ld b, l                                       ; $72f3: $45
    rst $38                                       ; $72f4: $ff
    ld l, e                                       ; $72f5: $6b
    dec b                                         ; $72f6: $05
    ld l, [hl]                                    ; $72f7: $6e
    ld l, h                                       ; $72f8: $6c
    ld [hl], b                                    ; $72f9: $70
    ld [hl], c                                    ; $72fa: $71
    ld d, c                                       ; $72fb: $51
    ld d, d                                       ; $72fc: $52
    rst $38                                       ; $72fd: $ff
    ld d, e                                       ; $72fe: $53
    ld d, h                                       ; $72ff: $54
    ld [hl], d                                    ; $7300: $72
    ld [hl], e                                    ; $7301: $73
    ld l, d                                       ; $7302: $6a
    ld h, [hl]                                    ; $7303: $66
    ld bc, $7f01                                  ; $7304: $01 $01 $7f
    ld e, c                                       ; $7307: $59
    ld e, d                                       ; $7308: $5a
    ld h, c                                       ; $7309: $61
    ld h, d                                       ; $730a: $62
    nop                                           ; $730b: $00
    nop                                           ; $730c: $00
    ld l, c                                       ; $730d: $69
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    nop                                           ; $7310: $00
    rrca                                          ; $7311: $0f
    dec l                                         ; $7312: $2d
    dec l                                         ; $7313: $2d
    dec l                                         ; $7314: $2d
    dec c                                         ; $7315: $0d
    rst $38                                       ; $7316: $ff
    ldh [$f9], a                                  ; $7317: $e0 $f9
    ld [c], a                                     ; $7319: $e2
    or $e4                                        ; $731a: $f6 $e4
    db $fc                                        ; $731c: $fc
    db $e3                                        ; $731d: $e3
    inc [hl]                                      ; $731e: $34
    or $e2                                        ; $731f: $f6 $e2
    db $e3                                        ; $7321: $e3
    db $e3                                        ; $7322: $e3
    ld c, l                                       ; $7323: $4d
    db $db                                        ; $7324: $db
    ldh [$2d], a                                  ; $7325: $e0 $2d
    ld l, l                                       ; $7327: $6d
    ret c                                         ; $7328: $d8

    push hl                                       ; $7329: $e5
    push af                                       ; $732a: $f5
    ldh [$cc], a                                  ; $732b: $e0 $cc
    adc $e5                                       ; $732d: $ce $e5
    ret c                                         ; $732f: $d8

    and $6d                                       ; $7330: $e6 $6d
    ld l, l                                       ; $7332: $6d
    db $ec                                        ; $7333: $ec
    ld [c], a                                     ; $7334: $e2
    ld sp, hl                                     ; $7335: $f9
    ldh [rBCPD], a                                ; $7336: $e0 $69
    ld l, b                                       ; $7338: $68
    rst $38                                       ; $7339: $ff
    ld bc, $0101                                  ; $733a: $01 $01 $01
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    ld h, a                                       ; $7340: $67
    ld h, [hl]                                    ; $7341: $66
    rst $38                                       ; $7342: $ff

jr_037_7343:
    ld l, d                                       ; $7343: $6a
    ccf                                           ; $7344: $3f
    dec b                                         ; $7345: $05
    dec bc                                        ; $7346: $0b
    inc c                                         ; $7347: $0c
    dec c                                         ; $7348: $0d
    ld [bc], a                                    ; $7349: $02
    ld [bc], a                                    ; $734a: $02
    rst $38                                       ; $734b: $ff
    dec sp                                        ; $734c: $3b
    ld l, h                                       ; $734d: $6c
    ld l, d                                       ; $734e: $6a
    ld [bc], a                                    ; $734f: $02
    ld l, a                                       ; $7350: $6f
    add hl, de                                    ; $7351: $19
    ld a, [de]                                    ; $7352: $1a
    dec de                                        ; $7353: $1b
    rst $38                                       ; $7354: $ff
    inc e                                         ; $7355: $1c
    dec hl                                        ; $7356: $2b
    dec b                                         ; $7357: $05
    ld l, h                                       ; $7358: $6c
    ld [hl], l                                    ; $7359: $75
    ld [bc], a                                    ; $735a: $02
    ccf                                           ; $735b: $3f
    jr z, @+$01                                   ; $735c: $28 $ff

    add hl, hl                                    ; $735e: $29
    ld a, [hl+]                                   ; $735f: $2a
    inc e                                         ; $7360: $1c
    dec sp                                        ; $7361: $3b
    dec b                                         ; $7362: $05
    ld [hl], h                                    ; $7363: $74
    ld l, h                                       ; $7364: $6c
    ld l, e                                       ; $7365: $6b
    rst $38                                       ; $7366: $ff
    ld [bc], a                                    ; $7367: $02
    scf                                           ; $7368: $37
    jr c, jr_037_73a4                             ; $7369: $38 $39

    ld a, [hl-]                                   ; $736b: $3a
    dec b                                         ; $736c: $05
    ld l, e                                       ; $736d: $6b
    ld l, d                                       ; $736e: $6a
    rst $38                                       ; $736f: $ff
    ld l, [hl]                                    ; $7370: $6e
    dec b                                         ; $7371: $05
    ld l, e                                       ; $7372: $6b
    ccf                                           ; $7373: $3f
    ld b, [hl]                                    ; $7374: $46
    ld b, a                                       ; $7375: $47
    ld c, b                                       ; $7376: $48
    ld l, e                                       ; $7377: $6b
    rst $38                                       ; $7378: $ff
    ld [bc], a                                    ; $7379: $02
    ld l, l                                       ; $737a: $6d
    ld l, d                                       ; $737b: $6a
    ld [hl], e                                    ; $737c: $73
    ld [hl], d                                    ; $737d: $72
    ld d, l                                       ; $737e: $55
    ld d, [hl]                                    ; $737f: $56
    ld d, a                                       ; $7380: $57
    rst $38                                       ; $7381: $ff
    ld e, b                                       ; $7382: $58
    ld [hl], c                                    ; $7383: $71
    ld [hl], b                                    ; $7384: $70
    ld l, h                                       ; $7385: $6c
    ld l, c                                       ; $7386: $69
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    ld e, l                                       ; $7389: $5d
    ccf                                           ; $738a: $3f
    ld h, e                                       ; $738b: $63
    ld h, h                                       ; $738c: $64
    ld h, l                                       ; $738d: $65
    ld bc, $6601                                  ; $738e: $01 $01 $66
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    rla                                           ; $7394: $17
    dec c                                         ; $7395: $0d
    dec c                                         ; $7396: $0d
    dec l                                         ; $7397: $2d
    cp $e3                                        ; $7398: $fe $e3
    dec l                                         ; $739a: $2d
    or $e1                                        ; $739b: $f6 $e1
    ld a, [c]                                     ; $739d: $f2
    ld [c], a                                     ; $739e: $e2
    or $e4                                        ; $739f: $f6 $e4
    nop                                           ; $73a1: $00
    and $e0                                       ; $73a2: $e6 $e0

jr_037_73a4:
    push hl                                       ; $73a4: $e5
    db $e3                                        ; $73a5: $e3
    db $dd                                        ; $73a6: $dd
    push hl                                       ; $73a7: $e5
    db $ed                                        ; $73a8: $ed
    ld [c], a                                     ; $73a9: $e2
    db $db                                        ; $73aa: $db
    pop hl                                        ; $73ab: $e1
    ld [c], a                                     ; $73ac: $e2
    and $f6                                       ; $73ad: $e6 $f6
    db $ec                                        ; $73af: $ec
    cp d                                          ; $73b0: $ba
    pop hl                                        ; $73b1: $e1
    ei                                            ; $73b2: $fb
    ld c, b                                       ; $73b3: $48
    nop                                           ; $73b4: $00
    rst $38                                       ; $73b5: $ff
    db $e4                                        ; $73b6: $e4
    ld c, b                                       ; $73b7: $48
    ld c, e                                       ; $73b8: $4b
    ld bc, $0101                                  ; $73b9: $01 $01 $01
    ei                                            ; $73bc: $fb
    ld [bc], a                                    ; $73bd: $02
    inc bc                                        ; $73be: $03
    ei                                            ; $73bf: $fb
    ldh [rWX], a                                  ; $73c0: $e0 $4b
    ld c, h                                       ; $73c2: $4c
    ld [$0808], sp                                ; $73c3: $08 $08 $08
    ld a, a                                       ; $73c6: $7f
    add hl, bc                                    ; $73c7: $09
    ld a, [bc]                                    ; $73c8: $0a
    dec bc                                        ; $73c9: $0b
    ld [$4c08], sp                                ; $73ca: $08 $08 $4c
    ld c, l                                       ; $73cd: $4d
    db $ec                                        ; $73ce: $ec
    ldh [rIE], a                                  ; $73cf: $e0 $ff
    inc de                                        ; $73d1: $13
    inc d                                         ; $73d2: $14
    dec d                                         ; $73d3: $15
    ld bc, $4d01                                  ; $73d4: $01 $01 $4d
    ld c, c                                       ; $73d7: $49
    ld [$08ff], sp                                ; $73d8: $08 $ff $08
    dec e                                         ; $73db: $1d
    ld e, $1f                                     ; $73dc: $1e $1f
    jr nz, jr_037_73e8                            ; $73de: $20 $08

    ld [$de49], sp                                ; $73e0: $08 $49 $de
    ret c                                         ; $73e3: $d8

    ldh [$28], a                                  ; $73e4: $e0 $28
    add hl, hl                                    ; $73e6: $29
    ld a, [hl+]                                   ; $73e7: $2a

jr_037_73e8:
    dec hl                                        ; $73e8: $2b
    ret c                                         ; $73e9: $d8

    db $e3                                        ; $73ea: $e3
    ld [hl], $37                                  ; $73eb: $36 $37
    ei                                            ; $73ed: $fb
    jr c, jr_037_7429                             ; $73ee: $38 $39

    ret c                                         ; $73f0: $d8

    ldh [$4e], a                                  ; $73f1: $e0 $4e
    ld b, c                                       ; $73f3: $41
    ld b, c                                       ; $73f4: $41
    ld b, c                                       ; $73f5: $41
    ld b, d                                       ; $73f6: $42
    dec b                                         ; $73f7: $05
    ld b, e                                       ; $73f8: $43
    ei                                            ; $73f9: $fb
    ldh [$4e], a                                  ; $73fa: $e0 $4e
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    nop                                           ; $73fe: $00
    rla                                           ; $73ff: $17
    dec c                                         ; $7400: $0d
    dec c                                         ; $7401: $0d
    dec l                                         ; $7402: $2d
    cp $e3                                        ; $7403: $fe $e3
    dec l                                         ; $7405: $2d
    or $e1                                        ; $7406: $f6 $e1
    ld a, [c]                                     ; $7408: $f2
    ld [c], a                                     ; $7409: $e2
    or $e4                                        ; $740a: $f6 $e4
    nop                                           ; $740c: $00
    and $e0                                       ; $740d: $e6 $e0
    push hl                                       ; $740f: $e5
    db $e3                                        ; $7410: $e3
    db $dd                                        ; $7411: $dd
    push hl                                       ; $7412: $e5
    db $ed                                        ; $7413: $ed
    ld [c], a                                     ; $7414: $e2
    db $db                                        ; $7415: $db
    pop hl                                        ; $7416: $e1
    ld [c], a                                     ; $7417: $e2
    and $f6                                       ; $7418: $e6 $f6
    db $ec                                        ; $741a: $ec
    cp d                                          ; $741b: $ba
    pop hl                                        ; $741c: $e1
    ei                                            ; $741d: $fb
    ld c, b                                       ; $741e: $48
    nop                                           ; $741f: $00
    rst $38                                       ; $7420: $ff
    db $e4                                        ; $7421: $e4
    ld c, b                                       ; $7422: $48
    ld c, e                                       ; $7423: $4b
    ld bc, $0101                                  ; $7424: $01 $01 $01
    ei                                            ; $7427: $fb
    inc b                                         ; $7428: $04

jr_037_7429:
    dec b                                         ; $7429: $05
    ei                                            ; $742a: $fb
    ldh [rWX], a                                  ; $742b: $e0 $4b
    ld c, h                                       ; $742d: $4c
    ld [$0808], sp                                ; $742e: $08 $08 $08
    ld a, a                                       ; $7431: $7f
    inc c                                         ; $7432: $0c
    dec c                                         ; $7433: $0d
    ld c, $08                                     ; $7434: $0e $08
    ld [$4d4c], sp                                ; $7436: $08 $4c $4d
    db $ec                                        ; $7439: $ec
    ldh [rIE], a                                  ; $743a: $e0 $ff
    ld d, $17                                     ; $743c: $16 $17
    jr @+$03                                      ; $743e: $18 $01

    ld bc, $494d                                  ; $7440: $01 $4d $49
    ld [$08ff], sp                                ; $7443: $08 $ff $08
    ld hl, $2322                                  ; $7446: $21 $22 $23
    inc h                                         ; $7449: $24
    ld [$4908], sp                                ; $744a: $08 $08 $49
    sbc $d8                                       ; $744d: $de $d8
    ldh [$2c], a                                  ; $744f: $e0 $2c
    dec l                                         ; $7451: $2d
    ld l, $2f                                     ; $7452: $2e $2f
    ret c                                         ; $7454: $d8

    db $e4                                        ; $7455: $e4
    ld a, [hl-]                                   ; $7456: $3a
    dec sp                                        ; $7457: $3b
    db $fd                                        ; $7458: $fd
    inc a                                         ; $7459: $3c
    ret c                                         ; $745a: $d8

    ldh [$4e], a                                  ; $745b: $e0 $4e
    ld b, c                                       ; $745d: $41
    ld b, c                                       ; $745e: $41
    ld b, c                                       ; $745f: $41
    ld b, h                                       ; $7460: $44
    ld b, l                                       ; $7461: $45
    ld [bc], a                                    ; $7462: $02
    ei                                            ; $7463: $fb
    ldh [$4e], a                                  ; $7464: $e0 $4e
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    rla                                           ; $7469: $17
    dec c                                         ; $746a: $0d
    dec c                                         ; $746b: $0d
    dec l                                         ; $746c: $2d
    cp $e3                                        ; $746d: $fe $e3
    dec l                                         ; $746f: $2d
    or $e1                                        ; $7470: $f6 $e1
    ld a, [c]                                     ; $7472: $f2
    ld [c], a                                     ; $7473: $e2
    or $e4                                        ; $7474: $f6 $e4
    nop                                           ; $7476: $00
    and $e0                                       ; $7477: $e6 $e0
    push hl                                       ; $7479: $e5
    pop hl                                        ; $747a: $e1
    rst $30                                       ; $747b: $f7
    ld [c], a                                     ; $747c: $e2
    db $db                                        ; $747d: $db
    db $e4                                        ; $747e: $e4
    db $d3                                        ; $747f: $d3
    db $e3                                        ; $7480: $e3
    ld [c], a                                     ; $7481: $e2
    rst $20                                       ; $7482: $e7
    or $ec                                        ; $7483: $f6 $ec
    cp d                                          ; $7485: $ba
    pop hl                                        ; $7486: $e1
    ei                                            ; $7487: $fb
    ld c, b                                       ; $7488: $48
    nop                                           ; $7489: $00
    rst $38                                       ; $748a: $ff
    db $e4                                        ; $748b: $e4
    ld c, b                                       ; $748c: $48
    ld c, e                                       ; $748d: $4b
    ld bc, $0101                                  ; $748e: $01 $01 $01
    ei                                            ; $7491: $fb
    ld b, $07                                     ; $7492: $06 $07
    ei                                            ; $7494: $fb
    ldh [rWX], a                                  ; $7495: $e0 $4b
    ld c, h                                       ; $7497: $4c
    ld [$0f08], sp                                ; $7498: $08 $08 $0f
    rst $38                                       ; $749b: $ff
    db $10                                        ; $749c: $10
    ld de, $0812                                  ; $749d: $11 $12 $08
    ld [$4d4c], sp                                ; $74a0: $08 $4c $4d
    ld bc, $01ff                                  ; $74a3: $01 $ff $01
    add hl, de                                    ; $74a6: $19
    ld a, [de]                                    ; $74a7: $1a
    dec de                                        ; $74a8: $1b
    inc e                                         ; $74a9: $1c
    ld bc, $4d01                                  ; $74aa: $01 $01 $4d
    rst $38                                       ; $74ad: $ff
    ld c, c                                       ; $74ae: $49
    ld [$0808], sp                                ; $74af: $08 $08 $08
    dec h                                         ; $74b2: $25
    ld h, $27                                     ; $74b3: $26 $27
    ld [$08bb], sp                                ; $74b5: $08 $bb $08
    ld c, c                                       ; $74b8: $49
    ret c                                         ; $74b9: $d8

    pop hl                                        ; $74ba: $e1
    jr nc, @+$33                                  ; $74bb: $30 $31

    ld [hl-], a                                   ; $74bd: $32
    ret c                                         ; $74be: $d8

    db $e3                                        ; $74bf: $e3
    ld [$3df7], sp                                ; $74c0: $08 $f7 $3d
    ld a, $3f                                     ; $74c3: $3e $3f
    ret c                                         ; $74c5: $d8

    ldh [$4e], a                                  ; $74c6: $e0 $4e
    ld b, c                                       ; $74c8: $41
    ld b, c                                       ; $74c9: $41
    ld b, c                                       ; $74ca: $41
    dec bc                                        ; $74cb: $0b
    ld b, [hl]                                    ; $74cc: $46
    ld b, a                                       ; $74cd: $47
    ei                                            ; $74ce: $fb
    ldh [$4e], a                                  ; $74cf: $e0 $4e
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    nop                                           ; $74d3: $00
    rla                                           ; $74d4: $17
    dec c                                         ; $74d5: $0d
    dec c                                         ; $74d6: $0d
    dec l                                         ; $74d7: $2d
    cp $e3                                        ; $74d8: $fe $e3
    dec l                                         ; $74da: $2d
    or $e1                                        ; $74db: $f6 $e1
    ld a, [c]                                     ; $74dd: $f2
    ld [c], a                                     ; $74de: $e2
    or $e4                                        ; $74df: $f6 $e4
    nop                                           ; $74e1: $00
    and $e0                                       ; $74e2: $e6 $e0
    push hl                                       ; $74e4: $e5
    db $e3                                        ; $74e5: $e3
    db $dd                                        ; $74e6: $dd
    push hl                                       ; $74e7: $e5
    db $ed                                        ; $74e8: $ed
    ld [c], a                                     ; $74e9: $e2
    db $db                                        ; $74ea: $db
    pop hl                                        ; $74eb: $e1
    ld [c], a                                     ; $74ec: $e2
    and $f6                                       ; $74ed: $e6 $f6
    db $ec                                        ; $74ef: $ec
    cp d                                          ; $74f0: $ba
    pop hl                                        ; $74f1: $e1
    ei                                            ; $74f2: $fb
    ld c, b                                       ; $74f3: $48
    nop                                           ; $74f4: $00
    rst $38                                       ; $74f5: $ff
    db $e4                                        ; $74f6: $e4
    ld c, b                                       ; $74f7: $48
    ld c, e                                       ; $74f8: $4b
    ld bc, $0101                                  ; $74f9: $01 $01 $01
    ei                                            ; $74fc: $fb
    inc b                                         ; $74fd: $04
    dec b                                         ; $74fe: $05
    ei                                            ; $74ff: $fb
    ldh [rWX], a                                  ; $7500: $e0 $4b
    ld c, h                                       ; $7502: $4c
    ld [$0808], sp                                ; $7503: $08 $08 $08
    ld a, a                                       ; $7506: $7f
    inc c                                         ; $7507: $0c
    dec c                                         ; $7508: $0d
    ld c, $08                                     ; $7509: $0e $08
    ld [$4d4c], sp                                ; $750b: $08 $4c $4d
    db $ec                                        ; $750e: $ec
    ldh [rIE], a                                  ; $750f: $e0 $ff
    ld d, $17                                     ; $7511: $16 $17
    jr @+$03                                      ; $7513: $18 $01

    ld bc, $494d                                  ; $7515: $01 $4d $49
    ld [$08ff], sp                                ; $7518: $08 $ff $08
    ld hl, $2322                                  ; $751b: $21 $22 $23
    inc h                                         ; $751e: $24
    ld [$4908], sp                                ; $751f: $08 $08 $49
    sbc $d8                                       ; $7522: $de $d8
    ldh [$33], a                                  ; $7524: $e0 $33
    inc [hl]                                      ; $7526: $34
    dec [hl]                                      ; $7527: $35
    cpl                                           ; $7528: $2f
    ret c                                         ; $7529: $d8

    db $e3                                        ; $752a: $e3
    ld [hl], $40                                  ; $752b: $36 $40
    ei                                            ; $752d: $fb
    dec sp                                        ; $752e: $3b
    inc a                                         ; $752f: $3c
    ret c                                         ; $7530: $d8

    ldh [$4e], a                                  ; $7531: $e0 $4e
    ld b, c                                       ; $7533: $41
    ld b, c                                       ; $7534: $41
    ld b, c                                       ; $7535: $41
    ld b, h                                       ; $7536: $44
    dec b                                         ; $7537: $05
    ld b, l                                       ; $7538: $45
    ei                                            ; $7539: $fb
    ldh [$4e], a                                  ; $753a: $e0 $4e
    nop                                           ; $753c: $00
    nop                                           ; $753d: $00
    nop                                           ; $753e: $00
    rst $28                                       ; $753f: $ef
    dec c                                         ; $7540: $0d
    dec c                                         ; $7541: $0d
    dec l                                         ; $7542: $2d
    dec c                                         ; $7543: $0d
    db $fc                                        ; $7544: $fc

jr_037_7545:
    ld [c], a                                     ; $7545: $e2
    dec l                                         ; $7546: $2d
    dec c                                         ; $7547: $0d
    dec l                                         ; $7548: $2d
    nop                                           ; $7549: $00
    or $e6                                        ; $754a: $f6 $e6
    rst $38                                       ; $754c: $ff
    db $e4                                        ; $754d: $e4
    rst $28                                       ; $754e: $ef
    pop hl                                        ; $754f: $e1
    di                                            ; $7550: $f3
    db $e3                                        ; $7551: $e3
    push hl                                       ; $7552: $e5
    ldh [$e2], a                                  ; $7553: $e0 $e2
    ld [c], a                                     ; $7555: $e2
    push de                                       ; $7556: $d5
    db $e3                                        ; $7557: $e3
    ld [c], a                                     ; $7558: $e2
    rst $28                                       ; $7559: $ef
    ei                                            ; $755a: $fb
    ld c, l                                       ; $755b: $4d
    ld c, l                                       ; $755c: $4d
    rst $08                                       ; $755d: $cf
    db $e3                                        ; $755e: $e3
    ld c, l                                       ; $755f: $4d
    ld l, l                                       ; $7560: $6d
    ld h, c                                       ; $7561: $61
    ld bc, $fb00                                  ; $7562: $01 $00 $fb
    nop                                           ; $7565: $00
    ld bc, $e1fc                                  ; $7566: $01 $fc $e1
    ld h, c                                       ; $7569: $61
    ld h, d                                       ; $756a: $62
    add hl, bc                                    ; $756b: $09
    ld [bc], a                                    ; $756c: $02
    ld [bc], a                                    ; $756d: $02
    rst $38                                       ; $756e: $ff
    inc bc                                        ; $756f: $03
    inc b                                         ; $7570: $04
    ld [bc], a                                    ; $7571: $02
    ld [bc], a                                    ; $7572: $02
    add hl, bc                                    ; $7573: $09
    ld h, d                                       ; $7574: $62
    ld h, h                                       ; $7575: $64
    ld h, l                                       ; $7576: $65
    rst $38                                       ; $7577: $ff
    ld a, [bc]                                    ; $7578: $0a
    ld a, [bc]                                    ; $7579: $0a
    dec bc                                        ; $757a: $0b
    inc c                                         ; $757b: $0c
    dec c                                         ; $757c: $0d
    ld a, [bc]                                    ; $757d: $0a
    ld h, l                                       ; $757e: $65
    ld h, h                                       ; $757f: $64
    rst $38                                       ; $7580: $ff
    ld h, [hl]                                    ; $7581: $66
    ld h, a                                       ; $7582: $67
    jr jr_037_759d                                ; $7583: $18 $18

    add hl, de                                    ; $7585: $19
    ld a, [de]                                    ; $7586: $1a
    dec de                                        ; $7587: $1b
    jr jr_037_7545                                ; $7588: $18 $bb

    ld h, a                                       ; $758a: $67
    ld h, [hl]                                    ; $758b: $66
    ld [c], a                                     ; $758c: $e2
    pop hl                                        ; $758d: $e1
    jr z, jr_037_75b9                             ; $758e: $28 $29

    ld a, [hl+]                                   ; $7590: $2a
    ld [c], a                                     ; $7591: $e2
    db $e3                                        ; $7592: $e3
    ld [hl], $77                                  ; $7593: $36 $77
    scf                                           ; $7595: $37
    jr c, @+$3b                                   ; $7596: $38 $39

    ld [c], a                                     ; $7598: $e2
    db $e4                                        ; $7599: $e4
    ld b, e                                       ; $759a: $43
    ld b, h                                       ; $759b: $44
    ld b, l                                       ; $759c: $45

jr_037_759d:
    ld [c], a                                     ; $759d: $e2
    ldh [rIE], a                                  ; $759e: $e0 $ff
    ld h, c                                       ; $75a0: $61
    ld bc, $5168                                  ; $75a1: $01 $68 $51
    ld d, d                                       ; $75a4: $52
    ld d, e                                       ; $75a5: $53
    ld d, h                                       ; $75a6: $54
    ld l, b                                       ; $75a7: $68
    inc bc                                        ; $75a8: $03
    ld bc, $0061                                  ; $75a9: $01 $61 $00
    nop                                           ; $75ac: $00
    nop                                           ; $75ad: $00
    rst $28                                       ; $75ae: $ef
    dec c                                         ; $75af: $0d
    dec c                                         ; $75b0: $0d
    dec l                                         ; $75b1: $2d
    dec c                                         ; $75b2: $0d
    db $fc                                        ; $75b3: $fc
    ld [c], a                                     ; $75b4: $e2
    dec l                                         ; $75b5: $2d
    dec c                                         ; $75b6: $0d
    dec l                                         ; $75b7: $2d
    ret nz                                        ; $75b8: $c0

jr_037_75b9:
    or $e1                                        ; $75b9: $f6 $e1
    di                                            ; $75bb: $f3
    db $e3                                        ; $75bc: $e3
    rst $30                                       ; $75bd: $f7
    db $e4                                        ; $75be: $e4
    jp hl                                         ; $75bf: $e9


    ld [c], a                                     ; $75c0: $e2
    or $e4                                        ; $75c1: $f6 $e4
    ld [c], a                                     ; $75c3: $e2
    ld a, [$4d4d]                                 ; $75c4: $fa $4d $4d
    cp $c6                                        ; $75c7: $fe $c6
    db $e3                                        ; $75c9: $e3
    ld c, l                                       ; $75ca: $4d
    ld l, l                                       ; $75cb: $6d
    ld h, c                                       ; $75cc: $61
    ld bc, $0000                                  ; $75cd: $01 $00 $00
    ld bc, $fcfe                                  ; $75d0: $01 $fe $fc
    pop hl                                        ; $75d3: $e1
    ld h, c                                       ; $75d4: $61
    ld h, d                                       ; $75d5: $62
    add hl, bc                                    ; $75d6: $09
    ld [bc], a                                    ; $75d7: $02
    dec b                                         ; $75d8: $05
    ld b, $07                                     ; $75d9: $06 $07
    rst $38                                       ; $75db: $ff
    ld [$0902], sp                                ; $75dc: $08 $02 $09
    ld h, d                                       ; $75df: $62
    ld h, h                                       ; $75e0: $64
    ld h, l                                       ; $75e1: $65
    ld a, [bc]                                    ; $75e2: $0a
    ld c, $ff                                     ; $75e3: $0e $ff
    rrca                                          ; $75e5: $0f
    db $10                                        ; $75e6: $10
    ld de, $650a                                  ; $75e7: $11 $0a $65
    ld h, h                                       ; $75ea: $64
    ld h, [hl]                                    ; $75eb: $66
    ld h, a                                       ; $75ec: $67
    rst $38                                       ; $75ed: $ff
    jr @+$1e                                      ; $75ee: $18 $1c

    dec e                                         ; $75f0: $1d
    ld e, $1f                                     ; $75f1: $1e $1f
    jr jr_037_765c                                ; $75f3: $18 $67

    ld h, [hl]                                    ; $75f5: $66
    sbc $e2                                       ; $75f6: $de $e2
    ldh [rSC], a                                  ; $75f8: $e0 $02
    dec hl                                        ; $75fa: $2b
    inc l                                         ; $75fb: $2c
    dec l                                         ; $75fc: $2d
    ld [c], a                                     ; $75fd: $e2
    db $e3                                        ; $75fe: $e3
    ld a, [bc]                                    ; $75ff: $0a
    ld a, [hl-]                                   ; $7600: $3a
    ld a, e                                       ; $7601: $7b
    dec sp                                        ; $7602: $3b
    inc a                                         ; $7603: $3c
    ld [c], a                                     ; $7604: $e2
    db $e3                                        ; $7605: $e3
    jr jr_037_764e                                ; $7606: $18 $46

    ld b, a                                       ; $7608: $47
    ld c, b                                       ; $7609: $48
    ld [c], a                                     ; $760a: $e2
    ldh [rIE], a                                  ; $760b: $e0 $ff
    ld h, c                                       ; $760d: $61
    ld bc, $5568                                  ; $760e: $01 $68 $55
    ld d, [hl]                                    ; $7611: $56
    ld d, a                                       ; $7612: $57
    ld e, b                                       ; $7613: $58
    ld l, b                                       ; $7614: $68
    inc bc                                        ; $7615: $03
    ld bc, $0061                                  ; $7616: $01 $61 $00
    nop                                           ; $7619: $00
    nop                                           ; $761a: $00
    rst $28                                       ; $761b: $ef
    dec c                                         ; $761c: $0d
    dec c                                         ; $761d: $0d
    dec l                                         ; $761e: $2d
    dec c                                         ; $761f: $0d
    db $fc                                        ; $7620: $fc
    ld [c], a                                     ; $7621: $e2
    dec l                                         ; $7622: $2d
    dec c                                         ; $7623: $0d
    dec l                                         ; $7624: $2d
    nop                                           ; $7625: $00
    ld a, [$f6e1]                                 ; $7626: $fa $e1 $f6
    ld [c], a                                     ; $7629: $e2
    rst $38                                       ; $762a: $ff
    db $e4                                        ; $762b: $e4
    di                                            ; $762c: $f3
    rst $20                                       ; $762d: $e7
    push hl                                       ; $762e: $e5
    ldh [$e2], a                                  ; $762f: $e0 $e2
    pop hl                                        ; $7631: $e1
    db $eb                                        ; $7632: $eb
    ld [c], a                                     ; $7633: $e2
    ld [c], a                                     ; $7634: $e2
    pop af                                        ; $7635: $f1
    ei                                            ; $7636: $fb
    ld c, l                                       ; $7637: $4d
    ld c, l                                       ; $7638: $4d
    rst $08                                       ; $7639: $cf
    db $e3                                        ; $763a: $e3
    ld c, l                                       ; $763b: $4d
    ld l, l                                       ; $763c: $6d
    ld h, c                                       ; $763d: $61
    ld bc, $fb00                                  ; $763e: $01 $00 $fb
    nop                                           ; $7641: $00
    ld bc, $e1fc                                  ; $7642: $01 $fc $e1
    ld h, c                                       ; $7645: $61
    ld h, d                                       ; $7646: $62
    add hl, bc                                    ; $7647: $09
    ld [bc], a                                    ; $7648: $02
    ld [bc], a                                    ; $7649: $02
    db $fd                                        ; $764a: $fd
    add hl, bc                                    ; $764b: $09
    db $fc                                        ; $764c: $fc
    pop hl                                        ; $764d: $e1

jr_037_764e:
    ld h, d                                       ; $764e: $62
    ld h, h                                       ; $764f: $64
    ld h, l                                       ; $7650: $65
    ld a, [bc]                                    ; $7651: $0a
    ld [de], a                                    ; $7652: $12
    inc de                                        ; $7653: $13
    rst $38                                       ; $7654: $ff
    inc d                                         ; $7655: $14
    ld a, [bc]                                    ; $7656: $0a
    ld a, [bc]                                    ; $7657: $0a
    ld h, l                                       ; $7658: $65
    ld h, h                                       ; $7659: $64
    ld h, [hl]                                    ; $765a: $66
    ld h, a                                       ; $765b: $67

jr_037_765c:
    jr jr_037_76dd                                ; $765c: $18 $7f

    jr nz, jr_037_7681                            ; $765e: $20 $21

    ld [hl+], a                                   ; $7660: $22
    inc hl                                        ; $7661: $23
    jr jr_037_76cb                                ; $7662: $18 $67

    ld h, [hl]                                    ; $7664: $66
    ld [c], a                                     ; $7665: $e2
    ldh [$ef], a                                  ; $7666: $e0 $ef
    ld l, $2f                                     ; $7668: $2e $2f
    jr nc, jr_037_769d                            ; $766a: $30 $31

    ld [c], a                                     ; $766c: $e2
    db $e3                                        ; $766d: $e3
    ld a, [bc]                                    ; $766e: $0a
    dec a                                         ; $766f: $3d
    ld a, $bd                                     ; $7670: $3e $bd
    ccf                                           ; $7672: $3f
    ld [c], a                                     ; $7673: $e2
    db $e3                                        ; $7674: $e3
    ld c, c                                       ; $7675: $49
    ld c, d                                       ; $7676: $4a
    ld c, e                                       ; $7677: $4b
    ld c, h                                       ; $7678: $4c
    ld [c], a                                     ; $7679: $e2
    ldh [$61], a                                  ; $767a: $e0 $61
    rst $38                                       ; $767c: $ff
    ld bc, $5968                                  ; $767d: $01 $68 $59
    ld e, d                                       ; $7680: $5a

jr_037_7681:
    ld e, e                                       ; $7681: $5b
    ld e, h                                       ; $7682: $5c
    ld l, b                                       ; $7683: $68
    ld bc, $6101                                  ; $7684: $01 $01 $61
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    rst $28                                       ; $768a: $ef
    dec c                                         ; $768b: $0d
    dec c                                         ; $768c: $0d
    dec l                                         ; $768d: $2d
    dec c                                         ; $768e: $0d
    db $fc                                        ; $768f: $fc
    ld [c], a                                     ; $7690: $e2
    dec l                                         ; $7691: $2d
    dec c                                         ; $7692: $0d
    dec l                                         ; $7693: $2d
    nop                                           ; $7694: $00
    ld a, [$f6e1]                                 ; $7695: $fa $e1 $f6
    ld [c], a                                     ; $7698: $e2
    rst $38                                       ; $7699: $ff
    db $e4                                        ; $769a: $e4
    di                                            ; $769b: $f3
    rst $20                                       ; $769c: $e7

jr_037_769d:
    push hl                                       ; $769d: $e5
    ldh [$e2], a                                  ; $769e: $e0 $e2
    pop hl                                        ; $76a0: $e1
    db $eb                                        ; $76a1: $eb
    ld [c], a                                     ; $76a2: $e2
    ld [c], a                                     ; $76a3: $e2
    pop af                                        ; $76a4: $f1
    ei                                            ; $76a5: $fb
    ld c, l                                       ; $76a6: $4d
    ld c, l                                       ; $76a7: $4d
    rst $08                                       ; $76a8: $cf
    db $e3                                        ; $76a9: $e3
    ld c, l                                       ; $76aa: $4d
    ld l, l                                       ; $76ab: $6d
    ld h, c                                       ; $76ac: $61
    ld bc, $fb00                                  ; $76ad: $01 $00 $fb
    nop                                           ; $76b0: $00
    ld bc, $e1fc                                  ; $76b1: $01 $fc $e1
    ld h, c                                       ; $76b4: $61
    ld h, d                                       ; $76b5: $62
    add hl, bc                                    ; $76b6: $09
    ld [bc], a                                    ; $76b7: $02
    ld [bc], a                                    ; $76b8: $02
    db $fd                                        ; $76b9: $fd
    add hl, bc                                    ; $76ba: $09
    db $fc                                        ; $76bb: $fc
    pop hl                                        ; $76bc: $e1
    ld h, d                                       ; $76bd: $62
    ld h, h                                       ; $76be: $64
    ld h, l                                       ; $76bf: $65
    ld a, [bc]                                    ; $76c0: $0a
    dec d                                         ; $76c1: $15
    ld d, $ff                                     ; $76c2: $16 $ff
    rla                                           ; $76c4: $17
    ld a, [bc]                                    ; $76c5: $0a
    ld a, [bc]                                    ; $76c6: $0a
    ld h, l                                       ; $76c7: $65
    ld h, h                                       ; $76c8: $64
    ld h, [hl]                                    ; $76c9: $66
    ld h, a                                       ; $76ca: $67

jr_037_76cb:
    jr jr_037_774c                                ; $76cb: $18 $7f

    inc h                                         ; $76cd: $24
    dec h                                         ; $76ce: $25
    ld h, $27                                     ; $76cf: $26 $27
    jr @+$69                                      ; $76d1: $18 $67

    ld h, [hl]                                    ; $76d3: $66
    ld [c], a                                     ; $76d4: $e2
    ldh [$ef], a                                  ; $76d5: $e0 $ef
    ld [hl-], a                                   ; $76d7: $32
    inc sp                                        ; $76d8: $33
    inc [hl]                                      ; $76d9: $34
    dec [hl]                                      ; $76da: $35
    ld [c], a                                     ; $76db: $e2
    db $e3                                        ; $76dc: $e3

jr_037_76dd:
    ld a, [bc]                                    ; $76dd: $0a
    ld b, b                                       ; $76de: $40
    ld b, c                                       ; $76df: $41
    cp l                                          ; $76e0: $bd
    ld b, d                                       ; $76e1: $42
    ld [c], a                                     ; $76e2: $e2
    db $e3                                        ; $76e3: $e3
    ld c, l                                       ; $76e4: $4d
    ld c, [hl]                                    ; $76e5: $4e
    ld c, a                                       ; $76e6: $4f
    ld d, b                                       ; $76e7: $50
    ld [c], a                                     ; $76e8: $e2
    ldh [$61], a                                  ; $76e9: $e0 $61
    rst $38                                       ; $76eb: $ff
    ld bc, $5d68                                  ; $76ec: $01 $68 $5d
    ld e, [hl]                                    ; $76ef: $5e
    ld e, a                                       ; $76f0: $5f
    ld h, b                                       ; $76f1: $60
    ld l, b                                       ; $76f2: $68
    ld bc, $6101                                  ; $76f3: $01 $01 $61
    nop                                           ; $76f6: $00
    nop                                           ; $76f7: $00
    nop                                           ; $76f8: $00
    rst $28                                       ; $76f9: $ef
    dec c                                         ; $76fa: $0d
    dec c                                         ; $76fb: $0d
    dec l                                         ; $76fc: $2d
    dec c                                         ; $76fd: $0d
    db $fc                                        ; $76fe: $fc
    ld [c], a                                     ; $76ff: $e2
    dec l                                         ; $7700: $2d
    dec c                                         ; $7701: $0d
    dec l                                         ; $7702: $2d
    nop                                           ; $7703: $00
    ld a, [$f6e1]                                 ; $7704: $fa $e1 $f6
    ld [c], a                                     ; $7707: $e2
    rst $38                                       ; $7708: $ff
    db $e4                                        ; $7709: $e4
    rst $30                                       ; $770a: $f7
    rst $20                                       ; $770b: $e7
    push hl                                       ; $770c: $e5
    ldh [$e2], a                                  ; $770d: $e0 $e2
    pop hl                                        ; $770f: $e1
    db $eb                                        ; $7710: $eb
    db $eb                                        ; $7711: $eb
    ld [c], a                                     ; $7712: $e2
    add sp, -$05                                  ; $7713: $e8 $fb
    ld c, l                                       ; $7715: $4d
    ld c, l                                       ; $7716: $4d
    rst $08                                       ; $7717: $cf
    db $e3                                        ; $7718: $e3
    ld c, l                                       ; $7719: $4d
    ld l, l                                       ; $771a: $6d
    jr c, jr_037_771e                             ; $771b: $38 $01

    nop                                           ; $771d: $00

jr_037_771e:
    ei                                            ; $771e: $fb
    nop                                           ; $771f: $00
    ld bc, $e1fc                                  ; $7720: $01 $fc $e1
    jr c, jr_037_775e                             ; $7723: $38 $39

    inc bc                                        ; $7725: $03
    ld [bc], a                                    ; $7726: $02
    ld [bc], a                                    ; $7727: $02
    db $fd                                        ; $7728: $fd
    inc bc                                        ; $7729: $03
    db $fc                                        ; $772a: $fc
    pop hl                                        ; $772b: $e1
    add hl, sp                                    ; $772c: $39

jr_037_772d:
    dec sp                                        ; $772d: $3b
    ld [$0609], sp                                ; $772e: $08 $09 $06
    rlca                                          ; $7731: $07
    rst $38                                       ; $7732: $ff
    ld [$0909], sp                                ; $7733: $08 $09 $09
    ld [$3d3c], sp                                ; $7736: $08 $3c $3d
    ld a, $11                                     ; $7739: $3e $11
    ld a, a                                       ; $773b: $7f
    ld c, $0f                                     ; $773c: $0e $0f
    db $10                                        ; $773e: $10
    ld de, $3e11                                  ; $773f: $11 $11 $3e
    dec a                                         ; $7742: $3d
    ld [c], a                                     ; $7743: $e2
    ldh [$ef], a                                  ; $7744: $e0 $ef
    dec d                                         ; $7746: $15
    ld d, $17                                     ; $7747: $16 $17
    jr jr_037_772d                                ; $7749: $18 $e2

    db $e3                                        ; $774b: $e3

jr_037_774c:
    ld hl, $2322                                  ; $774c: $21 $22 $23
    cp l                                          ; $774f: $bd
    inc h                                         ; $7750: $24
    ld [c], a                                     ; $7751: $e2
    db $e3                                        ; $7752: $e3
    dec hl                                        ; $7753: $2b
    inc l                                         ; $7754: $2c
    dec l                                         ; $7755: $2d
    ld l, $e2                                     ; $7756: $2e $e2
    ldh [$38], a                                  ; $7758: $e0 $38
    rst $38                                       ; $775a: $ff
    ld bc, $313f                                  ; $775b: $01 $3f $31

jr_037_775e:
    ld [hl-], a                                   ; $775e: $32
    inc sp                                        ; $775f: $33
    inc [hl]                                      ; $7760: $34
    ccf                                           ; $7761: $3f
    ld bc, $3801                                  ; $7762: $01 $01 $38
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    rst $28                                       ; $7768: $ef
    dec c                                         ; $7769: $0d
    dec c                                         ; $776a: $0d
    dec l                                         ; $776b: $2d
    dec c                                         ; $776c: $0d
    db $fc                                        ; $776d: $fc
    ld [c], a                                     ; $776e: $e2
    dec l                                         ; $776f: $2d
    dec c                                         ; $7770: $0d
    dec l                                         ; $7771: $2d
    nop                                           ; $7772: $00
    ld a, [$f6e1]                                 ; $7773: $fa $e1 $f6
    ld [c], a                                     ; $7776: $e2
    rst $38                                       ; $7777: $ff
    db $e4                                        ; $7778: $e4
    rst $30                                       ; $7779: $f7
    rst $20                                       ; $777a: $e7
    push hl                                       ; $777b: $e5
    ldh [$e2], a                                  ; $777c: $e0 $e2
    pop hl                                        ; $777e: $e1
    db $eb                                        ; $777f: $eb
    db $eb                                        ; $7780: $eb
    ld [c], a                                     ; $7781: $e2
    add sp, -$05                                  ; $7782: $e8 $fb
    ld c, l                                       ; $7784: $4d
    ld c, l                                       ; $7785: $4d
    rst $08                                       ; $7786: $cf
    db $e3                                        ; $7787: $e3
    ld c, l                                       ; $7788: $4d
    ld l, l                                       ; $7789: $6d
    jr c, jr_037_778d                             ; $778a: $38 $01

    nop                                           ; $778c: $00

jr_037_778d:
    ei                                            ; $778d: $fb
    nop                                           ; $778e: $00
    ld bc, $e1fc                                  ; $778f: $01 $fc $e1
    jr c, jr_037_77cd                             ; $7792: $38 $39

    inc bc                                        ; $7794: $03
    ld [bc], a                                    ; $7795: $02
    ld [bc], a                                    ; $7796: $02
    db $fd                                        ; $7797: $fd
    inc bc                                        ; $7798: $03
    db $fc                                        ; $7799: $fc
    pop hl                                        ; $779a: $e1
    add hl, sp                                    ; $779b: $39
    dec sp                                        ; $779c: $3b
    ld [$0a09], sp                                ; $779d: $08 $09 $0a
    dec bc                                        ; $77a0: $0b
    rst $38                                       ; $77a1: $ff
    ld [$0909], sp                                ; $77a2: $08 $09 $09
    ld [$3d3c], sp                                ; $77a5: $08 $3c $3d
    ld a, $11                                     ; $77a8: $3e $11
    ld a, a                                       ; $77aa: $7f
    ld [de], a                                    ; $77ab: $12
    inc de                                        ; $77ac: $13
    inc d                                         ; $77ad: $14
    ld de, $3e11                                  ; $77ae: $11 $11 $3e
    dec a                                         ; $77b1: $3d
    ld [c], a                                     ; $77b2: $e2
    ldh [$ef], a                                  ; $77b3: $e0 $ef
    add hl, de                                    ; $77b5: $19
    ld a, [de]                                    ; $77b6: $1a
    dec de                                        ; $77b7: $1b
    inc e                                         ; $77b8: $1c
    ld [c], a                                     ; $77b9: $e2
    db $e3                                        ; $77ba: $e3
    dec h                                         ; $77bb: $25
    ld h, $27                                     ; $77bc: $26 $27
    cp l                                          ; $77be: $bd
    jr z, @-$1c                                   ; $77bf: $28 $e2

    db $e3                                        ; $77c1: $e3
    dec hl                                        ; $77c2: $2b
    inc l                                         ; $77c3: $2c
    dec l                                         ; $77c4: $2d
    ld l, $e2                                     ; $77c5: $2e $e2
    ldh [$38], a                                  ; $77c7: $e0 $38
    rst $38                                       ; $77c9: $ff
    ld bc, $313f                                  ; $77ca: $01 $3f $31

jr_037_77cd:
    ld [hl-], a                                   ; $77cd: $32
    inc sp                                        ; $77ce: $33
    inc [hl]                                      ; $77cf: $34
    ccf                                           ; $77d0: $3f
    ld bc, $3801                                  ; $77d1: $01 $01 $38
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    nop                                           ; $77d6: $00
    rst $28                                       ; $77d7: $ef
    dec c                                         ; $77d8: $0d
    dec c                                         ; $77d9: $0d
    dec l                                         ; $77da: $2d
    dec c                                         ; $77db: $0d
    db $fc                                        ; $77dc: $fc
    ld [c], a                                     ; $77dd: $e2
    dec l                                         ; $77de: $2d
    dec c                                         ; $77df: $0d
    dec l                                         ; $77e0: $2d
    nop                                           ; $77e1: $00
    ld a, [$f6e1]                                 ; $77e2: $fa $e1 $f6
    ld [c], a                                     ; $77e5: $e2
    rst $38                                       ; $77e6: $ff
    db $e4                                        ; $77e7: $e4
    rst $30                                       ; $77e8: $f7
    rst $20                                       ; $77e9: $e7
    push hl                                       ; $77ea: $e5
    ldh [$e2], a                                  ; $77eb: $e0 $e2
    pop hl                                        ; $77ed: $e1
    db $eb                                        ; $77ee: $eb
    db $eb                                        ; $77ef: $eb
    db $dd                                        ; $77f0: $dd
    push hl                                       ; $77f1: $e5
    or $e2                                        ; $77f2: $f6 $e2
    ldh [rKEY1], a                                ; $77f4: $e0 $4d
    ld c, l                                       ; $77f6: $4d
    rst $08                                       ; $77f7: $cf
    db $e3                                        ; $77f8: $e3
    ld c, l                                       ; $77f9: $4d
    ld l, l                                       ; $77fa: $6d
    jr c, jr_037_77fe                             ; $77fb: $38 $01

    rst $30                                       ; $77fd: $f7

jr_037_77fe:
    nop                                           ; $77fe: $00
    nop                                           ; $77ff: $00
    ld bc, $e1fc                                  ; $7800: $01 $fc $e1
    jr c, jr_037_783e                             ; $7803: $38 $39

    inc bc                                        ; $7805: $03
    ld [bc], a                                    ; $7806: $02
    ei                                            ; $7807: $fb
    ld [bc], a                                    ; $7808: $02
    inc bc                                        ; $7809: $03
    db $fc                                        ; $780a: $fc
    pop hl                                        ; $780b: $e1
    add hl, sp                                    ; $780c: $39
    dec sp                                        ; $780d: $3b
    ld [$0a09], sp                                ; $780e: $08 $09 $0a
    rst $38                                       ; $7811: $ff
    dec bc                                        ; $7812: $0b
    inc c                                         ; $7813: $0c

jr_037_7814:
    add hl, bc                                    ; $7814: $09
    add hl, bc                                    ; $7815: $09
    ld [$3d3c], sp                                ; $7816: $08 $3c $3d
    ld a, $ff                                     ; $7819: $3e $ff
    ld de, $1312                                  ; $781b: $11 $12 $13
    inc d                                         ; $781e: $14
    ld de, $3e11                                  ; $781f: $11 $11 $3e
    dec a                                         ; $7822: $3d
    sbc $e2                                       ; $7823: $de $e2
    ldh [rNR24], a                                ; $7825: $e0 $19
    dec e                                         ; $7827: $1d
    ld e, $1c                                     ; $7828: $1e $1c
    ld [c], a                                     ; $782a: $e2
    db $e3                                        ; $782b: $e3
    add hl, hl                                    ; $782c: $29
    ld a, [hl+]                                   ; $782d: $2a
    ld a, e                                       ; $782e: $7b
    daa                                           ; $782f: $27
    jr z, jr_037_7814                             ; $7830: $28 $e2

    db $e3                                        ; $7832: $e3
    ld de, $302f                                  ; $7833: $11 $2f $30
    ld l, $e2                                     ; $7836: $2e $e2
    ldh [rIE], a                                  ; $7838: $e0 $ff
    jr c, jr_037_783d                             ; $783a: $38 $01

    ccf                                           ; $783c: $3f

jr_037_783d:
    dec [hl]                                      ; $783d: $35

jr_037_783e:
    ld [hl], $37                                  ; $783e: $36 $37
    inc [hl]                                      ; $7840: $34
    ccf                                           ; $7841: $3f
    inc bc                                        ; $7842: $03
    ld bc, $0038                                  ; $7843: $01 $38 $00
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    rst $28                                       ; $7848: $ef
    dec c                                         ; $7849: $0d
    dec c                                         ; $784a: $0d
    dec l                                         ; $784b: $2d
    dec c                                         ; $784c: $0d
    db $fc                                        ; $784d: $fc
    ld [c], a                                     ; $784e: $e2
    dec l                                         ; $784f: $2d
    dec c                                         ; $7850: $0d
    dec l                                         ; $7851: $2d
    add b                                         ; $7852: $80
    or $e6                                        ; $7853: $f6 $e6
    rst $38                                       ; $7855: $ff
    db $e4                                        ; $7856: $e4
    rst $30                                       ; $7857: $f7
    rst $20                                       ; $7858: $e7
    push hl                                       ; $7859: $e5
    ldh [$e2], a                                  ; $785a: $e0 $e2
    ld [c], a                                     ; $785c: $e2
    db $eb                                        ; $785d: $eb
    ld [$e8e2], a                                 ; $785e: $ea $e2 $e8
    ld c, l                                       ; $7861: $4d
    db $fd                                        ; $7862: $fd
    ld c, l                                       ; $7863: $4d
    rst $08                                       ; $7864: $cf
    db $e3                                        ; $7865: $e3
    ld c, l                                       ; $7866: $4d
    ld l, l                                       ; $7867: $6d
    jr c, jr_037_786b                             ; $7868: $38 $01

    nop                                           ; $786a: $00

jr_037_786b:
    nop                                           ; $786b: $00
    db $fd                                        ; $786c: $fd
    ld bc, $e1fc                                  ; $786d: $01 $fc $e1
    jr c, @+$3b                                   ; $7870: $38 $39

    inc bc                                        ; $7872: $03
    ld [bc], a                                    ; $7873: $02
    ld [bc], a                                    ; $7874: $02
    inc b                                         ; $7875: $04
    rst $38                                       ; $7876: $ff
    dec b                                         ; $7877: $05
    ld [bc], a                                    ; $7878: $02
    ld [bc], a                                    ; $7879: $02
    inc bc                                        ; $787a: $03
    add hl, sp                                    ; $787b: $39
    dec sp                                        ; $787c: $3b
    ld [$ff09], sp                                ; $787d: $08 $09 $ff
    ld a, [bc]                                    ; $7880: $0a
    dec c                                         ; $7881: $0d
    ld [$0909], sp                                ; $7882: $08 $09 $09
    ld [$3d3c], sp                                ; $7885: $08 $3c $3d
    rst $38                                       ; $7888: $ff
    ld a, $11                                     ; $7889: $3e $11
    ld [de], a                                    ; $788b: $12
    inc de                                        ; $788c: $13
    inc d                                         ; $788d: $14
    ld de, $3e11                                  ; $788e: $11 $11 $3e
    cp l                                          ; $7891: $bd
    dec a                                         ; $7892: $3d
    ld [c], a                                     ; $7893: $e2
    ldh [rNR24], a                                ; $7894: $e0 $19
    rra                                           ; $7896: $1f
    jr nz, jr_037_78b5                            ; $7897: $20 $1c

    ld [c], a                                     ; $7899: $e2
    db $e3                                        ; $789a: $e3
    add hl, hl                                    ; $789b: $29
    rst $30                                       ; $789c: $f7
    ld a, [hl+]                                   ; $789d: $2a
    daa                                           ; $789e: $27
    jr z, @-$1c                                   ; $789f: $28 $e2

    db $e3                                        ; $78a1: $e3
    dec hl                                        ; $78a2: $2b
    inc l                                         ; $78a3: $2c
    dec l                                         ; $78a4: $2d
    ld l, $fe                                     ; $78a5: $2e $fe
    ld [c], a                                     ; $78a7: $e2
    ldh [$38], a                                  ; $78a8: $e0 $38
    ld bc, $313f                                  ; $78aa: $01 $3f $31
    ld [hl-], a                                   ; $78ad: $32
    inc sp                                        ; $78ae: $33
    inc [hl]                                      ; $78af: $34
    rlca                                          ; $78b0: $07
    ccf                                           ; $78b1: $3f
    ld bc, $0038                                  ; $78b2: $01 $38 $00

jr_037_78b5:
    nop                                           ; $78b5: $00
    nop                                           ; $78b6: $00
    ld h, l                                       ; $78b7: $65
    dec c                                         ; $78b8: $0d
    rst $38                                       ; $78b9: $ff
    push hl                                       ; $78ba: $e5
    dec l                                         ; $78bb: $2d
    or $e6                                        ; $78bc: $f6 $e6
    rst $30                                       ; $78be: $f7
    add sp, $4d                                   ; $78bf: $e8 $4d
    ld c, l                                       ; $78c1: $4d
    ld hl, sp-$15                                 ; $78c2: $f8 $eb
    db $fc                                        ; $78c4: $fc
    ld [c], a                                     ; $78c5: $e2
    push af                                       ; $78c6: $f5
    ret c                                         ; $78c7: $d8

    and $6d                                       ; $78c8: $e6 $6d
    ld c, c                                       ; $78ca: $49
    ld bc, $0002                                  ; $78cb: $01 $02 $00
    ld bc, $fcfe                                  ; $78ce: $01 $fe $fc
    pop hl                                        ; $78d1: $e1
    ld c, c                                       ; $78d2: $49
    ld c, d                                       ; $78d3: $4a
    ld a, [bc]                                    ; $78d4: $0a
    ld b, $03                                     ; $78d5: $06 $03
    inc b                                         ; $78d7: $04
    dec b                                         ; $78d8: $05
    rst $38                                       ; $78d9: $ff
    ld b, $03                                     ; $78da: $06 $03
    add hl, bc                                    ; $78dc: $09
    ld c, e                                       ; $78dd: $4b
    ld c, l                                       ; $78de: $4d
    ld c, [hl]                                    ; $78df: $4e
    dec bc                                        ; $78e0: $0b
    dec bc                                        ; $78e1: $0b
    rst $38                                       ; $78e2: $ff
    inc c                                         ; $78e3: $0c
    dec c                                         ; $78e4: $0d
    ld c, $0b                                     ; $78e5: $0e $0b
    ld c, a                                       ; $78e7: $4f
    ld d, b                                       ; $78e8: $50
    ld c, d                                       ; $78e9: $4a
    ld a, [bc]                                    ; $78ea: $0a
    rst $38                                       ; $78eb: $ff
    ld d, c                                       ; $78ec: $51
    jr jr_037_7908                                ; $78ed: $18 $19

    ld a, [de]                                    ; $78ef: $1a
    dec de                                        ; $78f0: $1b
    jr jr_037_78fc                                ; $78f1: $18 $09

    ld c, e                                       ; $78f3: $4b
    xor $e2                                       ; $78f4: $ee $e2
    pop hl                                        ; $78f6: $e1
    dec h                                         ; $78f7: $25
    ld h, $27                                     ; $78f8: $26 $27
    ld [c], a                                     ; $78fa: $e2
    db $e4                                        ; $78fb: $e4

jr_037_78fc:
    ld sp, $3332                                  ; $78fc: $31 $32 $33
    xor $e2                                       ; $78ff: $ee $e2
    db $e4                                        ; $7901: $e4
    inc a                                         ; $7902: $3c
    dec a                                         ; $7903: $3d
    ld a, $e2                                     ; $7904: $3e $e2
    ldh [rOBP1], a                                ; $7906: $e0 $49

jr_037_7908:
    ld bc, $7f52                                  ; $7908: $01 $52 $7f
    ld b, l                                       ; $790b: $45
    ld b, [hl]                                    ; $790c: $46
    ld b, a                                       ; $790d: $47
    ld c, b                                       ; $790e: $48
    ld d, e                                       ; $790f: $53
    ld bc, $0049                                  ; $7910: $01 $49 $00
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    ld h, l                                       ; $7915: $65
    dec c                                         ; $7916: $0d
    rst $38                                       ; $7917: $ff
    push hl                                       ; $7918: $e5
    dec l                                         ; $7919: $2d
    or $e6                                        ; $791a: $f6 $e6
    rst $30                                       ; $791c: $f7
    add sp, $4d                                   ; $791d: $e8 $4d
    ld c, l                                       ; $791f: $4d
    ld hl, sp-$15                                 ; $7920: $f8 $eb
    db $fc                                        ; $7922: $fc
    ld [c], a                                     ; $7923: $e2
    push af                                       ; $7924: $f5
    ret c                                         ; $7925: $d8

    and $6d                                       ; $7926: $e6 $6d
    ld c, c                                       ; $7928: $49
    ld bc, $0002                                  ; $7929: $01 $02 $00
    ld bc, $fcfe                                  ; $792c: $01 $fe $fc
    pop hl                                        ; $792f: $e1
    ld c, c                                       ; $7930: $49
    ld c, d                                       ; $7931: $4a
    ld a, [bc]                                    ; $7932: $0a
    ld b, $03                                     ; $7933: $06 $03
    rlca                                          ; $7935: $07
    ld [$06ff], sp                                ; $7936: $08 $ff $06
    inc bc                                        ; $7939: $03
    add hl, bc                                    ; $793a: $09
    ld c, e                                       ; $793b: $4b
    ld c, l                                       ; $793c: $4d
    ld c, [hl]                                    ; $793d: $4e
    dec bc                                        ; $793e: $0b
    dec bc                                        ; $793f: $0b
    rst $38                                       ; $7940: $ff
    rrca                                          ; $7941: $0f
    db $10                                        ; $7942: $10
    ld de, $4f0b                                  ; $7943: $11 $0b $4f
    ld d, b                                       ; $7946: $50
    ld c, d                                       ; $7947: $4a
    ld a, [bc]                                    ; $7948: $0a
    rst $38                                       ; $7949: $ff
    ld d, c                                       ; $794a: $51
    jr jr_037_7969                                ; $794b: $18 $1c

    dec e                                         ; $794d: $1d
    ld e, $18                                     ; $794e: $1e $18
    add hl, bc                                    ; $7950: $09
    ld c, e                                       ; $7951: $4b
    xor $e2                                       ; $7952: $ee $e2
    pop hl                                        ; $7954: $e1
    jr z, jr_037_7980                             ; $7955: $28 $29

    ld a, [hl+]                                   ; $7957: $2a
    ld [c], a                                     ; $7958: $e2
    db $e4                                        ; $7959: $e4
    inc [hl]                                      ; $795a: $34
    dec [hl]                                      ; $795b: $35
    ld [hl], $ee                                  ; $795c: $36 $ee
    ld [c], a                                     ; $795e: $e2
    db $e4                                        ; $795f: $e4
    ccf                                           ; $7960: $3f
    ld b, b                                       ; $7961: $40
    ld b, c                                       ; $7962: $41
    ld [c], a                                     ; $7963: $e2
    ldh [rOBP1], a                                ; $7964: $e0 $49
    ld bc, $7f52                                  ; $7966: $01 $52 $7f

jr_037_7969:
    ld b, l                                       ; $7969: $45
    ld b, [hl]                                    ; $796a: $46
    ld b, a                                       ; $796b: $47
    ld c, b                                       ; $796c: $48
    ld d, e                                       ; $796d: $53
    ld bc, $0049                                  ; $796e: $01 $49 $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    ld h, l                                       ; $7973: $65
    dec c                                         ; $7974: $0d
    rst $38                                       ; $7975: $ff
    push hl                                       ; $7976: $e5
    dec l                                         ; $7977: $2d
    or $e6                                        ; $7978: $f6 $e6
    rst $30                                       ; $797a: $f7
    add sp, $4d                                   ; $797b: $e8 $4d
    ld c, l                                       ; $797d: $4d
    ld hl, sp-$15                                 ; $797e: $f8 $eb

jr_037_7980:
    db $fc                                        ; $7980: $fc
    ld [c], a                                     ; $7981: $e2
    push af                                       ; $7982: $f5
    ret c                                         ; $7983: $d8

    and $6d                                       ; $7984: $e6 $6d
    ld c, c                                       ; $7986: $49
    ld bc, $0002                                  ; $7987: $01 $02 $00
    ld bc, $fc7e                                  ; $798a: $01 $7e $fc
    pop hl                                        ; $798d: $e1
    ld c, c                                       ; $798e: $49
    ld c, d                                       ; $798f: $4a
    ld a, [bc]                                    ; $7990: $0a
    ld b, $03                                     ; $7991: $06 $03
    add hl, bc                                    ; $7993: $09
    db $fc                                        ; $7994: $fc
    pop hl                                        ; $7995: $e1
    rst $38                                       ; $7996: $ff
    ld c, e                                       ; $7997: $4b
    ld c, l                                       ; $7998: $4d
    ld c, [hl]                                    ; $7999: $4e
    dec bc                                        ; $799a: $0b
    dec bc                                        ; $799b: $0b
    ld [de], a                                    ; $799c: $12
    inc de                                        ; $799d: $13
    inc d                                         ; $799e: $14
    rst $38                                       ; $799f: $ff
    dec bc                                        ; $79a0: $0b
    ld c, a                                       ; $79a1: $4f
    ld d, b                                       ; $79a2: $50
    ld c, d                                       ; $79a3: $4a
    ld a, [bc]                                    ; $79a4: $0a
    ld d, c                                       ; $79a5: $51
    jr jr_037_79c7                                ; $79a6: $18 $1f

    rst $18                                       ; $79a8: $df
    jr nz, @+$23                                  ; $79a9: $20 $21

    jr jr_037_79b6                                ; $79ab: $18 $09

    ld c, e                                       ; $79ad: $4b
    ld [c], a                                     ; $79ae: $e2
    pop hl                                        ; $79af: $e1
    dec hl                                        ; $79b0: $2b
    inc l                                         ; $79b1: $2c
    db $dd                                        ; $79b2: $dd
    dec l                                         ; $79b3: $2d
    ld [c], a                                     ; $79b4: $e2
    db $e4                                        ; $79b5: $e4

jr_037_79b6:
    scf                                           ; $79b6: $37
    jr c, jr_037_79f2                             ; $79b7: $38 $39

    ld [c], a                                     ; $79b9: $e2
    db $e4                                        ; $79ba: $e4
    ld b, d                                       ; $79bb: $42
    ld b, e                                       ; $79bc: $43
    db $fd                                        ; $79bd: $fd
    ld b, h                                       ; $79be: $44
    ld [c], a                                     ; $79bf: $e2
    ldh [rOBP1], a                                ; $79c0: $e0 $49
    ld bc, $4552                                  ; $79c2: $01 $52 $45
    ld b, [hl]                                    ; $79c5: $46
    ld b, a                                       ; $79c6: $47

jr_037_79c7:
    rrca                                          ; $79c7: $0f
    ld c, b                                       ; $79c8: $48
    ld d, e                                       ; $79c9: $53
    ld bc, $0049                                  ; $79ca: $01 $49 $00
    nop                                           ; $79cd: $00
    nop                                           ; $79ce: $00
    ld h, l                                       ; $79cf: $65
    dec c                                         ; $79d0: $0d
    rst $38                                       ; $79d1: $ff
    push hl                                       ; $79d2: $e5
    dec l                                         ; $79d3: $2d
    or $e6                                        ; $79d4: $f6 $e6
    rst $30                                       ; $79d6: $f7
    add sp, $4d                                   ; $79d7: $e8 $4d
    ld c, l                                       ; $79d9: $4d
    ld hl, sp-$15                                 ; $79da: $f8 $eb
    db $fc                                        ; $79dc: $fc
    ld [c], a                                     ; $79dd: $e2
    push af                                       ; $79de: $f5
    ret c                                         ; $79df: $d8

    and $6d                                       ; $79e0: $e6 $6d
    ld c, c                                       ; $79e2: $49
    ld bc, $0002                                  ; $79e3: $01 $02 $00
    ld bc, $fc7e                                  ; $79e6: $01 $7e $fc
    pop hl                                        ; $79e9: $e1
    ld c, c                                       ; $79ea: $49
    ld c, d                                       ; $79eb: $4a
    ld a, [bc]                                    ; $79ec: $0a
    ld b, $03                                     ; $79ed: $06 $03
    add hl, bc                                    ; $79ef: $09
    db $fc                                        ; $79f0: $fc
    pop hl                                        ; $79f1: $e1

jr_037_79f2:
    rst $38                                       ; $79f2: $ff

jr_037_79f3:
    ld c, e                                       ; $79f3: $4b
    ld c, l                                       ; $79f4: $4d
    ld c, [hl]                                    ; $79f5: $4e
    dec bc                                        ; $79f6: $0b
    dec bc                                        ; $79f7: $0b
    dec d                                         ; $79f8: $15
    ld d, $17                                     ; $79f9: $16 $17
    rst $38                                       ; $79fb: $ff
    dec bc                                        ; $79fc: $0b
    ld c, a                                       ; $79fd: $4f
    ld d, b                                       ; $79fe: $50
    ld c, d                                       ; $79ff: $4a
    ld a, [bc]                                    ; $7a00: $0a
    ld d, c                                       ; $7a01: $51
    jr jr_037_7a26                                ; $7a02: $18 $22

    rst $18                                       ; $7a04: $df
    inc hl                                        ; $7a05: $23
    inc h                                         ; $7a06: $24
    jr jr_037_7a12                                ; $7a07: $18 $09

    ld c, e                                       ; $7a09: $4b
    ld [c], a                                     ; $7a0a: $e2
    pop hl                                        ; $7a0b: $e1
    ld l, $2f                                     ; $7a0c: $2e $2f
    db $dd                                        ; $7a0e: $dd
    jr nc, jr_037_79f3                            ; $7a0f: $30 $e2

    db $e4                                        ; $7a11: $e4

jr_037_7a12:
    ld a, [hl-]                                   ; $7a12: $3a
    dec sp                                        ; $7a13: $3b
    ld [hl], $e2                                  ; $7a14: $36 $e2
    db $e4                                        ; $7a16: $e4
    ccf                                           ; $7a17: $3f
    ld b, b                                       ; $7a18: $40
    db $fd                                        ; $7a19: $fd
    ld b, c                                       ; $7a1a: $41
    ld [c], a                                     ; $7a1b: $e2
    ldh [rOBP1], a                                ; $7a1c: $e0 $49
    ld bc, $4552                                  ; $7a1e: $01 $52 $45
    ld b, [hl]                                    ; $7a21: $46
    ld b, a                                       ; $7a22: $47
    rrca                                          ; $7a23: $0f
    ld c, b                                       ; $7a24: $48
    ld d, e                                       ; $7a25: $53

jr_037_7a26:
    ld bc, $0049                                  ; $7a26: $01 $49 $00
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
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

Call_037_7ee8:
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

Call_037_7efc:
    rst $38                                       ; $7efc: $ff
    rst $38                                       ; $7efd: $ff
    rst $38                                       ; $7efe: $ff

Call_037_7eff:
Jump_037_7eff:
    rst $38                                       ; $7eff: $ff
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    rst $38                                       ; $7f04: $ff
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff

Call_037_7f07:
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

Call_037_7fe1:
Jump_037_7fe1:
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

Jump_037_7feb:
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

Call_037_7ffb:
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff

Call_037_7fff:
    rst $38                                       ; $7fff: $ff
