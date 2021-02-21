; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $043", ROMX[$4000], BANK[$43]

    ld [$1240], sp                                ; $4000: $08 $40 $12
    ld d, a                                       ; $4003: $57
    ei                                            ; $4004: $fb
    ld e, a                                       ; $4005: $5f
    ld e, [hl]                                    ; $4006: $5e
    ld [hl], e                                    ; $4007: $73
    jr nz, jr_043_404a                            ; $4008: $20 $40

    ldh a, [rLY]                                  ; $400a: $f0 $44
    ld d, b                                       ; $400c: $50
    ld c, c                                       ; $400d: $49
    ld d, b                                       ; $400e: $50
    ld c, l                                       ; $400f: $4d
    add b                                         ; $4010: $80
    ld d, c                                       ; $4011: $51
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
    ld [$ffa7], a                                 ; $402a: $ea $a7 $ff
    rst $38                                       ; $402d: $ff
    add b                                         ; $402e: $80
    rst $38                                       ; $402f: $ff
    ld [$e1d0], a                                 ; $4030: $ea $d0 $e1
    ld a, a                                       ; $4033: $7f
    cp $e0                                        ; $4034: $fe $e0
    ccf                                           ; $4036: $3f
    ld d, d                                       ; $4037: $52
    cp $e0                                        ; $4038: $fe $e0
    rra                                           ; $403a: $1f
    cp $e0                                        ; $403b: $fe $e0
    ret nc                                        ; $403d: $d0

    pop hl                                        ; $403e: $e1
    ld bc, $e0fe                                  ; $403f: $01 $fe $e0
    inc bc                                        ; $4042: $03
    cp $e0                                        ; $4043: $fe $e0
    add hl, bc                                    ; $4045: $09
    rlca                                          ; $4046: $07
    cp $e0                                        ; $4047: $fe $e0
    or b                                          ; $4049: $b0

jr_043_404a:
    ldh [rSB], a                                  ; $404a: $e0 $01
    cp $e9                                        ; $404c: $fe $e9
    or d                                          ; $404e: $b2
    db $eb                                        ; $404f: $eb
    or b                                          ; $4050: $b0
    ldh [$fe], a                                  ; $4051: $e0 $fe
    push af                                       ; $4053: $f5
    ld a, a                                       ; $4054: $7f
    inc bc                                        ; $4055: $03
    db $fc                                        ; $4056: $fc
    rrca                                          ; $4057: $0f
    ldh a, [$3f]                                  ; $4058: $f0 $3f
    ret nz                                        ; $405a: $c0

    ld a, a                                       ; $405b: $7f
    add d                                         ; $405c: $82
    push hl                                       ; $405d: $e5
    rst $38                                       ; $405e: $ff
    add b                                         ; $405f: $80
    add b                                         ; $4060: $80
    ld h, b                                       ; $4061: $60
    ldh [rNR23], a                                ; $4062: $e0 $18
    ld hl, sp+$04                                 ; $4064: $f8 $04
    db $fc                                        ; $4066: $fc
    ld a, h                                       ; $4067: $7c
    ld h, d                                       ; $4068: $62
    db $ec                                        ; $4069: $ec
    or b                                          ; $406a: $b0
    and $0e                                       ; $406b: $e6 $0e
    ld c, $31                                     ; $406d: $0e $31
    ccf                                           ; $406f: $3f
    ret nz                                        ; $4070: $c0

    ld b, l                                       ; $4071: $45
    pop hl                                        ; $4072: $e1
    db $ec                                        ; $4073: $ec
    ld d, c                                       ; $4074: $51
    and $ce                                       ; $4075: $e6 $ce
    pop hl                                        ; $4077: $e1
    db $10                                        ; $4078: $10
    ldh a, [rHDMA2]                               ; $4079: $f0 $52
    db $eb                                        ; $407b: $eb
    add b                                         ; $407c: $80
    add b                                         ; $407d: $80
    rrca                                          ; $407e: $0f
    inc bc                                        ; $407f: $03
    nop                                           ; $4080: $00
    rrca                                          ; $4081: $0f
    ld l, b                                       ; $4082: $68
    ld [c], a                                     ; $4083: $e2
    ld h, b                                       ; $4084: $60
    pop hl                                        ; $4085: $e1
    ld e, b                                       ; $4086: $58
    pop hl                                        ; $4087: $e1
    ldh a, [$e1]                                  ; $4088: $f0 $e1
    ld c, b                                       ; $408a: $48
    pop hl                                        ; $408b: $e1
    ld b, b                                       ; $408c: $40
    pop hl                                        ; $408d: $e1
    ldh [$38], a                                  ; $408e: $e0 $38
    pop hl                                        ; $4090: $e1
    ld d, d                                       ; $4091: $52
    db $eb                                        ; $4092: $eb
    ld b, h                                       ; $4093: $44
    ldh [$ee], a                                  ; $4094: $e0 $ee
    push hl                                       ; $4096: $e5
    and $e1                                       ; $4097: $e6 $e1
    ld [bc], a                                    ; $4099: $02
    rst $38                                       ; $409a: $ff
    dec b                                         ; $409b: $05
    rst $38                                       ; $409c: $ff
    add c                                         ; $409d: $81
    rst $38                                       ; $409e: $ff
    inc de                                        ; $409f: $13
    cp $33                                        ; $40a0: $fe $33
    cp $39                                        ; $40a2: $fe $39
    rst $28                                       ; $40a4: $ef
    rst $38                                       ; $40a5: $ff
    cp a                                          ; $40a6: $bf
    or $ff                                        ; $40a7: $f6 $ff
    ldh [rIE], a                                  ; $40a9: $e0 $ff
    ld a, $ff                                     ; $40ab: $3e $ff
    push bc                                       ; $40ad: $c5
    rst $38                                       ; $40ae: $ff
    jp nz, $f1fe                                  ; $40af: $c2 $fe $f1

    ccf                                           ; $40b2: $3f
    pop af                                        ; $40b3: $f1
    rra                                           ; $40b4: $1f
    pop af                                        ; $40b5: $f1
    ccf                                           ; $40b6: $3f
    rst $38                                       ; $40b7: $ff
    ld a, [$fe5e]                                 ; $40b8: $fa $5e $fe
    ld b, $fe                                     ; $40bb: $06 $fe
    cp $ff                                        ; $40bd: $fe $ff
    ld b, l                                       ; $40bf: $45
    rst $28                                       ; $40c0: $ef
    cp $03                                        ; $40c1: $fe $03
    db $fc                                        ; $40c3: $fc
    rlca                                          ; $40c4: $07
    cp $e1                                        ; $40c5: $fe $e1
    cp $03                                        ; $40c7: $fe $03
    cp $ff                                        ; $40c9: $fe $ff
    inc bc                                        ; $40cb: $03
    rst $38                                       ; $40cc: $ff
    rlca                                          ; $40cd: $07
    rst $38                                       ; $40ce: $ff
    ld [$ff07], sp                                ; $40cf: $08 $07 $ff
    ld c, a                                       ; $40d2: $4f
    rst $38                                       ; $40d3: $ff
    ld hl, sp-$31                                 ; $40d4: $f8 $cf
    ld hl, sp-$19                                 ; $40d6: $f8 $e7
    cp h                                          ; $40d8: $bc
    rst $38                                       ; $40d9: $ff
    reti                                          ; $40da: $d9


    rst $38                                       ; $40db: $ff
    rst $38                                       ; $40dc: $ff
    add b                                         ; $40dd: $80
    rst $38                                       ; $40de: $ff
    ei                                            ; $40df: $fb
    rst $38                                       ; $40e0: $ff
    sub l                                         ; $40e1: $95
    ld [$c5f8], sp                                ; $40e2: $08 $f8 $c5
    rst $38                                       ; $40e5: $ff
    db $fd                                        ; $40e6: $fd
    push bc                                       ; $40e7: $c5
    ld a, l                                       ; $40e8: $7d
    add $ff                                       ; $40e9: $c6 $ff
    rst $28                                       ; $40eb: $ef
    ld a, a                                       ; $40ec: $7f
    db $fc                                        ; $40ed: $fc
    rra                                           ; $40ee: $1f
    rra                                           ; $40ef: $1f
    db $fc                                        ; $40f0: $fc
    rst $38                                       ; $40f1: $ff
    db $fc                                        ; $40f2: $fc
    rla                                           ; $40f3: $17
    sub d                                         ; $40f4: $92
    pop bc                                        ; $40f5: $c1
    ret nz                                        ; $40f6: $c0

    ret                                           ; $40f7: $c9


    sub d                                         ; $40f8: $92
    pop bc                                        ; $40f9: $c1
    cp $c0                                        ; $40fa: $fe $c0
    ret                                           ; $40fc: $c9


    add b                                         ; $40fd: $80
    add b                                         ; $40fe: $80

Call_043_40ff:
    ld b, b                                       ; $40ff: $40
    ret nz                                        ; $4100: $c0

    ld b, c                                       ; $4101: $41
    ret nz                                        ; $4102: $c0

    and c                                         ; $4103: $a1
    rst $38                                       ; $4104: $ff
    ldh [rHDMA3], a                               ; $4105: $e0 $53
    ldh a, [$b3]                                  ; $4107: $f0 $b3
    ldh a, [$57]                                  ; $4109: $f0 $57
    ldh a, [rNR22]                                ; $410b: $f0 $17
    rst $18                                       ; $410d: $df
    ldh a, [rIE]                                  ; $410e: $f0 $ff
    ld a, [bc]                                    ; $4110: $0a
    rst $38                                       ; $4111: $ff
    add hl, bc                                    ; $4112: $09
    db $fc                                        ; $4113: $fc
    ld [c], a                                     ; $4114: $e2
    inc de                                        ; $4115: $13
    rst $38                                       ; $4116: $ff
    rst $38                                       ; $4117: $ff
    ld hl, $22ff                                  ; $4118: $21 $ff $22
    rst $38                                       ; $411b: $ff
    ld b, d                                       ; $411c: $42
    rst $38                                       ; $411d: $ff
    ld b, l                                       ; $411e: $45
    rst $38                                       ; $411f: $ff
    ld a, a                                       ; $4120: $7f
    and d                                         ; $4121: $a2
    rst $38                                       ; $4122: $ff
    ld e, h                                       ; $4123: $5c
    rst $38                                       ; $4124: $ff
    ld b, h                                       ; $4125: $44
    rst $38                                       ; $4126: $ff
    jp nz, $e0f0                                  ; $4127: $c2 $f0 $e0

    ld a, l                                       ; $412a: $7d
    inc h                                         ; $412b: $24
    ld [$46e0], a                                 ; $412c: $ea $e0 $46
    rst $38                                       ; $412f: $ff
    adc b                                         ; $4130: $88
    rst $38                                       ; $4131: $ff
    ld [hl], b                                    ; $4132: $70
    ld a, b                                       ; $4133: $78
    ldh [$7f], a                                  ; $4134: $e0 $7f
    add [hl]                                      ; $4136: $86
    ld hl, sp+$08                                 ; $4137: $f8 $08
    ld hl, sp+$48                                 ; $4139: $f8 $48
    ldh a, [$90]                                  ; $413b: $f0 $90
    ld d, d                                       ; $413d: $52
    jp $40be                                      ; $413e: $c3 $be $40


    ret z                                         ; $4141: $c8

    rla                                           ; $4142: $17
    rst $38                                       ; $4143: $ff
    add hl, hl                                    ; $4144: $29
    rst $38                                       ; $4145: $ff
    ld h, $fc                                     ; $4146: $26 $fc
    ldh [rNR51], a                                ; $4148: $e0 $25
    rst $38                                       ; $414a: $ff
    rst $38                                       ; $414b: $ff
    ld c, a                                       ; $414c: $4f
    rst $38                                       ; $414d: $ff
    add h                                         ; $414e: $84
    rst $38                                       ; $414f: $ff
    adc h                                         ; $4150: $8c
    rst $38                                       ; $4151: $ff
    dec d                                         ; $4152: $15
    cp a                                          ; $4153: $bf
    rst $38                                       ; $4154: $ff
    adc d                                         ; $4155: $8a
    rst $38                                       ; $4156: $ff
    ld [hl], c                                    ; $4157: $71
    rst $38                                       ; $4158: $ff
    ld de, $e0a8                                  ; $4159: $11 $a8 $e0
    add h                                         ; $415c: $84
    cp a                                          ; $415d: $bf
    rst $38                                       ; $415e: $ff
    sbc a                                         ; $415f: $9f
    ei                                            ; $4160: $fb
    ld c, [hl]                                    ; $4161: $4e
    cp $1f                                        ; $4162: $fe $1f
    and $e0                                       ; $4164: $e6 $e0
    ret z                                         ; $4166: $c8

    rst $38                                       ; $4167: $ff
    rst $38                                       ; $4168: $ff
    add hl, de                                    ; $4169: $19
    rst $38                                       ; $416a: $ff
    ld de, $32fe                                  ; $416b: $11 $fe $32
    cp $22                                        ; $416e: $fe $22
    ei                                            ; $4170: $fb
    db $fc                                        ; $4171: $fc
    ld h, h                                       ; $4172: $64
    ld [de], a                                    ; $4173: $12
    pop bc                                        ; $4174: $c1
    ret nz                                        ; $4175: $c0

    add b                                         ; $4176: $80
    ldh [$80], a                                  ; $4177: $e0 $80
    ldh a, [$7f]                                  ; $4179: $f0 $7f
    add b                                         ; $417b: $80
    ld hl, sp-$80                                 ; $417c: $f8 $80
    db $fc                                        ; $417e: $fc
    add b                                         ; $417f: $80
    cp $80                                        ; $4180: $fe $80
    ld [hl-], a                                   ; $4182: $32
    pop bc                                        ; $4183: $c1
    rst $38                                       ; $4184: $ff
    db $fd                                        ; $4185: $fd
    ld bc, $01f9                                  ; $4186: $01 $f9 $01
    pop af                                        ; $4189: $f1
    ld bc, $01e1                                  ; $418a: $01 $e1 $01
    rst $38                                       ; $418d: $ff
    pop bc                                        ; $418e: $c1
    ld bc, $0181                                  ; $418f: $01 $81 $01
    cpl                                           ; $4192: $2f
    ldh [$cf], a                                  ; $4193: $e0 $cf
    ret nz                                        ; $4195: $c0

    ei                                            ; $4196: $fb
    sbc a                                         ; $4197: $9f
    add b                                         ; $4198: $80
    ret nz                                        ; $4199: $c0

    ret z                                         ; $419a: $c8

    ld b, l                                       ; $419b: $45
    rst $38                                       ; $419c: $ff
    ld b, b                                       ; $419d: $40
    ld a, a                                       ; $419e: $7f
    jr nz, @-$0f                                  ; $419f: $20 $ef

    ld a, a                                       ; $41a1: $7f
    add hl, de                                    ; $41a2: $19
    ccf                                           ; $41a3: $3f
    rlca                                          ; $41a4: $07
    ldh a, [$a4]                                  ; $41a5: $f0 $a4
    ld hl, sp-$61                                 ; $41a7: $f8 $9f
    db $f4                                        ; $41a9: $f4
    rst $38                                       ; $41aa: $ff
    adc a                                         ; $41ab: $8f
    ld a, [$f90f]                                 ; $41ac: $fa $0f $f9
    ld b, $ff                                     ; $41af: $06 $ff
    jp nc, $ffff                                  ; $41b1: $d2 $ff $ff

    ld [c], a                                     ; $41b4: $e2
    ccf                                           ; $41b5: $3f
    pop hl                                        ; $41b6: $e1
    ccf                                           ; $41b7: $3f
    ldh a, [$30]                                  ; $41b8: $f0 $30
    ld hl, sp+$58                                 ; $41ba: $f8 $58
    rst $38                                       ; $41bc: $ff
    db $e4                                        ; $41bd: $e4
    cp h                                          ; $41be: $bc
    ld [c], a                                     ; $41bf: $e2
    ld a, $c1                                     ; $41c0: $3e $c1
    rst $38                                       ; $41c2: $ff
    sub c                                         ; $41c3: $91
    rst $38                                       ; $41c4: $ff
    rst $28                                       ; $41c5: $ef
    adc e                                         ; $41c6: $8b
    cp $6b                                        ; $41c7: $fe $6b
    sbc [hl]                                      ; $41c9: $9e
    db $10                                        ; $41ca: $10
    rst $20                                       ; $41cb: $e7
    add e                                         ; $41cc: $83
    add b                                         ; $41cd: $80
    rst $00                                       ; $41ce: $c7
    or a                                          ; $41cf: $b7
    ld b, b                                       ; $41d0: $40
    rst $20                                       ; $41d1: $e7
    jr nz, @-$2c                                  ; $41d2: $20 $d2

    and c                                         ; $41d4: $a1
    ld a, a                                       ; $41d5: $7f
    ld bc, $a8b0                                  ; $41d6: $01 $b0 $a8
    dec bc                                        ; $41d9: $0b
    cp [hl]                                       ; $41da: $be
    halt                                          ; $41db: $76
    ldh [$03], a                                  ; $41dc: $e0 $03
    db $fc                                        ; $41de: $fc
    rst $20                                       ; $41df: $e7
    cp $1f                                        ; $41e0: $fe $1f
    xor h                                         ; $41e2: $ac
    call nz, $ffe4                                ; $41e3: $c4 $e4 $ff
    ld a, a                                       ; $41e6: $7f
    pop de                                        ; $41e7: $d1
    ccf                                           ; $41e8: $3f
    ld [$ec3f], a                                 ; $41e9: $ea $3f $ec
    rla                                           ; $41ec: $17
    rst $38                                       ; $41ed: $ff
    rst $30                                       ; $41ee: $f7
    inc d                                         ; $41ef: $14

jr_043_41f0:
    rst $38                                       ; $41f0: $ff
    ld [$a0db], sp                                ; $41f1: $08 $db $a0
    db $fc                                        ; $41f4: $fc
    db $f4                                        ; $41f5: $f4
    ret z                                         ; $41f6: $c8

    ld a, b                                       ; $41f7: $78
    ld a, a                                       ; $41f8: $7f
    add l                                         ; $41f9: $85
    db $fc                                        ; $41fa: $fc
    add l                                         ; $41fb: $85
    db $fc                                        ; $41fc: $fc
    dec bc                                        ; $41fd: $0b
    ld hl, sp+$13                                 ; $41fe: $f8 $13
    ld [c], a                                     ; $4200: $e2
    ret nz                                        ; $4201: $c0

    ei                                            ; $4202: $fb
    daa                                           ; $4203: $27
    ldh [$d6], a                                  ; $4204: $e0 $d6
    and b                                         ; $4206: $a0
    nop                                           ; $4207: $00
    ret nz                                        ; $4208: $c0

    nop                                           ; $4209: $00
    ldh [rP1], a                                  ; $420a: $e0 $00
    ld a, a                                       ; $420c: $7f
    ldh a, [rP1]                                  ; $420d: $f0 $00
    ld hl, sp+$00                                 ; $420f: $f8 $00
    db $fc                                        ; $4211: $fc
    nop                                           ; $4212: $00
    cp $34                                        ; $4213: $fe $34
    and b                                         ; $4215: $a0
    push de                                       ; $4216: $d5
    cp $f8                                        ; $4217: $fe $f8
    ldh [$f8], a                                  ; $4219: $e0 $f8
    ldh a, [$e0]                                  ; $421b: $f0 $e0
    ldh [$e8], a                                  ; $421d: $e0 $e8
    ldh [$80], a                                  ; $421f: $e0 $80
    nop                                           ; $4221: $00
    ld sp, hl                                     ; $4222: $f9
    ldh [$ac], a                                  ; $4223: $e0 $ac
    and b                                         ; $4225: $a0
    cp $e1                                        ; $4226: $fe $e1
    rst $38                                       ; $4228: $ff
    ld a, a                                       ; $4229: $7f
    ei                                            ; $422a: $fb
    ld l, [hl]                                    ; $422b: $6e
    rst $38                                       ; $422c: $ff
    rst $38                                       ; $422d: $ff
    ld l, a                                       ; $422e: $6f
    rst $38                                       ; $422f: $ff
    ld b, b                                       ; $4230: $40
    rrca                                          ; $4231: $0f
    db $fc                                        ; $4232: $fc
    rlca                                          ; $4233: $07
    rst $38                                       ; $4234: $ff
    rlca                                          ; $4235: $07
    rst $38                                       ; $4236: $ff
    cp $07                                        ; $4237: $fe $07
    db $fc                                        ; $4239: $fc
    ei                                            ; $423a: $fb
    cp $a1                                        ; $423b: $fe $a1
    rst $38                                       ; $423d: $ff
    pop af                                        ; $423e: $f1
    rst $18                                       ; $423f: $df
    rst $38                                       ; $4240: $ff
    ld sp, hl                                     ; $4241: $f9
    rrca                                          ; $4242: $0f
    rst $38                                       ; $4243: $ff
    db $10                                        ; $4244: $10
    cp $e2                                        ; $4245: $fe $e2
    jr nz, @+$01                                  ; $4247: $20 $ff

    rst $20                                       ; $4249: $e7
    ld b, b                                       ; $424a: $40
    cp a                                          ; $424b: $bf
    add b                                         ; $424c: $80
    jr z, jr_043_41f0                             ; $424d: $28 $a1

    ret nc                                        ; $424f: $d0

    and d                                         ; $4250: $a2
    ld bc, $0107                                  ; $4251: $01 $07 $01
    ld [hl], e                                    ; $4254: $73
    inc bc                                        ; $4255: $03
    ld [bc], a                                    ; $4256: $02
    cp $e3                                        ; $4257: $fe $e3
    ld [hl+], a                                   ; $4259: $22
    ret nz                                        ; $425a: $c0

    rst $38                                       ; $425b: $ff
    rst $38                                       ; $425c: $ff
    inc bc                                        ; $425d: $03
    add sp, -$5e                                  ; $425e: $e8 $a2
    push af                                       ; $4260: $f5
    ld [bc], a                                    ; $4261: $02
    ld a, l                                       ; $4262: $7d
    ldh [$03], a                                  ; $4263: $e0 $03
    db $d3                                        ; $4265: $d3
    add c                                         ; $4266: $81
    add b                                         ; $4267: $80
    rst $38                                       ; $4268: $ff
    ld h, b                                       ; $4269: $60
    rst $38                                       ; $426a: $ff
    ld a, a                                       ; $426b: $7f
    db $fc                                        ; $426c: $fc
    rst $18                                       ; $426d: $df
    rst $30                                       ; $426e: $f7
    ld a, a                                       ; $426f: $7f
    rst $38                                       ; $4270: $ff
    dec e                                         ; $4271: $1d
    rst $38                                       ; $4272: $ff
    ldh a, [$c0]                                  ; $4273: $f0 $c0
    rst $30                                       ; $4275: $f7
    ld c, a                                       ; $4276: $4f
    ret nz                                        ; $4277: $c0

    ld e, a                                       ; $4278: $5f
    cp $e0                                        ; $4279: $fe $e0
    ld a, a                                       ; $427b: $7f
    ret nz                                        ; $427c: $c0

    cp a                                          ; $427d: $bf
    add b                                         ; $427e: $80

Jump_043_427f:
    ld hl, sp-$02                                 ; $427f: $f8 $fe
    pop hl                                        ; $4281: $e1
    ld a, [bc]                                    ; $4282: $0a
    ret nz                                        ; $4283: $c0

    db $fc                                        ; $4284: $fc
    ld [c], a                                     ; $4285: $e2
    cp a                                          ; $4286: $bf
    add b                                         ; $4287: $80
    adc a                                         ; $4288: $8f
    add b                                         ; $4289: $80
    add e                                         ; $428a: $83
    ld a, [$80c5]                                 ; $428b: $fa $c5 $80
    ld bc, $e4ff                                  ; $428e: $01 $ff $e4
    inc bc                                        ; $4291: $03
    ld bc, $010f                                  ; $4292: $01 $0f $01
    ccf                                           ; $4295: $3f
    add sp, -$10                                  ; $4296: $e8 $f0
    add d                                         ; $4298: $82
    ld d, b                                       ; $4299: $50
    jp hl                                         ; $429a: $e9


    and [hl]                                      ; $429b: $a6
    ldh [rLCDC], a                                ; $429c: $e0 $40
    ret nz                                        ; $429e: $c0

    ret nz                                        ; $429f: $c0

    ld b, [hl]                                    ; $42a0: $46
    ld a, a                                       ; $42a1: $7f
    ld b, e                                       ; $42a2: $43
    rst $38                                       ; $42a3: $ff
    ld a, a                                       ; $42a4: $7f
    ld b, d                                       ; $42a5: $42
    ld a, a                                       ; $42a6: $7f
    ld b, d                                       ; $42a7: $42
    rst $38                                       ; $42a8: $ff
    add d                                         ; $42a9: $82
    rst $38                                       ; $42aa: $ff
    call nz, $faff                                ; $42ab: $c4 $ff $fa
    ld c, $fa                                     ; $42ae: $0e $fa
    ld c, $fd                                     ; $42b0: $0e $fd
    call nz, $84fd                                ; $42b2: $c4 $fd $84
    ld a, h                                       ; $42b5: $7c
    ld d, h                                       ; $42b6: $54
    ret nz                                        ; $42b7: $c0

    db $fc                                        ; $42b8: $fc
    ldh [$7f], a                                  ; $42b9: $e0 $7f
    ld b, d                                       ; $42bb: $42
    inc bc                                        ; $42bc: $03
    ld [bc], a                                    ; $42bd: $02
    add c                                         ; $42be: $81
    adc b                                         ; $42bf: $88
    ret nz                                        ; $42c0: $c0

    push hl                                       ; $42c1: $e5
    pop hl                                        ; $42c2: $e1
    add b                                         ; $42c3: $80
    ret nz                                        ; $42c4: $c0

    ld a, [$a09e]                                 ; $42c5: $fa $9e $a0
    sbc h                                         ; $42c8: $9c
    and b                                         ; $42c9: $a0
    inc b                                         ; $42ca: $04
    rst $38                                       ; $42cb: $ff
    inc c                                         ; $42cc: $0c
    rst $18                                       ; $42cd: $df
    di                                            ; $42ce: $f3
    ld e, $e3                                     ; $42cf: $1e $e3
    ld a, $c7                                     ; $42d1: $3e $c7
    adc c                                         ; $42d3: $89
    and b                                         ; $42d4: $a0
    rrca                                          ; $42d5: $0f
    ld hl, sp-$01                                 ; $42d6: $f8 $ff
    rrca                                          ; $42d8: $0f
    ld hl, sp-$01                                 ; $42d9: $f8 $ff
    add b                                         ; $42db: $80
    ld a, a                                       ; $42dc: $7f
    ld b, b                                       ; $42dd: $40
    ccf                                           ; $42de: $3f
    ld hl, $fe96                                  ; $42df: $21 $96 $fe
    pop hl                                        ; $42e2: $e1
    ld a, a                                       ; $42e3: $7f
    ld b, c                                       ; $42e4: $41
    cp $e1                                        ; $42e5: $fe $e1
    rst $38                                       ; $42e7: $ff
    ld c, h                                       ; $42e8: $4c
    ret nz                                        ; $42e9: $c0

    nop                                           ; $42ea: $00
    jp hl                                         ; $42eb: $e9


    ccf                                           ; $42ec: $3f
    ld d, d                                       ; $42ed: $52
    nop                                           ; $42ee: $00
    and b                                         ; $42ef: $a0
    inc bc                                        ; $42f0: $03
    add b                                         ; $42f1: $80
    sub b                                         ; $42f2: $90
    add sp, -$13                                  ; $42f3: $e8 $ed
    inc bc                                        ; $42f5: $03
    ret c                                         ; $42f6: $d8

    add b                                         ; $42f7: $80
    ccf                                           ; $42f8: $3f
    or $60                                        ; $42f9: $f6 $60
    db $fc                                        ; $42fb: $fc
    ld hl, sp-$1b                                 ; $42fc: $f8 $e5
    ld [$3e65], a                                 ; $42fe: $ea $65 $3e
    rlca                                          ; $4301: $07
    ld [$080f], sp                                ; $4302: $08 $0f $08
    rrca                                          ; $4305: $0f
    db $fd                                        ; $4306: $fd
    rrca                                          ; $4307: $0f
    db $fc                                        ; $4308: $fc
    ld [c], a                                     ; $4309: $e2
    rlca                                          ; $430a: $07
    rlca                                          ; $430b: $07
    rst $38                                       ; $430c: $ff
    rst $38                                       ; $430d: $ff
    ccf                                           ; $430e: $3f
    db $e4                                        ; $430f: $e4
    rst $38                                       ; $4310: $ff
    rra                                           ; $4311: $1f
    db $f4                                        ; $4312: $f4
    rrca                                          ; $4313: $0f
    ld a, [$fee7]                                 ; $4314: $fa $e7 $fe
    rla                                           ; $4317: $17

jr_043_4318:
    cp $bf                                        ; $4318: $fe $bf
    rst $28                                       ; $431a: $ef
    cp $f3                                        ; $431b: $fe $f3
    cp $ff                                        ; $431d: $fe $ff
    rst $38                                       ; $431f: $ff
    adc d                                         ; $4320: $8a
    ldh [rVBK], a                                 ; $4321: $e0 $4f
    sbc a                                         ; $4323: $9f
    ld hl, sp-$61                                 ; $4324: $f8 $9f
    add sp, -$41                                  ; $4326: $e8 $bf
    ret nc                                        ; $4328: $d0

    or a                                          ; $4329: $b7
    ld h, b                                       ; $432a: $60
    db $e3                                        ; $432b: $e3
    ld h, c                                       ; $432c: $61
    inc bc                                        ; $432d: $03
    rst $38                                       ; $432e: $ff
    nop                                           ; $432f: $00
    adc a                                         ; $4330: $8f
    add b                                         ; $4331: $80
    ld a, a                                       ; $4332: $7f
    ret nz                                        ; $4333: $c0

    ccf                                           ; $4334: $3f
    ldh [$3f], a                                  ; $4335: $e0 $3f
    cp e                                          ; $4337: $bb
    ldh [rIE], a                                  ; $4338: $e0 $ff
    db $fc                                        ; $433a: $fc
    pop hl                                        ; $433b: $e1
    rst $38                                       ; $433c: $ff
    ccf                                           ; $433d: $3f
    ld bc, $e980                                  ; $433e: $01 $80 $e9
    rst $38                                       ; $4341: $ff
    rst $38                                       ; $4342: $ff
    rst $38                                       ; $4343: $ff
    rra                                           ; $4344: $1f
    ldh a, [$ef]                                  ; $4345: $f0 $ef
    ldh [$c7], a                                  ; $4347: $e0 $c7
    nop                                           ; $4349: $00
    rst $20                                       ; $434a: $e7
    rst $08                                       ; $434b: $cf
    nop                                           ; $434c: $00
    inc sp                                        ; $434d: $33
    nop                                           ; $434e: $00
    dec bc                                        ; $434f: $0b
    ret z                                         ; $4350: $c8

    ld h, b                                       ; $4351: $60
    ret nz                                        ; $4352: $c0

    pop hl                                        ; $4353: $e1
    rst $38                                       ; $4354: $ff
    adc a                                         ; $4355: $8f
    and $c0                                       ; $4356: $e6 $c0
    ldh [rIE], a                                  ; $4358: $e0 $ff
    sub b                                         ; $435a: $90
    ret nz                                        ; $435b: $c0

    db $e4                                        ; $435c: $e4
    add d                                         ; $435d: $82
    ld l, c                                       ; $435e: $69
    inc bc                                        ; $435f: $03
    inc bc                                        ; $4360: $03
    inc c                                         ; $4361: $0c
    call Call_043_620f                            ; $4362: $cd $0f $62
    ld l, d                                       ; $4365: $6a
    add b                                         ; $4366: $80
    ld a, a                                       ; $4367: $7f
    db $10                                        ; $4368: $10
    ret nz                                        ; $4369: $c0

    db $e4                                        ; $436a: $e4
    rst $20                                       ; $436b: $e7
    jr nc, jr_043_43ad                            ; $436c: $30 $3f

    ld a, e                                       ; $436e: $7b
    ld b, b                                       ; $436f: $40
    ld a, a                                       ; $4370: $7f
    db $e4                                        ; $4371: $e4
    jp hl                                         ; $4372: $e9


    rra                                           ; $4373: $1f
    ld hl, sp+$07                                 ; $4374: $f8 $07
    db $fc                                        ; $4376: $fc
    ld b, d                                       ; $4377: $42
    ld h, e                                       ; $4378: $63
    and b                                         ; $4379: $a0
    adc d                                         ; $437a: $8a
    jp $e1f8                                      ; $437b: $c3 $f8 $e1


    call c, Call_000_3ce1                         ; $437e: $dc $e1 $3c
    adc c                                         ; $4381: $89
    call c, $c3e1                                 ; $4382: $dc $e1 $c3
    inc a                                         ; $4385: $3c
    add h                                         ; $4386: $84
    ei                                            ; $4387: $fb
    rst $30                                       ; $4388: $f7
    ld e, [hl]                                    ; $4389: $5e
    rst $38                                       ; $438a: $ff
    ld b, $d4                                     ; $438b: $06 $d4
    jp hl                                         ; $438d: $e9


    inc bc                                        ; $438e: $03
    ld [bc], a                                    ; $438f: $02
    rlca                                          ; $4390: $07
    dec b                                         ; $4391: $05
    ld a, [c]                                     ; $4392: $f2
    db $e4                                        ; $4393: $e4
    jp hl                                         ; $4394: $e9


    rst $38                                       ; $4395: $ff
    jr nz, jr_043_4318                            ; $4396: $20 $80

    db $ec                                        ; $4398: $ec

jr_043_4399:
    pop hl                                        ; $4399: $e1
    rrca                                          ; $439a: $0f
    ld a, [bc]                                    ; $439b: $0a
    rrca                                          ; $439c: $0f
    add hl, bc                                    ; $439d: $09
    sbc $fc                                       ; $439e: $de $fc

jr_043_43a0:
    pop hl                                        ; $43a0: $e1
    rra                                           ; $43a1: $1f
    inc de                                        ; $43a2: $13
    ccf                                           ; $43a3: $3f
    ld hl, $60fc                                  ; $43a4: $21 $fc $60
    pop bc                                        ; $43a7: $c1
    rst $38                                       ; $43a8: $ff
    ld sp, hl                                     ; $43a9: $f9
    ld c, l                                       ; $43aa: $4d
    ld a, h                                       ; $43ab: $7c
    add l                                         ; $43ac: $85

jr_043_43ad:
    ldh a, [$e0]                                  ; $43ad: $f0 $e0
    cp $ff                                        ; $43af: $fe $ff
    dec b                                         ; $43b1: $05

jr_043_43b2:
    rst $38                                       ; $43b2: $ff
    ld h, [hl]                                    ; $43b3: $66
    ld b, $7c                                     ; $43b4: $06 $7c
    add e                                         ; $43b6: $83
    rst $38                                       ; $43b7: $ff
    add [hl]                                      ; $43b8: $86
    ld e, l                                       ; $43b9: $5d
    and b                                         ; $43ba: $a0
    rst $18                                       ; $43bb: $df
    and e                                         ; $43bc: $a3
    ld hl, sp-$5f                                 ; $43bd: $f8 $a1
    xor b                                         ; $43bf: $a8
    ld b, d                                       ; $43c0: $42
    call nz, Call_043_67e9                        ; $43c1: $c4 $e9 $67
    ld a, $22                                     ; $43c4: $3e $22
    ld a, [hl]                                    ; $43c6: $7e

jr_043_43c7:
    ld b, b                                       ; $43c7: $40
    adc b                                         ; $43c8: $88
    ld c, d                                       ; $43c9: $4a
    ret nz                                        ; $43ca: $c0

    daa                                           ; $43cb: $27
    ld e, $40                                     ; $43cc: $1e $40
    add [hl]                                      ; $43ce: $86
    ld a, [c]                                     ; $43cf: $f2
    call nz, $c8e2                                ; $43d0: $c4 $e2 $c8
    ld sp, hl                                     ; $43d3: $f9
    ret nz                                        ; $43d4: $c0

    cp [hl]                                       ; $43d5: $be
    and e                                         ; $43d6: $a3
    jr c, jr_043_43a0                             ; $43d7: $38 $c7

    ld a, h                                       ; $43d9: $7c
    jp Jump_043_7edf                              ; $43da: $c3 $df $7e


    db $e3                                        ; $43dd: $e3
    ld a, [hl]                                    ; $43de: $7e
    pop de                                        ; $43df: $d1
    ld a, [hl]                                    ; $43e0: $7e
    call z, $40e4                                 ; $43e1: $cc $e4 $40
    rst $38                                       ; $43e4: $ff
    rst $38                                       ; $43e5: $ff
    jr nz, jr_043_43c7                            ; $43e6: $20 $df

    add hl, de                                    ; $43e8: $19
    rst $20                                       ; $43e9: $e7
    rlca                                          ; $43ea: $07
    ldh [rP1], a                                  ; $43eb: $e0 $00
    ccf                                           ; $43ed: $3f
    or a                                          ; $43ee: $b7
    inc h                                         ; $43ef: $24
    rra                                           ; $43f0: $1f
    inc de                                        ; $43f1: $13
    sbc h                                         ; $43f2: $9c
    adc c                                         ; $43f3: $89
    rst $38                                       ; $43f4: $ff
    ld c, b                                       ; $43f5: $48
    push bc                                       ; $43f6: $c5
    ret nz                                        ; $43f7: $c0

    jr nc, jr_043_4399                            ; $43f8: $30 $9f

    rst $38                                       ; $43fa: $ff
    ld e, b                                       ; $43fb: $58
    rst $20                                       ; $43fc: $e7
    cp h                                          ; $43fd: $bc

Jump_043_43fe:
    db $e3                                        ; $43fe: $e3
    sbc h                                         ; $43ff: $9c
    add d                                         ; $4400: $82
    ld [hl-], a                                   ; $4401: $32
    ld b, c                                       ; $4402: $41
    cp $fc                                        ; $4403: $fe $fc
    db $fc                                        ; $4405: $fc
    add d                                         ; $4406: $82
    ld a, [$f881]                                 ; $4407: $fa $81 $f8
    add b                                         ; $440a: $80
    ld a, a                                       ; $440b: $7f
    ld b, l                                       ; $440c: $45
    ld a, a                                       ; $440d: $7f
    ld b, b                                       ; $440e: $40
    cp a                                          ; $440f: $bf
    cp a                                          ; $4410: $bf
    jr nz, jr_043_43b2                            ; $4411: $20 $9f

    add hl, de                                    ; $4413: $19
    rst $00                                       ; $4414: $c7
    rlca                                          ; $4415: $07
    jp c, $e081                                   ; $4416: $da $81 $e0

    rst $10                                       ; $4419: $d7
    nop                                           ; $441a: $00
    rst $38                                       ; $441b: $ff
    ld sp, hl                                     ; $441c: $f9
    ld h, b                                       ; $441d: $60
    add a                                         ; $441e: $87
    ld [hl+], a                                   ; $441f: $22
    rst $00                                       ; $4420: $c7
    and b                                         ; $4421: $a0
    rst $38                                       ; $4422: $ff
    ld a, $bf                                     ; $4423: $3e $bf
    pop af                                        ; $4425: $f1
    ld e, a                                       ; $4426: $5f
    ldh [$bf], a                                  ; $4427: $e0 $bf
    ldh [$3f], a                                  ; $4429: $e0 $3f
    ld h, b                                       ; $442b: $60
    add c                                         ; $442c: $81
    adc a                                         ; $442d: $8f
    rst $38                                       ; $442e: $ff
    rst $38                                       ; $442f: $ff
    ld h, a                                       ; $4430: $67
    sbc h                                         ; $4431: $9c
    db $eb                                        ; $4432: $eb
    ld a, [hl]                                    ; $4433: $7e
    rst $38                                       ; $4434: $ff
    sbc [hl]                                      ; $4435: $9e
    cp $ff                                        ; $4436: $fe $ff
    add h                                         ; $4438: $84
    cp $c4                                        ; $4439: $fe $c4
    db $fc                                        ; $443b: $fc
    inc h                                         ; $443c: $24
    db $fc                                        ; $443d: $fc
    inc b                                         ; $443e: $04
    ld hl, sp-$69                                 ; $443f: $f8 $97
    adc b                                         ; $4441: $88
    ld hl, sp-$10                                 ; $4442: $f8 $f0
    call c, Call_000_20e1                         ; $4444: $dc $e1 $20
    sbc b                                         ; $4447: $98
    ret nz                                        ; $4448: $c0

    cp $e1                                        ; $4449: $fe $e1
    ld a, a                                       ; $444b: $7f
    rst $20                                       ; $444c: $e7
    ld a, a                                       ; $444d: $7f
    ld a, e                                       ; $444e: $7b
    ld l, [hl]                                    ; $444f: $6e
    inc a                                         ; $4450: $3c
    add c                                         ; $4451: $81
    cp h                                          ; $4452: $bc
    adc c                                         ; $4453: $89
    ldh a, [rLCDC]                                ; $4454: $f0 $40
    ldh a, [$f7]                                  ; $4456: $f0 $f7
    jr nz, @-$0e                                  ; $4458: $20 $f0

    db $10                                        ; $445a: $10
    cp $e1                                        ; $445b: $fe $e1
    ldh [rNR41], a                                ; $445d: $e0 $20
    ret nz                                        ; $445f: $c0

    ld b, b                                       ; $4460: $40
    ld a, e                                       ; $4461: $7b
    add b                                         ; $4462: $80
    add b                                         ; $4463: $80
    call nc, Call_043_7fe9                        ; $4464: $d4 $e9 $7f
    ld l, a                                       ; $4467: $6f
    ld a, a                                       ; $4468: $7f
    ld b, b                                       ; $4469: $40
    db $e3                                        ; $446a: $e3
    ld b, d                                       ; $446b: $42
    ld a, $bb                                     ; $446c: $3e $bb
    add c                                         ; $446e: $81
    db $fc                                        ; $446f: $fc
    cp a                                          ; $4470: $bf
    db $ec                                        ; $4471: $ec
    rst $38                                       ; $4472: $ff
    db $ec                                        ; $4473: $ec
    ld b, d                                       ; $4474: $42
    and b                                         ; $4475: $a0
    call nz, $df22                                ; $4476: $c4 $22 $df
    rra                                           ; $4479: $1f
    ld bc, $020f                                  ; $447a: $01 $0f $02
    rlca                                          ; $447d: $07
    sbc [hl]                                      ; $447e: $9e
    add b                                         ; $447f: $80
    ld bc, $f601                                  ; $4480: $01 $01 $f6
    call c, $ffe1                                 ; $4483: $dc $e1 $ff
    ret nz                                        ; $4486: $c0

    call nc, Call_000_0340                        ; $4487: $d4 $40 $03
    cp $06                                        ; $448a: $fe $06
    db $fc                                        ; $448c: $fc
    rst $20                                       ; $448d: $e7
    inc e                                         ; $448e: $1c
    db $fc                                        ; $448f: $fc
    inc b                                         ; $4490: $04
    ld l, h                                       ; $4491: $6c
    add c                                         ; $4492: $81
    db $fc                                        ; $4493: $fc
    add c                                         ; $4494: $81
    rst $38                                       ; $4495: $ff
    add a                                         ; $4496: $87
    rst $38                                       ; $4497: $ff
    sbc a                                         ; $4498: $9f
    ld b, c                                       ; $4499: $41
    rst $38                                       ; $449a: $ff
    ld sp, $21ff                                  ; $449b: $31 $ff $21
    add a                                         ; $449e: $87
    pop hl                                        ; $449f: $e1
    inc e                                         ; $44a0: $1c
    ld h, b                                       ; $44a1: $60
    ld b, e                                       ; $44a2: $43
    cp e                                          ; $44a3: $bb
    cp $42                                        ; $44a4: $fe $42
    cp $e0                                        ; $44a6: $fe $e0
    add d                                         ; $44a8: $82
    db $fc                                        ; $44a9: $fc
    add h                                         ; $44aa: $84
    nop                                           ; $44ab: $00
    and b                                         ; $44ac: $a0
    inc b                                         ; $44ad: $04
    rst $18                                       ; $44ae: $df
    cp $c4                                        ; $44af: $fe $c4
    cp $84                                        ; $44b1: $fe $84
    db $fc                                        ; $44b3: $fc
    cp $e2                                        ; $44b4: $fe $e2
    cp $42                                        ; $44b6: $fe $42
    ld h, a                                       ; $44b8: $67
    pop bc                                        ; $44b9: $c1
    ld bc, $7ef3                                  ; $44ba: $01 $f3 $7e
    ld b, b                                       ; $44bd: $40
    rst $30                                       ; $44be: $f7
    add b                                         ; $44bf: $80

Call_043_44c0:
Jump_043_44c0:
    rrca                                          ; $44c0: $0f
    rst $38                                       ; $44c1: $ff

jr_043_44c2:
    db $fc                                        ; $44c2: $fc
    pop hl                                        ; $44c3: $e1
    rst $38                                       ; $44c4: $ff
    rst $38                                       ; $44c5: $ff
    db $fc                                        ; $44c6: $fc
    inc b                                         ; $44c7: $04
    db $fc                                        ; $44c8: $fc
    call nz, $f23e                                ; $44c9: $c4 $3e $f2
    ld l, $3f                                     ; $44cc: $2e $3f
    ld a, [$fe16]                                 ; $44ce: $fa $16 $fe
    cp $fe                                        ; $44d1: $fe $fe
    ld [bc], a                                    ; $44d3: $02
    ld h, b                                       ; $44d4: $60
    and b                                         ; $44d5: $a0
    cp d                                          ; $44d6: $ba
    ldh [$ee], a                                  ; $44d7: $e0 $ee
    ld h, b                                       ; $44d9: $60
    xor d                                         ; $44da: $aa
    db $fc                                        ; $44db: $fc
    nop                                           ; $44dc: $00
    ldh a, [$9e]                                  ; $44dd: $f0 $9e
    ld b, b                                       ; $44df: $40
    jr nz, jr_043_44c2                            ; $44e0: $20 $e0

    jr nz, jr_043_44ff                            ; $44e2: $20 $1b

    ldh [$e0], a                                  ; $44e4: $e0 $e0
    db $fc                                        ; $44e6: $fc
    ldh [rIE], a                                  ; $44e7: $e0 $ff
    rst $38                                       ; $44e9: $ff
    nop                                           ; $44ea: $00
    nop                                           ; $44eb: $00
    nop                                           ; $44ec: $00
    nop                                           ; $44ed: $00
    nop                                           ; $44ee: $00
    nop                                           ; $44ef: $00
    ld e, a                                       ; $44f0: $5f
    rst $38                                       ; $44f1: $ff
    rst $38                                       ; $44f2: $ff
    rst $38                                       ; $44f3: $ff
    nop                                           ; $44f4: $00
    cp $fe                                        ; $44f5: $fe $fe
    ldh [$fc], a                                  ; $44f7: $e0 $fc
    cp $e0                                        ; $44f9: $fe $e0
    xor a                                         ; $44fb: $af
    ld hl, sp+$00                                 ; $44fc: $f8 $00
    add d                                         ; $44fe: $82

jr_043_44ff:
    nop                                           ; $44ff: $00
    ldh a, [$e0]                                  ; $4500: $f0 $e0
    add b                                         ; $4502: $80
    cp $e1                                        ; $4503: $fe $e1
    cp a                                          ; $4505: $bf
    cp [hl]                                       ; $4506: $be
    cp $e0                                        ; $4507: $fe $e0
    sbc a                                         ; $4509: $9f
    add b                                         ; $450a: $80
    pop bc                                        ; $450b: $c1
    add b                                         ; $450c: $80
    nop                                           ; $450d: $00
    rst $38                                       ; $450e: $ff
    db $ec                                        ; $450f: $ec
    jp nz, Jump_000_00ef                          ; $4510: $c2 $ef $00

    ld [c], a                                     ; $4513: $e2
    nop                                           ; $4514: $00
    ldh a, [$fe]                                  ; $4515: $f0 $fe
    ldh [$e0], a                                  ; $4517: $e0 $e0
    nop                                           ; $4519: $00
    pop hl                                        ; $451a: $e1
    rst $38                                       ; $451b: $ff
    nop                                           ; $451c: $00
    rst $00                                       ; $451d: $c7
    nop                                           ; $451e: $00
    rst $08                                       ; $451f: $cf
    nop                                           ; $4520: $00
    ld b, e                                       ; $4521: $43
    nop                                           ; $4522: $00
    ld b, a                                       ; $4523: $47
    ei                                            ; $4524: $fb
    nop                                           ; $4525: $00
    rrca                                          ; $4526: $0f
    cp $e0                                        ; $4527: $fe $e0
    rlca                                          ; $4529: $07
    nop                                           ; $452a: $00
    adc a                                         ; $452b: $8f
    rrca                                          ; $452c: $0f
    ldh a, [$f7]                                  ; $452d: $f0 $f7
    ccf                                           ; $452f: $3f
    ret nz                                        ; $4530: $c0

    ld a, a                                       ; $4531: $7f
    ldh [$e8], a                                  ; $4532: $e0 $e8
    ret nz                                        ; $4534: $c0

    scf                                           ; $4535: $37
    ldh a, [rIF]                                  ; $4536: $f0 $0f

jr_043_4538:
    db $fd                                        ; $4538: $fd
    ld hl, sp-$20                                 ; $4539: $f8 $e0
    db $e4                                        ; $453b: $e4
    ld bc, $0706                                  ; $453c: $01 $06 $07
    sbc b                                         ; $453f: $98
    rra                                           ; $4540: $1f
    ldh [$fe], a                                  ; $4541: $e0 $fe
    ldh [$e7], a                                  ; $4543: $e0 $e7
    ret nz                                        ; $4545: $c0

    jr nc, jr_043_4538                            ; $4546: $30 $f0

    dec c                                         ; $4548: $0d
    db $fc                                        ; $4549: $fc
    inc bc                                        ; $454a: $03
    cp $7f                                        ; $454b: $fe $7f
    pop hl                                        ; $454d: $e1
    rst $38                                       ; $454e: $ff
    jp $c780                                      ; $454f: $c3 $80 $c7


    add b                                         ; $4552: $80
    adc a                                         ; $4553: $8f
    cp $e0                                        ; $4554: $fe $e0
    db $fd                                        ; $4556: $fd
    add a                                         ; $4557: $87
    cp $e0                                        ; $4558: $fe $e0
    db $e3                                        ; $455a: $e3
    add b                                         ; $455b: $80
    di                                            ; $455c: $f3
    add b                                         ; $455d: $80
    rst $38                                       ; $455e: $ff
    nop                                           ; $455f: $00
    rst $30                                       ; $4560: $f7
    rst $38                                       ; $4561: $ff
    ld bc, $fe7f                                  ; $4562: $01 $7f $fe
    ldh [$3f], a                                  ; $4565: $e0 $3f
    nop                                           ; $4567: $00
    ccf                                           ; $4568: $3f
    nop                                           ; $4569: $00
    rst $38                                       ; $456a: $ff
    rra                                           ; $456b: $1f
    ld bc, $0243                                  ; $456c: $01 $43 $02
    add e                                         ; $456f: $83
    rst $38                                       ; $4570: $ff
    daa                                           ; $4571: $27
    db $fc                                        ; $4572: $fc
    rst $38                                       ; $4573: $ff
    ld l, a                                       ; $4574: $6f
    ld hl, sp+$67                                 ; $4575: $f8 $67
    db $fc                                        ; $4577: $fc
    rst $38                                       ; $4578: $ff
    call c, $fbff                                 ; $4579: $dc $ff $fb
    rst $38                                       ; $457c: $ff
    rst $38                                       ; $457d: $ff
    add h                                         ; $457e: $84
    rst $38                                       ; $457f: $ff
    or l                                          ; $4580: $b5
    rst $00                                       ; $4581: $c7
    db $fc                                        ; $4582: $fc
    db $e3                                        ; $4583: $e3
    ld a, $ff                                     ; $4584: $3e $ff
    pop hl                                        ; $4586: $e1
    ld a, a                                       ; $4587: $7f
    pop af                                        ; $4588: $f1
    sbc a                                         ; $4589: $9f
    ld hl, sp+$0f                                 ; $458a: $f8 $0f
    ld hl, sp-$01                                 ; $458c: $f8 $ff
    rst $08                                       ; $458e: $cf
    ld hl, sp+$1f                                 ; $458f: $f8 $1f
    db $fd                                        ; $4591: $fd
    rst $08                                       ; $4592: $cf
    ret nc                                        ; $4593: $d0

    ldh [rLCDC], a                                ; $4594: $e0 $40
    db $e3                                        ; $4596: $e3
    add b                                         ; $4597: $80
    db $fc                                        ; $4598: $fc
    daa                                           ; $4599: $27
    add b                                         ; $459a: $80
    ld hl, sp-$80                                 ; $459b: $f8 $80
    ld b, b                                       ; $459d: $40
    ldh [$f0], a                                  ; $459e: $e0 $f0
    ldh [$7f], a                                  ; $45a0: $e0 $7f
    cp $e0                                        ; $45a2: $fe $e0
    ret nz                                        ; $45a4: $c0

    ldh [rIE], a                                  ; $45a5: $e0 $ff
    ld bc, $021f                                  ; $45a7: $01 $1f $02
    ld b, a                                       ; $45aa: $47
    dec b                                         ; $45ab: $05
    adc c                                         ; $45ac: $89
    rst $38                                       ; $45ad: $ff
    sbc c                                         ; $45ae: $99
    rst $38                                       ; $45af: $ff
    rst $38                                       ; $45b0: $ff
    sbc h                                         ; $45b1: $9c
    rst $30                                       ; $45b2: $f7
    rst $18                                       ; $45b3: $df
    ld a, e                                       ; $45b4: $7b
    rst $38                                       ; $45b5: $ff
    ldh a, [rIE]                                  ; $45b6: $f0 $ff
    ld a, a                                       ; $45b8: $7f
    rra                                           ; $45b9: $1f
    rst $38                                       ; $45ba: $ff
    ld [c], a                                     ; $45bb: $e2
    rst $38                                       ; $45bc: $ff
    ld [hl+], a                                   ; $45bd: $22
    ld hl, sp+$1f                                 ; $45be: $f8 $1f
    add $e0                                       ; $45c0: $c6 $e0
    rst $38                                       ; $45c2: $ff
    sbc a                                         ; $45c3: $9f
    db $fd                                        ; $45c4: $fd
    cpl                                           ; $45c5: $2f
    rst $38                                       ; $45c6: $ff
    inc bc                                        ; $45c7: $03
    rst $38                                       ; $45c8: $ff
    ld a, a                                       ; $45c9: $7f
    rst $38                                       ; $45ca: $ff
    or a                                          ; $45cb: $b7
    and d                                         ; $45cc: $a2
    rst $38                                       ; $45cd: $ff
    and e                                         ; $45ce: $a3
    ld [de], a                                    ; $45cf: $12
    pop hl                                        ; $45d0: $e1
    cp $80                                        ; $45d1: $fe $80
    nop                                           ; $45d3: $00
    db $e4                                        ; $45d4: $e4
    add b                                         ; $45d5: $80
    add e                                         ; $45d6: $83
    jp nz, $f040                                  ; $45d7: $c2 $40 $f0

    db $e4                                        ; $45da: $e4
    or d                                          ; $45db: $b2
    ldh [$b0], a                                  ; $45dc: $e0 $b0
    ld [c], a                                     ; $45de: $e2
    ld [hl], b                                    ; $45df: $70

Jump_043_45e0:
    pop hl                                        ; $45e0: $e1
    or b                                          ; $45e1: $b0
    push hl                                       ; $45e2: $e5
    nop                                           ; $45e3: $00
    rst $38                                       ; $45e4: $ff
    rra                                           ; $45e5: $1f
    nop                                           ; $45e6: $00
    ld b, c                                       ; $45e7: $41
    nop                                           ; $45e8: $00
    ld b, e                                       ; $45e9: $43
    ld [bc], a                                    ; $45ea: $02
    ld a, a                                       ; $45eb: $7f
    ld a, [hl-]                                   ; $45ec: $3a
    rst $38                                       ; $45ed: $ff
    ld a, a                                       ; $45ee: $7f
    ld d, [hl]                                    ; $45ef: $56
    ld a, a                                       ; $45f0: $7f
    ld d, l                                       ; $45f1: $55
    ld a, a                                       ; $45f2: $7f
    ld d, h                                       ; $45f3: $54
    rst $38                                       ; $45f4: $ff
    ld d, [hl]                                    ; $45f5: $56
    rst $38                                       ; $45f6: $ff
    rst $38                                       ; $45f7: $ff
    ld l, e                                       ; $45f8: $6b
    rst $38                                       ; $45f9: $ff
    ld d, l                                       ; $45fa: $55
    rst $38                                       ; $45fb: $ff
    jp z, $b1ff                                   ; $45fc: $ca $ff $b1

Jump_043_45ff:
    rst $28                                       ; $45ff: $ef
    rst $38                                       ; $4600: $ff
    sub b                                         ; $4601: $90
    rst $38                                       ; $4602: $ff
    adc d                                         ; $4603: $8a
    ld h, h                                       ; $4604: $64
    ldh [rVBK], a                                 ; $4605: $e0 $4f
    ld sp, hl                                     ; $4607: $f9
    ld c, a                                       ; $4608: $4f
    rst $38                                       ; $4609: $ff
    rst $38                                       ; $460a: $ff
    ld h, $ff                                     ; $460b: $26 $ff

jr_043_460d:
    rla                                           ; $460d: $17
    rst $38                                       ; $460e: $ff
    rst $20                                       ; $460f: $e7
    rst $38                                       ; $4610: $ff
    add hl, bc                                    ; $4611: $09
    ei                                            ; $4612: $fb
    rst $38                                       ; $4613: $ff
    ld [$e0ee], sp                                ; $4614: $08 $ee $e0
    inc e                                         ; $4617: $1c
    di                                            ; $4618: $f3
    db $10                                        ; $4619: $10
    di                                            ; $461a: $f3
    jr nz, @+$01                                  ; $461b: $20 $ff

    ld b, a                                       ; $461d: $47
    inc b                                         ; $461e: $04
    ld b, a                                       ; $461f: $47
    dec b                                         ; $4620: $05
    rrca                                          ; $4621: $0f
    inc b                                         ; $4622: $04
    rrca                                          ; $4623: $0f
    add hl, bc                                    ; $4624: $09
    rst $38                                       ; $4625: $ff
    rra                                           ; $4626: $1f
    db $10                                        ; $4627: $10
    sbc a                                         ; $4628: $9f
    ld de, $21ff                                  ; $4629: $11 $ff $21
    rst $38                                       ; $462c: $ff
    ld [hl+], a                                   ; $462d: $22
    xor a                                         ; $462e: $af
    rst $38                                       ; $462f: $ff
    pop de                                        ; $4630: $d1
    rst $38                                       ; $4631: $ff
    ld l, $88                                     ; $4632: $2e $88
    ldh [$e1], a                                  ; $4634: $e0 $e1
    call z, $12e0                                 ; $4636: $cc $e0 $12
    rst $38                                       ; $4639: $ff
    rst $08                                       ; $463a: $cf
    add hl, bc                                    ; $463b: $09
    rst $38                                       ; $463c: $ff

jr_043_463d:
    db $fc                                        ; $463d: $fc
    rst $38                                       ; $463e: $ff
    ld b, h                                       ; $463f: $44
    rst $38                                       ; $4640: $ff
    jr c, jr_043_463d                             ; $4641: $38 $fa

    ld [$43e0], a                                 ; $4643: $ea $e0 $43
    inc h                                         ; $4646: $24
    ldh [rNR50], a                                ; $4647: $e0 $24
    ei                                            ; $4649: $fb
    ret z                                         ; $464a: $c8

    ei                                            ; $464b: $fb
    jr jr_043_460d                                ; $464c: $18 $bf

    jp nz, $e240                                  ; $464e: $c2 $40 $e2

    ld b, b                                       ; $4651: $40
    ldh a, [$80]                                  ; $4652: $f0 $80
    and b                                         ; $4654: $a0
    rst $00                                       ; $4655: $c7
    jp nz, $80f7                                  ; $4656: $c2 $f7 $80

    ld [c], a                                     ; $4659: $e2
    add b                                         ; $465a: $80
    ldh a, [$e0]                                  ; $465b: $f0 $e0
    add b                                         ; $465d: $80
    ldh [$80], a                                  ; $465e: $e0 $80
    pop hl                                        ; $4660: $e1
    cp $d6                                        ; $4661: $fe $d6
    ret nz                                        ; $4663: $c0

    rst $08                                       ; $4664: $cf
    add b                                         ; $4665: $80
    rst $38                                       ; $4666: $ff
    ld l, c                                       ; $4667: $69
    rst $38                                       ; $4668: $ff
    ld e, c                                       ; $4669: $59
    rst $38                                       ; $466a: $ff
    rst $38                                       ; $466b: $ff
    ld b, a                                       ; $466c: $47
    cp $44                                        ; $466d: $fe $44
    cp $22                                        ; $466f: $fe $22
    rst $38                                       ; $4671: $ff
    inc hl                                        ; $4672: $23
    rst $38                                       ; $4673: $ff
    rst $38                                       ; $4674: $ff
    jr nz, @-$5f                                  ; $4675: $20 $9f

    db $10                                        ; $4677: $10

jr_043_4678:
    rst $38                                       ; $4678: $ff
    db $10                                        ; $4679: $10
    rst $38                                       ; $467a: $ff
    jr jr_043_46ec                                ; $467b: $18 $6f

    rst $38                                       ; $467d: $ff
    ccf                                           ; $467e: $3f
    ld b, a                                       ; $467f: $47
    ld a, l                                       ; $4680: $7d
    add e                                         ; $4681: $83
    rst $38                                       ; $4682: $ff
    add hl, de                                    ; $4683: $19
    rst $38                                       ; $4684: $ff
    and c                                         ; $4685: $a1
    rst $38                                       ; $4686: $ff
    rst $38                                       ; $4687: $ff
    and b                                         ; $4688: $a0
    rst $38                                       ; $4689: $ff
    rst $38                                       ; $468a: $ff
    ld b, b                                       ; $468b: $40
    rst $38                                       ; $468c: $ff
    ldh a, [$ee]                                  ; $468d: $f0 $ee
    rst $38                                       ; $468f: $ff
    jr c, jr_043_4678                             ; $4690: $38 $e6

    cp h                                          ; $4692: $bc
    ld b, d                                       ; $4693: $42
    cp $49                                        ; $4694: $fe $49
    rst $38                                       ; $4696: $ff
    ld b, a                                       ; $4697: $47
    rst $30                                       ; $4698: $f7
    rst $38                                       ; $4699: $ff
    or a                                          ; $469a: $b7
    call z, $eb40                                 ; $469b: $cc $40 $eb
    pop bc                                        ; $469e: $c1
    add b                                         ; $469f: $80
    rst $38                                       ; $46a0: $ff
    jr nz, @-$10                                  ; $46a1: $20 $ee

    adc $e0                                       ; $46a3: $ce $e0
    inc c                                         ; $46a5: $0c
    rst $38                                       ; $46a6: $ff
    inc bc                                        ; $46a7: $03
    db $10                                        ; $46a8: $10
    push bc                                       ; $46a9: $c5
    rst $08                                       ; $46aa: $cf
    ld a, d                                       ; $46ab: $7a
    rst $00                                       ; $46ac: $c7
    rst $38                                       ; $46ad: $ff
    ld a, l                                       ; $46ae: $7d
    add a                                         ; $46af: $87
    db $fc                                        ; $46b0: $fc
    add e                                         ; $46b1: $83
    rst $38                                       ; $46b2: $ff
    ld l, c                                       ; $46b3: $69
    ld a, a                                       ; $46b4: $7f
    ld sp, $1fff                                  ; $46b5: $31 $ff $1f
    db $10                                        ; $46b8: $10
    rra                                           ; $46b9: $1f
    ld d, b                                       ; $46ba: $50
    rra                                           ; $46bb: $1f
    rst $38                                       ; $46bc: $ff
    inc l                                         ; $46bd: $2c
    di                                            ; $46be: $f3
    rst $38                                       ; $46bf: $ff
    ld e, [hl]                                    ; $46c0: $5e
    pop af                                        ; $46c1: $f1
    sbc a                                         ; $46c2: $9f
    ld h, b                                       ; $46c3: $60
    rst $38                                       ; $46c4: $ff
    ld c, b                                       ; $46c5: $48
    rst $38                                       ; $46c6: $ff
    ld b, l                                       ; $46c7: $45

jr_043_46c8:
    rra                                           ; $46c8: $1f
    rst $38                                       ; $46c9: $ff
    or l                                          ; $46ca: $b5
    rst $08                                       ; $46cb: $cf
    rlca                                          ; $46cc: $07
    cp $b0                                        ; $46cd: $fe $b0
    jp $a1f0                                      ; $46cf: $c3 $f0 $a1


    and [hl]                                      ; $46d2: $a6
    ldh [$e7], a                                  ; $46d3: $e0 $e7
    jr nz, jr_043_46c8                            ; $46d5: $20 $f1

    db $10                                        ; $46d7: $10
    ld [c], a                                     ; $46d8: $e2
    and e                                         ; $46d9: $a3
    ldh [$a7], a                                  ; $46da: $e0 $a7
    rst $18                                       ; $46dc: $df
    db $10                                        ; $46dd: $10
    rst $28                                       ; $46de: $ef
    rst $30                                       ; $46df: $f7
    ld [$07f7], sp                                ; $46e0: $08 $f7 $07
    ldh a, [$a7]                                  ; $46e3: $f0 $a7
    ret nz                                        ; $46e5: $c0

    ld a, a                                       ; $46e6: $7f
    ret nz                                        ; $46e7: $c0

    rst $38                                       ; $46e8: $ff
    rst $38                                       ; $46e9: $ff
    ld b, b                                       ; $46ea: $40
    ld a, a                                       ; $46eb: $7f

jr_043_46ec:
    ld b, b                                       ; $46ec: $40
    ld a, a                                       ; $46ed: $7f
    ld a, a                                       ; $46ee: $7f
    ld a, a                                       ; $46ef: $7f
    ei                                            ; $46f0: $fb
    ld l, [hl]                                    ; $46f1: $6e
    rst $38                                       ; $46f2: $ff
    rst $38                                       ; $46f3: $ff
    ld l, a                                       ; $46f4: $6f
    rst $38                                       ; $46f5: $ff
    ld b, b                                       ; $46f6: $40
    rlca                                          ; $46f7: $07
    db $fc                                        ; $46f8: $fc
    inc bc                                        ; $46f9: $03
    rst $38                                       ; $46fa: $ff

jr_043_46fb:
    rst $38                                       ; $46fb: $ff
    inc bc                                        ; $46fc: $03
    cp $03                                        ; $46fd: $fe $03
    cp $ff                                        ; $46ff: $fe $ff
    cp $b1                                        ; $4701: $fe $b1
    rst $38                                       ; $4703: $ff
    rst $38                                       ; $4704: $ff
    ld sp, hl                                     ; $4705: $f9
    rst $28                                       ; $4706: $ef
    ld sp, hl                                     ; $4707: $f9
    rrca                                          ; $4708: $0f
    jp $e740                                      ; $4709: $c3 $40 $e7


    jr nz, jr_043_46fb                            ; $470c: $20 $ed

    rst $28                                       ; $470e: $ef
    cp $e0                                        ; $470f: $fe $e0
    rst $00                                       ; $4711: $c7
    ld b, b                                       ; $4712: $40
    db $10                                        ; $4713: $10
    ret nz                                        ; $4714: $c0

    nop                                           ; $4715: $00
    di                                            ; $4716: $f3
    nop                                           ; $4717: $00
    rst $38                                       ; $4718: $ff
    ld h, b                                       ; $4719: $60
    ccf                                           ; $471a: $3f
    ld h, b                                       ; $471b: $60
    ccf                                           ; $471c: $3f
    jr nz, @+$41                                  ; $471d: $20 $3f

    ccf                                           ; $471f: $3f
    ccf                                           ; $4720: $3f
    cpl                                           ; $4721: $2f
    dec a                                         ; $4722: $3d
    scf                                           ; $4723: $37
    cp a                                          ; $4724: $bf
    scf                                           ; $4725: $37
    ld h, h                                       ; $4726: $64

jr_043_4727:
    ldh [rNR41], a                                ; $4727: $e0 $20
    jp nc, $d0e0                                  ; $4729: $d2 $e0 $d0

    ldh [rIE], a                                  ; $472c: $e0 $ff
    db $fd                                        ; $472e: $fd
    rst $38                                       ; $472f: $ff
    ret nc                                        ; $4730: $d0

    ld a, a                                       ; $4731: $7f
    ld hl, sp-$01                                 ; $4732: $f8 $ff
    db $fc                                        ; $4734: $fc
    rlca                                          ; $4735: $07
    xor a                                         ; $4736: $af
    db $fd                                        ; $4737: $fd
    rlca                                          ; $4738: $07
    ei                                            ; $4739: $fb
    adc b                                         ; $473a: $88
    or h                                          ; $473b: $b4
    ret nz                                        ; $473c: $c0

    db $10                                        ; $473d: $10
    ret nc                                        ; $473e: $d0

    ldh [$c0], a                                  ; $473f: $e0 $c0
    ld a, [$a2e0]                                 ; $4741: $fa $e0 $a2
    nop                                           ; $4744: $00
    jr nz, jr_043_4727                            ; $4745: $20 $e0

    ld b, b                                       ; $4747: $40
    rst $38                                       ; $4748: $ff
    ld b, [hl]                                    ; $4749: $46
    rst $38                                       ; $474a: $ff
    ld b, e                                       ; $474b: $43
    ei                                            ; $474c: $fb
    cp $42                                        ; $474d: $fe $42
    cp $e0                                        ; $474f: $fe $e0
    add d                                         ; $4751: $82
    cp $84                                        ; $4752: $fe $84
    ei                                            ; $4754: $fb
    ld c, $cf                                     ; $4755: $0e $cf
    ei                                            ; $4757: $fb
    ld c, $ff                                     ; $4758: $0e $ff
    call nz, $a0e6                                ; $475a: $c4 $e6 $a0
    cp $e2                                        ; $475d: $fe $e2
    ld a, a                                       ; $475f: $7f
    ld b, d                                       ; $4760: $42
    adc $20                                       ; $4761: $ce $20
    ldh [rNR44], a                                ; $4763: $e0 $23
    rst $38                                       ; $4765: $ff
    ld de, $c0ea                                  ; $4766: $11 $ea $c0
    cp $e2                                        ; $4769: $fe $e2
    sbc a                                         ; $476b: $9f
    db $10                                        ; $476c: $10
    ccf                                           ; $476d: $3f
    db $fd                                        ; $476e: $fd
    rlca                                          ; $476f: $07
    rst $38                                       ; $4770: $ff
    ld h, d                                       ; $4771: $62
    rst $38                                       ; $4772: $ff
    add d                                         ; $4773: $82
    cp $e0                                        ; $4774: $fe $e0
    sbc $e3                                       ; $4776: $de $e3
    rst $38                                       ; $4778: $ff
    ld b, d                                       ; $4779: $42
    ld b, e                                       ; $477a: $43
    ld bc, $0347                                  ; $477b: $01 $47 $03
    inc c                                         ; $477e: $0c
    rlca                                          ; $477f: $07
    ld [$0fff], sp                                ; $4780: $08 $ff $0f
    ld [$8f0f], sp                                ; $4783: $08 $0f $8f
    rrca                                          ; $4786: $0f
    add sp, $0f                                   ; $4787: $e8 $0f
    rst $38                                       ; $4789: $ff
    rst $38                                       ; $478a: $ff
    rst $38                                       ; $478b: $ff
    cp $04                                        ; $478c: $fe $04
    cp $c4                                        ; $478e: $fe $c4
    ld a, $f2                                     ; $4790: $3e $f2
    ld l, $f3                                     ; $4792: $2e $f3
    ld a, [$5e16]                                 ; $4794: $fa $16 $5e
    ldh [$5a], a                                  ; $4797: $e0 $5a
    ldh [rIE], a                                  ; $4799: $e0 $ff
    ld a, a                                       ; $479b: $7f
    ld b, c                                       ; $479c: $41
    ld a, a                                       ; $479d: $7f
    cp a                                          ; $479e: $bf
    ld c, a                                       ; $479f: $4f
    ld hl, sp-$61                                 ; $47a0: $f8 $9f
    add sp, -$41                                  ; $47a2: $e8 $bf
    ret nc                                        ; $47a4: $d0

    rst $30                                       ; $47a5: $f7
    add d                                         ; $47a6: $82

jr_043_47a7:
    rst $38                                       ; $47a7: $ff
    db $fd                                        ; $47a8: $fd
    rst $38                                       ; $47a9: $ff
    db $10                                        ; $47aa: $10
    and b                                         ; $47ab: $a0
    add b                                         ; $47ac: $80
    ld [hl], b                                    ; $47ad: $70
    ret nz                                        ; $47ae: $c0

jr_043_47af:
    jr nc, @-$1e                                  ; $47af: $30 $e0

jr_043_47b1:
    jr nz, jr_043_4832                            ; $47b1: $20 $7f

    ldh [$e1], a                                  ; $47b3: $e0 $e1
    ldh [$27], a                                  ; $47b5: $e0 $27
    ldh [rIE], a                                  ; $47b7: $e0 $ff
    rst $38                                       ; $47b9: $ff
    db $10                                        ; $47ba: $10
    and a                                         ; $47bb: $a7
    rst $30                                       ; $47bc: $f7
    add a                                         ; $47bd: $87
    nop                                           ; $47be: $00
    db $e3                                        ; $47bf: $e3
    jp nc, $df80                                  ; $47c0: $d2 $80 $df

    db $10                                        ; $47c3: $10
    rst $38                                       ; $47c4: $ff
    dec a                                         ; $47c5: $3d
    sbc a                                         ; $47c6: $9f
    jp $827f                                      ; $47c7: $c3 $7f $82


    rst $38                                       ; $47ca: $ff
    add c                                         ; $47cb: $81
    or a                                          ; $47cc: $b7
    add b                                         ; $47cd: $80
    db $fc                                        ; $47ce: $fc
    pop hl                                        ; $47cf: $e1
    rst $38                                       ; $47d0: $ff
    scf                                           ; $47d1: $37
    pop bc                                        ; $47d2: $c1
    ld a, a                                       ; $47d3: $7f
    rst $08                                       ; $47d4: $cf
    ret nz                                        ; $47d5: $c0

    push hl                                       ; $47d6: $e5
    ret nz                                        ; $47d7: $c0

    ld a, a                                       ; $47d8: $7f
    ret nz                                        ; $47d9: $c0

    ldh [rLCDC], a                                ; $47da: $e0 $40
    jp z, $b07c                                   ; $47dc: $ca $7c $b0

    ld [c], a                                     ; $47df: $e2
    ret nz                                        ; $47e0: $c0

    add d                                         ; $47e1: $82
    rst $20                                       ; $47e2: $e7
    rlca                                          ; $47e3: $07
    rst $28                                       ; $47e4: $ef
    ld a, [bc]                                    ; $47e5: $0a
    rst $08                                       ; $47e6: $cf
    cp $e0                                        ; $47e7: $fe $e0
    ld a, h                                       ; $47e9: $7c
    ret nz                                        ; $47ea: $c0

    add l                                         ; $47eb: $85
    nop                                           ; $47ec: $00
    and b                                         ; $47ed: $a0
    add a                                         ; $47ee: $87
    ld hl, sp-$61                                 ; $47ef: $f8 $9f
    ldh [$bf], a                                  ; $47f1: $e0 $bf
    and b                                         ; $47f3: $a0
    adc b                                         ; $47f4: $88
    rra                                           ; $47f5: $1f
    ldh [$1f], a                                  ; $47f6: $e0 $1f
    ld hl, sp+$07                                 ; $47f8: $f8 $07
    db $fc                                        ; $47fa: $fc
    add b                                         ; $47fb: $80
    xor d                                         ; $47fc: $aa
    ldh a, [$80]                                  ; $47fd: $f0 $80
    jr nc, jr_043_47a7                            ; $47ff: $30 $a6

    rst $20                                       ; $4801: $e7
    ld [hl], b                                    ; $4802: $70
    rst $38                                       ; $4803: $ff
    ld a, [c]                                     ; $4804: $f2
    ld l, $a1                                     ; $4805: $2e $a1
    jr nc, jr_043_47b1                            ; $4807: $30 $a8

    inc hl                                        ; $4809: $23
    rst $38                                       ; $480a: $ff
    cp $fe                                        ; $480b: $fe $fe
    jr nc, jr_043_47af                            ; $480d: $30 $a0

    ld a, [bc]                                    ; $480f: $0a
    rst $38                                       ; $4810: $ff
    ld d, $7f                                     ; $4811: $16 $7f
    ld a, [hl+]                                   ; $4813: $2a
    ld a, a                                       ; $4814: $7f
    daa                                           ; $4815: $27
    rst $38                                       ; $4816: $ff
    ccf                                           ; $4817: $3f
    inc [hl]                                      ; $4818: $34
    ccf                                           ; $4819: $3f
    dec hl                                        ; $481a: $2b
    rra                                           ; $481b: $1f
    db $10                                        ; $481c: $10
    ld e, a                                       ; $481d: $5f
    dec e                                         ; $481e: $1d
    rst $38                                       ; $481f: $ff
    pop bc                                        ; $4820: $c1
    rst $38                                       ; $4821: $ff
    sub e                                         ; $4822: $93
    cp $b3                                        ; $4823: $fe $b3
    cp $b9                                        ; $4825: $fe $b9
    rst $28                                       ; $4827: $ef
    rst $38                                       ; $4828: $ff
    rst $38                                       ; $4829: $ff
    ld h, a                                       ; $482a: $67
    rst $38                                       ; $482b: $ff
    ld a, l                                       ; $482c: $7d
    rst $38                                       ; $482d: $ff
    jp nz, Jump_043_5aff                          ; $482e: $c2 $ff $5a

    rst $38                                       ; $4831: $ff

jr_043_4832:
    db $e3                                        ; $4832: $e3
    cp $f1                                        ; $4833: $fe $f1
    rra                                           ; $4835: $1f
    ldh a, [$3f]                                  ; $4836: $f0 $3f
    ld hl, sp+$4f                                 ; $4838: $f8 $4f
    dec a                                         ; $483a: $3d
    db $fc                                        ; $483b: $fc
    and l                                         ; $483c: $a5
    ldh [$fc], a                                  ; $483d: $e0 $fc
    rrca                                          ; $483f: $0f
    cp $e7                                        ; $4840: $fe $e7
    ret nz                                        ; $4842: $c0

    add d                                         ; $4843: $82
    cp $80                                        ; $4844: $fe $80
    rst $38                                       ; $4846: $ff
    ld a, h                                       ; $4847: $7c
    ret nz                                        ; $4848: $c0

    ld a, h                                       ; $4849: $7c

jr_043_484a:
    ret nz                                        ; $484a: $c0

    ld a, b                                       ; $484b: $78
    ret nz                                        ; $484c: $c0

    add d                                         ; $484d: $82
    add b                                         ; $484e: $80
    rra                                           ; $484f: $1f
    ld b, a                                       ; $4850: $47
    dec b                                         ; $4851: $05
    ld b, a                                       ; $4852: $47
    inc b                                         ; $4853: $04
    rrca                                          ; $4854: $0f
    ld c, [hl]                                    ; $4855: $4e
    and d                                         ; $4856: $a2
    and h                                         ; $4857: $a4
    and b                                         ; $4858: $a0
    ld c, [hl]                                    ; $4859: $4e
    and c                                         ; $485a: $a1
    ld d, a                                       ; $485b: $57
    ld hl, $d2ff                                  ; $485c: $21 $ff $d2
    ld c, [hl]                                    ; $485f: $4e
    and b                                         ; $4860: $a0
    and c                                         ; $4861: $a1
    ret nz                                        ; $4862: $c0

    add b                                         ; $4863: $80
    sub d                                         ; $4864: $92
    ld d, b                                       ; $4865: $50
    and b                                         ; $4866: $a0
    ld a, a                                       ; $4867: $7f
    inc a                                         ; $4868: $3c
    rst $38                                       ; $4869: $ff
    ld b, d                                       ; $486a: $42
    rst $38                                       ; $486b: $ff
    inc h                                         ; $486c: $24
    rst $38                                       ; $486d: $ff
    ld a, [hl-]                                   ; $486e: $3a
    ld d, b                                       ; $486f: $50
    and a                                         ; $4870: $a7
    rst $38                                       ; $4871: $ff
    ld c, a                                       ; $4872: $4f
    add hl, bc                                    ; $4873: $09
    ld c, a                                       ; $4874: $4f
    add hl, bc                                    ; $4875: $09
    rrca                                          ; $4876: $0f
    add hl, bc                                    ; $4877: $09
    rrca                                          ; $4878: $0f
    inc b                                         ; $4879: $04
    rst $38                                       ; $487a: $ff
    rlca                                          ; $487b: $07
    inc b                                         ; $487c: $04
    add a                                         ; $487d: $87
    inc b                                         ; $487e: $04
    db $e3                                        ; $487f: $e3
    ld [bc], a                                    ; $4880: $02
    di                                            ; $4881: $f3
    ld [bc], a                                    ; $4882: $02
    xor a                                         ; $4883: $af
    rst $38                                       ; $4884: $ff
    ld h, l                                       ; $4885: $65
    rst $38                                       ; $4886: $ff
    ld e, b                                       ; $4887: $58
    jp $c5a0                                      ; $4888: $c3 $a0 $c5


    ret c                                         ; $488b: $d8

    ldh [$67], a                                  ; $488c: $e0 $67
    rst $38                                       ; $488e: $ff
    db $fc                                        ; $488f: $fc
    ld h, a                                       ; $4890: $67
    rst $38                                       ; $4891: $ff
    inc sp                                        ; $4892: $33
    rst $38                                       ; $4893: $ff
    dec bc                                        ; $4894: $0b
    rst $38                                       ; $4895: $ff
    di                                            ; $4896: $f3
    ei                                            ; $4897: $fb
    rst $38                                       ; $4898: $ff
    inc b                                         ; $4899: $04
    cp $e0                                        ; $489a: $fe $e0
    ld b, l                                       ; $489c: $45
    rst $38                                       ; $489d: $ff
    adc [hl]                                      ; $489e: $8e
    ei                                            ; $489f: $fb
    adc b                                         ; $48a0: $88
    add e                                         ; $48a1: $83
    di                                            ; $48a2: $f3
    db $10                                        ; $48a3: $10
    jr nc, jr_043_484a                            ; $48a4: $30 $a4

    ret nz                                        ; $48a6: $c0

    ld h, [hl]                                    ; $48a7: $66
    xor $80                                       ; $48a8: $ee $80
    ld l, [hl]                                    ; $48aa: $6e
    and [hl]                                      ; $48ab: $a6
    ld [hl], b                                    ; $48ac: $70
    and d                                         ; $48ad: $a2
    ld a, [$c7ff]                                 ; $48ae: $fa $ff $c7
    ld a, l                                       ; $48b1: $7d
    rst $00                                       ; $48b2: $c7
    ld a, h                                       ; $48b3: $7c
    add e                                         ; $48b4: $83
    rst $38                                       ; $48b5: $ff
    jp hl                                         ; $48b6: $e9


    rst $38                                       ; $48b7: $ff
    ld l, [hl]                                    ; $48b8: $6e
    ld [hl], b                                    ; $48b9: $70
    and h                                         ; $48ba: $a4
    ld [bc], a                                    ; $48bb: $02
    rst $38                                       ; $48bc: $ff
    ld bc, $e1fe                                  ; $48bd: $01 $fe $e1
    db $fd                                        ; $48c0: $fd
    ld bc, $6460                                  ; $48c1: $01 $60 $64
    rst $38                                       ; $48c4: $ff
    jr c, @+$01                                   ; $48c5: $38 $ff

    inc d                                         ; $48c7: $14
    rst $28                                       ; $48c8: $ef
    dec sp                                        ; $48c9: $3b
    rst $08                                       ; $48ca: $cf
    ld sp, hl                                     ; $48cb: $f9
    ld b, $fb                                     ; $48cc: $06 $fb
    rst $38                                       ; $48ce: $ff
    sub d                                         ; $48cf: $92
    ld b, c                                       ; $48d0: $41
    add b                                         ; $48d1: $80
    and c                                         ; $48d2: $a1
    rst $38                                       ; $48d3: $ff
    rst $38                                       ; $48d4: $ff
    jr nc, @+$01                                  ; $48d5: $30 $ff

    rst $38                                       ; $48d7: $ff
    ld e, b                                       ; $48d8: $58
    and $bc                                       ; $48d9: $e6 $bc
    ld [c], a                                     ; $48db: $e2
    ld a, $c1                                     ; $48dc: $3e $c1
    rst $38                                       ; $48de: $ff
    sub c                                         ; $48df: $91
    sbc a                                         ; $48e0: $9f
    rst $38                                       ; $48e1: $ff
    adc e                                         ; $48e2: $8b
    cp $6b                                        ; $48e3: $fe $6b
    sbc [hl]                                      ; $48e5: $9e
    ld d, b                                       ; $48e6: $50
    adc c                                         ; $48e7: $89
    ld b, b                                       ; $48e8: $40
    ld h, b                                       ; $48e9: $60
    ld b, b                                       ; $48ea: $40
    ld sp, hl                                     ; $48eb: $f9
    ld h, b                                       ; $48ec: $60
    ld [hl], h                                    ; $48ed: $74
    and b                                         ; $48ee: $a0
    ld [hl], b                                    ; $48ef: $70
    xor c                                         ; $48f0: $a9
    rrca                                          ; $48f1: $0f
    db $fc                                        ; $48f2: $fc
    rlca                                          ; $48f3: $07
    rst $38                                       ; $48f4: $ff
    rlca                                          ; $48f5: $07
    rst $38                                       ; $48f6: $ff
    cp $07                                        ; $48f7: $fe $07
    db $fc                                        ; $48f9: $fc
    ei                                            ; $48fa: $fb
    cp $a1                                        ; $48fb: $fe $a1

jr_043_48fd:
    rst $38                                       ; $48fd: $ff
    pop af                                        ; $48fe: $f1
    ccf                                           ; $48ff: $3f
    rst $38                                       ; $4900: $ff
    ld sp, hl                                     ; $4901: $f9
    rrca                                          ; $4902: $0f
    db $e3                                        ; $4903: $e3
    jr nz, jr_043_48fd                            ; $4904: $20 $f7

    cp h                                          ; $4906: $bc
    add b                                         ; $4907: $80
    ld [hl], b                                    ; $4908: $70
    and a                                         ; $4909: $a7
    xor $a0                                       ; $490a: $ee $a0
    and d                                         ; $490c: $a2
    add [hl]                                      ; $490d: $86
    rst $38                                       ; $490e: $ff
    add e                                         ; $490f: $83
    cpl                                           ; $4910: $2f
    ret nz                                        ; $4911: $c0

    add c                                         ; $4912: $81
    rst $38                                       ; $4913: $ff
    ld b, c                                       ; $4914: $41
    db $db                                        ; $4915: $db
    rst $38                                       ; $4916: $ff
    ld b, b                                       ; $4917: $40
    and b                                         ; $4918: $a0
    xor e                                         ; $4919: $ab
    rst $38                                       ; $491a: $ff
    jp nz, Jump_043_6210                          ; $491b: $c2 $10 $62

    ld bc, $7f0e                                  ; $491e: $01 $0e $7f
    inc bc                                        ; $4921: $03
    ld b, $03                                     ; $4922: $06 $03
    add a                                         ; $4924: $87
    inc bc                                        ; $4925: $03
    ld [c], a                                     ; $4926: $e2
    inc bc                                        ; $4927: $03
    jp nz, $ff40                                  ; $4928: $c2 $40 $ff

    ld b, b                                       ; $492b: $40
    rst $38                                       ; $492c: $ff
    db $fc                                        ; $492d: $fc
    dec bc                                        ; $492e: $0b
    cp $05                                        ; $492f: $fe $05
    rst $38                                       ; $4931: $ff
    rrca                                          ; $4932: $0f
    ld l, a                                       ; $4933: $6f
    rst $38                                       ; $4934: $ff
    ld hl, sp-$01                                 ; $4935: $f8 $ff
    rlca                                          ; $4937: $07
    nop                                           ; $4938: $00
    pop bc                                        ; $4939: $c1
    ld b, c                                       ; $493a: $41
    rst $38                                       ; $493b: $ff
    ret nz                                        ; $493c: $c0

    xor d                                         ; $493d: $aa
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
    rst $38                                       ; $4950: $ff
    rst $38                                       ; $4951: $ff
    rst $38                                       ; $4952: $ff
    di                                            ; $4953: $f3
    nop                                           ; $4954: $00
    dec e                                         ; $4955: $1d
    nop                                           ; $4956: $00
    and $00                                       ; $4957: $e6 $00
    push af                                       ; $4959: $f5
    cp d                                          ; $495a: $ba
    cp $e0                                        ; $495b: $fe $e0
    and $f6                                       ; $495d: $e6 $f6
    ldh [rIE], a                                  ; $495f: $e0 $ff
    rst $38                                       ; $4961: $ff
    rst $38                                       ; $4962: $ff
    nop                                           ; $4963: $00
    cp $fe                                        ; $4964: $fe $fe
    jp hl                                         ; $4966: $e9


Jump_043_4967:
    di                                            ; $4967: $f3
    nop                                           ; $4968: $00
    rrca                                          ; $4969: $0f
    nop                                           ; $496a: $00
    ld a, c                                       ; $496b: $79
    nop                                           ; $496c: $00
    ld h, c                                       ; $496d: $61
    rst $38                                       ; $496e: $ff
    nop                                           ; $496f: $00
    ld b, c                                       ; $4970: $41
    nop                                           ; $4971: $00
    inc bc                                        ; $4972: $03
    nop                                           ; $4973: $00
    rlca                                          ; $4974: $07
    nop                                           ; $4975: $00
    rra                                           ; $4976: $1f
    db $fd                                        ; $4977: $fd
    ld bc, $e2e2                                  ; $4978: $01 $e2 $e2
    inc bc                                        ; $497b: $03
    db $fc                                        ; $497c: $fc
    rrca                                          ; $497d: $0f
    ldh a, [$3f]                                  ; $497e: $f0 $3f
    ret nz                                        ; $4980: $c0

    rst $18                                       ; $4981: $df
    ld a, a                                       ; $4982: $7f
    add c                                         ; $4983: $81
    rst $38                                       ; $4984: $ff
    inc de                                        ; $4985: $13
    cp $d2                                        ; $4986: $fe $d2
    ld [c], a                                     ; $4988: $e2
    add b                                         ; $4989: $80
    ld a, a                                       ; $498a: $7f
    rst $38                                       ; $498b: $ff
    ldh [$1f], a                                  ; $498c: $e0 $1f
    ld hl, sp+$07                                 ; $498e: $f8 $07
    db $fc                                        ; $4990: $fc
    jp $f1fe                                      ; $4991: $c3 $fe $f1


    rst $38                                       ; $4994: $ff
    ccf                                           ; $4995: $3f
    rst $08                                       ; $4996: $cf
    nop                                           ; $4997: $00
    ldh a, [rP1]                                  ; $4998: $f0 $00
    sbc [hl]                                      ; $499a: $9e
    nop                                           ; $499b: $00
    add [hl]                                      ; $499c: $86
    rst $38                                       ; $499d: $ff
    nop                                           ; $499e: $00
    add d                                         ; $499f: $82
    nop                                           ; $49a0: $00
    ret nz                                        ; $49a1: $c0

    nop                                           ; $49a2: $00
    ldh [rP1], a                                  ; $49a3: $e0 $00
    ld hl, sp-$02                                 ; $49a5: $f8 $fe
    or h                                          ; $49a7: $b4
    and $f0                                       ; $49a8: $e6 $f0
    nop                                           ; $49aa: $00
    rst $08                                       ; $49ab: $cf
    nop                                           ; $49ac: $00
    cp b                                          ; $49ad: $b8
    nop                                           ; $49ae: $00
    ld h, a                                       ; $49af: $67
    and l                                         ; $49b0: $a5
    inc bc                                        ; $49b1: $03
    and d                                         ; $49b2: $a2
    push hl                                       ; $49b3: $e5
    rrca                                          ; $49b4: $0f
    and [hl]                                      ; $49b5: $a6
    ldh [$88], a                                  ; $49b6: $e0 $88
    ldh [$80], a                                  ; $49b8: $e0 $80
    sbc b                                         ; $49ba: $98
    and $03                                       ; $49bb: $e6 $03
    cp a                                          ; $49bd: $bf
    call z, $b00f                                 ; $49be: $cc $0f $b0
    ccf                                           ; $49c1: $3f
    ld b, b                                       ; $49c2: $40
    ld a, a                                       ; $49c3: $7f
    add d                                         ; $49c4: $82
    push hl                                       ; $49c5: $e5
    adc a                                         ; $49c6: $8f
    ld a, a                                       ; $49c7: $7f
    add b                                         ; $49c8: $80
    ld [hl], e                                    ; $49c9: $73
    ldh [rNR33], a                                ; $49ca: $e0 $1d
    ld hl, sp+$06                                 ; $49cc: $f8 $06
    db $fc                                        ; $49ce: $fc
    ret nz                                        ; $49cf: $c0

    jp hl                                         ; $49d0: $e9


    rst $28                                       ; $49d1: $ef
    cp e                                          ; $49d2: $bb
    inc bc                                        ; $49d3: $03
    ld l, h                                       ; $49d4: $6c
    rrca                                          ; $49d5: $0f
    ret nz                                        ; $49d6: $c0

    jp hl                                         ; $49d7: $e9


    sbc l                                         ; $49d8: $9d
    add b                                         ; $49d9: $80
    ld h, [hl]                                    ; $49da: $66
    rst $20                                       ; $49db: $e7
    ldh [rIE], a                                  ; $49dc: $e0 $ff
    ld bc, $e0fe                                  ; $49de: $01 $fe $e0
    ld c, [hl]                                    ; $49e1: $4e
    db $e3                                        ; $49e2: $e3
    ld bc, $02ff                                  ; $49e3: $01 $ff $02
    rst $38                                       ; $49e6: $ff
    rst $38                                       ; $49e7: $ff
    ld [bc], a                                    ; $49e8: $02
    inc sp                                        ; $49e9: $33
    cp $39                                        ; $49ea: $fe $39
    rst $28                                       ; $49ec: $ef
    cp a                                          ; $49ed: $bf
    or $ff                                        ; $49ee: $f6 $ff
    rst $38                                       ; $49f0: $ff
    ldh [rIE], a                                  ; $49f1: $e0 $ff
    cp $ff                                        ; $49f3: $fe $ff
    ld b, l                                       ; $49f5: $45
    rst $38                                       ; $49f6: $ff
    push bc                                       ; $49f7: $c5
    rst $38                                       ; $49f8: $ff
    rst $38                                       ; $49f9: $ff
    ld [hl+], a                                   ; $49fa: $22
    pop af                                        ; $49fb: $f1
    rra                                           ; $49fc: $1f
    pop af                                        ; $49fd: $f1
    ccf                                           ; $49fe: $3f
    ld a, [$bb5e]                                 ; $49ff: $fa $5e $bb
    rst $38                                       ; $4a02: $ff
    ld b, $f0                                     ; $4a03: $06 $f0
    ld [c], a                                     ; $4a05: $e2
    ld b, [hl]                                    ; $4a06: $46
    rst $38                                       ; $4a07: $ff
    adc b                                         ; $4a08: $88
    ld [hl+], a                                   ; $4a09: $22
    ld [$7080], a                                 ; $4a0a: $ea $80 $70
    cp $e0                                        ; $4a0d: $fe $e0
    ld [de], a                                    ; $4a0f: $12
    push hl                                       ; $4a10: $e5
    cp b                                          ; $4a11: $b8
    pop hl                                        ; $4a12: $e1
    ld [hl+], a                                   ; $4a13: $22
    ldh [$5c], a                                  ; $4a14: $e0 $5c
    rrca                                          ; $4a16: $0f
    ld [hl], b                                    ; $4a17: $70
    ld a, d                                       ; $4a18: $7a
    ldh [rNR32], a                                ; $4a19: $e0 $1c
    ld h, $e1                                     ; $4a1b: $26 $e1
    or [hl]                                       ; $4a1d: $b6
    db $e3                                        ; $4a1e: $e3
    ld a, d                                       ; $4a1f: $7a
    ldh [rNR30], a                                ; $4a20: $e0 $1a
    ld a, d                                       ; $4a22: $7a
    ldh [rNR52], a                                ; $4a23: $e0 $26
    pop hl                                        ; $4a25: $e1
    or [hl]                                       ; $4a26: $b6
    pop hl                                        ; $4a27: $e1
    add e                                         ; $4a28: $83
    ei                                            ; $4a29: $fb
    ld e, [hl]                                    ; $4a2a: $5e
    ld [c], a                                     ; $4a2b: $e2
    set 0, [hl]                                   ; $4a2c: $cb $c6
    jp hl                                         ; $4a2e: $e9


    ld a, h                                       ; $4a2f: $7c
    db $e3                                        ; $4a30: $e3
    add $e7                                       ; $4a31: $c6 $e7
    ld a, h                                       ; $4a33: $7c
    ld [c], a                                     ; $4a34: $e2
    ld b, c                                       ; $4a35: $41
    ret                                           ; $4a36: $c9


    jp nz, $e7c6                                  ; $4a37: $c2 $c6 $e7

    ld a, h                                       ; $4a3a: $7c
    pop hl                                        ; $4a3b: $e1
    dec b                                         ; $4a3c: $05
    call z, $92ed                                 ; $4a3d: $cc $ed $92
    rst $20                                       ; $4a40: $e7
    dec sp                                        ; $4a41: $3b
    xor $cf                                       ; $4a42: $ee $cf
    cp e                                          ; $4a44: $bb
    cp $ff                                        ; $4a45: $fe $ff
    db $e4                                        ; $4a47: $e4
    sub d                                         ; $4a48: $92
    pop hl                                        ; $4a49: $e1
    call z, $0fe9                                 ; $4a4a: $cc $e9 $0f
    ld [bc], a                                    ; $4a4d: $02
    rst $38                                       ; $4a4e: $ff
    di                                            ; $4a4f: $f3
    ld bc, $1c1d                                  ; $4a50: $01 $1d $1c
    cp $2a                                        ; $4a53: $fe $2a
    rst $38                                       ; $4a55: $ff
    ld d, l                                       ; $4a56: $55
    rst $38                                       ; $4a57: $ff
    rst $38                                       ; $4a58: $ff
    ld c, e                                       ; $4a59: $4b
    rst $38                                       ; $4a5a: $ff
    ld b, l                                       ; $4a5b: $45
    ld a, a                                       ; $4a5c: $7f
    ld b, d                                       ; $4a5d: $42
    rst $38                                       ; $4a5e: $ff
    inc e                                         ; $4a5f: $1c
    rst $38                                       ; $4a60: $ff
    rst $38                                       ; $4a61: $ff
    ld b, h                                       ; $4a62: $44
    rst $38                                       ; $4a63: $ff
    jp nz, Jump_000_21ff                          ; $4a64: $c2 $ff $21

    rst $38                                       ; $4a67: $ff
    inc h                                         ; $4a68: $24
    rst $38                                       ; $4a69: $ff
    rst $38                                       ; $4a6a: $ff
    inc de                                        ; $4a6b: $13
    rst $38                                       ; $4a6c: $ff
    jr @+$01                                      ; $4a6d: $18 $ff

    inc d                                         ; $4a6f: $14
    rst $38                                       ; $4a70: $ff
    ld [hl], b                                    ; $4a71: $70
    cp $18                                        ; $4a72: $fe $18
    ldh [$86], a                                  ; $4a74: $e0 $86
    rst $38                                       ; $4a76: $ff
    ld [$48ff], sp                                ; $4a77: $08 $ff $48
    rst $38                                       ; $4a7a: $ff
    sub b                                         ; $4a7b: $90
    cp a                                          ; $4a7c: $bf
    rst $38                                       ; $4a7d: $ff
    jr nc, @+$01                                  ; $4a7e: $30 $ff

    ld e, b                                       ; $4a80: $58
    ldh a, [$80]                                  ; $4a81: $f0 $80
    sbc b                                         ; $4a83: $98
    jp nz, $e500                                  ; $4a84: $c2 $00 $e5

    ld e, l                                       ; $4a87: $5d
    cp $e0                                        ; $4a88: $fe $e0
    ld h, a                                       ; $4a8a: $67
    adc [hl]                                      ; $4a8b: $8e
    ret nz                                        ; $4a8c: $c0

    sbc b                                         ; $4a8d: $98
    jp nz, $e701                                  ; $4a8e: $c2 $01 $e7

    ld [bc], a                                    ; $4a91: $02
    dec l                                         ; $4a92: $2d
    cp e                                          ; $4a93: $bb
    cp $e0                                        ; $4a94: $fe $e0
    rst $20                                       ; $4a96: $e7
    ld bc, $c020                                  ; $4a97: $01 $20 $c0
    add sp, -$1a                                  ; $4a9a: $e8 $e6
    push bc                                       ; $4a9c: $c5
    or [hl]                                       ; $4a9d: $b6
    db $e4                                        ; $4a9e: $e4
    ld [hl], c                                    ; $4a9f: $71
    add [hl]                                      ; $4aa0: $86
    and $c6                                       ; $4aa1: $e6 $c6
    or [hl]                                       ; $4aa3: $b6
    ld [c], a                                     ; $4aa4: $e2
    ld e, b                                       ; $4aa5: $58
    jp $80e7                                      ; $4aa6: $c3 $e7 $80


    db $dd                                        ; $4aa9: $dd
    cp $e0                                        ; $4aaa: $fe $e0
    sbc [hl]                                      ; $4aac: $9e
    ret nz                                        ; $4aad: $c0

    ld [c], a                                     ; $4aae: $e2
    ld [bc], a                                    ; $4aaf: $02
    di                                            ; $4ab0: $f3
    ld [bc], a                                    ; $4ab1: $02
    rra                                           ; $4ab2: $1f
    add $e0                                       ; $4ab3: $c6 $e0
    ldh [$a6], a                                  ; $4ab5: $e0 $a6
    call $c6fe                                    ; $4ab7: $cd $fe $c6
    and $21                                       ; $4aba: $e6 $21
    rst $38                                       ; $4abc: $ff
    daa                                           ; $4abd: $27
    cp $13                                        ; $4abe: $fe $13
    rst $38                                       ; $4ac0: $ff
    ld h, [hl]                                    ; $4ac1: $66
    call c, $e5c6                                 ; $4ac2: $dc $c6 $e5
    ld a, h                                       ; $4ac5: $7c
    ldh [$c8], a                                  ; $4ac6: $e0 $c8
    rst $38                                       ; $4ac8: $ff
    sub b                                         ; $4ac9: $90
    add b                                         ; $4aca: $80
    ldh [$80], a                                  ; $4acb: $e0 $80
    cp b                                          ; $4acd: $b8
    inc h                                         ; $4ace: $24
    add $e0                                       ; $4acf: $c6 $e0
    add b                                         ; $4ad1: $80
    add sp, $01                                   ; $4ad2: $e8 $01
    ret nz                                        ; $4ad4: $c0

    ldh [$80], a                                  ; $4ad5: $e0 $80
    pop hl                                        ; $4ad7: $e1
    ld bc, $a2a0                                  ; $4ad8: $01 $a0 $a2
    db $ec                                        ; $4adb: $ec
    ret nz                                        ; $4adc: $c0

    sub b                                         ; $4add: $90
    cp h                                          ; $4ade: $bc
    ld [$c1ec], a                                 ; $4adf: $ea $ec $c1
    cp h                                          ; $4ae2: $bc
    add sp, -$28                                  ; $4ae3: $e8 $d8
    and d                                         ; $4ae5: $a2
    add b                                         ; $4ae6: $80
    add b                                         ; $4ae7: $80

jr_043_4ae8:
    pop hl                                        ; $4ae8: $e1
    ld b, b                                       ; $4ae9: $40
    db $e3                                        ; $4aea: $e3
    rst $38                                       ; $4aeb: $ff
    ld e, a                                       ; $4aec: $5f
    ld [hl+], a                                   ; $4aed: $22
    ccf                                           ; $4aee: $3f
    ld [hl+], a                                   ; $4aef: $22
    ld a, a                                       ; $4af0: $7f
    inc hl                                        ; $4af1: $23
    cp $e1                                        ; $4af2: $fe $e1
    ccf                                           ; $4af4: $3f
    or $e0                                        ; $4af5: $f6 $e0
    rst $38                                       ; $4af7: $ff
    ccf                                           ; $4af8: $3f
    jr nz, @+$01                                  ; $4af9: $20 $ff

    ld a, [hl-]                                   ; $4afb: $3a
    rst $08                                       ; $4afc: $cf
    ld sp, hl                                     ; $4afd: $f9
    ld b, $ff                                     ; $4afe: $06 $ff
    rst $18                                       ; $4b00: $df
    ld [de], a                                    ; $4b01: $12
    rst $38                                       ; $4b02: $ff
    and d                                         ; $4b03: $a2
    rst $38                                       ; $4b04: $ff
    and c                                         ; $4b05: $a1
    dec de                                        ; $4b06: $1b
    ret nz                                        ; $4b07: $c0

    ret nz                                        ; $4b08: $c0

    rst $38                                       ; $4b09: $ff
    rst $38                                       ; $4b0a: $ff
    rst $20                                       ; $4b0b: $e7
    cp h                                          ; $4b0c: $bc
    db $e3                                        ; $4b0d: $e3
    ld a, $c1                                     ; $4b0e: $3e $c1
    rst $38                                       ; $4b10: $ff
    sub c                                         ; $4b11: $91
    rst $38                                       ; $4b12: $ff
    rst $38                                       ; $4b13: $ff
    adc e                                         ; $4b14: $8b
    cp $6b                                        ; $4b15: $fe $6b
    sbc [hl]                                      ; $4b17: $9e
    rrca                                          ; $4b18: $0f
    db $fc                                        ; $4b19: $fc
    rlca                                          ; $4b1a: $07
    db $fd                                        ; $4b1b: $fd
    cp $80                                        ; $4b1c: $fe $80
    and c                                         ; $4b1e: $a1
    cp [hl]                                       ; $4b1f: $be
    jr c, jr_043_4ae8                             ; $4b20: $38 $c6

    db $fc                                        ; $4b22: $fc
    and d                                         ; $4b23: $a2
    cp $d2                                        ; $4b24: $fe $d2
    di                                            ; $4b26: $f3
    cp $aa                                        ; $4b27: $fe $aa
    db $fc                                        ; $4b29: $fc
    ldh [rLCDC], a                                ; $4b2a: $e0 $40
    and a                                         ; $4b2c: $a7
    rra                                           ; $4b2d: $1f
    inc e                                         ; $4b2e: $1c
    ccf                                           ; $4b2f: $3f
    ld a, [hl+]                                   ; $4b30: $2a
    ei                                            ; $4b31: $fb
    ld a, a                                       ; $4b32: $7f
    ld d, a                                       ; $4b33: $57
    add $c0                                       ; $4b34: $c6 $c0
    inc hl                                        ; $4b36: $23
    cp $13                                        ; $4b37: $fe $13
    cp $1b                                        ; $4b39: $fe $1b
    sbc a                                         ; $4b3b: $9f
    rst $38                                       ; $4b3c: $ff
    dec [hl]                                      ; $4b3d: $35
    rst $08                                       ; $4b3e: $cf
    ld a, d                                       ; $4b3f: $7a
    adc a                                         ; $4b40: $8f
    or [hl]                                       ; $4b41: $b6
    ldh [$c6], a                                  ; $4b42: $e0 $c6
    ret nz                                        ; $4b44: $c0

    adc b                                         ; $4b45: $88
    cp $c6                                        ; $4b46: $fe $c6
    ret nz                                        ; $4b48: $c0

    cp b                                          ; $4b49: $b8
    rst $30                                       ; $4b4a: $f7
    ld e, h                                       ; $4b4b: $5c
    db $e3                                        ; $4b4c: $e3
    cp [hl]                                       ; $4b4d: $be
    db $e3                                        ; $4b4e: $e3
    ld a, $d9                                     ; $4b4f: $3e $d9
    pop hl                                        ; $4b51: $e1
    ld a, [c]                                     ; $4b52: $f2
    add b                                         ; $4b53: $80
    db $10                                        ; $4b54: $10
    and [hl]                                      ; $4b55: $a6
    ld bc, $4607                                  ; $4b56: $01 $07 $46
    ldh [rIE], a                                  ; $4b59: $e0 $ff
    add hl, de                                    ; $4b5b: $19
    ld e, [hl]                                    ; $4b5c: $5e
    sbc h                                         ; $4b5d: $9c
    ret nz                                        ; $4b5e: $c0

    ld a, [hl-]                                   ; $4b5f: $3a
    rst $08                                       ; $4b60: $cf
    ld a, c                                       ; $4b61: $79
    add [hl]                                      ; $4b62: $86
    adc h                                         ; $4b63: $8c
    ldh [rNR43], a                                ; $4b64: $e0 $22
    adc h                                         ; $4b66: $8c
    ldh [$f8], a                                  ; $4b67: $e0 $f8
    sbc h                                         ; $4b69: $9c
    pop bc                                        ; $4b6a: $c1
    adc h                                         ; $4b6b: $8c
    jp hl                                         ; $4b6c: $e9


    db $10                                        ; $4b6d: $10
    xor b                                         ; $4b6e: $a8
    add b                                         ; $4b6f: $80
    ldh [rLCDC], a                                ; $4b70: $e0 $40
    ld hl, sp+$20                                 ; $4b72: $f8 $20
    ldh a, [$ec]                                  ; $4b74: $f0 $ec
    jp nz, $e8cc                                  ; $4b76: $c2 $cc $e8

    db $ec                                        ; $4b79: $ec
    pop bc                                        ; $4b7a: $c1
    call z, $ffe9                                 ; $4b7b: $cc $e9 $ff
    ld de, $0eff                                  ; $4b7e: $11 $ff $0e
    cp $9e                                        ; $4b81: $fe $9e
    adc c                                         ; $4b83: $89
    ld b, b                                       ; $4b84: $40
    ld a, a                                       ; $4b85: $7f
    ld b, b                                       ; $4b86: $40
    ld a, a                                       ; $4b87: $7f
    ld a, a                                       ; $4b88: $7f
    ld a, a                                       ; $4b89: $7f
    ei                                            ; $4b8a: $fb
    rst $18                                       ; $4b8b: $df
    ld l, [hl]                                    ; $4b8c: $6e
    rst $38                                       ; $4b8d: $ff
    ld l, a                                       ; $4b8e: $6f
    rst $38                                       ; $4b8f: $ff
    ld b, b                                       ; $4b90: $40
    cp $e1                                        ; $4b91: $fe $e1
    rlca                                          ; $4b93: $07
    cp $ff                                        ; $4b94: $fe $ff
    rlca                                          ; $4b96: $07
    db $fd                                        ; $4b97: $fd
    cp $fc                                        ; $4b98: $fe $fc
    cp l                                          ; $4b9a: $bd
    db $ec                                        ; $4b9b: $ec
    rst $38                                       ; $4b9c: $ff
    db $ec                                        ; $4b9d: $ec
    ld [hl], a                                    ; $4b9e: $77
    rst $38                                       ; $4b9f: $ff
    inc b                                         ; $4ba0: $04
    db $fd                                        ; $4ba1: $fd
    cp $e0                                        ; $4ba2: $fe $e0
    db $eb                                        ; $4ba4: $eb
    ld a, [hl]                                    ; $4ba5: $7e
    rst $38                                       ; $4ba6: $ff
    db $fc                                        ; $4ba7: $fc
    add [hl]                                      ; $4ba8: $86
    db $ec                                        ; $4ba9: $ec
    ld h, [hl]                                    ; $4baa: $66
    add d                                         ; $4bab: $82
    ld a, [$ffa0]                                 ; $4bac: $fa $a0 $ff
    ld b, d                                       ; $4baf: $42
    ld b, d                                       ; $4bb0: $42
    ret nz                                        ; $4bb1: $c0

    ld hl, $10ff                                  ; $4bb2: $21 $ff $10
    cp d                                          ; $4bb5: $ba
    ld a, [bc]                                    ; $4bb6: $0a
    ret nz                                        ; $4bb7: $c0

    rlca                                          ; $4bb8: $07
    ld l, h                                       ; $4bb9: $6c
    pop hl                                        ; $4bba: $e1
    ldh [$7f], a                                  ; $4bbb: $e0 $7f
    ret nz                                        ; $4bbd: $c0

    cp $e2                                        ; $4bbe: $fe $e2
    rst $38                                       ; $4bc0: $ff
    rst $10                                       ; $4bc1: $d7
    rst $38                                       ; $4bc2: $ff
    ei                                            ; $4bc3: $fb
    ld l, [hl]                                    ; $4bc4: $6e
    ld hl, sp-$3c                                 ; $4bc5: $f8 $c4
    db $fc                                        ; $4bc7: $fc
    cp b                                          ; $4bc8: $b8
    ld [c], a                                     ; $4bc9: $e2
    rst $38                                       ; $4bca: $ff
    cp a                                          ; $4bcb: $bf
    db $fd                                        ; $4bcc: $fd
    rst $28                                       ; $4bcd: $ef
    inc e                                         ; $4bce: $1c
    and d                                         ; $4bcf: $a2
    ld b, b                                       ; $4bd0: $40
    rst $38                                       ; $4bd1: $ff
    jr nz, @+$01                                  ; $4bd2: $20 $ff

    ldh a, [$1f]                                  ; $4bd4: $f0 $1f
    ld e, a                                       ; $4bd6: $5f
    ldh a, [$8f]                                  ; $4bd7: $f0 $8f
    ld hl, sp+$4f                                 ; $4bd9: $f8 $4f
    ld hl, sp-$24                                 ; $4bdb: $f8 $dc
    add b                                         ; $4bdd: $80
    inc b                                         ; $4bde: $04
    cp $e0                                        ; $4bdf: $fe $e0
    dec e                                         ; $4be1: $1d
    ld [$e2fe], sp                                ; $4be2: $08 $fe $e2
    db $10                                        ; $4be5: $10
    rst $38                                       ; $4be6: $ff
    ld de, $e4c4                                  ; $4be7: $11 $c4 $e4
    add hl, bc                                    ; $4bea: $09
    add b                                         ; $4beb: $80
    ld a, h                                       ; $4bec: $7c
    db $e3                                        ; $4bed: $e3

jr_043_4bee:
    ld a, [$c0bc]                                 ; $4bee: $fa $bc $c0
    rst $38                                       ; $4bf1: $ff
    ld a, h                                       ; $4bf2: $7c
    ldh [$fc], a                                  ; $4bf3: $e0 $fc
    ei                                            ; $4bf5: $fb
    cp $a1                                        ; $4bf6: $fe $a1
    rst $38                                       ; $4bf8: $ff
    ld c, a                                       ; $4bf9: $4f
    pop af                                        ; $4bfa: $f1
    rst $38                                       ; $4bfb: $ff
    ld sp, hl                                     ; $4bfc: $f9
    rrca                                          ; $4bfd: $0f
    sbc d                                         ; $4bfe: $9a
    ldh [$fe], a                                  ; $4bff: $e0 $fe
    pop hl                                        ; $4c01: $e1
    jr nz, jr_043_4c66                            ; $4c02: $20 $62

    ldh [$c8], a                                  ; $4c04: $e0 $c8
    ld d, h                                       ; $4c06: $54
    add e                                         ; $4c07: $83
    sbc d                                         ; $4c08: $9a
    add d                                         ; $4c09: $82
    cp h                                          ; $4c0a: $bc
    and $10                                       ; $4c0b: $e6 $10
    add b                                         ; $4c0d: $80
    rst $20                                       ; $4c0e: $e7
    add d                                         ; $4c0f: $82

jr_043_4c10:
    ldh [$ee], a                                  ; $4c10: $e0 $ee
    rst $38                                       ; $4c12: $ff
    dec b                                         ; $4c13: $05
    ld l, a                                       ; $4c14: $6f
    ld a, b                                       ; $4c15: $78
    call nz, $beff                                ; $4c16: $c4 $ff $be
    push hl                                       ; $4c19: $e5
    add h                                         ; $4c1a: $84
    ld [c], a                                     ; $4c1b: $e2
    cp h                                          ; $4c1c: $bc
    add sp, $08                                   ; $4c1d: $e8 $08
    add h                                         ; $4c1f: $84
    sub b                                         ; $4c20: $90
    ld h, d                                       ; $4c21: $62
    ld a, [$a070]                                 ; $4c22: $fa $70 $a0
    ld bc, $806c                                  ; $4c25: $01 $6c $80
    ld b, e                                       ; $4c28: $43
    cp $42                                        ; $4c29: $fe $42
    cp $42                                        ; $4c2b: $fe $42
    ld l, a                                       ; $4c2d: $6f
    rst $38                                       ; $4c2e: $ff
    add d                                         ; $4c2f: $82
    rst $38                                       ; $4c30: $ff
    add h                                         ; $4c31: $84
    ld h, [hl]                                    ; $4c32: $66
    pop hl                                        ; $4c33: $e1
    db $fd                                        ; $4c34: $fd
    call nz, $e0f8                                ; $4c35: $c4 $f8 $e0
    ld a, [bc]                                    ; $4c38: $0a
    cp $e3                                        ; $4c39: $fe $e3
    ld b, d                                       ; $4c3b: $42
    sub $a0                                       ; $4c3c: $d6 $a0
    ld b, c                                       ; $4c3e: $41
    ret z                                         ; $4c3f: $c8

    ld h, h                                       ; $4c40: $64
    jr nc, jr_043_4bee                            ; $4c41: $30 $ab

    add $e0                                       ; $4c43: $c6 $e0
    jr nc, @-$5c                                  ; $4c45: $30 $a2

    ret                                           ; $4c47: $c9


    ld [bc], a                                    ; $4c48: $02
    ret nz                                        ; $4c49: $c0

    ldh [$c8], a                                  ; $4c4a: $e0 $c8
    pop bc                                        ; $4c4c: $c1
    add b                                         ; $4c4d: $80
    or $c1                                        ; $4c4e: $f6 $c1
    ld [bc], a                                    ; $4c50: $02
    add b                                         ; $4c51: $80
    inc d                                         ; $4c52: $14
    rst $38                                       ; $4c53: $ff
    xor a                                         ; $4c54: $af
    inc c                                         ; $4c55: $0c
    cp $ef                                        ; $4c56: $fe $ef
    rst $38                                       ; $4c58: $ff
    sbc h                                         ; $4c59: $9c
    ld h, c                                       ; $4c5a: $61
    jr nz, @-$19                                  ; $4c5b: $20 $e5

    and b                                         ; $4c5d: $a0
    add b                                         ; $4c5e: $80
    rst $38                                       ; $4c5f: $ff
    rst $38                                       ; $4c60: $ff
    ld d, b                                       ; $4c61: $50
    rst $38                                       ; $4c62: $ff
    ld hl, $f888                                  ; $4c63: $21 $88 $f8

jr_043_4c66:
    ld e, a                                       ; $4c66: $5f
    ld hl, sp-$15                                 ; $4c67: $f8 $eb
    ld hl, sp-$10                                 ; $4c69: $f8 $f0
    jr nc, jr_043_4c10                            ; $4c6b: $30 $a3

    rst $20                                       ; $4c6d: $e7
    ld h, [hl]                                    ; $4c6e: $66
    and b                                         ; $4c6f: $a0
    rra                                           ; $4c70: $1f
    ld de, $5fff                                  ; $4c71: $11 $ff $5f
    inc d                                         ; $4c74: $14
    rra                                           ; $4c75: $1f
    ld a, [bc]                                    ; $4c76: $0a
    rst $20                                       ; $4c77: $e7
    rlca                                          ; $4c78: $07
    db $10                                        ; $4c79: $10
    ld h, [hl]                                    ; $4c7a: $66
    ld b, b                                       ; $4c7b: $40
    cp e                                          ; $4c7c: $bb
    and b                                         ; $4c7d: $a0
    rst $20                                       ; $4c7e: $e7
    add $ff                                       ; $4c7f: $c6 $ff
    ld b, e                                       ; $4c81: $43
    xor h                                         ; $4c82: $ac
    ret nz                                        ; $4c83: $c0

    ld a, h                                       ; $4c84: $7c
    ld [c], a                                     ; $4c85: $e2
    ei                                            ; $4c86: $fb
    ld c, $fb                                     ; $4c87: $0e $fb
    di                                            ; $4c89: $f3
    ld c, $ff                                     ; $4c8a: $0e $ff
    ld a, h                                       ; $4c8c: $7c
    add sp, -$30                                  ; $4c8d: $e8 $d0
    ldh [rNR11], a                                ; $4c8f: $e0 $11
    rra                                           ; $4c91: $1f
    inc d                                         ; $4c92: $14
    rst $28                                       ; $4c93: $ef
    ld d, e                                       ; $4c94: $53
    ld a, [bc]                                    ; $4c95: $0a
    cp a                                          ; $4c96: $bf
    adc $e0                                       ; $4c97: $ce $e0
    ret nc                                        ; $4c99: $d0

    db $e4                                        ; $4c9a: $e4
    ld b, b                                       ; $4c9b: $40
    ret nc                                        ; $4c9c: $d0

    ldh [$c3], a                                  ; $4c9d: $e0 $c3
    ret nc                                        ; $4c9f: $d0

    push hl                                       ; $4ca0: $e5
    rst $38                                       ; $4ca1: $ff
    di                                            ; $4ca2: $f3
    ld bc, $070e                                  ; $4ca3: $01 $0e $07
    ld a, b                                       ; $4ca6: $78
    rrca                                          ; $4ca7: $0f
    ld l, b                                       ; $4ca8: $68
    rrca                                          ; $4ca9: $0f
    cp a                                          ; $4caa: $bf
    ld c, b                                       ; $4cab: $48
    rrca                                          ; $4cac: $0f
    rrca                                          ; $4cad: $0f
    rrca                                          ; $4cae: $0f
    ld [$c20f], sp                                ; $4caf: $08 $0f $c2
    ld b, b                                       ; $4cb2: $40
    jp nz, Jump_000_3fff                          ; $4cb3: $c2 $ff $3f

    ld a, [$fe17]                                 ; $4cb6: $fa $17 $fe
    dec bc                                        ; $4cb9: $0b
    cp $17                                        ; $4cba: $fe $17
    db $fc                                        ; $4cbc: $fc
    rst $28                                       ; $4cbd: $ef
    rst $28                                       ; $4cbe: $ef
    ld hl, sp+$0f                                 ; $4cbf: $f8 $0f
    ld hl, sp-$4e                                 ; $4cc1: $f8 $b2
    ld b, b                                       ; $4cc3: $40
    adc a                                         ; $4cc4: $8f
    ldh a, [$bf]                                  ; $4cc5: $f0 $bf
    rst $38                                       ; $4cc7: $ff
    ret nc                                        ; $4cc8: $d0

    rst $38                                       ; $4cc9: $ff
    and b                                         ; $4cca: $a0
    rst $38                                       ; $4ccb: $ff
    ret nc                                        ; $4ccc: $d0

    ld a, a                                       ; $4ccd: $7f
    rst $28                                       ; $4cce: $ef
    ccf                                           ; $4ccf: $3f
    rst $28                                       ; $4cd0: $ef
    ldh [$3f], a                                  ; $4cd1: $e0 $3f
    rst $38                                       ; $4cd3: $ff

jr_043_4cd4:
    rst $38                                       ; $4cd4: $ff
    ldh [rLCDC], a                                ; $4cd5: $e0 $40
    ret nz                                        ; $4cd7: $c0

    ld a, $e0                                     ; $4cd8: $3e $e0
    rst $38                                       ; $4cda: $ff
    ld h, $e0                                     ; $4cdb: $26 $e0
    ld [hl+], a                                   ; $4cdd: $22
    ldh [$e0], a                                  ; $4cde: $e0 $e0
    ldh [rNR41], a                                ; $4ce0: $e0 $20
    ldh [$be], a                                  ; $4ce2: $e0 $be
    add d                                         ; $4ce4: $82
    ld b, b                                       ; $4ce5: $40
    ld bc, $030f                                  ; $4ce6: $01 $0f $03
    ld a, h                                       ; $4ce9: $7c
    rlca                                          ; $4cea: $07
    ret nz                                        ; $4ceb: $c0

    add sp, $04                                   ; $4cec: $e8 $04
    rst $18                                       ; $4cee: $df
    rst $38                                       ; $4cef: $ff
    call nz, $f23f                                ; $4cf0: $c4 $3f $f2
    cpl                                           ; $4cf3: $2f
    cp h                                          ; $4cf4: $bc
    ldh [rIE], a                                  ; $4cf5: $e0 $ff
    cp $fb                                        ; $4cf7: $fe $fb
    inc bc                                        ; $4cf9: $03
    cp $72                                        ; $4cfa: $fe $72
    ld b, b                                       ; $4cfc: $40
    ld b, c                                       ; $4cfd: $41
    rst $38                                       ; $4cfe: $ff
    ld c, a                                       ; $4cff: $4f
    ld hl, sp-$61                                 ; $4d00: $f8 $9f
    push hl                                       ; $4d02: $e5
    add sp, -$44                                  ; $4d03: $e8 $bc
    ldh [rIE], a                                  ; $4d05: $e0 $ff
    ld d, c                                       ; $4d07: $51
    ld h, b                                       ; $4d08: $60
    ret nz                                        ; $4d09: $c0

    ld [c], a                                     ; $4d0a: $e2
    add b                                         ; $4d0b: $80
    ld e, [hl]                                    ; $4d0c: $5e
    ret nz                                        ; $4d0d: $c0

    adc b                                         ; $4d0e: $88
    ret nz                                        ; $4d0f: $c0

    rst $20                                       ; $4d10: $e7
    jp hl                                         ; $4d11: $e9


    ld [c], a                                     ; $4d12: $e2
    cp $e8                                        ; $4d13: $fe $e8
    nop                                           ; $4d15: $00
    rst $38                                       ; $4d16: $ff
    db $ec                                        ; $4d17: $ec
    ld [c], a                                     ; $4d18: $e2
    push hl                                       ; $4d19: $e5
    ld l, b                                       ; $4d1a: $68
    add e                                         ; $4d1b: $83
    rst $20                                       ; $4d1c: $e7
    add sp, -$70                                  ; $4d1d: $e8 $90
    ld b, [hl]                                    ; $4d1f: $46
    ld a, b                                       ; $4d20: $78
    push bc                                       ; $4d21: $c5
    add sp, -$3b                                  ; $4d22: $e8 $c5
    rst $08                                       ; $4d24: $cf
    sbc $e0                                       ; $4d25: $de $e0
    sbc [hl]                                      ; $4d27: $9e
    add b                                         ; $4d28: $80
    add [hl]                                      ; $4d29: $86
    reti                                          ; $4d2a: $d9


    add b                                         ; $4d2b: $80
    ld hl, sp+$25                                 ; $4d2c: $f8 $25
    ld [$8245], sp                                ; $4d2e: $08 $45 $82
    add b                                         ; $4d31: $80
    jr z, jr_043_4cd4                             ; $4d32: $28 $a0

    add b                                         ; $4d34: $80
    ld hl, sp+$30                                 ; $4d35: $f8 $30
    sbc h                                         ; $4d37: $9c
    and $f8                                       ; $4d38: $e6 $f8
    inc h                                         ; $4d3a: $24
    call c, $1026                                 ; $4d3b: $dc $26 $10
    ld c, e                                       ; $4d3e: $4b
    rst $38                                       ; $4d3f: $ff
    rst $38                                       ; $4d40: $ff
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
    rst $38                                       ; $4d50: $ff
    rst $38                                       ; $4d51: $ff
    rst $38                                       ; $4d52: $ff
    ccf                                           ; $4d53: $3f
    nop                                           ; $4d54: $00
    rst $08                                       ; $4d55: $cf
    nop                                           ; $4d56: $00
    rst $30                                       ; $4d57: $f7
    nop                                           ; $4d58: $00
    rst $18                                       ; $4d59: $df
    inc sp                                        ; $4d5a: $33
    nop                                           ; $4d5b: $00
    ld de, $1900                                  ; $4d5c: $11 $00 $19
    cp $e0                                        ; $4d5f: $fe $e0
    rst $38                                       ; $4d61: $ff
    rst $38                                       ; $4d62: $ff
    ei                                            ; $4d63: $fb
    rst $38                                       ; $4d64: $ff
    nop                                           ; $4d65: $00
    cp $e9                                        ; $4d66: $fe $e9
    dec a                                         ; $4d68: $3d
    nop                                           ; $4d69: $00
    ei                                            ; $4d6a: $fb
    nop                                           ; $4d6b: $00
    rlca                                          ; $4d6c: $07
    cp e                                          ; $4d6d: $bb
    nop                                           ; $4d6e: $00
    or a                                          ; $4d6f: $b7
    cp $e0                                        ; $4d70: $fe $e0
    rst $28                                       ; $4d72: $ef
    nop                                           ; $4d73: $00
    rra                                           ; $4d74: $1f
    and $e9                                       ; $4d75: $e6 $e9
    rrca                                          ; $4d77: $0f
    rst $18                                       ; $4d78: $df
    ldh a, [$3f]                                  ; $4d79: $f0 $3f
    ret nz                                        ; $4d7b: $c0

    ld a, a                                       ; $4d7c: $7f
    add e                                         ; $4d7d: $83
    jp nc, $c0e7                                  ; $4d7e: $d2 $e7 $c0

    ccf                                           ; $4d81: $3f
    rst $18                                       ; $4d82: $df
    ldh a, [rIF]                                  ; $4d83: $f0 $0f
    ld hl, sp-$39                                 ; $4d85: $f8 $c7
    db $fc                                        ; $4d87: $fc
    jp nz, $fce7                                  ; $4d88: $c2 $e7 $fc

    nop                                           ; $4d8b: $00
    rst $28                                       ; $4d8c: $ef
    rst $30                                       ; $4d8d: $f7
    rlca                                          ; $4d8e: $07
    ld hl, sp+$1f                                 ; $4d8f: $f8 $1f
    or d                                          ; $4d91: $b2
    rst $20                                       ; $4d92: $e7
    ccf                                           ; $4d93: $3f
    nop                                           ; $4d94: $00
    rst $38                                       ; $4d95: $ff
    db $fc                                        ; $4d96: $fc
    sbc $e0                                       ; $4d97: $de $e0
    and d                                         ; $4d99: $a2
    and $03                                       ; $4d9a: $e6 $03
    db $fc                                        ; $4d9c: $fc
    rrca                                          ; $4d9d: $0f
    ldh a, [$1f]                                  ; $4d9e: $f0 $1f
    ldh [$fd], a                                  ; $4da0: $e0 $fd
    ccf                                           ; $4da2: $3f
    sub d                                         ; $4da3: $92
    and $f0                                       ; $4da4: $e6 $f0
    rrca                                          ; $4da6: $0f
    db $fc                                        ; $4da7: $fc
    inc bc                                        ; $4da8: $03
    cp $f1                                        ; $4da9: $fe $f1
    rst $38                                       ; $4dab: $ff
    rst $38                                       ; $4dac: $ff
    rst $38                                       ; $4dad: $ff
    ld bc, $03fe                                  ; $4dae: $01 $fe $03
    cp $03                                        ; $4db1: $fe $03
    db $fc                                        ; $4db3: $fc
    db $fd                                        ; $4db4: $fd
    rlca                                          ; $4db5: $07
    cp $e1                                        ; $4db6: $fe $e1
    cp $03                                        ; $4db8: $fe $03
    rst $38                                       ; $4dba: $ff
    ld bc, $fe13                                  ; $4dbb: $01 $13 $fe
    rst $38                                       ; $4dbe: $ff
    add hl, de                                    ; $4dbf: $19
    rst $38                                       ; $4dc0: $ff
    ccf                                           ; $4dc1: $3f
    rst $28                                       ; $4dc2: $ef
    ld a, a                                       ; $4dc3: $7f
    ret nz                                        ; $4dc4: $c0

    ld a, a                                       ; $4dc5: $7f
    cp $ff                                        ; $4dc6: $fe $ff
    ld a, a                                       ; $4dc8: $7f
    push hl                                       ; $4dc9: $e5
    rst $38                                       ; $4dca: $ff
    call nz, $a1ff                                ; $4dcb: $c4 $ff $a1
    db $e3                                        ; $4dce: $e3
    ld a, $ff                                     ; $4dcf: $3e $ff
    di                                            ; $4dd1: $f3
    ld a, $f3                                     ; $4dd2: $3e $f3
    ld e, [hl]                                    ; $4dd4: $5e
    db $fd                                        ; $4dd5: $fd
    inc c                                         ; $4dd6: $0c
    db $fd                                        ; $4dd7: $fd
    ld a, h                                       ; $4dd8: $7c
    cp a                                          ; $4dd9: $bf
    rst $38                                       ; $4dda: $ff
    and [hl]                                      ; $4ddb: $a6
    rst $38                                       ; $4ddc: $ff
    and l                                         ; $4ddd: $a5
    rst $38                                       ; $4dde: $ff
    ld c, l                                       ; $4ddf: $4d
    ld d, d                                       ; $4de0: $52
    db $eb                                        ; $4de1: $eb
    rst $38                                       ; $4de2: $ff

Call_043_4de3:
Jump_043_4de3:
    ld [hl], l                                    ; $4de3: $75
    jr c, jr_043_4e28                             ; $4de4: $38 $42

    db $e4                                        ; $4de6: $e4
    ld bc, $e3b8                                  ; $4de7: $01 $b8 $e3
    cp $03                                        ; $4dea: $fe $03
    ldh [$5a], a                                  ; $4dec: $e0 $5a
    ldh [rIE], a                                  ; $4dee: $e0 $ff
    adc b                                         ; $4df0: $88
    rst $38                                       ; $4df1: $ff
    add hl, bc                                    ; $4df2: $09
    rst $38                                       ; $4df3: $ff
    inc c                                         ; $4df4: $0c
    rst $38                                       ; $4df5: $ff
    ccf                                           ; $4df6: $3f
    di                                            ; $4df7: $f3
    db $fd                                        ; $4df8: $fd
    ccf                                           ; $4df9: $3f
    sub c                                         ; $4dfa: $91
    ldh [rTAC], a                                 ; $4dfb: $e0 $07
    db $fc                                        ; $4dfd: $fc
    db $e3                                        ; $4dfe: $e3
    cp $f1                                        ; $4dff: $fe $f1
    sbc a                                         ; $4e01: $9f
    rst $38                                       ; $4e02: $ff
    ld sp, hl                                     ; $4e03: $f9
    rra                                           ; $4e04: $1f
    db $fd                                        ; $4e05: $fd
    sub a                                         ; $4e06: $97
    rst $38                                       ; $4e07: $ff
    xor [hl]                                      ; $4e08: $ae
    rst $38                                       ; $4e09: $ff
    ld b, $fb                                     ; $4e0a: $06 $fb
    rst $38                                       ; $4e0c: $ff
    cp a                                          ; $4e0d: $bf
    ret nz                                        ; $4e0e: $c0

    db $ec                                        ; $4e0f: $ec
    nop                                           ; $4e10: $00
    ret                                           ; $4e11: $c9


    ld a, a                                       ; $4e12: $7f
    reti                                          ; $4e13: $d9


    ld a, a                                       ; $4e14: $7f
    rst $38                                       ; $4e15: $ff
    call c, $bf77                                 ; $4e16: $dc $77 $bf
    inc sp                                        ; $4e19: $33
    cp a                                          ; $4e1a: $bf
    ld a, $ff                                     ; $4e1b: $3e $ff
    ld h, l                                       ; $4e1d: $65
    cp $a0                                        ; $4e1e: $fe $a0
    ldh [$b2], a                                  ; $4e20: $e0 $b2
    ld hl, sp+$0f                                 ; $4e22: $f8 $0f
    ld hl, sp+$1f                                 ; $4e24: $f8 $1f
    db $fc                                        ; $4e26: $fc
    and a                                         ; $4e27: $a7

jr_043_4e28:
    rst $38                                       ; $4e28: $ff
    cp $83                                        ; $4e29: $fe $83
    cp $7f                                        ; $4e2b: $fe $7f
    cp $a7                                        ; $4e2d: $fe $a7
    rst $38                                       ; $4e2f: $ff
    inc hl                                        ; $4e30: $23
    rst $38                                       ; $4e31: $ff
    rst $38                                       ; $4e32: $ff
    add l                                         ; $4e33: $85
    ldh [$3f], a                                  ; $4e34: $e0 $3f
    pop bc                                        ; $4e36: $c1
    ld a, a                                       ; $4e37: $7f
    sub e                                         ; $4e38: $93
    cp $ff                                        ; $4e39: $fe $ff
    or e                                          ; $4e3b: $b3
    cp $b9                                        ; $4e3c: $fe $b9
    rst $28                                       ; $4e3e: $ef
    rst $38                                       ; $4e3f: $ff
    halt                                          ; $4e40: $76
    rst $38                                       ; $4e41: $ff
    ld h, b                                       ; $4e42: $60
    rst $38                                       ; $4e43: $ff
    rst $38                                       ; $4e44: $ff
    db $fd                                        ; $4e45: $fd
    rlca                                          ; $4e46: $07
    db $fc                                        ; $4e47: $fc
    jp $f1fe                                      ; $4e48: $c3 $fe $f1


    ccf                                           ; $4e4b: $3f
    ccf                                           ; $4e4c: $3f
    ldh a, [$1f]                                  ; $4e4d: $f0 $1f
    ldh a, [$3f]                                  ; $4e4f: $f0 $3f
    db $fc                                        ; $4e51: $fc
    ld e, a                                       ; $4e52: $5f
    ld c, d                                       ; $4e53: $4a
    ldh [rLCDC], a                                ; $4e54: $e0 $40
    ldh [$bf], a                                  ; $4e56: $e0 $bf
    ccf                                           ; $4e58: $3f
    ld [bc], a                                    ; $4e59: $02
    rst $08                                       ; $4e5a: $cf
    ld [bc], a                                    ; $4e5b: $02
    rst $30                                       ; $4e5c: $f7
    ld bc, $c6b0                                  ; $4e5d: $01 $b0 $c6
    sbc [hl]                                      ; $4e60: $9e
    rst $38                                       ; $4e61: $ff
    rst $38                                       ; $4e62: $ff
    ld b, b                                       ; $4e63: $40
    rst $38                                       ; $4e64: $ff
    ld b, c                                       ; $4e65: $41
    rst $38                                       ; $4e66: $ff
    ld b, h                                       ; $4e67: $44
    rst $38                                       ; $4e68: $ff
    db $e3                                        ; $4e69: $e3
    rst $38                                       ; $4e6a: $ff
    cp $23                                        ; $4e6b: $fe $23
    rst $38                                       ; $4e6d: $ff
    ld de, $18ff                                  ; $4e6e: $11 $ff $18
    rst $38                                       ; $4e71: $ff
    dec [hl]                                      ; $4e72: $35
    rst $38                                       ; $4e73: $ff
    rst $38                                       ; $4e74: $ff
    dec h                                         ; $4e75: $25
    rst $38                                       ; $4e76: $ff
    ld b, [hl]                                    ; $4e77: $46
    rst $38                                       ; $4e78: $ff
    add h                                         ; $4e79: $84
    rst $38                                       ; $4e7a: $ff
    ret z                                         ; $4e7b: $c8

    rst $38                                       ; $4e7c: $ff
    ld a, a                                       ; $4e7d: $7f
    ret z                                         ; $4e7e: $c8

    rst $38                                       ; $4e7f: $ff
    sub b                                         ; $4e80: $90
    rst $38                                       ; $4e81: $ff
    inc a                                         ; $4e82: $3c
    rst $00                                       ; $4e83: $c7
    ld a, h                                       ; $4e84: $7c
    rst $38                                       ; $4e85: $ff
    add d                                         ; $4e86: $82
    cp $d3                                        ; $4e87: $fe $d3
    cp $ab                                        ; $4e89: $fe $ab
    cp $d2                                        ; $4e8b: $fe $d2
    ld a, [hl]                                    ; $4e8d: $7e
    ccf                                           ; $4e8e: $3f
    and d                                         ; $4e8f: $a2
    ld a, $fc                                     ; $4e90: $3e $fc
    ld e, h                                       ; $4e92: $5c
    db $fc                                        ; $4e93: $fc
    ld b, h                                       ; $4e94: $44
    ret nz                                        ; $4e95: $c0

    ldh [rSVBK], a                                ; $4e96: $e0 $70
    pop bc                                        ; $4e98: $c1
    rst $30                                       ; $4e99: $f7
    ld bc, $0133                                  ; $4e9a: $01 $33 $01
    ld [hl], b                                    ; $4e9d: $70
    jp $f27f                                      ; $4e9e: $c3 $7f $f2


    rst $38                                       ; $4ea1: $ff
    jp nc, $ffff                                  ; $4ea2: $d2 $ff $ff

    ret z                                         ; $4ea5: $c8

    rst $38                                       ; $4ea6: $ff
    daa                                           ; $4ea7: $27
    rst $38                                       ; $4ea8: $ff
    jr nz, @+$01                                  ; $4ea9: $20 $ff

    and b                                         ; $4eab: $a0
    db $eb                                        ; $4eac: $eb
    rst $38                                       ; $4ead: $ff
    ld [hl], d                                    ; $4eae: $72
    cp [hl]                                       ; $4eaf: $be
    ldh [rHDMA2], a                               ; $4eb0: $e0 $52
    cp $e0                                        ; $4eb2: $fe $e0
    and [hl]                                      ; $4eb4: $a6
    rst $38                                       ; $4eb5: $ff
    ld a, [de]                                    ; $4eb6: $1a
    rst $28                                       ; $4eb7: $ef
    rst $38                                       ; $4eb8: $ff
    inc de                                        ; $4eb9: $13
    rst $38                                       ; $4eba: $ff
    and d                                         ; $4ebb: $a2
    xor d                                         ; $4ebc: $aa
    ldh [$e4], a                                  ; $4ebd: $e0 $e4
    rst $38                                       ; $4ebf: $ff
    add b                                         ; $4ec0: $80
    rst $38                                       ; $4ec1: $ff
    db $fc                                        ; $4ec2: $fc
    add b                                         ; $4ec3: $80
    di                                            ; $4ec4: $f3
    add b                                         ; $4ec5: $80
    rst $28                                       ; $4ec6: $ef
    add b                                         ; $4ec7: $80
    call z, $f700                                 ; $4ec8: $cc $00 $f7
    adc b                                         ; $4ecb: $88
    nop                                           ; $4ecc: $00
    sbc b                                         ; $4ecd: $98
    cp $e0                                        ; $4ece: $fe $e0
    rst $38                                       ; $4ed0: $ff
    ld [hl+], a                                   ; $4ed1: $22
    ld a, a                                       ; $4ed2: $7f
    ld b, c                                       ; $4ed3: $41
    rst $38                                       ; $4ed4: $ff
    rst $38                                       ; $4ed5: $ff
    ld c, e                                       ; $4ed6: $4b
    rst $38                                       ; $4ed7: $ff
    ld d, l                                       ; $4ed8: $55
    ld a, a                                       ; $4ed9: $7f
    ld c, d                                       ; $4eda: $4a
    ld a, l                                       ; $4edb: $7d
    ld b, h                                       ; $4edc: $44
    rst $38                                       ; $4edd: $ff
    ccf                                           ; $4ede: $3f
    ld a, [hl+]                                   ; $4edf: $2a
    ccf                                           ; $4ee0: $3f
    ld [hl+], a                                   ; $4ee1: $22
    rst $38                                       ; $4ee2: $ff
    xor h                                         ; $4ee3: $ac
    rst $38                                       ; $4ee4: $ff
    and h                                         ; $4ee5: $a4
    rst $28                                       ; $4ee6: $ef
    rst $38                                       ; $4ee7: $ff
    ld h, d                                       ; $4ee8: $62
    rst $38                                       ; $4ee9: $ff
    ld hl, $e0d0                                  ; $4eea: $21 $d0 $e0
    db $10                                        ; $4eed: $10
    rst $38                                       ; $4eee: $ff
    ld [$ffff], sp                                ; $4eef: $08 $ff $ff
    inc a                                         ; $4ef2: $3c
    rst $38                                       ; $4ef3: $ff
    ld a, c                                       ; $4ef4: $79
    rst $38                                       ; $4ef5: $ff
    ld [bc], a                                    ; $4ef6: $02
    rst $38                                       ; $4ef7: $ff
    add d                                         ; $4ef8: $82
    cp a                                          ; $4ef9: $bf
    rst $38                                       ; $4efa: $ff
    ld [hl+], a                                   ; $4efb: $22
    rst $38                                       ; $4efc: $ff
    rst $00                                       ; $4efd: $c7
    rst $38                                       ; $4efe: $ff
    inc b                                         ; $4eff: $04
    ldh a, [$e0]                                  ; $4f00: $f0 $e0

jr_043_4f02:
    jr jr_043_4f02                                ; $4f02: $18 $fe

    jr nz, @-$3a                                  ; $4f04: $20 $c4

    ld bc, $01b7                                  ; $4f06: $01 $b7 $01
    rst $28                                       ; $4f09: $ef
    ld bc, $021f                                  ; $4f0a: $01 $1f $02
    cp $e4                                        ; $4f0d: $fe $e4
    ldh [$34], a                                  ; $4f0f: $e0 $34
    rst $08                                       ; $4f11: $cf
    ld a, e                                       ; $4f12: $7b
    adc a                                         ; $4f13: $8f
    ld sp, hl                                     ; $4f14: $f9
    ld b, $ff                                     ; $4f15: $06 $ff
    db $fd                                        ; $4f17: $fd
    ld [de], a                                    ; $4f18: $12
    db $dd                                        ; $4f19: $dd
    ldh [$a1], a                                  ; $4f1a: $e0 $a1
    rst $38                                       ; $4f1c: $ff
    ret nz                                        ; $4f1d: $c0

    ld a, a                                       ; $4f1e: $7f

Call_043_4f1f:
    di                                            ; $4f1f: $f3
    ld e, a                                       ; $4f20: $5f
    rst $38                                       ; $4f21: $ff
    pop hl                                        ; $4f22: $e1
    cp a                                          ; $4f23: $bf
    db $e3                                        ; $4f24: $e3
    ld a, $c3                                     ; $4f25: $3e $c3
    cp $97                                        ; $4f27: $fe $97
    cp $bf                                        ; $4f29: $fe $bf
    adc a                                         ; $4f2b: $8f
    ld sp, hl                                     ; $4f2c: $f9
    ld l, a                                       ; $4f2d: $6f
    sbc b                                         ; $4f2e: $98
    rrca                                          ; $4f2f: $0f
    ld hl, sp+$5e                                 ; $4f30: $f8 $5e
    ldh [$c4], a                                  ; $4f32: $e0 $c4
    rst $38                                       ; $4f34: $ff
    ld hl, sp+$08                                 ; $4f35: $f8 $08
    db $fd                                        ; $4f37: $fd
    ld [$10fd], sp                                ; $4f38: $08 $fd $10
    rst $30                                       ; $4f3b: $f7
    ldh [$f5], a                                  ; $4f3c: $e0 $f5
    ld hl, sp-$20                                 ; $4f3e: $f8 $e0
    xor l                                         ; $4f40: $ad
    ld bc, $c0ae                                  ; $4f41: $01 $ae $c0
    ld [$1cff], sp                                ; $4f44: $08 $ff $1c
    rst $20                                       ; $4f47: $e7
    rst $38                                       ; $4f48: $ff
    ld a, $c7                                     ; $4f49: $3e $c7
    ld a, l                                       ; $4f4b: $7d
    add e                                         ; $4f4c: $83
    rst $38                                       ; $4f4d: $ff
    adc c                                         ; $4f4e: $89
    rst $38                                       ; $4f4f: $ff
    pop de                                        ; $4f50: $d1
    rst $30                                       ; $4f51: $f7
    ld a, a                                       ; $4f52: $7f
    ret nc                                        ; $4f53: $d0

    ld a, a                                       ; $4f54: $7f
    sbc h                                         ; $4f55: $9c
    pop hl                                        ; $4f56: $e1
    rst $30                                       ; $4f57: $f7
    inc a                                         ; $4f58: $3c
    di                                            ; $4f59: $f3
    ld e, [hl]                                    ; $4f5a: $5e
    rst $30                                       ; $4f5b: $f7
    pop hl                                        ; $4f5c: $e1
    rst $38                                       ; $4f5d: $ff
    ld c, b                                       ; $4f5e: $48
    ei                                            ; $4f5f: $fb
    ret nz                                        ; $4f60: $c0

    or l                                          ; $4f61: $b5
    rst $08                                       ; $4f62: $cf
    cp h                                          ; $4f63: $bc
    nop                                           ; $4f64: $00
    rst $18                                       ; $4f65: $df
    rst $18                                       ; $4f66: $df
    nop                                           ; $4f67: $00
    ldh [rP1], a                                  ; $4f68: $e0 $00
    db $ed                                        ; $4f6a: $ed
    cp $e0                                        ; $4f6b: $fe $e0
    rst $30                                       ; $4f6d: $f7
    add b                                         ; $4f6e: $80
    rst $38                                       ; $4f6f: $ff
    ld hl, sp-$40                                 ; $4f70: $f8 $c0
    rst $38                                       ; $4f72: $ff
    inc a                                         ; $4f73: $3c
    rst $08                                       ; $4f74: $cf
    ld a, [$fd87]                                 ; $4f75: $fa $87 $fd
    rst $38                                       ; $4f78: $ff
    rst $00                                       ; $4f79: $c7
    ld a, h                                       ; $4f7a: $7c
    jp $e97f                                      ; $4f7b: $c3 $7f $e9


    ld a, a                                       ; $4f7e: $7f
    pop af                                        ; $4f7f: $f1
    sbc a                                         ; $4f80: $9f
    cp $ba                                        ; $4f81: $fe $ba
    ret nz                                        ; $4f83: $c0

    rra                                           ; $4f84: $1f
    rst $38                                       ; $4f85: $ff
    inc l                                         ; $4f86: $2c
    di                                            ; $4f87: $f3
    sbc $f1                                       ; $4f88: $de $f1
    sbc a                                         ; $4f8a: $9f
    or l                                          ; $4f8b: $b5
    ld h, b                                       ; $4f8c: $60
    jp nc, Jump_043_45e0                          ; $4f8d: $d2 $e0 $45

    jp nc, $03e0                                  ; $4f90: $d2 $e0 $03

    cp $d0                                        ; $4f93: $fe $d0
    db $e4                                        ; $4f95: $e4
    add b                                         ; $4f96: $80
    rst $38                                       ; $4f97: $ff
    db $ed                                        ; $4f98: $ed
    add b                                         ; $4f99: $80
    rst $30                                       ; $4f9a: $f7
    ld b, b                                       ; $4f9b: $40
    ld hl, sp+$40                                 ; $4f9c: $f8 $40
    rst $38                                       ; $4f9e: $ff
    ld b, b                                       ; $4f9f: $40
    ld [$a870], a                                 ; $4fa0: $ea $70 $a8
    ld bc, $e090                                  ; $4fa3: $01 $90 $e0
    ld a, [hl-]                                   ; $4fa6: $3a
    ld a, [hl+]                                   ; $4fa7: $2a
    ldh [rNR23], a                                ; $4fa8: $e0 $18
    rst $28                                       ; $4faa: $ef
    inc a                                         ; $4fab: $3c
    rst $20                                       ; $4fac: $e7
    rst $08                                       ; $4fad: $cf
    ld a, d                                       ; $4fae: $7a
    add a                                         ; $4faf: $87
    ld c, [hl]                                    ; $4fb0: $4e
    db $e4                                        ; $4fb1: $e4
    ld a, [de]                                    ; $4fb2: $1a
    ldh [$38], a                                  ; $4fb3: $e0 $38
    rst $20                                       ; $4fb5: $e7
    ld a, h                                       ; $4fb6: $7c
    rst $38                                       ; $4fb7: $ff
    db $e3                                        ; $4fb8: $e3
    cp [hl]                                       ; $4fb9: $be
    pop bc                                        ; $4fba: $c1
    rst $38                                       ; $4fbb: $ff
    sub c                                         ; $4fbc: $91
    rst $38                                       ; $4fbd: $ff
    adc e                                         ; $4fbe: $8b
    cp $bb                                        ; $4fbf: $fe $bb
    ld l, e                                       ; $4fc1: $6b
    sbc [hl]                                      ; $4fc2: $9e
    ld [de], a                                    ; $4fc3: $12
    ldh [rDIV], a                                 ; $4fc4: $e0 $04
    rst $38                                       ; $4fc6: $ff
    rrca                                          ; $4fc7: $0f
    ld sp, $21e0                                  ; $4fc8: $31 $e0 $21
    sbc $0c                                       ; $4fcb: $de $0c
    ldh [rNR51], a                                ; $4fcd: $e0 $25
    rst $38                                       ; $4fcf: $ff
    ld [hl+], a                                   ; $4fd0: $22
    ret nz                                        ; $4fd1: $c0

    or l                                          ; $4fd2: $b5
    and b                                         ; $4fd3: $a0
    ret nz                                        ; $4fd4: $c0

    ld a, a                                       ; $4fd5: $7f
    cp a                                          ; $4fd6: $bf
    rst $38                                       ; $4fd7: $ff
    rst $38                                       ; $4fd8: $ff
    db $dd                                        ; $4fd9: $dd
    rst $30                                       ; $4fda: $f7
    rst $38                                       ; $4fdb: $ff
    rst $30                                       ; $4fdc: $f7
    ld h, [hl]                                    ; $4fdd: $66
    ret nz                                        ; $4fde: $c0

    ld b, b                                       ; $4fdf: $40
    rst $30                                       ; $4fe0: $f7
    rlca                                          ; $4fe1: $07
    db $fc                                        ; $4fe2: $fc
    dec b                                         ; $4fe3: $05
    cp $e0                                        ; $4fe4: $fe $e0
    db $fd                                        ; $4fe6: $fd
    db $fc                                        ; $4fe7: $fc
    db $dd                                        ; $4fe8: $dd
    ld [hl], h                                    ; $4fe9: $74
    db $eb                                        ; $4fea: $eb
    rst $38                                       ; $4feb: $ff
    db $f4                                        ; $4fec: $f4
    and $c0                                       ; $4fed: $e6 $c0
    ld bc, $c0de                                  ; $4fef: $01 $de $c0
    ld b, d                                       ; $4ff2: $42
    rst $38                                       ; $4ff3: $ff
    sub h                                         ; $4ff4: $94
    db $eb                                        ; $4ff5: $eb
    rst $38                                       ; $4ff6: $ff
    adc e                                         ; $4ff7: $8b
    call c, Call_043_44c0                         ; $4ff8: $dc $c0 $44
    or d                                          ; $4ffb: $b2
    and c                                         ; $4ffc: $a1
    ldh a, [$3f]                                  ; $4ffd: $f0 $3f
    ldh [rIE], a                                  ; $4fff: $e0 $ff
    ld a, a                                       ; $5001: $7f
    and b                                         ; $5002: $a0
    cp a                                          ; $5003: $bf
    and b                                         ; $5004: $a0
    ccf                                           ; $5005: $3f
    cp a                                          ; $5006: $bf
    ccf                                           ; $5007: $3f
    db $fd                                        ; $5008: $fd
    sbc a                                         ; $5009: $9f
    scf                                           ; $500a: $37
    rst $38                                       ; $500b: $ff
    scf                                           ; $500c: $37
    rst $38                                       ; $500d: $ff
    jr nz, jr_043_507b                            ; $500e: $20 $6b

    and b                                         ; $5010: $a0
    ld l, c                                       ; $5011: $69
    and b                                         ; $5012: $a0
    inc bc                                        ; $5013: $03
    rst $38                                       ; $5014: $ff
    cp $ff                                        ; $5015: $fe $ff
    cp $df                                        ; $5017: $fe $df
    halt                                          ; $5019: $76

jr_043_501a:
    rst $38                                       ; $501a: $ff
    or $ff                                        ; $501b: $f6 $ff
    rst $28                                       ; $501d: $ef
    ld [bc], a                                    ; $501e: $02
    db $e3                                        ; $501f: $e3
    ld a, [hl]                                    ; $5020: $7e
    pop bc                                        ; $5021: $c1
    ld b, h                                       ; $5022: $44
    ldh [$d1], a                                  ; $5023: $e0 $d1
    rst $38                                       ; $5025: $ff
    db $e3                                        ; $5026: $e3
    rst $00                                       ; $5027: $c7
    ld a, $ff                                     ; $5028: $3e $ff
    inc e                                         ; $502a: $1c
    add $81                                       ; $502b: $c6 $81
    adc e                                         ; $502d: $8b
    and d                                         ; $502e: $a2
    ld [c], a                                     ; $502f: $e2
    ldh [$bb], a                                  ; $5030: $e0 $bb
    rst $28                                       ; $5032: $ef
    db $eb                                        ; $5033: $eb
    rst $38                                       ; $5034: $ff
    rst $28                                       ; $5035: $ef
    sub [hl]                                      ; $5036: $96

jr_043_5037:
    ret nz                                        ; $5037: $c0

    ld [bc], a                                    ; $5038: $02
    ld [bc], a                                    ; $5039: $02
    ret nz                                        ; $503a: $c0

    jr nz, @+$01                                  ; $503b: $20 $ff

    ld [hl], b                                    ; $503d: $70
    rst $38                                       ; $503e: $ff
    adc a                                         ; $503f: $8f
    ld hl, sp-$79                                 ; $5040: $f8 $87
    db $fc                                        ; $5042: $fc
    ld d, a                                       ; $5043: $57
    db $fc                                        ; $5044: $fc
    and a                                         ; $5045: $a7
    db $fc                                        ; $5046: $fc
    ei                                            ; $5047: $fb
    rst $00                                       ; $5048: $c7
    ld a, h                                       ; $5049: $7c
    or $a0                                        ; $504a: $f6 $a0
    adc d                                         ; $504c: $8a
    rst $38                                       ; $504d: $ff
    add [hl]                                      ; $504e: $86
    rst $38                                       ; $504f: $ff
    add e                                         ; $5050: $83
    cp d                                          ; $5051: $ba
    db $fc                                        ; $5052: $fc
    and b                                         ; $5053: $a0
    ld a, h                                       ; $5054: $7c
    sub [hl]                                      ; $5055: $96
    add d                                         ; $5056: $82
    inc a                                         ; $5057: $3c
    jp $c07e                                      ; $5058: $c3 $7e $c0


    pop hl                                        ; $505b: $e1
    pop bc                                        ; $505c: $c1
    ld d, l                                       ; $505d: $55
    ld a, a                                       ; $505e: $7f
    cp [hl]                                       ; $505f: $be
    db $e4                                        ; $5060: $e4
    inc e                                         ; $5061: $1c

jr_043_5062:
    ld [hl], b                                    ; $5062: $70
    adc d                                         ; $5063: $8a

jr_043_5064:
    ld bc, $a2c2                                  ; $5064: $01 $c2 $a2
    ld b, c                                       ; $5067: $41
    ld c, [hl]                                    ; $5068: $4e
    ret nz                                        ; $5069: $c0

    ld e, d                                       ; $506a: $5a
    cp $e3                                        ; $506b: $fe $e3
    inc b                                         ; $506d: $04
    ld h, d                                       ; $506e: $62
    add b                                         ; $506f: $80
    ldh [$1f], a                                  ; $5070: $e0 $1f
    ld [hl], $c1                                  ; $5072: $36 $c1
    inc c                                         ; $5074: $0c
    jr nc, jr_043_5037                            ; $5075: $30 $c0

    db $fd                                        ; $5077: $fd
    jr nz, jr_043_5064                            ; $5078: $20 $ea

    and b                                         ; $507a: $a0

jr_043_507b:
    add b                                         ; $507b: $80
    db $fc                                        ; $507c: $fc
    ld b, b                                       ; $507d: $40
    di                                            ; $507e: $f3
    ld b, b                                       ; $507f: $40

jr_043_5080:
    rst $28                                       ; $5080: $ef
    rst $38                                       ; $5081: $ff
    ld b, b                                       ; $5082: $40
    call z, $e840                                 ; $5083: $cc $40 $e8
    jr nz, jr_043_5080                            ; $5086: $20 $f8

    jr nz, jr_043_5062                            ; $5088: $20 $d8

    ld de, $9870                                  ; $508a: $11 $70 $98
    add c                                         ; $508d: $81
    jr nc, jr_043_501a                            ; $508e: $30 $8a

    call c, Call_000_23e1                         ; $5090: $dc $e1 $23
    nop                                           ; $5093: $00
    ret nz                                        ; $5094: $c0

    cp d                                          ; $5095: $ba
    pop hl                                        ; $5096: $e1
    cp b                                          ; $5097: $b8
    pop hl                                        ; $5098: $e1
    ld l, $1c                                     ; $5099: $2e $1c
    pop bc                                        ; $509b: $c1
    ld h, d                                       ; $509c: $62
    rst $38                                       ; $509d: $ff
    jp nz, $e01a                                  ; $509e: $c2 $1a $e0

    ld b, d                                       ; $50a1: $42
    and [hl]                                      ; $50a2: $a6
    ld [c], a                                     ; $50a3: $e2
    ld a, [c]                                     ; $50a4: $f2
    and c                                         ; $50a5: $a1
    db $f4                                        ; $50a6: $f4
    ld a, [c]                                     ; $50a7: $f2
    pop hl                                        ; $50a8: $e1
    sbc d                                         ; $50a9: $9a
    pop hl                                        ; $50aa: $e1
    ld hl, $a0d8                                  ; $50ab: $21 $d8 $a0
    jr c, @-$02                                   ; $50ae: $38 $fc

    nop                                           ; $50b0: $00
    di                                            ; $50b1: $f3
    ld d, b                                       ; $50b2: $50
    inc d                                         ; $50b3: $14
    add b                                         ; $50b4: $80
    or b                                          ; $50b5: $b0
    and [hl]                                      ; $50b6: $a6
    adc h                                         ; $50b7: $8c
    ret nz                                        ; $50b8: $c0

    ld d, b                                       ; $50b9: $50
    and b                                         ; $50ba: $a0
    ld b, e                                       ; $50bb: $43
    ret nc                                        ; $50bc: $d0

    ld [c], a                                     ; $50bd: $e2
    add d                                         ; $50be: $82
    ld c, b                                       ; $50bf: $48
    and b                                         ; $50c0: $a0
    push hl                                       ; $50c1: $e5
    inc b                                         ; $50c2: $04
    ret z                                         ; $50c3: $c8

    and b                                         ; $50c4: $a0
    call nz, $a040                                ; $50c5: $c4 $40 $a0
    cp $e3                                        ; $50c8: $fe $e3
    ld b, d                                       ; $50ca: $42
    ccf                                           ; $50cb: $3f
    ld [bc], a                                    ; $50cc: $02
    rst $38                                       ; $50cd: $ff
    ei                                            ; $50ce: $fb
    inc bc                                        ; $50cf: $03
    inc b                                         ; $50d0: $04
    rlca                                          ; $50d1: $07
    cp b                                          ; $50d2: $b8
    rrca                                          ; $50d3: $0f
    cp b                                          ; $50d4: $b8
    rrca                                          ; $50d5: $0f
    rst $28                                       ; $50d6: $ef
    rst $28                                       ; $50d7: $ef
    rrca                                          ; $50d8: $0f
    jr @+$11                                      ; $50d9: $18 $0f

    jp nz, Jump_000_0460                          ; $50db: $c2 $60 $04

    rst $38                                       ; $50de: $ff
    jp nz, Jump_000_3f9f                          ; $50df: $c2 $9f $3f

    ld a, [c]                                     ; $50e2: $f2
    cpl                                           ; $50e3: $2f
    ld a, [$de17]                                 ; $50e4: $fa $17 $de
    ret nz                                        ; $50e7: $c0

    jp c, $ffc0                                   ; $50e8: $da $c0 $ff

    cp $02                                        ; $50eb: $fe $02
    ret nz                                        ; $50ed: $c0

    rra                                           ; $50ee: $1f
    db $f4                                        ; $50ef: $f4
    rra                                           ; $50f0: $1f
    ld hl, sp+$0f                                 ; $50f1: $f8 $0f
    db $fc                                        ; $50f3: $fc
    rlca                                          ; $50f4: $07
    db $db                                        ; $50f5: $db
    rst $38                                       ; $50f6: $ff
    inc bc                                        ; $50f7: $03
    and [hl]                                      ; $50f8: $a6
    ld h, b                                       ; $50f9: $60
    rst $38                                       ; $50fa: $ff
    cp h                                          ; $50fb: $bc
    push de                                       ; $50fc: $d5
    add b                                         ; $50fd: $80
    db $10                                        ; $50fe: $10
    ldh a, [$bf]                                  ; $50ff: $f0 $bf
    dec e                                         ; $5101: $1d
    ldh a, [$2d]                                  ; $5102: $f0 $2d
    ldh [$f7], a                                  ; $5104: $e0 $f7
    ret nz                                        ; $5106: $c0

    ret nz                                        ; $5107: $c0

    and b                                         ; $5108: $a0
    rst $38                                       ; $5109: $ff
    db $eb                                        ; $510a: $eb
    dec a                                         ; $510b: $3d
    ld bc, $eec0                                  ; $510c: $01 $c0 $ee
    call nz, $eac0                                ; $510f: $c4 $c0 $ea

jr_043_5112:
    ld b, c                                       ; $5112: $41
    rst $38                                       ; $5113: $ff
    ld b, a                                       ; $5114: $47
    ld e, a                                       ; $5115: $5f
    ld hl, sp-$61                                 ; $5116: $f8 $9f
    add sp, -$41                                  ; $5118: $e8 $bf
    ret nc                                        ; $511a: $d0

    ld h, a                                       ; $511b: $67
    ld h, b                                       ; $511c: $60
    add b                                         ; $511d: $80
    ld h, e                                       ; $511e: $63
    ld h, b                                       ; $511f: $60
    cp [hl]                                       ; $5120: $be
    ret nz                                        ; $5121: $c0

    and b                                         ; $5122: $a0
    add b                                         ; $5123: $80
    ld h, b                                       ; $5124: $60
    ret nz                                        ; $5125: $c0

    dec l                                         ; $5126: $2d
    ldh [$c0], a                                  ; $5127: $e0 $c0
    ldh [$e0], a                                  ; $5129: $e0 $e0
    xor e                                         ; $512b: $ab
    jr c, @-$1e                                   ; $512c: $38 $e0

    ld d, d                                       ; $512e: $52
    ld h, b                                       ; $512f: $60
    jr nz, jr_043_5112                            ; $5130: $20 $e0

    db $ec                                        ; $5132: $ec
    add b                                         ; $5133: $80
    ldh [$ec], a                                  ; $5134: $e0 $ec
    ld b, c                                       ; $5136: $41
    inc hl                                        ; $5137: $23
    rst $38                                       ; $5138: $ff
    ld c, a                                       ; $5139: $4f
    ret nz                                        ; $513a: $c0

    jp hl                                         ; $513b: $e9


    cp c                                          ; $513c: $b9
    ld [c], a                                     ; $513d: $e2
    cp $e8                                        ; $513e: $fe $e8
    nop                                           ; $5140: $00
    rst $38                                       ; $5141: $ff
    db $ec                                        ; $5142: $ec
    ld [c], a                                     ; $5143: $e2
    rst $20                                       ; $5144: $e7
    ld hl, sp-$58                                 ; $5145: $f8 $a8
    add e                                         ; $5147: $83
    ld b, b                                       ; $5148: $40
    ld l, c                                       ; $5149: $69
    ret c                                         ; $514a: $d8

    ld b, c                                       ; $514b: $41
    call z, $8880                                 ; $514c: $cc $80 $88
    add b                                         ; $514f: $80
    sbc b                                         ; $5150: $98
    call nz, $e0fe                                ; $5151: $c4 $fe $e0
    sbc b                                         ; $5154: $98
    pop hl                                        ; $5155: $e1
    ldh [rOCPS], a                                ; $5156: $e0 $6a
    and b                                         ; $5158: $a0
    ret z                                         ; $5159: $c8

    ld b, l                                       ; $515a: $45
    ret c                                         ; $515b: $d8

    ld b, l                                       ; $515c: $45
    inc sp                                        ; $515d: $33
    ld bc, $13f7                                  ; $515e: $01 $f7 $13
    ld bc, $fe1b                                  ; $5161: $01 $1b $fe
    ldh [$3f], a                                  ; $5164: $e0 $3f
    ld bc, $01fb                                  ; $5166: $01 $fb $01
    add hl, de                                    ; $5169: $19
    rlca                                          ; $516a: $07
    xor d                                         ; $516b: $aa
    add b                                         ; $516c: $80
    ld c, b                                       ; $516d: $48
    and b                                         ; $516e: $a0
    add b                                         ; $516f: $80
    ld hl, sp-$72                                 ; $5170: $f8 $8e
    add sp, -$48                                  ; $5172: $e8 $b8
    ld c, l                                       ; $5174: $4d
    ldh a, [$88]                                  ; $5175: $f0 $88
    ld bc, $f000                                  ; $5177: $01 $00 $f0
    pop bc                                        ; $517a: $c1
    nop                                           ; $517b: $00
    nop                                           ; $517c: $00
    nop                                           ; $517d: $00
    nop                                           ; $517e: $00
    nop                                           ; $517f: $00
    rst $38                                       ; $5180: $ff
    rst $38                                       ; $5181: $ff
    rst $38                                       ; $5182: $ff
    rst $38                                       ; $5183: $ff
    nop                                           ; $5184: $00
    rst $38                                       ; $5185: $ff
    nop                                           ; $5186: $00
    inc b                                         ; $5187: $04
    nop                                           ; $5188: $00
    scf                                           ; $5189: $37
    di                                            ; $518a: $f3
    nop                                           ; $518b: $00
    ld b, $fa                                     ; $518c: $06 $fa
    ldh [$64], a                                  ; $518e: $e0 $64
    nop                                           ; $5190: $00
    ldh a, [$e3]                                  ; $5191: $f0 $e3
    db $fc                                        ; $5193: $fc
    add sp, -$02                                  ; $5194: $e8 $fe
    ldh [$e2], a                                  ; $5196: $e0 $e2
    ld hl, sp+$00                                 ; $5198: $f8 $00
    push hl                                       ; $519a: $e5
    nop                                           ; $519b: $00
    call z, $ac00                                 ; $519c: $cc $00 $ac
    xor e                                         ; $519f: $ab
    nop                                           ; $51a0: $00
    cp b                                          ; $51a1: $b8
    ldh [$e1], a                                  ; $51a2: $e0 $e1
    add b                                         ; $51a4: $80
    cp $e9                                        ; $51a5: $fe $e9
    nop                                           ; $51a7: $00
    rst $38                                       ; $51a8: $ff
    db $ec                                        ; $51a9: $ec
    ld [hl], h                                    ; $51aa: $74
    cpl                                           ; $51ab: $2f
    nop                                           ; $51ac: $00
    db $f4                                        ; $51ad: $f4
    nop                                           ; $51ae: $00
    db $e4                                        ; $51af: $e4
    db $eb                                        ; $51b0: $eb
    ldh [rDIV], a                                 ; $51b1: $e0 $04
    cp d                                          ; $51b3: $ba
    db $eb                                        ; $51b4: $eb
    xor h                                         ; $51b5: $ac
    db $e3                                        ; $51b6: $e3
    rst $30                                       ; $51b7: $f7
    ld [bc], a                                    ; $51b8: $02
    ei                                            ; $51b9: $fb
    inc bc                                        ; $51ba: $03
    and d                                         ; $51bb: $a2
    db $eb                                        ; $51bc: $eb
    inc b                                         ; $51bd: $04
    nop                                           ; $51be: $00
    add e                                         ; $51bf: $83
    nop                                           ; $51c0: $00
    sbc a                                         ; $51c1: $9f
    add a                                         ; $51c2: $87
    nop                                           ; $51c3: $00
    rst $00                                       ; $51c4: $c7
    nop                                           ; $51c5: $00
    db $e3                                        ; $51c6: $e3
    sbc [hl]                                      ; $51c7: $9e
    ldh [$d2], a                                  ; $51c8: $e0 $d2
    rst $28                                       ; $51ca: $ef
    rst $38                                       ; $51cb: $ff
    rst $10                                       ; $51cc: $d7
    inc bc                                        ; $51cd: $03
    ei                                            ; $51ce: $fb
    ld b, e                                       ; $51cf: $43
    ld [hl], d                                    ; $51d0: $72
    db $eb                                        ; $51d1: $eb
    add h                                         ; $51d2: $84
    add h                                         ; $51d3: $84
    ld [$80ff], a                                 ; $51d4: $ea $ff $80
    ei                                            ; $51d7: $fb
    ld hl, sp-$80                                 ; $51d8: $f8 $80
    ld d, d                                       ; $51da: $52
    and $06                                       ; $51db: $e6 $06
    db $fd                                        ; $51dd: $fd
    rlca                                          ; $51de: $07
    cp $03                                        ; $51df: $fe $03
    rst $38                                       ; $51e1: $ff
    rst $38                                       ; $51e2: $ff
    ld bc, $43e6                                  ; $51e3: $01 $e6 $43
    xor $63                                       ; $51e6: $ee $63
    sbc $73                                       ; $51e8: $de $73
    rst $38                                       ; $51ea: $ff
    xor h                                         ; $51eb: $ac
    ccf                                           ; $51ec: $3f
    and b                                         ; $51ed: $a0
    ccf                                           ; $51ee: $3f
    ret nz                                        ; $51ef: $c0

    rst $38                                       ; $51f0: $ff
    inc bc                                        ; $51f1: $03
    rst $38                                       ; $51f2: $ff
    rst $38                                       ; $51f3: $ff
    daa                                           ; $51f4: $27
    db $fc                                        ; $51f5: $fc
    di                                            ; $51f6: $f3
    add b                                         ; $51f7: $80
    add [hl]                                      ; $51f8: $86
    add b                                         ; $51f9: $80
    add a                                         ; $51fa: $87
    add e                                         ; $51fb: $83
    rst $38                                       ; $51fc: $ff
    ld h, [hl]                                    ; $51fd: $66
    and $1a                                       ; $51fe: $e6 $1a
    cp $04                                        ; $5200: $fe $04
    db $fc                                        ; $5202: $fc
    add d                                         ; $5203: $82
    cp $6b                                        ; $5204: $fe $6b
    pop af                                        ; $5206: $f1
    ld a, a                                       ; $5207: $7f
    ld [hl+], a                                   ; $5208: $22
    db $ec                                        ; $5209: $ec
    ldh a, [$c2]                                  ; $520a: $f0 $c2
    push hl                                       ; $520c: $e5
    rst $38                                       ; $520d: $ff
    rlca                                          ; $520e: $07
    pop de                                        ; $520f: $d1
    ldh [rIE], a                                  ; $5210: $e0 $ff
    ld bc, $0bff                                  ; $5212: $01 $ff $0b
    rst $20                                       ; $5215: $e7
    ld h, e                                       ; $5216: $63
    rst $38                                       ; $5217: $ff
    ld [hl], e                                    ; $5218: $73
    cp a                                          ; $5219: $bf
    rst $30                                       ; $521a: $f7
    ccf                                           ; $521b: $3f
    cp a                                          ; $521c: $bf
    ccf                                           ; $521d: $3f
    add sp, -$40                                  ; $521e: $e8 $c0
    rst $38                                       ; $5220: $ff
    rst $38                                       ; $5221: $ff
    pop hl                                        ; $5222: $e1
    rst $38                                       ; $5223: $ff
    ei                                            ; $5224: $fb
    pop bc                                        ; $5225: $c1
    di                                            ; $5226: $f3
    jp nz, $e6e0                                  ; $5227: $c2 $e0 $e6

    and $fe                                       ; $522a: $e6 $fe
    cp $fc                                        ; $522c: $fe $fc
    sbc a                                         ; $522e: $9f
    db $fc                                        ; $522f: $fc
    cp $fe                                        ; $5230: $fe $fe
    rst $38                                       ; $5232: $ff
    rrca                                          ; $5233: $0f
    jp c, $c2e0                                   ; $5234: $da $e0 $c2

    db $eb                                        ; $5237: $eb
    ldh [rIE], a                                  ; $5238: $e0 $ff
    push hl                                       ; $523a: $e5
    add b                                         ; $523b: $80
    call z, $ac80                                 ; $523c: $cc $80 $ac
    add b                                         ; $523f: $80
    cp b                                          ; $5240: $b8
    add b                                         ; $5241: $80
    rst $38                                       ; $5242: $ff
    add e                                         ; $5243: $83
    add b                                         ; $5244: $80
    add a                                         ; $5245: $87
    add b                                         ; $5246: $80
    rst $00                                       ; $5247: $c7
    add b                                         ; $5248: $80
    db $e3                                        ; $5249: $e3
    add b                                         ; $524a: $80
    ld hl, sp-$48                                 ; $524b: $f8 $b8
    push bc                                       ; $524d: $c5
    ld hl, sp-$3b                                 ; $524e: $f8 $c5
    ld a, [$09ce]                                 ; $5250: $fa $ce $09
    cp $07                                        ; $5253: $fe $07
    db $fd                                        ; $5255: $fd
    rlca                                          ; $5256: $07
    rst $38                                       ; $5257: $ff
    rlca                                          ; $5258: $07
    ld [bc], a                                    ; $5259: $02
    rst $30                                       ; $525a: $f7
    dec b                                         ; $525b: $05
    rlca                                          ; $525c: $07
    dec b                                         ; $525d: $05
    rrca                                          ; $525e: $0f
    add hl, bc                                    ; $525f: $09
    rst $38                                       ; $5260: $ff
    ld a, a                                       ; $5261: $7f
    ld de, $fc27                                  ; $5262: $11 $27 $fc
    or e                                          ; $5265: $b3
    cp $ff                                        ; $5266: $fe $ff
    ld l, h                                       ; $5268: $6c
    rst $38                                       ; $5269: $ff
    rst $38                                       ; $526a: $ff
    db $fd                                        ; $526b: $fd
    rst $38                                       ; $526c: $ff
    ld b, d                                       ; $526d: $42
    rst $38                                       ; $526e: $ff
    jp c, Jump_043_45ff                           ; $526f: $da $ff $45

    rst $38                                       ; $5272: $ff
    rst $38                                       ; $5273: $ff
    ld a, b                                       ; $5274: $78
    ldh a, [$1f]                                  ; $5275: $f0 $1f
    pop af                                        ; $5277: $f1
    rra                                           ; $5278: $1f
    ld a, [$ff8f]                                 ; $5279: $fa $8f $ff
    db $fc                                        ; $527c: $fc
    rst $38                                       ; $527d: $ff
    db $fc                                        ; $527e: $fc
    rlca                                          ; $527f: $07
    rst $38                                       ; $5280: $ff
    rst $20                                       ; $5281: $e7
    rst $38                                       ; $5282: $ff
    ld a, [bc]                                    ; $5283: $0a
    rst $38                                       ; $5284: $ff
    rst $38                                       ; $5285: $ff
    ldh a, [$3f]                                  ; $5286: $f0 $3f
    ldh [rIE], a                                  ; $5288: $e0 $ff
    ret nz                                        ; $528a: $c0

    ld a, a                                       ; $528b: $7f
    ret nz                                        ; $528c: $c0

    rst $38                                       ; $528d: $ff
    jr c, @-$1e                                   ; $528e: $38 $e0

    dec h                                         ; $5290: $25
    ldh [$2c], a                                  ; $5291: $e0 $2c
    ldh [$fc], a                                  ; $5293: $e0 $fc
    ret nc                                        ; $5295: $d0

    rst $28                                       ; $5296: $ef
    ld hl, sp-$78                                 ; $5297: $f8 $88
    rst $38                                       ; $5299: $ff
    dec b                                         ; $529a: $05
    ld [$0de0], a                                 ; $529b: $ea $e0 $0d
    rrca                                          ; $529e: $0f
    dec bc                                        ; $529f: $0b
    rst $38                                       ; $52a0: $ff
    rst $38                                       ; $52a1: $ff
    dec de                                        ; $52a2: $1b
    rra                                           ; $52a3: $1f
    rla                                           ; $52a4: $17
    ccf                                           ; $52a5: $3f
    scf                                           ; $52a6: $37
    ld a, a                                       ; $52a7: $7f
    daa                                           ; $52a8: $27
    rst $38                                       ; $52a9: $ff
    rst $38                                       ; $52aa: $ff
    jp nz, $c0ff                                  ; $52ab: $c2 $ff $c0

    rst $38                                       ; $52ae: $ff
    sbc [hl]                                      ; $52af: $9e
    rst $38                                       ; $52b0: $ff
    cp [hl]                                       ; $52b1: $be
    cp [hl]                                       ; $52b2: $be
    cp $e0                                        ; $52b3: $fe $e0
    cp h                                          ; $52b5: $bc
    rst $38                                       ; $52b6: $ff
    sbc c                                         ; $52b7: $99
    rst $38                                       ; $52b8: $ff
    add e                                         ; $52b9: $83
    jr c, @-$1e                                   ; $52ba: $38 $e0

    rlca                                          ; $52bc: $07
    rst $38                                       ; $52bd: $ff
    rst $38                                       ; $52be: $ff
    di                                            ; $52bf: $f3
    rst $38                                       ; $52c0: $ff
    ld a, [$fbff]                                 ; $52c1: $fa $ff $fb
    rst $38                                       ; $52c4: $ff
    ld a, e                                       ; $52c5: $7b
    db $eb                                        ; $52c6: $eb
    rst $38                                       ; $52c7: $ff
    inc sp                                        ; $52c8: $33
    ldh a, [$e0]                                  ; $52c9: $f0 $e0
    ret nz                                        ; $52cb: $c0

    ldh [$e0], a                                  ; $52cc: $e0 $e0
    ld b, b                                       ; $52ce: $40
    ld hl, sp-$60                                 ; $52cf: $f8 $a0
    rst $38                                       ; $52d1: $ff
    push hl                                       ; $52d2: $e5
    ld h, b                                       ; $52d3: $60
    db $fc                                        ; $52d4: $fc

jr_043_52d5:
    sub b                                         ; $52d5: $90
    db $fc                                        ; $52d6: $fc
    jr z, jr_043_52d5                             ; $52d7: $28 $fc

    call z, Call_000_22fc                         ; $52d9: $cc $fc $22
    jp $c730                                      ; $52dc: $c3 $30 $c7


    ld a, a                                       ; $52df: $7f
    ld hl, $43ff                                  ; $52e0: $21 $ff $43
    cp $46                                        ; $52e3: $fe $46
    rst $38                                       ; $52e5: $ff
    ld a, a                                       ; $52e6: $7f
    ld b, c                                       ; $52e7: $41
    ccf                                           ; $52e8: $3f
    jr nz, @+$01                                  ; $52e9: $20 $ff

    db $10                                        ; $52eb: $10
    rst $38                                       ; $52ec: $ff
    ld [$fafa], sp                                ; $52ed: $08 $fa $fa
    ret nz                                        ; $52f0: $c0

    ld c, b                                       ; $52f1: $48
    ld a, d                                       ; $52f2: $7a
    ldh [$c7], a                                  ; $52f3: $e0 $c7
    db $fc                                        ; $52f5: $fc
    daa                                           ; $52f6: $27
    db $fc                                        ; $52f7: $fc
    and a                                         ; $52f8: $a7
    cp a                                          ; $52f9: $bf
    db $fc                                        ; $52fa: $fc
    ld [hl], a                                    ; $52fb: $77
    sbc a                                         ; $52fc: $9f
    ei                                            ; $52fd: $fb
    rrca                                          ; $52fe: $0f
    db $fc                                        ; $52ff: $fc
    ld [de], a                                    ; $5300: $12
    ret nz                                        ; $5301: $c0

    dec b                                         ; $5302: $05
    cp $e2                                        ; $5303: $fe $e2
    ret nz                                        ; $5305: $c0

    adc c                                         ; $5306: $89
    rst $38                                       ; $5307: $ff
    adc d                                         ; $5308: $8a
    rst $38                                       ; $5309: $ff
    sbc [hl]                                      ; $530a: $9e
    di                                            ; $530b: $f3
    cp [hl]                                       ; $530c: $be
    rst $38                                       ; $530d: $ff
    pop hl                                        ; $530e: $e1
    ld a, a                                       ; $530f: $7f
    rst $38                                       ; $5310: $ff
    add h                                         ; $5311: $84
    rst $38                                       ; $5312: $ff
    inc b                                         ; $5313: $04
    rst $38                                       ; $5314: $ff
    call nz, $ffef                                ; $5315: $c4 $ef $ff
    inc b                                         ; $5318: $04
    ld hl, sp+$08                                 ; $5319: $f8 $08
    ret nc                                        ; $531b: $d0

    ldh [rNR41], a                                ; $531c: $e0 $20
    rst $38                                       ; $531e: $ff
    ret nz                                        ; $531f: $c0

    rst $38                                       ; $5320: $ff
    ld a, l                                       ; $5321: $7d
    ld l, l                                       ; $5322: $6d
    cp $46                                        ; $5323: $fe $46
    rst $38                                       ; $5325: $ff
    ld [hl], e                                    ; $5326: $73
    ccf                                           ; $5327: $3f
    add hl, sp                                    ; $5328: $39
    rst $28                                       ; $5329: $ef
    rra                                           ; $532a: $1f
    inc e                                         ; $532b: $1c
    rst $38                                       ; $532c: $ff
    ld c, $bc                                     ; $532d: $0e $bc
    jp nz, $ffe0                                  ; $532f: $c2 $e0 $ff

    push hl                                       ; $5332: $e5
    rst $28                                       ; $5333: $ef
    rst $38                                       ; $5334: $ff
    scf                                           ; $5335: $37
    rst $38                                       ; $5336: $ff
    or a                                          ; $5337: $b7
    xor b                                         ; $5338: $a8
    and b                                         ; $5339: $a0
    ld c, e                                       ; $533a: $4b
    rst $38                                       ; $533b: $ff
    inc a                                         ; $533c: $3c
    cp $62                                        ; $533d: $fe $62
    ldh [rIF], a                                  ; $533f: $e0 $0f
    rst $38                                       ; $5341: $ff
    ld c, [hl]                                    ; $5342: $4e
    rst $38                                       ; $5343: $ff

jr_043_5344:
    ret c                                         ; $5344: $d8

    rst $38                                       ; $5345: $ff
    reti                                          ; $5346: $d9


    cp $98                                        ; $5347: $fe $98
    and b                                         ; $5349: $a0
    and b                                         ; $534a: $a0
    rst $38                                       ; $534b: $ff
    ld a, c                                       ; $534c: $79
    rst $38                                       ; $534d: $ff
    add a                                         ; $534e: $87
    rst $38                                       ; $534f: $ff
    db $e4                                        ; $5350: $e4
    rst $38                                       ; $5351: $ff
    cp a                                          ; $5352: $bf
    ld h, $ff                                     ; $5353: $26 $ff
    ld h, [hl]                                    ; $5355: $66
    rst $38                                       ; $5356: $ff
    call z, $18f8                                 ; $5357: $cc $f8 $18
    dec sp                                        ; $535a: $3b
    rst $38                                       ; $535b: $ff
    ld [hl], b                                    ; $535c: $70
    call nc, $80e0                                ; $535d: $d4 $e0 $80
    cp $03                                        ; $5360: $fe $03
    ld c, d                                       ; $5362: $4a
    pop bc                                        ; $5363: $c1
    adc h                                         ; $5364: $8c
    and a                                         ; $5365: $a7
    rst $38                                       ; $5366: $ff
    rrca                                          ; $5367: $0f
    ei                                            ; $5368: $fb
    ld b, $ff                                     ; $5369: $06 $ff
    ld [de], a                                    ; $536b: $12
    rst $38                                       ; $536c: $ff
    and d                                         ; $536d: $a2
    rst $38                                       ; $536e: $ff
    rst $38                                       ; $536f: $ff
    pop bc                                        ; $5370: $c1
    ld a, a                                       ; $5371: $7f
    pop bc                                        ; $5372: $c1
    ld a, a                                       ; $5373: $7f
    ret nz                                        ; $5374: $c0

    ld a, a                                       ; $5375: $7f
    rst $38                                       ; $5376: $ff
    ld a, a                                       ; $5377: $7f
    rst $38                                       ; $5378: $ff
    ldh [$bf], a                                  ; $5379: $e0 $bf
    ret nz                                        ; $537b: $c0

    rst $38                                       ; $537c: $ff
    sub c                                         ; $537d: $91
    rst $38                                       ; $537e: $ff
    adc d                                         ; $537f: $8a
    cp $7f                                        ; $5380: $fe $7f
    ld h, h                                       ; $5382: $64
    sbc h                                         ; $5383: $9c
    inc b                                         ; $5384: $04
    db $fc                                        ; $5385: $fc
    inc b                                         ; $5386: $04
    db $fc                                        ; $5387: $fc
    db $fc                                        ; $5388: $fc
    ld [hl], b                                    ; $5389: $70
    pop hl                                        ; $538a: $e1
    ret nc                                        ; $538b: $d0

    inc c                                         ; $538c: $0c
    rst $00                                       ; $538d: $c7
    ld d, [hl]                                    ; $538e: $56
    and c                                         ; $538f: $a1
    jp nz, Jump_000_3eea                          ; $5390: $c2 $ea $3e

    ret nz                                        ; $5393: $c0

    cp $7e                                        ; $5394: $fe $7e
    ldh [$fe], a                                  ; $5396: $e0 $fe
    rst $38                                       ; $5398: $ff
    ld e, a                                       ; $5399: $5f
    ld b, b                                       ; $539a: $40
    rst $38                                       ; $539b: $ff
    ld a, [hl]                                    ; $539c: $7e
    rst $38                                       ; $539d: $ff
    ld h, b                                       ; $539e: $60
    db $f4                                        ; $539f: $f4
    ldh [$c6], a                                  ; $53a0: $e0 $c6
    jr nz, jr_043_5344                            ; $53a2: $20 $a0

    xor c                                         ; $53a4: $a9
    rrca                                          ; $53a5: $0f
    ld b, d                                       ; $53a6: $42
    ret nz                                        ; $53a7: $c0

    push bc                                       ; $53a8: $c5
    pop hl                                        ; $53a9: $e1
    inc c                                         ; $53aa: $0c
    ld a, [hl-]                                   ; $53ab: $3a
    ret nz                                        ; $53ac: $c0

    call nz, $e3da                                ; $53ad: $c4 $da $e3
    rlca                                          ; $53b0: $07
    rst $28                                       ; $53b1: $ef
    ld [bc], a                                    ; $53b2: $02
    di                                            ; $53b3: $f3
    ld [bc], a                                    ; $53b4: $02
    rlca                                          ; $53b5: $07
    cp $e0                                        ; $53b6: $fe $e0
    ld h, l                                       ; $53b8: $65
    ld bc, $d7fb                                  ; $53b9: $01 $fb $d7
    ld l, [hl]                                    ; $53bc: $6e
    rst $38                                       ; $53bd: $ff
    rst $28                                       ; $53be: $ef
    sub h                                         ; $53bf: $94
    and d                                         ; $53c0: $a2
    rlca                                          ; $53c1: $07
    ld [bc], a                                    ; $53c2: $02
    ldh [rNR23], a                                ; $53c3: $e0 $18
    rst $38                                       ; $53c5: $ff
    ld e, a                                       ; $53c6: $5f
    inc b                                         ; $53c7: $04
    cp h                                          ; $53c8: $bc
    db $ec                                        ; $53c9: $ec
    rst $38                                       ; $53ca: $ff
    xor $f8                                       ; $53cb: $ee $f8
    and b                                         ; $53cd: $a0
    add b                                         ; $53ce: $80
    xor d                                         ; $53cf: $aa
    ret nz                                        ; $53d0: $c0

    daa                                           ; $53d1: $27
    jr nz, @+$01                                  ; $53d2: $20 $ff

    jr nc, @-$42                                  ; $53d4: $30 $bc

    ldh [$d0], a                                  ; $53d6: $e0 $d0
    jp Jump_000_1880                              ; $53d8: $c3 $80 $18


    push bc                                       ; $53db: $c5
    xor e                                         ; $53dc: $ab
    and b                                         ; $53dd: $a0
    ld a, a                                       ; $53de: $7f
    ld b, $ff                                     ; $53df: $06 $ff
    dec b                                         ; $53e1: $05
    rlca                                          ; $53e2: $07
    inc b                                         ; $53e3: $04
    rst $30                                       ; $53e4: $f7
    ld b, $c0                                     ; $53e5: $06 $c0
    ldh [rIE], a                                  ; $53e7: $e0 $ff
    rlca                                          ; $53e9: $07
    ld h, a                                       ; $53ea: $67
    rlca                                          ; $53eb: $07
    rst $38                                       ; $53ec: $ff
    cp d                                          ; $53ed: $ba
    rst $38                                       ; $53ee: $ff
    jr c, @+$01                                   ; $53ef: $38 $ff

    push af                                       ; $53f1: $f5
    sub d                                         ; $53f2: $92
    cp d                                          ; $53f3: $ba
    add b                                         ; $53f4: $80
    ldh a, [$30]                                  ; $53f5: $f0 $30
    ldh [$78], a                                  ; $53f7: $e0 $78
    rst $38                                       ; $53f9: $ff

jr_043_53fa:
    jr c, jr_043_53fa                             ; $53fa: $38 $fe

    ld e, a                                       ; $53fc: $5f
    cp d                                          ; $53fd: $ba
    rst $38                                       ; $53fe: $ff
    dec sp                                        ; $53ff: $3b
    rst $38                                       ; $5400: $ff
    sbc e                                         ; $5401: $9b
    add $a0                                       ; $5402: $c6 $a0
    inc a                                         ; $5404: $3c
    ld [bc], a                                    ; $5405: $02
    ldh [$e1], a                                  ; $5406: $e0 $e1
    ld a, a                                       ; $5408: $7f
    ld c, $e0                                     ; $5409: $0e $e0
    or d                                          ; $540b: $b2
    add c                                         ; $540c: $81
    ld e, b                                       ; $540d: $58
    and b                                         ; $540e: $a0
    ret c                                         ; $540f: $d8

    and l                                         ; $5410: $a5
    ld [hl], a                                    ; $5411: $77
    ld [bc], a                                    ; $5412: $02
    rst $30                                       ; $5413: $f7
    rst $38                                       ; $5414: $ff
    inc bc                                        ; $5415: $03
    db $e4                                        ; $5416: $e4
    rlca                                          ; $5417: $07
    ld [$080f], sp                                ; $5418: $08 $0f $08
    rrca                                          ; $541b: $0f
    rst $38                                       ; $541c: $ff
    rst $30                                       ; $541d: $f7
    rrca                                          ; $541e: $0f
    ld hl, sp+$0f                                 ; $541f: $f8 $0f
    add d                                         ; $5421: $82
    add b                                         ; $5422: $80
    inc b                                         ; $5423: $04
    rst $38                                       ; $5424: $ff
    db $e4                                        ; $5425: $e4
    ccf                                           ; $5426: $3f
    ccf                                           ; $5427: $3f
    ld a, [c]                                     ; $5428: $f2
    cpl                                           ; $5429: $2f
    ld a, [$fe17]                                 ; $542a: $fa $17 $fe
    rst $38                                       ; $542d: $ff
    push af                                       ; $542e: $f5
    ret nz                                        ; $542f: $c0

    ld [hl], d                                    ; $5430: $72
    add b                                         ; $5431: $80
    rst $38                                       ; $5432: $ff
    ld b, c                                       ; $5433: $41
    rst $38                                       ; $5434: $ff
    ld c, a                                       ; $5435: $4f
    ld hl, sp-$61                                 ; $5436: $f8 $9f
    add sp, -$41                                  ; $5438: $e8 $bf
    ret nc                                        ; $543a: $d0

    or $97                                        ; $543b: $f6 $97
    add d                                         ; $543d: $82
    rst $38                                       ; $543e: $ff
    rst $38                                       ; $543f: $ff
    ldh [$80], a                                  ; $5440: $e0 $80
    add b                                         ; $5442: $80
    ld b, a                                       ; $5443: $47
    ret nz                                        ; $5444: $c0

    inc hl                                        ; $5445: $23
    rst $18                                       ; $5446: $df
    ldh [$38], a                                  ; $5447: $e0 $38
    ldh [rIE], a                                  ; $5449: $e0 $ff
    ldh [$f4], a                                  ; $544b: $e0 $f4
    and b                                         ; $544d: $a0
    rst $38                                       ; $544e: $ff
    ld a, a                                       ; $544f: $7f
    rst $38                                       ; $5450: $ff
    rrca                                          ; $5451: $0f
    rst $38                                       ; $5452: $ff
    ld e, $ff                                     ; $5453: $1e $ff
    inc e                                         ; $5455: $1c
    rra                                           ; $5456: $1f
    ld a, [de]                                    ; $5457: $1a
    rra                                           ; $5458: $1f
    rst $18                                       ; $5459: $df
    dec d                                         ; $545a: $15
    rst $38                                       ; $545b: $ff
    ld a, [de]                                    ; $545c: $1a
    rst $38                                       ; $545d: $ff
    dec c                                         ; $545e: $0d
    ld b, d                                       ; $545f: $42
    add b                                         ; $5460: $80
    sbc h                                         ; $5461: $9c
    rst $38                                       ; $5462: $ff
    and a                                         ; $5463: $a7
    xor h                                         ; $5464: $ac
    rst $38                                       ; $5465: $ff
    ld c, h                                       ; $5466: $4c
    sbc [hl]                                      ; $5467: $9e
    ret nz                                        ; $5468: $c0

    or d                                          ; $5469: $b2
    pop bc                                        ; $546a: $c1
    ret nz                                        ; $546b: $c0

    ld [hl-], a                                   ; $546c: $32
    add b                                         ; $546d: $80
    ld h, a                                       ; $546e: $67
    rst $38                                       ; $546f: $ff
    rst $38                                       ; $5470: $ff
    ld c, a                                       ; $5471: $4f
    rst $38                                       ; $5472: $ff
    sbc a                                         ; $5473: $9f
    rst $38                                       ; $5474: $ff
    xor a                                         ; $5475: $af
    rst $38                                       ; $5476: $ff
    sub l                                         ; $5477: $95
    rst $28                                       ; $5478: $ef
    rst $38                                       ; $5479: $ff
    jp z, Jump_043_75ff                           ; $547a: $ca $ff $75

    ret nz                                        ; $547d: $c0

    db $e3                                        ; $547e: $e3
    rst $00                                       ; $547f: $c7
    ret nz                                        ; $5480: $c0

    db $e3                                        ; $5481: $e3
    ld b, e                                       ; $5482: $43
    ldh [$f8], a                                  ; $5483: $e0 $f8
    ret nz                                        ; $5485: $c0

    ldh [$ee], a                                  ; $5486: $e0 $ee
    ret nz                                        ; $5488: $c0

    or b                                          ; $5489: $b0
    pop hl                                        ; $548a: $e1
    sub b                                         ; $548b: $90
    adc c                                         ; $548c: $89
    rst $38                                       ; $548d: $ff
    ld d, b                                       ; $548e: $50
    add e                                         ; $548f: $83
    rst $38                                       ; $5490: $ff
    ld [$1e08], sp                                ; $5491: $08 $08 $1e
    ld d, $ff                                     ; $5494: $16 $ff
    ld a, [hl+]                                   ; $5496: $2a
    rst $38                                       ; $5497: $ff
    dec [hl]                                      ; $5498: $35
    db $fc                                        ; $5499: $fc
    db $fc                                        ; $549a: $fc
    ldh [rSC], a                                  ; $549b: $e0 $02
    add l                                         ; $549d: $85
    ld b, c                                       ; $549e: $41
    rst $38                                       ; $549f: $ff
    ld h, c                                       ; $54a0: $61
    sbc $73                                       ; $54a1: $de $73
    db $ec                                        ; $54a3: $ec
    or c                                          ; $54a4: $b1
    ccf                                           ; $54a5: $3f
    ld a, [c]                                     ; $54a6: $f2
    ld h, h                                       ; $54a7: $64
    ld a, h                                       ; $54a8: $7c
    and b                                         ; $54a9: $a0
    cp $e1                                        ; $54aa: $fe $e1
    ld h, [hl]                                    ; $54ac: $66
    and $64                                       ; $54ad: $e6 $64
    add a                                         ; $54af: $87
    rst $38                                       ; $54b0: $ff
    rst $20                                       ; $54b1: $e7
    ld b, e                                       ; $54b2: $43
    rst $38                                       ; $54b3: $ff
    ld h, e                                       ; $54b4: $63
    ld e, $e0                                     ; $54b5: $1e $e0
    jp nc, $8069                                  ; $54b7: $d2 $69 $80

    db $ec                                        ; $54ba: $ec
    db $ec                                        ; $54bb: $ec
    db $f4                                        ; $54bc: $f4
    jp nz, Jump_000_2a6b                          ; $54bd: $c2 $6b $2a

    add b                                         ; $54c0: $80
    ld bc, $e9fe                                  ; $54c1: $01 $fe $e9
    dec b                                         ; $54c4: $05
    ld bc, $26ff                                  ; $54c5: $01 $ff $26
    rst $28                                       ; $54c8: $ef
    db $fd                                        ; $54c9: $fd
    ld b, a                                       ; $54ca: $47
    cp $47                                        ; $54cb: $fe $47
    ld d, $a0                                     ; $54cd: $16 $a0
    ld e, a                                       ; $54cf: $5f
    cp $8b                                        ; $54d0: $fe $8b
    rra                                           ; $54d2: $1f
    db $fc                                        ; $54d3: $fc
    adc a                                         ; $54d4: $8f
    rst $38                                       ; $54d5: $ff
    adc e                                         ; $54d6: $8b
    ldh [$58], a                                  ; $54d7: $e0 $58
    add b                                         ; $54d9: $80
    db $eb                                        ; $54da: $eb
    add b                                         ; $54db: $80
    cp $e0                                        ; $54dc: $fe $e0
    rst $38                                       ; $54de: $ff
    inc e                                         ; $54df: $1c
    rst $30                                       ; $54e0: $f7
    sbc a                                         ; $54e1: $9f
    di                                            ; $54e2: $f3
    rst $38                                       ; $54e3: $ff
    rst $38                                       ; $54e4: $ff
    dec de                                        ; $54e5: $1b
    cp $ff                                        ; $54e6: $fe $ff
    ld b, $fc                                     ; $54e8: $06 $fc
    ld [c], a                                     ; $54ea: $e2
    cp $f9                                        ; $54eb: $fe $f9
    rra                                           ; $54ed: $1f
    ld hl, sp+$0f                                 ; $54ee: $f8 $0f
    ld e, a                                       ; $54f0: $5f
    ld hl, sp-$71                                 ; $54f1: $f8 $8f
    db $fc                                        ; $54f3: $fc
    daa                                           ; $54f4: $27
    db $fd                                        ; $54f5: $fd
    ld d, b                                       ; $54f6: $50
    add l                                         ; $54f7: $85
    ret nz                                        ; $54f8: $c0

    ld hl, sp-$7e                                 ; $54f9: $f8 $82
    ld d, a                                       ; $54fb: $57
    ret nc                                        ; $54fc: $d0

    rst $38                                       ; $54fd: $ff
    xor b                                         ; $54fe: $a8
    add [hl]                                      ; $54ff: $86
    ld [c], a                                     ; $5500: $e2
    ld bc, $8025                                  ; $5501: $01 $25 $80
    rlca                                          ; $5504: $07
    or $83                                        ; $5505: $f6 $83
    ld c, e                                       ; $5507: $4b
    rst $38                                       ; $5508: $ff
    ccf                                           ; $5509: $3f
    sbc d                                         ; $550a: $9a
    ret nz                                        ; $550b: $c0

    pop af                                        ; $550c: $f1
    ld d, [hl]                                    ; $550d: $56
    add b                                         ; $550e: $80
    ld hl, sp-$7f                                 ; $550f: $f8 $81
    add b                                         ; $5511: $80
    or $80                                        ; $5512: $f6 $80
    sbc a                                         ; $5514: $9f
    db $fc                                        ; $5515: $fc
    cp $fc                                        ; $5516: $fe $fc
    rst $38                                       ; $5518: $ff
    rra                                           ; $5519: $1f
    ld d, [hl]                                    ; $551a: $56
    add d                                         ; $551b: $82
    ld l, $81                                     ; $551c: $2e $81
    di                                            ; $551e: $f3
    ld a, h                                       ; $551f: $7c
    ld b, d                                       ; $5520: $42
    db $e3                                        ; $5521: $e3
    and $e2                                       ; $5522: $e6 $e2
    push de                                       ; $5524: $d5
    rst $38                                       ; $5525: $ff
    ld [$f5ff], a                                 ; $5526: $ea $ff $f5
    jr c, @+$67                                   ; $5529: $38 $65

    xor $88                                       ; $552b: $ee $88
    ld h, l                                       ; $552d: $65
    di                                            ; $552e: $f3
    ld bc, $6a07                                  ; $552f: $01 $07 $6a
    ldh [$65], a                                  ; $5532: $e0 $65
    ld bc, $7f75                                  ; $5534: $01 $75 $7f
    ld bc, $01f5                                  ; $5537: $01 $f5 $01
    push hl                                       ; $553a: $e5
    ld bc, $0101                                  ; $553b: $01 $01 $01
    ld d, $a0                                     ; $553e: $16 $a0
    cp $14                                        ; $5540: $fe $14
    and b                                         ; $5542: $a0
    ld a, a                                       ; $5543: $7f
    ld d, [hl]                                    ; $5544: $56
    rst $38                                       ; $5545: $ff
    ld b, [hl]                                    ; $5546: $46
    ld a, a                                       ; $5547: $7f
    ld b, e                                       ; $5548: $43
    ld a, $7d                                     ; $5549: $3e $7d
    ld [hl+], a                                   ; $554b: $22
    ld [c], a                                     ; $554c: $e2
    add b                                         ; $554d: $80
    and b                                         ; $554e: $a0
    rst $38                                       ; $554f: $ff
    and $ff                                       ; $5550: $e6 $ff
    ld sp, $a024                                  ; $5552: $31 $24 $a0
    db $dd                                        ; $5555: $dd
    ld [bc], a                                    ; $5556: $02
    ld h, [hl]                                    ; $5557: $66
    ret nz                                        ; $5558: $c0

    db $e3                                        ; $5559: $e3
    db $fc                                        ; $555a: $fc
    daa                                           ; $555b: $27
    ld a, $a0                                     ; $555c: $3e $a0
    or a                                          ; $555e: $b7
    rst $38                                       ; $555f: $ff
    rst $18                                       ; $5560: $df
    ld b, [hl]                                    ; $5561: $46
    rst $38                                       ; $5562: $ff
    ld a, [hl-]                                   ; $5563: $3a
    rst $38                                       ; $5564: $ff
    ld [hl+], a                                   ; $5565: $22
    ret c                                         ; $5566: $d8

    add c                                         ; $5567: $81
    ccf                                           ; $5568: $3f
    db $e4                                        ; $5569: $e4
    rst $38                                       ; $556a: $ff
    rst $38                                       ; $556b: $ff
    ld d, h                                       ; $556c: $54
    rst $38                                       ; $556d: $ff
    xor d                                         ; $556e: $aa
    rst $38                                       ; $556f: $ff
    sub $fe                                       ; $5570: $d6 $fe
    jp nz, $ffff                                  ; $5572: $c2 $ff $ff

    ld [c], a                                     ; $5575: $e2
    db $fc                                        ; $5576: $fc
    ld b, h                                       ; $5577: $44
    cp $42                                        ; $5578: $fe $42
    cp [hl]                                       ; $557a: $be
    ld [hl+], a                                   ; $557b: $22
    cp $dc                                        ; $557c: $fe $dc
    ld h, b                                       ; $557e: $60
    add hl, de                                    ; $557f: $19
    rst $38                                       ; $5580: $ff
    inc de                                        ; $5581: $13
    ccf                                           ; $5582: $3f
    daa                                           ; $5583: $27
    rst $38                                       ; $5584: $ff
    ld c, a                                       ; $5585: $4f
    ccf                                           ; $5586: $3f
    ld a, a                                       ; $5587: $7f
    ld l, l                                       ; $5588: $6d
    ld a, $26                                     ; $5589: $3e $26
    ld a, a                                       ; $558b: $7f
    inc sp                                        ; $558c: $33
    ld h, [hl]                                    ; $558d: $66
    adc b                                         ; $558e: $88
    and $81                                       ; $558f: $e6 $81
    ld [hl], c                                    ; $5591: $71
    cpl                                           ; $5592: $2f
    ld l, b                                       ; $5593: $68
    add b                                         ; $5594: $80
    ld h, [hl]                                    ; $5595: $66
    add l                                         ; $5596: $85
    and $81                                       ; $5597: $e6 $81
    db $ec                                        ; $5599: $ec
    rst $38                                       ; $559a: $ff
    db $eb                                        ; $559b: $eb
    ld b, d                                       ; $559c: $42
    ldh [rIE], a                                  ; $559d: $e0 $ff
    sub c                                         ; $559f: $91
    cp $be                                        ; $55a0: $fe $be
    rst $38                                       ; $55a2: $ff
    ld [hl-], a                                   ; $55a3: $32
    cp $72                                        ; $55a4: $fe $72
    cp $e7                                        ; $55a6: $fe $e7
    ld h, [hl]                                    ; $55a8: $66
    cp $ce                                        ; $55a9: $fe $ce
    add sp, $45                                   ; $55ab: $e8 $45
    ld [hl], b                                    ; $55ad: $70
    ld b, l                                       ; $55ae: $45
    ld a, a                                       ; $55af: $7f
    db $10                                        ; $55b0: $10
    rst $38                                       ; $55b1: $ff
    cp a                                          ; $55b2: $bf
    db $10                                        ; $55b3: $10
    rst $28                                       ; $55b4: $ef
    ld [$0707], sp                                ; $55b5: $08 $07 $07
    ld b, $d8                                     ; $55b8: $06 $d8
    add h                                         ; $55ba: $84
    db $fc                                        ; $55bb: $fc
    ld a, a                                       ; $55bc: $7f
    rst $30                                       ; $55bd: $f7
    rst $38                                       ; $55be: $ff
    ld [hl], e                                    ; $55bf: $73
    sbc a                                         ; $55c0: $9f
    ld hl, sp+$0f                                 ; $55c1: $f8 $0f
    cp $d8                                        ; $55c3: $fe $d8
    add c                                         ; $55c5: $81
    rst $38                                       ; $55c6: $ff
    ld [bc], a                                    ; $55c7: $02
    rst $38                                       ; $55c8: $ff
    ld a, [c]                                     ; $55c9: $f2
    rst $38                                       ; $55ca: $ff
    ccf                                           ; $55cb: $3f
    add sp, -$01                                  ; $55cc: $e8 $ff
    rst $08                                       ; $55ce: $cf
    ld a, a                                       ; $55cf: $7f
    di                                            ; $55d0: $f3
    ld e, $e1                                     ; $55d1: $1e $e1
    ld a, a                                       ; $55d3: $7f
    pop hl                                        ; $55d4: $e1
    cp a                                          ; $55d5: $bf
    pop bc                                        ; $55d6: $c1
    ret c                                         ; $55d7: $d8

    add b                                         ; $55d8: $80
    rst $28                                       ; $55d9: $ef
    ld [$ff9e], a                                 ; $55da: $ea $9e $ff
    ld h, c                                       ; $55dd: $61
    pop de                                        ; $55de: $d1
    add b                                         ; $55df: $80
    ld bc, $06ff                                  ; $55e0: $01 $ff $06
    ld a, [$80a0]                                 ; $55e3: $fa $a0 $80
    ldh [rNR52], a                                ; $55e6: $e0 $26
    ld b, c                                       ; $55e8: $41
    ld a, a                                       ; $55e9: $7f
    add hl, de                                    ; $55ea: $19
    rst $38                                       ; $55eb: $ff
    inc e                                         ; $55ec: $1c
    rst $28                                       ; $55ed: $ef
    rst $18                                       ; $55ee: $df
    ld c, $07                                     ; $55ef: $0e $07
    rlca                                          ; $55f1: $07
    rlca                                          ; $55f2: $07
    inc bc                                        ; $55f3: $03
    sub $84                                       ; $55f4: $d6 $84
    rst $38                                       ; $55f6: $ff
    rst $38                                       ; $55f7: $ff
    rst $20                                       ; $55f8: $e7
    ld [hl], a                                    ; $55f9: $77
    rst $38                                       ; $55fa: $ff
    res 1, b                                      ; $55fb: $cb $88
    ldh [rNR43], a                                ; $55fd: $e0 $22
    ld h, c                                       ; $55ff: $61
    cp $ff                                        ; $5600: $fe $ff
    jp $ffbf                                      ; $5602: $c3 $bf $ff


    ld sp, hl                                     ; $5605: $f9
    rst $38                                       ; $5606: $ff
    rst $18                                       ; $5607: $df
    rst $38                                       ; $5608: $ff
    cp c                                          ; $5609: $b9
    ld [hl], $c0                                  ; $560a: $36 $c0
    rst $38                                       ; $560c: $ff
    db $eb                                        ; $560d: $eb

jr_043_560e:
    rst $38                                       ; $560e: $ff
    ld [hl], c                                    ; $560f: $71
    sub $80                                       ; $5610: $d6 $80
    ld a, [hl]                                    ; $5612: $7e
    or h                                          ; $5613: $b4
    ld h, b                                       ; $5614: $60
    jr c, jr_043_560e                             ; $5615: $38 $f7

    ld [hl], b                                    ; $5617: $70
    xor b                                         ; $5618: $a8
    ret nc                                        ; $5619: $d0

    and b                                         ; $561a: $a0
    or d                                          ; $561b: $b2
    pop bc                                        ; $561c: $c1
    xor h                                         ; $561d: $ac
    add l                                         ; $561e: $85
    ld [bc], a                                    ; $561f: $02
    inc c                                         ; $5620: $0c
    add b                                         ; $5621: $80
    ld [$8020], sp                                ; $5622: $08 $20 $80
    add hl, de                                    ; $5625: $19
    ld e, a                                       ; $5626: $5f
    rst $20                                       ; $5627: $e7
    inc a                                         ; $5628: $3c
    ld sp, hl                                     ; $5629: $f9
    adc a                                         ; $562a: $8f
    db $fd                                        ; $562b: $fd
    sub $41                                       ; $562c: $d6 $41
    ld [bc], a                                    ; $562e: $02
    call nc, $fe40                                ; $562f: $d4 $40 $fe
    nop                                           ; $5632: $00
    add c                                         ; $5633: $81
    cp b                                          ; $5634: $b8
    rlca                                          ; $5635: $07
    db $fc                                        ; $5636: $fc
    ld b, $fc                                     ; $5637: $06 $fc
    add h                                         ; $5639: $84
    db $fc                                        ; $563a: $fc
    ccf                                           ; $563b: $3f
    call nz, $b4fc                                ; $563c: $c4 $fc $b4
    db $fc                                        ; $563f: $fc
    rst $38                                       ; $5640: $ff
    ld l, a                                       ; $5641: $6f
    ld d, $a1                                     ; $5642: $16 $a1
    ld a, [c]                                     ; $5644: $f2
    xor c                                         ; $5645: $a9
    ld d, d                                       ; $5646: $52
    ld a, d                                       ; $5647: $7a
    add b                                         ; $5648: $80
    jr nz, @+$6e                                  ; $5649: $20 $6c

    add d                                         ; $564b: $82
    ld d, d                                       ; $564c: $52
    pop bc                                        ; $564d: $c1
    ld b, $fe                                     ; $564e: $06 $fe
    db $e4                                        ; $5650: $e4
    ld hl, sp+$28                                 ; $5651: $f8 $28
    ld h, b                                       ; $5653: $60
    push de                                       ; $5654: $d5
    ld hl, sp+$4a                                 ; $5655: $f8 $4a
    ret nz                                        ; $5657: $c0

    sub e                                         ; $5658: $93
    cp d                                          ; $5659: $ba
    ld h, b                                       ; $565a: $60
    or $f2                                        ; $565b: $f6 $f2
    ldh [$3c], a                                  ; $565d: $e0 $3c
    cp $5f                                        ; $565f: $fe $5f
    ld b, h                                       ; $5661: $44
    db $fc                                        ; $5662: $fc
    inc a                                         ; $5663: $3c
    db $fc                                        ; $5664: $fc
    ld b, h                                       ; $5665: $44
    and b                                         ; $5666: $a0
    ld b, b                                       ; $5667: $40
    add $c8                                       ; $5668: $c6 $c8
    ld h, d                                       ; $566a: $62
    or $82                                        ; $566b: $f6 $82
    dec hl                                        ; $566d: $2b
    add b                                         ; $566e: $80
    jp Jump_043_62f8                              ; $566f: $c3 $f8 $62


    ld b, b                                       ; $5672: $40
    ld a, a                                       ; $5673: $7f
    pop hl                                        ; $5674: $e1
    ld a, a                                       ; $5675: $7f
    rst $38                                       ; $5676: $ff
    ld e, [hl]                                    ; $5677: $5e
    ld a, a                                       ; $5678: $7f
    ld hl, $7e3f                                  ; $5679: $21 $3f $7e
    ld e, $ff                                     ; $567c: $1e $ff
    and a                                         ; $567e: $a7
    pop af                                        ; $567f: $f1
    ld a, a                                       ; $5680: $7f
    jr @-$5d                                      ; $5681: $18 $a1

    db $ec                                        ; $5683: $ec
    ld b, b                                       ; $5684: $40
    ld hl, sp+$64                                 ; $5685: $f8 $64
    add b                                         ; $5687: $80
    rst $38                                       ; $5688: $ff
    ld h, h                                       ; $5689: $64
    rst $38                                       ; $568a: $ff
    sub l                                         ; $568b: $95
    inc e                                         ; $568c: $1c
    ld h, b                                       ; $568d: $60
    ld [c], a                                     ; $568e: $e2
    inc c                                         ; $568f: $0c
    and h                                         ; $5690: $a4
    ld b, b                                       ; $5691: $40
    rrca                                          ; $5692: $0f
    ld l, h                                       ; $5693: $6c
    ld h, b                                       ; $5694: $60
    adc $c0                                       ; $5695: $ce $c0
    ld hl, sp-$01                                 ; $5697: $f8 $ff
    db $10                                        ; $5699: $10
    db $fd                                        ; $569a: $fd
    ld [$38fc], sp                                ; $569b: $08 $fc $38
    call nz, $02fc                                ; $569e: $c4 $fc $02
    db $fd                                        ; $56a1: $fd
    cp $88                                        ; $56a2: $fe $88
    ld [c], a                                     ; $56a4: $e2
    ld c, $3f                                     ; $56a5: $0e $3f
    ld a, $ff                                     ; $56a7: $3e $ff
    ld a, a                                       ; $56a9: $7f
    ld a, a                                       ; $56aa: $7f
    ld e, a                                       ; $56ab: $5f
    ld a, l                                       ; $56ac: $7d
    rst $38                                       ; $56ad: $ff
    xor c                                         ; $56ae: $a9
    rst $38                                       ; $56af: $ff
    pop de                                        ; $56b0: $d1
    ldh [$80], a                                  ; $56b1: $e0 $80
    ld h, b                                       ; $56b3: $60
    and $60                                       ; $56b4: $e6 $60
    ld a, [$8152]                                 ; $56b6: $fa $52 $81
    jr nc, jr_043_56db                            ; $56b9: $30 $20

    add b                                         ; $56bb: $80
    ldh [rIE], a                                  ; $56bc: $e0 $ff
    add c                                         ; $56be: $81
    rst $38                                       ; $56bf: $ff
    ld a, h                                       ; $56c0: $7c
    ld a, [hl+]                                   ; $56c1: $2a
    jr z, jr_043_5704                             ; $56c2: $28 $40

    ld c, $bc                                     ; $56c4: $0e $bc
    ldh [$79], a                                  ; $56c6: $e0 $79
    ret z                                         ; $56c8: $c8

    ld b, b                                       ; $56c9: $40
    rst $20                                       ; $56ca: $e7
    or d                                          ; $56cb: $b2
    ld b, b                                       ; $56cc: $40
    ret c                                         ; $56cd: $d8

    add b                                         ; $56ce: $80
    ccf                                           ; $56cf: $3f
    ld hl, sp+$60                                 ; $56d0: $f8 $60
    push hl                                       ; $56d2: $e5
    ldh [$cc], a                                  ; $56d3: $e0 $cc
    ret nz                                        ; $56d5: $c0

    jr z, jr_043_5718                             ; $56d6: $28 $40

    jr nc, jr_043_5707                            ; $56d8: $30 $2d

    db $e3                                        ; $56da: $e3

jr_043_56db:
    rst $38                                       ; $56db: $ff
    ld a, [$20fc]                                 ; $56dc: $fa $fc $20
    ld c, [hl]                                    ; $56df: $4e
    ld l, b                                       ; $56e0: $68
    di                                            ; $56e1: $f3
    ldh [rNR31], a                                ; $56e2: $e0 $1b
    cp $e7                                        ; $56e4: $fe $e7
    rst $20                                       ; $56e6: $e7
    db $fc                                        ; $56e7: $fc
    dec de                                        ; $56e8: $1b
    ld hl, sp-$60                                 ; $56e9: $f8 $a0
    add b                                         ; $56eb: $80
    jp nc, $ab03                                  ; $56ec: $d2 $03 $ab

    rst $38                                       ; $56ef: $ff
    rst $10                                       ; $56f0: $d7
    adc a                                         ; $56f1: $8f
    rst $38                                       ; $56f2: $ff
    db $eb                                        ; $56f3: $eb
    ld a, [hl]                                    ; $56f4: $7e
    ld a, [hl]                                    ; $56f5: $7e
    ret nc                                        ; $56f6: $d0

    push hl                                       ; $56f7: $e5
    ld l, d                                       ; $56f8: $6a
    add d                                         ; $56f9: $82
    or d                                          ; $56fa: $b2
    add hl, bc                                    ; $56fb: $09
    db $db                                        ; $56fc: $db
    xor d                                         ; $56fd: $aa
    jr z, jr_043_5740                             ; $56fe: $28 $40

    db $db                                        ; $5700: $db
    ld [hl], h                                    ; $5701: $74
    and d                                         ; $5702: $a2
    ld d, l                                       ; $5703: $55

jr_043_5704:
    ldh [$60], a                                  ; $5704: $e0 $60
    rst $38                                       ; $5706: $ff

jr_043_5707:
    ret z                                         ; $5707: $c8

    inc h                                         ; $5708: $24
    ret nz                                        ; $5709: $c0

    nop                                           ; $570a: $00
    sub b                                         ; $570b: $90
    jp nz, $800f                                  ; $570c: $c2 $0f $80

    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    ld h, d                                       ; $5712: $62
    ld d, a                                       ; $5713: $57
    ret nc                                        ; $5714: $d0

    ld d, a                                       ; $5715: $57
    ld d, l                                       ; $5716: $55
    ld e, b                                       ; $5717: $58

jr_043_5718:
    jp SerialTransferCompleteInterrupt            ; $5718: $c3 $58 $00


    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    ld c, b                                       ; $5722: $48
    ld e, c                                       ; $5723: $59
    or d                                          ; $5724: $b2
    ld e, c                                       ; $5725: $59
    inc e                                         ; $5726: $1c
    ld e, d                                       ; $5727: $5a
    adc b                                         ; $5728: $88
    ld e, d                                       ; $5729: $5a
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    ld a, [c]                                     ; $5732: $f2
    ld e, d                                       ; $5733: $5a
    ld e, [hl]                                    ; $5734: $5e
    ld e, e                                       ; $5735: $5b
    jp z, Jump_000_375b                           ; $5736: $ca $5b $37

    ld e, h                                       ; $5739: $5c
    nop                                           ; $573a: $00
    nop                                           ; $573b: $00
    nop                                           ; $573c: $00
    nop                                           ; $573d: $00
    nop                                           ; $573e: $00
    nop                                           ; $573f: $00

jr_043_5740:
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    and [hl]                                      ; $5742: $a6
    ld e, h                                       ; $5743: $5c
    rla                                           ; $5744: $17
    ld e, l                                       ; $5745: $5d
    adc d                                         ; $5746: $8a
    ld e, l                                       ; $5747: $5d
    db $fc                                        ; $5748: $fc
    ld e, l                                       ; $5749: $5d
    nop                                           ; $574a: $00
    nop                                           ; $574b: $00
    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    nop                                           ; $574f: $00
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    ld [hl], d                                    ; $5752: $72
    ld e, [hl]                                    ; $5753: $5e
    jp nc, Jump_000_345e                          ; $5754: $d2 $5e $34

    ld e, a                                       ; $5757: $5f
    sbc c                                         ; $5758: $99
    ld e, a                                       ; $5759: $5f
    nop                                           ; $575a: $00
    nop                                           ; $575b: $00
    nop                                           ; $575c: $00
    nop                                           ; $575d: $00
    nop                                           ; $575e: $00
    nop                                           ; $575f: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    ret                                           ; $5762: $c9


    dec c                                         ; $5763: $0d
    rst $38                                       ; $5764: $ff
    rst $38                                       ; $5765: $ff
    db $e3                                        ; $5766: $e3
    ld [c], a                                     ; $5767: $e2
    dec l                                         ; $5768: $2d
    rst $30                                       ; $5769: $f7
    xor $cc                                       ; $576a: $ee $cc
    jp hl                                         ; $576c: $e9


    ld c, l                                       ; $576d: $4d
    ld c, l                                       ; $576e: $4d
    db $fd                                        ; $576f: $fd
    ld c, l                                       ; $5770: $4d
    ld sp, hl                                     ; $5771: $f9
    db $e4                                        ; $5772: $e4
    ld [bc], a                                    ; $5773: $02
    inc bc                                        ; $5774: $03
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    ld bc, $01ff                                  ; $5778: $01 $ff $01
    ld bc, $0504                                  ; $577b: $01 $04 $05
    dec c                                         ; $577e: $0d
    ld c, $07                                     ; $577f: $0e $07
    rlca                                          ; $5781: $07
    rst $38                                       ; $5782: $ff
    ld [$0609], sp                                ; $5783: $08 $09 $06
    ld b, $0f                                     ; $5786: $06 $0f
    db $10                                        ; $5788: $10
    dec c                                         ; $5789: $0d
    ld b, $ff                                     ; $578a: $06 $ff
    rla                                           ; $578c: $17
    ld de, $1312                                  ; $578d: $11 $12 $13
    ld b, $18                                     ; $5790: $06 $18
    rlca                                          ; $5792: $07
    db $10                                        ; $5793: $10
    rst $38                                       ; $5794: $ff
    ld hl, $0e06                                  ; $5795: $21 $06 $0e
    ld a, [de]                                    ; $5798: $1a
    dec de                                        ; $5799: $1b
    inc e                                         ; $579a: $1c
    dec e                                         ; $579b: $1d
    rrca                                          ; $579c: $0f
    rst $38                                       ; $579d: $ff
    rlca                                          ; $579e: $07
    ld [hl+], a                                   ; $579f: $22
    db $10                                        ; $57a0: $10
    inc l                                         ; $57a1: $2c
    ld b, $24                                     ; $57a2: $06 $24
    dec h                                         ; $57a4: $25
    ld h, $ff                                     ; $57a5: $26 $ff
    daa                                           ; $57a7: $27
    rlca                                          ; $57a8: $07
    dec l                                         ; $57a9: $2d
    dec c                                         ; $57aa: $0d
    dec [hl]                                      ; $57ab: $35
    rlca                                          ; $57ac: $07
    inc l                                         ; $57ad: $2c
    ld c, $ff                                     ; $57ae: $0e $ff
    ld l, $2f                                     ; $57b0: $2e $2f
    jr nc, @+$2f                                  ; $57b2: $30 $2d

    ld b, $36                                     ; $57b4: $06 $36
    dec c                                         ; $57b6: $0d
    ld a, $ff                                     ; $57b7: $3e $ff
    ccf                                           ; $57b9: $3f
    scf                                           ; $57ba: $37
    jr c, jr_043_57f6                             ; $57bb: $38 $39

    dec l                                         ; $57bd: $2d
    ld b, b                                       ; $57be: $40
    ld b, c                                       ; $57bf: $41
    db $10                                        ; $57c0: $10
    rst $38                                       ; $57c1: $ff
    ld [bc], a                                    ; $57c2: $02
    ld bc, $4201                                  ; $57c3: $01 $01 $42
    ld b, e                                       ; $57c6: $43
    ld b, h                                       ; $57c7: $44
    ld b, l                                       ; $57c8: $45
    nop                                           ; $57c9: $00
    inc bc                                        ; $57ca: $03
    nop                                           ; $57cb: $00
    dec b                                         ; $57cc: $05
    nop                                           ; $57cd: $00
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    sub a                                         ; $57d0: $97
    dec l                                         ; $57d1: $2d
    dec l                                         ; $57d2: $2d
    dec c                                         ; $57d3: $0d
    rst $38                                       ; $57d4: $ff
    ld [c], a                                     ; $57d5: $e2
    dec l                                         ; $57d6: $2d
    rst $38                                       ; $57d7: $ff
    ldh [$f6], a                                  ; $57d8: $e0 $f6
    and $0d                                       ; $57da: $e6 $0d
    nop                                           ; $57dc: $00
    db $eb                                        ; $57dd: $eb
    ld [c], a                                     ; $57de: $e2
    ld sp, hl                                     ; $57df: $f9
    ldh [$f6], a                                  ; $57e0: $e0 $f6
    rst $20                                       ; $57e2: $e7
    db $ed                                        ; $57e3: $ed
    db $e3                                        ; $57e4: $e3
    push af                                       ; $57e5: $f5
    db $e4                                        ; $57e6: $e4
    call z, $e2e1                                 ; $57e7: $cc $e1 $e2
    pop hl                                        ; $57ea: $e1
    rst $30                                       ; $57eb: $f7
    db $e3                                        ; $57ec: $e3
    xor $c5                                       ; $57ed: $ee $c5
    ldh [$6d], a                                  ; $57ef: $e0 $6d
    ld c, l                                       ; $57f1: $4d
    ld c, l                                       ; $57f2: $4d
    cp c                                          ; $57f3: $b9
    pop hl                                        ; $57f4: $e1
    ld c, l                                       ; $57f5: $4d

jr_043_57f6:
    ld c, l                                       ; $57f6: $4d
    ld l, l                                       ; $57f7: $6d
    rst $38                                       ; $57f8: $ff
    dec b                                         ; $57f9: $05
    inc b                                         ; $57fa: $04
    ld bc, $0101                                  ; $57fb: $01 $01 $01
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    nop                                           ; $5800: $00
    rst $38                                       ; $5801: $ff
    inc bc                                        ; $5802: $03
    ld [bc], a                                    ; $5803: $02
    db $10                                        ; $5804: $10
    rrca                                          ; $5805: $0f
    ld b, $06                                     ; $5806: $06 $06
    ld c, c                                       ; $5808: $49
    ld c, d                                       ; $5809: $4a
    rst $38                                       ; $580a: $ff
    rlca                                          ; $580b: $07
    rlca                                          ; $580c: $07
    ld c, $0d                                     ; $580d: $0e $0d
    db $10                                        ; $580f: $10
    rlca                                          ; $5810: $07
    jr jr_043_5860                                ; $5811: $18 $4d

    rst $38                                       ; $5813: $ff
    ld c, [hl]                                    ; $5814: $4e
    ld c, a                                       ; $5815: $4f
    rlca                                          ; $5816: $07
    rla                                           ; $5817: $17
    ld b, $0d                                     ; $5818: $06 $0d
    ld [hl+], a                                   ; $581a: $22
    rlca                                          ; $581b: $07
    rst $38                                       ; $581c: $ff
    rrca                                          ; $581d: $0f
    ld d, d                                       ; $581e: $52
    ld d, e                                       ; $581f: $53
    ld d, h                                       ; $5820: $54
    ld d, l                                       ; $5821: $55
    ld c, $06                                     ; $5822: $0e $06
    ld hl, $0dff                                  ; $5824: $21 $ff $0d
    dec l                                         ; $5827: $2d
    rlca                                          ; $5828: $07
    ld e, d                                       ; $5829: $5a
    ld e, e                                       ; $582a: $5b
    ld e, h                                       ; $582b: $5c
    ld e, l                                       ; $582c: $5d
    ld b, $ff                                     ; $582d: $06 $ff
    inc l                                         ; $582f: $2c
    db $10                                        ; $5830: $10
    ld [hl], $06                                  ; $5831: $36 $06
    dec l                                         ; $5833: $2d
    rrca                                          ; $5834: $0f
    ld h, d                                       ; $5835: $62
    ld h, e                                       ; $5836: $63
    rst $38                                       ; $5837: $ff
    ld h, h                                       ; $5838: $64
    inc l                                         ; $5839: $2c
    rlca                                          ; $583a: $07
    dec [hl]                                      ; $583b: $35
    db $10                                        ; $583c: $10
    ld b, c                                       ; $583d: $41
    ld b, b                                       ; $583e: $40
    ld h, a                                       ; $583f: $67
    rst $38                                       ; $5840: $ff
    ld l, b                                       ; $5841: $68
    ld l, c                                       ; $5842: $69
    inc l                                         ; $5843: $2c
    ccf                                           ; $5844: $3f
    ld a, $0d                                     ; $5845: $3e $0d
    dec b                                         ; $5847: $05
    nop                                           ; $5848: $00
    rst $38                                       ; $5849: $ff
    nop                                           ; $584a: $00
    ld l, h                                       ; $584b: $6c
    ld l, l                                       ; $584c: $6d
    ld l, [hl]                                    ; $584d: $6e
    ld l, a                                       ; $584e: $6f
    ld bc, $0201                                  ; $584f: $01 $01 $02
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    nop                                           ; $5854: $00
    ret                                           ; $5855: $c9


    dec c                                         ; $5856: $0d
    rst $38                                       ; $5857: $ff
    rst $38                                       ; $5858: $ff
    db $e3                                        ; $5859: $e3
    ld [c], a                                     ; $585a: $e2
    dec l                                         ; $585b: $2d
    rst $30                                       ; $585c: $f7
    xor $cc                                       ; $585d: $ee $cc
    jp hl                                         ; $585f: $e9


jr_043_5860:
    ld c, l                                       ; $5860: $4d
    ld c, l                                       ; $5861: $4d
    db $fd                                        ; $5862: $fd
    ld c, l                                       ; $5863: $4d
    ld sp, hl                                     ; $5864: $f9
    db $e4                                        ; $5865: $e4
    ld [bc], a                                    ; $5866: $02
    inc bc                                        ; $5867: $03
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    ld bc, $01ff                                  ; $586b: $01 $ff $01
    ld bc, $0504                                  ; $586e: $01 $04 $05
    dec c                                         ; $5871: $0d
    ld c, $07                                     ; $5872: $0e $07
    rlca                                          ; $5874: $07
    rst $38                                       ; $5875: $ff
    ld a, [bc]                                    ; $5876: $0a
    dec bc                                        ; $5877: $0b
    inc c                                         ; $5878: $0c
    ld b, $0f                                     ; $5879: $06 $0f
    db $10                                        ; $587b: $10
    dec c                                         ; $587c: $0d
    ld b, $ff                                     ; $587d: $06 $ff
    rla                                           ; $587f: $17
    rlca                                          ; $5880: $07
    inc d                                         ; $5881: $14
    dec d                                         ; $5882: $15
    ld d, $19                                     ; $5883: $16 $19
    rlca                                          ; $5885: $07
    db $10                                        ; $5886: $10
    rst $38                                       ; $5887: $ff
    ld hl, $0e06                                  ; $5888: $21 $06 $0e
    rlca                                          ; $588b: $07
    ld e, $1f                                     ; $588c: $1e $1f
    jr nz, jr_043_58b3                            ; $588e: $20 $23

    rst $38                                       ; $5890: $ff
    rlca                                          ; $5891: $07
    ld [hl+], a                                   ; $5892: $22
    db $10                                        ; $5893: $10
    inc l                                         ; $5894: $2c
    ld b, $28                                     ; $5895: $06 $28
    add hl, hl                                    ; $5897: $29
    ld a, [hl+]                                   ; $5898: $2a
    rst $38                                       ; $5899: $ff
    dec hl                                        ; $589a: $2b
    rlca                                          ; $589b: $07
    dec l                                         ; $589c: $2d
    dec c                                         ; $589d: $0d
    dec [hl]                                      ; $589e: $35
    rlca                                          ; $589f: $07
    inc l                                         ; $58a0: $2c
    ld sp, $32ff                                  ; $58a1: $31 $ff $32
    inc sp                                        ; $58a4: $33
    inc [hl]                                      ; $58a5: $34
    dec l                                         ; $58a6: $2d
    ld b, $36                                     ; $58a7: $06 $36
    dec c                                         ; $58a9: $0d
    ld a, $ff                                     ; $58aa: $3e $ff
    ccf                                           ; $58ac: $3f
    ld a, [hl-]                                   ; $58ad: $3a
    dec sp                                        ; $58ae: $3b
    inc a                                         ; $58af: $3c
    dec a                                         ; $58b0: $3d
    ld b, b                                       ; $58b1: $40
    ld b, c                                       ; $58b2: $41

jr_043_58b3:
    db $10                                        ; $58b3: $10
    rst $38                                       ; $58b4: $ff
    ld [bc], a                                    ; $58b5: $02
    ld bc, $4601                                  ; $58b6: $01 $01 $46
    ld b, a                                       ; $58b9: $47
    ld c, b                                       ; $58ba: $48
    ld b, l                                       ; $58bb: $45
    nop                                           ; $58bc: $00
    inc bc                                        ; $58bd: $03
    nop                                           ; $58be: $00
    dec b                                         ; $58bf: $05
    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    nop                                           ; $58c2: $00
    sub a                                         ; $58c3: $97
    dec l                                         ; $58c4: $2d
    dec l                                         ; $58c5: $2d
    dec c                                         ; $58c6: $0d
    rst $38                                       ; $58c7: $ff
    ld [c], a                                     ; $58c8: $e2
    dec l                                         ; $58c9: $2d
    rst $38                                       ; $58ca: $ff
    ldh [$f6], a                                  ; $58cb: $e0 $f6
    and $0d                                       ; $58cd: $e6 $0d
    nop                                           ; $58cf: $00
    db $eb                                        ; $58d0: $eb
    ld [c], a                                     ; $58d1: $e2
    ld sp, hl                                     ; $58d2: $f9
    ldh [$f6], a                                  ; $58d3: $e0 $f6
    rst $20                                       ; $58d5: $e7
    db $ed                                        ; $58d6: $ed
    db $e3                                        ; $58d7: $e3
    push af                                       ; $58d8: $f5
    db $e4                                        ; $58d9: $e4
    call z, $dbe0                                 ; $58da: $cc $e0 $db
    pop hl                                        ; $58dd: $e1
    call z, $eee3                                 ; $58de: $cc $e3 $ee
    add $e1                                       ; $58e1: $c6 $e1
    ld l, l                                       ; $58e3: $6d
    ld c, l                                       ; $58e4: $4d
    ld c, l                                       ; $58e5: $4d
    cp c                                          ; $58e6: $b9
    pop hl                                        ; $58e7: $e1
    ld c, l                                       ; $58e8: $4d
    ld c, l                                       ; $58e9: $4d
    ld l, l                                       ; $58ea: $6d
    rst $38                                       ; $58eb: $ff
    dec b                                         ; $58ec: $05
    inc b                                         ; $58ed: $04
    ld bc, $0101                                  ; $58ee: $01 $01 $01
    nop                                           ; $58f1: $00
    nop                                           ; $58f2: $00
    nop                                           ; $58f3: $00
    rst $38                                       ; $58f4: $ff
    inc bc                                        ; $58f5: $03
    ld [bc], a                                    ; $58f6: $02
    db $10                                        ; $58f7: $10
    rrca                                          ; $58f8: $0f
    ld b, $06                                     ; $58f9: $06 $06
    ld c, e                                       ; $58fb: $4b
    ld c, h                                       ; $58fc: $4c
    rst $38                                       ; $58fd: $ff
    rlca                                          ; $58fe: $07
    rlca                                          ; $58ff: $07
    ld c, $0d                                     ; $5900: $0e $0d
    db $10                                        ; $5902: $10
    rlca                                          ; $5903: $07
    jr jr_043_5956                                ; $5904: $18 $50

    rst $38                                       ; $5906: $ff
    ld [de], a                                    ; $5907: $12
    ld d, c                                       ; $5908: $51
    rlca                                          ; $5909: $07
    rla                                           ; $590a: $17
    ld b, $0d                                     ; $590b: $06 $0d
    ld [hl+], a                                   ; $590d: $22
    rlca                                          ; $590e: $07
    rst $38                                       ; $590f: $ff
    rrca                                          ; $5910: $0f
    ld d, [hl]                                    ; $5911: $56
    ld d, a                                       ; $5912: $57
    ld e, b                                       ; $5913: $58
    ld e, c                                       ; $5914: $59
    ld c, $06                                     ; $5915: $0e $06
    ld hl, $0dff                                  ; $5917: $21 $ff $0d
    dec l                                         ; $591a: $2d
    rlca                                          ; $591b: $07
    ld e, [hl]                                    ; $591c: $5e
    ld e, a                                       ; $591d: $5f
    ld h, b                                       ; $591e: $60
    ld h, c                                       ; $591f: $61
    ld b, $ff                                     ; $5920: $06 $ff
    inc l                                         ; $5922: $2c
    db $10                                        ; $5923: $10
    ld [hl], $06                                  ; $5924: $36 $06
    dec l                                         ; $5926: $2d
    rrca                                          ; $5927: $0f
    ld h, l                                       ; $5928: $65
    ld h, [hl]                                    ; $5929: $66
    rst $38                                       ; $592a: $ff
    ld c, $2c                                     ; $592b: $0e $2c
    rlca                                          ; $592d: $07
    dec [hl]                                      ; $592e: $35
    db $10                                        ; $592f: $10
    ld b, c                                       ; $5930: $41
    ld b, b                                       ; $5931: $40
    dec l                                         ; $5932: $2d
    rst $38                                       ; $5933: $ff
    ld l, d                                       ; $5934: $6a
    ld l, e                                       ; $5935: $6b
    inc l                                         ; $5936: $2c
    ccf                                           ; $5937: $3f
    ld a, $0d                                     ; $5938: $3e $0d
    dec b                                         ; $593a: $05
    nop                                           ; $593b: $00
    rst $38                                       ; $593c: $ff
    nop                                           ; $593d: $00
    ld l, h                                       ; $593e: $6c
    ld l, l                                       ; $593f: $6d
    ld l, [hl]                                    ; $5940: $6e
    ld l, a                                       ; $5941: $6f
    ld bc, $0201                                  ; $5942: $01 $01 $02
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    rla                                           ; $5948: $17
    dec c                                         ; $5949: $0d
    dec c                                         ; $594a: $0d
    dec l                                         ; $594b: $2d
    cp $e3                                        ; $594c: $fe $e3
    dec l                                         ; $594e: $2d
    or $e1                                        ; $594f: $f6 $e1
    ld a, [c]                                     ; $5951: $f2
    ld [c], a                                     ; $5952: $e2
    or $e4                                        ; $5953: $f6 $e4
    add b                                         ; $5955: $80

jr_043_5956:
    and $e0                                       ; $5956: $e6 $e0
    push hl                                       ; $5958: $e5
    pop hl                                        ; $5959: $e1
    rst $30                                       ; $595a: $f7
    ld [c], a                                     ; $595b: $e2
    db $db                                        ; $595c: $db
    ld [c], a                                     ; $595d: $e2
    or $e5                                        ; $595e: $f6 $e5
    ld [c], a                                     ; $5960: $e2
    rst $20                                       ; $5961: $e7
    adc $f0                                       ; $5962: $ce $f0
    ld bc, $00fd                                  ; $5964: $01 $fd $00
    rst $38                                       ; $5967: $ff
    db $e4                                        ; $5968: $e4
    ld bc, $0308                                  ; $5969: $01 $08 $03
    inc bc                                        ; $596c: $03
    inc bc                                        ; $596d: $03
    ld b, $fd                                     ; $596e: $06 $fd
    rlca                                          ; $5970: $07
    ei                                            ; $5971: $fb
    ldh [$08], a                                  ; $5972: $e0 $08
    ld de, $1212                                  ; $5974: $11 $12 $12
    dec c                                         ; $5977: $0d
    ld c, $ff                                     ; $5978: $0e $ff
    rrca                                          ; $597a: $0f
    db $10                                        ; $597b: $10
    ld [de], a                                    ; $597c: $12
    ld [de], a                                    ; $597d: $12
    ld de, $031a                                  ; $597e: $11 $1a $03
    inc bc                                        ; $5981: $03
    rst $38                                       ; $5982: $ff
    ld d, $17                                     ; $5983: $16 $17
    jr jr_043_59a0                                ; $5985: $18 $19

    inc bc                                        ; $5987: $03
    inc bc                                        ; $5988: $03
    ld a, [de]                                    ; $5989: $1a
    inc hl                                        ; $598a: $23
    rst $38                                       ; $598b: $ff
    ld [de], a                                    ; $598c: $12
    ld [de], a                                    ; $598d: $12
    rra                                           ; $598e: $1f
    jr nz, jr_043_59b2                            ; $598f: $20 $21

    ld [hl+], a                                   ; $5991: $22
    ld [de], a                                    ; $5992: $12
    ld [de], a                                    ; $5993: $12
    db $dd                                        ; $5994: $dd
    inc hl                                        ; $5995: $23
    ret c                                         ; $5996: $d8

    pop hl                                        ; $5997: $e1
    jr z, jr_043_59c3                             ; $5998: $28 $29

    ld a, [hl+]                                   ; $599a: $2a
    ret c                                         ; $599b: $d8

    db $e3                                        ; $599c: $e3
    ld [de], a                                    ; $599d: $12
    dec l                                         ; $599e: $2d
    db $fd                                        ; $599f: $fd

jr_043_59a0:
    ld l, $fb                                     ; $59a0: $2e $fb
    ldh [rNR11], a                                ; $59a2: $e0 $11
    ld [hl], $33                                  ; $59a4: $36 $33
    inc sp                                        ; $59a6: $33
    inc sp                                        ; $59a7: $33
    inc [hl]                                      ; $59a8: $34
    rra                                           ; $59a9: $1f
    dec [hl]                                      ; $59aa: $35
    ld [hl-], a                                   ; $59ab: $32
    inc sp                                        ; $59ac: $33
    inc sp                                        ; $59ad: $33
    ld [hl], $00                                  ; $59ae: $36 $00
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00

jr_043_59b2:
    rla                                           ; $59b2: $17
    dec c                                         ; $59b3: $0d
    dec c                                         ; $59b4: $0d
    dec l                                         ; $59b5: $2d
    cp $e3                                        ; $59b6: $fe $e3
    dec l                                         ; $59b8: $2d
    or $e1                                        ; $59b9: $f6 $e1
    ld a, [c]                                     ; $59bb: $f2
    ld [c], a                                     ; $59bc: $e2
    or $e4                                        ; $59bd: $f6 $e4
    add b                                         ; $59bf: $80
    and $e0                                       ; $59c0: $e6 $e0
    push hl                                       ; $59c2: $e5

jr_043_59c3:
    pop hl                                        ; $59c3: $e1
    rst $30                                       ; $59c4: $f7
    ld [c], a                                     ; $59c5: $e2
    db $db                                        ; $59c6: $db
    ld [c], a                                     ; $59c7: $e2
    or $e5                                        ; $59c8: $f6 $e5
    ld [c], a                                     ; $59ca: $e2
    rst $20                                       ; $59cb: $e7
    adc $f0                                       ; $59cc: $ce $f0
    ld bc, $00fd                                  ; $59ce: $01 $fd $00
    rst $38                                       ; $59d1: $ff
    db $e4                                        ; $59d2: $e4
    ld bc, $0308                                  ; $59d3: $01 $08 $03
    inc bc                                        ; $59d6: $03
    inc bc                                        ; $59d7: $03
    ld b, $fd                                     ; $59d8: $06 $fd
    rlca                                          ; $59da: $07
    ei                                            ; $59db: $fb
    ldh [$08], a                                  ; $59dc: $e0 $08
    ld de, $1212                                  ; $59de: $11 $12 $12
    ld a, [hl-]                                   ; $59e1: $3a
    dec sp                                        ; $59e2: $3b
    rst $38                                       ; $59e3: $ff
    inc a                                         ; $59e4: $3c
    db $10                                        ; $59e5: $10
    ld [de], a                                    ; $59e6: $12
    ld [de], a                                    ; $59e7: $12
    ld de, $031a                                  ; $59e8: $11 $1a $03
    inc bc                                        ; $59eb: $03
    rst $38                                       ; $59ec: $ff
    ld b, c                                       ; $59ed: $41
    ld b, d                                       ; $59ee: $42
    ld b, e                                       ; $59ef: $43
    add hl, de                                    ; $59f0: $19
    inc bc                                        ; $59f1: $03
    inc bc                                        ; $59f2: $03
    ld a, [de]                                    ; $59f3: $1a
    inc hl                                        ; $59f4: $23
    rst $38                                       ; $59f5: $ff
    ld [de], a                                    ; $59f6: $12
    ld [de], a                                    ; $59f7: $12
    ld c, b                                       ; $59f8: $48
    ld c, c                                       ; $59f9: $49
    ld hl, $1222                                  ; $59fa: $21 $22 $12
    ld [de], a                                    ; $59fd: $12
    db $dd                                        ; $59fe: $dd
    inc hl                                        ; $59ff: $23
    ret c                                         ; $5a00: $d8

    pop hl                                        ; $5a01: $e1
    jr z, jr_043_5a2d                             ; $5a02: $28 $29

    ld a, [hl+]                                   ; $5a04: $2a
    ret c                                         ; $5a05: $d8

    db $e3                                        ; $5a06: $e3
    ld [de], a                                    ; $5a07: $12
    dec l                                         ; $5a08: $2d
    db $fd                                        ; $5a09: $fd
    ld l, $fb                                     ; $5a0a: $2e $fb
    ldh [rNR11], a                                ; $5a0c: $e0 $11
    ld [hl], $33                                  ; $5a0e: $36 $33
    inc sp                                        ; $5a10: $33
    inc sp                                        ; $5a11: $33
    inc [hl]                                      ; $5a12: $34
    rra                                           ; $5a13: $1f
    dec [hl]                                      ; $5a14: $35
    ld [hl-], a                                   ; $5a15: $32
    inc sp                                        ; $5a16: $33
    inc sp                                        ; $5a17: $33
    ld [hl], $00                                  ; $5a18: $36 $00
    nop                                           ; $5a1a: $00
    nop                                           ; $5a1b: $00
    rla                                           ; $5a1c: $17
    dec c                                         ; $5a1d: $0d
    dec c                                         ; $5a1e: $0d
    dec l                                         ; $5a1f: $2d
    cp $e3                                        ; $5a20: $fe $e3
    dec l                                         ; $5a22: $2d
    or $e1                                        ; $5a23: $f6 $e1
    ld a, [c]                                     ; $5a25: $f2
    ld [c], a                                     ; $5a26: $e2
    or $e4                                        ; $5a27: $f6 $e4
    add b                                         ; $5a29: $80
    and $e0                                       ; $5a2a: $e6 $e0
    push hl                                       ; $5a2c: $e5

jr_043_5a2d:
    pop hl                                        ; $5a2d: $e1
    rst $30                                       ; $5a2e: $f7
    ld [c], a                                     ; $5a2f: $e2
    db $db                                        ; $5a30: $db
    ld [c], a                                     ; $5a31: $e2
    or $e5                                        ; $5a32: $f6 $e5
    ld [c], a                                     ; $5a34: $e2
    rst $20                                       ; $5a35: $e7
    adc $f0                                       ; $5a36: $ce $f0
    ld bc, $00fd                                  ; $5a38: $01 $fd $00
    rst $38                                       ; $5a3b: $ff
    db $e4                                        ; $5a3c: $e4
    ld bc, $0308                                  ; $5a3d: $01 $08 $03
    inc bc                                        ; $5a40: $03
    scf                                           ; $5a41: $37
    jr c, @+$01                                   ; $5a42: $38 $ff

    add hl, sp                                    ; $5a44: $39
    inc bc                                        ; $5a45: $03
    inc bc                                        ; $5a46: $03
    inc bc                                        ; $5a47: $03
    ld [$1211], sp                                ; $5a48: $08 $11 $12
    ld [de], a                                    ; $5a4b: $12
    rst $38                                       ; $5a4c: $ff
    dec a                                         ; $5a4d: $3d
    ld a, $3f                                     ; $5a4e: $3e $3f
    ld b, b                                       ; $5a50: $40
    ld [de], a                                    ; $5a51: $12
    ld [de], a                                    ; $5a52: $12
    ld de, $ff1a                                  ; $5a53: $11 $1a $ff
    inc bc                                        ; $5a56: $03
    inc bc                                        ; $5a57: $03
    ld b, h                                       ; $5a58: $44
    ld b, l                                       ; $5a59: $45
    ld b, [hl]                                    ; $5a5a: $46
    ld b, a                                       ; $5a5b: $47
    inc bc                                        ; $5a5c: $03
    inc bc                                        ; $5a5d: $03
    rst $38                                       ; $5a5e: $ff
    ld a, [de]                                    ; $5a5f: $1a
    inc hl                                        ; $5a60: $23
    ld [de], a                                    ; $5a61: $12
    ld [de], a                                    ; $5a62: $12
    ld c, d                                       ; $5a63: $4a
    ld c, e                                       ; $5a64: $4b
    ld c, h                                       ; $5a65: $4c
    ld c, l                                       ; $5a66: $4d
    rst $30                                       ; $5a67: $f7
    ld [de], a                                    ; $5a68: $12
    ld [de], a                                    ; $5a69: $12
    inc hl                                        ; $5a6a: $23
    ret c                                         ; $5a6b: $d8

    ldh [$03], a                                  ; $5a6c: $e0 $03
    ld c, [hl]                                    ; $5a6e: $4e
    ld c, a                                       ; $5a6f: $4f
    ld d, b                                       ; $5a70: $50
    xor $d8                                       ; $5a71: $ee $d8
    db $e3                                        ; $5a73: $e3
    ld [de], a                                    ; $5a74: $12
    ld d, c                                       ; $5a75: $51
    ld d, d                                       ; $5a76: $52
    ei                                            ; $5a77: $fb
    ldh [rNR11], a                                ; $5a78: $e0 $11
    ld [hl], $33                                  ; $5a7a: $36 $33
    rst $38                                       ; $5a7c: $ff
    inc sp                                        ; $5a7d: $33
    ld d, e                                       ; $5a7e: $53
    ld d, h                                       ; $5a7f: $54
    ld d, l                                       ; $5a80: $55
    ld [hl-], a                                   ; $5a81: $32
    inc sp                                        ; $5a82: $33
    inc sp                                        ; $5a83: $33
    ld [hl], $00                                  ; $5a84: $36 $00
    nop                                           ; $5a86: $00
    nop                                           ; $5a87: $00
    rla                                           ; $5a88: $17
    dec c                                         ; $5a89: $0d
    dec c                                         ; $5a8a: $0d
    dec l                                         ; $5a8b: $2d
    cp $e3                                        ; $5a8c: $fe $e3
    dec l                                         ; $5a8e: $2d
    or $e1                                        ; $5a8f: $f6 $e1
    ld a, [c]                                     ; $5a91: $f2
    ld [c], a                                     ; $5a92: $e2
    or $e4                                        ; $5a93: $f6 $e4
    add b                                         ; $5a95: $80
    and $e0                                       ; $5a96: $e6 $e0
    push hl                                       ; $5a98: $e5
    pop hl                                        ; $5a99: $e1
    rst $30                                       ; $5a9a: $f7
    ld [c], a                                     ; $5a9b: $e2
    db $db                                        ; $5a9c: $db
    ld [c], a                                     ; $5a9d: $e2
    or $e5                                        ; $5a9e: $f6 $e5
    ld [c], a                                     ; $5aa0: $e2
    rst $20                                       ; $5aa1: $e7
    adc $f0                                       ; $5aa2: $ce $f0
    ld bc, $00fd                                  ; $5aa4: $01 $fd $00
    rst $38                                       ; $5aa7: $ff
    db $e4                                        ; $5aa8: $e4
    ld bc, $0308                                  ; $5aa9: $01 $08 $03
    inc bc                                        ; $5aac: $03
    inc bc                                        ; $5aad: $03
    inc b                                         ; $5aae: $04
    db $fd                                        ; $5aaf: $fd
    dec b                                         ; $5ab0: $05
    ei                                            ; $5ab1: $fb
    ldh [$08], a                                  ; $5ab2: $e0 $08
    ld de, $1212                                  ; $5ab4: $11 $12 $12
    add hl, bc                                    ; $5ab7: $09
    ld a, [bc]                                    ; $5ab8: $0a
    rst $38                                       ; $5ab9: $ff
    dec bc                                        ; $5aba: $0b
    inc c                                         ; $5abb: $0c
    ld [de], a                                    ; $5abc: $12
    ld [de], a                                    ; $5abd: $12
    ld de, $031a                                  ; $5abe: $11 $1a $03
    inc bc                                        ; $5ac1: $03
    rst $30                                       ; $5ac2: $f7
    inc de                                        ; $5ac3: $13
    inc d                                         ; $5ac4: $14
    dec d                                         ; $5ac5: $15
    rst $20                                       ; $5ac6: $e7
    ldh [rNR30], a                                ; $5ac7: $e0 $1a
    inc hl                                        ; $5ac9: $23
    ld [de], a                                    ; $5aca: $12
    ld [de], a                                    ; $5acb: $12
    ld a, a                                       ; $5acc: $7f
    dec de                                        ; $5acd: $1b
    inc e                                         ; $5ace: $1c
    dec e                                         ; $5acf: $1d
    ld e, $12                                     ; $5ad0: $1e $12
    ld [de], a                                    ; $5ad2: $12
    inc hl                                        ; $5ad3: $23
    ret c                                         ; $5ad4: $d8

    ldh [$ef], a                                  ; $5ad5: $e0 $ef
    inc h                                         ; $5ad7: $24
    dec h                                         ; $5ad8: $25
    ld h, $27                                     ; $5ad9: $26 $27
    ret c                                         ; $5adb: $d8

    db $e3                                        ; $5adc: $e3
    ld [de], a                                    ; $5add: $12
    dec hl                                        ; $5ade: $2b
    inc l                                         ; $5adf: $2c
    cp $fb                                        ; $5ae0: $fe $fb
    ldh [rNR11], a                                ; $5ae2: $e0 $11
    ld [hl], $33                                  ; $5ae4: $36 $33
    inc sp                                        ; $5ae6: $33
    cpl                                           ; $5ae7: $2f
    jr nc, jr_043_5b1b                            ; $5ae8: $30 $31

    rrca                                          ; $5aea: $0f
    ld [hl-], a                                   ; $5aeb: $32
    inc sp                                        ; $5aec: $33
    inc sp                                        ; $5aed: $33
    ld [hl], $00                                  ; $5aee: $36 $00
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    adc a                                         ; $5af2: $8f
    dec c                                         ; $5af3: $0d
    dec c                                         ; $5af4: $0d
    dec l                                         ; $5af5: $2d
    dec c                                         ; $5af6: $0d
    db $fc                                        ; $5af7: $fc
    ld [c], a                                     ; $5af8: $e2
    ld sp, hl                                     ; $5af9: $f9
    pop hl                                        ; $5afa: $e1
    db $fd                                        ; $5afb: $fd
    pop hl                                        ; $5afc: $e1
    dec l                                         ; $5afd: $2d
    ld h, c                                       ; $5afe: $61

Jump_043_5aff:
    dec l                                         ; $5aff: $2d
    or $e5                                        ; $5b00: $f6 $e5
    push af                                       ; $5b02: $f5
    ldh [$ec], a                                  ; $5b03: $e0 $ec
    xor $e2                                       ; $5b05: $ee $e2
    db $f4                                        ; $5b07: $f4
    ld c, l                                       ; $5b08: $4d
    ld c, l                                       ; $5b09: $4d
    call nz, Call_043_7fe3                        ; $5b0a: $c4 $e3 $7f
    ld c, l                                       ; $5b0d: $4d
    ld l, l                                       ; $5b0e: $6d
    ld e, h                                       ; $5b0f: $5c
    ld bc, $0000                                  ; $5b10: $01 $00 $00
    ld bc, $e1fc                                  ; $5b13: $01 $fc $e1
    rst $38                                       ; $5b16: $ff
    ld e, h                                       ; $5b17: $5c
    ld e, [hl]                                    ; $5b18: $5e
    ld e, a                                       ; $5b19: $5f
    dec b                                         ; $5b1a: $05

jr_043_5b1b:
    ld [bc], a                                    ; $5b1b: $02
    inc bc                                        ; $5b1c: $03
    inc b                                         ; $5b1d: $04
    dec b                                         ; $5b1e: $05
    rst $38                                       ; $5b1f: $ff
    dec b                                         ; $5b20: $05
    ld e, a                                       ; $5b21: $5f
    ld e, [hl]                                    ; $5b22: $5e
    ld h, b                                       ; $5b23: $60
    ld h, c                                       ; $5b24: $61
    inc de                                        ; $5b25: $13
    inc c                                         ; $5b26: $0c
    dec c                                         ; $5b27: $0d
    rst $38                                       ; $5b28: $ff
    ld c, $0f                                     ; $5b29: $0e $0f
    inc de                                        ; $5b2b: $13
    ld h, c                                       ; $5b2c: $61
    ld h, b                                       ; $5b2d: $60
    ld h, d                                       ; $5b2e: $62
    ld h, e                                       ; $5b2f: $63
    ld c, d                                       ; $5b30: $4a
    ld a, a                                       ; $5b31: $7f
    ld a, [de]                                    ; $5b32: $1a
    dec de                                        ; $5b33: $1b
    inc e                                         ; $5b34: $1c
    dec e                                         ; $5b35: $1d
    ld c, d                                       ; $5b36: $4a
    ld h, e                                       ; $5b37: $63
    ld h, d                                       ; $5b38: $62
    ld [c], a                                     ; $5b39: $e2
    ldh [$ef], a                                  ; $5b3a: $e0 $ef
    ld a, [hl+]                                   ; $5b3c: $2a
    dec hl                                        ; $5b3d: $2b
    inc l                                         ; $5b3e: $2c
    dec l                                         ; $5b3f: $2d
    ld [c], a                                     ; $5b40: $e2
    db $e3                                        ; $5b41: $e3
    scf                                           ; $5b42: $37
    jr c, @+$3b                                   ; $5b43: $38 $39

    cp l                                          ; $5b45: $bd
    ld a, [hl-]                                   ; $5b46: $3a
    ld [c], a                                     ; $5b47: $e2
    db $e3                                        ; $5b48: $e3
    ld b, a                                       ; $5b49: $47
    ld c, b                                       ; $5b4a: $48
    ld c, c                                       ; $5b4b: $49
    ld c, d                                       ; $5b4c: $4a
    ld [c], a                                     ; $5b4d: $e2
    ldh [$5c], a                                  ; $5b4e: $e0 $5c
    rst $38                                       ; $5b50: $ff
    ld bc, $5464                                  ; $5b51: $01 $64 $54
    ld d, l                                       ; $5b54: $55
    ld d, [hl]                                    ; $5b55: $56
    ld d, a                                       ; $5b56: $57
    ld h, h                                       ; $5b57: $64
    ld bc, $5c01                                  ; $5b58: $01 $01 $5c
    nop                                           ; $5b5b: $00
    nop                                           ; $5b5c: $00
    nop                                           ; $5b5d: $00
    rst $08                                       ; $5b5e: $cf
    dec c                                         ; $5b5f: $0d
    dec c                                         ; $5b60: $0d
    dec l                                         ; $5b61: $2d
    dec c                                         ; $5b62: $0d
    db $fc                                        ; $5b63: $fc
    ld [c], a                                     ; $5b64: $e2
    ld sp, hl                                     ; $5b65: $f9
    db $e4                                        ; $5b66: $e4
    dec c                                         ; $5b67: $0d
    dec l                                         ; $5b68: $2d
    pop bc                                        ; $5b69: $c1
    dec l                                         ; $5b6a: $2d
    rst $28                                       ; $5b6b: $ef
    pop hl                                        ; $5b6c: $e1
    db $fd                                        ; $5b6d: $fd
    ld [c], a                                     ; $5b6e: $e2
    or $e6                                        ; $5b6f: $f6 $e6
    db $ec                                        ; $5b71: $ec
    rst $20                                       ; $5b72: $e7
    ld [c], a                                     ; $5b73: $e2
    db $f4                                        ; $5b74: $f4
    ld c, l                                       ; $5b75: $4d
    ld c, l                                       ; $5b76: $4d
    cp $cf                                        ; $5b77: $fe $cf
    db $e3                                        ; $5b79: $e3
    ld c, l                                       ; $5b7a: $4d
    ld l, l                                       ; $5b7b: $6d
    ld e, h                                       ; $5b7c: $5c
    ld bc, $0000                                  ; $5b7d: $01 $00 $00
    ld bc, $fcfe                                  ; $5b80: $01 $fe $fc
    pop hl                                        ; $5b83: $e1
    ld e, h                                       ; $5b84: $5c
    ld e, [hl]                                    ; $5b85: $5e
    ld e, a                                       ; $5b86: $5f
    dec b                                         ; $5b87: $05
    dec b                                         ; $5b88: $05
    ld b, $07                                     ; $5b89: $06 $07
    rst $38                                       ; $5b8b: $ff
    dec b                                         ; $5b8c: $05
    dec b                                         ; $5b8d: $05
    ld e, a                                       ; $5b8e: $5f

jr_043_5b8f:
    ld e, [hl]                                    ; $5b8f: $5e
    ld h, b                                       ; $5b90: $60
    ld h, c                                       ; $5b91: $61
    inc de                                        ; $5b92: $13
    db $10                                        ; $5b93: $10
    rst $38                                       ; $5b94: $ff
    ld de, $1312                                  ; $5b95: $11 $12 $13
    inc de                                        ; $5b98: $13
    ld h, c                                       ; $5b99: $61
    ld h, b                                       ; $5b9a: $60
    ld h, d                                       ; $5b9b: $62
    ld h, e                                       ; $5b9c: $63
    rst $38                                       ; $5b9d: $ff
    ld c, d                                       ; $5b9e: $4a
    ld e, $1f                                     ; $5b9f: $1e $1f
    jr nz, jr_043_5bc4                            ; $5ba1: $20 $21

    ld c, d                                       ; $5ba3: $4a
    ld h, e                                       ; $5ba4: $63
    ld h, d                                       ; $5ba5: $62
    xor $e2                                       ; $5ba6: $ee $e2
    ldh [$2e], a                                  ; $5ba8: $e0 $2e
    cpl                                           ; $5baa: $2f
    jr nc, jr_043_5b8f                            ; $5bab: $30 $e2

    db $e4                                        ; $5bad: $e4
    dec sp                                        ; $5bae: $3b
    inc a                                         ; $5baf: $3c
    dec a                                         ; $5bb0: $3d
    cp l                                          ; $5bb1: $bd
    ld a, $e2                                     ; $5bb2: $3e $e2
    db $e3                                        ; $5bb4: $e3
    ld c, e                                       ; $5bb5: $4b
    ld c, h                                       ; $5bb6: $4c
    ld c, l                                       ; $5bb7: $4d
    ld c, [hl]                                    ; $5bb8: $4e
    ld [c], a                                     ; $5bb9: $e2
    ldh [$5c], a                                  ; $5bba: $e0 $5c
    rst $38                                       ; $5bbc: $ff
    ld bc, $5864                                  ; $5bbd: $01 $64 $58
    ld e, c                                       ; $5bc0: $59
    ld e, d                                       ; $5bc1: $5a
    ld e, e                                       ; $5bc2: $5b
    ld h, h                                       ; $5bc3: $64

jr_043_5bc4:
    ld bc, $5c01                                  ; $5bc4: $01 $01 $5c
    nop                                           ; $5bc7: $00
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    rst $08                                       ; $5bca: $cf
    dec c                                         ; $5bcb: $0d
    dec c                                         ; $5bcc: $0d
    dec l                                         ; $5bcd: $2d
    dec c                                         ; $5bce: $0d
    db $fc                                        ; $5bcf: $fc
    ld [c], a                                     ; $5bd0: $e2
    ld sp, hl                                     ; $5bd1: $f9
    db $e4                                        ; $5bd2: $e4
    dec c                                         ; $5bd3: $0d
    dec l                                         ; $5bd4: $2d
    pop bc                                        ; $5bd5: $c1
    dec l                                         ; $5bd6: $2d
    rst $28                                       ; $5bd7: $ef
    pop hl                                        ; $5bd8: $e1
    db $fd                                        ; $5bd9: $fd
    ld [c], a                                     ; $5bda: $e2
    or $e6                                        ; $5bdb: $f6 $e6
    db $ec                                        ; $5bdd: $ec
    rst $20                                       ; $5bde: $e7
    ld [c], a                                     ; $5bdf: $e2
    db $f4                                        ; $5be0: $f4
    ld c, l                                       ; $5be1: $4d
    ld c, l                                       ; $5be2: $4d
    cp $cf                                        ; $5be3: $fe $cf
    db $e3                                        ; $5be5: $e3
    ld c, l                                       ; $5be6: $4d
    ld l, l                                       ; $5be7: $6d
    ld e, h                                       ; $5be8: $5c
    ld bc, $0000                                  ; $5be9: $01 $00 $00
    ld bc, $fcfe                                  ; $5bec: $01 $fe $fc
    pop hl                                        ; $5bef: $e1
    ld e, h                                       ; $5bf0: $5c
    ld e, [hl]                                    ; $5bf1: $5e
    ld e, a                                       ; $5bf2: $5f
    dec b                                         ; $5bf3: $05
    dec b                                         ; $5bf4: $05
    ld [$ff09], sp                                ; $5bf5: $08 $09 $ff
    dec b                                         ; $5bf8: $05
    dec b                                         ; $5bf9: $05
    ld e, a                                       ; $5bfa: $5f
    ld e, [hl]                                    ; $5bfb: $5e
    ld h, b                                       ; $5bfc: $60
    ld h, c                                       ; $5bfd: $61
    inc de                                        ; $5bfe: $13
    inc d                                         ; $5bff: $14
    rst $38                                       ; $5c00: $ff
    dec d                                         ; $5c01: $15
    ld d, $13                                     ; $5c02: $16 $13
    inc de                                        ; $5c04: $13
    ld h, c                                       ; $5c05: $61
    ld h, b                                       ; $5c06: $60
    ld h, d                                       ; $5c07: $62
    ld h, e                                       ; $5c08: $63
    rst $38                                       ; $5c09: $ff
    ld c, d                                       ; $5c0a: $4a
    ld [hl+], a                                   ; $5c0b: $22
    inc hl                                        ; $5c0c: $23
    inc h                                         ; $5c0d: $24
    dec h                                         ; $5c0e: $25
    ld c, d                                       ; $5c0f: $4a
    ld h, e                                       ; $5c10: $63
    ld h, d                                       ; $5c11: $62
    sbc $e2                                       ; $5c12: $de $e2
    ldh [$31], a                                  ; $5c14: $e0 $31
    ld [hl-], a                                   ; $5c16: $32
    inc sp                                        ; $5c17: $33
    inc [hl]                                      ; $5c18: $34
    ld [c], a                                     ; $5c19: $e2
    db $e3                                        ; $5c1a: $e3
    ccf                                           ; $5c1b: $3f
    ld b, b                                       ; $5c1c: $40
    ld a, e                                       ; $5c1d: $7b
    ld b, c                                       ; $5c1e: $41
    ld b, d                                       ; $5c1f: $42
    ld [c], a                                     ; $5c20: $e2
    db $e3                                        ; $5c21: $e3
    ld c, a                                       ; $5c22: $4f
    ld d, b                                       ; $5c23: $50
    ld d, c                                       ; $5c24: $51
    ld c, d                                       ; $5c25: $4a
    ld [c], a                                     ; $5c26: $e2
    ldh [rIE], a                                  ; $5c27: $e0 $ff
    ld e, h                                       ; $5c29: $5c
    ld bc, $5864                                  ; $5c2a: $01 $64 $58
    ld e, c                                       ; $5c2d: $59
    ld e, d                                       ; $5c2e: $5a
    ld e, e                                       ; $5c2f: $5b
    ld h, h                                       ; $5c30: $64
    inc bc                                        ; $5c31: $03
    ld bc, $005c                                  ; $5c32: $01 $5c $00
    nop                                           ; $5c35: $00
    nop                                           ; $5c36: $00
    rst $08                                       ; $5c37: $cf
    dec c                                         ; $5c38: $0d
    dec c                                         ; $5c39: $0d
    dec l                                         ; $5c3a: $2d
    dec c                                         ; $5c3b: $0d
    db $fc                                        ; $5c3c: $fc
    ld [c], a                                     ; $5c3d: $e2
    ld sp, hl                                     ; $5c3e: $f9
    db $e4                                        ; $5c3f: $e4
    dec c                                         ; $5c40: $0d
    dec l                                         ; $5c41: $2d
    add c                                         ; $5c42: $81
    dec l                                         ; $5c43: $2d
    rst $28                                       ; $5c44: $ef
    pop hl                                        ; $5c45: $e1
    db $fd                                        ; $5c46: $fd
    ld [c], a                                     ; $5c47: $e2
    or $e6                                        ; $5c48: $f6 $e6
    db $ec                                        ; $5c4a: $ec
    and $e3                                       ; $5c4b: $e6 $e3
    ldh [$e2], a                                  ; $5c4d: $e0 $e2
    ld a, [c]                                     ; $5c4f: $f2
    ld c, l                                       ; $5c50: $4d
    db $fd                                        ; $5c51: $fd
    ld c, l                                       ; $5c52: $4d
    rst $08                                       ; $5c53: $cf
    db $e3                                        ; $5c54: $e3
    ld c, l                                       ; $5c55: $4d
    ld l, l                                       ; $5c56: $6d
    ld e, h                                       ; $5c57: $5c
    ld bc, $0000                                  ; $5c58: $01 $00 $00
    db $fd                                        ; $5c5b: $fd
    ld bc, $e1fc                                  ; $5c5c: $01 $fc $e1
    ld e, h                                       ; $5c5f: $5c
    ld e, [hl]                                    ; $5c60: $5e
    ld e, a                                       ; $5c61: $5f
    dec b                                         ; $5c62: $05
    dec b                                         ; $5c63: $05
    ld a, [bc]                                    ; $5c64: $0a
    rst $38                                       ; $5c65: $ff
    dec bc                                        ; $5c66: $0b
    dec b                                         ; $5c67: $05
    dec b                                         ; $5c68: $05
    ld e, a                                       ; $5c69: $5f
    ld e, [hl]                                    ; $5c6a: $5e
    ld h, b                                       ; $5c6b: $60
    ld h, c                                       ; $5c6c: $61
    inc de                                        ; $5c6d: $13
    rst $38                                       ; $5c6e: $ff
    rla                                           ; $5c6f: $17
    jr jr_043_5c8b                                ; $5c70: $18 $19

    inc de                                        ; $5c72: $13
    inc de                                        ; $5c73: $13
    ld h, c                                       ; $5c74: $61
    ld h, b                                       ; $5c75: $60
    ld h, d                                       ; $5c76: $62
    rst $38                                       ; $5c77: $ff
    ld h, e                                       ; $5c78: $63
    ld c, d                                       ; $5c79: $4a
    ld h, $27                                     ; $5c7a: $26 $27
    jr z, jr_043_5ca7                             ; $5c7c: $28 $29

    ld c, d                                       ; $5c7e: $4a
    ld h, e                                       ; $5c7f: $63
    cp l                                          ; $5c80: $bd
    ld h, d                                       ; $5c81: $62
    ld [c], a                                     ; $5c82: $e2
    ldh [rSC], a                                  ; $5c83: $e0 $02
    dec [hl]                                      ; $5c85: $35
    ld [hl], $02                                  ; $5c86: $36 $02
    ld [c], a                                     ; $5c88: $e2
    db $e3                                        ; $5c89: $e3
    ld b, e                                       ; $5c8a: $43

jr_043_5c8b:
    rst $30                                       ; $5c8b: $f7
    ld b, h                                       ; $5c8c: $44
    ld b, l                                       ; $5c8d: $45
    ld b, [hl]                                    ; $5c8e: $46
    ld [c], a                                     ; $5c8f: $e2
    db $e3                                        ; $5c90: $e3
    ld d, d                                       ; $5c91: $52
    ld d, e                                       ; $5c92: $53
    ld d, c                                       ; $5c93: $51
    ld c, d                                       ; $5c94: $4a
    cp $e2                                        ; $5c95: $fe $e2
    ldh [$5c], a                                  ; $5c97: $e0 $5c
    ld bc, $5864                                  ; $5c99: $01 $64 $58
    ld e, c                                       ; $5c9c: $59
    ld e, d                                       ; $5c9d: $5a
    ld e, e                                       ; $5c9e: $5b
    rlca                                          ; $5c9f: $07
    ld h, h                                       ; $5ca0: $64
    ld bc, $005c                                  ; $5ca1: $01 $5c $00
    nop                                           ; $5ca4: $00
    nop                                           ; $5ca5: $00
    adc a                                         ; $5ca6: $8f

jr_043_5ca7:
    dec c                                         ; $5ca7: $0d
    dec c                                         ; $5ca8: $0d
    dec l                                         ; $5ca9: $2d
    dec c                                         ; $5caa: $0d
    db $fc                                        ; $5cab: $fc
    ld [c], a                                     ; $5cac: $e2
    db $fd                                        ; $5cad: $fd
    db $e3                                        ; $5cae: $e3
    ld a, [c]                                     ; $5caf: $f2
    ldh [$2d], a                                  ; $5cb0: $e0 $2d
    add b                                         ; $5cb2: $80
    rst $28                                       ; $5cb3: $ef
    pop hl                                        ; $5cb4: $e1
    db $fd                                        ; $5cb5: $fd
    ld [c], a                                     ; $5cb6: $e2
    and $e4                                       ; $5cb7: $e6 $e4
    ldh [$e1], a                                  ; $5cb9: $e0 $e1
    ld [c], a                                     ; $5cbb: $e2
    db $e4                                        ; $5cbc: $e4
    or $e3                                        ; $5cbd: $f6 $e3
    ld [c], a                                     ; $5cbf: $e2
    rst $28                                       ; $5cc0: $ef
    ld c, l                                       ; $5cc1: $4d
    db $fd                                        ; $5cc2: $fd
    ld c, l                                       ; $5cc3: $4d
    rst $08                                       ; $5cc4: $cf
    db $e3                                        ; $5cc5: $e3
    ld c, l                                       ; $5cc6: $4d
    ld l, l                                       ; $5cc7: $6d
    ld c, a                                       ; $5cc8: $4f
    ld bc, $0000                                  ; $5cc9: $01 $00 $00
    db $fd                                        ; $5ccc: $fd
    ld bc, $e1fc                                  ; $5ccd: $01 $fc $e1
    ld c, a                                       ; $5cd0: $4f
    ld d, c                                       ; $5cd1: $51
    ld d, d                                       ; $5cd2: $52
    ld [bc], a                                    ; $5cd3: $02
    ld [bc], a                                    ; $5cd4: $02
    inc bc                                        ; $5cd5: $03
    rst $38                                       ; $5cd6: $ff
    inc b                                         ; $5cd7: $04
    ld [bc], a                                    ; $5cd8: $02
    ld [bc], a                                    ; $5cd9: $02
    ld d, d                                       ; $5cda: $52
    ld d, c                                       ; $5cdb: $51
    ld d, e                                       ; $5cdc: $53
    ld d, h                                       ; $5cdd: $54
    db $10                                        ; $5cde: $10
    rst $38                                       ; $5cdf: $ff
    add hl, bc                                    ; $5ce0: $09
    ld a, [bc]                                    ; $5ce1: $0a
    dec bc                                        ; $5ce2: $0b
    inc c                                         ; $5ce3: $0c
    db $10                                        ; $5ce4: $10
    ld d, h                                       ; $5ce5: $54
    ld d, l                                       ; $5ce6: $55
    ld d, [hl]                                    ; $5ce7: $56
    rst $38                                       ; $5ce8: $ff
    ld d, a                                       ; $5ce9: $57
    dec a                                         ; $5cea: $3d
    dec d                                         ; $5ceb: $15
    ld d, $17                                     ; $5cec: $16 $17
    jr jr_043_5d2d                                ; $5cee: $18 $3d

    ld d, a                                       ; $5cf0: $57
    cp l                                          ; $5cf1: $bd
    ld d, [hl]                                    ; $5cf2: $56
    ld [c], a                                     ; $5cf3: $e2
    ldh [rNR41], a                                ; $5cf4: $e0 $20
    ld hl, $2322                                  ; $5cf6: $21 $22 $23
    ld [c], a                                     ; $5cf9: $e2
    db $e3                                        ; $5cfa: $e3
    ld l, $f7                                     ; $5cfb: $2e $f7
    cpl                                           ; $5cfd: $2f
    jr nc, jr_043_5d10                            ; $5cfe: $30 $10

    ld [c], a                                     ; $5d00: $e2
    db $e3                                        ; $5d01: $e3
    add hl, sp                                    ; $5d02: $39
    ld a, [hl-]                                   ; $5d03: $3a
    dec sp                                        ; $5d04: $3b
    inc a                                         ; $5d05: $3c
    cp $e2                                        ; $5d06: $fe $e2
    ldh [rVBK], a                                 ; $5d08: $e0 $4f
    ld bc, $4458                                  ; $5d0a: $01 $58 $44
    ld b, l                                       ; $5d0d: $45
    ld b, [hl]                                    ; $5d0e: $46
    ld b, a                                       ; $5d0f: $47

jr_043_5d10:
    rlca                                          ; $5d10: $07
    ld e, b                                       ; $5d11: $58
    ld bc, $004f                                  ; $5d12: $01 $4f $00
    nop                                           ; $5d15: $00
    nop                                           ; $5d16: $00
    adc a                                         ; $5d17: $8f
    dec c                                         ; $5d18: $0d
    dec c                                         ; $5d19: $0d
    dec l                                         ; $5d1a: $2d
    dec c                                         ; $5d1b: $0d
    db $fc                                        ; $5d1c: $fc
    ld [c], a                                     ; $5d1d: $e2
    db $fd                                        ; $5d1e: $fd
    db $e3                                        ; $5d1f: $e3
    ld a, [c]                                     ; $5d20: $f2
    ldh [$2d], a                                  ; $5d21: $e0 $2d
    nop                                           ; $5d23: $00
    rst $28                                       ; $5d24: $ef
    pop hl                                        ; $5d25: $e1
    db $fd                                        ; $5d26: $fd
    ld [c], a                                     ; $5d27: $e2
    and $e4                                       ; $5d28: $e6 $e4
    ldh [$e1], a                                  ; $5d2a: $e0 $e1
    ld [c], a                                     ; $5d2c: $e2

jr_043_5d2d:
    db $e4                                        ; $5d2d: $e4
    or $e3                                        ; $5d2e: $f6 $e3
    ld [c], a                                     ; $5d30: $e2
    db $eb                                        ; $5d31: $eb
    adc $e1                                       ; $5d32: $ce $e1
    ei                                            ; $5d34: $fb
    ld c, l                                       ; $5d35: $4d
    ld c, l                                       ; $5d36: $4d
    rst $08                                       ; $5d37: $cf
    db $e3                                        ; $5d38: $e3
    ld c, l                                       ; $5d39: $4d
    ld l, l                                       ; $5d3a: $6d
    ld c, a                                       ; $5d3b: $4f
    ld bc, $fb00                                  ; $5d3c: $01 $00 $fb
    nop                                           ; $5d3f: $00
    ld bc, $e1fc                                  ; $5d40: $01 $fc $e1
    ld c, a                                       ; $5d43: $4f
    ld d, c                                       ; $5d44: $51
    ld d, d                                       ; $5d45: $52
    ld [bc], a                                    ; $5d46: $02
    ld [bc], a                                    ; $5d47: $02
    rst $38                                       ; $5d48: $ff
    dec b                                         ; $5d49: $05
    ld b, $02                                     ; $5d4a: $06 $02
    ld [bc], a                                    ; $5d4c: $02
    ld d, d                                       ; $5d4d: $52
    ld d, c                                       ; $5d4e: $51
    ld d, e                                       ; $5d4f: $53
    ld d, h                                       ; $5d50: $54
    rst $38                                       ; $5d51: $ff
    db $10                                        ; $5d52: $10
    dec c                                         ; $5d53: $0d
    ld c, $0f                                     ; $5d54: $0e $0f
    db $10                                        ; $5d56: $10
    db $10                                        ; $5d57: $10
    ld d, h                                       ; $5d58: $54
    ld d, l                                       ; $5d59: $55
    rst $38                                       ; $5d5a: $ff
    ld d, [hl]                                    ; $5d5b: $56
    ld d, a                                       ; $5d5c: $57
    dec a                                         ; $5d5d: $3d
    add hl, de                                    ; $5d5e: $19
    ld a, [de]                                    ; $5d5f: $1a
    dec de                                        ; $5d60: $1b
    inc e                                         ; $5d61: $1c
    dec a                                         ; $5d62: $3d
    ld a, e                                       ; $5d63: $7b
    ld d, a                                       ; $5d64: $57
    ld d, [hl]                                    ; $5d65: $56
    ld [c], a                                     ; $5d66: $e2
    ldh [rNR50], a                                ; $5d67: $e0 $24
    dec h                                         ; $5d69: $25
    ld h, $27                                     ; $5d6a: $26 $27
    ld [c], a                                     ; $5d6c: $e2
    db $e3                                        ; $5d6d: $e3
    rst $28                                       ; $5d6e: $ef
    ld sp, $3332                                  ; $5d6f: $31 $32 $33
    inc [hl]                                      ; $5d72: $34
    ld [c], a                                     ; $5d73: $e2
    db $e3                                        ; $5d74: $e3
    dec a                                         ; $5d75: $3d
    ld a, $3f                                     ; $5d76: $3e $3f
    db $fd                                        ; $5d78: $fd
    dec a                                         ; $5d79: $3d
    ld [c], a                                     ; $5d7a: $e2
    ldh [rVBK], a                                 ; $5d7b: $e0 $4f
    ld bc, $4858                                  ; $5d7d: $01 $58 $48
    ld c, c                                       ; $5d80: $49
    ld c, d                                       ; $5d81: $4a
    rrca                                          ; $5d82: $0f
    ld c, e                                       ; $5d83: $4b
    ld e, b                                       ; $5d84: $58
    ld bc, $004f                                  ; $5d85: $01 $4f $00
    nop                                           ; $5d88: $00
    nop                                           ; $5d89: $00
    adc a                                         ; $5d8a: $8f
    dec c                                         ; $5d8b: $0d
    dec c                                         ; $5d8c: $0d
    dec l                                         ; $5d8d: $2d
    dec c                                         ; $5d8e: $0d
    db $fc                                        ; $5d8f: $fc
    ld [c], a                                     ; $5d90: $e2
    db $fd                                        ; $5d91: $fd
    db $e3                                        ; $5d92: $e3
    ld a, [c]                                     ; $5d93: $f2
    ldh [$2d], a                                  ; $5d94: $e0 $2d
    add b                                         ; $5d96: $80
    rst $28                                       ; $5d97: $ef
    and $e6                                       ; $5d98: $e6 $e6
    db $e4                                        ; $5d9a: $e4
    db $ec                                        ; $5d9b: $ec
    db $e4                                        ; $5d9c: $e4
    add sp, -$1e                                  ; $5d9d: $e8 $e2
    ld a, [$e6e5]                                 ; $5d9f: $fa $e5 $e6
    push hl                                       ; $5da2: $e5
    db $d3                                        ; $5da3: $d3
    db $e3                                        ; $5da4: $e3
    dec l                                         ; $5da5: $2d
    ei                                            ; $5da6: $fb
    ld c, l                                       ; $5da7: $4d
    ld c, l                                       ; $5da8: $4d
    db $dd                                        ; $5da9: $dd
    db $e3                                        ; $5daa: $e3
    ld c, l                                       ; $5dab: $4d
    ld l, l                                       ; $5dac: $6d
    ld c, a                                       ; $5dad: $4f
    ld bc, $fb00                                  ; $5dae: $01 $00 $fb
    nop                                           ; $5db1: $00
    ld bc, $e1fc                                  ; $5db2: $01 $fc $e1
    ld c, a                                       ; $5db5: $4f
    ld d, c                                       ; $5db6: $51
    ld d, d                                       ; $5db7: $52
    ld [bc], a                                    ; $5db8: $02
    ld [bc], a                                    ; $5db9: $02
    rst $38                                       ; $5dba: $ff
    rlca                                          ; $5dbb: $07
    ld [$0202], sp                                ; $5dbc: $08 $02 $02
    ld d, d                                       ; $5dbf: $52
    ld d, c                                       ; $5dc0: $51
    ld d, e                                       ; $5dc1: $53
    ld d, h                                       ; $5dc2: $54
    rst $38                                       ; $5dc3: $ff
    db $10                                        ; $5dc4: $10
    inc c                                         ; $5dc5: $0c
    ld de, $0912                                  ; $5dc6: $11 $12 $09
    db $10                                        ; $5dc9: $10
    ld d, h                                       ; $5dca: $54
    ld d, l                                       ; $5dcb: $55
    rst $38                                       ; $5dcc: $ff
    ld d, [hl]                                    ; $5dcd: $56
    ld d, a                                       ; $5dce: $57
    dec a                                         ; $5dcf: $3d
    dec e                                         ; $5dd0: $1d
    ld e, $1f                                     ; $5dd1: $1e $1f
    dec d                                         ; $5dd3: $15
    dec a                                         ; $5dd4: $3d
    ld a, e                                       ; $5dd5: $7b
    ld d, a                                       ; $5dd6: $57
    ld d, [hl]                                    ; $5dd7: $56
    ld [c], a                                     ; $5dd8: $e2
    ldh [rNR44], a                                ; $5dd9: $e0 $23
    jr z, jr_043_5e06                             ; $5ddb: $28 $29

    ld a, [hl+]                                   ; $5ddd: $2a
    ld [c], a                                     ; $5dde: $e2
    db $e3                                        ; $5ddf: $e3
    rst $28                                       ; $5de0: $ef
    db $10                                        ; $5de1: $10
    jr nc, jr_043_5e19                            ; $5de2: $30 $35

    ld [hl], $e2                                  ; $5de4: $36 $e2
    db $e3                                        ; $5de6: $e3
    inc a                                         ; $5de7: $3c
    dec sp                                        ; $5de8: $3b
    ld b, b                                       ; $5de9: $40
    db $fd                                        ; $5dea: $fd
    ld b, c                                       ; $5deb: $41
    ld [c], a                                     ; $5dec: $e2
    ldh [rVBK], a                                 ; $5ded: $e0 $4f
    ld bc, $4758                                  ; $5def: $01 $58 $47
    ld b, [hl]                                    ; $5df2: $46
    ld c, h                                       ; $5df3: $4c
    rrca                                          ; $5df4: $0f
    ld c, l                                       ; $5df5: $4d
    ld e, b                                       ; $5df6: $58
    ld bc, $004f                                  ; $5df7: $01 $4f $00
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    rst $08                                       ; $5dfc: $cf
    dec c                                         ; $5dfd: $0d
    dec c                                         ; $5dfe: $0d
    dec l                                         ; $5dff: $2d
    dec c                                         ; $5e00: $0d
    db $fc                                        ; $5e01: $fc
    ld [c], a                                     ; $5e02: $e2
    db $fd                                        ; $5e03: $fd
    ld [c], a                                     ; $5e04: $e2
    dec l                                         ; $5e05: $2d

jr_043_5e06:
    dec l                                         ; $5e06: $2d
    nop                                           ; $5e07: $00
    db $fc                                        ; $5e08: $fc
    pop hl                                        ; $5e09: $e1
    rst $28                                       ; $5e0a: $ef
    ldh [$ec], a                                  ; $5e0b: $e0 $ec
    ld [c], a                                     ; $5e0d: $e2
    and $e2                                       ; $5e0e: $e6 $e2
    rst $38                                       ; $5e10: $ff
    pop hl                                        ; $5e11: $e1
    db $ec                                        ; $5e12: $ec
    ld [c], a                                     ; $5e13: $e2
    ret c                                         ; $5e14: $d8

    db $e3                                        ; $5e15: $e3
    ld [c], a                                     ; $5e16: $e2
    db $e3                                        ; $5e17: $e3
    db $ec                                        ; $5e18: $ec

jr_043_5e19:
    ldh a, [$e7]                                  ; $5e19: $f0 $e7
    jp z, Jump_043_4de3                           ; $5e1b: $ca $e3 $4d

    ld c, l                                       ; $5e1e: $4d
    call Call_043_4de3                            ; $5e1f: $cd $e3 $4d
    ld l, l                                       ; $5e22: $6d
    ld c, a                                       ; $5e23: $4f
    rst $28                                       ; $5e24: $ef
    ld bc, $0000                                  ; $5e25: $01 $00 $00
    ld bc, $e1fc                                  ; $5e28: $01 $fc $e1
    ld c, a                                       ; $5e2b: $4f
    ld d, c                                       ; $5e2c: $51
    ld d, d                                       ; $5e2d: $52
    rst $38                                       ; $5e2e: $ff
    ld [bc], a                                    ; $5e2f: $02
    ld [bc], a                                    ; $5e30: $02
    ld b, $05                                     ; $5e31: $06 $05
    ld [bc], a                                    ; $5e33: $02
    ld [bc], a                                    ; $5e34: $02
    ld d, d                                       ; $5e35: $52
    ld d, c                                       ; $5e36: $51
    rst $38                                       ; $5e37: $ff
    ld d, e                                       ; $5e38: $53
    ld d, h                                       ; $5e39: $54
    db $10                                        ; $5e3a: $10
    db $10                                        ; $5e3b: $10
    inc de                                        ; $5e3c: $13
    inc d                                         ; $5e3d: $14

jr_043_5e3e:
    dec c                                         ; $5e3e: $0d
    db $10                                        ; $5e3f: $10
    rst $38                                       ; $5e40: $ff
    ld d, h                                       ; $5e41: $54
    ld d, l                                       ; $5e42: $55
    ld d, [hl]                                    ; $5e43: $56
    ld d, a                                       ; $5e44: $57
    dec a                                         ; $5e45: $3d
    inc e                                         ; $5e46: $1c
    dec de                                        ; $5e47: $1b
    ld a, [de]                                    ; $5e48: $1a
    rst $28                                       ; $5e49: $ef
    add hl, de                                    ; $5e4a: $19
    dec a                                         ; $5e4b: $3d
    ld d, a                                       ; $5e4c: $57
    ld d, [hl]                                    ; $5e4d: $56
    ld [c], a                                     ; $5e4e: $e2
    ldh [$2b], a                                  ; $5e4f: $e0 $2b
    inc l                                         ; $5e51: $2c
    dec l                                         ; $5e52: $2d
    cp l                                          ; $5e53: $bd
    inc h                                         ; $5e54: $24
    ld [c], a                                     ; $5e55: $e2
    db $e3                                        ; $5e56: $e3
    scf                                           ; $5e57: $37
    inc sp                                        ; $5e58: $33
    ld [hl-], a                                   ; $5e59: $32
    jr c, jr_043_5e3e                             ; $5e5a: $38 $e2

    db $e3                                        ; $5e5c: $e3
    dec a                                         ; $5e5d: $3d
    rst $30                                       ; $5e5e: $f7
    ld b, d                                       ; $5e5f: $42
    ld b, e                                       ; $5e60: $43
    dec a                                         ; $5e61: $3d
    ld [c], a                                     ; $5e62: $e2
    ldh [rVBK], a                                 ; $5e63: $e0 $4f
    ld bc, $4858                                  ; $5e65: $01 $58 $48
    ccf                                           ; $5e68: $3f
    ld c, c                                       ; $5e69: $49
    ld c, [hl]                                    ; $5e6a: $4e
    ld c, e                                       ; $5e6b: $4b
    ld e, b                                       ; $5e6c: $58
    ld bc, $004f                                  ; $5e6d: $01 $4f $00
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    ld h, l                                       ; $5e72: $65
    dec c                                         ; $5e73: $0d
    rst $38                                       ; $5e74: $ff
    push hl                                       ; $5e75: $e5
    dec l                                         ; $5e76: $2d
    or $e6                                        ; $5e77: $f6 $e6
    rst $30                                       ; $5e79: $f7
    add sp, $4d                                   ; $5e7a: $e8 $4d
    ld c, l                                       ; $5e7c: $4d
    ld hl, sp-$15                                 ; $5e7d: $f8 $eb
    db $fc                                        ; $5e7f: $fc
    ld [c], a                                     ; $5e80: $e2
    push af                                       ; $5e81: $f5
    ret c                                         ; $5e82: $d8

    and $6d                                       ; $5e83: $e6 $6d
    inc bc                                        ; $5e85: $03
    ld bc, $0002                                  ; $5e86: $01 $02 $00
    ld bc, $fc7e                                  ; $5e89: $01 $7e $fc
    pop hl                                        ; $5e8c: $e1
    inc bc                                        ; $5e8d: $03
    dec bc                                        ; $5e8e: $0b
    rlca                                          ; $5e8f: $07
    ld [$0605], sp                                ; $5e90: $08 $05 $06
    db $fc                                        ; $5e93: $fc
    ldh [rIE], a                                  ; $5e94: $e0 $ff
    ld b, l                                       ; $5e96: $45
    ld b, [hl]                                    ; $5e97: $46
    inc d                                         ; $5e98: $14
    dec d                                         ; $5e99: $15
    ld d, $0c                                     ; $5e9a: $16 $0c
    dec c                                         ; $5e9c: $0d
    ld c, $ff                                     ; $5e9d: $0e $ff
    rrca                                          ; $5e9f: $0f
    ld d, $4f                                     ; $5ea0: $16 $4f
    ld d, b                                       ; $5ea2: $50
    dec bc                                        ; $5ea3: $0b
    rlca                                          ; $5ea4: $07
    rra                                           ; $5ea5: $1f
    rla                                           ; $5ea6: $17
    cp a                                          ; $5ea7: $bf
    jr jr_043_5ec3                                ; $5ea8: $18 $19

    ld a, [de]                                    ; $5eaa: $1a
    ld e, c                                       ; $5eab: $59
    ld b, l                                       ; $5eac: $45
    ld b, [hl]                                    ; $5ead: $46
    ld [c], a                                     ; $5eae: $e2
    ldh [rNR41], a                                ; $5eaf: $e0 $20
    rst $30                                       ; $5eb1: $f7
    ld hl, $2322                                  ; $5eb2: $21 $22 $23
    ld [c], a                                     ; $5eb5: $e2
    db $e3                                        ; $5eb6: $e3
    jr z, jr_043_5ee2                             ; $5eb7: $28 $29

    ld a, [hl+]                                   ; $5eb9: $2a
    dec hl                                        ; $5eba: $2b
    sbc $e2                                       ; $5ebb: $de $e2
    db $e3                                        ; $5ebd: $e3
    cpl                                           ; $5ebe: $2f
    jr nc, @+$33                                  ; $5ebf: $30 $31

    ld [hl-], a                                   ; $5ec1: $32
    ld [c], a                                     ; $5ec2: $e2

jr_043_5ec3:
    ldh [$03], a                                  ; $5ec3: $e0 $03
    ld bc, $3fff                                  ; $5ec5: $01 $ff $3f
    scf                                           ; $5ec8: $37
    jr c, jr_043_5f04                             ; $5ec9: $38 $39

    ld a, [hl-]                                   ; $5ecb: $3a
    ld [hl], d                                    ; $5ecc: $72
    ld bc, $0003                                  ; $5ecd: $01 $03 $00
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    ld h, l                                       ; $5ed2: $65
    dec c                                         ; $5ed3: $0d
    rst $38                                       ; $5ed4: $ff
    push hl                                       ; $5ed5: $e5
    dec l                                         ; $5ed6: $2d
    or $e6                                        ; $5ed7: $f6 $e6
    rst $30                                       ; $5ed9: $f7
    add sp, $4d                                   ; $5eda: $e8 $4d
    ld c, l                                       ; $5edc: $4d
    ld hl, sp-$15                                 ; $5edd: $f8 $eb
    db $fc                                        ; $5edf: $fc
    ld [c], a                                     ; $5ee0: $e2
    push af                                       ; $5ee1: $f5

jr_043_5ee2:
    ret c                                         ; $5ee2: $d8

    and $6d                                       ; $5ee3: $e6 $6d
    inc bc                                        ; $5ee5: $03
    ld bc, $0002                                  ; $5ee6: $01 $02 $00
    ld bc, $fcfe                                  ; $5ee9: $01 $fe $fc
    pop hl                                        ; $5eec: $e1
    inc bc                                        ; $5eed: $03
    dec bc                                        ; $5eee: $0b
    rlca                                          ; $5eef: $07
    ld [$0905], sp                                ; $5ef0: $08 $05 $09
    ld a, [bc]                                    ; $5ef3: $0a
    rst $38                                       ; $5ef4: $ff
    ld [$4505], sp                                ; $5ef5: $08 $05 $45
    ld b, [hl]                                    ; $5ef8: $46
    inc d                                         ; $5ef9: $14
    dec d                                         ; $5efa: $15
    ld d, $10                                     ; $5efb: $16 $10
    rst $38                                       ; $5efd: $ff
    ld de, $1312                                  ; $5efe: $11 $12 $13
    ld d, $4f                                     ; $5f01: $16 $4f
    ld d, b                                       ; $5f03: $50

jr_043_5f04:
    dec bc                                        ; $5f04: $0b
    rlca                                          ; $5f05: $07
    rst $38                                       ; $5f06: $ff
    rra                                           ; $5f07: $1f
    dec de                                        ; $5f08: $1b
    inc e                                         ; $5f09: $1c
    dec e                                         ; $5f0a: $1d
    ld e, $59                                     ; $5f0b: $1e $59
    ld b, l                                       ; $5f0d: $45
    ld b, [hl]                                    ; $5f0e: $46
    sbc $e2                                       ; $5f0f: $de $e2
    ldh [rNR50], a                                ; $5f11: $e0 $24
    dec h                                         ; $5f13: $25
    ld h, $27                                     ; $5f14: $26 $27
    ld [c], a                                     ; $5f16: $e2
    db $e3                                        ; $5f17: $e3
    inc l                                         ; $5f18: $2c
    dec l                                         ; $5f19: $2d
    ld a, e                                       ; $5f1a: $7b
    ld l, $16                                     ; $5f1b: $2e $16
    ld [c], a                                     ; $5f1d: $e2
    db $e3                                        ; $5f1e: $e3
    inc sp                                        ; $5f1f: $33
    inc [hl]                                      ; $5f20: $34
    dec [hl]                                      ; $5f21: $35
    ld [hl], $e2                                  ; $5f22: $36 $e2
    ldh [rIE], a                                  ; $5f24: $e0 $ff
    inc bc                                        ; $5f26: $03
    ld bc, $3b3f                                  ; $5f27: $01 $3f $3b
    inc a                                         ; $5f2a: $3c
    dec a                                         ; $5f2b: $3d
    ld a, $72                                     ; $5f2c: $3e $72
    inc bc                                        ; $5f2e: $03
    ld bc, $0003                                  ; $5f2f: $01 $03 $00
    nop                                           ; $5f32: $00
    nop                                           ; $5f33: $00
    ld h, l                                       ; $5f34: $65
    dec c                                         ; $5f35: $0d
    rst $38                                       ; $5f36: $ff
    push hl                                       ; $5f37: $e5
    dec l                                         ; $5f38: $2d
    or $e6                                        ; $5f39: $f6 $e6
    rst $30                                       ; $5f3b: $f7
    add sp, $4d                                   ; $5f3c: $e8 $4d
    ld c, l                                       ; $5f3e: $4d
    ld hl, sp-$15                                 ; $5f3f: $f8 $eb
    ld hl, sp-$1e                                 ; $5f41: $f8 $e2
    push af                                       ; $5f43: $f5
    ret c                                         ; $5f44: $d8

    pop hl                                        ; $5f45: $e1
    push de                                       ; $5f46: $d5
    pop hl                                        ; $5f47: $e1
    ld c, l                                       ; $5f48: $4d
    ld l, l                                       ; $5f49: $6d
    inc bc                                        ; $5f4a: $03
    ld bc, $fb02                                  ; $5f4b: $01 $02 $fb
    nop                                           ; $5f4e: $00
    ld bc, $e1fc                                  ; $5f4f: $01 $fc $e1
    inc bc                                        ; $5f52: $03
    dec bc                                        ; $5f53: $0b
    rlca                                          ; $5f54: $07
    ld [$ff40], sp                                ; $5f55: $08 $40 $ff
    ld b, c                                       ; $5f58: $41
    ld b, d                                       ; $5f59: $42
    ld [$4505], sp                                ; $5f5a: $08 $05 $45
    ld b, [hl]                                    ; $5f5d: $46
    inc d                                         ; $5f5e: $14
    dec d                                         ; $5f5f: $15
    rst $38                                       ; $5f60: $ff
    ld d, $47                                     ; $5f61: $16 $47
    ld c, b                                       ; $5f63: $48
    ld c, c                                       ; $5f64: $49
    ld c, d                                       ; $5f65: $4a
    ld d, $4f                                     ; $5f66: $16 $4f
    ld d, b                                       ; $5f68: $50
    rst $38                                       ; $5f69: $ff
    dec bc                                        ; $5f6a: $0b
    rlca                                          ; $5f6b: $07
    rra                                           ; $5f6c: $1f
    ld d, c                                       ; $5f6d: $51
    ld d, d                                       ; $5f6e: $52
    ld d, e                                       ; $5f6f: $53
    ld d, h                                       ; $5f70: $54
    ld e, c                                       ; $5f71: $59
    ld a, e                                       ; $5f72: $7b
    ld b, l                                       ; $5f73: $45
    ld b, [hl]                                    ; $5f74: $46
    ld [c], a                                     ; $5f75: $e2
    ldh [$5a], a                                  ; $5f76: $e0 $5a
    ld e, e                                       ; $5f78: $5b
    ld e, h                                       ; $5f79: $5c
    ld e, l                                       ; $5f7a: $5d
    ld [c], a                                     ; $5f7b: $e2
    db $e3                                        ; $5f7c: $e3
    rst $28                                       ; $5f7d: $ef
    ld h, d                                       ; $5f7e: $62
    ld h, e                                       ; $5f7f: $63
    ld h, h                                       ; $5f80: $64
    ld h, l                                       ; $5f81: $65
    ld [c], a                                     ; $5f82: $e2
    db $e3                                        ; $5f83: $e3
    ld l, d                                       ; $5f84: $6a
    ld l, e                                       ; $5f85: $6b
    ld l, h                                       ; $5f86: $6c
    db $fd                                        ; $5f87: $fd
    ld l, l                                       ; $5f88: $6d
    ld [c], a                                     ; $5f89: $e2
    ldh [$03], a                                  ; $5f8a: $e0 $03
    ld bc, $723f                                  ; $5f8c: $01 $3f $72
    ld bc, $0f73                                  ; $5f8f: $01 $73 $0f
    ld [hl], h                                    ; $5f92: $74
    ld [hl], d                                    ; $5f93: $72
    ld bc, $0003                                  ; $5f94: $01 $03 $00
    nop                                           ; $5f97: $00
    nop                                           ; $5f98: $00
    ld h, l                                       ; $5f99: $65
    dec c                                         ; $5f9a: $0d
    rst $38                                       ; $5f9b: $ff
    push hl                                       ; $5f9c: $e5
    dec l                                         ; $5f9d: $2d
    or $e6                                        ; $5f9e: $f6 $e6
    rst $30                                       ; $5fa0: $f7
    add sp, $4d                                   ; $5fa1: $e8 $4d
    ld c, l                                       ; $5fa3: $4d
    ld hl, sp-$15                                 ; $5fa4: $f8 $eb
    db $fc                                        ; $5fa6: $fc
    ld [c], a                                     ; $5fa7: $e2
    push af                                       ; $5fa8: $f5
    ret c                                         ; $5fa9: $d8

    and $6d                                       ; $5faa: $e6 $6d
    inc bc                                        ; $5fac: $03
    ld bc, $0002                                  ; $5fad: $01 $02 $00
    ld bc, $fcfe                                  ; $5fb0: $01 $fe $fc
    pop hl                                        ; $5fb3: $e1
    inc bc                                        ; $5fb4: $03
    dec bc                                        ; $5fb5: $0b
    rlca                                          ; $5fb6: $07
    ld [$4305], sp                                ; $5fb7: $08 $05 $43
    ld b, h                                       ; $5fba: $44
    rst $38                                       ; $5fbb: $ff
    ld [$4505], sp                                ; $5fbc: $08 $05 $45
    ld b, [hl]                                    ; $5fbf: $46
    inc d                                         ; $5fc0: $14
    dec d                                         ; $5fc1: $15
    ld d, $4b                                     ; $5fc2: $16 $4b
    rst $38                                       ; $5fc4: $ff
    ld c, h                                       ; $5fc5: $4c
    ld c, l                                       ; $5fc6: $4d
    ld c, [hl]                                    ; $5fc7: $4e
    ld d, $4f                                     ; $5fc8: $16 $4f
    ld d, b                                       ; $5fca: $50
    dec bc                                        ; $5fcb: $0b
    rlca                                          ; $5fcc: $07
    rst $38                                       ; $5fcd: $ff
    rra                                           ; $5fce: $1f
    ld d, l                                       ; $5fcf: $55
    ld d, [hl]                                    ; $5fd0: $56
    ld d, a                                       ; $5fd1: $57
    ld e, b                                       ; $5fd2: $58
    ld e, c                                       ; $5fd3: $59
    ld b, l                                       ; $5fd4: $45
    ld b, [hl]                                    ; $5fd5: $46
    sbc $e2                                       ; $5fd6: $de $e2
    ldh [$5e], a                                  ; $5fd8: $e0 $5e
    ld e, a                                       ; $5fda: $5f
    ld h, b                                       ; $5fdb: $60
    ld h, c                                       ; $5fdc: $61
    ld [c], a                                     ; $5fdd: $e2
    db $e3                                        ; $5fde: $e3
    ld h, [hl]                                    ; $5fdf: $66
    ld h, a                                       ; $5fe0: $67
    ld a, e                                       ; $5fe1: $7b
    ld l, b                                       ; $5fe2: $68
    ld l, c                                       ; $5fe3: $69
    ld [c], a                                     ; $5fe4: $e2
    db $e3                                        ; $5fe5: $e3
    ld l, [hl]                                    ; $5fe6: $6e
    ld l, a                                       ; $5fe7: $6f
    ld [hl], b                                    ; $5fe8: $70
    ld [hl], c                                    ; $5fe9: $71
    ld [c], a                                     ; $5fea: $e2
    ldh [rIE], a                                  ; $5feb: $e0 $ff
    inc bc                                        ; $5fed: $03
    ld bc, $753f                                  ; $5fee: $01 $3f $75
    halt                                          ; $5ff1: $76
    ld [hl], a                                    ; $5ff2: $77
    ld a, b                                       ; $5ff3: $78
    ld [hl], d                                    ; $5ff4: $72
    inc bc                                        ; $5ff5: $03
    ld bc, $0003                                  ; $5ff6: $01 $03 $00
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    db $10                                        ; $5ffb: $10
    ld h, b                                       ; $5ffc: $60
    ldh [$65], a                                  ; $5ffd: $e0 $65
    ld b, b                                       ; $5fff: $40
    ld l, d                                       ; $6000: $6a
    ret nc                                        ; $6001: $d0

    ld l, l                                       ; $6002: $6d
    ldh [rSVBK], a                                ; $6003: $e0 $70
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    nop                                           ; $600c: $00
    nop                                           ; $600d: $00
    nop                                           ; $600e: $00
    nop                                           ; $600f: $00
    rst $30                                       ; $6010: $f7
    rst $38                                       ; $6011: $ff
    rst $38                                       ; $6012: $ff
    add b                                         ; $6013: $80
    rst $38                                       ; $6014: $ff
    ld [$ffff], a                                 ; $6015: $ea $ff $ff
    rst $38                                       ; $6018: $ff
    nop                                           ; $6019: $00
    dec d                                         ; $601a: $15
    ld a, a                                       ; $601b: $7f
    cp $e0                                        ; $601c: $fe $e0
    ccf                                           ; $601e: $3f
    cp $e0                                        ; $601f: $fe $e0
    rra                                           ; $6021: $1f
    cp $e0                                        ; $6022: $fe $e0
    ldh a, [$e1]                                  ; $6024: $f0 $e1
    cp $ea                                        ; $6026: $fe $ea
    ld d, e                                       ; $6028: $53
    rst $38                                       ; $6029: $ff
    nop                                           ; $602a: $00
    rst $38                                       ; $602b: $ff
    ld [$e1f0], a                                 ; $602c: $ea $f0 $e1
    ld bc, $e0fe                                  ; $602f: $01 $fe $e0
    inc bc                                        ; $6032: $03
    cp $e0                                        ; $6033: $fe $e0
    ret                                           ; $6035: $c9


    rlca                                          ; $6036: $07
    cp $e0                                        ; $6037: $fe $e0
    ret nz                                        ; $6039: $c0

    ldh [rSB], a                                  ; $603a: $e0 $01
    cp $ea                                        ; $603c: $fe $ea
    ret nz                                        ; $603e: $c0

    db $e3                                        ; $603f: $e3
    ld bc, $7ffe                                  ; $6040: $01 $fe $7f
    inc bc                                        ; $6043: $03
    db $fc                                        ; $6044: $fc
    rlca                                          ; $6045: $07
    db $fc                                        ; $6046: $fc
    rlca                                          ; $6047: $07
    ld hl, sp+$0f                                 ; $6048: $f8 $0f
    or b                                          ; $604a: $b0
    ld [c], a                                     ; $604b: $e2
    rst $08                                       ; $604c: $cf
    ld a, b                                       ; $604d: $78
    add a                                         ; $604e: $87
    cp $01                                        ; $604f: $fe $01
    or c                                          ; $6051: $b1
    push hl                                       ; $6052: $e5
    or b                                          ; $6053: $b0
    and $e0                                       ; $6054: $e6 $e0
    ldh [$6f], a                                  ; $6056: $e0 $6f
    sbc b                                         ; $6058: $98
    ld hl, sp+$04                                 ; $6059: $f8 $04
    db $fc                                        ; $605b: $fc
    and d                                         ; $605c: $a2
    db $eb                                        ; $605d: $eb
    nop                                           ; $605e: $00
    nop                                           ; $605f: $00
    ld h, d                                       ; $6060: $62
    db $eb                                        ; $6061: $eb
    rra                                           ; $6062: $1f
    add b                                         ; $6063: $80
    add b                                         ; $6064: $80
    rrca                                          ; $6065: $0f
    nop                                           ; $6066: $00
    rrca                                          ; $6067: $0f
    sbc b                                         ; $6068: $98
    ld [c], a                                     ; $6069: $e2
    sub b                                         ; $606a: $90
    pop hl                                        ; $606b: $e1
    adc b                                         ; $606c: $88
    pop hl                                        ; $606d: $e1
    ld hl, sp+$62                                 ; $606e: $f8 $62
    db $ec                                        ; $6070: $ec
    ld d, h                                       ; $6071: $54
    db $e3                                        ; $6072: $e3
    sub d                                         ; $6073: $92
    ld [c], a                                     ; $6074: $e2
    ld hl, sp+$0f                                 ; $6075: $f8 $0f
    ld hl, sp+$0f                                 ; $6077: $f8 $0f
    ldh a, [$cd]                                  ; $6079: $f0 $cd
    rra                                           ; $607b: $1f
    ld b, d                                       ; $607c: $42
    ldh [$7c], a                                  ; $607d: $e0 $7c

jr_043_607f:
    add e                                         ; $607f: $83
    sub d                                         ; $6080: $92
    ldh [$90], a                                  ; $6081: $e0 $90
    pop hl                                        ; $6083: $e1
    ld c, $ff                                     ; $6084: $0e $ff
    ei                                            ; $6086: $fb
    rra                                           ; $6087: $1f
    pop af                                        ; $6088: $f1
    ld b, d                                       ; $6089: $42
    db $e3                                        ; $608a: $e3
    ret nz                                        ; $608b: $c0

    ret nz                                        ; $608c: $c0

    jr nc, jr_043_607f                            ; $608d: $30 $f0

    ld [$9206], sp                                ; $608f: $08 $06 $92
    ldh [$84], a                                  ; $6092: $e0 $84
    db $fc                                        ; $6094: $fc
    or b                                          ; $6095: $b0
    pop hl                                        ; $6096: $e1
    jr @-$1d                                      ; $6097: $18 $e1

    db $10                                        ; $6099: $10
    pop hl                                        ; $609a: $e1
    ld [$42e1], sp                                ; $609b: $08 $e1 $42
    db $ec                                        ; $609e: $ec
    ld sp, hl                                     ; $609f: $f9
    ld bc, $e1ba                                  ; $60a0: $01 $ba $e1
    or [hl]                                       ; $60a3: $b6
    ldh [$1f], a                                  ; $60a4: $e0 $1f
    ld hl, sp+$1f                                 ; $60a6: $f8 $1f
    db $fc                                        ; $60a8: $fc
    rra                                           ; $60a9: $1f
    db $fd                                        ; $60aa: $fd
    db $f4                                        ; $60ab: $f4
    cp $e0                                        ; $60ac: $fe $e0
    rlca                                          ; $60ae: $07
    rst $38                                       ; $60af: $ff
    rra                                           ; $60b0: $1f
    ld hl, sp+$3f                                 ; $60b1: $f8 $3f
    ldh [rIE], a                                  ; $60b3: $e0 $ff
    ld a, a                                       ; $60b5: $7f
    ret nz                                        ; $60b6: $c0

    ld a, a                                       ; $60b7: $7f
    jp $84ff                                      ; $60b8: $c3 $ff $84


    rst $38                                       ; $60bb: $ff
    add b                                         ; $60bc: $80
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    add b                                         ; $60bf: $80
    ld [bc], a                                    ; $60c0: $02
    cp $c2                                        ; $60c1: $fe $c2
    cp $e5                                        ; $60c3: $fe $e5
    ccf                                           ; $60c5: $3f
    rst $38                                       ; $60c6: $ff
    rst $38                                       ; $60c7: $ff
    dec de                                        ; $60c8: $1b
    db $fc                                        ; $60c9: $fc
    sub a                                         ; $60ca: $97
    ld hl, sp+$4f                                 ; $60cb: $f8 $4f
    ld hl, sp+$0f                                 ; $60cd: $f8 $0f
    ldh a, [$b1]                                  ; $60cf: $f0 $b1
    ldh [rOBP0], a                                ; $60d1: $e0 $48
    db $ec                                        ; $60d3: $ec
    jp nz, $b0c1                                  ; $60d4: $c2 $c1 $b0

    ret                                           ; $60d7: $c9


    ldh a, [$1f]                                  ; $60d8: $f0 $1f
    ldh a, [$3f]                                  ; $60da: $f0 $3f
    rst $30                                       ; $60dc: $f7
    ld hl, sp+$3f                                 ; $60dd: $f8 $3f
    add sp, -$02                                  ; $60df: $e8 $fe
    ldh [$e4], a                                  ; $60e1: $e0 $e4
    ccf                                           ; $60e3: $3f
    db $f4                                        ; $60e4: $f4
    rra                                           ; $60e5: $1f
    rst $28                                       ; $60e6: $ef
    ld a, [$3f1f]                                 ; $60e7: $fa $1f $3f
    ldh [$b2], a                                  ; $60ea: $e0 $b2
    ldh [$c7], a                                  ; $60ec: $e0 $c7
    ld a, a                                       ; $60ee: $7f
    ret z                                         ; $60ef: $c8

    ei                                            ; $60f0: $fb
    ld a, a                                       ; $60f1: $7f
    ret nz                                        ; $60f2: $c0

    or d                                          ; $60f3: $b2
    ldh [$83], a                                  ; $60f4: $e0 $83
    rst $38                                       ; $60f6: $ff
    add h                                         ; $60f7: $84
    jp z, $ff7e                                   ; $60f8: $ca $7e $ff

    cp $36                                        ; $60fb: $fe $36
    ld sp, hl                                     ; $60fd: $f9
    cpl                                           ; $60fe: $2f
    pop af                                        ; $60ff: $f1
    sbc a                                         ; $6100: $9f
    pop af                                        ; $6101: $f1
    rra                                           ; $6102: $1f
    ccf                                           ; $6103: $3f
    ld sp, hl                                     ; $6104: $f9
    rra                                           ; $6105: $1f
    db $fd                                        ; $6106: $fd
    sbc a                                         ; $6107: $9f
    db $fd                                        ; $6108: $fd
    rla                                           ; $6109: $17
    sub d                                         ; $610a: $92
    pop bc                                        ; $610b: $c1
    and b                                         ; $610c: $a0
    ret                                           ; $610d: $c9


    rst $38                                       ; $610e: $ff
    ld a, [$fe0f]                                 ; $610f: $fa $0f $fe
    rrca                                          ; $6112: $0f
    rst $38                                       ; $6113: $ff
    rlca                                          ; $6114: $07
    rst $38                                       ; $6115: $ff
    dec b                                         ; $6116: $05
    cp $fe                                        ; $6117: $fe $fe
    ldh [$03], a                                  ; $6119: $e0 $03
    cp $03                                        ; $611b: $fe $03
    rst $38                                       ; $611d: $ff
    ccf                                           ; $611e: $3f
    rst $38                                       ; $611f: $ff
    add c                                         ; $6120: $81
    rst $38                                       ; $6121: $ff
    rst $38                                       ; $6122: $ff
    add d                                         ; $6123: $82
    rst $38                                       ; $6124: $ff
    db $10                                        ; $6125: $10
    rst $38                                       ; $6126: $ff
    nop                                           ; $6127: $00
    rst $20                                       ; $6128: $e7
    jr @+$01                                      ; $6129: $18 $ff

    db $eb                                        ; $612b: $eb
    inc d                                         ; $612c: $14
    di                                            ; $612d: $f3
    adc h                                         ; $612e: $8c
    rst $38                                       ; $612f: $ff
    ret nz                                        ; $6130: $c0

    cp $cf                                        ; $6131: $fe $cf
    ei                                            ; $6133: $fb
    cp $0b                                        ; $6134: $fe $0b
    and $e0                                       ; $6136: $e6 $e0
    ld [bc], a                                    ; $6138: $02
    cp $0e                                        ; $6139: $fe $0e
    ei                                            ; $613b: $fb
    rra                                           ; $613c: $1f
    rst $08                                       ; $613d: $cf
    rst $20                                       ; $613e: $e7
    inc h                                         ; $613f: $24
    rst $08                                       ; $6140: $cf
    ld c, b                                       ; $6141: $48
    ld [hl+], a                                   ; $6142: $22
    pop bc                                        ; $6143: $c1
    ld c, [hl]                                    ; $6144: $4e
    pop bc                                        ; $6145: $c1
    ldh a, [$f0]                                  ; $6146: $f0 $f0
    cp a                                          ; $6148: $bf
    ldh a, [rNR10]                                ; $6149: $f0 $10
    ldh [rNR41], a                                ; $614b: $e0 $20
    ldh [$60], a                                  ; $614d: $e0 $60
    ld [de], a                                    ; $614f: $12
    pop bc                                        ; $6150: $c1
    ret nz                                        ; $6151: $c0

    rst $38                                       ; $6152: $ff
    add b                                         ; $6153: $80
    ldh [$80], a                                  ; $6154: $e0 $80
    ldh a, [$80]                                  ; $6156: $f0 $80
    ld hl, sp-$80                                 ; $6158: $f8 $80
    db $fc                                        ; $615a: $fc
    ld a, a                                       ; $615b: $7f
    add b                                         ; $615c: $80
    cp $80                                        ; $615d: $fe $80
    rst $38                                       ; $615f: $ff
    rrca                                          ; $6160: $0f
    rst $38                                       ; $6161: $ff
    ld a, [bc]                                    ; $6162: $0a
    cp $e0                                        ; $6163: $fe $e0
    rst $18                                       ; $6165: $df
    ld b, $fd                                     ; $6166: $06 $fd
    rlca                                          ; $6168: $07
    rst $38                                       ; $6169: $ff
    ld [bc], a                                    ; $616a: $02
    ld d, $c2                                     ; $616b: $16 $c2
    and b                                         ; $616d: $a0
    rst $38                                       ; $616e: $ff
    rst $38                                       ; $616f: $ff
    add b                                         ; $6170: $80
    jp $db3c                                      ; $6171: $c3 $3c $db


    inc h                                         ; $6174: $24
    db $eb                                        ; $6175: $eb
    inc d                                         ; $6176: $14
    rst $30                                       ; $6177: $f7
    rst $38                                       ; $6178: $ff
    adc b                                         ; $6179: $88
    rst $38                                       ; $617a: $ff
    ld h, c                                       ; $617b: $61
    rst $38                                       ; $617c: $ff
    inc e                                         ; $617d: $1c
    cp $06                                        ; $617e: $fe $06
    db $fc                                        ; $6180: $fc
    rst $38                                       ; $6181: $ff
    inc b                                         ; $6182: $04
    db $fc                                        ; $6183: $fc
    inc e                                         ; $6184: $1c
    db $f4                                        ; $6185: $f4
    inc a                                         ; $6186: $3c
    ret z                                         ; $6187: $c8

    ld c, b                                       ; $6188: $48
    adc a                                         ; $6189: $8f
    rst $18                                       ; $618a: $df
    adc a                                         ; $618b: $8f
    sbc a                                         ; $618c: $9f
    sub b                                         ; $618d: $90
    cp a                                          ; $618e: $bf
    and d                                         ; $618f: $a2
    ld h, h                                       ; $6190: $64
    set 0, b                                      ; $6191: $cb $c0
    ret nz                                        ; $6193: $c0

    cp $12                                        ; $6194: $fe $12
    pop bc                                        ; $6196: $c1
    db $fd                                        ; $6197: $fd
    ld bc, $01f9                                  ; $6198: $01 $f9 $01
    pop af                                        ; $619b: $f1
    ld bc, $ffe1                                  ; $619c: $01 $e1 $ff
    ld bc, $01c1                                  ; $619f: $01 $c1 $01
    add c                                         ; $61a2: $81
    ld bc, $20ff                                  ; $61a3: $01 $ff $20
    rst $38                                       ; $61a6: $ff
    rst $38                                       ; $61a7: $ff
    inc e                                         ; $61a8: $1c
    rst $38                                       ; $61a9: $ff
    ld h, e                                       ; $61aa: $63
    rst $38                                       ; $61ab: $ff
    sbc b                                         ; $61ac: $98
    rst $38                                       ; $61ad: $ff
    ldh [rIE], a                                  ; $61ae: $e0 $ff
    rst $38                                       ; $61b0: $ff
    sub d                                         ; $61b1: $92
    rst $38                                       ; $61b2: $ff
    ld h, [hl]                                    ; $61b3: $66
    rst $38                                       ; $61b4: $ff
    ld c, d                                       ; $61b5: $4a
    rst $38                                       ; $61b6: $ff
    ld [hl], b                                    ; $61b7: $70
    rst $38                                       ; $61b8: $ff
    rst $38                                       ; $61b9: $ff
    ld l, $ff                                     ; $61ba: $2e $ff
    inc a                                         ; $61bc: $3c
    rst $38                                       ; $61bd: $ff
    inc a                                         ; $61be: $3c
    di                                            ; $61bf: $f3
    ld e, a                                       ; $61c0: $5f
    ldh a, [rIE]                                  ; $61c1: $f0 $ff
    ld e, a                                       ; $61c3: $5f
    ldh a, [$df]                                  ; $61c4: $f0 $df
    ldh [rIE], a                                  ; $61c6: $e0 $ff
    rst $08                                       ; $61c8: $cf
    ret z                                         ; $61c9: $c8

    rst $18                                       ; $61ca: $df
    rst $38                                       ; $61cb: $ff
    ld e, b                                       ; $61cc: $58
    rst $38                                       ; $61cd: $ff
    ld l, h                                       ; $61ce: $6c
    rst $38                                       ; $61cf: $ff
    ld h, h                                       ; $61d0: $64
    rst $18                                       ; $61d1: $df
    ld a, [c]                                     ; $61d2: $f2
    rrca                                          ; $61d3: $0f
    cp $35                                        ; $61d4: $fe $35
    ldh [$e9], a                                  ; $61d6: $e0 $e9
    ld sp, hl                                     ; $61d8: $f9
    ld hl, sp+$18                                 ; $61d9: $f8 $18
    cp $66                                        ; $61db: $fe $66
    cp $ff                                        ; $61dd: $fe $ff
    ld a, [hl-]                                   ; $61df: $3a
    db $fc                                        ; $61e0: $fc

jr_043_61e1:
    ld c, h                                       ; $61e1: $4c
    cp $b6                                        ; $61e2: $fe $b6
    cp $da                                        ; $61e4: $fe $da
    db $f4                                        ; $61e6: $f4

jr_043_61e7:
    rst $30                                       ; $61e7: $f7
    call nc, $b0b0                                ; $61e8: $d4 $b0 $b0
    ld c, $c0                                     ; $61eb: $0e $c0
    nop                                           ; $61ed: $00
    ret nz                                        ; $61ee: $c0

    nop                                           ; $61ef: $00
    ldh [rIE], a                                  ; $61f0: $e0 $ff
    nop                                           ; $61f2: $00
    ldh a, [rP1]                                  ; $61f3: $f0 $00
    ld hl, sp+$00                                 ; $61f5: $f8 $00
    db $fc                                        ; $61f7: $fc
    nop                                           ; $61f8: $00
    cp $ff                                        ; $61f9: $fe $ff
    nop                                           ; $61fb: $00
    rst $38                                       ; $61fc: $ff
    inc a                                         ; $61fd: $3c
    ei                                            ; $61fe: $fb
    ld c, [hl]                                    ; $61ff: $4e
    db $fd                                        ; $6200: $fd

Jump_043_6201:
    add a                                         ; $6201: $87
    cp $f5                                        ; $6202: $fe $f5
    add e                                         ; $6204: $83
    jr jr_043_61e7                                ; $6205: $18 $e0

    ld b, c                                       ; $6207: $41
    or h                                          ; $6208: $b4
    ldh [$7c], a                                  ; $6209: $e0 $7c
    rst $38                                       ; $620b: $ff
    db $e3                                        ; $620c: $e3
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff

Call_043_620f:
    ld h, d                                       ; $620f: $62

Jump_043_6210:
    cp a                                          ; $6210: $bf
    ld [c], a                                     ; $6211: $e2
    ld a, a                                       ; $6212: $7f
    push bc                                       ; $6213: $c5
    rst $38                                       ; $6214: $ff
    adc c                                         ; $6215: $89
    rst $38                                       ; $6216: $ff
    rst $38                                       ; $6217: $ff
    add hl, bc                                    ; $6218: $09

jr_043_6219:
    rst $38                                       ; $6219: $ff
    ld de, $19ff                                  ; $621a: $11 $ff $19
    ret nz                                        ; $621d: $c0

    ld b, b                                       ; $621e: $40
    ret nz                                        ; $621f: $c0

    and a                                         ; $6220: $a7
    ld b, b                                       ; $6221: $40
    add c                                         ; $6222: $81
    add b                                         ; $6223: $80
    add b                                         ; $6224: $80
    xor b                                         ; $6225: $a8
    call z, $fce0                                 ; $6226: $cc $e0 $fc
    call nz, $f0e0                                ; $6229: $c4 $e0 $f0
    jp c, $e0bc                                   ; $622c: $da $bc $e0

    ret nz                                        ; $622f: $c0

    or h                                          ; $6230: $b4
    ldh [rIE], a                                  ; $6231: $e0 $ff
    inc sp                                        ; $6233: $33
    jr nc, jr_043_61e1                            ; $6234: $30 $ab

    rst $20                                       ; $6236: $e7
    ccf                                           ; $6237: $3f
    ei                                            ; $6238: $fb
    rst $38                                       ; $6239: $ff
    rra                                           ; $623a: $1f
    cp $e0                                        ; $623b: $fe $e0
    ccf                                           ; $623d: $3f
    rst $38                                       ; $623e: $ff
    ld a, a                                       ; $623f: $7f
    rst $18                                       ; $6240: $df
    ld a, a                                       ; $6241: $7f
    ccf                                           ; $6242: $3f
    adc a                                         ; $6243: $8f
    rst $38                                       ; $6244: $ff
    add a                                         ; $6245: $87
    rst $38                                       ; $6246: $ff
    ld hl, sp-$08                                 ; $6247: $f8 $f8
    and $c0                                       ; $6249: $e6 $c0

jr_043_624b:
    db $fd                                        ; $624b: $fd
    ld [c], a                                     ; $624c: $e2
    ccf                                           ; $624d: $3f
    ld hl, sp-$08                                 ; $624e: $f8 $f8
    add sp, -$08                                  ; $6250: $e8 $f8
    ret z                                         ; $6252: $c8

    ld hl, sp+$2c                                 ; $6253: $f8 $2c

jr_043_6255:
    pop bc                                        ; $6255: $c1
    jr z, jr_043_6219                             ; $6256: $28 $c1

    rst $18                                       ; $6258: $df
    cp a                                          ; $6259: $bf
    add b                                         ; $625a: $80
    adc a                                         ; $625b: $8f
    add b                                         ; $625c: $80
    add e                                         ; $625d: $83
    sub b                                         ; $625e: $90
    xor c                                         ; $625f: $a9
    ld bc, $4f03                                  ; $6260: $01 $03 $4f
    ld bc, $0302                                  ; $6263: $01 $02 $03
    ld [bc], a                                    ; $6266: $02
    adc [hl]                                      ; $6267: $8e
    pop bc                                        ; $6268: $c1
    call nz, $ffe0                                ; $6269: $c4 $e0 $ff
    cp e                                          ; $626c: $bb
    ldh [$7d], a                                  ; $626d: $e0 $7d
    rrca                                          ; $626f: $0f
    rst $20                                       ; $6270: $e7
    add b                                         ; $6271: $80
    ccf                                           ; $6272: $3f
    rst $38                                       ; $6273: $ff
    cp $3e                                        ; $6274: $fe $3e
    ldh [rIE], a                                  ; $6276: $e0 $ff
    db $e4                                        ; $6278: $e4
    db $dd                                        ; $6279: $dd
    and b                                         ; $627a: $a0
    and c                                         ; $627b: $a1
    ret nz                                        ; $627c: $c0

    ldh [$e0], a                                  ; $627d: $e0 $e0
    ld bc, $e4ff                                  ; $627f: $01 $ff $e4
    inc bc                                        ; $6282: $03
    ld bc, $0fe7                                  ; $6283: $01 $e7 $0f
    ld bc, $f63f                                  ; $6286: $01 $3f $f6
    add b                                         ; $6289: $80
    ld d, b                                       ; $628a: $50
    xor c                                         ; $628b: $a9
    rrca                                          ; $628c: $0f
    rrca                                          ; $628d: $0f
    rla                                           ; $628e: $17
    xor c                                         ; $628f: $a9
    ld e, $9f                                     ; $6290: $1e $9f
    add c                                         ; $6292: $81
    jr jr_043_6255                                ; $6293: $18 $c0

    add d                                         ; $6295: $82
    ld c, d                                       ; $6296: $4a
    ret nz                                        ; $6297: $c0

    add [hl]                                      ; $6298: $86
    cp $e1                                        ; $6299: $fe $e1
    ld [$f8b5], sp                                ; $629b: $08 $b5 $f8
    rst $38                                       ; $629e: $ff
    ldh [$08], a                                  ; $629f: $e0 $08
    cp $e1                                        ; $62a1: $fe $e1
    ldh a, [rNR10]                                ; $62a3: $f0 $10
    cp $e1                                        ; $62a5: $fe $e1
    ccf                                           ; $62a7: $3f
    ld [c], a                                     ; $62a8: $e2
    jr nz, jr_043_624b                            ; $62a9: $20 $a0

    inc bc                                        ; $62ab: $03
    and b                                         ; $62ac: $a0
    adc c                                         ; $62ad: $89
    add d                                         ; $62ae: $82
    add h                                         ; $62af: $84
    add sp, -$1b                                  ; $62b0: $e8 $e5
    ld [bc], a                                    ; $62b2: $02
    inc bc                                        ; $62b3: $03
    add c                                         ; $62b4: $81
    db $ed                                        ; $62b5: $ed
    ld bc, $c9e0                                  ; $62b6: $01 $e0 $c9
    ld a, a                                       ; $62b9: $7f
    add $00                                       ; $62ba: $c6 $00
    ret nz                                        ; $62bc: $c0

    add c                                         ; $62bd: $81
    ld a, a                                       ; $62be: $7f
    ld b, c                                       ; $62bf: $41
    rst $38                                       ; $62c0: $ff
    ccf                                           ; $62c1: $3f
    jr nz, @+$41                                  ; $62c2: $20 $3f

    db $10                                        ; $62c4: $10
    ccf                                           ; $62c5: $3f
    ld hl, $637f                                  ; $62c6: $21 $7f $63
    rst $38                                       ; $62c9: $ff
    ldh [rNR41], a                                ; $62ca: $e0 $20
    ldh a, [rNR10]                                ; $62cc: $f0 $10
    pop af                                        ; $62ce: $f1
    db $10                                        ; $62cf: $10
    ld sp, hl                                     ; $62d0: $f9
    ld [$fbff], sp                                ; $62d1: $08 $ff $fb
    adc b                                         ; $62d4: $88
    ei                                            ; $62d5: $fb
    adc b                                         ; $62d6: $88
    rst $30                                       ; $62d7: $f7

jr_043_62d8:
    sub b                                         ; $62d8: $90
    rst $30                                       ; $62d9: $f7
    db $10                                        ; $62da: $10
    ret z                                         ; $62db: $c8

    ld d, d                                       ; $62dc: $52
    add l                                         ; $62dd: $85
    add d                                         ; $62de: $82
    ldh [$2c], a                                  ; $62df: $e0 $2c
    add b                                         ; $62e1: $80
    rst $38                                       ; $62e2: $ff
    ld hl, sp-$1a                                 ; $62e3: $f8 $e6
    ld a, [hl+]                                   ; $62e5: $2a
    add l                                         ; $62e6: $85
    cpl                                           ; $62e7: $2f
    ld a, [hl-]                                   ; $62e8: $3a
    ld a, a                                       ; $62e9: $7f
    xor a                                         ; $62ea: $af
    ld a, [hl-]                                   ; $62eb: $3a
    rst $28                                       ; $62ec: $ef

jr_043_62ed:
    dec sp                                        ; $62ed: $3b
    rst $28                                       ; $62ee: $ef
    jr c, jr_043_62d8                             ; $62ef: $38 $e7

jr_043_62f1:
    ld l, d                                       ; $62f1: $6a
    and b                                         ; $62f2: $a0
    ld a, [$a075]                                 ; $62f3: $fa $75 $a0
    ccf                                           ; $62f6: $3f
    ld a, [c]                                     ; $62f7: $f2

Jump_043_62f8:
    and b                                         ; $62f8: $a0

jr_043_62f9:
    ld [hl], e                                    ; $62f9: $73
    rst $38                                       ; $62fa: $ff
    inc h                                         ; $62fb: $24
    rst $38                                       ; $62fc: $ff
    add $be                                       ; $62fd: $c6 $be

Jump_043_62ff:
    sbc [hl]                                      ; $62ff: $9e
    ret nz                                        ; $6300: $c0

    call nz, $cc5f                                ; $6301: $c4 $5f $cc
    ld e, e                                       ; $6304: $5b
    adc $2b                                       ; $6305: $ce $2b
    pop hl                                        ; $6307: $e1
    pop hl                                        ; $6308: $e1
    rst $38                                       ; $6309: $ff
    jr nz, jr_043_62ed                            ; $630a: $20 $e1

    jr nz, jr_043_62f1                            ; $630c: $20 $e3

    ldh [$e3], a                                  ; $630e: $e0 $e3
    jr nz, jr_043_62f9                            ; $6310: $20 $e7

    cp h                                          ; $6312: $bc
    cp $e0                                        ; $6313: $fe $e0
    ld h, b                                       ; $6315: $60
    ldh [$03], a                                  ; $6316: $e0 $03
    rlca                                          ; $6318: $07
    rlca                                          ; $6319: $07
    dec b                                         ; $631a: $05
    cp $e0                                        ; $631b: $fe $e0
    ld [bc], a                                    ; $631d: $02
    ld l, e                                       ; $631e: $6b
    inc bc                                        ; $631f: $03
    ld bc, $8122                                  ; $6320: $01 $22 $81
    sub l                                         ; $6323: $95
    ld a, b                                       ; $6324: $78
    ret nz                                        ; $6325: $c0

    ld a, e                                       ; $6326: $7b
    rst $00                                       ; $6327: $c7
    ld b, l                                       ; $6328: $45
    and b                                         ; $6329: $a0
    rst $30                                       ; $632a: $f7
    rst $38                                       ; $632b: $ff
    rst $38                                       ; $632c: $ff
    inc bc                                        ; $632d: $03
    inc h                                         ; $632e: $24
    pop hl                                        ; $632f: $e1
    ldh a, [$fe]                                  ; $6330: $f0 $fe
    db $10                                        ; $6332: $10
    db $fc                                        ; $6333: $fc
    xor e                                         ; $6334: $ab
    ld a, b                                       ; $6335: $78
    add h                                         ; $6336: $84
    inc de                                        ; $6337: $13
    add b                                         ; $6338: $80
    rst $38                                       ; $6339: $ff
    db $fc                                        ; $633a: $fc
    pop hl                                        ; $633b: $e1
    rst $38                                       ; $633c: $ff
    sub b                                         ; $633d: $90
    db $ec                                        ; $633e: $ec
    rst $38                                       ; $633f: $ff
    cp a                                          ; $6340: $bf
    jr nz, jr_043_6382                            ; $6341: $20 $3f

    jr nc, jr_043_6384                            ; $6343: $30 $3f

    rra                                           ; $6345: $1f
    rra                                           ; $6346: $1f
    jp nz, Jump_043_4967                          ; $6347: $c2 $67 $49

    rst $38                                       ; $634a: $ff
    rst $08                                       ; $634b: $cf
    adc c                                         ; $634c: $89
    adc a                                         ; $634d: $8f
    jp z, $ea0f                                   ; $634e: $ca $0f $ea

    rrca                                          ; $6351: $0f
    ld a, $ff                                     ; $6352: $3e $ff
    rrca                                          ; $6354: $0f
    dec bc                                        ; $6355: $0b
    rrca                                          ; $6356: $0f
    inc b                                         ; $6357: $04
    rlca                                          ; $6358: $07
    rst $38                                       ; $6359: $ff
    rst $38                                       ; $635a: $ff
    rst $28                                       ; $635b: $ef
    rst $38                                       ; $635c: $ff
    ld h, b                                       ; $635d: $60
    xor $e0                                       ; $635e: $ee $e0
    inc e                                         ; $6360: $1c
    ldh a, [rNR23]                                ; $6361: $f0 $18
    ldh a, [rNR13]                                ; $6363: $f0 $13
    jp $fff0                                      ; $6365: $c3 $f0 $ff


    push de                                       ; $6368: $d5
    add b                                         ; $6369: $80
    db $d3                                        ; $636a: $d3
    pop bc                                        ; $636b: $c1
    and b                                         ; $636c: $a0
    ld h, b                                       ; $636d: $60
    add [hl]                                      ; $636e: $86
    ret nz                                        ; $636f: $c0

    inc b                                         ; $6370: $04
    rlca                                          ; $6371: $07
    ld e, a                                       ; $6372: $5f
    inc b                                         ; $6373: $04
    rlca                                          ; $6374: $07
    ld [$080f], sp                                ; $6375: $08 $0f $08
    ret nz                                        ; $6378: $c0

    ld h, b                                       ; $6379: $60
    pop bc                                        ; $637a: $c1
    ld l, a                                       ; $637b: $6f
    ld h, h                                       ; $637c: $64
    di                                            ; $637d: $f3
    rlca                                          ; $637e: $07
    rst $38                                       ; $637f: $ff
    ld l, c                                       ; $6380: $69
    add b                                         ; $6381: $80

jr_043_6382:
    sbc $e1                                       ; $6382: $de $e1

jr_043_6384:
    nop                                           ; $6384: $00
    rst $38                                       ; $6385: $ff
    ldh [$9f], a                                  ; $6386: $e0 $9f
    cp a                                          ; $6388: $bf
    ld hl, sp+$07                                 ; $6389: $f8 $07
    db $fc                                        ; $638b: $fc
    inc bc                                        ; $638c: $03
    cp $c3                                        ; $638d: $fe $c3
    halt                                          ; $638f: $76
    add b                                         ; $6390: $80
    jr jr_043_6382                                ; $6391: $18 $ef

    rra                                           ; $6393: $1f
    inc e                                         ; $6394: $1c
    rra                                           ; $6395: $1f
    inc d                                         ; $6396: $14
    cp $e0                                        ; $6397: $fe $e0
    ld [de], a                                    ; $6399: $12
    rra                                           ; $639a: $1f
    ld a, [bc]                                    ; $639b: $0a
    ld e, a                                       ; $639c: $5f
    rrca                                          ; $639d: $0f
    dec c                                         ; $639e: $0d
    rrca                                          ; $639f: $0f
    rlca                                          ; $63a0: $07
    rlca                                          ; $63a1: $07
    sub c                                         ; $63a2: $91
    add b                                         ; $63a3: $80
    db $e3                                        ; $63a4: $e3
    sub l                                         ; $63a5: $95
    add b                                         ; $63a6: $80
    ld a, $4e                                     ; $63a7: $3e $4e
    add c                                         ; $63a9: $81
    pop bc                                        ; $63aa: $c1
    ld a, a                                       ; $63ab: $7f
    jp nz, $d0ff                                  ; $63ac: $c2 $ff $d0

    ld d, [hl]                                    ; $63af: $56
    add a                                         ; $63b0: $87
    sub $83                                       ; $63b1: $d6 $83
    ret nz                                        ; $63b3: $c0

    ld [hl+], a                                   ; $63b4: $22
    ld h, b                                       ; $63b5: $60
    ld c, $c4                                     ; $63b6: $0e $c4
    ld b, $c2                                     ; $63b8: $06 $c2
    sub $c1                                       ; $63ba: $d6 $c1
    sub h                                         ; $63bc: $94
    ldh [$96], a                                  ; $63bd: $e0 $96
    pop hl                                        ; $63bf: $e1
    db $10                                        ; $63c0: $10

jr_043_63c1:
    rra                                           ; $63c1: $1f
    ld a, $fe                                     ; $63c2: $3e $fe
    pop hl                                        ; $63c4: $e1
    ldh [$e0], a                                  ; $63c5: $e0 $e0
    jr jr_043_63c1                                ; $63c7: $18 $f8

    ld b, $97                                     ; $63c9: $06 $97
    add b                                         ; $63cb: $80
    cp [hl]                                       ; $63cc: $be
    ld h, e                                       ; $63cd: $63
    dec a                                         ; $63ce: $3d
    ld e, $f2                                     ; $63cf: $1e $f2
    ld b, a                                       ; $63d1: $47
    ret nz                                        ; $63d2: $c0

    ccf                                           ; $63d3: $3f
    ldh a, [rIF]                                  ; $63d4: $f0 $0f
    adc d                                         ; $63d6: $8a
    ldh [$f5], a                                  ; $63d7: $e0 $f5
    pop bc                                        ; $63d9: $c1
    ld sp, hl                                     ; $63da: $f9
    inc bc                                        ; $63db: $03
    add sp, -$60                                  ; $63dc: $e8 $a0
    ld c, $c0                                     ; $63de: $0e $c0
    inc bc                                        ; $63e0: $03
    rlca                                          ; $63e1: $07
    inc b                                         ; $63e2: $04
    rrca                                          ; $63e3: $0f
    ld [$ffff], sp                                ; $63e4: $08 $ff $ff
    ld e, h                                       ; $63e7: $5c
    rst $38                                       ; $63e8: $ff
    inc hl                                        ; $63e9: $23
    rst $38                                       ; $63ea: $ff
    ld hl, $a1ff                                  ; $63eb: $21 $ff $a1
    rst $28                                       ; $63ee: $ef
    rst $38                                       ; $63ef: $ff
    jp Jump_000_04ff                              ; $63f0: $c3 $ff $04


    pop de                                        ; $63f3: $d1
    ldh [$3c], a                                  ; $63f4: $e0 $3c
    rst $38                                       ; $63f6: $ff
    ld [c], a                                     ; $63f7: $e2
    xor a                                         ; $63f8: $af
    rst $38                                       ; $63f9: $ff
    sbc [hl]                                      ; $63fa: $9e
    ei                                            ; $63fb: $fb
    ld c, $f4                                     ; $63fc: $0e $f4
    ldh [$03], a                                  ; $63fe: $e0 $03
    xor $80                                       ; $6400: $ee $80
    ld e, b                                       ; $6402: $58
    call nc, $a040                                ; $6403: $d4 $40 $a0
    or d                                          ; $6406: $b2
    ld b, a                                       ; $6407: $47
    ret nz                                        ; $6408: $c0

    call nc, Call_000_2080                        ; $6409: $d4 $80 $20
    sbc d                                         ; $640c: $9a
    pop hl                                        ; $640d: $e1
    jr nc, jr_043_644f                            ; $640e: $30 $3f

    rst $30                                       ; $6410: $f7
    add hl, sp                                    ; $6411: $39
    ccf                                           ; $6412: $3f
    add hl, hl                                    ; $6413: $29
    cp $e0                                        ; $6414: $fe $e0
    dec h                                         ; $6416: $25
    ccf                                           ; $6417: $3f
    dec d                                         ; $6418: $15
    rra                                           ; $6419: $1f
    cp e                                          ; $641a: $bb
    ld a, a                                       ; $641b: $7f
    pop hl                                        ; $641c: $e1
    ld a, [hl]                                    ; $641d: $7e
    and d                                         ; $641e: $a2
    rlca                                          ; $641f: $07
    rst $38                                       ; $6420: $ff
    ld [$4288], sp                                ; $6421: $08 $88 $42
    inc bc                                        ; $6424: $03
    sbc a                                         ; $6425: $9f
    add a                                         ; $6426: $87
    db $fc                                        ; $6427: $fc
    bit 7, [hl]                                   ; $6428: $cb $7e
    rst $38                                       ; $642a: $ff
    xor $68                                       ; $642b: $ee $68
    db $fd                                        ; $642d: $fd
    ret nz                                        ; $642e: $c0

    ld [$07f7], sp                                ; $642f: $08 $f7 $07
    inc b                                         ; $6432: $04
    inc bc                                        ; $6433: $03
    db $dd                                        ; $6434: $dd
    and [hl]                                      ; $6435: $a6
    rst $38                                       ; $6436: $ff
    ld a, h                                       ; $6437: $7c
    di                                            ; $6438: $f3
    sbc a                                         ; $6439: $9f
    sbc $ac                                       ; $643a: $de $ac
    ld h, b                                       ; $643c: $60

jr_043_643d:
    rra                                           ; $643d: $1f
    ldh [rIE], a                                  ; $643e: $e0 $ff
    daa                                           ; $6440: $27
    xor b                                         ; $6441: $a8
    ret nz                                        ; $6442: $c0

    rra                                           ; $6443: $1f
    rra                                           ; $6444: $1f
    rst $38                                       ; $6445: $ff
    rst $38                                       ; $6446: $ff
    ld h, [hl]                                    ; $6447: $66
    rst $18                                       ; $6448: $df
    ldh a, [rIF]                                  ; $6449: $f0 $0f
    ld sp, hl                                     ; $644b: $f9
    rrca                                          ; $644c: $0f
    cp $9f                                        ; $644d: $fe $9f

jr_043_644f:
    rst $28                                       ; $644f: $ef
    ld hl, sp-$01                                 ; $6450: $f8 $ff
    ld hl, sp-$01                                 ; $6452: $f8 $ff
    cp h                                          ; $6454: $bc
    ret nz                                        ; $6455: $c0

    ld [hl], b                                    ; $6456: $70
    add b                                         ; $6457: $80
    ld b, b                                       ; $6458: $40
    db $fc                                        ; $6459: $fc
    jr z, jr_043_643d                             ; $645a: $28 $e1

    ld a, [hl-]                                   ; $645c: $3a
    ld b, l                                       ; $645d: $45
    rra                                           ; $645e: $1f
    ld e, $0f                                     ; $645f: $1e $0f
    ld c, $0f                                     ; $6461: $0e $0f
    ld a, [bc]                                    ; $6463: $0a
    xor a                                         ; $6464: $af
    rrca                                          ; $6465: $0f
    ld a, [bc]                                    ; $6466: $0a
    rlca                                          ; $6467: $07
    ld b, $3e                                     ; $6468: $06 $3e
    ret nz                                        ; $646a: $c0

    ld [bc], a                                    ; $646b: $02
    ld b, b                                       ; $646c: $40
    ld b, b                                       ; $646d: $40
    inc b                                         ; $646e: $04
    ld a, [$804e]                                 ; $646f: $fa $4e $80
    nop                                           ; $6472: $00
    ld c, $85                                     ; $6473: $0e $85
    ld a, a                                       ; $6475: $7f
    ld h, c                                       ; $6476: $61
    db $fd                                        ; $6477: $fd
    rla                                           ; $6478: $17
    rst $38                                       ; $6479: $ff
    ld a, l                                       ; $647a: $7d
    ld b, $46                                     ; $647b: $06 $46
    ldh [rNR32], a                                ; $647d: $e0 $1c
    rst $30                                       ; $647f: $f7
    inc a                                         ; $6480: $3c
    rst $38                                       ; $6481: $ff
    ld c, b                                       ; $6482: $48
    jr nz, @+$63                                  ; $6483: $20 $61

    db $fc                                        ; $6485: $fc
    ld a, h                                       ; $6486: $7c
    ld b, d                                       ; $6487: $42
    ld l, h                                       ; $6488: $6c
    add b                                         ; $6489: $80
    jp $c403                                      ; $648a: $c3 $03 $c4


    rlca                                          ; $648d: $07
    jp hl                                         ; $648e: $e9


    rrca                                          ; $648f: $0f
    ld a, a                                       ; $6490: $7f
    ei                                            ; $6491: $fb
    ld e, $3f                                     ; $6492: $1e $3f
    ccf                                           ; $6494: $3f
    ld a, a                                       ; $6495: $7f
    ld a, a                                       ; $6496: $7f
    ld e, a                                       ; $6497: $5f
    add $82                                       ; $6498: $c6 $82
    inc a                                         ; $649a: $3c
    ld [hl], $a4                                  ; $649b: $36 $a4
    sbc h                                         ; $649d: $9c
    pop hl                                        ; $649e: $e1
    ld hl, sp-$11                                 ; $649f: $f8 $ef
    ld hl, sp-$31                                 ; $64a1: $f8 $cf
    sub c                                         ; $64a3: $91
    ld b, b                                       ; $64a4: $40
    adc [hl]                                      ; $64a5: $8e
    ldh [rIE], a                                  ; $64a6: $e0 $ff
    ld [$0000], sp                                ; $64a8: $08 $00 $00
    inc e                                         ; $64ab: $1c

jr_043_64ac:
    inc e                                         ; $64ac: $1c
    cp [hl]                                       ; $64ad: $be
    ld [hl+], a                                   ; $64ae: $22
    rst $38                                       ; $64af: $ff
    rst $38                                       ; $64b0: $ff
    ld b, e                                       ; $64b1: $43
    rst $38                                       ; $64b2: $ff
    ld b, d                                       ; $64b3: $42
    rst $38                                       ; $64b4: $ff
    ld b, l                                       ; $64b5: $45
    rst $38                                       ; $64b6: $ff
    ld b, a                                       ; $64b7: $47
    rst $38                                       ; $64b8: $ff
    cp a                                          ; $64b9: $bf
    ld e, c                                       ; $64ba: $59
    rra                                           ; $64bb: $1f
    inc e                                         ; $64bc: $1c
    ccf                                           ; $64bd: $3f
    inc a                                         ; $64be: $3c
    ld a, e                                       ; $64bf: $7b
    ld a, $80                                     ; $64c0: $3e $80
    db $fc                                        ; $64c2: $fc
    db $ed                                        ; $64c3: $ed
    add a                                         ; $64c4: $87
    ld [hl], b                                    ; $64c5: $70
    ld b, c                                       ; $64c6: $41
    pop af                                        ; $64c7: $f1
    rra                                           ; $64c8: $1f
    call z, $c040                                 ; $64c9: $cc $40 $c0
    rst $38                                       ; $64cc: $ff
    ld [hl], b                                    ; $64cd: $70
    rst $38                                       ; $64ce: $ff
    cp a                                          ; $64cf: $bf
    add sp, $1f                                   ; $64d0: $e8 $1f
    db $f4                                        ; $64d2: $f4
    rrca                                          ; $64d3: $0f
    db $fc                                        ; $64d4: $fc
    rst $28                                       ; $64d5: $ef
    ld a, [$effb]                                 ; $64d6: $fa $fb $ef
    ld a, [$21a2]                                 ; $64d9: $fa $a2 $21
    cp $18                                        ; $64dc: $fe $18
    cp $2c                                        ; $64de: $fe $2c
    cp $f7                                        ; $64e0: $fe $f7
    ld [hl-], a                                   ; $64e2: $32
    rst $38                                       ; $64e3: $ff
    ld d, c                                       ; $64e4: $51
    cp $e0                                        ; $64e5: $fe $e0
    ret                                           ; $64e7: $c9


    rst $28                                       ; $64e8: $ef
    dec a                                         ; $64e9: $3d
    rst $28                                       ; $64ea: $ef
    rst $38                                       ; $64eb: $ff
    dec a                                         ; $64ec: $3d
    rst $00                                       ; $64ed: $c7
    ld a, [hl]                                    ; $64ee: $7e
    jp $c17e                                      ; $64ef: $c3 $7e $c1


    ld a, a                                       ; $64f2: $7f
    ld [c], a                                     ; $64f3: $e2
    rst $20                                       ; $64f4: $e7
    ld a, $fe                                     ; $64f5: $3e $fe
    inc e                                         ; $64f7: $1c
    nop                                           ; $64f8: $00
    add b                                         ; $64f9: $80
    sub $83                                       ; $64fa: $d6 $83
    ld b, $ff                                     ; $64fc: $06 $ff
    ld b, $bf                                     ; $64fe: $06 $bf

jr_043_6500:
    ei                                            ; $6500: $fb
    adc d                                         ; $6501: $8a
    ld [hl], e                                    ; $6502: $73

jr_043_6503:
    ld [hl], e                                    ; $6503: $73
    rlca                                          ; $6504: $07
    inc b                                         ; $6505: $04
    add sp, -$40                                  ; $6506: $e8 $c0
    ld [$1074], sp                                ; $6508: $08 $74 $10

jr_043_650b:
    ld h, b                                       ; $650b: $60
    cp $e1                                        ; $650c: $fe $e1
    jr nz, jr_043_64ac                            ; $650e: $20 $9c

    ld h, b                                       ; $6510: $60
    jr nz, @+$01                                  ; $6511: $20 $ff

    jr nc, jr_043_6503                            ; $6513: $30 $ee

    ld [c], a                                     ; $6515: $e2
    ld d, d                                       ; $6516: $52
    and b                                         ; $6517: $a0
    ret nz                                        ; $6518: $c0

    db $fd                                        ; $6519: $fd
    adc b                                         ; $651a: $88
    jr nz, jr_043_650b                            ; $651b: $20 $ee

    ld b, b                                       ; $651d: $40
    sbc a                                         ; $651e: $9f
    ld h, b                                       ; $651f: $60
    add e                                         ; $6520: $83
    rst $38                                       ; $6521: $ff
    rst $30                                       ; $6522: $f7
    ldh [$5e], a                                  ; $6523: $e0 $5e
    ld e, [hl]                                    ; $6525: $5e
    add c                                         ; $6526: $81
    rst $38                                       ; $6527: $ff
    ei                                            ; $6528: $fb
    rst $38                                       ; $6529: $ff
    or $74                                        ; $652a: $f6 $74
    ld h, b                                       ; $652c: $60
    ret nz                                        ; $652d: $c0

    ret z                                         ; $652e: $c8

    ld h, b                                       ; $652f: $60
    ei                                            ; $6530: $fb
    call c, $94bf                                 ; $6531: $dc $bf $94
    ld b, b                                       ; $6534: $40
    rst $38                                       ; $6535: $ff
    adc c                                         ; $6536: $89
    cp $82                                        ; $6537: $fe $82
    db $fc                                        ; $6539: $fc
    rst $28                                       ; $653a: $ef
    ld e, h                                       ; $653b: $5c
    ldh [$e0], a                                  ; $653c: $e0 $e0
    ret nz                                        ; $653e: $c0

    ld [c], a                                     ; $653f: $e2
    ld h, d                                       ; $6540: $62
    add b                                         ; $6541: $80
    nop                                           ; $6542: $00
    rlca                                          ; $6543: $07
    rst $38                                       ; $6544: $ff
    ld b, $07                                     ; $6545: $06 $07
    dec b                                         ; $6547: $05
    add a                                         ; $6548: $87
    inc b                                         ; $6549: $04
    adc a                                         ; $654a: $8f
    inc c                                         ; $654b: $0c
    set 1, a                                      ; $654c: $cb $cf
    ld c, $c9                                     ; $654e: $0e $c9
    rrca                                          ; $6550: $0f
    jp hl                                         ; $6551: $e9


    ld a, b                                       ; $6552: $78
    and b                                         ; $6553: $a0

jr_043_6554:
    xor d                                         ; $6554: $aa
    pop hl                                        ; $6555: $e1
    cp $20                                        ; $6556: $fe $20
    rst $38                                       ; $6558: $ff
    cp $20                                        ; $6559: $fe $20
    db $fc                                        ; $655b: $fc
    jr nz, @-$02                                  ; $655c: $20 $fc

    ld h, b                                       ; $655e: $60
    ld hl, sp-$20                                 ; $655f: $f8 $e0
    rst $38                                       ; $6561: $ff
    jr jr_043_6554                                ; $6562: $18 $f0

    cp $03                                        ; $6564: $fe $03
    ld a, [hl]                                    ; $6566: $7e
    inc bc                                        ; $6567: $03
    ccf                                           ; $6568: $3f
    ld bc, $1fd1                                  ; $6569: $01 $d1 $1f
    adc d                                         ; $656c: $8a
    ld [hl+], a                                   ; $656d: $22
    adc [hl]                                      ; $656e: $8e
    ld hl, $60c7                                  ; $656f: $21 $c7 $60
    add $8c                                       ; $6572: $c6 $8c
    ld b, b                                       ; $6574: $40
    add b                                         ; $6575: $80
    rst $38                                       ; $6576: $ff
    rst $10                                       ; $6577: $d7
    ld h, b                                       ; $6578: $60
    rst $18                                       ; $6579: $df
    jr jr_043_6500                                ; $657a: $18 $84

    ldh [rHDMA1], a                               ; $657c: $e0 $51
    jr jr_043_65e0                                ; $657e: $18 $60

    db $10                                        ; $6580: $10
    cp $df                                        ; $6581: $fe $df
    ld [$84fe], sp                                ; $6583: $08 $fe $84
    cp $42                                        ; $6586: $fe $42
    cp $e0                                        ; $6588: $fe $e0
    add d                                         ; $658a: $82
    db $fc                                        ; $658b: $fc
    rst $38                                       ; $658c: $ff
    call nz, $0ffa                                ; $658d: $c4 $fa $0f
    ld a, [hl]                                    ; $6590: $7e
    rrca                                          ; $6591: $0f
    dec sp                                        ; $6592: $3b
    rrca                                          ; $6593: $0f
    inc e                                         ; $6594: $1c
    rst $28                                       ; $6595: $ef
    rlca                                          ; $6596: $07
    rst $08                                       ; $6597: $cf
    inc bc                                        ; $6598: $03
    db $f4                                        ; $6599: $f4
    ld b, d                                       ; $659a: $42
    ld h, c                                       ; $659b: $61
    rst $38                                       ; $659c: $ff
    db $10                                        ; $659d: $10
    ldh a, [rIE]                                  ; $659e: $f0 $ff
    ld de, $f3f0                                  ; $65a0: $11 $f0 $f3
    ldh a, [rNR22]                                ; $65a3: $f0 $17
    ldh a, [$ec]                                  ; $65a5: $f0 $ec
    ldh [$ad], a                                  ; $65a7: $e0 $ad
    ret nc                                        ; $65a9: $d0

    ld [hl], d                                    ; $65aa: $72
    ld h, c                                       ; $65ab: $61
    rst $38                                       ; $65ac: $ff
    db $fc                                        ; $65ad: $fc
    ld h, $60                                     ; $65ae: $26 $60
    ret nz                                        ; $65b0: $c0

    jp nz, $c008                                  ; $65b1: $c2 $08 $c0

    rst $00                                       ; $65b4: $c7
    nop                                           ; $65b5: $00
    pop af                                        ; $65b6: $f1
    ld bc, $4136                                  ; $65b7: $01 $36 $41
    inc [hl]                                      ; $65ba: $34
    ld b, b                                       ; $65bb: $40
    sbc e                                         ; $65bc: $9b
    and c                                         ; $65bd: $a1
    rst $38                                       ; $65be: $ff
    cp $3f                                        ; $65bf: $fe $3f
    adc d                                         ; $65c1: $8a
    db $fd                                        ; $65c2: $fd
    adc l                                         ; $65c3: $8d
    rst $38                                       ; $65c4: $ff
    sbc a                                         ; $65c5: $9f
    db $e3                                        ; $65c6: $e3
    inc de                                        ; $65c7: $13
    ld h, b                                       ; $65c8: $60
    reti                                          ; $65c9: $d9


    ld h, c                                       ; $65ca: $61
    ld a, l                                       ; $65cb: $7d
    rst $38                                       ; $65cc: $ff
    ld h, b                                       ; $65cd: $60
    ld h, b                                       ; $65ce: $60
    pop af                                        ; $65cf: $f1
    db $10                                        ; $65d0: $10
    ei                                            ; $65d1: $fb
    ld a, b                                       ; $65d2: $78
    add a                                         ; $65d3: $87
    ld a, e                                       ; $65d4: $7b
    ld b, b                                       ; $65d5: $40
    dec c                                         ; $65d6: $0d
    db $fc                                        ; $65d7: $fc
    ld [hl], a                                    ; $65d8: $77
    ld b, b                                       ; $65d9: $40
    rst $38                                       ; $65da: $ff
    rst $38                                       ; $65db: $ff
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00

jr_043_65e0:
    xor a                                         ; $65e0: $af
    rst $38                                       ; $65e1: $ff
    rst $38                                       ; $65e2: $ff
    rst $38                                       ; $65e3: $ff
    add b                                         ; $65e4: $80
    cp $e1                                        ; $65e5: $fe $e1
    cp a                                          ; $65e7: $bf
    cp $e0                                        ; $65e8: $fe $e0
    sbc a                                         ; $65ea: $9f
    or a                                          ; $65eb: $b7
    add b                                         ; $65ec: $80
    pop bc                                        ; $65ed: $c1
    add b                                         ; $65ee: $80
    ldh a, [$e0]                                  ; $65ef: $f0 $e0
    nop                                           ; $65f1: $00
    cp $fe                                        ; $65f2: $fe $fe
    ldh [$fc], a                                  ; $65f4: $e0 $fc
    sbc $fe                                       ; $65f6: $de $fe
    ldh [$f8], a                                  ; $65f8: $e0 $f8
    nop                                           ; $65fa: $00
    add d                                         ; $65fb: $82
    nop                                           ; $65fc: $00
    rst $38                                       ; $65fd: $ff
    db $ed                                        ; $65fe: $ed
    jp $d780                                      ; $65ff: $c3 $80 $d7


    rst $00                                       ; $6602: $c7
    add b                                         ; $6603: $80
    adc a                                         ; $6604: $8f
    cp $e0                                        ; $6605: $fe $e0
    add a                                         ; $6607: $87
    cp $e0                                        ; $6608: $fe $e0
    db $e3                                        ; $660a: $e3
    add b                                         ; $660b: $80
    ld a, a                                       ; $660c: $7f
    di                                            ; $660d: $f3
    add b                                         ; $660e: $80
    jp nz, $e200                                  ; $660f: $c2 $00 $e2

    nop                                           ; $6612: $00
    ldh a, [$fe]                                  ; $6613: $f0 $fe
    ldh [rIE], a                                  ; $6615: $e0 $ff
    ldh [rP1], a                                  ; $6617: $e0 $00
    pop hl                                        ; $6619: $e1
    nop                                           ; $661a: $00
    rst $00                                       ; $661b: $c7
    nop                                           ; $661c: $00
    rst $08                                       ; $661d: $cf
    nop                                           ; $661e: $00
    cp $f0                                        ; $661f: $fe $f0
    db $ec                                        ; $6621: $ec
    ld bc, $0043                                  ; $6622: $01 $43 $00
    ld b, a                                       ; $6625: $47
    nop                                           ; $6626: $00
    rrca                                          ; $6627: $0f
    nop                                           ; $6628: $00
    rst $38                                       ; $6629: $ff
    rrca                                          ; $662a: $0f
    rrca                                          ; $662b: $0f
    ld [hl-], a                                   ; $662c: $32
    ccf                                           ; $662d: $3f
    call nz, $847f                                ; $662e: $c4 $7f $84
    rst $38                                       ; $6631: $ff
    rst $38                                       ; $6632: $ff
    inc b                                         ; $6633: $04
    rst $38                                       ; $6634: $ff
    jp nz, $fe00                                  ; $6635: $c2 $00 $fe

    inc a                                         ; $6638: $3c
    jp $f9ff                                      ; $6639: $c3 $ff $f9


    nop                                           ; $663c: $00
    cp $e6                                        ; $663d: $fe $e6
    ldh [$e3], a                                  ; $663f: $e0 $e3
    adc a                                         ; $6641: $8f
    add b                                         ; $6642: $80
    ld b, a                                       ; $6643: $47
    ret nz                                        ; $6644: $c0

    ld b, a                                       ; $6645: $47
    ld e, a                                       ; $6646: $5f
    ret nz                                        ; $6647: $c0

    inc hl                                        ; $6648: $23
    ldh [$33], a                                  ; $6649: $e0 $33
    ldh [$72], a                                  ; $664b: $e0 $72
    pop hl                                        ; $664d: $e1
    cp $fe                                        ; $664e: $fe $fe
    ldh [$bd], a                                  ; $6650: $e0 $bd
    db $fc                                        ; $6652: $fc
    cp $e0                                        ; $6653: $fe $e0
    ld hl, sp-$80                                 ; $6655: $f8 $80
    add d                                         ; $6657: $82
    add b                                         ; $6658: $80
    push de                                       ; $6659: $d5
    pop hl                                        ; $665a: $e1
    ld a, a                                       ; $665b: $7f
    ld a, [$e0fe]                                 ; $665c: $fa $fe $e0
    ccf                                           ; $665f: $3f
    cp $e0                                        ; $6660: $fe $e0
    rra                                           ; $6662: $1f
    nop                                           ; $6663: $00
    ld b, c                                       ; $6664: $41
    nop                                           ; $6665: $00
    rst $38                                       ; $6666: $ff
    xor a                                         ; $6667: $af
    ld bc, $03fe                                  ; $6668: $01 $fe $03
    ld a, [hl]                                    ; $666b: $7e
    cp $e0                                        ; $666c: $fe $e0
    ld a, $fe                                     ; $666e: $3e $fe
    ldh [rNR34], a                                ; $6670: $e0 $1e
    rst $20                                       ; $6672: $e7
    inc bc                                        ; $6673: $03
    ld b, c                                       ; $6674: $41
    ld bc, $e7b6                                  ; $6675: $01 $b6 $e7
    xor h                                         ; $6678: $ac
    db $e3                                        ; $6679: $e3
    ccf                                           ; $667a: $3f
    ldh [$3f], a                                  ; $667b: $e0 $3f
    db $eb                                        ; $667d: $eb
    ldh [$3e], a                                  ; $667e: $e0 $3e
    cp $e0                                        ; $6680: $fe $e0
    inc a                                         ; $6682: $3c
    cp $e0                                        ; $6683: $fe $e0
    ld a, b                                       ; $6685: $78
    ret nz                                        ; $6686: $c0

    ld b, d                                       ; $6687: $42
    cp a                                          ; $6688: $bf
    ret nz                                        ; $6689: $c0

    jp nz, $e280                                  ; $668a: $c2 $80 $e2

    add b                                         ; $668d: $80
    ldh a, [$fe]                                  ; $668e: $f0 $fe
    ldh [$e0], a                                  ; $6690: $e0 $e0
    ld a, e                                       ; $6692: $7b
    add b                                         ; $6693: $80
    pop hl                                        ; $6694: $e1
    ld b, [hl]                                    ; $6695: $46
    ldh [$cf], a                                  ; $6696: $e0 $cf
    add b                                         ; $6698: $80
    ld b, e                                       ; $6699: $43
    ld bc, $e270                                  ; $669a: $01 $70 $e2
    rst $38                                       ; $669d: $ff
    nop                                           ; $669e: $00
    rlca                                          ; $669f: $07
    nop                                           ; $66a0: $00
    add a                                         ; $66a1: $87
    nop                                           ; $66a2: $00
    db $e3                                        ; $66a3: $e3
    nop                                           ; $66a4: $00
    di                                            ; $66a5: $f3
    ei                                            ; $66a6: $fb
    nop                                           ; $66a7: $00
    nop                                           ; $66a8: $00
    ld bc, $c0e0                                  ; $66a9: $01 $e0 $c0
    ld a, a                                       ; $66ac: $7f
    ldh [$7f], a                                  ; $66ad: $e0 $7f
    ret nc                                        ; $66af: $d0

    rst $38                                       ; $66b0: $ff

jr_043_66b1:
    ld a, a                                       ; $66b1: $7f
    db $ec                                        ; $66b2: $ec
    cpl                                           ; $66b3: $2f
    add $07                                       ; $66b4: $c6 $07
    rst $18                                       ; $66b6: $df
    dec e                                         ; $66b7: $1d
    ld bc, $ffff                                  ; $66b8: $01 $ff $ff
    inc bc                                        ; $66bb: $03
    cp $03                                        ; $66bc: $fe $03
    cp $07                                        ; $66be: $fe $07
    rst $38                                       ; $66c0: $ff
    ld e, $7f                                     ; $66c1: $1e $7f
    ei                                            ; $66c3: $fb
    ccf                                           ; $66c4: $3f
    push hl                                       ; $66c5: $e5
    ld a, e                                       ; $66c6: $7b

jr_043_66c7:
    ld hl, sp-$01                                 ; $66c7: $f8 $ff
    cp h                                          ; $66c9: $bc
    ret nz                                        ; $66ca: $c0

    add sp, -$08                                  ; $66cb: $e8 $f8
    jr nz, jr_043_66b1                            ; $66cd: $20 $e2

    jp nc, $d0c3                                  ; $66cf: $d2 $c3 $d0

    rst $00                                       ; $66d2: $c7
    ei                                            ; $66d3: $fb
    cpl                                           ; $66d4: $2f
    ld hl, sp+$4f                                 ; $66d5: $f8 $4f
    ld a, b                                       ; $66d7: $78
    cp a                                          ; $66d8: $bf
    ld c, a                                       ; $66d9: $4f
    ld hl, sp-$71                                 ; $66da: $f8 $8f
    ei                                            ; $66dc: $fb
    adc a                                         ; $66dd: $8f
    rst $38                                       ; $66de: $ff
    cp $e1                                        ; $66df: $fe $e1
    sbc a                                         ; $66e1: $9f
    rst $38                                       ; $66e2: $ff
    rst $18                                       ; $66e3: $df
    ld a, [c]                                     ; $66e4: $f2
    rra                                           ; $66e5: $1f
    pop af                                        ; $66e6: $f1
    rra                                           ; $66e7: $1f
    ldh a, [rIF]                                  ; $66e8: $f0 $0f
    ld hl, sp-$01                                 ; $66ea: $f8 $ff
    rst $08                                       ; $66ec: $cf
    db $fc                                        ; $66ed: $fc
    rst $28                                       ; $66ee: $ef
    ei                                            ; $66ef: $fb
    ei                                            ; $66f0: $fb
    ld a, [c]                                     ; $66f1: $f2
    rst $38                                       ; $66f2: $ff
    cp $fe                                        ; $66f3: $fe $fe
    dec d                                         ; $66f5: $15
    ld [c], a                                     ; $66f6: $e2
    add b                                         ; $66f7: $80
    rst $38                                       ; $66f8: $ff
    ld b, b                                       ; $66f9: $40
    rst $38                                       ; $66fa: $ff
    jr nz, @+$01                                  ; $66fb: $20 $ff

    db $10                                        ; $66fd: $10
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    db $10                                        ; $6700: $10
    pop hl                                        ; $6701: $e1
    jr nz, jr_043_66c7                            ; $6702: $20 $c3

    ld bc, $01e3                                  ; $6704: $01 $e3 $01
    rst $38                                       ; $6707: $ff
    di                                            ; $6708: $f3
    ld [bc], a                                    ; $6709: $02
    di                                            ; $670a: $f3
    ld [bc], a                                    ; $670b: $02
    db $e3                                        ; $670c: $e3
    inc bc                                        ; $670d: $03
    db $e3                                        ; $670e: $e3
    ld [bc], a                                    ; $670f: $02
    rst $38                                       ; $6710: $ff
    rst $00                                       ; $6711: $c7
    inc b                                         ; $6712: $04
    rst $08                                       ; $6713: $cf
    inc b                                         ; $6714: $04
    rst $38                                       ; $6715: $ff
    ld e, a                                       ; $6716: $5f
    rst $38                                       ; $6717: $ff
    rra                                           ; $6718: $1f
    sbc $fe                                       ; $6719: $de $fe
    ldh [$3f], a                                  ; $671b: $e0 $3f
    rst $20                                       ; $671d: $e7
    ccf                                           ; $671e: $3f
    jp $e078                                      ; $671f: $c3 $78 $e0


    rst $38                                       ; $6722: $ff
    ld a, a                                       ; $6723: $7f
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    db $f4                                        ; $6726: $f4
    rst $38                                       ; $6727: $ff
    ldh a, [rIE]                                  ; $6728: $f0 $ff
    ld sp, hl                                     ; $672a: $f9
    rst $38                                       ; $672b: $ff
    ld hl, sp-$09                                 ; $672c: $f8 $f7
    rst $20                                       ; $672e: $e7
    db $fc                                        ; $672f: $fc
    jp $e076                                      ; $6730: $c3 $76 $e0


    rst $38                                       ; $6733: $ff
    cp $c3                                        ; $6734: $fe $c3
    ld b, b                                       ; $6736: $40
    jp $80c7                                      ; $6737: $c3 $c7 $80


    ldh [$c1], a                                  ; $673a: $e0 $c1
    sub b                                         ; $673c: $90
    ret nz                                        ; $673d: $c0

    ld d, b                                       ; $673e: $50
    ld [c], a                                     ; $673f: $e2
    cp l                                          ; $6740: $bd
    ret nz                                        ; $6741: $c0

    ld [bc], a                                    ; $6742: $02
    ld a, a                                       ; $6743: $7f
    db $fd                                        ; $6744: $fd
    ld bc, $c8f0                                  ; $6745: $01 $f0 $c8
    ld b, c                                       ; $6748: $41
    rst $38                                       ; $6749: $ff
    ld b, e                                       ; $674a: $43
    cp $c2                                        ; $674b: $fe $c2
    cp $ff                                        ; $674d: $fe $ff
    ld b, d                                       ; $674f: $42
    db $fc                                        ; $6750: $fc
    ld b, h                                       ; $6751: $44
    db $fc                                        ; $6752: $fc
    add h                                         ; $6753: $84
    db $fc                                        ; $6754: $fc
    add h                                         ; $6755: $84
    cp $f7                                        ; $6756: $fe $f7
    add h                                         ; $6758: $84
    rst $38                                       ; $6759: $ff

jr_043_675a:
    add d                                         ; $675a: $82
    cp $e0                                        ; $675b: $fe $e0
    jp nz, Jump_043_427f                          ; $675d: $c2 $7f $42

    ld a, a                                       ; $6760: $7f
    ld a, a                                       ; $6761: $7f
    ld b, d                                       ; $6762: $42
    ccf                                           ; $6763: $3f
    ld hl, $213f                                  ; $6764: $21 $3f $21
    ld a, a                                       ; $6767: $7f
    ld hl, $eb00                                  ; $6768: $21 $00 $eb
    pop af                                        ; $676b: $f1
    rst $38                                       ; $676c: $ff
    sub b                                         ; $676d: $90
    call nz, $e500                                ; $676e: $c4 $00 $e5
    ldh a, [$e4]                                  ; $6771: $f0 $e4
    inc bc                                        ; $6773: $03
    dec c                                         ; $6774: $0d
    rlca                                          ; $6775: $07
    dec b                                         ; $6776: $05
    rst $38                                       ; $6777: $ff
    rlca                                          ; $6778: $07
    add a                                         ; $6779: $87
    rlca                                          ; $677a: $07
    db $e4                                        ; $677b: $e4
    rlca                                          ; $677c: $07
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    ld a, [$f8ff]                                 ; $677f: $fa $ff $f8
    ld a, [$f888]                                 ; $6782: $fa $88 $f8
    adc b                                         ; $6785: $88
    ld hl, sp-$08                                 ; $6786: $f8 $f8
    ld [$f83f], sp                                ; $6788: $08 $3f $f8
    ld sp, hl                                     ; $678b: $f9
    ld hl, sp+$0f                                 ; $678c: $f8 $0f
    ld hl, sp-$01                                 ; $678e: $f8 $ff
    ld d, b                                       ; $6790: $50
    ret nz                                        ; $6791: $c0

    jr nz, jr_043_675a                            ; $6792: $20 $c6

    rst $18                                       ; $6794: $df
    ld bc, $03c6                                  ; $6795: $01 $c6 $03
    call z, $3007                                 ; $6798: $cc $07 $30
    ret nz                                        ; $679b: $c0

    rlca                                          ; $679c: $07
    inc e                                         ; $679d: $1c
    ccf                                           ; $679e: $3f
    rra                                           ; $679f: $1f
    ld a, $3f                                     ; $67a0: $3e $3f
    ldh [rIE], a                                  ; $67a2: $e0 $ff
    add c                                         ; $67a4: $81
    ld a, [hl-]                                   ; $67a5: $3a
    jp nz, $c000                                  ; $67a6: $c2 $00 $c0

    cp a                                          ; $67a9: $bf
    ldh [rNR23], a                                ; $67aa: $e0 $18
    ld hl, sp+$06                                 ; $67ac: $f8 $06
    cp $01                                        ; $67ae: $fe $01
    inc l                                         ; $67b0: $2c
    ret nz                                        ; $67b1: $c0

    ldh [$fb], a                                  ; $67b2: $e0 $fb
    rst $38                                       ; $67b4: $ff
    ld hl, sp-$60                                 ; $67b5: $f8 $a0
    jp hl                                         ; $67b7: $e9


    add b                                         ; $67b8: $80
    ld h, e                                       ; $67b9: $63
    ret nz                                        ; $67ba: $c0

    ld [hl], e                                    ; $67bb: $73
    ret nz                                        ; $67bc: $c0

    cp $e0                                        ; $67bd: $fe $e0
    and e                                         ; $67bf: $a3
    di                                            ; $67c0: $f3
    inc bc                                        ; $67c1: $03
    db $e4                                        ; $67c2: $e4
    rlca                                          ; $67c3: $07
    add sp, $0f                                   ; $67c4: $e8 $0f
    ret z                                         ; $67c6: $c8

    rst $38                                       ; $67c7: $ff
    rrca                                          ; $67c8: $0f
    call nc, Call_043_4f1f                        ; $67c9: $d4 $1f $4f
    rrca                                          ; $67cc: $0f
    ld d, b                                       ; $67cd: $50
    rra                                           ; $67ce: $1f
    ldh [$fe], a                                  ; $67cf: $e0 $fe
    di                                            ; $67d1: $f3
    ret nz                                        ; $67d2: $c0

    nop                                           ; $67d3: $00
    rst $38                                       ; $67d4: $ff
    inc e                                         ; $67d5: $1c
    rst $38                                       ; $67d6: $ff
    ld a, [hl]                                    ; $67d7: $7e
    db $e3                                        ; $67d8: $e3
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    add c                                         ; $67db: $81
    jp nz, $6280                                  ; $67dc: $c2 $80 $62

    ldh [rNR10], a                                ; $67df: $e0 $10
    ldh a, [$08]                                  ; $67e1: $f0 $08
    sbc a                                         ; $67e3: $9f
    ld hl, sp+$04                                 ; $67e4: $f8 $04
    db $fc                                        ; $67e6: $fc
    dec b                                         ; $67e7: $05
    db $fc                                        ; $67e8: $fc

Call_043_67e9:
    add [hl]                                      ; $67e9: $86
    pop bc                                        ; $67ea: $c1
    or b                                          ; $67eb: $b0
    and l                                         ; $67ec: $a5
    db $e3                                        ; $67ed: $e3
    ld a, [$e0ce]                                 ; $67ee: $fa $ce $e0
    ret z                                         ; $67f1: $c8

    adc $e0                                       ; $67f2: $ce $e0
    ld b, e                                       ; $67f4: $43
    nop                                           ; $67f5: $00
    ld c, a                                       ; $67f6: $4f
    rrca                                          ; $67f7: $0f
    db $10                                        ; $67f8: $10
    db $ec                                        ; $67f9: $ec
    adc $e8                                       ; $67fa: $ce $e8
    sub b                                         ; $67fc: $90
    and b                                         ; $67fd: $a0
    add b                                         ; $67fe: $80
    ld [hl], b                                    ; $67ff: $70
    adc $e2                                       ; $6800: $ce $e2
    dec b                                         ; $6802: $05
    db $fc                                        ; $6803: $fc

jr_043_6804:
    rlca                                          ; $6804: $07
    cp [hl]                                       ; $6805: $be
    adc $e0                                       ; $6806: $ce $e0
    db $fc                                        ; $6808: $fc
    rlca                                          ; $6809: $07
    ld hl, sp+$0f                                 ; $680a: $f8 $0f
    ld a, b                                       ; $680c: $78
    cp $e0                                        ; $680d: $fe $e0

jr_043_680f:
    jr c, jr_043_680f                             ; $680f: $38 $fe

    cp $e0                                        ; $6811: $fe $e0
    jr jr_043_6824                                ; $6813: $18 $0f

    ld b, h                                       ; $6815: $44
    rlca                                          ; $6816: $07
    ld bc, $31ff                                  ; $6817: $01 $ff $31
    rst $38                                       ; $681a: $ff
    rst $38                                       ; $681b: $ff
    ld a, a                                       ; $681c: $7f
    adc $7f                                       ; $681d: $ce $7f
    ld a, [c]                                     ; $681f: $f2
    rrca                                          ; $6820: $0f
    db $fc                                        ; $6821: $fc
    rrca                                          ; $6822: $0f
    rst $38                                       ; $6823: $ff

jr_043_6824:
    ld hl, sp+$1f                                 ; $6824: $f8 $1f
    ld hl, sp+$7f                                 ; $6826: $f8 $7f
    ld hl, sp-$04                                 ; $6828: $f8 $fc
    ccf                                           ; $682a: $3f
    cp $dd                                        ; $682b: $fe $dd
    rrca                                          ; $682d: $0f
    ld sp, $77c0                                  ; $682e: $31 $c0 $77
    rst $38                                       ; $6831: $ff
    dec bc                                        ; $6832: $0b
    daa                                           ; $6833: $27
    ret nz                                        ; $6834: $c0

    di                                            ; $6835: $f3
    rst $38                                       ; $6836: $ff
    cp l                                          ; $6837: $bd
    ld l, e                                       ; $6838: $6b
    ldh [$a5], a                                  ; $6839: $e0 $a5
    ld a, h                                       ; $683b: $7c
    ret nz                                        ; $683c: $c0

    ld a, h                                       ; $683d: $7c
    ret nz                                        ; $683e: $c0

    and b                                         ; $683f: $a0
    and b                                         ; $6840: $a0
    nop                                           ; $6841: $00
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    dec de                                        ; $6844: $1b
    rst $20                                       ; $6845: $e7
    dec a                                         ; $6846: $3d
    ld h, e                                       ; $6847: $63
    ld a, $63                                     ; $6848: $3e $63
    ld a, $ff                                     ; $684a: $3e $ff
    daa                                           ; $684c: $27
    ld a, $2f                                     ; $684d: $3e $2f
    ld a, $2f                                     ; $684f: $3e $2f
    ld a, [hl-]                                   ; $6851: $3a
    ld e, a                                       ; $6852: $5f
    jr jr_043_6804                                ; $6853: $18 $af

    rst $38                                       ; $6855: $ff
    ld bc, $78ff                                  ; $6856: $01 $ff $78
    ld e, c                                       ; $6859: $59
    and b                                         ; $685a: $a0
    nop                                           ; $685b: $00
    ld a, d                                       ; $685c: $7a
    ret nz                                        ; $685d: $c0

    ld l, b                                       ; $685e: $68
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    ld [hl], b                                    ; $6861: $70
    rst $38                                       ; $6862: $ff
    ld bc, $ff03                                  ; $6863: $01 $03 $ff
    add a                                         ; $6866: $87
    rst $38                                       ; $6867: $ff
    db $fd                                        ; $6868: $fd
    add l                                         ; $6869: $85
    cp $e0                                        ; $686a: $fe $e0
    ret                                           ; $686c: $c9


    ld a, a                                       ; $686d: $7f
    bit 7, [hl]                                   ; $686e: $cb $7e
    rst $10                                       ; $6870: $d7
    ld a, [hl]                                    ; $6871: $7e
    ld [hl], e                                    ; $6872: $73
    db $fd                                        ; $6873: $fd
    ld a, h                                       ; $6874: $7c
    ld b, l                                       ; $6875: $45
    and c                                         ; $6876: $a1
    ldh [$80], a                                  ; $6877: $e0 $80
    ret nz                                        ; $6879: $c0

    db $fc                                        ; $687a: $fc
    and b                                         ; $687b: $a0
    cp $e0                                        ; $687c: $fe $e0
    rst $38                                       ; $687e: $ff
    cp h                                          ; $687f: $bc
    cp $9a                                        ; $6880: $fe $9a
    db $f4                                        ; $6882: $f4
    rra                                           ; $6883: $1f
    rst $38                                       ; $6884: $ff
    dec de                                        ; $6885: $1b
    ld h, a                                       ; $6886: $67
    ld a, [de]                                    ; $6887: $1a
    cp [hl]                                       ; $6888: $be
    ldh [rNR44], a                                ; $6889: $e0 $23
    cp [hl]                                       ; $688b: $be
    ld [c], a                                     ; $688c: $e2
    ld l, a                                       ; $688d: $6f
    ld a, [hl-]                                   ; $688e: $3a
    jp hl                                         ; $688f: $e9


    ret nz                                        ; $6890: $c0

    cp [hl]                                       ; $6891: $be
    ld [$a0b2], a                                 ; $6892: $ea $b2 $a0
    cp $be                                        ; $6895: $fe $be
    ld [$0744], a                                 ; $6897: $ea $44 $07
    ld b, [hl]                                    ; $689a: $46
    inc bc                                        ; $689b: $03
    ld c, $03                                     ; $689c: $0e $03
    rrca                                          ; $689e: $0f
    db $fd                                        ; $689f: $fd
    ld bc, $a580                                  ; $68a0: $01 $80 $a5
    rst $38                                       ; $68a3: $ff
    adc b                                         ; $68a4: $88
    rst $38                                       ; $68a5: $ff
    or b                                          ; $68a6: $b0

jr_043_68a7:
    rst $38                                       ; $68a7: $ff
    sub b                                         ; $68a8: $90
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    ret c                                         ; $68ab: $d8

    rst $28                                       ; $68ac: $ef
    ld hl, sp-$01                                 ; $68ad: $f8 $ff
    inc a                                         ; $68af: $3c
    rst $18                                       ; $68b0: $df
    jr @+$01                                      ; $68b1: $18 $ff

    rst $08                                       ; $68b3: $cf
    add hl, bc                                    ; $68b4: $09
    rst $38                                       ; $68b5: $ff
    ld [hl-], a                                   ; $68b6: $32
    rst $38                                       ; $68b7: $ff
    inc bc                                        ; $68b8: $03
    rst $38                                       ; $68b9: $ff
    ld bc, $e7ff                                  ; $68ba: $01 $ff $e7
    add hl, de                                    ; $68bd: $19
    rst $28                                       ; $68be: $ef
    ld [de], a                                    ; $68bf: $12
    rst $38                                       ; $68c0: $ff
    ld b, $ff                                     ; $68c1: $06 $ff
    inc c                                         ; $68c3: $0c
    rst $38                                       ; $68c4: $ff
    di                                            ; $68c5: $f3
    ldh a, [rVBK]                                 ; $68c6: $f0 $4f
    ld [$0e4f], sp                                ; $68c8: $08 $4f $0e
    dec bc                                        ; $68cb: $0b
    rrca                                          ; $68cc: $0f
    ei                                            ; $68cd: $fb
    rrca                                          ; $68ce: $0f
    inc b                                         ; $68cf: $04
    ret nc                                        ; $68d0: $d0

    and $00                                       ; $68d1: $e6 $00
    ldh a, [rIF]                                  ; $68d3: $f0 $0f
    push af                                       ; $68d5: $f5
    ld a, [bc]                                    ; $68d6: $0a
    ei                                            ; $68d7: $fb

jr_043_68d8:
    ei                                            ; $68d8: $fb
    add h                                         ; $68d9: $84
    xor [hl]                                      ; $68da: $ae
    and b                                         ; $68db: $a0
    ld sp, $2fff                                  ; $68dc: $31 $ff $2f
    rst $10                                       ; $68df: $d7
    ld a, h                                       ; $68e0: $7c
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    ld d, h                                       ; $68e3: $54
    rst $38                                       ; $68e4: $ff
    inc d                                         ; $68e5: $14
    rst $38                                       ; $68e6: $ff
    jr jr_043_68d8                                ; $68e7: $18 $ef

    add hl, sp                                    ; $68e9: $39
    rst $28                                       ; $68ea: $ef
    rst $10                                       ; $68eb: $d7
    ld d, [hl]                                    ; $68ec: $56
    sbc a                                         ; $68ed: $9f
    sbc b                                         ; $68ee: $98
    ld a, a                                       ; $68ef: $7f
    ret nz                                        ; $68f0: $c0

    nop                                           ; $68f1: $00
    cp $82                                        ; $68f2: $fe $82
    ld a, [$e0fe]                                 ; $68f4: $fa $fe $e0
    jp nz, $e0fa                                  ; $68f7: $c2 $fa $e0

    ld [de], a                                    ; $68fa: $12
    db $fd                                        ; $68fb: $fd
    inc a                                         ; $68fc: $3c
    rst $00                                       ; $68fd: $c7
    ld b, b                                       ; $68fe: $40
    ld a, a                                       ; $68ff: $7f
    rst $08                                       ; $6900: $cf
    add b                                         ; $6901: $80
    ld e, a                                       ; $6902: $5f
    jr jr_043_6954                                ; $6903: $18 $4f

    ld [$be0f], sp                                ; $6905: $08 $0f $be
    ldh [$a3], a                                  ; $6908: $e0 $a3
    rlca                                          ; $690a: $07
    inc b                                         ; $690b: $04
    ret nz                                        ; $690c: $c0

    and h                                         ; $690d: $a4
    ld d, a                                       ; $690e: $57
    ret nz                                        ; $690f: $c0

    cp [hl]                                       ; $6910: $be
    jp hl                                         ; $6911: $e9


jr_043_6912:
    rst $38                                       ; $6912: $ff
    cp [hl]                                       ; $6913: $be
    push hl                                       ; $6914: $e5
    dec sp                                        ; $6915: $3b
    ccf                                           ; $6916: $3f
    rst $10                                       ; $6917: $d7
    ld d, d                                       ; $6918: $52
    db $e3                                        ; $6919: $e3
    add d                                         ; $691a: $82
    di                                            ; $691b: $f3
    add d                                         ; $691c: $82
    jr nc, jr_043_68a7                            ; $691d: $30 $88

    ret nc                                        ; $691f: $d0

    and c                                         ; $6920: $a1
    cp a                                          ; $6921: $bf
    ldh a, [$fe]                                  ; $6922: $f0 $fe
    ccf                                           ; $6924: $3f
    pop af                                        ; $6925: $f1
    ld e, a                                       ; $6926: $5f
    ld [hl], c                                    ; $6927: $71
    cp $e0                                        ; $6928: $fe $e0
    ld a, l                                       ; $692a: $7d
    ld a, a                                       ; $692b: $7f
    ld e, a                                       ; $692c: $5f
    ld a, a                                       ; $692d: $7f
    ld e, a                                       ; $692e: $5f
    ld a, a                                       ; $692f: $7f
    ld c, a                                       ; $6930: $4f
    ld a, a                                       ; $6931: $7f
    cpl                                           ; $6932: $2f
    ld d, h                                       ; $6933: $54
    ldh [$fb], a                                  ; $6934: $e0 $fb
    ld [$fefe], sp                                ; $6936: $08 $fe $fe
    ldh [$fd], a                                  ; $6939: $e0 $fd
    add l                                         ; $693b: $85
    rst $38                                       ; $693c: $ff
    add [hl]                                      ; $693d: $86
    rst $38                                       ; $693e: $ff
    ld [hl], a                                    ; $693f: $77
    call nz, $c0ff                                ; $6940: $c4 $ff $c0
    jp nc, Jump_043_44c0                          ; $6943: $d2 $c0 $44

    rst $38                                       ; $6946: $ff
    add h                                         ; $6947: $84
    or $e0                                        ; $6948: $f6 $e0

jr_043_694a:
    rst $38                                       ; $694a: $ff
    add h                                         ; $694b: $84
    rst $38                                       ; $694c: $ff
    jr @+$01                                      ; $694d: $18 $ff

    jr nz, jr_043_6912                            ; $694f: $20 $c1

    ld b, b                                       ; $6951: $40
    rst $08                                       ; $6952: $cf
    rst $38                                       ; $6953: $ff

jr_043_6954:
    ld a, b                                       ; $6954: $78
    rst $08                                       ; $6955: $cf
    ld a, b                                       ; $6956: $78
    ld b, a                                       ; $6957: $47
    ld a, h                                       ; $6958: $7c
    ld h, e                                       ; $6959: $63
    ccf                                           ; $695a: $3f
    jr nc, jr_043_69dc                            ; $695b: $30 $7f

    ccf                                           ; $695d: $3f
    jr c, jr_043_697f                             ; $695e: $38 $1f

    rra                                           ; $6960: $1f
    rra                                           ; $6961: $1f
    ld e, a                                       ; $6962: $5f
    rra                                           ; $6963: $1f
    or b                                          ; $6964: $b0
    ret nz                                        ; $6965: $c0

    rst $38                                       ; $6966: $ff
    ld [bc], a                                    ; $6967: $02
    cp $1c                                        ; $6968: $fe $1c
    cp $f0                                        ; $696a: $fe $f0
    inc a                                         ; $696c: $3c
    ldh a, [$fc]                                  ; $696d: $f0 $fc
    rst $38                                       ; $696f: $ff
    ldh [$f8], a                                  ; $6970: $e0 $f8
    ldh [$e2], a                                  ; $6972: $e0 $e2
    ldh [$d7], a                                  ; $6974: $e0 $d7
    ld a, h                                       ; $6976: $7c
    rst $08                                       ; $6977: $cf
    ld a, l                                       ; $6978: $7d
    ld a, b                                       ; $6979: $78
    rst $08                                       ; $697a: $cf
    add b                                         ; $697b: $80
    ld a, b                                       ; $697c: $78
    daa                                           ; $697d: $27
    inc a                                         ; $697e: $3c

jr_043_697f:
    ccf                                           ; $697f: $3f
    ld a, $e0                                     ; $6980: $3e $e0
    ld [c], a                                     ; $6982: $e2
    rst $38                                       ; $6983: $ff
    jp nz, Jump_043_62ff                          ; $6984: $c2 $ff $62

    rst $18                                       ; $6987: $df
    ld [hl], e                                    ; $6988: $73
    rst $38                                       ; $6989: $ff
    inc a                                         ; $698a: $3c
    rst $38                                       ; $698b: $ff
    ld [hl], l                                    ; $698c: $75
    jr nc, @+$28                                  ; $698d: $30 $26

    add b                                         ; $698f: $80
    ld [bc], a                                    ; $6990: $02
    ld b, b                                       ; $6991: $40
    and b                                         ; $6992: $a0
    ld l, b                                       ; $6993: $68
    rst $38                                       ; $6994: $ff
    ld [$e2fe], sp                                ; $6995: $08 $fe $e2
    rst $30                                       ; $6998: $f7
    ld c, b                                       ; $6999: $48
    rst $38                                       ; $699a: $ff
    ldh a, [rNR10]                                ; $699b: $f0 $10
    add c                                         ; $699d: $81
    ld a, a                                       ; $699e: $7f
    cpl                                           ; $699f: $2f
    ld e, a                                       ; $69a0: $5f
    rra                                           ; $69a1: $1f
    cp l                                          ; $69a2: $bd
    ccf                                           ; $69a3: $3f
    rst $38                                       ; $69a4: $ff
    ldh [$2f], a                                  ; $69a5: $e0 $2f
    ccf                                           ; $69a7: $3f
    rst $00                                       ; $69a8: $c7
    ld a, a                                       ; $69a9: $7f
    ldh [$82], a                                  ; $69aa: $e0 $82
    ldh [rIE], a                                  ; $69ac: $e0 $ff
    rst $38                                       ; $69ae: $ff
    pop af                                        ; $69af: $f1
    cp $fe                                        ; $69b0: $fe $fe
    db $fc                                        ; $69b2: $fc
    db $fc                                        ; $69b3: $fc
    adc $fe                                       ; $69b4: $ce $fe
    jp hl                                         ; $69b6: $e9


    add a                                         ; $69b7: $87
    ld e, b                                       ; $69b8: $58
    add b                                         ; $69b9: $80
    ldh [$80], a                                  ; $69ba: $e0 $80
    add b                                         ; $69bc: $80
    jr nc, jr_043_694a                            ; $69bd: $30 $8b

    ld e, a                                       ; $69bf: $5f
    rra                                           ; $69c0: $1f
    ld a, a                                       ; $69c1: $7f
    sbc $d1                                       ; $69c2: $de $d1
    pop hl                                        ; $69c4: $e1
    ccf                                           ; $69c5: $3f
    ld a, a                                       ; $69c6: $7f
    ld a, a                                       ; $69c7: $7f
    call c, $e2d0                                 ; $69c8: $dc $d0 $e2
    ld [c], a                                     ; $69cb: $e2
    ldh [rIE], a                                  ; $69cc: $e0 $ff
    ld a, [c]                                     ; $69ce: $f2
    ldh a, [$f0]                                  ; $69cf: $f0 $f0
    ldh a, [$f8]                                  ; $69d1: $f0 $f8
    ld hl, sp+$18                                 ; $69d3: $f8 $18
    ld hl, sp+$3d                                 ; $69d5: $f8 $3d
    dec c                                         ; $69d7: $0d
    ret nc                                        ; $69d8: $d0

jr_043_69d9:
    and b                                         ; $69d9: $a0
    rst $38                                       ; $69da: $ff
    db $fc                                        ; $69db: $fc

jr_043_69dc:
    ld a, [$f0c8]                                 ; $69dc: $fa $c8 $f0
    db $eb                                        ; $69df: $eb
    ret nz                                        ; $69e0: $c0

    add d                                         ; $69e1: $82
    add hl, sp                                    ; $69e2: $39
    ld b, d                                       ; $69e3: $42
    cp $e1                                        ; $69e4: $fe $e1
    ret nz                                        ; $69e6: $c0

    add h                                         ; $69e7: $84
    ld b, c                                       ; $69e8: $41
    rst $38                                       ; $69e9: $ff
    ld b, c                                       ; $69ea: $41
    ld a, [c]                                     ; $69eb: $f2
    ld [c], a                                     ; $69ec: $e2
    or b                                          ; $69ed: $b0
    add b                                         ; $69ee: $80
    xor a                                         ; $69ef: $af
    ld hl, sp-$78                                 ; $69f0: $f8 $88
    ld a, [$4d88]                                 ; $69f2: $fa $88 $4d
    ld h, b                                       ; $69f5: $60
    inc b                                         ; $69f6: $04
    jr nz, jr_043_69d9                            ; $69f7: $20 $e0

    add d                                         ; $69f9: $82
    or $ae                                        ; $69fa: $f6 $ae
    add e                                         ; $69fc: $83
    ld a, a                                       ; $69fd: $7f
    ld hl, $60c0                                  ; $69fe: $21 $c0 $60
    ld bc, $010f                                  ; $6a01: $01 $0f $01
    rrca                                          ; $6a04: $0f
    rst $38                                       ; $6a05: $ff
    inc bc                                        ; $6a06: $03
    ld b, $03                                     ; $6a07: $06 $03
    add a                                         ; $6a09: $87
    inc bc                                        ; $6a0a: $03
    ld [c], a                                     ; $6a0b: $e2
    inc bc                                        ; $6a0c: $03
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    ld a, [c]                                     ; $6a10: $f2
    ldh a, [$f2]                                  ; $6a11: $f0 $f2
    db $10                                        ; $6a13: $10
    ldh a, [rNR10]                                ; $6a14: $f0 $10
    ldh a, [$fe]                                  ; $6a16: $f0 $fe
    db $fd                                        ; $6a18: $fd
    ldh [$f1], a                                  ; $6a19: $e0 $f1
    ldh a, [rNR22]                                ; $6a1b: $f0 $17
    ldh a, [rIE]                                  ; $6a1d: $f0 $ff
    rst $38                                       ; $6a1f: $ff
    ld e, a                                       ; $6a20: $5f
    cp a                                          ; $6a21: $bf
    rra                                           ; $6a22: $1f
    ld e, a                                       ; $6a23: $5f
    ld de, $111f                                  ; $6a24: $11 $1f $11
    rra                                           ; $6a27: $1f
    db $fd                                        ; $6a28: $fd
    ldh [$9f], a                                  ; $6a29: $e0 $9f
    rlca                                          ; $6a2b: $07
    rra                                           ; $6a2c: $1f
    ldh a, [$1f]                                  ; $6a2d: $f0 $1f
    ret nz                                        ; $6a2f: $c0

    add h                                         ; $6a30: $84
    ld e, $a0                                     ; $6a31: $1e $a0
    ldh [$e5], a                                  ; $6a33: $e0 $e5
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
    rst $28                                       ; $6a40: $ef
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    add b                                         ; $6a44: $80
    cp $ea                                        ; $6a45: $fe $ea
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    nop                                           ; $6a49: $00
    cp $fe                                        ; $6a4a: $fe $fe
    ld [$cfff], a                                 ; $6a4c: $ea $ff $cf
    nop                                           ; $6a4f: $00
    cp b                                          ; $6a50: $b8
    nop                                           ; $6a51: $00
    ld h, a                                       ; $6a52: $67
    nop                                           ; $6a53: $00
    push bc                                       ; $6a54: $c5
    ld e, l                                       ; $6a55: $5d
    cp $e0                                        ; $6a56: $fe $e0
    ld h, a                                       ; $6a58: $67
    or $e0                                        ; $6a59: $f6 $e0
    rst $38                                       ; $6a5b: $ff
    db $ed                                        ; $6a5c: $ed
    jp nz, $f0e5                                  ; $6a5d: $c2 $e5 $f0

    add b                                         ; $6a60: $80
    cp a                                          ; $6a61: $bf
    rst $08                                       ; $6a62: $cf
    add b                                         ; $6a63: $80
    cp b                                          ; $6a64: $b8
    add b                                         ; $6a65: $80
    rst $20                                       ; $6a66: $e7
    add b                                         ; $6a67: $80
    jp nz, $0fe5                                  ; $6a68: $c2 $e5 $0f

    rst $38                                       ; $6a6b: $ff
    nop                                           ; $6a6c: $00
    di                                            ; $6a6d: $f3
    nop                                           ; $6a6e: $00
    dec e                                         ; $6a6f: $1d
    nop                                           ; $6a70: $00
    and $00                                       ; $6a71: $e6 $00
    rst $08                                       ; $6a73: $cf
    rst $38                                       ; $6a74: $ff
    nop                                           ; $6a75: $00
    ldh a, [rP1]                                  ; $6a76: $f0 $00
    sbc [hl]                                      ; $6a78: $9e
    nop                                           ; $6a79: $00
    add [hl]                                      ; $6a7a: $86
    nop                                           ; $6a7b: $00
    add d                                         ; $6a7c: $82
    cp a                                          ; $6a7d: $bf
    nop                                           ; $6a7e: $00
    ret nz                                        ; $6a7f: $c0

    nop                                           ; $6a80: $00
    ldh [rP1], a                                  ; $6a81: $e0 $00
    ld hl, sp-$16                                 ; $6a83: $f8 $ea
    ldh [rIF], a                                  ; $6a85: $e0 $0f
    rst $38                                       ; $6a87: $ff
    nop                                           ; $6a88: $00
    ld a, c                                       ; $6a89: $79
    nop                                           ; $6a8a: $00
    ld h, c                                       ; $6a8b: $61
    ld bc, $0746                                  ; $6a8c: $01 $46 $07
    ld [$0fdf], sp                                ; $6a8f: $08 $df $0f
    db $10                                        ; $6a92: $10
    rra                                           ; $6a93: $1f
    db $10                                        ; $6a94: $10
    rra                                           ; $6a95: $1f
    sub d                                         ; $6a96: $92
    ldh [rNR34], a                                ; $6a97: $e0 $1e
    pop hl                                        ; $6a99: $e1
    push af                                       ; $6a9a: $f5
    ld a, a                                       ; $6a9b: $7f
    ret                                           ; $6a9c: $c9


    push hl                                       ; $6a9d: $e5
    inc bc                                        ; $6a9e: $03
    add d                                         ; $6a9f: $82
    push hl                                       ; $6aa0: $e5
    ldh [$9f], a                                  ; $6aa1: $e0 $9f
    ld hl, sp+$07                                 ; $6aa3: $f8 $07
    rst $38                                       ; $6aa5: $ff
    db $fc                                        ; $6aa6: $fc
    inc bc                                        ; $6aa7: $03
    cp $02                                        ; $6aa8: $fe $02
    cp $dd                                        ; $6aaa: $fe $dd
    add b                                         ; $6aac: $80
    db $dd                                        ; $6aad: $dd
    ld a, [$e0aa]                                 ; $6aae: $fa $aa $e0
    cp b                                          ; $6ab1: $b8
    and d                                         ; $6ab2: $a2
    ldh [$f0], a                                  ; $6ab3: $e0 $f0
    add b                                         ; $6ab5: $80
    sbc [hl]                                      ; $6ab6: $9e
    add b                                         ; $6ab7: $80
    add [hl]                                      ; $6ab8: $86
    cpl                                           ; $6ab9: $2f
    add b                                         ; $6aba: $80
    cp d                                          ; $6abb: $ba
    nop                                           ; $6abc: $00
    cp d                                          ; $6abd: $ba
    xor d                                         ; $6abe: $aa
    ldh [rNR33], a                                ; $6abf: $e0 $1d
    cp b                                          ; $6ac1: $b8
    push hl                                       ; $6ac2: $e5
    ld d, h                                       ; $6ac3: $54
    db $eb                                        ; $6ac4: $eb
    or $46                                        ; $6ac5: $f6 $46
    ldh [$e0], a                                  ; $6ac7: $e0 $e0
    ccf                                           ; $6ac9: $3f
    cp $e3                                        ; $6aca: $fe $e3
    db $e4                                        ; $6acc: $e4
    ccf                                           ; $6acd: $3f
    db $f4                                        ; $6ace: $f4
    rra                                           ; $6acf: $1f
    rst $38                                       ; $6ad0: $ff
    ld a, [$fe1f]                                 ; $6ad1: $fa $1f $fe
    rrca                                          ; $6ad4: $0f
    rlca                                          ; $6ad5: $07
    db $fc                                        ; $6ad6: $fc
    rrca                                          ; $6ad7: $0f
    ld hl, sp-$41                                 ; $6ad8: $f8 $bf
    rra                                           ; $6ada: $1f
    ldh a, [$1f]                                  ; $6adb: $f0 $1f
    pop af                                        ; $6add: $f1
    ccf                                           ; $6ade: $3f
    ld [c], a                                     ; $6adf: $e2
    rst $20                                       ; $6ae0: $e7
    ldh [$e1], a                                  ; $6ae1: $e0 $e1
    rst $38                                       ; $6ae3: $ff
    ld a, a                                       ; $6ae4: $7f
    jp nz, $ffc1                                  ; $6ae5: $c2 $c1 $ff

    push hl                                       ; $6ae8: $e5
    ccf                                           ; $6ae9: $3f
    rst $38                                       ; $6aea: $ff
    dec de                                        ; $6aeb: $1b
    rst $28                                       ; $6aec: $ef
    db $fd                                        ; $6aed: $fd
    rst $10                                       ; $6aee: $d7
    ld sp, hl                                     ; $6aef: $f9
    rrca                                          ; $6af0: $0f
    cp $e0                                        ; $6af1: $fe $e0
    rst $28                                       ; $6af3: $ef
    rst $38                                       ; $6af4: $ff
    adc $7f                                       ; $6af5: $ce $7f
    add d                                         ; $6af7: $82
    add b                                         ; $6af8: $80
    ret nz                                        ; $6af9: $c0

    add b                                         ; $6afa: $80
    ldh [$80], a                                  ; $6afb: $e0 $80
    ld hl, sp-$04                                 ; $6afd: $f8 $fc
    add $7f                                       ; $6aff: $c6 $7f
    ld b, c                                       ; $6b01: $41
    nop                                           ; $6b02: $00
    inc bc                                        ; $6b03: $03
    nop                                           ; $6b04: $00
    rlca                                          ; $6b05: $07
    nop                                           ; $6b06: $00
    rra                                           ; $6b07: $1f
    db $fc                                        ; $6b08: $fc
    add $f9                                       ; $6b09: $c6 $f9
    ldh a, [$3e]                                  ; $6b0b: $f0 $3e
    ldh [rP1], a                                  ; $6b0d: $e0 $00
    jp hl                                         ; $6b0f: $e9


    rrca                                          ; $6b10: $0f
    dec bc                                        ; $6b11: $0b
    rst $38                                       ; $6b12: $ff
    add hl, bc                                    ; $6b13: $09
    rra                                           ; $6b14: $1f
    rst $38                                       ; $6b15: $ff
    ld [$05e7], sp                                ; $6b16: $08 $e7 $05
    cp a                                          ; $6b19: $bf
    rlca                                          ; $6b1a: $07
    cp l                                          ; $6b1b: $bd
    rlca                                          ; $6b1c: $07
    and $ff                                       ; $6b1d: $e6 $ff
    ld [bc], a                                    ; $6b1f: $02
    dec e                                         ; $6b20: $1d
    nop                                           ; $6b21: $00
    ld a, a                                       ; $6b22: $7f
    pop bc                                        ; $6b23: $c1
    rst $38                                       ; $6b24: $ff
    ret z                                         ; $6b25: $c8

    rst $38                                       ; $6b26: $ff
    rst $30                                       ; $6b27: $f7
    ld b, b                                       ; $6b28: $40
    pop af                                        ; $6b29: $f1
    ld c, $ba                                     ; $6b2a: $0e $ba
    ret nz                                        ; $6b2c: $c0

    ld b, b                                       ; $6b2d: $40
    rst $38                                       ; $6b2e: $ff
    ld sp, $dfff                                  ; $6b2f: $31 $ff $df
    rra                                           ; $6b32: $1f
    rst $38                                       ; $6b33: $ff
    jp z, Jump_000_02ff                           ; $6b34: $ca $ff $02

    cp $e0                                        ; $6b37: $fe $e0
    inc d                                         ; $6b39: $14
    rst $38                                       ; $6b3a: $ff
    cp a                                          ; $6b3b: $bf
    inc a                                         ; $6b3c: $3c
    rst $30                                       ; $6b3d: $f7
    ld e, h                                       ; $6b3e: $5c
    rst $38                                       ; $6b3f: $ff
    adc b                                         ; $6b40: $88
    rst $38                                       ; $6b41: $ff
    db $10                                        ; $6b42: $10
    pop hl                                        ; $6b43: $e1
    ld bc, $7bff                                  ; $6b44: $01 $ff $7b
    ld [bc], a                                    ; $6b47: $02
    ld h, e                                       ; $6b48: $63
    ld [bc], a                                    ; $6b49: $02
    ld b, a                                       ; $6b4a: $47
    inc b                                         ; $6b4b: $04
    rlca                                          ; $6b4c: $07
    inc b                                         ; $6b4d: $04
    db $fd                                        ; $6b4e: $fd
    rrca                                          ; $6b4f: $0f
    add $e0                                       ; $6b50: $c6 $e0
    rst $38                                       ; $6b52: $ff
    pop de                                        ; $6b53: $d1
    xor $3f                                       ; $6b54: $ee $3f
    ret nz                                        ; $6b56: $c0

    ld a, a                                       ; $6b57: $7f
    rst $20                                       ; $6b58: $e7
    adc [hl]                                      ; $6b59: $8e
    rst $38                                       ; $6b5a: $ff
    sbc a                                         ; $6b5b: $9f
    add a                                         ; $6b5c: $87
    ret nz                                        ; $6b5d: $c0

    db $fd                                        ; $6b5e: $fd
    ld [c], a                                     ; $6b5f: $e2
    ld h, b                                       ; $6b60: $60
    rst $38                                       ; $6b61: $ff
    sub b                                         ; $6b62: $90
    rst $38                                       ; $6b63: $ff
    ld a, a                                       ; $6b64: $7f
    ret z                                         ; $6b65: $c8

    ccf                                           ; $6b66: $3f
    add sp, $3f                                   ; $6b67: $e8 $3f
    add sp, -$05                                  ; $6b69: $e8 $fb
    add sp, -$41                                  ; $6b6b: $e8 $bf
    db $fd                                        ; $6b6d: $fd
    ret z                                         ; $6b6e: $c8

    cp $88                                        ; $6b6f: $fe $88
    rst $38                                       ; $6b71: $ff
    inc b                                         ; $6b72: $04
    ret nz                                        ; $6b73: $c0

    ldh [rSB], a                                  ; $6b74: $e0 $01
    ld c, d                                       ; $6b76: $4a
    ld a, h                                       ; $6b77: $7c
    jp nz, $fe01                                  ; $6b78: $c2 $01 $fe

    ld [c], a                                     ; $6b7b: $e2
    ld a, a                                       ; $6b7c: $7f
    cp $e2                                        ; $6b7d: $fe $e2
    ret nc                                        ; $6b7f: $d0

    ldh [$0e], a                                  ; $6b80: $e0 $0e
    ld [hl], e                                    ; $6b82: $73
    pop bc                                        ; $6b83: $c1
    rst $38                                       ; $6b84: $ff
    rst $38                                       ; $6b85: $ff
    cp $84                                        ; $6b86: $fe $84
    cp $c4                                        ; $6b88: $fe $c4
    cp $c4                                        ; $6b8a: $fe $c4
    db $fd                                        ; $6b8c: $fd
    rst $38                                       ; $6b8d: $ff
    db $ec                                        ; $6b8e: $ec
    ccf                                           ; $6b8f: $3f
    ld a, [c]                                     ; $6b90: $f2
    rra                                           ; $6b91: $1f
    or $1f                                        ; $6b92: $f6 $1f
    pop af                                        ; $6b94: $f1
    rst $38                                       ; $6b95: $ff
    sbc a                                         ; $6b96: $9f
    pop af                                        ; $6b97: $f1
    rrca                                          ; $6b98: $0f
    ld bc, $01f3                                  ; $6b99: $01 $f3 $01
    sbc b                                         ; $6b9c: $98
    pop bc                                        ; $6b9d: $c1
    add sp, -$3b                                  ; $6b9e: $e8 $c5
    rst $38                                       ; $6ba0: $ff
    rst $30                                       ; $6ba1: $f7
    inc c                                         ; $6ba2: $0c
    rst $38                                       ; $6ba3: $ff
    ld [$e088], sp                                ; $6ba4: $08 $88 $e0
    adc b                                         ; $6ba7: $88
    rst $38                                       ; $6ba8: $ff
    xor b                                         ; $6ba9: $a8
    rst $38                                       ; $6baa: $ff
    db $fd                                        ; $6bab: $fd
    ld b, h                                       ; $6bac: $44
    cp $e0                                        ; $6bad: $fe $e0
    ld b, [hl]                                    ; $6baf: $46
    rst $38                                       ; $6bb0: $ff
    ld de, $36ff                                  ; $6bb1: $11 $ff $36
    rst $28                                       ; $6bb4: $ef
    sub a                                         ; $6bb5: $97
    inc l                                         ; $6bb6: $2c
    rst $18                                       ; $6bb7: $df
    ld b, b                                       ; $6bb8: $40
    ld h, d                                       ; $6bb9: $62
    ldh [rNR41], a                                ; $6bba: $e0 $20
    cp $e1                                        ; $6bbc: $fe $e1
    ld [hl], b                                    ; $6bbe: $70
    set 7, a                                      ; $6bbf: $cb $ff
    db $fd                                        ; $6bc1: $fd
    rst $38                                       ; $6bc2: $ff
    ld [hl], b                                    ; $6bc3: $70

jr_043_6bc4:
    jp nz, Jump_043_6201                          ; $6bc4: $c2 $01 $62

    inc bc                                        ; $6bc7: $03
    ld b, d                                       ; $6bc8: $42
    inc bc                                        ; $6bc9: $03
    inc bc                                        ; $6bca: $03
    di                                            ; $6bcb: $f3
    inc bc                                        ; $6bcc: $03

jr_043_6bcd:
    ld b, $81                                     ; $6bcd: $06 $81
    ret nz                                        ; $6bcf: $c0

    sub b                                         ; $6bd0: $90
    ldh [rLYC], a                                 ; $6bd1: $e0 $45
    rst $38                                       ; $6bd3: $ff
    push hl                                       ; $6bd4: $e5
    rra                                           ; $6bd5: $1f
    ld a, a                                       ; $6bd6: $7f
    db $fd                                        ; $6bd7: $fd
    rla                                           ; $6bd8: $17
    db $fd                                        ; $6bd9: $fd
    rst $38                                       ; $6bda: $ff
    db $fd                                        ; $6bdb: $fd
    rlca                                          ; $6bdc: $07
    db $fd                                        ; $6bdd: $fd
    ld [c], a                                     ; $6bde: $e2
    and b                                         ; $6bdf: $a0
    rst $38                                       ; $6be0: $ff
    ldh a, [rIE]                                  ; $6be1: $f0 $ff
    db $10                                        ; $6be3: $10
    rst $38                                       ; $6be4: $ff
    inc a                                         ; $6be5: $3c
    jp Jump_043_43fe                              ; $6be6: $c3 $fe $43


    sbc a                                         ; $6be9: $9f
    cp $ff                                        ; $6bea: $fe $ff
    cp $83                                        ; $6bec: $fe $83
    cp $4b                                        ; $6bee: $fe $4b
    pop hl                                        ; $6bf0: $e1
    ldh a, [$a9]                                  ; $6bf1: $f0 $a9
    cp d                                          ; $6bf3: $ba
    cp l                                          ; $6bf4: $bd
    ld [bc], a                                    ; $6bf5: $02
    ret nz                                        ; $6bf6: $c0

    db $e3                                        ; $6bf7: $e3
    ld h, [hl]                                    ; $6bf8: $66
    rlca                                          ; $6bf9: $07
    ld c, b                                       ; $6bfa: $48
    rrca                                          ; $6bfb: $0f
    jr nc, jr_043_6bc4                            ; $6bfc: $30 $c6

    ld a, $f5                                     ; $6bfe: $3e $f5
    pop bc                                        ; $6c00: $c1
    cp l                                          ; $6c01: $bd
    and [hl]                                      ; $6c02: $a6
    rlca                                          ; $6c03: $07
    jr nc, jr_043_6bcd                            ; $6c04: $30 $c7

    ldh a, [$0b]                                  ; $6c06: $f0 $0b
    ld hl, sp+$05                                 ; $6c08: $f8 $05
    rst $30                                       ; $6c0a: $f7
    db $fc                                        ; $6c0b: $fc
    ld [bc], a                                    ; $6c0c: $02
    cp $00                                        ; $6c0d: $fe $00
    pop bc                                        ; $6c0f: $c1
    ld a, a                                       ; $6c10: $7f
    rlca                                          ; $6c11: $07
    ld l, b                                       ; $6c12: $68
    rrca                                          ; $6c13: $0f
    rst $38                                       ; $6c14: $ff
    ld d, b                                       ; $6c15: $50
    rra                                           ; $6c16: $1f
    jr nz, @+$41                                  ; $6c17: $20 $3f

    jr nz, jr_043_6c5a                            ; $6c19: $20 $3f

    ld b, b                                       ; $6c1b: $40
    ld a, a                                       ; $6c1c: $7f
    ld hl, sp-$6e                                 ; $6c1d: $f8 $92
    and b                                         ; $6c1f: $a0
    ld d, $c1                                     ; $6c20: $16 $c1
    set 0, b                                      ; $6c22: $cb $c0
    nop                                           ; $6c24: $00
    rst $38                                       ; $6c25: $ff
    inc e                                         ; $6c26: $1c
    rst $38                                       ; $6c27: $ff
    ccf                                           ; $6c28: $3f
    db $fd                                        ; $6c29: $fd
    db $e3                                        ; $6c2a: $e3
    add d                                         ; $6c2b: $82
    and h                                         ; $6c2c: $a4
    add b                                         ; $6c2d: $80
    ld l, a                                       ; $6c2e: $6f
    ldh [rNR13], a                                ; $6c2f: $e0 $13
    ldh a, [$0d]                                  ; $6c31: $f0 $0d
    rst $30                                       ; $6c33: $f7
    ld hl, sp+$0e                                 ; $6c34: $f8 $0e
    ld hl, sp-$40                                 ; $6c36: $f8 $c0
    and l                                         ; $6c38: $a5
    jp nz, $e040                                  ; $6c39: $c2 $40 $e0

    and b                                         ; $6c3c: $a0
    rst $38                                       ; $6c3d: $ff
    ldh [rLCDC], a                                ; $6c3e: $e0 $40
    ld hl, sp+$00                                 ; $6c40: $f8 $00
    rst $08                                       ; $6c42: $cf
    dec b                                         ; $6c43: $05
    ld a, [c]                                     ; $6c44: $f2
    ld [bc], a                                    ; $6c45: $02
    xor a                                         ; $6c46: $af
    sbc [hl]                                      ; $6c47: $9e
    ld [$1096], sp                                ; $6c48: $08 $96 $10
    or b                                          ; $6c4b: $b0
    and h                                         ; $6c4c: $a4
    jr @-$5e                                      ; $6c4d: $18 $a0

    xor h                                         ; $6c4f: $ac
    jr jr_043_6ccc                                ; $6c50: $18 $7a

    ld [bc], a                                    ; $6c52: $02
    push bc                                       ; $6c53: $c5
    db $e4                                        ; $6c54: $e4
    rst $18                                       ; $6c55: $df
    ret nz                                        ; $6c56: $c0

    ld a, [$fd1f]                                 ; $6c57: $fa $1f $fd

jr_043_6c5a:
    rrca                                          ; $6c5a: $0f
    ld [bc], a                                    ; $6c5b: $02
    res 7, a                                      ; $6c5c: $cb $bf
    ld a, a                                       ; $6c5e: $7f
    pop bc                                        ; $6c5f: $c1
    jp nz, $e1fe                                  ; $6c60: $c2 $fe $e1

    ccf                                           ; $6c63: $3f
    add e                                         ; $6c64: $83
    ret nz                                        ; $6c65: $c0

    ld d, e                                       ; $6c66: $53
    db $fd                                        ; $6c67: $fd
    db $fd                                        ; $6c68: $fd
    ld [bc], a                                    ; $6c69: $02
    ret nz                                        ; $6c6a: $c0

    ld sp, hl                                     ; $6c6b: $f9
    rst $08                                       ; $6c6c: $cf
    rst $38                                       ; $6c6d: $ff
    rst $08                                       ; $6c6e: $cf
    ret nz                                        ; $6c6f: $c0

    ld a, a                                       ; $6c70: $7f
    rst $30                                       ; $6c71: $f7
    ret nz                                        ; $6c72: $c0

    ld a, a                                       ; $6c73: $7f
    ret nc                                        ; $6c74: $d0

    cp $e2                                        ; $6c75: $fe $e2
    ret                                           ; $6c77: $c9


    ld a, a                                       ; $6c78: $7f
    jp hl                                         ; $6c79: $e9


    ccf                                           ; $6c7a: $3f
    ei                                            ; $6c7b: $fb

jr_043_6c7c:
    push af                                       ; $6c7c: $f5
    ccf                                           ; $6c7d: $3f
    pop af                                        ; $6c7e: $f1
    ldh [$c0], a                                  ; $6c7f: $e0 $c0
    rst $38                                       ; $6c81: $ff
    adc a                                         ; $6c82: $8f
    rst $38                                       ; $6c83: $ff
    sub b                                         ; $6c84: $90
    ei                                            ; $6c85: $fb
    rst $38                                       ; $6c86: $ff
    add e                                         ; $6c87: $83
    ld a, b                                       ; $6c88: $78
    jp nz, $860f                                  ; $6c89: $c2 $0f $86

    db $fc                                        ; $6c8c: $fc
    cp $7c                                        ; $6c8d: $fe $7c
    rst $38                                       ; $6c8f: $ff
    ld a, [$f74e]                                 ; $6c90: $fa $4e $f7
    cp $ff                                        ; $6c93: $fe $ff
    cp c                                          ; $6c95: $b9
    rst $38                                       ; $6c96: $ff
    db $d3                                        ; $6c97: $d3
    inc de                                        ; $6c98: $13
    rst $38                                       ; $6c99: $ff
    ld a, l                                       ; $6c9a: $7d
    xor d                                         ; $6c9b: $aa
    ret nz                                        ; $6c9c: $c0

    ld [c], a                                     ; $6c9d: $e2
    adc e                                         ; $6c9e: $8b
    add b                                         ; $6c9f: $80
    ret nc                                        ; $6ca0: $d0

    and $06                                       ; $6ca1: $e6 $06
    and c                                         ; $6ca3: $a1
    ret nc                                        ; $6ca4: $d0

    and $ff                                       ; $6ca5: $e6 $ff
    rst $38                                       ; $6ca7: $ff
    cp $ef                                        ; $6ca8: $fe $ef
    dec sp                                        ; $6caa: $3b
    rst $28                                       ; $6cab: $ef
    dec a                                         ; $6cac: $3d
    rst $30                                       ; $6cad: $f7
    cp l                                          ; $6cae: $bd
    ei                                            ; $6caf: $fb
    rst $38                                       ; $6cb0: $ff
    inc l                                         ; $6cb1: $2c
    cp $e0                                        ; $6cb2: $fe $e0
    ld d, h                                       ; $6cb4: $54
    rst $38                                       ; $6cb5: $ff
    ld l, b                                       ; $6cb6: $68
    rst $38                                       ; $6cb7: $ff
    sbc b                                         ; $6cb8: $98
    cp [hl]                                       ; $6cb9: $be
    jr z, jr_043_6c7c                             ; $6cba: $28 $c0

    sub h                                         ; $6cbc: $94
    rst $38                                       ; $6cbd: $ff
    ld h, h                                       ; $6cbe: $64
    rst $38                                       ; $6cbf: $ff
    ld [$e8d0], sp                                ; $6cc0: $08 $d0 $e8
    rlca                                          ; $6cc3: $07
    rst $28                                       ; $6cc4: $ef

jr_043_6cc5:
    rst $38                                       ; $6cc5: $ff
    dec bc                                        ; $6cc6: $0b
    rst $38                                       ; $6cc7: $ff
    rlca                                          ; $6cc8: $07
    ret nc                                        ; $6cc9: $d0

    add sp, -$43                                  ; $6cca: $e8 $bd

jr_043_6ccc:
    rst $30                                       ; $6ccc: $f7
    dec a                                         ; $6ccd: $3d
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    inc l                                         ; $6cd0: $2c
    rrca                                          ; $6cd1: $0f
    rrca                                          ; $6cd2: $0f
    rst $38                                       ; $6cd3: $ff
    dec bc                                        ; $6cd4: $0b
    rra                                           ; $6cd5: $1f
    ld [$eff7], sp                                ; $6cd6: $08 $f7 $ef
    add hl, bc                                    ; $6cd9: $09
    cp a                                          ; $6cda: $bf
    sbc [hl]                                      ; $6cdb: $9e
    and b                                         ; $6cdc: $a0
    push hl                                       ; $6cdd: $e5
    rlca                                          ; $6cde: $07
    rra                                           ; $6cdf: $1f
    ld [bc], a                                    ; $6ce0: $02
    ld d, h                                       ; $6ce1: $54
    and d                                         ; $6ce2: $a2
    and h                                         ; $6ce3: $a4
    sbc b                                         ; $6ce4: $98
    add c                                         ; $6ce5: $81
    ret nz                                        ; $6ce6: $c0

    and b                                         ; $6ce7: $a0
    and b                                         ; $6ce8: $a0
    add hl, de                                    ; $6ce9: $19
    ld sp, hl                                     ; $6cea: $f9
    and b                                         ; $6ceb: $a0
    ld a, [bc]                                    ; $6cec: $0a
    sbc [hl]                                      ; $6ced: $9e
    and b                                         ; $6cee: $a0
    rst $38                                       ; $6cef: $ff
    ld [de], a                                    ; $6cf0: $12
    rst $38                                       ; $6cf1: $ff
    inc [hl]                                      ; $6cf2: $34
    rst $38                                       ; $6cf3: $ff
    ld a, h                                       ; $6cf4: $7c
    rst $30                                       ; $6cf5: $f7
    rst $18                                       ; $6cf6: $df
    rst $38                                       ; $6cf7: $ff
    db $fd                                        ; $6cf8: $fd
    adc b                                         ; $6cf9: $88
    ld h, b                                       ; $6cfa: $60
    xor h                                         ; $6cfb: $ac
    add b                                         ; $6cfc: $80
    rra                                           ; $6cfd: $1f
    rra                                           ; $6cfe: $1f
    rst $38                                       ; $6cff: $ff
    dec d                                         ; $6d00: $15
    rra                                           ; $6d01: $1f
    rst $38                                       ; $6d02: $ff
    inc d                                         ; $6d03: $14
    rst $38                                       ; $6d04: $ff
    inc d                                         ; $6d05: $14
    cp a                                          ; $6d06: $bf
    ld c, $bb                                     ; $6d07: $0e $bb
    rrca                                          ; $6d09: $0f
    and $7d                                       ; $6d0a: $e6 $7d
    inc b                                         ; $6d0c: $04
    ldh a, [$a0]                                  ; $6d0d: $f0 $a0
    ld b, b                                       ; $6d0f: $40
    rst $38                                       ; $6d10: $ff
    nop                                           ; $6d11: $00
    rst $00                                       ; $6d12: $c7
    jr c, jr_043_6cc5                             ; $6d13: $38 $b0

    and h                                         ; $6d15: $a4
    rst $30                                       ; $6d16: $f7

jr_043_6d17:
    jp Jump_000_39ff                              ; $6d17: $c3 $ff $39


    ld [hl], h                                    ; $6d1a: $74
    ldh [rNR42], a                                ; $6d1b: $e0 $21
    rst $38                                       ; $6d1d: $ff
    ld e, d                                       ; $6d1e: $5a
    rst $38                                       ; $6d1f: $ff
    ld e, a                                       ; $6d20: $5f
    ld a, h                                       ; $6d21: $7c
    rst $18                                       ; $6d22: $df

jr_043_6d23:
    db $f4                                        ; $6d23: $f4
    ld a, a                                       ; $6d24: $7f
    db $ec                                        ; $6d25: $ec
    inc h                                         ; $6d26: $24
    ret nz                                        ; $6d27: $c0

    ret nz                                        ; $6d28: $c0

    ld c, b                                       ; $6d29: $48
    add l                                         ; $6d2a: $85
    ld a, a                                       ; $6d2b: $7f
    db $dd                                        ; $6d2c: $dd
    ld b, b                                       ; $6d2d: $40
    db $dd                                        ; $6d2e: $dd
    ld b, b                                       ; $6d2f: $40
    rst $20                                       ; $6d30: $e7
    ld b, b                                       ; $6d31: $40
    ld hl, sp-$28                                 ; $6d32: $f8 $d8
    and c                                         ; $6d34: $a1
    ld a, a                                       ; $6d35: $7f
    nop                                           ; $6d36: $00
    add a                                         ; $6d37: $87
    ld a, b                                       ; $6d38: $78
    rst $10                                       ; $6d39: $d7
    jr z, jr_043_6d23                             ; $6d3a: $28 $e7

    jr @-$2e                                      ; $6d3c: $18 $d0

    db $e4                                        ; $6d3e: $e4
    rst $38                                       ; $6d3f: $ff
    ld c, $fb                                     ; $6d40: $0e $fb
    add hl, bc                                    ; $6d42: $09
    rst $38                                       ; $6d43: $ff
    ld e, c                                       ; $6d44: $59
    rst $38                                       ; $6d45: $ff
    ld [hl], c                                    ; $6d46: $71
    rst $18                                       ; $6d47: $df
    rst $18                                       ; $6d48: $df
    ld a, [c]                                     ; $6d49: $f2
    ld a, a                                       ; $6d4a: $7f
    ld [c], a                                     ; $6d4b: $e2
    rst $38                                       ; $6d4c: $ff

jr_043_6d4d:
    cp $d0                                        ; $6d4d: $fe $d0
    ldh [rNR10], a                                ; $6d4f: $e0 $10
    rst $28                                       ; $6d51: $ef
    cp a                                          ; $6d52: $bf
    jr nz, jr_043_6d4d                            ; $6d53: $20 $f8

    ldh [$e7], a                                  ; $6d55: $e0 $e7

jr_043_6d57:
    jr nz, @-$01                                  ; $6d57: $20 $fd

    cp $e0                                        ; $6d59: $fe $e0
    rst $20                                       ; $6d5b: $e7
    rst $38                                       ; $6d5c: $ff
    jr nz, jr_043_6d57                            ; $6d5d: $20 $f8

    jr nz, @+$01                                  ; $6d5f: $20 $ff

    ld h, [hl]                                    ; $6d61: $66
    rst $38                                       ; $6d62: $ff
    sbc e                                         ; $6d63: $9b
    ld a, a                                       ; $6d64: $7f
    rst $38                                       ; $6d65: $ff
    adc $3f                                       ; $6d66: $ce $3f
    ld [$e53f], a                                 ; $6d68: $ea $3f $e5
    rst $38                                       ; $6d6b: $ff
    and $ff                                       ; $6d6c: $e6 $ff
    rst $38                                       ; $6d6e: $ff
    ret                                           ; $6d6f: $c9


    rst $38                                       ; $6d70: $ff
    ret nz                                        ; $6d71: $c0

    rst $08                                       ; $6d72: $cf
    ld b, b                                       ; $6d73: $40
    ldh a, [rNR41]                                ; $6d74: $f0 $20
    cp $ff                                        ; $6d76: $fe $ff
    db $10                                        ; $6d78: $10
    or $50                                        ; $6d79: $f6 $50
    ld a, [c]                                     ; $6d7b: $f2
    ret nc                                        ; $6d7c: $d0

    ldh [rNR41], a                                ; $6d7d: $e0 $20
    ldh [$fd], a                                  ; $6d7f: $e0 $fd
    ret nz                                        ; $6d81: $c0

    xor b                                         ; $6d82: $a8
    add b                                         ; $6d83: $80
    ld bc, $86ff                                  ; $6d84: $01 $ff $86
    ld a, a                                       ; $6d87: $7f
    ret c                                         ; $6d88: $d8

    ccf                                           ; $6d89: $3f
    rst $38                                       ; $6d8a: $ff
    ldh [$2f], a                                  ; $6d8b: $e0 $2f
    ldh [$f3], a                                  ; $6d8d: $e0 $f3
    ldh [$dd], a                                  ; $6d8f: $e0 $dd
    ret nz                                        ; $6d91: $c0

    and $b8                                       ; $6d92: $e6 $b8
    jr c, jr_043_6d17                             ; $6d94: $38 $81

    ldh a, [rOCPS]                                ; $6d96: $f0 $6a
    sub d                                         ; $6d98: $92
    ld h, b                                       ; $6d99: $60
    add e                                         ; $6d9a: $83
    ld a, a                                       ; $6d9b: $7f
    call c, $e8e0                                 ; $6d9c: $dc $e0 $e8
    ld b, b                                       ; $6d9f: $40
    db $fc                                        ; $6da0: $fc
    jr jr_043_6d23                                ; $6da1: $18 $80

    ret nc                                        ; $6da3: $d0

    ld l, b                                       ; $6da4: $68
    cp a                                          ; $6da5: $bf
    and c                                         ; $6da6: $a1
    cp $d2                                        ; $6da7: $fe $d2
    cp $fc                                        ; $6da9: $fe $fc
    rst $38                                       ; $6dab: $ff
    db $fd                                        ; $6dac: $fd
    ldh [$33], a                                  ; $6dad: $e0 $33
    ldh a, [$1f]                                  ; $6daf: $f0 $1f
    ldh a, [rNR24]                                ; $6db1: $f0 $19
    ldh a, [rIE]                                  ; $6db3: $f0 $ff
    pop af                                        ; $6db5: $f1
    ldh a, [$ba]                                  ; $6db6: $f0 $ba
    add b                                         ; $6db8: $80
    ld a, [$e6c0]                                 ; $6db9: $fa $c0 $e6
    ldh [$0e], a                                  ; $6dbc: $e0 $0e
    ldh a, [$e7]                                  ; $6dbe: $f0 $e7
    pop af                                        ; $6dc0: $f1
    db $10                                        ; $6dc1: $10
    db $e3                                        ; $6dc2: $e3
    ld a, b                                       ; $6dc3: $78
    ldh [rNR41], a                                ; $6dc4: $e0 $20
    and a                                         ; $6dc6: $a7
    nop                                           ; $6dc7: $00
    nop                                           ; $6dc8: $00
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    nop                                           ; $6dcc: $00
    nop                                           ; $6dcd: $00
    nop                                           ; $6dce: $00
    nop                                           ; $6dcf: $00
    rst $28                                       ; $6dd0: $ef
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    add b                                         ; $6dd4: $80
    cp $ea                                        ; $6dd5: $fe $ea
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    nop                                           ; $6dd9: $00
    cp $fe                                        ; $6dda: $fe $fe
    ld [$fcff], a                                 ; $6ddc: $ea $ff $fc
    nop                                           ; $6ddf: $00
    di                                            ; $6de0: $f3
    nop                                           ; $6de1: $00
    rst $28                                       ; $6de2: $ef
    nop                                           ; $6de3: $00
    rra                                           ; $6de4: $1f
    call z, $8800                                 ; $6de5: $cc $00 $88
    nop                                           ; $6de8: $00
    sbc b                                         ; $6de9: $98
    cp $e0                                        ; $6dea: $fe $e0
    rst $38                                       ; $6dec: $ff
    db $ed                                        ; $6ded: $ed
    jp nz, $bfe7                                  ; $6dee: $c2 $e7 $bf

    db $fc                                        ; $6df1: $fc
    add b                                         ; $6df2: $80
    di                                            ; $6df3: $f3
    add b                                         ; $6df4: $80
    rst $28                                       ; $6df5: $ef
    add b                                         ; $6df6: $80
    jp nz, Jump_000_3fe7                          ; $6df7: $c2 $e7 $3f

    rst $38                                       ; $6dfa: $ff
    nop                                           ; $6dfb: $00
    rst $08                                       ; $6dfc: $cf
    nop                                           ; $6dfd: $00
    rst $30                                       ; $6dfe: $f7
    nop                                           ; $6dff: $00
    cp h                                          ; $6e00: $bc
    nop                                           ; $6e01: $00
    rst $18                                       ; $6e02: $df
    rst $28                                       ; $6e03: $ef
    nop                                           ; $6e04: $00
    ldh [rP1], a                                  ; $6e05: $e0 $00
    db $ed                                        ; $6e07: $ed
    cp $e0                                        ; $6e08: $fe $e0
    rst $30                                       ; $6e0a: $f7
    nop                                           ; $6e0b: $00
    ld hl, sp-$02                                 ; $6e0c: $f8 $fe
    and [hl]                                      ; $6e0e: $a6
    ldh [$3d], a                                  ; $6e0f: $e0 $3d
    nop                                           ; $6e11: $00
    ei                                            ; $6e12: $fb
    nop                                           ; $6e13: $00
    rlca                                          ; $6e14: $07
    nop                                           ; $6e15: $00
    or a                                          ; $6e16: $b7
    rst $38                                       ; $6e17: $ff
    nop                                           ; $6e18: $00
    or a                                          ; $6e19: $b7
    ld bc, $03ee                                  ; $6e1a: $01 $ee $03
    inc e                                         ; $6e1d: $1c
    rlca                                          ; $6e1e: $07
    db $fc                                        ; $6e1f: $fc
    cp l                                          ; $6e20: $bd
    rlca                                          ; $6e21: $07
    sub d                                         ; $6e22: $92
    ldh [rIF], a                                  ; $6e23: $e0 $0f
    ldh a, [$3f]                                  ; $6e25: $f0 $3f
    ret nz                                        ; $6e27: $c0

    adc e                                         ; $6e28: $8b
    ldh [rSB], a                                  ; $6e29: $e0 $01
    rst $28                                       ; $6e2b: $ef
    rst $38                                       ; $6e2c: $ff
    ld c, $ff                                     ; $6e2d: $0e $ff
    ld a, $82                                     ; $6e2f: $3e $82
    pop hl                                        ; $6e31: $e1
    ret nz                                        ; $6e32: $c0

    ld a, a                                       ; $6e33: $7f
    ldh a, [$9f]                                  ; $6e34: $f0 $9f
    rst $38                                       ; $6e36: $ff
    ld hl, sp+$0f                                 ; $6e37: $f8 $0f
    cp $03                                        ; $6e39: $fe $03
    ld [hl], a                                    ; $6e3b: $77
    ld [c], a                                     ; $6e3c: $e2
    ret nz                                        ; $6e3d: $c0

    ld [$7f80], a                                 ; $6e3e: $ea $80 $7f
    ld a, a                                       ; $6e41: $7f
    ret nz                                        ; $6e42: $c0

    call z, $8880                                 ; $6e43: $cc $80 $88
    add b                                         ; $6e46: $80
    sbc b                                         ; $6e47: $98
    cp $e0                                        ; $6e48: $fe $e0
    rst $38                                       ; $6e4a: $ff
    cp h                                          ; $6e4b: $bc
    add b                                         ; $6e4c: $80
    rst $18                                       ; $6e4d: $df
    add b                                         ; $6e4e: $80
    ldh [$80], a                                  ; $6e4f: $e0 $80
    db $ed                                        ; $6e51: $ed
    add b                                         ; $6e52: $80
    rra                                           ; $6e53: $1f
    inc sp                                        ; $6e54: $33
    nop                                           ; $6e55: $00
    ld de, $1900                                  ; $6e56: $11 $00 $19
    cp $e0                                        ; $6e59: $fe $e0
    xor b                                         ; $6e5b: $a8
    push hl                                       ; $6e5c: $e5
    ld b, d                                       ; $6e5d: $42
    db $ec                                        ; $6e5e: $ec
    rst $30                                       ; $6e5f: $f7
    nop                                           ; $6e60: $00
    ld hl, sp+$0f                                 ; $6e61: $f8 $0f
    cp $e1                                        ; $6e63: $fe $e1
    ld sp, hl                                     ; $6e65: $f9
    rrca                                          ; $6e66: $0f
    db $fd                                        ; $6e67: $fd
    rlca                                          ; $6e68: $07
    ei                                            ; $6e69: $fb
    db $fd                                        ; $6e6a: $fd
    rlca                                          ; $6e6b: $07
    xor l                                         ; $6e6c: $ad
    ldh [rSB], a                                  ; $6e6d: $e0 $01
    ld a, a                                       ; $6e6f: $7f
    ld sp, hl                                     ; $6e70: $f9
    rst $38                                       ; $6e71: $ff
    pop hl                                        ; $6e72: $e1
    cp a                                          ; $6e73: $bf
    rst $38                                       ; $6e74: $ff
    ret nz                                        ; $6e75: $c0

    rst $38                                       ; $6e76: $ff
    ret c                                         ; $6e77: $d8

    rst $38                                       ; $6e78: $ff
    and h                                         ; $6e79: $a4
    ld [$9ee0], sp                                ; $6e7a: $08 $e0 $9e
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    xor h                                         ; $6e7f: $ac
    nop                                           ; $6e80: $00
    rst $38                                       ; $6e81: $ff
    jr @+$01                                      ; $6e82: $18 $ff

    db $fc                                        ; $6e84: $fc
    rst $20                                       ; $6e85: $e7
    rst $38                                       ; $6e86: $ff
    db $fc                                        ; $6e87: $fc
    sbc a                                         ; $6e88: $9f
    ldh [$7f], a                                  ; $6e89: $e0 $7f
    ldh [$3f], a                                  ; $6e8b: $e0 $3f
    ldh a, [$3f]                                  ; $6e8d: $f0 $3f
    cp a                                          ; $6e8f: $bf
    db $fc                                        ; $6e90: $fc
    ccf                                           ; $6e91: $3f
    ld a, a                                       ; $6e92: $7f
    ret nz                                        ; $6e93: $c0

    ccf                                           ; $6e94: $3f
    ldh [$fe], a                                  ; $6e95: $e0 $fe
    rst $20                                       ; $6e97: $e7
    ld a, a                                       ; $6e98: $7f
    cp a                                          ; $6e99: $bf
    ret nz                                        ; $6e9a: $c0

    inc sp                                        ; $6e9b: $33
    ld bc, $0113                                  ; $6e9c: $01 $13 $01
    dec de                                        ; $6e9f: $1b
    cp $e0                                        ; $6ea0: $fe $e0
    ccf                                           ; $6ea2: $3f
    rst $38                                       ; $6ea3: $ff
    ld bc, $01fb                                  ; $6ea4: $01 $fb $01
    rlca                                          ; $6ea7: $07
    ld bc, $01b7                                  ; $6ea8: $01 $b7 $01
    db $ed                                        ; $6eab: $ed
    xor a                                         ; $6eac: $af
    add b                                         ; $6ead: $80
    rst $30                                       ; $6eae: $f7
    add b                                         ; $6eaf: $80
    ld hl, sp-$32                                 ; $6eb0: $f8 $ce
    ret z                                         ; $6eb2: $c8

    or a                                          ; $6eb3: $b7
    db $e4                                        ; $6eb4: $e4
    ret nz                                        ; $6eb5: $c0

    rra                                           ; $6eb6: $1f
    ld hl, sp-$32                                 ; $6eb7: $f8 $ce
    jp z, $cbd0                                   ; $6eb9: $ca $d0 $cb

    ld hl, sp-$40                                 ; $6ebc: $f8 $c0
    ld bc, $01cf                                  ; $6ebe: $01 $cf $01
    rst $30                                       ; $6ec1: $f7
    ld bc, $5876                                  ; $6ec2: $01 $76 $58
    push hl                                       ; $6ec5: $e5
    rst $38                                       ; $6ec6: $ff
    sbc b                                         ; $6ec7: $98
    sub b                                         ; $6ec8: $90
    ret nz                                        ; $6ec9: $c0

    nop                                           ; $6eca: $00
    rst $08                                       ; $6ecb: $cf
    jr nc, @-$74                                  ; $6ecc: $30 $8a

    ret nz                                        ; $6ece: $c0

    rst $38                                       ; $6ecf: $ff
    ret nz                                        ; $6ed0: $c0

    rst $38                                       ; $6ed1: $ff
    ld h, b                                       ; $6ed2: $60
    rst $38                                       ; $6ed3: $ff
    ld e, $fe                                     ; $6ed4: $1e $fe
    inc hl                                        ; $6ed6: $23
    cp $ff                                        ; $6ed7: $fe $ff
    dec de                                        ; $6ed9: $1b
    cp $13                                        ; $6eda: $fe $13
    rst $38                                       ; $6edc: $ff
    scf                                           ; $6edd: $37
    rst $28                                       ; $6ede: $ef
    ld a, $ff                                     ; $6edf: $3e $ff
    ld a, a                                       ; $6ee1: $7f
    ld a, b                                       ; $6ee2: $78
    rst $38                                       ; $6ee3: $ff
    or b                                          ; $6ee4: $b0
    rst $38                                       ; $6ee5: $ff
    jr nz, @+$81                                  ; $6ee6: $20 $7f

    ret nz                                        ; $6ee8: $c0

    cp b                                          ; $6ee9: $b8
    jp nz, $90fc                                  ; $6eea: $c2 $fc $90

    add $d0                                       ; $6eed: $c6 $d0
    jp nz, $b701                                  ; $6eef: $c2 $01 $b7

    ld [bc], a                                    ; $6ef2: $02
    or a                                          ; $6ef3: $b7
    inc b                                         ; $6ef4: $04
    rst $28                                       ; $6ef5: $ef

jr_043_6ef6:
    rst $38                                       ; $6ef6: $ff
    inc b                                         ; $6ef7: $04
    rra                                           ; $6ef8: $1f
    inc b                                         ; $6ef9: $04
    rst $38                                       ; $6efa: $ff

jr_043_6efb:
    dec b                                         ; $6efb: $05
    rst $38                                       ; $6efc: $ff
    inc bc                                        ; $6efd: $03
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    ld b, $ff                                     ; $6f00: $06 $ff
    adc b                                         ; $6f02: $88
    rst $38                                       ; $6f03: $ff
    ld [hl], b                                    ; $6f04: $70
    rst $38                                       ; $6f05: $ff
    jr nz, @+$01                                  ; $6f06: $20 $ff

    ld a, a                                       ; $6f08: $7f
    pop hl                                        ; $6f09: $e1
    cp $47                                        ; $6f0a: $fe $47
    ld hl, sp+$3f                                 ; $6f0c: $f8 $3f
    rst $38                                       ; $6f0e: $ff
    ldh [$ba], a                                  ; $6f0f: $e0 $ba
    ldh [rIE], a                                  ; $6f11: $e0 $ff
    jr nc, @+$01                                  ; $6f13: $30 $ff

    jr nc, jr_043_6ef6                            ; $6f15: $30 $df

    ld [hl], b                                    ; $6f17: $70
    sbc a                                         ; $6f18: $9f
    ldh a, [$2f]                                  ; $6f19: $f0 $2f
    sbc a                                         ; $6f1b: $9f
    ldh [rPCM34], a                               ; $6f1c: $e0 $77
    ret nz                                        ; $6f1e: $c0

    rst $38                                       ; $6f1f: $ff
    ld [bc], a                                    ; $6f20: $02
    or a                                          ; $6f21: $b7
    ret nz                                        ; $6f22: $c0

    nop                                           ; $6f23: $00
    jp hl                                         ; $6f24: $e9


    rst $38                                       ; $6f25: $ff
    ld a, a                                       ; $6f26: $7f
    cp a                                          ; $6f27: $bf
    cp a                                          ; $6f28: $bf
    cp a                                          ; $6f29: $bf
    ccf                                           ; $6f2a: $3f
    cp a                                          ; $6f2b: $bf
    ccf                                           ; $6f2c: $3f
    cp b                                          ; $6f2d: $b8
    add hl, hl                                    ; $6f2e: $29
    ld [c], a                                     ; $6f2f: $e2
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    ccf                                           ; $6f32: $3f
    or e                                          ; $6f33: $b3
    add b                                         ; $6f34: $80
    pop de                                        ; $6f35: $d1
    ret nz                                        ; $6f36: $c0

    ld sp, hl                                     ; $6f37: $f9
    ldh [rIE], a                                  ; $6f38: $e0 $ff
    ld sp, hl                                     ; $6f3a: $f9
    ldh [$3d], a                                  ; $6f3b: $e0 $3d
    ldh a, [rNR31]                                ; $6f3d: $f0 $1b
    ldh a, [rNR22]                                ; $6f3f: $f0 $17
    ldh a, [$db]                                  ; $6f41: $f0 $db
    rst $30                                       ; $6f43: $f7
    ldh a, [$c4]                                  ; $6f44: $f0 $c4
    pop hl                                        ; $6f46: $e1
    rst $38                                       ; $6f47: $ff

jr_043_6f48:
    jr z, jr_043_6f48                             ; $6f48: $28 $fe

    ldh [rNR50], a                                ; $6f4a: $e0 $24
    rst $38                                       ; $6f4c: $ff

jr_043_6f4d:
    rst $38                                       ; $6f4d: $ff
    inc d                                         ; $6f4e: $14
    rst $38                                       ; $6f4f: $ff
    ld a, [bc]                                    ; $6f50: $0a
    rst $38                                       ; $6f51: $ff
    ld b, $f7                                     ; $6f52: $06 $f7
    ld b, b                                       ; $6f54: $40
    rst $28                                       ; $6f55: $ef
    xor a                                         ; $6f56: $af
    ld b, b                                       ; $6f57: $40
    rst $18                                       ; $6f58: $df
    ld b, b                                       ; $6f59: $40
    rst $38                                       ; $6f5a: $ff
    cp $e1                                        ; $6f5b: $fe $e1
    jr nz, jr_043_6efb                            ; $6f5d: $20 $9c

    ldh [$30], a                                  ; $6f5f: $e0 $30
    ld a, [$cc40]                                 ; $6f61: $fa $40 $cc
    rst $38                                       ; $6f64: $ff
    add b                                         ; $6f65: $80
    ldh [rSC], a                                  ; $6f66: $e0 $02
    rst $38                                       ; $6f68: $ff
    ld e, $e1                                     ; $6f69: $1e $e1
    ccf                                           ; $6f6b: $3f
    ld sp, hl                                     ; $6f6c: $f9
    pop hl                                        ; $6f6d: $e1
    or h                                          ; $6f6e: $b4
    ldh [$b0], a                                  ; $6f6f: $e0 $b0
    ldh [rIE], a                                  ; $6f71: $e0 $ff
    rst $38                                       ; $6f73: $ff
    ld hl, sp-$09                                 ; $6f74: $f8 $f7
    inc a                                         ; $6f76: $3c
    rst $38                                       ; $6f77: $ff
    rst $20                                       ; $6f78: $e7
    ld a, $eb                                     ; $6f79: $3e $eb
    cp $17                                        ; $6f7b: $fe $17
    db $fc                                        ; $6f7d: $fc
    rst $38                                       ; $6f7e: $ff
    ld hl, sp+$4f                                 ; $6f7f: $f8 $4f
    rra                                           ; $6f81: $1f
    ldh a, [rIE]                                  ; $6f82: $f0 $ff
    rst $38                                       ; $6f84: $ff
    jr nz, jr_043_6f4d                            ; $6f85: $20 $c6

    add sp, -$3f                                  ; $6f87: $e8 $c1
    ld bc, $e274                                  ; $6f89: $01 $74 $e2
    xor e                                         ; $6f8c: $ab
    ld bc, $1efe                                  ; $6f8d: $01 $fe $1e
    pop bc                                        ; $6f90: $c1
    ld a, a                                       ; $6f91: $7f
    push hl                                       ; $6f92: $e5
    and c                                         ; $6f93: $a1
    rlca                                          ; $6f94: $07
    and d                                         ; $6f95: $a2
    and c                                         ; $6f96: $a1
    ldh a, [$5f]                                  ; $6f97: $f0 $5f
    rrca                                          ; $6f99: $0f
    db $fc                                        ; $6f9a: $fc
    rlca                                          ; $6f9b: $07
    cp $0f                                        ; $6f9c: $fe $0f
    db $10                                        ; $6f9e: $10
    ret nz                                        ; $6f9f: $c0

    ret nz                                        ; $6fa0: $c0

    ld b, e                                       ; $6fa1: $43

jr_043_6fa2:
    ldh [$e6], a                                  ; $6fa2: $e0 $e6
    ldh [$a8], a                                  ; $6fa4: $e0 $a8
    add b                                         ; $6fa6: $80
    ld a, b                                       ; $6fa7: $78
    add h                                         ; $6fa8: $84
    ret nz                                        ; $6fa9: $c0

    ret nz                                        ; $6faa: $c0

    add sp, $01                                   ; $6fab: $e8 $01
    rra                                           ; $6fad: $1f
    ld bc, $4e6c                                  ; $6fae: $01 $6c $4e
    pop bc                                        ; $6fb1: $c1
    jp nz, $0fe9                                  ; $6fb2: $c2 $e9 $0f

    rst $38                                       ; $6fb5: $ff
    jp nz, $e0eb                                  ; $6fb6: $c2 $eb $e0

    ccf                                           ; $6fb9: $3f
    and b                                         ; $6fba: $a0
    and [hl]                                      ; $6fbb: $a6
    ld a, a                                       ; $6fbc: $7f
    add b                                         ; $6fbd: $80
    ld [hl], a                                    ; $6fbe: $77
    ret nz                                        ; $6fbf: $c0

    jr c, jr_043_6fa2                             ; $6fc0: $38 $e0

    rra                                           ; $6fc2: $1f
    ldh a, [rNR41]                                ; $6fc3: $f0 $20
    call nz, $dc37                                ; $6fc5: $c4 $37 $dc
    rst $38                                       ; $6fc8: $ff
    and b                                         ; $6fc9: $a0
    jr nz, @-$3b                                  ; $6fca: $20 $c3

    cp $03                                        ; $6fcc: $fe $03
    cp $e3                                        ; $6fce: $fe $e3
    and c                                         ; $6fd0: $a1
    and b                                         ; $6fd1: $a0
    sbc $e8                                       ; $6fd2: $de $e8
    jp nz, $ff0f                                  ; $6fd4: $c2 $0f $ff

    rra                                           ; $6fd7: $1f
    ld hl, sp+$17                                 ; $6fd8: $f8 $17
    ret nz                                        ; $6fda: $c0

    rst $20                                       ; $6fdb: $e7
    ld a, a                                       ; $6fdc: $7f
    rst $10                                       ; $6fdd: $d7
    jp hl                                         ; $6fde: $e9


    ld a, a                                       ; $6fdf: $7f
    ldh [$f8], a                                  ; $6fe0: $e0 $f8
    and b                                         ; $6fe2: $a0
    ld c, c                                       ; $6fe3: $49
    inc de                                        ; $6fe4: $13
    pop bc                                        ; $6fe5: $c1
    and $3f                                       ; $6fe6: $e6 $3f
    rst $28                                       ; $6fe8: $ef
    rst $38                                       ; $6fe9: $ff
    add hl, sp                                    ; $6fea: $39
    rst $38                                       ; $6feb: $ff
    daa                                           ; $6fec: $27
    ld b, c                                       ; $6fed: $41
    ldh [$1f], a                                  ; $6fee: $e0 $1f
    ld hl, sp+$0f                                 ; $6ff0: $f8 $0f
    ld h, d                                       ; $6ff2: $62
    ei                                            ; $6ff3: $fb

jr_043_6ff4:
    ldh [$f0], a                                  ; $6ff4: $e0 $f0
    call $fca2                                    ; $6ff6: $cd $a2 $fc
    db $e4                                        ; $6ff9: $e4
    jp nz, $ffeb                                  ; $6ffa: $c2 $eb $ff

    nop                                           ; $6ffd: $00
    jp nz, $cbeb                                  ; $6ffe: $c2 $eb $cb

    rst $38                                       ; $7001: $ff
    ld e, [hl]                                    ; $7002: $5e
    jp nz, $feeb                                  ; $7003: $c2 $eb $fe

    ret nz                                        ; $7006: $c0

    ldh [$c2], a                                  ; $7007: $e0 $c2
    jp hl                                         ; $7009: $e9


    rrca                                          ; $700a: $0f
    ld hl, sp+$7e                                 ; $700b: $f8 $7e
    nop                                           ; $700d: $00
    rst $00                                       ; $700e: $c7
    inc de                                        ; $700f: $13
    inc bc                                        ; $7010: $03
    rra                                           ; $7011: $1f
    inc b                                         ; $7012: $04
    rra                                           ; $7013: $1f
    add hl, bc                                    ; $7014: $09
    nop                                           ; $7015: $00
    ret z                                         ; $7016: $c8

    push hl                                       ; $7017: $e5
    ldh [$3c], a                                  ; $7018: $e0 $3c
    ret nz                                        ; $701a: $c0

    cp [hl]                                       ; $701b: $be
    ret c                                         ; $701c: $d8

    add l                                         ; $701d: $85
    sbc b                                         ; $701e: $98
    and b                                         ; $701f: $a0
    ld [bc], a                                    ; $7020: $02
    dec de                                        ; $7021: $1b
    inc bc                                        ; $7022: $03
    rst $28                                       ; $7023: $ef
    add hl, de                                    ; $7024: $19
    ld bc, $5eff                                  ; $7025: $01 $ff $5e
    ld [hl], b                                    ; $7028: $70
    add c                                         ; $7029: $81
    di                                            ; $702a: $f3
    db $ec                                        ; $702b: $ec
    ei                                            ; $702c: $fb
    ld a, a                                       ; $702d: $7f
    inc d                                         ; $702e: $14
    rst $38                                       ; $702f: $ff
    ld [$c8ff], sp                                ; $7030: $08 $ff $c8
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $10                                       ; $7035: $d7
    jp nz, Jump_000_0dff                          ; $7036: $c2 $ff $0d

    rst $38                                       ; $7039: $ff
    add hl, de                                    ; $703a: $19
    cp $33                                        ; $703b: $fe $33
    rst $28                                       ; $703d: $ef
    ccf                                           ; $703e: $3f
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    inc e                                         ; $7041: $1c
    rst $38                                       ; $7042: $ff
    sbc b                                         ; $7043: $98
    rrca                                          ; $7044: $0f
    ld hl, sp+$1c                                 ; $7045: $f8 $1c
    ldh a, [rNR13]                                ; $7047: $f0 $13
    and $16                                       ; $7049: $e6 $16
    ret nz                                        ; $704b: $c0

    call z, $a0c0                                 ; $704c: $cc $c0 $a0
    and [hl]                                      ; $704f: $a6
    sbc b                                         ; $7050: $98
    add c                                         ; $7051: $81
    ld bc, $0233                                  ; $7052: $01 $33 $02
    or c                                          ; $7055: $b1
    inc de                                        ; $7056: $13
    jp nz, $c0e0                                  ; $7057: $c2 $e0 $c0

    ldh [$c2], a                                  ; $705a: $e0 $c2
    ld [$16ff], a                                 ; $705c: $ea $ff $16
    jp nz, $ffeb                                  ; $705f: $c2 $eb $ff

    rst $38                                       ; $7062: $ff
    ld [hl], b                                    ; $7063: $70
    rra                                           ; $7064: $1f
    ldh a, [rNR32]                                ; $7065: $f0 $1c
    ldh a, [$33]                                  ; $7067: $f0 $33
    ldh [$ef], a                                  ; $7069: $e0 $ef
    db $fd                                        ; $706b: $fd
    ret nz                                        ; $706c: $c0

    jr nc, jr_043_6ff4                            ; $706d: $30 $85

    ccf                                           ; $706f: $3f
    ld [$08ff], sp                                ; $7070: $08 $ff $08
    rrca                                          ; $7073: $0f
    ld [$b7ff], sp                                ; $7074: $08 $ff $b7
    rlca                                          ; $7077: $07
    or a                                          ; $7078: $b7
    ld [bc], a                                    ; $7079: $02
    rst $28                                       ; $707a: $ef
    ld [bc], a                                    ; $707b: $02
    rra                                           ; $707c: $1f
    ld [bc], a                                    ; $707d: $02
    xor [hl]                                      ; $707e: $ae
    jp nz, $e3a0                                  ; $707f: $c2 $a0 $e3

    rst $38                                       ; $7082: $ff
    ld b, [hl]                                    ; $7083: $46
    adc b                                         ; $7084: $88
    ldh [$50], a                                  ; $7085: $e0 $50
    and b                                         ; $7087: $a0
    and b                                         ; $7088: $a0
    ld b, c                                       ; $7089: $41
    rst $18                                       ; $708a: $df
    cp $87                                        ; $708b: $fe $87
    ld hl, sp-$61                                 ; $708d: $f8 $9f
    dec a                                         ; $708f: $3d
    ld [$02a1], sp                                ; $7090: $08 $a1 $02
    or a                                          ; $7093: $b7
    ld d, a                                       ; $7094: $57
    inc bc                                        ; $7095: $03
    or a                                          ; $7096: $b7
    inc bc                                        ; $7097: $03
    ldh [$e2], a                                  ; $7098: $e0 $e2
    ld bc, $e0ae                                  ; $709a: $01 $ae $e0
    jr c, jr_043_70e7                             ; $709d: $38 $48

    and b                                         ; $709f: $a0
    ld a, l                                       ; $70a0: $7d
    add b                                         ; $70a1: $80
    ld a, [hl+]                                   ; $70a2: $2a
    ret nz                                        ; $70a3: $c0

    adc a                                         ; $70a4: $8f
    ldh a, [$7f]                                  ; $70a5: $f0 $7f
    db $fc                                        ; $70a7: $fc
    rst $38                                       ; $70a8: $ff
    halt                                          ; $70a9: $76
    and b                                         ; $70aa: $a0
    ld h, [hl]                                    ; $70ab: $66
    add d                                         ; $70ac: $82
    and h                                         ; $70ad: $a4
    ccf                                           ; $70ae: $3f
    ldh [$80], a                                  ; $70af: $e0 $80
    and c                                         ; $70b1: $a1
    ret nc                                        ; $70b2: $d0

    ldh [rSC], a                                  ; $70b3: $e0 $02
    rlca                                          ; $70b5: $07
    jp nc, Jump_043_78e0                          ; $70b6: $d2 $e0 $78

    or b                                          ; $70b9: $b0
    ld [c], a                                     ; $70ba: $e2
    halt                                          ; $70bb: $76
    and c                                         ; $70bc: $a1
    jp nc, $f8e8                                  ; $70bd: $d2 $e8 $f8

    rst $38                                       ; $70c0: $ff
    db $fc                                        ; $70c1: $fc
    ld a, a                                       ; $70c2: $7f
    jp nc, $9fe7                                  ; $70c3: $d2 $e7 $9f

    ccf                                           ; $70c6: $3f
    ldh [rVBK], a                                 ; $70c7: $e0 $4f
    ret nz                                        ; $70c9: $c0

    rst $30                                       ; $70ca: $f7
    cp b                                          ; $70cb: $b8
    ldh [$50], a                                  ; $70cc: $e0 $50
    adc h                                         ; $70ce: $8c
    rst $38                                       ; $70cf: $ff
    inc b                                         ; $70d0: $04
    ld d, d                                       ; $70d1: $52
    and c                                         ; $70d2: $a1
    ld d, b                                       ; $70d3: $50
    and a                                         ; $70d4: $a7
    rst $38                                       ; $70d5: $ff
    ld a, [c]                                     ; $70d6: $f2
    ld [c], a                                     ; $70d7: $e2
    ld b, b                                       ; $70d8: $40
    and a                                         ; $70d9: $a7
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    rst $28                                       ; $70e0: $ef
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    add b                                         ; $70e4: $80
    cp $ea                                        ; $70e5: $fe $ea

jr_043_70e7:
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    nop                                           ; $70e9: $00
    db $fc                                        ; $70ea: $fc
    cp $ea                                        ; $70eb: $fe $ea
    ldh a, [$e2]                                  ; $70ed: $f0 $e2
    ld hl, sp+$00                                 ; $70ef: $f8 $00
    push hl                                       ; $70f1: $e5
    nop                                           ; $70f2: $00
    call z, $f700                                 ; $70f3: $cc $00 $f7
    xor h                                         ; $70f6: $ac
    nop                                           ; $70f7: $00
    cp b                                          ; $70f8: $b8
    ldh a, [$e4]                                  ; $70f9: $f0 $e4
    inc b                                         ; $70fb: $04
    nop                                           ; $70fc: $00
    di                                            ; $70fd: $f3
    nop                                           ; $70fe: $00
    call $fa06                                    ; $70ff: $cd $06 $fa
    ldh [$64], a                                  ; $7102: $e0 $64
    nop                                           ; $7104: $00
    rst $38                                       ; $7105: $ff
    db $ed                                        ; $7106: $ed
    or d                                          ; $7107: $b2
    db $eb                                        ; $7108: $eb
    ld hl, sp-$80                                 ; $7109: $f8 $80
    cp $b2                                        ; $710b: $fe $b2
    db $eb                                        ; $710d: $eb
    inc b                                         ; $710e: $04
    nop                                           ; $710f: $00
    add e                                         ; $7110: $83
    nop                                           ; $7111: $00
    add a                                         ; $7112: $87
    nop                                           ; $7113: $00
    rst $00                                       ; $7114: $c7
    di                                            ; $7115: $f3
    nop                                           ; $7116: $00
    db $e3                                        ; $7117: $e3
    xor [hl]                                      ; $7118: $ae
    ldh [$98], a                                  ; $7119: $e0 $98
    db $e3                                        ; $711b: $e3
    ld [hl], h                                    ; $711c: $74
    nop                                           ; $711d: $00
    db $f4                                        ; $711e: $f4
    nop                                           ; $711f: $00
    rst $38                                       ; $7120: $ff
    rst $20                                       ; $7121: $e7
    inc bc                                        ; $7122: $03
    inc b                                         ; $7123: $04
    rlca                                          ; $7124: $07
    ld [$f00f], sp                                ; $7125: $08 $0f $f0
    rra                                           ; $7128: $1f
    rst $28                                       ; $7129: $ef
    ldh a, [$1f]                                  ; $712a: $f0 $1f
    ldh [$3f], a                                  ; $712c: $e0 $3f
    add d                                         ; $712e: $82
    ldh [$f8], a                                  ; $712f: $e0 $f8
    rlca                                          ; $7131: $07
    db $fc                                        ; $7132: $fc
    rst $30                                       ; $7133: $f7
    inc bc                                        ; $7134: $03
    rst $38                                       ; $7135: $ff
    ld [bc], a                                    ; $7136: $02
    ld a, c                                       ; $7137: $79
    ldh [rNR32], a                                ; $7138: $e0 $1c
    rst $38                                       ; $713a: $ff
    ccf                                           ; $713b: $3f
    db $e3                                        ; $713c: $e3
    cp $72                                        ; $713d: $fe $72
    db $e4                                        ; $713f: $e4
    add b                                         ; $7140: $80
    ld a, a                                       ; $7141: $7f
    ldh [$1f], a                                  ; $7142: $e0 $1f
    ldh a, [rIF]                                  ; $7144: $f0 $0f
    ld hl, sp+$2b                                 ; $7146: $f8 $2b
    inc c                                         ; $7148: $0c
    ld hl, sp-$30                                 ; $7149: $f8 $d0
    pop hl                                        ; $714b: $e1
    db $e4                                        ; $714c: $e4
    adc d                                         ; $714d: $8a
    ldh [rDIV], a                                 ; $714e: $e0 $04
    ld e, d                                       ; $7150: $5a
    db $eb                                        ; $7151: $eb
    ld c, h                                       ; $7152: $4c
    db $e4                                        ; $7153: $e4
    ld a, [$e0aa]                                 ; $7154: $fa $aa $e0
    ld bc, $e9fe                                  ; $7157: $01 $fe $e9
    dec b                                         ; $715a: $05
    ld bc, $80e5                                  ; $715b: $01 $e5 $80
    call z, $80ff                                 ; $715e: $cc $ff $80
    xor h                                         ; $7161: $ac
    add b                                         ; $7162: $80
    cp b                                          ; $7163: $b8
    add b                                         ; $7164: $80
    add e                                         ; $7165: $83
    add b                                         ; $7166: $80
    add a                                         ; $7167: $87
    rra                                           ; $7168: $1f
    add b                                         ; $7169: $80
    rst $00                                       ; $716a: $c7
    add b                                         ; $716b: $80
    db $e3                                        ; $716c: $e3
    add b                                         ; $716d: $80
    ld c, b                                       ; $716e: $48
    push hl                                       ; $716f: $e5
    cp b                                          ; $7170: $b8
    push hl                                       ; $7171: $e5
    cp d                                          ; $7172: $ba
    db $ed                                        ; $7173: $ed
    ld a, a                                       ; $7174: $7f
    ldh [$3f], a                                  ; $7175: $e0 $3f
    ldh [$3f], a                                  ; $7177: $e0 $3f
    ldh a, [$7f]                                  ; $7179: $f0 $7f
    ret nc                                        ; $717b: $d0

    cp $e0                                        ; $717c: $fe $e0
    rst $38                                       ; $717e: $ff
    ret                                           ; $717f: $c9


    ld a, a                                       ; $7180: $7f
    jp hl                                         ; $7181: $e9


    ccf                                           ; $7182: $3f
    push af                                       ; $7183: $f5
    ccf                                           ; $7184: $3f
    ld a, a                                       ; $7185: $7f
    ret nz                                        ; $7186: $c0

    cp a                                          ; $7187: $bf
    ld a, a                                       ; $7188: $7f
    ret nz                                        ; $7189: $c0

    rst $38                                       ; $718a: $ff
    adc a                                         ; $718b: $8f
    rst $38                                       ; $718c: $ff
    sub b                                         ; $718d: $90
    jp c, Jump_000_07c0                           ; $718e: $da $c0 $07

jr_043_7191:
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    dec bc                                        ; $7193: $0b
    rst $38                                       ; $7194: $ff
    rlca                                          ; $7195: $07
    sub a                                         ; $7196: $97
    db $fc                                        ; $7197: $fc
    cp $6c                                        ; $7198: $fe $6c
    rst $38                                       ; $719a: $ff
    ld a, [c]                                     ; $719b: $f2
    ld e, [hl]                                    ; $719c: $5e
    ld [c], a                                     ; $719d: $e2
    ld a, $e2                                     ; $719e: $3e $e2
    ld a, $f2                                     ; $71a0: $3e $f2
    cp [hl]                                       ; $71a2: $be
    rst $08                                       ; $71a3: $cf
    ld a, [$fa3e]                                 ; $71a4: $fa $3e $fa
    ld l, $e8                                     ; $71a7: $2e $e8
    push bc                                       ; $71a9: $c5
    jr z, jr_043_7191                             ; $71aa: $28 $e5

    di                                            ; $71ac: $f3
    ld bc, $07fd                                  ; $71ad: $01 $fd $07
    adc d                                         ; $71b0: $8a
    ldh [$65], a                                  ; $71b1: $e0 $65
    ld bc, $0175                                  ; $71b3: $01 $75 $01
    push af                                       ; $71b6: $f5
    ld bc, $e5cf                                  ; $71b7: $01 $cf $e5
    ld bc, $0101                                  ; $71ba: $01 $01 $01
    ld l, b                                       ; $71bd: $68
    push hl                                       ; $71be: $e5
    ret nz                                        ; $71bf: $c0

    add $1f                                       ; $71c0: $c6 $1f
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    dec d                                         ; $71c4: $15
    rst $38                                       ; $71c5: $ff
    inc d                                         ; $71c6: $14
    rrca                                          ; $71c7: $0f
    inc c                                         ; $71c8: $0c
    ei                                            ; $71c9: $fb
    ld c, $07                                     ; $71ca: $0e $07
    db $fd                                        ; $71cc: $fd
    dec b                                         ; $71cd: $05
    ret nz                                        ; $71ce: $c0

    pop bc                                        ; $71cf: $c1
    rst $38                                       ; $71d0: $ff
    ld b, b                                       ; $71d1: $40
    rst $38                                       ; $71d2: $ff
    nop                                           ; $71d3: $00
    rst $08                                       ; $71d4: $cf

jr_043_71d5:
    jr nc, jr_043_71d5                            ; $71d5: $30 $fe

    adc h                                         ; $71d7: $8c
    jp nz, $ff01                                  ; $71d8: $c2 $01 $ff

    jp Jump_000_39ff                              ; $71db: $c3 $ff $39


    db $fc                                        ; $71de: $fc
    inc c                                         ; $71df: $0c
    ccf                                           ; $71e0: $3f
    rst $38                                       ; $71e1: $ff
    ld [$38ff], sp                                ; $71e2: $08 $ff $38
    rst $28                                       ; $71e5: $ef
    ld a, b                                       ; $71e6: $78
    adc [hl]                                      ; $71e7: $8e
    ldh [$c8], a                                  ; $71e8: $e0 $c8
    jp z, $90fe                                   ; $71ea: $ca $fe $90

    push bc                                       ; $71ed: $c5
    ld [hl], l                                    ; $71ee: $75
    ld bc, $02f7                                  ; $71ef: $01 $f7 $02
    rst $28                                       ; $71f2: $ef
    inc c                                         ; $71f3: $0c
    rra                                           ; $71f4: $1f
    rst $38                                       ; $71f5: $ff
    db $10                                        ; $71f6: $10
    ccf                                           ; $71f7: $3f
    jr nz, @+$01                                  ; $71f8: $20 $ff

    ld b, c                                       ; $71fa: $41
    rst $38                                       ; $71fb: $ff
    ld b, [hl]                                    ; $71fc: $46
    rst $38                                       ; $71fd: $ff
    cp a                                          ; $71fe: $bf
    ld hl, $f1ff                                  ; $71ff: $21 $ff $f1
    rst $28                                       ; $7202: $ef
    ld a, b                                       ; $7203: $78
    rst $20                                       ; $7204: $e7
    ld c, h                                       ; $7205: $4c
    ldh [$c0], a                                  ; $7206: $e0 $c0
    ei                                            ; $7208: $fb
    ld a, a                                       ; $7209: $7f
    add b                                         ; $720a: $80
    pop bc                                        ; $720b: $c1
    ldh [$ef], a                                  ; $720c: $e0 $ef
    ld a, a                                       ; $720e: $7f
    rst $38                                       ; $720f: $ff
    ret nz                                        ; $7210: $c0

    rst $38                                       ; $7211: $ff
    db $fc                                        ; $7212: $fc
    dec a                                         ; $7213: $3d
    ldh [$d4], a                                  ; $7214: $e0 $d4
    pop bc                                        ; $7216: $c1
    rst $08                                       ; $7217: $cf
    ld hl, sp-$01                                 ; $7218: $f8 $ff
    ldh a, [$f4]                                  ; $721a: $f0 $f4
    ldh a, [$cb]                                  ; $721c: $f0 $cb
    rst $38                                       ; $721e: $ff
    ld de, $e0b0                                  ; $721f: $11 $b0 $e0
    inc b                                         ; $7222: $04
    or c                                          ; $7223: $b1
    ret nz                                        ; $7224: $c0

    cp $e3                                        ; $7225: $fe $e3
    ld bc, $fdff                                  ; $7227: $01 $ff $fd
    ccf                                           ; $722a: $3f
    ld c, $c0                                     ; $722b: $0e $c0
    ccf                                           ; $722d: $3f
    rst $38                                       ; $722e: $ff
    ccf                                           ; $722f: $3f
    rst $20                                       ; $7230: $e7
    cp a                                          ; $7231: $bf
    pop hl                                        ; $7232: $e1
    ei                                            ; $7233: $fb
    cp a                                          ; $7234: $bf
    ret nz                                        ; $7235: $c0

    inc bc                                        ; $7236: $03
    ret nz                                        ; $7237: $c0

    ei                                            ; $7238: $fb
    add sp, -$02                                  ; $7239: $e8 $fe
    db $e4                                        ; $723b: $e4
    cp $ff                                        ; $723c: $fe $ff
    or $fe                                        ; $723e: $f6 $fe
    ld a, [$f2de]                                 ; $7240: $fa $de $f2
    adc a                                         ; $7243: $8f
    ld sp, hl                                     ; $7244: $f9
    rrca                                          ; $7245: $0f
    ld a, a                                       ; $7246: $7f
    ld sp, hl                                     ; $7247: $f9
    cp $fa                                        ; $7248: $fe $fa
    rst $38                                       ; $724a: $ff
    add d                                         ; $724b: $82
    rst $38                                       ; $724c: $ff
    add e                                         ; $724d: $83
    cp $e0                                        ; $724e: $fe $e0
    rst $38                                       ; $7250: $ff
    add l                                         ; $7251: $85
    rst $38                                       ; $7252: $ff
    call nz, $e4ff                                ; $7253: $c4 $ff $e4
    rst $38                                       ; $7256: $ff
    ld b, h                                       ; $7257: $44
    rst $38                                       ; $7258: $ff
    ld e, l                                       ; $7259: $5d
    ld b, h                                       ; $725a: $44
    ld [hl], b                                    ; $725b: $70
    ld [c], a                                     ; $725c: $e2
    inc b                                         ; $725d: $04
    rst $38                                       ; $725e: $ff
    add h                                         ; $725f: $84
    cp $e0                                        ; $7260: $fe $e0
    ld b, d                                       ; $7262: $42
    cp $e0                                        ; $7263: $fe $e0
    push af                                       ; $7265: $f5
    ld [hl+], a                                   ; $7266: $22
    ld b, b                                       ; $7267: $40
    call z, Call_043_40ff                         ; $7268: $cc $ff $40
    pop bc                                        ; $726b: $c1
    push hl                                       ; $726c: $e5

jr_043_726d:
    ld bc, $0302                                  ; $726d: $01 $02 $03
    cp a                                          ; $7270: $bf
    ld b, $03                                     ; $7271: $06 $03
    rst $38                                       ; $7273: $ff
    inc bc                                        ; $7274: $03
    cp $03                                        ; $7275: $fe $03
    or d                                          ; $7277: $b2
    and b                                         ; $7278: $a0
    ld a, h                                       ; $7279: $7c
    cp $ca                                        ; $727a: $fe $ca
    ldh [$f4], a                                  ; $727c: $e0 $f4
    rrca                                          ; $727e: $0f
    db $fc                                        ; $727f: $fc
    rrca                                          ; $7280: $0f
    db $fc                                        ; $7281: $fc
    rst $38                                       ; $7282: $ff
    db $fc                                        ; $7283: $fc
    ld l, e                                       ; $7284: $6b
    rlca                                          ; $7285: $07
    db $fc                                        ; $7286: $fc
    and d                                         ; $7287: $a2
    and b                                         ; $7288: $a0
    ld a, $5c                                     ; $7289: $3e $5c
    ldh [rNR11], a                                ; $728b: $e0 $11
    rst $38                                       ; $728d: $ff
    inc h                                         ; $728e: $24
    ret nz                                        ; $728f: $c0

    ld a, [$e2fc]                                 ; $7290: $fa $fc $e2
    rst $38                                       ; $7293: $ff
    nop                                           ; $7294: $00
    pop bc                                        ; $7295: $c1
    rst $30                                       ; $7296: $f7
    ldh a, [$8b]                                  ; $7297: $f0 $8b
    ld hl, sp-$78                                 ; $7299: $f8 $88
    sbc a                                         ; $729b: $9f
    ld hl, sp-$01                                 ; $729c: $f8 $ff
    ld hl, sp+$0f                                 ; $729e: $f8 $0f
    ld hl, sp-$40                                 ; $72a0: $f8 $c0
    db $e3                                        ; $72a2: $e3
    jr nc, jr_043_726d                            ; $72a3: $30 $c8

    rst $38                                       ; $72a5: $ff
    xor $90                                       ; $72a6: $ee $90
    jp nz, $ff88                                  ; $72a8: $c2 $88 $ff

    add a                                         ; $72ab: $87
    ld l, d                                       ; $72ac: $6a
    and b                                         ; $72ad: $a0
    nop                                           ; $72ae: $00
    rst $38                                       ; $72af: $ff
    add hl, bc                                    ; $72b0: $09
    cp [hl]                                       ; $72b1: $be
    sub b                                         ; $72b2: $90
    jp z, $fa3e                                   ; $72b3: $ca $3e $fa

    cp [hl]                                       ; $72b6: $be
    ld a, [$702e]                                 ; $72b7: $fa $2e $70
    ret nz                                        ; $72ba: $c0

    ret z                                         ; $72bb: $c8

jr_043_72bc:
    rst $08                                       ; $72bc: $cf
    rst $38                                       ; $72bd: $ff
    add [hl]                                      ; $72be: $86
    rst $38                                       ; $72bf: $ff
    add c                                         ; $72c0: $81
    ldh [$e5], a                                  ; $72c1: $e0 $e5
    or b                                          ; $72c3: $b0
    bit 4, l                                      ; $72c4: $cb $65
    ld bc, $b09e                                  ; $72c6: $01 $9e $b0
    pop bc                                        ; $72c9: $c1
    rst $18                                       ; $72ca: $df
    jr nz, jr_043_72bc                            ; $72cb: $20 $ef

    db $10                                        ; $72cd: $10
    xor h                                         ; $72ce: $ac
    ret nz                                        ; $72cf: $c0

    or b                                          ; $72d0: $b0
    pop bc                                        ; $72d1: $c1
    ld sp, hl                                     ; $72d2: $f9
    ld [$ccb0], a                                 ; $72d3: $ea $b0 $cc
    ldh [rSVBK], a                                ; $72d6: $e0 $70
    call z, $ee38                                 ; $72d8: $cc $38 $ee

jr_043_72db:
    ldh [$d0], a                                  ; $72db: $e0 $d0
    ccf                                           ; $72dd: $3f
    add sp, $49                                   ; $72de: $e8 $49
    rra                                           ; $72e0: $1f
    ld [hl], h                                    ; $72e1: $74
    ldh [$d0], a                                  ; $72e2: $e0 $d0
    ret nz                                        ; $72e4: $c0

    ld sp, hl                                     ; $72e5: $f9
    ld h, b                                       ; $72e6: $60
    db $e3                                        ; $72e7: $e3
    ld h, b                                       ; $72e8: $60
    and h                                         ; $72e9: $a4
    ld a, b                                       ; $72ea: $78
    ld a, [bc]                                    ; $72eb: $0a
    ldh [$7f], a                                  ; $72ec: $e0 $7f
    inc e                                         ; $72ee: $1c
    ld [hl], a                                    ; $72ef: $77
    ld [bc], a                                    ; $72f0: $02
    rst $30                                       ; $72f1: $f7
    inc b                                         ; $72f2: $04
    rst $28                                       ; $72f3: $ef
    ld [$c090], sp                                ; $72f4: $08 $90 $c0
    or a                                          ; $72f7: $b7
    ld hl, $26ff                                  ; $72f8: $21 $ff $26
    ld [hl], $e1                                  ; $72fb: $36 $e1
    rst $28                                       ; $72fd: $ef
    ld a, c                                       ; $72fe: $79
    sub d                                         ; $72ff: $92
    push bc                                       ; $7300: $c5
    add c                                         ; $7301: $81
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $00                                       ; $7304: $c7
    ld a, a                                       ; $7305: $7f
    rst $38                                       ; $7306: $ff
    ccf                                           ; $7307: $3f
    ld a, a                                       ; $7308: $7f
    ret nc                                        ; $7309: $d0

    cp a                                          ; $730a: $bf
    rst $38                                       ; $730b: $ff
    jp hl                                         ; $730c: $e9


    rra                                           ; $730d: $1f
    ld sp, hl                                     ; $730e: $f9
    rrca                                          ; $730f: $0f
    ld a, [$fecf]                                 ; $7310: $fa $cf $fe
    rst $28                                       ; $7313: $ef
    rst $38                                       ; $7314: $ff
    ei                                            ; $7315: $fb
    rst $38                                       ; $7316: $ff

jr_043_7317:
    pop af                                        ; $7317: $f1

jr_043_7318:
    rst $38                                       ; $7318: $ff
    pop hl                                        ; $7319: $e1
    ei                                            ; $731a: $fb
    ret z                                         ; $731b: $c8

    rst $38                                       ; $731c: $ff
    ld a, a                                       ; $731d: $7f
    jr jr_043_7317                                ; $731e: $18 $f7

    db $10                                        ; $7320: $10
    di                                            ; $7321: $f3
    db $10                                        ; $7322: $10
    ld hl, sp+$08                                 ; $7323: $f8 $08
    ld a, [hl-]                                   ; $7325: $3a
    ldh [$f7], a                                  ; $7326: $e0 $f7
    ret z                                         ; $7328: $c8

    rst $38                                       ; $7329: $ff
    jr nc, jr_043_7318                            ; $732a: $30 $ec

    pop hl                                        ; $732c: $e1
    cp $f6                                        ; $732d: $fe $f6
    db $fc                                        ; $732f: $fc
    ld hl, sp-$49                                 ; $7330: $f8 $b7
    call nc, $8cf0                                ; $7332: $d4 $f0 $8c
    ld b, d                                       ; $7335: $42
    and b                                         ; $7336: $a0
    ld hl, sp-$08                                 ; $7337: $f8 $f8
    ld [hl+], a                                   ; $7339: $22
    ret nz                                        ; $733a: $c0

    adc b                                         ; $733b: $88
    adc [hl]                                      ; $733c: $8e
    xor b                                         ; $733d: $a8
    ret nz                                        ; $733e: $c0

    inc h                                         ; $733f: $24
    rst $38                                       ; $7340: $ff
    jr jr_043_72db                                ; $7341: $18 $98

    add h                                         ; $7343: $84
    ld h, d                                       ; $7344: $62
    pop bc                                        ; $7345: $c1
    ld h, b                                       ; $7346: $60
    ret                                           ; $7347: $c9


    cp a                                          ; $7348: $bf
    cp $60                                        ; $7349: $fe $60
    set 7, a                                      ; $734b: $cb $ff
    ld [c], a                                     ; $734d: $e2
    cp $f4                                        ; $734e: $fe $f4
    db $fc                                        ; $7350: $fc
    ld hl, sp-$0c                                 ; $7351: $f8 $f4
    dec c                                         ; $7353: $0d
    ldh a, [$c0]                                  ; $7354: $f0 $c0
    push hl                                       ; $7356: $e5
    db $fc                                        ; $7357: $fc
    ld [$cb70], sp                                ; $7358: $08 $70 $cb
    nop                                           ; $735b: $00
    nop                                           ; $735c: $00
    nop                                           ; $735d: $00
    xor [hl]                                      ; $735e: $ae
    ld [hl], e                                    ; $735f: $73
    inc e                                         ; $7360: $1c
    ld [hl], h                                    ; $7361: $74
    sbc a                                         ; $7362: $9f
    ld [hl], h                                    ; $7363: $74
    dec c                                         ; $7364: $0d
    ld [hl], l                                    ; $7365: $75
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    nop                                           ; $736b: $00
    nop                                           ; $736c: $00
    nop                                           ; $736d: $00
    sub b                                         ; $736e: $90
    ld [hl], l                                    ; $736f: $75
    ei                                            ; $7370: $fb
    ld [hl], l                                    ; $7371: $75
    ld h, [hl]                                    ; $7372: $66
    halt                                          ; $7373: $76
    ret nc                                        ; $7374: $d0

    halt                                          ; $7375: $76
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    nop                                           ; $737b: $00
    nop                                           ; $737c: $00
    nop                                           ; $737d: $00
    ld [hl], $77                                  ; $737e: $36 $77
    sbc [hl]                                      ; $7380: $9e
    ld [hl], a                                    ; $7381: $77
    ld [$7478], sp                                ; $7382: $08 $78 $74
    ld a, b                                       ; $7385: $78
    ld [c], a                                     ; $7386: $e2
    ld a, b                                       ; $7387: $78
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    nop                                           ; $738b: $00
    nop                                           ; $738c: $00
    nop                                           ; $738d: $00
    ld c, [hl]                                    ; $738e: $4e
    ld a, c                                       ; $738f: $79
    cp [hl]                                       ; $7390: $be
    ld a, c                                       ; $7391: $79
    ld l, $7a                                     ; $7392: $2e $7a
    sbc [hl]                                      ; $7394: $9e
    ld a, d                                       ; $7395: $7a
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    nop                                           ; $739b: $00
    nop                                           ; $739c: $00
    nop                                           ; $739d: $00
    ld c, $7b                                     ; $739e: $0e $7b
    ld l, h                                       ; $73a0: $6c
    ld a, e                                       ; $73a1: $7b
    call Call_000_2e7b                            ; $73a2: $cd $7b $2e
    ld a, h                                       ; $73a5: $7c
    nop                                           ; $73a6: $00
    nop                                           ; $73a7: $00
    nop                                           ; $73a8: $00
    nop                                           ; $73a9: $00
    nop                                           ; $73aa: $00
    nop                                           ; $73ab: $00
    nop                                           ; $73ac: $00
    nop                                           ; $73ad: $00
    ret                                           ; $73ae: $c9


    dec c                                         ; $73af: $0d
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    db $e3                                        ; $73b2: $e3
    ld [c], a                                     ; $73b3: $e2
    dec l                                         ; $73b4: $2d
    rst $30                                       ; $73b5: $f7
    xor $cc                                       ; $73b6: $ee $cc
    jp hl                                         ; $73b8: $e9


    ld c, l                                       ; $73b9: $4d
    ld c, l                                       ; $73ba: $4d
    db $fd                                        ; $73bb: $fd
    ld c, l                                       ; $73bc: $4d
    ld sp, hl                                     ; $73bd: $f9
    db $e4                                        ; $73be: $e4
    nop                                           ; $73bf: $00
    ld bc, $0202                                  ; $73c0: $01 $02 $02
    ld [bc], a                                    ; $73c3: $02
    inc bc                                        ; $73c4: $03
    rst $38                                       ; $73c5: $ff
    inc bc                                        ; $73c6: $03
    inc bc                                        ; $73c7: $03
    inc b                                         ; $73c8: $04
    dec b                                         ; $73c9: $05
    ld a, [bc]                                    ; $73ca: $0a
    dec bc                                        ; $73cb: $0b
    inc c                                         ; $73cc: $0c
    dec c                                         ; $73cd: $0d
    rst $38                                       ; $73ce: $ff
    ld c, $0f                                     ; $73cf: $0e $0f
    add hl, bc                                    ; $73d1: $09
    add hl, bc                                    ; $73d2: $09
    db $10                                        ; $73d3: $10
    ld de, $090a                                  ; $73d4: $11 $0a $09
    rst $38                                       ; $73d7: $ff
    ld d, $17                                     ; $73d8: $16 $17
    jr jr_043_73f5                                ; $73da: $18 $19

    add hl, bc                                    ; $73dc: $09
    ld a, [de]                                    ; $73dd: $1a
    inc c                                         ; $73de: $0c
    ld de, $1fff                                  ; $73df: $11 $ff $1f
    add hl, bc                                    ; $73e2: $09
    dec bc                                        ; $73e3: $0b
    jr nz, jr_043_7407                            ; $73e4: $20 $21

    ld [hl+], a                                   ; $73e6: $22
    inc hl                                        ; $73e7: $23
    db $10                                        ; $73e8: $10
    rst $38                                       ; $73e9: $ff
    inc c                                         ; $73ea: $0c
    inc h                                         ; $73eb: $24
    ld de, $0929                                  ; $73ec: $11 $29 $09
    ld d, $2a                                     ; $73ef: $16 $2a
    dec hl                                        ; $73f1: $2b
    rst $38                                       ; $73f2: $ff
    inc l                                         ; $73f3: $2c
    inc c                                         ; $73f4: $0c

jr_043_73f5:
    dec l                                         ; $73f5: $2d
    ld a, [bc]                                    ; $73f6: $0a
    ld sp, $290c                                  ; $73f7: $31 $0c $29
    ld [hl-], a                                   ; $73fa: $32
    rst $38                                       ; $73fb: $ff
    inc sp                                        ; $73fc: $33
    inc [hl]                                      ; $73fd: $34
    db $10                                        ; $73fe: $10
    dec l                                         ; $73ff: $2d
    add hl, bc                                    ; $7400: $09
    dec [hl]                                      ; $7401: $35
    ld a, [bc]                                    ; $7402: $0a
    add hl, sp                                    ; $7403: $39
    rst $38                                       ; $7404: $ff
    ld a, [hl-]                                   ; $7405: $3a
    dec sp                                        ; $7406: $3b

jr_043_7407:
    inc a                                         ; $7407: $3c
    dec a                                         ; $7408: $3d
    dec l                                         ; $7409: $2d
    ld a, $3f                                     ; $740a: $3e $3f
    ld de, $00ff                                  ; $740c: $11 $ff $00
    inc bc                                        ; $740f: $03
    inc bc                                        ; $7410: $03
    ld b, e                                       ; $7411: $43
    ld b, h                                       ; $7412: $44
    ld b, l                                       ; $7413: $45
    ld b, [hl]                                    ; $7414: $46
    ld [bc], a                                    ; $7415: $02
    inc bc                                        ; $7416: $03
    ld [bc], a                                    ; $7417: $02
    dec b                                         ; $7418: $05
    nop                                           ; $7419: $00
    nop                                           ; $741a: $00
    nop                                           ; $741b: $00
    sub a                                         ; $741c: $97
    dec l                                         ; $741d: $2d
    dec l                                         ; $741e: $2d
    dec c                                         ; $741f: $0d
    rst $38                                       ; $7420: $ff
    ld [c], a                                     ; $7421: $e2
    dec l                                         ; $7422: $2d
    rst $38                                       ; $7423: $ff
    ldh [$f6], a                                  ; $7424: $e0 $f6
    and $0d                                       ; $7426: $e6 $0d
    nop                                           ; $7428: $00
    db $eb                                        ; $7429: $eb
    ld [c], a                                     ; $742a: $e2
    ld sp, hl                                     ; $742b: $f9
    ldh [$f6], a                                  ; $742c: $e0 $f6
    rst $20                                       ; $742e: $e7
    rst $30                                       ; $742f: $f7
    jp hl                                         ; $7430: $e9


    call $dbe1                                    ; $7431: $cd $e1 $db
    pop hl                                        ; $7434: $e1
    call z, $c6e3                                 ; $7435: $cc $e3 $c6
    pop hl                                        ; $7438: $e1
    rst $30                                       ; $7439: $f7
    ld l, l                                       ; $743a: $6d
    ld c, l                                       ; $743b: $4d
    ld c, l                                       ; $743c: $4d
    cp b                                          ; $743d: $b8
    pop hl                                        ; $743e: $e1
    ld c, l                                       ; $743f: $4d
    ld c, l                                       ; $7440: $4d
    ld l, l                                       ; $7441: $6d
    dec b                                         ; $7442: $05
    rst $38                                       ; $7443: $ff
    inc b                                         ; $7444: $04
    inc bc                                        ; $7445: $03
    ld c, d                                       ; $7446: $4a
    ld c, e                                       ; $7447: $4b
    ld c, h                                       ; $7448: $4c
    ld [bc], a                                    ; $7449: $02
    ld [bc], a                                    ; $744a: $02
    ld bc, $00ff                                  ; $744b: $01 $ff $00
    ld de, $0910                                  ; $744e: $11 $10 $09
    ld c, l                                       ; $7451: $4d
    ld c, [hl]                                    ; $7452: $4e
    ld c, a                                       ; $7453: $4f
    ld d, b                                       ; $7454: $50
    rst $38                                       ; $7455: $ff
    inc c                                         ; $7456: $0c
    dec bc                                        ; $7457: $0b
    ld a, [bc]                                    ; $7458: $0a
    ld de, $1a0c                                  ; $7459: $11 $0c $1a
    ld d, h                                       ; $745c: $54
    ld d, l                                       ; $745d: $55
    rst $38                                       ; $745e: $ff
    ld d, [hl]                                    ; $745f: $56
    ld d, a                                       ; $7460: $57
    ld d, $09                                     ; $7461: $16 $09
    ld a, [bc]                                    ; $7463: $0a
    inc h                                         ; $7464: $24
    inc c                                         ; $7465: $0c
    db $10                                        ; $7466: $10
    rst $38                                       ; $7467: $ff
    ld e, e                                       ; $7468: $5b
    ld e, h                                       ; $7469: $5c
    ld e, l                                       ; $746a: $5d
    ld e, [hl]                                    ; $746b: $5e
    dec bc                                        ; $746c: $0b
    add hl, bc                                    ; $746d: $09
    rra                                           ; $746e: $1f
    ld a, [bc]                                    ; $746f: $0a
    rst $38                                       ; $7470: $ff
    dec l                                         ; $7471: $2d
    inc c                                         ; $7472: $0c
    ld h, d                                       ; $7473: $62
    ld h, e                                       ; $7474: $63
    ld h, h                                       ; $7475: $64
    ld d, $09                                     ; $7476: $16 $09
    add hl, hl                                    ; $7478: $29
    rst $38                                       ; $7479: $ff
    ld de, $0935                                  ; $747a: $11 $35 $09
    dec l                                         ; $747d: $2d
    ld l, c                                       ; $747e: $69
    ld l, d                                       ; $747f: $6a
    ld l, e                                       ; $7480: $6b
    dec bc                                        ; $7481: $0b
    rst $38                                       ; $7482: $ff
    add hl, hl                                    ; $7483: $29
    inc c                                         ; $7484: $0c
    ld sp, $3f11                                  ; $7485: $31 $11 $3f
    ld a, $2d                                     ; $7488: $3e $2d
    ld [hl], b                                    ; $748a: $70
    rst $38                                       ; $748b: $ff
    ld [hl], c                                    ; $748c: $71
    add hl, hl                                    ; $748d: $29
    ld a, [hl-]                                   ; $748e: $3a
    add hl, sp                                    ; $748f: $39
    ld a, [bc]                                    ; $7490: $0a
    dec b                                         ; $7491: $05
    ld [bc], a                                    ; $7492: $02
    ld [bc], a                                    ; $7493: $02
    ld a, a                                       ; $7494: $7f
    ld b, [hl]                                    ; $7495: $46
    ld [hl], l                                    ; $7496: $75
    halt                                          ; $7497: $76
    ld [hl], a                                    ; $7498: $77
    inc bc                                        ; $7499: $03
    inc bc                                        ; $749a: $03
    nop                                           ; $749b: $00
    nop                                           ; $749c: $00
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    ret                                           ; $749f: $c9


    dec c                                         ; $74a0: $0d
    rst $38                                       ; $74a1: $ff
    rst $38                                       ; $74a2: $ff
    db $e3                                        ; $74a3: $e3
    ld [c], a                                     ; $74a4: $e2
    dec l                                         ; $74a5: $2d
    rst $30                                       ; $74a6: $f7
    xor $cc                                       ; $74a7: $ee $cc
    jp hl                                         ; $74a9: $e9


    ld c, l                                       ; $74aa: $4d
    ld c, l                                       ; $74ab: $4d
    db $fd                                        ; $74ac: $fd
    ld c, l                                       ; $74ad: $4d
    ld sp, hl                                     ; $74ae: $f9
    db $e4                                        ; $74af: $e4
    nop                                           ; $74b0: $00
    ld bc, $0602                                  ; $74b1: $01 $02 $06
    rlca                                          ; $74b4: $07
    ld [$03ff], sp                                ; $74b5: $08 $ff $03
    inc bc                                        ; $74b8: $03
    inc b                                         ; $74b9: $04
    dec b                                         ; $74ba: $05
    ld a, [bc]                                    ; $74bb: $0a
    dec bc                                        ; $74bc: $0b
    inc c                                         ; $74bd: $0c
    ld [de], a                                    ; $74be: $12
    rst $38                                       ; $74bf: $ff
    inc de                                        ; $74c0: $13
    inc d                                         ; $74c1: $14
    dec d                                         ; $74c2: $15
    add hl, bc                                    ; $74c3: $09
    db $10                                        ; $74c4: $10
    ld de, $090a                                  ; $74c5: $11 $0a $09
    rst $38                                       ; $74c8: $ff
    ld d, $1b                                     ; $74c9: $16 $1b
    inc e                                         ; $74cb: $1c
    dec e                                         ; $74cc: $1d
    ld e, $1a                                     ; $74cd: $1e $1a
    inc c                                         ; $74cf: $0c
    ld de, $1fff                                  ; $74d0: $11 $ff $1f
    add hl, bc                                    ; $74d3: $09
    dec bc                                        ; $74d4: $0b
    dec h                                         ; $74d5: $25
    ld h, $27                                     ; $74d6: $26 $27
    jr z, @+$12                                   ; $74d8: $28 $10

    rst $38                                       ; $74da: $ff
    inc c                                         ; $74db: $0c
    inc h                                         ; $74dc: $24
    ld de, $0929                                  ; $74dd: $11 $29 $09
    ld l, $2f                                     ; $74e0: $2e $2f
    jr nc, @+$01                                  ; $74e2: $30 $ff

    ld a, [de]                                    ; $74e4: $1a
    inc c                                         ; $74e5: $0c
    dec l                                         ; $74e6: $2d
    ld a, [bc]                                    ; $74e7: $0a
    ld sp, $290c                                  ; $74e8: $31 $0c $29
    ld [hl], $ff                                  ; $74eb: $36 $ff
    scf                                           ; $74ed: $37
    jr c, jr_043_7500                             ; $74ee: $38 $10

    dec l                                         ; $74f0: $2d
    add hl, bc                                    ; $74f1: $09
    dec [hl]                                      ; $74f2: $35
    ld a, [bc]                                    ; $74f3: $0a
    add hl, sp                                    ; $74f4: $39
    rst $38                                       ; $74f5: $ff
    ld a, [hl-]                                   ; $74f6: $3a
    ld b, b                                       ; $74f7: $40
    ld b, c                                       ; $74f8: $41
    ld b, d                                       ; $74f9: $42
    dec l                                         ; $74fa: $2d
    ld a, $3f                                     ; $74fb: $3e $3f
    ld de, $00ff                                  ; $74fd: $11 $ff $00

jr_043_7500:
    inc bc                                        ; $7500: $03
    inc bc                                        ; $7501: $03
    ld b, a                                       ; $7502: $47
    ld c, b                                       ; $7503: $48
    ld c, c                                       ; $7504: $49
    ld b, [hl]                                    ; $7505: $46
    ld [bc], a                                    ; $7506: $02
    inc bc                                        ; $7507: $03
    ld [bc], a                                    ; $7508: $02
    dec b                                         ; $7509: $05
    nop                                           ; $750a: $00
    nop                                           ; $750b: $00
    nop                                           ; $750c: $00
    sub a                                         ; $750d: $97
    dec l                                         ; $750e: $2d
    dec l                                         ; $750f: $2d
    dec c                                         ; $7510: $0d
    rst $38                                       ; $7511: $ff
    ld [c], a                                     ; $7512: $e2
    dec l                                         ; $7513: $2d
    rst $38                                       ; $7514: $ff
    ldh [$f6], a                                  ; $7515: $e0 $f6
    and $0d                                       ; $7517: $e6 $0d
    nop                                           ; $7519: $00
    db $eb                                        ; $751a: $eb
    ld [c], a                                     ; $751b: $e2
    ld sp, hl                                     ; $751c: $f9
    ldh [$f6], a                                  ; $751d: $e0 $f6
    rst $20                                       ; $751f: $e7
    db $ed                                        ; $7520: $ed
    db $e3                                        ; $7521: $e3
    push af                                       ; $7522: $f5
    add sp, -$1e                                  ; $7523: $e8 $e2
    pop hl                                        ; $7525: $e1
    jp $c6e2                                      ; $7526: $c3 $e2 $c6


    pop hl                                        ; $7529: $e1
    rst $30                                       ; $752a: $f7
    ld l, l                                       ; $752b: $6d
    ld c, l                                       ; $752c: $4d
    ld c, l                                       ; $752d: $4d
    cp c                                          ; $752e: $b9
    pop hl                                        ; $752f: $e1
    ld c, l                                       ; $7530: $4d
    ld c, l                                       ; $7531: $4d
    ld l, l                                       ; $7532: $6d
    dec b                                         ; $7533: $05
    rst $38                                       ; $7534: $ff
    inc b                                         ; $7535: $04
    inc bc                                        ; $7536: $03
    inc bc                                        ; $7537: $03
    inc bc                                        ; $7538: $03
    ld [bc], a                                    ; $7539: $02
    ld [bc], a                                    ; $753a: $02
    ld [bc], a                                    ; $753b: $02
    ld bc, $00ff                                  ; $753c: $01 $ff $00
    ld de, $0910                                  ; $753f: $11 $10 $09
    ld d, c                                       ; $7542: $51
    ld d, d                                       ; $7543: $52
    ld d, e                                       ; $7544: $53
    inc c                                         ; $7545: $0c
    rst $38                                       ; $7546: $ff
    inc c                                         ; $7547: $0c
    dec bc                                        ; $7548: $0b
    ld a, [bc]                                    ; $7549: $0a
    ld de, $1a0c                                  ; $754a: $11 $0c $1a
    ld e, b                                       ; $754d: $58
    ld e, c                                       ; $754e: $59
    rst $38                                       ; $754f: $ff
    ld e, d                                       ; $7550: $5a
    inc c                                         ; $7551: $0c
    ld d, $09                                     ; $7552: $16 $09
    ld a, [bc]                                    ; $7554: $0a
    inc h                                         ; $7555: $24
    inc c                                         ; $7556: $0c
    db $10                                        ; $7557: $10
    rst $38                                       ; $7558: $ff
    ld e, a                                       ; $7559: $5f
    ld h, b                                       ; $755a: $60
    ld h, c                                       ; $755b: $61
    inc c                                         ; $755c: $0c
    dec bc                                        ; $755d: $0b
    add hl, bc                                    ; $755e: $09
    rra                                           ; $755f: $1f
    ld a, [bc]                                    ; $7560: $0a
    rst $38                                       ; $7561: $ff
    dec l                                         ; $7562: $2d
    inc c                                         ; $7563: $0c
    ld h, l                                       ; $7564: $65
    ld h, [hl]                                    ; $7565: $66
    ld h, a                                       ; $7566: $67
    ld l, b                                       ; $7567: $68
    add hl, bc                                    ; $7568: $09
    add hl, hl                                    ; $7569: $29
    rst $38                                       ; $756a: $ff
    ld de, $0935                                  ; $756b: $11 $35 $09
    dec l                                         ; $756e: $2d
    ld l, h                                       ; $756f: $6c
    ld l, l                                       ; $7570: $6d
    ld l, [hl]                                    ; $7571: $6e
    ld l, a                                       ; $7572: $6f
    rst $38                                       ; $7573: $ff
    add hl, hl                                    ; $7574: $29
    inc c                                         ; $7575: $0c
    ld sp, $3f11                                  ; $7576: $31 $11 $3f
    ld a, $72                                     ; $7579: $3e $72
    ld [hl], e                                    ; $757b: $73
    rst $38                                       ; $757c: $ff
    ld [hl], h                                    ; $757d: $74
    add hl, hl                                    ; $757e: $29
    ld a, [hl-]                                   ; $757f: $3a
    add hl, sp                                    ; $7580: $39
    ld a, [bc]                                    ; $7581: $0a
    dec b                                         ; $7582: $05
    ld [bc], a                                    ; $7583: $02
    ld [bc], a                                    ; $7584: $02
    ld a, a                                       ; $7585: $7f
    ld a, b                                       ; $7586: $78
    ld a, c                                       ; $7587: $79
    ld a, d                                       ; $7588: $7a
    ld [hl], a                                    ; $7589: $77
    inc bc                                        ; $758a: $03
    inc bc                                        ; $758b: $03
    nop                                           ; $758c: $00
    nop                                           ; $758d: $00
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    rla                                           ; $7590: $17
    dec c                                         ; $7591: $0d
    dec c                                         ; $7592: $0d
    dec l                                         ; $7593: $2d
    cp $e3                                        ; $7594: $fe $e3
    dec l                                         ; $7596: $2d
    or $e1                                        ; $7597: $f6 $e1
    rst $38                                       ; $7599: $ff
    pop hl                                        ; $759a: $e1
    or $ea                                        ; $759b: $f6 $ea
    ret nz                                        ; $759d: $c0

    db $ed                                        ; $759e: $ed
    db $e4                                        ; $759f: $e4
    db $db                                        ; $75a0: $db
    db $e4                                        ; $75a1: $e4
    db $d3                                        ; $75a2: $d3
    db $e3                                        ; $75a3: $e3
    ret c                                         ; $75a4: $d8

    db $ec                                        ; $75a5: $ec
    call nz, $d1e6                                ; $75a6: $c4 $e6 $d1
    pop hl                                        ; $75a9: $e1
    dec l                                         ; $75aa: $2d
    nop                                           ; $75ab: $00
    db $fd                                        ; $75ac: $fd
    ld bc, $e4ff                                  ; $75ad: $01 $ff $e4
    nop                                           ; $75b0: $00
    inc bc                                        ; $75b1: $03
    inc b                                         ; $75b2: $04
    inc b                                         ; $75b3: $04
    dec b                                         ; $75b4: $05
    ld b, $ff                                     ; $75b5: $06 $ff
    rlca                                          ; $75b7: $07
    ld [$0404], sp                                ; $75b8: $08 $04 $04
    inc bc                                        ; $75bb: $03
    add hl, bc                                    ; $75bc: $09
    ld a, [bc]                                    ; $75bd: $0a
    ld a, [bc]                                    ; $75be: $0a
    rst $38                                       ; $75bf: $ff
    dec bc                                        ; $75c0: $0b
    inc c                                         ; $75c1: $0c
    inc c                                         ; $75c2: $0c
    dec c                                         ; $75c3: $0d
    ld a, [bc]                                    ; $75c4: $0a
    ld a, [bc]                                    ; $75c5: $0a
    add hl, bc                                    ; $75c6: $09
    ld c, $ff                                     ; $75c7: $0e $ff
    inc b                                         ; $75c9: $04
    inc b                                         ; $75ca: $04
    rrca                                          ; $75cb: $0f
    db $10                                        ; $75cc: $10
    ld de, $0412                                  ; $75cd: $11 $12 $04
    inc b                                         ; $75d0: $04
    rst $38                                       ; $75d1: $ff
    ld c, $13                                     ; $75d2: $0e $13
    ld a, [bc]                                    ; $75d4: $0a
    ld a, [bc]                                    ; $75d5: $0a
    ld a, [bc]                                    ; $75d6: $0a
    inc d                                         ; $75d7: $14
    dec d                                         ; $75d8: $15
    ld d, $f7                                     ; $75d9: $16 $f7
    ld a, [bc]                                    ; $75db: $0a
    ld a, [bc]                                    ; $75dc: $0a
    inc de                                        ; $75dd: $13
    ret c                                         ; $75de: $d8

    ldh [rNR22], a                                ; $75df: $e0 $17
    jr jr_043_75fc                                ; $75e1: $18 $19

    ld a, [de]                                    ; $75e3: $1a
    xor $d8                                       ; $75e4: $ee $d8
    db $e3                                        ; $75e6: $e3
    dec de                                        ; $75e7: $1b
    inc e                                         ; $75e8: $1c
    dec e                                         ; $75e9: $1d
    rst $20                                       ; $75ea: $e7
    ldh [$09], a                                  ; $75eb: $e0 $09
    ld e, $1f                                     ; $75ed: $1e $1f
    rst $38                                       ; $75ef: $ff
    rra                                           ; $75f0: $1f
    jr nz, jr_043_7614                            ; $75f1: $20 $21

    ld hl, $1f20                                  ; $75f3: $21 $20 $1f
    rra                                           ; $75f6: $1f
    ld e, $00                                     ; $75f7: $1e $00
    nop                                           ; $75f9: $00
    nop                                           ; $75fa: $00
    rla                                           ; $75fb: $17

jr_043_75fc:
    dec c                                         ; $75fc: $0d
    dec c                                         ; $75fd: $0d
    dec l                                         ; $75fe: $2d

Jump_043_75ff:
    cp $e3                                        ; $75ff: $fe $e3
    dec l                                         ; $7601: $2d
    or $e1                                        ; $7602: $f6 $e1
    rst $38                                       ; $7604: $ff
    pop hl                                        ; $7605: $e1
    or $ea                                        ; $7606: $f6 $ea
    ret nz                                        ; $7608: $c0

    db $ed                                        ; $7609: $ed
    db $e4                                        ; $760a: $e4
    db $db                                        ; $760b: $db
    db $e4                                        ; $760c: $e4
    db $d3                                        ; $760d: $d3
    db $e3                                        ; $760e: $e3
    ret c                                         ; $760f: $d8

    db $ec                                        ; $7610: $ec
    call nz, $d1e6                                ; $7611: $c4 $e6 $d1

jr_043_7614:
    pop hl                                        ; $7614: $e1
    dec l                                         ; $7615: $2d
    nop                                           ; $7616: $00
    db $fd                                        ; $7617: $fd
    ld bc, $e4ff                                  ; $7618: $01 $ff $e4
    nop                                           ; $761b: $00
    inc bc                                        ; $761c: $03
    inc b                                         ; $761d: $04
    inc b                                         ; $761e: $04
    ld [hl+], a                                   ; $761f: $22
    inc hl                                        ; $7620: $23
    rst $38                                       ; $7621: $ff
    inc h                                         ; $7622: $24
    dec h                                         ; $7623: $25
    inc b                                         ; $7624: $04
    inc b                                         ; $7625: $04
    inc bc                                        ; $7626: $03
    add hl, bc                                    ; $7627: $09
    ld a, [bc]                                    ; $7628: $0a
    ld a, [bc]                                    ; $7629: $0a
    rst $38                                       ; $762a: $ff
    inc l                                         ; $762b: $2c
    dec l                                         ; $762c: $2d
    ld l, $2f                                     ; $762d: $2e $2f
    ld a, [bc]                                    ; $762f: $0a
    ld a, [bc]                                    ; $7630: $0a
    add hl, bc                                    ; $7631: $09
    ld c, $ff                                     ; $7632: $0e $ff
    inc b                                         ; $7634: $04
    inc b                                         ; $7635: $04
    scf                                           ; $7636: $37
    jr c, @+$3b                                   ; $7637: $38 $39

    inc b                                         ; $7639: $04
    inc b                                         ; $763a: $04
    inc b                                         ; $763b: $04
    rst $38                                       ; $763c: $ff
    ld c, $13                                     ; $763d: $0e $13
    ld a, [bc]                                    ; $763f: $0a
    ld a, [bc]                                    ; $7640: $0a
    ld a, [bc]                                    ; $7641: $0a
    ld b, d                                       ; $7642: $42
    ld b, e                                       ; $7643: $43
    ld b, h                                       ; $7644: $44
    rst $30                                       ; $7645: $f7
    ld a, [bc]                                    ; $7646: $0a
    ld a, [bc]                                    ; $7647: $0a
    inc de                                        ; $7648: $13
    ret c                                         ; $7649: $d8

    ldh [rDIV], a                                 ; $764a: $e0 $04
    ld c, d                                       ; $764c: $4a
    ld c, e                                       ; $764d: $4b
    ld c, h                                       ; $764e: $4c
    xor $d8                                       ; $764f: $ee $d8
    db $e3                                        ; $7651: $e3
    ld a, [bc]                                    ; $7652: $0a
    ld d, b                                       ; $7653: $50
    dec e                                         ; $7654: $1d
    rst $20                                       ; $7655: $e7
    ldh [$09], a                                  ; $7656: $e0 $09
    ld e, $1f                                     ; $7658: $1e $1f
    rst $38                                       ; $765a: $ff
    rra                                           ; $765b: $1f
    jr nz, jr_043_767f                            ; $765c: $20 $21

    ld hl, $1f20                                  ; $765e: $21 $20 $1f
    rra                                           ; $7661: $1f
    ld e, $00                                     ; $7662: $1e $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    rla                                           ; $7666: $17
    dec c                                         ; $7667: $0d
    dec c                                         ; $7668: $0d
    dec l                                         ; $7669: $2d
    cp $e3                                        ; $766a: $fe $e3
    dec l                                         ; $766c: $2d
    or $e1                                        ; $766d: $f6 $e1
    ld a, [c]                                     ; $766f: $f2
    ld [c], a                                     ; $7670: $e2
    or $e4                                        ; $7671: $f6 $e4
    add b                                         ; $7673: $80
    and $e0                                       ; $7674: $e6 $e0
    push hl                                       ; $7676: $e5
    pop hl                                        ; $7677: $e1
    rst $30                                       ; $7678: $f7
    ld [c], a                                     ; $7679: $e2
    db $db                                        ; $767a: $db
    db $e4                                        ; $767b: $e4
    db $d3                                        ; $767c: $d3
    db $e3                                        ; $767d: $e3
    ret c                                         ; $767e: $d8

jr_043_767f:
    db $ec                                        ; $767f: $ec
    adc $eb                                       ; $7680: $ce $eb
    nop                                           ; $7682: $00
    db $fd                                        ; $7683: $fd
    ld bc, $e4ff                                  ; $7684: $01 $ff $e4
    nop                                           ; $7687: $00
    inc bc                                        ; $7688: $03
    inc b                                         ; $7689: $04
    inc b                                         ; $768a: $04
    ld h, $27                                     ; $768b: $26 $27
    rst $38                                       ; $768d: $ff
    jr z, jr_043_7694                             ; $768e: $28 $04

    inc b                                         ; $7690: $04
    inc b                                         ; $7691: $04
    inc bc                                        ; $7692: $03
    add hl, bc                                    ; $7693: $09

jr_043_7694:
    ld a, [bc]                                    ; $7694: $0a
    ld a, [bc]                                    ; $7695: $0a
    rst $38                                       ; $7696: $ff
    jr nc, jr_043_76ca                            ; $7697: $30 $31

    ld [hl-], a                                   ; $7699: $32
    inc sp                                        ; $769a: $33
    ld a, [bc]                                    ; $769b: $0a
    ld a, [bc]                                    ; $769c: $0a
    add hl, bc                                    ; $769d: $09
    ld c, $ff                                     ; $769e: $0e $ff
    inc b                                         ; $76a0: $04
    inc b                                         ; $76a1: $04
    ld a, [hl-]                                   ; $76a2: $3a
    dec sp                                        ; $76a3: $3b
    inc a                                         ; $76a4: $3c
    dec a                                         ; $76a5: $3d
    inc b                                         ; $76a6: $04
    inc b                                         ; $76a7: $04
    ld a, a                                       ; $76a8: $7f
    ld c, $13                                     ; $76a9: $0e $13
    ld a, [bc]                                    ; $76ab: $0a
    ld a, [bc]                                    ; $76ac: $0a
    ld a, [bc]                                    ; $76ad: $0a
    ld b, l                                       ; $76ae: $45
    ld b, [hl]                                    ; $76af: $46
    ei                                            ; $76b0: $fb
    ldh [$dd], a                                  ; $76b1: $e0 $dd
    inc de                                        ; $76b3: $13
    ret c                                         ; $76b4: $d8

    ldh [rDIV], a                                 ; $76b5: $e0 $04
    ld c, l                                       ; $76b7: $4d
    ld c, [hl]                                    ; $76b8: $4e
    ret c                                         ; $76b9: $d8

    db $e4                                        ; $76ba: $e4
    ld a, [bc]                                    ; $76bb: $0a
    ld d, c                                       ; $76bc: $51
    db $fd                                        ; $76bd: $fd
    ld d, d                                       ; $76be: $52
    rst $20                                       ; $76bf: $e7
    ldh [$09], a                                  ; $76c0: $e0 $09
    ld e, $1f                                     ; $76c2: $1e $1f
    rra                                           ; $76c4: $1f
    ld d, e                                       ; $76c5: $53
    ld d, h                                       ; $76c6: $54
    rra                                           ; $76c7: $1f
    ld d, l                                       ; $76c8: $55
    ld d, [hl]                                    ; $76c9: $56

jr_043_76ca:
    rra                                           ; $76ca: $1f
    rra                                           ; $76cb: $1f
    ld e, $00                                     ; $76cc: $1e $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    rla                                           ; $76d0: $17
    dec c                                         ; $76d1: $0d
    dec c                                         ; $76d2: $0d
    dec l                                         ; $76d3: $2d
    cp $e3                                        ; $76d4: $fe $e3
    dec l                                         ; $76d6: $2d
    or $e1                                        ; $76d7: $f6 $e1
    ld a, [c]                                     ; $76d9: $f2
    ld [c], a                                     ; $76da: $e2
    or $e9                                        ; $76db: $f6 $e9
    ldh [$ed], a                                  ; $76dd: $e0 $ed
    pop hl                                        ; $76df: $e1
    db $dd                                        ; $76e0: $dd
    and $f6                                       ; $76e1: $e6 $f6
    db $e4                                        ; $76e3: $e4
    ret c                                         ; $76e4: $d8

    pop af                                        ; $76e5: $f1
    rst $10                                       ; $76e6: $d7
    push hl                                       ; $76e7: $e5
    dec l                                         ; $76e8: $2d
    nop                                           ; $76e9: $00
    ld bc, $fffe                                  ; $76ea: $01 $fe $ff
    db $e4                                        ; $76ed: $e4
    nop                                           ; $76ee: $00
    inc bc                                        ; $76ef: $03
    inc b                                         ; $76f0: $04
    inc b                                         ; $76f1: $04
    add hl, hl                                    ; $76f2: $29
    ld a, [hl+]                                   ; $76f3: $2a
    dec hl                                        ; $76f4: $2b
    rst $38                                       ; $76f5: $ff
    inc b                                         ; $76f6: $04
    inc b                                         ; $76f7: $04
    inc b                                         ; $76f8: $04
    inc bc                                        ; $76f9: $03
    add hl, bc                                    ; $76fa: $09
    ld a, [bc]                                    ; $76fb: $0a
    ld a, [bc]                                    ; $76fc: $0a
    inc [hl]                                      ; $76fd: $34
    rst $38                                       ; $76fe: $ff
    dec [hl]                                      ; $76ff: $35
    ld [hl], $0a                                  ; $7700: $36 $0a
    ld a, [bc]                                    ; $7702: $0a
    ld a, [bc]                                    ; $7703: $0a
    add hl, bc                                    ; $7704: $09
    ld c, $04                                     ; $7705: $0e $04
    rst $38                                       ; $7707: $ff
    inc b                                         ; $7708: $04
    ld a, $3f                                     ; $7709: $3e $3f
    ld b, b                                       ; $770b: $40
    ld b, c                                       ; $770c: $41
    inc b                                         ; $770d: $04
    inc b                                         ; $770e: $04
    ld c, $fd                                     ; $770f: $0e $fd
    inc de                                        ; $7711: $13
    pop af                                        ; $7712: $f1
    ldh [rBGP], a                                 ; $7713: $e0 $47
    ld c, b                                       ; $7715: $48
    ld c, c                                       ; $7716: $49
    ld a, [bc]                                    ; $7717: $0a
    ld a, [bc]                                    ; $7718: $0a
    inc de                                        ; $7719: $13
    xor $d8                                       ; $771a: $ee $d8
    ldh [rDIV], a                                 ; $771c: $e0 $04
    ld c, l                                       ; $771e: $4d
    ld c, a                                       ; $771f: $4f
    ret c                                         ; $7720: $d8

    db $e4                                        ; $7721: $e4
    ld a, [bc]                                    ; $7722: $0a
    ld d, c                                       ; $7723: $51
    ld d, d                                       ; $7724: $52
    cp $d8                                        ; $7725: $fe $d8
    pop hl                                        ; $7727: $e1
    ld e, $1f                                     ; $7728: $1e $1f
    rra                                           ; $772a: $1f
    ld d, e                                       ; $772b: $53
    ld d, h                                       ; $772c: $54
    ld d, l                                       ; $772d: $55
    ld d, [hl]                                    ; $772e: $56
    rlca                                          ; $772f: $07
    rra                                           ; $7730: $1f
    rra                                           ; $7731: $1f
    ld e, $00                                     ; $7732: $1e $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    adc a                                         ; $7736: $8f
    dec c                                         ; $7737: $0d
    dec c                                         ; $7738: $0d
    dec c                                         ; $7739: $0d
    dec l                                         ; $773a: $2d
    db $fc                                        ; $773b: $fc
    ld [c], a                                     ; $773c: $e2
    ld a, [$fde1]                                 ; $773d: $fa $e1 $fd
    pop hl                                        ; $7740: $e1
    dec l                                         ; $7741: $2d
    ld h, c                                       ; $7742: $61
    dec l                                         ; $7743: $2d
    or $e5                                        ; $7744: $f6 $e5
    push af                                       ; $7746: $f5
    ldh [$ec], a                                  ; $7747: $e0 $ec
    xor $e2                                       ; $7749: $ee $e2
    db $f4                                        ; $774b: $f4
    ld c, l                                       ; $774c: $4d
    ld c, l                                       ; $774d: $4d
    call nz, Call_043_7fe3                        ; $774e: $c4 $e3 $7f
    ld c, l                                       ; $7751: $4d
    ld l, l                                       ; $7752: $6d
    nop                                           ; $7753: $00
    ld bc, $0202                                  ; $7754: $01 $02 $02
    ld bc, $e1fc                                  ; $7757: $01 $fc $e1
    rst $38                                       ; $775a: $ff
    nop                                           ; $775b: $00
    inc b                                         ; $775c: $04
    dec b                                         ; $775d: $05
    ld b, $07                                     ; $775e: $06 $07
    ld [$0609], sp                                ; $7760: $08 $09 $06
    rst $38                                       ; $7763: $ff
    ld b, $05                                     ; $7764: $06 $05

jr_043_7766:
    inc b                                         ; $7766: $04
    ld a, [bc]                                    ; $7767: $0a
    dec bc                                        ; $7768: $0b
    inc c                                         ; $7769: $0c
    dec c                                         ; $776a: $0d
    ld c, $ff                                     ; $776b: $0e $ff
    rrca                                          ; $776d: $0f
    inc c                                         ; $776e: $0c
    inc c                                         ; $776f: $0c
    dec bc                                        ; $7770: $0b
    ld a, [bc]                                    ; $7771: $0a
    db $10                                        ; $7772: $10
    ld de, $7f12                                  ; $7773: $11 $12 $7f
    inc de                                        ; $7776: $13
    inc d                                         ; $7777: $14
    dec d                                         ; $7778: $15
    ld [de], a                                    ; $7779: $12
    ld [de], a                                    ; $777a: $12
    ld de, $e210                                  ; $777b: $11 $10 $e2
    ldh [rPCM34], a                               ; $777e: $e0 $77
    ld d, $17                                     ; $7780: $16 $17
    jr jr_043_7766                                ; $7782: $18 $e2

    db $e4                                        ; $7784: $e4
    add hl, de                                    ; $7785: $19
    ld a, [de]                                    ; $7786: $1a
    dec de                                        ; $7787: $1b
    ld [c], a                                     ; $7788: $e2
    db $e4                                        ; $7789: $e4
    rst $30                                       ; $778a: $f7
    inc e                                         ; $778b: $1c
    dec e                                         ; $778c: $1d
    ld e, $e2                                     ; $778d: $1e $e2
    pop hl                                        ; $778f: $e1
    nop                                           ; $7790: $00
    ld bc, $201f                                  ; $7791: $01 $1f $20
    ccf                                           ; $7794: $3f
    ld hl, $1f22                                  ; $7795: $21 $22 $1f
    rra                                           ; $7798: $1f
    ld bc, $0000                                  ; $7799: $01 $00 $00
    nop                                           ; $779c: $00
    nop                                           ; $779d: $00
    adc a                                         ; $779e: $8f
    dec c                                         ; $779f: $0d
    dec c                                         ; $77a0: $0d
    dec c                                         ; $77a1: $0d
    dec l                                         ; $77a2: $2d
    db $fc                                        ; $77a3: $fc
    ld [c], a                                     ; $77a4: $e2
    ld a, [$fde1]                                 ; $77a5: $fa $e1 $fd
    pop hl                                        ; $77a8: $e1
    dec l                                         ; $77a9: $2d
    ld h, c                                       ; $77aa: $61
    dec l                                         ; $77ab: $2d
    or $e5                                        ; $77ac: $f6 $e5
    push af                                       ; $77ae: $f5
    ldh [$ec], a                                  ; $77af: $e0 $ec
    xor $e2                                       ; $77b1: $ee $e2
    db $f4                                        ; $77b3: $f4
    ld c, l                                       ; $77b4: $4d
    ld c, l                                       ; $77b5: $4d
    call nz, Call_043_7fe3                        ; $77b6: $c4 $e3 $7f
    ld c, l                                       ; $77b9: $4d
    ld l, l                                       ; $77ba: $6d
    nop                                           ; $77bb: $00
    ld bc, $0202                                  ; $77bc: $01 $02 $02
    ld bc, $e1fc                                  ; $77bf: $01 $fc $e1
    rst $38                                       ; $77c2: $ff
    nop                                           ; $77c3: $00
    inc b                                         ; $77c4: $04
    dec b                                         ; $77c5: $05
    ld b, $24                                     ; $77c6: $06 $24
    dec h                                         ; $77c8: $25
    ld h, $06                                     ; $77c9: $26 $06
    rst $38                                       ; $77cb: $ff
    ld b, $05                                     ; $77cc: $06 $05
    inc b                                         ; $77ce: $04
    ld a, [bc]                                    ; $77cf: $0a
    dec bc                                        ; $77d0: $0b
    inc c                                         ; $77d1: $0c
    dec l                                         ; $77d2: $2d
    ld l, $ff                                     ; $77d3: $2e $ff
    cpl                                           ; $77d5: $2f
    inc c                                         ; $77d6: $0c
    inc c                                         ; $77d7: $0c
    dec bc                                        ; $77d8: $0b
    ld a, [bc]                                    ; $77d9: $0a
    db $10                                        ; $77da: $10
    ld de, $7f12                                  ; $77db: $11 $12 $7f
    add hl, sp                                    ; $77de: $39
    ld a, [hl-]                                   ; $77df: $3a
    dec sp                                        ; $77e0: $3b
    inc a                                         ; $77e1: $3c
    ld [de], a                                    ; $77e2: $12
    ld de, $e210                                  ; $77e3: $11 $10 $e2
    ldh [$ef], a                                  ; $77e6: $e0 $ef
    ld d, $17                                     ; $77e8: $16 $17
    ld b, h                                       ; $77ea: $44
    ld b, l                                       ; $77eb: $45
    ld [c], a                                     ; $77ec: $e2
    db $e3                                        ; $77ed: $e3
    add hl, de                                    ; $77ee: $19
    ld a, [de]                                    ; $77ef: $1a
    ld c, d                                       ; $77f0: $4a
    sbc $e2                                       ; $77f1: $de $e2
    db $e4                                        ; $77f3: $e4
    inc e                                         ; $77f4: $1c
    dec e                                         ; $77f5: $1d
    ld c, h                                       ; $77f6: $4c
    ld [de], a                                    ; $77f7: $12
    ld [c], a                                     ; $77f8: $e2
    ldh [rP1], a                                  ; $77f9: $e0 $00
    ld bc, $1fff                                  ; $77fb: $01 $ff $1f
    jr nz, @+$23                                  ; $77fe: $20 $21

    ld [hl+], a                                   ; $7800: $22
    rra                                           ; $7801: $1f
    rra                                           ; $7802: $1f
    ld bc, $0000                                  ; $7803: $01 $00 $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    adc a                                         ; $7808: $8f
    dec c                                         ; $7809: $0d
    dec c                                         ; $780a: $0d
    dec c                                         ; $780b: $0d
    dec l                                         ; $780c: $2d
    db $fc                                        ; $780d: $fc
    ld [c], a                                     ; $780e: $e2
    ld a, [$fde1]                                 ; $780f: $fa $e1 $fd
    pop hl                                        ; $7812: $e1
    dec l                                         ; $7813: $2d
    ld h, c                                       ; $7814: $61
    dec l                                         ; $7815: $2d
    or $e5                                        ; $7816: $f6 $e5
    push af                                       ; $7818: $f5
    ldh [$ec], a                                  ; $7819: $e0 $ec
    xor $e2                                       ; $781b: $ee $e2
    db $f4                                        ; $781d: $f4
    ld c, l                                       ; $781e: $4d
    ld c, l                                       ; $781f: $4d
    call nz, Call_043_7fe3                        ; $7820: $c4 $e3 $7f
    ld c, l                                       ; $7823: $4d
    ld l, l                                       ; $7824: $6d
    nop                                           ; $7825: $00
    ld bc, $0202                                  ; $7826: $01 $02 $02
    ld bc, $e1fc                                  ; $7829: $01 $fc $e1
    rst $38                                       ; $782c: $ff
    nop                                           ; $782d: $00
    inc b                                         ; $782e: $04
    dec b                                         ; $782f: $05
    ld b, $27                                     ; $7830: $06 $27
    jr z, jr_043_785d                             ; $7832: $28 $29

    ld a, [hl+]                                   ; $7834: $2a
    rst $38                                       ; $7835: $ff
    ld b, $05                                     ; $7836: $06 $05
    inc b                                         ; $7838: $04
    ld a, [bc]                                    ; $7839: $0a
    dec bc                                        ; $783a: $0b
    inc c                                         ; $783b: $0c
    jr nc, @+$33                                  ; $783c: $30 $31

    rst $38                                       ; $783e: $ff
    ld [hl-], a                                   ; $783f: $32
    inc sp                                        ; $7840: $33
    inc c                                         ; $7841: $0c
    dec bc                                        ; $7842: $0b
    ld a, [bc]                                    ; $7843: $0a
    db $10                                        ; $7844: $10
    ld de, $7f12                                  ; $7845: $11 $12 $7f
    dec a                                         ; $7848: $3d
    ld a, $3f                                     ; $7849: $3e $3f
    ld b, b                                       ; $784b: $40
    ld [de], a                                    ; $784c: $12
    ld de, $e210                                  ; $784d: $11 $10 $e2
    ldh [$ef], a                                  ; $7850: $e0 $ef
    ld d, $17                                     ; $7852: $16 $17
    ld b, [hl]                                    ; $7854: $46
    ld b, a                                       ; $7855: $47
    ld [c], a                                     ; $7856: $e2
    db $e3                                        ; $7857: $e3
    add hl, de                                    ; $7858: $19
    ld a, [de]                                    ; $7859: $1a
    ld c, e                                       ; $785a: $4b
    cp l                                          ; $785b: $bd
    inc c                                         ; $785c: $0c

jr_043_785d:
    ld [c], a                                     ; $785d: $e2
    db $e3                                        ; $785e: $e3
    inc e                                         ; $785f: $1c
    dec e                                         ; $7860: $1d
    ld c, h                                       ; $7861: $4c
    ld [de], a                                    ; $7862: $12
    ld [c], a                                     ; $7863: $e2
    ldh [rP1], a                                  ; $7864: $e0 $00
    rst $38                                       ; $7866: $ff
    ld bc, $201f                                  ; $7867: $01 $1f $20
    ld hl, $1f22                                  ; $786a: $21 $22 $1f
    rra                                           ; $786d: $1f
    ld bc, $0001                                  ; $786e: $01 $01 $00
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    adc a                                         ; $7874: $8f
    dec c                                         ; $7875: $0d
    dec c                                         ; $7876: $0d
    dec c                                         ; $7877: $0d
    dec l                                         ; $7878: $2d
    db $fc                                        ; $7879: $fc
    ld [c], a                                     ; $787a: $e2
    ld a, [$fde1]                                 ; $787b: $fa $e1 $fd
    pop hl                                        ; $787e: $e1
    dec l                                         ; $787f: $2d
    ld h, c                                       ; $7880: $61
    dec l                                         ; $7881: $2d
    or $e5                                        ; $7882: $f6 $e5
    push af                                       ; $7884: $f5
    ldh [$ec], a                                  ; $7885: $e0 $ec
    xor $e2                                       ; $7887: $ee $e2
    db $f4                                        ; $7889: $f4
    ld c, l                                       ; $788a: $4d
    ld c, l                                       ; $788b: $4d
    call nz, $ffe3                                ; $788c: $c4 $e3 $ff
    ld c, l                                       ; $788f: $4d
    ld l, l                                       ; $7890: $6d
    nop                                           ; $7891: $00
    ld bc, $0202                                  ; $7892: $01 $02 $02
    ld bc, $ff01                                  ; $7895: $01 $01 $ff
    inc hl                                        ; $7898: $23
    ld [bc], a                                    ; $7899: $02
    ld bc, $0400                                  ; $789a: $01 $00 $04
    dec b                                         ; $789d: $05
    ld b, $27                                     ; $789e: $06 $27
    rst $38                                       ; $78a0: $ff
    jr z, jr_043_78cc                             ; $78a1: $28 $29

    dec hl                                        ; $78a3: $2b
    ld b, $05                                     ; $78a4: $06 $05
    inc b                                         ; $78a6: $04
    ld a, [bc]                                    ; $78a7: $0a
    dec bc                                        ; $78a8: $0b
    rst $38                                       ; $78a9: $ff
    inc c                                         ; $78aa: $0c
    jr nc, jr_043_78e1                            ; $78ab: $30 $34

    dec [hl]                                      ; $78ad: $35
    ld [hl], $0c                                  ; $78ae: $36 $0c
    dec bc                                        ; $78b0: $0b
    ld a, [bc]                                    ; $78b1: $0a
    rst $38                                       ; $78b2: $ff
    db $10                                        ; $78b3: $10
    ld de, $3d12                                  ; $78b4: $11 $12 $3d
    ld b, c                                       ; $78b7: $41
    ld b, d                                       ; $78b8: $42
    ld b, e                                       ; $78b9: $43
    ld [de], a                                    ; $78ba: $12
    ld a, e                                       ; $78bb: $7b
    ld de, $e210                                  ; $78bc: $11 $10 $e2
    ldh [rNR21], a                                ; $78bf: $e0 $16
    rla                                           ; $78c1: $17
    ld c, b                                       ; $78c2: $48
    ld c, c                                       ; $78c3: $49
    ld [c], a                                     ; $78c4: $e2
    db $e3                                        ; $78c5: $e3
    rst $28                                       ; $78c6: $ef
    add hl, de                                    ; $78c7: $19
    ld a, [de]                                    ; $78c8: $1a
    ld c, e                                       ; $78c9: $4b
    inc c                                         ; $78ca: $0c
    ld [c], a                                     ; $78cb: $e2

jr_043_78cc:
    db $e3                                        ; $78cc: $e3
    inc e                                         ; $78cd: $1c
    dec e                                         ; $78ce: $1d
    ld c, h                                       ; $78cf: $4c
    db $fd                                        ; $78d0: $fd
    ld [de], a                                    ; $78d1: $12
    ld [c], a                                     ; $78d2: $e2
    ldh [rP1], a                                  ; $78d3: $e0 $00
    ld bc, $201f                                  ; $78d5: $01 $1f $20
    ld hl, $0f22                                  ; $78d8: $21 $22 $0f
    rra                                           ; $78db: $1f
    rra                                           ; $78dc: $1f
    ld bc, $0000                                  ; $78dd: $01 $00 $00

Jump_043_78e0:
    nop                                           ; $78e0: $00

jr_043_78e1:
    nop                                           ; $78e1: $00
    adc a                                         ; $78e2: $8f
    dec c                                         ; $78e3: $0d
    dec c                                         ; $78e4: $0d
    dec c                                         ; $78e5: $0d
    dec l                                         ; $78e6: $2d
    db $fc                                        ; $78e7: $fc
    ld [c], a                                     ; $78e8: $e2
    ld a, [$fde1]                                 ; $78e9: $fa $e1 $fd
    pop hl                                        ; $78ec: $e1
    dec l                                         ; $78ed: $2d
    ld h, c                                       ; $78ee: $61
    dec l                                         ; $78ef: $2d
    or $e5                                        ; $78f0: $f6 $e5
    push af                                       ; $78f2: $f5
    ldh [$ec], a                                  ; $78f3: $e0 $ec
    xor $e2                                       ; $78f5: $ee $e2
    db $f4                                        ; $78f7: $f4
    ld c, l                                       ; $78f8: $4d
    ld c, l                                       ; $78f9: $4d
    call nz, Call_043_7fe3                        ; $78fa: $c4 $e3 $7f
    ld c, l                                       ; $78fd: $4d
    ld l, l                                       ; $78fe: $6d
    nop                                           ; $78ff: $00
    ld bc, $0202                                  ; $7900: $01 $02 $02
    ld bc, $e1fc                                  ; $7903: $01 $fc $e1
    rst $38                                       ; $7906: $ff
    nop                                           ; $7907: $00
    inc b                                         ; $7908: $04
    dec b                                         ; $7909: $05
    ld b, $27                                     ; $790a: $06 $27
    jr z, jr_043_7937                             ; $790c: $28 $29

    inc l                                         ; $790e: $2c
    rst $38                                       ; $790f: $ff
    ld b, $05                                     ; $7910: $06 $05
    inc b                                         ; $7912: $04
    ld a, [bc]                                    ; $7913: $0a
    dec bc                                        ; $7914: $0b
    inc c                                         ; $7915: $0c
    jr nc, jr_043_794f                            ; $7916: $30 $37

    rst $38                                       ; $7918: $ff
    jr c, jr_043_7951                             ; $7919: $38 $36

    inc c                                         ; $791b: $0c
    dec bc                                        ; $791c: $0b
    ld a, [bc]                                    ; $791d: $0a
    db $10                                        ; $791e: $10
    ld de, $7f12                                  ; $791f: $11 $12 $7f
    dec a                                         ; $7922: $3d
    ld b, c                                       ; $7923: $41
    ld b, d                                       ; $7924: $42
    ld b, e                                       ; $7925: $43
    ld [de], a                                    ; $7926: $12
    ld de, $e210                                  ; $7927: $11 $10 $e2
    ldh [$ef], a                                  ; $792a: $e0 $ef
    ld d, $17                                     ; $792c: $16 $17
    ld c, b                                       ; $792e: $48
    ld c, c                                       ; $792f: $49
    ld [c], a                                     ; $7930: $e2
    db $e3                                        ; $7931: $e3
    add hl, de                                    ; $7932: $19
    ld a, [de]                                    ; $7933: $1a
    ld c, e                                       ; $7934: $4b
    cp l                                          ; $7935: $bd
    inc c                                         ; $7936: $0c

jr_043_7937:
    ld [c], a                                     ; $7937: $e2
    db $e3                                        ; $7938: $e3
    inc e                                         ; $7939: $1c
    dec e                                         ; $793a: $1d
    ld c, h                                       ; $793b: $4c
    ld [de], a                                    ; $793c: $12
    ld [c], a                                     ; $793d: $e2
    ldh [rP1], a                                  ; $793e: $e0 $00
    rst $38                                       ; $7940: $ff
    ld bc, $201f                                  ; $7941: $01 $1f $20
    ld hl, $1f22                                  ; $7944: $21 $22 $1f
    rra                                           ; $7947: $1f
    ld bc, $0001                                  ; $7948: $01 $01 $00
    nop                                           ; $794b: $00
    nop                                           ; $794c: $00
    nop                                           ; $794d: $00
    adc a                                         ; $794e: $8f

jr_043_794f:
    dec c                                         ; $794f: $0d
    dec c                                         ; $7950: $0d

jr_043_7951:
    dec c                                         ; $7951: $0d
    dec l                                         ; $7952: $2d
    db $fc                                        ; $7953: $fc
    ld [c], a                                     ; $7954: $e2
    ld a, [$fde1]                                 ; $7955: $fa $e1 $fd
    pop hl                                        ; $7958: $e1
    dec l                                         ; $7959: $2d
    pop bc                                        ; $795a: $c1
    dec l                                         ; $795b: $2d
    or $e5                                        ; $795c: $f6 $e5
    db $ed                                        ; $795e: $ed
    and $ec                                       ; $795f: $e6 $ec
    add sp, -$1e                                  ; $7961: $e8 $e2
    db $ed                                        ; $7963: $ed
    call nz, $2de2                                ; $7964: $c4 $e2 $2d
    dec l                                         ; $7967: $2d
    ei                                            ; $7968: $fb
    ld c, l                                       ; $7969: $4d
    ld c, l                                       ; $796a: $4d
    cp d                                          ; $796b: $ba
    db $e3                                        ; $796c: $e3
    ld c, l                                       ; $796d: $4d
    ld l, l                                       ; $796e: $6d
    nop                                           ; $796f: $00
    ld bc, $fb02                                  ; $7970: $01 $02 $fb
    ld [bc], a                                    ; $7973: $02
    ld bc, $e1fc                                  ; $7974: $01 $fc $e1
    nop                                           ; $7977: $00
    inc b                                         ; $7978: $04
    dec b                                         ; $7979: $05
    ld b, $07                                     ; $797a: $06 $07
    rst $38                                       ; $797c: $ff
    ld [$0a09], sp                                ; $797d: $08 $09 $0a
    ld b, $05                                     ; $7980: $06 $05
    inc b                                         ; $7982: $04
    dec bc                                        ; $7983: $0b
    inc c                                         ; $7984: $0c
    rst $38                                       ; $7985: $ff
    dec c                                         ; $7986: $0d
    ld c, $0f                                     ; $7987: $0e $0f
    db $10                                        ; $7989: $10
    ld de, $0c0d                                  ; $798a: $11 $0d $0c
    ld [de], a                                    ; $798d: $12
    rst $38                                       ; $798e: $ff
    inc de                                        ; $798f: $13
    inc d                                         ; $7990: $14
    dec d                                         ; $7991: $15
    ld d, $17                                     ; $7992: $16 $17
    jr jr_043_79af                                ; $7994: $18 $19

    dec d                                         ; $7996: $15
    ld a, e                                       ; $7997: $7b
    inc d                                         ; $7998: $14
    inc de                                        ; $7999: $13
    ld [c], a                                     ; $799a: $e2
    ldh [rNR30], a                                ; $799b: $e0 $1a
    dec de                                        ; $799d: $1b
    inc e                                         ; $799e: $1c
    ld b, $e2                                     ; $799f: $06 $e2
    db $e3                                        ; $79a1: $e3
    rst $28                                       ; $79a2: $ef
    dec e                                         ; $79a3: $1d
    ld e, $1f                                     ; $79a4: $1e $1f
    dec c                                         ; $79a6: $0d
    ld [c], a                                     ; $79a7: $e2
    db $e3                                        ; $79a8: $e3
    dec d                                         ; $79a9: $15
    jr nz, @+$23                                  ; $79aa: $20 $21

    db $fd                                        ; $79ac: $fd
    dec d                                         ; $79ad: $15
    ld [c], a                                     ; $79ae: $e2

jr_043_79af:
    ldh [rP1], a                                  ; $79af: $e0 $00
    ld bc, $2222                                  ; $79b1: $01 $22 $22
    inc hl                                        ; $79b4: $23
    inc h                                         ; $79b5: $24
    rrca                                          ; $79b6: $0f
    ld [hl+], a                                   ; $79b7: $22
    ld [hl+], a                                   ; $79b8: $22
    ld bc, $0000                                  ; $79b9: $01 $00 $00
    nop                                           ; $79bc: $00
    nop                                           ; $79bd: $00
    adc a                                         ; $79be: $8f
    dec c                                         ; $79bf: $0d
    dec c                                         ; $79c0: $0d
    dec c                                         ; $79c1: $0d
    dec l                                         ; $79c2: $2d
    db $fc                                        ; $79c3: $fc
    ld [c], a                                     ; $79c4: $e2
    ld a, [$fde1]                                 ; $79c5: $fa $e1 $fd
    pop hl                                        ; $79c8: $e1
    dec l                                         ; $79c9: $2d
    pop bc                                        ; $79ca: $c1
    dec l                                         ; $79cb: $2d
    or $e5                                        ; $79cc: $f6 $e5
    db $ed                                        ; $79ce: $ed
    and $ec                                       ; $79cf: $e6 $ec
    add sp, -$1e                                  ; $79d1: $e8 $e2
    db $ed                                        ; $79d3: $ed
    call nz, $2de2                                ; $79d4: $c4 $e2 $2d
    dec l                                         ; $79d7: $2d
    ei                                            ; $79d8: $fb
    ld c, l                                       ; $79d9: $4d
    ld c, l                                       ; $79da: $4d
    cp d                                          ; $79db: $ba
    db $e3                                        ; $79dc: $e3
    ld c, l                                       ; $79dd: $4d
    ld l, l                                       ; $79de: $6d
    nop                                           ; $79df: $00
    ld bc, $fb02                                  ; $79e0: $01 $02 $fb
    ld [bc], a                                    ; $79e3: $02
    ld bc, $e1fc                                  ; $79e4: $01 $fc $e1
    nop                                           ; $79e7: $00
    inc b                                         ; $79e8: $04
    dec b                                         ; $79e9: $05
    ld b, $07                                     ; $79ea: $06 $07
    rst $38                                       ; $79ec: $ff
    ld [$0a09], sp                                ; $79ed: $08 $09 $0a
    ld b, $05                                     ; $79f0: $06 $05
    inc b                                         ; $79f2: $04
    dec bc                                        ; $79f3: $0b
    inc c                                         ; $79f4: $0c
    rst $38                                       ; $79f5: $ff
    dec c                                         ; $79f6: $0d
    ld c, $2d                                     ; $79f7: $0e $2d
    db $10                                        ; $79f9: $10
    ld de, $0c0d                                  ; $79fa: $11 $0d $0c
    ld [de], a                                    ; $79fd: $12
    rst $38                                       ; $79fe: $ff
    inc de                                        ; $79ff: $13
    inc d                                         ; $7a00: $14
    dec d                                         ; $7a01: $15
    ld [hl], $37                                  ; $7a02: $36 $37
    jr jr_043_7a1f                                ; $7a04: $18 $19

    dec d                                         ; $7a06: $15
    ld a, e                                       ; $7a07: $7b
    inc d                                         ; $7a08: $14
    inc de                                        ; $7a09: $13
    ld [c], a                                     ; $7a0a: $e2
    ldh [rLCDC], a                                ; $7a0b: $e0 $40
    ld b, c                                       ; $7a0d: $41
    inc e                                         ; $7a0e: $1c
    ld b, $e2                                     ; $7a0f: $06 $e2
    db $e3                                        ; $7a11: $e3
    rst $28                                       ; $7a12: $ef
    ld c, b                                       ; $7a13: $48
    ld c, c                                       ; $7a14: $49
    rra                                           ; $7a15: $1f
    dec c                                         ; $7a16: $0d
    ld [c], a                                     ; $7a17: $e2
    db $e3                                        ; $7a18: $e3
    dec d                                         ; $7a19: $15
    jr nz, @+$23                                  ; $7a1a: $20 $21

    db $fd                                        ; $7a1c: $fd
    dec d                                         ; $7a1d: $15
    ld [c], a                                     ; $7a1e: $e2

jr_043_7a1f:
    ldh [rP1], a                                  ; $7a1f: $e0 $00
    ld bc, $2222                                  ; $7a21: $01 $22 $22
    inc hl                                        ; $7a24: $23
    inc h                                         ; $7a25: $24
    rrca                                          ; $7a26: $0f
    ld [hl+], a                                   ; $7a27: $22
    ld [hl+], a                                   ; $7a28: $22
    ld bc, $0000                                  ; $7a29: $01 $00 $00
    nop                                           ; $7a2c: $00
    nop                                           ; $7a2d: $00
    adc a                                         ; $7a2e: $8f
    dec c                                         ; $7a2f: $0d
    dec c                                         ; $7a30: $0d
    dec c                                         ; $7a31: $0d
    dec l                                         ; $7a32: $2d
    db $fc                                        ; $7a33: $fc
    ld [c], a                                     ; $7a34: $e2
    ld a, [$fde1]                                 ; $7a35: $fa $e1 $fd
    pop hl                                        ; $7a38: $e1
    dec l                                         ; $7a39: $2d
    pop bc                                        ; $7a3a: $c1
    dec l                                         ; $7a3b: $2d
    or $e5                                        ; $7a3c: $f6 $e5
    db $ed                                        ; $7a3e: $ed
    and $ec                                       ; $7a3f: $e6 $ec
    add sp, -$1e                                  ; $7a41: $e8 $e2
    db $ed                                        ; $7a43: $ed
    call nz, $2de2                                ; $7a44: $c4 $e2 $2d
    dec l                                         ; $7a47: $2d
    ei                                            ; $7a48: $fb
    ld c, l                                       ; $7a49: $4d
    ld c, l                                       ; $7a4a: $4d
    cp d                                          ; $7a4b: $ba
    db $e3                                        ; $7a4c: $e3
    ld c, l                                       ; $7a4d: $4d
    ld l, l                                       ; $7a4e: $6d
    nop                                           ; $7a4f: $00
    ld bc, $fb02                                  ; $7a50: $01 $02 $fb
    ld [bc], a                                    ; $7a53: $02
    ld bc, $e1fc                                  ; $7a54: $01 $fc $e1
    nop                                           ; $7a57: $00
    inc b                                         ; $7a58: $04
    dec b                                         ; $7a59: $05
    ld b, $25                                     ; $7a5a: $06 $25
    rst $38                                       ; $7a5c: $ff
    ld h, $27                                     ; $7a5d: $26 $27
    jr z, jr_043_7a67                             ; $7a5f: $28 $06

    dec b                                         ; $7a61: $05
    inc b                                         ; $7a62: $04
    dec bc                                        ; $7a63: $0b
    inc c                                         ; $7a64: $0c
    rst $38                                       ; $7a65: $ff
    dec c                                         ; $7a66: $0d

jr_043_7a67:
    ld l, $2f                                     ; $7a67: $2e $2f
    jr nc, jr_043_7a9c                            ; $7a69: $30 $31

    dec c                                         ; $7a6b: $0d
    inc c                                         ; $7a6c: $0c
    ld [de], a                                    ; $7a6d: $12
    rst $38                                       ; $7a6e: $ff
    inc de                                        ; $7a6f: $13
    inc d                                         ; $7a70: $14
    dec d                                         ; $7a71: $15
    jr c, @+$3b                                   ; $7a72: $38 $39

    ld a, [hl-]                                   ; $7a74: $3a
    dec sp                                        ; $7a75: $3b
    dec d                                         ; $7a76: $15
    ld a, e                                       ; $7a77: $7b
    inc d                                         ; $7a78: $14
    inc de                                        ; $7a79: $13
    ld [c], a                                     ; $7a7a: $e2
    ldh [rSCY], a                                 ; $7a7b: $e0 $42
    ld b, e                                       ; $7a7d: $43
    ld b, h                                       ; $7a7e: $44
    ld b, $e2                                     ; $7a7f: $06 $e2
    db $e3                                        ; $7a81: $e3
    rst $28                                       ; $7a82: $ef
    dec c                                         ; $7a83: $0d
    ld c, d                                       ; $7a84: $4a
    rra                                           ; $7a85: $1f
    dec c                                         ; $7a86: $0d
    ld [c], a                                     ; $7a87: $e2
    db $e3                                        ; $7a88: $e3
    dec d                                         ; $7a89: $15
    jr nz, @+$23                                  ; $7a8a: $20 $21

    db $fd                                        ; $7a8c: $fd
    dec d                                         ; $7a8d: $15
    ld [c], a                                     ; $7a8e: $e2
    ldh [rP1], a                                  ; $7a8f: $e0 $00
    ld bc, $2222                                  ; $7a91: $01 $22 $22
    inc hl                                        ; $7a94: $23
    inc h                                         ; $7a95: $24
    rrca                                          ; $7a96: $0f
    ld [hl+], a                                   ; $7a97: $22
    ld [hl+], a                                   ; $7a98: $22
    ld bc, $0000                                  ; $7a99: $01 $00 $00

jr_043_7a9c:
    nop                                           ; $7a9c: $00
    nop                                           ; $7a9d: $00
    adc a                                         ; $7a9e: $8f
    dec c                                         ; $7a9f: $0d
    dec c                                         ; $7aa0: $0d
    dec c                                         ; $7aa1: $0d
    dec l                                         ; $7aa2: $2d
    db $fc                                        ; $7aa3: $fc
    ld [c], a                                     ; $7aa4: $e2
    ld a, [$fde1]                                 ; $7aa5: $fa $e1 $fd
    pop hl                                        ; $7aa8: $e1
    dec l                                         ; $7aa9: $2d
    pop bc                                        ; $7aaa: $c1
    dec l                                         ; $7aab: $2d
    or $e5                                        ; $7aac: $f6 $e5
    db $ed                                        ; $7aae: $ed
    and $ec                                       ; $7aaf: $e6 $ec
    add sp, -$1e                                  ; $7ab1: $e8 $e2
    db $ed                                        ; $7ab3: $ed
    call nz, $2de2                                ; $7ab4: $c4 $e2 $2d
    dec l                                         ; $7ab7: $2d
    ei                                            ; $7ab8: $fb
    ld c, l                                       ; $7ab9: $4d
    ld c, l                                       ; $7aba: $4d
    cp d                                          ; $7abb: $ba
    db $e3                                        ; $7abc: $e3
    ld c, l                                       ; $7abd: $4d
    ld l, l                                       ; $7abe: $6d
    nop                                           ; $7abf: $00
    ld bc, $fb02                                  ; $7ac0: $01 $02 $fb
    ld [bc], a                                    ; $7ac3: $02
    ld bc, $e1fc                                  ; $7ac4: $01 $fc $e1
    nop                                           ; $7ac7: $00
    inc b                                         ; $7ac8: $04
    dec b                                         ; $7ac9: $05
    ld b, $29                                     ; $7aca: $06 $29
    rst $38                                       ; $7acc: $ff
    ld a, [hl+]                                   ; $7acd: $2a
    dec hl                                        ; $7ace: $2b
    inc l                                         ; $7acf: $2c
    ld b, $05                                     ; $7ad0: $06 $05
    inc b                                         ; $7ad2: $04
    dec bc                                        ; $7ad3: $0b
    inc c                                         ; $7ad4: $0c
    rst $38                                       ; $7ad5: $ff
    dec c                                         ; $7ad6: $0d
    ld [hl-], a                                   ; $7ad7: $32
    inc sp                                        ; $7ad8: $33
    inc [hl]                                      ; $7ad9: $34
    dec [hl]                                      ; $7ada: $35
    dec c                                         ; $7adb: $0d
    inc c                                         ; $7adc: $0c
    ld [de], a                                    ; $7add: $12
    rst $38                                       ; $7ade: $ff
    inc de                                        ; $7adf: $13
    inc d                                         ; $7ae0: $14
    dec d                                         ; $7ae1: $15
    inc a                                         ; $7ae2: $3c
    dec a                                         ; $7ae3: $3d
    ld a, $3f                                     ; $7ae4: $3e $3f
    dec d                                         ; $7ae6: $15
    ld a, e                                       ; $7ae7: $7b
    inc d                                         ; $7ae8: $14
    inc de                                        ; $7ae9: $13
    ld [c], a                                     ; $7aea: $e2
    ldh [rLYC], a                                 ; $7aeb: $e0 $45
    ld b, [hl]                                    ; $7aed: $46
    ld b, a                                       ; $7aee: $47
    ld b, $e2                                     ; $7aef: $06 $e2
    db $e3                                        ; $7af1: $e3
    rst $28                                       ; $7af2: $ef
    dec c                                         ; $7af3: $0d
    ld c, d                                       ; $7af4: $4a
    rra                                           ; $7af5: $1f
    dec c                                         ; $7af6: $0d
    ld [c], a                                     ; $7af7: $e2
    db $e3                                        ; $7af8: $e3
    dec d                                         ; $7af9: $15
    jr nz, jr_043_7b1d                            ; $7afa: $20 $21

    db $fd                                        ; $7afc: $fd
    dec d                                         ; $7afd: $15
    ld [c], a                                     ; $7afe: $e2
    ldh [rP1], a                                  ; $7aff: $e0 $00
    ld bc, $2222                                  ; $7b01: $01 $22 $22
    inc hl                                        ; $7b04: $23
    inc h                                         ; $7b05: $24
    rrca                                          ; $7b06: $0f
    ld [hl+], a                                   ; $7b07: $22
    ld [hl+], a                                   ; $7b08: $22
    ld bc, $0000                                  ; $7b09: $01 $00 $00
    nop                                           ; $7b0c: $00
    nop                                           ; $7b0d: $00
    ld h, l                                       ; $7b0e: $65
    dec c                                         ; $7b0f: $0d
    rst $38                                       ; $7b10: $ff
    push hl                                       ; $7b11: $e5
    dec l                                         ; $7b12: $2d
    or $e6                                        ; $7b13: $f6 $e6
    rst $30                                       ; $7b15: $f7
    add sp, $4d                                   ; $7b16: $e8 $4d
    ld c, l                                       ; $7b18: $4d
    ld hl, sp-$15                                 ; $7b19: $f8 $eb
    db $fc                                        ; $7b1b: $fc
    ld [c], a                                     ; $7b1c: $e2

jr_043_7b1d:
    push af                                       ; $7b1d: $f5
    ret c                                         ; $7b1e: $d8

    and $6d                                       ; $7b1f: $e6 $6d
    nop                                           ; $7b21: $00
    ld bc, $0302                                  ; $7b22: $01 $02 $03
    ld bc, $fcfe                                  ; $7b25: $01 $fe $fc
    pop hl                                        ; $7b28: $e1
    nop                                           ; $7b29: $00
    dec b                                         ; $7b2a: $05
    ld b, $07                                     ; $7b2b: $06 $07
    ld [$0a09], sp                                ; $7b2d: $08 $09 $0a
    rst $38                                       ; $7b30: $ff
    rlca                                          ; $7b31: $07
    dec bc                                        ; $7b32: $0b
    inc c                                         ; $7b33: $0c
    dec c                                         ; $7b34: $0d
    ld c, $0f                                     ; $7b35: $0e $0f
    db $10                                        ; $7b37: $10
    ld de, $12ff                                  ; $7b38: $11 $ff $12
    inc de                                        ; $7b3b: $13
    db $10                                        ; $7b3c: $10
    db $10                                        ; $7b3d: $10
    inc d                                         ; $7b3e: $14
    dec d                                         ; $7b3f: $15
    dec b                                         ; $7b40: $05
    ld b, $ff                                     ; $7b41: $06 $ff
    ld d, $17                                     ; $7b43: $16 $17

jr_043_7b45:
    jr @+$1b                                      ; $7b45: $18 $19

    ld d, $1a                                     ; $7b47: $16 $1a
    inc c                                         ; $7b49: $0c
    dec c                                         ; $7b4a: $0d
    xor $e2                                       ; $7b4b: $ee $e2
    ldh [rNR31], a                                ; $7b4d: $e0 $1b
    inc e                                         ; $7b4f: $1c
    dec e                                         ; $7b50: $1d
    ld [c], a                                     ; $7b51: $e2
    db $e4                                        ; $7b52: $e4
    ld e, $1f                                     ; $7b53: $1e $1f
    jr nz, jr_043_7b45                            ; $7b55: $20 $ee

    ld [c], a                                     ; $7b57: $e2
    db $e4                                        ; $7b58: $e4
    ld a, [de]                                    ; $7b59: $1a
    ld hl, $e222                                  ; $7b5a: $21 $22 $e2
    pop hl                                        ; $7b5d: $e1
    nop                                           ; $7b5e: $00
    ld bc, $7f23                                  ; $7b5f: $01 $23 $7f
    inc h                                         ; $7b62: $24
    dec h                                         ; $7b63: $25
    ld h, $27                                     ; $7b64: $26 $27
    jr z, jr_043_7b69                             ; $7b66: $28 $01

    nop                                           ; $7b68: $00

jr_043_7b69:
    nop                                           ; $7b69: $00
    nop                                           ; $7b6a: $00
    nop                                           ; $7b6b: $00
    ld h, l                                       ; $7b6c: $65
    dec c                                         ; $7b6d: $0d
    rst $38                                       ; $7b6e: $ff
    push hl                                       ; $7b6f: $e5
    dec l                                         ; $7b70: $2d
    or $e6                                        ; $7b71: $f6 $e6
    rst $30                                       ; $7b73: $f7
    add sp, $4d                                   ; $7b74: $e8 $4d
    ld c, l                                       ; $7b76: $4d
    ld hl, sp-$15                                 ; $7b77: $f8 $eb
    db $fc                                        ; $7b79: $fc
    ld [c], a                                     ; $7b7a: $e2
    push af                                       ; $7b7b: $f5
    ret c                                         ; $7b7c: $d8

    and $6d                                       ; $7b7d: $e6 $6d
    nop                                           ; $7b7f: $00
    ld bc, $0302                                  ; $7b80: $01 $02 $03
    ld bc, $fcfe                                  ; $7b83: $01 $fe $fc
    pop hl                                        ; $7b86: $e1
    nop                                           ; $7b87: $00
    dec b                                         ; $7b88: $05
    ld b, $07                                     ; $7b89: $06 $07
    ld [$0a09], sp                                ; $7b8b: $08 $09 $0a
    rst $38                                       ; $7b8e: $ff
    rlca                                          ; $7b8f: $07
    dec bc                                        ; $7b90: $0b
    inc c                                         ; $7b91: $0c
    dec c                                         ; $7b92: $0d
    ld c, $0f                                     ; $7b93: $0e $0f
    db $10                                        ; $7b95: $10
    ld de, $29ff                                  ; $7b96: $11 $ff $29
    ld a, [hl+]                                   ; $7b99: $2a
    db $10                                        ; $7b9a: $10
    db $10                                        ; $7b9b: $10
    inc d                                         ; $7b9c: $14
    dec d                                         ; $7b9d: $15
    dec b                                         ; $7b9e: $05
    ld b, $ff                                     ; $7b9f: $06 $ff
    ld d, $17                                     ; $7ba1: $16 $17
    jr jr_043_7bbe                                ; $7ba3: $18 $19

    ld d, $1a                                     ; $7ba5: $16 $1a
    inc c                                         ; $7ba7: $0c
    dec c                                         ; $7ba8: $0d
    sbc $e2                                       ; $7ba9: $de $e2
    ldh [rNR31], a                                ; $7bab: $e0 $1b
    inc e                                         ; $7bad: $1c
    jr nc, jr_043_7be1                            ; $7bae: $30 $31

    ld [c], a                                     ; $7bb0: $e2
    db $e3                                        ; $7bb1: $e3
    ld e, $1f                                     ; $7bb2: $1e $1f
    cp e                                          ; $7bb4: $bb
    ld [hl], $37                                  ; $7bb5: $36 $37
    ld [c], a                                     ; $7bb7: $e2
    db $e3                                        ; $7bb8: $e3
    ld a, [de]                                    ; $7bb9: $1a
    ld hl, $e23b                                  ; $7bba: $21 $3b $e2
    pop hl                                        ; $7bbd: $e1

jr_043_7bbe:
    nop                                           ; $7bbe: $00
    rst $38                                       ; $7bbf: $ff
    ld bc, $2423                                  ; $7bc0: $01 $23 $24
    dec h                                         ; $7bc3: $25
    ld h, $27                                     ; $7bc4: $26 $27
    jr z, @+$03                                   ; $7bc6: $28 $01

    ld bc, $0000                                  ; $7bc8: $01 $00 $00
    nop                                           ; $7bcb: $00
    nop                                           ; $7bcc: $00
    ld h, l                                       ; $7bcd: $65
    dec c                                         ; $7bce: $0d
    rst $38                                       ; $7bcf: $ff
    push hl                                       ; $7bd0: $e5
    dec l                                         ; $7bd1: $2d
    or $e6                                        ; $7bd2: $f6 $e6
    rst $30                                       ; $7bd4: $f7
    add sp, $4d                                   ; $7bd5: $e8 $4d
    ld c, l                                       ; $7bd7: $4d
    ld hl, sp-$15                                 ; $7bd8: $f8 $eb
    db $fc                                        ; $7bda: $fc
    ld [c], a                                     ; $7bdb: $e2
    push af                                       ; $7bdc: $f5
    ret c                                         ; $7bdd: $d8

    and $6d                                       ; $7bde: $e6 $6d
    nop                                           ; $7be0: $00

jr_043_7be1:
    ld bc, $0302                                  ; $7be1: $01 $02 $03
    ld bc, $fcfe                                  ; $7be4: $01 $fe $fc
    pop hl                                        ; $7be7: $e1
    nop                                           ; $7be8: $00
    dec b                                         ; $7be9: $05
    ld b, $07                                     ; $7bea: $06 $07
    ld [$0a09], sp                                ; $7bec: $08 $09 $0a
    rst $38                                       ; $7bef: $ff
    rlca                                          ; $7bf0: $07
    dec bc                                        ; $7bf1: $0b
    inc c                                         ; $7bf2: $0c
    dec c                                         ; $7bf3: $0d
    ld c, $0f                                     ; $7bf4: $0e $0f
    db $10                                        ; $7bf6: $10
    ld de, $2bff                                  ; $7bf7: $11 $ff $2b
    ld a, [hl+]                                   ; $7bfa: $2a
    db $10                                        ; $7bfb: $10
    db $10                                        ; $7bfc: $10
    inc d                                         ; $7bfd: $14
    dec d                                         ; $7bfe: $15
    dec b                                         ; $7bff: $05
    ld b, $ff                                     ; $7c00: $06 $ff
    ld d, $2c                                     ; $7c02: $16 $2c
    dec l                                         ; $7c04: $2d
    ld l, $2f                                     ; $7c05: $2e $2f
    ld a, [de]                                    ; $7c07: $1a
    inc c                                         ; $7c08: $0c
    dec c                                         ; $7c09: $0d
    sbc $e2                                       ; $7c0a: $de $e2
    ldh [$32], a                                  ; $7c0c: $e0 $32
    inc sp                                        ; $7c0e: $33
    inc [hl]                                      ; $7c0f: $34
    dec [hl]                                      ; $7c10: $35
    ld [c], a                                     ; $7c11: $e2
    db $e3                                        ; $7c12: $e3
    jr c, @+$3b                                   ; $7c13: $38 $39

    cp l                                          ; $7c15: $bd
    ld a, [hl-]                                   ; $7c16: $3a
    ld [c], a                                     ; $7c17: $e2
    db $e4                                        ; $7c18: $e4
    ld a, [de]                                    ; $7c19: $1a
    ld hl, $163b                                  ; $7c1a: $21 $3b $16
    ld [c], a                                     ; $7c1d: $e2
    ldh [rP1], a                                  ; $7c1e: $e0 $00
    rst $38                                       ; $7c20: $ff
    ld bc, $2423                                  ; $7c21: $01 $23 $24
    dec h                                         ; $7c24: $25
    ld h, $27                                     ; $7c25: $26 $27
    jr z, @+$03                                   ; $7c27: $28 $01

    ld bc, $0000                                  ; $7c29: $01 $00 $00
    nop                                           ; $7c2c: $00
    nop                                           ; $7c2d: $00
    ld h, l                                       ; $7c2e: $65
    dec c                                         ; $7c2f: $0d
    rst $38                                       ; $7c30: $ff
    push hl                                       ; $7c31: $e5
    dec l                                         ; $7c32: $2d
    or $e6                                        ; $7c33: $f6 $e6
    rst $30                                       ; $7c35: $f7
    add sp, $4d                                   ; $7c36: $e8 $4d
    ld c, l                                       ; $7c38: $4d
    ld hl, sp-$15                                 ; $7c39: $f8 $eb
    db $fc                                        ; $7c3b: $fc
    ld [c], a                                     ; $7c3c: $e2
    push af                                       ; $7c3d: $f5
    ret c                                         ; $7c3e: $d8

    and $6d                                       ; $7c3f: $e6 $6d
    nop                                           ; $7c41: $00
    ld bc, $0302                                  ; $7c42: $01 $02 $03
    ld bc, $fcfe                                  ; $7c45: $01 $fe $fc
    pop hl                                        ; $7c48: $e1
    nop                                           ; $7c49: $00
    dec b                                         ; $7c4a: $05
    ld b, $07                                     ; $7c4b: $06 $07
    ld [$0a09], sp                                ; $7c4d: $08 $09 $0a
    rst $38                                       ; $7c50: $ff
    rlca                                          ; $7c51: $07
    dec bc                                        ; $7c52: $0b
    inc c                                         ; $7c53: $0c
    dec c                                         ; $7c54: $0d
    ld c, $0f                                     ; $7c55: $0e $0f
    db $10                                        ; $7c57: $10
    ld de, $12ff                                  ; $7c58: $11 $ff $12
    inc de                                        ; $7c5b: $13
    db $10                                        ; $7c5c: $10
    db $10                                        ; $7c5d: $10
    inc d                                         ; $7c5e: $14
    dec d                                         ; $7c5f: $15
    dec b                                         ; $7c60: $05
    ld b, $ff                                     ; $7c61: $06 $ff
    ld d, $17                                     ; $7c63: $16 $17
    jr jr_043_7c80                                ; $7c65: $18 $19

    ld d, $1a                                     ; $7c67: $16 $1a
    inc c                                         ; $7c69: $0c
    dec c                                         ; $7c6a: $0d
    sbc $e2                                       ; $7c6b: $de $e2
    ldh [rNR31], a                                ; $7c6d: $e0 $1b
    inc e                                         ; $7c6f: $1c
    jr nc, jr_043_7ca3                            ; $7c70: $30 $31

    ld [c], a                                     ; $7c72: $e2
    db $e3                                        ; $7c73: $e3
    ld e, $1f                                     ; $7c74: $1e $1f
    cp e                                          ; $7c76: $bb
    ld [hl], $37                                  ; $7c77: $36 $37
    ld [c], a                                     ; $7c79: $e2
    db $e3                                        ; $7c7a: $e3
    ld a, [de]                                    ; $7c7b: $1a
    ld hl, $e23b                                  ; $7c7c: $21 $3b $e2
    pop hl                                        ; $7c7f: $e1

jr_043_7c80:
    nop                                           ; $7c80: $00
    rst $38                                       ; $7c81: $ff
    ld bc, $2423                                  ; $7c82: $01 $23 $24
    dec h                                         ; $7c85: $25
    ld h, $27                                     ; $7c86: $26 $27
    jr z, @+$03                                   ; $7c88: $28 $01

    ld bc, $0000                                  ; $7c8a: $01 $00 $00
    nop                                           ; $7c8d: $00
    nop                                           ; $7c8e: $00
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

jr_043_7ca3:
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

Jump_043_7edf:
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

Call_043_7fe3:
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff
    rst $38                                       ; $7fe5: $ff
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff

Call_043_7fe9:
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
