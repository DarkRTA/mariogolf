; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    ld l, d                                       ; $4000: $6a
    ld b, d                                       ; $4001: $42
    add [hl]                                      ; $4002: $86
    ld h, [hl]                                    ; $4003: $66
    inc hl                                        ; $4004: $23
    ld l, d                                       ; $4005: $6a

Call_03c_4006:
    ld hl, $d404                                  ; $4006: $21 $04 $d4
    ld a, [hl+]                                   ; $4009: $2a
    ld d, [hl]                                    ; $400a: $56
    ld e, a                                       ; $400b: $5f
    ld hl, $d401                                  ; $400c: $21 $01 $d4
    ld a, [hl+]                                   ; $400f: $2a
    ld h, [hl]                                    ; $4010: $66
    ld l, a                                       ; $4011: $6f
    ld a, [$d443]                                 ; $4012: $fa $43 $d4
    or a                                          ; $4015: $b7
    jr z, jr_03c_403b                             ; $4016: $28 $23

    cp $04                                        ; $4018: $fe $04
    jp z, Jump_03c_403b                           ; $401a: $ca $3b $40

    ld a, [$d442]                                 ; $401d: $fa $42 $d4
    ld b, a                                       ; $4020: $47
    ld a, d                                       ; $4021: $7a
    sub b                                         ; $4022: $90
    ld d, a                                       ; $4023: $57
    ld a, [$d441]                                 ; $4024: $fa $41 $d4
    ld b, a                                       ; $4027: $47
    ld a, h                                       ; $4028: $7c
    sub b                                         ; $4029: $90

jr_03c_402a:
    ld h, a                                       ; $402a: $67
    sla l                                         ; $402b: $cb $25
    rl h                                          ; $402d: $cb $14
    sla l                                         ; $402f: $cb $25
    rl h                                          ; $4031: $cb $14
    sla e                                         ; $4033: $cb $23
    rl d                                          ; $4035: $cb $12
    sla e                                         ; $4037: $cb $23
    rl d                                          ; $4039: $cb $12

Jump_03c_403b:
jr_03c_403b:
    push hl                                       ; $403b: $e5
    push de                                       ; $403c: $d5
    call Call_03c_404c                            ; $403d: $cd $4c $40
    pop de                                        ; $4040: $d1
    pop hl                                        ; $4041: $e1
    push bc                                       ; $4042: $c5
    call Call_03c_40b1                            ; $4043: $cd $b1 $40
    pop bc                                        ; $4046: $c1
    ret                                           ; $4047: $c9


    xor a                                         ; $4048: $af
    ld b, a                                       ; $4049: $47
    ld c, a                                       ; $404a: $4f
    ret                                           ; $404b: $c9


Call_03c_404c:
    ldh a, [$96]                                  ; $404c: $f0 $96
    push af                                       ; $404e: $f5
    ld e, h                                       ; $404f: $5c
    ld l, d                                       ; $4050: $6a
    ld h, $00                                     ; $4051: $26 $00
    ld d, $00                                     ; $4053: $16 $00
    add hl, hl                                    ; $4055: $29
    add hl, hl                                    ; $4056: $29
    add hl, hl                                    ; $4057: $29
    add hl, hl                                    ; $4058: $29
    add hl, hl                                    ; $4059: $29
    add hl, hl                                    ; $405a: $29
    add hl, de                                    ; $405b: $19
    ld de, $d000                                  ; $405c: $11 $00 $d0
    add hl, de                                    ; $405f: $19
    ld a, $02                                     ; $4060: $3e $02
    ldh [$96], a                                  ; $4062: $e0 $96
    ldh [rSVBK], a                                ; $4064: $e0 $70
    ld a, [hl]                                    ; $4066: $7e
    rrca                                          ; $4067: $0f
    rrca                                          ; $4068: $0f
    and $18                                       ; $4069: $e6 $18
    ld b, a                                       ; $406b: $47
    ld a, $03                                     ; $406c: $3e $03
    ldh [$96], a                                  ; $406e: $e0 $96
    ldh [rSVBK], a                                ; $4070: $e0 $70
    ld l, [hl]                                    ; $4072: $6e
    ld h, $d7                                     ; $4073: $26 $d7
    ld a, $06                                     ; $4075: $3e $06
    ldh [$96], a                                  ; $4077: $e0 $96
    ldh [rSVBK], a                                ; $4079: $e0 $70
    ld a, [hl]                                    ; $407b: $7e
    ld c, a                                       ; $407c: $4f
    and $07                                       ; $407d: $e6 $07
    add b                                         ; $407f: $80
    ld hl, $4091                                  ; $4080: $21 $91 $40
    add l                                         ; $4083: $85
    ld l, a                                       ; $4084: $6f
    ld a, h                                       ; $4085: $7c
    adc $00                                       ; $4086: $ce $00
    ld h, a                                       ; $4088: $67
    ld b, [hl]                                    ; $4089: $46
    pop af                                        ; $408a: $f1
    ldh [$96], a                                  ; $408b: $e0 $96
    ldh [rSVBK], a                                ; $408d: $e0 $70
    ld a, c                                       ; $408f: $79
    ret                                           ; $4090: $c9


    nop                                           ; $4091: $00
    jr nz, jr_03c_40d4                            ; $4092: $20 $40

    ld h, b                                       ; $4094: $60
    add b                                         ; $4095: $80
    and b                                         ; $4096: $a0
    ret nz                                        ; $4097: $c0

    ldh [$80], a                                  ; $4098: $e0 $80
    ld h, b                                       ; $409a: $60
    ld b, b                                       ; $409b: $40
    jr nz, jr_03c_409e                            ; $409c: $20 $00

jr_03c_409e:
    ldh [$c0], a                                  ; $409e: $e0 $c0
    and b                                         ; $40a0: $a0
    nop                                           ; $40a1: $00
    ldh [$c0], a                                  ; $40a2: $e0 $c0
    and b                                         ; $40a4: $a0
    add b                                         ; $40a5: $80
    ld h, b                                       ; $40a6: $60
    ld b, b                                       ; $40a7: $40
    jr nz, jr_03c_402a                            ; $40a8: $20 $80

    and b                                         ; $40aa: $a0
    ret nz                                        ; $40ab: $c0

    ldh [rP1], a                                  ; $40ac: $e0 $00
    jr nz, jr_03c_40f0                            ; $40ae: $20 $40

    ld h, b                                       ; $40b0: $60

Call_03c_40b1:
    ldh a, [$96]                                  ; $40b1: $f0 $96
    push af                                       ; $40b3: $f5
    push hl                                       ; $40b4: $e5
    push de                                       ; $40b5: $d5
    ld e, h                                       ; $40b6: $5c
    ld l, d                                       ; $40b7: $6a
    ld h, $00                                     ; $40b8: $26 $00
    ld d, $00                                     ; $40ba: $16 $00
    add hl, hl                                    ; $40bc: $29
    add hl, hl                                    ; $40bd: $29
    add hl, hl                                    ; $40be: $29
    add hl, hl                                    ; $40bf: $29
    add hl, hl                                    ; $40c0: $29
    add hl, hl                                    ; $40c1: $29
    add hl, de                                    ; $40c2: $19
    ld de, $d000                                  ; $40c3: $11 $00 $d0
    add hl, de                                    ; $40c6: $19
    pop de                                        ; $40c7: $d1
    pop bc                                        ; $40c8: $c1
    xor a                                         ; $40c9: $af
    sla c                                         ; $40ca: $cb $21
    rla                                           ; $40cc: $17
    sla c                                         ; $40cd: $cb $21
    rla                                           ; $40cf: $17
    ld c, a                                       ; $40d0: $4f
    xor a                                         ; $40d1: $af
    sla e                                         ; $40d2: $cb $23

jr_03c_40d4:
    rla                                           ; $40d4: $17
    sla e                                         ; $40d5: $cb $23
    rla                                           ; $40d7: $17
    ld d, $00                                     ; $40d8: $16 $00
    ld e, a                                       ; $40da: $5f
    ld a, $02                                     ; $40db: $3e $02
    ldh [$96], a                                  ; $40dd: $e0 $96
    ldh [rSVBK], a                                ; $40df: $e0 $70
    bit 5, [hl]                                   ; $40e1: $cb $6e
    jr z, jr_03c_40e9                             ; $40e3: $28 $04

    ld a, $03                                     ; $40e5: $3e $03
    sub c                                         ; $40e7: $91
    ld c, a                                       ; $40e8: $4f

jr_03c_40e9:
    bit 6, [hl]                                   ; $40e9: $cb $76
    jr z, jr_03c_40f1                             ; $40eb: $28 $04

    ld a, $03                                     ; $40ed: $3e $03
    sub e                                         ; $40ef: $93

jr_03c_40f0:
    ld e, a                                       ; $40f0: $5f

jr_03c_40f1:
    ld a, $03                                     ; $40f1: $3e $03
    ldh [$96], a                                  ; $40f3: $e0 $96
    ldh [rSVBK], a                                ; $40f5: $e0 $70
    ld l, [hl]                                    ; $40f7: $6e
    ld h, $00                                     ; $40f8: $26 $00
    add hl, hl                                    ; $40fa: $29
    add hl, hl                                    ; $40fb: $29
    add hl, hl                                    ; $40fc: $29
    add hl, de                                    ; $40fd: $19
    add hl, de                                    ; $40fe: $19
    ld de, $d800                                  ; $40ff: $11 $00 $d8
    add hl, de                                    ; $4102: $19
    bit 1, c                                      ; $4103: $cb $49
    jr z, jr_03c_4108                             ; $4105: $28 $01

    inc hl                                        ; $4107: $23

jr_03c_4108:
    ld a, $06                                     ; $4108: $3e $06
    ldh [$96], a                                  ; $410a: $e0 $96
    ldh [rSVBK], a                                ; $410c: $e0 $70
    ld a, [hl]                                    ; $410e: $7e
    bit 0, c                                      ; $410f: $cb $41
    jr nz, jr_03c_4115                            ; $4111: $20 $02

    swap a                                        ; $4113: $cb $37

jr_03c_4115:
    and $0f                                       ; $4115: $e6 $0f
    ld b, a                                       ; $4117: $47
    pop af                                        ; $4118: $f1
    ldh [$96], a                                  ; $4119: $e0 $96
    ldh [rSVBK], a                                ; $411b: $e0 $70
    ld a, b                                       ; $411d: $78
    ret                                           ; $411e: $c9


    ld a, e                                       ; $411f: $7b
    and $fc                                       ; $4120: $e6 $fc
    swap a                                        ; $4122: $cb $37
    ld l, a                                       ; $4124: $6f
    and $0f                                       ; $4125: $e6 $0f
    ld h, a                                       ; $4127: $67
    xor l                                         ; $4128: $ad
    ld l, a                                       ; $4129: $6f
    ld c, d                                       ; $412a: $4a
    srl c                                         ; $412b: $cb $39
    srl c                                         ; $412d: $cb $39
    ld b, $d0                                     ; $412f: $06 $d0
    add hl, bc                                    ; $4131: $09
    ld a, $02                                     ; $4132: $3e $02
    ldh [$96], a                                  ; $4134: $e0 $96
    ldh [rSVBK], a                                ; $4136: $e0 $70
    ld a, d                                       ; $4138: $7a
    bit 5, [hl]                                   ; $4139: $cb $6e
    jr z, jr_03c_413e                             ; $413b: $28 $01

    cpl                                           ; $413d: $2f

jr_03c_413e:
    ld c, a                                       ; $413e: $4f
    rrca                                          ; $413f: $0f
    rrca                                          ; $4140: $0f
    ld a, e                                       ; $4141: $7b
    bit 6, [hl]                                   ; $4142: $cb $76
    jr z, jr_03c_4147                             ; $4144: $28 $01

    cpl                                           ; $4146: $2f

jr_03c_4147:
    rla                                           ; $4147: $17
    and $07                                       ; $4148: $e6 $07
    ld e, a                                       ; $414a: $5f
    ld a, $03                                     ; $414b: $3e $03
    ldh [$96], a                                  ; $414d: $e0 $96
    ldh [rSVBK], a                                ; $414f: $e0 $70
    ld l, [hl]                                    ; $4151: $6e
    xor a                                         ; $4152: $af
    ld h, a                                       ; $4153: $67
    ld d, $d8                                     ; $4154: $16 $d8
    add hl, hl                                    ; $4156: $29
    add hl, hl                                    ; $4157: $29
    add hl, hl                                    ; $4158: $29
    add hl, de                                    ; $4159: $19
    ld a, $06                                     ; $415a: $3e $06
    ldh [$96], a                                  ; $415c: $e0 $96
    ldh [rSVBK], a                                ; $415e: $e0 $70
    ld a, [hl]                                    ; $4160: $7e
    bit 0, c                                      ; $4161: $cb $41
    jr nz, jr_03c_4167                            ; $4163: $20 $02

    swap a                                        ; $4165: $cb $37

jr_03c_4167:
    and $0f                                       ; $4167: $e6 $0f
    ret                                           ; $4169: $c9


Call_03c_416a:
    ld a, [$d329]                                 ; $416a: $fa $29 $d3
    add a                                         ; $416d: $87
    ld hl, $4189                                  ; $416e: $21 $89 $41
    add l                                         ; $4171: $85
    ld l, a                                       ; $4172: $6f
    jr nc, jr_03c_4176                            ; $4173: $30 $01

    inc h                                         ; $4175: $24

jr_03c_4176:
    ld a, [hl+]                                   ; $4176: $2a
    ld d, [hl]                                    ; $4177: $56
    ld e, a                                       ; $4178: $5f
    call Call_03c_41ed                            ; $4179: $cd $ed $41
    add a                                         ; $417c: $87
    ld h, $00                                     ; $417d: $26 $00
    ld l, a                                       ; $417f: $6f
    add hl, de                                    ; $4180: $19
    ld e, [hl]                                    ; $4181: $5e
    inc hl                                        ; $4182: $23
    ld d, [hl]                                    ; $4183: $56
    inc hl                                        ; $4184: $23
    ld a, [hl+]                                   ; $4185: $2a
    ld h, [hl]                                    ; $4186: $66
    ld l, a                                       ; $4187: $6f
    ret                                           ; $4188: $c9


    and l                                         ; $4189: $a5
    ld b, c                                       ; $418a: $41
    cp l                                          ; $418b: $bd
    ld b, c                                       ; $418c: $41
    cp l                                          ; $418d: $bd
    ld b, c                                       ; $418e: $41
    push de                                       ; $418f: $d5
    ld b, c                                       ; $4190: $41
    push de                                       ; $4191: $d5
    ld b, c                                       ; $4192: $41
    push de                                       ; $4193: $d5
    ld b, c                                       ; $4194: $41
    push de                                       ; $4195: $d5
    ld b, c                                       ; $4196: $41
    push de                                       ; $4197: $d5
    ld b, c                                       ; $4198: $41
    push de                                       ; $4199: $d5
    ld b, c                                       ; $419a: $41
    push de                                       ; $419b: $d5
    ld b, c                                       ; $419c: $41
    push de                                       ; $419d: $d5
    ld b, c                                       ; $419e: $41
    push de                                       ; $419f: $d5
    ld b, c                                       ; $41a0: $41
    push de                                       ; $41a1: $d5
    ld b, c                                       ; $41a2: $41
    push de                                       ; $41a3: $d5
    ld b, c                                       ; $41a4: $41
    ld h, d                                       ; $41a5: $62
    ld h, h                                       ; $41a6: $64
    ld e, l                                       ; $41a7: $5d
    ld e, a                                       ; $41a8: $5f
    ld [hl-], a                                   ; $41a9: $32
    inc a                                         ; $41aa: $3c
    inc d                                         ; $41ab: $14
    ld [hl-], a                                   ; $41ac: $32
    jr z, jr_03c_41e6                             ; $41ad: $28 $37

    inc d                                         ; $41af: $14
    jr z, @+$0c                                   ; $41b0: $28 $0a

    ld e, $63                                     ; $41b2: $1e $63
    ld h, h                                       ; $41b4: $64
    inc a                                         ; $41b5: $3c
    ld b, h                                       ; $41b6: $44
    ld d, a                                       ; $41b7: $57
    ld e, e                                       ; $41b8: $5b
    ld d, e                                       ; $41b9: $53
    ld d, a                                       ; $41ba: $57
    jr z, jr_03c_41f4                             ; $41bb: $28 $37

    ld h, d                                       ; $41bd: $62
    ld h, h                                       ; $41be: $64
    ld h, d                                       ; $41bf: $62
    ld h, h                                       ; $41c0: $64
    ld [hl-], a                                   ; $41c1: $32
    inc a                                         ; $41c2: $3c
    inc d                                         ; $41c3: $14
    ld [hl-], a                                   ; $41c4: $32
    jr z, jr_03c_41fe                             ; $41c5: $28 $37

    inc d                                         ; $41c7: $14
    jr z, @+$0c                                   ; $41c8: $28 $0a

    ld e, $63                                     ; $41ca: $1e $63
    ld h, h                                       ; $41cc: $64
    ld e, d                                       ; $41cd: $5a
    ld h, d                                       ; $41ce: $62
    ld e, [hl]                                    ; $41cf: $5e
    ld h, d                                       ; $41d0: $62
    ld e, d                                       ; $41d1: $5a
    ld e, [hl]                                    ; $41d2: $5e
    jr z, jr_03c_420c                             ; $41d3: $28 $37

    ld h, d                                       ; $41d5: $62
    ld h, h                                       ; $41d6: $64
    ld h, d                                       ; $41d7: $62
    ld h, h                                       ; $41d8: $64
    ld d, b                                       ; $41d9: $50
    ld e, d                                       ; $41da: $5a
    ld [hl-], a                                   ; $41db: $32
    ld d, b                                       ; $41dc: $50
    ld b, [hl]                                    ; $41dd: $46
    ld d, l                                       ; $41de: $55
    ld [hl-], a                                   ; $41df: $32
    ld b, [hl]                                    ; $41e0: $46
    jr z, @+$3e                                   ; $41e1: $28 $3c

    ld h, e                                       ; $41e3: $63
    ld h, h                                       ; $41e4: $64
    ld e, d                                       ; $41e5: $5a

jr_03c_41e6:
    ld h, d                                       ; $41e6: $62
    ld e, [hl]                                    ; $41e7: $5e
    ld h, d                                       ; $41e8: $62
    ld e, d                                       ; $41e9: $5a
    ld e, [hl]                                    ; $41ea: $5e
    ld b, [hl]                                    ; $41eb: $46
    ld d, l                                       ; $41ec: $55

Call_03c_41ed:
    ld a, [$d445]                                 ; $41ed: $fa $45 $d4
    or a                                          ; $41f0: $b7
    jr z, jr_03c_41f5                             ; $41f1: $28 $02

    xor a                                         ; $41f3: $af

jr_03c_41f4:
    ret                                           ; $41f4: $c9


jr_03c_41f5:
    ld a, [$d4cd]                                 ; $41f5: $fa $cd $d4
    cp $0d                                        ; $41f8: $fe $0d
    jr z, jr_03c_4200                             ; $41fa: $28 $04

    cp $02                                        ; $41fc: $fe $02

jr_03c_41fe:
    jr nz, jr_03c_4210                            ; $41fe: $20 $10

jr_03c_4200:
    ld a, [$d446]                                 ; $4200: $fa $46 $d4
    or a                                          ; $4203: $b7
    jr z, jr_03c_4235                             ; $4204: $28 $2f

    cp $01                                        ; $4206: $fe $01
    jr nz, jr_03c_420d                            ; $4208: $20 $03

    ld a, $05                                     ; $420a: $3e $05

jr_03c_420c:
    ret                                           ; $420c: $c9


jr_03c_420d:
    ld a, $06                                     ; $420d: $3e $06
    ret                                           ; $420f: $c9


jr_03c_4210:
    cp $00                                        ; $4210: $fe $00
    jr z, jr_03c_4218                             ; $4212: $28 $04

    cp $0e                                        ; $4214: $fe $0e
    jr nz, jr_03c_4228                            ; $4216: $20 $10

jr_03c_4218:
    ld a, [$d446]                                 ; $4218: $fa $46 $d4
    or a                                          ; $421b: $b7
    jr z, jr_03c_4235                             ; $421c: $28 $17

    cp $01                                        ; $421e: $fe $01
    jr nz, jr_03c_4225                            ; $4220: $20 $03

    ld a, $09                                     ; $4222: $3e $09
    ret                                           ; $4224: $c9


jr_03c_4225:
    ld a, $0a                                     ; $4225: $3e $0a
    ret                                           ; $4227: $c9


jr_03c_4228:
    cp $01                                        ; $4228: $fe $01
    jr nz, jr_03c_4235                            ; $422a: $20 $09

    ld a, [$d446]                                 ; $422c: $fa $46 $d4
    or a                                          ; $422f: $b7
    jr z, jr_03c_4235                             ; $4230: $28 $03

    ld a, $0b                                     ; $4232: $3e $0b
    ret                                           ; $4234: $c9


jr_03c_4235:
    push hl                                       ; $4235: $e5
    push de                                       ; $4236: $d5
    ld a, [$d4cd]                                 ; $4237: $fa $cd $d4
    ld hl, $4246                                  ; $423a: $21 $46 $42
    add l                                         ; $423d: $85
    ld l, a                                       ; $423e: $6f
    jr nc, jr_03c_4242                            ; $423f: $30 $01

    inc h                                         ; $4241: $24

jr_03c_4242:
    ld a, [hl]                                    ; $4242: $7e
    pop de                                        ; $4243: $d1
    pop hl                                        ; $4244: $e1
    ret                                           ; $4245: $c9


    ld bc, $0402                                  ; $4246: $01 $02 $04
    ld [bc], a                                    ; $4249: $02
    ld [bc], a                                    ; $424a: $02
    inc bc                                        ; $424b: $03
    rlca                                          ; $424c: $07
    ld [bc], a                                    ; $424d: $02
    ld [bc], a                                    ; $424e: $02
    ld [$0b07], sp                                ; $424f: $08 $07 $0b
    inc bc                                        ; $4252: $03
    inc b                                         ; $4253: $04
    ld bc, $d501                                  ; $4254: $01 $01 $d5
    ld hl, $c880                                  ; $4257: $21 $80 $c8
    ld d, $00                                     ; $425a: $16 $00
    ld e, a                                       ; $425c: $5f
    ld a, [$c835]                                 ; $425d: $fa $35 $c8
    or a                                          ; $4260: $b7
    jr z, jr_03c_4267                             ; $4261: $28 $04

    ld a, $40                                     ; $4263: $3e $40
    add e                                         ; $4265: $83
    ld e, a                                       ; $4266: $5f

jr_03c_4267:
    add hl, de                                    ; $4267: $19
    pop de                                        ; $4268: $d1
    ret                                           ; $4269: $c9


    call Call_03c_50d3                            ; $426a: $cd $d3 $50
    ld [$d549], a                                 ; $426d: $ea $49 $d5
    ld a, [$d4cd]                                 ; $4270: $fa $cd $d4
    cp $06                                        ; $4273: $fe $06
    jp z, Jump_03c_4296                           ; $4275: $ca $96 $42

    cp $0a                                        ; $4278: $fe $0a
    jp z, Jump_03c_4296                           ; $427a: $ca $96 $42

    rst $18                                       ; $427d: $df
    inc b                                         ; $427e: $04
    db $10                                        ; $427f: $10
    push hl                                       ; $4280: $e5
    ld de, $f880                                  ; $4281: $11 $80 $f8
    add hl, de                                    ; $4284: $19
    bit 7, h                                      ; $4285: $cb $7c
    pop hl                                        ; $4287: $e1
    jr nz, jr_03c_4290                            ; $4288: $20 $06

    call Call_03c_5751                            ; $428a: $cd $51 $57
    jp Jump_03c_4299                              ; $428d: $c3 $99 $42


jr_03c_4290:
    call Call_03c_59dc                            ; $4290: $cd $dc $59
    jp Jump_03c_4299                              ; $4293: $c3 $99 $42


Jump_03c_4296:
    call Call_03c_5dcd                            ; $4296: $cd $cd $5d

Jump_03c_4299:
    push af                                       ; $4299: $f5
    ld a, h                                       ; $429a: $7c
    and $fe                                       ; $429b: $e6 $fe
    ld h, a                                       ; $429d: $67
    ld a, l                                       ; $429e: $7d
    and $fe                                       ; $429f: $e6 $fe
    ld l, a                                       ; $42a1: $6f
    pop af                                        ; $42a2: $f1
    ret                                           ; $42a3: $c9


    nop                                           ; $42a4: $00
    nop                                           ; $42a5: $00
    nop                                           ; $42a6: $00
    nop                                           ; $42a7: $00
    nop                                           ; $42a8: $00
    nop                                           ; $42a9: $00
    nop                                           ; $42aa: $00
    nop                                           ; $42ab: $00
    nop                                           ; $42ac: $00
    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    nop                                           ; $42af: $00
    nop                                           ; $42b0: $00
    nop                                           ; $42b1: $00
    nop                                           ; $42b2: $00
    nop                                           ; $42b3: $00
    nop                                           ; $42b4: $00
    nop                                           ; $42b5: $00
    nop                                           ; $42b6: $00
    nop                                           ; $42b7: $00
    nop                                           ; $42b8: $00
    nop                                           ; $42b9: $00
    nop                                           ; $42ba: $00
    nop                                           ; $42bb: $00
    nop                                           ; $42bc: $00
    nop                                           ; $42bd: $00
    pop af                                        ; $42be: $f1
    nop                                           ; $42bf: $00
    nop                                           ; $42c0: $00
    nop                                           ; $42c1: $00
    nop                                           ; $42c2: $00
    nop                                           ; $42c3: $00
    ld d, h                                       ; $42c4: $54
    ld de, $0000                                  ; $42c5: $11 $00 $00
    ld [bc], a                                    ; $42c8: $02
    ld [bc], a                                    ; $42c9: $02
    inc b                                         ; $42ca: $04
    inc b                                         ; $42cb: $04
    dec b                                         ; $42cc: $05
    inc c                                         ; $42cd: $0c
    cp $fe                                        ; $42ce: $fe $fe
    nop                                           ; $42d0: $00
    ld [bc], a                                    ; $42d1: $02
    ld [bc], a                                    ; $42d2: $02
    inc b                                         ; $42d3: $04
    and b                                         ; $42d4: $a0
    ld [bc], a                                    ; $42d5: $02
    db $fc                                        ; $42d6: $fc
    db $fc                                        ; $42d7: $fc
    db $fc                                        ; $42d8: $fc
    nop                                           ; $42d9: $00
    ld [bc], a                                    ; $42da: $02
    inc b                                         ; $42db: $04
    ld e, d                                       ; $42dc: $5a
    dec b                                         ; $42dd: $05
    ld sp, hl                                     ; $42de: $f9
    db $fc                                        ; $42df: $fc
    db $fc                                        ; $42e0: $fc
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    ld [bc], a                                    ; $42e3: $02
    ld b, h                                       ; $42e4: $44
    add hl, bc                                    ; $42e5: $09
    or $fc                                        ; $42e6: $f6 $fc
    db $fc                                        ; $42e8: $fc
    cp $fe                                        ; $42e9: $fe $fe
    nop                                           ; $42eb: $00
    nop                                           ; $42ec: $00
    nop                                           ; $42ed: $00
    ld [bc], a                                    ; $42ee: $02
    nop                                           ; $42ef: $00
    ld [bc], a                                    ; $42f0: $02
    ld [bc], a                                    ; $42f1: $02
    ld [bc], a                                    ; $42f2: $02
    ld [bc], a                                    ; $42f3: $02
    ld h, l                                       ; $42f4: $65
    ld [bc], a                                    ; $42f5: $02
    xor $fe                                       ; $42f6: $ee $fe
    nop                                           ; $42f8: $00
    nop                                           ; $42f9: $00
    nop                                           ; $42fa: $00
    ld [bc], a                                    ; $42fb: $02
    nop                                           ; $42fc: $00
    nop                                           ; $42fd: $00
    dec b                                         ; $42fe: $05
    nop                                           ; $42ff: $00
    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    nop                                           ; $4303: $00
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    ei                                            ; $4306: $fb
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00
    nop                                           ; $4309: $00
    nop                                           ; $430a: $00
    nop                                           ; $430b: $00
    nop                                           ; $430c: $00
    nop                                           ; $430d: $00
    dec b                                         ; $430e: $05
    nop                                           ; $430f: $00
    nop                                           ; $4310: $00
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    nop                                           ; $4316: $00
    nop                                           ; $4317: $00
    nop                                           ; $4318: $00
    nop                                           ; $4319: $00
    nop                                           ; $431a: $00
    nop                                           ; $431b: $00
    nop                                           ; $431c: $00
    nop                                           ; $431d: $00
    nop                                           ; $431e: $00
    nop                                           ; $431f: $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    nop                                           ; $4323: $00
    and h                                         ; $4324: $a4
    ld b, d                                       ; $4325: $42
    xor h                                         ; $4326: $ac
    ld b, d                                       ; $4327: $42
    or h                                          ; $4328: $b4
    ld b, d                                       ; $4329: $42
    cp h                                          ; $432a: $bc
    ld b, d                                       ; $432b: $42
    call nz, $cc42                                ; $432c: $c4 $42 $cc
    ld b, d                                       ; $432f: $42
    call nc, $dc42                                ; $4330: $d4 $42 $dc
    ld b, d                                       ; $4333: $42
    db $e4                                        ; $4334: $e4
    ld b, d                                       ; $4335: $42
    db $ec                                        ; $4336: $ec
    ld b, d                                       ; $4337: $42
    db $f4                                        ; $4338: $f4
    ld b, d                                       ; $4339: $42
    db $fc                                        ; $433a: $fc
    ld b, d                                       ; $433b: $42
    inc b                                         ; $433c: $04
    ld b, e                                       ; $433d: $43
    inc c                                         ; $433e: $0c
    ld b, e                                       ; $433f: $43
    inc d                                         ; $4340: $14
    ld b, e                                       ; $4341: $43
    inc e                                         ; $4342: $1c
    ld b, e                                       ; $4343: $43
    inc d                                         ; $4344: $14
    nop                                           ; $4345: $00
    add hl, de                                    ; $4346: $19
    nop                                           ; $4347: $00
    jr z, jr_03c_434a                             ; $4348: $28 $00

jr_03c_434a:
    inc a                                         ; $434a: $3c
    nop                                           ; $434b: $00
    rrca                                          ; $434c: $0f
    nop                                           ; $434d: $00
    add hl, de                                    ; $434e: $19
    nop                                           ; $434f: $00
    dec l                                         ; $4350: $2d
    nop                                           ; $4351: $00
    inc a                                         ; $4352: $3c
    nop                                           ; $4353: $00
    ld a, [bc]                                    ; $4354: $0a
    nop                                           ; $4355: $00
    add hl, de                                    ; $4356: $19
    nop                                           ; $4357: $00
    inc hl                                        ; $4358: $23
    nop                                           ; $4359: $00
    inc a                                         ; $435a: $3c
    nop                                           ; $435b: $00
    dec c                                         ; $435c: $0d
    ld bc, $0805                                  ; $435d: $01 $05 $08

Call_03c_4360:
    push af                                       ; $4360: $f5
    push bc                                       ; $4361: $c5
    push de                                       ; $4362: $d5
    ld b, a                                       ; $4363: $47
    sub $10                                       ; $4364: $d6 $10
    bit 7, a                                      ; $4366: $cb $7f
    jr nz, jr_03c_436d                            ; $4368: $20 $03

    xor a                                         ; $436a: $af
    jr jr_03c_436e                                ; $436b: $18 $01

jr_03c_436d:
    ld a, b                                       ; $436d: $78

jr_03c_436e:
    ld hl, $4324                                  ; $436e: $21 $24 $43

jr_03c_4371:
    cp $00                                        ; $4371: $fe $00
    jr z, jr_03c_437a                             ; $4373: $28 $05

    inc hl                                        ; $4375: $23
    inc hl                                        ; $4376: $23
    dec a                                         ; $4377: $3d
    jr jr_03c_4371                                ; $4378: $18 $f7

jr_03c_437a:
    ld a, [hl+]                                   ; $437a: $2a
    ld h, [hl]                                    ; $437b: $66
    ld l, a                                       ; $437c: $6f
    pop de                                        ; $437d: $d1
    pop bc                                        ; $437e: $c1
    pop af                                        ; $437f: $f1
    ret                                           ; $4380: $c9


Call_03c_4381:
    push hl                                       ; $4381: $e5
    call Call_03c_4360                            ; $4382: $cd $60 $43
    ld a, [hl]                                    ; $4385: $7e
    and $03                                       ; $4386: $e6 $03
    pop hl                                        ; $4388: $e1
    ret                                           ; $4389: $c9


Call_03c_438a:
    push hl                                       ; $438a: $e5
    call Call_03c_4360                            ; $438b: $cd $60 $43
    ld a, [hl]                                    ; $438e: $7e
    srl a                                         ; $438f: $cb $3f
    srl a                                         ; $4391: $cb $3f
    and $03                                       ; $4393: $e6 $03
    pop hl                                        ; $4395: $e1
    ret                                           ; $4396: $c9


Call_03c_4397:
    push hl                                       ; $4397: $e5
    call Call_03c_4360                            ; $4398: $cd $60 $43
    ld a, [hl]                                    ; $439b: $7e
    srl a                                         ; $439c: $cb $3f
    srl a                                         ; $439e: $cb $3f
    srl a                                         ; $43a0: $cb $3f
    srl a                                         ; $43a2: $cb $3f
    and $03                                       ; $43a4: $e6 $03
    pop hl                                        ; $43a6: $e1
    ret                                           ; $43a7: $c9


Call_03c_43a8:
    push hl                                       ; $43a8: $e5
    call Call_03c_4360                            ; $43a9: $cd $60 $43
    ld a, [hl]                                    ; $43ac: $7e
    srl a                                         ; $43ad: $cb $3f
    srl a                                         ; $43af: $cb $3f
    srl a                                         ; $43b1: $cb $3f
    srl a                                         ; $43b3: $cb $3f
    srl a                                         ; $43b5: $cb $3f
    srl a                                         ; $43b7: $cb $3f
    and $03                                       ; $43b9: $e6 $03
    pop hl                                        ; $43bb: $e1
    ret                                           ; $43bc: $c9


Call_03c_43bd:
    push hl                                       ; $43bd: $e5
    call Call_03c_4360                            ; $43be: $cd $60 $43
    inc hl                                        ; $43c1: $23
    ld a, [hl]                                    ; $43c2: $7e
    and $03                                       ; $43c3: $e6 $03
    pop hl                                        ; $43c5: $e1
    ret                                           ; $43c6: $c9


Call_03c_43c7:
    push hl                                       ; $43c7: $e5
    call Call_03c_4360                            ; $43c8: $cd $60 $43
    inc hl                                        ; $43cb: $23
    ld a, [hl]                                    ; $43cc: $7e
    srl a                                         ; $43cd: $cb $3f
    srl a                                         ; $43cf: $cb $3f
    and $07                                       ; $43d1: $e6 $07
    pop hl                                        ; $43d3: $e1
    ret                                           ; $43d4: $c9


Call_03c_43d5:
    push hl                                       ; $43d5: $e5
    call Call_03c_4360                            ; $43d6: $cd $60 $43
    inc hl                                        ; $43d9: $23
    inc hl                                        ; $43da: $23
    ld a, [hl]                                    ; $43db: $7e
    pop hl                                        ; $43dc: $e1
    ret                                           ; $43dd: $c9


Call_03c_43de:
    push hl                                       ; $43de: $e5
    call Call_03c_4360                            ; $43df: $cd $60 $43
    inc hl                                        ; $43e2: $23
    inc hl                                        ; $43e3: $23
    inc hl                                        ; $43e4: $23
    ld a, [$c836]                                 ; $43e5: $fa $36 $c8
    cp $00                                        ; $43e8: $fe $00
    jr z, jr_03c_4401                             ; $43ea: $28 $15

    sub $06                                       ; $43ec: $d6 $06
    bit 7, a                                      ; $43ee: $cb $7f
    jr z, jr_03c_4401                             ; $43f0: $28 $0f

    ld a, [$c836]                                 ; $43f2: $fa $36 $c8
    dec a                                         ; $43f5: $3d

jr_03c_43f6:
    cp $00                                        ; $43f6: $fe $00
    jr z, jr_03c_43fe                             ; $43f8: $28 $04

    inc hl                                        ; $43fa: $23
    dec a                                         ; $43fb: $3d
    jr jr_03c_43f6                                ; $43fc: $18 $f8

jr_03c_43fe:
    ld a, [hl]                                    ; $43fe: $7e
    pop hl                                        ; $43ff: $e1
    ret                                           ; $4400: $c9


jr_03c_4401:
    xor a                                         ; $4401: $af
    pop hl                                        ; $4402: $e1
    ret                                           ; $4403: $c9


Call_03c_4404:
    push bc                                       ; $4404: $c5
    push de                                       ; $4405: $d5
    push hl                                       ; $4406: $e5
    push bc                                       ; $4407: $c5
    pop hl                                        ; $4408: $e1
    call Call_000_08ac                            ; $4409: $cd $ac $08
    bit 7, h                                      ; $440c: $cb $7c
    jr nz, jr_03c_4422                            ; $440e: $20 $12

    ld a, h                                       ; $4410: $7c
    cp $00                                        ; $4411: $fe $00
    jr nz, jr_03c_441e                            ; $4413: $20 $09

    ld a, l                                       ; $4415: $7d
    cp $00                                        ; $4416: $fe $00
    jr nz, jr_03c_441e                            ; $4418: $20 $04

    ld a, $00                                     ; $441a: $3e $00
    jr jr_03c_4424                                ; $441c: $18 $06

jr_03c_441e:
    ld a, $01                                     ; $441e: $3e $01
    jr jr_03c_4424                                ; $4420: $18 $02

jr_03c_4422:
    ld a, $02                                     ; $4422: $3e $02

jr_03c_4424:
    pop hl                                        ; $4424: $e1
    pop de                                        ; $4425: $d1
    pop bc                                        ; $4426: $c1
    ret                                           ; $4427: $c9


    push af                                       ; $4428: $f5
    push bc                                       ; $4429: $c5
    push de                                       ; $442a: $d5
    push de                                       ; $442b: $d5
    ld hl, $d545                                  ; $442c: $21 $45 $d5
    ld a, [hl+]                                   ; $442f: $2a
    ld d, [hl]                                    ; $4430: $56
    ld e, a                                       ; $4431: $5f
    push bc                                       ; $4432: $c5
    pop hl                                        ; $4433: $e1
    call Call_000_08ac                            ; $4434: $cd $ac $08
    pop bc                                        ; $4437: $c1
    push hl                                       ; $4438: $e5
    ld hl, $d547                                  ; $4439: $21 $47 $d5
    ld a, [hl+]                                   ; $443c: $2a
    ld d, [hl]                                    ; $443d: $56
    ld e, a                                       ; $443e: $5f
    push bc                                       ; $443f: $c5
    pop hl                                        ; $4440: $e1
    call Call_000_08ac                            ; $4441: $cd $ac $08
    pop de                                        ; $4444: $d1
    jr jr_03c_4483                                ; $4445: $18 $3c

Call_03c_4447:
    push af                                       ; $4447: $f5
    push bc                                       ; $4448: $c5
    push de                                       ; $4449: $d5
    push de                                       ; $444a: $d5
    ld hl, $d43d                                  ; $444b: $21 $3d $d4
    ld a, [hl+]                                   ; $444e: $2a
    ld d, [hl]                                    ; $444f: $56
    ld e, a                                       ; $4450: $5f
    push bc                                       ; $4451: $c5
    pop hl                                        ; $4452: $e1
    call Call_000_08ac                            ; $4453: $cd $ac $08
    pop bc                                        ; $4456: $c1
    push hl                                       ; $4457: $e5
    ld hl, $d43f                                  ; $4458: $21 $3f $d4
    ld a, [hl+]                                   ; $445b: $2a
    ld d, [hl]                                    ; $445c: $56
    ld e, a                                       ; $445d: $5f
    push bc                                       ; $445e: $c5
    pop hl                                        ; $445f: $e1
    call Call_000_08ac                            ; $4460: $cd $ac $08
    pop de                                        ; $4463: $d1
    jr jr_03c_4483                                ; $4464: $18 $1d

Call_03c_4466:
    push af                                       ; $4466: $f5
    push bc                                       ; $4467: $c5
    push de                                       ; $4468: $d5
    push de                                       ; $4469: $d5
    ld hl, $d401                                  ; $446a: $21 $01 $d4
    ld a, [hl+]                                   ; $446d: $2a
    ld d, [hl]                                    ; $446e: $56
    ld e, a                                       ; $446f: $5f
    push bc                                       ; $4470: $c5
    pop hl                                        ; $4471: $e1
    call Call_000_08ac                            ; $4472: $cd $ac $08
    pop bc                                        ; $4475: $c1
    push hl                                       ; $4476: $e5
    ld hl, $d404                                  ; $4477: $21 $04 $d4
    ld a, [hl+]                                   ; $447a: $2a
    ld d, [hl]                                    ; $447b: $56
    ld e, a                                       ; $447c: $5f
    push bc                                       ; $447d: $c5
    pop hl                                        ; $447e: $e1
    call Call_000_08ac                            ; $447f: $cd $ac $08
    pop de                                        ; $4482: $d1

jr_03c_4483:
    ld a, h                                       ; $4483: $7c
    bit 7, a                                      ; $4484: $cb $7f
    jr z, jr_03c_448a                             ; $4486: $28 $02

    cpl                                           ; $4488: $2f
    inc a                                         ; $4489: $3c

jr_03c_448a:
    ld b, a                                       ; $448a: $47
    ld a, d                                       ; $448b: $7a
    bit 7, a                                      ; $448c: $cb $7f
    jr z, jr_03c_4492                             ; $448e: $28 $02

    cpl                                           ; $4490: $2f
    inc a                                         ; $4491: $3c

jr_03c_4492:
    cp b                                          ; $4492: $b8
    jr nc, jr_03c_4496                            ; $4493: $30 $01

    ld a, b                                       ; $4495: $78

jr_03c_4496:
    ld b, $01                                     ; $4496: $06 $01
    cp $20                                        ; $4498: $fe $20
    jr nc, jr_03c_44b1                            ; $449a: $30 $15

    inc b                                         ; $449c: $04
    cp $10                                        ; $449d: $fe $10
    jr nc, jr_03c_44b1                            ; $449f: $30 $10

    inc b                                         ; $44a1: $04
    cp $08                                        ; $44a2: $fe $08
    jr nc, jr_03c_44b1                            ; $44a4: $30 $0b

    inc b                                         ; $44a6: $04
    cp $04                                        ; $44a7: $fe $04
    jr nc, jr_03c_44b1                            ; $44a9: $30 $06

    inc b                                         ; $44ab: $04
    cp $02                                        ; $44ac: $fe $02
    jr nc, jr_03c_44b1                            ; $44ae: $30 $01

    inc b                                         ; $44b0: $04

jr_03c_44b1:
    push bc                                       ; $44b1: $c5

jr_03c_44b2:
    sla e                                         ; $44b2: $cb $23
    rl d                                          ; $44b4: $cb $12
    sla l                                         ; $44b6: $cb $25
    rl h                                          ; $44b8: $cb $14
    dec b                                         ; $44ba: $05
    jr nz, jr_03c_44b2                            ; $44bb: $20 $f5

    push de                                       ; $44bd: $d5
    ld d, h                                       ; $44be: $54
    ld e, l                                       ; $44bf: $5d
    call Call_000_0c8e                            ; $44c0: $cd $8e $0c
    pop de                                        ; $44c3: $d1
    push hl                                       ; $44c4: $e5
    ld h, d                                       ; $44c5: $62
    ld l, e                                       ; $44c6: $6b
    call Call_000_0c8e                            ; $44c7: $cd $8e $0c
    pop de                                        ; $44ca: $d1
    add hl, de                                    ; $44cb: $19
    call Call_000_0f04                            ; $44cc: $cd $04 $0f
    ld h, a                                       ; $44cf: $67
    ld l, $00                                     ; $44d0: $2e $00
    pop bc                                        ; $44d2: $c1

jr_03c_44d3:
    srl h                                         ; $44d3: $cb $3c
    rr l                                          ; $44d5: $cb $1d
    dec b                                         ; $44d7: $05
    jr nz, jr_03c_44d3                            ; $44d8: $20 $f9

    pop de                                        ; $44da: $d1
    pop bc                                        ; $44db: $c1
    pop af                                        ; $44dc: $f1
    ret                                           ; $44dd: $c9


Call_03c_44de:
    push de                                       ; $44de: $d5
    push bc                                       ; $44df: $c5
    ld hl, $d545                                  ; $44e0: $21 $45 $d5
    ld a, [hl+]                                   ; $44e3: $2a
    ld d, [hl]                                    ; $44e4: $56
    ld e, a                                       ; $44e5: $5f
    pop hl                                        ; $44e6: $e1
    call Call_000_08ac                            ; $44e7: $cd $ac $08
    pop bc                                        ; $44ea: $c1
    push hl                                       ; $44eb: $e5
    ld hl, $d547                                  ; $44ec: $21 $47 $d5
    ld a, [hl+]                                   ; $44ef: $2a
    ld d, [hl]                                    ; $44f0: $56
    ld e, a                                       ; $44f1: $5f
    push bc                                       ; $44f2: $c5
    pop hl                                        ; $44f3: $e1
    call Call_000_08ac                            ; $44f4: $cd $ac $08
    pop de                                        ; $44f7: $d1
    call Call_000_1a03                            ; $44f8: $cd $03 $1a
    ret                                           ; $44fb: $c9


Call_03c_44fc:
    push hl                                       ; $44fc: $e5
    ld hl, $d545                                  ; $44fd: $21 $45 $d5
    ld a, [hl+]                                   ; $4500: $2a
    ld b, [hl]                                    ; $4501: $46
    ld c, a                                       ; $4502: $4f
    ld hl, $d547                                  ; $4503: $21 $47 $d5
    ld a, [hl+]                                   ; $4506: $2a
    ld d, [hl]                                    ; $4507: $56
    ld e, a                                       ; $4508: $5f
    pop hl                                        ; $4509: $e1
    push de                                       ; $450a: $d5
    ld hl, $d401                                  ; $450b: $21 $01 $d4
    ld a, [hl+]                                   ; $450e: $2a
    ld d, [hl]                                    ; $450f: $56
    ld e, a                                       ; $4510: $5f
    push bc                                       ; $4511: $c5
    pop hl                                        ; $4512: $e1
    call Call_000_08ac                            ; $4513: $cd $ac $08
    pop bc                                        ; $4516: $c1
    push hl                                       ; $4517: $e5
    ld hl, $d404                                  ; $4518: $21 $04 $d4
    ld a, [hl+]                                   ; $451b: $2a
    ld d, [hl]                                    ; $451c: $56
    ld e, a                                       ; $451d: $5f
    push bc                                       ; $451e: $c5
    pop hl                                        ; $451f: $e1
    call Call_000_08ac                            ; $4520: $cd $ac $08
    pop de                                        ; $4523: $d1
    call Call_000_1a03                            ; $4524: $cd $03 $1a
    ret                                           ; $4527: $c9


Call_03c_4528:
    push af                                       ; $4528: $f5
    push bc                                       ; $4529: $c5
    push de                                       ; $452a: $d5
    ld d, h                                       ; $452b: $54
    push de                                       ; $452c: $d5
    call Call_03c_453f                            ; $452d: $cd $3f $45
    ld de, $003c                                  ; $4530: $11 $3c $00
    call Call_000_09ae                            ; $4533: $cd $ae $09
    pop de                                        ; $4536: $d1
    ld a, d                                       ; $4537: $7a
    call Call_000_08b9                            ; $4538: $cd $b9 $08
    pop de                                        ; $453b: $d1
    pop bc                                        ; $453c: $c1
    pop af                                        ; $453d: $f1
    ret                                           ; $453e: $c9


Call_03c_453f:
    push af                                       ; $453f: $f5
    push bc                                       ; $4540: $c5
    push de                                       ; $4541: $d5
    rst $18                                       ; $4542: $df
    ld c, $10                                     ; $4543: $0e $10
    push hl                                       ; $4545: $e5
    call Call_03c_416a                            ; $4546: $cd $6a $41
    ld a, d                                       ; $4549: $7a
    add e                                         ; $454a: $83
    pop hl                                        ; $454b: $e1
    cp $c6                                        ; $454c: $fe $c6
    jr z, jr_03c_4560                             ; $454e: $28 $10

    push hl                                       ; $4550: $e5
    ld hl, HeaderROMSize                          ; $4551: $21 $48 $01
    call Call_000_08b9                            ; $4554: $cd $b9 $08
    ld de, $0080                                  ; $4557: $11 $80 $00
    add hl, de                                    ; $455a: $19
    ld a, h                                       ; $455b: $7c
    pop hl                                        ; $455c: $e1
    call Call_000_0bec                            ; $455d: $cd $ec $0b

jr_03c_4560:
    pop de                                        ; $4560: $d1
    pop bc                                        ; $4561: $c1
    pop af                                        ; $4562: $f1
    ret                                           ; $4563: $c9


Call_03c_4564:
    ld a, [$d443]                                 ; $4564: $fa $43 $d4
    or a                                          ; $4567: $b7
    jr z, jr_03c_458c                             ; $4568: $28 $22

    cp $04                                        ; $456a: $fe $04
    jr z, jr_03c_458c                             ; $456c: $28 $1e

    ld a, [$d442]                                 ; $456e: $fa $42 $d4
    ld b, a                                       ; $4571: $47
    ld a, d                                       ; $4572: $7a
    sub b                                         ; $4573: $90
    ld d, a                                       ; $4574: $57
    ld a, [$d441]                                 ; $4575: $fa $41 $d4
    ld b, a                                       ; $4578: $47
    ld a, h                                       ; $4579: $7c
    sub b                                         ; $457a: $90
    ld h, a                                       ; $457b: $67
    sla l                                         ; $457c: $cb $25
    rl h                                          ; $457e: $cb $14
    sla l                                         ; $4580: $cb $25
    rl h                                          ; $4582: $cb $14
    sla e                                         ; $4584: $cb $23
    rl d                                          ; $4586: $cb $12
    sla e                                         ; $4588: $cb $23
    rl d                                          ; $458a: $cb $12

jr_03c_458c:
    push hl                                       ; $458c: $e5
    push de                                       ; $458d: $d5
    call Call_03c_45af                            ; $458e: $cd $af $45
    pop de                                        ; $4591: $d1
    pop hl                                        ; $4592: $e1
    push bc                                       ; $4593: $c5
    call Call_03c_45d5                            ; $4594: $cd $d5 $45
    pop bc                                        ; $4597: $c1
    ret                                           ; $4598: $c9


Call_03c_4599:
    push bc                                       ; $4599: $c5
    push de                                       ; $459a: $d5
    push hl                                       ; $459b: $e5
    ld b, a                                       ; $459c: $47

jr_03c_459d:
    call Call_000_0a61                            ; $459d: $cd $61 $0a
    ld a, l                                       ; $45a0: $7d
    sub b                                         ; $45a1: $90
    jr z, jr_03c_45aa                             ; $45a2: $28 $06

    bit 7, a                                      ; $45a4: $cb $7f
    jr nz, jr_03c_45aa                            ; $45a6: $20 $02

    jr jr_03c_459d                                ; $45a8: $18 $f3

jr_03c_45aa:
    ld a, l                                       ; $45aa: $7d
    pop hl                                        ; $45ab: $e1
    pop de                                        ; $45ac: $d1
    pop bc                                        ; $45ad: $c1
    ret                                           ; $45ae: $c9


Call_03c_45af:
    bit 7, h                                      ; $45af: $cb $7c
    jr nz, jr_03c_45d0                            ; $45b1: $20 $1d

    bit 7, d                                      ; $45b3: $cb $7a
    jr nz, jr_03c_45d0                            ; $45b5: $20 $19

    push de                                       ; $45b7: $d5
    push hl                                       ; $45b8: $e5
    pop de                                        ; $45b9: $d1
    ld bc, $4000                                  ; $45ba: $01 $00 $40
    call Call_03c_4404                            ; $45bd: $cd $04 $44
    pop de                                        ; $45c0: $d1
    cp $02                                        ; $45c1: $fe $02
    jr z, jr_03c_45d0                             ; $45c3: $28 $0b

    call Call_03c_4404                            ; $45c5: $cd $04 $44
    cp $02                                        ; $45c8: $fe $02
    jr z, jr_03c_45d0                             ; $45ca: $28 $04

    call Call_03c_404c                            ; $45cc: $cd $4c $40
    ret                                           ; $45cf: $c9


jr_03c_45d0:
    ld a, $80                                     ; $45d0: $3e $80
    ld b, $00                                     ; $45d2: $06 $00
    ret                                           ; $45d4: $c9


Call_03c_45d5:
    bit 7, h                                      ; $45d5: $cb $7c
    jr nz, jr_03c_45f6                            ; $45d7: $20 $1d

    bit 7, d                                      ; $45d9: $cb $7a
    jr nz, jr_03c_45f6                            ; $45db: $20 $19

    push de                                       ; $45dd: $d5
    push hl                                       ; $45de: $e5
    pop de                                        ; $45df: $d1
    ld bc, $4000                                  ; $45e0: $01 $00 $40
    call Call_03c_4404                            ; $45e3: $cd $04 $44
    pop de                                        ; $45e6: $d1
    cp $02                                        ; $45e7: $fe $02
    jr z, jr_03c_45f6                             ; $45e9: $28 $0b

    call Call_03c_4404                            ; $45eb: $cd $04 $44
    cp $02                                        ; $45ee: $fe $02
    jr z, jr_03c_45f6                             ; $45f0: $28 $04

    call Call_03c_40b1                            ; $45f2: $cd $b1 $40
    ret                                           ; $45f5: $c9


jr_03c_45f6:
    ld a, $07                                     ; $45f6: $3e $07
    ret                                           ; $45f8: $c9


Call_03c_45f9:
    push bc                                       ; $45f9: $c5
    push de                                       ; $45fa: $d5
    push hl                                       ; $45fb: $e5
    ld a, [$d4cd]                                 ; $45fc: $fa $cd $d4
    cp $06                                        ; $45ff: $fe $06
    jr z, jr_03c_4641                             ; $4601: $28 $3e

    cp $0a                                        ; $4603: $fe $0a
    jr z, jr_03c_4641                             ; $4605: $28 $3a

    xor a                                         ; $4607: $af

jr_03c_4608:
    cp $0d                                        ; $4608: $fe $0d
    jr z, jr_03c_462d                             ; $460a: $28 $21

    push af                                       ; $460c: $f5
    call Call_03c_465f                            ; $460d: $cd $5f $46
    cp $01                                        ; $4610: $fe $01
    jr z, jr_03c_4629                             ; $4612: $28 $15

    pop af                                        ; $4614: $f1
    push af                                       ; $4615: $f5
    push bc                                       ; $4616: $c5
    call Call_03c_453f                            ; $4617: $cd $3f $45
    pop bc                                        ; $461a: $c1
    pop af                                        ; $461b: $f1
    push hl                                       ; $461c: $e5
    pop de                                        ; $461d: $d1
    ld h, a                                       ; $461e: $67
    call Call_03c_4404                            ; $461f: $cd $04 $44
    cp $01                                        ; $4622: $fe $01
    ld a, h                                       ; $4624: $7c
    jr z, jr_03c_462d                             ; $4625: $28 $06

    jr jr_03c_462a                                ; $4627: $18 $01

jr_03c_4629:
    pop af                                        ; $4629: $f1

jr_03c_462a:
    inc a                                         ; $462a: $3c
    jr jr_03c_4608                                ; $462b: $18 $db

jr_03c_462d:
    cp $00                                        ; $462d: $fe $00
    jr z, jr_03c_4643                             ; $462f: $28 $12

    dec a                                         ; $4631: $3d
    push af                                       ; $4632: $f5
    call Call_03c_465f                            ; $4633: $cd $5f $46
    cp $01                                        ; $4636: $fe $01
    jr nz, jr_03c_463e                            ; $4638: $20 $04

    pop af                                        ; $463a: $f1
    inc a                                         ; $463b: $3c
    jr jr_03c_4643                                ; $463c: $18 $05

jr_03c_463e:
    pop af                                        ; $463e: $f1
    jr jr_03c_4643                                ; $463f: $18 $02

jr_03c_4641:
    ld a, $0d                                     ; $4641: $3e $0d

jr_03c_4643:
    push af                                       ; $4643: $f5
    sub $03                                       ; $4644: $d6 $03
    bit 7, a                                      ; $4646: $cb $7f
    jr z, jr_03c_465a                             ; $4648: $28 $10

    ld a, [$d4cd]                                 ; $464a: $fa $cd $d4
    cp $00                                        ; $464d: $fe $00
    jr z, jr_03c_465a                             ; $464f: $28 $09

    cp $0e                                        ; $4651: $fe $0e
    jr z, jr_03c_465a                             ; $4653: $28 $05

    pop af                                        ; $4655: $f1
    ld a, $03                                     ; $4656: $3e $03
    jr jr_03c_465b                                ; $4658: $18 $01

jr_03c_465a:
    pop af                                        ; $465a: $f1

jr_03c_465b:
    pop bc                                        ; $465b: $c1
    pop de                                        ; $465c: $d1
    pop hl                                        ; $465d: $e1
    ret                                           ; $465e: $c9


Call_03c_465f:
    push bc                                       ; $465f: $c5
    push de                                       ; $4660: $d5
    push hl                                       ; $4661: $e5
    cp $00                                        ; $4662: $fe $00
    jr z, jr_03c_467f                             ; $4664: $28 $19

    cp $01                                        ; $4666: $fe $01
    jr z, jr_03c_467f                             ; $4668: $28 $15

    cp $02                                        ; $466a: $fe $02
    jr z, jr_03c_467f                             ; $466c: $28 $11

    cp $0b                                        ; $466e: $fe $0b
    jr z, jr_03c_468e                             ; $4670: $28 $1c

    cp $0c                                        ; $4672: $fe $0c
    jr z, jr_03c_468e                             ; $4674: $28 $18

    ld a, [$d4cd]                                 ; $4676: $fa $cd $d4
    cp $04                                        ; $4679: $fe $04
    jr z, jr_03c_468a                             ; $467b: $28 $0d

    jr jr_03c_468e                                ; $467d: $18 $0f

jr_03c_467f:
    ld a, [$d4cd]                                 ; $467f: $fa $cd $d4
    cp $00                                        ; $4682: $fe $00
    jr z, jr_03c_468e                             ; $4684: $28 $08

    cp $0e                                        ; $4686: $fe $0e
    jr z, jr_03c_468e                             ; $4688: $28 $04

jr_03c_468a:
    ld a, $01                                     ; $468a: $3e $01
    jr jr_03c_468f                                ; $468c: $18 $01

jr_03c_468e:
    xor a                                         ; $468e: $af

jr_03c_468f:
    pop hl                                        ; $468f: $e1
    pop de                                        ; $4690: $d1
    pop bc                                        ; $4691: $c1
    ret                                           ; $4692: $c9


Call_03c_4693:
    push af                                       ; $4693: $f5
    push bc                                       ; $4694: $c5
    push de                                       ; $4695: $d5
    push hl                                       ; $4696: $e5
    ld a, c                                       ; $4697: $79
    ld [$d526], a                                 ; $4698: $ea $26 $d5
    ld a, b                                       ; $469b: $78
    ld [$d527], a                                 ; $469c: $ea $27 $d5
    rst $18                                       ; $469f: $df
    inc b                                         ; $46a0: $04
    db $10                                        ; $46a1: $10
    ld a, l                                       ; $46a2: $7d
    ld [$d528], a                                 ; $46a3: $ea $28 $d5
    ld a, h                                       ; $46a6: $7c
    ld [$d529], a                                 ; $46a7: $ea $29 $d5
    push hl                                       ; $46aa: $e5
    pop de                                        ; $46ab: $d1
    ld bc, $0c80                                  ; $46ac: $01 $80 $0c
    call Call_03c_4404                            ; $46af: $cd $04 $44
    cp $02                                        ; $46b2: $fe $02
    jr nz, jr_03c_46bd                            ; $46b4: $20 $07

    call Call_03c_4a33                            ; $46b6: $cd $33 $4a
    cp $01                                        ; $46b9: $fe $01
    jr z, jr_03c_4733                             ; $46bb: $28 $76

jr_03c_46bd:
    push hl                                       ; $46bd: $e5
    pop de                                        ; $46be: $d1
    ld a, [$d526]                                 ; $46bf: $fa $26 $d5
    ld c, a                                       ; $46c2: $4f
    ld a, [$d527]                                 ; $46c3: $fa $27 $d5
    ld b, a                                       ; $46c6: $47
    call Call_03c_4404                            ; $46c7: $cd $04 $44
    cp $02                                        ; $46ca: $fe $02
    jr z, jr_03c_4733                             ; $46cc: $28 $65

    ld a, [$d325]                                 ; $46ce: $fa $25 $d3
    cp $03                                        ; $46d1: $fe $03
    jr z, jr_03c_4718                             ; $46d3: $28 $43

    ld a, [$d549]                                 ; $46d5: $fa $49 $d5
    ld b, a                                       ; $46d8: $47
    ld a, [$d325]                                 ; $46d9: $fa $25 $d3
    add b                                         ; $46dc: $80
    dec a                                         ; $46dd: $3d
    dec a                                         ; $46de: $3d
    ld b, a                                       ; $46df: $47
    ld a, $20                                     ; $46e0: $3e $20
    call $4256                                    ; $46e2: $cd $56 $42
    ld a, [hl]                                    ; $46e5: $7e
    inc a                                         ; $46e6: $3c
    ld c, a                                       ; $46e7: $4f
    ld a, b                                       ; $46e8: $78
    sub c                                         ; $46e9: $91
    bit 7, a                                      ; $46ea: $cb $7f
    jr nz, jr_03c_4718                            ; $46ec: $20 $2a

    cp $00                                        ; $46ee: $fe $00
    jr z, jr_03c_4718                             ; $46f0: $28 $26

    ld a, [$d43d]                                 ; $46f2: $fa $3d $d4
    ld [$d545], a                                 ; $46f5: $ea $45 $d5
    ld a, [$d43e]                                 ; $46f8: $fa $3e $d4
    ld [$d546], a                                 ; $46fb: $ea $46 $d5
    ld a, [$d43f]                                 ; $46fe: $fa $3f $d4
    ld [$d547], a                                 ; $4701: $ea $47 $d5
    ld a, [$d440]                                 ; $4704: $fa $40 $d4
    ld [$d548], a                                 ; $4707: $ea $48 $d5
    ld a, [$d526]                                 ; $470a: $fa $26 $d5
    ld c, a                                       ; $470d: $4f
    ld a, [$d527]                                 ; $470e: $fa $27 $d5
    ld b, a                                       ; $4711: $47
    call Call_03c_48d5                            ; $4712: $cd $d5 $48
    jp Jump_03c_48d0                              ; $4715: $c3 $d0 $48


jr_03c_4718:
    ld a, [$d43d]                                 ; $4718: $fa $3d $d4
    ld [$d545], a                                 ; $471b: $ea $45 $d5
    ld a, [$d43e]                                 ; $471e: $fa $3e $d4
    ld [$d546], a                                 ; $4721: $ea $46 $d5
    ld a, [$d43f]                                 ; $4724: $fa $3f $d4
    ld [$d547], a                                 ; $4727: $ea $47 $d5
    ld a, [$d440]                                 ; $472a: $fa $40 $d4
    ld [$d548], a                                 ; $472d: $ea $48 $d5
    jp Jump_03c_48d0                              ; $4730: $c3 $d0 $48


jr_03c_4733:
    ld a, $02                                     ; $4733: $3e $02
    ld [$d525], a                                 ; $4735: $ea $25 $d5
    ld a, $ff                                     ; $4738: $3e $ff
    ld [$d52e], a                                 ; $473a: $ea $2e $d5

Jump_03c_473d:
    ld a, [$d525]                                 ; $473d: $fa $25 $d5
    cp $ff                                        ; $4740: $fe $ff
    jp z, Jump_03c_47bd                           ; $4742: $ca $bd $47

    ld c, a                                       ; $4745: $4f
    push hl                                       ; $4746: $e5
    ld a, $10                                     ; $4747: $3e $10
    call $4256                                    ; $4749: $cd $56 $42
    ld a, [hl]                                    ; $474c: $7e
    pop hl                                        ; $474d: $e1
    ld b, a                                       ; $474e: $47
    rst $18                                       ; $474f: $df
    nop                                           ; $4750: $00
    dec a                                         ; $4751: $3d
    push de                                       ; $4752: $d5
    ld a, $ff                                     ; $4753: $3e $ff
    ld d, a                                       ; $4755: $57
    ld a, $e0                                     ; $4756: $3e $e0
    ld e, a                                       ; $4758: $5f
    call Call_03c_4404                            ; $4759: $cd $04 $44
    pop de                                        ; $475c: $d1
    cp $00                                        ; $475d: $fe $00
    jr z, jr_03c_47b3                             ; $475f: $28 $52

    call Call_03c_4466                            ; $4761: $cd $66 $44
    push bc                                       ; $4764: $c5
    push de                                       ; $4765: $d5
    push hl                                       ; $4766: $e5
    pop de                                        ; $4767: $d1
    ld a, [$d526]                                 ; $4768: $fa $26 $d5
    ld c, a                                       ; $476b: $4f
    ld a, [$d527]                                 ; $476c: $fa $27 $d5
    ld b, a                                       ; $476f: $47
    call Call_03c_4404                            ; $4770: $cd $04 $44
    pop de                                        ; $4773: $d1
    pop bc                                        ; $4774: $c1
    cp $02                                        ; $4775: $fe $02
    jr z, jr_03c_47b3                             ; $4777: $28 $3a

    push bc                                       ; $4779: $c5
    push de                                       ; $477a: $d5
    call Call_03c_4466                            ; $477b: $cd $66 $44
    push hl                                       ; $477e: $e5
    pop de                                        ; $477f: $d1
    ld a, [$d526]                                 ; $4780: $fa $26 $d5
    ld c, a                                       ; $4783: $4f
    ld a, [$d527]                                 ; $4784: $fa $27 $d5
    ld b, a                                       ; $4787: $47
    sra b                                         ; $4788: $cb $28
    rr c                                          ; $478a: $cb $19
    call Call_03c_4404                            ; $478c: $cd $04 $44
    pop de                                        ; $478f: $d1
    pop bc                                        ; $4790: $c1
    cp $01                                        ; $4791: $fe $01
    jr z, jr_03c_47b3                             ; $4793: $28 $1e

    call Call_03c_4447                            ; $4795: $cd $47 $44
    push bc                                       ; $4798: $c5
    push de                                       ; $4799: $d5
    push hl                                       ; $479a: $e5
    pop de                                        ; $479b: $d1
    ld a, [$d528]                                 ; $479c: $fa $28 $d5
    ld c, a                                       ; $479f: $4f
    ld a, [$d529]                                 ; $47a0: $fa $29 $d5
    ld b, a                                       ; $47a3: $47
    call Call_03c_4404                            ; $47a4: $cd $04 $44
    pop de                                        ; $47a7: $d1
    pop bc                                        ; $47a8: $c1
    cp $02                                        ; $47a9: $fe $02
    jr z, jr_03c_47bd                             ; $47ab: $28 $10

    ld a, [$d525]                                 ; $47ad: $fa $25 $d5
    ld [$d52e], a                                 ; $47b0: $ea $2e $d5

jr_03c_47b3:
    ld a, [$d525]                                 ; $47b3: $fa $25 $d5
    dec a                                         ; $47b6: $3d
    ld [$d525], a                                 ; $47b7: $ea $25 $d5
    jp Jump_03c_473d                              ; $47ba: $c3 $3d $47


Jump_03c_47bd:
jr_03c_47bd:
    push hl                                       ; $47bd: $e5
    ld a, $20                                     ; $47be: $3e $20
    call $4256                                    ; $47c0: $cd $56 $42
    ld a, [hl]                                    ; $47c3: $7e
    pop hl                                        ; $47c4: $e1
    cp $00                                        ; $47c5: $fe $00
    jr nz, jr_03c_47cd                            ; $47c7: $20 $04

    xor a                                         ; $47c9: $af
    ld [$d52e], a                                 ; $47ca: $ea $2e $d5

jr_03c_47cd:
    ld a, [$d52e]                                 ; $47cd: $fa $2e $d5
    cp $ff                                        ; $47d0: $fe $ff
    jr nz, jr_03c_47e2                            ; $47d2: $20 $0e

    ld a, [$d526]                                 ; $47d4: $fa $26 $d5
    ld c, a                                       ; $47d7: $4f
    ld a, [$d527]                                 ; $47d8: $fa $27 $d5
    ld b, a                                       ; $47db: $47
    call Call_03c_48d5                            ; $47dc: $cd $d5 $48
    jp Jump_03c_48d0                              ; $47df: $c3 $d0 $48


jr_03c_47e2:
    ld a, [$d52e]                                 ; $47e2: $fa $2e $d5
    ld c, a                                       ; $47e5: $4f
    push hl                                       ; $47e6: $e5
    ld a, $10                                     ; $47e7: $3e $10
    call $4256                                    ; $47e9: $cd $56 $42
    ld a, [hl]                                    ; $47ec: $7e
    pop hl                                        ; $47ed: $e1
    ld b, a                                       ; $47ee: $47
    rst $18                                       ; $47ef: $df
    nop                                           ; $47f0: $00
    dec a                                         ; $47f1: $3d
    ld a, b                                       ; $47f2: $78
    cp $ff                                        ; $47f3: $fe $ff
    jr nz, jr_03c_4808                            ; $47f5: $20 $11

    ld a, c                                       ; $47f7: $79
    cp $e0                                        ; $47f8: $fe $e0
    jr nz, jr_03c_4808                            ; $47fa: $20 $0c

    ld hl, $d43d                                  ; $47fc: $21 $3d $d4
    ld a, [hl+]                                   ; $47ff: $2a
    ld b, [hl]                                    ; $4800: $46
    ld c, a                                       ; $4801: $4f
    ld hl, $d43f                                  ; $4802: $21 $3f $d4
    ld a, [hl+]                                   ; $4805: $2a
    ld d, [hl]                                    ; $4806: $56
    ld e, a                                       ; $4807: $5f

jr_03c_4808:
    ld a, c                                       ; $4808: $79
    ld [$d545], a                                 ; $4809: $ea $45 $d5
    ld a, b                                       ; $480c: $78
    ld [$d546], a                                 ; $480d: $ea $46 $d5
    ld a, e                                       ; $4810: $7b
    ld [$d547], a                                 ; $4811: $ea $47 $d5
    ld a, d                                       ; $4814: $7a
    ld [$d548], a                                 ; $4815: $ea $48 $d5
    ld a, c                                       ; $4818: $79
    ld [$d52a], a                                 ; $4819: $ea $2a $d5
    ld a, b                                       ; $481c: $78
    ld [$d52b], a                                 ; $481d: $ea $2b $d5
    ld a, e                                       ; $4820: $7b
    ld [$d52c], a                                 ; $4821: $ea $2c $d5
    ld a, d                                       ; $4824: $7a
    ld [$d52d], a                                 ; $4825: $ea $2d $d5
    call Call_03c_4a11                            ; $4828: $cd $11 $4a
    cp $01                                        ; $482b: $fe $01
    jp z, Jump_03c_48d0                           ; $482d: $ca $d0 $48

    ld a, [$d52e]                                 ; $4830: $fa $2e $d5
    inc a                                         ; $4833: $3c
    ld c, a                                       ; $4834: $4f
    push hl                                       ; $4835: $e5
    ld a, $10                                     ; $4836: $3e $10
    call $4256                                    ; $4838: $cd $56 $42
    ld a, [hl]                                    ; $483b: $7e
    pop hl                                        ; $483c: $e1
    ld b, a                                       ; $483d: $47
    rst $18                                       ; $483e: $df
    nop                                           ; $483f: $00
    dec a                                         ; $4840: $3d
    ld a, b                                       ; $4841: $78
    cp $ff                                        ; $4842: $fe $ff
    jr nz, jr_03c_485e                            ; $4844: $20 $18

    ld a, c                                       ; $4846: $79
    cp $e0                                        ; $4847: $fe $e0
    jr nz, jr_03c_485e                            ; $4849: $20 $13

    call Call_03c_4a33                            ; $484b: $cd $33 $4a
    cp $01                                        ; $484e: $fe $01
    jr z, jr_03c_48d0                             ; $4850: $28 $7e

    ld hl, $d43d                                  ; $4852: $21 $3d $d4
    ld a, [hl+]                                   ; $4855: $2a
    ld b, [hl]                                    ; $4856: $46
    ld c, a                                       ; $4857: $4f
    ld hl, $d43f                                  ; $4858: $21 $3f $d4
    ld a, [hl+]                                   ; $485b: $2a
    ld d, [hl]                                    ; $485c: $56
    ld e, a                                       ; $485d: $5f

jr_03c_485e:
    call Call_03c_44de                            ; $485e: $cd $de $44
    push bc                                       ; $4861: $c5
    ld a, [$d545]                                 ; $4862: $fa $45 $d5
    ld c, a                                       ; $4865: $4f
    ld a, [$d546]                                 ; $4866: $fa $46 $d5
    ld b, a                                       ; $4869: $47
    ld a, [$d547]                                 ; $486a: $fa $47 $d5
    ld e, a                                       ; $486d: $5f
    ld a, [$d548]                                 ; $486e: $fa $48 $d5
    ld d, a                                       ; $4871: $57
    call Call_03c_4466                            ; $4872: $cd $66 $44
    push hl                                       ; $4875: $e5
    pop de                                        ; $4876: $d1
    ld a, [$d526]                                 ; $4877: $fa $26 $d5
    ld l, a                                       ; $487a: $6f
    ld a, [$d527]                                 ; $487b: $fa $27 $d5
    ld h, a                                       ; $487e: $67
    call Call_000_08ac                            ; $487f: $cd $ac $08
    bit 7, h                                      ; $4882: $cb $7c
    pop bc                                        ; $4884: $c1
    jr nz, jr_03c_48d0                            ; $4885: $20 $49

    call Call_000_11ba                            ; $4887: $cd $ba $11
    ld a, [$d545]                                 ; $488a: $fa $45 $d5
    ld c, a                                       ; $488d: $4f
    ld a, [$d546]                                 ; $488e: $fa $46 $d5
    ld b, a                                       ; $4891: $47
    add hl, bc                                    ; $4892: $09
    ld a, l                                       ; $4893: $7d
    ld [$d545], a                                 ; $4894: $ea $45 $d5
    ld a, h                                       ; $4897: $7c
    ld [$d546], a                                 ; $4898: $ea $46 $d5
    ld a, [$d547]                                 ; $489b: $fa $47 $d5
    ld c, a                                       ; $489e: $4f
    ld a, [$d548]                                 ; $489f: $fa $48 $d5
    ld b, a                                       ; $48a2: $47
    push de                                       ; $48a3: $d5
    pop hl                                        ; $48a4: $e1
    add hl, bc                                    ; $48a5: $09
    ld a, l                                       ; $48a6: $7d
    ld [$d547], a                                 ; $48a7: $ea $47 $d5
    ld a, h                                       ; $48aa: $7c
    ld [$d548], a                                 ; $48ab: $ea $48 $d5
    jr jr_03c_48d0                                ; $48ae: $18 $20

    ld a, [$d52a]                                 ; $48b0: $fa $2a $d5
    ld c, a                                       ; $48b3: $4f
    ld a, [$d52b]                                 ; $48b4: $fa $2b $d5
    ld b, a                                       ; $48b7: $47
    ld a, [$d52c]                                 ; $48b8: $fa $2c $d5
    ld e, a                                       ; $48bb: $5f
    ld a, [$d52d]                                 ; $48bc: $fa $2d $d5
    ld d, a                                       ; $48bf: $57
    ld a, c                                       ; $48c0: $79
    ld [$d545], a                                 ; $48c1: $ea $45 $d5
    ld a, b                                       ; $48c4: $78
    ld [$d546], a                                 ; $48c5: $ea $46 $d5
    ld a, e                                       ; $48c8: $7b
    ld [$d547], a                                 ; $48c9: $ea $47 $d5
    ld a, d                                       ; $48cc: $7a
    ld [$d548], a                                 ; $48cd: $ea $48 $d5

Jump_03c_48d0:
jr_03c_48d0:
    pop hl                                        ; $48d0: $e1
    pop de                                        ; $48d1: $d1
    pop bc                                        ; $48d2: $c1
    pop af                                        ; $48d3: $f1
    ret                                           ; $48d4: $c9


Call_03c_48d5:
    push af                                       ; $48d5: $f5
    push bc                                       ; $48d6: $c5
    push de                                       ; $48d7: $d5
    push hl                                       ; $48d8: $e5
    ld hl, $d527                                  ; $48d9: $21 $27 $d5
    xor a                                         ; $48dc: $af
    ld [hl], a                                    ; $48dd: $77
    ld a, c                                       ; $48de: $79
    ld [$d525], a                                 ; $48df: $ea $25 $d5
    ld a, b                                       ; $48e2: $78
    ld [$d526], a                                 ; $48e3: $ea $26 $d5

Jump_03c_48e6:
    rst $18                                       ; $48e6: $df
    ld [$1110], sp                                ; $48e7: $08 $10 $11
    stop                                          ; $48ea: $10 $00

Jump_03c_48ec:
    push bc                                       ; $48ec: $c5
    push de                                       ; $48ed: $d5
    ld a, [$d525]                                 ; $48ee: $fa $25 $d5
    ld l, a                                       ; $48f1: $6f
    ld a, [$d526]                                 ; $48f2: $fa $26 $d5
    ld h, a                                       ; $48f5: $67
    call Call_000_11ba                            ; $48f6: $cd $ba $11
    push hl                                       ; $48f9: $e5
    ld hl, $d404                                  ; $48fa: $21 $04 $d4
    ld a, [hl+]                                   ; $48fd: $2a
    ld h, [hl]                                    ; $48fe: $66
    ld l, a                                       ; $48ff: $6f
    add hl, de                                    ; $4900: $19
    pop de                                        ; $4901: $d1
    push hl                                       ; $4902: $e5
    ld hl, $d401                                  ; $4903: $21 $01 $d4
    ld a, [hl+]                                   ; $4906: $2a
    ld h, [hl]                                    ; $4907: $66
    ld l, a                                       ; $4908: $6f
    add hl, de                                    ; $4909: $19
    pop de                                        ; $490a: $d1
    call Call_03c_45d5                            ; $490b: $cd $d5 $45
    pop de                                        ; $490e: $d1
    pop bc                                        ; $490f: $c1
    cp $00                                        ; $4910: $fe $00
    jr z, jr_03c_4923                             ; $4912: $28 $0f

    cp $06                                        ; $4914: $fe $06
    jr z, jr_03c_4923                             ; $4916: $28 $0b

    cp $0a                                        ; $4918: $fe $0a
    jr z, jr_03c_4923                             ; $491a: $28 $07

    cp $0e                                        ; $491c: $fe $0e
    jr z, jr_03c_4923                             ; $491e: $28 $03

    jp Jump_03c_4952                              ; $4920: $c3 $52 $49


jr_03c_4923:
    ld a, [$d525]                                 ; $4923: $fa $25 $d5
    ld l, a                                       ; $4926: $6f
    ld a, [$d526]                                 ; $4927: $fa $26 $d5
    ld h, a                                       ; $492a: $67
    call Call_000_11ba                            ; $492b: $cd $ba $11
    push hl                                       ; $492e: $e5
    ld hl, $d404                                  ; $492f: $21 $04 $d4
    ld a, [hl+]                                   ; $4932: $2a
    ld h, [hl]                                    ; $4933: $66
    ld l, a                                       ; $4934: $6f
    add hl, de                                    ; $4935: $19
    pop de                                        ; $4936: $d1
    push hl                                       ; $4937: $e5
    ld hl, $d401                                  ; $4938: $21 $01 $d4
    ld a, [hl+]                                   ; $493b: $2a
    ld h, [hl]                                    ; $493c: $66
    ld l, a                                       ; $493d: $6f
    add hl, de                                    ; $493e: $19
    pop de                                        ; $493f: $d1
    ld a, l                                       ; $4940: $7d
    ld [$d545], a                                 ; $4941: $ea $45 $d5
    ld a, h                                       ; $4944: $7c
    ld [$d546], a                                 ; $4945: $ea $46 $d5
    ld a, e                                       ; $4948: $7b
    ld [$d547], a                                 ; $4949: $ea $47 $d5
    ld a, d                                       ; $494c: $7a
    ld [$d548], a                                 ; $494d: $ea $48 $d5
    jr jr_03c_499a                                ; $4950: $18 $48

Jump_03c_4952:
    call Call_03c_499f                            ; $4952: $cd $9f $49
    dec e                                         ; $4955: $1d
    jp nz, Jump_03c_48ec                          ; $4956: $c2 $ec $48

    ld hl, $d527                                  ; $4959: $21 $27 $d5
    ld a, [hl]                                    ; $495c: $7e
    cp $02                                        ; $495d: $fe $02
    jr z, jr_03c_4982                             ; $495f: $28 $21

    inc a                                         ; $4961: $3c
    ld [hl], a                                    ; $4962: $77
    ld a, [$d525]                                 ; $4963: $fa $25 $d5
    ld l, a                                       ; $4966: $6f
    ld a, [$d526]                                 ; $4967: $fa $26 $d5
    ld h, a                                       ; $496a: $67
    sra h                                         ; $496b: $cb $2c
    rr l                                          ; $496d: $cb $1d
    sra h                                         ; $496f: $cb $2c
    rr l                                          ; $4971: $cb $1d
    push hl                                       ; $4973: $e5
    pop de                                        ; $4974: $d1
    add hl, hl                                    ; $4975: $29
    add hl, de                                    ; $4976: $19
    ld a, l                                       ; $4977: $7d
    ld [$d525], a                                 ; $4978: $ea $25 $d5
    ld a, h                                       ; $497b: $7c
    ld [$d526], a                                 ; $497c: $ea $26 $d5
    jp Jump_03c_48e6                              ; $497f: $c3 $e6 $48


jr_03c_4982:
    ld a, [$d43d]                                 ; $4982: $fa $3d $d4
    ld [$d545], a                                 ; $4985: $ea $45 $d5
    ld a, [$d43e]                                 ; $4988: $fa $3e $d4
    ld [$d546], a                                 ; $498b: $ea $46 $d5
    ld a, [$d43f]                                 ; $498e: $fa $3f $d4
    ld [$d547], a                                 ; $4991: $ea $47 $d5
    ld a, [$d440]                                 ; $4994: $fa $40 $d4
    ld [$d548], a                                 ; $4997: $ea $48 $d5

jr_03c_499a:
    pop hl                                        ; $499a: $e1
    pop de                                        ; $499b: $d1
    pop bc                                        ; $499c: $c1
    pop af                                        ; $499d: $f1
    ret                                           ; $499e: $c9


Call_03c_499f:
    push hl                                       ; $499f: $e5
    ld hl, $49b3                                  ; $49a0: $21 $b3 $49
    ld a, d                                       ; $49a3: $7a
    add a                                         ; $49a4: $87
    add l                                         ; $49a5: $85
    ld l, a                                       ; $49a6: $6f
    jr nc, jr_03c_49aa                            ; $49a7: $30 $01

    inc h                                         ; $49a9: $24

jr_03c_49aa:
    ld a, [hl+]                                   ; $49aa: $2a
    ld h, [hl]                                    ; $49ab: $66
    ld l, a                                       ; $49ac: $6f
    add hl, bc                                    ; $49ad: $09
    ld b, h                                       ; $49ae: $44
    ld c, l                                       ; $49af: $4d
    inc d                                         ; $49b0: $14
    pop hl                                        ; $49b1: $e1
    ret                                           ; $49b2: $c9


    inc e                                         ; $49b3: $1c
    rlca                                          ; $49b4: $07
    ret z                                         ; $49b5: $c8

    pop af                                        ; $49b6: $f1
    ld d, h                                       ; $49b7: $54
    dec d                                         ; $49b8: $15
    sub b                                         ; $49b9: $90
    db $e3                                        ; $49ba: $e3
    adc h                                         ; $49bb: $8c
    inc hl                                        ; $49bc: $23
    ld e, b                                       ; $49bd: $58
    push de                                       ; $49be: $d5
    call nz, Call_000_2031                        ; $49bf: $c4 $31 $20
    rst $00                                       ; $49c2: $c7
    db $fc                                        ; $49c3: $fc
    ccf                                           ; $49c4: $3f
    add sp, -$48                                  ; $49c5: $e8 $b8
    inc [hl]                                      ; $49c7: $34
    ld c, [hl]                                    ; $49c8: $4e
    or b                                          ; $49c9: $b0
    xor d                                         ; $49ca: $aa
    ld l, h                                       ; $49cb: $6c
    ld e, h                                       ; $49cc: $5c
    ld a, b                                       ; $49cd: $78
    sbc h                                         ; $49ce: $9c
    and h                                         ; $49cf: $a4
    ld l, d                                       ; $49d0: $6a
    ld b, b                                       ; $49d1: $40

jr_03c_49d2:
    adc [hl]                                      ; $49d2: $8e
    ld hl, sp+$7f                                 ; $49d3: $f8 $7f
    ld [$e580], sp                                ; $49d5: $08 $80 $e5
    ld hl, $49eb                                  ; $49d8: $21 $eb $49
    ld a, d                                       ; $49db: $7a
    add a                                         ; $49dc: $87
    add l                                         ; $49dd: $85
    ld l, a                                       ; $49de: $6f
    jr nc, jr_03c_49e2                            ; $49df: $30 $01

    inc h                                         ; $49e1: $24

jr_03c_49e2:
    ld a, [hl+]                                   ; $49e2: $2a
    ld h, [hl]                                    ; $49e3: $66
    ld l, a                                       ; $49e4: $6f
    add hl, bc                                    ; $49e5: $09
    ld b, h                                       ; $49e6: $44
    ld c, l                                       ; $49e7: $4d
    inc d                                         ; $49e8: $14
    pop hl                                        ; $49e9: $e1
    ret                                           ; $49ea: $c9


    adc [hl]                                      ; $49eb: $8e
    inc bc                                        ; $49ec: $03
    db $e4                                        ; $49ed: $e4
    ld hl, sp-$56                                 ; $49ee: $f8 $aa
    ld a, [bc]                                    ; $49f0: $0a
    ret z                                         ; $49f1: $c8

    pop af                                        ; $49f2: $f1
    add $11                                       ; $49f3: $c6 $11
    xor h                                         ; $49f5: $ac
    ld [$18e2], a                                 ; $49f6: $ea $e2 $18
    sub b                                         ; $49f9: $90
    db $e3                                        ; $49fa: $e3
    cp $1f                                        ; $49fb: $fe $1f
    ld [hl], h                                    ; $49fd: $74
    call c, Call_000_271a                         ; $49fe: $dc $1a $27
    ld e, b                                       ; $4a01: $58
    push de                                       ; $4a02: $d5
    ld [hl], $2e                                  ; $4a03: $36 $2e
    inc a                                         ; $4a05: $3c
    adc $52                                       ; $4a06: $ce $52
    dec [hl]                                      ; $4a08: $35
    jr nz, jr_03c_49d2                            ; $4a09: $20 $c7

    db $fc                                        ; $4a0b: $fc
    ccf                                           ; $4a0c: $3f
    inc b                                         ; $4a0d: $04
    ret nz                                        ; $4a0e: $c0

    ld b, c                                       ; $4a0f: $41
    rst $38                                       ; $4a10: $ff

Call_03c_4a11:
    push bc                                       ; $4a11: $c5
    push de                                       ; $4a12: $d5
    push hl                                       ; $4a13: $e5
    ld hl, $4a0f                                  ; $4a14: $21 $0f $4a

jr_03c_4a17:
    ld a, [hl]                                    ; $4a17: $7e
    cp $ff                                        ; $4a18: $fe $ff
    jr z, jr_03c_4a26                             ; $4a1a: $28 $0a

    ld b, a                                       ; $4a1c: $47
    ld a, [$d320]                                 ; $4a1d: $fa $20 $d3
    cp b                                          ; $4a20: $b8
    jr z, jr_03c_4a29                             ; $4a21: $28 $06

    inc hl                                        ; $4a23: $23
    jr jr_03c_4a17                                ; $4a24: $18 $f1

jr_03c_4a26:
    xor a                                         ; $4a26: $af
    jr jr_03c_4a2b                                ; $4a27: $18 $02

jr_03c_4a29:
    ld a, $01                                     ; $4a29: $3e $01

jr_03c_4a2b:
    pop hl                                        ; $4a2b: $e1
    pop de                                        ; $4a2c: $d1
    pop bc                                        ; $4a2d: $c1
    ret                                           ; $4a2e: $c9


    rla                                           ; $4a2f: $17
    ld a, [hl-]                                   ; $4a30: $3a
    ld b, [hl]                                    ; $4a31: $46
    rst $38                                       ; $4a32: $ff

Call_03c_4a33:
    push bc                                       ; $4a33: $c5
    push de                                       ; $4a34: $d5
    push hl                                       ; $4a35: $e5
    ld hl, $4a2f                                  ; $4a36: $21 $2f $4a

jr_03c_4a39:
    ld a, [hl]                                    ; $4a39: $7e
    cp $ff                                        ; $4a3a: $fe $ff
    jr z, jr_03c_4a48                             ; $4a3c: $28 $0a

    ld b, a                                       ; $4a3e: $47
    ld a, [$d320]                                 ; $4a3f: $fa $20 $d3
    cp b                                          ; $4a42: $b8
    jr z, jr_03c_4a4b                             ; $4a43: $28 $06

    inc hl                                        ; $4a45: $23
    jr jr_03c_4a39                                ; $4a46: $18 $f1

jr_03c_4a48:
    xor a                                         ; $4a48: $af
    jr jr_03c_4a4d                                ; $4a49: $18 $02

jr_03c_4a4b:
    ld a, $01                                     ; $4a4b: $3e $01

jr_03c_4a4d:
    pop hl                                        ; $4a4d: $e1
    pop de                                        ; $4a4e: $d1
    pop bc                                        ; $4a4f: $c1
    ret                                           ; $4a50: $c9


Call_03c_4a51:
    push af                                       ; $4a51: $f5
    push bc                                       ; $4a52: $c5
    push de                                       ; $4a53: $d5
    push hl                                       ; $4a54: $e5
    ld hl, $d527                                  ; $4a55: $21 $27 $d5
    xor a                                         ; $4a58: $af
    ld [hl], a                                    ; $4a59: $77
    ld a, c                                       ; $4a5a: $79
    ld [$d525], a                                 ; $4a5b: $ea $25 $d5
    ld a, b                                       ; $4a5e: $78
    ld [$d526], a                                 ; $4a5f: $ea $26 $d5

Jump_03c_4a62:
    rst $18                                       ; $4a62: $df
    ld [$1110], sp                                ; $4a63: $08 $10 $11
    stop                                          ; $4a66: $10 $00

Jump_03c_4a68:
    push bc                                       ; $4a68: $c5
    push de                                       ; $4a69: $d5
    ld a, [$d525]                                 ; $4a6a: $fa $25 $d5
    ld l, a                                       ; $4a6d: $6f
    ld a, [$d526]                                 ; $4a6e: $fa $26 $d5
    ld h, a                                       ; $4a71: $67
    call Call_000_11ba                            ; $4a72: $cd $ba $11
    push hl                                       ; $4a75: $e5
    ld hl, $d404                                  ; $4a76: $21 $04 $d4
    ld a, [hl+]                                   ; $4a79: $2a
    ld h, [hl]                                    ; $4a7a: $66
    ld l, a                                       ; $4a7b: $6f
    add hl, de                                    ; $4a7c: $19
    pop de                                        ; $4a7d: $d1
    push hl                                       ; $4a7e: $e5
    ld hl, $d401                                  ; $4a7f: $21 $01 $d4
    ld a, [hl+]                                   ; $4a82: $2a
    ld h, [hl]                                    ; $4a83: $66
    ld l, a                                       ; $4a84: $6f
    add hl, de                                    ; $4a85: $19
    pop de                                        ; $4a86: $d1
    call Call_03c_45d5                            ; $4a87: $cd $d5 $45
    pop de                                        ; $4a8a: $d1
    pop bc                                        ; $4a8b: $c1
    cp $00                                        ; $4a8c: $fe $00
    jr z, jr_03c_4a97                             ; $4a8e: $28 $07

    cp $0e                                        ; $4a90: $fe $0e
    jr z, jr_03c_4a97                             ; $4a92: $28 $03

    jp Jump_03c_4acd                              ; $4a94: $c3 $cd $4a


jr_03c_4a97:
    ld a, [$d525]                                 ; $4a97: $fa $25 $d5
    ld l, a                                       ; $4a9a: $6f
    ld a, [$d526]                                 ; $4a9b: $fa $26 $d5
    ld h, a                                       ; $4a9e: $67
    call Call_000_11ba                            ; $4a9f: $cd $ba $11
    push hl                                       ; $4aa2: $e5
    ld hl, $d404                                  ; $4aa3: $21 $04 $d4
    ld a, [hl+]                                   ; $4aa6: $2a
    ld h, [hl]                                    ; $4aa7: $66
    ld l, a                                       ; $4aa8: $6f
    add hl, de                                    ; $4aa9: $19
    pop de                                        ; $4aaa: $d1
    push hl                                       ; $4aab: $e5
    ld hl, $d401                                  ; $4aac: $21 $01 $d4
    ld a, [hl+]                                   ; $4aaf: $2a
    ld h, [hl]                                    ; $4ab0: $66
    ld l, a                                       ; $4ab1: $6f
    add hl, de                                    ; $4ab2: $19
    pop de                                        ; $4ab3: $d1
    call Call_03c_4e74                            ; $4ab4: $cd $74 $4e
    cp $01                                        ; $4ab7: $fe $01
    jr z, jr_03c_4acd                             ; $4ab9: $28 $12

    ld a, l                                       ; $4abb: $7d
    ld [$d545], a                                 ; $4abc: $ea $45 $d5
    ld a, h                                       ; $4abf: $7c
    ld [$d546], a                                 ; $4ac0: $ea $46 $d5
    ld a, e                                       ; $4ac3: $7b
    ld [$d547], a                                 ; $4ac4: $ea $47 $d5
    ld a, d                                       ; $4ac7: $7a
    ld [$d548], a                                 ; $4ac8: $ea $48 $d5
    jr jr_03c_4b15                                ; $4acb: $18 $48

Jump_03c_4acd:
jr_03c_4acd:
    call $49d7                                    ; $4acd: $cd $d7 $49
    dec e                                         ; $4ad0: $1d
    jp nz, Jump_03c_4a68                          ; $4ad1: $c2 $68 $4a

    ld hl, $d527                                  ; $4ad4: $21 $27 $d5
    ld a, [hl]                                    ; $4ad7: $7e
    cp $04                                        ; $4ad8: $fe $04
    jr z, jr_03c_4afd                             ; $4ada: $28 $21

    inc a                                         ; $4adc: $3c
    ld [hl], a                                    ; $4add: $77
    ld a, [$d525]                                 ; $4ade: $fa $25 $d5
    ld l, a                                       ; $4ae1: $6f
    ld a, [$d526]                                 ; $4ae2: $fa $26 $d5
    ld h, a                                       ; $4ae5: $67
    sra h                                         ; $4ae6: $cb $2c
    rr l                                          ; $4ae8: $cb $1d
    sra h                                         ; $4aea: $cb $2c
    rr l                                          ; $4aec: $cb $1d
    push hl                                       ; $4aee: $e5
    pop de                                        ; $4aef: $d1
    add hl, hl                                    ; $4af0: $29
    add hl, de                                    ; $4af1: $19
    ld a, l                                       ; $4af2: $7d
    ld [$d525], a                                 ; $4af3: $ea $25 $d5
    ld a, h                                       ; $4af6: $7c
    ld [$d526], a                                 ; $4af7: $ea $26 $d5
    jp Jump_03c_4a62                              ; $4afa: $c3 $62 $4a


jr_03c_4afd:
    ld a, [$d43d]                                 ; $4afd: $fa $3d $d4
    ld [$d545], a                                 ; $4b00: $ea $45 $d5
    ld a, [$d43e]                                 ; $4b03: $fa $3e $d4
    ld [$d546], a                                 ; $4b06: $ea $46 $d5
    ld a, [$d43f]                                 ; $4b09: $fa $3f $d4
    ld [$d547], a                                 ; $4b0c: $ea $47 $d5
    ld a, [$d440]                                 ; $4b0f: $fa $40 $d4
    ld [$d548], a                                 ; $4b12: $ea $48 $d5

jr_03c_4b15:
    pop hl                                        ; $4b15: $e1
    pop de                                        ; $4b16: $d1
    pop bc                                        ; $4b17: $c1
    pop af                                        ; $4b18: $f1
    ret                                           ; $4b19: $c9


    push de                                       ; $4b1a: $d5
    push hl                                       ; $4b1b: $e5
    push hl                                       ; $4b1c: $e5
    pop de                                        ; $4b1d: $d1
    ld hl, $d52d                                  ; $4b1e: $21 $2d $d5
    ld [hl], a                                    ; $4b21: $77
    ld hl, $d52e                                  ; $4b22: $21 $2e $d5
    ld [hl], d                                    ; $4b25: $72
    ld a, c                                       ; $4b26: $79
    ld [$d525], a                                 ; $4b27: $ea $25 $d5
    ld a, b                                       ; $4b2a: $78
    ld [$d526], a                                 ; $4b2b: $ea $26 $d5
    ld hl, $d52d                                  ; $4b2e: $21 $2d $d5
    ld a, [hl]                                    ; $4b31: $7e
    call Call_03c_453f                            ; $4b32: $cd $3f $45
    xor a                                         ; $4b35: $af
    ld d, a                                       ; $4b36: $57
    ld a, $3c                                     ; $4b37: $3e $3c
    ld e, a                                       ; $4b39: $5f
    call Call_000_09ae                            ; $4b3a: $cd $ae $09
    push hl                                       ; $4b3d: $e5
    ld hl, $d52e                                  ; $4b3e: $21 $2e $d5
    ld a, [hl]                                    ; $4b41: $7e
    pop hl                                        ; $4b42: $e1
    call Call_000_08b9                            ; $4b43: $cd $b9 $08
    ld a, l                                       ; $4b46: $7d
    ld [$d527], a                                 ; $4b47: $ea $27 $d5
    ld a, h                                       ; $4b4a: $7c
    ld [$d528], a                                 ; $4b4b: $ea $28 $d5
    xor a                                         ; $4b4e: $af
    ld de, $0020                                  ; $4b4f: $11 $20 $00
    ld a, e                                       ; $4b52: $7b
    ld [$d529], a                                 ; $4b53: $ea $29 $d5
    ld a, d                                       ; $4b56: $7a
    ld [$d52a], a                                 ; $4b57: $ea $2a $d5

jr_03c_4b5a:
    ld a, [$d527]                                 ; $4b5a: $fa $27 $d5
    ld c, a                                       ; $4b5d: $4f
    ld a, [$d528]                                 ; $4b5e: $fa $28 $d5
    ld b, a                                       ; $4b61: $47
    ld a, [$d529]                                 ; $4b62: $fa $29 $d5
    ld e, a                                       ; $4b65: $5f
    ld a, [$d52a]                                 ; $4b66: $fa $2a $d5
    ld d, a                                       ; $4b69: $57
    call Call_03c_4404                            ; $4b6a: $cd $04 $44
    cp $00                                        ; $4b6d: $fe $00
    jr z, jr_03c_4bcd                             ; $4b6f: $28 $5c

    cp $02                                        ; $4b71: $fe $02
    jr z, jr_03c_4bcd                             ; $4b73: $28 $58

    ld a, [$d525]                                 ; $4b75: $fa $25 $d5
    ld c, a                                       ; $4b78: $4f
    ld a, [$d526]                                 ; $4b79: $fa $26 $d5
    ld b, a                                       ; $4b7c: $47
    ld a, [$d529]                                 ; $4b7d: $fa $29 $d5
    ld l, a                                       ; $4b80: $6f
    ld a, [$d52a]                                 ; $4b81: $fa $2a $d5
    ld h, a                                       ; $4b84: $67
    call Call_000_11ba                            ; $4b85: $cd $ba $11
    push bc                                       ; $4b88: $c5
    push de                                       ; $4b89: $d5
    push hl                                       ; $4b8a: $e5
    ld hl, $d401                                  ; $4b8b: $21 $01 $d4
    ld a, [hl+]                                   ; $4b8e: $2a
    ld h, [hl]                                    ; $4b8f: $66
    ld l, a                                       ; $4b90: $6f
    pop de                                        ; $4b91: $d1
    add hl, de                                    ; $4b92: $19
    push hl                                       ; $4b93: $e5
    pop bc                                        ; $4b94: $c1
    ld hl, $d404                                  ; $4b95: $21 $04 $d4
    ld a, [hl+]                                   ; $4b98: $2a
    ld h, [hl]                                    ; $4b99: $66
    ld l, a                                       ; $4b9a: $6f
    pop de                                        ; $4b9b: $d1
    add hl, de                                    ; $4b9c: $19
    push hl                                       ; $4b9d: $e5
    pop de                                        ; $4b9e: $d1
    push bc                                       ; $4b9f: $c5
    pop hl                                        ; $4ba0: $e1
    pop bc                                        ; $4ba1: $c1
    call Call_03c_4de2                            ; $4ba2: $cd $e2 $4d
    cp $00                                        ; $4ba5: $fe $00
    jr z, jr_03c_4bab                             ; $4ba7: $28 $02

    jr jr_03c_4bc1                                ; $4ba9: $18 $16

jr_03c_4bab:
    ld a, [$d529]                                 ; $4bab: $fa $29 $d5
    ld l, a                                       ; $4bae: $6f
    ld a, [$d52a]                                 ; $4baf: $fa $2a $d5
    ld h, a                                       ; $4bb2: $67
    ld de, $0080                                  ; $4bb3: $11 $80 $00
    add hl, de                                    ; $4bb6: $19
    ld a, l                                       ; $4bb7: $7d
    ld [$d529], a                                 ; $4bb8: $ea $29 $d5
    ld a, h                                       ; $4bbb: $7c
    ld [$d52a], a                                 ; $4bbc: $ea $2a $d5
    jr jr_03c_4b5a                                ; $4bbf: $18 $99

jr_03c_4bc1:
    ld a, [$d529]                                 ; $4bc1: $fa $29 $d5
    ld c, a                                       ; $4bc4: $4f
    ld a, [$d52a]                                 ; $4bc5: $fa $2a $d5
    ld b, a                                       ; $4bc8: $47
    ld a, $01                                     ; $4bc9: $3e $01
    jr jr_03c_4bce                                ; $4bcb: $18 $01

jr_03c_4bcd:
    xor a                                         ; $4bcd: $af

jr_03c_4bce:
    pop hl                                        ; $4bce: $e1
    pop de                                        ; $4bcf: $d1
    ret                                           ; $4bd0: $c9


Call_03c_4bd1:
    push bc                                       ; $4bd1: $c5
    push de                                       ; $4bd2: $d5
    push hl                                       ; $4bd3: $e5
    push bc                                       ; $4bd4: $c5
    pop hl                                        ; $4bd5: $e1
    push hl                                       ; $4bd6: $e5
    push de                                       ; $4bd7: $d5
    call Call_03c_45d5                            ; $4bd8: $cd $d5 $45
    pop de                                        ; $4bdb: $d1
    pop hl                                        ; $4bdc: $e1
    cp $03                                        ; $4bdd: $fe $03
    jr z, jr_03c_4bee                             ; $4bdf: $28 $0d

    cp $05                                        ; $4be1: $fe $05
    jr z, jr_03c_4bee                             ; $4be3: $28 $09

    cp $07                                        ; $4be5: $fe $07
    jr z, jr_03c_4bee                             ; $4be7: $28 $05

    call Call_03c_4e74                            ; $4be9: $cd $74 $4e
    jr jr_03c_4bf0                                ; $4bec: $18 $02

jr_03c_4bee:
    ld a, $01                                     ; $4bee: $3e $01

jr_03c_4bf0:
    pop hl                                        ; $4bf0: $e1
    pop de                                        ; $4bf1: $d1
    pop bc                                        ; $4bf2: $c1
    ret                                           ; $4bf3: $c9


    rst $00                                       ; $4bf4: $c7
    ld bc, $fc72                                  ; $4bf5: $01 $72 $fc
    ld d, l                                       ; $4bf8: $55
    dec b                                         ; $4bf9: $05
    db $e4                                        ; $4bfa: $e4

jr_03c_4bfb:
    ld hl, sp-$1d                                 ; $4bfb: $f8 $e3
    ld [$f556], sp                                ; $4bfd: $08 $56 $f5
    ld [hl], c                                    ; $4c00: $71
    inc c                                         ; $4c01: $0c
    ret z                                         ; $4c02: $c8

    pop af                                        ; $4c03: $f1
    rst $38                                       ; $4c04: $ff
    rrca                                          ; $4c05: $0f
    ld a, [hl-]                                   ; $4c06: $3a
    xor $8d                                       ; $4c07: $ee $8d
    inc de                                        ; $4c09: $13
    xor h                                         ; $4c0a: $ac
    ld [$171b], a                                 ; $4c0b: $ea $1b $17
    ld e, $e7                                     ; $4c0e: $1e $e7
    xor c                                         ; $4c10: $a9
    ld a, [de]                                    ; $4c11: $1a
    sub b                                         ; $4c12: $90
    db $e3                                        ; $4c13: $e3
    scf                                           ; $4c14: $37
    ld e, $02                                     ; $4c15: $1e $02
    ldh [$c5], a                                  ; $4c17: $e0 $c5
    ld hl, $dc74                                  ; $4c19: $21 $74 $dc
    ld d, e                                       ; $4c1c: $53
    dec h                                         ; $4c1d: $25
    and $d8                                       ; $4c1e: $e6 $d8
    pop hl                                        ; $4c20: $e1
    jr z, jr_03c_4c7b                             ; $4c21: $28 $58

    push de                                       ; $4c23: $d5
    ld l, a                                       ; $4c24: $6f
    inc l                                         ; $4c25: $2c
    jp z, $fdd1                                   ; $4c26: $ca $d1 $fd

    cpl                                           ; $4c29: $2f
    inc a                                         ; $4c2a: $3c
    adc $8b                                       ; $4c2b: $ce $8b
    inc sp                                        ; $4c2d: $33
    xor [hl]                                      ; $4c2e: $ae
    jp z, Jump_000_3719                           ; $4c2f: $ca $19 $37

    jr nz, jr_03c_4bfb                            ; $4c32: $20 $c7

    and a                                         ; $4c34: $a7
    ld a, [hl-]                                   ; $4c35: $3a
    sub d                                         ; $4c36: $92
    jp Jump_000_3e35                              ; $4c37: $c3 $35 $3e


    inc b                                         ; $4c3a: $04
    ret nz                                        ; $4c3b: $c0

    jp Jump_03c_7641                              ; $4c3c: $c3 $41 $76


    cp h                                          ; $4c3f: $bc
    ld d, c                                       ; $4c40: $51
    ld b, l                                       ; $4c41: $45
    add sp, -$48                                  ; $4c42: $e8 $b8
    rst $18                                       ; $4c44: $df
    ld c, b                                       ; $4c45: $48
    ld e, d                                       ; $4c46: $5a
    or l                                          ; $4c47: $b5
    ld l, l                                       ; $4c48: $6d
    ld c, h                                       ; $4c49: $4c
    call z, $fbb1                                 ; $4c4a: $cc $b1 $fb
    ld c, a                                       ; $4c4d: $4f
    ld a, $ae                                     ; $4c4e: $3e $ae
    adc c                                         ; $4c50: $89
    ld d, e                                       ; $4c51: $53
    or b                                          ; $4c52: $b0
    xor d                                         ; $4c53: $aa

Call_03c_4c54:
    push bc                                       ; $4c54: $c5
    push hl                                       ; $4c55: $e5
    push hl                                       ; $4c56: $e5
    ld hl, $d552                                  ; $4c57: $21 $52 $d5
    ld [hl], a                                    ; $4c5a: $77
    pop hl                                        ; $4c5b: $e1
    ld a, h                                       ; $4c5c: $7c
    ld [$d558], a                                 ; $4c5d: $ea $58 $d5
    ld a, c                                       ; $4c60: $79
    ld [$d553], a                                 ; $4c61: $ea $53 $d5
    ld a, b                                       ; $4c64: $78
    ld [$d554], a                                 ; $4c65: $ea $54 $d5
    ld a, e                                       ; $4c68: $7b
    ld [$d556], a                                 ; $4c69: $ea $56 $d5
    ld a, d                                       ; $4c6c: $7a
    ld [$d557], a                                 ; $4c6d: $ea $57 $d5
    ld b, $30                                     ; $4c70: $06 $30
    ld hl, $4bf4                                  ; $4c72: $21 $f4 $4b

jr_03c_4c75:
    ld a, b                                       ; $4c75: $78
    cp $00                                        ; $4c76: $fe $00
    jr z, jr_03c_4cd5                             ; $4c78: $28 $5b

    push hl                                       ; $4c7a: $e5

jr_03c_4c7b:
    ld a, [hl+]                                   ; $4c7b: $2a
    ld d, [hl]                                    ; $4c7c: $56
    ld e, a                                       ; $4c7d: $5f
    pop hl                                        ; $4c7e: $e1
    push hl                                       ; $4c7f: $e5
    push bc                                       ; $4c80: $c5
    ld a, [$d556]                                 ; $4c81: $fa $56 $d5
    ld l, a                                       ; $4c84: $6f
    ld a, [$d557]                                 ; $4c85: $fa $57 $d5
    ld h, a                                       ; $4c88: $67
    add hl, de                                    ; $4c89: $19
    ld a, l                                       ; $4c8a: $7d
    ld [$d556], a                                 ; $4c8b: $ea $56 $d5
    ld a, h                                       ; $4c8e: $7c
    ld [$d557], a                                 ; $4c8f: $ea $57 $d5
    push hl                                       ; $4c92: $e5
    pop bc                                        ; $4c93: $c1
    ld a, [$d558]                                 ; $4c94: $fa $58 $d5
    ld h, a                                       ; $4c97: $67
    ld a, [$d552]                                 ; $4c98: $fa $52 $d5
    call Call_03c_4f97                            ; $4c9b: $cd $97 $4f
    cp $00                                        ; $4c9e: $fe $00
    pop bc                                        ; $4ca0: $c1
    pop hl                                        ; $4ca1: $e1
    jr nz, jr_03c_4cc3                            ; $4ca2: $20 $1f

    push hl                                       ; $4ca4: $e5
    push bc                                       ; $4ca5: $c5
    ld a, [$d556]                                 ; $4ca6: $fa $56 $d5
    ld l, a                                       ; $4ca9: $6f
    ld a, [$d557]                                 ; $4caa: $fa $57 $d5
    ld h, a                                       ; $4cad: $67
    push hl                                       ; $4cae: $e5
    pop bc                                        ; $4caf: $c1
    ld a, [$d558]                                 ; $4cb0: $fa $58 $d5
    ld h, a                                       ; $4cb3: $67
    ld a, [$d552]                                 ; $4cb4: $fa $52 $d5
    call Call_03c_4cda                            ; $4cb7: $cd $da $4c
    call Call_03c_4bd1                            ; $4cba: $cd $d1 $4b
    pop bc                                        ; $4cbd: $c1
    pop hl                                        ; $4cbe: $e1
    cp $00                                        ; $4cbf: $fe $00
    jr z, jr_03c_4cc8                             ; $4cc1: $28 $05

jr_03c_4cc3:
    inc hl                                        ; $4cc3: $23
    inc hl                                        ; $4cc4: $23
    dec b                                         ; $4cc5: $05
    jr jr_03c_4c75                                ; $4cc6: $18 $ad

jr_03c_4cc8:
    ld a, [$d556]                                 ; $4cc8: $fa $56 $d5
    ld l, a                                       ; $4ccb: $6f
    ld a, [$d557]                                 ; $4ccc: $fa $57 $d5
    ld h, a                                       ; $4ccf: $67
    push hl                                       ; $4cd0: $e5
    pop de                                        ; $4cd1: $d1
    xor a                                         ; $4cd2: $af
    jr jr_03c_4cd7                                ; $4cd3: $18 $02

jr_03c_4cd5:
    ld a, $01                                     ; $4cd5: $3e $01

jr_03c_4cd7:
    pop hl                                        ; $4cd7: $e1
    pop bc                                        ; $4cd8: $c1
    ret                                           ; $4cd9: $c9


Call_03c_4cda:
    push af                                       ; $4cda: $f5
    push hl                                       ; $4cdb: $e5
    ld e, h                                       ; $4cdc: $5c
    call Call_03c_453f                            ; $4cdd: $cd $3f $45
    push de                                       ; $4ce0: $d5
    xor a                                         ; $4ce1: $af
    ld d, a                                       ; $4ce2: $57
    ld a, $3c                                     ; $4ce3: $3e $3c
    ld e, a                                       ; $4ce5: $5f
    call Call_000_09ae                            ; $4ce6: $cd $ae $09
    pop de                                        ; $4ce9: $d1
    ld a, e                                       ; $4cea: $7b
    call Call_000_08b9                            ; $4ceb: $cd $b9 $08
    call Call_000_11ba                            ; $4cee: $cd $ba $11
    push de                                       ; $4cf1: $d5
    push hl                                       ; $4cf2: $e5
    ld hl, $d401                                  ; $4cf3: $21 $01 $d4
    ld a, [hl+]                                   ; $4cf6: $2a
    ld h, [hl]                                    ; $4cf7: $66
    ld l, a                                       ; $4cf8: $6f
    pop de                                        ; $4cf9: $d1
    add hl, de                                    ; $4cfa: $19
    push hl                                       ; $4cfb: $e5
    pop bc                                        ; $4cfc: $c1
    ld hl, $d404                                  ; $4cfd: $21 $04 $d4
    ld a, [hl+]                                   ; $4d00: $2a
    ld h, [hl]                                    ; $4d01: $66
    ld l, a                                       ; $4d02: $6f
    pop de                                        ; $4d03: $d1
    add hl, de                                    ; $4d04: $19
    push hl                                       ; $4d05: $e5
    pop de                                        ; $4d06: $d1
    pop hl                                        ; $4d07: $e1
    pop af                                        ; $4d08: $f1
    ret                                           ; $4d09: $c9


Call_03c_4d0a:
    push af                                       ; $4d0a: $f5
    push bc                                       ; $4d0b: $c5
    push de                                       ; $4d0c: $d5
    push hl                                       ; $4d0d: $e5
    pop de                                        ; $4d0e: $d1
    ld hl, $d52d                                  ; $4d0f: $21 $2d $d5
    ld [hl], a                                    ; $4d12: $77
    ld hl, $d52e                                  ; $4d13: $21 $2e $d5
    ld [hl], d                                    ; $4d16: $72
    ld a, c                                       ; $4d17: $79
    ld [$d525], a                                 ; $4d18: $ea $25 $d5
    ld a, b                                       ; $4d1b: $78
    ld [$d526], a                                 ; $4d1c: $ea $26 $d5
    ld hl, $d52d                                  ; $4d1f: $21 $2d $d5
    ld a, [hl]                                    ; $4d22: $7e
    call Call_03c_453f                            ; $4d23: $cd $3f $45
    xor a                                         ; $4d26: $af
    ld d, a                                       ; $4d27: $57
    ld a, $3c                                     ; $4d28: $3e $3c
    ld e, a                                       ; $4d2a: $5f
    call Call_000_09ae                            ; $4d2b: $cd $ae $09
    push hl                                       ; $4d2e: $e5
    ld hl, $d52e                                  ; $4d2f: $21 $2e $d5
    ld a, [hl]                                    ; $4d32: $7e
    pop hl                                        ; $4d33: $e1
    call Call_000_08b9                            ; $4d34: $cd $b9 $08
    ld a, l                                       ; $4d37: $7d
    ld [$d527], a                                 ; $4d38: $ea $27 $d5
    ld a, h                                       ; $4d3b: $7c
    ld [$d528], a                                 ; $4d3c: $ea $28 $d5
    ld a, l                                       ; $4d3f: $7d
    ld [$d529], a                                 ; $4d40: $ea $29 $d5
    ld a, h                                       ; $4d43: $7c
    ld [$d52a], a                                 ; $4d44: $ea $2a $d5

Jump_03c_4d47:
    xor a                                         ; $4d47: $af
    ld d, a                                       ; $4d48: $57
    ld e, a                                       ; $4d49: $5f
    ld a, [$d529]                                 ; $4d4a: $fa $29 $d5
    ld c, a                                       ; $4d4d: $4f
    ld a, [$d52a]                                 ; $4d4e: $fa $2a $d5
    ld b, a                                       ; $4d51: $47
    call Call_03c_4404                            ; $4d52: $cd $04 $44
    cp $00                                        ; $4d55: $fe $00
    jp z, Jump_03c_4ddb                           ; $4d57: $ca $db $4d

    cp $02                                        ; $4d5a: $fe $02
    jp z, Jump_03c_4ddb                           ; $4d5c: $ca $db $4d

    ld a, [$d525]                                 ; $4d5f: $fa $25 $d5
    ld c, a                                       ; $4d62: $4f
    ld a, [$d526]                                 ; $4d63: $fa $26 $d5
    ld b, a                                       ; $4d66: $47
    ld a, [$d529]                                 ; $4d67: $fa $29 $d5
    ld l, a                                       ; $4d6a: $6f
    ld a, [$d52a]                                 ; $4d6b: $fa $2a $d5
    ld h, a                                       ; $4d6e: $67
    call Call_000_11ba                            ; $4d6f: $cd $ba $11
    push bc                                       ; $4d72: $c5
    push de                                       ; $4d73: $d5
    push hl                                       ; $4d74: $e5
    ld hl, $d401                                  ; $4d75: $21 $01 $d4
    ld a, [hl+]                                   ; $4d78: $2a
    ld h, [hl]                                    ; $4d79: $66
    ld l, a                                       ; $4d7a: $6f
    pop de                                        ; $4d7b: $d1
    add hl, de                                    ; $4d7c: $19
    push hl                                       ; $4d7d: $e5
    pop bc                                        ; $4d7e: $c1
    ld hl, $d404                                  ; $4d7f: $21 $04 $d4
    ld a, [hl+]                                   ; $4d82: $2a
    ld h, [hl]                                    ; $4d83: $66
    ld l, a                                       ; $4d84: $6f
    pop de                                        ; $4d85: $d1
    add hl, de                                    ; $4d86: $19
    push hl                                       ; $4d87: $e5
    pop de                                        ; $4d88: $d1
    push bc                                       ; $4d89: $c5
    pop hl                                        ; $4d8a: $e1
    pop bc                                        ; $4d8b: $c1
    push hl                                       ; $4d8c: $e5
    push de                                       ; $4d8d: $d5
    call Call_03c_45d5                            ; $4d8e: $cd $d5 $45
    pop de                                        ; $4d91: $d1
    pop hl                                        ; $4d92: $e1
    cp $00                                        ; $4d93: $fe $00
    jr z, jr_03c_4dc4                             ; $4d95: $28 $2d

    cp $02                                        ; $4d97: $fe $02
    jr z, jr_03c_4dc4                             ; $4d99: $28 $29

    cp $06                                        ; $4d9b: $fe $06
    jr z, jr_03c_4dc4                             ; $4d9d: $28 $25

    cp $09                                        ; $4d9f: $fe $09
    jr z, jr_03c_4dc4                             ; $4da1: $28 $21

    cp $0a                                        ; $4da3: $fe $0a
    jr z, jr_03c_4dc4                             ; $4da5: $28 $1d

    cp $0e                                        ; $4da7: $fe $0e
    jr z, jr_03c_4dc4                             ; $4da9: $28 $19

    ld a, [$d529]                                 ; $4dab: $fa $29 $d5
    ld l, a                                       ; $4dae: $6f
    ld a, [$d52a]                                 ; $4daf: $fa $2a $d5
    ld h, a                                       ; $4db2: $67
    ld de, $0020                                  ; $4db3: $11 $20 $00
    call Call_000_08ac                            ; $4db6: $cd $ac $08
    ld a, l                                       ; $4db9: $7d
    ld [$d529], a                                 ; $4dba: $ea $29 $d5
    ld a, h                                       ; $4dbd: $7c
    ld [$d52a], a                                 ; $4dbe: $ea $2a $d5
    jp Jump_03c_4d47                              ; $4dc1: $c3 $47 $4d


jr_03c_4dc4:
    ld hl, $d52d                                  ; $4dc4: $21 $2d $d5
    ld a, [hl]                                    ; $4dc7: $7e
    call Call_03c_453f                            ; $4dc8: $cd $3f $45
    push hl                                       ; $4dcb: $e5
    pop bc                                        ; $4dcc: $c1
    ld a, [$d529]                                 ; $4dcd: $fa $29 $d5
    ld e, a                                       ; $4dd0: $5f
    ld a, [$d52a]                                 ; $4dd1: $fa $2a $d5
    ld d, a                                       ; $4dd4: $57
    call Call_03c_5021                            ; $4dd5: $cd $21 $50
    ld h, a                                       ; $4dd8: $67
    jr jr_03c_4dde                                ; $4dd9: $18 $03

Jump_03c_4ddb:
    ld a, $ff                                     ; $4ddb: $3e $ff
    ld h, a                                       ; $4ddd: $67

jr_03c_4dde:
    pop de                                        ; $4dde: $d1
    pop bc                                        ; $4ddf: $c1
    pop af                                        ; $4de0: $f1
    ret                                           ; $4de1: $c9


Call_03c_4de2:
    push bc                                       ; $4de2: $c5
    push de                                       ; $4de3: $d5
    push hl                                       ; $4de4: $e5
    ld a, [$c836]                                 ; $4de5: $fa $36 $c8
    cp $03                                        ; $4de8: $fe $03
    jr z, jr_03c_4e32                             ; $4dea: $28 $46

    cp $04                                        ; $4dec: $fe $04
    jr z, jr_03c_4e32                             ; $4dee: $28 $42

    push de                                       ; $4df0: $d5
    push hl                                       ; $4df1: $e5
    call Call_03c_45af                            ; $4df2: $cd $af $45
    pop hl                                        ; $4df5: $e1
    pop de                                        ; $4df6: $d1
    srl a                                         ; $4df7: $cb $3f
    srl a                                         ; $4df9: $cb $3f
    srl a                                         ; $4dfb: $cb $3f
    srl a                                         ; $4dfd: $cb $3f
    srl a                                         ; $4dff: $cb $3f
    srl a                                         ; $4e01: $cb $3f
    cp $00                                        ; $4e03: $fe $00
    jr z, jr_03c_4e2d                             ; $4e05: $28 $26

    cp $01                                        ; $4e07: $fe $01
    jr z, jr_03c_4e2d                             ; $4e09: $28 $22

    ld a, l                                       ; $4e0b: $7d
    sub $40                                       ; $4e0c: $d6 $40
    bit 7, a                                      ; $4e0e: $cb $7f
    jr nz, jr_03c_4e1b                            ; $4e10: $20 $09

    ld a, l                                       ; $4e12: $7d
    sub $a0                                       ; $4e13: $d6 $a0
    bit 7, a                                      ; $4e15: $cb $7f
    jr z, jr_03c_4e1b                             ; $4e17: $28 $02

    jr jr_03c_4e29                                ; $4e19: $18 $0e

jr_03c_4e1b:
    ld a, e                                       ; $4e1b: $7b
    sub $40                                       ; $4e1c: $d6 $40
    bit 7, a                                      ; $4e1e: $cb $7f
    jr nz, jr_03c_4e2d                            ; $4e20: $20 $0b

    ld a, e                                       ; $4e22: $7b
    sub $a0                                       ; $4e23: $d6 $a0
    bit 7, a                                      ; $4e25: $cb $7f
    jr z, jr_03c_4e2d                             ; $4e27: $28 $04

jr_03c_4e29:
    ld a, $01                                     ; $4e29: $3e $01
    jr jr_03c_4e2e                                ; $4e2b: $18 $01

jr_03c_4e2d:
    xor a                                         ; $4e2d: $af

jr_03c_4e2e:
    pop hl                                        ; $4e2e: $e1
    pop de                                        ; $4e2f: $d1
    pop bc                                        ; $4e30: $c1
    ret                                           ; $4e31: $c9


jr_03c_4e32:
    push de                                       ; $4e32: $d5
    push hl                                       ; $4e33: $e5
    call Call_03c_45af                            ; $4e34: $cd $af $45
    pop hl                                        ; $4e37: $e1
    pop de                                        ; $4e38: $d1
    srl a                                         ; $4e39: $cb $3f
    srl a                                         ; $4e3b: $cb $3f
    srl a                                         ; $4e3d: $cb $3f
    srl a                                         ; $4e3f: $cb $3f
    srl a                                         ; $4e41: $cb $3f
    srl a                                         ; $4e43: $cb $3f
    cp $00                                        ; $4e45: $fe $00
    jr z, jr_03c_4e6f                             ; $4e47: $28 $26

    cp $01                                        ; $4e49: $fe $01
    jr z, jr_03c_4e6f                             ; $4e4b: $28 $22

    ld a, l                                       ; $4e4d: $7d
    sub $20                                       ; $4e4e: $d6 $20
    bit 7, a                                      ; $4e50: $cb $7f
    jr nz, jr_03c_4e5d                            ; $4e52: $20 $09

    ld a, l                                       ; $4e54: $7d
    sub $c0                                       ; $4e55: $d6 $c0
    bit 7, a                                      ; $4e57: $cb $7f
    jr z, jr_03c_4e5d                             ; $4e59: $28 $02

    jr jr_03c_4e6b                                ; $4e5b: $18 $0e

jr_03c_4e5d:
    ld a, e                                       ; $4e5d: $7b
    sub $20                                       ; $4e5e: $d6 $20
    bit 7, a                                      ; $4e60: $cb $7f
    jr nz, jr_03c_4e6f                            ; $4e62: $20 $0b

    ld a, e                                       ; $4e64: $7b
    sub $c0                                       ; $4e65: $d6 $c0
    bit 7, a                                      ; $4e67: $cb $7f
    jr z, jr_03c_4e6f                             ; $4e69: $28 $04

jr_03c_4e6b:
    ld a, $01                                     ; $4e6b: $3e $01
    jr jr_03c_4e70                                ; $4e6d: $18 $01

jr_03c_4e6f:
    xor a                                         ; $4e6f: $af

jr_03c_4e70:
    pop hl                                        ; $4e70: $e1
    pop de                                        ; $4e71: $d1
    pop bc                                        ; $4e72: $c1
    ret                                           ; $4e73: $c9


Call_03c_4e74:
    push bc                                       ; $4e74: $c5
    push de                                       ; $4e75: $d5
    push hl                                       ; $4e76: $e5
    push de                                       ; $4e77: $d5
    ld de, $ff60                                  ; $4e78: $11 $60 $ff
    add hl, de                                    ; $4e7b: $19
    pop de                                        ; $4e7c: $d1
    push hl                                       ; $4e7d: $e5
    push de                                       ; $4e7e: $d5
    pop hl                                        ; $4e7f: $e1
    ld de, $ff60                                  ; $4e80: $11 $60 $ff
    add hl, de                                    ; $4e83: $19
    push hl                                       ; $4e84: $e5
    pop de                                        ; $4e85: $d1
    pop hl                                        ; $4e86: $e1
    ld a, l                                       ; $4e87: $7d
    ld [$d52f], a                                 ; $4e88: $ea $2f $d5
    ld a, h                                       ; $4e8b: $7c
    ld [$d530], a                                 ; $4e8c: $ea $30 $d5
    ld a, e                                       ; $4e8f: $7b
    ld [$d531], a                                 ; $4e90: $ea $31 $d5
    ld a, d                                       ; $4e93: $7a
    ld [$d532], a                                 ; $4e94: $ea $32 $d5
    ld de, $0140                                  ; $4e97: $11 $40 $01
    add hl, de                                    ; $4e9a: $19
    ld a, l                                       ; $4e9b: $7d
    ld [$d533], a                                 ; $4e9c: $ea $33 $d5
    ld a, h                                       ; $4e9f: $7c
    ld [$d534], a                                 ; $4ea0: $ea $34 $d5
    ld a, [$d531]                                 ; $4ea3: $fa $31 $d5
    ld l, a                                       ; $4ea6: $6f
    ld a, [$d532]                                 ; $4ea7: $fa $32 $d5
    ld h, a                                       ; $4eaa: $67
    add hl, de                                    ; $4eab: $19
    ld a, l                                       ; $4eac: $7d
    ld [$d535], a                                 ; $4ead: $ea $35 $d5
    ld a, h                                       ; $4eb0: $7c
    ld [$d536], a                                 ; $4eb1: $ea $36 $d5

jr_03c_4eb4:
    ld a, [$d535]                                 ; $4eb4: $fa $35 $d5
    ld c, a                                       ; $4eb7: $4f
    ld a, [$d536]                                 ; $4eb8: $fa $36 $d5
    ld b, a                                       ; $4ebb: $47
    ld a, [$d531]                                 ; $4ebc: $fa $31 $d5
    ld e, a                                       ; $4ebf: $5f
    ld a, [$d532]                                 ; $4ec0: $fa $32 $d5
    ld d, a                                       ; $4ec3: $57
    call Call_03c_4404                            ; $4ec4: $cd $04 $44
    cp $01                                        ; $4ec7: $fe $01
    jr nz, jr_03c_4f2b                            ; $4ec9: $20 $60

jr_03c_4ecb:
    ld a, [$d533]                                 ; $4ecb: $fa $33 $d5
    ld c, a                                       ; $4ece: $4f
    ld a, [$d534]                                 ; $4ecf: $fa $34 $d5
    ld b, a                                       ; $4ed2: $47
    ld a, [$d52f]                                 ; $4ed3: $fa $2f $d5
    ld e, a                                       ; $4ed6: $5f
    ld a, [$d530]                                 ; $4ed7: $fa $30 $d5
    ld d, a                                       ; $4eda: $57
    call Call_03c_4404                            ; $4edb: $cd $04 $44
    cp $01                                        ; $4ede: $fe $01
    jr nz, jr_03c_4f11                            ; $4ee0: $20 $2f

    push de                                       ; $4ee2: $d5
    pop hl                                        ; $4ee3: $e1
    ld a, [$d531]                                 ; $4ee4: $fa $31 $d5
    ld e, a                                       ; $4ee7: $5f
    ld a, [$d532]                                 ; $4ee8: $fa $32 $d5
    ld d, a                                       ; $4eeb: $57
    call Call_03c_45d5                            ; $4eec: $cd $d5 $45
    cp $03                                        ; $4eef: $fe $03
    jr z, jr_03c_4f27                             ; $4ef1: $28 $34

    cp $07                                        ; $4ef3: $fe $07
    jr z, jr_03c_4f27                             ; $4ef5: $28 $30

    cp $0c                                        ; $4ef7: $fe $0c
    jr z, jr_03c_4f27                             ; $4ef9: $28 $2c

    ld a, [$d52f]                                 ; $4efb: $fa $2f $d5
    ld l, a                                       ; $4efe: $6f
    ld a, [$d530]                                 ; $4eff: $fa $30 $d5
    ld h, a                                       ; $4f02: $67
    ld de, $0020                                  ; $4f03: $11 $20 $00
    add hl, de                                    ; $4f06: $19
    ld a, l                                       ; $4f07: $7d
    ld [$d52f], a                                 ; $4f08: $ea $2f $d5
    ld a, h                                       ; $4f0b: $7c
    ld [$d530], a                                 ; $4f0c: $ea $30 $d5
    jr jr_03c_4ecb                                ; $4f0f: $18 $ba

jr_03c_4f11:
    ld a, [$d531]                                 ; $4f11: $fa $31 $d5
    ld l, a                                       ; $4f14: $6f
    ld a, [$d532]                                 ; $4f15: $fa $32 $d5
    ld h, a                                       ; $4f18: $67
    ld de, $0020                                  ; $4f19: $11 $20 $00
    add hl, de                                    ; $4f1c: $19
    ld a, l                                       ; $4f1d: $7d
    ld [$d531], a                                 ; $4f1e: $ea $31 $d5
    ld a, h                                       ; $4f21: $7c
    ld [$d532], a                                 ; $4f22: $ea $32 $d5
    jr jr_03c_4eb4                                ; $4f25: $18 $8d

jr_03c_4f27:
    ld a, $01                                     ; $4f27: $3e $01
    jr jr_03c_4f2c                                ; $4f29: $18 $01

jr_03c_4f2b:
    xor a                                         ; $4f2b: $af

jr_03c_4f2c:
    pop hl                                        ; $4f2c: $e1
    pop de                                        ; $4f2d: $d1
    pop bc                                        ; $4f2e: $c1
    ret                                           ; $4f2f: $c9


Call_03c_4f30:
    push bc                                       ; $4f30: $c5
    push de                                       ; $4f31: $d5
    push hl                                       ; $4f32: $e5
    push hl                                       ; $4f33: $e5
    pop de                                        ; $4f34: $d1
    ld hl, $d52d                                  ; $4f35: $21 $2d $d5
    ld [hl], a                                    ; $4f38: $77
    ld hl, $d52e                                  ; $4f39: $21 $2e $d5
    ld [hl], d                                    ; $4f3c: $72
    ld a, c                                       ; $4f3d: $79
    ld [$d525], a                                 ; $4f3e: $ea $25 $d5
    ld a, b                                       ; $4f41: $78
    ld [$d526], a                                 ; $4f42: $ea $26 $d5
    ld hl, $d52d                                  ; $4f45: $21 $2d $d5
    ld a, [hl]                                    ; $4f48: $7e
    call Call_03c_453f                            ; $4f49: $cd $3f $45
    xor a                                         ; $4f4c: $af
    ld d, a                                       ; $4f4d: $57
    ld a, $3c                                     ; $4f4e: $3e $3c
    ld e, a                                       ; $4f50: $5f
    call Call_000_09ae                            ; $4f51: $cd $ae $09
    push hl                                       ; $4f54: $e5
    ld hl, $d52e                                  ; $4f55: $21 $2e $d5
    ld a, [hl]                                    ; $4f58: $7e
    pop hl                                        ; $4f59: $e1
    call Call_000_08b9                            ; $4f5a: $cd $b9 $08
    ld a, l                                       ; $4f5d: $7d
    ld [$d527], a                                 ; $4f5e: $ea $27 $d5
    ld a, h                                       ; $4f61: $7c
    ld [$d528], a                                 ; $4f62: $ea $28 $d5
    ld a, [$d525]                                 ; $4f65: $fa $25 $d5
    ld c, a                                       ; $4f68: $4f
    ld a, [$d526]                                 ; $4f69: $fa $26 $d5
    ld b, a                                       ; $4f6c: $47
    ld a, [$d527]                                 ; $4f6d: $fa $27 $d5
    ld l, a                                       ; $4f70: $6f
    ld a, [$d528]                                 ; $4f71: $fa $28 $d5
    ld h, a                                       ; $4f74: $67
    call Call_000_11ba                            ; $4f75: $cd $ba $11
    push de                                       ; $4f78: $d5
    push hl                                       ; $4f79: $e5
    ld hl, $d401                                  ; $4f7a: $21 $01 $d4
    ld a, [hl+]                                   ; $4f7d: $2a
    ld h, [hl]                                    ; $4f7e: $66
    ld l, a                                       ; $4f7f: $6f
    pop de                                        ; $4f80: $d1
    add hl, de                                    ; $4f81: $19
    push hl                                       ; $4f82: $e5
    pop bc                                        ; $4f83: $c1
    ld hl, $d404                                  ; $4f84: $21 $04 $d4
    ld a, [hl+]                                   ; $4f87: $2a
    ld h, [hl]                                    ; $4f88: $66
    ld l, a                                       ; $4f89: $6f
    pop de                                        ; $4f8a: $d1
    add hl, de                                    ; $4f8b: $19
    push hl                                       ; $4f8c: $e5
    pop de                                        ; $4f8d: $d1
    push bc                                       ; $4f8e: $c5
    pop hl                                        ; $4f8f: $e1
    call Call_03c_4e74                            ; $4f90: $cd $74 $4e
    pop hl                                        ; $4f93: $e1
    pop de                                        ; $4f94: $d1
    pop bc                                        ; $4f95: $c1
    ret                                           ; $4f96: $c9


Call_03c_4f97:
    push bc                                       ; $4f97: $c5
    push de                                       ; $4f98: $d5
    push hl                                       ; $4f99: $e5
    push af                                       ; $4f9a: $f5
    push bc                                       ; $4f9b: $c5
    ld hl, $d418                                  ; $4f9c: $21 $18 $d4
    ld a, [hl+]                                   ; $4f9f: $2a
    ld d, [hl]                                    ; $4fa0: $56
    ld e, a                                       ; $4fa1: $5f
    ld hl, $d598                                  ; $4fa2: $21 $98 $d5
    ld a, e                                       ; $4fa5: $7b
    ld [hl+], a                                   ; $4fa6: $22
    ld [hl], d                                    ; $4fa7: $72
    ld hl, $d41c                                  ; $4fa8: $21 $1c $d4
    ld a, [hl+]                                   ; $4fab: $2a
    ld d, [hl]                                    ; $4fac: $56
    ld e, a                                       ; $4fad: $5f
    ld hl, $d59a                                  ; $4fae: $21 $9a $d5
    ld a, e                                       ; $4fb1: $7b
    ld [hl+], a                                   ; $4fb2: $22
    ld [hl], d                                    ; $4fb3: $72
    ld a, [$d329]                                 ; $4fb4: $fa $29 $d3
    ld [$d59c], a                                 ; $4fb7: $ea $9c $d5
    rst $18                                       ; $4fba: $df
    ld d, d                                       ; $4fbb: $52
    db $10                                        ; $4fbc: $10
    pop bc                                        ; $4fbd: $c1
    pop af                                        ; $4fbe: $f1
    ld [$d329], a                                 ; $4fbf: $ea $29 $d3
    ld hl, $d418                                  ; $4fc2: $21 $18 $d4
    ld a, c                                       ; $4fc5: $79
    ld [hl+], a                                   ; $4fc6: $22
    ld [hl], b                                    ; $4fc7: $70
    xor a                                         ; $4fc8: $af
    ld [$d41c], a                                 ; $4fc9: $ea $1c $d4
    rst $18                                       ; $4fcc: $df
    ld a, $10                                     ; $4fcd: $3e $10
    ld a, $fa                                     ; $4fcf: $3e $fa
    push af                                       ; $4fd1: $f5

jr_03c_4fd2:
    pop af                                        ; $4fd2: $f1
    dec a                                         ; $4fd3: $3d
    cp $00                                        ; $4fd4: $fe $00
    jr z, jr_03c_4ff9                             ; $4fd6: $28 $21

    push af                                       ; $4fd8: $f5
    rst $18                                       ; $4fd9: $df
    ld b, b                                       ; $4fda: $40
    db $10                                        ; $4fdb: $10
    ld hl, $d37a                                  ; $4fdc: $21 $7a $d3
    ld a, [hl+]                                   ; $4fdf: $2a
    ld h, [hl]                                    ; $4fe0: $66
    ld l, a                                       ; $4fe1: $6f
    ld de, $0200                                  ; $4fe2: $11 $00 $02
    call Call_000_08ac                            ; $4fe5: $cd $ac $08
    bit 7, h                                      ; $4fe8: $cb $7c
    jr z, jr_03c_4ff8                             ; $4fea: $28 $0c

    rst $18                                       ; $4fec: $df
    ld a, [de]                                    ; $4fed: $1a
    ld [$00fe], sp                                ; $4fee: $08 $fe $00
    jr z, jr_03c_4fd2                             ; $4ff1: $28 $df

    pop af                                        ; $4ff3: $f1
    ld a, $01                                     ; $4ff4: $3e $01
    jr jr_03c_4ffa                                ; $4ff6: $18 $02

jr_03c_4ff8:
    pop af                                        ; $4ff8: $f1

jr_03c_4ff9:
    xor a                                         ; $4ff9: $af

jr_03c_4ffa:
    push af                                       ; $4ffa: $f5
    rst $18                                       ; $4ffb: $df
    ld d, h                                       ; $4ffc: $54
    db $10                                        ; $4ffd: $10
    ld a, [$d59c]                                 ; $4ffe: $fa $9c $d5
    ld [$d329], a                                 ; $5001: $ea $29 $d3
    ld hl, $d59a                                  ; $5004: $21 $9a $d5
    ld a, [hl+]                                   ; $5007: $2a
    ld d, [hl]                                    ; $5008: $56
    ld e, a                                       ; $5009: $5f
    ld hl, $d41c                                  ; $500a: $21 $1c $d4
    ld a, e                                       ; $500d: $7b
    ld [hl+], a                                   ; $500e: $22
    ld [hl], d                                    ; $500f: $72
    ld hl, $d598                                  ; $5010: $21 $98 $d5
    ld a, [hl+]                                   ; $5013: $2a
    ld d, [hl]                                    ; $5014: $56
    ld e, a                                       ; $5015: $5f
    ld hl, $d418                                  ; $5016: $21 $18 $d4
    ld a, e                                       ; $5019: $7b
    ld [hl+], a                                   ; $501a: $22
    ld [hl], d                                    ; $501b: $72
    pop af                                        ; $501c: $f1
    pop hl                                        ; $501d: $e1
    pop de                                        ; $501e: $d1
    pop bc                                        ; $501f: $c1
    ret                                           ; $5020: $c9


Call_03c_5021:
    push bc                                       ; $5021: $c5
    push de                                       ; $5022: $d5
    push hl                                       ; $5023: $e5
    call Call_03c_4404                            ; $5024: $cd $04 $44
    cp $01                                        ; $5027: $fe $01
    jr z, jr_03c_502f                             ; $5029: $28 $04

    ld a, $3c                                     ; $502b: $3e $3c
    jr jr_03c_5057                                ; $502d: $18 $28

jr_03c_502f:
    push de                                       ; $502f: $d5
    pop hl                                        ; $5030: $e1
    ld de, $0060                                  ; $5031: $11 $60 $00
    add hl, de                                    ; $5034: $19
    push hl                                       ; $5035: $e5
    pop de                                        ; $5036: $d1
    push bc                                       ; $5037: $c5
    pop hl                                        ; $5038: $e1
    push de                                       ; $5039: $d5
    pop bc                                        ; $503a: $c1
    ld d, $00                                     ; $503b: $16 $00
    ld e, $3c                                     ; $503d: $1e $3c
    xor a                                         ; $503f: $af
    call Call_000_0ddb                            ; $5040: $cd $db $0d
    push hl                                       ; $5043: $e5
    pop de                                        ; $5044: $d1
    push bc                                       ; $5045: $c5
    pop hl                                        ; $5046: $e1
    xor a                                         ; $5047: $af
    call Call_000_0ddb                            ; $5048: $cd $db $0d
    ld a, l                                       ; $504b: $7d
    sub $3d                                       ; $504c: $d6 $3d
    bit 7, a                                      ; $504e: $cb $7f
    jr nz, jr_03c_5056                            ; $5050: $20 $04

    ld a, $3c                                     ; $5052: $3e $3c
    jr jr_03c_5057                                ; $5054: $18 $01

jr_03c_5056:
    ld a, l                                       ; $5056: $7d

jr_03c_5057:
    pop hl                                        ; $5057: $e1
    pop de                                        ; $5058: $d1
    pop bc                                        ; $5059: $c1
    ret                                           ; $505a: $c9


    push af                                       ; $505b: $f5
    push bc                                       ; $505c: $c5
    push de                                       ; $505d: $d5
    ld a, h                                       ; $505e: $7c
    cp $3c                                        ; $505f: $fe $3c
    jr z, jr_03c_507e                             ; $5061: $28 $1b

    push hl                                       ; $5063: $e5
    pop bc                                        ; $5064: $c1
    ld l, h                                       ; $5065: $6c
    xor a                                         ; $5066: $af
    ld h, a                                       ; $5067: $67
    ld d, a                                       ; $5068: $57
    ld e, $0a                                     ; $5069: $1e $0a
    call Call_000_09ae                            ; $506b: $cd $ae $09
    ld a, b                                       ; $506e: $78
    add l                                         ; $506f: $85
    ld b, a                                       ; $5070: $47
    sub $3c                                       ; $5071: $d6 $3c
    bit 7, a                                      ; $5073: $cb $7f
    jr nz, jr_03c_507a                            ; $5075: $20 $03

    ld a, $3c                                     ; $5077: $3e $3c
    ld b, a                                       ; $5079: $47

jr_03c_507a:
    ld h, b                                       ; $507a: $60
    ld l, c                                       ; $507b: $69
    jr jr_03c_507e                                ; $507c: $18 $00

jr_03c_507e:
    pop de                                        ; $507e: $d1
    pop bc                                        ; $507f: $c1
    pop af                                        ; $5080: $f1
    ret                                           ; $5081: $c9


    push bc                                       ; $5082: $c5
    push de                                       ; $5083: $d5
    ld d, a                                       ; $5084: $57
    ld a, [$d4cd]                                 ; $5085: $fa $cd $d4
    cp $01                                        ; $5088: $fe $01
    jr z, jr_03c_50aa                             ; $508a: $28 $1e

    cp $02                                        ; $508c: $fe $02
    jr z, jr_03c_50a0                             ; $508e: $28 $10

    cp $0c                                        ; $5090: $fe $0c
    jr z, jr_03c_5096                             ; $5092: $28 $02

    jr jr_03c_50cf                                ; $5094: $18 $39

jr_03c_5096:
    ld a, d                                       ; $5096: $7a
    call Call_03c_4528                            ; $5097: $cd $28 $45
    push hl                                       ; $509a: $e5
    ld de, $0008                                  ; $509b: $11 $08 $00
    jr jr_03c_50b2                                ; $509e: $18 $12

jr_03c_50a0:
    ld a, d                                       ; $50a0: $7a
    call Call_03c_4528                            ; $50a1: $cd $28 $45
    push hl                                       ; $50a4: $e5
    ld de, $0009                                  ; $50a5: $11 $09 $00
    jr jr_03c_50b2                                ; $50a8: $18 $08

jr_03c_50aa:
    ld a, d                                       ; $50aa: $7a
    call Call_03c_4528                            ; $50ab: $cd $28 $45
    push hl                                       ; $50ae: $e5
    ld de, $000a                                  ; $50af: $11 $0a $00

jr_03c_50b2:
    call Call_000_09ae                            ; $50b2: $cd $ae $09
    push hl                                       ; $50b5: $e5
    pop de                                        ; $50b6: $d1
    pop hl                                        ; $50b7: $e1
    add hl, de                                    ; $50b8: $19
    push hl                                       ; $50b9: $e5
    pop bc                                        ; $50ba: $c1
    call Call_03c_45f9                            ; $50bb: $cd $f9 $45
    push af                                       ; $50be: $f5
    push bc                                       ; $50bf: $c5
    call Call_03c_453f                            ; $50c0: $cd $3f $45
    pop af                                        ; $50c3: $f1
    pop de                                        ; $50c4: $d1
    push hl                                       ; $50c5: $e5
    pop bc                                        ; $50c6: $c1
    ld l, a                                       ; $50c7: $6f
    call Call_03c_5021                            ; $50c8: $cd $21 $50
    ld h, a                                       ; $50cb: $67
    ld a, l                                       ; $50cc: $7d
    jr jr_03c_50d0                                ; $50cd: $18 $01

jr_03c_50cf:
    ld a, d                                       ; $50cf: $7a

jr_03c_50d0:
    pop de                                        ; $50d0: $d1
    pop bc                                        ; $50d1: $c1
    ret                                           ; $50d2: $c9


Call_03c_50d3:
    push bc                                       ; $50d3: $c5
    push de                                       ; $50d4: $d5
    push hl                                       ; $50d5: $e5
    ld a, [$c834]                                 ; $50d6: $fa $34 $c8
    cp $02                                        ; $50d9: $fe $02
    jr z, jr_03c_50e6                             ; $50db: $28 $09

    ld a, $3e                                     ; $50dd: $3e $3e
    call $4256                                    ; $50df: $cd $56 $42
    ld a, [hl]                                    ; $50e2: $7e
    ld [$d526], a                                 ; $50e3: $ea $26 $d5

jr_03c_50e6:
    xor a                                         ; $50e6: $af
    ld [$d526], a                                 ; $50e7: $ea $26 $d5
    ld a, $10                                     ; $50ea: $3e $10
    call $4256                                    ; $50ec: $cd $56 $42
    ld a, [hl]                                    ; $50ef: $7e
    call Call_03c_4381                            ; $50f0: $cd $81 $43
    ld [$d539], a                                 ; $50f3: $ea $39 $d5
    call Call_03c_51f6                            ; $50f6: $cd $f6 $51
    ld a, b                                       ; $50f9: $78
    ld [$d53a], a                                 ; $50fa: $ea $3a $d5
    ld a, c                                       ; $50fd: $79
    ld [$d53b], a                                 ; $50fe: $ea $3b $d5
    ld a, $10                                     ; $5101: $3e $10
    call $4256                                    ; $5103: $cd $56 $42
    ld a, [hl]                                    ; $5106: $7e
    call Call_03c_43d5                            ; $5107: $cd $d5 $43
    ld b, a                                       ; $510a: $47
    ld a, $10                                     ; $510b: $3e $10
    call $4256                                    ; $510d: $cd $56 $42
    ld a, [hl]                                    ; $5110: $7e
    call Call_03c_43de                            ; $5111: $cd $de $43
    ld c, a                                       ; $5114: $4f
    ld a, b                                       ; $5115: $78
    add c                                         ; $5116: $81
    ld [$d525], a                                 ; $5117: $ea $25 $d5
    ld a, [$d525]                                 ; $511a: $fa $25 $d5
    ld hl, $d526                                  ; $511d: $21 $26 $d5
    ld b, [hl]                                    ; $5120: $46
    sub b                                         ; $5121: $90
    jr nz, jr_03c_5127                            ; $5122: $20 $03

    jp Jump_03c_51ef                              ; $5124: $c3 $ef $51


jr_03c_5127:
    ld [hl], a                                    ; $5127: $77
    xor a                                         ; $5128: $af
    ld hl, $d527                                  ; $5129: $21 $27 $d5

jr_03c_512c:
    cp $12                                        ; $512c: $fe $12
    jr z, jr_03c_5136                             ; $512e: $28 $06

    ld [hl], $00                                  ; $5130: $36 $00
    inc a                                         ; $5132: $3c
    inc hl                                        ; $5133: $23
    jr jr_03c_512c                                ; $5134: $18 $f6

jr_03c_5136:
    ld hl, $d53a                                  ; $5136: $21 $3a $d5
    ld b, [hl]                                    ; $5139: $46
    ld c, $00                                     ; $513a: $0e $00
    ld hl, $d527                                  ; $513c: $21 $27 $d5

jr_03c_513f:
    ld a, c                                       ; $513f: $79
    cp $09                                        ; $5140: $fe $09
    jr z, jr_03c_515c                             ; $5142: $28 $18

    ld a, b                                       ; $5144: $78
    cp $00                                        ; $5145: $fe $00
    jr z, jr_03c_515c                             ; $5147: $28 $13

    ld a, b                                       ; $5149: $78
    bit 7, a                                      ; $514a: $cb $7f
    jr nz, jr_03c_5154                            ; $514c: $20 $06

    ld a, [hl]                                    ; $514e: $7e
    inc a                                         ; $514f: $3c
    ld [hl], a                                    ; $5150: $77
    dec b                                         ; $5151: $05
    jr jr_03c_5158                                ; $5152: $18 $04

jr_03c_5154:
    ld a, [hl]                                    ; $5154: $7e
    dec a                                         ; $5155: $3d
    ld [hl], a                                    ; $5156: $77
    inc b                                         ; $5157: $04

jr_03c_5158:
    inc hl                                        ; $5158: $23
    inc c                                         ; $5159: $0c
    jr jr_03c_513f                                ; $515a: $18 $e3

jr_03c_515c:
    ld hl, $d53b                                  ; $515c: $21 $3b $d5
    ld b, [hl]                                    ; $515f: $46
    ld hl, $d527                                  ; $5160: $21 $27 $d5
    push de                                       ; $5163: $d5
    ld de, $0009                                  ; $5164: $11 $09 $00
    add hl, de                                    ; $5167: $19
    pop de                                        ; $5168: $d1

jr_03c_5169:
    ld a, c                                       ; $5169: $79
    cp $12                                        ; $516a: $fe $12
    jr z, jr_03c_5186                             ; $516c: $28 $18

    ld a, b                                       ; $516e: $78
    cp $00                                        ; $516f: $fe $00
    jr z, jr_03c_5186                             ; $5171: $28 $13

    ld a, b                                       ; $5173: $78
    bit 7, a                                      ; $5174: $cb $7f
    jr nz, jr_03c_517e                            ; $5176: $20 $06

    ld a, [hl]                                    ; $5178: $7e
    inc a                                         ; $5179: $3c
    ld [hl], a                                    ; $517a: $77
    dec b                                         ; $517b: $05
    jr jr_03c_5182                                ; $517c: $18 $04

jr_03c_517e:
    ld a, [hl]                                    ; $517e: $7e
    dec a                                         ; $517f: $3d
    ld [hl], a                                    ; $5180: $77
    inc b                                         ; $5181: $04

jr_03c_5182:
    inc hl                                        ; $5182: $23
    inc c                                         ; $5183: $0c
    jr jr_03c_5169                                ; $5184: $18 $e3

jr_03c_5186:
    ld a, [$c837]                                 ; $5186: $fa $37 $c8
    dec a                                         ; $5189: $3d
    ld c, a                                       ; $518a: $4f
    ld hl, $d527                                  ; $518b: $21 $27 $d5
    xor a                                         ; $518e: $af

jr_03c_518f:
    cp c                                          ; $518f: $b9
    jr z, jr_03c_5196                             ; $5190: $28 $04

    inc hl                                        ; $5192: $23
    inc a                                         ; $5193: $3c
    jr jr_03c_518f                                ; $5194: $18 $f9

jr_03c_5196:
    push af                                       ; $5196: $f5
    xor a                                         ; $5197: $af
    ld b, a                                       ; $5198: $47
    pop af                                        ; $5199: $f1

jr_03c_519a:
    cp $12                                        ; $519a: $fe $12
    jr z, jr_03c_51a7                             ; $519c: $28 $09

    push af                                       ; $519e: $f5
    ld a, [hl]                                    ; $519f: $7e
    add b                                         ; $51a0: $80
    ld b, a                                       ; $51a1: $47
    pop af                                        ; $51a2: $f1
    inc a                                         ; $51a3: $3c
    inc hl                                        ; $51a4: $23
    jr jr_03c_519a                                ; $51a5: $18 $f3

jr_03c_51a7:
    push hl                                       ; $51a7: $e5
    ld hl, $d526                                  ; $51a8: $21 $26 $d5
    ld a, [hl]                                    ; $51ab: $7e
    sub b                                         ; $51ac: $90
    ld b, a                                       ; $51ad: $47
    ld [hl], b                                    ; $51ae: $70
    pop hl                                        ; $51af: $e1

jr_03c_51b0:
    ld a, [$c837]                                 ; $51b0: $fa $37 $c8
    dec a                                         ; $51b3: $3d
    ld c, a                                       ; $51b4: $4f
    ld hl, $d527                                  ; $51b5: $21 $27 $d5
    xor a                                         ; $51b8: $af

jr_03c_51b9:
    cp c                                          ; $51b9: $b9
    jr z, jr_03c_51c0                             ; $51ba: $28 $04

    inc hl                                        ; $51bc: $23
    inc a                                         ; $51bd: $3c
    jr jr_03c_51b9                                ; $51be: $18 $f9

jr_03c_51c0:
    ld a, b                                       ; $51c0: $78
    cp $00                                        ; $51c1: $fe $00
    jr z, jr_03c_51dd                             ; $51c3: $28 $18

    ld a, c                                       ; $51c5: $79
    cp $12                                        ; $51c6: $fe $12
    jr z, jr_03c_51b0                             ; $51c8: $28 $e6

    ld a, b                                       ; $51ca: $78
    bit 7, a                                      ; $51cb: $cb $7f
    jr nz, jr_03c_51d5                            ; $51cd: $20 $06

    ld a, [hl]                                    ; $51cf: $7e
    inc a                                         ; $51d0: $3c
    ld [hl], a                                    ; $51d1: $77
    dec b                                         ; $51d2: $05
    jr jr_03c_51d9                                ; $51d3: $18 $04

jr_03c_51d5:
    ld a, [hl]                                    ; $51d5: $7e
    dec a                                         ; $51d6: $3d
    ld [hl], a                                    ; $51d7: $77
    inc b                                         ; $51d8: $04

jr_03c_51d9:
    inc hl                                        ; $51d9: $23
    inc c                                         ; $51da: $0c
    jr jr_03c_51c0                                ; $51db: $18 $e3

jr_03c_51dd:
    ld a, [$c837]                                 ; $51dd: $fa $37 $c8
    dec a                                         ; $51e0: $3d
    ld hl, $d527                                  ; $51e1: $21 $27 $d5

jr_03c_51e4:
    cp $00                                        ; $51e4: $fe $00
    jr z, jr_03c_51ec                             ; $51e6: $28 $04

    inc hl                                        ; $51e8: $23
    dec a                                         ; $51e9: $3d
    jr jr_03c_51e4                                ; $51ea: $18 $f8

jr_03c_51ec:
    ld a, [hl]                                    ; $51ec: $7e
    jr jr_03c_51f2                                ; $51ed: $18 $03

Jump_03c_51ef:
    xor a                                         ; $51ef: $af
    jr jr_03c_51f2                                ; $51f0: $18 $00

jr_03c_51f2:
    pop hl                                        ; $51f2: $e1
    pop de                                        ; $51f3: $d1
    pop bc                                        ; $51f4: $c1
    ret                                           ; $51f5: $c9


Call_03c_51f6:
    push af                                       ; $51f6: $f5
    push de                                       ; $51f7: $d5
    push hl                                       ; $51f8: $e5
    ld a, $10                                     ; $51f9: $3e $10
    call $4256                                    ; $51fb: $cd $56 $42
    ld a, [hl]                                    ; $51fe: $7e
    call Call_03c_4381                            ; $51ff: $cd $81 $43
    ld d, a                                       ; $5202: $57
    ld a, [hl]                                    ; $5203: $7e
    call Call_03c_43d5                            ; $5204: $cd $d5 $43
    ld b, a                                       ; $5207: $47
    ld a, [hl]                                    ; $5208: $7e
    call Call_03c_43de                            ; $5209: $cd $de $43
    ld c, a                                       ; $520c: $4f
    ld a, b                                       ; $520d: $78
    add c                                         ; $520e: $81
    ld e, a                                       ; $520f: $5f
    ld b, $00                                     ; $5210: $06 $00
    ld c, $00                                     ; $5212: $0e $00
    bit 7, e                                      ; $5214: $cb $7b
    jr z, jr_03c_521a                             ; $5216: $28 $02

    xor a                                         ; $5218: $af
    sub e                                         ; $5219: $93

jr_03c_521a:
    bit 0, a                                      ; $521a: $cb $47
    jr z, jr_03c_522a                             ; $521c: $28 $0c

    dec a                                         ; $521e: $3d
    push af                                       ; $521f: $f5
    ld a, d                                       ; $5220: $7a
    cp $02                                        ; $5221: $fe $02
    jr z, jr_03c_5228                             ; $5223: $28 $03

    inc b                                         ; $5225: $04
    jr jr_03c_5229                                ; $5226: $18 $01

jr_03c_5228:
    inc c                                         ; $5228: $0c

jr_03c_5229:
    pop af                                        ; $5229: $f1

jr_03c_522a:
    srl a                                         ; $522a: $cb $3f
    push af                                       ; $522c: $f5
    add b                                         ; $522d: $80
    ld b, a                                       ; $522e: $47
    pop af                                        ; $522f: $f1
    add c                                         ; $5230: $81
    ld c, a                                       ; $5231: $4f
    ld a, d                                       ; $5232: $7a
    cp $00                                        ; $5233: $fe $00
    jr z, jr_03c_5245                             ; $5235: $28 $0e

    cp $02                                        ; $5237: $fe $02
    jr z, jr_03c_5241                             ; $5239: $28 $06

    dec b                                         ; $523b: $05
    dec b                                         ; $523c: $05
    inc c                                         ; $523d: $0c
    inc c                                         ; $523e: $0c
    jr jr_03c_5245                                ; $523f: $18 $04

jr_03c_5241:
    inc b                                         ; $5241: $04
    inc b                                         ; $5242: $04
    dec c                                         ; $5243: $0d
    dec c                                         ; $5244: $0d

jr_03c_5245:
    ld a, $10                                     ; $5245: $3e $10
    call $4256                                    ; $5247: $cd $56 $42
    ld a, [hl]                                    ; $524a: $7e
    call Call_03c_43d5                            ; $524b: $cd $d5 $43
    bit 7, a                                      ; $524e: $cb $7f
    jr z, jr_03c_5258                             ; $5250: $28 $06

    xor a                                         ; $5252: $af
    sub b                                         ; $5253: $90
    ld b, a                                       ; $5254: $47
    xor a                                         ; $5255: $af
    sub c                                         ; $5256: $91
    ld c, a                                       ; $5257: $4f

jr_03c_5258:
    pop hl                                        ; $5258: $e1
    pop de                                        ; $5259: $d1
    pop af                                        ; $525a: $f1
    ret                                           ; $525b: $c9


Call_03c_525c:
    push bc                                       ; $525c: $c5
    push de                                       ; $525d: $d5
    push hl                                       ; $525e: $e5
    ld a, $10                                     ; $525f: $3e $10
    call $4256                                    ; $5261: $cd $56 $42
    ld a, [hl]                                    ; $5264: $7e
    call Call_03c_4397                            ; $5265: $cd $97 $43
    ld b, a                                       ; $5268: $47
    ld a, [$d325]                                 ; $5269: $fa $25 $d3
    ld c, a                                       ; $526c: $4f
    ld a, $20                                     ; $526d: $3e $20
    call $4256                                    ; $526f: $cd $56 $42
    ld a, [hl]                                    ; $5272: $7e
    ld d, a                                       ; $5273: $57
    ld a, c                                       ; $5274: $79
    cp $03                                        ; $5275: $fe $03
    jp z, Jump_03c_52fb                           ; $5277: $ca $fb $52

    ld a, c                                       ; $527a: $79
    cp $05                                        ; $527b: $fe $05
    jr nz, jr_03c_5287                            ; $527d: $20 $08

    ld a, d                                       ; $527f: $7a
    cp $00                                        ; $5280: $fe $00
    jr nz, jr_03c_5287                            ; $5282: $20 $03

    xor a                                         ; $5284: $af
    jr jr_03c_5303                                ; $5285: $18 $7c

jr_03c_5287:
    call Call_03c_4a11                            ; $5287: $cd $11 $4a
    cp $01                                        ; $528a: $fe $01
    jr z, jr_03c_5295                             ; $528c: $28 $07

    ld a, [$d549]                                 ; $528e: $fa $49 $d5
    bit 7, a                                      ; $5291: $cb $7f
    jr nz, jr_03c_52fb                            ; $5293: $20 $66

jr_03c_5295:
    push af                                       ; $5295: $f5
    ld a, c                                       ; $5296: $79
    sub $02                                       ; $5297: $d6 $02
    ld c, a                                       ; $5299: $4f
    pop af                                        ; $529a: $f1
    add c                                         ; $529b: $81
    sub d                                         ; $529c: $92
    bit 7, a                                      ; $529d: $cb $7f
    jr nz, jr_03c_52fb                            ; $529f: $20 $5a

    ld a, b                                       ; $52a1: $78
    cp $00                                        ; $52a2: $fe $00
    jr nz, jr_03c_52cb                            ; $52a4: $20 $25

    ld a, d                                       ; $52a6: $7a
    cp $00                                        ; $52a7: $fe $00
    jr nz, jr_03c_52af                            ; $52a9: $20 $04

    ld e, $01                                     ; $52ab: $1e $01
    jr jr_03c_52f0                                ; $52ad: $18 $41

jr_03c_52af:
    cp $01                                        ; $52af: $fe $01
    jr nz, jr_03c_52c9                            ; $52b1: $20 $16

    ld a, c                                       ; $52b3: $79
    cp $03                                        ; $52b4: $fe $03
    jr nz, jr_03c_52c9                            ; $52b6: $20 $11

    ld a, $02                                     ; $52b8: $3e $02
    call Call_03c_465f                            ; $52ba: $cd $5f $46
    cp $00                                        ; $52bd: $fe $00
    jr nz, jr_03c_52c5                            ; $52bf: $20 $04

    ld e, $02                                     ; $52c1: $1e $02
    jr jr_03c_52f0                                ; $52c3: $18 $2b

jr_03c_52c5:
    ld e, $03                                     ; $52c5: $1e $03
    jr jr_03c_52f0                                ; $52c7: $18 $27

jr_03c_52c9:
    jr jr_03c_52fb                                ; $52c9: $18 $30

jr_03c_52cb:
    ld a, d                                       ; $52cb: $7a
    cp $00                                        ; $52cc: $fe $00
    jr nz, jr_03c_52d4                            ; $52ce: $20 $04

    ld e, $00                                     ; $52d0: $1e $00
    jr jr_03c_52f0                                ; $52d2: $18 $1c

jr_03c_52d4:
    cp $01                                        ; $52d4: $fe $01
    jr nz, jr_03c_52ee                            ; $52d6: $20 $16

    ld a, c                                       ; $52d8: $79
    cp $03                                        ; $52d9: $fe $03
    jr nz, jr_03c_52ee                            ; $52db: $20 $11

    ld a, $01                                     ; $52dd: $3e $01
    call Call_03c_465f                            ; $52df: $cd $5f $46
    cp $00                                        ; $52e2: $fe $00
    jr nz, jr_03c_52ea                            ; $52e4: $20 $04

    ld e, $01                                     ; $52e6: $1e $01
    jr jr_03c_52f0                                ; $52e8: $18 $06

jr_03c_52ea:
    ld e, $03                                     ; $52ea: $1e $03
    jr jr_03c_52f0                                ; $52ec: $18 $02

jr_03c_52ee:
    jr jr_03c_52fb                                ; $52ee: $18 $0b

jr_03c_52f0:
    ld a, e                                       ; $52f0: $7b
    call Call_03c_465f                            ; $52f1: $cd $5f $46
    cp $00                                        ; $52f4: $fe $00
    jr nz, jr_03c_52fb                            ; $52f6: $20 $03

    ld a, e                                       ; $52f8: $7b
    jr jr_03c_5303                                ; $52f9: $18 $08

Jump_03c_52fb:
jr_03c_52fb:
    rst $18                                       ; $52fb: $df
    inc b                                         ; $52fc: $04
    db $10                                        ; $52fd: $10
    push hl                                       ; $52fe: $e5
    pop bc                                        ; $52ff: $c1
    call Call_03c_45f9                            ; $5300: $cd $f9 $45

jr_03c_5303:
    pop hl                                        ; $5303: $e1
    pop de                                        ; $5304: $d1
    pop bc                                        ; $5305: $c1
    ret                                           ; $5306: $c9


Call_03c_5307:
    push bc                                       ; $5307: $c5
    push de                                       ; $5308: $d5
    push hl                                       ; $5309: $e5
    ld e, a                                       ; $530a: $5f
    ld a, [$d4cd]                                 ; $530b: $fa $cd $d4
    cp $02                                        ; $530e: $fe $02
    jr z, jr_03c_5345                             ; $5310: $28 $33

    ld a, [$d549]                                 ; $5312: $fa $49 $d5
    ld b, a                                       ; $5315: $47
    ld a, $20                                     ; $5316: $3e $20
    call $4256                                    ; $5318: $cd $56 $42
    ld a, [hl]                                    ; $531b: $7e
    inc a                                         ; $531c: $3c
    ld c, a                                       ; $531d: $4f
    ld a, [$d325]                                 ; $531e: $fa $25 $d3
    sub $02                                       ; $5321: $d6 $02
    ld d, a                                       ; $5323: $57
    add b                                         ; $5324: $80
    bit 7, a                                      ; $5325: $cb $7f
    jr z, jr_03c_5345                             ; $5327: $28 $1c

    cp c                                          ; $5329: $b9
    jr nz, jr_03c_5345                            ; $532a: $20 $19

    ld e, a                                       ; $532c: $5f
    push af                                       ; $532d: $f5
    call Call_03c_453f                            ; $532e: $cd $3f $45
    push hl                                       ; $5331: $e5
    pop de                                        ; $5332: $d1
    rst $18                                       ; $5333: $df
    inc b                                         ; $5334: $04
    db $10                                        ; $5335: $10
    push hl                                       ; $5336: $e5
    pop bc                                        ; $5337: $c1
    call Call_03c_4404                            ; $5338: $cd $04 $44
    cp $01                                        ; $533b: $fe $01
    jr nz, jr_03c_5348                            ; $533d: $20 $09

    pop af                                        ; $533f: $f1
    call Call_03c_45f9                            ; $5340: $cd $f9 $45
    jr jr_03c_5349                                ; $5343: $18 $04

jr_03c_5345:
    ld a, e                                       ; $5345: $7b
    jr jr_03c_5349                                ; $5346: $18 $01

jr_03c_5348:
    pop af                                        ; $5348: $f1

jr_03c_5349:
    pop hl                                        ; $5349: $e1
    pop de                                        ; $534a: $d1
    pop bc                                        ; $534b: $c1
    ret                                           ; $534c: $c9


    inc bc                                        ; $534d: $03
    inc bc                                        ; $534e: $03
    inc bc                                        ; $534f: $03
    inc bc                                        ; $5350: $03
    ld [bc], a                                    ; $5351: $02
    ld [bc], a                                    ; $5352: $02
    ld [bc], a                                    ; $5353: $02
    ld [bc], a                                    ; $5354: $02
    ld [bc], a                                    ; $5355: $02
    ld [bc], a                                    ; $5356: $02
    inc bc                                        ; $5357: $03
    inc bc                                        ; $5358: $03
    inc bc                                        ; $5359: $03
    inc bc                                        ; $535a: $03
    inc bc                                        ; $535b: $03
    inc bc                                        ; $535c: $03
    nop                                           ; $535d: $00
    nop                                           ; $535e: $00
    nop                                           ; $535f: $00
    rst $38                                       ; $5360: $ff
    rst $38                                       ; $5361: $ff
    rst $38                                       ; $5362: $ff
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    ld bc, $0101                                  ; $5368: $01 $01 $01
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    nop                                           ; $536e: $00
    rst $38                                       ; $536f: $ff
    rst $38                                       ; $5370: $ff
    cp $ff                                        ; $5371: $fe $ff
    rst $38                                       ; $5373: $ff
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    ld bc, $0201                                  ; $5377: $01 $01 $02
    ld bc, $0001                                  ; $537a: $01 $01 $00
    nop                                           ; $537d: $00
    rst $38                                       ; $537e: $ff
    rst $38                                       ; $537f: $ff
    cp $fd                                        ; $5380: $fe $fd
    cp $ff                                        ; $5382: $fe $ff
    rst $38                                       ; $5384: $ff
    nop                                           ; $5385: $00
    ld bc, $0201                                  ; $5386: $01 $01 $02
    inc bc                                        ; $5389: $03
    ld [bc], a                                    ; $538a: $02
    ld bc, $0001                                  ; $538b: $01 $01 $00
    cp $fd                                        ; $538e: $fe $fd
    db $fd                                        ; $5390: $fd
    db $fd                                        ; $5391: $fd
    db $fd                                        ; $5392: $fd
    db $fd                                        ; $5393: $fd
    cp $00                                        ; $5394: $fe $00
    ld [bc], a                                    ; $5396: $02
    inc bc                                        ; $5397: $03
    inc bc                                        ; $5398: $03
    inc bc                                        ; $5399: $03
    inc bc                                        ; $539a: $03
    inc bc                                        ; $539b: $03
    ld [bc], a                                    ; $539c: $02
    nop                                           ; $539d: $00
    nop                                           ; $539e: $00
    rst $38                                       ; $539f: $ff
    rst $38                                       ; $53a0: $ff
    rst $38                                       ; $53a1: $ff
    rst $38                                       ; $53a2: $ff
    rst $38                                       ; $53a3: $ff
    nop                                           ; $53a4: $00
    nop                                           ; $53a5: $00
    nop                                           ; $53a6: $00
    ld bc, $0101                                  ; $53a7: $01 $01 $01
    ld bc, $0001                                  ; $53aa: $01 $01 $00
    nop                                           ; $53ad: $00
    nop                                           ; $53ae: $00
    rst $38                                       ; $53af: $ff
    rst $38                                       ; $53b0: $ff
    cp $ff                                        ; $53b1: $fe $ff
    rst $38                                       ; $53b3: $ff
    nop                                           ; $53b4: $00
    nop                                           ; $53b5: $00
    nop                                           ; $53b6: $00
    ld bc, $0201                                  ; $53b7: $01 $01 $02
    ld bc, $0001                                  ; $53ba: $01 $01 $00
    nop                                           ; $53bd: $00
    rst $38                                       ; $53be: $ff
    cp $fd                                        ; $53bf: $fe $fd
    db $fd                                        ; $53c1: $fd
    db $fd                                        ; $53c2: $fd
    cp $ff                                        ; $53c3: $fe $ff
    nop                                           ; $53c5: $00
    ld bc, $0302                                  ; $53c6: $01 $02 $03
    inc bc                                        ; $53c9: $03
    inc bc                                        ; $53ca: $03
    ld [bc], a                                    ; $53cb: $02
    ld bc, $ff00                                  ; $53cc: $01 $00 $ff
    cp $fd                                        ; $53cf: $fe $fd
    db $fd                                        ; $53d1: $fd
    db $fd                                        ; $53d2: $fd
    cp $ff                                        ; $53d3: $fe $ff
    nop                                           ; $53d5: $00
    ld bc, $0302                                  ; $53d6: $01 $02 $03
    inc bc                                        ; $53d9: $03
    inc bc                                        ; $53da: $03
    ld [bc], a                                    ; $53db: $02
    ld bc, $ff00                                  ; $53dc: $01 $00 $ff
    rst $38                                       ; $53df: $ff
    cp $fe                                        ; $53e0: $fe $fe
    cp $ff                                        ; $53e2: $fe $ff
    rst $38                                       ; $53e4: $ff
    nop                                           ; $53e5: $00
    ld bc, $0201                                  ; $53e6: $01 $01 $02
    ld [bc], a                                    ; $53e9: $02
    ld [bc], a                                    ; $53ea: $02
    ld bc, $0001                                  ; $53eb: $01 $01 $00
    rst $38                                       ; $53ee: $ff
    cp $fd                                        ; $53ef: $fe $fd
    db $fc                                        ; $53f1: $fc
    db $fd                                        ; $53f2: $fd
    cp $ff                                        ; $53f3: $fe $ff
    nop                                           ; $53f5: $00
    ld bc, $0302                                  ; $53f6: $01 $02 $03
    inc b                                         ; $53f9: $04
    inc bc                                        ; $53fa: $03
    ld [bc], a                                    ; $53fb: $02
    ld bc, $ff00                                  ; $53fc: $01 $00 $ff
    cp $fc                                        ; $53ff: $fe $fc
    db $fc                                        ; $5401: $fc
    db $fc                                        ; $5402: $fc
    cp $ff                                        ; $5403: $fe $ff
    nop                                           ; $5405: $00
    ld bc, $0402                                  ; $5406: $01 $02 $04
    inc b                                         ; $5409: $04
    inc b                                         ; $540a: $04
    ld [bc], a                                    ; $540b: $02
    ld bc, $fe00                                  ; $540c: $01 $00 $fe
    db $fd                                        ; $540f: $fd
    db $fc                                        ; $5410: $fc
    db $fc                                        ; $5411: $fc
    db $fc                                        ; $5412: $fc
    db $fd                                        ; $5413: $fd
    cp $00                                        ; $5414: $fe $00
    ld [bc], a                                    ; $5416: $02
    inc bc                                        ; $5417: $03
    inc b                                         ; $5418: $04
    inc b                                         ; $5419: $04
    inc b                                         ; $541a: $04
    inc bc                                        ; $541b: $03
    ld [bc], a                                    ; $541c: $02
    nop                                           ; $541d: $00
    rst $38                                       ; $541e: $ff
    rst $38                                       ; $541f: $ff
    cp $fe                                        ; $5420: $fe $fe
    cp $ff                                        ; $5422: $fe $ff
    rst $38                                       ; $5424: $ff
    nop                                           ; $5425: $00
    ld bc, $0201                                  ; $5426: $01 $01 $02
    ld [bc], a                                    ; $5429: $02
    ld [bc], a                                    ; $542a: $02
    ld bc, $0001                                  ; $542b: $01 $01 $00
    cp $fe                                        ; $542e: $fe $fe
    db $fd                                        ; $5430: $fd
    db $fd                                        ; $5431: $fd
    db $fd                                        ; $5432: $fd
    cp $fe                                        ; $5433: $fe $fe
    nop                                           ; $5435: $00
    ld [bc], a                                    ; $5436: $02
    ld [bc], a                                    ; $5437: $02
    inc bc                                        ; $5438: $03
    inc bc                                        ; $5439: $03
    inc bc                                        ; $543a: $03
    ld [bc], a                                    ; $543b: $02
    ld [bc], a                                    ; $543c: $02
    nop                                           ; $543d: $00
    cp $fd                                        ; $543e: $fe $fd
    db $fc                                        ; $5440: $fc
    db $fc                                        ; $5441: $fc
    db $fc                                        ; $5442: $fc
    db $fd                                        ; $5443: $fd
    cp $00                                        ; $5444: $fe $00
    ld [bc], a                                    ; $5446: $02
    inc bc                                        ; $5447: $03
    inc b                                         ; $5448: $04
    inc b                                         ; $5449: $04
    inc b                                         ; $544a: $04
    inc bc                                        ; $544b: $03
    ld [bc], a                                    ; $544c: $02
    nop                                           ; $544d: $00
    cp $fd                                        ; $544e: $fe $fd
    db $fc                                        ; $5450: $fc
    db $fc                                        ; $5451: $fc
    db $fc                                        ; $5452: $fc
    db $fd                                        ; $5453: $fd
    cp $00                                        ; $5454: $fe $00
    ld [bc], a                                    ; $5456: $02
    inc bc                                        ; $5457: $03
    inc b                                         ; $5458: $04
    inc b                                         ; $5459: $04
    inc b                                         ; $545a: $04
    inc bc                                        ; $545b: $03
    ld [bc], a                                    ; $545c: $02
    ei                                            ; $545d: $fb
    db $fd                                        ; $545e: $fd
    rst $38                                       ; $545f: $ff
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    ld bc, $0503                                  ; $5463: $01 $03 $05
    inc bc                                        ; $5466: $03
    ld bc, $0000                                  ; $5467: $01 $00 $00
    nop                                           ; $546a: $00
    rst $38                                       ; $546b: $ff
    db $fd                                        ; $546c: $fd
    ei                                            ; $546d: $fb
    db $fd                                        ; $546e: $fd
    rst $38                                       ; $546f: $ff
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    ld bc, $0503                                  ; $5472: $01 $03 $05
    rlca                                          ; $5475: $07
    dec b                                         ; $5476: $05
    inc bc                                        ; $5477: $03
    ld bc, $0000                                  ; $5478: $01 $00 $00
    rst $38                                       ; $547b: $ff
    db $fd                                        ; $547c: $fd
    or $f6                                        ; $547d: $f6 $f6
    ei                                            ; $547f: $fb
    db $fd                                        ; $5480: $fd
    nop                                           ; $5481: $00
    inc bc                                        ; $5482: $03
    dec b                                         ; $5483: $05
    ld a, [bc]                                    ; $5484: $0a
    ld a, [bc]                                    ; $5485: $0a
    ld a, [bc]                                    ; $5486: $0a
    dec b                                         ; $5487: $05
    inc bc                                        ; $5488: $03
    nop                                           ; $5489: $00
    db $fd                                        ; $548a: $fd
    ei                                            ; $548b: $fb
    or $f6                                        ; $548c: $f6 $f6
    ei                                            ; $548e: $fb
    db $fd                                        ; $548f: $fd
    rst $38                                       ; $5490: $ff
    nop                                           ; $5491: $00
    ld bc, $0503                                  ; $5492: $01 $03 $05
    ld a, [bc]                                    ; $5495: $0a
    dec b                                         ; $5496: $05
    inc bc                                        ; $5497: $03
    ld bc, $ff00                                  ; $5498: $01 $00 $ff
    db $fd                                        ; $549b: $fd
    ei                                            ; $549c: $fb
    db $fd                                        ; $549d: $fd
    rst $38                                       ; $549e: $ff
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    ld bc, $0103                                  ; $54a4: $01 $03 $01
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    nop                                           ; $54ab: $00
    rst $38                                       ; $54ac: $ff
    pop af                                        ; $54ad: $f1
    or $f9                                        ; $54ae: $f6 $f9
    inc bc                                        ; $54b0: $03
    nop                                           ; $54b1: $00
    inc bc                                        ; $54b2: $03
    rlca                                          ; $54b3: $07
    ld a, [bc]                                    ; $54b4: $0a
    rrca                                          ; $54b5: $0f
    ld a, [bc]                                    ; $54b6: $0a
    rlca                                          ; $54b7: $07
    inc bc                                        ; $54b8: $03
    nop                                           ; $54b9: $00
    db $fd                                        ; $54ba: $fd
    ld sp, hl                                     ; $54bb: $f9
    or $f6                                        ; $54bc: $f6 $f6
    ld sp, hl                                     ; $54be: $f9
    ei                                            ; $54bf: $fb
    inc bc                                        ; $54c0: $03
    nop                                           ; $54c1: $00
    inc bc                                        ; $54c2: $03
    dec b                                         ; $54c3: $05
    rlca                                          ; $54c4: $07
    ld a, [bc]                                    ; $54c5: $0a
    rlca                                          ; $54c6: $07
    dec b                                         ; $54c7: $05
    inc bc                                        ; $54c8: $03
    nop                                           ; $54c9: $00
    db $fd                                        ; $54ca: $fd
    ei                                            ; $54cb: $fb
    ld sp, hl                                     ; $54cc: $f9
    or $f9                                        ; $54cd: $f6 $f9
    ei                                            ; $54cf: $fb
    db $fd                                        ; $54d0: $fd
    nop                                           ; $54d1: $00
    inc bc                                        ; $54d2: $03
    dec b                                         ; $54d3: $05
    rlca                                          ; $54d4: $07
    ld a, [bc]                                    ; $54d5: $0a
    rlca                                          ; $54d6: $07
    dec b                                         ; $54d7: $05
    inc bc                                        ; $54d8: $03
    nop                                           ; $54d9: $00
    db $fd                                        ; $54da: $fd
    ei                                            ; $54db: $fb
    ld sp, hl                                     ; $54dc: $f9
    or $fb                                        ; $54dd: $f6 $fb
    db $fd                                        ; $54df: $fd
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    dec b                                         ; $54e3: $05
    ld a, [bc]                                    ; $54e4: $0a
    ld a, [bc]                                    ; $54e5: $0a
    ld a, [bc]                                    ; $54e6: $0a
    dec b                                         ; $54e7: $05
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    db $fd                                        ; $54eb: $fd
    ei                                            ; $54ec: $fb
    or $fb                                        ; $54ed: $f6 $fb
    db $fd                                        ; $54ef: $fd
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    dec b                                         ; $54f3: $05
    ld a, [bc]                                    ; $54f4: $0a
    ld a, [bc]                                    ; $54f5: $0a
    ld a, [bc]                                    ; $54f6: $0a
    dec b                                         ; $54f7: $05
    nop                                           ; $54f8: $00
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    db $fd                                        ; $54fb: $fd
    ei                                            ; $54fc: $fb
    jp hl                                         ; $54fd: $e9


    db $ec                                        ; $54fe: $ec
    pop af                                        ; $54ff: $f1
    ld a, [$0600]                                 ; $5500: $fa $00 $06
    ld a, [bc]                                    ; $5503: $0a
    rrca                                          ; $5504: $0f
    inc d                                         ; $5505: $14
    rrca                                          ; $5506: $0f
    ld a, [bc]                                    ; $5507: $0a
    ld b, $00                                     ; $5508: $06 $00
    ld a, [$ecf1]                                 ; $550a: $fa $f1 $ec
    rst $20                                       ; $550d: $e7
    db $ec                                        ; $550e: $ec
    pop af                                        ; $550f: $f1
    ld a, [$0600]                                 ; $5510: $fa $00 $06
    ld a, [bc]                                    ; $5513: $0a
    rrca                                          ; $5514: $0f
    inc d                                         ; $5515: $14
    rrca                                          ; $5516: $0f
    ld a, [bc]                                    ; $5517: $0a
    ld b, $00                                     ; $5518: $06 $00
    ld a, [$ecf1]                                 ; $551a: $fa $f1 $ec
    or $fb                                        ; $551d: $f6 $fb
    db $fd                                        ; $551f: $fd
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    dec b                                         ; $5523: $05
    ld a, [bc]                                    ; $5524: $0a
    ld a, [bc]                                    ; $5525: $0a
    ld a, [bc]                                    ; $5526: $0a
    dec b                                         ; $5527: $05
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    db $fd                                        ; $552b: $fd
    ei                                            ; $552c: $fb
    or $fb                                        ; $552d: $f6 $fb
    db $fd                                        ; $552f: $fd
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    dec b                                         ; $5533: $05
    ld a, [bc]                                    ; $5534: $0a
    ld a, [bc]                                    ; $5535: $0a
    ld a, [bc]                                    ; $5536: $0a
    dec b                                         ; $5537: $05
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    db $fd                                        ; $553b: $fd
    ei                                            ; $553c: $fb
    db $ec                                        ; $553d: $ec
    rst $28                                       ; $553e: $ef
    pop af                                        ; $553f: $f1
    ld a, [$0600]                                 ; $5540: $fa $00 $06
    ld a, [bc]                                    ; $5543: $0a
    rrca                                          ; $5544: $0f
    inc d                                         ; $5545: $14
    rrca                                          ; $5546: $0f
    ld a, [bc]                                    ; $5547: $0a
    ld b, $00                                     ; $5548: $06 $00
    ld a, [$eff1]                                 ; $554a: $fa $f1 $ef
    rst $20                                       ; $554d: $e7
    db $ec                                        ; $554e: $ec
    pop af                                        ; $554f: $f1
    ld a, [$0600]                                 ; $5550: $fa $00 $06
    ld a, [bc]                                    ; $5553: $0a
    rrca                                          ; $5554: $0f
    inc d                                         ; $5555: $14
    rrca                                          ; $5556: $0f
    ld a, [bc]                                    ; $5557: $0a
    ld b, $00                                     ; $5558: $06 $00
    ld a, [$ecf1]                                 ; $555a: $fa $f1 $ec

Call_03c_555d:
    push af                                       ; $555d: $f5
    push de                                       ; $555e: $d5
    push hl                                       ; $555f: $e5
    ld hl, $d525                                  ; $5560: $21 $25 $d5
    ld [hl], a                                    ; $5563: $77
    ld a, [$c815]                                 ; $5564: $fa $15 $c8
    sub $02                                       ; $5567: $d6 $02
    bit 7, a                                      ; $5569: $cb $7f
    jr nz, jr_03c_55b6                            ; $556b: $20 $49

    call Call_03c_569a                            ; $556d: $cd $9a $56
    push bc                                       ; $5570: $c5
    ld a, [$c815]                                 ; $5571: $fa $15 $c8
    ld b, a                                       ; $5574: $47
    ld hl, $d525                                  ; $5575: $21 $25 $d5
    ld a, [hl]                                    ; $5578: $7e
    call Call_03c_561c                            ; $5579: $cd $1c $56
    pop bc                                        ; $557c: $c1
    ld d, a                                       ; $557d: $57
    bit 7, a                                      ; $557e: $cb $7f
    jr z, jr_03c_5584                             ; $5580: $28 $02

    xor a                                         ; $5582: $af
    sub d                                         ; $5583: $92

jr_03c_5584:
    ld hl, $01c7                                  ; $5584: $21 $c7 $01
    call Call_000_08b9                            ; $5587: $cd $b9 $08
    add hl, hl                                    ; $558a: $29
    push hl                                       ; $558b: $e5
    push de                                       ; $558c: $d5
    ld a, $10                                     ; $558d: $3e $10
    call $4256                                    ; $558f: $cd $56 $42
    ld a, [hl]                                    ; $5592: $7e
    ld hl, $534d                                  ; $5593: $21 $4d $53
    ld e, a                                       ; $5596: $5f
    ld d, $00                                     ; $5597: $16 $00
    add hl, de                                    ; $5599: $19
    ld a, [hl]                                    ; $559a: $7e
    pop de                                        ; $559b: $d1
    pop hl                                        ; $559c: $e1
    push de                                       ; $559d: $d5
    ld e, a                                       ; $559e: $5f
    ld d, $00                                     ; $559f: $16 $00
    call Call_000_09ae                            ; $55a1: $cd $ae $09
    pop de                                        ; $55a4: $d1
    ld a, d                                       ; $55a5: $7a
    push hl                                       ; $55a6: $e5
    pop de                                        ; $55a7: $d1
    push bc                                       ; $55a8: $c5
    pop hl                                        ; $55a9: $e1
    bit 7, a                                      ; $55aa: $cb $7f
    jr nz, jr_03c_55b1                            ; $55ac: $20 $03

    add hl, de                                    ; $55ae: $19
    jr jr_03c_55b4                                ; $55af: $18 $03

jr_03c_55b1:
    call Call_000_08ac                            ; $55b1: $cd $ac $08

jr_03c_55b4:
    push hl                                       ; $55b4: $e5
    pop bc                                        ; $55b5: $c1

jr_03c_55b6:
    pop hl                                        ; $55b6: $e1
    pop de                                        ; $55b7: $d1
    pop af                                        ; $55b8: $f1
    ret                                           ; $55b9: $c9


Call_03c_55ba:
    push bc                                       ; $55ba: $c5
    push de                                       ; $55bb: $d5
    push hl                                       ; $55bc: $e5
    ld c, a                                       ; $55bd: $4f
    sub $03                                       ; $55be: $d6 $03
    bit 7, a                                      ; $55c0: $cb $7f
    jr z, jr_03c_55c9                             ; $55c2: $28 $05

    ld hl, $545d                                  ; $55c4: $21 $5d $54
    jr jr_03c_55e4                                ; $55c7: $18 $1b

jr_03c_55c9:
    ld a, c                                       ; $55c9: $79
    sub $07                                       ; $55ca: $d6 $07
    bit 7, a                                      ; $55cc: $cb $7f
    jr z, jr_03c_55d5                             ; $55ce: $28 $05

    ld hl, $549d                                  ; $55d0: $21 $9d $54
    jr jr_03c_55e4                                ; $55d3: $18 $0f

jr_03c_55d5:
    ld a, c                                       ; $55d5: $79
    sub $0b                                       ; $55d6: $d6 $0b
    bit 7, a                                      ; $55d8: $cb $7f
    jr z, jr_03c_55e1                             ; $55da: $28 $05

    ld hl, $54dd                                  ; $55dc: $21 $dd $54
    jr jr_03c_55e4                                ; $55df: $18 $03

jr_03c_55e1:
    ld hl, $551d                                  ; $55e1: $21 $1d $55

jr_03c_55e4:
    ld a, b                                       ; $55e4: $78
    sub $0a                                       ; $55e5: $d6 $0a
    bit 7, a                                      ; $55e7: $cb $7f
    jr nz, jr_03c_560a                            ; $55e9: $20 $1f

    push de                                       ; $55eb: $d5
    ld d, $00                                     ; $55ec: $16 $00
    ld e, $10                                     ; $55ee: $1e $10
    add hl, de                                    ; $55f0: $19
    pop de                                        ; $55f1: $d1
    ld a, b                                       ; $55f2: $78
    sub $0e                                       ; $55f3: $d6 $0e
    jr nz, jr_03c_560a                            ; $55f5: $20 $13

    push de                                       ; $55f7: $d5
    ld d, $00                                     ; $55f8: $16 $00
    ld e, $10                                     ; $55fa: $1e $10
    add hl, de                                    ; $55fc: $19
    pop de                                        ; $55fd: $d1
    ld a, b                                       ; $55fe: $78
    sub $11                                       ; $55ff: $d6 $11
    jr nz, jr_03c_560a                            ; $5601: $20 $07

    push de                                       ; $5603: $d5
    ld d, $00                                     ; $5604: $16 $00
    ld e, $10                                     ; $5606: $1e $10
    add hl, de                                    ; $5608: $19
    pop de                                        ; $5609: $d1

jr_03c_560a:
    ld a, d                                       ; $560a: $7a
    srl a                                         ; $560b: $cb $3f
    srl a                                         ; $560d: $cb $3f
    srl a                                         ; $560f: $cb $3f
    srl a                                         ; $5611: $cb $3f
    ld e, a                                       ; $5613: $5f
    xor a                                         ; $5614: $af
    ld d, a                                       ; $5615: $57
    add hl, de                                    ; $5616: $19
    ld a, [hl]                                    ; $5617: $7e
    pop hl                                        ; $5618: $e1
    pop de                                        ; $5619: $d1
    pop bc                                        ; $561a: $c1
    ret                                           ; $561b: $c9


Call_03c_561c:
    push bc                                       ; $561c: $c5
    push de                                       ; $561d: $d5
    push hl                                       ; $561e: $e5
    ld c, a                                       ; $561f: $4f
    sub $03                                       ; $5620: $d6 $03
    bit 7, a                                      ; $5622: $cb $7f
    jr z, jr_03c_562b                             ; $5624: $28 $05

    ld hl, $535d                                  ; $5626: $21 $5d $53
    jr jr_03c_5646                                ; $5629: $18 $1b

jr_03c_562b:
    ld a, c                                       ; $562b: $79
    sub $07                                       ; $562c: $d6 $07
    bit 7, a                                      ; $562e: $cb $7f
    jr z, jr_03c_5637                             ; $5630: $28 $05

    ld hl, $539d                                  ; $5632: $21 $9d $53
    jr jr_03c_5646                                ; $5635: $18 $0f

jr_03c_5637:
    ld a, c                                       ; $5637: $79
    sub $0b                                       ; $5638: $d6 $0b
    bit 7, a                                      ; $563a: $cb $7f
    jr z, jr_03c_5643                             ; $563c: $28 $05

    ld hl, $53dd                                  ; $563e: $21 $dd $53
    jr jr_03c_5646                                ; $5641: $18 $03

jr_03c_5643:
    ld hl, $541d                                  ; $5643: $21 $1d $54

jr_03c_5646:
    ld a, b                                       ; $5646: $78
    sub $0a                                       ; $5647: $d6 $0a
    bit 7, a                                      ; $5649: $cb $7f
    jr nz, jr_03c_566c                            ; $564b: $20 $1f

    push de                                       ; $564d: $d5
    ld d, $00                                     ; $564e: $16 $00
    ld e, $10                                     ; $5650: $1e $10
    add hl, de                                    ; $5652: $19
    pop de                                        ; $5653: $d1
    ld a, b                                       ; $5654: $78
    sub $0e                                       ; $5655: $d6 $0e
    jr nz, jr_03c_566c                            ; $5657: $20 $13

    push de                                       ; $5659: $d5
    ld d, $00                                     ; $565a: $16 $00
    ld e, $10                                     ; $565c: $1e $10
    add hl, de                                    ; $565e: $19
    pop de                                        ; $565f: $d1
    ld a, b                                       ; $5660: $78
    sub $11                                       ; $5661: $d6 $11
    jr nz, jr_03c_566c                            ; $5663: $20 $07

    push de                                       ; $5665: $d5
    ld d, $00                                     ; $5666: $16 $00
    ld e, $10                                     ; $5668: $1e $10
    add hl, de                                    ; $566a: $19
    pop de                                        ; $566b: $d1

jr_03c_566c:
    ld a, d                                       ; $566c: $7a
    srl a                                         ; $566d: $cb $3f
    srl a                                         ; $566f: $cb $3f
    srl a                                         ; $5671: $cb $3f
    srl a                                         ; $5673: $cb $3f
    ld e, a                                       ; $5675: $5f
    xor a                                         ; $5676: $af
    ld d, a                                       ; $5677: $57
    add hl, de                                    ; $5678: $19
    ld a, [hl]                                    ; $5679: $7e
    pop hl                                        ; $567a: $e1
    pop de                                        ; $567b: $d1
    pop bc                                        ; $567c: $c1
    ret                                           ; $567d: $c9


    push bc                                       ; $567e: $c5
    push de                                       ; $567f: $d5
    push hl                                       ; $5680: $e5
    sub b                                         ; $5681: $90
    bit 7, a                                      ; $5682: $cb $7f
    jr nz, jr_03c_5690                            ; $5684: $20 $0a

    ld d, a                                       ; $5686: $57
    sub $0c                                       ; $5687: $d6 $0c
    bit 7, a                                      ; $5689: $cb $7f
    jr z, jr_03c_5694                             ; $568b: $28 $07

    ld a, d                                       ; $568d: $7a
    jr jr_03c_5696                                ; $568e: $18 $06

jr_03c_5690:
    ld a, $00                                     ; $5690: $3e $00
    jr jr_03c_5696                                ; $5692: $18 $02

jr_03c_5694:
    ld a, $0c                                     ; $5694: $3e $0c

jr_03c_5696:
    pop hl                                        ; $5696: $e1
    pop de                                        ; $5697: $d1
    pop bc                                        ; $5698: $c1
    ret                                           ; $5699: $c9


Call_03c_569a:
    push af                                       ; $569a: $f5
    push bc                                       ; $569b: $c5
    push hl                                       ; $569c: $e5
    push bc                                       ; $569d: $c5
    pop de                                        ; $569e: $d1
    ld a, d                                       ; $569f: $7a
    and $0f                                       ; $56a0: $e6 $0f
    sub $08                                       ; $56a2: $d6 $08
    bit 7, a                                      ; $56a4: $cb $7f
    jr nz, jr_03c_56b0                            ; $56a6: $20 $08

    ld a, d                                       ; $56a8: $7a
    and $f0                                       ; $56a9: $e6 $f0
    add $10                                       ; $56ab: $c6 $10
    ld d, a                                       ; $56ad: $57
    jr jr_03c_56b4                                ; $56ae: $18 $04

jr_03c_56b0:
    ld a, d                                       ; $56b0: $7a
    and $f0                                       ; $56b1: $e6 $f0
    ld d, a                                       ; $56b3: $57

jr_03c_56b4:
    xor a                                         ; $56b4: $af
    ld e, a                                       ; $56b5: $5f
    ld h, a                                       ; $56b6: $67
    ld l, a                                       ; $56b7: $6f
    call Call_000_08ac                            ; $56b8: $cd $ac $08
    push hl                                       ; $56bb: $e5
    pop de                                        ; $56bc: $d1
    ld a, [$c816]                                 ; $56bd: $fa $16 $c8
    ld h, a                                       ; $56c0: $67
    xor a                                         ; $56c1: $af
    ld l, a                                       ; $56c2: $6f
    add hl, de                                    ; $56c3: $19
    push hl                                       ; $56c4: $e5
    pop de                                        ; $56c5: $d1
    pop hl                                        ; $56c6: $e1
    pop bc                                        ; $56c7: $c1
    pop af                                        ; $56c8: $f1
    ret                                           ; $56c9: $c9


Call_03c_56ca:
    ld [$d525], a                                 ; $56ca: $ea $25 $d5
    ld a, b                                       ; $56cd: $78
    ld [$d526], a                                 ; $56ce: $ea $26 $d5
    ld a, c                                       ; $56d1: $79
    ld [$d527], a                                 ; $56d2: $ea $27 $d5
    ld a, d                                       ; $56d5: $7a
    ld [$d528], a                                 ; $56d6: $ea $28 $d5
    ld a, e                                       ; $56d9: $7b
    ld [$d529], a                                 ; $56da: $ea $29 $d5
    ld a, h                                       ; $56dd: $7c
    ld [$d52a], a                                 ; $56de: $ea $2a $d5
    ld a, l                                       ; $56e1: $7d
    ld [$d52b], a                                 ; $56e2: $ea $2b $d5
    ld a, [$c815]                                 ; $56e5: $fa $15 $c8
    cp $00                                        ; $56e8: $fe $00
    jr z, jr_03c_5735                             ; $56ea: $28 $49

    call Call_03c_569a                            ; $56ec: $cd $9a $56
    ld a, [$c815]                                 ; $56ef: $fa $15 $c8
    ld b, a                                       ; $56f2: $47
    ld a, [$d525]                                 ; $56f3: $fa $25 $d5
    call Call_03c_55ba                            ; $56f6: $cd $ba $55
    cp $00                                        ; $56f9: $fe $00
    jr z, jr_03c_5735                             ; $56fb: $28 $38

    ld b, a                                       ; $56fd: $47
    bit 7, a                                      ; $56fe: $cb $7f
    jr z, jr_03c_5704                             ; $5700: $28 $02

    xor a                                         ; $5702: $af
    sub b                                         ; $5703: $90

jr_03c_5704:
    ld hl, $0020                                  ; $5704: $21 $20 $00
    call Call_000_08b9                            ; $5707: $cd $b9 $08
    push hl                                       ; $570a: $e5
    pop de                                        ; $570b: $d1
    ld a, [$d52a]                                 ; $570c: $fa $2a $d5
    ld h, a                                       ; $570f: $67
    ld a, [$d525]                                 ; $5710: $fa $25 $d5
    call Call_03c_4528                            ; $5713: $cd $28 $45
    bit 7, b                                      ; $5716: $cb $78
    jr nz, jr_03c_571d                            ; $5718: $20 $03

    add hl, de                                    ; $571a: $19
    jr jr_03c_5720                                ; $571b: $18 $03

jr_03c_571d:
    call Call_000_08ac                            ; $571d: $cd $ac $08

jr_03c_5720:
    push hl                                       ; $5720: $e5
    pop bc                                        ; $5721: $c1
    call Call_03c_45f9                            ; $5722: $cd $f9 $45
    ld [$d525], a                                 ; $5725: $ea $25 $d5
    push bc                                       ; $5728: $c5
    call Call_03c_453f                            ; $5729: $cd $3f $45
    push hl                                       ; $572c: $e5
    pop bc                                        ; $572d: $c1
    pop de                                        ; $572e: $d1
    call Call_03c_5021                            ; $572f: $cd $21 $50
    ld [$d52a], a                                 ; $5732: $ea $2a $d5

jr_03c_5735:
    ld a, [$d526]                                 ; $5735: $fa $26 $d5
    ld b, a                                       ; $5738: $47
    ld a, [$d527]                                 ; $5739: $fa $27 $d5
    ld c, a                                       ; $573c: $4f
    ld a, [$d528]                                 ; $573d: $fa $28 $d5
    ld d, a                                       ; $5740: $57
    ld a, [$d529]                                 ; $5741: $fa $29 $d5
    ld e, a                                       ; $5744: $5f
    ld a, [$d52a]                                 ; $5745: $fa $2a $d5
    ld h, a                                       ; $5748: $67
    ld a, [$d52b]                                 ; $5749: $fa $2b $d5
    ld l, a                                       ; $574c: $6f
    ld a, [$d525]                                 ; $574d: $fa $25 $d5
    ret                                           ; $5750: $c9


Call_03c_5751:
    ld a, $14                                     ; $5751: $3e $14
    call $4256                                    ; $5753: $cd $56 $42
    ld a, [hl]                                    ; $5756: $7e
    cp $07                                        ; $5757: $fe $07
    jp z, Jump_03c_59c4                           ; $5759: $ca $c4 $59

    call Call_03c_6530                            ; $575c: $cd $30 $65
    push de                                       ; $575f: $d5
    ld a, d                                       ; $5760: $7a
    cp $00                                        ; $5761: $fe $00
    jr z, jr_03c_5775                             ; $5763: $28 $10

    xor a                                         ; $5765: $af
    push af                                       ; $5766: $f5
    call Call_03c_453f                            ; $5767: $cd $3f $45
    push hl                                       ; $576a: $e5
    ld de, $199a                                  ; $576b: $11 $9a $19
    call Call_000_0cb5                            ; $576e: $cd $b5 $0c
    pop de                                        ; $5771: $d1
    add hl, de                                    ; $5772: $19
    jr jr_03c_5783                                ; $5773: $18 $0e

jr_03c_5775:
    call Call_03c_525c                            ; $5775: $cd $5c $52
    ld hl, $d608                                  ; $5778: $21 $08 $d6
    ld [hl], a                                    ; $577b: $77
    call Call_03c_5307                            ; $577c: $cd $07 $53
    push af                                       ; $577f: $f5
    call Call_03c_453f                            ; $5780: $cd $3f $45

jr_03c_5783:
    push hl                                       ; $5783: $e5
    push hl                                       ; $5784: $e5
    pop bc                                        ; $5785: $c1
    call Call_03c_4693                            ; $5786: $cd $93 $46

Jump_03c_5789:
    ld a, [$d545]                                 ; $5789: $fa $45 $d5
    ld c, a                                       ; $578c: $4f
    ld a, [$d546]                                 ; $578d: $fa $46 $d5
    ld b, a                                       ; $5790: $47
    ld a, [$d547]                                 ; $5791: $fa $47 $d5
    ld e, a                                       ; $5794: $5f
    ld a, [$d548]                                 ; $5795: $fa $48 $d5
    ld d, a                                       ; $5798: $57
    call Call_03c_4466                            ; $5799: $cd $66 $44
    push hl                                       ; $579c: $e5
    pop de                                        ; $579d: $d1
    pop bc                                        ; $579e: $c1
    call Call_03c_5021                            ; $579f: $cd $21 $50
    ld h, a                                       ; $57a2: $67
    ld l, $00                                     ; $57a3: $2e $00
    push hl                                       ; $57a5: $e5
    call Call_03c_44fc                            ; $57a6: $cd $fc $44
    pop hl                                        ; $57a9: $e1
    pop af                                        ; $57aa: $f1
    pop de                                        ; $57ab: $d1
    ld [$d54a], a                                 ; $57ac: $ea $4a $d5
    ld a, c                                       ; $57af: $79
    ld [$d54c], a                                 ; $57b0: $ea $4c $d5
    ld a, b                                       ; $57b3: $78
    ld [$d54d], a                                 ; $57b4: $ea $4d $d5
    ld a, e                                       ; $57b7: $7b
    ld [$d54e], a                                 ; $57b8: $ea $4e $d5
    ld a, d                                       ; $57bb: $7a
    ld [$d54f], a                                 ; $57bc: $ea $4f $d5
    ld a, l                                       ; $57bf: $7d
    ld [$d550], a                                 ; $57c0: $ea $50 $d5
    ld a, h                                       ; $57c3: $7c
    ld [$d551], a                                 ; $57c4: $ea $51 $d5
    call Call_03c_63f8                            ; $57c7: $cd $f8 $63
    ld a, e                                       ; $57ca: $7b
    ld [$d54e], a                                 ; $57cb: $ea $4e $d5
    ld a, d                                       ; $57ce: $7a
    ld [$d54f], a                                 ; $57cf: $ea $4f $d5
    ld a, d                                       ; $57d2: $7a
    cp $00                                        ; $57d3: $fe $00
    jr z, jr_03c_57e9                             ; $57d5: $28 $12

    ld a, [$d550]                                 ; $57d7: $fa $50 $d5
    ld l, a                                       ; $57da: $6f
    ld a, [$d551]                                 ; $57db: $fa $51 $d5
    ld h, a                                       ; $57de: $67
    ld h, $3c                                     ; $57df: $26 $3c
    ld a, l                                       ; $57e1: $7d
    ld [$d550], a                                 ; $57e2: $ea $50 $d5
    ld a, h                                       ; $57e5: $7c
    ld [$d551], a                                 ; $57e6: $ea $51 $d5

jr_03c_57e9:
    ld a, [$d54a]                                 ; $57e9: $fa $4a $d5
    call Call_03c_555d                            ; $57ec: $cd $5d $55
    ld a, c                                       ; $57ef: $79
    ld [$d54c], a                                 ; $57f0: $ea $4c $d5
    ld a, b                                       ; $57f3: $78
    ld [$d54d], a                                 ; $57f4: $ea $4d $d5
    ld a, [$d54c]                                 ; $57f7: $fa $4c $d5
    ld c, a                                       ; $57fa: $4f
    ld a, [$d54d]                                 ; $57fb: $fa $4d $d5
    ld b, a                                       ; $57fe: $47
    ld a, [$d54e]                                 ; $57ff: $fa $4e $d5
    ld e, a                                       ; $5802: $5f
    ld a, [$d54f]                                 ; $5803: $fa $4f $d5
    ld d, a                                       ; $5806: $57
    ld a, [$d550]                                 ; $5807: $fa $50 $d5
    ld l, a                                       ; $580a: $6f
    ld a, [$d551]                                 ; $580b: $fa $51 $d5
    ld h, a                                       ; $580e: $67
    ld a, [$d54a]                                 ; $580f: $fa $4a $d5
    call Call_03c_56ca                            ; $5812: $cd $ca $56
    ld [$d54a], a                                 ; $5815: $ea $4a $d5
    ld a, c                                       ; $5818: $79
    ld [$d54c], a                                 ; $5819: $ea $4c $d5
    ld a, b                                       ; $581c: $78
    ld [$d54d], a                                 ; $581d: $ea $4d $d5
    ld a, e                                       ; $5820: $7b
    ld [$d54e], a                                 ; $5821: $ea $4e $d5
    ld a, d                                       ; $5824: $7a
    ld [$d54f], a                                 ; $5825: $ea $4f $d5
    ld a, l                                       ; $5828: $7d
    ld [$d550], a                                 ; $5829: $ea $50 $d5
    ld a, h                                       ; $582c: $7c
    ld [$d551], a                                 ; $582d: $ea $51 $d5
    ld a, [$d550]                                 ; $5830: $fa $50 $d5
    ld l, a                                       ; $5833: $6f
    ld a, [$d551]                                 ; $5834: $fa $51 $d5
    ld h, a                                       ; $5837: $67
    ld a, [$d54a]                                 ; $5838: $fa $4a $d5
    call Call_03c_4f97                            ; $583b: $cd $97 $4f
    cp $00                                        ; $583e: $fe $00
    jr nz, jr_03c_5865                            ; $5840: $20 $23

    ld a, [$d320]                                 ; $5842: $fa $20 $d3
    cp $17                                        ; $5845: $fe $17
    jp z, Jump_03c_58fe                           ; $5847: $ca $fe $58

    ld a, [$d550]                                 ; $584a: $fa $50 $d5
    ld l, a                                       ; $584d: $6f
    ld a, [$d551]                                 ; $584e: $fa $51 $d5
    ld h, a                                       ; $5851: $67
    ld a, [$d54c]                                 ; $5852: $fa $4c $d5
    ld c, a                                       ; $5855: $4f
    ld a, [$d54d]                                 ; $5856: $fa $4d $d5
    ld b, a                                       ; $5859: $47
    ld a, [$d54a]                                 ; $585a: $fa $4a $d5
    call Call_03c_4f30                            ; $585d: $cd $30 $4f
    cp $00                                        ; $5860: $fe $00
    jp z, Jump_03c_58fe                           ; $5862: $ca $fe $58

jr_03c_5865:
    ld a, [$d54a]                                 ; $5865: $fa $4a $d5
    ld [$d54b], a                                 ; $5868: $ea $4b $d5

jr_03c_586b:
    ld a, [$d550]                                 ; $586b: $fa $50 $d5
    ld l, a                                       ; $586e: $6f
    ld a, [$d551]                                 ; $586f: $fa $51 $d5
    ld h, a                                       ; $5872: $67
    ld a, [$d54c]                                 ; $5873: $fa $4c $d5
    ld e, a                                       ; $5876: $5f
    ld a, [$d54d]                                 ; $5877: $fa $4d $d5
    ld d, a                                       ; $587a: $57
    ld a, [$d54a]                                 ; $587b: $fa $4a $d5
    call Call_03c_4c54                            ; $587e: $cd $54 $4c
    cp $00                                        ; $5881: $fe $00
    jr z, jr_03c_58b2                             ; $5883: $28 $2d

jr_03c_5885:
    ld a, [$d54a]                                 ; $5885: $fa $4a $d5
    inc a                                         ; $5888: $3c
    cp $0d                                        ; $5889: $fe $0d
    jr z, jr_03c_58a2                             ; $588b: $28 $15

    ld [$d54a], a                                 ; $588d: $ea $4a $d5
    push af                                       ; $5890: $f5
    ld a, [$d54b]                                 ; $5891: $fa $4b $d5
    ld b, a                                       ; $5894: $47
    pop af                                        ; $5895: $f1
    sub b                                         ; $5896: $90
    sub $03                                       ; $5897: $d6 $03
    jr nz, jr_03c_586b                            ; $5899: $20 $d0

    ld a, $0c                                     ; $589b: $3e $0c
    ld [$d54a], a                                 ; $589d: $ea $4a $d5
    jr jr_03c_586b                                ; $58a0: $18 $c9

jr_03c_58a2:
    ld a, [$d54b]                                 ; $58a2: $fa $4b $d5
    ld [$d54a], a                                 ; $58a5: $ea $4a $d5
    jr jr_03c_58fe                                ; $58a8: $18 $54

    ld a, [$d54c]                                 ; $58aa: $fa $4c $d5
    ld e, a                                       ; $58ad: $5f
    ld a, [$d54d]                                 ; $58ae: $fa $4d $d5
    ld d, a                                       ; $58b1: $57

jr_03c_58b2:
    push de                                       ; $58b2: $d5
    pop bc                                        ; $58b3: $c1
    ld a, $20                                     ; $58b4: $3e $20
    call $4256                                    ; $58b6: $cd $56 $42
    ld a, [hl]                                    ; $58b9: $7e
    cp $00                                        ; $58ba: $fe $00
    jr z, jr_03c_58d9                             ; $58bc: $28 $1b

    ld a, [$d550]                                 ; $58be: $fa $50 $d5
    ld l, a                                       ; $58c1: $6f
    ld a, [$d551]                                 ; $58c2: $fa $51 $d5
    ld h, a                                       ; $58c5: $67
    ld a, [$d54a]                                 ; $58c6: $fa $4a $d5
    call Call_03c_4d0a                            ; $58c9: $cd $0a $4d
    ld a, h                                       ; $58cc: $7c
    cp $ff                                        ; $58cd: $fe $ff
    jr z, jr_03c_5885                             ; $58cf: $28 $b4

    sub $0a                                       ; $58d1: $d6 $0a
    bit 7, a                                      ; $58d3: $cb $7f
    jr nz, jr_03c_5885                            ; $58d5: $20 $ae

    jr jr_03c_58e3                                ; $58d7: $18 $0a

jr_03c_58d9:
    ld a, c                                       ; $58d9: $79
    ld [$d54c], a                                 ; $58da: $ea $4c $d5
    ld a, b                                       ; $58dd: $78
    ld [$d54d], a                                 ; $58de: $ea $4d $d5
    jr jr_03c_58fe                                ; $58e1: $18 $1b

jr_03c_58e3:
    push af                                       ; $58e3: $f5
    ld a, [$d550]                                 ; $58e4: $fa $50 $d5
    ld l, a                                       ; $58e7: $6f
    ld a, [$d551]                                 ; $58e8: $fa $51 $d5
    ld h, a                                       ; $58eb: $67
    pop af                                        ; $58ec: $f1
    ld h, a                                       ; $58ed: $67
    ld a, l                                       ; $58ee: $7d
    ld [$d550], a                                 ; $58ef: $ea $50 $d5
    ld a, h                                       ; $58f2: $7c
    ld [$d551], a                                 ; $58f3: $ea $51 $d5
    ld a, c                                       ; $58f6: $79
    ld [$d54c], a                                 ; $58f7: $ea $4c $d5
    ld a, b                                       ; $58fa: $78
    ld [$d54d], a                                 ; $58fb: $ea $4d $d5

Jump_03c_58fe:
jr_03c_58fe:
    ld a, $20                                     ; $58fe: $3e $20
    call $4256                                    ; $5900: $cd $56 $42
    ld a, [hl]                                    ; $5903: $7e
    cp $00                                        ; $5904: $fe $00
    jr nz, jr_03c_5957                            ; $5906: $20 $4f

    ld hl, $d608                                  ; $5908: $21 $08 $d6
    ld a, [hl]                                    ; $590b: $7e
    cp $00                                        ; $590c: $fe $00
    jr z, jr_03c_591a                             ; $590e: $28 $0a

    cp $01                                        ; $5910: $fe $01
    jr z, jr_03c_591a                             ; $5912: $28 $06

    cp $02                                        ; $5914: $fe $02
    jr z, jr_03c_591a                             ; $5916: $28 $02

    jr jr_03c_5957                                ; $5918: $18 $3d

jr_03c_591a:
    ld a, [$d4cd]                                 ; $591a: $fa $cd $d4
    cp $00                                        ; $591d: $fe $00
    jr z, jr_03c_5923                             ; $591f: $28 $02

    jr jr_03c_5957                                ; $5921: $18 $34

jr_03c_5923:
    ld a, [$d550]                                 ; $5923: $fa $50 $d5
    ld l, a                                       ; $5926: $6f
    ld a, [$d551]                                 ; $5927: $fa $51 $d5
    ld h, a                                       ; $592a: $67
    ld a, [$d54a]                                 ; $592b: $fa $4a $d5
    call Call_03c_4528                            ; $592e: $cd $28 $45
    push hl                                       ; $5931: $e5
    pop de                                        ; $5932: $d1
    ld a, [$d608]                                 ; $5933: $fa $08 $d6
    call Call_03c_453f                            ; $5936: $cd $3f $45
    push hl                                       ; $5939: $e5
    pop bc                                        ; $593a: $c1
    call Call_03c_5021                            ; $593b: $cd $21 $50
    push af                                       ; $593e: $f5
    ld a, [$d550]                                 ; $593f: $fa $50 $d5
    ld l, a                                       ; $5942: $6f
    ld a, [$d551]                                 ; $5943: $fa $51 $d5
    ld h, a                                       ; $5946: $67
    pop af                                        ; $5947: $f1
    ld h, a                                       ; $5948: $67
    ld a, l                                       ; $5949: $7d
    ld [$d550], a                                 ; $594a: $ea $50 $d5
    ld a, h                                       ; $594d: $7c
    ld [$d551], a                                 ; $594e: $ea $51 $d5
    ld a, [$d608]                                 ; $5951: $fa $08 $d6
    ld [$d54a], a                                 ; $5954: $ea $4a $d5

jr_03c_5957:
    ld a, $14                                     ; $5957: $3e $14
    call $4256                                    ; $5959: $cd $56 $42
    ld a, [hl]                                    ; $595c: $7e
    cp $07                                        ; $595d: $fe $07
    jr z, jr_03c_598e                             ; $595f: $28 $2d

    ld a, [$d550]                                 ; $5961: $fa $50 $d5
    ld l, a                                       ; $5964: $6f
    ld a, [$d551]                                 ; $5965: $fa $51 $d5
    ld h, a                                       ; $5968: $67
    call Call_03c_6213                            ; $5969: $cd $13 $62
    ld a, [$d54e]                                 ; $596c: $fa $4e $d5
    ld e, a                                       ; $596f: $5f
    ld a, [$d54f]                                 ; $5970: $fa $4f $d5
    ld d, a                                       ; $5973: $57
    ld a, [$d54a]                                 ; $5974: $fa $4a $d5
    cp $00                                        ; $5977: $fe $00
    jr z, jr_03c_5986                             ; $5979: $28 $0b

    cp $01                                        ; $597b: $fe $01
    jr z, jr_03c_5986                             ; $597d: $28 $07

    cp $02                                        ; $597f: $fe $02
    jr z, jr_03c_5986                             ; $5981: $28 $03

    call Call_03c_62ca                            ; $5983: $cd $ca $62

jr_03c_5986:
    ld a, l                                       ; $5986: $7d
    ld [$d550], a                                 ; $5987: $ea $50 $d5
    ld a, h                                       ; $598a: $7c
    ld [$d551], a                                 ; $598b: $ea $51 $d5

jr_03c_598e:
    ld a, [$d550]                                 ; $598e: $fa $50 $d5
    ld l, a                                       ; $5991: $6f
    ld a, [$d551]                                 ; $5992: $fa $51 $d5
    ld h, a                                       ; $5995: $67
    ld a, h                                       ; $5996: $7c
    sub $0a                                       ; $5997: $d6 $0a
    bit 7, a                                      ; $5999: $cb $7f
    jr z, jr_03c_59a8                             ; $599b: $28 $0b

    ld a, $06                                     ; $599d: $3e $06
    ld h, a                                       ; $599f: $67
    ld a, l                                       ; $59a0: $7d
    ld [$d550], a                                 ; $59a1: $ea $50 $d5
    ld a, h                                       ; $59a4: $7c
    ld [$d551], a                                 ; $59a5: $ea $51 $d5

jr_03c_59a8:
    ld a, [$d550]                                 ; $59a8: $fa $50 $d5
    ld l, a                                       ; $59ab: $6f
    ld a, [$d551]                                 ; $59ac: $fa $51 $d5
    ld h, a                                       ; $59af: $67
    ld a, [$d54e]                                 ; $59b0: $fa $4e $d5
    ld e, a                                       ; $59b3: $5f
    ld a, [$d54f]                                 ; $59b4: $fa $4f $d5
    ld d, a                                       ; $59b7: $57
    ld a, [$d54c]                                 ; $59b8: $fa $4c $d5
    ld c, a                                       ; $59bb: $4f
    ld a, [$d54d]                                 ; $59bc: $fa $4d $d5
    ld b, a                                       ; $59bf: $47
    ld a, [$d54a]                                 ; $59c0: $fa $4a $d5
    ret                                           ; $59c3: $c9


Jump_03c_59c4:
    ld de, $0000                                  ; $59c4: $11 $00 $00
    push de                                       ; $59c7: $d5
    ld a, $0b                                     ; $59c8: $3e $0b
    push af                                       ; $59ca: $f5
    call Call_03c_453f                            ; $59cb: $cd $3f $45
    push hl                                       ; $59ce: $e5
    push hl                                       ; $59cf: $e5
    pop bc                                        ; $59d0: $c1
    call Call_03c_4a51                            ; $59d1: $cd $51 $4a
    ld a, $ee                                     ; $59d4: $3e $ee
    ld [$d549], a                                 ; $59d6: $ea $49 $d5
    jp Jump_03c_5789                              ; $59d9: $c3 $89 $57


Call_03c_59dc:
    ld a, [$d43d]                                 ; $59dc: $fa $3d $d4
    ld [$d545], a                                 ; $59df: $ea $45 $d5
    ld a, [$d43e]                                 ; $59e2: $fa $3e $d4
    ld [$d546], a                                 ; $59e5: $ea $46 $d5
    ld a, [$d43f]                                 ; $59e8: $fa $3f $d4
    ld [$d547], a                                 ; $59eb: $ea $47 $d5
    ld a, [$d440]                                 ; $59ee: $fa $40 $d4
    ld [$d548], a                                 ; $59f1: $ea $48 $d5
    call Call_03c_44fc                            ; $59f4: $cd $fc $44
    call Call_03c_63f8                            ; $59f7: $cd $f8 $63
    push de                                       ; $59fa: $d5
    ld a, $10                                     ; $59fb: $3e $10
    call $4256                                    ; $59fd: $cd $56 $42
    cp $07                                        ; $5a00: $fe $07
    jr z, jr_03c_5a6d                             ; $5a02: $28 $69

    ld a, [$d549]                                 ; $5a04: $fa $49 $d5
    ld b, a                                       ; $5a07: $47
    ld a, [$d325]                                 ; $5a08: $fa $25 $d3
    add b                                         ; $5a0b: $80
    dec a                                         ; $5a0c: $3d
    dec a                                         ; $5a0d: $3d
    ld b, a                                       ; $5a0e: $47
    ld a, $20                                     ; $5a0f: $3e $20
    call $4256                                    ; $5a11: $cd $56 $42
    ld a, [hl]                                    ; $5a14: $7e
    inc a                                         ; $5a15: $3c
    ld c, a                                       ; $5a16: $4f
    ld a, b                                       ; $5a17: $78
    sub c                                         ; $5a18: $91
    bit 7, a                                      ; $5a19: $cb $7f
    jr nz, jr_03c_5a6d                            ; $5a1b: $20 $50

    ld a, $02                                     ; $5a1d: $3e $02
    call Call_03c_63c7                            ; $5a1f: $cd $c7 $63
    ld l, a                                       ; $5a22: $6f
    bit 7, l                                      ; $5a23: $cb $7d
    jr z, jr_03c_5a2b                             ; $5a25: $28 $04

    ld h, $ff                                     ; $5a27: $26 $ff
    jr jr_03c_5a2d                                ; $5a29: $18 $02

jr_03c_5a2b:
    ld h, $00                                     ; $5a2b: $26 $00

jr_03c_5a2d:
    ld a, $20                                     ; $5a2d: $3e $20
    call Call_000_08b9                            ; $5a2f: $cd $b9 $08
    push hl                                       ; $5a32: $e5
    pop de                                        ; $5a33: $d1
    ld a, [$d545]                                 ; $5a34: $fa $45 $d5
    ld l, a                                       ; $5a37: $6f
    ld a, [$d546]                                 ; $5a38: $fa $46 $d5
    ld h, a                                       ; $5a3b: $67
    add hl, de                                    ; $5a3c: $19
    ld a, l                                       ; $5a3d: $7d
    ld [$d545], a                                 ; $5a3e: $ea $45 $d5
    ld a, h                                       ; $5a41: $7c
    ld [$d546], a                                 ; $5a42: $ea $46 $d5
    ld a, $02                                     ; $5a45: $3e $02
    call Call_03c_63c7                            ; $5a47: $cd $c7 $63
    ld l, a                                       ; $5a4a: $6f
    bit 7, l                                      ; $5a4b: $cb $7d
    jr z, jr_03c_5a53                             ; $5a4d: $28 $04

    ld h, $ff                                     ; $5a4f: $26 $ff
    jr jr_03c_5a55                                ; $5a51: $18 $02

jr_03c_5a53:
    ld h, $00                                     ; $5a53: $26 $00

jr_03c_5a55:
    ld a, $20                                     ; $5a55: $3e $20
    call Call_000_08b9                            ; $5a57: $cd $b9 $08
    push hl                                       ; $5a5a: $e5
    pop de                                        ; $5a5b: $d1
    ld a, [$d547]                                 ; $5a5c: $fa $47 $d5
    ld l, a                                       ; $5a5f: $6f
    ld a, [$d548]                                 ; $5a60: $fa $48 $d5
    ld h, a                                       ; $5a63: $67
    add hl, de                                    ; $5a64: $19
    ld a, l                                       ; $5a65: $7d
    ld [$d547], a                                 ; $5a66: $ea $47 $d5
    ld a, h                                       ; $5a69: $7c
    ld [$d548], a                                 ; $5a6a: $ea $48 $d5

jr_03c_5a6d:
    call Call_03c_44fc                            ; $5a6d: $cd $fc $44
    push bc                                       ; $5a70: $c5
    ld a, [$d545]                                 ; $5a71: $fa $45 $d5
    ld c, a                                       ; $5a74: $4f
    ld a, [$d546]                                 ; $5a75: $fa $46 $d5
    ld b, a                                       ; $5a78: $47
    ld a, [$d547]                                 ; $5a79: $fa $47 $d5
    ld e, a                                       ; $5a7c: $5f
    ld a, [$d548]                                 ; $5a7d: $fa $48 $d5
    ld d, a                                       ; $5a80: $57
    call Call_03c_4466                            ; $5a81: $cd $66 $44
    pop bc                                        ; $5a84: $c1
    push de                                       ; $5a85: $d5
    push hl                                       ; $5a86: $e5
    ld a, [$d549]                                 ; $5a87: $fa $49 $d5
    ld d, a                                       ; $5a8a: $57
    ld a, [$d325]                                 ; $5a8b: $fa $25 $d3
    add d                                         ; $5a8e: $82
    dec a                                         ; $5a8f: $3d
    dec a                                         ; $5a90: $3d
    ld d, a                                       ; $5a91: $57
    ld a, $20                                     ; $5a92: $3e $20
    call $4256                                    ; $5a94: $cd $56 $42
    ld a, [hl]                                    ; $5a97: $7e
    inc a                                         ; $5a98: $3c
    ld e, a                                       ; $5a99: $5f
    ld a, d                                       ; $5a9a: $7a
    sub e                                         ; $5a9b: $93
    bit 7, a                                      ; $5a9c: $cb $7f
    jr nz, jr_03c_5aa2                            ; $5a9e: $20 $02

    xor a                                         ; $5aa0: $af
    ld c, a                                       ; $5aa1: $4f

jr_03c_5aa2:
    call Call_03c_5ce4                            ; $5aa2: $cd $e4 $5c
    ld [$d54a], a                                 ; $5aa5: $ea $4a $d5
    pop hl                                        ; $5aa8: $e1
    pop de                                        ; $5aa9: $d1
    cp $0d                                        ; $5aaa: $fe $0d
    jp nz, Jump_03c_5b33                          ; $5aac: $c2 $33 $5b

    push hl                                       ; $5aaf: $e5
    ld de, $fc40                                  ; $5ab0: $11 $40 $fc
    add hl, de                                    ; $5ab3: $19
    bit 7, h                                      ; $5ab4: $cb $7c
    pop hl                                        ; $5ab6: $e1
    jr nz, jr_03c_5ac5                            ; $5ab7: $20 $0c

    ld h, $3c                                     ; $5ab9: $26 $3c
    ld l, $00                                     ; $5abb: $2e $00
    pop de                                        ; $5abd: $d1
    ld d, $02                                     ; $5abe: $16 $02
    ld a, $0b                                     ; $5ac0: $3e $0b
    jp Jump_03c_5b7a                              ; $5ac2: $c3 $7a $5b


jr_03c_5ac5:
    push hl                                       ; $5ac5: $e5
    ld de, $fec0                                  ; $5ac6: $11 $c0 $fe
    add hl, de                                    ; $5ac9: $19
    bit 7, h                                      ; $5aca: $cb $7c
    pop hl                                        ; $5acc: $e1
    jr nz, jr_03c_5afb                            ; $5acd: $20 $2c

    add hl, hl                                    ; $5acf: $29
    srl h                                         ; $5ad0: $cb $3c
    rr l                                          ; $5ad2: $cb $1d
    srl h                                         ; $5ad4: $cb $3c
    rr l                                          ; $5ad6: $cb $1d
    srl h                                         ; $5ad8: $cb $3c
    rr l                                          ; $5ada: $cb $1d
    srl h                                         ; $5adc: $cb $3c
    rr l                                          ; $5ade: $cb $1d
    srl h                                         ; $5ae0: $cb $3c
    rr l                                          ; $5ae2: $cb $1d
    inc l                                         ; $5ae4: $2c
    res 0, l                                      ; $5ae5: $cb $85
    ld a, l                                       ; $5ae7: $7d
    cp $00                                        ; $5ae8: $fe $00
    jr nz, jr_03c_5aee                            ; $5aea: $20 $02

    ld l, $04                                     ; $5aec: $2e $04

jr_03c_5aee:
    ld h, l                                       ; $5aee: $65
    ld l, $00                                     ; $5aef: $2e $00
    pop de                                        ; $5af1: $d1
    ld d, $01                                     ; $5af2: $16 $01
    ld e, $ff                                     ; $5af4: $1e $ff
    ld a, $0d                                     ; $5af6: $3e $0d
    jp Jump_03c_5b7a                              ; $5af8: $c3 $7a $5b


jr_03c_5afb:
    ld d, h                                       ; $5afb: $54
    ld e, l                                       ; $5afc: $5d
    add hl, hl                                    ; $5afd: $29
    add hl, de                                    ; $5afe: $19
    add hl, hl                                    ; $5aff: $29
    srl h                                         ; $5b00: $cb $3c
    rr l                                          ; $5b02: $cb $1d
    srl h                                         ; $5b04: $cb $3c
    rr l                                          ; $5b06: $cb $1d
    srl h                                         ; $5b08: $cb $3c
    rr l                                          ; $5b0a: $cb $1d
    srl h                                         ; $5b0c: $cb $3c
    rr l                                          ; $5b0e: $cb $1d
    srl h                                         ; $5b10: $cb $3c
    rr l                                          ; $5b12: $cb $1d
    inc l                                         ; $5b14: $2c
    res 0, l                                      ; $5b15: $cb $85
    ld a, l                                       ; $5b17: $7d
    cp $00                                        ; $5b18: $fe $00
    jr nz, jr_03c_5b1e                            ; $5b1a: $20 $02

    ld l, $04                                     ; $5b1c: $2e $04

jr_03c_5b1e:
    ld a, l                                       ; $5b1e: $7d
    sub $08                                       ; $5b1f: $d6 $08
    bit 7, a                                      ; $5b21: $cb $7f
    jr z, jr_03c_5b27                             ; $5b23: $28 $02

    ld l, $08                                     ; $5b25: $2e $08

jr_03c_5b27:
    ld h, l                                       ; $5b27: $65
    ld l, $00                                     ; $5b28: $2e $00
    pop de                                        ; $5b2a: $d1
    ld d, $00                                     ; $5b2b: $16 $00
    ld e, $ff                                     ; $5b2d: $1e $ff
    ld a, $0d                                     ; $5b2f: $3e $0d
    jr jr_03c_5b7a                                ; $5b31: $18 $47

Jump_03c_5b33:
    push hl                                       ; $5b33: $e5
    ld de, $fc40                                  ; $5b34: $11 $40 $fc
    add hl, de                                    ; $5b37: $19
    bit 7, h                                      ; $5b38: $cb $7c
    pop hl                                        ; $5b3a: $e1
    jr nz, jr_03c_5b5c                            ; $5b3b: $20 $1f

    srl h                                         ; $5b3d: $cb $3c
    rr l                                          ; $5b3f: $cb $1d
    srl h                                         ; $5b41: $cb $3c
    rr l                                          ; $5b43: $cb $1d
    srl h                                         ; $5b45: $cb $3c
    rr l                                          ; $5b47: $cb $1d
    srl h                                         ; $5b49: $cb $3c
    rr l                                          ; $5b4b: $cb $1d
    srl h                                         ; $5b4d: $cb $3c
    rr l                                          ; $5b4f: $cb $1d
    inc l                                         ; $5b51: $2c
    res 0, l                                      ; $5b52: $cb $85
    ld h, l                                       ; $5b54: $65
    ld l, $00                                     ; $5b55: $2e $00
    pop de                                        ; $5b57: $d1
    ld d, $02                                     ; $5b58: $16 $02
    jr jr_03c_5b7a                                ; $5b5a: $18 $1e

jr_03c_5b5c:
    add hl, hl                                    ; $5b5c: $29
    srl h                                         ; $5b5d: $cb $3c
    rr l                                          ; $5b5f: $cb $1d
    srl h                                         ; $5b61: $cb $3c
    rr l                                          ; $5b63: $cb $1d
    srl h                                         ; $5b65: $cb $3c
    rr l                                          ; $5b67: $cb $1d
    srl h                                         ; $5b69: $cb $3c
    rr l                                          ; $5b6b: $cb $1d
    srl h                                         ; $5b6d: $cb $3c
    rr l                                          ; $5b6f: $cb $1d
    inc l                                         ; $5b71: $2c
    res 0, l                                      ; $5b72: $cb $85
    ld h, l                                       ; $5b74: $65
    ld l, $00                                     ; $5b75: $2e $00
    pop de                                        ; $5b77: $d1
    ld d, $03                                     ; $5b78: $16 $03

Jump_03c_5b7a:
jr_03c_5b7a:
    ld a, c                                       ; $5b7a: $79
    ld [$d54c], a                                 ; $5b7b: $ea $4c $d5
    ld a, b                                       ; $5b7e: $78
    ld [$d54d], a                                 ; $5b7f: $ea $4d $d5
    ld a, e                                       ; $5b82: $7b
    ld [$d54e], a                                 ; $5b83: $ea $4e $d5
    ld a, d                                       ; $5b86: $7a
    ld [$d54f], a                                 ; $5b87: $ea $4f $d5
    ld a, l                                       ; $5b8a: $7d
    ld [$d550], a                                 ; $5b8b: $ea $50 $d5
    ld a, h                                       ; $5b8e: $7c
    ld [$d551], a                                 ; $5b8f: $ea $51 $d5
    ld a, [$d4cd]                                 ; $5b92: $fa $cd $d4
    cp $02                                        ; $5b95: $fe $02
    jr z, jr_03c_5c08                             ; $5b97: $28 $6f

    cp $0c                                        ; $5b99: $fe $0c
    jr z, jr_03c_5c08                             ; $5b9b: $28 $6b

    cp $01                                        ; $5b9d: $fe $01
    jr z, jr_03c_5c08                             ; $5b9f: $28 $67

    cp $05                                        ; $5ba1: $fe $05
    jr z, jr_03c_5c08                             ; $5ba3: $28 $63

    cp $09                                        ; $5ba5: $fe $09
    jr z, jr_03c_5c08                             ; $5ba7: $28 $5f

jr_03c_5ba9:
    call Call_03c_6213                            ; $5ba9: $cd $13 $62
    ld a, [$d550]                                 ; $5bac: $fa $50 $d5
    ld c, a                                       ; $5baf: $4f
    ld a, [$d551]                                 ; $5bb0: $fa $51 $d5
    ld b, a                                       ; $5bb3: $47
    ld b, h                                       ; $5bb4: $44
    ld a, c                                       ; $5bb5: $79
    ld [$d550], a                                 ; $5bb6: $ea $50 $d5
    ld a, b                                       ; $5bb9: $78
    ld [$d551], a                                 ; $5bba: $ea $51 $d5
    ld a, [$d54c]                                 ; $5bbd: $fa $4c $d5
    ld c, a                                       ; $5bc0: $4f
    ld a, [$d54d]                                 ; $5bc1: $fa $4d $d5
    ld b, a                                       ; $5bc4: $47
    ld a, [$d54e]                                 ; $5bc5: $fa $4e $d5
    ld e, a                                       ; $5bc8: $5f
    ld a, [$d54f]                                 ; $5bc9: $fa $4f $d5
    ld d, a                                       ; $5bcc: $57
    ld a, [$d550]                                 ; $5bcd: $fa $50 $d5
    ld l, a                                       ; $5bd0: $6f
    ld a, [$d551]                                 ; $5bd1: $fa $51 $d5
    ld h, a                                       ; $5bd4: $67
    ld a, [$d54a]                                 ; $5bd5: $fa $4a $d5
    call Call_03c_62ca                            ; $5bd8: $cd $ca $62
    ld a, [$d550]                                 ; $5bdb: $fa $50 $d5
    ld c, a                                       ; $5bde: $4f
    ld a, [$d551]                                 ; $5bdf: $fa $51 $d5
    ld b, a                                       ; $5be2: $47
    ld c, l                                       ; $5be3: $4d
    ld a, c                                       ; $5be4: $79
    ld [$d550], a                                 ; $5be5: $ea $50 $d5
    ld a, b                                       ; $5be8: $78
    ld [$d551], a                                 ; $5be9: $ea $51 $d5
    ld a, [$d54c]                                 ; $5bec: $fa $4c $d5
    ld c, a                                       ; $5bef: $4f
    ld a, [$d54d]                                 ; $5bf0: $fa $4d $d5
    ld b, a                                       ; $5bf3: $47
    ld a, [$d54e]                                 ; $5bf4: $fa $4e $d5
    ld e, a                                       ; $5bf7: $5f
    ld a, [$d54f]                                 ; $5bf8: $fa $4f $d5
    ld d, a                                       ; $5bfb: $57
    ld a, [$d550]                                 ; $5bfc: $fa $50 $d5
    ld l, a                                       ; $5bff: $6f
    ld a, [$d551]                                 ; $5c00: $fa $51 $d5
    ld h, a                                       ; $5c03: $67
    ld a, [$d54a]                                 ; $5c04: $fa $4a $d5
    ret                                           ; $5c07: $c9


jr_03c_5c08:
    ld a, h                                       ; $5c08: $7c
    sra a                                         ; $5c09: $cb $2f
    sra a                                         ; $5c0b: $cb $2f
    add h                                         ; $5c0d: $84
    ld h, a                                       ; $5c0e: $67
    sub $3d                                       ; $5c0f: $d6 $3d
    bit 7, a                                      ; $5c11: $cb $7f
    jr nz, jr_03c_5c18                            ; $5c13: $20 $03

    ld a, $3c                                     ; $5c15: $3e $3c
    ld h, a                                       ; $5c17: $67

jr_03c_5c18:
    ld a, l                                       ; $5c18: $7d
    ld [$d550], a                                 ; $5c19: $ea $50 $d5
    ld a, h                                       ; $5c1c: $7c
    ld [$d551], a                                 ; $5c1d: $ea $51 $d5
    jr jr_03c_5ba9                                ; $5c20: $18 $87

Call_03c_5c22:
    push bc                                       ; $5c22: $c5
    push de                                       ; $5c23: $d5
    push hl                                       ; $5c24: $e5
    ld a, $ff                                     ; $5c25: $3e $ff
    ld hl, $d592                                  ; $5c27: $21 $92 $d5
    ld [hl+], a                                   ; $5c2a: $22
    ld [hl+], a                                   ; $5c2b: $22
    ld [hl+], a                                   ; $5c2c: $22
    ld [hl], a                                    ; $5c2d: $77
    rst $18                                       ; $5c2e: $df
    ld [$df10], sp                                ; $5c2f: $08 $10 $df
    inc b                                         ; $5c32: $04
    db $10                                        ; $5c33: $10
    ld a, c                                       ; $5c34: $79
    ld [$d525], a                                 ; $5c35: $ea $25 $d5
    ld a, b                                       ; $5c38: $78
    ld [$d526], a                                 ; $5c39: $ea $26 $d5
    ld a, l                                       ; $5c3c: $7d
    ld [$d527], a                                 ; $5c3d: $ea $27 $d5
    ld a, h                                       ; $5c40: $7c
    ld [$d528], a                                 ; $5c41: $ea $28 $d5
    xor a                                         ; $5c44: $af
    ld h, a                                       ; $5c45: $67
    ld l, a                                       ; $5c46: $6f
    ld a, l                                       ; $5c47: $7d
    ld [$d529], a                                 ; $5c48: $ea $29 $d5
    ld a, h                                       ; $5c4b: $7c
    ld [$d52a], a                                 ; $5c4c: $ea $2a $d5

Jump_03c_5c4f:
    ld a, [$d529]                                 ; $5c4f: $fa $29 $d5
    ld l, a                                       ; $5c52: $6f
    ld a, [$d52a]                                 ; $5c53: $fa $2a $d5
    ld h, a                                       ; $5c56: $67
    push hl                                       ; $5c57: $e5
    ld a, [$d527]                                 ; $5c58: $fa $27 $d5
    ld e, a                                       ; $5c5b: $5f
    ld a, [$d528]                                 ; $5c5c: $fa $28 $d5
    ld d, a                                       ; $5c5f: $57
    call Call_000_08ac                            ; $5c60: $cd $ac $08
    bit 7, h                                      ; $5c63: $cb $7c
    pop hl                                        ; $5c65: $e1
    jr z, jr_03c_5cdf                             ; $5c66: $28 $77

    ld a, [$d525]                                 ; $5c68: $fa $25 $d5
    ld c, a                                       ; $5c6b: $4f
    ld a, [$d526]                                 ; $5c6c: $fa $26 $d5
    ld b, a                                       ; $5c6f: $47
    call Call_000_11ba                            ; $5c70: $cd $ba $11
    push hl                                       ; $5c73: $e5
    ld hl, $d401                                  ; $5c74: $21 $01 $d4
    ld a, [hl+]                                   ; $5c77: $2a
    ld b, [hl]                                    ; $5c78: $46
    ld c, a                                       ; $5c79: $4f
    pop hl                                        ; $5c7a: $e1
    add hl, bc                                    ; $5c7b: $09
    push hl                                       ; $5c7c: $e5
    ld hl, $d404                                  ; $5c7d: $21 $04 $d4
    ld a, [hl+]                                   ; $5c80: $2a
    ld h, [hl]                                    ; $5c81: $66
    ld l, a                                       ; $5c82: $6f
    add hl, de                                    ; $5c83: $19
    push hl                                       ; $5c84: $e5
    pop de                                        ; $5c85: $d1
    pop hl                                        ; $5c86: $e1
    push hl                                       ; $5c87: $e5
    push de                                       ; $5c88: $d5
    push bc                                       ; $5c89: $c5
    call Call_03c_4564                            ; $5c8a: $cd $64 $45
    pop bc                                        ; $5c8d: $c1
    pop de                                        ; $5c8e: $d1
    pop hl                                        ; $5c8f: $e1
    cp $00                                        ; $5c90: $fe $00
    jr z, jr_03c_5cc4                             ; $5c92: $28 $30

    cp $06                                        ; $5c94: $fe $06
    jr z, jr_03c_5ca2                             ; $5c96: $28 $0a

    cp $0a                                        ; $5c98: $fe $0a
    jr z, jr_03c_5ca2                             ; $5c9a: $28 $06

    cp $09                                        ; $5c9c: $fe $09
    jr z, jr_03c_5ca2                             ; $5c9e: $28 $02

    jr jr_03c_5cdb                                ; $5ca0: $18 $39

jr_03c_5ca2:
    ld a, [$d592]                                 ; $5ca2: $fa $92 $d5
    ld c, a                                       ; $5ca5: $4f
    ld a, [$d593]                                 ; $5ca6: $fa $93 $d5
    ld b, a                                       ; $5ca9: $47
    ld a, b                                       ; $5caa: $78
    cp $ff                                        ; $5cab: $fe $ff
    jr nz, jr_03c_5cc4                            ; $5cad: $20 $15

    ld a, c                                       ; $5caf: $79
    cp $ff                                        ; $5cb0: $fe $ff
    jr nz, jr_03c_5cc4                            ; $5cb2: $20 $10

    ld a, l                                       ; $5cb4: $7d
    ld [$d592], a                                 ; $5cb5: $ea $92 $d5
    ld a, h                                       ; $5cb8: $7c
    ld [$d593], a                                 ; $5cb9: $ea $93 $d5
    ld a, e                                       ; $5cbc: $7b
    ld [$d594], a                                 ; $5cbd: $ea $94 $d5
    ld a, d                                       ; $5cc0: $7a
    ld [$d595], a                                 ; $5cc1: $ea $95 $d5

jr_03c_5cc4:
    ld a, [$d529]                                 ; $5cc4: $fa $29 $d5
    ld l, a                                       ; $5cc7: $6f
    ld a, [$d52a]                                 ; $5cc8: $fa $2a $d5
    ld h, a                                       ; $5ccb: $67
    ld de, $0010                                  ; $5ccc: $11 $10 $00
    add hl, de                                    ; $5ccf: $19
    ld a, l                                       ; $5cd0: $7d
    ld [$d529], a                                 ; $5cd1: $ea $29 $d5
    ld a, h                                       ; $5cd4: $7c
    ld [$d52a], a                                 ; $5cd5: $ea $2a $d5
    jp Jump_03c_5c4f                              ; $5cd8: $c3 $4f $5c


jr_03c_5cdb:
    ld a, $01                                     ; $5cdb: $3e $01
    jr jr_03c_5ce0                                ; $5cdd: $18 $01

jr_03c_5cdf:
    xor a                                         ; $5cdf: $af

jr_03c_5ce0:
    pop hl                                        ; $5ce0: $e1
    pop de                                        ; $5ce1: $d1
    pop bc                                        ; $5ce2: $c1
    ret                                           ; $5ce3: $c9


Call_03c_5ce4:
    push bc                                       ; $5ce4: $c5
    push de                                       ; $5ce5: $d5
    push hl                                       ; $5ce6: $e5
    rst $18                                       ; $5ce7: $df
    inc [hl]                                      ; $5ce8: $34
    db $10                                        ; $5ce9: $10
    cp $02                                        ; $5cea: $fe $02
    jr nz, jr_03c_5cf3                            ; $5cec: $20 $05

    ld a, $0c                                     ; $5cee: $3e $0c
    jp Jump_03c_5d5c                              ; $5cf0: $c3 $5c $5d


jr_03c_5cf3:
    cp $00                                        ; $5cf3: $fe $00
    jr z, jr_03c_5cfd                             ; $5cf5: $28 $06

    cp $0a                                        ; $5cf7: $fe $0a
    jr z, jr_03c_5cfd                             ; $5cf9: $28 $02

    jr jr_03c_5d56                                ; $5cfb: $18 $59

jr_03c_5cfd:
    call Call_03c_5c22                            ; $5cfd: $cd $22 $5c
    cp $00                                        ; $5d00: $fe $00
    jr nz, jr_03c_5d56                            ; $5d02: $20 $52

    ld a, [$d592]                                 ; $5d04: $fa $92 $d5
    ld c, a                                       ; $5d07: $4f
    ld a, [$d593]                                 ; $5d08: $fa $93 $d5
    ld b, a                                       ; $5d0b: $47
    ld a, [$d594]                                 ; $5d0c: $fa $94 $d5
    ld e, a                                       ; $5d0f: $5f
    ld a, [$d595]                                 ; $5d10: $fa $95 $d5
    ld d, a                                       ; $5d13: $57
    call Call_03c_4466                            ; $5d14: $cd $66 $44
    ld de, $0020                                  ; $5d17: $11 $20 $00
    call Call_000_08ac                            ; $5d1a: $cd $ac $08
    bit 7, h                                      ; $5d1d: $cb $7c
    jr nz, jr_03c_5d5a                            ; $5d1f: $20 $39

    ld a, h                                       ; $5d21: $7c
    cp $00                                        ; $5d22: $fe $00
    jr nz, jr_03c_5d2d                            ; $5d24: $20 $07

    ld a, l                                       ; $5d26: $7d
    cp $00                                        ; $5d27: $fe $00
    jr nz, jr_03c_5d2d                            ; $5d29: $20 $02

    jr jr_03c_5d5a                                ; $5d2b: $18 $2d

jr_03c_5d2d:
    ld a, [$d43d]                                 ; $5d2d: $fa $3d $d4
    ld c, a                                       ; $5d30: $4f
    ld a, [$d43e]                                 ; $5d31: $fa $3e $d4
    ld b, a                                       ; $5d34: $47
    ld a, [$d43f]                                 ; $5d35: $fa $3f $d4
    ld e, a                                       ; $5d38: $5f
    ld a, [$d440]                                 ; $5d39: $fa $40 $d4
    ld d, a                                       ; $5d3c: $57
    call Call_03c_4466                            ; $5d3d: $cd $66 $44
    ld de, $0020                                  ; $5d40: $11 $20 $00
    call Call_000_09ae                            ; $5d43: $cd $ae $09
    push hl                                       ; $5d46: $e5
    ld a, $10                                     ; $5d47: $3e $10
    call $4256                                    ; $5d49: $cd $56 $42
    ld a, [hl]                                    ; $5d4c: $7e
    call Call_03c_438a                            ; $5d4d: $cd $8a $43
    pop hl                                        ; $5d50: $e1
    call Call_03c_5d60                            ; $5d51: $cd $60 $5d
    jr jr_03c_5d5c                                ; $5d54: $18 $06

jr_03c_5d56:
    ld a, $0b                                     ; $5d56: $3e $0b
    jr jr_03c_5d5c                                ; $5d58: $18 $02

jr_03c_5d5a:
    ld a, $0d                                     ; $5d5a: $3e $0d

Jump_03c_5d5c:
jr_03c_5d5c:
    pop hl                                        ; $5d5c: $e1
    pop de                                        ; $5d5d: $d1
    pop bc                                        ; $5d5e: $c1
    ret                                           ; $5d5f: $c9


Call_03c_5d60:
    push bc                                       ; $5d60: $c5
    push de                                       ; $5d61: $d5
    push hl                                       ; $5d62: $e5
    push hl                                       ; $5d63: $e5
    pop bc                                        ; $5d64: $c1
    ld hl, $4344                                  ; $5d65: $21 $44 $43

jr_03c_5d68:
    cp $00                                        ; $5d68: $fe $00
    jr z, jr_03c_5d74                             ; $5d6a: $28 $08

    ld e, $08                                     ; $5d6c: $1e $08
    ld d, $00                                     ; $5d6e: $16 $00
    add hl, de                                    ; $5d70: $19
    dec a                                         ; $5d71: $3d
    jr jr_03c_5d68                                ; $5d72: $18 $f4

jr_03c_5d74:
    xor a                                         ; $5d74: $af

jr_03c_5d75:
    cp $04                                        ; $5d75: $fe $04
    jr z, jr_03c_5d97                             ; $5d77: $28 $1e

    push af                                       ; $5d79: $f5
    push hl                                       ; $5d7a: $e5
    ld a, [hl+]                                   ; $5d7b: $2a
    ld d, [hl]                                    ; $5d7c: $56
    ld e, a                                       ; $5d7d: $5f
    pop hl                                        ; $5d7e: $e1
    call Call_03c_4404                            ; $5d7f: $cd $04 $44
    cp $02                                        ; $5d82: $fe $02
    jr nz, jr_03c_5d91                            ; $5d84: $20 $0b

    pop af                                        ; $5d86: $f1
    ld hl, $435c                                  ; $5d87: $21 $5c $43
    ld e, a                                       ; $5d8a: $5f
    xor a                                         ; $5d8b: $af
    ld d, a                                       ; $5d8c: $57
    add hl, de                                    ; $5d8d: $19
    ld a, [hl]                                    ; $5d8e: $7e
    jr jr_03c_5d99                                ; $5d8f: $18 $08

jr_03c_5d91:
    pop af                                        ; $5d91: $f1
    inc a                                         ; $5d92: $3c
    inc hl                                        ; $5d93: $23
    inc hl                                        ; $5d94: $23
    jr jr_03c_5d75                                ; $5d95: $18 $de

jr_03c_5d97:
    ld a, $0b                                     ; $5d97: $3e $0b

jr_03c_5d99:
    pop hl                                        ; $5d99: $e1
    pop de                                        ; $5d9a: $d1
    pop bc                                        ; $5d9b: $c1
    ret                                           ; $5d9c: $c9


    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    nop                                           ; $5d9f: $00
    rst $38                                       ; $5da0: $ff
    db $fd                                        ; $5da1: $fd
    ei                                            ; $5da2: $fb
    cp $fb                                        ; $5da3: $fe $fb
    rst $30                                       ; $5da5: $f7
    db $fd                                        ; $5da6: $fd
    ld hl, sp-$0d                                 ; $5da7: $f8 $f3
    db $fc                                        ; $5da9: $fc
    push af                                       ; $5daa: $f5
    pop af                                        ; $5dab: $f1
    db $fd                                        ; $5dac: $fd
    ld hl, sp-$0d                                 ; $5dad: $f8 $f3
    cp $fb                                        ; $5daf: $fe $fb
    rst $30                                       ; $5db1: $f7
    rst $38                                       ; $5db2: $ff
    db $fd                                        ; $5db3: $fd
    ei                                            ; $5db4: $fb
    nop                                           ; $5db5: $00
    nop                                           ; $5db6: $00
    nop                                           ; $5db7: $00
    ld bc, $0503                                  ; $5db8: $01 $03 $05
    ld [bc], a                                    ; $5dbb: $02
    dec b                                         ; $5dbc: $05
    add hl, bc                                    ; $5dbd: $09
    inc bc                                        ; $5dbe: $03
    ld [$040d], sp                                ; $5dbf: $08 $0d $04
    dec bc                                        ; $5dc2: $0b
    rrca                                          ; $5dc3: $0f
    inc bc                                        ; $5dc4: $03
    ld [$020d], sp                                ; $5dc5: $08 $0d $02
    dec b                                         ; $5dc8: $05
    add hl, bc                                    ; $5dc9: $09
    ld bc, $0503                                  ; $5dca: $01 $03 $05

Call_03c_5dcd:
    ld a, [$d43d]                                 ; $5dcd: $fa $3d $d4
    ld [$d545], a                                 ; $5dd0: $ea $45 $d5
    ld a, [$d43e]                                 ; $5dd3: $fa $3e $d4
    ld [$d546], a                                 ; $5dd6: $ea $46 $d5
    ld a, [$d43f]                                 ; $5dd9: $fa $3f $d4
    ld [$d547], a                                 ; $5ddc: $ea $47 $d5
    ld a, [$d440]                                 ; $5ddf: $fa $40 $d4
    ld [$d548], a                                 ; $5de2: $ea $48 $d5
    rst $18                                       ; $5de5: $df
    inc b                                         ; $5de6: $04
    db $10                                        ; $5de7: $10
    push hl                                       ; $5de8: $e5
    pop de                                        ; $5de9: $d1
    ld bc, $0040                                  ; $5dea: $01 $40 $00
    call Call_03c_4404                            ; $5ded: $cd $04 $44
    cp $01                                        ; $5df0: $fe $01
    jr z, jr_03c_5e68                             ; $5df2: $28 $74

    ld a, [$d549]                                 ; $5df4: $fa $49 $d5
    ld b, a                                       ; $5df7: $47
    ld a, [$d325]                                 ; $5df8: $fa $25 $d3
    add b                                         ; $5dfb: $80
    ld b, a                                       ; $5dfc: $47
    ld a, $10                                     ; $5dfd: $3e $10
    call $4256                                    ; $5dff: $cd $56 $42
    cp $07                                        ; $5e02: $fe $07
    jr z, jr_03c_5e68                             ; $5e04: $28 $62

    ld a, $20                                     ; $5e06: $3e $20
    call $4256                                    ; $5e08: $cd $56 $42
    ld a, [hl]                                    ; $5e0b: $7e
    inc a                                         ; $5e0c: $3c
    ld c, a                                       ; $5e0d: $4f
    ld a, b                                       ; $5e0e: $78
    sub c                                         ; $5e0f: $91
    bit 7, a                                      ; $5e10: $cb $7f
    jr nz, jr_03c_5e68                            ; $5e12: $20 $54

    cp $00                                        ; $5e14: $fe $00
    jr z, jr_03c_5e68                             ; $5e16: $28 $50

    ld a, $02                                     ; $5e18: $3e $02
    call Call_03c_63c7                            ; $5e1a: $cd $c7 $63
    ld l, a                                       ; $5e1d: $6f
    bit 7, l                                      ; $5e1e: $cb $7d
    jr z, jr_03c_5e26                             ; $5e20: $28 $04

    ld h, $ff                                     ; $5e22: $26 $ff
    jr jr_03c_5e28                                ; $5e24: $18 $02

jr_03c_5e26:
    ld h, $00                                     ; $5e26: $26 $00

jr_03c_5e28:
    ld a, $10                                     ; $5e28: $3e $10
    call Call_000_08b9                            ; $5e2a: $cd $b9 $08
    push hl                                       ; $5e2d: $e5
    pop de                                        ; $5e2e: $d1
    ld a, [$d545]                                 ; $5e2f: $fa $45 $d5
    ld l, a                                       ; $5e32: $6f
    ld a, [$d546]                                 ; $5e33: $fa $46 $d5
    ld h, a                                       ; $5e36: $67
    add hl, de                                    ; $5e37: $19
    ld a, l                                       ; $5e38: $7d
    ld [$d545], a                                 ; $5e39: $ea $45 $d5
    ld a, h                                       ; $5e3c: $7c
    ld [$d546], a                                 ; $5e3d: $ea $46 $d5
    ld a, $02                                     ; $5e40: $3e $02
    call Call_03c_63c7                            ; $5e42: $cd $c7 $63
    ld l, a                                       ; $5e45: $6f
    bit 7, l                                      ; $5e46: $cb $7d
    jr z, jr_03c_5e4e                             ; $5e48: $28 $04

    ld h, $ff                                     ; $5e4a: $26 $ff
    jr jr_03c_5e50                                ; $5e4c: $18 $02

jr_03c_5e4e:
    ld h, $00                                     ; $5e4e: $26 $00

jr_03c_5e50:
    ld a, $10                                     ; $5e50: $3e $10
    call Call_000_08b9                            ; $5e52: $cd $b9 $08
    push hl                                       ; $5e55: $e5
    pop de                                        ; $5e56: $d1
    ld a, [$d547]                                 ; $5e57: $fa $47 $d5
    ld l, a                                       ; $5e5a: $6f
    ld a, [$d548]                                 ; $5e5b: $fa $48 $d5
    ld h, a                                       ; $5e5e: $67
    add hl, de                                    ; $5e5f: $19
    ld a, l                                       ; $5e60: $7d
    ld [$d547], a                                 ; $5e61: $ea $47 $d5
    ld a, h                                       ; $5e64: $7c
    ld [$d548], a                                 ; $5e65: $ea $48 $d5

jr_03c_5e68:
    call Call_03c_44fc                            ; $5e68: $cd $fc $44
    push bc                                       ; $5e6b: $c5
    ld a, [$d545]                                 ; $5e6c: $fa $45 $d5
    ld c, a                                       ; $5e6f: $4f
    ld a, [$d546]                                 ; $5e70: $fa $46 $d5
    ld b, a                                       ; $5e73: $47
    ld a, [$d547]                                 ; $5e74: $fa $47 $d5
    ld e, a                                       ; $5e77: $5f
    ld a, [$d548]                                 ; $5e78: $fa $48 $d5
    ld d, a                                       ; $5e7b: $57
    call Call_03c_4466                            ; $5e7c: $cd $66 $44
    pop bc                                        ; $5e7f: $c1
    push hl                                       ; $5e80: $e5
    ld de, $fc40                                  ; $5e81: $11 $40 $fc
    add hl, de                                    ; $5e84: $19
    bit 7, h                                      ; $5e85: $cb $7c
    pop hl                                        ; $5e87: $e1
    jr nz, jr_03c_5e97                            ; $5e88: $20 $0d

    ld h, $3c                                     ; $5e8a: $26 $3c
    ld l, $00                                     ; $5e8c: $2e $00
    ld d, $01                                     ; $5e8e: $16 $01
    ld e, $ff                                     ; $5e90: $1e $ff
    ld a, $0d                                     ; $5e92: $3e $0d
    jp Jump_03c_5f18                              ; $5e94: $c3 $18 $5f


jr_03c_5e97:
    push hl                                       ; $5e97: $e5
    ld de, $fee0                                  ; $5e98: $11 $e0 $fe
    add hl, de                                    ; $5e9b: $19
    bit 7, h                                      ; $5e9c: $cb $7c
    pop hl                                        ; $5e9e: $e1
    jr nz, jr_03c_5ecc                            ; $5e9f: $20 $2b

    add hl, hl                                    ; $5ea1: $29
    srl h                                         ; $5ea2: $cb $3c
    rr l                                          ; $5ea4: $cb $1d
    srl h                                         ; $5ea6: $cb $3c
    rr l                                          ; $5ea8: $cb $1d
    srl h                                         ; $5eaa: $cb $3c
    rr l                                          ; $5eac: $cb $1d
    srl h                                         ; $5eae: $cb $3c
    rr l                                          ; $5eb0: $cb $1d
    srl h                                         ; $5eb2: $cb $3c
    rr l                                          ; $5eb4: $cb $1d
    inc l                                         ; $5eb6: $2c
    res 0, l                                      ; $5eb7: $cb $85
    ld a, l                                       ; $5eb9: $7d
    cp $00                                        ; $5eba: $fe $00
    jr nz, jr_03c_5ec0                            ; $5ebc: $20 $02

    ld l, $04                                     ; $5ebe: $2e $04

jr_03c_5ec0:
    ld h, l                                       ; $5ec0: $65
    ld l, $00                                     ; $5ec1: $2e $00
    ld d, $01                                     ; $5ec3: $16 $01
    ld e, $ff                                     ; $5ec5: $1e $ff
    ld a, $0d                                     ; $5ec7: $3e $0d
    jp Jump_03c_5f18                              ; $5ec9: $c3 $18 $5f


jr_03c_5ecc:
    ld d, h                                       ; $5ecc: $54
    ld e, l                                       ; $5ecd: $5d
    add hl, hl                                    ; $5ece: $29
    add hl, de                                    ; $5ecf: $19
    add hl, hl                                    ; $5ed0: $29
    srl d                                         ; $5ed1: $cb $3a
    rr e                                          ; $5ed3: $cb $1b
    add hl, de                                    ; $5ed5: $19
    srl d                                         ; $5ed6: $cb $3a
    rr e                                          ; $5ed8: $cb $1b
    srl d                                         ; $5eda: $cb $3a
    rr e                                          ; $5edc: $cb $1b
    add hl, de                                    ; $5ede: $19
    srl h                                         ; $5edf: $cb $3c
    rr l                                          ; $5ee1: $cb $1d
    srl h                                         ; $5ee3: $cb $3c
    rr l                                          ; $5ee5: $cb $1d
    srl h                                         ; $5ee7: $cb $3c
    rr l                                          ; $5ee9: $cb $1d
    srl h                                         ; $5eeb: $cb $3c
    rr l                                          ; $5eed: $cb $1d
    srl h                                         ; $5eef: $cb $3c
    rr l                                          ; $5ef1: $cb $1d
    inc l                                         ; $5ef3: $2c
    res 0, l                                      ; $5ef4: $cb $85
    ld a, l                                       ; $5ef6: $7d
    cp $00                                        ; $5ef7: $fe $00
    jr nz, jr_03c_5efd                            ; $5ef9: $20 $02

    ld l, $04                                     ; $5efb: $2e $04

jr_03c_5efd:
    ld a, l                                       ; $5efd: $7d
    sub $08                                       ; $5efe: $d6 $08
    bit 7, a                                      ; $5f00: $cb $7f
    jr z, jr_03c_5f06                             ; $5f02: $28 $02

    ld l, $08                                     ; $5f04: $2e $08

jr_03c_5f06:
    ld a, l                                       ; $5f06: $7d
    sub $3d                                       ; $5f07: $d6 $3d
    bit 7, a                                      ; $5f09: $cb $7f
    jr nz, jr_03c_5f0f                            ; $5f0b: $20 $02

    ld l, $3c                                     ; $5f0d: $2e $3c

jr_03c_5f0f:
    ld h, l                                       ; $5f0f: $65
    ld l, $00                                     ; $5f10: $2e $00
    ld d, $00                                     ; $5f12: $16 $00
    ld e, $ff                                     ; $5f14: $1e $ff
    ld a, $0d                                     ; $5f16: $3e $0d

Jump_03c_5f18:
    call Call_03c_5f1c                            ; $5f18: $cd $1c $5f
    ret                                           ; $5f1b: $c9


Call_03c_5f1c:
    ld [$d54a], a                                 ; $5f1c: $ea $4a $d5
    ld a, b                                       ; $5f1f: $78
    ld [$d54c], a                                 ; $5f20: $ea $4c $d5
    ld a, c                                       ; $5f23: $79
    ld [$d54d], a                                 ; $5f24: $ea $4d $d5
    ld a, d                                       ; $5f27: $7a
    ld [$d54e], a                                 ; $5f28: $ea $4e $d5
    ld a, e                                       ; $5f2b: $7b
    ld [$d54f], a                                 ; $5f2c: $ea $4f $d5
    ld a, h                                       ; $5f2f: $7c
    ld [$d550], a                                 ; $5f30: $ea $50 $d5
    ld a, l                                       ; $5f33: $7d
    ld [$d551], a                                 ; $5f34: $ea $51 $d5
    ld a, [$d54e]                                 ; $5f37: $fa $4e $d5
    cp $00                                        ; $5f3a: $fe $00
    jr nz, jr_03c_5f43                            ; $5f3c: $20 $05

    ld hl, $0140                                  ; $5f3e: $21 $40 $01
    jr jr_03c_5f46                                ; $5f41: $18 $03

jr_03c_5f43:
    ld hl, $03c0                                  ; $5f43: $21 $c0 $03

jr_03c_5f46:
    ld a, l                                       ; $5f46: $7d
    ld [$d552], a                                 ; $5f47: $ea $52 $d5
    ld a, h                                       ; $5f4a: $7c
    ld [$d553], a                                 ; $5f4b: $ea $53 $d5
    ld a, [$d550]                                 ; $5f4e: $fa $50 $d5
    ld b, a                                       ; $5f51: $47
    ld de, $003c                                  ; $5f52: $11 $3c $00
    call Call_000_09ae                            ; $5f55: $cd $ae $09
    ld a, b                                       ; $5f58: $78
    call Call_000_08b9                            ; $5f59: $cd $b9 $08
    ld a, l                                       ; $5f5c: $7d
    ld [$d552], a                                 ; $5f5d: $ea $52 $d5
    ld a, h                                       ; $5f60: $7c
    ld [$d553], a                                 ; $5f61: $ea $53 $d5
    ld a, $00                                     ; $5f64: $3e $00
    ld [$d558], a                                 ; $5f66: $ea $58 $d5
    ld [$d559], a                                 ; $5f69: $ea $59 $d5
    ld [$d55e], a                                 ; $5f6c: $ea $5e $d5
    ld a, [$d552]                                 ; $5f6f: $fa $52 $d5
    ld l, a                                       ; $5f72: $6f
    ld a, [$d553]                                 ; $5f73: $fa $53 $d5
    ld h, a                                       ; $5f76: $67
    push hl                                       ; $5f77: $e5
    srl h                                         ; $5f78: $cb $3c
    rr l                                          ; $5f7a: $cb $1d
    push hl                                       ; $5f7c: $e5
    pop de                                        ; $5f7d: $d1
    pop hl                                        ; $5f7e: $e1
    call Call_000_08ac                            ; $5f7f: $cd $ac $08
    ld a, l                                       ; $5f82: $7d
    ld [$d55a], a                                 ; $5f83: $ea $5a $d5
    ld a, h                                       ; $5f86: $7c
    ld [$d55b], a                                 ; $5f87: $ea $5b $d5
    xor a                                         ; $5f8a: $af
    ld h, a                                       ; $5f8b: $67
    ld l, a                                       ; $5f8c: $6f
    ld a, l                                       ; $5f8d: $7d
    ld [$d55c], a                                 ; $5f8e: $ea $5c $d5
    ld a, h                                       ; $5f91: $7c
    ld [$d55d], a                                 ; $5f92: $ea $5d $d5
    ld h, a                                       ; $5f95: $67
    ld l, a                                       ; $5f96: $6f
    ld a, l                                       ; $5f97: $7d
    ld [$d554], a                                 ; $5f98: $ea $54 $d5
    ld a, h                                       ; $5f9b: $7c
    ld [$d555], a                                 ; $5f9c: $ea $55 $d5

Jump_03c_5f9f:
    ld a, [$d552]                                 ; $5f9f: $fa $52 $d5
    ld c, a                                       ; $5fa2: $4f
    ld a, [$d553]                                 ; $5fa3: $fa $53 $d5
    ld b, a                                       ; $5fa6: $47
    ld a, [$d554]                                 ; $5fa7: $fa $54 $d5
    ld e, a                                       ; $5faa: $5f
    ld a, [$d555]                                 ; $5fab: $fa $55 $d5
    ld d, a                                       ; $5fae: $57
    call Call_03c_4404                            ; $5faf: $cd $04 $44
    cp $01                                        ; $5fb2: $fe $01
    jp nz, Jump_03c_6099                          ; $5fb4: $c2 $99 $60

    push de                                       ; $5fb7: $d5
    pop hl                                        ; $5fb8: $e1
    ld a, [$d54c]                                 ; $5fb9: $fa $4c $d5
    ld b, a                                       ; $5fbc: $47
    ld a, [$d54d]                                 ; $5fbd: $fa $4d $d5
    ld c, a                                       ; $5fc0: $4f
    call Call_000_11ba                            ; $5fc1: $cd $ba $11
    push de                                       ; $5fc4: $d5
    push hl                                       ; $5fc5: $e5
    ld hl, $d401                                  ; $5fc6: $21 $01 $d4
    ld a, [hl+]                                   ; $5fc9: $2a
    ld h, [hl]                                    ; $5fca: $66
    ld l, a                                       ; $5fcb: $6f
    pop de                                        ; $5fcc: $d1
    add hl, de                                    ; $5fcd: $19
    push hl                                       ; $5fce: $e5
    pop bc                                        ; $5fcf: $c1
    ld hl, $d404                                  ; $5fd0: $21 $04 $d4
    ld a, [hl+]                                   ; $5fd3: $2a
    ld h, [hl]                                    ; $5fd4: $66
    ld l, a                                       ; $5fd5: $6f
    pop de                                        ; $5fd6: $d1
    add hl, de                                    ; $5fd7: $19
    push hl                                       ; $5fd8: $e5
    pop de                                        ; $5fd9: $d1
    push bc                                       ; $5fda: $c5
    pop hl                                        ; $5fdb: $e1
    call Call_03c_4564                            ; $5fdc: $cd $64 $45
    ld a, c                                       ; $5fdf: $79
    ld d, b                                       ; $5fe0: $50
    srl a                                         ; $5fe1: $cb $3f
    srl a                                         ; $5fe3: $cb $3f
    srl a                                         ; $5fe5: $cb $3f
    srl a                                         ; $5fe7: $cb $3f
    and $03                                       ; $5fe9: $e6 $03
    ld e, a                                       ; $5feb: $5f
    ld a, [$d54c]                                 ; $5fec: $fa $4c $d5
    ld b, a                                       ; $5fef: $47
    ld a, [$d54d]                                 ; $5ff0: $fa $4d $d5
    ld c, a                                       ; $5ff3: $4f
    ld a, e                                       ; $5ff4: $7b
    cp $00                                        ; $5ff5: $fe $00
    jp z, Jump_03c_6079                           ; $5ff7: $ca $79 $60

    push de                                       ; $5ffa: $d5
    xor a                                         ; $5ffb: $af
    ld e, a                                       ; $5ffc: $5f
    push de                                       ; $5ffd: $d5
    pop hl                                        ; $5ffe: $e1
    push bc                                       ; $5fff: $c5
    pop de                                        ; $6000: $d1
    call Call_000_08ac                            ; $6001: $cd $ac $08
    ld a, l                                       ; $6004: $7d
    ld [$d556], a                                 ; $6005: $ea $56 $d5
    ld a, h                                       ; $6008: $7c
    ld [$d557], a                                 ; $6009: $ea $57 $d5
    bit 7, h                                      ; $600c: $cb $7c
    jr z, jr_03c_6018                             ; $600e: $28 $08

    push hl                                       ; $6010: $e5
    pop de                                        ; $6011: $d1
    xor a                                         ; $6012: $af
    ld h, a                                       ; $6013: $67
    ld l, a                                       ; $6014: $6f
    call Call_000_08ac                            ; $6015: $cd $ac $08

jr_03c_6018:
    push hl                                       ; $6018: $e5
    pop bc                                        ; $6019: $c1
    pop hl                                        ; $601a: $e1
    ld a, [$000c]                                 ; $601b: $fa $0c $00
    and $01                                       ; $601e: $e6 $01
    jr nz, jr_03c_6046                            ; $6020: $20 $24

    ld de, $3000                                  ; $6022: $11 $00 $30
    call Call_03c_4404                            ; $6025: $cd $04 $44
    cp $01                                        ; $6028: $fe $01
    jr z, jr_03c_6035                             ; $602a: $28 $09

    ld a, [$d558]                                 ; $602c: $fa $58 $d5
    sub l                                         ; $602f: $95
    ld [$d558], a                                 ; $6030: $ea $58 $d5
    jr jr_03c_6046                                ; $6033: $18 $11

jr_03c_6035:
    ld de, $5000                                  ; $6035: $11 $00 $50
    call Call_03c_4404                            ; $6038: $cd $04 $44
    cp $02                                        ; $603b: $fe $02
    jr z, jr_03c_6046                             ; $603d: $28 $07

    ld a, [$d558]                                 ; $603f: $fa $58 $d5
    add l                                         ; $6042: $85
    ld [$d558], a                                 ; $6043: $ea $58 $d5

jr_03c_6046:
    ld a, [$d55a]                                 ; $6046: $fa $5a $d5
    ld c, a                                       ; $6049: $4f
    ld a, [$d55b]                                 ; $604a: $fa $5b $d5
    ld b, a                                       ; $604d: $47
    ld a, [$d554]                                 ; $604e: $fa $54 $d5
    ld e, a                                       ; $6051: $5f
    ld a, [$d555]                                 ; $6052: $fa $55 $d5
    ld d, a                                       ; $6055: $57
    call Call_03c_4404                            ; $6056: $cd $04 $44
    cp $01                                        ; $6059: $fe $01
    jr z, jr_03c_6079                             ; $605b: $28 $1c

    ld a, [$d559]                                 ; $605d: $fa $59 $d5
    sub l                                         ; $6060: $95
    bit 7, a                                      ; $6061: $cb $7f
    jr z, jr_03c_6079                             ; $6063: $28 $14

    ld a, l                                       ; $6065: $7d
    ld [$d559], a                                 ; $6066: $ea $59 $d5
    ld a, [$d556]                                 ; $6069: $fa $56 $d5
    ld e, a                                       ; $606c: $5f
    ld a, [$d557]                                 ; $606d: $fa $57 $d5
    ld d, a                                       ; $6070: $57
    ld a, e                                       ; $6071: $7b
    ld [$d55c], a                                 ; $6072: $ea $5c $d5
    ld a, d                                       ; $6075: $7a
    ld [$d55d], a                                 ; $6076: $ea $5d $d5

Jump_03c_6079:
jr_03c_6079:
    ld a, [$d554]                                 ; $6079: $fa $54 $d5
    ld l, a                                       ; $607c: $6f
    ld a, [$d555]                                 ; $607d: $fa $55 $d5
    ld h, a                                       ; $6080: $67
    ld de, $0020                                  ; $6081: $11 $20 $00
    add hl, de                                    ; $6084: $19
    ld a, l                                       ; $6085: $7d
    ld [$d554], a                                 ; $6086: $ea $54 $d5
    ld a, h                                       ; $6089: $7c
    ld [$d555], a                                 ; $608a: $ea $55 $d5
    ld a, [$d55e]                                 ; $608d: $fa $5e $d5
    inc a                                         ; $6090: $3c
    and $01                                       ; $6091: $e6 $01
    ld [$d55e], a                                 ; $6093: $ea $5e $d5
    jp Jump_03c_5f9f                              ; $6096: $c3 $9f $5f


Jump_03c_6099:
    ld a, [$d559]                                 ; $6099: $fa $59 $d5
    cp $00                                        ; $609c: $fe $00
    jr z, jr_03c_6106                             ; $609e: $28 $66

    ld a, [$d55c]                                 ; $60a0: $fa $5c $d5
    ld l, a                                       ; $60a3: $6f
    ld a, [$d55d]                                 ; $60a4: $fa $5d $d5
    ld h, a                                       ; $60a7: $67
    ld a, h                                       ; $60a8: $7c
    srl a                                         ; $60a9: $cb $3f
    srl a                                         ; $60ab: $cb $3f
    srl a                                         ; $60ad: $cb $3f
    srl a                                         ; $60af: $cb $3f
    ld b, a                                       ; $60b1: $47
    ld a, h                                       ; $60b2: $7c
    and $0f                                       ; $60b3: $e6 $0f
    sub $08                                       ; $60b5: $d6 $08
    bit 7, a                                      ; $60b7: $cb $7f
    jr nz, jr_03c_60c0                            ; $60b9: $20 $05

    ld a, b                                       ; $60bb: $78
    inc a                                         ; $60bc: $3c
    and $0f                                       ; $60bd: $e6 $0f
    ld b, a                                       ; $60bf: $47

jr_03c_60c0:
    ld a, [$d559]                                 ; $60c0: $fa $59 $d5
    dec a                                         ; $60c3: $3d
    ld c, a                                       ; $60c4: $4f
    ld hl, $5d9d                                  ; $60c5: $21 $9d $5d

jr_03c_60c8:
    ld a, b                                       ; $60c8: $78
    cp $00                                        ; $60c9: $fe $00
    jr z, jr_03c_60d3                             ; $60cb: $28 $06

    inc hl                                        ; $60cd: $23
    inc hl                                        ; $60ce: $23
    inc hl                                        ; $60cf: $23
    dec b                                         ; $60d0: $05
    jr jr_03c_60c8                                ; $60d1: $18 $f5

jr_03c_60d3:
    ld a, c                                       ; $60d3: $79
    cp $00                                        ; $60d4: $fe $00
    jr z, jr_03c_60dc                             ; $60d6: $28 $04

    inc hl                                        ; $60d8: $23
    dec c                                         ; $60d9: $0d
    jr jr_03c_60d3                                ; $60da: $18 $f7

jr_03c_60dc:
    ld a, [hl]                                    ; $60dc: $7e
    ld b, a                                       ; $60dd: $47
    bit 7, a                                      ; $60de: $cb $7f
    jr z, jr_03c_60e4                             ; $60e0: $28 $02

    cpl                                           ; $60e2: $2f
    inc a                                         ; $60e3: $3c

jr_03c_60e4:
    ld hl, $00b6                                  ; $60e4: $21 $b6 $00
    call Call_000_08b9                            ; $60e7: $cd $b9 $08
    push hl                                       ; $60ea: $e5
    pop de                                        ; $60eb: $d1
    ld a, [$d54c]                                 ; $60ec: $fa $4c $d5
    ld h, a                                       ; $60ef: $67
    ld a, [$d54d]                                 ; $60f0: $fa $4d $d5
    ld l, a                                       ; $60f3: $6f
    bit 7, b                                      ; $60f4: $cb $78
    jr nz, jr_03c_60fb                            ; $60f6: $20 $03

    add hl, de                                    ; $60f8: $19
    jr jr_03c_60fe                                ; $60f9: $18 $03

jr_03c_60fb:
    call Call_000_08ac                            ; $60fb: $cd $ac $08

jr_03c_60fe:
    ld a, h                                       ; $60fe: $7c
    ld [$d54c], a                                 ; $60ff: $ea $4c $d5
    ld a, l                                       ; $6102: $7d
    ld [$d54d], a                                 ; $6103: $ea $4d $d5

jr_03c_6106:
    rst $18                                       ; $6106: $df
    inc b                                         ; $6107: $04
    db $10                                        ; $6108: $10
    ld a, [$d558]                                 ; $6109: $fa $58 $d5
    cp $00                                        ; $610c: $fe $00
    jp z, Jump_03c_61cf                           ; $610e: $ca $cf $61

    bit 7, a                                      ; $6111: $cb $7f
    jr z, jr_03c_6117                             ; $6113: $28 $02

    cpl                                           ; $6115: $2f
    inc a                                         ; $6116: $3c

jr_03c_6117:
    push af                                       ; $6117: $f5
    sub $05                                       ; $6118: $d6 $05
    bit 7, a                                      ; $611a: $cb $7f
    jr nz, jr_03c_6123                            ; $611c: $20 $05

    pop af                                        ; $611e: $f1
    ld a, $06                                     ; $611f: $3e $06
    jr jr_03c_6124                                ; $6121: $18 $01

jr_03c_6123:
    pop af                                        ; $6123: $f1

jr_03c_6124:
    push af                                       ; $6124: $f5
    ld a, [$d558]                                 ; $6125: $fa $58 $d5
    ld b, a                                       ; $6128: $47
    pop af                                        ; $6129: $f1
    bit 7, b                                      ; $612a: $cb $78
    jr z, jr_03c_6137                             ; $612c: $28 $09

    srl a                                         ; $612e: $cb $3f
    srl a                                         ; $6130: $cb $3f
    cp $00                                        ; $6132: $fe $00
    jp z, Jump_03c_61cf                           ; $6134: $ca $cf $61

jr_03c_6137:
    push hl                                       ; $6137: $e5
    ld hl, $0010                                  ; $6138: $21 $10 $00
    push af                                       ; $613b: $f5
    ld a, [$d558]                                 ; $613c: $fa $58 $d5
    ld b, a                                       ; $613f: $47
    pop af                                        ; $6140: $f1
    call Call_000_08b9                            ; $6141: $cd $b9 $08
    push hl                                       ; $6144: $e5
    pop de                                        ; $6145: $d1
    pop hl                                        ; $6146: $e1
    bit 7, b                                      ; $6147: $cb $78
    jr nz, jr_03c_614e                            ; $6149: $20 $03

    add hl, de                                    ; $614b: $19
    jr jr_03c_6151                                ; $614c: $18 $03

jr_03c_614e:
    call Call_000_08ac                            ; $614e: $cd $ac $08

jr_03c_6151:
    ld de, $0010                                  ; $6151: $11 $10 $00
    add hl, de                                    ; $6154: $19
    push hl                                       ; $6155: $e5
    ld de, $fee0                                  ; $6156: $11 $e0 $fe
    add hl, de                                    ; $6159: $19
    bit 7, h                                      ; $615a: $cb $7c
    pop hl                                        ; $615c: $e1
    jr nz, jr_03c_6182                            ; $615d: $20 $23

    add hl, hl                                    ; $615f: $29
    srl h                                         ; $6160: $cb $3c
    rr l                                          ; $6162: $cb $1d
    srl h                                         ; $6164: $cb $3c
    rr l                                          ; $6166: $cb $1d
    srl h                                         ; $6168: $cb $3c
    rr l                                          ; $616a: $cb $1d
    srl h                                         ; $616c: $cb $3c
    rr l                                          ; $616e: $cb $1d
    srl h                                         ; $6170: $cb $3c
    rr l                                          ; $6172: $cb $1d
    inc l                                         ; $6174: $2c
    res 0, l                                      ; $6175: $cb $85
    ld a, l                                       ; $6177: $7d
    cp $00                                        ; $6178: $fe $00
    jr nz, jr_03c_617e                            ; $617a: $20 $02

    ld l, $04                                     ; $617c: $2e $04

jr_03c_617e:
    ld d, $01                                     ; $617e: $16 $01
    jr jr_03c_61c7                                ; $6180: $18 $45

jr_03c_6182:
    ld d, h                                       ; $6182: $54
    ld e, l                                       ; $6183: $5d
    add hl, hl                                    ; $6184: $29
    add hl, de                                    ; $6185: $19
    add hl, hl                                    ; $6186: $29
    srl d                                         ; $6187: $cb $3a
    rr e                                          ; $6189: $cb $1b
    add hl, de                                    ; $618b: $19
    srl d                                         ; $618c: $cb $3a
    rr e                                          ; $618e: $cb $1b
    srl d                                         ; $6190: $cb $3a
    rr e                                          ; $6192: $cb $1b
    add hl, de                                    ; $6194: $19
    srl h                                         ; $6195: $cb $3c
    rr l                                          ; $6197: $cb $1d
    srl h                                         ; $6199: $cb $3c
    rr l                                          ; $619b: $cb $1d
    srl h                                         ; $619d: $cb $3c
    rr l                                          ; $619f: $cb $1d
    srl h                                         ; $61a1: $cb $3c
    rr l                                          ; $61a3: $cb $1d
    srl h                                         ; $61a5: $cb $3c
    rr l                                          ; $61a7: $cb $1d
    inc l                                         ; $61a9: $2c
    res 0, l                                      ; $61aa: $cb $85
    ld a, l                                       ; $61ac: $7d
    cp $00                                        ; $61ad: $fe $00
    jr nz, jr_03c_61b3                            ; $61af: $20 $02

    ld l, $04                                     ; $61b1: $2e $04

jr_03c_61b3:
    ld a, l                                       ; $61b3: $7d
    sub $08                                       ; $61b4: $d6 $08
    bit 7, a                                      ; $61b6: $cb $7f
    jr z, jr_03c_61bc                             ; $61b8: $28 $02

    ld l, $08                                     ; $61ba: $2e $08

jr_03c_61bc:
    ld a, l                                       ; $61bc: $7d
    sub $3d                                       ; $61bd: $d6 $3d
    bit 7, a                                      ; $61bf: $cb $7f
    jr nz, jr_03c_61c5                            ; $61c1: $20 $02

    ld l, $3c                                     ; $61c3: $2e $3c

jr_03c_61c5:
    ld d, $00                                     ; $61c5: $16 $00

jr_03c_61c7:
    ld a, l                                       ; $61c7: $7d
    ld [$d550], a                                 ; $61c8: $ea $50 $d5
    ld a, d                                       ; $61cb: $7a
    ld [$d54e], a                                 ; $61cc: $ea $4e $d5

Jump_03c_61cf:
    jr jr_03c_61f7                                ; $61cf: $18 $26

    ld a, [$d549]                                 ; $61d1: $fa $49 $d5
    ld b, a                                       ; $61d4: $47
    ld a, [$d325]                                 ; $61d5: $fa $25 $d3
    add b                                         ; $61d8: $80
    ld b, a                                       ; $61d9: $47
    ld a, $20                                     ; $61da: $3e $20
    call $4256                                    ; $61dc: $cd $56 $42
    ld a, [hl]                                    ; $61df: $7e
    inc a                                         ; $61e0: $3c
    ld c, a                                       ; $61e1: $4f
    ld a, b                                       ; $61e2: $78
    sub c                                         ; $61e3: $91
    bit 7, a                                      ; $61e4: $cb $7f
    jr nz, jr_03c_61f7                            ; $61e6: $20 $0f

    ld a, [$d550]                                 ; $61e8: $fa $50 $d5
    ld h, a                                       ; $61eb: $67
    call Call_03c_6213                            ; $61ec: $cd $13 $62
    ld a, h                                       ; $61ef: $7c
    cp $00                                        ; $61f0: $fe $00
    jr z, jr_03c_61f7                             ; $61f2: $28 $03

    ld [$d550], a                                 ; $61f4: $ea $50 $d5

jr_03c_61f7:
    ld a, [$d54c]                                 ; $61f7: $fa $4c $d5
    ld b, a                                       ; $61fa: $47
    ld a, [$d54d]                                 ; $61fb: $fa $4d $d5
    ld c, a                                       ; $61fe: $4f
    ld a, [$d54e]                                 ; $61ff: $fa $4e $d5
    ld d, a                                       ; $6202: $57
    ld a, [$d54f]                                 ; $6203: $fa $4f $d5
    ld e, a                                       ; $6206: $5f
    ld a, [$d550]                                 ; $6207: $fa $50 $d5
    ld h, a                                       ; $620a: $67
    ld a, [$d551]                                 ; $620b: $fa $51 $d5
    ld l, a                                       ; $620e: $6f
    ld a, [$d54a]                                 ; $620f: $fa $4a $d5
    ret                                           ; $6212: $c9


Call_03c_6213:
    push af                                       ; $6213: $f5
    push bc                                       ; $6214: $c5
    push de                                       ; $6215: $d5
    ld a, [$d549]                                 ; $6216: $fa $49 $d5
    ld b, a                                       ; $6219: $47
    ld a, [$d325]                                 ; $621a: $fa $25 $d3
    add b                                         ; $621d: $80
    ld b, a                                       ; $621e: $47
    push hl                                       ; $621f: $e5
    ld a, $20                                     ; $6220: $3e $20
    call $4256                                    ; $6222: $cd $56 $42
    ld a, [hl]                                    ; $6225: $7e
    inc a                                         ; $6226: $3c
    ld c, a                                       ; $6227: $4f
    pop hl                                        ; $6228: $e1
    ld a, b                                       ; $6229: $78
    sub c                                         ; $622a: $91
    bit 7, a                                      ; $622b: $cb $7f
    jp nz, Jump_03c_62c6                          ; $622d: $c2 $c6 $62

    cp $00                                        ; $6230: $fe $00
    jp z, Jump_03c_62c6                           ; $6232: $ca $c6 $62

    push hl                                       ; $6235: $e5
    ld a, $10                                     ; $6236: $3e $10
    call $4256                                    ; $6238: $cd $56 $42
    ld a, [hl]                                    ; $623b: $7e
    pop hl                                        ; $623c: $e1
    cp $0b                                        ; $623d: $fe $0b
    jr z, jr_03c_626f                             ; $623f: $28 $2e

    cp $0d                                        ; $6241: $fe $0d
    jr z, jr_03c_626f                             ; $6243: $28 $2a

    ld a, [$d4cd]                                 ; $6245: $fa $cd $d4
    cp $01                                        ; $6248: $fe $01
    jr z, jr_03c_626f                             ; $624a: $28 $23

    cp $02                                        ; $624c: $fe $02
    jr z, jr_03c_626f                             ; $624e: $28 $1f

    cp $04                                        ; $6250: $fe $04
    jr z, jr_03c_626f                             ; $6252: $28 $1b

    cp $03                                        ; $6254: $fe $03
    jr z, jr_03c_626f                             ; $6256: $28 $17

    cp $08                                        ; $6258: $fe $08
    jr z, jr_03c_626f                             ; $625a: $28 $13

    cp $0b                                        ; $625c: $fe $0b
    jr z, jr_03c_626f                             ; $625e: $28 $0f

    cp $0c                                        ; $6260: $fe $0c
    jr z, jr_03c_626f                             ; $6262: $28 $0b

    push hl                                       ; $6264: $e5
    call Call_000_0a61                            ; $6265: $cd $61 $0a
    pop de                                        ; $6268: $d1
    ld a, l                                       ; $6269: $7d
    and $03                                       ; $626a: $e6 $03
    dec a                                         ; $626c: $3d
    jr jr_03c_62a3                                ; $626d: $18 $34

jr_03c_626f:
    push hl                                       ; $626f: $e5
    ld a, $10                                     ; $6270: $3e $10
    call $4256                                    ; $6272: $cd $56 $42
    ld a, [hl]                                    ; $6275: $7e
    call Call_03c_438a                            ; $6276: $cd $8a $43
    pop de                                        ; $6279: $d1
    cp $00                                        ; $627a: $fe $00
    jr z, jr_03c_628d                             ; $627c: $28 $0f

    cp $01                                        ; $627e: $fe $01
    jr z, jr_03c_6299                             ; $6280: $28 $17

    push de                                       ; $6282: $d5
    call Call_000_0a61                            ; $6283: $cd $61 $0a
    pop de                                        ; $6286: $d1
    ld a, l                                       ; $6287: $7d
    and $03                                       ; $6288: $e6 $03
    dec a                                         ; $628a: $3d
    jr jr_03c_62a3                                ; $628b: $18 $16

jr_03c_628d:
    push de                                       ; $628d: $d5
    call Call_000_0a61                            ; $628e: $cd $61 $0a
    pop de                                        ; $6291: $d1
    ld a, l                                       ; $6292: $7d
    and $0f                                       ; $6293: $e6 $0f
    sub $07                                       ; $6295: $d6 $07
    jr jr_03c_62a3                                ; $6297: $18 $0a

jr_03c_6299:
    push de                                       ; $6299: $d5
    call Call_000_0a61                            ; $629a: $cd $61 $0a
    pop de                                        ; $629d: $d1
    ld a, l                                       ; $629e: $7d
    and $07                                       ; $629f: $e6 $07
    sub $04                                       ; $62a1: $d6 $04

jr_03c_62a3:
    ld c, a                                       ; $62a3: $4f
    ld a, d                                       ; $62a4: $7a
    add c                                         ; $62a5: $81
    ld d, a                                       ; $62a6: $57
    sub $03                                       ; $62a7: $d6 $03
    bit 7, a                                      ; $62a9: $cb $7f
    jr nz, jr_03c_62b8                            ; $62ab: $20 $0b

    ld a, d                                       ; $62ad: $7a
    sub $3c                                       ; $62ae: $d6 $3c
    bit 7, a                                      ; $62b0: $cb $7f
    jr z, jr_03c_62bf                             ; $62b2: $28 $0b

    push de                                       ; $62b4: $d5
    pop hl                                        ; $62b5: $e1
    jr jr_03c_62c6                                ; $62b6: $18 $0e

jr_03c_62b8:
    ld a, $03                                     ; $62b8: $3e $03
    ld d, a                                       ; $62ba: $57
    push de                                       ; $62bb: $d5
    pop hl                                        ; $62bc: $e1
    jr jr_03c_62c6                                ; $62bd: $18 $07

jr_03c_62bf:
    ld a, $3c                                     ; $62bf: $3e $3c
    ld d, a                                       ; $62c1: $57
    push de                                       ; $62c2: $d5
    pop hl                                        ; $62c3: $e1
    jr jr_03c_62c6                                ; $62c4: $18 $00

Jump_03c_62c6:
jr_03c_62c6:
    pop de                                        ; $62c6: $d1
    pop bc                                        ; $62c7: $c1
    pop af                                        ; $62c8: $f1
    ret                                           ; $62c9: $c9


Call_03c_62ca:
    push af                                       ; $62ca: $f5
    push bc                                       ; $62cb: $c5
    push de                                       ; $62cc: $d5
    ld [$d329], a                                 ; $62cd: $ea $29 $d3
    ld a, d                                       ; $62d0: $7a
    ld [$d32a], a                                 ; $62d1: $ea $2a $d3
    push hl                                       ; $62d4: $e5
    rst $18                                       ; $62d5: $df
    ld [hl-], a                                   ; $62d6: $32
    db $10                                        ; $62d7: $10
    pop hl                                        ; $62d8: $e1
    cp $00                                        ; $62d9: $fe $00
    jp z, Jump_03c_6392                           ; $62db: $ca $92 $63

    push hl                                       ; $62de: $e5
    ld a, $10                                     ; $62df: $3e $10
    call $4256                                    ; $62e1: $cd $56 $42
    ld a, [hl]                                    ; $62e4: $7e
    pop hl                                        ; $62e5: $e1
    cp $07                                        ; $62e6: $fe $07
    jp z, Jump_03c_6392                           ; $62e8: $ca $92 $63

    ld a, [$d549]                                 ; $62eb: $fa $49 $d5
    ld b, a                                       ; $62ee: $47
    ld a, [$d325]                                 ; $62ef: $fa $25 $d3
    add b                                         ; $62f2: $80
    ld b, a                                       ; $62f3: $47
    push hl                                       ; $62f4: $e5
    ld a, $20                                     ; $62f5: $3e $20
    call $4256                                    ; $62f7: $cd $56 $42
    ld a, [hl]                                    ; $62fa: $7e
    inc a                                         ; $62fb: $3c
    ld c, a                                       ; $62fc: $4f
    pop hl                                        ; $62fd: $e1
    ld a, b                                       ; $62fe: $78
    sub c                                         ; $62ff: $91
    bit 7, a                                      ; $6300: $cb $7f
    jp nz, Jump_03c_6392                          ; $6302: $c2 $92 $63

    cp $00                                        ; $6305: $fe $00
    jp z, Jump_03c_6392                           ; $6307: $ca $92 $63

    push hl                                       ; $630a: $e5
    ld a, $10                                     ; $630b: $3e $10
    call $4256                                    ; $630d: $cd $56 $42
    ld a, [hl]                                    ; $6310: $7e
    pop hl                                        ; $6311: $e1
    cp $0b                                        ; $6312: $fe $0b
    jr z, jr_03c_634e                             ; $6314: $28 $38

    cp $0d                                        ; $6316: $fe $0d
    jr z, jr_03c_634e                             ; $6318: $28 $34

    ld a, [$d4cd]                                 ; $631a: $fa $cd $d4
    cp $01                                        ; $631d: $fe $01
    jr z, jr_03c_634e                             ; $631f: $28 $2d

    cp $02                                        ; $6321: $fe $02
    jr z, jr_03c_634e                             ; $6323: $28 $29

    cp $04                                        ; $6325: $fe $04
    jr z, jr_03c_634e                             ; $6327: $28 $25

    cp $03                                        ; $6329: $fe $03
    jr z, jr_03c_634e                             ; $632b: $28 $21

    cp $08                                        ; $632d: $fe $08
    jr z, jr_03c_634e                             ; $632f: $28 $1d

    cp $0b                                        ; $6331: $fe $0b
    jr z, jr_03c_634e                             ; $6333: $28 $19

    cp $0c                                        ; $6335: $fe $0c
    jr z, jr_03c_634e                             ; $6337: $28 $15

    ld a, h                                       ; $6339: $7c
    sub $38                                       ; $633a: $d6 $38
    bit 7, a                                      ; $633c: $cb $7f
    jr nz, jr_03c_6392                            ; $633e: $20 $52

    push hl                                       ; $6340: $e5
    rst $18                                       ; $6341: $df
    ld [hl-], a                                   ; $6342: $32
    db $10                                        ; $6343: $10
    pop de                                        ; $6344: $d1
    cp $00                                        ; $6345: $fe $00
    jr z, jr_03c_638f                             ; $6347: $28 $46

    call Call_03c_6396                            ; $6349: $cd $96 $63
    jr jr_03c_638f                                ; $634c: $18 $41

jr_03c_634e:
    push hl                                       ; $634e: $e5
    ld a, $10                                     ; $634f: $3e $10
    call $4256                                    ; $6351: $cd $56 $42
    ld a, [hl]                                    ; $6354: $7e
    call Call_03c_438a                            ; $6355: $cd $8a $43
    pop de                                        ; $6358: $d1
    cp $00                                        ; $6359: $fe $00
    jr z, jr_03c_636d                             ; $635b: $28 $10

    cp $01                                        ; $635d: $fe $01
    jr z, jr_03c_637f                             ; $635f: $28 $1e

    push de                                       ; $6361: $d5
    rst $18                                       ; $6362: $df
    ld [hl-], a                                   ; $6363: $32
    db $10                                        ; $6364: $10
    pop de                                        ; $6365: $d1
    srl a                                         ; $6366: $cb $3f
    call Call_03c_6396                            ; $6368: $cd $96 $63
    jr jr_03c_638f                                ; $636b: $18 $22

jr_03c_636d:
    push de                                       ; $636d: $d5
    rst $18                                       ; $636e: $df
    ld [hl-], a                                   ; $636f: $32
    db $10                                        ; $6370: $10
    pop de                                        ; $6371: $d1
    cp $00                                        ; $6372: $fe $00
    jr z, jr_03c_638f                             ; $6374: $28 $19

    inc a                                         ; $6376: $3c
    inc a                                         ; $6377: $3c
    inc a                                         ; $6378: $3c
    inc a                                         ; $6379: $3c
    call Call_03c_6396                            ; $637a: $cd $96 $63
    jr jr_03c_638f                                ; $637d: $18 $10

jr_03c_637f:
    push de                                       ; $637f: $d5
    rst $18                                       ; $6380: $df
    ld [hl-], a                                   ; $6381: $32
    db $10                                        ; $6382: $10
    pop de                                        ; $6383: $d1
    cp $00                                        ; $6384: $fe $00
    jr z, jr_03c_638f                             ; $6386: $28 $07

    srl a                                         ; $6388: $cb $3f
    call Call_03c_6396                            ; $638a: $cd $96 $63
    jr jr_03c_638f                                ; $638d: $18 $00

jr_03c_638f:
    ld e, a                                       ; $638f: $5f
    push de                                       ; $6390: $d5
    pop hl                                        ; $6391: $e1

Jump_03c_6392:
jr_03c_6392:
    pop de                                        ; $6392: $d1
    pop bc                                        ; $6393: $c1
    pop af                                        ; $6394: $f1
    ret                                           ; $6395: $c9


Call_03c_6396:
    push bc                                       ; $6396: $c5
    push de                                       ; $6397: $d5
    push hl                                       ; $6398: $e5
    cp $00                                        ; $6399: $fe $00
    jr z, jr_03c_63c3                             ; $639b: $28 $26

    ld b, a                                       ; $639d: $47

jr_03c_639e:
    call Call_000_0a61                            ; $639e: $cd $61 $0a
    ld a, l                                       ; $63a1: $7d
    and $0f                                       ; $63a2: $e6 $0f
    ld l, a                                       ; $63a4: $6f
    ld a, l                                       ; $63a5: $7d
    cp $00                                        ; $63a6: $fe $00
    jr z, jr_03c_63b5                             ; $63a8: $28 $0b

    sub b                                         ; $63aa: $90
    cp $00                                        ; $63ab: $fe $00
    jr z, jr_03c_63b5                             ; $63ad: $28 $06

    bit 7, a                                      ; $63af: $cb $7f
    jr nz, jr_03c_63b5                            ; $63b1: $20 $02

    jr jr_03c_639e                                ; $63b3: $18 $e9

jr_03c_63b5:
    bit 0, h                                      ; $63b5: $cb $44
    jr z, jr_03c_63c2                             ; $63b7: $28 $09

    ld a, l                                       ; $63b9: $7d
    cp $00                                        ; $63ba: $fe $00
    jr z, jr_03c_63c3                             ; $63bc: $28 $05

    cpl                                           ; $63be: $2f
    inc a                                         ; $63bf: $3c
    jr jr_03c_63c3                                ; $63c0: $18 $01

jr_03c_63c2:
    ld a, l                                       ; $63c2: $7d

jr_03c_63c3:
    pop hl                                        ; $63c3: $e1
    pop de                                        ; $63c4: $d1
    pop bc                                        ; $63c5: $c1
    ret                                           ; $63c6: $c9


Call_03c_63c7:
    push bc                                       ; $63c7: $c5
    push de                                       ; $63c8: $d5
    push hl                                       ; $63c9: $e5
    cp $00                                        ; $63ca: $fe $00
    jr z, jr_03c_63f4                             ; $63cc: $28 $26

    ld b, a                                       ; $63ce: $47

jr_03c_63cf:
    call Call_000_0a61                            ; $63cf: $cd $61 $0a
    ld a, l                                       ; $63d2: $7d
    and $0f                                       ; $63d3: $e6 $0f
    ld l, a                                       ; $63d5: $6f
    ld a, l                                       ; $63d6: $7d
    cp $00                                        ; $63d7: $fe $00
    jr z, jr_03c_63cf                             ; $63d9: $28 $f4

    sub b                                         ; $63db: $90
    cp $00                                        ; $63dc: $fe $00
    jr z, jr_03c_63e6                             ; $63de: $28 $06

    bit 7, a                                      ; $63e0: $cb $7f
    jr nz, jr_03c_63e6                            ; $63e2: $20 $02

    jr jr_03c_63cf                                ; $63e4: $18 $e9

jr_03c_63e6:
    bit 0, h                                      ; $63e6: $cb $44
    jr z, jr_03c_63f3                             ; $63e8: $28 $09

    ld a, l                                       ; $63ea: $7d
    cp $00                                        ; $63eb: $fe $00
    jr z, jr_03c_63f4                             ; $63ed: $28 $05

    cpl                                           ; $63ef: $2f
    inc a                                         ; $63f0: $3c
    jr jr_03c_63f4                                ; $63f1: $18 $01

jr_03c_63f3:
    ld a, l                                       ; $63f3: $7d

jr_03c_63f4:
    pop hl                                        ; $63f4: $e1
    pop de                                        ; $63f5: $d1
    pop bc                                        ; $63f6: $c1
    ret                                           ; $63f7: $c9


Call_03c_63f8:
    push af                                       ; $63f8: $f5
    push bc                                       ; $63f9: $c5
    push hl                                       ; $63fa: $e5
    ld a, c                                       ; $63fb: $79
    ld [$d525], a                                 ; $63fc: $ea $25 $d5
    ld a, b                                       ; $63ff: $78
    ld [$d526], a                                 ; $6400: $ea $26 $d5
    ld a, d                                       ; $6403: $7a
    ld [$d527], a                                 ; $6404: $ea $27 $d5
    ld a, [$d4cd]                                 ; $6407: $fa $cd $d4
    cp $02                                        ; $640a: $fe $02
    jp z, Jump_03c_6526                           ; $640c: $ca $26 $65

    cp $0b                                        ; $640f: $fe $0b
    jp z, Jump_03c_6526                           ; $6411: $ca $26 $65

    cp $06                                        ; $6414: $fe $06
    jp z, Jump_03c_6526                           ; $6416: $ca $26 $65

    cp $0a                                        ; $6419: $fe $0a
    jp z, Jump_03c_6526                           ; $641b: $ca $26 $65

    cp $05                                        ; $641e: $fe $05
    jp z, Jump_03c_6526                           ; $6420: $ca $26 $65

    cp $0c                                        ; $6423: $fe $0c
    jp z, Jump_03c_6526                           ; $6425: $ca $26 $65

    ld a, [$d545]                                 ; $6428: $fa $45 $d5
    ld c, a                                       ; $642b: $4f
    ld a, [$d546]                                 ; $642c: $fa $46 $d5
    ld b, a                                       ; $642f: $47
    ld a, [$d43d]                                 ; $6430: $fa $3d $d4
    ld e, a                                       ; $6433: $5f
    ld a, [$d43e]                                 ; $6434: $fa $3e $d4
    ld d, a                                       ; $6437: $57
    call Call_03c_4404                            ; $6438: $cd $04 $44
    cp $00                                        ; $643b: $fe $00
    jp nz, Jump_03c_649c                          ; $643d: $c2 $9c $64

    ld a, [$d547]                                 ; $6440: $fa $47 $d5
    ld c, a                                       ; $6443: $4f
    ld a, [$d548]                                 ; $6444: $fa $48 $d5
    ld b, a                                       ; $6447: $47
    ld a, [$d43f]                                 ; $6448: $fa $3f $d4
    ld e, a                                       ; $644b: $5f
    ld a, [$d440]                                 ; $644c: $fa $40 $d4
    ld d, a                                       ; $644f: $57
    call Call_03c_4404                            ; $6450: $cd $04 $44
    cp $00                                        ; $6453: $fe $00
    jp nz, Jump_03c_649c                          ; $6455: $c2 $9c $64

    ld a, $10                                     ; $6458: $3e $10
    call $4256                                    ; $645a: $cd $56 $42
    ld a, [hl]                                    ; $645d: $7e
    call Call_03c_43c7                            ; $645e: $cd $c7 $43
    add $05                                       ; $6461: $c6 $05
    ld b, a                                       ; $6463: $47
    ld a, [$c815]                                 ; $6464: $fa $15 $c8
    sub b                                         ; $6467: $90
    bit 7, a                                      ; $6468: $cb $7f
    jp nz, Jump_03c_6526                          ; $646a: $c2 $26 $65

    ld a, $10                                     ; $646d: $3e $10
    call $4256                                    ; $646f: $cd $56 $42
    ld a, [hl]                                    ; $6472: $7e
    call Call_03c_43a8                            ; $6473: $cd $a8 $43
    cp $00                                        ; $6476: $fe $00
    jp z, Jump_03c_6483                           ; $6478: $ca $83 $64

    cp $01                                        ; $647b: $fe $01
    jp z, Jump_03c_648e                           ; $647d: $ca $8e $64

    jp Jump_03c_6526                              ; $6480: $c3 $26 $65


Jump_03c_6483:
    call Call_000_0a61                            ; $6483: $cd $61 $0a
    bit 0, l                                      ; $6486: $cb $45
    jp nz, Jump_03c_651c                          ; $6488: $c2 $1c $65

    jp Jump_03c_6526                              ; $648b: $c3 $26 $65


Jump_03c_648e:
    call Call_000_0a61                            ; $648e: $cd $61 $0a
    ld a, l                                       ; $6491: $7d
    and $03                                       ; $6492: $e6 $03
    cp $00                                        ; $6494: $fe $00
    jp z, Jump_03c_651c                           ; $6496: $ca $1c $65

    jp Jump_03c_6526                              ; $6499: $c3 $26 $65


Jump_03c_649c:
    ld a, $20                                     ; $649c: $3e $20
    call $4256                                    ; $649e: $cd $56 $42
    ld a, [hl]                                    ; $64a1: $7e
    cp $00                                        ; $64a2: $fe $00
    jp nz, Jump_03c_6526                          ; $64a4: $c2 $26 $65

    ld a, $10                                     ; $64a7: $3e $10
    call $4256                                    ; $64a9: $cd $56 $42
    ld a, [hl]                                    ; $64ac: $7e
    call Call_03c_43c7                            ; $64ad: $cd $c7 $43
    add $05                                       ; $64b0: $c6 $05
    ld b, a                                       ; $64b2: $47
    ld a, [$c815]                                 ; $64b3: $fa $15 $c8
    sub b                                         ; $64b6: $90
    bit 7, a                                      ; $64b7: $cb $7f
    jr nz, jr_03c_6526                            ; $64b9: $20 $6b

    ld a, [$d525]                                 ; $64bb: $fa $25 $d5
    ld c, a                                       ; $64be: $4f
    ld a, [$d526]                                 ; $64bf: $fa $26 $d5
    ld b, a                                       ; $64c2: $47
    call Call_03c_569a                            ; $64c3: $cd $9a $56
    bit 7, d                                      ; $64c6: $cb $7a
    jp z, Jump_03c_64d4                           ; $64c8: $ca $d4 $64

    ld h, $00                                     ; $64cb: $26 $00
    ld l, $00                                     ; $64cd: $2e $00
    call Call_000_08ac                            ; $64cf: $cd $ac $08
    push hl                                       ; $64d2: $e5
    pop de                                        ; $64d3: $d1

Jump_03c_64d4:
    ld bc, $2000                                  ; $64d4: $01 $00 $20
    call Call_03c_4404                            ; $64d7: $cd $04 $44
    cp $02                                        ; $64da: $fe $02
    jp z, Jump_03c_64e2                           ; $64dc: $ca $e2 $64

    jp Jump_03c_64f0                              ; $64df: $c3 $f0 $64


Jump_03c_64e2:
    ld bc, $6000                                  ; $64e2: $01 $00 $60
    call Call_03c_4404                            ; $64e5: $cd $04 $44
    cp $01                                        ; $64e8: $fe $01
    jp z, Jump_03c_6526                           ; $64ea: $ca $26 $65

    jp Jump_03c_6506                              ; $64ed: $c3 $06 $65


Jump_03c_64f0:
    ld a, $10                                     ; $64f0: $3e $10
    call $4256                                    ; $64f2: $cd $56 $42
    ld a, [hl]                                    ; $64f5: $7e
    call Call_03c_43a8                            ; $64f6: $cd $a8 $43
    cp $00                                        ; $64f9: $fe $00
    jp z, Jump_03c_651c                           ; $64fb: $ca $1c $65

    cp $01                                        ; $64fe: $fe $01
    jp z, Jump_03c_651c                           ; $6500: $ca $1c $65

    jp Jump_03c_6526                              ; $6503: $c3 $26 $65


Jump_03c_6506:
    ld a, $10                                     ; $6506: $3e $10
    call $4256                                    ; $6508: $cd $56 $42
    ld a, [hl]                                    ; $650b: $7e
    call Call_03c_43a8                            ; $650c: $cd $a8 $43
    cp $02                                        ; $650f: $fe $02
    jp z, Jump_03c_6521                           ; $6511: $ca $21 $65

    cp $01                                        ; $6514: $fe $01
    jp z, Jump_03c_6521                           ; $6516: $ca $21 $65

    jp Jump_03c_6526                              ; $6519: $c3 $26 $65


Jump_03c_651c:
    ld e, $40                                     ; $651c: $1e $40
    jp Jump_03c_6528                              ; $651e: $c3 $28 $65


Jump_03c_6521:
    ld e, $80                                     ; $6521: $1e $80
    jp Jump_03c_6528                              ; $6523: $c3 $28 $65


Jump_03c_6526:
jr_03c_6526:
    ld e, $ff                                     ; $6526: $1e $ff

Jump_03c_6528:
    ld a, [$d527]                                 ; $6528: $fa $27 $d5
    ld d, a                                       ; $652b: $57
    pop hl                                        ; $652c: $e1
    pop bc                                        ; $652d: $c1
    pop af                                        ; $652e: $f1
    ret                                           ; $652f: $c9


Call_03c_6530:
    push af                                       ; $6530: $f5
    push bc                                       ; $6531: $c5
    push hl                                       ; $6532: $e5
    ld a, $20                                     ; $6533: $3e $20
    call $4256                                    ; $6535: $cd $56 $42
    ld a, [hl]                                    ; $6538: $7e
    cp $00                                        ; $6539: $fe $00
    jr nz, jr_03c_6592                            ; $653b: $20 $55

    ld a, [$d325]                                 ; $653d: $fa $25 $d3
    cp $03                                        ; $6540: $fe $03
    jr z, jr_03c_6592                             ; $6542: $28 $4e

    ld a, $28                                     ; $6544: $3e $28
    call $4256                                    ; $6546: $cd $56 $42
    ld a, [hl]                                    ; $6549: $7e
    cp $00                                        ; $654a: $fe $00
    jr z, jr_03c_6592                             ; $654c: $28 $44

    call Call_03c_4a11                            ; $654e: $cd $11 $4a
    cp $01                                        ; $6551: $fe $01
    jr z, jr_03c_6592                             ; $6553: $28 $3d

    ld a, $10                                     ; $6555: $3e $10
    call $4256                                    ; $6557: $cd $56 $42
    ld a, [hl]                                    ; $655a: $7e
    call Call_03c_43bd                            ; $655b: $cd $bd $43
    cp $00                                        ; $655e: $fe $00
    jr z, jr_03c_6583                             ; $6560: $28 $21

    cp $01                                        ; $6562: $fe $01
    jr z, jr_03c_6578                             ; $6564: $28 $12

    ld a, [$d325]                                 ; $6566: $fa $25 $d3
    cp $05                                        ; $6569: $fe $05
    jr z, jr_03c_658e                             ; $656b: $28 $21

    ld a, $05                                     ; $656d: $3e $05
    call Call_03c_4599                            ; $656f: $cd $99 $45
    cp $03                                        ; $6572: $fe $03
    jr z, jr_03c_658e                             ; $6574: $28 $18

    jr jr_03c_6592                                ; $6576: $18 $1a

jr_03c_6578:
    ld a, $08                                     ; $6578: $3e $08
    call Call_03c_4599                            ; $657a: $cd $99 $45
    cp $04                                        ; $657d: $fe $04
    jr z, jr_03c_658e                             ; $657f: $28 $0d

    jr jr_03c_6592                                ; $6581: $18 $0f

jr_03c_6583:
    ld a, $0e                                     ; $6583: $3e $0e
    call Call_03c_4599                            ; $6585: $cd $99 $45
    cp $07                                        ; $6588: $fe $07
    jr z, jr_03c_658e                             ; $658a: $28 $02

    jr jr_03c_6592                                ; $658c: $18 $04

jr_03c_658e:
    ld d, $01                                     ; $658e: $16 $01
    jr jr_03c_6594                                ; $6590: $18 $02

jr_03c_6592:
    ld d, $00                                     ; $6592: $16 $00

jr_03c_6594:
    pop hl                                        ; $6594: $e1
    pop bc                                        ; $6595: $c1
    pop af                                        ; $6596: $f1
    ret                                           ; $6597: $c9


Call_03c_6598:
    push bc                                       ; $6598: $c5
    push de                                       ; $6599: $d5
    push hl                                       ; $659a: $e5
    ld hl, $d596                                  ; $659b: $21 $96 $d5
    ld e, [hl]                                    ; $659e: $5e
    inc hl                                        ; $659f: $23
    ld d, [hl]                                    ; $65a0: $56
    push de                                       ; $65a1: $d5
    pop hl                                        ; $65a2: $e1
    ld b, a                                       ; $65a3: $47
    ld d, h                                       ; $65a4: $54
    ld e, l                                       ; $65a5: $5d
    add hl, hl                                    ; $65a6: $29
    add hl, de                                    ; $65a7: $19
    push de                                       ; $65a8: $d5
    ld d, h                                       ; $65a9: $54
    ld e, l                                       ; $65aa: $5d
    pop hl                                        ; $65ab: $e1
    ld a, l                                       ; $65ac: $7d
    add hl, hl                                    ; $65ad: $29
    add hl, hl                                    ; $65ae: $29
    add hl, hl                                    ; $65af: $29
    add h                                         ; $65b0: $84
    ld h, a                                       ; $65b1: $67
    add hl, hl                                    ; $65b2: $29
    or a                                          ; $65b3: $b7
    call Call_000_08ac                            ; $65b4: $cd $ac $08
    ld de, $3039                                  ; $65b7: $11 $39 $30
    add hl, de                                    ; $65ba: $19
    push hl                                       ; $65bb: $e5
    pop de                                        ; $65bc: $d1
    ld hl, $d596                                  ; $65bd: $21 $96 $d5
    ld [hl], e                                    ; $65c0: $73
    inc hl                                        ; $65c1: $23
    ld [hl], d                                    ; $65c2: $72
    ld a, d                                       ; $65c3: $7a
    pop hl                                        ; $65c4: $e1
    pop de                                        ; $65c5: $d1
    pop bc                                        ; $65c6: $c1
    ret                                           ; $65c7: $c9


Call_03c_65c8:
    push bc                                       ; $65c8: $c5
    ld b, a                                       ; $65c9: $47

jr_03c_65ca:
    call Call_03c_6598                            ; $65ca: $cd $98 $65
    ld c, a                                       ; $65cd: $4f
    ld a, b                                       ; $65ce: $78
    dec a                                         ; $65cf: $3d
    jr z, jr_03c_65e1                             ; $65d0: $28 $0f

jr_03c_65d2:
    add a                                         ; $65d2: $87
    jr c, jr_03c_65d9                             ; $65d3: $38 $04

    srl c                                         ; $65d5: $cb $39
    jr jr_03c_65d2                                ; $65d7: $18 $f9

jr_03c_65d9:
    ld a, b                                       ; $65d9: $78
    dec a                                         ; $65da: $3d
    cp c                                          ; $65db: $b9
    jr c, jr_03c_65ca                             ; $65dc: $38 $ec

    ld a, c                                       ; $65de: $79
    pop bc                                        ; $65df: $c1
    ret                                           ; $65e0: $c9


jr_03c_65e1:
    xor a                                         ; $65e1: $af
    pop bc                                        ; $65e2: $c1
    ret                                           ; $65e3: $c9


    rrca                                          ; $65e4: $0f
    ld [bc], a                                    ; $65e5: $02
    rla                                           ; $65e6: $17
    nop                                           ; $65e7: $00
    ld c, $00                                     ; $65e8: $0e $00
    rla                                           ; $65ea: $17
    nop                                           ; $65eb: $00
    ld c, $01                                     ; $65ec: $0e $01
    ld b, $00                                     ; $65ee: $06 $00
    dec c                                         ; $65f0: $0d
    ld [bc], a                                    ; $65f1: $02
    ld b, $00                                     ; $65f2: $06 $00
    dec c                                         ; $65f4: $0d
    nop                                           ; $65f5: $00
    ld d, $00                                     ; $65f6: $16 $00
    inc c                                         ; $65f8: $0c
    ld bc, $0016                                  ; $65f9: $01 $16 $00
    inc c                                         ; $65fc: $0c
    ld [bc], a                                    ; $65fd: $02
    dec b                                         ; $65fe: $05
    nop                                           ; $65ff: $00
    dec bc                                        ; $6600: $0b
    nop                                           ; $6601: $00
    dec b                                         ; $6602: $05
    nop                                           ; $6603: $00
    inc c                                         ; $6604: $0c
    ld bc, $0015                                  ; $6605: $01 $15 $00
    ld a, [bc]                                    ; $6608: $0a
    ld [bc], a                                    ; $6609: $02
    dec d                                         ; $660a: $15
    nop                                           ; $660b: $00
    ld a, [bc]                                    ; $660c: $0a
    nop                                           ; $660d: $00
    inc b                                         ; $660e: $04
    nop                                           ; $660f: $00
    add hl, bc                                    ; $6610: $09
    ld bc, $0004                                  ; $6611: $01 $04 $00
    add hl, bc                                    ; $6614: $09
    ld [bc], a                                    ; $6615: $02
    inc d                                         ; $6616: $14
    nop                                           ; $6617: $00
    ld [$1400], sp                                ; $6618: $08 $00 $14
    nop                                           ; $661b: $00
    ld [$0301], sp                                ; $661c: $08 $01 $03
    nop                                           ; $661f: $00
    rlca                                          ; $6620: $07
    ld [bc], a                                    ; $6621: $02
    inc bc                                        ; $6622: $03
    nop                                           ; $6623: $00
    rlca                                          ; $6624: $07
    nop                                           ; $6625: $00
    inc de                                        ; $6626: $13
    nop                                           ; $6627: $00
    ld b, $01                                     ; $6628: $06 $01
    inc de                                        ; $662a: $13
    nop                                           ; $662b: $00
    ld b, $02                                     ; $662c: $06 $02
    ld [bc], a                                    ; $662e: $02
    nop                                           ; $662f: $00
    dec b                                         ; $6630: $05
    nop                                           ; $6631: $00
    ld [bc], a                                    ; $6632: $02
    nop                                           ; $6633: $00
    dec b                                         ; $6634: $05
    ld bc, $0012                                  ; $6635: $01 $12 $00
    inc b                                         ; $6638: $04
    ld [bc], a                                    ; $6639: $02
    ld [de], a                                    ; $663a: $12
    nop                                           ; $663b: $00
    inc b                                         ; $663c: $04
    nop                                           ; $663d: $00
    ld bc, $0300                                  ; $663e: $01 $00 $03
    ld bc, $0001                                  ; $6641: $01 $01 $00
    inc bc                                        ; $6644: $03
    ld [bc], a                                    ; $6645: $02
    ld de, $0200                                  ; $6646: $11 $00 $02
    nop                                           ; $6649: $00
    ld de, $0000                                  ; $664a: $11 $00 $00
    ld bc, $0000                                  ; $664d: $01 $00 $00
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
    rst $38                                       ; $6662: $ff
    cp $fd                                        ; $6663: $fe $fd
    db $fc                                        ; $6665: $fc
    db $fc                                        ; $6666: $fc
    db $fc                                        ; $6667: $fc
    db $fc                                        ; $6668: $fc
    db $fc                                        ; $6669: $fc
    db $fd                                        ; $666a: $fd
    db $fd                                        ; $666b: $fd
    cp $fe                                        ; $666c: $fe $fe
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    rst $38                                       ; $6670: $ff
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    ld bc, $0302                                  ; $6674: $01 $02 $03
    inc b                                         ; $6677: $04
    inc b                                         ; $6678: $04
    inc b                                         ; $6679: $04
    inc b                                         ; $667a: $04
    inc b                                         ; $667b: $04
    inc bc                                        ; $667c: $03
    ld [bc], a                                    ; $667d: $02
    ld [bc], a                                    ; $667e: $02
    ld [bc], a                                    ; $667f: $02
    ld bc, $0101                                  ; $6680: $01 $01 $01
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    push af                                       ; $6686: $f5
    push bc                                       ; $6687: $c5
    push de                                       ; $6688: $d5
    push hl                                       ; $6689: $e5
    ld a, $06                                     ; $668a: $3e $06
    ldh [$96], a                                  ; $668c: $e0 $96
    ldh [rSVBK], a                                ; $668e: $e0 $70
    push hl                                       ; $6690: $e5
    ld hl, $c9fe                                  ; $6691: $21 $fe $c9
    ld a, [hl+]                                   ; $6694: $2a
    ld d, [hl]                                    ; $6695: $56
    ld e, a                                       ; $6696: $5f
    ld hl, $d596                                  ; $6697: $21 $96 $d5
    ld a, e                                       ; $669a: $7b
    ld [hl+], a                                   ; $669b: $22
    ld [hl], d                                    ; $669c: $72
    pop hl                                        ; $669d: $e1
    push hl                                       ; $669e: $e5
    xor a                                         ; $669f: $af

jr_03c_66a0:
    cp $1b                                        ; $66a0: $fe $1b
    jr z, jr_03c_66b0                             ; $66a2: $28 $0c

    call Call_03c_67e2                            ; $66a4: $cd $e2 $67
    push af                                       ; $66a7: $f5
    ld a, e                                       ; $66a8: $7b
    ld [hl+], a                                   ; $66a9: $22
    ld [hl], d                                    ; $66aa: $72
    pop af                                        ; $66ab: $f1
    inc hl                                        ; $66ac: $23
    inc a                                         ; $66ad: $3c
    jr jr_03c_66a0                                ; $66ae: $18 $f0

jr_03c_66b0:
    pop hl                                        ; $66b0: $e1
    call Call_03c_69d7                            ; $66b1: $cd $d7 $69
    call Call_03c_6821                            ; $66b4: $cd $21 $68
    xor a                                         ; $66b7: $af

jr_03c_66b8:
    cp $1b                                        ; $66b8: $fe $1b
    jr z, jr_03c_66d2                             ; $66ba: $28 $16

    push af                                       ; $66bc: $f5
    push hl                                       ; $66bd: $e5
    ld a, [hl+]                                   ; $66be: $2a
    ld d, [hl]                                    ; $66bf: $56
    ld e, a                                       ; $66c0: $5f
    pop hl                                        ; $66c1: $e1
    pop af                                        ; $66c2: $f1
    call Call_03c_66ef                            ; $66c3: $cd $ef $66
    push af                                       ; $66c6: $f5
    push hl                                       ; $66c7: $e5
    ld a, e                                       ; $66c8: $7b
    ld [hl+], a                                   ; $66c9: $22
    ld [hl], d                                    ; $66ca: $72
    pop hl                                        ; $66cb: $e1
    pop af                                        ; $66cc: $f1
    inc hl                                        ; $66cd: $23
    inc hl                                        ; $66ce: $23
    inc a                                         ; $66cf: $3c
    jr jr_03c_66b8                                ; $66d0: $18 $e6

jr_03c_66d2:
    push hl                                       ; $66d2: $e5
    ld a, $3e                                     ; $66d3: $3e $3e
    call $4256                                    ; $66d5: $cd $56 $42
    ld a, [hl]                                    ; $66d8: $7e
    ld d, a                                       ; $66d9: $57
    ld a, [$c837]                                 ; $66da: $fa $37 $c8
    ld e, a                                       ; $66dd: $5f
    ld a, [$c4bd]                                 ; $66de: $fa $bd $c4
    cp $00                                        ; $66e1: $fe $00
    jr nz, jr_03c_66e6                            ; $66e3: $20 $01

    dec e                                         ; $66e5: $1d

jr_03c_66e6:
    pop hl                                        ; $66e6: $e1
    ld a, e                                       ; $66e7: $7b
    ld [hl+], a                                   ; $66e8: $22
    ld [hl], d                                    ; $66e9: $72
    pop hl                                        ; $66ea: $e1
    pop de                                        ; $66eb: $d1
    pop bc                                        ; $66ec: $c1
    pop af                                        ; $66ed: $f1
    ret                                           ; $66ee: $c9


Call_03c_66ef:
    push af                                       ; $66ef: $f5
    push bc                                       ; $66f0: $c5
    push hl                                       ; $66f1: $e5
    ld b, a                                       ; $66f2: $47
    ld c, d                                       ; $66f3: $4a
    push bc                                       ; $66f4: $c5
    add a                                         ; $66f5: $87
    add a                                         ; $66f6: $87
    ld hl, $65e4                                  ; $66f7: $21 $e4 $65
    ld e, a                                       ; $66fa: $5f
    ld d, $00                                     ; $66fb: $16 $00
    add hl, de                                    ; $66fd: $19
    pop bc                                        ; $66fe: $c1
    inc hl                                        ; $66ff: $23
    inc hl                                        ; $6700: $23
    ld a, [hl]                                    ; $6701: $7e
    and $0f                                       ; $6702: $e6 $0f
    ld d, a                                       ; $6704: $57
    ld a, [$c4bd]                                 ; $6705: $fa $bd $c4
    cp $00                                        ; $6708: $fe $00
    jr nz, jr_03c_6713                            ; $670a: $20 $07

    ld a, [hl]                                    ; $670c: $7e
    and $10                                       ; $670d: $e6 $10
    cp $00                                        ; $670f: $fe $00
    jr z, jr_03c_6713                             ; $6711: $28 $00

jr_03c_6713:
    ld a, [$c4bd]                                 ; $6713: $fa $bd $c4
    cp $00                                        ; $6716: $fe $00
    jr nz, jr_03c_6720                            ; $6718: $20 $06

    ld a, [$c837]                                 ; $671a: $fa $37 $c8
    dec a                                         ; $671d: $3d
    jr jr_03c_6723                                ; $671e: $18 $03

jr_03c_6720:
    ld a, [$c837]                                 ; $6720: $fa $37 $c8

jr_03c_6723:
    add d                                         ; $6723: $82
    ld e, a                                       ; $6724: $5f
    cp $00                                        ; $6725: $fe $00
    jp z, Jump_03c_67ac                           ; $6727: $ca $ac $67

    sub $13                                       ; $672a: $d6 $13
    bit 7, a                                      ; $672c: $cb $7f
    jr nz, jr_03c_6733                            ; $672e: $20 $03

    ld a, $12                                     ; $6730: $3e $12
    ld e, a                                       ; $6732: $5f

jr_03c_6733:
    ld l, c                                       ; $6733: $69
    bit 7, l                                      ; $6734: $cb $7d
    jr z, jr_03c_673c                             ; $6736: $28 $04

    ld a, l                                       ; $6738: $7d
    cpl                                           ; $6739: $2f
    inc a                                         ; $673a: $3c
    ld l, a                                       ; $673b: $6f

jr_03c_673c:
    ld a, e                                       ; $673c: $7b
    ld h, $00                                     ; $673d: $26 $00
    call Call_000_08b9                            ; $673f: $cd $b9 $08
    push de                                       ; $6742: $d5
    ld e, $12                                     ; $6743: $1e $12
    ld d, $00                                     ; $6745: $16 $00
    call Call_000_09ae                            ; $6747: $cd $ae $09
    pop de                                        ; $674a: $d1
    ld a, c                                       ; $674b: $79
    bit 7, a                                      ; $674c: $cb $7f
    jr z, jr_03c_675b                             ; $674e: $28 $0b

    push de                                       ; $6750: $d5
    push hl                                       ; $6751: $e5
    pop de                                        ; $6752: $d1
    ld h, $00                                     ; $6753: $26 $00
    ld l, $00                                     ; $6755: $2e $00
    call Call_000_08ac                            ; $6757: $cd $ac $08
    pop de                                        ; $675a: $d1

jr_03c_675b:
    ld d, l                                       ; $675b: $55
    ld a, b                                       ; $675c: $78
    call Call_03c_67b1                            ; $675d: $cd $b1 $67
    add d                                         ; $6760: $82
    ld d, a                                       ; $6761: $57
    ld a, e                                       ; $6762: $7b
    ld a, b                                       ; $6763: $78
    cp $1a                                        ; $6764: $fe $1a
    jr nz, jr_03c_67a8                            ; $6766: $20 $40

    ld a, [$c837]                                 ; $6768: $fa $37 $c8
    cp $12                                        ; $676b: $fe $12
    jr nz, jr_03c_67a8                            ; $676d: $20 $39

    push de                                       ; $676f: $d5
    ld a, [$c836]                                 ; $6770: $fa $36 $c8
    dec a                                         ; $6773: $3d
    ld hl, $67dd                                  ; $6774: $21 $dd $67
    ld e, a                                       ; $6777: $5f
    ld d, $00                                     ; $6778: $16 $00
    add hl, de                                    ; $677a: $19
    ld a, [hl]                                    ; $677b: $7e
    call Call_03c_6a04                            ; $677c: $cd $04 $6a
    push hl                                       ; $677f: $e5
    pop de                                        ; $6780: $d1
    ld a, $3e                                     ; $6781: $3e $3e
    call $4256                                    ; $6783: $cd $56 $42
    ld a, [hl]                                    ; $6786: $7e
    call Call_03c_6a04                            ; $6787: $cd $04 $6a
    push hl                                       ; $678a: $e5
    pop bc                                        ; $678b: $c1
    call Call_03c_4404                            ; $678c: $cd $04 $44
    pop de                                        ; $678f: $d1
    cp $00                                        ; $6790: $fe $00
    jr z, jr_03c_6796                             ; $6792: $28 $02

    jr jr_03c_67a8                                ; $6794: $18 $12

jr_03c_6796:
    push de                                       ; $6796: $d5
    ld a, d                                       ; $6797: $7a
    call Call_03c_6a04                            ; $6798: $cd $04 $6a
    push hl                                       ; $679b: $e5
    pop de                                        ; $679c: $d1
    call Call_03c_4404                            ; $679d: $cd $04 $44
    pop de                                        ; $67a0: $d1
    cp $00                                        ; $67a1: $fe $00
    jr nz, jr_03c_67a8                            ; $67a3: $20 $03

    ld a, d                                       ; $67a5: $7a
    inc a                                         ; $67a6: $3c
    ld d, a                                       ; $67a7: $57

jr_03c_67a8:
    pop hl                                        ; $67a8: $e1
    pop bc                                        ; $67a9: $c1
    pop af                                        ; $67aa: $f1
    ret                                           ; $67ab: $c9


Jump_03c_67ac:
    xor a                                         ; $67ac: $af
    ld d, a                                       ; $67ad: $57
    ld e, a                                       ; $67ae: $5f
    jr jr_03c_67a8                                ; $67af: $18 $f7

Call_03c_67b1:
    push bc                                       ; $67b1: $c5
    push de                                       ; $67b2: $d5
    push hl                                       ; $67b3: $e5
    push de                                       ; $67b4: $d5
    add a                                         ; $67b5: $87
    add a                                         ; $67b6: $87
    ld hl, $65e4                                  ; $67b7: $21 $e4 $65
    ld e, a                                       ; $67ba: $5f
    ld d, $00                                     ; $67bb: $16 $00
    add hl, de                                    ; $67bd: $19
    inc hl                                        ; $67be: $23
    ld a, [hl]                                    ; $67bf: $7e
    ld b, a                                       ; $67c0: $47
    inc hl                                        ; $67c1: $23
    inc hl                                        ; $67c2: $23
    ld a, [hl]                                    ; $67c3: $7e
    ld c, a                                       ; $67c4: $4f
    ld hl, $0012                                  ; $67c5: $21 $12 $00
    ld a, b                                       ; $67c8: $78
    call Call_000_08b9                            ; $67c9: $cd $b9 $08
    push hl                                       ; $67cc: $e5
    pop de                                        ; $67cd: $d1
    ld hl, $6650                                  ; $67ce: $21 $50 $66
    add hl, de                                    ; $67d1: $19
    pop de                                        ; $67d2: $d1
    ld d, $00                                     ; $67d3: $16 $00
    dec e                                         ; $67d5: $1d
    add hl, de                                    ; $67d6: $19
    ld a, [hl]                                    ; $67d7: $7e
    add c                                         ; $67d8: $81
    pop hl                                        ; $67d9: $e1
    pop de                                        ; $67da: $d1
    pop bc                                        ; $67db: $c1
    ret                                           ; $67dc: $c9


    rst $38                                       ; $67dd: $ff
    db $fd                                        ; $67de: $fd
    ei                                            ; $67df: $fb
    ld hl, sp-$0b                                 ; $67e0: $f8 $f5

Call_03c_67e2:
    push af                                       ; $67e2: $f5
    push bc                                       ; $67e3: $c5
    push hl                                       ; $67e4: $e5
    ld b, a                                       ; $67e5: $47
    add a                                         ; $67e6: $87
    add a                                         ; $67e7: $87
    ld hl, $65e4                                  ; $67e8: $21 $e4 $65
    ld e, a                                       ; $67eb: $5f
    ld d, $00                                     ; $67ec: $16 $00
    add hl, de                                    ; $67ee: $19
    ld a, [hl]                                    ; $67ef: $7e
    ld c, a                                       ; $67f0: $4f
    ld hl, $67dd                                  ; $67f1: $21 $dd $67
    ld a, [$c836]                                 ; $67f4: $fa $36 $c8
    dec a                                         ; $67f7: $3d

jr_03c_67f8:
    cp $00                                        ; $67f8: $fe $00
    jr z, jr_03c_6800                             ; $67fa: $28 $04

    inc hl                                        ; $67fc: $23
    dec a                                         ; $67fd: $3d
    jr jr_03c_67f8                                ; $67fe: $18 $f8

jr_03c_6800:
    ld a, [hl]                                    ; $6800: $7e
    add c                                         ; $6801: $81
    ld c, a                                       ; $6802: $4f
    ld a, b                                       ; $6803: $78
    cp $1a                                        ; $6804: $fe $1a
    jr z, jr_03c_681e                             ; $6806: $28 $16

    ld a, $05                                     ; $6808: $3e $05
    call Call_03c_65c8                            ; $680a: $cd $c8 $65
    ld d, a                                       ; $680d: $57
    ld a, $05                                     ; $680e: $3e $05
    call Call_03c_65c8                            ; $6810: $cd $c8 $65
    add d                                         ; $6813: $82
    srl a                                         ; $6814: $cb $3f
    sub $02                                       ; $6816: $d6 $02
    add c                                         ; $6818: $81
    ld d, a                                       ; $6819: $57

jr_03c_681a:
    pop hl                                        ; $681a: $e1
    pop bc                                        ; $681b: $c1
    pop af                                        ; $681c: $f1
    ret                                           ; $681d: $c9


jr_03c_681e:
    ld d, c                                       ; $681e: $51
    jr jr_03c_681a                                ; $681f: $18 $f9

Call_03c_6821:
    push af                                       ; $6821: $f5
    push bc                                       ; $6822: $c5
    push de                                       ; $6823: $d5
    push hl                                       ; $6824: $e5
    ld a, l                                       ; $6825: $7d
    ld [$d552], a                                 ; $6826: $ea $52 $d5
    ld a, h                                       ; $6829: $7c
    ld [$d553], a                                 ; $682a: $ea $53 $d5
    xor a                                         ; $682d: $af

jr_03c_682e:
    cp $1b                                        ; $682e: $fe $1b
    jr z, jr_03c_685c                             ; $6830: $28 $2a

    push af                                       ; $6832: $f5
    push hl                                       ; $6833: $e5
    push de                                       ; $6834: $d5
    ld a, [$c836]                                 ; $6835: $fa $36 $c8
    dec a                                         ; $6838: $3d
    ld hl, $67dd                                  ; $6839: $21 $dd $67
    ld e, a                                       ; $683c: $5f
    ld d, $00                                     ; $683d: $16 $00
    add hl, de                                    ; $683f: $19
    ld a, [hl]                                    ; $6840: $7e
    pop de                                        ; $6841: $d1
    pop hl                                        ; $6842: $e1
    ld b, a                                       ; $6843: $47
    inc hl                                        ; $6844: $23
    ld a, [hl]                                    ; $6845: $7e
    ld c, a                                       ; $6846: $4f
    sub b                                         ; $6847: $90
    bit 7, a                                      ; $6848: $cb $7f
    jr nz, jr_03c_684e                            ; $684a: $20 $02

    jr jr_03c_6857                                ; $684c: $18 $09

jr_03c_684e:
    ld a, c                                       ; $684e: $79
    bit 7, a                                      ; $684f: $cb $7f
    jr z, jr_03c_6855                             ; $6851: $28 $02

    cpl                                           ; $6853: $2f
    inc a                                         ; $6854: $3c

jr_03c_6855:
    add b                                         ; $6855: $80
    ld [hl], a                                    ; $6856: $77

jr_03c_6857:
    pop af                                        ; $6857: $f1
    inc hl                                        ; $6858: $23
    inc a                                         ; $6859: $3c
    jr jr_03c_682e                                ; $685a: $18 $d2

jr_03c_685c:
    ld de, $d554                                  ; $685c: $11 $54 $d5
    ld bc, $d572                                  ; $685f: $01 $72 $d5
    ld a, [$d552]                                 ; $6862: $fa $52 $d5
    ld l, a                                       ; $6865: $6f
    ld a, [$d553]                                 ; $6866: $fa $53 $d5
    ld h, a                                       ; $6869: $67
    xor a                                         ; $686a: $af

jr_03c_686b:
    cp $1b                                        ; $686b: $fe $1b
    jr z, jr_03c_6881                             ; $686d: $28 $12

    inc hl                                        ; $686f: $23
    push hl                                       ; $6870: $e5
    push af                                       ; $6871: $f5
    ld a, [hl]                                    ; $6872: $7e
    push de                                       ; $6873: $d5
    pop hl                                        ; $6874: $e1
    ld [hl], a                                    ; $6875: $77
    pop af                                        ; $6876: $f1
    push bc                                       ; $6877: $c5
    pop hl                                        ; $6878: $e1
    ld [hl], a                                    ; $6879: $77
    pop hl                                        ; $687a: $e1
    inc hl                                        ; $687b: $23
    inc de                                        ; $687c: $13
    inc bc                                        ; $687d: $03
    inc a                                         ; $687e: $3c
    jr jr_03c_686b                                ; $687f: $18 $ea

jr_03c_6881:
    ld hl, $d554                                  ; $6881: $21 $54 $d5
    ld de, $d572                                  ; $6884: $11 $72 $d5
    ld a, $1b                                     ; $6887: $3e $1b
    call Call_03c_6921                            ; $6889: $cd $21 $69
    ld hl, $d554                                  ; $688c: $21 $54 $d5
    ld a, [hl]                                    ; $688f: $7e
    ld b, a                                       ; $6890: $47
    inc hl                                        ; $6891: $23
    ld a, [hl]                                    ; $6892: $7e
    cp b                                          ; $6893: $b8
    jr nz, jr_03c_68ba                            ; $6894: $20 $24

    ld hl, $d572                                  ; $6896: $21 $72 $d5
    inc hl                                        ; $6899: $23
    ld a, $01                                     ; $689a: $3e $01

jr_03c_689c:
    cp $1b                                        ; $689c: $fe $1b
    jr z, jr_03c_68ba                             ; $689e: $28 $1a

    push af                                       ; $68a0: $f5
    ld a, [hl]                                    ; $68a1: $7e
    push hl                                       ; $68a2: $e5
    ld l, a                                       ; $68a3: $6f
    ld h, $00                                     ; $68a4: $26 $00
    add hl, hl                                    ; $68a6: $29
    ld a, [$d552]                                 ; $68a7: $fa $52 $d5
    ld e, a                                       ; $68aa: $5f
    ld a, [$d553]                                 ; $68ab: $fa $53 $d5
    ld d, a                                       ; $68ae: $57
    add hl, de                                    ; $68af: $19
    inc hl                                        ; $68b0: $23
    ld a, [hl]                                    ; $68b1: $7e
    inc a                                         ; $68b2: $3c
    ld [hl], a                                    ; $68b3: $77
    pop hl                                        ; $68b4: $e1
    pop af                                        ; $68b5: $f1
    inc a                                         ; $68b6: $3c
    inc hl                                        ; $68b7: $23
    jr jr_03c_689c                                ; $68b8: $18 $e2

jr_03c_68ba:
    ld hl, $d554                                  ; $68ba: $21 $54 $d5
    inc hl                                        ; $68bd: $23
    ld a, [hl]                                    ; $68be: $7e
    ld b, a                                       ; $68bf: $47
    inc hl                                        ; $68c0: $23
    ld a, [hl]                                    ; $68c1: $7e
    cp b                                          ; $68c2: $b8
    jr nz, jr_03c_68ea                            ; $68c3: $20 $25

    ld hl, $d572                                  ; $68c5: $21 $72 $d5
    inc hl                                        ; $68c8: $23
    inc hl                                        ; $68c9: $23
    ld a, $02                                     ; $68ca: $3e $02

jr_03c_68cc:
    cp $1b                                        ; $68cc: $fe $1b
    jr z, jr_03c_68ea                             ; $68ce: $28 $1a

    push af                                       ; $68d0: $f5
    ld a, [hl]                                    ; $68d1: $7e
    push hl                                       ; $68d2: $e5
    ld l, a                                       ; $68d3: $6f
    ld h, $00                                     ; $68d4: $26 $00
    add hl, hl                                    ; $68d6: $29
    ld a, [$d552]                                 ; $68d7: $fa $52 $d5
    ld e, a                                       ; $68da: $5f
    ld a, [$d553]                                 ; $68db: $fa $53 $d5
    ld d, a                                       ; $68de: $57
    add hl, de                                    ; $68df: $19
    inc hl                                        ; $68e0: $23
    ld a, [hl]                                    ; $68e1: $7e
    inc a                                         ; $68e2: $3c
    ld [hl], a                                    ; $68e3: $77
    pop hl                                        ; $68e4: $e1
    pop af                                        ; $68e5: $f1
    inc a                                         ; $68e6: $3c
    inc hl                                        ; $68e7: $23
    jr jr_03c_68cc                                ; $68e8: $18 $e2

jr_03c_68ea:
    ld hl, $d554                                  ; $68ea: $21 $54 $d5
    inc hl                                        ; $68ed: $23
    inc hl                                        ; $68ee: $23
    ld a, [hl]                                    ; $68ef: $7e
    ld b, a                                       ; $68f0: $47
    inc hl                                        ; $68f1: $23
    ld a, [hl]                                    ; $68f2: $7e
    cp b                                          ; $68f3: $b8
    jr nz, jr_03c_691c                            ; $68f4: $20 $26

    ld hl, $d572                                  ; $68f6: $21 $72 $d5
    inc hl                                        ; $68f9: $23
    inc hl                                        ; $68fa: $23
    inc hl                                        ; $68fb: $23
    ld a, $03                                     ; $68fc: $3e $03

jr_03c_68fe:
    cp $1b                                        ; $68fe: $fe $1b
    jr z, jr_03c_691c                             ; $6900: $28 $1a

    push af                                       ; $6902: $f5
    ld a, [hl]                                    ; $6903: $7e
    push hl                                       ; $6904: $e5
    ld l, a                                       ; $6905: $6f
    ld h, $00                                     ; $6906: $26 $00
    add hl, hl                                    ; $6908: $29
    ld a, [$d552]                                 ; $6909: $fa $52 $d5
    ld e, a                                       ; $690c: $5f
    ld a, [$d553]                                 ; $690d: $fa $53 $d5
    ld d, a                                       ; $6910: $57
    add hl, de                                    ; $6911: $19
    inc hl                                        ; $6912: $23
    ld a, [hl]                                    ; $6913: $7e
    inc a                                         ; $6914: $3c
    ld [hl], a                                    ; $6915: $77
    pop hl                                        ; $6916: $e1
    pop af                                        ; $6917: $f1
    inc a                                         ; $6918: $3c
    inc hl                                        ; $6919: $23
    jr jr_03c_68fe                                ; $691a: $18 $e2

jr_03c_691c:
    pop hl                                        ; $691c: $e1
    pop de                                        ; $691d: $d1
    pop bc                                        ; $691e: $c1
    pop af                                        ; $691f: $f1
    ret                                           ; $6920: $c9


Call_03c_6921:
    push af                                       ; $6921: $f5
    push bc                                       ; $6922: $c5
    push de                                       ; $6923: $d5
    push hl                                       ; $6924: $e5
    ld [$d54a], a                                 ; $6925: $ea $4a $d5
    ld a, e                                       ; $6928: $7b
    ld [$d54e], a                                 ; $6929: $ea $4e $d5
    ld a, d                                       ; $692c: $7a
    ld [$d54f], a                                 ; $692d: $ea $4f $d5
    ld a, l                                       ; $6930: $7d
    ld [$d550], a                                 ; $6931: $ea $50 $d5
    ld a, h                                       ; $6934: $7c
    ld [$d551], a                                 ; $6935: $ea $51 $d5
    ld b, $00                                     ; $6938: $06 $00

Jump_03c_693a:
    ld a, [$d54a]                                 ; $693a: $fa $4a $d5
    dec a                                         ; $693d: $3d
    sub b                                         ; $693e: $90
    jp z, Jump_03c_69d2                           ; $693f: $ca $d2 $69

    bit 7, a                                      ; $6942: $cb $7f
    jp nz, Jump_03c_69d2                          ; $6944: $c2 $d2 $69

    ld c, b                                       ; $6947: $48
    ld d, b                                       ; $6948: $50
    inc d                                         ; $6949: $14

jr_03c_694a:
    ld a, [$d54a]                                 ; $694a: $fa $4a $d5
    sub d                                         ; $694d: $92
    jr z, jr_03c_697e                             ; $694e: $28 $2e

    bit 7, a                                      ; $6950: $cb $7f
    jr nz, jr_03c_697e                            ; $6952: $20 $2a

    ld a, [$d550]                                 ; $6954: $fa $50 $d5
    ld l, a                                       ; $6957: $6f
    ld a, [$d551]                                 ; $6958: $fa $51 $d5
    ld h, a                                       ; $695b: $67
    push de                                       ; $695c: $d5
    ld e, d                                       ; $695d: $5a
    ld d, $00                                     ; $695e: $16 $00
    add hl, de                                    ; $6960: $19
    pop de                                        ; $6961: $d1
    ld a, [hl]                                    ; $6962: $7e
    ld e, a                                       ; $6963: $5f
    push de                                       ; $6964: $d5
    ld a, [$d550]                                 ; $6965: $fa $50 $d5
    ld l, a                                       ; $6968: $6f
    ld a, [$d551]                                 ; $6969: $fa $51 $d5
    ld h, a                                       ; $696c: $67
    ld e, c                                       ; $696d: $59
    ld d, $00                                     ; $696e: $16 $00
    add hl, de                                    ; $6970: $19
    pop de                                        ; $6971: $d1
    ld a, [hl]                                    ; $6972: $7e
    sub e                                         ; $6973: $93
    jr z, jr_03c_697b                             ; $6974: $28 $05

    bit 7, a                                      ; $6976: $cb $7f
    jr nz, jr_03c_697b                            ; $6978: $20 $01

    ld c, d                                       ; $697a: $4a

jr_03c_697b:
    inc d                                         ; $697b: $14
    jr jr_03c_694a                                ; $697c: $18 $cc

jr_03c_697e:
    push bc                                       ; $697e: $c5
    push de                                       ; $697f: $d5
    ld a, [$d550]                                 ; $6980: $fa $50 $d5
    ld l, a                                       ; $6983: $6f
    ld a, [$d551]                                 ; $6984: $fa $51 $d5
    ld h, a                                       ; $6987: $67
    ld e, c                                       ; $6988: $59
    ld d, $00                                     ; $6989: $16 $00
    add hl, de                                    ; $698b: $19
    push hl                                       ; $698c: $e5
    ld a, [hl]                                    ; $698d: $7e
    push af                                       ; $698e: $f5
    ld a, [$d550]                                 ; $698f: $fa $50 $d5
    ld l, a                                       ; $6992: $6f
    ld a, [$d551]                                 ; $6993: $fa $51 $d5
    ld h, a                                       ; $6996: $67
    pop af                                        ; $6997: $f1
    ld e, b                                       ; $6998: $58
    ld d, $00                                     ; $6999: $16 $00
    add hl, de                                    ; $699b: $19
    push af                                       ; $699c: $f5
    ld a, [hl]                                    ; $699d: $7e
    ld b, a                                       ; $699e: $47
    pop af                                        ; $699f: $f1
    ld [hl], a                                    ; $69a0: $77
    pop hl                                        ; $69a1: $e1
    ld a, b                                       ; $69a2: $78
    ld [hl], a                                    ; $69a3: $77
    pop de                                        ; $69a4: $d1
    pop bc                                        ; $69a5: $c1
    push bc                                       ; $69a6: $c5
    push de                                       ; $69a7: $d5
    ld a, [$d54e]                                 ; $69a8: $fa $4e $d5
    ld l, a                                       ; $69ab: $6f
    ld a, [$d54f]                                 ; $69ac: $fa $4f $d5
    ld h, a                                       ; $69af: $67
    ld e, c                                       ; $69b0: $59
    ld d, $00                                     ; $69b1: $16 $00
    add hl, de                                    ; $69b3: $19
    push hl                                       ; $69b4: $e5
    ld a, [hl]                                    ; $69b5: $7e
    push af                                       ; $69b6: $f5
    ld a, [$d54e]                                 ; $69b7: $fa $4e $d5
    ld l, a                                       ; $69ba: $6f
    ld a, [$d54f]                                 ; $69bb: $fa $4f $d5
    ld h, a                                       ; $69be: $67
    pop af                                        ; $69bf: $f1
    ld e, b                                       ; $69c0: $58
    ld d, $00                                     ; $69c1: $16 $00
    add hl, de                                    ; $69c3: $19
    push af                                       ; $69c4: $f5
    ld a, [hl]                                    ; $69c5: $7e
    ld b, a                                       ; $69c6: $47
    pop af                                        ; $69c7: $f1
    ld [hl], a                                    ; $69c8: $77
    pop hl                                        ; $69c9: $e1
    ld a, b                                       ; $69ca: $78
    ld [hl], a                                    ; $69cb: $77
    pop de                                        ; $69cc: $d1
    pop bc                                        ; $69cd: $c1
    inc b                                         ; $69ce: $04
    jp Jump_03c_693a                              ; $69cf: $c3 $3a $69


Jump_03c_69d2:
    pop hl                                        ; $69d2: $e1
    pop de                                        ; $69d3: $d1
    pop bc                                        ; $69d4: $c1
    pop af                                        ; $69d5: $f1
    ret                                           ; $69d6: $c9


Call_03c_69d7:
    push af                                       ; $69d7: $f5
    push bc                                       ; $69d8: $c5
    push de                                       ; $69d9: $d5
    push hl                                       ; $69da: $e5
    push hl                                       ; $69db: $e5
    ld de, $0034                                  ; $69dc: $11 $34 $00
    add hl, de                                    ; $69df: $19
    inc hl                                        ; $69e0: $23
    ld a, [hl]                                    ; $69e1: $7e
    ld b, a                                       ; $69e2: $47
    pop hl                                        ; $69e3: $e1
    xor a                                         ; $69e4: $af

jr_03c_69e5:
    cp $1a                                        ; $69e5: $fe $1a
    jr z, jr_03c_69ff                             ; $69e7: $28 $16

    push af                                       ; $69e9: $f5
    inc hl                                        ; $69ea: $23
    ld a, [hl]                                    ; $69eb: $7e
    sub b                                         ; $69ec: $90
    cp $00                                        ; $69ed: $fe $00
    jr z, jr_03c_69f7                             ; $69ef: $28 $06

    bit 7, a                                      ; $69f1: $cb $7f
    jr nz, jr_03c_69f7                            ; $69f3: $20 $02

    jr jr_03c_69fa                                ; $69f5: $18 $03

jr_03c_69f7:
    ld a, b                                       ; $69f7: $78
    inc a                                         ; $69f8: $3c
    ld [hl], a                                    ; $69f9: $77

jr_03c_69fa:
    pop af                                        ; $69fa: $f1
    inc hl                                        ; $69fb: $23
    inc a                                         ; $69fc: $3c
    jr jr_03c_69e5                                ; $69fd: $18 $e6

jr_03c_69ff:
    pop hl                                        ; $69ff: $e1
    pop de                                        ; $6a00: $d1
    pop bc                                        ; $6a01: $c1
    pop af                                        ; $6a02: $f1
    ret                                           ; $6a03: $c9


Call_03c_6a04:
    push af                                       ; $6a04: $f5
    push bc                                       ; $6a05: $c5
    push de                                       ; $6a06: $d5
    ld l, a                                       ; $6a07: $6f
    ld h, $00                                     ; $6a08: $26 $00
    push hl                                       ; $6a0a: $e5
    pop bc                                        ; $6a0b: $c1
    ld d, $00                                     ; $6a0c: $16 $00
    ld e, $91                                     ; $6a0e: $1e $91
    call Call_000_08ac                            ; $6a10: $cd $ac $08
    bit 7, h                                      ; $6a13: $cb $7c
    jr nz, jr_03c_6a1d                            ; $6a15: $20 $06

    push bc                                       ; $6a17: $c5
    pop hl                                        ; $6a18: $e1
    ld h, $ff                                     ; $6a19: $26 $ff
    jr jr_03c_6a1f                                ; $6a1b: $18 $02

jr_03c_6a1d:
    push bc                                       ; $6a1d: $c5
    pop hl                                        ; $6a1e: $e1

jr_03c_6a1f:
    pop de                                        ; $6a1f: $d1
    pop bc                                        ; $6a20: $c1
    pop af                                        ; $6a21: $f1
    ret                                           ; $6a22: $c9


    ld hl, $0153                                  ; $6a23: $21 $53 $01
    ld de, $0501                                  ; $6a26: $11 $01 $05
    call Call_000_20b1                            ; $6a29: $cd $b1 $20
    ld a, $0a                                     ; $6a2c: $3e $0a
    ld [$0000], a                                 ; $6a2e: $ea $00 $00
    ld a, $01                                     ; $6a31: $3e $01
    ldh [$97], a                                  ; $6a33: $e0 $97
    ld [$4000], a                                 ; $6a35: $ea $00 $40
    ld bc, $0400                                  ; $6a38: $01 $00 $04
    call Call_03c_6a55                            ; $6a3b: $cd $55 $6a
    ld hl, $6a4c                                  ; $6a3e: $21 $4c $6a
    ld de, $000a                                  ; $6a41: $11 $0a $00
    call Call_000_20b1                            ; $6a44: $cd $b1 $20
    call Call_000_2e3b                            ; $6a47: $cd $3b $2e

jr_03c_6a4a:
    jr jr_03c_6a4a                                ; $6a4a: $18 $fe

    ld b, e                                       ; $6a4c: $43
    ld c, a                                       ; $6a4d: $4f
    ld c, l                                       ; $6a4e: $4d
    ld d, b                                       ; $6a4f: $50
    ld c, h                                       ; $6a50: $4c
    ld b, l                                       ; $6a51: $45
    ld d, h                                       ; $6a52: $54
    ld b, l                                       ; $6a53: $45
    nop                                           ; $6a54: $00

Call_03c_6a55:
    push bc                                       ; $6a55: $c5
    rst $18                                       ; $6a56: $df
    inc d                                         ; $6a57: $14
    ld [bc], a                                    ; $6a58: $02
    pop bc                                        ; $6a59: $c1
    rst $18                                       ; $6a5a: $df
    ld e, $02                                     ; $6a5b: $1e $02
    ld bc, $ff01                                  ; $6a5d: $01 $01 $ff
    rst $18                                       ; $6a60: $df
    ld e, $02                                     ; $6a61: $1e $02
    ld hl, $c893                                  ; $6a63: $21 $93 $c8
    ld [hl], $01                                  ; $6a66: $36 $01
    ld hl, $c8d3                                  ; $6a68: $21 $d3 $c8
    ld [hl], $00                                  ; $6a6b: $36 $00
    ld a, $06                                     ; $6a6d: $3e $06
    ldh [$96], a                                  ; $6a6f: $e0 $96
    ldh [rSVBK], a                                ; $6a71: $e0 $70
    ld hl, $0001                                  ; $6a73: $21 $01 $00
    rst $18                                       ; $6a76: $df
    db $10                                        ; $6a77: $10
    db $10                                        ; $6a78: $10
    ld a, $01                                     ; $6a79: $3e $01
    ld [$d334], a                                 ; $6a7b: $ea $34 $d3
    ld a, $00                                     ; $6a7e: $3e $00
    ld [$d4bf], a                                 ; $6a80: $ea $bf $d4
    ld a, $03                                     ; $6a83: $3e $03
    ldh [$9e], a                                  ; $6a85: $e0 $9e
    rst $18                                       ; $6a87: $df
    ld d, b                                       ; $6a88: $50
    db $10                                        ; $6a89: $10
    rst $18                                       ; $6a8a: $df
    ld [$df13], sp                                ; $6a8b: $08 $13 $df
    ld b, $10                                     ; $6a8e: $06 $10
    rst $18                                       ; $6a90: $df
    ld c, b                                       ; $6a91: $48
    db $10                                        ; $6a92: $10
    rst $18                                       ; $6a93: $df
    ld a, [hl-]                                   ; $6a94: $3a
    db $10                                        ; $6a95: $10
    ld a, $00                                     ; $6a96: $3e $00
    ld [$d4d9], a                                 ; $6a98: $ea $d9 $d4
    ld a, $3c                                     ; $6a9b: $3e $3c
    ld [$d4d8], a                                 ; $6a9d: $ea $d8 $d4
    ld a, $00                                     ; $6aa0: $3e $00
    ld [$d44f], a                                 ; $6aa2: $ea $4f $d4
    ld a, $3c                                     ; $6aa5: $3e $3c
    ld [$d450], a                                 ; $6aa7: $ea $50 $d4
    ld a, [$c89a]                                 ; $6aaa: $fa $9a $c8
    ld [$d4c6], a                                 ; $6aad: $ea $c6 $d4
    ld a, [$c89b]                                 ; $6ab0: $fa $9b $c8
    ld [$d4c7], a                                 ; $6ab3: $ea $c7 $d4
    ld a, [$c89e]                                 ; $6ab6: $fa $9e $c8
    ld [$d4c9], a                                 ; $6ab9: $ea $c9 $d4
    ld a, [$c89d]                                 ; $6abc: $fa $9d $c8
    ld [$d4ca], a                                 ; $6abf: $ea $ca $d4
    ld a, [$c89c]                                 ; $6ac2: $fa $9c $c8
    ld [$d4c8], a                                 ; $6ac5: $ea $c8 $d4
    ld a, [$c89f]                                 ; $6ac8: $fa $9f $c8
    ld [$d4cb], a                                 ; $6acb: $ea $cb $d4
    ld a, $00                                     ; $6ace: $3e $00
    ld [$bff0], a                                 ; $6ad0: $ea $f0 $bf
    ld a, $a0                                     ; $6ad3: $3e $a0
    ld [$bff1], a                                 ; $6ad5: $ea $f1 $bf
    ld bc, $0000                                  ; $6ad8: $01 $00 $00

Jump_03c_6adb:
    push bc                                       ; $6adb: $c5
    ld a, b                                       ; $6adc: $78
    ld [$d329], a                                 ; $6add: $ea $29 $d3
    push de                                       ; $6ae0: $d5
    ld de, $0202                                  ; $6ae1: $11 $02 $02
    call Call_000_22d2                            ; $6ae4: $cd $d2 $22
    pop de                                        ; $6ae7: $d1
    ld a, $00                                     ; $6ae8: $3e $00
    ld [$d32a], a                                 ; $6aea: $ea $2a $d3
    ld [$d32b], a                                 ; $6aed: $ea $2b $d3
    ld a, $00                                     ; $6af0: $3e $00
    ld [$d445], a                                 ; $6af2: $ea $45 $d4
    call Call_03c_4006                            ; $6af5: $cd $06 $40
    ld [$d4cd], a                                 ; $6af8: $ea $cd $d4
    ld [$d44b], a                                 ; $6afb: $ea $4b $d4
    ld [$d44c], a                                 ; $6afe: $ea $4c $d4
    ld b, $c0                                     ; $6b01: $06 $c0

jr_03c_6b03:
    ld a, b                                       ; $6b03: $78
    ld [$c816], a                                 ; $6b04: $ea $16 $c8
    push de                                       ; $6b07: $d5
    ld de, $0203                                  ; $6b08: $11 $03 $02
    call Call_000_22a5                            ; $6b0b: $cd $a5 $22
    pop de                                        ; $6b0e: $d1
    ld c, $01                                     ; $6b0f: $0e $01

jr_03c_6b11:
    ld a, c                                       ; $6b11: $79
    push bc                                       ; $6b12: $c5
    ld [$c815], a                                 ; $6b13: $ea $15 $c8
    push de                                       ; $6b16: $d5
    ld de, $0204                                  ; $6b17: $11 $04 $02
    call Call_000_22d2                            ; $6b1a: $cd $d2 $22
    pop de                                        ; $6b1d: $d1
    call Call_03c_6bca                            ; $6b1e: $cd $ca $6b
    pop bc                                        ; $6b21: $c1
    call Call_000_2e3b                            ; $6b22: $cd $3b $2e
    call Call_03c_6b59                            ; $6b25: $cd $59 $6b
    inc c                                         ; $6b28: $0c
    ld a, c                                       ; $6b29: $79
    cp $0a                                        ; $6b2a: $fe $0a
    jr nz, jr_03c_6b11                            ; $6b2c: $20 $e3

    ld a, b                                       ; $6b2e: $78
    add $10                                       ; $6b2f: $c6 $10
    ld b, a                                       ; $6b31: $47
    cp $c0                                        ; $6b32: $fe $c0
    jr nz, jr_03c_6b03                            ; $6b34: $20 $cd

    pop bc                                        ; $6b36: $c1
    inc b                                         ; $6b37: $04
    ld a, b                                       ; $6b38: $78
    cp $0d                                        ; $6b39: $fe $0d
    jp nz, Jump_03c_6adb                          ; $6b3b: $c2 $db $6a

    ret                                           ; $6b3e: $c9


Call_03c_6b3f:
    push af                                       ; $6b3f: $f5
    push bc                                       ; $6b40: $c5
    push hl                                       ; $6b41: $e5
    push bc                                       ; $6b42: $c5
    pop de                                        ; $6b43: $d1
    push de                                       ; $6b44: $d5
    ld de, $c000                                  ; $6b45: $11 $00 $c0
    xor a                                         ; $6b48: $af
    ld e, a                                       ; $6b49: $5f
    ld h, a                                       ; $6b4a: $67
    ld l, a                                       ; $6b4b: $6f
    call Call_000_08ac                            ; $6b4c: $cd $ac $08
    push hl                                       ; $6b4f: $e5
    pop de                                        ; $6b50: $d1
    pop hl                                        ; $6b51: $e1
    add hl, de                                    ; $6b52: $19
    push hl                                       ; $6b53: $e5
    pop de                                        ; $6b54: $d1
    pop hl                                        ; $6b55: $e1
    pop bc                                        ; $6b56: $c1
    pop af                                        ; $6b57: $f1
    ret                                           ; $6b58: $c9


Call_03c_6b59:
    push af                                       ; $6b59: $f5
    push bc                                       ; $6b5a: $c5
    push de                                       ; $6b5b: $d5
    push hl                                       ; $6b5c: $e5
    ld hl, $bff0                                  ; $6b5d: $21 $f0 $bf
    ld a, [hl+]                                   ; $6b60: $2a
    ld h, [hl]                                    ; $6b61: $66
    ld l, a                                       ; $6b62: $6f
    push hl                                       ; $6b63: $e5
    call Call_03c_6bfe                            ; $6b64: $cd $fe $6b
    push hl                                       ; $6b67: $e5
    push bc                                       ; $6b68: $c5
    pop hl                                        ; $6b69: $e1
    ld de, $020a                                  ; $6b6a: $11 $0a $02
    call Call_000_22bc                            ; $6b6d: $cd $bc $22
    pop hl                                        ; $6b70: $e1
    call Call_03c_6b3f                            ; $6b71: $cd $3f $6b
    pop hl                                        ; $6b74: $e1
    ld a, e                                       ; $6b75: $7b
    ld [hl+], a                                   ; $6b76: $22
    ld a, d                                       ; $6b77: $7a
    ld [hl+], a                                   ; $6b78: $22
    push hl                                       ; $6b79: $e5
    push de                                       ; $6b7a: $d5
    pop hl                                        ; $6b7b: $e1
    ld de, $0206                                  ; $6b7c: $11 $06 $02
    call Call_000_22bc                            ; $6b7f: $cd $bc $22
    pop hl                                        ; $6b82: $e1
    push hl                                       ; $6b83: $e5
    ld a, [$d439]                                 ; $6b84: $fa $39 $d4
    ld c, a                                       ; $6b87: $4f
    ld a, [$d43a]                                 ; $6b88: $fa $3a $d4
    ld b, a                                       ; $6b8b: $47
    ld a, [$d43b]                                 ; $6b8c: $fa $3b $d4
    ld e, a                                       ; $6b8f: $5f
    ld a, [$d43c]                                 ; $6b90: $fa $3c $d4
    ld d, a                                       ; $6b93: $57
    call Call_03c_4466                            ; $6b94: $cd $66 $44
    push hl                                       ; $6b97: $e5
    ld de, $020b                                  ; $6b98: $11 $0b $02
    call Call_000_22bc                            ; $6b9b: $cd $bc $22
    pop hl                                        ; $6b9e: $e1
    push hl                                       ; $6b9f: $e5
    ld a, [$d329]                                 ; $6ba0: $fa $29 $d3
    rst $18                                       ; $6ba3: $df
    ld c, $10                                     ; $6ba4: $0e $10
    push hl                                       ; $6ba6: $e5
    pop de                                        ; $6ba7: $d1
    pop hl                                        ; $6ba8: $e1
    call Call_000_08ac                            ; $6ba9: $cd $ac $08
    push hl                                       ; $6bac: $e5
    pop de                                        ; $6bad: $d1
    pop hl                                        ; $6bae: $e1
    ld a, e                                       ; $6baf: $7b
    ld [hl+], a                                   ; $6bb0: $22
    ld a, d                                       ; $6bb1: $7a
    ld [hl+], a                                   ; $6bb2: $22
    push hl                                       ; $6bb3: $e5
    push de                                       ; $6bb4: $d5
    pop hl                                        ; $6bb5: $e1
    ld de, $0207                                  ; $6bb6: $11 $07 $02
    call Call_000_22bc                            ; $6bb9: $cd $bc $22
    pop hl                                        ; $6bbc: $e1
    ld a, l                                       ; $6bbd: $7d
    ld [$bff0], a                                 ; $6bbe: $ea $f0 $bf
    ld a, h                                       ; $6bc1: $7c
    ld [$bff1], a                                 ; $6bc2: $ea $f1 $bf
    pop hl                                        ; $6bc5: $e1
    pop de                                        ; $6bc6: $d1
    pop bc                                        ; $6bc7: $c1
    pop af                                        ; $6bc8: $f1
    ret                                           ; $6bc9: $c9


Call_03c_6bca:
    push af                                       ; $6bca: $f5
    push bc                                       ; $6bcb: $c5
    push de                                       ; $6bcc: $d5
    push hl                                       ; $6bcd: $e5
    xor a                                         ; $6bce: $af
    ld hl, $d4cf                                  ; $6bcf: $21 $cf $d4
    ld [hl+], a                                   ; $6bd2: $22
    ld [hl+], a                                   ; $6bd3: $22
    ld [hl+], a                                   ; $6bd4: $22
    ld [hl+], a                                   ; $6bd5: $22
    ld [hl+], a                                   ; $6bd6: $22
    ld [hl+], a                                   ; $6bd7: $22
    rst $18                                       ; $6bd8: $df
    ld b, $10                                     ; $6bd9: $06 $10
    rst $18                                       ; $6bdb: $df
    ld c, b                                       ; $6bdc: $48
    db $10                                        ; $6bdd: $10
    ld hl, $c000                                  ; $6bde: $21 $00 $c0
    ld a, l                                       ; $6be1: $7d
    ld [$d418], a                                 ; $6be2: $ea $18 $d4
    ld a, h                                       ; $6be5: $7c
    ld [$d419], a                                 ; $6be6: $ea $19 $d4
    ld a, $04                                     ; $6be9: $3e $04
    ld [$d4d6], a                                 ; $6beb: $ea $d6 $d4
    rst $18                                       ; $6bee: $df
    ld c, d                                       ; $6bef: $4a
    db $10                                        ; $6bf0: $10

jr_03c_6bf1:
    rst $18                                       ; $6bf1: $df
    ld c, h                                       ; $6bf2: $4c
    db $10                                        ; $6bf3: $10
    rst $18                                       ; $6bf4: $df
    ld c, [hl]                                    ; $6bf5: $4e
    db $10                                        ; $6bf6: $10
    jr z, jr_03c_6bf1                             ; $6bf7: $28 $f8

    pop hl                                        ; $6bf9: $e1
    pop de                                        ; $6bfa: $d1
    pop bc                                        ; $6bfb: $c1
    pop af                                        ; $6bfc: $f1
    ret                                           ; $6bfd: $c9


Call_03c_6bfe:
    ld hl, $d401                                  ; $6bfe: $21 $01 $d4
    ld a, [hl+]                                   ; $6c01: $2a
    ld b, [hl]                                    ; $6c02: $46
    ld c, a                                       ; $6c03: $4f
    ld hl, $d404                                  ; $6c04: $21 $04 $d4
    ld a, [hl+]                                   ; $6c07: $2a
    ld d, [hl]                                    ; $6c08: $56
    ld e, a                                       ; $6c09: $5f
    push de                                       ; $6c0a: $d5
    ld hl, $d439                                  ; $6c0b: $21 $39 $d4
    ld a, [hl+]                                   ; $6c0e: $2a
    ld d, [hl]                                    ; $6c0f: $56
    ld e, a                                       ; $6c10: $5f
    push bc                                       ; $6c11: $c5
    pop hl                                        ; $6c12: $e1
    call Call_000_08ac                            ; $6c13: $cd $ac $08
    pop bc                                        ; $6c16: $c1
    push hl                                       ; $6c17: $e5
    ld hl, $d43b                                  ; $6c18: $21 $3b $d4
    ld a, [hl+]                                   ; $6c1b: $2a
    ld d, [hl]                                    ; $6c1c: $56
    ld e, a                                       ; $6c1d: $5f
    push bc                                       ; $6c1e: $c5
    pop hl                                        ; $6c1f: $e1
    call Call_000_08ac                            ; $6c20: $cd $ac $08
    pop de                                        ; $6c23: $d1
    call Call_000_1a03                            ; $6c24: $cd $03 $1a
    ret                                           ; $6c27: $c9


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

Jump_03c_7641:
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
