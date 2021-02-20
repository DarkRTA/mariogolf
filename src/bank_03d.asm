; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03d", ROMX[$4000], BANK[$3d]

    ld a, [de]                                    ; $4000: $1a
    ld b, e                                       ; $4001: $43
    ld hl, $d404                                  ; $4002: $21 $04 $d4
    ld a, [hl+]                                   ; $4005: $2a
    ld d, [hl]                                    ; $4006: $56
    ld e, a                                       ; $4007: $5f
    ld hl, $d401                                  ; $4008: $21 $01 $d4
    ld a, [hl+]                                   ; $400b: $2a
    ld h, [hl]                                    ; $400c: $66
    ld l, a                                       ; $400d: $6f
    ld a, [$d443]                                 ; $400e: $fa $43 $d4
    or a                                          ; $4011: $b7
    jr z, jr_03d_4037                             ; $4012: $28 $23

    cp $04                                        ; $4014: $fe $04
    jp z, Jump_03d_4037                           ; $4016: $ca $37 $40

    ld a, [$d442]                                 ; $4019: $fa $42 $d4
    ld b, a                                       ; $401c: $47
    ld a, d                                       ; $401d: $7a
    sub b                                         ; $401e: $90
    ld d, a                                       ; $401f: $57
    ld a, [$d441]                                 ; $4020: $fa $41 $d4
    ld b, a                                       ; $4023: $47
    ld a, h                                       ; $4024: $7c
    sub b                                         ; $4025: $90

jr_03d_4026:
    ld h, a                                       ; $4026: $67
    sla l                                         ; $4027: $cb $25
    rl h                                          ; $4029: $cb $14
    sla l                                         ; $402b: $cb $25
    rl h                                          ; $402d: $cb $14
    sla e                                         ; $402f: $cb $23
    rl d                                          ; $4031: $cb $12
    sla e                                         ; $4033: $cb $23
    rl d                                          ; $4035: $cb $12

Jump_03d_4037:
jr_03d_4037:
    push hl                                       ; $4037: $e5
    push de                                       ; $4038: $d5
    call Call_03d_4048                            ; $4039: $cd $48 $40
    pop de                                        ; $403c: $d1
    pop hl                                        ; $403d: $e1
    push bc                                       ; $403e: $c5
    call Call_03d_40ad                            ; $403f: $cd $ad $40
    pop bc                                        ; $4042: $c1
    ret                                           ; $4043: $c9


    xor a                                         ; $4044: $af
    ld b, a                                       ; $4045: $47
    ld c, a                                       ; $4046: $4f
    ret                                           ; $4047: $c9


Call_03d_4048:
    ldh a, [$96]                                  ; $4048: $f0 $96
    push af                                       ; $404a: $f5
    ld e, h                                       ; $404b: $5c
    ld l, d                                       ; $404c: $6a
    ld h, $00                                     ; $404d: $26 $00
    ld d, $00                                     ; $404f: $16 $00
    add hl, hl                                    ; $4051: $29
    add hl, hl                                    ; $4052: $29
    add hl, hl                                    ; $4053: $29
    add hl, hl                                    ; $4054: $29
    add hl, hl                                    ; $4055: $29
    add hl, hl                                    ; $4056: $29
    add hl, de                                    ; $4057: $19
    ld de, $d000                                  ; $4058: $11 $00 $d0
    add hl, de                                    ; $405b: $19
    ld a, $02                                     ; $405c: $3e $02
    ldh [$96], a                                  ; $405e: $e0 $96
    ldh [rSVBK], a                                ; $4060: $e0 $70
    ld a, [hl]                                    ; $4062: $7e
    rrca                                          ; $4063: $0f
    rrca                                          ; $4064: $0f
    and $18                                       ; $4065: $e6 $18
    ld b, a                                       ; $4067: $47
    ld a, $03                                     ; $4068: $3e $03
    ldh [$96], a                                  ; $406a: $e0 $96
    ldh [rSVBK], a                                ; $406c: $e0 $70
    ld l, [hl]                                    ; $406e: $6e
    ld h, $d7                                     ; $406f: $26 $d7
    ld a, $06                                     ; $4071: $3e $06
    ldh [$96], a                                  ; $4073: $e0 $96
    ldh [rSVBK], a                                ; $4075: $e0 $70
    ld a, [hl]                                    ; $4077: $7e
    ld c, a                                       ; $4078: $4f
    and $07                                       ; $4079: $e6 $07
    add b                                         ; $407b: $80
    ld hl, $408d                                  ; $407c: $21 $8d $40
    add l                                         ; $407f: $85
    ld l, a                                       ; $4080: $6f
    ld a, h                                       ; $4081: $7c
    adc $00                                       ; $4082: $ce $00
    ld h, a                                       ; $4084: $67
    ld b, [hl]                                    ; $4085: $46
    pop af                                        ; $4086: $f1
    ldh [$96], a                                  ; $4087: $e0 $96
    ldh [rSVBK], a                                ; $4089: $e0 $70
    ld a, c                                       ; $408b: $79
    ret                                           ; $408c: $c9


    nop                                           ; $408d: $00
    jr nz, jr_03d_40d0                            ; $408e: $20 $40

    ld h, b                                       ; $4090: $60
    add b                                         ; $4091: $80
    and b                                         ; $4092: $a0
    ret nz                                        ; $4093: $c0

    ldh [$80], a                                  ; $4094: $e0 $80
    ld h, b                                       ; $4096: $60
    ld b, b                                       ; $4097: $40
    jr nz, jr_03d_409a                            ; $4098: $20 $00

jr_03d_409a:
    ldh [$c0], a                                  ; $409a: $e0 $c0
    and b                                         ; $409c: $a0
    nop                                           ; $409d: $00
    ldh [$c0], a                                  ; $409e: $e0 $c0
    and b                                         ; $40a0: $a0
    add b                                         ; $40a1: $80
    ld h, b                                       ; $40a2: $60
    ld b, b                                       ; $40a3: $40
    jr nz, jr_03d_4026                            ; $40a4: $20 $80

    and b                                         ; $40a6: $a0
    ret nz                                        ; $40a7: $c0

    ldh [rP1], a                                  ; $40a8: $e0 $00
    jr nz, jr_03d_40ec                            ; $40aa: $20 $40

    ld h, b                                       ; $40ac: $60

Call_03d_40ad:
    ldh a, [$96]                                  ; $40ad: $f0 $96
    push af                                       ; $40af: $f5
    push hl                                       ; $40b0: $e5
    push de                                       ; $40b1: $d5
    ld e, h                                       ; $40b2: $5c
    ld l, d                                       ; $40b3: $6a
    ld h, $00                                     ; $40b4: $26 $00
    ld d, $00                                     ; $40b6: $16 $00
    add hl, hl                                    ; $40b8: $29
    add hl, hl                                    ; $40b9: $29
    add hl, hl                                    ; $40ba: $29
    add hl, hl                                    ; $40bb: $29
    add hl, hl                                    ; $40bc: $29
    add hl, hl                                    ; $40bd: $29
    add hl, de                                    ; $40be: $19
    ld de, $d000                                  ; $40bf: $11 $00 $d0
    add hl, de                                    ; $40c2: $19
    pop de                                        ; $40c3: $d1
    pop bc                                        ; $40c4: $c1
    xor a                                         ; $40c5: $af
    sla c                                         ; $40c6: $cb $21
    rla                                           ; $40c8: $17
    sla c                                         ; $40c9: $cb $21
    rla                                           ; $40cb: $17
    ld c, a                                       ; $40cc: $4f
    xor a                                         ; $40cd: $af
    sla e                                         ; $40ce: $cb $23

jr_03d_40d0:
    rla                                           ; $40d0: $17
    sla e                                         ; $40d1: $cb $23
    rla                                           ; $40d3: $17
    ld d, $00                                     ; $40d4: $16 $00
    ld e, a                                       ; $40d6: $5f
    ld a, $02                                     ; $40d7: $3e $02
    ldh [$96], a                                  ; $40d9: $e0 $96
    ldh [rSVBK], a                                ; $40db: $e0 $70
    bit 5, [hl]                                   ; $40dd: $cb $6e
    jr z, jr_03d_40e5                             ; $40df: $28 $04

    ld a, $03                                     ; $40e1: $3e $03
    sub c                                         ; $40e3: $91
    ld c, a                                       ; $40e4: $4f

jr_03d_40e5:
    bit 6, [hl]                                   ; $40e5: $cb $76
    jr z, jr_03d_40ed                             ; $40e7: $28 $04

    ld a, $03                                     ; $40e9: $3e $03
    sub e                                         ; $40eb: $93

jr_03d_40ec:
    ld e, a                                       ; $40ec: $5f

jr_03d_40ed:
    ld a, $03                                     ; $40ed: $3e $03
    ldh [$96], a                                  ; $40ef: $e0 $96
    ldh [rSVBK], a                                ; $40f1: $e0 $70
    ld l, [hl]                                    ; $40f3: $6e
    ld h, $00                                     ; $40f4: $26 $00
    add hl, hl                                    ; $40f6: $29
    add hl, hl                                    ; $40f7: $29
    add hl, hl                                    ; $40f8: $29
    add hl, de                                    ; $40f9: $19
    add hl, de                                    ; $40fa: $19
    ld de, $d800                                  ; $40fb: $11 $00 $d8
    add hl, de                                    ; $40fe: $19
    bit 1, c                                      ; $40ff: $cb $49
    jr z, jr_03d_4104                             ; $4101: $28 $01

    inc hl                                        ; $4103: $23

jr_03d_4104:
    ld a, $06                                     ; $4104: $3e $06
    ldh [$96], a                                  ; $4106: $e0 $96
    ldh [rSVBK], a                                ; $4108: $e0 $70
    ld a, [hl]                                    ; $410a: $7e
    bit 0, c                                      ; $410b: $cb $41
    jr nz, jr_03d_4111                            ; $410d: $20 $02

    swap a                                        ; $410f: $cb $37

jr_03d_4111:
    and $0f                                       ; $4111: $e6 $0f
    ld b, a                                       ; $4113: $47
    pop af                                        ; $4114: $f1
    ldh [$96], a                                  ; $4115: $e0 $96
    ldh [rSVBK], a                                ; $4117: $e0 $70
    ld a, b                                       ; $4119: $78
    ret                                           ; $411a: $c9


    ld a, e                                       ; $411b: $7b
    and $fc                                       ; $411c: $e6 $fc
    swap a                                        ; $411e: $cb $37
    ld l, a                                       ; $4120: $6f
    and $0f                                       ; $4121: $e6 $0f
    ld h, a                                       ; $4123: $67
    xor l                                         ; $4124: $ad
    ld l, a                                       ; $4125: $6f
    ld c, d                                       ; $4126: $4a
    srl c                                         ; $4127: $cb $39
    srl c                                         ; $4129: $cb $39
    ld b, $d0                                     ; $412b: $06 $d0
    add hl, bc                                    ; $412d: $09
    ld a, $02                                     ; $412e: $3e $02
    ldh [$96], a                                  ; $4130: $e0 $96
    ldh [rSVBK], a                                ; $4132: $e0 $70
    ld a, d                                       ; $4134: $7a
    bit 5, [hl]                                   ; $4135: $cb $6e
    jr z, jr_03d_413a                             ; $4137: $28 $01

    cpl                                           ; $4139: $2f

jr_03d_413a:
    ld c, a                                       ; $413a: $4f
    rrca                                          ; $413b: $0f
    rrca                                          ; $413c: $0f
    ld a, e                                       ; $413d: $7b
    bit 6, [hl]                                   ; $413e: $cb $76
    jr z, jr_03d_4143                             ; $4140: $28 $01

    cpl                                           ; $4142: $2f

jr_03d_4143:
    rla                                           ; $4143: $17
    and $07                                       ; $4144: $e6 $07
    ld e, a                                       ; $4146: $5f
    ld a, $03                                     ; $4147: $3e $03
    ldh [$96], a                                  ; $4149: $e0 $96
    ldh [rSVBK], a                                ; $414b: $e0 $70
    ld l, [hl]                                    ; $414d: $6e
    xor a                                         ; $414e: $af
    ld h, a                                       ; $414f: $67
    ld d, $d8                                     ; $4150: $16 $d8
    add hl, hl                                    ; $4152: $29
    add hl, hl                                    ; $4153: $29
    add hl, hl                                    ; $4154: $29
    add hl, de                                    ; $4155: $19
    ld a, $06                                     ; $4156: $3e $06
    ldh [$96], a                                  ; $4158: $e0 $96
    ldh [rSVBK], a                                ; $415a: $e0 $70
    ld a, [hl]                                    ; $415c: $7e
    bit 0, c                                      ; $415d: $cb $41
    jr nz, jr_03d_4163                            ; $415f: $20 $02

    swap a                                        ; $4161: $cb $37

jr_03d_4163:
    and $0f                                       ; $4163: $e6 $0f
    ret                                           ; $4165: $c9


    ld a, [$d329]                                 ; $4166: $fa $29 $d3
    add a                                         ; $4169: $87
    ld hl, $4185                                  ; $416a: $21 $85 $41
    add l                                         ; $416d: $85
    ld l, a                                       ; $416e: $6f
    jr nc, jr_03d_4172                            ; $416f: $30 $01

    inc h                                         ; $4171: $24

jr_03d_4172:
    ld a, [hl+]                                   ; $4172: $2a
    ld d, [hl]                                    ; $4173: $56
    ld e, a                                       ; $4174: $5f
    call Call_03d_41e9                            ; $4175: $cd $e9 $41
    add a                                         ; $4178: $87
    ld h, $00                                     ; $4179: $26 $00
    ld l, a                                       ; $417b: $6f
    add hl, de                                    ; $417c: $19
    ld e, [hl]                                    ; $417d: $5e
    inc hl                                        ; $417e: $23
    ld d, [hl]                                    ; $417f: $56
    inc hl                                        ; $4180: $23
    ld a, [hl+]                                   ; $4181: $2a
    ld h, [hl]                                    ; $4182: $66
    ld l, a                                       ; $4183: $6f
    ret                                           ; $4184: $c9


    and c                                         ; $4185: $a1
    ld b, c                                       ; $4186: $41
    cp c                                          ; $4187: $b9
    ld b, c                                       ; $4188: $41
    cp c                                          ; $4189: $b9
    ld b, c                                       ; $418a: $41
    pop de                                        ; $418b: $d1
    ld b, c                                       ; $418c: $41
    pop de                                        ; $418d: $d1
    ld b, c                                       ; $418e: $41
    pop de                                        ; $418f: $d1
    ld b, c                                       ; $4190: $41
    pop de                                        ; $4191: $d1
    ld b, c                                       ; $4192: $41
    pop de                                        ; $4193: $d1
    ld b, c                                       ; $4194: $41
    pop de                                        ; $4195: $d1
    ld b, c                                       ; $4196: $41
    pop de                                        ; $4197: $d1
    ld b, c                                       ; $4198: $41
    pop de                                        ; $4199: $d1
    ld b, c                                       ; $419a: $41
    pop de                                        ; $419b: $d1
    ld b, c                                       ; $419c: $41
    pop de                                        ; $419d: $d1
    ld b, c                                       ; $419e: $41
    pop de                                        ; $419f: $d1
    ld b, c                                       ; $41a0: $41
    ld h, d                                       ; $41a1: $62
    ld h, h                                       ; $41a2: $64
    ld e, l                                       ; $41a3: $5d
    ld e, a                                       ; $41a4: $5f
    ld [hl-], a                                   ; $41a5: $32
    inc a                                         ; $41a6: $3c
    inc d                                         ; $41a7: $14
    ld [hl-], a                                   ; $41a8: $32
    jr z, jr_03d_41e2                             ; $41a9: $28 $37

    inc d                                         ; $41ab: $14
    jr z, @+$0c                                   ; $41ac: $28 $0a

    ld e, $63                                     ; $41ae: $1e $63
    ld h, h                                       ; $41b0: $64
    inc a                                         ; $41b1: $3c
    ld b, h                                       ; $41b2: $44
    ld d, a                                       ; $41b3: $57
    ld e, e                                       ; $41b4: $5b
    ld d, e                                       ; $41b5: $53
    ld d, a                                       ; $41b6: $57
    jr z, jr_03d_41f0                             ; $41b7: $28 $37

    ld h, d                                       ; $41b9: $62
    ld h, h                                       ; $41ba: $64
    ld h, d                                       ; $41bb: $62
    ld h, h                                       ; $41bc: $64
    ld [hl-], a                                   ; $41bd: $32
    inc a                                         ; $41be: $3c
    inc d                                         ; $41bf: $14
    ld [hl-], a                                   ; $41c0: $32
    jr z, jr_03d_41fa                             ; $41c1: $28 $37

    inc d                                         ; $41c3: $14
    jr z, @+$0c                                   ; $41c4: $28 $0a

    ld e, $63                                     ; $41c6: $1e $63
    ld h, h                                       ; $41c8: $64
    ld e, d                                       ; $41c9: $5a
    ld h, d                                       ; $41ca: $62
    ld e, [hl]                                    ; $41cb: $5e
    ld h, d                                       ; $41cc: $62
    ld e, d                                       ; $41cd: $5a
    ld e, [hl]                                    ; $41ce: $5e
    jr z, jr_03d_4208                             ; $41cf: $28 $37

    ld h, d                                       ; $41d1: $62
    ld h, h                                       ; $41d2: $64
    ld h, d                                       ; $41d3: $62
    ld h, h                                       ; $41d4: $64
    ld d, b                                       ; $41d5: $50
    ld e, d                                       ; $41d6: $5a
    ld [hl-], a                                   ; $41d7: $32
    ld d, b                                       ; $41d8: $50
    ld b, [hl]                                    ; $41d9: $46
    ld d, l                                       ; $41da: $55
    ld [hl-], a                                   ; $41db: $32
    ld b, [hl]                                    ; $41dc: $46
    jr z, @+$3e                                   ; $41dd: $28 $3c

    ld h, e                                       ; $41df: $63
    ld h, h                                       ; $41e0: $64
    ld e, d                                       ; $41e1: $5a

jr_03d_41e2:
    ld h, d                                       ; $41e2: $62
    ld e, [hl]                                    ; $41e3: $5e
    ld h, d                                       ; $41e4: $62
    ld e, d                                       ; $41e5: $5a
    ld e, [hl]                                    ; $41e6: $5e
    ld b, [hl]                                    ; $41e7: $46
    ld d, l                                       ; $41e8: $55

Call_03d_41e9:
    ld a, [$d445]                                 ; $41e9: $fa $45 $d4
    or a                                          ; $41ec: $b7
    jr z, jr_03d_41f1                             ; $41ed: $28 $02

    xor a                                         ; $41ef: $af

jr_03d_41f0:
    ret                                           ; $41f0: $c9


jr_03d_41f1:
    ld a, [$d4cd]                                 ; $41f1: $fa $cd $d4
    cp $0d                                        ; $41f4: $fe $0d
    jr z, jr_03d_41fc                             ; $41f6: $28 $04

    cp $02                                        ; $41f8: $fe $02

jr_03d_41fa:
    jr nz, jr_03d_420c                            ; $41fa: $20 $10

jr_03d_41fc:
    ld a, [$d446]                                 ; $41fc: $fa $46 $d4
    or a                                          ; $41ff: $b7
    jr z, jr_03d_4231                             ; $4200: $28 $2f

    cp $01                                        ; $4202: $fe $01
    jr nz, jr_03d_4209                            ; $4204: $20 $03

    ld a, $05                                     ; $4206: $3e $05

jr_03d_4208:
    ret                                           ; $4208: $c9


jr_03d_4209:
    ld a, $06                                     ; $4209: $3e $06
    ret                                           ; $420b: $c9


jr_03d_420c:
    cp $00                                        ; $420c: $fe $00
    jr z, jr_03d_4214                             ; $420e: $28 $04

    cp $0e                                        ; $4210: $fe $0e
    jr nz, jr_03d_4224                            ; $4212: $20 $10

jr_03d_4214:
    ld a, [$d446]                                 ; $4214: $fa $46 $d4
    or a                                          ; $4217: $b7
    jr z, jr_03d_4231                             ; $4218: $28 $17

    cp $01                                        ; $421a: $fe $01
    jr nz, jr_03d_4221                            ; $421c: $20 $03

    ld a, $09                                     ; $421e: $3e $09
    ret                                           ; $4220: $c9


jr_03d_4221:
    ld a, $0a                                     ; $4221: $3e $0a
    ret                                           ; $4223: $c9


jr_03d_4224:
    cp $01                                        ; $4224: $fe $01
    jr nz, jr_03d_4231                            ; $4226: $20 $09

    ld a, [$d446]                                 ; $4228: $fa $46 $d4
    or a                                          ; $422b: $b7
    jr z, jr_03d_4231                             ; $422c: $28 $03

    ld a, $0b                                     ; $422e: $3e $0b
    ret                                           ; $4230: $c9


jr_03d_4231:
    push hl                                       ; $4231: $e5
    push de                                       ; $4232: $d5
    ld a, [$d4cd]                                 ; $4233: $fa $cd $d4
    ld hl, $4242                                  ; $4236: $21 $42 $42
    add l                                         ; $4239: $85
    ld l, a                                       ; $423a: $6f
    jr nc, jr_03d_423e                            ; $423b: $30 $01

    inc h                                         ; $423d: $24

jr_03d_423e:
    ld a, [hl]                                    ; $423e: $7e
    pop de                                        ; $423f: $d1
    pop hl                                        ; $4240: $e1
    ret                                           ; $4241: $c9


    ld bc, $0402                                  ; $4242: $01 $02 $04
    ld [bc], a                                    ; $4245: $02
    ld [bc], a                                    ; $4246: $02
    inc bc                                        ; $4247: $03
    rlca                                          ; $4248: $07
    ld [bc], a                                    ; $4249: $02
    ld [bc], a                                    ; $424a: $02
    ld [$0b07], sp                                ; $424b: $08 $07 $0b
    inc bc                                        ; $424e: $03
    inc b                                         ; $424f: $04
    ld bc, $9f01                                  ; $4250: $01 $01 $9f
    ld b, e                                       ; $4253: $43
    sbc a                                         ; $4254: $9f
    ld b, e                                       ; $4255: $43
    sbc a                                         ; $4256: $9f
    ld b, e                                       ; $4257: $43
    sbc a                                         ; $4258: $9f
    ld b, e                                       ; $4259: $43
    sbc a                                         ; $425a: $9f
    ld b, e                                       ; $425b: $43
    sbc a                                         ; $425c: $9f
    ld b, e                                       ; $425d: $43
    sbc a                                         ; $425e: $9f
    ld b, e                                       ; $425f: $43
    sbc a                                         ; $4260: $9f
    ld b, e                                       ; $4261: $43
    sbc a                                         ; $4262: $9f
    ld b, e                                       ; $4263: $43
    sbc a                                         ; $4264: $9f
    ld b, e                                       ; $4265: $43
    or e                                          ; $4266: $b3
    ld c, b                                       ; $4267: $48
    dec hl                                        ; $4268: $2b
    ld c, [hl]                                    ; $4269: $4e
    ld a, e                                       ; $426a: $7b
    ld c, c                                       ; $426b: $49
    and a                                         ; $426c: $a7
    ld c, d                                       ; $426d: $4a
    adc a                                         ; $426e: $8f
    ld c, [hl]                                    ; $426f: $4e
    rst $00                                       ; $4270: $c7
    ld c, l                                       ; $4271: $4d
    ld c, a                                       ; $4272: $4f
    ld c, b                                       ; $4273: $48
    ld h, e                                       ; $4274: $63
    ld c, l                                       ; $4275: $4d
    rla                                           ; $4276: $17
    ld c, c                                       ; $4277: $49
    sbc e                                         ; $4278: $9b
    ld c, h                                       ; $4279: $4c
    ld b, e                                       ; $427a: $43
    ld c, d                                       ; $427b: $4a
    rst $38                                       ; $427c: $ff
    ld c, h                                       ; $427d: $4c
    scf                                           ; $427e: $37
    ld c, h                                       ; $427f: $4c
    db $eb                                        ; $4280: $eb
    ld b, a                                       ; $4281: $47
    ld l, a                                       ; $4282: $6f
    ld c, e                                       ; $4283: $4b
    db $d3                                        ; $4284: $d3
    ld c, e                                       ; $4285: $4b
    dec bc                                        ; $4286: $0b
    ld c, e                                       ; $4287: $4b
    rst $18                                       ; $4288: $df
    ld c, c                                       ; $4289: $49
    rra                                           ; $428a: $1f
    ld d, b                                       ; $428b: $50
    sub e                                         ; $428c: $93
    ld b, l                                       ; $428d: $45
    cpl                                           ; $428e: $2f
    ld b, l                                       ; $428f: $45
    di                                            ; $4290: $f3
    ld c, [hl]                                    ; $4291: $4e
    xor a                                         ; $4292: $af
    ld d, c                                       ; $4293: $51
    inc hl                                        ; $4294: $23
    ld b, a                                       ; $4295: $47
    ld h, a                                       ; $4296: $67
    ld b, h                                       ; $4297: $44
    inc bc                                        ; $4298: $03
    ld b, h                                       ; $4299: $44
    ld e, e                                       ; $429a: $5b
    ld b, [hl]                                    ; $429b: $46
    ld d, a                                       ; $429c: $57
    ld c, a                                       ; $429d: $4f
    cp a                                          ; $429e: $bf
    ld b, [hl]                                    ; $429f: $46
    rst $20                                       ; $42a0: $e7
    ld d, b                                       ; $42a1: $50
    add e                                         ; $42a2: $83
    ld d, b                                       ; $42a3: $50
    rst $30                                       ; $42a4: $f7
    ld b, l                                       ; $42a5: $45
    ld c, e                                       ; $42a6: $4b
    ld d, c                                       ; $42a7: $51
    cp e                                          ; $42a8: $bb
    ld c, a                                       ; $42a9: $4f
    bit 0, h                                      ; $42aa: $cb $44
    add a                                         ; $42ac: $87
    ld b, a                                       ; $42ad: $47
    sub a                                         ; $42ae: $97
    ld d, l                                       ; $42af: $55
    adc e                                         ; $42b0: $8b
    ld d, a                                       ; $42b1: $57
    ld d, e                                       ; $42b2: $53
    ld e, b                                       ; $42b3: $58
    ccf                                           ; $42b4: $3f
    ld d, e                                       ; $42b5: $53
    inc sp                                        ; $42b6: $33
    ld d, l                                       ; $42b7: $55
    ld e, a                                       ; $42b8: $5f
    ld d, [hl]                                    ; $42b9: $56
    rst $08                                       ; $42ba: $cf
    ld d, h                                       ; $42bb: $54
    rlca                                          ; $42bc: $07
    ld d, h                                       ; $42bd: $54
    db $db                                        ; $42be: $db
    ld d, d                                       ; $42bf: $52
    or a                                          ; $42c0: $b7
    ld e, b                                       ; $42c1: $58
    and e                                         ; $42c2: $a3
    ld d, e                                       ; $42c3: $53
    ei                                            ; $42c4: $fb
    ld d, l                                       ; $42c5: $55
    rst $28                                       ; $42c6: $ef
    ld d, a                                       ; $42c7: $57
    jp $1356                                      ; $42c8: $c3 $56 $13


    ld d, d                                       ; $42cb: $52
    ld l, e                                       ; $42cc: $6b
    ld d, h                                       ; $42cd: $54
    ld [hl], a                                    ; $42ce: $77
    ld d, d                                       ; $42cf: $52
    daa                                           ; $42d0: $27
    ld d, a                                       ; $42d1: $57
    dec de                                        ; $42d2: $1b
    ld e, c                                       ; $42d3: $59
    dec sp                                        ; $42d4: $3b
    ld e, h                                       ; $42d5: $5c
    ld [hl], e                                    ; $42d6: $73
    ld e, e                                       ; $42d7: $5b
    xor e                                         ; $42d8: $ab
    ld e, d                                       ; $42d9: $5a
    db $e3                                        ; $42da: $e3
    ld e, c                                       ; $42db: $59
    sub e                                         ; $42dc: $93
    ld e, [hl]                                    ; $42dd: $5e
    rst $30                                       ; $42de: $f7
    ld e, [hl]                                    ; $42df: $5e
    ld e, e                                       ; $42e0: $5b
    ld e, a                                       ; $42e1: $5f
    rrca                                          ; $42e2: $0f
    ld e, e                                       ; $42e3: $5b
    ld a, a                                       ; $42e4: $7f
    ld e, c                                       ; $42e5: $59
    inc bc                                        ; $42e6: $03
    ld e, l                                       ; $42e7: $5d
    ld b, a                                       ; $42e8: $47
    ld e, d                                       ; $42e9: $5a
    cp a                                          ; $42ea: $bf
    ld e, a                                       ; $42eb: $5f
    rst $10                                       ; $42ec: $d7
    ld e, e                                       ; $42ed: $5b
    ld h, a                                       ; $42ee: $67
    ld e, l                                       ; $42ef: $5d
    cpl                                           ; $42f0: $2f
    ld e, [hl]                                    ; $42f1: $5e
    bit 3, l                                      ; $42f2: $cb $5d
    sbc a                                         ; $42f4: $9f
    ld e, h                                       ; $42f5: $5c
    inc hl                                        ; $42f6: $23
    ld h, b                                       ; $42f7: $60
    add a                                         ; $42f8: $87
    ld h, b                                       ; $42f9: $60
    db $eb                                        ; $42fa: $eb
    ld h, b                                       ; $42fb: $60
    ld c, a                                       ; $42fc: $4f
    ld h, c                                       ; $42fd: $61
    or e                                          ; $42fe: $b3
    ld h, c                                       ; $42ff: $61
    rla                                           ; $4300: $17
    ld h, d                                       ; $4301: $62
    ld a, e                                       ; $4302: $7b
    ld h, d                                       ; $4303: $62
    rst $18                                       ; $4304: $df
    ld h, d                                       ; $4305: $62
    ld b, e                                       ; $4306: $43
    ld h, e                                       ; $4307: $63
    and a                                         ; $4308: $a7
    ld h, e                                       ; $4309: $63
    dec bc                                        ; $430a: $0b
    ld h, h                                       ; $430b: $64
    ld l, a                                       ; $430c: $6f
    ld h, h                                       ; $430d: $64
    db $d3                                        ; $430e: $d3
    ld h, h                                       ; $430f: $64
    scf                                           ; $4310: $37
    ld h, l                                       ; $4311: $65
    sbc e                                         ; $4312: $9b
    ld h, l                                       ; $4313: $65
    rst $38                                       ; $4314: $ff
    ld h, l                                       ; $4315: $65
    ld h, e                                       ; $4316: $63
    ld h, [hl]                                    ; $4317: $66
    rst $00                                       ; $4318: $c7
    ld h, [hl]                                    ; $4319: $66
    push af                                       ; $431a: $f5
    push hl                                       ; $431b: $e5
    cp $ff                                        ; $431c: $fe $ff
    jr z, jr_03d_4331                             ; $431e: $28 $11

    ld a, b                                       ; $4320: $78
    sub $04                                       ; $4321: $d6 $04
    bit 7, a                                      ; $4323: $cb $7f
    jr nz, jr_03d_4331                            ; $4325: $20 $0a

    inc a                                         ; $4327: $3c
    ld b, a                                       ; $4328: $47
    sub $08                                       ; $4329: $d6 $08
    bit 7, a                                      ; $432b: $cb $7f
    jr z, jr_03d_4331                             ; $432d: $28 $02

    jr jr_03d_4333                                ; $432f: $18 $02

jr_03d_4331:
    xor a                                         ; $4331: $af
    ld b, a                                       ; $4332: $47

jr_03d_4333:
    ld hl, $4252                                  ; $4333: $21 $52 $42
    ld a, [$d320]                                 ; $4336: $fa $20 $d3

jr_03d_4339:
    cp $00                                        ; $4339: $fe $00
    jr z, jr_03d_4342                             ; $433b: $28 $05

    inc hl                                        ; $433d: $23
    inc hl                                        ; $433e: $23
    dec a                                         ; $433f: $3d
    jr jr_03d_4339                                ; $4340: $18 $f7

jr_03d_4342:
    ld a, [hl+]                                   ; $4342: $2a
    ld h, [hl]                                    ; $4343: $66
    ld l, a                                       ; $4344: $6f
    ld a, b                                       ; $4345: $78

jr_03d_4346:
    cp $00                                        ; $4346: $fe $00
    jr z, jr_03d_434f                             ; $4348: $28 $05

    inc hl                                        ; $434a: $23
    inc hl                                        ; $434b: $23
    dec a                                         ; $434c: $3d
    jr jr_03d_4346                                ; $434d: $18 $f7

jr_03d_434f:
    ld a, [hl+]                                   ; $434f: $2a
    ld h, [hl]                                    ; $4350: $66
    ld l, a                                       ; $4351: $6f
    ld a, c                                       ; $4352: $79
    sub $03                                       ; $4353: $d6 $03
    bit 7, a                                      ; $4355: $cb $7f
    jr nz, jr_03d_4361                            ; $4357: $20 $08

    ld bc, $ffe0                                  ; $4359: $01 $e0 $ff
    ld de, $ffe0                                  ; $435c: $11 $e0 $ff
    jr jr_03d_439c                                ; $435f: $18 $3b

jr_03d_4361:
    ld a, c                                       ; $4361: $79

jr_03d_4362:
    cp $00                                        ; $4362: $fe $00
    jr z, jr_03d_436d                             ; $4364: $28 $07

    inc hl                                        ; $4366: $23
    inc hl                                        ; $4367: $23
    inc hl                                        ; $4368: $23
    inc hl                                        ; $4369: $23
    dec a                                         ; $436a: $3d
    jr jr_03d_4362                                ; $436b: $18 $f5

jr_03d_436d:
    ld a, [hl+]                                   ; $436d: $2a
    ld b, [hl]                                    ; $436e: $46
    ld c, a                                       ; $436f: $4f
    sla c                                         ; $4370: $cb $21
    rl b                                          ; $4372: $cb $10
    sla c                                         ; $4374: $cb $21
    rl b                                          ; $4376: $cb $10
    sla c                                         ; $4378: $cb $21
    rl b                                          ; $437a: $cb $10
    sla c                                         ; $437c: $cb $21
    rl b                                          ; $437e: $cb $10
    sla c                                         ; $4380: $cb $21
    rl b                                          ; $4382: $cb $10
    inc hl                                        ; $4384: $23
    ld a, [hl+]                                   ; $4385: $2a
    ld d, [hl]                                    ; $4386: $56
    ld e, a                                       ; $4387: $5f
    sla e                                         ; $4388: $cb $23
    rl d                                          ; $438a: $cb $12
    sla e                                         ; $438c: $cb $23
    rl d                                          ; $438e: $cb $12
    sla e                                         ; $4390: $cb $23
    rl d                                          ; $4392: $cb $12
    sla e                                         ; $4394: $cb $23
    rl d                                          ; $4396: $cb $12
    sla e                                         ; $4398: $cb $23
    rl d                                          ; $439a: $cb $12

jr_03d_439c:
    pop hl                                        ; $439c: $e1
    pop af                                        ; $439d: $f1
    ret                                           ; $439e: $c9


    xor a                                         ; $439f: $af
    ld b, e                                       ; $43a0: $43
    cp e                                          ; $43a1: $bb
    ld b, e                                       ; $43a2: $43
    rst $00                                       ; $43a3: $c7
    ld b, e                                       ; $43a4: $43
    db $d3                                        ; $43a5: $d3
    ld b, e                                       ; $43a6: $43
    rst $18                                       ; $43a7: $df
    ld b, e                                       ; $43a8: $43
    db $eb                                        ; $43a9: $eb
    ld b, e                                       ; $43aa: $43
    rst $30                                       ; $43ab: $f7
    ld b, e                                       ; $43ac: $43
    xor a                                         ; $43ad: $af
    ld b, e                                       ; $43ae: $43
    rst $38                                       ; $43af: $ff
    rst $38                                       ; $43b0: $ff
    rst $38                                       ; $43b1: $ff
    rst $38                                       ; $43b2: $ff
    rst $38                                       ; $43b3: $ff
    rst $38                                       ; $43b4: $ff
    rst $38                                       ; $43b5: $ff
    rst $38                                       ; $43b6: $ff
    rst $38                                       ; $43b7: $ff
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
    rst $38                                       ; $43c8: $ff
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
    rst $38                                       ; $43d9: $ff
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
    rst $38                                       ; $43ea: $ff
    rst $38                                       ; $43eb: $ff
    rst $38                                       ; $43ec: $ff
    rst $38                                       ; $43ed: $ff
    rst $38                                       ; $43ee: $ff
    rst $38                                       ; $43ef: $ff
    rst $38                                       ; $43f0: $ff
    rst $38                                       ; $43f1: $ff
    rst $38                                       ; $43f2: $ff
    rst $38                                       ; $43f3: $ff
    rst $38                                       ; $43f4: $ff
    rst $38                                       ; $43f5: $ff
    rst $38                                       ; $43f6: $ff
    rst $38                                       ; $43f7: $ff
    rst $38                                       ; $43f8: $ff
    rst $38                                       ; $43f9: $ff
    rst $38                                       ; $43fa: $ff
    rst $38                                       ; $43fb: $ff
    rst $38                                       ; $43fc: $ff
    rst $38                                       ; $43fd: $ff
    rst $38                                       ; $43fe: $ff
    rst $38                                       ; $43ff: $ff
    rst $38                                       ; $4400: $ff
    rst $38                                       ; $4401: $ff
    rst $38                                       ; $4402: $ff
    inc de                                        ; $4403: $13
    ld b, h                                       ; $4404: $44
    inc de                                        ; $4405: $13
    ld b, h                                       ; $4406: $44
    inc de                                        ; $4407: $13
    ld b, h                                       ; $4408: $44
    inc de                                        ; $4409: $13
    ld b, h                                       ; $440a: $44
    inc de                                        ; $440b: $13
    ld b, h                                       ; $440c: $44
    inc de                                        ; $440d: $13
    ld b, h                                       ; $440e: $44
    inc de                                        ; $440f: $13
    ld b, h                                       ; $4410: $44
    inc de                                        ; $4411: $13
    ld b, h                                       ; $4412: $44
    rst $38                                       ; $4413: $ff
    rst $38                                       ; $4414: $ff
    rst $38                                       ; $4415: $ff
    rst $38                                       ; $4416: $ff
    rst $38                                       ; $4417: $ff
    rst $38                                       ; $4418: $ff
    rst $38                                       ; $4419: $ff
    rst $38                                       ; $441a: $ff
    rst $38                                       ; $441b: $ff
    rst $38                                       ; $441c: $ff
    rst $38                                       ; $441d: $ff
    rst $38                                       ; $441e: $ff
    rst $38                                       ; $441f: $ff
    rst $38                                       ; $4420: $ff
    rst $38                                       ; $4421: $ff
    rst $38                                       ; $4422: $ff
    rst $38                                       ; $4423: $ff
    rst $38                                       ; $4424: $ff
    rst $38                                       ; $4425: $ff
    rst $38                                       ; $4426: $ff
    rst $38                                       ; $4427: $ff
    rst $38                                       ; $4428: $ff
    rst $38                                       ; $4429: $ff
    rst $38                                       ; $442a: $ff
    rst $38                                       ; $442b: $ff
    rst $38                                       ; $442c: $ff
    rst $38                                       ; $442d: $ff
    rst $38                                       ; $442e: $ff
    rst $38                                       ; $442f: $ff
    rst $38                                       ; $4430: $ff
    rst $38                                       ; $4431: $ff
    rst $38                                       ; $4432: $ff
    rst $38                                       ; $4433: $ff
    rst $38                                       ; $4434: $ff
    rst $38                                       ; $4435: $ff
    rst $38                                       ; $4436: $ff
    rst $38                                       ; $4437: $ff
    rst $38                                       ; $4438: $ff
    rst $38                                       ; $4439: $ff
    rst $38                                       ; $443a: $ff
    rst $38                                       ; $443b: $ff
    rst $38                                       ; $443c: $ff
    rst $38                                       ; $443d: $ff
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
    rst $38                                       ; $444e: $ff
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
    rst $38                                       ; $445f: $ff
    rst $38                                       ; $4460: $ff
    rst $38                                       ; $4461: $ff
    rst $38                                       ; $4462: $ff
    rst $38                                       ; $4463: $ff
    rst $38                                       ; $4464: $ff
    rst $38                                       ; $4465: $ff
    rst $38                                       ; $4466: $ff
    ld [hl], a                                    ; $4467: $77
    ld b, h                                       ; $4468: $44
    add e                                         ; $4469: $83
    ld b, h                                       ; $446a: $44
    adc a                                         ; $446b: $8f
    ld b, h                                       ; $446c: $44
    sbc e                                         ; $446d: $9b
    ld b, h                                       ; $446e: $44
    and a                                         ; $446f: $a7
    ld b, h                                       ; $4470: $44
    or e                                          ; $4471: $b3
    ld b, h                                       ; $4472: $44
    cp a                                          ; $4473: $bf
    ld b, h                                       ; $4474: $44
    sbc e                                         ; $4475: $9b
    ld b, h                                       ; $4476: $44
    rlca                                          ; $4477: $07
    ld bc, $00f9                                  ; $4478: $01 $f9 $00
    ld e, d                                       ; $447b: $5a
    ld bc, $008f                                  ; $447c: $01 $8f $00
    rst $38                                       ; $447f: $ff
    rst $38                                       ; $4480: $ff
    rst $38                                       ; $4481: $ff
    rst $38                                       ; $4482: $ff
    jp c, Jump_000_2e00                           ; $4483: $da $00 $2e

    ld bc, $0150                                  ; $4486: $01 $50 $01
    sbc [hl]                                      ; $4489: $9e
    nop                                           ; $448a: $00
    rst $38                                       ; $448b: $ff
    rst $38                                       ; $448c: $ff
    rst $38                                       ; $448d: $ff
    rst $38                                       ; $448e: $ff
    db $dd                                        ; $448f: $dd
    nop                                           ; $4490: $00
    ld a, [hl+]                                   ; $4491: $2a
    ld bc, $0154                                  ; $4492: $01 $54 $01
    sub [hl]                                      ; $4495: $96
    nop                                           ; $4496: $00
    rst $38                                       ; $4497: $ff
    rst $38                                       ; $4498: $ff
    rst $38                                       ; $4499: $ff
    rst $38                                       ; $449a: $ff
    add hl, bc                                    ; $449b: $09
    ld bc, $00f3                                  ; $449c: $01 $f3 $00
    rst $38                                       ; $449f: $ff
    rst $38                                       ; $44a0: $ff
    rst $38                                       ; $44a1: $ff
    rst $38                                       ; $44a2: $ff
    rst $38                                       ; $44a3: $ff
    rst $38                                       ; $44a4: $ff
    rst $38                                       ; $44a5: $ff
    rst $38                                       ; $44a6: $ff
    db $f4                                        ; $44a7: $f4
    nop                                           ; $44a8: $00
    rrca                                          ; $44a9: $0f
    ld bc, $ffff                                  ; $44aa: $01 $ff $ff
    rst $38                                       ; $44ad: $ff
    rst $38                                       ; $44ae: $ff
    rst $38                                       ; $44af: $ff
    rst $38                                       ; $44b0: $ff
    rst $38                                       ; $44b1: $ff
    rst $38                                       ; $44b2: $ff
    ld [$f901], sp                                ; $44b3: $08 $01 $f9
    nop                                           ; $44b6: $00
    rst $38                                       ; $44b7: $ff
    rst $38                                       ; $44b8: $ff
    rst $38                                       ; $44b9: $ff
    rst $38                                       ; $44ba: $ff
    rst $38                                       ; $44bb: $ff
    rst $38                                       ; $44bc: $ff
    rst $38                                       ; $44bd: $ff
    rst $38                                       ; $44be: $ff
    call c, Call_000_2a00                         ; $44bf: $dc $00 $2a
    ld bc, $0156                                  ; $44c2: $01 $56 $01
    sub a                                         ; $44c5: $97
    nop                                           ; $44c6: $00
    rst $38                                       ; $44c7: $ff
    rst $38                                       ; $44c8: $ff
    rst $38                                       ; $44c9: $ff
    rst $38                                       ; $44ca: $ff
    db $db                                        ; $44cb: $db
    ld b, h                                       ; $44cc: $44
    rst $20                                       ; $44cd: $e7
    ld b, h                                       ; $44ce: $44
    di                                            ; $44cf: $f3
    ld b, h                                       ; $44d0: $44
    rst $38                                       ; $44d1: $ff
    ld b, h                                       ; $44d2: $44
    dec bc                                        ; $44d3: $0b
    ld b, l                                       ; $44d4: $45
    rla                                           ; $44d5: $17
    ld b, l                                       ; $44d6: $45
    inc hl                                        ; $44d7: $23
    ld b, l                                       ; $44d8: $45
    rst $38                                       ; $44d9: $ff
    ld b, h                                       ; $44da: $44
    and $00                                       ; $44db: $e6 $00
    ld b, [hl]                                    ; $44dd: $46
    ld bc, $00fd                                  ; $44de: $01 $fd $00
    xor $00                                       ; $44e1: $ee $00
    inc de                                        ; $44e3: $13
    ld bc, $0080                                  ; $44e4: $01 $80 $00
    db $e4                                        ; $44e7: $e4
    nop                                           ; $44e8: $00
    jr c, jr_03d_44ec                             ; $44e9: $38 $01

    inc de                                        ; $44eb: $13

jr_03d_44ec:
    ld bc, $0084                                  ; $44ec: $01 $84 $00
    rst $38                                       ; $44ef: $ff
    rst $38                                       ; $44f0: $ff
    rst $38                                       ; $44f1: $ff
    rst $38                                       ; $44f2: $ff
    push hl                                       ; $44f3: $e5
    nop                                           ; $44f4: $00
    jr nc, jr_03d_44f8                            ; $44f5: $30 $01

    dec d                                         ; $44f7: $15

jr_03d_44f8:
    ld bc, $0088                                  ; $44f8: $01 $88 $00
    rst $38                                       ; $44fb: $ff
    rst $38                                       ; $44fc: $ff
    rst $38                                       ; $44fd: $ff
    rst $38                                       ; $44fe: $ff
    inc bc                                        ; $44ff: $03
    ld bc, $00c6                                  ; $4500: $01 $c6 $00
    rst $38                                       ; $4503: $ff
    rst $38                                       ; $4504: $ff
    rst $38                                       ; $4505: $ff
    rst $38                                       ; $4506: $ff
    rst $38                                       ; $4507: $ff
    rst $38                                       ; $4508: $ff
    rst $38                                       ; $4509: $ff
    rst $38                                       ; $450a: $ff
    rst $30                                       ; $450b: $f7
    nop                                           ; $450c: $00
    push af                                       ; $450d: $f5
    nop                                           ; $450e: $00
    or e                                          ; $450f: $b3
    nop                                           ; $4510: $00
    ld e, b                                       ; $4511: $58
    nop                                           ; $4512: $00
    rst $38                                       ; $4513: $ff
    rst $38                                       ; $4514: $ff
    rst $38                                       ; $4515: $ff
    rst $38                                       ; $4516: $ff
    ld bc, $cd01                                  ; $4517: $01 $01 $cd
    nop                                           ; $451a: $00
    rst $38                                       ; $451b: $ff
    rst $38                                       ; $451c: $ff
    rst $38                                       ; $451d: $ff
    rst $38                                       ; $451e: $ff
    rst $38                                       ; $451f: $ff
    rst $38                                       ; $4520: $ff
    rst $38                                       ; $4521: $ff
    rst $38                                       ; $4522: $ff
    db $e4                                        ; $4523: $e4
    nop                                           ; $4524: $00
    ld sp, $1701                                  ; $4525: $31 $01 $17
    ld bc, $0089                                  ; $4528: $01 $89 $00
    rst $38                                       ; $452b: $ff
    rst $38                                       ; $452c: $ff
    rst $38                                       ; $452d: $ff
    rst $38                                       ; $452e: $ff
    ccf                                           ; $452f: $3f
    ld b, l                                       ; $4530: $45
    ld c, e                                       ; $4531: $4b
    ld b, l                                       ; $4532: $45
    ld d, a                                       ; $4533: $57
    ld b, l                                       ; $4534: $45
    ld h, e                                       ; $4535: $63
    ld b, l                                       ; $4536: $45
    ld l, a                                       ; $4537: $6f
    ld b, l                                       ; $4538: $45
    ld a, e                                       ; $4539: $7b
    ld b, l                                       ; $453a: $45
    add a                                         ; $453b: $87
    ld b, l                                       ; $453c: $45
    ld h, e                                       ; $453d: $63
    ld b, l                                       ; $453e: $45
    db $ed                                        ; $453f: $ed
    nop                                           ; $4540: $00
    ld [hl], $01                                  ; $4541: $36 $01
    adc e                                         ; $4543: $8b
    nop                                           ; $4544: $00
    sub a                                         ; $4545: $97
    nop                                           ; $4546: $00
    rst $38                                       ; $4547: $ff
    rst $38                                       ; $4548: $ff
    rst $38                                       ; $4549: $ff
    rst $38                                       ; $454a: $ff
    dec b                                         ; $454b: $05
    ld bc, $0152                                  ; $454c: $01 $52 $01
    and h                                         ; $454f: $a4
    nop                                           ; $4550: $00
    or e                                          ; $4551: $b3
    nop                                           ; $4552: $00
    rst $38                                       ; $4553: $ff
    rst $38                                       ; $4554: $ff
    rst $38                                       ; $4555: $ff
    rst $38                                       ; $4556: $ff
    inc bc                                        ; $4557: $03
    ld bc, HeaderGlobalChecksum                   ; $4558: $01 $4e $01
    and d                                         ; $455b: $a2
    nop                                           ; $455c: $00
    xor d                                         ; $455d: $aa
    nop                                           ; $455e: $00
    rst $38                                       ; $455f: $ff
    rst $38                                       ; $4560: $ff
    rst $38                                       ; $4561: $ff
    rst $38                                       ; $4562: $ff
    rst $10                                       ; $4563: $d7
    nop                                           ; $4564: $00
    inc d                                         ; $4565: $14
    ld bc, $00ab                                  ; $4566: $01 $ab $00
    ld e, [hl]                                    ; $4569: $5e
    nop                                           ; $456a: $00
    rst $38                                       ; $456b: $ff
    rst $38                                       ; $456c: $ff
    rst $38                                       ; $456d: $ff
    rst $38                                       ; $456e: $ff
    jp hl                                         ; $456f: $e9


    nop                                           ; $4570: $00
    dec [hl]                                      ; $4571: $35
    ld bc, $00a9                                  ; $4572: $01 $a9 $00
    ld e, a                                       ; $4575: $5f
    nop                                           ; $4576: $00
    rst $38                                       ; $4577: $ff
    rst $38                                       ; $4578: $ff
    rst $38                                       ; $4579: $ff
    rst $38                                       ; $457a: $ff
    jp c, Jump_000_1800                           ; $457b: $da $00 $18

    ld bc, $00aa                                  ; $457e: $01 $aa $00
    ld h, b                                       ; $4581: $60
    nop                                           ; $4582: $00
    rst $38                                       ; $4583: $ff
    rst $38                                       ; $4584: $ff
    rst $38                                       ; $4585: $ff
    rst $38                                       ; $4586: $ff
    ld [bc], a                                    ; $4587: $02
    ld bc, $014f                                  ; $4588: $01 $4f $01
    xor b                                         ; $458b: $a8
    nop                                           ; $458c: $00
    cp b                                          ; $458d: $b8
    nop                                           ; $458e: $00
    rst $38                                       ; $458f: $ff
    rst $38                                       ; $4590: $ff
    rst $38                                       ; $4591: $ff
    rst $38                                       ; $4592: $ff
    and e                                         ; $4593: $a3
    ld b, l                                       ; $4594: $45
    xor a                                         ; $4595: $af
    ld b, l                                       ; $4596: $45
    cp e                                          ; $4597: $bb
    ld b, l                                       ; $4598: $45
    rst $00                                       ; $4599: $c7
    ld b, l                                       ; $459a: $45
    db $d3                                        ; $459b: $d3
    ld b, l                                       ; $459c: $45
    rst $18                                       ; $459d: $df
    ld b, l                                       ; $459e: $45
    db $eb                                        ; $459f: $eb
    ld b, l                                       ; $45a0: $45
    rst $00                                       ; $45a1: $c7
    ld b, l                                       ; $45a2: $45
    dec [hl]                                      ; $45a3: $35
    ld bc, $00e6                                  ; $45a4: $01 $e6 $00
    ld e, e                                       ; $45a7: $5b
    ld bc, $008a                                  ; $45a8: $01 $8a $00
    rst $38                                       ; $45ab: $ff
    rst $38                                       ; $45ac: $ff
    rst $38                                       ; $45ad: $ff
    rst $38                                       ; $45ae: $ff
    inc c                                         ; $45af: $0c
    ld bc, $0102                                  ; $45b0: $01 $02 $01
    rst $38                                       ; $45b3: $ff
    rst $38                                       ; $45b4: $ff
    rst $38                                       ; $45b5: $ff
    rst $38                                       ; $45b6: $ff
    rst $38                                       ; $45b7: $ff
    rst $38                                       ; $45b8: $ff
    rst $38                                       ; $45b9: $ff
    rst $38                                       ; $45ba: $ff
    rrca                                          ; $45bb: $0f
    ld bc, $00fd                                  ; $45bc: $01 $fd $00
    rst $38                                       ; $45bf: $ff
    rst $38                                       ; $45c0: $ff
    rst $38                                       ; $45c1: $ff
    rst $38                                       ; $45c2: $ff
    rst $38                                       ; $45c3: $ff
    rst $38                                       ; $45c4: $ff
    rst $38                                       ; $45c5: $ff
    rst $38                                       ; $45c6: $ff
    dec [hl]                                      ; $45c7: $35
    ld bc, $00e4                                  ; $45c8: $01 $e4 $00
    rst $38                                       ; $45cb: $ff
    rst $38                                       ; $45cc: $ff
    rst $38                                       ; $45cd: $ff
    rst $38                                       ; $45ce: $ff
    rst $38                                       ; $45cf: $ff
    rst $38                                       ; $45d0: $ff
    rst $38                                       ; $45d1: $ff
    rst $38                                       ; $45d2: $ff
    ld l, $01                                     ; $45d3: $2e $01
    db $eb                                        ; $45d5: $eb
    nop                                           ; $45d6: $00
    rst $38                                       ; $45d7: $ff
    rst $38                                       ; $45d8: $ff
    rst $38                                       ; $45d9: $ff
    rst $38                                       ; $45da: $ff
    rst $38                                       ; $45db: $ff
    rst $38                                       ; $45dc: $ff
    rst $38                                       ; $45dd: $ff
    rst $38                                       ; $45de: $ff
    scf                                           ; $45df: $37
    ld bc, $00e3                                  ; $45e0: $01 $e3 $00
    rst $38                                       ; $45e3: $ff
    rst $38                                       ; $45e4: $ff
    rst $38                                       ; $45e5: $ff
    rst $38                                       ; $45e6: $ff
    rst $38                                       ; $45e7: $ff
    rst $38                                       ; $45e8: $ff
    rst $38                                       ; $45e9: $ff
    rst $38                                       ; $45ea: $ff
    db $10                                        ; $45eb: $10
    ld bc, $00fe                                  ; $45ec: $01 $fe $00
    rst $38                                       ; $45ef: $ff
    rst $38                                       ; $45f0: $ff
    rst $38                                       ; $45f1: $ff
    rst $38                                       ; $45f2: $ff
    rst $38                                       ; $45f3: $ff
    rst $38                                       ; $45f4: $ff
    rst $38                                       ; $45f5: $ff
    rst $38                                       ; $45f6: $ff
    rlca                                          ; $45f7: $07
    ld b, [hl]                                    ; $45f8: $46
    inc de                                        ; $45f9: $13
    ld b, [hl]                                    ; $45fa: $46
    rra                                           ; $45fb: $1f
    ld b, [hl]                                    ; $45fc: $46
    dec hl                                        ; $45fd: $2b
    ld b, [hl]                                    ; $45fe: $46
    scf                                           ; $45ff: $37
    ld b, [hl]                                    ; $4600: $46
    ld b, e                                       ; $4601: $43
    ld b, [hl]                                    ; $4602: $46
    ld c, a                                       ; $4603: $4f
    ld b, [hl]                                    ; $4604: $46
    dec hl                                        ; $4605: $2b
    ld b, [hl]                                    ; $4606: $46
    or e                                          ; $4607: $b3
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    ld bc, $010f                                  ; $460a: $01 $0f $01
    add a                                         ; $460d: $87
    nop                                           ; $460e: $00
    rst $38                                       ; $460f: $ff
    rst $38                                       ; $4610: $ff
    rst $38                                       ; $4611: $ff
    rst $38                                       ; $4612: $ff
    xor a                                         ; $4613: $af
    nop                                           ; $4614: $00
    ld hl, sp+$00                                 ; $4615: $f8 $00
    inc c                                         ; $4617: $0c
    ld bc, $008e                                  ; $4618: $01 $8e $00
    rst $38                                       ; $461b: $ff
    rst $38                                       ; $461c: $ff
    rst $38                                       ; $461d: $ff
    rst $38                                       ; $461e: $ff
    or c                                          ; $461f: $b1
    nop                                           ; $4620: $00
    ld a, [c]                                     ; $4621: $f2
    nop                                           ; $4622: $00
    rst $38                                       ; $4623: $ff
    rst $38                                       ; $4624: $ff
    rst $38                                       ; $4625: $ff
    rst $38                                       ; $4626: $ff
    rst $38                                       ; $4627: $ff
    rst $38                                       ; $4628: $ff
    rst $38                                       ; $4629: $ff
    rst $38                                       ; $462a: $ff
    ld a, [$b600]                                 ; $462b: $fa $00 $b6
    nop                                           ; $462e: $00
    rst $38                                       ; $462f: $ff
    rst $38                                       ; $4630: $ff
    rst $38                                       ; $4631: $ff
    rst $38                                       ; $4632: $ff
    rst $38                                       ; $4633: $ff
    rst $38                                       ; $4634: $ff
    rst $38                                       ; $4635: $ff
    rst $38                                       ; $4636: $ff
    ret c                                         ; $4637: $d8

    nop                                           ; $4638: $00
    jp $ff00                                      ; $4639: $c3 $00 $ff


    rst $38                                       ; $463c: $ff
    rst $38                                       ; $463d: $ff
    rst $38                                       ; $463e: $ff
    rst $38                                       ; $463f: $ff
    rst $38                                       ; $4640: $ff
    rst $38                                       ; $4641: $ff
    rst $38                                       ; $4642: $ff
    dec b                                         ; $4643: $05
    ld bc, $00a2                                  ; $4644: $01 $a2 $00
    rst $38                                       ; $4647: $ff
    rst $38                                       ; $4648: $ff
    rst $38                                       ; $4649: $ff
    rst $38                                       ; $464a: $ff
    rst $38                                       ; $464b: $ff
    rst $38                                       ; $464c: $ff
    rst $38                                       ; $464d: $ff
    rst $38                                       ; $464e: $ff
    or d                                          ; $464f: $b2
    nop                                           ; $4650: $00
    ld a, [c]                                     ; $4651: $f2
    nop                                           ; $4652: $00
    dec bc                                        ; $4653: $0b
    ld bc, $008c                                  ; $4654: $01 $8c $00
    rst $38                                       ; $4657: $ff
    rst $38                                       ; $4658: $ff
    rst $38                                       ; $4659: $ff
    rst $38                                       ; $465a: $ff
    ld l, e                                       ; $465b: $6b
    ld b, [hl]                                    ; $465c: $46
    ld [hl], a                                    ; $465d: $77
    ld b, [hl]                                    ; $465e: $46
    add e                                         ; $465f: $83
    ld b, [hl]                                    ; $4660: $46
    adc a                                         ; $4661: $8f
    ld b, [hl]                                    ; $4662: $46
    sbc e                                         ; $4663: $9b
    ld b, [hl]                                    ; $4664: $46
    and a                                         ; $4665: $a7
    ld b, [hl]                                    ; $4666: $46
    or e                                          ; $4667: $b3
    ld b, [hl]                                    ; $4668: $46
    adc a                                         ; $4669: $8f
    ld b, [hl]                                    ; $466a: $46
    ld [hl+], a                                   ; $466b: $22
    ld bc, $00f1                                  ; $466c: $01 $f1 $00
    rst $38                                       ; $466f: $ff
    rst $38                                       ; $4670: $ff
    rst $38                                       ; $4671: $ff
    rst $38                                       ; $4672: $ff
    rst $38                                       ; $4673: $ff
    rst $38                                       ; $4674: $ff
    rst $38                                       ; $4675: $ff
    rst $38                                       ; $4676: $ff
    add hl, de                                    ; $4677: $19
    ld bc, $00ed                                  ; $4678: $01 $ed $00
    rst $38                                       ; $467b: $ff
    rst $38                                       ; $467c: $ff
    rst $38                                       ; $467d: $ff
    rst $38                                       ; $467e: $ff
    rst $38                                       ; $467f: $ff
    rst $38                                       ; $4680: $ff
    rst $38                                       ; $4681: $ff
    rst $38                                       ; $4682: $ff
    dec d                                         ; $4683: $15
    ld bc, $00e7                                  ; $4684: $01 $e7 $00
    rst $38                                       ; $4687: $ff
    rst $38                                       ; $4688: $ff
    rst $38                                       ; $4689: $ff
    rst $38                                       ; $468a: $ff
    rst $38                                       ; $468b: $ff
    rst $38                                       ; $468c: $ff
    rst $38                                       ; $468d: $ff
    rst $38                                       ; $468e: $ff
    push hl                                       ; $468f: $e5
    nop                                           ; $4690: $00
    xor [hl]                                      ; $4691: $ae
    nop                                           ; $4692: $00
    rst $38                                       ; $4693: $ff
    rst $38                                       ; $4694: $ff
    rst $38                                       ; $4695: $ff
    rst $38                                       ; $4696: $ff
    rst $38                                       ; $4697: $ff
    rst $38                                       ; $4698: $ff
    rst $38                                       ; $4699: $ff
    rst $38                                       ; $469a: $ff
    dec b                                         ; $469b: $05
    ld bc, $00d5                                  ; $469c: $01 $d5 $00
    rst $38                                       ; $469f: $ff
    rst $38                                       ; $46a0: $ff
    rst $38                                       ; $46a1: $ff
    rst $38                                       ; $46a2: $ff
    rst $38                                       ; $46a3: $ff
    rst $38                                       ; $46a4: $ff
    rst $38                                       ; $46a5: $ff
    rst $38                                       ; $46a6: $ff
    db $dd                                        ; $46a7: $dd
    nop                                           ; $46a8: $00
    sbc d                                         ; $46a9: $9a
    nop                                           ; $46aa: $00
    rst $38                                       ; $46ab: $ff
    rst $38                                       ; $46ac: $ff
    rst $38                                       ; $46ad: $ff
    rst $38                                       ; $46ae: $ff
    rst $38                                       ; $46af: $ff
    rst $38                                       ; $46b0: $ff
    rst $38                                       ; $46b1: $ff
    rst $38                                       ; $46b2: $ff
    ld c, $01                                     ; $46b3: $0e $01
    db $e4                                        ; $46b5: $e4
    nop                                           ; $46b6: $00
    rst $38                                       ; $46b7: $ff
    rst $38                                       ; $46b8: $ff
    rst $38                                       ; $46b9: $ff
    rst $38                                       ; $46ba: $ff
    rst $38                                       ; $46bb: $ff
    rst $38                                       ; $46bc: $ff
    rst $38                                       ; $46bd: $ff
    rst $38                                       ; $46be: $ff
    rst $08                                       ; $46bf: $cf
    ld b, [hl]                                    ; $46c0: $46
    db $db                                        ; $46c1: $db
    ld b, [hl]                                    ; $46c2: $46
    rst $20                                       ; $46c3: $e7
    ld b, [hl]                                    ; $46c4: $46
    di                                            ; $46c5: $f3
    ld b, [hl]                                    ; $46c6: $46
    rst $38                                       ; $46c7: $ff
    ld b, [hl]                                    ; $46c8: $46
    dec bc                                        ; $46c9: $0b
    ld b, a                                       ; $46ca: $47
    rla                                           ; $46cb: $17
    ld b, a                                       ; $46cc: $47
    di                                            ; $46cd: $f3
    ld b, [hl]                                    ; $46ce: $46
    nop                                           ; $46cf: $00
    ld bc, $00da                                  ; $46d0: $01 $da $00
    rst $38                                       ; $46d3: $ff
    rst $38                                       ; $46d4: $ff
    rst $38                                       ; $46d5: $ff
    rst $38                                       ; $46d6: $ff
    rst $38                                       ; $46d7: $ff
    rst $38                                       ; $46d8: $ff
    rst $38                                       ; $46d9: $ff
    rst $38                                       ; $46da: $ff
    db $fc                                        ; $46db: $fc
    nop                                           ; $46dc: $00
    ld [$ff01], sp                                ; $46dd: $08 $01 $ff
    rst $38                                       ; $46e0: $ff
    rst $38                                       ; $46e1: $ff
    rst $38                                       ; $46e2: $ff
    rst $38                                       ; $46e3: $ff
    rst $38                                       ; $46e4: $ff
    rst $38                                       ; $46e5: $ff
    rst $38                                       ; $46e6: $ff
    db $fd                                        ; $46e7: $fd
    nop                                           ; $46e8: $00
    inc bc                                        ; $46e9: $03
    ld bc, $ffff                                  ; $46ea: $01 $ff $ff
    rst $38                                       ; $46ed: $ff
    rst $38                                       ; $46ee: $ff
    rst $38                                       ; $46ef: $ff
    rst $38                                       ; $46f0: $ff
    rst $38                                       ; $46f1: $ff
    rst $38                                       ; $46f2: $ff
    db $fc                                        ; $46f3: $fc
    nop                                           ; $46f4: $00
    sub $00                                       ; $46f5: $d6 $00
    rst $38                                       ; $46f7: $ff
    rst $38                                       ; $46f8: $ff
    rst $38                                       ; $46f9: $ff
    rst $38                                       ; $46fa: $ff
    rst $38                                       ; $46fb: $ff
    rst $38                                       ; $46fc: $ff
    rst $38                                       ; $46fd: $ff
    rst $38                                       ; $46fe: $ff
    db $fd                                        ; $46ff: $fd
    nop                                           ; $4700: $00
    ldh [rP1], a                                  ; $4701: $e0 $00
    rst $38                                       ; $4703: $ff
    rst $38                                       ; $4704: $ff
    rst $38                                       ; $4705: $ff
    rst $38                                       ; $4706: $ff
    rst $38                                       ; $4707: $ff
    rst $38                                       ; $4708: $ff
    rst $38                                       ; $4709: $ff
    rst $38                                       ; $470a: $ff
    cp $00                                        ; $470b: $fe $00
    call nc, $ff00                                ; $470d: $d4 $00 $ff
    rst $38                                       ; $4710: $ff
    rst $38                                       ; $4711: $ff
    rst $38                                       ; $4712: $ff
    rst $38                                       ; $4713: $ff
    rst $38                                       ; $4714: $ff
    rst $38                                       ; $4715: $ff
    rst $38                                       ; $4716: $ff
    db $fd                                        ; $4717: $fd
    nop                                           ; $4718: $00
    ld [de], a                                    ; $4719: $12
    ld bc, $ffff                                  ; $471a: $01 $ff $ff
    rst $38                                       ; $471d: $ff
    rst $38                                       ; $471e: $ff
    rst $38                                       ; $471f: $ff
    rst $38                                       ; $4720: $ff
    rst $38                                       ; $4721: $ff
    rst $38                                       ; $4722: $ff
    inc sp                                        ; $4723: $33
    ld b, a                                       ; $4724: $47
    ccf                                           ; $4725: $3f
    ld b, a                                       ; $4726: $47
    ld c, e                                       ; $4727: $4b
    ld b, a                                       ; $4728: $47
    ld d, a                                       ; $4729: $57
    ld b, a                                       ; $472a: $47
    ld h, e                                       ; $472b: $63
    ld b, a                                       ; $472c: $47
    ld l, a                                       ; $472d: $6f
    ld b, a                                       ; $472e: $47
    ld a, e                                       ; $472f: $7b
    ld b, a                                       ; $4730: $47
    ld d, a                                       ; $4731: $57
    ld b, a                                       ; $4732: $47
    di                                            ; $4733: $f3
    nop                                           ; $4734: $00
    rst $08                                       ; $4735: $cf
    nop                                           ; $4736: $00
    rst $38                                       ; $4737: $ff
    rst $38                                       ; $4738: $ff
    rst $38                                       ; $4739: $ff
    rst $38                                       ; $473a: $ff
    rst $38                                       ; $473b: $ff
    rst $38                                       ; $473c: $ff
    rst $38                                       ; $473d: $ff
    rst $38                                       ; $473e: $ff
    ld a, [c]                                     ; $473f: $f2
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    ld bc, $ffff                                  ; $4742: $01 $ff $ff
    rst $38                                       ; $4745: $ff
    rst $38                                       ; $4746: $ff
    rst $38                                       ; $4747: $ff
    rst $38                                       ; $4748: $ff
    rst $38                                       ; $4749: $ff
    rst $38                                       ; $474a: $ff
    rst $28                                       ; $474b: $ef
    nop                                           ; $474c: $00
    jp nc, $ff00                                  ; $474d: $d2 $00 $ff

    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    rst $38                                       ; $4753: $ff
    rst $38                                       ; $4754: $ff
    rst $38                                       ; $4755: $ff
    rst $38                                       ; $4756: $ff
    ldh a, [rP1]                                  ; $4757: $f0 $00
    adc $00                                       ; $4759: $ce $00
    rst $38                                       ; $475b: $ff
    rst $38                                       ; $475c: $ff
    rst $38                                       ; $475d: $ff
    rst $38                                       ; $475e: $ff
    rst $38                                       ; $475f: $ff
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff
    rst $38                                       ; $4762: $ff
    xor $00                                       ; $4763: $ee $00
    ret c                                         ; $4765: $d8

    nop                                           ; $4766: $00
    rst $38                                       ; $4767: $ff
    rst $38                                       ; $4768: $ff
    rst $38                                       ; $4769: $ff
    rst $38                                       ; $476a: $ff
    rst $38                                       ; $476b: $ff
    rst $38                                       ; $476c: $ff
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    db $f4                                        ; $476f: $f4
    nop                                           ; $4770: $00
    cp d                                          ; $4771: $ba
    nop                                           ; $4772: $00
    rst $38                                       ; $4773: $ff
    rst $38                                       ; $4774: $ff
    rst $38                                       ; $4775: $ff
    rst $38                                       ; $4776: $ff
    rst $38                                       ; $4777: $ff
    rst $38                                       ; $4778: $ff
    rst $38                                       ; $4779: $ff
    rst $38                                       ; $477a: $ff
    ldh a, [rP1]                                  ; $477b: $f0 $00
    ei                                            ; $477d: $fb
    nop                                           ; $477e: $00
    rst $38                                       ; $477f: $ff
    rst $38                                       ; $4780: $ff
    rst $38                                       ; $4781: $ff
    rst $38                                       ; $4782: $ff
    rst $38                                       ; $4783: $ff
    rst $38                                       ; $4784: $ff
    rst $38                                       ; $4785: $ff
    rst $38                                       ; $4786: $ff
    sub a                                         ; $4787: $97
    ld b, a                                       ; $4788: $47
    and e                                         ; $4789: $a3
    ld b, a                                       ; $478a: $47
    xor a                                         ; $478b: $af
    ld b, a                                       ; $478c: $47
    cp e                                          ; $478d: $bb
    ld b, a                                       ; $478e: $47
    rst $00                                       ; $478f: $c7
    ld b, a                                       ; $4790: $47
    db $d3                                        ; $4791: $d3
    ld b, a                                       ; $4792: $47
    rst $18                                       ; $4793: $df
    ld b, a                                       ; $4794: $47
    cp e                                          ; $4795: $bb
    ld b, a                                       ; $4796: $47
    ld sp, hl                                     ; $4797: $f9
    nop                                           ; $4798: $00
    push hl                                       ; $4799: $e5
    nop                                           ; $479a: $00
    rst $38                                       ; $479b: $ff
    rst $38                                       ; $479c: $ff
    rst $38                                       ; $479d: $ff
    rst $38                                       ; $479e: $ff
    rst $38                                       ; $479f: $ff
    rst $38                                       ; $47a0: $ff
    rst $38                                       ; $47a1: $ff
    rst $38                                       ; $47a2: $ff
    ld hl, sp+$00                                 ; $47a3: $f8 $00
    ldh a, [rP1]                                  ; $47a5: $f0 $00
    rst $38                                       ; $47a7: $ff
    rst $38                                       ; $47a8: $ff
    rst $38                                       ; $47a9: $ff
    rst $38                                       ; $47aa: $ff
    rst $38                                       ; $47ab: $ff
    rst $38                                       ; $47ac: $ff
    rst $38                                       ; $47ad: $ff
    rst $38                                       ; $47ae: $ff
    rst $30                                       ; $47af: $f7
    nop                                           ; $47b0: $00
    db $eb                                        ; $47b1: $eb
    nop                                           ; $47b2: $00
    rst $38                                       ; $47b3: $ff
    rst $38                                       ; $47b4: $ff
    rst $38                                       ; $47b5: $ff
    rst $38                                       ; $47b6: $ff
    rst $38                                       ; $47b7: $ff
    rst $38                                       ; $47b8: $ff
    rst $38                                       ; $47b9: $ff
    rst $38                                       ; $47ba: $ff
    or $00                                        ; $47bb: $f6 $00
    cp [hl]                                       ; $47bd: $be
    nop                                           ; $47be: $00
    rst $38                                       ; $47bf: $ff
    rst $38                                       ; $47c0: $ff
    rst $38                                       ; $47c1: $ff
    rst $38                                       ; $47c2: $ff
    rst $38                                       ; $47c3: $ff
    rst $38                                       ; $47c4: $ff
    rst $38                                       ; $47c5: $ff
    rst $38                                       ; $47c6: $ff
    or $00                                        ; $47c7: $f6 $00
    ret z                                         ; $47c9: $c8

    nop                                           ; $47ca: $00
    rst $38                                       ; $47cb: $ff
    rst $38                                       ; $47cc: $ff
    rst $38                                       ; $47cd: $ff
    rst $38                                       ; $47ce: $ff
    rst $38                                       ; $47cf: $ff
    rst $38                                       ; $47d0: $ff
    rst $38                                       ; $47d1: $ff
    rst $38                                       ; $47d2: $ff
    ld b, [hl]                                    ; $47d3: $46
    ld bc, $00e0                                  ; $47d4: $01 $e0 $00
    rst $38                                       ; $47d7: $ff
    rst $38                                       ; $47d8: $ff
    rst $38                                       ; $47d9: $ff
    rst $38                                       ; $47da: $ff
    rst $38                                       ; $47db: $ff
    rst $38                                       ; $47dc: $ff
    rst $38                                       ; $47dd: $ff
    rst $38                                       ; $47de: $ff
    rst $30                                       ; $47df: $f7
    nop                                           ; $47e0: $00
    db $eb                                        ; $47e1: $eb
    nop                                           ; $47e2: $00
    rst $38                                       ; $47e3: $ff
    rst $38                                       ; $47e4: $ff
    rst $38                                       ; $47e5: $ff
    rst $38                                       ; $47e6: $ff
    rst $38                                       ; $47e7: $ff
    rst $38                                       ; $47e8: $ff
    rst $38                                       ; $47e9: $ff
    rst $38                                       ; $47ea: $ff
    ei                                            ; $47eb: $fb
    ld b, a                                       ; $47ec: $47
    rlca                                          ; $47ed: $07
    ld c, b                                       ; $47ee: $48
    inc de                                        ; $47ef: $13
    ld c, b                                       ; $47f0: $48
    rra                                           ; $47f1: $1f
    ld c, b                                       ; $47f2: $48
    dec hl                                        ; $47f3: $2b
    ld c, b                                       ; $47f4: $48
    scf                                           ; $47f5: $37
    ld c, b                                       ; $47f6: $48
    ld b, e                                       ; $47f7: $43
    ld c, b                                       ; $47f8: $48
    rra                                           ; $47f9: $1f
    ld c, b                                       ; $47fa: $48
    sbc $00                                       ; $47fb: $de $00
    rst $28                                       ; $47fd: $ef
    nop                                           ; $47fe: $00
    cp $00                                        ; $47ff: $fe $00
    ld c, h                                       ; $4801: $4c
    nop                                           ; $4802: $00
    rst $38                                       ; $4803: $ff
    rst $38                                       ; $4804: $ff
    rst $38                                       ; $4805: $ff
    rst $38                                       ; $4806: $ff
    db $dd                                        ; $4807: $dd
    nop                                           ; $4808: $00
    inc bc                                        ; $4809: $03
    ld bc, $00fe                                  ; $480a: $01 $fe $00
    ld c, h                                       ; $480d: $4c
    nop                                           ; $480e: $00
    rst $38                                       ; $480f: $ff
    rst $38                                       ; $4810: $ff
    rst $38                                       ; $4811: $ff
    rst $38                                       ; $4812: $ff
    call c, $fd00                                 ; $4813: $dc $00 $fd
    nop                                           ; $4816: $00
    cp $00                                        ; $4817: $fe $00
    ld c, h                                       ; $4819: $4c
    nop                                           ; $481a: $00
    rst $38                                       ; $481b: $ff
    rst $38                                       ; $481c: $ff
    rst $38                                       ; $481d: $ff
    rst $38                                       ; $481e: $ff
    add sp, $00                                   ; $481f: $e8 $00
    rst $08                                       ; $4821: $cf
    nop                                           ; $4822: $00
    cp $00                                        ; $4823: $fe $00
    ld c, h                                       ; $4825: $4c
    nop                                           ; $4826: $00
    rst $38                                       ; $4827: $ff
    rst $38                                       ; $4828: $ff
    rst $38                                       ; $4829: $ff
    rst $38                                       ; $482a: $ff
    pop hl                                        ; $482b: $e1
    nop                                           ; $482c: $00
    reti                                          ; $482d: $d9


    nop                                           ; $482e: $00
    cp $00                                        ; $482f: $fe $00
    ld c, h                                       ; $4831: $4c
    nop                                           ; $4832: $00
    rst $38                                       ; $4833: $ff
    rst $38                                       ; $4834: $ff
    rst $38                                       ; $4835: $ff
    rst $38                                       ; $4836: $ff
    db $ed                                        ; $4837: $ed
    nop                                           ; $4838: $00
    cp d                                          ; $4839: $ba
    nop                                           ; $483a: $00
    cp $00                                        ; $483b: $fe $00
    ld c, h                                       ; $483d: $4c
    nop                                           ; $483e: $00
    rst $38                                       ; $483f: $ff
    rst $38                                       ; $4840: $ff
    rst $38                                       ; $4841: $ff
    rst $38                                       ; $4842: $ff
    ret c                                         ; $4843: $d8

    nop                                           ; $4844: $00
    cp $00                                        ; $4845: $fe $00
    cp $00                                        ; $4847: $fe $00
    ld c, h                                       ; $4849: $4c
    nop                                           ; $484a: $00
    rst $38                                       ; $484b: $ff
    rst $38                                       ; $484c: $ff
    rst $38                                       ; $484d: $ff
    rst $38                                       ; $484e: $ff
    ld e, a                                       ; $484f: $5f
    ld c, b                                       ; $4850: $48
    ld l, e                                       ; $4851: $6b
    ld c, b                                       ; $4852: $48
    ld [hl], a                                    ; $4853: $77
    ld c, b                                       ; $4854: $48
    add e                                         ; $4855: $83
    ld c, b                                       ; $4856: $48
    adc a                                         ; $4857: $8f
    ld c, b                                       ; $4858: $48
    sbc e                                         ; $4859: $9b
    ld c, b                                       ; $485a: $48
    and a                                         ; $485b: $a7
    ld c, b                                       ; $485c: $48
    add e                                         ; $485d: $83
    ld c, b                                       ; $485e: $48
    ret                                           ; $485f: $c9


    nop                                           ; $4860: $00
    dec c                                         ; $4861: $0d
    ld bc, $00e6                                  ; $4862: $01 $e6 $00
    adc h                                         ; $4865: $8c
    nop                                           ; $4866: $00
    rst $38                                       ; $4867: $ff
    rst $38                                       ; $4868: $ff
    rst $38                                       ; $4869: $ff
    rst $38                                       ; $486a: $ff
    ret z                                         ; $486b: $c8

    nop                                           ; $486c: $00
    daa                                           ; $486d: $27
    ld bc, $00f5                                  ; $486e: $01 $f5 $00
    ld [hl], d                                    ; $4871: $72
    nop                                           ; $4872: $00
    rst $38                                       ; $4873: $ff
    rst $38                                       ; $4874: $ff
    rst $38                                       ; $4875: $ff
    rst $38                                       ; $4876: $ff
    add $00                                       ; $4877: $c6 $00
    ld [hl+], a                                   ; $4879: $22
    ld bc, $00fc                                  ; $487a: $01 $fc $00
    ld l, h                                       ; $487d: $6c
    nop                                           ; $487e: $00
    rst $38                                       ; $487f: $ff
    rst $38                                       ; $4880: $ff
    rst $38                                       ; $4881: $ff
    rst $38                                       ; $4882: $ff
    push de                                       ; $4883: $d5
    nop                                           ; $4884: $00
    jp z, $ff00                                   ; $4885: $ca $00 $ff

    rst $38                                       ; $4888: $ff
    rst $38                                       ; $4889: $ff
    rst $38                                       ; $488a: $ff
    rst $38                                       ; $488b: $ff
    rst $38                                       ; $488c: $ff
    rst $38                                       ; $488d: $ff
    rst $38                                       ; $488e: $ff
    ld [c], a                                     ; $488f: $e2
    nop                                           ; $4890: $00
    db $eb                                        ; $4891: $eb
    nop                                           ; $4892: $00
    jr jr_03d_4896                                ; $4893: $18 $01

    ld c, d                                       ; $4895: $4a

jr_03d_4896:
    nop                                           ; $4896: $00
    rst $38                                       ; $4897: $ff
    rst $38                                       ; $4898: $ff
    rst $38                                       ; $4899: $ff
    rst $38                                       ; $489a: $ff
    ret c                                         ; $489b: $d8

    nop                                           ; $489c: $00
    adc $00                                       ; $489d: $ce $00
    rst $38                                       ; $489f: $ff
    rst $38                                       ; $48a0: $ff
    rst $38                                       ; $48a1: $ff
    rst $38                                       ; $48a2: $ff
    rst $38                                       ; $48a3: $ff
    rst $38                                       ; $48a4: $ff
    rst $38                                       ; $48a5: $ff
    rst $38                                       ; $48a6: $ff
    push bc                                       ; $48a7: $c5
    nop                                           ; $48a8: $00
    inc hl                                        ; $48a9: $23
    ld bc, $00fb                                  ; $48aa: $01 $fb $00
    ld l, l                                       ; $48ad: $6d
    nop                                           ; $48ae: $00
    rst $38                                       ; $48af: $ff
    rst $38                                       ; $48b0: $ff
    rst $38                                       ; $48b1: $ff
    rst $38                                       ; $48b2: $ff
    jp $cf48                                      ; $48b3: $c3 $48 $cf


    ld c, b                                       ; $48b6: $48
    db $db                                        ; $48b7: $db
    ld c, b                                       ; $48b8: $48
    rst $20                                       ; $48b9: $e7
    ld c, b                                       ; $48ba: $48
    di                                            ; $48bb: $f3
    ld c, b                                       ; $48bc: $48
    rst $38                                       ; $48bd: $ff
    ld c, b                                       ; $48be: $48
    dec bc                                        ; $48bf: $0b
    ld c, c                                       ; $48c0: $49
    rst $20                                       ; $48c1: $e7
    ld c, b                                       ; $48c2: $48
    nop                                           ; $48c3: $00
    ld bc, $00ce                                  ; $48c4: $01 $ce $00
    rst $38                                       ; $48c7: $ff
    rst $38                                       ; $48c8: $ff
    rst $38                                       ; $48c9: $ff
    rst $38                                       ; $48ca: $ff
    rst $38                                       ; $48cb: $ff
    rst $38                                       ; $48cc: $ff
    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    nop                                           ; $48cf: $00
    ld bc, $0100                                  ; $48d0: $01 $00 $01
    rst $38                                       ; $48d3: $ff
    rst $38                                       ; $48d4: $ff
    rst $38                                       ; $48d5: $ff
    rst $38                                       ; $48d6: $ff
    rst $38                                       ; $48d7: $ff
    rst $38                                       ; $48d8: $ff
    rst $38                                       ; $48d9: $ff
    rst $38                                       ; $48da: $ff
    nop                                           ; $48db: $00
    ld bc, $00fb                                  ; $48dc: $01 $fb $00
    rst $38                                       ; $48df: $ff
    rst $38                                       ; $48e0: $ff
    rst $38                                       ; $48e1: $ff
    rst $38                                       ; $48e2: $ff
    rst $38                                       ; $48e3: $ff
    rst $38                                       ; $48e4: $ff
    rst $38                                       ; $48e5: $ff
    rst $38                                       ; $48e6: $ff
    rst $38                                       ; $48e7: $ff
    nop                                           ; $48e8: $00
    adc $00                                       ; $48e9: $ce $00
    rst $38                                       ; $48eb: $ff
    rst $38                                       ; $48ec: $ff
    rst $38                                       ; $48ed: $ff
    rst $38                                       ; $48ee: $ff
    rst $38                                       ; $48ef: $ff
    rst $38                                       ; $48f0: $ff
    rst $38                                       ; $48f1: $ff
    rst $38                                       ; $48f2: $ff
    rst $38                                       ; $48f3: $ff
    nop                                           ; $48f4: $00
    ret c                                         ; $48f5: $d8

    nop                                           ; $48f6: $00
    rst $38                                       ; $48f7: $ff
    rst $38                                       ; $48f8: $ff
    rst $38                                       ; $48f9: $ff
    rst $38                                       ; $48fa: $ff
    rst $38                                       ; $48fb: $ff
    rst $38                                       ; $48fc: $ff
    rst $38                                       ; $48fd: $ff
    rst $38                                       ; $48fe: $ff
    nop                                           ; $48ff: $00
    ld bc, $00ba                                  ; $4900: $01 $ba $00
    rst $38                                       ; $4903: $ff
    rst $38                                       ; $4904: $ff
    rst $38                                       ; $4905: $ff
    rst $38                                       ; $4906: $ff
    rst $38                                       ; $4907: $ff
    rst $38                                       ; $4908: $ff
    rst $38                                       ; $4909: $ff
    rst $38                                       ; $490a: $ff
    rst $38                                       ; $490b: $ff
    nop                                           ; $490c: $00
    ei                                            ; $490d: $fb
    nop                                           ; $490e: $00
    rst $38                                       ; $490f: $ff
    rst $38                                       ; $4910: $ff
    rst $38                                       ; $4911: $ff
    rst $38                                       ; $4912: $ff
    rst $38                                       ; $4913: $ff
    rst $38                                       ; $4914: $ff
    rst $38                                       ; $4915: $ff
    rst $38                                       ; $4916: $ff
    daa                                           ; $4917: $27
    ld c, c                                       ; $4918: $49
    daa                                           ; $4919: $27
    ld c, c                                       ; $491a: $49
    daa                                           ; $491b: $27
    ld c, c                                       ; $491c: $49
    daa                                           ; $491d: $27
    ld c, c                                       ; $491e: $49
    daa                                           ; $491f: $27
    ld c, c                                       ; $4920: $49
    daa                                           ; $4921: $27
    ld c, c                                       ; $4922: $49
    daa                                           ; $4923: $27
    ld c, c                                       ; $4924: $49
    daa                                           ; $4925: $27
    ld c, c                                       ; $4926: $49
    ld h, $01                                     ; $4927: $26 $01
    rst $30                                       ; $4929: $f7
    nop                                           ; $492a: $00
    rst $38                                       ; $492b: $ff
    rst $38                                       ; $492c: $ff
    rst $38                                       ; $492d: $ff
    rst $38                                       ; $492e: $ff
    rst $38                                       ; $492f: $ff
    rst $38                                       ; $4930: $ff
    rst $38                                       ; $4931: $ff
    rst $38                                       ; $4932: $ff
    rst $38                                       ; $4933: $ff
    rst $38                                       ; $4934: $ff
    rst $38                                       ; $4935: $ff
    rst $38                                       ; $4936: $ff
    rst $38                                       ; $4937: $ff
    rst $38                                       ; $4938: $ff
    rst $38                                       ; $4939: $ff
    rst $38                                       ; $493a: $ff
    rst $38                                       ; $493b: $ff
    rst $38                                       ; $493c: $ff
    rst $38                                       ; $493d: $ff
    rst $38                                       ; $493e: $ff
    rst $38                                       ; $493f: $ff
    rst $38                                       ; $4940: $ff
    rst $38                                       ; $4941: $ff
    rst $38                                       ; $4942: $ff
    rst $38                                       ; $4943: $ff
    rst $38                                       ; $4944: $ff
    rst $38                                       ; $4945: $ff
    rst $38                                       ; $4946: $ff
    rst $38                                       ; $4947: $ff
    rst $38                                       ; $4948: $ff
    rst $38                                       ; $4949: $ff
    rst $38                                       ; $494a: $ff
    rst $38                                       ; $494b: $ff
    rst $38                                       ; $494c: $ff
    rst $38                                       ; $494d: $ff
    rst $38                                       ; $494e: $ff
    rst $38                                       ; $494f: $ff
    rst $38                                       ; $4950: $ff
    rst $38                                       ; $4951: $ff
    rst $38                                       ; $4952: $ff
    rst $38                                       ; $4953: $ff
    rst $38                                       ; $4954: $ff
    rst $38                                       ; $4955: $ff
    rst $38                                       ; $4956: $ff
    rst $38                                       ; $4957: $ff
    rst $38                                       ; $4958: $ff
    rst $38                                       ; $4959: $ff
    rst $38                                       ; $495a: $ff
    rst $38                                       ; $495b: $ff
    rst $38                                       ; $495c: $ff
    rst $38                                       ; $495d: $ff
    rst $38                                       ; $495e: $ff
    rst $38                                       ; $495f: $ff
    rst $38                                       ; $4960: $ff
    rst $38                                       ; $4961: $ff
    rst $38                                       ; $4962: $ff
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
    rst $38                                       ; $4973: $ff
    rst $38                                       ; $4974: $ff
    rst $38                                       ; $4975: $ff
    rst $38                                       ; $4976: $ff
    rst $38                                       ; $4977: $ff
    rst $38                                       ; $4978: $ff
    rst $38                                       ; $4979: $ff
    rst $38                                       ; $497a: $ff
    adc e                                         ; $497b: $8b
    ld c, c                                       ; $497c: $49
    adc e                                         ; $497d: $8b
    ld c, c                                       ; $497e: $49
    adc e                                         ; $497f: $8b
    ld c, c                                       ; $4980: $49
    adc e                                         ; $4981: $8b
    ld c, c                                       ; $4982: $49
    adc e                                         ; $4983: $8b
    ld c, c                                       ; $4984: $49
    adc e                                         ; $4985: $8b
    ld c, c                                       ; $4986: $49
    adc e                                         ; $4987: $8b
    ld c, c                                       ; $4988: $49
    adc e                                         ; $4989: $8b
    ld c, c                                       ; $498a: $49
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
    rst $38                                       ; $49a5: $ff
    rst $38                                       ; $49a6: $ff
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
    rst $38                                       ; $49b7: $ff
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
    rst $38                                       ; $49c8: $ff
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
    rst $38                                       ; $49d9: $ff
    rst $38                                       ; $49da: $ff
    rst $38                                       ; $49db: $ff
    rst $38                                       ; $49dc: $ff
    rst $38                                       ; $49dd: $ff
    rst $38                                       ; $49de: $ff
    rst $28                                       ; $49df: $ef
    ld c, c                                       ; $49e0: $49
    ei                                            ; $49e1: $fb
    ld c, c                                       ; $49e2: $49
    rlca                                          ; $49e3: $07
    ld c, d                                       ; $49e4: $4a
    inc de                                        ; $49e5: $13
    ld c, d                                       ; $49e6: $4a
    rra                                           ; $49e7: $1f
    ld c, d                                       ; $49e8: $4a
    dec hl                                        ; $49e9: $2b
    ld c, d                                       ; $49ea: $4a
    scf                                           ; $49eb: $37
    ld c, d                                       ; $49ec: $4a
    inc de                                        ; $49ed: $13
    ld c, d                                       ; $49ee: $4a
    add hl, sp                                    ; $49ef: $39
    ld bc, HeaderLogo                             ; $49f0: $01 $04 $01
    inc c                                         ; $49f3: $0c
    ld bc, $0065                                  ; $49f4: $01 $65 $00
    rst $38                                       ; $49f7: $ff
    rst $38                                       ; $49f8: $ff
    rst $38                                       ; $49f9: $ff
    rst $38                                       ; $49fa: $ff
    ld b, d                                       ; $49fb: $42
    ld bc, $0135                                  ; $49fc: $01 $35 $01
    ld b, b                                       ; $49ff: $40
    ld bc, $009f                                  ; $4a00: $01 $9f $00
    rst $38                                       ; $4a03: $ff
    rst $38                                       ; $4a04: $ff
    rst $38                                       ; $4a05: $ff
    rst $38                                       ; $4a06: $ff
    ld b, c                                       ; $4a07: $41
    ld bc, $012d                                  ; $4a08: $01 $2d $01
    jr jr_03d_4a0e                                ; $4a0b: $18 $01

    ld [hl], e                                    ; $4a0d: $73

jr_03d_4a0e:
    nop                                           ; $4a0e: $00
    rst $38                                       ; $4a0f: $ff
    rst $38                                       ; $4a10: $ff
    rst $38                                       ; $4a11: $ff
    rst $38                                       ; $4a12: $ff
    ld b, l                                       ; $4a13: $45
    ld bc, $00da                                  ; $4a14: $01 $da $00
    rst $38                                       ; $4a17: $ff
    rst $38                                       ; $4a18: $ff
    rst $38                                       ; $4a19: $ff
    rst $38                                       ; $4a1a: $ff
    rst $38                                       ; $4a1b: $ff
    rst $38                                       ; $4a1c: $ff
    rst $38                                       ; $4a1d: $ff
    rst $38                                       ; $4a1e: $ff
    ld a, $01                                     ; $4a1f: $3e $01
    rst $38                                       ; $4a21: $ff
    nop                                           ; $4a22: $00
    rst $38                                       ; $4a23: $ff
    rst $38                                       ; $4a24: $ff
    rst $38                                       ; $4a25: $ff
    rst $38                                       ; $4a26: $ff
    rst $38                                       ; $4a27: $ff
    rst $38                                       ; $4a28: $ff
    rst $38                                       ; $4a29: $ff
    rst $38                                       ; $4a2a: $ff
    ld c, c                                       ; $4a2b: $49
    ld bc, $00e2                                  ; $4a2c: $01 $e2 $00
    rst $38                                       ; $4a2f: $ff
    rst $38                                       ; $4a30: $ff
    rst $38                                       ; $4a31: $ff
    rst $38                                       ; $4a32: $ff
    rst $38                                       ; $4a33: $ff
    rst $38                                       ; $4a34: $ff
    rst $38                                       ; $4a35: $ff
    rst $38                                       ; $4a36: $ff
    ld b, h                                       ; $4a37: $44
    ld bc, $0130                                  ; $4a38: $01 $30 $01
    ld a, [de]                                    ; $4a3b: $1a
    ld bc, $0076                                  ; $4a3c: $01 $76 $00
    rst $38                                       ; $4a3f: $ff
    rst $38                                       ; $4a40: $ff
    rst $38                                       ; $4a41: $ff
    rst $38                                       ; $4a42: $ff
    ld d, e                                       ; $4a43: $53
    ld c, d                                       ; $4a44: $4a
    ld e, a                                       ; $4a45: $5f
    ld c, d                                       ; $4a46: $4a
    ld l, e                                       ; $4a47: $6b
    ld c, d                                       ; $4a48: $4a
    ld [hl], a                                    ; $4a49: $77
    ld c, d                                       ; $4a4a: $4a
    add e                                         ; $4a4b: $83
    ld c, d                                       ; $4a4c: $4a
    adc a                                         ; $4a4d: $8f
    ld c, d                                       ; $4a4e: $4a
    sbc e                                         ; $4a4f: $9b
    ld c, d                                       ; $4a50: $4a
    ld [hl], a                                    ; $4a51: $77
    ld c, d                                       ; $4a52: $4a
    db $dd                                        ; $4a53: $dd
    nop                                           ; $4a54: $00
    ld [hl], $01                                  ; $4a55: $36 $01
    xor c                                         ; $4a57: $a9
    nop                                           ; $4a58: $00
    add d                                         ; $4a59: $82
    nop                                           ; $4a5a: $00
    rst $38                                       ; $4a5b: $ff
    rst $38                                       ; $4a5c: $ff
    rst $38                                       ; $4a5d: $ff
    rst $38                                       ; $4a5e: $ff
    rst $20                                       ; $4a5f: $e7
    nop                                           ; $4a60: $00
    jr nz, jr_03d_4a64                            ; $4a61: $20 $01

    xor c                                         ; $4a63: $a9

jr_03d_4a64:
    nop                                           ; $4a64: $00
    ld a, a                                       ; $4a65: $7f
    nop                                           ; $4a66: $00
    rst $38                                       ; $4a67: $ff
    rst $38                                       ; $4a68: $ff
    rst $38                                       ; $4a69: $ff
    rst $38                                       ; $4a6a: $ff
    add sp, $00                                   ; $4a6b: $e8 $00
    add hl, de                                    ; $4a6d: $19
    ld bc, $00ad                                  ; $4a6e: $01 $ad $00
    ld a, a                                       ; $4a71: $7f
    nop                                           ; $4a72: $00
    rst $38                                       ; $4a73: $ff
    rst $38                                       ; $4a74: $ff
    rst $38                                       ; $4a75: $ff
    rst $38                                       ; $4a76: $ff
    rst $08                                       ; $4a77: $cf
    nop                                           ; $4a78: $00
    sub $00                                       ; $4a79: $d6 $00
    rst $38                                       ; $4a7b: $ff
    rst $38                                       ; $4a7c: $ff
    rst $38                                       ; $4a7d: $ff
    rst $38                                       ; $4a7e: $ff
    rst $38                                       ; $4a7f: $ff
    rst $38                                       ; $4a80: $ff
    rst $38                                       ; $4a81: $ff
    rst $38                                       ; $4a82: $ff
    db $e3                                        ; $4a83: $e3
    nop                                           ; $4a84: $00
    di                                            ; $4a85: $f3
    nop                                           ; $4a86: $00
    pop hl                                        ; $4a87: $e1
    nop                                           ; $4a88: $00
    ccf                                           ; $4a89: $3f
    nop                                           ; $4a8a: $00
    rst $38                                       ; $4a8b: $ff
    rst $38                                       ; $4a8c: $ff
    rst $38                                       ; $4a8d: $ff
    rst $38                                       ; $4a8e: $ff
    db $d3                                        ; $4a8f: $d3
    nop                                           ; $4a90: $00
    jp c, $ff00                                   ; $4a91: $da $00 $ff

    rst $38                                       ; $4a94: $ff
    rst $38                                       ; $4a95: $ff
    rst $38                                       ; $4a96: $ff
    rst $38                                       ; $4a97: $ff
    rst $38                                       ; $4a98: $ff
    rst $38                                       ; $4a99: $ff
    rst $38                                       ; $4a9a: $ff
    add sp, $00                                   ; $4a9b: $e8 $00
    add hl, de                                    ; $4a9d: $19
    ld bc, $00ad                                  ; $4a9e: $01 $ad $00
    ld a, a                                       ; $4aa1: $7f
    nop                                           ; $4aa2: $00
    rst $38                                       ; $4aa3: $ff
    rst $38                                       ; $4aa4: $ff
    rst $38                                       ; $4aa5: $ff
    rst $38                                       ; $4aa6: $ff
    or a                                          ; $4aa7: $b7
    ld c, d                                       ; $4aa8: $4a
    jp $cf4a                                      ; $4aa9: $c3 $4a $cf


    ld c, d                                       ; $4aac: $4a
    db $db                                        ; $4aad: $db
    ld c, d                                       ; $4aae: $4a
    rst $20                                       ; $4aaf: $e7
    ld c, d                                       ; $4ab0: $4a
    di                                            ; $4ab1: $f3
    ld c, d                                       ; $4ab2: $4a
    rst $38                                       ; $4ab3: $ff
    ld c, d                                       ; $4ab4: $4a
    db $db                                        ; $4ab5: $db
    ld c, d                                       ; $4ab6: $4a
    inc e                                         ; $4ab7: $1c
    ld bc, $00ea                                  ; $4ab8: $01 $ea $00
    ld a, c                                       ; $4abb: $79
    nop                                           ; $4abc: $00
    add a                                         ; $4abd: $87
    nop                                           ; $4abe: $00
    rst $38                                       ; $4abf: $ff
    rst $38                                       ; $4ac0: $ff
    rst $38                                       ; $4ac1: $ff
    rst $38                                       ; $4ac2: $ff
    dec l                                         ; $4ac3: $2d
    ld bc, $0109                                  ; $4ac4: $01 $09 $01
    sub l                                         ; $4ac7: $95
    nop                                           ; $4ac8: $00
    sbc [hl]                                      ; $4ac9: $9e
    nop                                           ; $4aca: $00
    rst $38                                       ; $4acb: $ff
    rst $38                                       ; $4acc: $ff
    rst $38                                       ; $4acd: $ff
    rst $38                                       ; $4ace: $ff
    add hl, hl                                    ; $4acf: $29
    ld bc, $0106                                  ; $4ad0: $01 $06 $01
    adc l                                         ; $4ad3: $8d
    nop                                           ; $4ad4: $00
    sbc c                                         ; $4ad5: $99
    nop                                           ; $4ad6: $00
    rst $38                                       ; $4ad7: $ff
    rst $38                                       ; $4ad8: $ff
    rst $38                                       ; $4ad9: $ff
    rst $38                                       ; $4ada: $ff
    inc c                                         ; $4adb: $0c
    ld bc, $00e2                                  ; $4adc: $01 $e2 $00
    rst $38                                       ; $4adf: $ff
    rst $38                                       ; $4ae0: $ff
    rst $38                                       ; $4ae1: $ff
    rst $38                                       ; $4ae2: $ff
    rst $38                                       ; $4ae3: $ff
    rst $38                                       ; $4ae4: $ff
    rst $38                                       ; $4ae5: $ff
    rst $38                                       ; $4ae6: $ff
    inc d                                         ; $4ae7: $14
    ld bc, $00e9                                  ; $4ae8: $01 $e9 $00
    rst $38                                       ; $4aeb: $ff
    rst $38                                       ; $4aec: $ff
    rst $38                                       ; $4aed: $ff
    rst $38                                       ; $4aee: $ff
    rst $38                                       ; $4aef: $ff
    rst $38                                       ; $4af0: $ff
    rst $38                                       ; $4af1: $ff
    rst $38                                       ; $4af2: $ff
    db $fc                                        ; $4af3: $fc
    nop                                           ; $4af4: $00
    call nc, $ff00                                ; $4af5: $d4 $00 $ff
    rst $38                                       ; $4af8: $ff
    rst $38                                       ; $4af9: $ff
    rst $38                                       ; $4afa: $ff
    rst $38                                       ; $4afb: $ff
    rst $38                                       ; $4afc: $ff
    rst $38                                       ; $4afd: $ff
    rst $38                                       ; $4afe: $ff
    add hl, hl                                    ; $4aff: $29
    ld bc, $0105                                  ; $4b00: $01 $05 $01
    adc h                                         ; $4b03: $8c
    nop                                           ; $4b04: $00
    sbc d                                         ; $4b05: $9a
    nop                                           ; $4b06: $00
    rst $38                                       ; $4b07: $ff
    rst $38                                       ; $4b08: $ff
    rst $38                                       ; $4b09: $ff
    rst $38                                       ; $4b0a: $ff
    dec de                                        ; $4b0b: $1b
    ld c, e                                       ; $4b0c: $4b
    daa                                           ; $4b0d: $27
    ld c, e                                       ; $4b0e: $4b
    inc sp                                        ; $4b0f: $33
    ld c, e                                       ; $4b10: $4b
    ccf                                           ; $4b11: $3f
    ld c, e                                       ; $4b12: $4b
    ld c, e                                       ; $4b13: $4b
    ld c, e                                       ; $4b14: $4b
    ld d, a                                       ; $4b15: $57
    ld c, e                                       ; $4b16: $4b
    ld h, e                                       ; $4b17: $63
    ld c, e                                       ; $4b18: $4b
    ccf                                           ; $4b19: $3f
    ld c, e                                       ; $4b1a: $4b
    rst $38                                       ; $4b1b: $ff
    rst $38                                       ; $4b1c: $ff
    rst $38                                       ; $4b1d: $ff
    rst $38                                       ; $4b1e: $ff
    rst $38                                       ; $4b1f: $ff
    rst $38                                       ; $4b20: $ff
    rst $38                                       ; $4b21: $ff
    rst $38                                       ; $4b22: $ff
    rst $38                                       ; $4b23: $ff
    rst $38                                       ; $4b24: $ff
    rst $38                                       ; $4b25: $ff
    rst $38                                       ; $4b26: $ff
    ld hl, $0401                                  ; $4b27: $21 $01 $04
    ld bc, $ffff                                  ; $4b2a: $01 $ff $ff
    rst $38                                       ; $4b2d: $ff
    rst $38                                       ; $4b2e: $ff
    rst $38                                       ; $4b2f: $ff
    rst $38                                       ; $4b30: $ff
    rst $38                                       ; $4b31: $ff
    rst $38                                       ; $4b32: $ff
    inc hl                                        ; $4b33: $23
    ld bc, $0100                                  ; $4b34: $01 $00 $01
    rst $38                                       ; $4b37: $ff
    rst $38                                       ; $4b38: $ff
    rst $38                                       ; $4b39: $ff
    rst $38                                       ; $4b3a: $ff
    rst $38                                       ; $4b3b: $ff
    rst $38                                       ; $4b3c: $ff
    rst $38                                       ; $4b3d: $ff
    rst $38                                       ; $4b3e: $ff
    inc l                                         ; $4b3f: $2c
    ld bc, $00d2                                  ; $4b40: $01 $d2 $00
    rst $38                                       ; $4b43: $ff
    rst $38                                       ; $4b44: $ff
    rst $38                                       ; $4b45: $ff
    rst $38                                       ; $4b46: $ff
    rst $38                                       ; $4b47: $ff
    rst $38                                       ; $4b48: $ff
    rst $38                                       ; $4b49: $ff
    rst $38                                       ; $4b4a: $ff
    dec hl                                        ; $4b4b: $2b
    ld bc, $00dd                                  ; $4b4c: $01 $dd $00
    rst $38                                       ; $4b4f: $ff
    rst $38                                       ; $4b50: $ff
    rst $38                                       ; $4b51: $ff
    rst $38                                       ; $4b52: $ff
    rst $38                                       ; $4b53: $ff
    rst $38                                       ; $4b54: $ff
    rst $38                                       ; $4b55: $ff
    rst $38                                       ; $4b56: $ff
    ld c, $01                                     ; $4b57: $0e $01
    or e                                          ; $4b59: $b3
    nop                                           ; $4b5a: $00
    rst $38                                       ; $4b5b: $ff
    rst $38                                       ; $4b5c: $ff
    rst $38                                       ; $4b5d: $ff
    rst $38                                       ; $4b5e: $ff
    rst $38                                       ; $4b5f: $ff
    rst $38                                       ; $4b60: $ff
    rst $38                                       ; $4b61: $ff
    rst $38                                       ; $4b62: $ff
    inc h                                         ; $4b63: $24
    ld bc, $0100                                  ; $4b64: $01 $00 $01
    rst $38                                       ; $4b67: $ff
    rst $38                                       ; $4b68: $ff
    rst $38                                       ; $4b69: $ff
    rst $38                                       ; $4b6a: $ff
    rst $38                                       ; $4b6b: $ff
    rst $38                                       ; $4b6c: $ff
    rst $38                                       ; $4b6d: $ff
    rst $38                                       ; $4b6e: $ff
    ld a, a                                       ; $4b6f: $7f
    ld c, e                                       ; $4b70: $4b
    adc e                                         ; $4b71: $8b
    ld c, e                                       ; $4b72: $4b
    sub a                                         ; $4b73: $97
    ld c, e                                       ; $4b74: $4b
    and e                                         ; $4b75: $a3
    ld c, e                                       ; $4b76: $4b
    xor a                                         ; $4b77: $af
    ld c, e                                       ; $4b78: $4b
    cp e                                          ; $4b79: $bb
    ld c, e                                       ; $4b7a: $4b
    rst $00                                       ; $4b7b: $c7
    ld c, e                                       ; $4b7c: $4b
    and e                                         ; $4b7d: $a3
    ld c, e                                       ; $4b7e: $4b
    reti                                          ; $4b7f: $d9


    nop                                           ; $4b80: $00
    add hl, bc                                    ; $4b81: $09
    ld bc, $ffff                                  ; $4b82: $01 $ff $ff
    rst $38                                       ; $4b85: $ff
    rst $38                                       ; $4b86: $ff
    rst $38                                       ; $4b87: $ff
    rst $38                                       ; $4b88: $ff
    rst $38                                       ; $4b89: $ff
    rst $38                                       ; $4b8a: $ff
    sub $00                                       ; $4b8b: $d6 $00
    ld [$ff01], sp                                ; $4b8d: $08 $01 $ff
    rst $38                                       ; $4b90: $ff
    rst $38                                       ; $4b91: $ff
    rst $38                                       ; $4b92: $ff
    rst $38                                       ; $4b93: $ff
    rst $38                                       ; $4b94: $ff
    rst $38                                       ; $4b95: $ff
    rst $38                                       ; $4b96: $ff
    sub $00                                       ; $4b97: $d6 $00
    inc bc                                        ; $4b99: $03
    ld bc, $ffff                                  ; $4b9a: $01 $ff $ff
    rst $38                                       ; $4b9d: $ff
    rst $38                                       ; $4b9e: $ff
    rst $38                                       ; $4b9f: $ff
    rst $38                                       ; $4ba0: $ff
    rst $38                                       ; $4ba1: $ff
    rst $38                                       ; $4ba2: $ff
    call nc, $e700                                ; $4ba3: $d4 $00 $e7
    nop                                           ; $4ba6: $00
    rst $38                                       ; $4ba7: $ff
    rst $38                                       ; $4ba8: $ff
    rst $38                                       ; $4ba9: $ff
    rst $38                                       ; $4baa: $ff
    rst $38                                       ; $4bab: $ff
    rst $38                                       ; $4bac: $ff
    rst $38                                       ; $4bad: $ff
    rst $38                                       ; $4bae: $ff
    db $d3                                        ; $4baf: $d3
    nop                                           ; $4bb0: $00
    ldh a, [rP1]                                  ; $4bb1: $f0 $00
    rst $38                                       ; $4bb3: $ff
    rst $38                                       ; $4bb4: $ff
    rst $38                                       ; $4bb5: $ff
    rst $38                                       ; $4bb6: $ff
    rst $38                                       ; $4bb7: $ff
    rst $38                                       ; $4bb8: $ff
    rst $38                                       ; $4bb9: $ff
    rst $38                                       ; $4bba: $ff
    add hl, de                                    ; $4bbb: $19
    ld bc, $00c6                                  ; $4bbc: $01 $c6 $00
    rst $38                                       ; $4bbf: $ff
    rst $38                                       ; $4bc0: $ff
    rst $38                                       ; $4bc1: $ff
    rst $38                                       ; $4bc2: $ff
    rst $38                                       ; $4bc3: $ff
    rst $38                                       ; $4bc4: $ff
    rst $38                                       ; $4bc5: $ff
    rst $38                                       ; $4bc6: $ff
    push de                                       ; $4bc7: $d5
    nop                                           ; $4bc8: $00
    inc bc                                        ; $4bc9: $03
    ld bc, $ffff                                  ; $4bca: $01 $ff $ff
    rst $38                                       ; $4bcd: $ff
    rst $38                                       ; $4bce: $ff
    rst $38                                       ; $4bcf: $ff
    rst $38                                       ; $4bd0: $ff
    rst $38                                       ; $4bd1: $ff
    rst $38                                       ; $4bd2: $ff
    db $e3                                        ; $4bd3: $e3
    ld c, e                                       ; $4bd4: $4b
    rst $28                                       ; $4bd5: $ef
    ld c, e                                       ; $4bd6: $4b
    ei                                            ; $4bd7: $fb
    ld c, e                                       ; $4bd8: $4b
    rlca                                          ; $4bd9: $07
    ld c, h                                       ; $4bda: $4c
    inc de                                        ; $4bdb: $13
    ld c, h                                       ; $4bdc: $4c
    rra                                           ; $4bdd: $1f
    ld c, h                                       ; $4bde: $4c
    dec hl                                        ; $4bdf: $2b
    ld c, h                                       ; $4be0: $4c
    rlca                                          ; $4be1: $07
    ld c, h                                       ; $4be2: $4c
    ret                                           ; $4be3: $c9


    nop                                           ; $4be4: $00
    pop af                                        ; $4be5: $f1
    nop                                           ; $4be6: $00
    rst $38                                       ; $4be7: $ff
    rst $38                                       ; $4be8: $ff
    rst $38                                       ; $4be9: $ff
    rst $38                                       ; $4bea: $ff
    rst $38                                       ; $4beb: $ff
    rst $38                                       ; $4bec: $ff
    rst $38                                       ; $4bed: $ff
    rst $38                                       ; $4bee: $ff
    call z, $ee00                                 ; $4bef: $cc $00 $ee
    nop                                           ; $4bf2: $00
    rst $38                                       ; $4bf3: $ff
    rst $38                                       ; $4bf4: $ff
    rst $38                                       ; $4bf5: $ff
    rst $38                                       ; $4bf6: $ff
    rst $38                                       ; $4bf7: $ff
    rst $38                                       ; $4bf8: $ff
    rst $38                                       ; $4bf9: $ff
    rst $38                                       ; $4bfa: $ff
    jp nc, $e700                                  ; $4bfb: $d2 $00 $e7

    nop                                           ; $4bfe: $00
    rst $38                                       ; $4bff: $ff
    rst $38                                       ; $4c00: $ff
    rst $38                                       ; $4c01: $ff
    rst $38                                       ; $4c02: $ff
    rst $38                                       ; $4c03: $ff
    rst $38                                       ; $4c04: $ff
    rst $38                                       ; $4c05: $ff
    rst $38                                       ; $4c06: $ff
    cp $00                                        ; $4c07: $fe $00
    xor a                                         ; $4c09: $af
    nop                                           ; $4c0a: $00
    rst $38                                       ; $4c0b: $ff
    rst $38                                       ; $4c0c: $ff
    rst $38                                       ; $4c0d: $ff
    rst $38                                       ; $4c0e: $ff
    rst $38                                       ; $4c0f: $ff
    rst $38                                       ; $4c10: $ff
    rst $38                                       ; $4c11: $ff
    rst $38                                       ; $4c12: $ff
    ld sp, hl                                     ; $4c13: $f9
    nop                                           ; $4c14: $00
    cp c                                          ; $4c15: $b9
    nop                                           ; $4c16: $00
    rst $38                                       ; $4c17: $ff
    rst $38                                       ; $4c18: $ff
    rst $38                                       ; $4c19: $ff
    rst $38                                       ; $4c1a: $ff
    rst $38                                       ; $4c1b: $ff
    rst $38                                       ; $4c1c: $ff
    rst $38                                       ; $4c1d: $ff
    rst $38                                       ; $4c1e: $ff
    dec bc                                        ; $4c1f: $0b
    ld bc, $009a                                  ; $4c20: $01 $9a $00
    rst $38                                       ; $4c23: $ff
    rst $38                                       ; $4c24: $ff
    rst $38                                       ; $4c25: $ff
    rst $38                                       ; $4c26: $ff
    rst $38                                       ; $4c27: $ff
    rst $38                                       ; $4c28: $ff
    rst $38                                       ; $4c29: $ff
    rst $38                                       ; $4c2a: $ff
    adc $00                                       ; $4c2b: $ce $00
    add sp, $00                                   ; $4c2d: $e8 $00
    rst $38                                       ; $4c2f: $ff
    rst $38                                       ; $4c30: $ff
    rst $38                                       ; $4c31: $ff
    rst $38                                       ; $4c32: $ff
    rst $38                                       ; $4c33: $ff
    rst $38                                       ; $4c34: $ff
    rst $38                                       ; $4c35: $ff
    rst $38                                       ; $4c36: $ff
    ld b, a                                       ; $4c37: $47
    ld c, h                                       ; $4c38: $4c
    ld d, e                                       ; $4c39: $53
    ld c, h                                       ; $4c3a: $4c
    ld e, a                                       ; $4c3b: $5f
    ld c, h                                       ; $4c3c: $4c
    ld l, e                                       ; $4c3d: $6b
    ld c, h                                       ; $4c3e: $4c
    ld [hl], a                                    ; $4c3f: $77
    ld c, h                                       ; $4c40: $4c
    add e                                         ; $4c41: $83
    ld c, h                                       ; $4c42: $4c
    adc a                                         ; $4c43: $8f
    ld c, h                                       ; $4c44: $4c
    ld l, e                                       ; $4c45: $6b
    ld c, h                                       ; $4c46: $4c
    push af                                       ; $4c47: $f5
    nop                                           ; $4c48: $00
    jp z, $ff00                                   ; $4c49: $ca $00 $ff

    rst $38                                       ; $4c4c: $ff
    rst $38                                       ; $4c4d: $ff
    rst $38                                       ; $4c4e: $ff
    rst $38                                       ; $4c4f: $ff
    rst $38                                       ; $4c50: $ff
    rst $38                                       ; $4c51: $ff
    rst $38                                       ; $4c52: $ff
    db $f4                                        ; $4c53: $f4
    nop                                           ; $4c54: $00
    add sp, $00                                   ; $4c55: $e8 $00
    rst $38                                       ; $4c57: $ff
    rst $38                                       ; $4c58: $ff
    rst $38                                       ; $4c59: $ff
    rst $38                                       ; $4c5a: $ff
    rst $38                                       ; $4c5b: $ff
    rst $38                                       ; $4c5c: $ff
    rst $38                                       ; $4c5d: $ff
    rst $38                                       ; $4c5e: $ff
    push af                                       ; $4c5f: $f5
    nop                                           ; $4c60: $00
    db $e3                                        ; $4c61: $e3
    nop                                           ; $4c62: $00
    rst $38                                       ; $4c63: $ff
    rst $38                                       ; $4c64: $ff
    rst $38                                       ; $4c65: $ff
    rst $38                                       ; $4c66: $ff
    rst $38                                       ; $4c67: $ff
    rst $38                                       ; $4c68: $ff
    rst $38                                       ; $4c69: $ff
    rst $38                                       ; $4c6a: $ff
    add hl, bc                                    ; $4c6b: $09
    ld bc, $00b8                                  ; $4c6c: $01 $b8 $00
    rst $38                                       ; $4c6f: $ff
    rst $38                                       ; $4c70: $ff
    rst $38                                       ; $4c71: $ff
    rst $38                                       ; $4c72: $ff
    rst $38                                       ; $4c73: $ff
    rst $38                                       ; $4c74: $ff
    rst $38                                       ; $4c75: $ff
    rst $38                                       ; $4c76: $ff
    dec c                                         ; $4c77: $0d
    ld bc, $00c2                                  ; $4c78: $01 $c2 $00
    rst $38                                       ; $4c7b: $ff
    rst $38                                       ; $4c7c: $ff
    rst $38                                       ; $4c7d: $ff
    rst $38                                       ; $4c7e: $ff
    rst $38                                       ; $4c7f: $ff
    rst $38                                       ; $4c80: $ff
    rst $38                                       ; $4c81: $ff
    rst $38                                       ; $4c82: $ff
    inc b                                         ; $4c83: $04
    ld bc, $00a3                                  ; $4c84: $01 $a3 $00
    rst $38                                       ; $4c87: $ff
    rst $38                                       ; $4c88: $ff
    rst $38                                       ; $4c89: $ff
    rst $38                                       ; $4c8a: $ff
    rst $38                                       ; $4c8b: $ff
    rst $38                                       ; $4c8c: $ff
    rst $38                                       ; $4c8d: $ff
    rst $38                                       ; $4c8e: $ff
    rst $30                                       ; $4c8f: $f7
    nop                                           ; $4c90: $00
    db $e3                                        ; $4c91: $e3
    nop                                           ; $4c92: $00
    rst $38                                       ; $4c93: $ff
    rst $38                                       ; $4c94: $ff
    rst $38                                       ; $4c95: $ff
    rst $38                                       ; $4c96: $ff
    rst $38                                       ; $4c97: $ff
    rst $38                                       ; $4c98: $ff
    rst $38                                       ; $4c99: $ff
    rst $38                                       ; $4c9a: $ff
    xor e                                         ; $4c9b: $ab
    ld c, h                                       ; $4c9c: $4c
    or a                                          ; $4c9d: $b7
    ld c, h                                       ; $4c9e: $4c
    jp $cf4c                                      ; $4c9f: $c3 $4c $cf


    ld c, h                                       ; $4ca2: $4c
    db $db                                        ; $4ca3: $db
    ld c, h                                       ; $4ca4: $4c
    rst $20                                       ; $4ca5: $e7
    ld c, h                                       ; $4ca6: $4c
    di                                            ; $4ca7: $f3
    ld c, h                                       ; $4ca8: $4c
    rst $08                                       ; $4ca9: $cf
    ld c, h                                       ; $4caa: $4c
    inc [hl]                                      ; $4cab: $34
    ld bc, $00e9                                  ; $4cac: $01 $e9 $00
    rst $38                                       ; $4caf: $ff
    rst $38                                       ; $4cb0: $ff
    rst $38                                       ; $4cb1: $ff
    rst $38                                       ; $4cb2: $ff
    rst $38                                       ; $4cb3: $ff
    rst $38                                       ; $4cb4: $ff
    rst $38                                       ; $4cb5: $ff
    rst $38                                       ; $4cb6: $ff
    inc sp                                        ; $4cb7: $33
    ld bc, $00e2                                  ; $4cb8: $01 $e2 $00
    rst $38                                       ; $4cbb: $ff
    rst $38                                       ; $4cbc: $ff
    rst $38                                       ; $4cbd: $ff
    rst $38                                       ; $4cbe: $ff
    rst $38                                       ; $4cbf: $ff
    rst $38                                       ; $4cc0: $ff
    rst $38                                       ; $4cc1: $ff
    rst $38                                       ; $4cc2: $ff
    dec l                                         ; $4cc3: $2d
    ld bc, $00da                                  ; $4cc4: $01 $da $00
    rst $38                                       ; $4cc7: $ff
    rst $38                                       ; $4cc8: $ff
    rst $38                                       ; $4cc9: $ff
    rst $38                                       ; $4cca: $ff
    rst $38                                       ; $4ccb: $ff
    rst $38                                       ; $4ccc: $ff
    rst $38                                       ; $4ccd: $ff
    rst $38                                       ; $4cce: $ff
    rlca                                          ; $4ccf: $07
    ld bc, $00a1                                  ; $4cd0: $01 $a1 $00
    rst $38                                       ; $4cd3: $ff
    rst $38                                       ; $4cd4: $ff
    rst $38                                       ; $4cd5: $ff
    rst $38                                       ; $4cd6: $ff
    rst $38                                       ; $4cd7: $ff
    rst $38                                       ; $4cd8: $ff
    rst $38                                       ; $4cd9: $ff
    rst $38                                       ; $4cda: $ff
    rrca                                          ; $4cdb: $0f
    ld bc, $00ac                                  ; $4cdc: $01 $ac $00
    rst $38                                       ; $4cdf: $ff
    rst $38                                       ; $4ce0: $ff
    rst $38                                       ; $4ce1: $ff
    rst $38                                       ; $4ce2: $ff
    rst $38                                       ; $4ce3: $ff
    rst $38                                       ; $4ce4: $ff
    rst $38                                       ; $4ce5: $ff
    rst $38                                       ; $4ce6: $ff
    rst $30                                       ; $4ce7: $f7
    nop                                           ; $4ce8: $00
    adc e                                         ; $4ce9: $8b
    nop                                           ; $4cea: $00
    rst $38                                       ; $4ceb: $ff
    rst $38                                       ; $4cec: $ff
    rst $38                                       ; $4ced: $ff
    rst $38                                       ; $4cee: $ff
    rst $38                                       ; $4cef: $ff
    rst $38                                       ; $4cf0: $ff
    rst $38                                       ; $4cf1: $ff
    rst $38                                       ; $4cf2: $ff
    dec l                                         ; $4cf3: $2d
    ld bc, $00da                                  ; $4cf4: $01 $da $00
    rst $38                                       ; $4cf7: $ff
    rst $38                                       ; $4cf8: $ff
    rst $38                                       ; $4cf9: $ff
    rst $38                                       ; $4cfa: $ff
    rst $38                                       ; $4cfb: $ff
    rst $38                                       ; $4cfc: $ff
    rst $38                                       ; $4cfd: $ff
    rst $38                                       ; $4cfe: $ff
    rrca                                          ; $4cff: $0f
    ld c, l                                       ; $4d00: $4d
    rrca                                          ; $4d01: $0f
    ld c, l                                       ; $4d02: $4d
    rrca                                          ; $4d03: $0f
    ld c, l                                       ; $4d04: $4d
    rrca                                          ; $4d05: $0f
    ld c, l                                       ; $4d06: $4d
    rrca                                          ; $4d07: $0f
    ld c, l                                       ; $4d08: $4d
    rrca                                          ; $4d09: $0f
    ld c, l                                       ; $4d0a: $4d
    rrca                                          ; $4d0b: $0f
    ld c, l                                       ; $4d0c: $4d
    rrca                                          ; $4d0d: $0f
    ld c, l                                       ; $4d0e: $4d
    rst $38                                       ; $4d0f: $ff
    rst $38                                       ; $4d10: $ff
    rst $38                                       ; $4d11: $ff
    rst $38                                       ; $4d12: $ff
    rst $38                                       ; $4d13: $ff
    rst $38                                       ; $4d14: $ff
    rst $38                                       ; $4d15: $ff
    rst $38                                       ; $4d16: $ff
    rst $38                                       ; $4d17: $ff
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
    rst $38                                       ; $4d28: $ff
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
    rst $38                                       ; $4d39: $ff
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
    rst $38                                       ; $4d4a: $ff
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
    rst $38                                       ; $4d5b: $ff
    rst $38                                       ; $4d5c: $ff
    rst $38                                       ; $4d5d: $ff
    rst $38                                       ; $4d5e: $ff
    rst $38                                       ; $4d5f: $ff
    rst $38                                       ; $4d60: $ff
    rst $38                                       ; $4d61: $ff
    rst $38                                       ; $4d62: $ff
    ld [hl], e                                    ; $4d63: $73
    ld c, l                                       ; $4d64: $4d
    ld [hl], e                                    ; $4d65: $73
    ld c, l                                       ; $4d66: $4d
    ld [hl], e                                    ; $4d67: $73
    ld c, l                                       ; $4d68: $4d
    ld [hl], e                                    ; $4d69: $73
    ld c, l                                       ; $4d6a: $4d
    ld [hl], e                                    ; $4d6b: $73
    ld c, l                                       ; $4d6c: $4d
    ld [hl], e                                    ; $4d6d: $73
    ld c, l                                       ; $4d6e: $4d
    ld [hl], e                                    ; $4d6f: $73
    ld c, l                                       ; $4d70: $4d
    ld [hl], e                                    ; $4d71: $73
    ld c, l                                       ; $4d72: $4d
    rst $38                                       ; $4d73: $ff
    rst $38                                       ; $4d74: $ff
    rst $38                                       ; $4d75: $ff
    rst $38                                       ; $4d76: $ff
    rst $38                                       ; $4d77: $ff
    rst $38                                       ; $4d78: $ff
    rst $38                                       ; $4d79: $ff
    rst $38                                       ; $4d7a: $ff
    rst $38                                       ; $4d7b: $ff
    rst $38                                       ; $4d7c: $ff
    rst $38                                       ; $4d7d: $ff
    rst $38                                       ; $4d7e: $ff
    rst $38                                       ; $4d7f: $ff
    rst $38                                       ; $4d80: $ff
    rst $38                                       ; $4d81: $ff
    rst $38                                       ; $4d82: $ff
    rst $38                                       ; $4d83: $ff
    rst $38                                       ; $4d84: $ff
    rst $38                                       ; $4d85: $ff
    rst $38                                       ; $4d86: $ff
    rst $38                                       ; $4d87: $ff
    rst $38                                       ; $4d88: $ff
    rst $38                                       ; $4d89: $ff
    rst $38                                       ; $4d8a: $ff
    rst $38                                       ; $4d8b: $ff
    rst $38                                       ; $4d8c: $ff
    rst $38                                       ; $4d8d: $ff
    rst $38                                       ; $4d8e: $ff
    rst $38                                       ; $4d8f: $ff
    rst $38                                       ; $4d90: $ff
    rst $38                                       ; $4d91: $ff
    rst $38                                       ; $4d92: $ff
    rst $38                                       ; $4d93: $ff
    rst $38                                       ; $4d94: $ff
    rst $38                                       ; $4d95: $ff
    rst $38                                       ; $4d96: $ff
    rst $38                                       ; $4d97: $ff
    rst $38                                       ; $4d98: $ff
    rst $38                                       ; $4d99: $ff
    rst $38                                       ; $4d9a: $ff
    rst $38                                       ; $4d9b: $ff
    rst $38                                       ; $4d9c: $ff
    rst $38                                       ; $4d9d: $ff
    rst $38                                       ; $4d9e: $ff
    rst $38                                       ; $4d9f: $ff
    rst $38                                       ; $4da0: $ff
    rst $38                                       ; $4da1: $ff
    rst $38                                       ; $4da2: $ff
    rst $38                                       ; $4da3: $ff
    rst $38                                       ; $4da4: $ff
    rst $38                                       ; $4da5: $ff
    rst $38                                       ; $4da6: $ff
    rst $38                                       ; $4da7: $ff
    rst $38                                       ; $4da8: $ff
    rst $38                                       ; $4da9: $ff
    rst $38                                       ; $4daa: $ff
    rst $38                                       ; $4dab: $ff
    rst $38                                       ; $4dac: $ff
    rst $38                                       ; $4dad: $ff
    rst $38                                       ; $4dae: $ff
    rst $38                                       ; $4daf: $ff
    rst $38                                       ; $4db0: $ff
    rst $38                                       ; $4db1: $ff
    rst $38                                       ; $4db2: $ff
    rst $38                                       ; $4db3: $ff
    rst $38                                       ; $4db4: $ff
    rst $38                                       ; $4db5: $ff
    rst $38                                       ; $4db6: $ff
    rst $38                                       ; $4db7: $ff
    rst $38                                       ; $4db8: $ff
    rst $38                                       ; $4db9: $ff
    rst $38                                       ; $4dba: $ff
    rst $38                                       ; $4dbb: $ff
    rst $38                                       ; $4dbc: $ff
    rst $38                                       ; $4dbd: $ff
    rst $38                                       ; $4dbe: $ff
    rst $38                                       ; $4dbf: $ff
    rst $38                                       ; $4dc0: $ff
    rst $38                                       ; $4dc1: $ff
    rst $38                                       ; $4dc2: $ff
    rst $38                                       ; $4dc3: $ff
    rst $38                                       ; $4dc4: $ff
    rst $38                                       ; $4dc5: $ff
    rst $38                                       ; $4dc6: $ff
    rst $10                                       ; $4dc7: $d7
    ld c, l                                       ; $4dc8: $4d
    db $e3                                        ; $4dc9: $e3
    ld c, l                                       ; $4dca: $4d
    rst $28                                       ; $4dcb: $ef
    ld c, l                                       ; $4dcc: $4d
    ei                                            ; $4dcd: $fb
    ld c, l                                       ; $4dce: $4d
    rlca                                          ; $4dcf: $07
    ld c, [hl]                                    ; $4dd0: $4e
    inc de                                        ; $4dd1: $13
    ld c, [hl]                                    ; $4dd2: $4e
    rra                                           ; $4dd3: $1f
    ld c, [hl]                                    ; $4dd4: $4e
    ei                                            ; $4dd5: $fb
    ld c, l                                       ; $4dd6: $4d
    ld d, $01                                     ; $4dd7: $16 $01
    or l                                          ; $4dd9: $b5
    nop                                           ; $4dda: $00
    rst $38                                       ; $4ddb: $ff
    rst $38                                       ; $4ddc: $ff
    rst $38                                       ; $4ddd: $ff
    rst $38                                       ; $4dde: $ff
    rst $38                                       ; $4ddf: $ff
    rst $38                                       ; $4de0: $ff
    rst $38                                       ; $4de1: $ff
    rst $38                                       ; $4de2: $ff
    dec d                                         ; $4de3: $15
    ld bc, $00d1                                  ; $4de4: $01 $d1 $00
    rst $38                                       ; $4de7: $ff
    rst $38                                       ; $4de8: $ff
    rst $38                                       ; $4de9: $ff
    rst $38                                       ; $4dea: $ff
    rst $38                                       ; $4deb: $ff
    rst $38                                       ; $4dec: $ff
    rst $38                                       ; $4ded: $ff
    rst $38                                       ; $4dee: $ff
    inc de                                        ; $4def: $13
    ld bc, $00c8                                  ; $4df0: $01 $c8 $00
    rst $38                                       ; $4df3: $ff
    rst $38                                       ; $4df4: $ff
    rst $38                                       ; $4df5: $ff
    rst $38                                       ; $4df6: $ff
    rst $38                                       ; $4df7: $ff
    rst $38                                       ; $4df8: $ff
    rst $38                                       ; $4df9: $ff
    rst $38                                       ; $4dfa: $ff
    rla                                           ; $4dfb: $17
    ld bc, $009f                                  ; $4dfc: $01 $9f $00
    rst $38                                       ; $4dff: $ff
    rst $38                                       ; $4e00: $ff
    rst $38                                       ; $4e01: $ff
    rst $38                                       ; $4e02: $ff
    rst $38                                       ; $4e03: $ff
    rst $38                                       ; $4e04: $ff
    rst $38                                       ; $4e05: $ff
    rst $38                                       ; $4e06: $ff
    ld a, [de]                                    ; $4e07: $1a
    ld bc, $00a9                                  ; $4e08: $01 $a9 $00
    rst $38                                       ; $4e0b: $ff
    rst $38                                       ; $4e0c: $ff
    rst $38                                       ; $4e0d: $ff
    rst $38                                       ; $4e0e: $ff
    rst $38                                       ; $4e0f: $ff
    rst $38                                       ; $4e10: $ff
    rst $38                                       ; $4e11: $ff
    rst $38                                       ; $4e12: $ff
    sbc $00                                       ; $4e13: $de $00
    adc h                                         ; $4e15: $8c
    nop                                           ; $4e16: $00
    rst $38                                       ; $4e17: $ff
    rst $38                                       ; $4e18: $ff
    rst $38                                       ; $4e19: $ff
    rst $38                                       ; $4e1a: $ff
    rst $38                                       ; $4e1b: $ff
    rst $38                                       ; $4e1c: $ff
    rst $38                                       ; $4e1d: $ff
    rst $38                                       ; $4e1e: $ff
    ld d, $01                                     ; $4e1f: $16 $01
    call z, $ff00                                 ; $4e21: $cc $00 $ff
    rst $38                                       ; $4e24: $ff
    rst $38                                       ; $4e25: $ff
    rst $38                                       ; $4e26: $ff
    rst $38                                       ; $4e27: $ff
    rst $38                                       ; $4e28: $ff
    rst $38                                       ; $4e29: $ff
    rst $38                                       ; $4e2a: $ff
    dec sp                                        ; $4e2b: $3b
    ld c, [hl]                                    ; $4e2c: $4e
    ld b, a                                       ; $4e2d: $47
    ld c, [hl]                                    ; $4e2e: $4e
    ld d, e                                       ; $4e2f: $53
    ld c, [hl]                                    ; $4e30: $4e
    ld e, a                                       ; $4e31: $5f
    ld c, [hl]                                    ; $4e32: $4e
    ld l, e                                       ; $4e33: $6b
    ld c, [hl]                                    ; $4e34: $4e
    ld [hl], a                                    ; $4e35: $77
    ld c, [hl]                                    ; $4e36: $4e
    add e                                         ; $4e37: $83
    ld c, [hl]                                    ; $4e38: $4e
    ld e, a                                       ; $4e39: $5f
    ld c, [hl]                                    ; $4e3a: $4e
    jr z, jr_03d_4e3e                             ; $4e3b: $28 $01

    inc c                                         ; $4e3d: $0c

jr_03d_4e3e:
    ld bc, $00de                                  ; $4e3e: $01 $de $00
    cp h                                          ; $4e41: $bc
    nop                                           ; $4e42: $00
    rst $38                                       ; $4e43: $ff
    rst $38                                       ; $4e44: $ff
    rst $38                                       ; $4e45: $ff
    rst $38                                       ; $4e46: $ff
    ld a, [de]                                    ; $4e47: $1a
    ld bc, $00f9                                  ; $4e48: $01 $f9 $00
    db $db                                        ; $4e4b: $db
    nop                                           ; $4e4c: $00
    or d                                          ; $4e4d: $b2
    nop                                           ; $4e4e: $00
    rst $38                                       ; $4e4f: $ff
    rst $38                                       ; $4e50: $ff
    rst $38                                       ; $4e51: $ff
    rst $38                                       ; $4e52: $ff
    add hl, de                                    ; $4e53: $19
    ld bc, $00f4                                  ; $4e54: $01 $f4 $00
    rst $18                                       ; $4e57: $df
    nop                                           ; $4e58: $00
    xor a                                         ; $4e59: $af
    nop                                           ; $4e5a: $00
    rst $38                                       ; $4e5b: $ff
    rst $38                                       ; $4e5c: $ff
    rst $38                                       ; $4e5d: $ff
    rst $38                                       ; $4e5e: $ff
    db $dd                                        ; $4e5f: $dd
    nop                                           ; $4e60: $00
    ret z                                         ; $4e61: $c8

    nop                                           ; $4e62: $00
    rst $38                                       ; $4e63: $ff
    rst $38                                       ; $4e64: $ff
    rst $38                                       ; $4e65: $ff
    rst $38                                       ; $4e66: $ff
    rst $38                                       ; $4e67: $ff
    rst $38                                       ; $4e68: $ff
    rst $38                                       ; $4e69: $ff
    rst $38                                       ; $4e6a: $ff
    ld [c], a                                     ; $4e6b: $e2
    nop                                           ; $4e6c: $00
    pop de                                        ; $4e6d: $d1
    nop                                           ; $4e6e: $00
    rst $38                                       ; $4e6f: $ff
    rst $38                                       ; $4e70: $ff
    rst $38                                       ; $4e71: $ff
    rst $38                                       ; $4e72: $ff
    rst $38                                       ; $4e73: $ff
    rst $38                                       ; $4e74: $ff
    rst $38                                       ; $4e75: $ff
    rst $38                                       ; $4e76: $ff
    call c, $b400                                 ; $4e77: $dc $00 $b4
    nop                                           ; $4e7a: $00
    rst $38                                       ; $4e7b: $ff
    rst $38                                       ; $4e7c: $ff
    rst $38                                       ; $4e7d: $ff
    rst $38                                       ; $4e7e: $ff
    rst $38                                       ; $4e7f: $ff
    rst $38                                       ; $4e80: $ff
    rst $38                                       ; $4e81: $ff
    rst $38                                       ; $4e82: $ff
    dec d                                         ; $4e83: $15
    ld bc, $00f4                                  ; $4e84: $01 $f4 $00
    rst $38                                       ; $4e87: $ff
    rst $38                                       ; $4e88: $ff
    rst $38                                       ; $4e89: $ff
    rst $38                                       ; $4e8a: $ff
    rst $38                                       ; $4e8b: $ff
    rst $38                                       ; $4e8c: $ff
    rst $38                                       ; $4e8d: $ff
    rst $38                                       ; $4e8e: $ff
    sbc a                                         ; $4e8f: $9f
    ld c, [hl]                                    ; $4e90: $4e
    xor e                                         ; $4e91: $ab
    ld c, [hl]                                    ; $4e92: $4e
    or a                                          ; $4e93: $b7
    ld c, [hl]                                    ; $4e94: $4e
    jp $cf4e                                      ; $4e95: $c3 $4e $cf


    ld c, [hl]                                    ; $4e98: $4e
    db $db                                        ; $4e99: $db
    ld c, [hl]                                    ; $4e9a: $4e
    rst $20                                       ; $4e9b: $e7
    ld c, [hl]                                    ; $4e9c: $4e
    jp $e74e                                      ; $4e9d: $c3 $4e $e7


    nop                                           ; $4ea0: $00
    pop af                                        ; $4ea1: $f1
    nop                                           ; $4ea2: $00
    rst $38                                       ; $4ea3: $ff
    rst $38                                       ; $4ea4: $ff
    rst $38                                       ; $4ea5: $ff
    rst $38                                       ; $4ea6: $ff
    rst $38                                       ; $4ea7: $ff
    rst $38                                       ; $4ea8: $ff
    rst $38                                       ; $4ea9: $ff
    rst $38                                       ; $4eaa: $ff
    db $dd                                        ; $4eab: $dd
    nop                                           ; $4eac: $00
    ld a, [$ff00]                                 ; $4ead: $fa $00 $ff
    rst $38                                       ; $4eb0: $ff
    rst $38                                       ; $4eb1: $ff
    rst $38                                       ; $4eb2: $ff
    rst $38                                       ; $4eb3: $ff
    rst $38                                       ; $4eb4: $ff
    rst $38                                       ; $4eb5: $ff
    rst $38                                       ; $4eb6: $ff
    db $dd                                        ; $4eb7: $dd
    nop                                           ; $4eb8: $00
    push af                                       ; $4eb9: $f5
    nop                                           ; $4eba: $00
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    rst $38                                       ; $4ebd: $ff
    rst $38                                       ; $4ebe: $ff
    rst $38                                       ; $4ebf: $ff
    rst $38                                       ; $4ec0: $ff
    rst $38                                       ; $4ec1: $ff
    rst $38                                       ; $4ec2: $ff
    push hl                                       ; $4ec3: $e5
    nop                                           ; $4ec4: $00
    rst $00                                       ; $4ec5: $c7
    nop                                           ; $4ec6: $00
    rst $38                                       ; $4ec7: $ff
    rst $38                                       ; $4ec8: $ff
    rst $38                                       ; $4ec9: $ff
    rst $38                                       ; $4eca: $ff
    rst $38                                       ; $4ecb: $ff
    rst $38                                       ; $4ecc: $ff
    rst $38                                       ; $4ecd: $ff
    rst $38                                       ; $4ece: $ff
    ldh [rP1], a                                  ; $4ecf: $e0 $00
    jp nc, $ff00                                  ; $4ed1: $d2 $00 $ff

    rst $38                                       ; $4ed4: $ff
    rst $38                                       ; $4ed5: $ff
    rst $38                                       ; $4ed6: $ff
    rst $38                                       ; $4ed7: $ff
    rst $38                                       ; $4ed8: $ff
    rst $38                                       ; $4ed9: $ff
    rst $38                                       ; $4eda: $ff
    ld hl, sp+$00                                 ; $4edb: $f8 $00
    or d                                          ; $4edd: $b2
    nop                                           ; $4ede: $00
    rst $38                                       ; $4edf: $ff
    rst $38                                       ; $4ee0: $ff
    rst $38                                       ; $4ee1: $ff
    rst $38                                       ; $4ee2: $ff
    rst $38                                       ; $4ee3: $ff
    rst $38                                       ; $4ee4: $ff
    rst $38                                       ; $4ee5: $ff
    rst $38                                       ; $4ee6: $ff
    db $db                                        ; $4ee7: $db
    nop                                           ; $4ee8: $00
    or $00                                        ; $4ee9: $f6 $00
    rst $38                                       ; $4eeb: $ff
    rst $38                                       ; $4eec: $ff
    rst $38                                       ; $4eed: $ff
    rst $38                                       ; $4eee: $ff
    rst $38                                       ; $4eef: $ff
    rst $38                                       ; $4ef0: $ff
    rst $38                                       ; $4ef1: $ff
    rst $38                                       ; $4ef2: $ff
    inc bc                                        ; $4ef3: $03
    ld c, a                                       ; $4ef4: $4f
    rrca                                          ; $4ef5: $0f
    ld c, a                                       ; $4ef6: $4f
    dec de                                        ; $4ef7: $1b
    ld c, a                                       ; $4ef8: $4f
    daa                                           ; $4ef9: $27
    ld c, a                                       ; $4efa: $4f
    inc sp                                        ; $4efb: $33
    ld c, a                                       ; $4efc: $4f
    ccf                                           ; $4efd: $3f
    ld c, a                                       ; $4efe: $4f
    ld c, e                                       ; $4eff: $4b
    ld c, a                                       ; $4f00: $4f
    daa                                           ; $4f01: $27
    ld c, a                                       ; $4f02: $4f
    ld hl, $fd01                                  ; $4f03: $21 $01 $fd
    nop                                           ; $4f06: $00
    rst $38                                       ; $4f07: $ff
    rst $38                                       ; $4f08: $ff
    rst $38                                       ; $4f09: $ff
    rst $38                                       ; $4f0a: $ff
    rst $38                                       ; $4f0b: $ff
    rst $38                                       ; $4f0c: $ff
    rst $38                                       ; $4f0d: $ff
    rst $38                                       ; $4f0e: $ff
    add hl, de                                    ; $4f0f: $19
    ld bc, $00f2                                  ; $4f10: $01 $f2 $00
    rst $38                                       ; $4f13: $ff
    rst $38                                       ; $4f14: $ff
    rst $38                                       ; $4f15: $ff
    rst $38                                       ; $4f16: $ff
    rst $38                                       ; $4f17: $ff
    rst $38                                       ; $4f18: $ff
    rst $38                                       ; $4f19: $ff
    rst $38                                       ; $4f1a: $ff
    inc d                                         ; $4f1b: $14
    ld bc, $00ec                                  ; $4f1c: $01 $ec $00
    rst $38                                       ; $4f1f: $ff
    rst $38                                       ; $4f20: $ff
    rst $38                                       ; $4f21: $ff
    rst $38                                       ; $4f22: $ff
    rst $38                                       ; $4f23: $ff
    rst $38                                       ; $4f24: $ff
    rst $38                                       ; $4f25: $ff
    rst $38                                       ; $4f26: $ff
    add hl, bc                                    ; $4f27: $09
    ld bc, $00ba                                  ; $4f28: $01 $ba $00
    rst $38                                       ; $4f2b: $ff
    rst $38                                       ; $4f2c: $ff
    rst $38                                       ; $4f2d: $ff
    rst $38                                       ; $4f2e: $ff
    rst $38                                       ; $4f2f: $ff
    rst $38                                       ; $4f30: $ff
    rst $38                                       ; $4f31: $ff
    rst $38                                       ; $4f32: $ff
    dec bc                                        ; $4f33: $0b
    ld bc, $00c5                                  ; $4f34: $01 $c5 $00
    rst $38                                       ; $4f37: $ff
    rst $38                                       ; $4f38: $ff
    rst $38                                       ; $4f39: $ff
    rst $38                                       ; $4f3a: $ff
    rst $38                                       ; $4f3b: $ff
    rst $38                                       ; $4f3c: $ff
    rst $38                                       ; $4f3d: $ff
    rst $38                                       ; $4f3e: $ff
    rst $38                                       ; $4f3f: $ff
    nop                                           ; $4f40: $00
    and h                                         ; $4f41: $a4
    nop                                           ; $4f42: $00
    rst $38                                       ; $4f43: $ff
    rst $38                                       ; $4f44: $ff
    rst $38                                       ; $4f45: $ff
    rst $38                                       ; $4f46: $ff
    rst $38                                       ; $4f47: $ff
    rst $38                                       ; $4f48: $ff
    rst $38                                       ; $4f49: $ff
    rst $38                                       ; $4f4a: $ff
    inc de                                        ; $4f4b: $13
    ld bc, $00eb                                  ; $4f4c: $01 $eb $00
    rst $38                                       ; $4f4f: $ff
    rst $38                                       ; $4f50: $ff
    rst $38                                       ; $4f51: $ff
    rst $38                                       ; $4f52: $ff
    rst $38                                       ; $4f53: $ff
    rst $38                                       ; $4f54: $ff
    rst $38                                       ; $4f55: $ff
    rst $38                                       ; $4f56: $ff
    ld h, a                                       ; $4f57: $67
    ld c, a                                       ; $4f58: $4f
    ld [hl], e                                    ; $4f59: $73
    ld c, a                                       ; $4f5a: $4f
    ld a, a                                       ; $4f5b: $7f
    ld c, a                                       ; $4f5c: $4f
    adc e                                         ; $4f5d: $8b
    ld c, a                                       ; $4f5e: $4f
    sub a                                         ; $4f5f: $97
    ld c, a                                       ; $4f60: $4f
    and e                                         ; $4f61: $a3
    ld c, a                                       ; $4f62: $4f
    xor a                                         ; $4f63: $af
    ld c, a                                       ; $4f64: $4f
    adc e                                         ; $4f65: $8b
    ld c, a                                       ; $4f66: $4f
    rlc b                                         ; $4f67: $cb $00
    rst $20                                       ; $4f69: $e7
    nop                                           ; $4f6a: $00
    rst $38                                       ; $4f6b: $ff
    rst $38                                       ; $4f6c: $ff
    rst $38                                       ; $4f6d: $ff
    rst $38                                       ; $4f6e: $ff
    rst $38                                       ; $4f6f: $ff
    rst $38                                       ; $4f70: $ff
    rst $38                                       ; $4f71: $ff
    rst $38                                       ; $4f72: $ff
    db $f4                                        ; $4f73: $f4
    nop                                           ; $4f74: $00
    ld hl, sp+$00                                 ; $4f75: $f8 $00
    rst $38                                       ; $4f77: $ff
    rst $38                                       ; $4f78: $ff
    rst $38                                       ; $4f79: $ff
    rst $38                                       ; $4f7a: $ff
    rst $38                                       ; $4f7b: $ff
    rst $38                                       ; $4f7c: $ff
    rst $38                                       ; $4f7d: $ff
    rst $38                                       ; $4f7e: $ff
    db $f4                                        ; $4f7f: $f4
    nop                                           ; $4f80: $00
    di                                            ; $4f81: $f3
    nop                                           ; $4f82: $00
    rst $38                                       ; $4f83: $ff
    rst $38                                       ; $4f84: $ff
    rst $38                                       ; $4f85: $ff
    rst $38                                       ; $4f86: $ff
    rst $38                                       ; $4f87: $ff
    rst $38                                       ; $4f88: $ff
    rst $38                                       ; $4f89: $ff
    rst $38                                       ; $4f8a: $ff
    sbc $00                                       ; $4f8b: $de $00
    ret z                                         ; $4f8d: $c8

    nop                                           ; $4f8e: $00
    rst $38                                       ; $4f8f: $ff
    rst $38                                       ; $4f90: $ff
    rst $38                                       ; $4f91: $ff
    rst $38                                       ; $4f92: $ff
    rst $38                                       ; $4f93: $ff
    rst $38                                       ; $4f94: $ff
    rst $38                                       ; $4f95: $ff
    rst $38                                       ; $4f96: $ff
    db $e4                                        ; $4f97: $e4
    nop                                           ; $4f98: $00
    pop de                                        ; $4f99: $d1
    nop                                           ; $4f9a: $00
    rst $38                                       ; $4f9b: $ff
    rst $38                                       ; $4f9c: $ff
    rst $38                                       ; $4f9d: $ff
    rst $38                                       ; $4f9e: $ff
    rst $38                                       ; $4f9f: $ff
    rst $38                                       ; $4fa0: $ff
    rst $38                                       ; $4fa1: $ff
    rst $38                                       ; $4fa2: $ff
    call nc, $b500                                ; $4fa3: $d4 $00 $b5
    nop                                           ; $4fa6: $00
    rst $38                                       ; $4fa7: $ff
    rst $38                                       ; $4fa8: $ff
    rst $38                                       ; $4fa9: $ff
    rst $38                                       ; $4faa: $ff
    rst $38                                       ; $4fab: $ff
    rst $38                                       ; $4fac: $ff
    rst $38                                       ; $4fad: $ff
    rst $38                                       ; $4fae: $ff
    db $f4                                        ; $4faf: $f4
    nop                                           ; $4fb0: $00
    di                                            ; $4fb1: $f3
    nop                                           ; $4fb2: $00
    rst $38                                       ; $4fb3: $ff
    rst $38                                       ; $4fb4: $ff
    rst $38                                       ; $4fb5: $ff
    rst $38                                       ; $4fb6: $ff
    rst $38                                       ; $4fb7: $ff
    rst $38                                       ; $4fb8: $ff
    rst $38                                       ; $4fb9: $ff
    rst $38                                       ; $4fba: $ff
    bit 1, a                                      ; $4fbb: $cb $4f
    rst $10                                       ; $4fbd: $d7
    ld c, a                                       ; $4fbe: $4f
    db $e3                                        ; $4fbf: $e3
    ld c, a                                       ; $4fc0: $4f
    rst $28                                       ; $4fc1: $ef
    ld c, a                                       ; $4fc2: $4f
    ei                                            ; $4fc3: $fb
    ld c, a                                       ; $4fc4: $4f
    rlca                                          ; $4fc5: $07
    ld d, b                                       ; $4fc6: $50
    inc de                                        ; $4fc7: $13
    ld d, b                                       ; $4fc8: $50
    rst $28                                       ; $4fc9: $ef
    ld c, a                                       ; $4fca: $4f
    db $ed                                        ; $4fcb: $ed
    nop                                           ; $4fcc: $00
    jr z, @+$03                                   ; $4fcd: $28 $01

    add sp, $00                                   ; $4fcf: $e8 $00
    or l                                          ; $4fd1: $b5
    nop                                           ; $4fd2: $00
    rst $38                                       ; $4fd3: $ff
    rst $38                                       ; $4fd4: $ff
    rst $38                                       ; $4fd5: $ff
    rst $38                                       ; $4fd6: $ff
    inc h                                         ; $4fd7: $24
    ld bc, $00f3                                  ; $4fd8: $01 $f3 $00
    rst $38                                       ; $4fdb: $ff
    rst $38                                       ; $4fdc: $ff
    rst $38                                       ; $4fdd: $ff
    rst $38                                       ; $4fde: $ff
    rst $38                                       ; $4fdf: $ff
    rst $38                                       ; $4fe0: $ff
    rst $38                                       ; $4fe1: $ff
    rst $38                                       ; $4fe2: $ff
    jr nz, jr_03d_4fe6                            ; $4fe3: $20 $01

    db $ed                                        ; $4fe5: $ed

jr_03d_4fe6:
    nop                                           ; $4fe6: $00
    rst $38                                       ; $4fe7: $ff
    rst $38                                       ; $4fe8: $ff
    rst $38                                       ; $4fe9: $ff
    rst $38                                       ; $4fea: $ff
    rst $38                                       ; $4feb: $ff
    rst $38                                       ; $4fec: $ff
    rst $38                                       ; $4fed: $ff
    rst $38                                       ; $4fee: $ff
    ld a, [c]                                     ; $4fef: $f2
    nop                                           ; $4ff0: $00
    cp [hl]                                       ; $4ff1: $be
    nop                                           ; $4ff2: $00
    rst $38                                       ; $4ff3: $ff
    rst $38                                       ; $4ff4: $ff
    rst $38                                       ; $4ff5: $ff
    rst $38                                       ; $4ff6: $ff
    rst $38                                       ; $4ff7: $ff
    rst $38                                       ; $4ff8: $ff
    rst $38                                       ; $4ff9: $ff
    rst $38                                       ; $4ffa: $ff
    dec b                                         ; $4ffb: $05
    ld bc, $00c8                                  ; $4ffc: $01 $c8 $00
    rst $38                                       ; $4fff: $ff
    rst $38                                       ; $5000: $ff
    rst $38                                       ; $5001: $ff
    rst $38                                       ; $5002: $ff
    rst $38                                       ; $5003: $ff
    rst $38                                       ; $5004: $ff
    rst $38                                       ; $5005: $ff
    rst $38                                       ; $5006: $ff
    ldh [rP1], a                                  ; $5007: $e0 $00
    or l                                          ; $5009: $b5
    nop                                           ; $500a: $00
    rst $38                                       ; $500b: $ff
    rst $38                                       ; $500c: $ff
    rst $38                                       ; $500d: $ff
    rst $38                                       ; $500e: $ff
    rst $38                                       ; $500f: $ff
    rst $38                                       ; $5010: $ff
    rst $38                                       ; $5011: $ff
    rst $38                                       ; $5012: $ff
    ld [hl+], a                                   ; $5013: $22
    ld bc, $00ed                                  ; $5014: $01 $ed $00
    rst $38                                       ; $5017: $ff
    rst $38                                       ; $5018: $ff
    rst $38                                       ; $5019: $ff
    rst $38                                       ; $501a: $ff
    rst $38                                       ; $501b: $ff
    rst $38                                       ; $501c: $ff
    rst $38                                       ; $501d: $ff
    rst $38                                       ; $501e: $ff
    cpl                                           ; $501f: $2f
    ld d, b                                       ; $5020: $50
    dec sp                                        ; $5021: $3b
    ld d, b                                       ; $5022: $50
    ld b, a                                       ; $5023: $47
    ld d, b                                       ; $5024: $50
    ld d, e                                       ; $5025: $53
    ld d, b                                       ; $5026: $50
    ld e, a                                       ; $5027: $5f
    ld d, b                                       ; $5028: $50
    ld l, e                                       ; $5029: $6b
    ld d, b                                       ; $502a: $50
    ld [hl], a                                    ; $502b: $77
    ld d, b                                       ; $502c: $50
    ld d, e                                       ; $502d: $53
    ld d, b                                       ; $502e: $50
    db $ec                                        ; $502f: $ec
    nop                                           ; $5030: $00
    add hl, bc                                    ; $5031: $09
    ld bc, $0127                                  ; $5032: $01 $27 $01
    and c                                         ; $5035: $a1
    nop                                           ; $5036: $00
    rst $38                                       ; $5037: $ff
    rst $38                                       ; $5038: $ff
    rst $38                                       ; $5039: $ff
    rst $38                                       ; $503a: $ff
    ldh a, [rP1]                                  ; $503b: $f0 $00
    ld hl, sp+$00                                 ; $503d: $f8 $00
    rst $38                                       ; $503f: $ff
    rst $38                                       ; $5040: $ff
    rst $38                                       ; $5041: $ff
    rst $38                                       ; $5042: $ff
    rst $38                                       ; $5043: $ff
    rst $38                                       ; $5044: $ff
    rst $38                                       ; $5045: $ff
    rst $38                                       ; $5046: $ff
    rst $28                                       ; $5047: $ef
    nop                                           ; $5048: $00
    di                                            ; $5049: $f3
    nop                                           ; $504a: $00
    rst $38                                       ; $504b: $ff
    rst $38                                       ; $504c: $ff
    rst $38                                       ; $504d: $ff
    rst $38                                       ; $504e: $ff
    rst $38                                       ; $504f: $ff
    rst $38                                       ; $5050: $ff
    rst $38                                       ; $5051: $ff
    rst $38                                       ; $5052: $ff
    add hl, hl                                    ; $5053: $29
    ld bc, $00c9                                  ; $5054: $01 $c9 $00
    rst $38                                       ; $5057: $ff
    rst $38                                       ; $5058: $ff
    rst $38                                       ; $5059: $ff
    rst $38                                       ; $505a: $ff
    rst $38                                       ; $505b: $ff
    rst $38                                       ; $505c: $ff
    rst $38                                       ; $505d: $ff
    rst $38                                       ; $505e: $ff
    dec hl                                        ; $505f: $2b
    ld bc, $00d3                                  ; $5060: $01 $d3 $00
    rst $38                                       ; $5063: $ff
    rst $38                                       ; $5064: $ff
    rst $38                                       ; $5065: $ff
    rst $38                                       ; $5066: $ff
    rst $38                                       ; $5067: $ff
    rst $38                                       ; $5068: $ff
    rst $38                                       ; $5069: $ff
    rst $38                                       ; $506a: $ff
    jr z, jr_03d_506e                             ; $506b: $28 $01

    or l                                          ; $506d: $b5

jr_03d_506e:
    nop                                           ; $506e: $00
    rst $38                                       ; $506f: $ff
    rst $38                                       ; $5070: $ff
    rst $38                                       ; $5071: $ff
    rst $38                                       ; $5072: $ff
    rst $38                                       ; $5073: $ff
    rst $38                                       ; $5074: $ff
    rst $38                                       ; $5075: $ff
    rst $38                                       ; $5076: $ff
    rst $28                                       ; $5077: $ef
    nop                                           ; $5078: $00
    di                                            ; $5079: $f3
    nop                                           ; $507a: $00
    rst $38                                       ; $507b: $ff
    rst $38                                       ; $507c: $ff
    rst $38                                       ; $507d: $ff
    rst $38                                       ; $507e: $ff
    rst $38                                       ; $507f: $ff
    rst $38                                       ; $5080: $ff
    rst $38                                       ; $5081: $ff
    rst $38                                       ; $5082: $ff
    sub e                                         ; $5083: $93
    ld d, b                                       ; $5084: $50
    sbc a                                         ; $5085: $9f
    ld d, b                                       ; $5086: $50
    xor e                                         ; $5087: $ab
    ld d, b                                       ; $5088: $50
    or a                                          ; $5089: $b7
    ld d, b                                       ; $508a: $50
    jp $cf50                                      ; $508b: $c3 $50 $cf


    ld d, b                                       ; $508e: $50
    db $db                                        ; $508f: $db
    ld d, b                                       ; $5090: $50
    or a                                          ; $5091: $b7
    ld d, b                                       ; $5092: $50
    ld [hl+], a                                   ; $5093: $22
    ld bc, $0125                                  ; $5094: $01 $25 $01
    dec d                                         ; $5097: $15
    ld bc, $0076                                  ; $5098: $01 $76 $00
    rst $38                                       ; $509b: $ff
    rst $38                                       ; $509c: $ff
    rst $38                                       ; $509d: $ff
    rst $38                                       ; $509e: $ff
    add hl, hl                                    ; $509f: $29
    ld bc, $0111                                  ; $50a0: $01 $11 $01
    ld [de], a                                    ; $50a3: $12
    ld bc, $0073                                  ; $50a4: $01 $73 $00
    rst $38                                       ; $50a7: $ff
    rst $38                                       ; $50a8: $ff
    rst $38                                       ; $50a9: $ff
    rst $38                                       ; $50aa: $ff
    jr z, @+$03                                   ; $50ab: $28 $01

    ld [$0e01], sp                                ; $50ad: $08 $01 $0e
    ld bc, $007c                                  ; $50b0: $01 $7c $00
    rst $38                                       ; $50b3: $ff
    rst $38                                       ; $50b4: $ff
    rst $38                                       ; $50b5: $ff
    rst $38                                       ; $50b6: $ff
    cp $00                                        ; $50b7: $fe $00
    or d                                          ; $50b9: $b2
    nop                                           ; $50ba: $00
    ld c, a                                       ; $50bb: $4f
    ld bc, $004b                                  ; $50bc: $01 $4b $00
    rst $38                                       ; $50bf: $ff
    rst $38                                       ; $50c0: $ff
    rst $38                                       ; $50c1: $ff
    rst $38                                       ; $50c2: $ff
    ld e, $01                                     ; $50c3: $1e $01
    ei                                            ; $50c5: $fb
    nop                                           ; $50c6: $00
    ld c, d                                       ; $50c7: $4a
    ld bc, $004c                                  ; $50c8: $01 $4c $00
    rst $38                                       ; $50cb: $ff
    rst $38                                       ; $50cc: $ff
    rst $38                                       ; $50cd: $ff
    rst $38                                       ; $50ce: $ff
    rst $38                                       ; $50cf: $ff
    nop                                           ; $50d0: $00
    or a                                          ; $50d1: $b7
    nop                                           ; $50d2: $00
    rst $38                                       ; $50d3: $ff
    rst $38                                       ; $50d4: $ff
    rst $38                                       ; $50d5: $ff
    rst $38                                       ; $50d6: $ff
    rst $38                                       ; $50d7: $ff
    rst $38                                       ; $50d8: $ff
    rst $38                                       ; $50d9: $ff
    rst $38                                       ; $50da: $ff
    jr z, jr_03d_50de                             ; $50db: $28 $01

    dec bc                                        ; $50dd: $0b

jr_03d_50de:
    ld bc, $0116                                  ; $50de: $01 $16 $01
    ld [hl], c                                    ; $50e1: $71
    nop                                           ; $50e2: $00
    rst $38                                       ; $50e3: $ff
    rst $38                                       ; $50e4: $ff
    rst $38                                       ; $50e5: $ff
    rst $38                                       ; $50e6: $ff
    rst $30                                       ; $50e7: $f7
    ld d, b                                       ; $50e8: $50
    rst $30                                       ; $50e9: $f7
    ld d, b                                       ; $50ea: $50
    rst $30                                       ; $50eb: $f7
    ld d, b                                       ; $50ec: $50
    rst $30                                       ; $50ed: $f7
    ld d, b                                       ; $50ee: $50
    rst $30                                       ; $50ef: $f7
    ld d, b                                       ; $50f0: $50
    rst $30                                       ; $50f1: $f7
    ld d, b                                       ; $50f2: $50
    rst $30                                       ; $50f3: $f7
    ld d, b                                       ; $50f4: $50
    rst $30                                       ; $50f5: $f7
    ld d, b                                       ; $50f6: $50
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    rst $38                                       ; $50f9: $ff
    rst $38                                       ; $50fa: $ff
    rst $38                                       ; $50fb: $ff
    rst $38                                       ; $50fc: $ff
    rst $38                                       ; $50fd: $ff
    rst $38                                       ; $50fe: $ff
    rst $38                                       ; $50ff: $ff
    rst $38                                       ; $5100: $ff
    rst $38                                       ; $5101: $ff
    rst $38                                       ; $5102: $ff
    rst $38                                       ; $5103: $ff
    rst $38                                       ; $5104: $ff
    rst $38                                       ; $5105: $ff
    rst $38                                       ; $5106: $ff
    rst $38                                       ; $5107: $ff
    rst $38                                       ; $5108: $ff
    rst $38                                       ; $5109: $ff
    rst $38                                       ; $510a: $ff
    rst $38                                       ; $510b: $ff
    rst $38                                       ; $510c: $ff
    rst $38                                       ; $510d: $ff
    rst $38                                       ; $510e: $ff
    rst $38                                       ; $510f: $ff
    rst $38                                       ; $5110: $ff
    rst $38                                       ; $5111: $ff
    rst $38                                       ; $5112: $ff
    rst $38                                       ; $5113: $ff
    rst $38                                       ; $5114: $ff
    rst $38                                       ; $5115: $ff
    rst $38                                       ; $5116: $ff
    rst $38                                       ; $5117: $ff
    rst $38                                       ; $5118: $ff
    rst $38                                       ; $5119: $ff
    rst $38                                       ; $511a: $ff
    rst $38                                       ; $511b: $ff
    rst $38                                       ; $511c: $ff
    rst $38                                       ; $511d: $ff
    rst $38                                       ; $511e: $ff
    rst $38                                       ; $511f: $ff
    rst $38                                       ; $5120: $ff
    rst $38                                       ; $5121: $ff
    rst $38                                       ; $5122: $ff
    rst $38                                       ; $5123: $ff
    rst $38                                       ; $5124: $ff
    rst $38                                       ; $5125: $ff
    rst $38                                       ; $5126: $ff
    rst $38                                       ; $5127: $ff
    rst $38                                       ; $5128: $ff
    rst $38                                       ; $5129: $ff
    rst $38                                       ; $512a: $ff
    rst $38                                       ; $512b: $ff
    rst $38                                       ; $512c: $ff
    rst $38                                       ; $512d: $ff
    rst $38                                       ; $512e: $ff
    rst $38                                       ; $512f: $ff
    rst $38                                       ; $5130: $ff
    rst $38                                       ; $5131: $ff
    rst $38                                       ; $5132: $ff
    rst $38                                       ; $5133: $ff
    rst $38                                       ; $5134: $ff
    rst $38                                       ; $5135: $ff
    rst $38                                       ; $5136: $ff
    rst $38                                       ; $5137: $ff
    rst $38                                       ; $5138: $ff
    rst $38                                       ; $5139: $ff
    rst $38                                       ; $513a: $ff
    rst $38                                       ; $513b: $ff
    rst $38                                       ; $513c: $ff
    rst $38                                       ; $513d: $ff
    rst $38                                       ; $513e: $ff
    rst $38                                       ; $513f: $ff
    rst $38                                       ; $5140: $ff
    rst $38                                       ; $5141: $ff
    rst $38                                       ; $5142: $ff
    rst $38                                       ; $5143: $ff
    rst $38                                       ; $5144: $ff
    rst $38                                       ; $5145: $ff
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    rst $38                                       ; $5148: $ff
    rst $38                                       ; $5149: $ff
    rst $38                                       ; $514a: $ff
    ld e, e                                       ; $514b: $5b
    ld d, c                                       ; $514c: $51
    ld e, e                                       ; $514d: $5b
    ld d, c                                       ; $514e: $51
    ld e, e                                       ; $514f: $5b
    ld d, c                                       ; $5150: $51
    ld e, e                                       ; $5151: $5b
    ld d, c                                       ; $5152: $51
    ld e, e                                       ; $5153: $5b
    ld d, c                                       ; $5154: $51
    ld e, e                                       ; $5155: $5b
    ld d, c                                       ; $5156: $51
    ld e, e                                       ; $5157: $5b
    ld d, c                                       ; $5158: $51
    ld e, e                                       ; $5159: $5b
    ld d, c                                       ; $515a: $51
    rst $38                                       ; $515b: $ff
    rst $38                                       ; $515c: $ff
    rst $38                                       ; $515d: $ff
    rst $38                                       ; $515e: $ff
    rst $38                                       ; $515f: $ff
    rst $38                                       ; $5160: $ff
    rst $38                                       ; $5161: $ff
    rst $38                                       ; $5162: $ff
    rst $38                                       ; $5163: $ff
    rst $38                                       ; $5164: $ff
    rst $38                                       ; $5165: $ff
    rst $38                                       ; $5166: $ff
    rst $38                                       ; $5167: $ff
    rst $38                                       ; $5168: $ff
    rst $38                                       ; $5169: $ff
    rst $38                                       ; $516a: $ff
    rst $38                                       ; $516b: $ff
    rst $38                                       ; $516c: $ff
    rst $38                                       ; $516d: $ff
    rst $38                                       ; $516e: $ff
    rst $38                                       ; $516f: $ff
    rst $38                                       ; $5170: $ff
    rst $38                                       ; $5171: $ff
    rst $38                                       ; $5172: $ff
    rst $38                                       ; $5173: $ff
    rst $38                                       ; $5174: $ff
    rst $38                                       ; $5175: $ff
    rst $38                                       ; $5176: $ff
    rst $38                                       ; $5177: $ff
    rst $38                                       ; $5178: $ff
    rst $38                                       ; $5179: $ff
    rst $38                                       ; $517a: $ff
    rst $38                                       ; $517b: $ff
    rst $38                                       ; $517c: $ff
    rst $38                                       ; $517d: $ff
    rst $38                                       ; $517e: $ff
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
    rst $38                                       ; $518f: $ff
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
    rst $38                                       ; $51a0: $ff
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
    rst $38                                       ; $51ad: $ff
    rst $38                                       ; $51ae: $ff
    cp a                                          ; $51af: $bf
    ld d, c                                       ; $51b0: $51
    cp a                                          ; $51b1: $bf
    ld d, c                                       ; $51b2: $51
    cp a                                          ; $51b3: $bf
    ld d, c                                       ; $51b4: $51
    cp a                                          ; $51b5: $bf
    ld d, c                                       ; $51b6: $51
    cp a                                          ; $51b7: $bf
    ld d, c                                       ; $51b8: $51
    cp a                                          ; $51b9: $bf
    ld d, c                                       ; $51ba: $51
    cp a                                          ; $51bb: $bf
    ld d, c                                       ; $51bc: $51
    cp a                                          ; $51bd: $bf
    ld d, c                                       ; $51be: $51
    rst $38                                       ; $51bf: $ff
    rst $38                                       ; $51c0: $ff
    rst $38                                       ; $51c1: $ff
    rst $38                                       ; $51c2: $ff
    rst $38                                       ; $51c3: $ff
    rst $38                                       ; $51c4: $ff
    rst $38                                       ; $51c5: $ff
    rst $38                                       ; $51c6: $ff
    rst $38                                       ; $51c7: $ff
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
    rst $38                                       ; $51d8: $ff
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
    rst $38                                       ; $51e9: $ff
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
    rst $38                                       ; $51fa: $ff
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
    rst $38                                       ; $520b: $ff
    rst $38                                       ; $520c: $ff
    rst $38                                       ; $520d: $ff
    rst $38                                       ; $520e: $ff
    rst $38                                       ; $520f: $ff
    rst $38                                       ; $5210: $ff
    rst $38                                       ; $5211: $ff
    rst $38                                       ; $5212: $ff
    inc hl                                        ; $5213: $23
    ld d, d                                       ; $5214: $52
    inc hl                                        ; $5215: $23
    ld d, d                                       ; $5216: $52
    inc hl                                        ; $5217: $23
    ld d, d                                       ; $5218: $52
    inc hl                                        ; $5219: $23
    ld d, d                                       ; $521a: $52
    inc hl                                        ; $521b: $23
    ld d, d                                       ; $521c: $52
    inc hl                                        ; $521d: $23
    ld d, d                                       ; $521e: $52
    inc hl                                        ; $521f: $23
    ld d, d                                       ; $5220: $52
    inc hl                                        ; $5221: $23
    ld d, d                                       ; $5222: $52
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
    rst $38                                       ; $522d: $ff
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
    rst $38                                       ; $523e: $ff
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
    rst $38                                       ; $525c: $ff
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
    rst $38                                       ; $526b: $ff
    rst $38                                       ; $526c: $ff
    rst $38                                       ; $526d: $ff
    rst $38                                       ; $526e: $ff
    rst $38                                       ; $526f: $ff
    rst $38                                       ; $5270: $ff
    rst $38                                       ; $5271: $ff
    rst $38                                       ; $5272: $ff
    rst $38                                       ; $5273: $ff
    rst $38                                       ; $5274: $ff
    rst $38                                       ; $5275: $ff
    rst $38                                       ; $5276: $ff
    add a                                         ; $5277: $87
    ld d, d                                       ; $5278: $52
    sub e                                         ; $5279: $93
    ld d, d                                       ; $527a: $52
    sbc a                                         ; $527b: $9f
    ld d, d                                       ; $527c: $52
    xor e                                         ; $527d: $ab
    ld d, d                                       ; $527e: $52
    or a                                          ; $527f: $b7
    ld d, d                                       ; $5280: $52
    jp $cf52                                      ; $5281: $c3 $52 $cf


    ld d, d                                       ; $5284: $52
    xor e                                         ; $5285: $ab
    ld d, d                                       ; $5286: $52
    ldh [rP1], a                                  ; $5287: $e0 $00
    ld h, h                                       ; $5289: $64
    ld bc, $0121                                  ; $528a: $01 $21 $01
    ld [hl-], a                                   ; $528d: $32
    ld bc, $0176                                  ; $528e: $01 $76 $01
    ret                                           ; $5291: $c9


    nop                                           ; $5292: $00
    ld sp, hl                                     ; $5293: $f9
    nop                                           ; $5294: $00
    ld d, c                                       ; $5295: $51
    ld bc, $0177                                  ; $5296: $01 $77 $01
    ret z                                         ; $5299: $c8

    nop                                           ; $529a: $00
    rst $38                                       ; $529b: $ff
    rst $38                                       ; $529c: $ff
    rst $38                                       ; $529d: $ff
    rst $38                                       ; $529e: $ff
    cp $00                                        ; $529f: $fe $00
    ld c, a                                       ; $52a1: $4f
    ld bc, $0179                                  ; $52a2: $01 $79 $01
    db $d3                                        ; $52a5: $d3
    nop                                           ; $52a6: $00
    rst $38                                       ; $52a7: $ff
    rst $38                                       ; $52a8: $ff
    rst $38                                       ; $52a9: $ff
    rst $38                                       ; $52aa: $ff
    jr nz, jr_03d_52ae                            ; $52ab: $20 $01

    ld [hl-], a                                   ; $52ad: $32

jr_03d_52ae:
    ld bc, $0151                                  ; $52ae: $01 $51 $01
    adc c                                         ; $52b1: $89
    nop                                           ; $52b2: $00
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    rst $38                                       ; $52b5: $ff
    rst $38                                       ; $52b6: $ff
    ld a, [de]                                    ; $52b7: $1a
    ld bc, $013a                                  ; $52b8: $01 $3a $01
    ld d, b                                       ; $52bb: $50
    ld bc, $008b                                  ; $52bc: $01 $8b $00
    rst $38                                       ; $52bf: $ff
    rst $38                                       ; $52c0: $ff
    rst $38                                       ; $52c1: $ff
    rst $38                                       ; $52c2: $ff
    dec hl                                        ; $52c3: $2b
    ld bc, $011f                                  ; $52c4: $01 $1f $01
    ld d, b                                       ; $52c7: $50
    ld bc, $008b                                  ; $52c8: $01 $8b $00
    rst $38                                       ; $52cb: $ff
    rst $38                                       ; $52cc: $ff
    rst $38                                       ; $52cd: $ff
    rst $38                                       ; $52ce: $ff
    cp $00                                        ; $52cf: $fe $00
    ld c, a                                       ; $52d1: $4f
    ld bc, $017b                                  ; $52d2: $01 $7b $01
    call $ff00                                    ; $52d5: $cd $00 $ff
    rst $38                                       ; $52d8: $ff
    rst $38                                       ; $52d9: $ff
    rst $38                                       ; $52da: $ff
    db $eb                                        ; $52db: $eb
    ld d, d                                       ; $52dc: $52
    rst $30                                       ; $52dd: $f7
    ld d, d                                       ; $52de: $52
    inc bc                                        ; $52df: $03
    ld d, e                                       ; $52e0: $53
    rrca                                          ; $52e1: $0f
    ld d, e                                       ; $52e2: $53
    dec de                                        ; $52e3: $1b
    ld d, e                                       ; $52e4: $53
    daa                                           ; $52e5: $27
    ld d, e                                       ; $52e6: $53
    inc sp                                        ; $52e7: $33
    ld d, e                                       ; $52e8: $53
    rrca                                          ; $52e9: $0f
    ld d, e                                       ; $52ea: $53
    db $d3                                        ; $52eb: $d3
    nop                                           ; $52ec: $00
    ld c, b                                       ; $52ed: $48
    ld bc, $00b8                                  ; $52ee: $01 $b8 $00
    sub b                                         ; $52f1: $90
    nop                                           ; $52f2: $00
    rst $38                                       ; $52f3: $ff
    rst $38                                       ; $52f4: $ff
    rst $38                                       ; $52f5: $ff
    rst $38                                       ; $52f6: $ff
    jp z, Jump_000_3a00                           ; $52f7: $ca $00 $3a

    ld bc, $00c0                                  ; $52fa: $01 $c0 $00
    add b                                         ; $52fd: $80
    nop                                           ; $52fe: $00
    rst $38                                       ; $52ff: $ff
    rst $38                                       ; $5300: $ff
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    ret z                                         ; $5303: $c8

    nop                                           ; $5304: $00
    dec [hl]                                      ; $5305: $35
    ld bc, $00d2                                  ; $5306: $01 $d2 $00
    ld [hl], a                                    ; $5309: $77
    nop                                           ; $530a: $00
    rst $38                                       ; $530b: $ff
    rst $38                                       ; $530c: $ff
    rst $38                                       ; $530d: $ff
    rst $38                                       ; $530e: $ff
    cp l                                          ; $530f: $bd
    nop                                           ; $5310: $00
    add sp, $00                                   ; $5311: $e8 $00
    rst $38                                       ; $5313: $ff
    rst $38                                       ; $5314: $ff
    rst $38                                       ; $5315: $ff
    rst $38                                       ; $5316: $ff
    rst $38                                       ; $5317: $ff
    rst $38                                       ; $5318: $ff
    rst $38                                       ; $5319: $ff
    rst $38                                       ; $531a: $ff
    cp l                                          ; $531b: $bd
    nop                                           ; $531c: $00
    db $10                                        ; $531d: $10
    ld bc, $010a                                  ; $531e: $01 $0a $01
    ld e, d                                       ; $5321: $5a
    nop                                           ; $5322: $00
    rst $38                                       ; $5323: $ff
    rst $38                                       ; $5324: $ff
    rst $38                                       ; $5325: $ff
    rst $38                                       ; $5326: $ff
    cp l                                          ; $5327: $bd
    nop                                           ; $5328: $00
    ld [$ff00], a                                 ; $5329: $ea $00 $ff
    rst $38                                       ; $532c: $ff
    rst $38                                       ; $532d: $ff
    rst $38                                       ; $532e: $ff
    rst $38                                       ; $532f: $ff
    rst $38                                       ; $5330: $ff
    rst $38                                       ; $5331: $ff
    rst $38                                       ; $5332: $ff
    add $00                                       ; $5333: $c6 $00
    ld [hl], $01                                  ; $5335: $36 $01
    or [hl]                                       ; $5337: $b6
    nop                                           ; $5338: $00
    adc b                                         ; $5339: $88
    nop                                           ; $533a: $00
    rst $38                                       ; $533b: $ff
    rst $38                                       ; $533c: $ff
    rst $38                                       ; $533d: $ff
    rst $38                                       ; $533e: $ff
    ld c, a                                       ; $533f: $4f
    ld d, e                                       ; $5340: $53
    ld c, a                                       ; $5341: $4f
    ld d, e                                       ; $5342: $53
    ld c, a                                       ; $5343: $4f
    ld d, e                                       ; $5344: $53
    ld c, a                                       ; $5345: $4f
    ld d, e                                       ; $5346: $53
    ld c, a                                       ; $5347: $4f
    ld d, e                                       ; $5348: $53
    ld c, a                                       ; $5349: $4f
    ld d, e                                       ; $534a: $53
    ld c, a                                       ; $534b: $4f
    ld d, e                                       ; $534c: $53
    ld c, a                                       ; $534d: $4f
    ld d, e                                       ; $534e: $53
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
    rst $38                                       ; $535b: $ff
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
    rst $38                                       ; $536c: $ff
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
    rst $38                                       ; $537d: $ff
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
    rst $38                                       ; $538e: $ff
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
    rst $38                                       ; $539f: $ff
    rst $38                                       ; $53a0: $ff
    rst $38                                       ; $53a1: $ff
    rst $38                                       ; $53a2: $ff
    or e                                          ; $53a3: $b3
    ld d, e                                       ; $53a4: $53
    or e                                          ; $53a5: $b3
    ld d, e                                       ; $53a6: $53
    or e                                          ; $53a7: $b3
    ld d, e                                       ; $53a8: $53
    or e                                          ; $53a9: $b3
    ld d, e                                       ; $53aa: $53
    or e                                          ; $53ab: $b3
    ld d, e                                       ; $53ac: $53
    or e                                          ; $53ad: $b3
    ld d, e                                       ; $53ae: $53
    or e                                          ; $53af: $b3
    ld d, e                                       ; $53b0: $53
    or e                                          ; $53b1: $b3
    ld d, e                                       ; $53b2: $53
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
    rst $38                                       ; $53c1: $ff
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    rst $38                                       ; $53c4: $ff
    rst $38                                       ; $53c5: $ff
    rst $38                                       ; $53c6: $ff
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
    rst $38                                       ; $53d7: $ff
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
    rst $38                                       ; $53e8: $ff
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
    rst $38                                       ; $53f9: $ff
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
    rla                                           ; $5407: $17
    ld d, h                                       ; $5408: $54
    rla                                           ; $5409: $17
    ld d, h                                       ; $540a: $54
    rla                                           ; $540b: $17
    ld d, h                                       ; $540c: $54
    rla                                           ; $540d: $17
    ld d, h                                       ; $540e: $54
    rla                                           ; $540f: $17
    ld d, h                                       ; $5410: $54
    rla                                           ; $5411: $17
    ld d, h                                       ; $5412: $54
    rla                                           ; $5413: $17
    ld d, h                                       ; $5414: $54
    rla                                           ; $5415: $17
    ld d, h                                       ; $5416: $54
    rst $38                                       ; $5417: $ff
    rst $38                                       ; $5418: $ff
    rst $38                                       ; $5419: $ff
    rst $38                                       ; $541a: $ff
    rst $38                                       ; $541b: $ff
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
    rst $38                                       ; $542c: $ff
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
    rst $38                                       ; $543d: $ff
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
    rst $38                                       ; $544e: $ff
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
    rst $38                                       ; $5469: $ff
    rst $38                                       ; $546a: $ff
    ld a, e                                       ; $546b: $7b
    ld d, h                                       ; $546c: $54
    add a                                         ; $546d: $87
    ld d, h                                       ; $546e: $54
    sub e                                         ; $546f: $93
    ld d, h                                       ; $5470: $54
    sbc a                                         ; $5471: $9f
    ld d, h                                       ; $5472: $54
    xor e                                         ; $5473: $ab
    ld d, h                                       ; $5474: $54
    or a                                          ; $5475: $b7
    ld d, h                                       ; $5476: $54
    jp $9f54                                      ; $5477: $c3 $54 $9f


    ld d, h                                       ; $547a: $54
    and $00                                       ; $547b: $e6 $00
    ld [$e301], sp                                ; $547d: $08 $01 $e3
    nop                                           ; $5480: $00
    ret                                           ; $5481: $c9


    nop                                           ; $5482: $00
    dec b                                         ; $5483: $05
    ld bc, $00a0                                  ; $5484: $01 $a0 $00
    call c, $0000                                 ; $5487: $dc $00 $00
    ld bc, $ffff                                  ; $548a: $01 $ff $ff
    rst $38                                       ; $548d: $ff
    rst $38                                       ; $548e: $ff
    rst $38                                       ; $548f: $ff
    rst $38                                       ; $5490: $ff
    rst $38                                       ; $5491: $ff
    rst $38                                       ; $5492: $ff
    sub $00                                       ; $5493: $d6 $00
    ei                                            ; $5495: $fb
    nop                                           ; $5496: $00
    rst $38                                       ; $5497: $ff
    rst $38                                       ; $5498: $ff
    rst $38                                       ; $5499: $ff
    rst $38                                       ; $549a: $ff
    rst $38                                       ; $549b: $ff
    rst $38                                       ; $549c: $ff
    rst $38                                       ; $549d: $ff
    rst $38                                       ; $549e: $ff
    pop hl                                        ; $549f: $e1
    nop                                           ; $54a0: $00
    adc $00                                       ; $54a1: $ce $00
    rst $38                                       ; $54a3: $ff
    rst $38                                       ; $54a4: $ff
    rst $38                                       ; $54a5: $ff
    rst $38                                       ; $54a6: $ff
    rst $38                                       ; $54a7: $ff
    rst $38                                       ; $54a8: $ff
    rst $38                                       ; $54a9: $ff
    rst $38                                       ; $54aa: $ff
    jp c, $d800                                   ; $54ab: $da $00 $d8

    nop                                           ; $54ae: $00
    rst $38                                       ; $54af: $ff
    rst $38                                       ; $54b0: $ff
    rst $38                                       ; $54b1: $ff
    rst $38                                       ; $54b2: $ff
    rst $38                                       ; $54b3: $ff
    rst $38                                       ; $54b4: $ff
    rst $38                                       ; $54b5: $ff
    rst $38                                       ; $54b6: $ff
    rst $20                                       ; $54b7: $e7
    nop                                           ; $54b8: $00
    cp d                                          ; $54b9: $ba
    nop                                           ; $54ba: $00
    rst $38                                       ; $54bb: $ff
    rst $38                                       ; $54bc: $ff
    rst $38                                       ; $54bd: $ff
    rst $38                                       ; $54be: $ff
    rst $38                                       ; $54bf: $ff
    rst $38                                       ; $54c0: $ff
    rst $38                                       ; $54c1: $ff
    rst $38                                       ; $54c2: $ff
    push de                                       ; $54c3: $d5
    nop                                           ; $54c4: $00
    ei                                            ; $54c5: $fb
    nop                                           ; $54c6: $00
    dec a                                         ; $54c7: $3d
    ld bc, $005b                                  ; $54c8: $01 $5b $00
    rst $38                                       ; $54cb: $ff
    rst $38                                       ; $54cc: $ff
    rst $38                                       ; $54cd: $ff
    rst $38                                       ; $54ce: $ff
    rst $18                                       ; $54cf: $df
    ld d, h                                       ; $54d0: $54
    db $eb                                        ; $54d1: $eb
    ld d, h                                       ; $54d2: $54
    rst $30                                       ; $54d3: $f7
    ld d, h                                       ; $54d4: $54
    inc bc                                        ; $54d5: $03
    ld d, l                                       ; $54d6: $55
    rrca                                          ; $54d7: $0f
    ld d, l                                       ; $54d8: $55
    dec de                                        ; $54d9: $1b
    ld d, l                                       ; $54da: $55
    daa                                           ; $54db: $27
    ld d, l                                       ; $54dc: $55
    inc bc                                        ; $54dd: $03
    ld d, l                                       ; $54de: $55
    xor $00                                       ; $54df: $ee $00
    add sp, $00                                   ; $54e1: $e8 $00
    db $10                                        ; $54e3: $10
    ld bc, $007a                                  ; $54e4: $01 $7a $00
    rst $38                                       ; $54e7: $ff
    rst $38                                       ; $54e8: $ff
    rst $38                                       ; $54e9: $ff
    rst $38                                       ; $54ea: $ff
    rst $28                                       ; $54eb: $ef
    nop                                           ; $54ec: $00
    ld a, [$ff00]                                 ; $54ed: $fa $00 $ff
    rst $38                                       ; $54f0: $ff
    rst $38                                       ; $54f1: $ff
    rst $38                                       ; $54f2: $ff
    rst $38                                       ; $54f3: $ff
    rst $38                                       ; $54f4: $ff
    rst $38                                       ; $54f5: $ff
    rst $38                                       ; $54f6: $ff
    xor $00                                       ; $54f7: $ee $00
    push af                                       ; $54f9: $f5
    nop                                           ; $54fa: $00
    rst $38                                       ; $54fb: $ff
    rst $38                                       ; $54fc: $ff
    rst $38                                       ; $54fd: $ff
    rst $38                                       ; $54fe: $ff
    rst $38                                       ; $54ff: $ff
    rst $38                                       ; $5500: $ff
    rst $38                                       ; $5501: $ff
    rst $38                                       ; $5502: $ff
    push hl                                       ; $5503: $e5
    nop                                           ; $5504: $00
    adc $00                                       ; $5505: $ce $00
    rst $38                                       ; $5507: $ff
    rst $38                                       ; $5508: $ff
    rst $38                                       ; $5509: $ff
    rst $38                                       ; $550a: $ff
    rst $38                                       ; $550b: $ff
    rst $38                                       ; $550c: $ff
    rst $38                                       ; $550d: $ff
    rst $38                                       ; $550e: $ff
    and $00                                       ; $550f: $e6 $00
    db $d3                                        ; $5511: $d3
    nop                                           ; $5512: $00
    rst $38                                       ; $5513: $ff
    rst $38                                       ; $5514: $ff
    rst $38                                       ; $5515: $ff
    rst $38                                       ; $5516: $ff
    rst $38                                       ; $5517: $ff
    rst $38                                       ; $5518: $ff
    rst $38                                       ; $5519: $ff
    rst $38                                       ; $551a: $ff
    push hl                                       ; $551b: $e5
    nop                                           ; $551c: $00
    or l                                          ; $551d: $b5
    nop                                           ; $551e: $00
    rst $38                                       ; $551f: $ff
    rst $38                                       ; $5520: $ff
    rst $38                                       ; $5521: $ff
    rst $38                                       ; $5522: $ff
    rst $38                                       ; $5523: $ff
    rst $38                                       ; $5524: $ff
    rst $38                                       ; $5525: $ff
    rst $38                                       ; $5526: $ff
    ldh a, [rP1]                                  ; $5527: $f0 $00
    push af                                       ; $5529: $f5
    nop                                           ; $552a: $00
    rst $38                                       ; $552b: $ff
    rst $38                                       ; $552c: $ff
    rst $38                                       ; $552d: $ff
    rst $38                                       ; $552e: $ff
    rst $38                                       ; $552f: $ff
    rst $38                                       ; $5530: $ff
    rst $38                                       ; $5531: $ff
    rst $38                                       ; $5532: $ff
    ld b, e                                       ; $5533: $43
    ld d, l                                       ; $5534: $55
    ld c, a                                       ; $5535: $4f
    ld d, l                                       ; $5536: $55
    ld e, e                                       ; $5537: $5b
    ld d, l                                       ; $5538: $55
    ld h, a                                       ; $5539: $67
    ld d, l                                       ; $553a: $55
    ld [hl], e                                    ; $553b: $73
    ld d, l                                       ; $553c: $55
    ld a, a                                       ; $553d: $7f
    ld d, l                                       ; $553e: $55
    adc e                                         ; $553f: $8b
    ld d, l                                       ; $5540: $55
    ld h, a                                       ; $5541: $67
    ld d, l                                       ; $5542: $55
    jp z, Jump_000_3500                           ; $5543: $ca $00 $35

    ld bc, $00d7                                  ; $5546: $01 $d7 $00
    xor l                                         ; $5549: $ad
    nop                                           ; $554a: $00
    ld [de], a                                    ; $554b: $12
    ld bc, $0062                                  ; $554c: $01 $62 $00
    jp nz, $e900                                  ; $554f: $c2 $00 $e9

    nop                                           ; $5552: $00
    ld [de], a                                    ; $5553: $12
    ld bc, $005f                                  ; $5554: $01 $5f $00
    rst $38                                       ; $5557: $ff
    rst $38                                       ; $5558: $ff
    rst $38                                       ; $5559: $ff
    rst $38                                       ; $555a: $ff
    push bc                                       ; $555b: $c5
    nop                                           ; $555c: $00
    db $e3                                        ; $555d: $e3
    nop                                           ; $555e: $00
    ld d, $01                                     ; $555f: $16 $01
    ld e, a                                       ; $5561: $5f
    nop                                           ; $5562: $00
    rst $38                                       ; $5563: $ff
    rst $38                                       ; $5564: $ff
    rst $38                                       ; $5565: $ff
    rst $38                                       ; $5566: $ff
    sub $00                                       ; $5567: $d6 $00
    cp c                                          ; $5569: $b9
    nop                                           ; $556a: $00
    rst $38                                       ; $556b: $ff
    rst $38                                       ; $556c: $ff
    rst $38                                       ; $556d: $ff
    rst $38                                       ; $556e: $ff
    rst $38                                       ; $556f: $ff
    rst $38                                       ; $5570: $ff
    rst $38                                       ; $5571: $ff
    rst $38                                       ; $5572: $ff
    jp nc, $bc00                                  ; $5573: $d2 $00 $bc

    nop                                           ; $5576: $00
    rst $38                                       ; $5577: $ff
    rst $38                                       ; $5578: $ff
    rst $38                                       ; $5579: $ff
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    rst $38                                       ; $557c: $ff
    rst $38                                       ; $557d: $ff
    rst $38                                       ; $557e: $ff
    db $e3                                        ; $557f: $e3
    nop                                           ; $5580: $00
    sbc e                                         ; $5581: $9b
    nop                                           ; $5582: $00
    rst $38                                       ; $5583: $ff
    rst $38                                       ; $5584: $ff
    rst $38                                       ; $5585: $ff
    rst $38                                       ; $5586: $ff
    rst $38                                       ; $5587: $ff
    rst $38                                       ; $5588: $ff
    rst $38                                       ; $5589: $ff
    rst $38                                       ; $558a: $ff
    call nz, $e300                                ; $558b: $c4 $00 $e3
    nop                                           ; $558e: $00
    inc de                                        ; $558f: $13
    ld bc, $005e                                  ; $5590: $01 $5e $00
    rst $38                                       ; $5593: $ff
    rst $38                                       ; $5594: $ff
    rst $38                                       ; $5595: $ff
    rst $38                                       ; $5596: $ff
    and a                                         ; $5597: $a7
    ld d, l                                       ; $5598: $55
    or e                                          ; $5599: $b3
    ld d, l                                       ; $559a: $55
    cp a                                          ; $559b: $bf
    ld d, l                                       ; $559c: $55
    bit 2, l                                      ; $559d: $cb $55
    rst $10                                       ; $559f: $d7
    ld d, l                                       ; $55a0: $55
    db $e3                                        ; $55a1: $e3
    ld d, l                                       ; $55a2: $55
    rst $28                                       ; $55a3: $ef
    ld d, l                                       ; $55a4: $55
    bit 2, l                                      ; $55a5: $cb $55
    ldh a, [rP1]                                  ; $55a7: $f0 $00
    rst $38                                       ; $55a9: $ff
    nop                                           ; $55aa: $00
    inc bc                                        ; $55ab: $03
    ld bc, $008c                                  ; $55ac: $01 $8c $00
    rst $38                                       ; $55af: $ff
    rst $38                                       ; $55b0: $ff
    rst $38                                       ; $55b1: $ff
    rst $38                                       ; $55b2: $ff
    rst $30                                       ; $55b3: $f7
    nop                                           ; $55b4: $00
    ld hl, sp+$00                                 ; $55b5: $f8 $00
    rst $38                                       ; $55b7: $ff
    rst $38                                       ; $55b8: $ff
    rst $38                                       ; $55b9: $ff
    rst $38                                       ; $55ba: $ff
    rst $38                                       ; $55bb: $ff
    rst $38                                       ; $55bc: $ff
    rst $38                                       ; $55bd: $ff
    rst $38                                       ; $55be: $ff
    db $f4                                        ; $55bf: $f4
    nop                                           ; $55c0: $00
    di                                            ; $55c1: $f3
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
    nop                                           ; $55cc: $00
    rst $10                                       ; $55cd: $d7
    nop                                           ; $55ce: $00
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
    ret nc                                        ; $55d9: $d0

    nop                                           ; $55da: $00
    rst $38                                       ; $55db: $ff
    rst $38                                       ; $55dc: $ff
    rst $38                                       ; $55dd: $ff
    rst $38                                       ; $55de: $ff
    rst $38                                       ; $55df: $ff
    rst $38                                       ; $55e0: $ff
    rst $38                                       ; $55e1: $ff
    rst $38                                       ; $55e2: $ff
    rlca                                          ; $55e3: $07
    ld bc, $00b4                                  ; $55e4: $01 $b4 $00
    rst $38                                       ; $55e7: $ff
    rst $38                                       ; $55e8: $ff
    rst $38                                       ; $55e9: $ff
    rst $38                                       ; $55ea: $ff
    rst $38                                       ; $55eb: $ff
    rst $38                                       ; $55ec: $ff
    rst $38                                       ; $55ed: $ff
    rst $38                                       ; $55ee: $ff
    ei                                            ; $55ef: $fb
    nop                                           ; $55f0: $00
    di                                            ; $55f1: $f3
    nop                                           ; $55f2: $00
    rst $38                                       ; $55f3: $ff
    rst $38                                       ; $55f4: $ff
    rst $38                                       ; $55f5: $ff
    rst $38                                       ; $55f6: $ff
    rst $38                                       ; $55f7: $ff
    rst $38                                       ; $55f8: $ff
    rst $38                                       ; $55f9: $ff
    rst $38                                       ; $55fa: $ff
    dec bc                                        ; $55fb: $0b
    ld d, [hl]                                    ; $55fc: $56
    rla                                           ; $55fd: $17
    ld d, [hl]                                    ; $55fe: $56
    inc hl                                        ; $55ff: $23
    ld d, [hl]                                    ; $5600: $56
    cpl                                           ; $5601: $2f
    ld d, [hl]                                    ; $5602: $56
    dec sp                                        ; $5603: $3b
    ld d, [hl]                                    ; $5604: $56
    ld b, a                                       ; $5605: $47
    ld d, [hl]                                    ; $5606: $56
    ld d, e                                       ; $5607: $53
    ld d, [hl]                                    ; $5608: $56
    cpl                                           ; $5609: $2f
    ld d, [hl]                                    ; $560a: $56
    push hl                                       ; $560b: $e5
    nop                                           ; $560c: $00
    ld a, [$db00]                                 ; $560d: $fa $00 $db
    nop                                           ; $5610: $00
    or h                                          ; $5611: $b4
    nop                                           ; $5612: $00
    rst $38                                       ; $5613: $ff
    rst $38                                       ; $5614: $ff
    rst $38                                       ; $5615: $ff
    rst $38                                       ; $5616: $ff
    ld [c], a                                     ; $5617: $e2
    nop                                           ; $5618: $00
    di                                            ; $5619: $f3
    nop                                           ; $561a: $00
    rst $38                                       ; $561b: $ff
    rst $38                                       ; $561c: $ff
    rst $38                                       ; $561d: $ff
    rst $38                                       ; $561e: $ff
    rst $38                                       ; $561f: $ff
    rst $38                                       ; $5620: $ff
    rst $38                                       ; $5621: $ff
    rst $38                                       ; $5622: $ff
    sbc $00                                       ; $5623: $de $00
    rst $28                                       ; $5625: $ef
    nop                                           ; $5626: $00
    rst $38                                       ; $5627: $ff
    rst $38                                       ; $5628: $ff
    rst $38                                       ; $5629: $ff
    rst $38                                       ; $562a: $ff
    rst $38                                       ; $562b: $ff
    rst $38                                       ; $562c: $ff
    rst $38                                       ; $562d: $ff
    rst $38                                       ; $562e: $ff
    db $db                                        ; $562f: $db
    nop                                           ; $5630: $00
    push bc                                       ; $5631: $c5
    nop                                           ; $5632: $00
    rst $38                                       ; $5633: $ff
    rst $38                                       ; $5634: $ff
    rst $38                                       ; $5635: $ff
    rst $38                                       ; $5636: $ff
    rst $38                                       ; $5637: $ff
    rst $38                                       ; $5638: $ff
    rst $38                                       ; $5639: $ff
    rst $38                                       ; $563a: $ff
    jp c, $cc00                                   ; $563b: $da $00 $cc

    nop                                           ; $563e: $00
    rst $38                                       ; $563f: $ff
    rst $38                                       ; $5640: $ff
    rst $38                                       ; $5641: $ff
    rst $38                                       ; $5642: $ff
    rst $38                                       ; $5643: $ff
    rst $38                                       ; $5644: $ff
    rst $38                                       ; $5645: $ff
    rst $38                                       ; $5646: $ff
    inc bc                                        ; $5647: $03
    ld bc, $00aa                                  ; $5648: $01 $aa $00
    rst $38                                       ; $564b: $ff
    rst $38                                       ; $564c: $ff
    rst $38                                       ; $564d: $ff
    rst $38                                       ; $564e: $ff
    rst $38                                       ; $564f: $ff
    rst $38                                       ; $5650: $ff
    rst $38                                       ; $5651: $ff
    rst $38                                       ; $5652: $ff
    db $dd                                        ; $5653: $dd
    nop                                           ; $5654: $00
    rst $28                                       ; $5655: $ef
    nop                                           ; $5656: $00
    rst $38                                       ; $5657: $ff
    rst $38                                       ; $5658: $ff
    rst $38                                       ; $5659: $ff
    rst $38                                       ; $565a: $ff
    rst $38                                       ; $565b: $ff
    rst $38                                       ; $565c: $ff
    rst $38                                       ; $565d: $ff
    rst $38                                       ; $565e: $ff
    ld l, a                                       ; $565f: $6f
    ld d, [hl]                                    ; $5660: $56
    ld a, e                                       ; $5661: $7b
    ld d, [hl]                                    ; $5662: $56
    add a                                         ; $5663: $87
    ld d, [hl]                                    ; $5664: $56
    sub e                                         ; $5665: $93
    ld d, [hl]                                    ; $5666: $56
    sbc a                                         ; $5667: $9f
    ld d, [hl]                                    ; $5668: $56
    xor e                                         ; $5669: $ab
    ld d, [hl]                                    ; $566a: $56
    or a                                          ; $566b: $b7
    ld d, [hl]                                    ; $566c: $56
    sub e                                         ; $566d: $93
    ld d, [hl]                                    ; $566e: $56
    rra                                           ; $566f: $1f
    ld bc, $00ec                                  ; $5670: $01 $ec $00
    dec e                                         ; $5673: $1d
    ld bc, $00a5                                  ; $5674: $01 $a5 $00
    rst $38                                       ; $5677: $ff
    rst $38                                       ; $5678: $ff
    rst $38                                       ; $5679: $ff
    rst $38                                       ; $567a: $ff
    ld a, [de]                                    ; $567b: $1a
    ld bc, $00ee                                  ; $567c: $01 $ee $00
    rst $38                                       ; $567f: $ff
    rst $38                                       ; $5680: $ff
    rst $38                                       ; $5681: $ff
    rst $38                                       ; $5682: $ff
    rst $38                                       ; $5683: $ff
    rst $38                                       ; $5684: $ff
    rst $38                                       ; $5685: $ff
    rst $38                                       ; $5686: $ff
    dec e                                         ; $5687: $1d
    ld bc, $00e9                                  ; $5688: $01 $e9 $00
    rst $38                                       ; $568b: $ff
    rst $38                                       ; $568c: $ff
    rst $38                                       ; $568d: $ff
    rst $38                                       ; $568e: $ff
    rst $38                                       ; $568f: $ff
    rst $38                                       ; $5690: $ff
    rst $38                                       ; $5691: $ff
    rst $38                                       ; $5692: $ff
    dec de                                        ; $5693: $1b
    ld bc, $00de                                  ; $5694: $01 $de $00
    rst $38                                       ; $5697: $ff
    rst $38                                       ; $5698: $ff
    rst $38                                       ; $5699: $ff
    rst $38                                       ; $569a: $ff
    rst $38                                       ; $569b: $ff
    rst $38                                       ; $569c: $ff
    rst $38                                       ; $569d: $ff
    rst $38                                       ; $569e: $ff
    ld a, [bc]                                    ; $569f: $0a
    ld bc, $00c2                                  ; $56a0: $01 $c2 $00
    rst $38                                       ; $56a3: $ff
    rst $38                                       ; $56a4: $ff
    rst $38                                       ; $56a5: $ff
    rst $38                                       ; $56a6: $ff
    rst $38                                       ; $56a7: $ff
    rst $38                                       ; $56a8: $ff
    rst $38                                       ; $56a9: $ff
    rst $38                                       ; $56aa: $ff
    dec de                                        ; $56ab: $1b
    ld bc, $00a6                                  ; $56ac: $01 $a6 $00
    rst $38                                       ; $56af: $ff
    rst $38                                       ; $56b0: $ff
    rst $38                                       ; $56b1: $ff
    rst $38                                       ; $56b2: $ff
    rst $38                                       ; $56b3: $ff
    rst $38                                       ; $56b4: $ff
    rst $38                                       ; $56b5: $ff
    rst $38                                       ; $56b6: $ff
    dec de                                        ; $56b7: $1b
    ld bc, $00e9                                  ; $56b8: $01 $e9 $00
    rst $38                                       ; $56bb: $ff
    rst $38                                       ; $56bc: $ff
    rst $38                                       ; $56bd: $ff
    rst $38                                       ; $56be: $ff
    rst $38                                       ; $56bf: $ff
    rst $38                                       ; $56c0: $ff
    rst $38                                       ; $56c1: $ff
    rst $38                                       ; $56c2: $ff
    db $d3                                        ; $56c3: $d3
    ld d, [hl]                                    ; $56c4: $56
    rst $18                                       ; $56c5: $df
    ld d, [hl]                                    ; $56c6: $56
    db $eb                                        ; $56c7: $eb
    ld d, [hl]                                    ; $56c8: $56
    rst $30                                       ; $56c9: $f7
    ld d, [hl]                                    ; $56ca: $56
    inc bc                                        ; $56cb: $03
    ld d, a                                       ; $56cc: $57
    rrca                                          ; $56cd: $0f
    ld d, a                                       ; $56ce: $57
    dec de                                        ; $56cf: $1b
    ld d, a                                       ; $56d0: $57
    rst $30                                       ; $56d1: $f7
    ld d, [hl]                                    ; $56d2: $56
    add hl, sp                                    ; $56d3: $39
    ld bc, $0111                                  ; $56d4: $01 $11 $01
    xor $00                                       ; $56d7: $ee $00
    sub c                                         ; $56d9: $91
    nop                                           ; $56da: $00
    rst $38                                       ; $56db: $ff
    rst $38                                       ; $56dc: $ff
    rst $38                                       ; $56dd: $ff
    rst $38                                       ; $56de: $ff
    jr c, jr_03d_56e2                             ; $56df: $38 $01

    nop                                           ; $56e1: $00

jr_03d_56e2:
    ld bc, $ffff                                  ; $56e2: $01 $ff $ff
    rst $38                                       ; $56e5: $ff
    rst $38                                       ; $56e6: $ff
    rst $38                                       ; $56e7: $ff
    rst $38                                       ; $56e8: $ff
    rst $38                                       ; $56e9: $ff
    rst $38                                       ; $56ea: $ff
    jr c, @+$03                                   ; $56eb: $38 $01

    ld hl, sp+$00                                 ; $56ed: $f8 $00
    ldh a, [rP1]                                  ; $56ef: $f0 $00
    sub l                                         ; $56f1: $95
    nop                                           ; $56f2: $00
    rst $38                                       ; $56f3: $ff
    rst $38                                       ; $56f4: $ff
    rst $38                                       ; $56f5: $ff
    rst $38                                       ; $56f6: $ff
    inc l                                         ; $56f7: $2c
    ld bc, $00c7                                  ; $56f8: $01 $c7 $00
    rst $38                                       ; $56fb: $ff
    rst $38                                       ; $56fc: $ff
    rst $38                                       ; $56fd: $ff
    rst $38                                       ; $56fe: $ff
    rst $38                                       ; $56ff: $ff
    rst $38                                       ; $5700: $ff
    rst $38                                       ; $5701: $ff
    rst $38                                       ; $5702: $ff
    jr c, jr_03d_5706                             ; $5703: $38 $01

    db $dd                                        ; $5705: $dd

jr_03d_5706:
    nop                                           ; $5706: $00
    rst $38                                       ; $5707: $ff
    rst $38                                       ; $5708: $ff
    rst $38                                       ; $5709: $ff
    rst $38                                       ; $570a: $ff
    rst $38                                       ; $570b: $ff
    rst $38                                       ; $570c: $ff
    rst $38                                       ; $570d: $ff
    rst $38                                       ; $570e: $ff
    rra                                           ; $570f: $1f
    ld bc, $00af                                  ; $5710: $01 $af $00
    rst $38                                       ; $5713: $ff
    rst $38                                       ; $5714: $ff
    rst $38                                       ; $5715: $ff
    rst $38                                       ; $5716: $ff
    rst $38                                       ; $5717: $ff
    rst $38                                       ; $5718: $ff
    rst $38                                       ; $5719: $ff
    rst $38                                       ; $571a: $ff
    add hl, sp                                    ; $571b: $39
    ld bc, $00fb                                  ; $571c: $01 $fb $00
    call nz, $8700                                ; $571f: $c4 $00 $87
    nop                                           ; $5722: $00
    rst $38                                       ; $5723: $ff
    rst $38                                       ; $5724: $ff
    rst $38                                       ; $5725: $ff
    rst $38                                       ; $5726: $ff
    scf                                           ; $5727: $37
    ld d, a                                       ; $5728: $57
    ld b, e                                       ; $5729: $43
    ld d, a                                       ; $572a: $57
    ld c, a                                       ; $572b: $4f
    ld d, a                                       ; $572c: $57
    ld e, e                                       ; $572d: $5b
    ld d, a                                       ; $572e: $57
    ld h, a                                       ; $572f: $67
    ld d, a                                       ; $5730: $57
    ld [hl], e                                    ; $5731: $73
    ld d, a                                       ; $5732: $57
    ld a, a                                       ; $5733: $7f
    ld d, a                                       ; $5734: $57
    ld e, e                                       ; $5735: $5b
    ld d, a                                       ; $5736: $57
    rst $20                                       ; $5737: $e7
    nop                                           ; $5738: $00
    ld hl, sp+$00                                 ; $5739: $f8 $00
    add hl, de                                    ; $573b: $19
    ld bc, $00cb                                  ; $573c: $01 $cb $00
    rst $38                                       ; $573f: $ff
    rst $38                                       ; $5740: $ff
    rst $38                                       ; $5741: $ff
    rst $38                                       ; $5742: $ff
    db $ed                                        ; $5743: $ed
    nop                                           ; $5744: $00
    ld hl, sp+$00                                 ; $5745: $f8 $00
    rst $38                                       ; $5747: $ff
    rst $38                                       ; $5748: $ff
    rst $38                                       ; $5749: $ff
    rst $38                                       ; $574a: $ff
    rst $38                                       ; $574b: $ff
    rst $38                                       ; $574c: $ff
    rst $38                                       ; $574d: $ff
    rst $38                                       ; $574e: $ff
    db $f4                                        ; $574f: $f4
    nop                                           ; $5750: $00
    di                                            ; $5751: $f3
    nop                                           ; $5752: $00
    rst $38                                       ; $5753: $ff
    rst $38                                       ; $5754: $ff
    rst $38                                       ; $5755: $ff
    rst $38                                       ; $5756: $ff
    rst $38                                       ; $5757: $ff
    rst $38                                       ; $5758: $ff
    rst $38                                       ; $5759: $ff
    rst $38                                       ; $575a: $ff
    dec d                                         ; $575b: $15
    ld bc, $00c8                                  ; $575c: $01 $c8 $00
    rst $38                                       ; $575f: $ff
    rst $38                                       ; $5760: $ff
    rst $38                                       ; $5761: $ff
    rst $38                                       ; $5762: $ff
    rst $38                                       ; $5763: $ff
    rst $38                                       ; $5764: $ff
    rst $38                                       ; $5765: $ff
    rst $38                                       ; $5766: $ff
    dec d                                         ; $5767: $15
    ld bc, $00d2                                  ; $5768: $01 $d2 $00
    rst $38                                       ; $576b: $ff
    rst $38                                       ; $576c: $ff
    rst $38                                       ; $576d: $ff
    rst $38                                       ; $576e: $ff
    rst $38                                       ; $576f: $ff
    rst $38                                       ; $5770: $ff
    rst $38                                       ; $5771: $ff
    rst $38                                       ; $5772: $ff
    ld a, [bc]                                    ; $5773: $0a
    ld bc, $00b3                                  ; $5774: $01 $b3 $00
    rst $38                                       ; $5777: $ff
    rst $38                                       ; $5778: $ff
    rst $38                                       ; $5779: $ff
    rst $38                                       ; $577a: $ff
    rst $38                                       ; $577b: $ff
    rst $38                                       ; $577c: $ff
    rst $38                                       ; $577d: $ff
    rst $38                                       ; $577e: $ff
    or $00                                        ; $577f: $f6 $00
    di                                            ; $5781: $f3
    nop                                           ; $5782: $00
    rst $38                                       ; $5783: $ff
    rst $38                                       ; $5784: $ff
    rst $38                                       ; $5785: $ff
    rst $38                                       ; $5786: $ff
    rst $38                                       ; $5787: $ff
    rst $38                                       ; $5788: $ff
    rst $38                                       ; $5789: $ff
    rst $38                                       ; $578a: $ff
    sbc e                                         ; $578b: $9b
    ld d, a                                       ; $578c: $57
    and a                                         ; $578d: $a7
    ld d, a                                       ; $578e: $57
    or e                                          ; $578f: $b3
    ld d, a                                       ; $5790: $57
    cp a                                          ; $5791: $bf
    ld d, a                                       ; $5792: $57
    bit 2, a                                      ; $5793: $cb $57
    rst $10                                       ; $5795: $d7
    ld d, a                                       ; $5796: $57
    db $e3                                        ; $5797: $e3
    ld d, a                                       ; $5798: $57
    cp a                                          ; $5799: $bf
    ld d, a                                       ; $579a: $57
    db $dd                                        ; $579b: $dd
    nop                                           ; $579c: $00
    ret nc                                        ; $579d: $d0

    nop                                           ; $579e: $00
    rst $38                                       ; $579f: $ff
    rst $38                                       ; $57a0: $ff
    rst $38                                       ; $57a1: $ff
    rst $38                                       ; $57a2: $ff
    rst $38                                       ; $57a3: $ff
    rst $38                                       ; $57a4: $ff
    rst $38                                       ; $57a5: $ff
    rst $38                                       ; $57a6: $ff
    ld [c], a                                     ; $57a7: $e2
    nop                                           ; $57a8: $00
    ld hl, sp+$00                                 ; $57a9: $f8 $00
    rst $38                                       ; $57ab: $ff
    rst $38                                       ; $57ac: $ff
    rst $38                                       ; $57ad: $ff
    rst $38                                       ; $57ae: $ff
    rst $38                                       ; $57af: $ff
    rst $38                                       ; $57b0: $ff
    rst $38                                       ; $57b1: $ff
    rst $38                                       ; $57b2: $ff
    ldh [rP1], a                                  ; $57b3: $e0 $00
    di                                            ; $57b5: $f3
    nop                                           ; $57b6: $00
    rst $38                                       ; $57b7: $ff
    rst $38                                       ; $57b8: $ff
    rst $38                                       ; $57b9: $ff
    rst $38                                       ; $57ba: $ff
    rst $38                                       ; $57bb: $ff
    rst $38                                       ; $57bc: $ff
    rst $38                                       ; $57bd: $ff
    rst $38                                       ; $57be: $ff
    xor $00                                       ; $57bf: $ee $00
    add $00                                       ; $57c1: $c6 $00
    rst $38                                       ; $57c3: $ff
    rst $38                                       ; $57c4: $ff
    rst $38                                       ; $57c5: $ff
    rst $38                                       ; $57c6: $ff
    rst $38                                       ; $57c7: $ff
    rst $38                                       ; $57c8: $ff
    rst $38                                       ; $57c9: $ff
    rst $38                                       ; $57ca: $ff
    db $db                                        ; $57cb: $db
    nop                                           ; $57cc: $00
    ret nc                                        ; $57cd: $d0

    nop                                           ; $57ce: $00
    rst $38                                       ; $57cf: $ff
    rst $38                                       ; $57d0: $ff
    rst $38                                       ; $57d1: $ff
    rst $38                                       ; $57d2: $ff
    rst $38                                       ; $57d3: $ff
    rst $38                                       ; $57d4: $ff
    rst $38                                       ; $57d5: $ff
    rst $38                                       ; $57d6: $ff
    ld a, [bc]                                    ; $57d7: $0a
    ld bc, $00b7                                  ; $57d8: $01 $b7 $00
    rst $38                                       ; $57db: $ff
    rst $38                                       ; $57dc: $ff
    rst $38                                       ; $57dd: $ff
    rst $38                                       ; $57de: $ff
    rst $38                                       ; $57df: $ff
    rst $38                                       ; $57e0: $ff
    rst $38                                       ; $57e1: $ff
    rst $38                                       ; $57e2: $ff
    db $db                                        ; $57e3: $db
    nop                                           ; $57e4: $00
    di                                            ; $57e5: $f3
    nop                                           ; $57e6: $00
    rst $38                                       ; $57e7: $ff
    rst $38                                       ; $57e8: $ff
    rst $38                                       ; $57e9: $ff
    rst $38                                       ; $57ea: $ff
    rst $38                                       ; $57eb: $ff
    rst $38                                       ; $57ec: $ff
    rst $38                                       ; $57ed: $ff
    rst $38                                       ; $57ee: $ff
    rst $38                                       ; $57ef: $ff
    ld d, a                                       ; $57f0: $57
    dec bc                                        ; $57f1: $0b
    ld e, b                                       ; $57f2: $58
    rla                                           ; $57f3: $17
    ld e, b                                       ; $57f4: $58
    inc hl                                        ; $57f5: $23
    ld e, b                                       ; $57f6: $58
    cpl                                           ; $57f7: $2f
    ld e, b                                       ; $57f8: $58
    dec sp                                        ; $57f9: $3b
    ld e, b                                       ; $57fa: $58
    ld b, a                                       ; $57fb: $47
    ld e, b                                       ; $57fc: $58
    inc hl                                        ; $57fd: $23
    ld e, b                                       ; $57fe: $58
    dec d                                         ; $57ff: $15
    ld bc, $0145                                  ; $5800: $01 $45 $01
    xor $00                                       ; $5803: $ee $00
    ld a, b                                       ; $5805: $78
    nop                                           ; $5806: $00
    ld e, h                                       ; $5807: $5c
    ld bc, $0031                                  ; $5808: $01 $31 $00
    inc de                                        ; $580b: $13
    ld bc, $0122                                  ; $580c: $01 $22 $01
    db $fd                                        ; $580f: $fd
    nop                                           ; $5810: $00
    ld l, d                                       ; $5811: $6a
    nop                                           ; $5812: $00
    ld e, h                                       ; $5813: $5c
    ld bc, $0031                                  ; $5814: $01 $31 $00
    ld de, $1a01                                  ; $5817: $11 $01 $1a
    ld bc, $00fc                                  ; $581a: $01 $fc $00
    ld l, h                                       ; $581d: $6c
    nop                                           ; $581e: $00
    ld e, h                                       ; $581f: $5c
    ld bc, $0031                                  ; $5820: $01 $31 $00
    ld a, [$be00]                                 ; $5823: $fa $00 $be
    nop                                           ; $5826: $00
    ld e, h                                       ; $5827: $5c
    ld bc, $0031                                  ; $5828: $01 $31 $00
    rst $38                                       ; $582b: $ff
    rst $38                                       ; $582c: $ff
    rst $38                                       ; $582d: $ff
    rst $38                                       ; $582e: $ff
    db $fd                                        ; $582f: $fd
    nop                                           ; $5830: $00
    and $00                                       ; $5831: $e6 $00
    ld e, h                                       ; $5833: $5c
    ld bc, $0031                                  ; $5834: $01 $31 $00
    rst $38                                       ; $5837: $ff
    rst $38                                       ; $5838: $ff
    rst $38                                       ; $5839: $ff
    rst $38                                       ; $583a: $ff
    rst $30                                       ; $583b: $f7
    nop                                           ; $583c: $00
    jp Jump_000_1700                              ; $583d: $c3 $00 $17


    ld bc, $0059                                  ; $5840: $01 $59 $00
    ld e, h                                       ; $5843: $5c
    ld bc, $0031                                  ; $5844: $01 $31 $00
    inc de                                        ; $5847: $13
    ld bc, $011c                                  ; $5848: $01 $1c $01
    dec bc                                        ; $584b: $0b
    ld bc, $0063                                  ; $584c: $01 $63 $00
    ld e, h                                       ; $584f: $5c
    ld bc, $0031                                  ; $5850: $01 $31 $00
    ld h, e                                       ; $5853: $63
    ld e, b                                       ; $5854: $58
    ld l, a                                       ; $5855: $6f
    ld e, b                                       ; $5856: $58
    ld a, e                                       ; $5857: $7b
    ld e, b                                       ; $5858: $58
    add a                                         ; $5859: $87
    ld e, b                                       ; $585a: $58
    sub e                                         ; $585b: $93
    ld e, b                                       ; $585c: $58
    sbc a                                         ; $585d: $9f
    ld e, b                                       ; $585e: $58
    xor e                                         ; $585f: $ab
    ld e, b                                       ; $5860: $58
    add a                                         ; $5861: $87
    ld e, b                                       ; $5862: $58
    add hl, bc                                    ; $5863: $09
    ld bc, $0155                                  ; $5864: $01 $55 $01
    ld sp, hl                                     ; $5867: $f9
    nop                                           ; $5868: $00
    adc $00                                       ; $5869: $ce $00
    ld sp, hl                                     ; $586b: $f9
    nop                                           ; $586c: $00
    add e                                         ; $586d: $83
    nop                                           ; $586e: $00
    cp $00                                        ; $586f: $fe $00
    ld l, $01                                     ; $5871: $2e $01
    inc bc                                        ; $5873: $03
    ld bc, $0081                                  ; $5874: $01 $81 $00
    rst $38                                       ; $5877: $ff
    rst $38                                       ; $5878: $ff
    rst $38                                       ; $5879: $ff
    rst $38                                       ; $587a: $ff
    cp $00                                        ; $587b: $fe $00
    daa                                           ; $587d: $27
    ld bc, $00fe                                  ; $587e: $01 $fe $00
    adc h                                         ; $5881: $8c
    nop                                           ; $5882: $00
    rst $38                                       ; $5883: $ff
    rst $38                                       ; $5884: $ff
    rst $38                                       ; $5885: $ff
    rst $38                                       ; $5886: $ff
    ld sp, hl                                     ; $5887: $f9
    nop                                           ; $5888: $00
    call nc, $ff00                                ; $5889: $d4 $00 $ff
    rst $38                                       ; $588c: $ff
    rst $38                                       ; $588d: $ff
    rst $38                                       ; $588e: $ff
    rst $38                                       ; $588f: $ff
    rst $38                                       ; $5890: $ff
    rst $38                                       ; $5891: $ff
    rst $38                                       ; $5892: $ff
    db $fd                                        ; $5893: $fd
    nop                                           ; $5894: $00
    ei                                            ; $5895: $fb
    nop                                           ; $5896: $00
    adc a                                         ; $5897: $8f
    nop                                           ; $5898: $00
    ld e, b                                       ; $5899: $58
    nop                                           ; $589a: $00
    rst $38                                       ; $589b: $ff
    rst $38                                       ; $589c: $ff
    rst $38                                       ; $589d: $ff
    rst $38                                       ; $589e: $ff
    ld hl, sp+$00                                 ; $589f: $f8 $00
    jp c, $ff00                                   ; $58a1: $da $00 $ff

    rst $38                                       ; $58a4: $ff
    rst $38                                       ; $58a5: $ff
    rst $38                                       ; $58a6: $ff
    rst $38                                       ; $58a7: $ff
    rst $38                                       ; $58a8: $ff
    rst $38                                       ; $58a9: $ff
    rst $38                                       ; $58aa: $ff
    db $fc                                        ; $58ab: $fc
    nop                                           ; $58ac: $00
    add hl, hl                                    ; $58ad: $29
    ld bc, $00fc                                  ; $58ae: $01 $fc $00
    add h                                         ; $58b1: $84
    nop                                           ; $58b2: $00
    rst $38                                       ; $58b3: $ff
    rst $38                                       ; $58b4: $ff
    rst $38                                       ; $58b5: $ff
    rst $38                                       ; $58b6: $ff
    rst $00                                       ; $58b7: $c7
    ld e, b                                       ; $58b8: $58
    db $d3                                        ; $58b9: $d3
    ld e, b                                       ; $58ba: $58
    rst $18                                       ; $58bb: $df
    ld e, b                                       ; $58bc: $58
    db $eb                                        ; $58bd: $eb
    ld e, b                                       ; $58be: $58
    rst $30                                       ; $58bf: $f7
    ld e, b                                       ; $58c0: $58
    inc bc                                        ; $58c1: $03
    ld e, c                                       ; $58c2: $59
    rrca                                          ; $58c3: $0f
    ld e, c                                       ; $58c4: $59
    db $eb                                        ; $58c5: $eb
    ld e, b                                       ; $58c6: $58
    call c, Call_000_1100                         ; $58c7: $dc $00 $11
    ld bc, $ffff                                  ; $58ca: $01 $ff $ff
    rst $38                                       ; $58cd: $ff
    rst $38                                       ; $58ce: $ff
    rst $38                                       ; $58cf: $ff
    rst $38                                       ; $58d0: $ff
    rst $38                                       ; $58d1: $ff
    rst $38                                       ; $58d2: $ff
    ret c                                         ; $58d3: $d8

    nop                                           ; $58d4: $00
    ld [$ff01], sp                                ; $58d5: $08 $01 $ff
    rst $38                                       ; $58d8: $ff
    rst $38                                       ; $58d9: $ff
    rst $38                                       ; $58da: $ff
    rst $38                                       ; $58db: $ff
    rst $38                                       ; $58dc: $ff
    rst $38                                       ; $58dd: $ff
    rst $38                                       ; $58de: $ff
    sub $00                                       ; $58df: $d6 $00
    inc bc                                        ; $58e1: $03
    ld bc, $ffff                                  ; $58e2: $01 $ff $ff
    rst $38                                       ; $58e5: $ff
    rst $38                                       ; $58e6: $ff
    rst $38                                       ; $58e7: $ff
    rst $38                                       ; $58e8: $ff
    rst $38                                       ; $58e9: $ff
    rst $38                                       ; $58ea: $ff
    di                                            ; $58eb: $f3
    nop                                           ; $58ec: $00
    reti                                          ; $58ed: $d9


    nop                                           ; $58ee: $00
    rst $38                                       ; $58ef: $ff
    rst $38                                       ; $58f0: $ff
    rst $38                                       ; $58f1: $ff
    rst $38                                       ; $58f2: $ff
    rst $38                                       ; $58f3: $ff
    rst $38                                       ; $58f4: $ff
    rst $38                                       ; $58f5: $ff
    rst $38                                       ; $58f6: $ff
    db $f4                                        ; $58f7: $f4
    nop                                           ; $58f8: $00
    ldh [rP1], a                                  ; $58f9: $e0 $00
    rst $38                                       ; $58fb: $ff
    rst $38                                       ; $58fc: $ff
    rst $38                                       ; $58fd: $ff
    rst $38                                       ; $58fe: $ff
    rst $38                                       ; $58ff: $ff
    rst $38                                       ; $5900: $ff
    rst $38                                       ; $5901: $ff
    rst $38                                       ; $5902: $ff
    jp nz, $c300                                  ; $5903: $c2 $00 $c3

    nop                                           ; $5906: $00
    rst $38                                       ; $5907: $ff
    rst $38                                       ; $5908: $ff
    rst $38                                       ; $5909: $ff
    rst $38                                       ; $590a: $ff
    rst $38                                       ; $590b: $ff
    rst $38                                       ; $590c: $ff
    rst $38                                       ; $590d: $ff
    rst $38                                       ; $590e: $ff
    rst $10                                       ; $590f: $d7
    nop                                           ; $5910: $00
    inc bc                                        ; $5911: $03
    ld bc, $ffff                                  ; $5912: $01 $ff $ff
    rst $38                                       ; $5915: $ff
    rst $38                                       ; $5916: $ff
    rst $38                                       ; $5917: $ff
    rst $38                                       ; $5918: $ff
    rst $38                                       ; $5919: $ff
    rst $38                                       ; $591a: $ff
    dec hl                                        ; $591b: $2b
    ld e, c                                       ; $591c: $59
    scf                                           ; $591d: $37
    ld e, c                                       ; $591e: $59
    ld b, e                                       ; $591f: $43
    ld e, c                                       ; $5920: $59
    ld c, a                                       ; $5921: $4f
    ld e, c                                       ; $5922: $59
    ld e, e                                       ; $5923: $5b
    ld e, c                                       ; $5924: $59
    ld h, a                                       ; $5925: $67
    ld e, c                                       ; $5926: $59
    ld [hl], e                                    ; $5927: $73
    ld e, c                                       ; $5928: $59
    ld c, a                                       ; $5929: $4f
    ld e, c                                       ; $592a: $59
    rst $20                                       ; $592b: $e7
    nop                                           ; $592c: $00
    db $10                                        ; $592d: $10
    ld bc, $00d6                                  ; $592e: $01 $d6 $00
    add e                                         ; $5931: $83
    nop                                           ; $5932: $00
    rst $38                                       ; $5933: $ff
    rst $38                                       ; $5934: $ff
    rst $38                                       ; $5935: $ff
    rst $38                                       ; $5936: $ff
    add sp, $00                                   ; $5937: $e8 $00
    ld bc, $5601                                  ; $5939: $01 $01 $56
    nop                                           ; $593c: $00
    ld b, a                                       ; $593d: $47
    nop                                           ; $593e: $00
    rst $38                                       ; $593f: $ff
    rst $38                                       ; $5940: $ff
    rst $38                                       ; $5941: $ff
    rst $38                                       ; $5942: $ff
    jp hl                                         ; $5943: $e9


    nop                                           ; $5944: $00
    db $fc                                        ; $5945: $fc
    nop                                           ; $5946: $00
    ld [$3f00], a                                 ; $5947: $ea $00 $3f
    nop                                           ; $594a: $00
    rst $38                                       ; $594b: $ff
    rst $38                                       ; $594c: $ff
    rst $38                                       ; $594d: $ff
    rst $38                                       ; $594e: $ff
    push de                                       ; $594f: $d5
    nop                                           ; $5950: $00
    adc $00                                       ; $5951: $ce $00
    ld [$4100], a                                 ; $5953: $ea $00 $41
    nop                                           ; $5956: $00
    rst $38                                       ; $5957: $ff
    rst $38                                       ; $5958: $ff
    rst $38                                       ; $5959: $ff
    rst $38                                       ; $595a: $ff
    push af                                       ; $595b: $f5
    nop                                           ; $595c: $00
    jp c, $ff00                                   ; $595d: $da $00 $ff

    rst $38                                       ; $5960: $ff
    rst $38                                       ; $5961: $ff
    rst $38                                       ; $5962: $ff
    rst $38                                       ; $5963: $ff
    rst $38                                       ; $5964: $ff
    rst $38                                       ; $5965: $ff
    rst $38                                       ; $5966: $ff
    di                                            ; $5967: $f3
    nop                                           ; $5968: $00
    cp h                                          ; $5969: $bc
    nop                                           ; $596a: $00
    rst $38                                       ; $596b: $ff
    rst $38                                       ; $596c: $ff
    rst $38                                       ; $596d: $ff
    rst $38                                       ; $596e: $ff
    rst $38                                       ; $596f: $ff
    rst $38                                       ; $5970: $ff
    rst $38                                       ; $5971: $ff
    rst $38                                       ; $5972: $ff
    ld [$fc00], a                                 ; $5973: $ea $00 $fc
    nop                                           ; $5976: $00
    add sp, $00                                   ; $5977: $e8 $00
    ld b, c                                       ; $5979: $41
    nop                                           ; $597a: $00
    rst $38                                       ; $597b: $ff
    rst $38                                       ; $597c: $ff
    rst $38                                       ; $597d: $ff
    rst $38                                       ; $597e: $ff
    adc a                                         ; $597f: $8f
    ld e, c                                       ; $5980: $59
    adc a                                         ; $5981: $8f
    ld e, c                                       ; $5982: $59
    adc a                                         ; $5983: $8f
    ld e, c                                       ; $5984: $59
    adc a                                         ; $5985: $8f
    ld e, c                                       ; $5986: $59
    adc a                                         ; $5987: $8f
    ld e, c                                       ; $5988: $59
    adc a                                         ; $5989: $8f
    ld e, c                                       ; $598a: $59
    adc a                                         ; $598b: $8f
    ld e, c                                       ; $598c: $59
    adc a                                         ; $598d: $8f
    ld e, c                                       ; $598e: $59
    rst $38                                       ; $598f: $ff
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
    rst $38                                       ; $59a0: $ff
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
    rst $38                                       ; $59b1: $ff
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
    rst $38                                       ; $59c2: $ff
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
    rst $38                                       ; $59d3: $ff
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
    di                                            ; $59e3: $f3
    ld e, c                                       ; $59e4: $59
    rst $38                                       ; $59e5: $ff
    ld e, c                                       ; $59e6: $59
    dec bc                                        ; $59e7: $0b
    ld e, d                                       ; $59e8: $5a
    rla                                           ; $59e9: $17
    ld e, d                                       ; $59ea: $5a
    inc hl                                        ; $59eb: $23
    ld e, d                                       ; $59ec: $5a
    cpl                                           ; $59ed: $2f
    ld e, d                                       ; $59ee: $5a
    dec sp                                        ; $59ef: $3b
    ld e, d                                       ; $59f0: $5a
    rla                                           ; $59f1: $17
    ld e, d                                       ; $59f2: $5a
    jp hl                                         ; $59f3: $e9


    nop                                           ; $59f4: $00
    cp $00                                        ; $59f5: $fe $00
    inc bc                                        ; $59f7: $03
    ld bc, $006f                                  ; $59f8: $01 $6f $00
    rst $38                                       ; $59fb: $ff
    rst $38                                       ; $59fc: $ff
    rst $38                                       ; $59fd: $ff
    rst $38                                       ; $59fe: $ff
    add sp, $00                                   ; $59ff: $e8 $00
    ld bc, $0701                                  ; $5a01: $01 $01 $07
    ld bc, $0065                                  ; $5a04: $01 $65 $00
    rst $38                                       ; $5a07: $ff
    rst $38                                       ; $5a08: $ff
    rst $38                                       ; $5a09: $ff
    rst $38                                       ; $5a0a: $ff
    ld [$fc00], a                                 ; $5a0b: $ea $00 $fc
    nop                                           ; $5a0e: $00
    add hl, bc                                    ; $5a0f: $09
    ld bc, $0041                                  ; $5a10: $01 $41 $00
    rst $38                                       ; $5a13: $ff
    rst $38                                       ; $5a14: $ff
    rst $38                                       ; $5a15: $ff
    rst $38                                       ; $5a16: $ff
    db $fd                                        ; $5a17: $fd
    nop                                           ; $5a18: $00
    jp nc, $ff00                                  ; $5a19: $d2 $00 $ff

    rst $38                                       ; $5a1c: $ff
    rst $38                                       ; $5a1d: $ff
    rst $38                                       ; $5a1e: $ff
    rst $38                                       ; $5a1f: $ff
    rst $38                                       ; $5a20: $ff
    rst $38                                       ; $5a21: $ff
    rst $38                                       ; $5a22: $ff
    rst $38                                       ; $5a23: $ff
    nop                                           ; $5a24: $00
    call c, $ff00                                 ; $5a25: $dc $00 $ff
    rst $38                                       ; $5a28: $ff
    rst $38                                       ; $5a29: $ff
    rst $38                                       ; $5a2a: $ff
    rst $38                                       ; $5a2b: $ff
    rst $38                                       ; $5a2c: $ff
    rst $38                                       ; $5a2d: $ff
    rst $38                                       ; $5a2e: $ff
    inc b                                         ; $5a2f: $04
    ld bc, $00bf                                  ; $5a30: $01 $bf $00
    rst $38                                       ; $5a33: $ff
    rst $38                                       ; $5a34: $ff
    rst $38                                       ; $5a35: $ff
    rst $38                                       ; $5a36: $ff
    rst $38                                       ; $5a37: $ff
    rst $38                                       ; $5a38: $ff
    rst $38                                       ; $5a39: $ff
    rst $38                                       ; $5a3a: $ff
    ld [$fc00], a                                 ; $5a3b: $ea $00 $fc
    nop                                           ; $5a3e: $00
    add hl, bc                                    ; $5a3f: $09
    ld bc, $0041                                  ; $5a40: $01 $41 $00
    rst $38                                       ; $5a43: $ff
    rst $38                                       ; $5a44: $ff
    rst $38                                       ; $5a45: $ff
    rst $38                                       ; $5a46: $ff
    ld d, a                                       ; $5a47: $57
    ld e, d                                       ; $5a48: $5a
    ld h, e                                       ; $5a49: $63
    ld e, d                                       ; $5a4a: $5a
    ld l, a                                       ; $5a4b: $6f
    ld e, d                                       ; $5a4c: $5a
    ld a, e                                       ; $5a4d: $7b
    ld e, d                                       ; $5a4e: $5a
    add a                                         ; $5a4f: $87
    ld e, d                                       ; $5a50: $5a
    sub e                                         ; $5a51: $93
    ld e, d                                       ; $5a52: $5a
    sbc a                                         ; $5a53: $9f
    ld e, d                                       ; $5a54: $5a
    ld a, e                                       ; $5a55: $7b
    ld e, d                                       ; $5a56: $5a
    dec c                                         ; $5a57: $0d
    ld bc, HeaderManufacturerCode                 ; $5a58: $01 $3f $01
    and h                                         ; $5a5b: $a4
    nop                                           ; $5a5c: $00
    ld [c], a                                     ; $5a5d: $e2
    nop                                           ; $5a5e: $00
    rst $38                                       ; $5a5f: $ff
    rst $38                                       ; $5a60: $ff
    rst $38                                       ; $5a61: $ff
    rst $38                                       ; $5a62: $ff
    rrca                                          ; $5a63: $0f
    ld bc, $013d                                  ; $5a64: $01 $3d $01
    add e                                         ; $5a67: $83
    nop                                           ; $5a68: $00
    jp nz, $ff00                                  ; $5a69: $c2 $00 $ff

    rst $38                                       ; $5a6c: $ff
    rst $38                                       ; $5a6d: $ff
    rst $38                                       ; $5a6e: $ff
    rlca                                          ; $5a6f: $07
    ld bc, $013e                                  ; $5a70: $01 $3e $01
    ld a, h                                       ; $5a73: $7c
    nop                                           ; $5a74: $00
    cp l                                          ; $5a75: $bd
    nop                                           ; $5a76: $00
    rst $38                                       ; $5a77: $ff
    rst $38                                       ; $5a78: $ff
    rst $38                                       ; $5a79: $ff
    rst $38                                       ; $5a7a: $ff
    and $00                                       ; $5a7b: $e6 $00
    jr nz, jr_03d_5a80                            ; $5a7d: $20 $01

    ld h, d                                       ; $5a7f: $62

jr_03d_5a80:
    nop                                           ; $5a80: $00
    ld e, a                                       ; $5a81: $5f
    nop                                           ; $5a82: $00
    rst $38                                       ; $5a83: $ff
    rst $38                                       ; $5a84: $ff
    rst $38                                       ; $5a85: $ff
    rst $38                                       ; $5a86: $ff
    db $ec                                        ; $5a87: $ec
    nop                                           ; $5a88: $00
    jr z, jr_03d_5a8c                             ; $5a89: $28 $01

    ld h, d                                       ; $5a8b: $62

jr_03d_5a8c:
    nop                                           ; $5a8c: $00
    ld h, h                                       ; $5a8d: $64
    nop                                           ; $5a8e: $00
    rst $38                                       ; $5a8f: $ff
    rst $38                                       ; $5a90: $ff
    rst $38                                       ; $5a91: $ff
    rst $38                                       ; $5a92: $ff
    sub $00                                       ; $5a93: $d6 $00
    inc d                                         ; $5a95: $14
    ld bc, $005f                                  ; $5a96: $01 $5f $00
    dec [hl]                                      ; $5a99: $35
    nop                                           ; $5a9a: $00
    rst $38                                       ; $5a9b: $ff
    rst $38                                       ; $5a9c: $ff
    rst $38                                       ; $5a9d: $ff
    rst $38                                       ; $5a9e: $ff
    ld [$3d01], sp                                ; $5a9f: $08 $01 $3d
    ld bc, $007e                                  ; $5aa2: $01 $7e $00
    cp b                                          ; $5aa5: $b8
    nop                                           ; $5aa6: $00
    rst $38                                       ; $5aa7: $ff
    rst $38                                       ; $5aa8: $ff
    rst $38                                       ; $5aa9: $ff
    rst $38                                       ; $5aaa: $ff
    cp e                                          ; $5aab: $bb
    ld e, d                                       ; $5aac: $5a
    rst $00                                       ; $5aad: $c7
    ld e, d                                       ; $5aae: $5a
    db $d3                                        ; $5aaf: $d3
    ld e, d                                       ; $5ab0: $5a
    rst $18                                       ; $5ab1: $df
    ld e, d                                       ; $5ab2: $5a
    db $eb                                        ; $5ab3: $eb
    ld e, d                                       ; $5ab4: $5a
    rst $30                                       ; $5ab5: $f7
    ld e, d                                       ; $5ab6: $5a
    inc bc                                        ; $5ab7: $03
    ld e, e                                       ; $5ab8: $5b
    rst $18                                       ; $5ab9: $df
    ld e, d                                       ; $5aba: $5a
    ld l, $01                                     ; $5abb: $2e $01
    ld l, h                                       ; $5abd: $6c
    ld bc, HeaderROMSize                          ; $5abe: $01 $48 $01
    db $ec                                        ; $5ac1: $ec
    nop                                           ; $5ac2: $00
    rst $38                                       ; $5ac3: $ff
    rst $38                                       ; $5ac4: $ff
    rst $38                                       ; $5ac5: $ff
    rst $38                                       ; $5ac6: $ff
    dec a                                         ; $5ac7: $3d
    ld bc, $013a                                  ; $5ac8: $01 $3a $01
    rst $38                                       ; $5acb: $ff
    rst $38                                       ; $5acc: $ff
    rst $38                                       ; $5acd: $ff
    rst $38                                       ; $5ace: $ff
    rst $38                                       ; $5acf: $ff
    rst $38                                       ; $5ad0: $ff
    rst $38                                       ; $5ad1: $ff
    rst $38                                       ; $5ad2: $ff
    dec a                                         ; $5ad3: $3d
    ld bc, $0133                                  ; $5ad4: $01 $33 $01
    rst $38                                       ; $5ad7: $ff
    rst $38                                       ; $5ad8: $ff
    rst $38                                       ; $5ad9: $ff
    rst $38                                       ; $5ada: $ff
    rst $38                                       ; $5adb: $ff
    rst $38                                       ; $5adc: $ff
    rst $38                                       ; $5add: $ff
    rst $38                                       ; $5ade: $ff
    ld b, c                                       ; $5adf: $41
    ld bc, $00fc                                  ; $5ae0: $01 $fc $00
    rst $38                                       ; $5ae3: $ff
    rst $38                                       ; $5ae4: $ff
    rst $38                                       ; $5ae5: $ff
    rst $38                                       ; $5ae6: $ff
    rst $38                                       ; $5ae7: $ff
    rst $38                                       ; $5ae8: $ff
    rst $38                                       ; $5ae9: $ff
    rst $38                                       ; $5aea: $ff
    ccf                                           ; $5aeb: $3f
    ld bc, $0107                                  ; $5aec: $01 $07 $01
    rst $38                                       ; $5aef: $ff
    rst $38                                       ; $5af0: $ff
    rst $38                                       ; $5af1: $ff
    rst $38                                       ; $5af2: $ff
    rst $38                                       ; $5af3: $ff
    rst $38                                       ; $5af4: $ff
    rst $38                                       ; $5af5: $ff
    rst $38                                       ; $5af6: $ff
    ld b, e                                       ; $5af7: $43
    ld bc, $00e9                                  ; $5af8: $01 $e9 $00
    rst $38                                       ; $5afb: $ff
    rst $38                                       ; $5afc: $ff
    rst $38                                       ; $5afd: $ff
    rst $38                                       ; $5afe: $ff
    rst $38                                       ; $5aff: $ff
    rst $38                                       ; $5b00: $ff
    rst $38                                       ; $5b01: $ff
    rst $38                                       ; $5b02: $ff
    dec a                                         ; $5b03: $3d
    ld bc, $0133                                  ; $5b04: $01 $33 $01
    inc e                                         ; $5b07: $1c
    ld bc, $0078                                  ; $5b08: $01 $78 $00
    rst $38                                       ; $5b0b: $ff
    rst $38                                       ; $5b0c: $ff
    rst $38                                       ; $5b0d: $ff
    rst $38                                       ; $5b0e: $ff
    rra                                           ; $5b0f: $1f
    ld e, e                                       ; $5b10: $5b
    dec hl                                        ; $5b11: $2b
    ld e, e                                       ; $5b12: $5b
    scf                                           ; $5b13: $37
    ld e, e                                       ; $5b14: $5b
    ld b, e                                       ; $5b15: $43
    ld e, e                                       ; $5b16: $5b
    ld c, a                                       ; $5b17: $4f
    ld e, e                                       ; $5b18: $5b
    ld e, e                                       ; $5b19: $5b
    ld e, e                                       ; $5b1a: $5b
    ld h, a                                       ; $5b1b: $67
    ld e, e                                       ; $5b1c: $5b
    ld b, e                                       ; $5b1d: $43
    ld e, e                                       ; $5b1e: $5b
    rrca                                          ; $5b1f: $0f
    ld bc, $00f3                                  ; $5b20: $01 $f3 $00
    rst $38                                       ; $5b23: $ff
    rst $38                                       ; $5b24: $ff
    rst $38                                       ; $5b25: $ff
    rst $38                                       ; $5b26: $ff
    rst $38                                       ; $5b27: $ff
    rst $38                                       ; $5b28: $ff
    rst $38                                       ; $5b29: $ff
    rst $38                                       ; $5b2a: $ff
    dec c                                         ; $5b2b: $0d
    ld bc, $0101                                  ; $5b2c: $01 $01 $01
    inc c                                         ; $5b2f: $0c
    ld bc, $0054                                  ; $5b30: $01 $54 $00
    rst $38                                       ; $5b33: $ff
    rst $38                                       ; $5b34: $ff
    rst $38                                       ; $5b35: $ff
    rst $38                                       ; $5b36: $ff
    dec bc                                        ; $5b37: $0b
    ld bc, $00fc                                  ; $5b38: $01 $fc $00
    ld b, $01                                     ; $5b3b: $06 $01
    ccf                                           ; $5b3d: $3f
    nop                                           ; $5b3e: $00
    rst $38                                       ; $5b3f: $ff
    rst $38                                       ; $5b40: $ff
    rst $38                                       ; $5b41: $ff
    rst $38                                       ; $5b42: $ff
    inc d                                         ; $5b43: $14
    ld bc, $00ce                                  ; $5b44: $01 $ce $00
    rst $38                                       ; $5b47: $ff
    rst $38                                       ; $5b48: $ff
    rst $38                                       ; $5b49: $ff
    rst $38                                       ; $5b4a: $ff
    rst $38                                       ; $5b4b: $ff
    rst $38                                       ; $5b4c: $ff
    rst $38                                       ; $5b4d: $ff
    rst $38                                       ; $5b4e: $ff
    dec c                                         ; $5b4f: $0d
    ld bc, $00d9                                  ; $5b50: $01 $d9 $00
    rst $38                                       ; $5b53: $ff
    rst $38                                       ; $5b54: $ff
    rst $38                                       ; $5b55: $ff
    rst $38                                       ; $5b56: $ff
    rst $38                                       ; $5b57: $ff
    rst $38                                       ; $5b58: $ff
    rst $38                                       ; $5b59: $ff
    rst $38                                       ; $5b5a: $ff
    rla                                           ; $5b5b: $17
    ld bc, $00bf                                  ; $5b5c: $01 $bf $00
    rst $38                                       ; $5b5f: $ff
    rst $38                                       ; $5b60: $ff
    rst $38                                       ; $5b61: $ff
    rst $38                                       ; $5b62: $ff
    rst $38                                       ; $5b63: $ff
    rst $38                                       ; $5b64: $ff
    rst $38                                       ; $5b65: $ff
    rst $38                                       ; $5b66: $ff
    dec bc                                        ; $5b67: $0b
    ld bc, $00fd                                  ; $5b68: $01 $fd $00
    rlca                                          ; $5b6b: $07
    ld bc, $003f                                  ; $5b6c: $01 $3f $00
    rst $38                                       ; $5b6f: $ff
    rst $38                                       ; $5b70: $ff
    rst $38                                       ; $5b71: $ff
    rst $38                                       ; $5b72: $ff
    add e                                         ; $5b73: $83
    ld e, e                                       ; $5b74: $5b
    add e                                         ; $5b75: $83
    ld e, e                                       ; $5b76: $5b
    add e                                         ; $5b77: $83
    ld e, e                                       ; $5b78: $5b
    add e                                         ; $5b79: $83
    ld e, e                                       ; $5b7a: $5b
    add e                                         ; $5b7b: $83
    ld e, e                                       ; $5b7c: $5b
    add e                                         ; $5b7d: $83
    ld e, e                                       ; $5b7e: $5b
    add e                                         ; $5b7f: $83
    ld e, e                                       ; $5b80: $5b
    add e                                         ; $5b81: $83
    ld e, e                                       ; $5b82: $5b
    rst $38                                       ; $5b83: $ff
    rst $38                                       ; $5b84: $ff
    rst $38                                       ; $5b85: $ff
    rst $38                                       ; $5b86: $ff
    rst $38                                       ; $5b87: $ff
    rst $38                                       ; $5b88: $ff
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
    rst $38                                       ; $5b99: $ff
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
    rst $38                                       ; $5ba8: $ff
    rst $38                                       ; $5ba9: $ff
    rst $38                                       ; $5baa: $ff
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
    rst $38                                       ; $5bbb: $ff
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
    rst $38                                       ; $5bcc: $ff
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
    rst $20                                       ; $5bd7: $e7
    ld e, e                                       ; $5bd8: $5b
    di                                            ; $5bd9: $f3
    ld e, e                                       ; $5bda: $5b
    rst $38                                       ; $5bdb: $ff
    ld e, e                                       ; $5bdc: $5b
    dec bc                                        ; $5bdd: $0b
    ld e, h                                       ; $5bde: $5c
    rla                                           ; $5bdf: $17
    ld e, h                                       ; $5be0: $5c
    inc hl                                        ; $5be1: $23
    ld e, h                                       ; $5be2: $5c
    cpl                                           ; $5be3: $2f
    ld e, h                                       ; $5be4: $5c
    dec bc                                        ; $5be5: $0b
    ld e, h                                       ; $5be6: $5c
    ld hl, sp+$00                                 ; $5be7: $f8 $00
    dec l                                         ; $5be9: $2d
    ld bc, $0157                                  ; $5bea: $01 $57 $01
    xor b                                         ; $5bed: $a8
    nop                                           ; $5bee: $00
    rst $38                                       ; $5bef: $ff
    rst $38                                       ; $5bf0: $ff
    rst $38                                       ; $5bf1: $ff
    rst $38                                       ; $5bf2: $ff
    db $fd                                        ; $5bf3: $fd
    nop                                           ; $5bf4: $00
    ld a, [hl+]                                   ; $5bf5: $2a
    ld bc, $0163                                  ; $5bf6: $01 $63 $01
    adc a                                         ; $5bf9: $8f
    nop                                           ; $5bfa: $00
    rst $38                                       ; $5bfb: $ff
    rst $38                                       ; $5bfc: $ff
    rst $38                                       ; $5bfd: $ff
    rst $38                                       ; $5bfe: $ff
    rst $38                                       ; $5bff: $ff
    nop                                           ; $5c00: $00
    ld h, $01                                     ; $5c01: $26 $01
    ld h, [hl]                                    ; $5c03: $66
    ld bc, $0086                                  ; $5c04: $01 $86 $00
    rst $38                                       ; $5c07: $ff
    rst $38                                       ; $5c08: $ff
    rst $38                                       ; $5c09: $ff
    rst $38                                       ; $5c0a: $ff
    inc d                                         ; $5c0b: $14
    ld bc, $00fc                                  ; $5c0c: $01 $fc $00
    rst $38                                       ; $5c0f: $ff
    rst $38                                       ; $5c10: $ff
    rst $38                                       ; $5c11: $ff
    rst $38                                       ; $5c12: $ff
    rst $38                                       ; $5c13: $ff
    rst $38                                       ; $5c14: $ff
    rst $38                                       ; $5c15: $ff
    rst $38                                       ; $5c16: $ff
    cp $00                                        ; $5c17: $fe $00
    ld [hl+], a                                   ; $5c19: $22
    ld bc, $ffff                                  ; $5c1a: $01 $ff $ff
    rst $38                                       ; $5c1d: $ff
    rst $38                                       ; $5c1e: $ff
    rst $38                                       ; $5c1f: $ff
    rst $38                                       ; $5c20: $ff
    rst $38                                       ; $5c21: $ff
    rst $38                                       ; $5c22: $ff
    jr jr_03d_5c26                                ; $5c23: $18 $01

    db $fd                                        ; $5c25: $fd

jr_03d_5c26:
    nop                                           ; $5c26: $00
    rst $38                                       ; $5c27: $ff
    rst $38                                       ; $5c28: $ff
    rst $38                                       ; $5c29: $ff
    rst $38                                       ; $5c2a: $ff
    rst $38                                       ; $5c2b: $ff
    rst $38                                       ; $5c2c: $ff
    rst $38                                       ; $5c2d: $ff
    rst $38                                       ; $5c2e: $ff
    rst $38                                       ; $5c2f: $ff
    nop                                           ; $5c30: $00
    dec h                                         ; $5c31: $25
    ld bc, $0169                                  ; $5c32: $01 $69 $01
    adc b                                         ; $5c35: $88
    nop                                           ; $5c36: $00
    rst $38                                       ; $5c37: $ff
    rst $38                                       ; $5c38: $ff
    rst $38                                       ; $5c39: $ff
    rst $38                                       ; $5c3a: $ff
    ld c, e                                       ; $5c3b: $4b
    ld e, h                                       ; $5c3c: $5c
    ld d, a                                       ; $5c3d: $57
    ld e, h                                       ; $5c3e: $5c
    ld h, e                                       ; $5c3f: $63
    ld e, h                                       ; $5c40: $5c
    ld l, a                                       ; $5c41: $6f
    ld e, h                                       ; $5c42: $5c
    ld a, e                                       ; $5c43: $7b
    ld e, h                                       ; $5c44: $5c
    add a                                         ; $5c45: $87
    ld e, h                                       ; $5c46: $5c
    sub e                                         ; $5c47: $93
    ld e, h                                       ; $5c48: $5c
    ld l, a                                       ; $5c49: $6f
    ld e, h                                       ; $5c4a: $5c
    rst $08                                       ; $5c4b: $cf
    nop                                           ; $5c4c: $00
    ld e, a                                       ; $5c4d: $5f
    ld bc, $00ae                                  ; $5c4e: $01 $ae $00
    cp d                                          ; $5c51: $ba
    nop                                           ; $5c52: $00
    rst $38                                       ; $5c53: $ff
    rst $38                                       ; $5c54: $ff
    rst $38                                       ; $5c55: $ff
    rst $38                                       ; $5c56: $ff
    jp nc, Jump_03d_6800                          ; $5c57: $d2 $00 $68

    ld bc, $00ad                                  ; $5c5a: $01 $ad $00
    or l                                          ; $5c5d: $b5
    nop                                           ; $5c5e: $00
    rst $38                                       ; $5c5f: $ff
    rst $38                                       ; $5c60: $ff
    rst $38                                       ; $5c61: $ff
    rst $38                                       ; $5c62: $ff
    call Call_03d_6a00                            ; $5c63: $cd $00 $6a
    ld bc, $00a9                                  ; $5c66: $01 $a9 $00
    or b                                          ; $5c69: $b0
    nop                                           ; $5c6a: $00
    ld [hl], l                                    ; $5c6b: $75
    nop                                           ; $5c6c: $00
    ld a, a                                       ; $5c6d: $7f
    nop                                           ; $5c6e: $00
    or [hl]                                       ; $5c6f: $b6
    nop                                           ; $5c70: $00
    dec sp                                        ; $5c71: $3b
    ld bc, $0075                                  ; $5c72: $01 $75 $00
    ld e, e                                       ; $5c75: $5b
    nop                                           ; $5c76: $00
    rst $38                                       ; $5c77: $ff
    rst $38                                       ; $5c78: $ff
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    or a                                          ; $5c7b: $b7
    nop                                           ; $5c7c: $00
    ld c, e                                       ; $5c7d: $4b
    ld bc, $00a9                                  ; $5c7e: $01 $a9 $00
    sub a                                         ; $5c81: $97
    nop                                           ; $5c82: $00
    rst $38                                       ; $5c83: $ff
    rst $38                                       ; $5c84: $ff
    rst $38                                       ; $5c85: $ff
    rst $38                                       ; $5c86: $ff
    cp b                                          ; $5c87: $b8
    nop                                           ; $5c88: $00
    ld c, d                                       ; $5c89: $4a
    ld bc, $ffff                                  ; $5c8a: $01 $ff $ff
    rst $38                                       ; $5c8d: $ff
    rst $38                                       ; $5c8e: $ff
    rst $38                                       ; $5c8f: $ff
    rst $38                                       ; $5c90: $ff
    rst $38                                       ; $5c91: $ff
    rst $38                                       ; $5c92: $ff
    adc $00                                       ; $5c93: $ce $00
    ld l, c                                       ; $5c95: $69
    ld bc, $00ac                                  ; $5c96: $01 $ac $00
    xor [hl]                                      ; $5c99: $ae
    nop                                           ; $5c9a: $00
    rst $38                                       ; $5c9b: $ff
    rst $38                                       ; $5c9c: $ff
    rst $38                                       ; $5c9d: $ff
    rst $38                                       ; $5c9e: $ff
    xor a                                         ; $5c9f: $af
    ld e, h                                       ; $5ca0: $5c
    cp e                                          ; $5ca1: $bb
    ld e, h                                       ; $5ca2: $5c
    rst $00                                       ; $5ca3: $c7
    ld e, h                                       ; $5ca4: $5c
    db $d3                                        ; $5ca5: $d3
    ld e, h                                       ; $5ca6: $5c
    rst $18                                       ; $5ca7: $df
    ld e, h                                       ; $5ca8: $5c
    db $eb                                        ; $5ca9: $eb
    ld e, h                                       ; $5caa: $5c
    rst $30                                       ; $5cab: $f7
    ld e, h                                       ; $5cac: $5c
    db $d3                                        ; $5cad: $d3
    ld e, h                                       ; $5cae: $5c
    add hl, hl                                    ; $5caf: $29
    ld bc, $0121                                  ; $5cb0: $01 $21 $01
    cp d                                          ; $5cb3: $ba
    nop                                           ; $5cb4: $00
    or h                                          ; $5cb5: $b4
    nop                                           ; $5cb6: $00
    rst $38                                       ; $5cb7: $ff
    rst $38                                       ; $5cb8: $ff
    rst $38                                       ; $5cb9: $ff
    rst $38                                       ; $5cba: $ff
    ld h, $01                                     ; $5cbb: $26 $01
    ld hl, $a001                                  ; $5cbd: $21 $01 $a0
    nop                                           ; $5cc0: $00
    sbc a                                         ; $5cc1: $9f
    nop                                           ; $5cc2: $00
    rst $38                                       ; $5cc3: $ff
    rst $38                                       ; $5cc4: $ff
    rst $38                                       ; $5cc5: $ff
    rst $38                                       ; $5cc6: $ff
    ld h, $01                                     ; $5cc7: $26 $01
    ld a, [de]                                    ; $5cc9: $1a
    ld bc, $009c                                  ; $5cca: $01 $9c $00
    sbc b                                         ; $5ccd: $98
    nop                                           ; $5cce: $00
    rst $38                                       ; $5ccf: $ff
    rst $38                                       ; $5cd0: $ff
    rst $38                                       ; $5cd1: $ff
    rst $38                                       ; $5cd2: $ff
    ld [$1400], a                                 ; $5cd3: $ea $00 $14
    ld bc, $ffff                                  ; $5cd6: $01 $ff $ff
    rst $38                                       ; $5cd9: $ff
    rst $38                                       ; $5cda: $ff
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    rst $38                                       ; $5cdd: $ff
    rst $38                                       ; $5cde: $ff
    ld d, $01                                     ; $5cdf: $16 $01
    ld c, $01                                     ; $5ce1: $0e $01
    rst $38                                       ; $5ce3: $ff
    rst $38                                       ; $5ce4: $ff
    rst $38                                       ; $5ce5: $ff
    rst $38                                       ; $5ce6: $ff
    rst $38                                       ; $5ce7: $ff
    rst $38                                       ; $5ce8: $ff
    rst $38                                       ; $5ce9: $ff
    rst $38                                       ; $5cea: $ff
    rst $18                                       ; $5ceb: $df
    nop                                           ; $5cec: $00
    dec c                                         ; $5ced: $0d
    ld bc, $0089                                  ; $5cee: $01 $89 $00
    ld a, [hl]                                    ; $5cf1: $7e
    nop                                           ; $5cf2: $00
    rst $38                                       ; $5cf3: $ff
    rst $38                                       ; $5cf4: $ff
    rst $38                                       ; $5cf5: $ff
    rst $38                                       ; $5cf6: $ff
    ld [hl+], a                                   ; $5cf7: $22
    ld bc, $011d                                  ; $5cf8: $01 $1d $01
    sbc c                                         ; $5cfb: $99
    nop                                           ; $5cfc: $00
    sbc c                                         ; $5cfd: $99
    nop                                           ; $5cfe: $00
    rst $38                                       ; $5cff: $ff
    rst $38                                       ; $5d00: $ff
    rst $38                                       ; $5d01: $ff
    rst $38                                       ; $5d02: $ff
    inc de                                        ; $5d03: $13
    ld e, l                                       ; $5d04: $5d
    rra                                           ; $5d05: $1f
    ld e, l                                       ; $5d06: $5d
    dec hl                                        ; $5d07: $2b
    ld e, l                                       ; $5d08: $5d
    scf                                           ; $5d09: $37
    ld e, l                                       ; $5d0a: $5d
    ld b, e                                       ; $5d0b: $43
    ld e, l                                       ; $5d0c: $5d
    ld c, a                                       ; $5d0d: $4f
    ld e, l                                       ; $5d0e: $5d
    ld e, e                                       ; $5d0f: $5b
    ld e, l                                       ; $5d10: $5d
    scf                                           ; $5d11: $37
    ld e, l                                       ; $5d12: $5d
    db $10                                        ; $5d13: $10
    ld bc, $00fa                                  ; $5d14: $01 $fa $00
    ld b, $01                                     ; $5d17: $06 $01
    adc d                                         ; $5d19: $8a
    nop                                           ; $5d1a: $00
    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    rst $38                                       ; $5d1d: $ff
    rst $38                                       ; $5d1e: $ff
    ld c, $01                                     ; $5d1f: $0e $01
    ld [$0f01], sp                                ; $5d21: $08 $01 $0f
    ld bc, $004e                                  ; $5d24: $01 $4e $00
    rst $38                                       ; $5d27: $ff
    rst $38                                       ; $5d28: $ff
    rst $38                                       ; $5d29: $ff
    rst $38                                       ; $5d2a: $ff
    rlca                                          ; $5d2b: $07
    ld bc, $00f6                                  ; $5d2c: $01 $f6 $00
    rst $38                                       ; $5d2f: $ff
    rst $38                                       ; $5d30: $ff
    rst $38                                       ; $5d31: $ff
    rst $38                                       ; $5d32: $ff
    rst $38                                       ; $5d33: $ff
    rst $38                                       ; $5d34: $ff
    rst $38                                       ; $5d35: $ff
    rst $38                                       ; $5d36: $ff
    ld [bc], a                                    ; $5d37: $02
    ld bc, $00ca                                  ; $5d38: $01 $ca $00
    rst $38                                       ; $5d3b: $ff
    rst $38                                       ; $5d3c: $ff
    rst $38                                       ; $5d3d: $ff
    rst $38                                       ; $5d3e: $ff
    rst $38                                       ; $5d3f: $ff
    rst $38                                       ; $5d40: $ff
    rst $38                                       ; $5d41: $ff
    rst $38                                       ; $5d42: $ff
    db $f4                                        ; $5d43: $f4
    nop                                           ; $5d44: $00
    rst $10                                       ; $5d45: $d7
    nop                                           ; $5d46: $00
    rst $38                                       ; $5d47: $ff
    rst $38                                       ; $5d48: $ff
    rst $38                                       ; $5d49: $ff
    rst $38                                       ; $5d4a: $ff
    rst $38                                       ; $5d4b: $ff
    rst $38                                       ; $5d4c: $ff
    rst $38                                       ; $5d4d: $ff
    rst $38                                       ; $5d4e: $ff
    ld bc, $b501                                  ; $5d4f: $01 $01 $b5
    nop                                           ; $5d52: $00
    rst $38                                       ; $5d53: $ff
    rst $38                                       ; $5d54: $ff
    rst $38                                       ; $5d55: $ff
    rst $38                                       ; $5d56: $ff
    rst $38                                       ; $5d57: $ff
    rst $38                                       ; $5d58: $ff
    rst $38                                       ; $5d59: $ff
    rst $38                                       ; $5d5a: $ff
    cp $00                                        ; $5d5b: $fe $00
    jp hl                                         ; $5d5d: $e9


    nop                                           ; $5d5e: $00
    rst $38                                       ; $5d5f: $ff
    rst $38                                       ; $5d60: $ff
    rst $38                                       ; $5d61: $ff
    rst $38                                       ; $5d62: $ff
    rst $38                                       ; $5d63: $ff
    rst $38                                       ; $5d64: $ff
    rst $38                                       ; $5d65: $ff
    rst $38                                       ; $5d66: $ff
    ld [hl], a                                    ; $5d67: $77
    ld e, l                                       ; $5d68: $5d
    ld [hl], a                                    ; $5d69: $77
    ld e, l                                       ; $5d6a: $5d
    ld [hl], a                                    ; $5d6b: $77
    ld e, l                                       ; $5d6c: $5d
    ld [hl], a                                    ; $5d6d: $77
    ld e, l                                       ; $5d6e: $5d
    ld [hl], a                                    ; $5d6f: $77
    ld e, l                                       ; $5d70: $5d
    ld [hl], a                                    ; $5d71: $77
    ld e, l                                       ; $5d72: $5d
    ld [hl], a                                    ; $5d73: $77
    ld e, l                                       ; $5d74: $5d
    ld [hl], a                                    ; $5d75: $77
    ld e, l                                       ; $5d76: $5d
    rst $38                                       ; $5d77: $ff
    rst $38                                       ; $5d78: $ff
    rst $38                                       ; $5d79: $ff
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
    rst $38                                       ; $5d8a: $ff
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
    rst $38                                       ; $5d9b: $ff
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
    rst $38                                       ; $5dac: $ff
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
    rst $38                                       ; $5dbd: $ff
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
    db $db                                        ; $5dcb: $db
    ld e, l                                       ; $5dcc: $5d
    rst $20                                       ; $5dcd: $e7
    ld e, l                                       ; $5dce: $5d
    di                                            ; $5dcf: $f3
    ld e, l                                       ; $5dd0: $5d
    rst $38                                       ; $5dd1: $ff
    ld e, l                                       ; $5dd2: $5d
    dec bc                                        ; $5dd3: $0b
    ld e, [hl]                                    ; $5dd4: $5e
    rla                                           ; $5dd5: $17
    ld e, [hl]                                    ; $5dd6: $5e
    inc hl                                        ; $5dd7: $23
    ld e, [hl]                                    ; $5dd8: $5e
    rst $38                                       ; $5dd9: $ff
    ld e, l                                       ; $5dda: $5d
    db $dd                                        ; $5ddb: $dd
    nop                                           ; $5ddc: $00
    rla                                           ; $5ddd: $17
    ld bc, $011f                                  ; $5dde: $01 $1f $01
    cp h                                          ; $5de1: $bc
    nop                                           ; $5de2: $00
    rst $38                                       ; $5de3: $ff
    rst $38                                       ; $5de4: $ff
    rst $38                                       ; $5de5: $ff
    rst $38                                       ; $5de6: $ff
    db $dd                                        ; $5de7: $dd
    nop                                           ; $5de8: $00
    ld a, [de]                                    ; $5de9: $1a
    ld bc, $0127                                  ; $5dea: $01 $27 $01
    ld [hl], b                                    ; $5ded: $70
    nop                                           ; $5dee: $00
    rst $38                                       ; $5def: $ff
    rst $38                                       ; $5df0: $ff
    rst $38                                       ; $5df1: $ff
    rst $38                                       ; $5df2: $ff
    sbc $00                                       ; $5df3: $de $00
    rlca                                          ; $5df5: $07
    ld bc, $011e                                  ; $5df6: $01 $1e $01
    ld d, h                                       ; $5df9: $54
    nop                                           ; $5dfa: $00
    rst $38                                       ; $5dfb: $ff
    rst $38                                       ; $5dfc: $ff
    rst $38                                       ; $5dfd: $ff
    rst $38                                       ; $5dfe: $ff
    add hl, de                                    ; $5dff: $19
    ld bc, $00d6                                  ; $5e00: $01 $d6 $00
    rst $38                                       ; $5e03: $ff
    rst $38                                       ; $5e04: $ff
    rst $38                                       ; $5e05: $ff
    rst $38                                       ; $5e06: $ff
    rst $38                                       ; $5e07: $ff
    rst $38                                       ; $5e08: $ff
    rst $38                                       ; $5e09: $ff
    rst $38                                       ; $5e0a: $ff
    nop                                           ; $5e0b: $00
    ld bc, $00e0                                  ; $5e0c: $01 $e0 $00
    rst $38                                       ; $5e0f: $ff
    rst $38                                       ; $5e10: $ff
    rst $38                                       ; $5e11: $ff
    rst $38                                       ; $5e12: $ff
    rst $38                                       ; $5e13: $ff
    rst $38                                       ; $5e14: $ff
    rst $38                                       ; $5e15: $ff
    rst $38                                       ; $5e16: $ff
    rra                                           ; $5e17: $1f
    ld bc, $00c3                                  ; $5e18: $01 $c3 $00
    rst $38                                       ; $5e1b: $ff
    rst $38                                       ; $5e1c: $ff
    rst $38                                       ; $5e1d: $ff
    rst $38                                       ; $5e1e: $ff
    rst $38                                       ; $5e1f: $ff
    rst $38                                       ; $5e20: $ff
    rst $38                                       ; $5e21: $ff
    rst $38                                       ; $5e22: $ff
    db $eb                                        ; $5e23: $eb
    nop                                           ; $5e24: $00
    dec b                                         ; $5e25: $05
    ld bc, $011f                                  ; $5e26: $01 $1f $01
    ld c, [hl]                                    ; $5e29: $4e
    nop                                           ; $5e2a: $00
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    rst $38                                       ; $5e2d: $ff
    rst $38                                       ; $5e2e: $ff
    ccf                                           ; $5e2f: $3f
    ld e, [hl]                                    ; $5e30: $5e
    ld c, e                                       ; $5e31: $4b
    ld e, [hl]                                    ; $5e32: $5e
    ld d, a                                       ; $5e33: $57
    ld e, [hl]                                    ; $5e34: $5e
    ld h, e                                       ; $5e35: $63
    ld e, [hl]                                    ; $5e36: $5e
    ld l, a                                       ; $5e37: $6f
    ld e, [hl]                                    ; $5e38: $5e
    ld a, e                                       ; $5e39: $7b
    ld e, [hl]                                    ; $5e3a: $5e
    add a                                         ; $5e3b: $87
    ld e, [hl]                                    ; $5e3c: $5e
    ld h, e                                       ; $5e3d: $63
    ld e, [hl]                                    ; $5e3e: $5e
    dec b                                         ; $5e3f: $05
    ld bc, HeaderSGBFlag                          ; $5e40: $01 $46 $01
    daa                                           ; $5e43: $27
    ld bc, $0087                                  ; $5e44: $01 $87 $00
    rst $38                                       ; $5e47: $ff
    rst $38                                       ; $5e48: $ff
    rst $38                                       ; $5e49: $ff
    rst $38                                       ; $5e4a: $ff
    db $10                                        ; $5e4b: $10
    ld bc, HeaderCartridgeType                    ; $5e4c: $01 $47 $01
    inc h                                         ; $5e4f: $24
    ld bc, $008e                                  ; $5e50: $01 $8e $00
    rst $38                                       ; $5e53: $ff
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    rst $38                                       ; $5e56: $ff
    inc de                                        ; $5e57: $13
    ld bc, HeaderNewLicenseeCode                  ; $5e58: $01 $44 $01
    ld a, [hl+]                                   ; $5e5b: $2a
    ld bc, $0087                                  ; $5e5c: $01 $87 $00
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    ld b, $01                                     ; $5e63: $06 $01
    ld hl, sp+$00                                 ; $5e65: $f8 $00
    sub [hl]                                      ; $5e67: $96
    ld bc, $0056                                  ; $5e68: $01 $56 $00
    rst $38                                       ; $5e6b: $ff
    rst $38                                       ; $5e6c: $ff
    rst $38                                       ; $5e6d: $ff
    rst $38                                       ; $5e6e: $ff
    inc de                                        ; $5e6f: $13
    ld bc, $0126                                  ; $5e70: $01 $26 $01
    ld e, d                                       ; $5e73: $5a
    ld bc, $006d                                  ; $5e74: $01 $6d $00
    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    rst $38                                       ; $5e7a: $ff
    dec bc                                        ; $5e7b: $0b
    ld bc, $0109                                  ; $5e7c: $01 $09 $01
    ld l, a                                       ; $5e7f: $6f
    ld bc, $0066                                  ; $5e80: $01 $66 $00
    rst $38                                       ; $5e83: $ff
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    ld de, $4101                                  ; $5e87: $11 $01 $41
    ld bc, $012d                                  ; $5e8a: $01 $2d $01
    add l                                         ; $5e8d: $85
    nop                                           ; $5e8e: $00
    rst $38                                       ; $5e8f: $ff
    rst $38                                       ; $5e90: $ff
    rst $38                                       ; $5e91: $ff
    rst $38                                       ; $5e92: $ff
    and e                                         ; $5e93: $a3
    ld e, [hl]                                    ; $5e94: $5e
    and e                                         ; $5e95: $a3
    ld e, [hl]                                    ; $5e96: $5e
    and e                                         ; $5e97: $a3
    ld e, [hl]                                    ; $5e98: $5e
    and e                                         ; $5e99: $a3
    ld e, [hl]                                    ; $5e9a: $5e
    and e                                         ; $5e9b: $a3
    ld e, [hl]                                    ; $5e9c: $5e
    and e                                         ; $5e9d: $a3
    ld e, [hl]                                    ; $5e9e: $5e
    and e                                         ; $5e9f: $a3
    ld e, [hl]                                    ; $5ea0: $5e
    and e                                         ; $5ea1: $a3
    ld e, [hl]                                    ; $5ea2: $5e
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
    rst $38                                       ; $5ec2: $ff
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
    rst $38                                       ; $5ed3: $ff
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
    rst $38                                       ; $5ee4: $ff
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
    rst $38                                       ; $5ef5: $ff
    rst $38                                       ; $5ef6: $ff
    rlca                                          ; $5ef7: $07
    ld e, a                                       ; $5ef8: $5f
    inc de                                        ; $5ef9: $13
    ld e, a                                       ; $5efa: $5f
    rra                                           ; $5efb: $1f
    ld e, a                                       ; $5efc: $5f
    dec hl                                        ; $5efd: $2b
    ld e, a                                       ; $5efe: $5f
    scf                                           ; $5eff: $37
    ld e, a                                       ; $5f00: $5f
    ld b, e                                       ; $5f01: $43
    ld e, a                                       ; $5f02: $5f
    ld c, a                                       ; $5f03: $4f
    ld e, a                                       ; $5f04: $5f
    dec hl                                        ; $5f05: $2b
    ld e, a                                       ; $5f06: $5f
    call nc, $f900                                ; $5f07: $d4 $00 $f9
    nop                                           ; $5f0a: $00
    add $00                                       ; $5f0b: $c6 $00
    xor h                                         ; $5f0d: $ac
    nop                                           ; $5f0e: $00
    add hl, de                                    ; $5f0f: $19
    ld bc, $0058                                  ; $5f10: $01 $58 $00
    jp hl                                         ; $5f13: $e9


    nop                                           ; $5f14: $00
    rrca                                          ; $5f15: $0f
    ld bc, $00e0                                  ; $5f16: $01 $e0 $00
    adc b                                         ; $5f19: $88
    nop                                           ; $5f1a: $00
    add hl, de                                    ; $5f1b: $19
    ld bc, $0058                                  ; $5f1c: $01 $58 $00
    rst $20                                       ; $5f1f: $e7
    nop                                           ; $5f20: $00
    ld a, [bc]                                    ; $5f21: $0a
    ld bc, $00e0                                  ; $5f22: $01 $e0 $00
    adc b                                         ; $5f25: $88
    nop                                           ; $5f26: $00
    add hl, de                                    ; $5f27: $19
    ld bc, $0058                                  ; $5f28: $01 $58 $00
    ret z                                         ; $5f2b: $c8

    nop                                           ; $5f2c: $00
    jp hl                                         ; $5f2d: $e9


    nop                                           ; $5f2e: $00
    ldh [rP1], a                                  ; $5f2f: $e0 $00
    adc b                                         ; $5f31: $88
    nop                                           ; $5f32: $00
    add hl, de                                    ; $5f33: $19
    ld bc, $0058                                  ; $5f34: $01 $58 $00
    rst $08                                       ; $5f37: $cf
    nop                                           ; $5f38: $00
    ldh a, [rP1]                                  ; $5f39: $f0 $00
    ei                                            ; $5f3b: $fb
    nop                                           ; $5f3c: $00
    ld [hl], d                                    ; $5f3d: $72
    nop                                           ; $5f3e: $00
    add hl, de                                    ; $5f3f: $19
    ld bc, $0058                                  ; $5f40: $01 $58 $00
    ret nz                                        ; $5f43: $c0

    nop                                           ; $5f44: $00
    push de                                       ; $5f45: $d5
    nop                                           ; $5f46: $00
    ldh [rP1], a                                  ; $5f47: $e0 $00
    adc b                                         ; $5f49: $88
    nop                                           ; $5f4a: $00
    add hl, de                                    ; $5f4b: $19
    ld bc, $0058                                  ; $5f4c: $01 $58 $00
    db $eb                                        ; $5f4f: $eb
    nop                                           ; $5f50: $00
    ld [$e001], sp                                ; $5f51: $08 $01 $e0
    nop                                           ; $5f54: $00
    adc b                                         ; $5f55: $88
    nop                                           ; $5f56: $00
    add hl, de                                    ; $5f57: $19
    ld bc, $0058                                  ; $5f58: $01 $58 $00
    ld l, e                                       ; $5f5b: $6b
    ld e, a                                       ; $5f5c: $5f
    ld [hl], a                                    ; $5f5d: $77
    ld e, a                                       ; $5f5e: $5f
    add e                                         ; $5f5f: $83
    ld e, a                                       ; $5f60: $5f
    adc a                                         ; $5f61: $8f
    ld e, a                                       ; $5f62: $5f
    sbc e                                         ; $5f63: $9b
    ld e, a                                       ; $5f64: $5f
    and a                                         ; $5f65: $a7
    ld e, a                                       ; $5f66: $5f
    or e                                          ; $5f67: $b3
    ld e, a                                       ; $5f68: $5f
    adc a                                         ; $5f69: $8f
    ld e, a                                       ; $5f6a: $5f
    rra                                           ; $5f6b: $1f
    ld bc, $012d                                  ; $5f6c: $01 $2d $01
    ld a, c                                       ; $5f6f: $79
    ld bc, $00d4                                  ; $5f70: $01 $d4 $00
    rst $38                                       ; $5f73: $ff
    rst $38                                       ; $5f74: $ff
    rst $38                                       ; $5f75: $ff
    rst $38                                       ; $5f76: $ff
    rst $38                                       ; $5f77: $ff
    nop                                           ; $5f78: $00
    dec sp                                        ; $5f79: $3b
    ld bc, $017f                                  ; $5f7a: $01 $7f $01
    rst $00                                       ; $5f7d: $c7
    nop                                           ; $5f7e: $00
    rst $38                                       ; $5f7f: $ff
    rst $38                                       ; $5f80: $ff
    rst $38                                       ; $5f81: $ff
    rst $38                                       ; $5f82: $ff
    ld bc, $3601                                  ; $5f83: $01 $01 $36
    ld bc, $0176                                  ; $5f86: $01 $76 $01
    and b                                         ; $5f89: $a0
    nop                                           ; $5f8a: $00
    rst $38                                       ; $5f8b: $ff
    rst $38                                       ; $5f8c: $ff
    rst $38                                       ; $5f8d: $ff
    rst $38                                       ; $5f8e: $ff
    dec hl                                        ; $5f8f: $2b
    ld bc, $0122                                  ; $5f90: $01 $22 $01
    add c                                         ; $5f93: $81
    ld bc, $007b                                  ; $5f94: $01 $7b $00
    rst $38                                       ; $5f97: $ff
    rst $38                                       ; $5f98: $ff
    rst $38                                       ; $5f99: $ff
    rst $38                                       ; $5f9a: $ff
    jr z, jr_03d_5f9e                             ; $5f9b: $28 $01

    dec l                                         ; $5f9d: $2d

jr_03d_5f9e:
    ld bc, $0184                                  ; $5f9e: $01 $84 $01
    rlc b                                         ; $5fa1: $cb $00
    add l                                         ; $5fa3: $85
    ld bc, $0050                                  ; $5fa4: $01 $50 $00
    dec sp                                        ; $5fa7: $3b
    ld bc, $0115                                  ; $5fa8: $01 $15 $01
    add b                                         ; $5fab: $80
    ld bc, $007d                                  ; $5fac: $01 $7d $00
    rst $38                                       ; $5faf: $ff
    rst $38                                       ; $5fb0: $ff
    rst $38                                       ; $5fb1: $ff
    rst $38                                       ; $5fb2: $ff
    ld [bc], a                                    ; $5fb3: $02
    ld bc, $0138                                  ; $5fb4: $01 $38 $01
    ld [hl], h                                    ; $5fb7: $74
    ld bc, $009f                                  ; $5fb8: $01 $9f $00
    rst $38                                       ; $5fbb: $ff
    rst $38                                       ; $5fbc: $ff
    rst $38                                       ; $5fbd: $ff
    rst $38                                       ; $5fbe: $ff
    rst $08                                       ; $5fbf: $cf
    ld e, a                                       ; $5fc0: $5f
    db $db                                        ; $5fc1: $db
    ld e, a                                       ; $5fc2: $5f
    rst $20                                       ; $5fc3: $e7
    ld e, a                                       ; $5fc4: $5f
    di                                            ; $5fc5: $f3
    ld e, a                                       ; $5fc6: $5f
    rst $38                                       ; $5fc7: $ff
    ld e, a                                       ; $5fc8: $5f
    dec bc                                        ; $5fc9: $0b
    ld h, b                                       ; $5fca: $60
    rla                                           ; $5fcb: $17
    ld h, b                                       ; $5fcc: $60
    di                                            ; $5fcd: $f3
    ld e, a                                       ; $5fce: $5f
    dec de                                        ; $5fcf: $1b
    ld bc, $00bf                                  ; $5fd0: $01 $bf $00
    rst $38                                       ; $5fd3: $ff
    rst $38                                       ; $5fd4: $ff
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    rst $38                                       ; $5fd7: $ff
    rst $38                                       ; $5fd8: $ff
    rst $38                                       ; $5fd9: $ff
    rst $38                                       ; $5fda: $ff
    dec de                                        ; $5fdb: $1b
    ld bc, $00d0                                  ; $5fdc: $01 $d0 $00
    rst $38                                       ; $5fdf: $ff
    rst $38                                       ; $5fe0: $ff
    rst $38                                       ; $5fe1: $ff
    rst $38                                       ; $5fe2: $ff
    rst $38                                       ; $5fe3: $ff
    rst $38                                       ; $5fe4: $ff
    rst $38                                       ; $5fe5: $ff
    rst $38                                       ; $5fe6: $ff
    dec e                                         ; $5fe7: $1d
    ld bc, $00cc                                  ; $5fe8: $01 $cc $00
    rst $38                                       ; $5feb: $ff
    rst $38                                       ; $5fec: $ff
    rst $38                                       ; $5fed: $ff
    rst $38                                       ; $5fee: $ff
    rst $38                                       ; $5fef: $ff
    rst $38                                       ; $5ff0: $ff
    rst $38                                       ; $5ff1: $ff
    rst $38                                       ; $5ff2: $ff
    inc d                                         ; $5ff3: $14
    ld bc, $009b                                  ; $5ff4: $01 $9b $00
    rst $38                                       ; $5ff7: $ff
    rst $38                                       ; $5ff8: $ff
    rst $38                                       ; $5ff9: $ff
    rst $38                                       ; $5ffa: $ff
    rst $38                                       ; $5ffb: $ff
    rst $38                                       ; $5ffc: $ff
    rst $38                                       ; $5ffd: $ff
    rst $38                                       ; $5ffe: $ff
    inc e                                         ; $5fff: $1c
    ld bc, $00a7                                  ; $6000: $01 $a7 $00
    rst $38                                       ; $6003: $ff
    rst $38                                       ; $6004: $ff
    rst $38                                       ; $6005: $ff
    rst $38                                       ; $6006: $ff
    rst $38                                       ; $6007: $ff
    rst $38                                       ; $6008: $ff
    rst $38                                       ; $6009: $ff
    rst $38                                       ; $600a: $ff
    ld c, $01                                     ; $600b: $0e $01
    adc [hl]                                      ; $600d: $8e
    nop                                           ; $600e: $00
    rst $38                                       ; $600f: $ff
    rst $38                                       ; $6010: $ff
    rst $38                                       ; $6011: $ff
    rst $38                                       ; $6012: $ff
    rst $38                                       ; $6013: $ff
    rst $38                                       ; $6014: $ff
    rst $38                                       ; $6015: $ff
    rst $38                                       ; $6016: $ff
    ld e, $01                                     ; $6017: $1e $01
    call z, $ff00                                 ; $6019: $cc $00 $ff
    rst $38                                       ; $601c: $ff
    rst $38                                       ; $601d: $ff
    rst $38                                       ; $601e: $ff
    rst $38                                       ; $601f: $ff
    rst $38                                       ; $6020: $ff
    rst $38                                       ; $6021: $ff
    rst $38                                       ; $6022: $ff
    inc sp                                        ; $6023: $33
    ld h, b                                       ; $6024: $60
    inc sp                                        ; $6025: $33
    ld h, b                                       ; $6026: $60
    inc sp                                        ; $6027: $33
    ld h, b                                       ; $6028: $60
    inc sp                                        ; $6029: $33
    ld h, b                                       ; $602a: $60
    inc sp                                        ; $602b: $33
    ld h, b                                       ; $602c: $60
    inc sp                                        ; $602d: $33
    ld h, b                                       ; $602e: $60
    inc sp                                        ; $602f: $33
    ld h, b                                       ; $6030: $60
    inc sp                                        ; $6031: $33
    ld h, b                                       ; $6032: $60
    rst $38                                       ; $6033: $ff
    rst $38                                       ; $6034: $ff
    rst $38                                       ; $6035: $ff
    rst $38                                       ; $6036: $ff
    rst $38                                       ; $6037: $ff
    rst $38                                       ; $6038: $ff
    rst $38                                       ; $6039: $ff
    rst $38                                       ; $603a: $ff
    rst $38                                       ; $603b: $ff
    rst $38                                       ; $603c: $ff
    rst $38                                       ; $603d: $ff
    rst $38                                       ; $603e: $ff
    rst $38                                       ; $603f: $ff
    rst $38                                       ; $6040: $ff
    rst $38                                       ; $6041: $ff
    rst $38                                       ; $6042: $ff
    rst $38                                       ; $6043: $ff
    rst $38                                       ; $6044: $ff
    rst $38                                       ; $6045: $ff
    rst $38                                       ; $6046: $ff
    rst $38                                       ; $6047: $ff
    rst $38                                       ; $6048: $ff
    rst $38                                       ; $6049: $ff
    rst $38                                       ; $604a: $ff
    rst $38                                       ; $604b: $ff
    rst $38                                       ; $604c: $ff
    rst $38                                       ; $604d: $ff
    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    rst $38                                       ; $6050: $ff
    rst $38                                       ; $6051: $ff
    rst $38                                       ; $6052: $ff
    rst $38                                       ; $6053: $ff
    rst $38                                       ; $6054: $ff
    rst $38                                       ; $6055: $ff
    rst $38                                       ; $6056: $ff
    rst $38                                       ; $6057: $ff
    rst $38                                       ; $6058: $ff
    rst $38                                       ; $6059: $ff
    rst $38                                       ; $605a: $ff
    rst $38                                       ; $605b: $ff
    rst $38                                       ; $605c: $ff
    rst $38                                       ; $605d: $ff
    rst $38                                       ; $605e: $ff
    rst $38                                       ; $605f: $ff
    rst $38                                       ; $6060: $ff
    rst $38                                       ; $6061: $ff
    rst $38                                       ; $6062: $ff
    rst $38                                       ; $6063: $ff
    rst $38                                       ; $6064: $ff
    rst $38                                       ; $6065: $ff
    rst $38                                       ; $6066: $ff
    rst $38                                       ; $6067: $ff
    rst $38                                       ; $6068: $ff
    rst $38                                       ; $6069: $ff
    rst $38                                       ; $606a: $ff
    rst $38                                       ; $606b: $ff
    rst $38                                       ; $606c: $ff
    rst $38                                       ; $606d: $ff
    rst $38                                       ; $606e: $ff
    rst $38                                       ; $606f: $ff
    rst $38                                       ; $6070: $ff
    rst $38                                       ; $6071: $ff
    rst $38                                       ; $6072: $ff
    rst $38                                       ; $6073: $ff
    rst $38                                       ; $6074: $ff
    rst $38                                       ; $6075: $ff
    rst $38                                       ; $6076: $ff
    rst $38                                       ; $6077: $ff
    rst $38                                       ; $6078: $ff
    rst $38                                       ; $6079: $ff
    rst $38                                       ; $607a: $ff
    rst $38                                       ; $607b: $ff
    rst $38                                       ; $607c: $ff
    rst $38                                       ; $607d: $ff
    rst $38                                       ; $607e: $ff
    rst $38                                       ; $607f: $ff
    rst $38                                       ; $6080: $ff
    rst $38                                       ; $6081: $ff
    rst $38                                       ; $6082: $ff
    rst $38                                       ; $6083: $ff
    rst $38                                       ; $6084: $ff
    rst $38                                       ; $6085: $ff
    rst $38                                       ; $6086: $ff
    sub a                                         ; $6087: $97
    ld h, b                                       ; $6088: $60
    sub a                                         ; $6089: $97
    ld h, b                                       ; $608a: $60
    sub a                                         ; $608b: $97
    ld h, b                                       ; $608c: $60
    sub a                                         ; $608d: $97
    ld h, b                                       ; $608e: $60
    sub a                                         ; $608f: $97
    ld h, b                                       ; $6090: $60
    sub a                                         ; $6091: $97
    ld h, b                                       ; $6092: $60
    sub a                                         ; $6093: $97
    ld h, b                                       ; $6094: $60
    sub a                                         ; $6095: $97
    ld h, b                                       ; $6096: $60
    rst $38                                       ; $6097: $ff
    rst $38                                       ; $6098: $ff
    rst $38                                       ; $6099: $ff
    rst $38                                       ; $609a: $ff
    rst $38                                       ; $609b: $ff
    rst $38                                       ; $609c: $ff
    rst $38                                       ; $609d: $ff
    rst $38                                       ; $609e: $ff
    rst $38                                       ; $609f: $ff
    rst $38                                       ; $60a0: $ff
    rst $38                                       ; $60a1: $ff
    rst $38                                       ; $60a2: $ff
    rst $38                                       ; $60a3: $ff
    rst $38                                       ; $60a4: $ff
    rst $38                                       ; $60a5: $ff
    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    rst $38                                       ; $60a8: $ff
    rst $38                                       ; $60a9: $ff
    rst $38                                       ; $60aa: $ff
    rst $38                                       ; $60ab: $ff
    rst $38                                       ; $60ac: $ff
    rst $38                                       ; $60ad: $ff
    rst $38                                       ; $60ae: $ff
    rst $38                                       ; $60af: $ff
    rst $38                                       ; $60b0: $ff
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    rst $38                                       ; $60b5: $ff
    rst $38                                       ; $60b6: $ff
    rst $38                                       ; $60b7: $ff
    rst $38                                       ; $60b8: $ff
    rst $38                                       ; $60b9: $ff
    rst $38                                       ; $60ba: $ff
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    rst $38                                       ; $60c0: $ff
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff
    rst $38                                       ; $60c7: $ff
    rst $38                                       ; $60c8: $ff
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
    rst $38                                       ; $60cb: $ff
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    rst $38                                       ; $60d2: $ff
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    rst $38                                       ; $60d7: $ff
    rst $38                                       ; $60d8: $ff
    rst $38                                       ; $60d9: $ff
    rst $38                                       ; $60da: $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    rst $38                                       ; $60e9: $ff
    rst $38                                       ; $60ea: $ff
    ei                                            ; $60eb: $fb
    ld h, b                                       ; $60ec: $60
    ei                                            ; $60ed: $fb
    ld h, b                                       ; $60ee: $60
    ei                                            ; $60ef: $fb
    ld h, b                                       ; $60f0: $60
    ei                                            ; $60f1: $fb
    ld h, b                                       ; $60f2: $60
    ei                                            ; $60f3: $fb
    ld h, b                                       ; $60f4: $60
    ei                                            ; $60f5: $fb
    ld h, b                                       ; $60f6: $60
    ei                                            ; $60f7: $fb
    ld h, b                                       ; $60f8: $60
    ei                                            ; $60f9: $fb
    ld h, b                                       ; $60fa: $60
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
    rst $38                                       ; $6107: $ff
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
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    rst $38                                       ; $611a: $ff
    rst $38                                       ; $611b: $ff
    rst $38                                       ; $611c: $ff
    rst $38                                       ; $611d: $ff
    rst $38                                       ; $611e: $ff
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
    rst $38                                       ; $6129: $ff
    rst $38                                       ; $612a: $ff
    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    rst $38                                       ; $612d: $ff
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    rst $38                                       ; $6130: $ff
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    rst $38                                       ; $6133: $ff
    rst $38                                       ; $6134: $ff
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    rst $38                                       ; $6137: $ff
    rst $38                                       ; $6138: $ff
    rst $38                                       ; $6139: $ff
    rst $38                                       ; $613a: $ff
    rst $38                                       ; $613b: $ff
    rst $38                                       ; $613c: $ff
    rst $38                                       ; $613d: $ff
    rst $38                                       ; $613e: $ff
    rst $38                                       ; $613f: $ff
    rst $38                                       ; $6140: $ff
    rst $38                                       ; $6141: $ff
    rst $38                                       ; $6142: $ff
    rst $38                                       ; $6143: $ff
    rst $38                                       ; $6144: $ff
    rst $38                                       ; $6145: $ff
    rst $38                                       ; $6146: $ff
    rst $38                                       ; $6147: $ff
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    rst $38                                       ; $614b: $ff
    rst $38                                       ; $614c: $ff
    rst $38                                       ; $614d: $ff
    rst $38                                       ; $614e: $ff
    ld e, a                                       ; $614f: $5f
    ld h, c                                       ; $6150: $61
    ld e, a                                       ; $6151: $5f
    ld h, c                                       ; $6152: $61
    ld e, a                                       ; $6153: $5f
    ld h, c                                       ; $6154: $61
    ld e, a                                       ; $6155: $5f
    ld h, c                                       ; $6156: $61
    ld e, a                                       ; $6157: $5f
    ld h, c                                       ; $6158: $61
    ld e, a                                       ; $6159: $5f
    ld h, c                                       ; $615a: $61
    ld e, a                                       ; $615b: $5f
    ld h, c                                       ; $615c: $61
    ld e, a                                       ; $615d: $5f
    ld h, c                                       ; $615e: $61
    rst $38                                       ; $615f: $ff
    rst $38                                       ; $6160: $ff
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    rst $38                                       ; $6163: $ff
    rst $38                                       ; $6164: $ff
    rst $38                                       ; $6165: $ff
    rst $38                                       ; $6166: $ff
    rst $38                                       ; $6167: $ff
    rst $38                                       ; $6168: $ff
    rst $38                                       ; $6169: $ff
    rst $38                                       ; $616a: $ff
    rst $38                                       ; $616b: $ff
    rst $38                                       ; $616c: $ff
    rst $38                                       ; $616d: $ff
    rst $38                                       ; $616e: $ff
    rst $38                                       ; $616f: $ff
    rst $38                                       ; $6170: $ff
    rst $38                                       ; $6171: $ff
    rst $38                                       ; $6172: $ff
    rst $38                                       ; $6173: $ff
    rst $38                                       ; $6174: $ff
    rst $38                                       ; $6175: $ff
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    rst $38                                       ; $6179: $ff
    rst $38                                       ; $617a: $ff
    rst $38                                       ; $617b: $ff
    rst $38                                       ; $617c: $ff
    rst $38                                       ; $617d: $ff
    rst $38                                       ; $617e: $ff
    rst $38                                       ; $617f: $ff
    rst $38                                       ; $6180: $ff
    rst $38                                       ; $6181: $ff
    rst $38                                       ; $6182: $ff
    rst $38                                       ; $6183: $ff
    rst $38                                       ; $6184: $ff
    rst $38                                       ; $6185: $ff
    rst $38                                       ; $6186: $ff
    rst $38                                       ; $6187: $ff
    rst $38                                       ; $6188: $ff
    rst $38                                       ; $6189: $ff
    rst $38                                       ; $618a: $ff
    rst $38                                       ; $618b: $ff
    rst $38                                       ; $618c: $ff
    rst $38                                       ; $618d: $ff
    rst $38                                       ; $618e: $ff
    rst $38                                       ; $618f: $ff
    rst $38                                       ; $6190: $ff
    rst $38                                       ; $6191: $ff
    rst $38                                       ; $6192: $ff
    rst $38                                       ; $6193: $ff
    rst $38                                       ; $6194: $ff
    rst $38                                       ; $6195: $ff
    rst $38                                       ; $6196: $ff
    rst $38                                       ; $6197: $ff
    rst $38                                       ; $6198: $ff
    rst $38                                       ; $6199: $ff
    rst $38                                       ; $619a: $ff
    rst $38                                       ; $619b: $ff
    rst $38                                       ; $619c: $ff
    rst $38                                       ; $619d: $ff
    rst $38                                       ; $619e: $ff
    rst $38                                       ; $619f: $ff
    rst $38                                       ; $61a0: $ff
    rst $38                                       ; $61a1: $ff
    rst $38                                       ; $61a2: $ff
    rst $38                                       ; $61a3: $ff
    rst $38                                       ; $61a4: $ff
    rst $38                                       ; $61a5: $ff
    rst $38                                       ; $61a6: $ff
    rst $38                                       ; $61a7: $ff
    rst $38                                       ; $61a8: $ff
    rst $38                                       ; $61a9: $ff
    rst $38                                       ; $61aa: $ff
    rst $38                                       ; $61ab: $ff
    rst $38                                       ; $61ac: $ff
    rst $38                                       ; $61ad: $ff
    rst $38                                       ; $61ae: $ff
    rst $38                                       ; $61af: $ff
    rst $38                                       ; $61b0: $ff
    rst $38                                       ; $61b1: $ff
    rst $38                                       ; $61b2: $ff
    jp $c361                                      ; $61b3: $c3 $61 $c3


    ld h, c                                       ; $61b6: $61
    jp $c361                                      ; $61b7: $c3 $61 $c3


    ld h, c                                       ; $61ba: $61
    jp $c361                                      ; $61bb: $c3 $61 $c3


    ld h, c                                       ; $61be: $61
    jp $c361                                      ; $61bf: $c3 $61 $c3


    ld h, c                                       ; $61c2: $61
    rst $38                                       ; $61c3: $ff
    rst $38                                       ; $61c4: $ff
    rst $38                                       ; $61c5: $ff
    rst $38                                       ; $61c6: $ff
    rst $38                                       ; $61c7: $ff
    rst $38                                       ; $61c8: $ff
    rst $38                                       ; $61c9: $ff
    rst $38                                       ; $61ca: $ff
    rst $38                                       ; $61cb: $ff
    rst $38                                       ; $61cc: $ff
    rst $38                                       ; $61cd: $ff
    rst $38                                       ; $61ce: $ff
    rst $38                                       ; $61cf: $ff
    rst $38                                       ; $61d0: $ff
    rst $38                                       ; $61d1: $ff
    rst $38                                       ; $61d2: $ff
    rst $38                                       ; $61d3: $ff
    rst $38                                       ; $61d4: $ff
    rst $38                                       ; $61d5: $ff
    rst $38                                       ; $61d6: $ff
    rst $38                                       ; $61d7: $ff
    rst $38                                       ; $61d8: $ff
    rst $38                                       ; $61d9: $ff
    rst $38                                       ; $61da: $ff
    rst $38                                       ; $61db: $ff
    rst $38                                       ; $61dc: $ff
    rst $38                                       ; $61dd: $ff
    rst $38                                       ; $61de: $ff
    rst $38                                       ; $61df: $ff
    rst $38                                       ; $61e0: $ff
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
    rst $38                                       ; $61f1: $ff
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
    rst $38                                       ; $6202: $ff
    rst $38                                       ; $6203: $ff
    rst $38                                       ; $6204: $ff
    rst $38                                       ; $6205: $ff
    rst $38                                       ; $6206: $ff
    rst $38                                       ; $6207: $ff
    rst $38                                       ; $6208: $ff
    rst $38                                       ; $6209: $ff
    rst $38                                       ; $620a: $ff
    rst $38                                       ; $620b: $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    rst $38                                       ; $6211: $ff
    rst $38                                       ; $6212: $ff
    rst $38                                       ; $6213: $ff
    rst $38                                       ; $6214: $ff
    rst $38                                       ; $6215: $ff
    rst $38                                       ; $6216: $ff
    daa                                           ; $6217: $27
    ld h, d                                       ; $6218: $62
    daa                                           ; $6219: $27
    ld h, d                                       ; $621a: $62
    daa                                           ; $621b: $27
    ld h, d                                       ; $621c: $62
    daa                                           ; $621d: $27
    ld h, d                                       ; $621e: $62
    daa                                           ; $621f: $27
    ld h, d                                       ; $6220: $62
    daa                                           ; $6221: $27
    ld h, d                                       ; $6222: $62
    daa                                           ; $6223: $27
    ld h, d                                       ; $6224: $62
    daa                                           ; $6225: $27
    ld h, d                                       ; $6226: $62
    rst $38                                       ; $6227: $ff
    rst $38                                       ; $6228: $ff
    rst $38                                       ; $6229: $ff
    rst $38                                       ; $622a: $ff
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    rst $38                                       ; $622e: $ff
    rst $38                                       ; $622f: $ff
    rst $38                                       ; $6230: $ff
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
    rst $38                                       ; $6241: $ff
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
    rst $38                                       ; $6252: $ff
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
    rst $38                                       ; $6263: $ff
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
    rst $38                                       ; $6274: $ff
    rst $38                                       ; $6275: $ff
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    rst $38                                       ; $6278: $ff
    rst $38                                       ; $6279: $ff
    rst $38                                       ; $627a: $ff
    adc e                                         ; $627b: $8b
    ld h, d                                       ; $627c: $62
    adc e                                         ; $627d: $8b
    ld h, d                                       ; $627e: $62
    adc e                                         ; $627f: $8b
    ld h, d                                       ; $6280: $62
    adc e                                         ; $6281: $8b
    ld h, d                                       ; $6282: $62
    adc e                                         ; $6283: $8b
    ld h, d                                       ; $6284: $62
    adc e                                         ; $6285: $8b
    ld h, d                                       ; $6286: $62
    adc e                                         ; $6287: $8b
    ld h, d                                       ; $6288: $62
    adc e                                         ; $6289: $8b
    ld h, d                                       ; $628a: $62
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
    rst $38                                       ; $6296: $ff
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
    rst $38                                       ; $62a7: $ff
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
    rst $38                                       ; $62b8: $ff
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
    rst $38                                       ; $62c9: $ff
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
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    rst $38                                       ; $62db: $ff
    rst $38                                       ; $62dc: $ff
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    rst $28                                       ; $62df: $ef
    ld h, d                                       ; $62e0: $62
    rst $28                                       ; $62e1: $ef
    ld h, d                                       ; $62e2: $62
    rst $28                                       ; $62e3: $ef
    ld h, d                                       ; $62e4: $62
    rst $28                                       ; $62e5: $ef
    ld h, d                                       ; $62e6: $62
    rst $28                                       ; $62e7: $ef
    ld h, d                                       ; $62e8: $62
    rst $28                                       ; $62e9: $ef
    ld h, d                                       ; $62ea: $62
    rst $28                                       ; $62eb: $ef
    ld h, d                                       ; $62ec: $62
    rst $28                                       ; $62ed: $ef
    ld h, d                                       ; $62ee: $62
    rst $38                                       ; $62ef: $ff
    rst $38                                       ; $62f0: $ff
    rst $38                                       ; $62f1: $ff
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
    rst $38                                       ; $6302: $ff
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
    rst $38                                       ; $6313: $ff
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
    rst $38                                       ; $6321: $ff
    rst $38                                       ; $6322: $ff
    rst $38                                       ; $6323: $ff
    rst $38                                       ; $6324: $ff
    rst $38                                       ; $6325: $ff
    rst $38                                       ; $6326: $ff
    rst $38                                       ; $6327: $ff
    rst $38                                       ; $6328: $ff
    rst $38                                       ; $6329: $ff
    rst $38                                       ; $632a: $ff
    rst $38                                       ; $632b: $ff
    rst $38                                       ; $632c: $ff
    rst $38                                       ; $632d: $ff
    rst $38                                       ; $632e: $ff
    rst $38                                       ; $632f: $ff
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    rst $38                                       ; $6332: $ff
    rst $38                                       ; $6333: $ff
    rst $38                                       ; $6334: $ff
    rst $38                                       ; $6335: $ff
    rst $38                                       ; $6336: $ff
    rst $38                                       ; $6337: $ff
    rst $38                                       ; $6338: $ff
    rst $38                                       ; $6339: $ff
    rst $38                                       ; $633a: $ff
    rst $38                                       ; $633b: $ff
    rst $38                                       ; $633c: $ff
    rst $38                                       ; $633d: $ff
    rst $38                                       ; $633e: $ff
    rst $38                                       ; $633f: $ff
    rst $38                                       ; $6340: $ff
    rst $38                                       ; $6341: $ff
    rst $38                                       ; $6342: $ff
    ld d, e                                       ; $6343: $53
    ld h, e                                       ; $6344: $63
    ld d, e                                       ; $6345: $53
    ld h, e                                       ; $6346: $63
    ld d, e                                       ; $6347: $53
    ld h, e                                       ; $6348: $63
    ld d, e                                       ; $6349: $53
    ld h, e                                       ; $634a: $63
    ld d, e                                       ; $634b: $53
    ld h, e                                       ; $634c: $63
    ld d, e                                       ; $634d: $53
    ld h, e                                       ; $634e: $63
    ld d, e                                       ; $634f: $53
    ld h, e                                       ; $6350: $63
    ld d, e                                       ; $6351: $53
    ld h, e                                       ; $6352: $63
    rst $38                                       ; $6353: $ff
    rst $38                                       ; $6354: $ff
    rst $38                                       ; $6355: $ff
    rst $38                                       ; $6356: $ff
    rst $38                                       ; $6357: $ff
    rst $38                                       ; $6358: $ff
    rst $38                                       ; $6359: $ff
    rst $38                                       ; $635a: $ff
    rst $38                                       ; $635b: $ff
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
    rst $38                                       ; $636c: $ff
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
    rst $38                                       ; $637d: $ff
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
    rst $38                                       ; $638e: $ff
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
    rst $38                                       ; $639f: $ff
    rst $38                                       ; $63a0: $ff
    rst $38                                       ; $63a1: $ff
    rst $38                                       ; $63a2: $ff
    rst $38                                       ; $63a3: $ff
    rst $38                                       ; $63a4: $ff
    rst $38                                       ; $63a5: $ff
    rst $38                                       ; $63a6: $ff
    or a                                          ; $63a7: $b7
    ld h, e                                       ; $63a8: $63
    or a                                          ; $63a9: $b7
    ld h, e                                       ; $63aa: $63
    or a                                          ; $63ab: $b7
    ld h, e                                       ; $63ac: $63
    or a                                          ; $63ad: $b7
    ld h, e                                       ; $63ae: $63
    or a                                          ; $63af: $b7
    ld h, e                                       ; $63b0: $63
    or a                                          ; $63b1: $b7
    ld h, e                                       ; $63b2: $63
    or a                                          ; $63b3: $b7
    ld h, e                                       ; $63b4: $63
    or a                                          ; $63b5: $b7
    ld h, e                                       ; $63b6: $63
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
    rst $38                                       ; $63c1: $ff
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
    rst $38                                       ; $63d2: $ff
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
    rst $38                                       ; $63e3: $ff
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
    rst $38                                       ; $63f4: $ff
    rst $38                                       ; $63f5: $ff
    rst $38                                       ; $63f6: $ff
    rst $38                                       ; $63f7: $ff
    rst $38                                       ; $63f8: $ff
    rst $38                                       ; $63f9: $ff
    rst $38                                       ; $63fa: $ff
    rst $38                                       ; $63fb: $ff
    rst $38                                       ; $63fc: $ff
    rst $38                                       ; $63fd: $ff
    rst $38                                       ; $63fe: $ff
    rst $38                                       ; $63ff: $ff
    rst $38                                       ; $6400: $ff
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    rst $38                                       ; $6403: $ff
    rst $38                                       ; $6404: $ff
    rst $38                                       ; $6405: $ff
    rst $38                                       ; $6406: $ff
    rst $38                                       ; $6407: $ff
    rst $38                                       ; $6408: $ff
    rst $38                                       ; $6409: $ff
    rst $38                                       ; $640a: $ff
    dec de                                        ; $640b: $1b
    ld h, h                                       ; $640c: $64
    dec de                                        ; $640d: $1b
    ld h, h                                       ; $640e: $64
    dec de                                        ; $640f: $1b
    ld h, h                                       ; $6410: $64
    dec de                                        ; $6411: $1b
    ld h, h                                       ; $6412: $64
    dec de                                        ; $6413: $1b
    ld h, h                                       ; $6414: $64
    dec de                                        ; $6415: $1b
    ld h, h                                       ; $6416: $64
    dec de                                        ; $6417: $1b
    ld h, h                                       ; $6418: $64
    dec de                                        ; $6419: $1b
    ld h, h                                       ; $641a: $64
    rst $38                                       ; $641b: $ff
    rst $38                                       ; $641c: $ff
    rst $38                                       ; $641d: $ff
    rst $38                                       ; $641e: $ff
    rst $38                                       ; $641f: $ff
    rst $38                                       ; $6420: $ff
    rst $38                                       ; $6421: $ff
    rst $38                                       ; $6422: $ff
    rst $38                                       ; $6423: $ff
    rst $38                                       ; $6424: $ff
    rst $38                                       ; $6425: $ff
    rst $38                                       ; $6426: $ff
    rst $38                                       ; $6427: $ff
    rst $38                                       ; $6428: $ff
    rst $38                                       ; $6429: $ff
    rst $38                                       ; $642a: $ff
    rst $38                                       ; $642b: $ff
    rst $38                                       ; $642c: $ff
    rst $38                                       ; $642d: $ff
    rst $38                                       ; $642e: $ff
    rst $38                                       ; $642f: $ff
    rst $38                                       ; $6430: $ff
    rst $38                                       ; $6431: $ff
    rst $38                                       ; $6432: $ff
    rst $38                                       ; $6433: $ff
    rst $38                                       ; $6434: $ff
    rst $38                                       ; $6435: $ff
    rst $38                                       ; $6436: $ff
    rst $38                                       ; $6437: $ff
    rst $38                                       ; $6438: $ff
    rst $38                                       ; $6439: $ff
    rst $38                                       ; $643a: $ff
    rst $38                                       ; $643b: $ff
    rst $38                                       ; $643c: $ff
    rst $38                                       ; $643d: $ff
    rst $38                                       ; $643e: $ff
    rst $38                                       ; $643f: $ff
    rst $38                                       ; $6440: $ff
    rst $38                                       ; $6441: $ff
    rst $38                                       ; $6442: $ff
    rst $38                                       ; $6443: $ff
    rst $38                                       ; $6444: $ff
    rst $38                                       ; $6445: $ff
    rst $38                                       ; $6446: $ff
    rst $38                                       ; $6447: $ff
    rst $38                                       ; $6448: $ff
    rst $38                                       ; $6449: $ff
    rst $38                                       ; $644a: $ff
    rst $38                                       ; $644b: $ff
    rst $38                                       ; $644c: $ff
    rst $38                                       ; $644d: $ff
    rst $38                                       ; $644e: $ff
    rst $38                                       ; $644f: $ff
    rst $38                                       ; $6450: $ff
    rst $38                                       ; $6451: $ff
    rst $38                                       ; $6452: $ff
    rst $38                                       ; $6453: $ff
    rst $38                                       ; $6454: $ff
    rst $38                                       ; $6455: $ff
    rst $38                                       ; $6456: $ff
    rst $38                                       ; $6457: $ff
    rst $38                                       ; $6458: $ff
    rst $38                                       ; $6459: $ff
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    rst $38                                       ; $645c: $ff
    rst $38                                       ; $645d: $ff
    rst $38                                       ; $645e: $ff
    rst $38                                       ; $645f: $ff
    rst $38                                       ; $6460: $ff
    rst $38                                       ; $6461: $ff
    rst $38                                       ; $6462: $ff
    rst $38                                       ; $6463: $ff
    rst $38                                       ; $6464: $ff
    rst $38                                       ; $6465: $ff
    rst $38                                       ; $6466: $ff
    rst $38                                       ; $6467: $ff
    rst $38                                       ; $6468: $ff
    rst $38                                       ; $6469: $ff
    rst $38                                       ; $646a: $ff
    rst $38                                       ; $646b: $ff
    rst $38                                       ; $646c: $ff
    rst $38                                       ; $646d: $ff
    rst $38                                       ; $646e: $ff
    ld a, a                                       ; $646f: $7f
    ld h, h                                       ; $6470: $64
    ld a, a                                       ; $6471: $7f
    ld h, h                                       ; $6472: $64
    ld a, a                                       ; $6473: $7f
    ld h, h                                       ; $6474: $64
    ld a, a                                       ; $6475: $7f
    ld h, h                                       ; $6476: $64
    ld a, a                                       ; $6477: $7f
    ld h, h                                       ; $6478: $64
    ld a, a                                       ; $6479: $7f
    ld h, h                                       ; $647a: $64
    ld a, a                                       ; $647b: $7f
    ld h, h                                       ; $647c: $64
    ld a, a                                       ; $647d: $7f
    ld h, h                                       ; $647e: $64
    rst $38                                       ; $647f: $ff
    rst $38                                       ; $6480: $ff
    rst $38                                       ; $6481: $ff
    rst $38                                       ; $6482: $ff
    rst $38                                       ; $6483: $ff
    rst $38                                       ; $6484: $ff
    rst $38                                       ; $6485: $ff
    rst $38                                       ; $6486: $ff
    rst $38                                       ; $6487: $ff
    rst $38                                       ; $6488: $ff
    rst $38                                       ; $6489: $ff
    rst $38                                       ; $648a: $ff
    rst $38                                       ; $648b: $ff
    rst $38                                       ; $648c: $ff
    rst $38                                       ; $648d: $ff
    rst $38                                       ; $648e: $ff
    rst $38                                       ; $648f: $ff
    rst $38                                       ; $6490: $ff
    rst $38                                       ; $6491: $ff
    rst $38                                       ; $6492: $ff
    rst $38                                       ; $6493: $ff
    rst $38                                       ; $6494: $ff
    rst $38                                       ; $6495: $ff
    rst $38                                       ; $6496: $ff
    rst $38                                       ; $6497: $ff
    rst $38                                       ; $6498: $ff
    rst $38                                       ; $6499: $ff
    rst $38                                       ; $649a: $ff
    rst $38                                       ; $649b: $ff
    rst $38                                       ; $649c: $ff
    rst $38                                       ; $649d: $ff
    rst $38                                       ; $649e: $ff
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    rst $38                                       ; $64a1: $ff
    rst $38                                       ; $64a2: $ff
    rst $38                                       ; $64a3: $ff
    rst $38                                       ; $64a4: $ff
    rst $38                                       ; $64a5: $ff
    rst $38                                       ; $64a6: $ff
    rst $38                                       ; $64a7: $ff
    rst $38                                       ; $64a8: $ff
    rst $38                                       ; $64a9: $ff
    rst $38                                       ; $64aa: $ff
    rst $38                                       ; $64ab: $ff
    rst $38                                       ; $64ac: $ff
    rst $38                                       ; $64ad: $ff
    rst $38                                       ; $64ae: $ff
    rst $38                                       ; $64af: $ff
    rst $38                                       ; $64b0: $ff
    rst $38                                       ; $64b1: $ff
    rst $38                                       ; $64b2: $ff
    rst $38                                       ; $64b3: $ff
    rst $38                                       ; $64b4: $ff
    rst $38                                       ; $64b5: $ff
    rst $38                                       ; $64b6: $ff
    rst $38                                       ; $64b7: $ff
    rst $38                                       ; $64b8: $ff
    rst $38                                       ; $64b9: $ff
    rst $38                                       ; $64ba: $ff
    rst $38                                       ; $64bb: $ff
    rst $38                                       ; $64bc: $ff
    rst $38                                       ; $64bd: $ff
    rst $38                                       ; $64be: $ff
    rst $38                                       ; $64bf: $ff
    rst $38                                       ; $64c0: $ff
    rst $38                                       ; $64c1: $ff
    rst $38                                       ; $64c2: $ff
    rst $38                                       ; $64c3: $ff
    rst $38                                       ; $64c4: $ff
    rst $38                                       ; $64c5: $ff
    rst $38                                       ; $64c6: $ff
    rst $38                                       ; $64c7: $ff
    rst $38                                       ; $64c8: $ff
    rst $38                                       ; $64c9: $ff
    rst $38                                       ; $64ca: $ff
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    rst $38                                       ; $64cd: $ff
    rst $38                                       ; $64ce: $ff
    rst $38                                       ; $64cf: $ff
    rst $38                                       ; $64d0: $ff
    rst $38                                       ; $64d1: $ff
    rst $38                                       ; $64d2: $ff
    db $e3                                        ; $64d3: $e3
    ld h, h                                       ; $64d4: $64
    db $e3                                        ; $64d5: $e3
    ld h, h                                       ; $64d6: $64
    db $e3                                        ; $64d7: $e3
    ld h, h                                       ; $64d8: $64
    db $e3                                        ; $64d9: $e3
    ld h, h                                       ; $64da: $64
    db $e3                                        ; $64db: $e3
    ld h, h                                       ; $64dc: $64
    db $e3                                        ; $64dd: $e3
    ld h, h                                       ; $64de: $64
    db $e3                                        ; $64df: $e3
    ld h, h                                       ; $64e0: $64
    db $e3                                        ; $64e1: $e3
    ld h, h                                       ; $64e2: $64
    rst $38                                       ; $64e3: $ff
    rst $38                                       ; $64e4: $ff
    rst $38                                       ; $64e5: $ff
    rst $38                                       ; $64e6: $ff
    rst $38                                       ; $64e7: $ff
    rst $38                                       ; $64e8: $ff
    rst $38                                       ; $64e9: $ff
    rst $38                                       ; $64ea: $ff
    rst $38                                       ; $64eb: $ff
    rst $38                                       ; $64ec: $ff
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    rst $38                                       ; $64ef: $ff
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    rst $38                                       ; $64f2: $ff
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    rst $38                                       ; $64f5: $ff
    rst $38                                       ; $64f6: $ff
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    rst $38                                       ; $64f9: $ff
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    rst $38                                       ; $6500: $ff
    rst $38                                       ; $6501: $ff
    rst $38                                       ; $6502: $ff
    rst $38                                       ; $6503: $ff
    rst $38                                       ; $6504: $ff
    rst $38                                       ; $6505: $ff
    rst $38                                       ; $6506: $ff
    rst $38                                       ; $6507: $ff
    rst $38                                       ; $6508: $ff
    rst $38                                       ; $6509: $ff
    rst $38                                       ; $650a: $ff
    rst $38                                       ; $650b: $ff
    rst $38                                       ; $650c: $ff
    rst $38                                       ; $650d: $ff
    rst $38                                       ; $650e: $ff
    rst $38                                       ; $650f: $ff
    rst $38                                       ; $6510: $ff
    rst $38                                       ; $6511: $ff
    rst $38                                       ; $6512: $ff
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    rst $38                                       ; $6515: $ff
    rst $38                                       ; $6516: $ff
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    rst $38                                       ; $6519: $ff
    rst $38                                       ; $651a: $ff
    rst $38                                       ; $651b: $ff
    rst $38                                       ; $651c: $ff
    rst $38                                       ; $651d: $ff
    rst $38                                       ; $651e: $ff
    rst $38                                       ; $651f: $ff
    rst $38                                       ; $6520: $ff
    rst $38                                       ; $6521: $ff
    rst $38                                       ; $6522: $ff
    rst $38                                       ; $6523: $ff
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    rst $38                                       ; $6526: $ff
    rst $38                                       ; $6527: $ff
    rst $38                                       ; $6528: $ff
    rst $38                                       ; $6529: $ff
    rst $38                                       ; $652a: $ff
    rst $38                                       ; $652b: $ff
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    rst $38                                       ; $652e: $ff
    rst $38                                       ; $652f: $ff
    rst $38                                       ; $6530: $ff
    rst $38                                       ; $6531: $ff
    rst $38                                       ; $6532: $ff
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    ld b, a                                       ; $6537: $47
    ld h, l                                       ; $6538: $65
    ld b, a                                       ; $6539: $47
    ld h, l                                       ; $653a: $65
    ld b, a                                       ; $653b: $47
    ld h, l                                       ; $653c: $65
    ld b, a                                       ; $653d: $47
    ld h, l                                       ; $653e: $65
    ld b, a                                       ; $653f: $47
    ld h, l                                       ; $6540: $65
    ld b, a                                       ; $6541: $47
    ld h, l                                       ; $6542: $65
    ld b, a                                       ; $6543: $47
    ld h, l                                       ; $6544: $65
    ld b, a                                       ; $6545: $47
    ld h, l                                       ; $6546: $65
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
    rst $38                                       ; $6562: $ff
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
    rst $38                                       ; $6573: $ff
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
    rst $38                                       ; $6584: $ff
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
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    xor e                                         ; $659b: $ab
    ld h, l                                       ; $659c: $65
    xor e                                         ; $659d: $ab
    ld h, l                                       ; $659e: $65
    xor e                                         ; $659f: $ab
    ld h, l                                       ; $65a0: $65
    xor e                                         ; $65a1: $ab
    ld h, l                                       ; $65a2: $65
    xor e                                         ; $65a3: $ab
    ld h, l                                       ; $65a4: $65
    xor e                                         ; $65a5: $ab
    ld h, l                                       ; $65a6: $65
    xor e                                         ; $65a7: $ab
    ld h, l                                       ; $65a8: $65
    xor e                                         ; $65a9: $ab
    ld h, l                                       ; $65aa: $65
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
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
    rst $38                                       ; $65cc: $ff
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
    rst $38                                       ; $65dd: $ff
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
    rst $38                                       ; $65ee: $ff
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
    rrca                                          ; $65ff: $0f
    ld h, [hl]                                    ; $6600: $66
    rrca                                          ; $6601: $0f
    ld h, [hl]                                    ; $6602: $66
    rrca                                          ; $6603: $0f
    ld h, [hl]                                    ; $6604: $66
    rrca                                          ; $6605: $0f
    ld h, [hl]                                    ; $6606: $66
    rrca                                          ; $6607: $0f
    ld h, [hl]                                    ; $6608: $66
    rrca                                          ; $6609: $0f
    ld h, [hl]                                    ; $660a: $66
    rrca                                          ; $660b: $0f
    ld h, [hl]                                    ; $660c: $66
    rrca                                          ; $660d: $0f
    ld h, [hl]                                    ; $660e: $66
    rst $38                                       ; $660f: $ff
    rst $38                                       ; $6610: $ff
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
    rst $38                                       ; $6621: $ff
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
    rst $38                                       ; $662d: $ff
    rst $38                                       ; $662e: $ff
    rst $38                                       ; $662f: $ff
    rst $38                                       ; $6630: $ff
    rst $38                                       ; $6631: $ff
    rst $38                                       ; $6632: $ff
    rst $38                                       ; $6633: $ff
    rst $38                                       ; $6634: $ff
    rst $38                                       ; $6635: $ff
    rst $38                                       ; $6636: $ff
    rst $38                                       ; $6637: $ff
    rst $38                                       ; $6638: $ff
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    rst $38                                       ; $663b: $ff
    rst $38                                       ; $663c: $ff
    rst $38                                       ; $663d: $ff
    rst $38                                       ; $663e: $ff
    rst $38                                       ; $663f: $ff
    rst $38                                       ; $6640: $ff
    rst $38                                       ; $6641: $ff
    rst $38                                       ; $6642: $ff
    rst $38                                       ; $6643: $ff
    rst $38                                       ; $6644: $ff
    rst $38                                       ; $6645: $ff
    rst $38                                       ; $6646: $ff
    rst $38                                       ; $6647: $ff
    rst $38                                       ; $6648: $ff
    rst $38                                       ; $6649: $ff
    rst $38                                       ; $664a: $ff
    rst $38                                       ; $664b: $ff
    rst $38                                       ; $664c: $ff
    rst $38                                       ; $664d: $ff
    rst $38                                       ; $664e: $ff
    rst $38                                       ; $664f: $ff
    rst $38                                       ; $6650: $ff
    rst $38                                       ; $6651: $ff
    rst $38                                       ; $6652: $ff
    rst $38                                       ; $6653: $ff
    rst $38                                       ; $6654: $ff
    rst $38                                       ; $6655: $ff
    rst $38                                       ; $6656: $ff
    rst $38                                       ; $6657: $ff
    rst $38                                       ; $6658: $ff
    rst $38                                       ; $6659: $ff
    rst $38                                       ; $665a: $ff
    rst $38                                       ; $665b: $ff
    rst $38                                       ; $665c: $ff
    rst $38                                       ; $665d: $ff
    rst $38                                       ; $665e: $ff
    rst $38                                       ; $665f: $ff
    rst $38                                       ; $6660: $ff
    rst $38                                       ; $6661: $ff
    rst $38                                       ; $6662: $ff
    ld [hl], e                                    ; $6663: $73
    ld h, [hl]                                    ; $6664: $66
    ld [hl], e                                    ; $6665: $73
    ld h, [hl]                                    ; $6666: $66
    ld [hl], e                                    ; $6667: $73
    ld h, [hl]                                    ; $6668: $66
    ld [hl], e                                    ; $6669: $73
    ld h, [hl]                                    ; $666a: $66
    ld [hl], e                                    ; $666b: $73
    ld h, [hl]                                    ; $666c: $66
    ld [hl], e                                    ; $666d: $73
    ld h, [hl]                                    ; $666e: $66
    ld [hl], e                                    ; $666f: $73
    ld h, [hl]                                    ; $6670: $66
    ld [hl], e                                    ; $6671: $73
    ld h, [hl]                                    ; $6672: $66
    rst $38                                       ; $6673: $ff
    rst $38                                       ; $6674: $ff
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff
    rst $38                                       ; $6678: $ff
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    rst $38                                       ; $667b: $ff
    rst $38                                       ; $667c: $ff
    rst $38                                       ; $667d: $ff
    rst $38                                       ; $667e: $ff
    rst $38                                       ; $667f: $ff
    rst $38                                       ; $6680: $ff
    rst $38                                       ; $6681: $ff
    rst $38                                       ; $6682: $ff
    rst $38                                       ; $6683: $ff
    rst $38                                       ; $6684: $ff
    rst $38                                       ; $6685: $ff
    rst $38                                       ; $6686: $ff
    rst $38                                       ; $6687: $ff
    rst $38                                       ; $6688: $ff
    rst $38                                       ; $6689: $ff
    rst $38                                       ; $668a: $ff
    rst $38                                       ; $668b: $ff
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    rst $38                                       ; $6691: $ff
    rst $38                                       ; $6692: $ff
    rst $38                                       ; $6693: $ff
    rst $38                                       ; $6694: $ff
    rst $38                                       ; $6695: $ff
    rst $38                                       ; $6696: $ff
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    rst $38                                       ; $6699: $ff
    rst $38                                       ; $669a: $ff
    rst $38                                       ; $669b: $ff
    rst $38                                       ; $669c: $ff
    rst $38                                       ; $669d: $ff
    rst $38                                       ; $669e: $ff
    rst $38                                       ; $669f: $ff
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    rst $38                                       ; $66a2: $ff
    rst $38                                       ; $66a3: $ff
    rst $38                                       ; $66a4: $ff
    rst $38                                       ; $66a5: $ff
    rst $38                                       ; $66a6: $ff
    rst $38                                       ; $66a7: $ff
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    rst $38                                       ; $66aa: $ff
    rst $38                                       ; $66ab: $ff
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
    rst $38                                       ; $66ae: $ff
    rst $38                                       ; $66af: $ff
    rst $38                                       ; $66b0: $ff
    rst $38                                       ; $66b1: $ff
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    rst $38                                       ; $66b4: $ff
    rst $38                                       ; $66b5: $ff
    rst $38                                       ; $66b6: $ff
    rst $38                                       ; $66b7: $ff
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    rst $38                                       ; $66bb: $ff
    rst $38                                       ; $66bc: $ff
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    rst $38                                       ; $66bf: $ff
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    rst $38                                       ; $66c4: $ff
    rst $38                                       ; $66c5: $ff
    rst $38                                       ; $66c6: $ff
    rst $10                                       ; $66c7: $d7
    ld h, [hl]                                    ; $66c8: $66
    rst $10                                       ; $66c9: $d7
    ld h, [hl]                                    ; $66ca: $66
    rst $10                                       ; $66cb: $d7
    ld h, [hl]                                    ; $66cc: $66
    rst $10                                       ; $66cd: $d7
    ld h, [hl]                                    ; $66ce: $66
    rst $10                                       ; $66cf: $d7
    ld h, [hl]                                    ; $66d0: $66
    rst $10                                       ; $66d1: $d7
    ld h, [hl]                                    ; $66d2: $66
    rst $10                                       ; $66d3: $d7
    ld h, [hl]                                    ; $66d4: $66
    rst $10                                       ; $66d5: $d7
    ld h, [hl]                                    ; $66d6: $66
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    rst $38                                       ; $66de: $ff
    rst $38                                       ; $66df: $ff
    rst $38                                       ; $66e0: $ff
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    rst $38                                       ; $66e5: $ff
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rst $38                                       ; $66e9: $ff
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    rst $38                                       ; $66ee: $ff
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    rst $38                                       ; $6711: $ff
    rst $38                                       ; $6712: $ff
    rst $38                                       ; $6713: $ff
    rst $38                                       ; $6714: $ff
    rst $38                                       ; $6715: $ff
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
    rst $38                                       ; $6726: $ff
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
    rst $38                                       ; $6737: $ff
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
    rst $38                                       ; $6748: $ff
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
    rst $38                                       ; $6759: $ff
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
    rst $38                                       ; $676a: $ff
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
    rst $38                                       ; $677b: $ff
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
    rst $38                                       ; $678c: $ff
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
    rst $38                                       ; $679d: $ff
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
    rst $38                                       ; $67ae: $ff
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
    rst $38                                       ; $67bf: $ff
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
    rst $38                                       ; $67d0: $ff
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
    rst $38                                       ; $67e1: $ff
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
    rst $38                                       ; $67f9: $ff
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    rst $38                                       ; $67fc: $ff
    rst $38                                       ; $67fd: $ff
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff

Jump_03d_6800:
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
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
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
    rst $38                                       ; $6828: $ff
    rst $38                                       ; $6829: $ff
    rst $38                                       ; $682a: $ff
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    rst $38                                       ; $682e: $ff
    rst $38                                       ; $682f: $ff
    rst $38                                       ; $6830: $ff
    rst $38                                       ; $6831: $ff
    rst $38                                       ; $6832: $ff
    rst $38                                       ; $6833: $ff
    rst $38                                       ; $6834: $ff
    rst $38                                       ; $6835: $ff
    rst $38                                       ; $6836: $ff
    rst $38                                       ; $6837: $ff
    rst $38                                       ; $6838: $ff
    rst $38                                       ; $6839: $ff
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    rst $38                                       ; $683c: $ff
    rst $38                                       ; $683d: $ff
    rst $38                                       ; $683e: $ff
    rst $38                                       ; $683f: $ff
    rst $38                                       ; $6840: $ff
    rst $38                                       ; $6841: $ff
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    rst $38                                       ; $6844: $ff
    rst $38                                       ; $6845: $ff
    rst $38                                       ; $6846: $ff
    rst $38                                       ; $6847: $ff
    rst $38                                       ; $6848: $ff
    rst $38                                       ; $6849: $ff
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    rst $38                                       ; $6850: $ff
    rst $38                                       ; $6851: $ff
    rst $38                                       ; $6852: $ff
    rst $38                                       ; $6853: $ff
    rst $38                                       ; $6854: $ff
    rst $38                                       ; $6855: $ff
    rst $38                                       ; $6856: $ff
    rst $38                                       ; $6857: $ff
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    rst $38                                       ; $6861: $ff
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    rst $38                                       ; $6868: $ff
    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    rst $38                                       ; $688a: $ff
    rst $38                                       ; $688b: $ff
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    rst $38                                       ; $6890: $ff
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
    rst $38                                       ; $689e: $ff
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
    rst $38                                       ; $68af: $ff
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
    rst $38                                       ; $68c0: $ff
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
    rst $38                                       ; $68d1: $ff
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
    rst $38                                       ; $68e2: $ff
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
    rst $38                                       ; $68f3: $ff
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
    rst $38                                       ; $6904: $ff
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
    rst $38                                       ; $6915: $ff
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
    rst $38                                       ; $6926: $ff
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
    rst $38                                       ; $6937: $ff
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
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    rst $38                                       ; $694e: $ff
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    rst $38                                       ; $6951: $ff
    rst $38                                       ; $6952: $ff
    rst $38                                       ; $6953: $ff
    rst $38                                       ; $6954: $ff
    rst $38                                       ; $6955: $ff
    rst $38                                       ; $6956: $ff
    rst $38                                       ; $6957: $ff
    rst $38                                       ; $6958: $ff
    rst $38                                       ; $6959: $ff
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    rst $38                                       ; $695d: $ff
    rst $38                                       ; $695e: $ff
    rst $38                                       ; $695f: $ff
    rst $38                                       ; $6960: $ff
    rst $38                                       ; $6961: $ff
    rst $38                                       ; $6962: $ff
    rst $38                                       ; $6963: $ff
    rst $38                                       ; $6964: $ff
    rst $38                                       ; $6965: $ff
    rst $38                                       ; $6966: $ff
    rst $38                                       ; $6967: $ff
    rst $38                                       ; $6968: $ff
    rst $38                                       ; $6969: $ff
    rst $38                                       ; $696a: $ff
    rst $38                                       ; $696b: $ff
    rst $38                                       ; $696c: $ff
    rst $38                                       ; $696d: $ff
    rst $38                                       ; $696e: $ff
    rst $38                                       ; $696f: $ff
    rst $38                                       ; $6970: $ff
    rst $38                                       ; $6971: $ff
    rst $38                                       ; $6972: $ff
    rst $38                                       ; $6973: $ff
    rst $38                                       ; $6974: $ff
    rst $38                                       ; $6975: $ff
    rst $38                                       ; $6976: $ff
    rst $38                                       ; $6977: $ff
    rst $38                                       ; $6978: $ff
    rst $38                                       ; $6979: $ff
    rst $38                                       ; $697a: $ff
    rst $38                                       ; $697b: $ff
    rst $38                                       ; $697c: $ff
    rst $38                                       ; $697d: $ff
    rst $38                                       ; $697e: $ff
    rst $38                                       ; $697f: $ff
    rst $38                                       ; $6980: $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    rst $38                                       ; $698c: $ff
    rst $38                                       ; $698d: $ff
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    rst $38                                       ; $6993: $ff
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    rst $38                                       ; $699e: $ff
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    rst $38                                       ; $69ae: $ff
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    rst $38                                       ; $69b7: $ff
    rst $38                                       ; $69b8: $ff
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
    rst $38                                       ; $69c6: $ff
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
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $38                                       ; $69d6: $ff
    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    rst $38                                       ; $69e0: $ff
    rst $38                                       ; $69e1: $ff
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    rst $38                                       ; $69e7: $ff
    rst $38                                       ; $69e8: $ff
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    rst $38                                       ; $69ee: $ff
    rst $38                                       ; $69ef: $ff
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    rst $38                                       ; $69f8: $ff
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff

Call_03d_6a00:
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    rst $38                                       ; $6a04: $ff
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rst $38                                       ; $6a28: $ff
    rst $38                                       ; $6a29: $ff
    rst $38                                       ; $6a2a: $ff
    rst $38                                       ; $6a2b: $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
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
    rst $38                                       ; $6a43: $ff
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
    rst $38                                       ; $6a54: $ff
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
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
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
    rst $38                                       ; $6a75: $ff
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
    rst $38                                       ; $6a86: $ff
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
    rst $38                                       ; $6a93: $ff
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
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
    rst $38                                       ; $6ac6: $ff
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
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    rst $38                                       ; $6af9: $ff
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    rst $38                                       ; $6b06: $ff
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    rst $38                                       ; $6b0b: $ff
    rst $38                                       ; $6b0c: $ff
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    rst $38                                       ; $6b14: $ff
    rst $38                                       ; $6b15: $ff
    rst $38                                       ; $6b16: $ff
    rst $38                                       ; $6b17: $ff
    rst $38                                       ; $6b18: $ff
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    rst $38                                       ; $6b1c: $ff
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    rst $38                                       ; $6b57: $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    rst $38                                       ; $6b73: $ff
    rst $38                                       ; $6b74: $ff
    rst $38                                       ; $6b75: $ff
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    rst $38                                       ; $6b83: $ff
    rst $38                                       ; $6b84: $ff
    rst $38                                       ; $6b85: $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
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
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    rst $38                                       ; $6bcc: $ff
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
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
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
    rst $38                                       ; $6bee: $ff
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
    rst $38                                       ; $6bff: $ff
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
    rst $38                                       ; $6c10: $ff
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
    rst $38                                       ; $6c21: $ff
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
    rst $38                                       ; $6c32: $ff
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
    rst $38                                       ; $6c43: $ff
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
    rst $38                                       ; $6c54: $ff
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
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
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
    rst $38                                       ; $6c7e: $ff
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
    rst $38                                       ; $6c8f: $ff
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
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
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
    rst $38                                       ; $6d8f: $ff
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
    rst $38                                       ; $6da0: $ff
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
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    rst $38                                       ; $6e50: $ff
    rst $38                                       ; $6e51: $ff
    rst $38                                       ; $6e52: $ff
    rst $38                                       ; $6e53: $ff
    rst $38                                       ; $6e54: $ff
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    rst $38                                       ; $6e57: $ff
    rst $38                                       ; $6e58: $ff
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    rst $38                                       ; $6e70: $ff
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    rst $38                                       ; $6e8d: $ff
    rst $38                                       ; $6e8e: $ff
    rst $38                                       ; $6e8f: $ff
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    rst $38                                       ; $6e92: $ff
    rst $38                                       ; $6e93: $ff
    rst $38                                       ; $6e94: $ff
    rst $38                                       ; $6e95: $ff
    rst $38                                       ; $6e96: $ff
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
    rst $38                                       ; $6e99: $ff
    rst $38                                       ; $6e9a: $ff
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff
    rst $38                                       ; $6eb5: $ff
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    rst $38                                       ; $6ec5: $ff
    rst $38                                       ; $6ec6: $ff
    rst $38                                       ; $6ec7: $ff
    rst $38                                       ; $6ec8: $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
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
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
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
    rst $38                                       ; $6f68: $ff
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
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
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
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
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
    rst $38                                       ; $70a6: $ff
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
    rst $38                                       ; $70b7: $ff
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
    rst $38                                       ; $70c8: $ff
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
    rst $38                                       ; $70d9: $ff
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
    rst $38                                       ; $70ea: $ff
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
    rst $38                                       ; $70fb: $ff
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
    rst $38                                       ; $710c: $ff
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
    rst $38                                       ; $711d: $ff
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
    rst $38                                       ; $712e: $ff
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
    rst $38                                       ; $713f: $ff
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
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
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
    rst $38                                       ; $717f: $ff
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
    rst $38                                       ; $7190: $ff
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
    rst $38                                       ; $71a1: $ff
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
    rst $38                                       ; $71b2: $ff
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
    rst $38                                       ; $71c3: $ff
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
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
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
    rst $38                                       ; $71ef: $ff
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
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
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
    rst $38                                       ; $7218: $ff
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
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
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
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
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
    rst $38                                       ; $72c2: $ff
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
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
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
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
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
    rst $38                                       ; $7302: $ff
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
    rst $38                                       ; $7313: $ff
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
    rst $38                                       ; $7324: $ff
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
    rst $38                                       ; $7335: $ff
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
    rst $38                                       ; $7346: $ff
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
    rst $38                                       ; $7357: $ff
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
    rst $38                                       ; $7368: $ff
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
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
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
