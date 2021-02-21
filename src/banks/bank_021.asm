; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

    ld [de], a                                    ; $4000: $12
    ld b, b                                       ; $4001: $40
    inc sp                                        ; $4002: $33
    ld b, b                                       ; $4003: $40
    or c                                          ; $4004: $b1
    ld c, d                                       ; $4005: $4a
    db $31                                        ; $4006: $31
    ld d, l                                       ; $4007: $55

    db $b1, $5f, $31, $6a

    inc sp                                        ; $400c: $33
    ld b, b                                       ; $400d: $40
    inc sp                                        ; $400e: $33
    ld b, b                                       ; $400f: $40
    inc sp                                        ; $4010: $33
    ld b, b                                       ; $4011: $40
    push af                                       ; $4012: $f5
    push bc                                       ; $4013: $c5
    push de                                       ; $4014: $d5
    push hl                                       ; $4015: $e5
    ldh [$95], a                                  ; $4016: $e0 $95
    ld [$2000], a                                 ; $4018: $ea $00 $20

    ld a, c                                       ; $401b: $79
    add a                                         ; $401c: $87
    add l                                         ; $401d: $85
    ld l, a                                       ; $401e: $6f
    jr nc, jr_021_4022                            ; $401f: $30 $01

    inc h                                         ; $4021: $24

jr_021_4022:
    ld a, [hl+]                                   ; $4022: $2a
    ld h, [hl]                                    ; $4023: $66
    ld l, a                                       ; $4024: $6f
    ld c, b                                       ; $4025: $48
    ld b, $00                                     ; $4026: $06 $00
    add hl, bc                                    ; $4028: $09
    ld c, $04                                     ; $4029: $0e $04
    call Call_000_0468                            ; $402b: $cd $68 $04
    pop hl                                        ; $402e: $e1
    pop de                                        ; $402f: $d1
    pop bc                                        ; $4030: $c1
    pop af                                        ; $4031: $f1
    ret                                           ; $4032: $c9


    ld b, $04                                     ; $4033: $06 $04
    dec sp                                        ; $4035: $3b
    ld b, b                                       ; $4036: $40
    ld d, b                                       ; $4037: $50
    ld c, d                                       ; $4038: $4a
    dec sp                                        ; $4039: $3b
    ld b, b                                       ; $403a: $40
    ld d, b                                       ; $403b: $50
    ld b, b                                       ; $403c: $40
    ld d, b                                       ; $403d: $50
    ld b, c                                       ; $403e: $41
    ld d, b                                       ; $403f: $50
    ld b, d                                       ; $4040: $42
    ld d, b                                       ; $4041: $50
    ld b, e                                       ; $4042: $43
    ld d, b                                       ; $4043: $50
    ld b, h                                       ; $4044: $44
    ld d, b                                       ; $4045: $50
    ld b, l                                       ; $4046: $45
    ld d, b                                       ; $4047: $50
    ld b, [hl]                                    ; $4048: $46
    ld d, b                                       ; $4049: $50
    ld b, a                                       ; $404a: $47
    ld d, b                                       ; $404b: $50
    ld c, b                                       ; $404c: $48
    ld d, b                                       ; $404d: $50
    ld c, c                                       ; $404e: $49
    nop                                           ; $404f: $00
    inc bc                                        ; $4050: $03
    inc bc                                        ; $4051: $03
    inc b                                         ; $4052: $04
    rlca                                          ; $4053: $07

jr_021_4054:
    ld [$100f], sp                                ; $4054: $08 $0f $10
    rra                                           ; $4057: $1f
    ld de, $131f                                  ; $4058: $11 $1f $13
    rra                                           ; $405b: $1f
    rrca                                          ; $405c: $0f
    dec c                                         ; $405d: $0d
    rrca                                          ; $405e: $0f
    ld c, $05                                     ; $405f: $0e $05
    rlca                                          ; $4061: $07
    rlca                                          ; $4062: $07

jr_021_4063:
    rlca                                          ; $4063: $07
    rrca                                          ; $4064: $0f
    ld a, [bc]                                    ; $4065: $0a
    rra                                           ; $4066: $1f
    rla                                           ; $4067: $17
    inc e                                         ; $4068: $1c
    rra                                           ; $4069: $1f
    rrca                                          ; $406a: $0f
    rrca                                          ; $406b: $0f
    dec bc                                        ; $406c: $0b
    rrca                                          ; $406d: $0f
    ld b, $06                                     ; $406e: $06 $06
    ret nz                                        ; $4070: $c0

    ret nz                                        ; $4071: $c0

    jr nz, jr_021_4054                            ; $4072: $20 $e0

    ld d, b                                       ; $4074: $50
    ldh a, [$d0]                                  ; $4075: $f0 $d0
    ldh a, [$e8]                                  ; $4077: $f0 $e8
    jr c, jr_021_4063                             ; $4079: $38 $e8

    ld a, b                                       ; $407b: $78
    ld hl, sp+$58                                 ; $407c: $f8 $58
    ldh a, [rNR10]                                ; $407e: $f0 $10
    ldh [rNR41], a                                ; $4080: $e0 $20
    ldh [$e0], a                                  ; $4082: $e0 $e0
    ldh a, [$50]                                  ; $4084: $f0 $50
    ldh a, [$f0]                                  ; $4086: $f0 $f0
    ld h, b                                       ; $4088: $60
    ldh [$d0], a                                  ; $4089: $e0 $d0
    ldh a, [$b0]                                  ; $408b: $f0 $b0
    ldh a, [$e0]                                  ; $408d: $f0 $e0
    ldh [rTAC], a                                 ; $408f: $e0 $07
    rlca                                          ; $4091: $07
    ld a, [bc]                                    ; $4092: $0a
    rrca                                          ; $4093: $0f

jr_021_4094:
    ld [de], a                                    ; $4094: $12
    rra                                           ; $4095: $1f
    rla                                           ; $4096: $17
    dec e                                         ; $4097: $1d
    rla                                           ; $4098: $17
    inc e                                         ; $4099: $1c
    rra                                           ; $409a: $1f
    ld a, [de]                                    ; $409b: $1a
    rra                                           ; $409c: $1f
    ld [de], a                                    ; $409d: $12
    rrca                                          ; $409e: $0f
    ld [$1c17], sp                                ; $409f: $08 $17 $1c
    ccf                                           ; $40a2: $3f
    dec hl                                        ; $40a3: $2b
    ccf                                           ; $40a4: $3f
    inc a                                         ; $40a5: $3c
    dec hl                                        ; $40a6: $2b
    cpl                                           ; $40a7: $2f
    ld h, h                                       ; $40a8: $64
    ld h, a                                       ; $40a9: $67
    ld h, a                                       ; $40aa: $67
    ld h, a                                       ; $40ab: $67
    inc b                                         ; $40ac: $04
    rlca                                          ; $40ad: $07
    inc bc                                        ; $40ae: $03
    inc bc                                        ; $40af: $03
    ret nz                                        ; $40b0: $c0

    ret nz                                        ; $40b1: $c0

    jr nz, jr_021_4094                            ; $40b2: $20 $e0

    db $10                                        ; $40b4: $10
    ldh a, [$08]                                  ; $40b5: $f0 $08
    ld hl, sp-$78                                 ; $40b7: $f8 $88
    ld hl, sp-$78                                 ; $40b9: $f8 $88
    ld hl, sp-$30                                 ; $40bb: $f8 $d0
    ld [hl], b                                    ; $40bd: $70
    ret nc                                        ; $40be: $d0

    ld [hl], b                                    ; $40bf: $70
    ldh [$60], a                                  ; $40c0: $e0 $60
    ldh a, [$f0]                                  ; $40c2: $f0 $f0
    ld hl, sp+$28                                 ; $40c4: $f8 $28
    call c, Call_000_2cf4                         ; $40c6: $dc $f4 $2c
    db $ec                                        ; $40c9: $ec
    ret nz                                        ; $40ca: $c0

    ret nz                                        ; $40cb: $c0

    add b                                         ; $40cc: $80
    add b                                         ; $40cd: $80
    add b                                         ; $40ce: $80
    add b                                         ; $40cf: $80
    inc bc                                        ; $40d0: $03
    inc bc                                        ; $40d1: $03
    inc b                                         ; $40d2: $04
    rlca                                          ; $40d3: $07

jr_021_40d4:
    ld [$080f], sp                                ; $40d4: $08 $0f $08
    rrca                                          ; $40d7: $0f
    db $10                                        ; $40d8: $10
    rra                                           ; $40d9: $1f
    db $10                                        ; $40da: $10
    rra                                           ; $40db: $1f
    ld de, $131f                                  ; $40dc: $11 $1f $13
    ld e, $0b                                     ; $40df: $1e $0b
    ld c, $07                                     ; $40e1: $0e $07
    rlca                                          ; $40e3: $07
    inc bc                                        ; $40e4: $03
    ld [bc], a                                    ; $40e5: $02
    rlca                                          ; $40e6: $07
    dec b                                         ; $40e7: $05
    ld b, $07                                     ; $40e8: $06 $07
    rrca                                          ; $40ea: $0f
    rrca                                          ; $40eb: $0f
    dec bc                                        ; $40ec: $0b
    rrca                                          ; $40ed: $0f
    rlca                                          ; $40ee: $07
    rlca                                          ; $40ef: $07
    ret nz                                        ; $40f0: $c0

    ret nz                                        ; $40f1: $c0

    jr nz, jr_021_40d4                            ; $40f2: $20 $e0

    db $10                                        ; $40f4: $10
    ldh a, [$08]                                  ; $40f5: $f0 $08
    ld hl, sp+$08                                 ; $40f7: $f8 $08
    ld hl, sp+$48                                 ; $40f9: $f8 $48
    ld hl, sp-$10                                 ; $40fb: $f8 $f0
    or b                                          ; $40fd: $b0
    ldh a, [rSVBK]                                ; $40fe: $f0 $70
    and b                                         ; $4100: $a0
    ldh [$f0], a                                  ; $4101: $e0 $f0
    ldh a, [$f8]                                  ; $4103: $f0 $f8
    xor b                                         ; $4105: $a8
    ld hl, sp-$08                                 ; $4106: $f8 $f8
    jr nc, @-$0e                                  ; $4108: $30 $f0

    add sp, -$28                                  ; $410a: $e8 $d8
    ret c                                         ; $410c: $d8

    ld hl, sp+$70                                 ; $410d: $f8 $70
    ld [hl], b                                    ; $410f: $70
    inc bc                                        ; $4110: $03
    inc bc                                        ; $4111: $03
    inc b                                         ; $4112: $04
    rlca                                          ; $4113: $07
    ld [$100f], sp                                ; $4114: $08 $0f $10
    rra                                           ; $4117: $1f
    db $10                                        ; $4118: $10
    rra                                           ; $4119: $1f
    inc d                                         ; $411a: $14
    rra                                           ; $411b: $1f
    inc c                                         ; $411c: $0c
    rrca                                          ; $411d: $0f
    ld c, $0b                                     ; $411e: $0e $0b
    rlca                                          ; $4120: $07
    dec b                                         ; $4121: $05
    rrca                                          ; $4122: $0f
    rrca                                          ; $4123: $0f
    rra                                           ; $4124: $1f
    inc d                                         ; $4125: $14
    dec sp                                        ; $4126: $3b
    cpl                                           ; $4127: $2f
    inc [hl]                                      ; $4128: $34
    scf                                           ; $4129: $37
    inc bc                                        ; $412a: $03
    inc bc                                        ; $412b: $03
    ld bc, $0101                                  ; $412c: $01 $01 $01
    ld bc, $8080                                  ; $412f: $01 $80 $80
    ld h, b                                       ; $4132: $60
    ldh [$50], a                                  ; $4133: $e0 $50
    ldh a, [$08]                                  ; $4135: $f0 $08
    ld hl, sp+$08                                 ; $4137: $f8 $08
    ld hl, sp+$08                                 ; $4139: $f8 $08
    ld hl, sp+$28                                 ; $413b: $f8 $28
    ld hl, sp+$70                                 ; $413d: $f8 $70
    ret nc                                        ; $413f: $d0

    db $fc                                        ; $4140: $fc
    cp h                                          ; $4141: $bc
    db $fc                                        ; $4142: $fc
    call nc, Call_000_38f8                        ; $4143: $d4 $f8 $38
    ret nc                                        ; $4146: $d0

    ldh a, [$e0]                                  ; $4147: $f0 $e0
    ldh [rNR41], a                                ; $4149: $e0 $20
    ldh [rNR41], a                                ; $414b: $e0 $20
    ldh [$c0], a                                  ; $414d: $e0 $c0
    ret nz                                        ; $414f: $c0

    inc bc                                        ; $4150: $03
    inc bc                                        ; $4151: $03
    inc b                                         ; $4152: $04
    rlca                                          ; $4153: $07

jr_021_4154:
    ld [$100f], sp                                ; $4154: $08 $0f $10
    rra                                           ; $4157: $1f
    ld de, $131f                                  ; $4158: $11 $1f $13
    rra                                           ; $415b: $1f
    rrca                                          ; $415c: $0f
    dec c                                         ; $415d: $0d
    rrca                                          ; $415e: $0f
    ld c, $05                                     ; $415f: $0e $05
    rlca                                          ; $4161: $07
    rrca                                          ; $4162: $0f

jr_021_4163:
    rrca                                          ; $4163: $0f
    rra                                           ; $4164: $1f
    dec d                                         ; $4165: $15
    rra                                           ; $4166: $1f
    rra                                           ; $4167: $1f
    inc c                                         ; $4168: $0c
    rrca                                          ; $4169: $0f
    rla                                           ; $416a: $17
    dec de                                        ; $416b: $1b
    dec de                                        ; $416c: $1b
    rra                                           ; $416d: $1f
    ld c, $0e                                     ; $416e: $0e $0e
    ret nz                                        ; $4170: $c0

    ret nz                                        ; $4171: $c0

    jr nz, jr_021_4154                            ; $4172: $20 $e0

    ld d, b                                       ; $4174: $50
    ldh a, [$d0]                                  ; $4175: $f0 $d0
    ldh a, [$e8]                                  ; $4177: $f0 $e8
    jr c, jr_021_4163                             ; $4179: $38 $e8

    ld a, b                                       ; $417b: $78
    ld hl, sp+$58                                 ; $417c: $f8 $58
    ldh a, [rNR10]                                ; $417e: $f0 $10
    ldh [rNR41], a                                ; $4180: $e0 $20
    call z, $cccc                                 ; $4182: $cc $cc $cc
    ld c, h                                       ; $4185: $4c
    ldh a, [$b0]                                  ; $4186: $f0 $b0
    ld h, b                                       ; $4188: $60
    ldh [$f0], a                                  ; $4189: $e0 $f0
    ldh a, [$d0]                                  ; $418b: $f0 $d0
    ldh a, [$e0]                                  ; $418d: $f0 $e0
    ldh [rTAC], a                                 ; $418f: $e0 $07
    rlca                                          ; $4191: $07
    ld a, [bc]                                    ; $4192: $0a
    rrca                                          ; $4193: $0f

jr_021_4194:
    ld [de], a                                    ; $4194: $12
    rra                                           ; $4195: $1f
    rla                                           ; $4196: $17
    dec e                                         ; $4197: $1d
    rla                                           ; $4198: $17
    inc e                                         ; $4199: $1c
    rra                                           ; $419a: $1f
    ld a, [de]                                    ; $419b: $1a
    rra                                           ; $419c: $1f
    ld [de], a                                    ; $419d: $12
    rrca                                          ; $419e: $0f
    ld [$1c17], sp                                ; $419f: $08 $17 $1c
    ld l, a                                       ; $41a2: $6f
    ld l, a                                       ; $41a3: $6f
    ld a, a                                       ; $41a4: $7f
    ld [hl], h                                    ; $41a5: $74
    dec sp                                        ; $41a6: $3b
    cpl                                           ; $41a7: $2f
    inc [hl]                                      ; $41a8: $34
    scf                                           ; $41a9: $37
    inc bc                                        ; $41aa: $03
    inc bc                                        ; $41ab: $03
    ld bc, $0101                                  ; $41ac: $01 $01 $01
    ld bc, $c0c0                                  ; $41af: $01 $c0 $c0
    jr nz, jr_021_4194                            ; $41b2: $20 $e0

    db $10                                        ; $41b4: $10
    ldh a, [$08]                                  ; $41b5: $f0 $08
    ld hl, sp-$78                                 ; $41b7: $f8 $88
    ld hl, sp-$78                                 ; $41b9: $f8 $88
    ld hl, sp-$30                                 ; $41bb: $f8 $d0
    ld [hl], b                                    ; $41bd: $70
    ret nc                                        ; $41be: $d0

    ld [hl], b                                    ; $41bf: $70
    ld hl, sp+$78                                 ; $41c0: $f8 $78
    db $fc                                        ; $41c2: $fc
    call nc, Call_000_3cfc                        ; $41c3: $d4 $fc $3c
    ret nc                                        ; $41c6: $d0

    ldh a, [rNR41]                                ; $41c7: $f0 $20
    ldh [$e0], a                                  ; $41c9: $e0 $e0
    ldh [rNR41], a                                ; $41cb: $e0 $20
    ldh [$c0], a                                  ; $41cd: $e0 $c0
    ret nz                                        ; $41cf: $c0

    inc bc                                        ; $41d0: $03
    inc bc                                        ; $41d1: $03
    inc b                                         ; $41d2: $04
    rlca                                          ; $41d3: $07

jr_021_41d4:
    ld [$080f], sp                                ; $41d4: $08 $0f $08
    rrca                                          ; $41d7: $0f
    db $10                                        ; $41d8: $10
    rra                                           ; $41d9: $1f
    db $10                                        ; $41da: $10
    rra                                           ; $41db: $1f
    ld de, $731f                                  ; $41dc: $11 $1f $73
    ld a, [hl]                                    ; $41df: $7e
    ld l, e                                       ; $41e0: $6b
    ld l, [hl]                                    ; $41e1: $6e
    cpl                                           ; $41e2: $2f
    cpl                                           ; $41e3: $2f
    rra                                           ; $41e4: $1f
    ld a, [de]                                    ; $41e5: $1a
    rrca                                          ; $41e6: $0f
    rrca                                          ; $41e7: $0f
    ld b, $07                                     ; $41e8: $06 $07
    dec bc                                        ; $41ea: $0b
    ld c, $0d                                     ; $41eb: $0e $0d
    rrca                                          ; $41ed: $0f
    rlca                                          ; $41ee: $07
    rlca                                          ; $41ef: $07
    ret nz                                        ; $41f0: $c0

    ret nz                                        ; $41f1: $c0

    jr nz, jr_021_41d4                            ; $41f2: $20 $e0

    db $10                                        ; $41f4: $10
    ldh a, [$08]                                  ; $41f5: $f0 $08
    ld hl, sp+$08                                 ; $41f7: $f8 $08
    ld hl, sp+$48                                 ; $41f9: $f8 $48
    ld hl, sp-$10                                 ; $41fb: $f8 $f0
    or b                                          ; $41fd: $b0
    ldh a, [rSVBK]                                ; $41fe: $f0 $70
    and b                                         ; $4200: $a0
    ldh [$e0], a                                  ; $4201: $e0 $e0
    ldh [$f0], a                                  ; $4203: $e0 $f0
    ld d, b                                       ; $4205: $50
    ld hl, sp-$18                                 ; $4206: $f8 $e8
    jr c, @-$06                                   ; $4208: $38 $f8

    ldh a, [$f0]                                  ; $420a: $f0 $f0
    ret nc                                        ; $420c: $d0

    ldh a, [$60]                                  ; $420d: $f0 $60
    ld h, b                                       ; $420f: $60
    inc bc                                        ; $4210: $03
    inc bc                                        ; $4211: $03
    inc b                                         ; $4212: $04
    rlca                                          ; $4213: $07
    ld [$100f], sp                                ; $4214: $08 $0f $10
    rra                                           ; $4217: $1f
    db $10                                        ; $4218: $10
    rra                                           ; $4219: $1f
    inc d                                         ; $421a: $14
    rra                                           ; $421b: $1f
    inc c                                         ; $421c: $0c
    rrca                                          ; $421d: $0f
    ld c, $0b                                     ; $421e: $0e $0b
    ccf                                           ; $4220: $3f
    dec a                                         ; $4221: $3d
    ccf                                           ; $4222: $3f
    dec hl                                        ; $4223: $2b
    rra                                           ; $4224: $1f
    inc e                                         ; $4225: $1c
    dec bc                                        ; $4226: $0b
    rrca                                          ; $4227: $0f
    rlca                                          ; $4228: $07
    rlca                                          ; $4229: $07
    inc b                                         ; $422a: $04
    rlca                                          ; $422b: $07
    inc b                                         ; $422c: $04
    rlca                                          ; $422d: $07
    inc bc                                        ; $422e: $03
    inc bc                                        ; $422f: $03
    add b                                         ; $4230: $80
    add b                                         ; $4231: $80
    ld h, b                                       ; $4232: $60
    ldh [$50], a                                  ; $4233: $e0 $50
    ldh a, [$08]                                  ; $4235: $f0 $08
    ld hl, sp+$08                                 ; $4237: $f8 $08
    ld hl, sp+$08                                 ; $4239: $f8 $08
    ld hl, sp+$28                                 ; $423b: $f8 $28
    ld hl, sp+$70                                 ; $423d: $f8 $70
    ret nc                                        ; $423f: $d0

    ldh [$a0], a                                  ; $4240: $e0 $a0
    ldh a, [$f0]                                  ; $4242: $f0 $f0
    ld hl, sp+$28                                 ; $4244: $f8 $28
    call c, Call_000_2cf4                         ; $4246: $dc $f4 $2c
    db $ec                                        ; $4249: $ec
    ret nz                                        ; $424a: $c0

    ret nz                                        ; $424b: $c0

    add b                                         ; $424c: $80
    add b                                         ; $424d: $80
    add b                                         ; $424e: $80
    add b                                         ; $424f: $80
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    inc bc                                        ; $4252: $03
    inc bc                                        ; $4253: $03
    inc b                                         ; $4254: $04
    rlca                                          ; $4255: $07
    ld [$080f], sp                                ; $4256: $08 $0f $08
    rrca                                          ; $4259: $0f
    add hl, bc                                    ; $425a: $09
    rrca                                          ; $425b: $0f
    rlca                                          ; $425c: $07
    ld b, $07                                     ; $425d: $06 $07
    rlca                                          ; $425f: $07
    ld [bc], a                                    ; $4260: $02
    inc bc                                        ; $4261: $03
    inc bc                                        ; $4262: $03
    inc bc                                        ; $4263: $03
    rrca                                          ; $4264: $0f
    ld c, $09                                     ; $4265: $0e $09
    rrca                                          ; $4267: $0f
    ld b, $07                                     ; $4268: $06 $07
    rlca                                          ; $426a: $07
    dec b                                         ; $426b: $05
    inc b                                         ; $426c: $04
    rlca                                          ; $426d: $07
    rlca                                          ; $426e: $07
    rlca                                          ; $426f: $07
    ldh [$e0], a                                  ; $4270: $e0 $e0
    db $10                                        ; $4272: $10
    ldh a, [$08]                                  ; $4273: $f0 $08
    ld hl, sp+$24                                 ; $4275: $f8 $24
    db $fc                                        ; $4277: $fc
    ld h, h                                       ; $4278: $64
    db $fc                                        ; $4279: $fc
    db $f4                                        ; $427a: $f4
    sbc h                                         ; $427b: $9c
    db $f4                                        ; $427c: $f4
    cp h                                          ; $427d: $bc
    ld hl, sp+$28                                 ; $427e: $f8 $28
    ld hl, sp-$78                                 ; $4280: $f8 $88
    ldh a, [$90]                                  ; $4282: $f0 $90
    ldh [$e0], a                                  ; $4284: $e0 $e0
    ldh [$a0], a                                  ; $4286: $e0 $a0
    ldh [$a0], a                                  ; $4288: $e0 $a0
    ldh a, [$f0]                                  ; $428a: $f0 $f0
    sbc e                                         ; $428c: $9b
    sbc e                                         ; $428d: $9b
    adc a                                         ; $428e: $8f
    adc a                                         ; $428f: $8f
    inc bc                                        ; $4290: $03
    inc bc                                        ; $4291: $03
    inc b                                         ; $4292: $04
    rlca                                          ; $4293: $07
    ld [$110f], sp                                ; $4294: $08 $0f $11
    rra                                           ; $4297: $1f
    inc de                                        ; $4298: $13
    ld e, $1f                                     ; $4299: $1e $1f
    inc e                                         ; $429b: $1c
    rra                                           ; $429c: $1f
    dec d                                         ; $429d: $15
    rrca                                          ; $429e: $0f
    add hl, bc                                    ; $429f: $09
    rla                                           ; $42a0: $17
    inc e                                         ; $42a1: $1c
    rrca                                          ; $42a2: $0f
    ld c, $1f                                     ; $42a3: $0e $1f
    dec de                                        ; $42a5: $1b
    rla                                           ; $42a6: $17
    dec e                                         ; $42a7: $1d
    rrca                                          ; $42a8: $0f
    ld c, $0f                                     ; $42a9: $0e $0f
    dec bc                                        ; $42ab: $0b
    inc de                                        ; $42ac: $13
    rra                                           ; $42ad: $1f
    rra                                           ; $42ae: $1f
    rra                                           ; $42af: $1f
    add b                                         ; $42b0: $80
    add b                                         ; $42b1: $80
    ld h, b                                       ; $42b2: $60
    ldh [rNR10], a                                ; $42b3: $e0 $10
    ldh a, [$08]                                  ; $42b5: $f0 $08
    ld hl, sp-$78                                 ; $42b7: $f8 $88
    ld hl, sp-$38                                 ; $42b9: $f8 $c8
    ld a, b                                       ; $42bb: $78
    ret z                                         ; $42bc: $c8

    ld a, b                                       ; $42bd: $78
    add sp, $38                                   ; $42be: $e8 $38
    ldh a, [$30]                                  ; $42c0: $f0 $30
    ldh a, [rSVBK]                                ; $42c2: $f0 $70
    ldh a, [$d0]                                  ; $42c4: $f0 $d0
    ldh a, [$b0]                                  ; $42c6: $f0 $b0
    ld h, b                                       ; $42c8: $60
    ldh [$e0], a                                  ; $42c9: $e0 $e0
    and b                                         ; $42cb: $a0
    sub b                                         ; $42cc: $90
    ldh a, [$f0]                                  ; $42cd: $f0 $f0
    ldh a, [rTAC]                                 ; $42cf: $f0 $07
    rlca                                          ; $42d1: $07
    ld [$100f], sp                                ; $42d2: $08 $0f $10
    rra                                           ; $42d5: $1f

jr_021_42d6:
    jr nz, jr_021_4317                            ; $42d6: $20 $3f

    jr nz, jr_021_4319                            ; $42d8: $20 $3f

    jr nz, @+$41                                  ; $42da: $20 $3f

    ld hl, $133f                                  ; $42dc: $21 $3f $13
    ld e, $17                                     ; $42df: $1e $17
    dec e                                         ; $42e1: $1d
    rrca                                          ; $42e2: $0f
    dec c                                         ; $42e3: $0d
    rlca                                          ; $42e4: $07
    rlca                                          ; $42e5: $07
    rlca                                          ; $42e6: $07
    dec b                                         ; $42e7: $05
    dec b                                         ; $42e8: $05
    rlca                                          ; $42e9: $07
    rrca                                          ; $42ea: $0f
    rrca                                          ; $42eb: $0f
    reti                                          ; $42ec: $d9


    reti                                          ; $42ed: $d9


jr_021_42ee:
    pop af                                        ; $42ee: $f1
    pop af                                        ; $42ef: $f1
    nop                                           ; $42f0: $00
    nop                                           ; $42f1: $00
    ret nz                                        ; $42f2: $c0

    ret nz                                        ; $42f3: $c0

    jr nz, jr_021_42d6                            ; $42f4: $20 $e0

    db $10                                        ; $42f6: $10
    ldh a, [rNR10]                                ; $42f7: $f0 $10
    ldh a, [$90]                                  ; $42f9: $f0 $90
    ldh a, [$e0]                                  ; $42fb: $f0 $e0
    ld h, b                                       ; $42fd: $60
    ldh [$e0], a                                  ; $42fe: $e0 $e0
    ld b, b                                       ; $4300: $40
    ret nz                                        ; $4301: $c0

    ret nz                                        ; $4302: $c0

    ret nz                                        ; $4303: $c0

    ldh a, [rSVBK]                                ; $4304: $f0 $70
    sub b                                         ; $4306: $90
    ldh a, [$60]                                  ; $4307: $f0 $60
    ldh [$e0], a                                  ; $4309: $e0 $e0
    and b                                         ; $430b: $a0
    jr nz, jr_021_42ee                            ; $430c: $20 $e0

    ldh [$e0], a                                  ; $430e: $e0 $e0
    inc bc                                        ; $4310: $03
    inc bc                                        ; $4311: $03
    inc b                                         ; $4312: $04
    rlca                                          ; $4313: $07
    ld [$100f], sp                                ; $4314: $08 $0f $10

jr_021_4317:
    rra                                           ; $4317: $1f
    inc d                                         ; $4318: $14

jr_021_4319:
    rra                                           ; $4319: $1f
    ld e, $1b                                     ; $431a: $1e $1b
    rra                                           ; $431c: $1f
    dec de                                        ; $431d: $1b
    rrca                                          ; $431e: $0f
    inc c                                         ; $431f: $0c
    dec bc                                        ; $4320: $0b
    rrca                                          ; $4321: $0f
    rrca                                          ; $4322: $0f
    ld c, $0f                                     ; $4323: $0e $0f
    dec bc                                        ; $4325: $0b
    inc b                                         ; $4326: $04
    rlca                                          ; $4327: $07
    inc bc                                        ; $4328: $03
    inc bc                                        ; $4329: $03
    rlca                                          ; $432a: $07
    ld b, $09                                     ; $432b: $06 $09
    rrca                                          ; $432d: $0f
    rrca                                          ; $432e: $0f
    rrca                                          ; $432f: $0f
    add b                                         ; $4330: $80
    add b                                         ; $4331: $80
    ld h, b                                       ; $4332: $60
    ldh [rNR10], a                                ; $4333: $e0 $10
    ldh a, [$08]                                  ; $4335: $f0 $08
    ld hl, sp+$08                                 ; $4337: $f8 $08
    ld hl, sp+$18                                 ; $4339: $f8 $18
    ld hl, sp+$38                                 ; $433b: $f8 $38
    add sp, -$10                                  ; $433d: $e8 $f0
    ret nc                                        ; $433f: $d0

    ldh a, [$30]                                  ; $4340: $f0 $30
    ldh a, [$d0]                                  ; $4342: $f0 $d0
    add sp, -$08                                  ; $4344: $e8 $f8
    ld [$f0f8], sp                                ; $4346: $08 $f8 $f0
    ldh a, [$f0]                                  ; $4349: $f0 $f0
    or b                                          ; $434b: $b0
    ret z                                         ; $434c: $c8

    ld hl, sp-$08                                 ; $434d: $f8 $f8
    ld hl, sp+$00                                 ; $434f: $f8 $00
    nop                                           ; $4351: $00
    inc bc                                        ; $4352: $03
    inc bc                                        ; $4353: $03
    inc b                                         ; $4354: $04
    rlca                                          ; $4355: $07
    ld [$080f], sp                                ; $4356: $08 $0f $08
    rrca                                          ; $4359: $0f
    add hl, bc                                    ; $435a: $09
    rrca                                          ; $435b: $0f
    rlca                                          ; $435c: $07
    ld b, $07                                     ; $435d: $06 $07
    rlca                                          ; $435f: $07
    ld e, $1f                                     ; $4360: $1e $1f
    rra                                           ; $4362: $1f
    dec e                                         ; $4363: $1d
    rrca                                          ; $4364: $0f
    ld c, $0b                                     ; $4365: $0e $0b
    rrca                                          ; $4367: $0f
    rlca                                          ; $4368: $07
    rlca                                          ; $4369: $07
    rlca                                          ; $436a: $07
    dec b                                         ; $436b: $05
    inc b                                         ; $436c: $04
    rlca                                          ; $436d: $07
    rlca                                          ; $436e: $07
    rlca                                          ; $436f: $07
    ldh [$e0], a                                  ; $4370: $e0 $e0
    db $10                                        ; $4372: $10
    ldh a, [$08]                                  ; $4373: $f0 $08
    ld hl, sp+$24                                 ; $4375: $f8 $24
    db $fc                                        ; $4377: $fc
    ld h, h                                       ; $4378: $64
    db $fc                                        ; $4379: $fc
    db $f4                                        ; $437a: $f4
    sbc h                                         ; $437b: $9c
    db $f4                                        ; $437c: $f4
    cp h                                          ; $437d: $bc
    ld hl, sp+$28                                 ; $437e: $f8 $28
    ld hl, sp-$78                                 ; $4380: $f8 $88
    ldh a, [$90]                                  ; $4382: $f0 $90
    ldh [$e0], a                                  ; $4384: $e0 $e0
    ld h, b                                       ; $4386: $60
    and b                                         ; $4387: $a0
    ret nz                                        ; $4388: $c0

    ret nz                                        ; $4389: $c0

    nop                                           ; $438a: $00
    nop                                           ; $438b: $00
    add b                                         ; $438c: $80
    add b                                         ; $438d: $80
    add b                                         ; $438e: $80
    add b                                         ; $438f: $80
    inc bc                                        ; $4390: $03
    inc bc                                        ; $4391: $03
    inc b                                         ; $4392: $04
    rlca                                          ; $4393: $07
    ld [$110f], sp                                ; $4394: $08 $0f $11
    rra                                           ; $4397: $1f
    inc de                                        ; $4398: $13
    ld e, $1f                                     ; $4399: $1e $1f
    inc e                                         ; $439b: $1c
    rra                                           ; $439c: $1f
    dec d                                         ; $439d: $15
    rrca                                          ; $439e: $0f
    add hl, bc                                    ; $439f: $09
    rst $10                                       ; $43a0: $d7
    call c, $feff                                 ; $43a1: $dc $ff $fe
    ccf                                           ; $43a4: $3f
    scf                                           ; $43a5: $37
    dec e                                         ; $43a6: $1d
    rra                                           ; $43a7: $1f
    rrca                                          ; $43a8: $0f
    rrca                                          ; $43a9: $0f
    rrca                                          ; $43aa: $0f
    dec bc                                        ; $43ab: $0b
    ld [de], a                                    ; $43ac: $12
    ld e, $1e                                     ; $43ad: $1e $1e
    ld e, $80                                     ; $43af: $1e $80
    add b                                         ; $43b1: $80
    ld h, b                                       ; $43b2: $60
    ldh [rNR10], a                                ; $43b3: $e0 $10
    ldh a, [$08]                                  ; $43b5: $f0 $08
    ld hl, sp-$78                                 ; $43b7: $f8 $88
    ld hl, sp-$38                                 ; $43b9: $f8 $c8
    ld a, b                                       ; $43bb: $78
    ret z                                         ; $43bc: $c8

    ld a, b                                       ; $43bd: $78
    add sp, $38                                   ; $43be: $e8 $38
    ldh a, [$30]                                  ; $43c0: $f0 $30
    ldh a, [rSVBK]                                ; $43c2: $f0 $70
    ldh [$a0], a                                  ; $43c4: $e0 $a0
    ret nc                                        ; $43c6: $d0

    ld [hl], b                                    ; $43c7: $70
    ldh [$e0], a                                  ; $43c8: $e0 $e0
    ldh [$a0], a                                  ; $43ca: $e0 $a0
    sub b                                         ; $43cc: $90
    ldh a, [$f0]                                  ; $43cd: $f0 $f0
    ldh a, [rTAC]                                 ; $43cf: $f0 $07
    rlca                                          ; $43d1: $07
    ld [$100f], sp                                ; $43d2: $08 $0f $10
    rra                                           ; $43d5: $1f

jr_021_43d6:
    jr nz, jr_021_4417                            ; $43d6: $20 $3f

    jr nz, jr_021_4419                            ; $43d8: $20 $3f

    jr nz, @+$41                                  ; $43da: $20 $3f

    ld hl, $133f                                  ; $43dc: $21 $3f $13
    ld e, $17                                     ; $43df: $1e $17
    dec e                                         ; $43e1: $1d
    rrca                                          ; $43e2: $0f
    dec c                                         ; $43e3: $0d
    rlca                                          ; $43e4: $07
    rlca                                          ; $43e5: $07
    rlca                                          ; $43e6: $07
    dec b                                         ; $43e7: $05
    rrca                                          ; $43e8: $0f
    dec bc                                        ; $43e9: $0b
    rrca                                          ; $43ea: $0f
    rrca                                          ; $43eb: $0f
    ld bc, $0101                                  ; $43ec: $01 $01 $01
    ld bc, $0000                                  ; $43ef: $01 $00 $00
    ret nz                                        ; $43f2: $c0

    ret nz                                        ; $43f3: $c0

    jr nz, jr_021_43d6                            ; $43f4: $20 $e0

    db $10                                        ; $43f6: $10
    ldh a, [rNR10]                                ; $43f7: $f0 $10
    ldh a, [$90]                                  ; $43f9: $f0 $90
    ldh a, [$e0]                                  ; $43fb: $f0 $e0
    ld h, b                                       ; $43fd: $60
    ldh [$e0], a                                  ; $43fe: $e0 $e0
    ld e, b                                       ; $4400: $58
    ret c                                         ; $4401: $d8

    ld hl, sp-$08                                 ; $4402: $f8 $f8
    ldh a, [rSVBK]                                ; $4404: $f0 $70
    sub b                                         ; $4406: $90
    ldh a, [$60]                                  ; $4407: $f0 $60
    ldh [$e0], a                                  ; $4409: $e0 $e0
    and b                                         ; $440b: $a0
    jr nz, @-$1e                                  ; $440c: $20 $e0

    ldh [$e0], a                                  ; $440e: $e0 $e0
    inc bc                                        ; $4410: $03
    inc bc                                        ; $4411: $03
    inc b                                         ; $4412: $04
    rlca                                          ; $4413: $07
    ld [$100f], sp                                ; $4414: $08 $0f $10

jr_021_4417:
    rra                                           ; $4417: $1f
    inc d                                         ; $4418: $14

jr_021_4419:
    rra                                           ; $4419: $1f
    ld e, $1b                                     ; $441a: $1e $1b
    rra                                           ; $441c: $1f
    dec de                                        ; $441d: $1b
    rrca                                          ; $441e: $0f
    inc c                                         ; $441f: $0c
    dec bc                                        ; $4420: $0b
    ld c, $0f                                     ; $4421: $0e $0f
    dec c                                         ; $4423: $0d
    rrca                                          ; $4424: $0f
    dec bc                                        ; $4425: $0b
    inc b                                         ; $4426: $04
    rlca                                          ; $4427: $07
    rlca                                          ; $4428: $07
    rlca                                          ; $4429: $07
    rlca                                          ; $442a: $07
    ld b, $09                                     ; $442b: $06 $09
    rrca                                          ; $442d: $0f
    rrca                                          ; $442e: $0f
    rrca                                          ; $442f: $0f
    add b                                         ; $4430: $80
    add b                                         ; $4431: $80
    ld h, b                                       ; $4432: $60
    ldh [rNR10], a                                ; $4433: $e0 $10
    ldh a, [$08]                                  ; $4435: $f0 $08
    ld hl, sp+$08                                 ; $4437: $f8 $08
    ld hl, sp+$18                                 ; $4439: $f8 $18
    ld hl, sp+$38                                 ; $443b: $f8 $38
    add sp, -$10                                  ; $443d: $e8 $f0
    ret nc                                        ; $443f: $d0

jr_021_4440:
    di                                            ; $4440: $f3
    ld [hl], e                                    ; $4441: $73
    rst $38                                       ; $4442: $ff
    xor a                                         ; $4443: $af
    db $fc                                        ; $4444: $fc
    db $f4                                        ; $4445: $f4
    jr jr_021_4440                                ; $4446: $18 $f8

    ldh a, [$f0]                                  ; $4448: $f0 $f0
    ldh a, [$b0]                                  ; $444a: $f0 $b0
    ld c, b                                       ; $444c: $48
    ld a, b                                       ; $444d: $78
    ld a, b                                       ; $444e: $78
    ld a, b                                       ; $444f: $78
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    inc bc                                        ; $4452: $03
    inc bc                                        ; $4453: $03
    inc b                                         ; $4454: $04
    rlca                                          ; $4455: $07
    ld l, b                                       ; $4456: $68
    ld l, a                                       ; $4457: $6f
    ld l, b                                       ; $4458: $68
    ld l, a                                       ; $4459: $6f
    ld l, c                                       ; $445a: $69
    ld l, a                                       ; $445b: $6f
    scf                                           ; $445c: $37
    ld [hl], $1f                                  ; $445d: $36 $1f
    rra                                           ; $445f: $1f
    ld c, $0b                                     ; $4460: $0e $0b
    dec b                                         ; $4462: $05
    rlca                                          ; $4463: $07
    rrca                                          ; $4464: $0f
    rrca                                          ; $4465: $0f
    add hl, bc                                    ; $4466: $09
    rrca                                          ; $4467: $0f
    ld b, $07                                     ; $4468: $06 $07
    rlca                                          ; $446a: $07
    dec b                                         ; $446b: $05
    inc b                                         ; $446c: $04
    rlca                                          ; $446d: $07
    rlca                                          ; $446e: $07
    rlca                                          ; $446f: $07
    ldh [$e0], a                                  ; $4470: $e0 $e0
    db $10                                        ; $4472: $10
    ldh a, [$08]                                  ; $4473: $f0 $08
    ld hl, sp+$24                                 ; $4475: $f8 $24
    db $fc                                        ; $4477: $fc
    ld h, h                                       ; $4478: $64
    db $fc                                        ; $4479: $fc
    db $f4                                        ; $447a: $f4
    sbc h                                         ; $447b: $9c
    db $f4                                        ; $447c: $f4
    cp h                                          ; $447d: $bc
    ld hl, sp+$28                                 ; $447e: $f8 $28
    ld hl, sp-$78                                 ; $4480: $f8 $88
    ldh a, [$90]                                  ; $4482: $f0 $90
    ldh [$60], a                                  ; $4484: $e0 $60
    ret nz                                        ; $4486: $c0

    ret nz                                        ; $4487: $c0

    add b                                         ; $4488: $80
    add b                                         ; $4489: $80
    ret nz                                        ; $448a: $c0

    ld b, b                                       ; $448b: $40
    ret nz                                        ; $448c: $c0

    ret nz                                        ; $448d: $c0

    add b                                         ; $448e: $80
    add b                                         ; $448f: $80
    inc bc                                        ; $4490: $03
    inc bc                                        ; $4491: $03
    inc b                                         ; $4492: $04
    rlca                                          ; $4493: $07
    ld [$d10f], sp                                ; $4494: $08 $0f $d1
    rst $18                                       ; $4497: $df
    db $d3                                        ; $4498: $d3
    sbc $df                                       ; $4499: $de $df
    call c, Call_021_555f                         ; $449b: $dc $5f $55
    ld a, a                                       ; $449e: $7f
    ld a, c                                       ; $449f: $79
    scf                                           ; $44a0: $37
    inc a                                         ; $44a1: $3c
    ccf                                           ; $44a2: $3f
    ld l, $1b                                     ; $44a3: $2e $1b
    rra                                           ; $44a5: $1f
    rra                                           ; $44a6: $1f
    ld e, $0f                                     ; $44a7: $1e $0f
    rrca                                          ; $44a9: $0f
    rrca                                          ; $44aa: $0f
    dec bc                                        ; $44ab: $0b
    ld [de], a                                    ; $44ac: $12
    ld e, $1e                                     ; $44ad: $1e $1e
    ld e, $80                                     ; $44af: $1e $80
    add b                                         ; $44b1: $80
    ld h, b                                       ; $44b2: $60
    ldh [rNR10], a                                ; $44b3: $e0 $10
    ldh a, [$08]                                  ; $44b5: $f0 $08
    ld hl, sp-$78                                 ; $44b7: $f8 $88
    ld hl, sp-$38                                 ; $44b9: $f8 $c8
    ld a, b                                       ; $44bb: $78
    ret z                                         ; $44bc: $c8

    ld a, b                                       ; $44bd: $78
    add sp, $38                                   ; $44be: $e8 $38
    ldh a, [$30]                                  ; $44c0: $f0 $30
    ldh a, [rSVBK]                                ; $44c2: $f0 $70
    ldh [$e0], a                                  ; $44c4: $e0 $e0
    ret nc                                        ; $44c6: $d0

    ld [hl], b                                    ; $44c7: $70
    ldh [$e0], a                                  ; $44c8: $e0 $e0
    ldh [$a0], a                                  ; $44ca: $e0 $a0
    sub b                                         ; $44cc: $90
    ldh a, [$f0]                                  ; $44cd: $f0 $f0
    ldh a, [rTAC]                                 ; $44cf: $f0 $07
    rlca                                          ; $44d1: $07
    ld [$100f], sp                                ; $44d2: $08 $0f $10
    rra                                           ; $44d5: $1f

jr_021_44d6:
    jr nz, jr_021_4517                            ; $44d6: $20 $3f

    jr nz, jr_021_4519                            ; $44d8: $20 $3f

    jr nz, @+$41                                  ; $44da: $20 $3f

    ld hl, $133f                                  ; $44dc: $21 $3f $13
    ld e, $17                                     ; $44df: $1e $17
    dec e                                         ; $44e1: $1d
    rrca                                          ; $44e2: $0f
    dec c                                         ; $44e3: $0d
    rrca                                          ; $44e4: $0f
    rrca                                          ; $44e5: $0f
    rrca                                          ; $44e6: $0f
    add hl, bc                                    ; $44e7: $09
    rlca                                          ; $44e8: $07
    rlca                                          ; $44e9: $07
    ld bc, $0101                                  ; $44ea: $01 $01 $01
    ld bc, $0101                                  ; $44ed: $01 $01 $01
    nop                                           ; $44f0: $00
    nop                                           ; $44f1: $00
    ret nz                                        ; $44f2: $c0

    ret nz                                        ; $44f3: $c0

    jr nz, jr_021_44d6                            ; $44f4: $20 $e0

    ld d, $f6                                     ; $44f6: $16 $f6
    ld d, $f6                                     ; $44f8: $16 $f6
    sub [hl]                                      ; $44fa: $96
    or $ec                                        ; $44fb: $f6 $ec
    ld l, h                                       ; $44fd: $6c
    ld hl, sp-$08                                 ; $44fe: $f8 $f8
    ld [hl], b                                    ; $4500: $70
    ldh a, [$f0]                                  ; $4501: $f0 $f0
    ret nc                                        ; $4503: $d0

    ldh a, [rSVBK]                                ; $4504: $f0 $70
    sub b                                         ; $4506: $90
    ldh a, [$60]                                  ; $4507: $f0 $60
    ldh [$e0], a                                  ; $4509: $e0 $e0
    and b                                         ; $450b: $a0
    jr nz, @-$1e                                  ; $450c: $20 $e0

    ldh [$e0], a                                  ; $450e: $e0 $e0
    inc bc                                        ; $4510: $03
    inc bc                                        ; $4511: $03
    inc b                                         ; $4512: $04
    rlca                                          ; $4513: $07
    ld [$100f], sp                                ; $4514: $08 $0f $10

jr_021_4517:
    rra                                           ; $4517: $1f
    inc d                                         ; $4518: $14

jr_021_4519:
    rra                                           ; $4519: $1f
    ld e, $1b                                     ; $451a: $1e $1b
    rra                                           ; $451c: $1f
    dec de                                        ; $451d: $1b
    rrca                                          ; $451e: $0f
    inc c                                         ; $451f: $0c
    dec bc                                        ; $4520: $0b
    ld c, $07                                     ; $4521: $0e $07
    rlca                                          ; $4523: $07
    rlca                                          ; $4524: $07
    rlca                                          ; $4525: $07
    inc b                                         ; $4526: $04
    rlca                                          ; $4527: $07
    inc bc                                        ; $4528: $03
    inc bc                                        ; $4529: $03
    rlca                                          ; $452a: $07
    ld b, $09                                     ; $452b: $06 $09
    rrca                                          ; $452d: $0f
    rrca                                          ; $452e: $0f
    rrca                                          ; $452f: $0f
    add b                                         ; $4530: $80
    add b                                         ; $4531: $80
    ld h, b                                       ; $4532: $60
    ldh [rNR10], a                                ; $4533: $e0 $10
    ldh a, [$0b]                                  ; $4535: $f0 $0b
    ei                                            ; $4537: $fb
    dec bc                                        ; $4538: $0b
    ei                                            ; $4539: $fb
    dec de                                        ; $453a: $1b
    ei                                            ; $453b: $fb
    ld a, $ee                                     ; $453c: $3e $ee
    db $fc                                        ; $453e: $fc
    call c, $f4fc                                 ; $453f: $dc $fc $f4
    ld hl, sp+$48                                 ; $4542: $f8 $48
    ld hl, sp-$08                                 ; $4544: $f8 $f8
    ld [$f0f8], sp                                ; $4546: $08 $f8 $f0
    ldh a, [$f0]                                  ; $4549: $f0 $f0
    or b                                          ; $454b: $b0
    ld c, b                                       ; $454c: $48
    ld a, b                                       ; $454d: $78
    ld a, b                                       ; $454e: $78
    ld a, b                                       ; $454f: $78
    inc bc                                        ; $4550: $03
    inc bc                                        ; $4551: $03
    inc b                                         ; $4552: $04
    rlca                                          ; $4553: $07

jr_021_4554:
    ret z                                         ; $4554: $c8

    rst $08                                       ; $4555: $cf
    ret z                                         ; $4556: $c8

    rst $08                                       ; $4557: $cf
    ret z                                         ; $4558: $c8

    rst $08                                       ; $4559: $cf
    ld l, b                                       ; $455a: $68
    ld l, a                                       ; $455b: $6f
    inc a                                         ; $455c: $3c
    ccf                                           ; $455d: $3f
    ld e, $17                                     ; $455e: $1e $17
    rrca                                          ; $4560: $0f
    dec c                                         ; $4561: $0d
    rlca                                          ; $4562: $07
    inc b                                         ; $4563: $04
    rrca                                          ; $4564: $0f
    ld c, $09                                     ; $4565: $0e $09
    rrca                                          ; $4567: $0f
    rlca                                          ; $4568: $07
    rlca                                          ; $4569: $07
    rlca                                          ; $456a: $07
    dec b                                         ; $456b: $05
    inc b                                         ; $456c: $04
    rlca                                          ; $456d: $07
    rlca                                          ; $456e: $07
    rlca                                          ; $456f: $07
    ret nz                                        ; $4570: $c0

    ret nz                                        ; $4571: $c0

    jr nz, jr_021_4554                            ; $4572: $20 $e0

    jr nc, @-$0e                                  ; $4574: $30 $f0

    ld c, b                                       ; $4576: $48
    ld hl, sp+$08                                 ; $4577: $f8 $08
    ld hl, sp+$18                                 ; $4579: $f8 $18
    ld hl, sp+$38                                 ; $457b: $f8 $38
    add sp, $78                                   ; $457d: $e8 $78
    ld hl, sp-$18                                 ; $457f: $f8 $e8
    cp b                                          ; $4581: $b8
    ldh a, [rSVBK]                                ; $4582: $f0 $70
    ret nz                                        ; $4584: $c0

    ld b, b                                       ; $4585: $40
    ldh [$e0], a                                  ; $4586: $e0 $e0
    ret nz                                        ; $4588: $c0

    ret nz                                        ; $4589: $c0

    and b                                         ; $458a: $a0
    ld h, b                                       ; $458b: $60
    and b                                         ; $458c: $a0
    ldh [$e0], a                                  ; $458d: $e0 $e0
    ldh [$03], a                                  ; $458f: $e0 $03
    inc bc                                        ; $4591: $03
    inc b                                         ; $4592: $04
    rlca                                          ; $4593: $07
    ret z                                         ; $4594: $c8

    rst $08                                       ; $4595: $cf
    ret nc                                        ; $4596: $d0

    rst $18                                       ; $4597: $df
    ret nc                                        ; $4598: $d0

    rst $18                                       ; $4599: $df
    ld [hl], c                                    ; $459a: $71
    ld a, a                                       ; $459b: $7f
    inc sp                                        ; $459c: $33
    ccf                                           ; $459d: $3f
    rra                                           ; $459e: $1f
    dec e                                         ; $459f: $1d
    rra                                           ; $45a0: $1f
    ld d, $0d                                     ; $45a1: $16 $0d
    rrca                                          ; $45a3: $0f
    rlca                                          ; $45a4: $07
    rlca                                          ; $45a5: $07
    dec bc                                        ; $45a6: $0b
    rrca                                          ; $45a7: $0f
    rrca                                          ; $45a8: $0f
    rrca                                          ; $45a9: $0f
    rla                                           ; $45aa: $17
    dec e                                         ; $45ab: $1d
    inc de                                        ; $45ac: $13
    rra                                           ; $45ad: $1f
    ld c, $0e                                     ; $45ae: $0e $0e
    add b                                         ; $45b0: $80
    add b                                         ; $45b1: $80
    ld h, b                                       ; $45b2: $60
    ldh [rNR10], a                                ; $45b3: $e0 $10

jr_021_45b5:
    ldh a, [rOBP0]                                ; $45b5: $f0 $48
    ld hl, sp-$38                                 ; $45b7: $f8 $c8
    ld hl, sp-$18                                 ; $45b9: $f8 $e8
    jr c, jr_021_45b5                             ; $45bb: $38 $f8

    ld e, b                                       ; $45bd: $58
    ld hl, sp+$58                                 ; $45be: $f8 $58
    ldh a, [rNR10]                                ; $45c0: $f0 $10
    ldh a, [$30]                                  ; $45c2: $f0 $30
    ldh a, [$d0]                                  ; $45c4: $f0 $d0
    ldh [rNR41], a                                ; $45c6: $e0 $20
    ldh [$e0], a                                  ; $45c8: $e0 $e0
    ldh [$a0], a                                  ; $45ca: $e0 $a0
    sub b                                         ; $45cc: $90
    ldh a, [$f0]                                  ; $45cd: $f0 $f0
    ldh a, [$03]                                  ; $45cf: $f0 $03
    inc bc                                        ; $45d1: $03
    inc c                                         ; $45d2: $0c
    rrca                                          ; $45d3: $0f
    db $10                                        ; $45d4: $10
    rra                                           ; $45d5: $1f
    jr z, jr_021_4617                             ; $45d6: $28 $3f

    jr z, @+$41                                   ; $45d8: $28 $3f

    inc a                                         ; $45da: $3c
    scf                                           ; $45db: $37
    ld e, $1b                                     ; $45dc: $1e $1b
    rra                                           ; $45de: $1f
    add hl, de                                    ; $45df: $19
    rra                                           ; $45e0: $1f
    ld de, $090f                                  ; $45e1: $11 $0f $09
    rlca                                          ; $45e4: $07
    rlca                                          ; $45e5: $07
    rrca                                          ; $45e6: $0f
    inc c                                         ; $45e7: $0c
    dec bc                                        ; $45e8: $0b
    rrca                                          ; $45e9: $0f
    rlca                                          ; $45ea: $07
    dec b                                         ; $45eb: $05
    dec b                                         ; $45ec: $05
    rlca                                          ; $45ed: $07

jr_021_45ee:
    inc bc                                        ; $45ee: $03
    inc bc                                        ; $45ef: $03
    add b                                         ; $45f0: $80
    add b                                         ; $45f1: $80
    ld b, b                                       ; $45f2: $40
    ret nz                                        ; $45f3: $c0

    inc hl                                        ; $45f4: $23
    db $e3                                        ; $45f5: $e3
    inc de                                        ; $45f6: $13
    di                                            ; $45f7: $f3

jr_021_45f8:
    inc de                                        ; $45f8: $13
    di                                            ; $45f9: $f3
    ld d, $f6                                     ; $45fa: $16 $f6
    inc a                                         ; $45fc: $3c
    db $fc                                        ; $45fd: $fc
    jr z, jr_021_45f8                             ; $45fe: $28 $f8

    ld a, b                                       ; $4600: $78
    ld hl, sp-$08                                 ; $4601: $f8 $f8
    xor b                                         ; $4603: $a8
    ldh a, [rSVBK]                                ; $4604: $f0 $70
    ret nc                                        ; $4606: $d0

    ldh a, [$60]                                  ; $4607: $f0 $60
    ldh [$e0], a                                  ; $4609: $e0 $e0
    and b                                         ; $460b: $a0
    jr nz, jr_021_45ee                            ; $460c: $20 $e0

    ldh [$e0], a                                  ; $460e: $e0 $e0
    inc bc                                        ; $4610: $03
    inc bc                                        ; $4611: $03
    inc b                                         ; $4612: $04
    rlca                                          ; $4613: $07
    ld [$100f], sp                                ; $4614: $08 $0f $10

jr_021_4617:
    rra                                           ; $4617: $1f
    ld de, $131f                                  ; $4618: $11 $1f $13
    ld e, $17                                     ; $461b: $1e $17
    inc e                                         ; $461d: $1c
    rrca                                          ; $461e: $0f
    dec c                                         ; $461f: $0d
    ld c, $0f                                     ; $4620: $0e $0f
    rlca                                          ; $4622: $07
    dec b                                         ; $4623: $05
    inc bc                                        ; $4624: $03
    ld [bc], a                                    ; $4625: $02
    dec b                                         ; $4626: $05
    rlca                                          ; $4627: $07
    inc bc                                        ; $4628: $03
    inc bc                                        ; $4629: $03
    rlca                                          ; $462a: $07
    ld b, $09                                     ; $462b: $06 $09
    rrca                                          ; $462d: $0f
    rrca                                          ; $462e: $0f
    rrca                                          ; $462f: $0f
    add b                                         ; $4630: $80
    add b                                         ; $4631: $80
    ld h, b                                       ; $4632: $60
    ldh [rNR13], a                                ; $4633: $e0 $13
    di                                            ; $4635: $f3
    dec bc                                        ; $4636: $0b
    ei                                            ; $4637: $fb
    dec bc                                        ; $4638: $0b
    ei                                            ; $4639: $fb
    adc [hl]                                      ; $463a: $8e
    cp $94                                        ; $463b: $fe $94
    db $f4                                        ; $463d: $f4
    db $fc                                        ; $463e: $fc
    db $fc                                        ; $463f: $fc
    ret c                                         ; $4640: $d8

    ld hl, sp-$08                                 ; $4641: $f8 $f8
    ld l, b                                       ; $4643: $68
    ldh a, [$f0]                                  ; $4644: $f0 $f0
    sub b                                         ; $4646: $90
    ldh a, [$f0]                                  ; $4647: $f0 $f0
    ldh a, [$e8]                                  ; $4649: $f0 $e8
    ret c                                         ; $464b: $d8

    sbc b                                         ; $464c: $98
    ld hl, sp-$10                                 ; $464d: $f8 $f0
    ldh a, [rP1]                                  ; $464f: $f0 $00
    nop                                           ; $4651: $00
    inc bc                                        ; $4652: $03
    inc bc                                        ; $4653: $03
    inc b                                         ; $4654: $04
    rlca                                          ; $4655: $07

jr_021_4656:
    ld [$100f], sp                                ; $4656: $08 $0f $10
    rra                                           ; $4659: $1f
    ld de, $131f                                  ; $465a: $11 $1f $13
    rra                                           ; $465d: $1f
    rrca                                          ; $465e: $0f
    dec c                                         ; $465f: $0d
    rrca                                          ; $4660: $0f
    ld c, $05                                     ; $4661: $0e $05
    rlca                                          ; $4663: $07
    rrca                                          ; $4664: $0f

jr_021_4665:
    ld a, [bc]                                    ; $4665: $0a
    rra                                           ; $4666: $1f
    rla                                           ; $4667: $17
    inc e                                         ; $4668: $1c
    rra                                           ; $4669: $1f
    rrca                                          ; $466a: $0f
    rrca                                          ; $466b: $0f
    dec bc                                        ; $466c: $0b
    rrca                                          ; $466d: $0f
    ld b, $06                                     ; $466e: $06 $06
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    ret nz                                        ; $4672: $c0

    ret nz                                        ; $4673: $c0

    jr nz, jr_021_4656                            ; $4674: $20 $e0

    ld d, b                                       ; $4676: $50
    ldh a, [$d0]                                  ; $4677: $f0 $d0
    ldh a, [$e8]                                  ; $4679: $f0 $e8
    jr c, jr_021_4665                             ; $467b: $38 $e8

    ld a, b                                       ; $467d: $78
    ld hl, sp+$58                                 ; $467e: $f8 $58
    ldh a, [rNR10]                                ; $4680: $f0 $10
    ldh [rNR41], a                                ; $4682: $e0 $20
    ldh a, [$50]                                  ; $4684: $f0 $50
    ldh a, [$f0]                                  ; $4686: $f0 $f0
    ld h, b                                       ; $4688: $60
    ldh [$d0], a                                  ; $4689: $e0 $d0
    ldh a, [$b0]                                  ; $468b: $f0 $b0
    ldh a, [$e0]                                  ; $468d: $f0 $e0
    ldh [rP1], a                                  ; $468f: $e0 $00
    nop                                           ; $4691: $00
    rlca                                          ; $4692: $07
    rlca                                          ; $4693: $07
    ld a, [bc]                                    ; $4694: $0a
    rrca                                          ; $4695: $0f

jr_021_4696:
    ld [de], a                                    ; $4696: $12
    rra                                           ; $4697: $1f
    rla                                           ; $4698: $17
    dec e                                         ; $4699: $1d
    rla                                           ; $469a: $17
    inc e                                         ; $469b: $1c
    rra                                           ; $469c: $1f
    ld a, [de]                                    ; $469d: $1a
    rra                                           ; $469e: $1f
    ld [de], a                                    ; $469f: $12
    rrca                                          ; $46a0: $0f
    ld [$1c17], sp                                ; $46a1: $08 $17 $1c
    ccf                                           ; $46a4: $3f
    inc a                                         ; $46a5: $3c
    dec hl                                        ; $46a6: $2b
    cpl                                           ; $46a7: $2f
    ld h, h                                       ; $46a8: $64
    ld h, a                                       ; $46a9: $67
    ld h, a                                       ; $46aa: $67
    ld h, a                                       ; $46ab: $67
    inc b                                         ; $46ac: $04
    rlca                                          ; $46ad: $07
    inc bc                                        ; $46ae: $03
    inc bc                                        ; $46af: $03
    nop                                           ; $46b0: $00
    nop                                           ; $46b1: $00
    ret nz                                        ; $46b2: $c0

    ret nz                                        ; $46b3: $c0

    jr nz, jr_021_4696                            ; $46b4: $20 $e0

    db $10                                        ; $46b6: $10
    ldh a, [$08]                                  ; $46b7: $f0 $08
    ld hl, sp-$78                                 ; $46b9: $f8 $88
    ld hl, sp-$78                                 ; $46bb: $f8 $88
    ld hl, sp-$30                                 ; $46bd: $f8 $d0
    ld [hl], b                                    ; $46bf: $70
    ret nc                                        ; $46c0: $d0

    ld [hl], b                                    ; $46c1: $70
    ldh [$60], a                                  ; $46c2: $e0 $60
    ld hl, sp+$28                                 ; $46c4: $f8 $28
    call c, Call_000_2cf4                         ; $46c6: $dc $f4 $2c
    db $ec                                        ; $46c9: $ec
    ret nz                                        ; $46ca: $c0

    ret nz                                        ; $46cb: $c0

    add b                                         ; $46cc: $80
    add b                                         ; $46cd: $80
    add b                                         ; $46ce: $80
    add b                                         ; $46cf: $80
    nop                                           ; $46d0: $00
    nop                                           ; $46d1: $00
    inc bc                                        ; $46d2: $03
    inc bc                                        ; $46d3: $03
    inc b                                         ; $46d4: $04
    rlca                                          ; $46d5: $07

jr_021_46d6:
    ld [$080f], sp                                ; $46d6: $08 $0f $08
    rrca                                          ; $46d9: $0f
    db $10                                        ; $46da: $10
    rra                                           ; $46db: $1f
    db $10                                        ; $46dc: $10
    rra                                           ; $46dd: $1f
    ld de, $131f                                  ; $46de: $11 $1f $13
    ld e, $0b                                     ; $46e1: $1e $0b
    ld c, $03                                     ; $46e3: $0e $03
    ld [bc], a                                    ; $46e5: $02
    rlca                                          ; $46e6: $07
    dec b                                         ; $46e7: $05
    ld b, $07                                     ; $46e8: $06 $07
    rrca                                          ; $46ea: $0f
    rrca                                          ; $46eb: $0f
    dec bc                                        ; $46ec: $0b
    rrca                                          ; $46ed: $0f
    rlca                                          ; $46ee: $07
    rlca                                          ; $46ef: $07
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    ret nz                                        ; $46f2: $c0

    ret nz                                        ; $46f3: $c0

    jr nz, jr_021_46d6                            ; $46f4: $20 $e0

    db $10                                        ; $46f6: $10
    ldh a, [$08]                                  ; $46f7: $f0 $08
    ld hl, sp+$08                                 ; $46f9: $f8 $08
    ld hl, sp+$48                                 ; $46fb: $f8 $48
    ld hl, sp-$10                                 ; $46fd: $f8 $f0
    or b                                          ; $46ff: $b0
    ldh a, [rSVBK]                                ; $4700: $f0 $70
    and b                                         ; $4702: $a0
    ldh [$f8], a                                  ; $4703: $e0 $f8
    xor b                                         ; $4705: $a8
    ld hl, sp-$08                                 ; $4706: $f8 $f8
    jr nc, @-$0e                                  ; $4708: $30 $f0

    add sp, -$28                                  ; $470a: $e8 $d8
    ret c                                         ; $470c: $d8

    ld hl, sp+$70                                 ; $470d: $f8 $70
    ld [hl], b                                    ; $470f: $70
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    inc bc                                        ; $4712: $03
    inc bc                                        ; $4713: $03
    inc b                                         ; $4714: $04
    rlca                                          ; $4715: $07
    ld [$100f], sp                                ; $4716: $08 $0f $10
    rra                                           ; $4719: $1f
    db $10                                        ; $471a: $10
    rra                                           ; $471b: $1f
    inc d                                         ; $471c: $14
    rra                                           ; $471d: $1f
    inc c                                         ; $471e: $0c
    rrca                                          ; $471f: $0f
    ld c, $0b                                     ; $4720: $0e $0b
    rlca                                          ; $4722: $07
    dec b                                         ; $4723: $05
    rra                                           ; $4724: $1f
    inc d                                         ; $4725: $14
    dec sp                                        ; $4726: $3b
    cpl                                           ; $4727: $2f
    inc [hl]                                      ; $4728: $34
    scf                                           ; $4729: $37
    inc bc                                        ; $472a: $03
    inc bc                                        ; $472b: $03
    ld bc, $0101                                  ; $472c: $01 $01 $01
    ld bc, $0000                                  ; $472f: $01 $00 $00
    add b                                         ; $4732: $80
    add b                                         ; $4733: $80
    ld h, b                                       ; $4734: $60
    ldh [$50], a                                  ; $4735: $e0 $50
    ldh a, [$08]                                  ; $4737: $f0 $08
    ld hl, sp+$08                                 ; $4739: $f8 $08
    ld hl, sp+$08                                 ; $473b: $f8 $08
    ld hl, sp+$28                                 ; $473d: $f8 $28
    ld hl, sp+$70                                 ; $473f: $f8 $70
    ret nc                                        ; $4741: $d0

    db $fc                                        ; $4742: $fc
    cp h                                          ; $4743: $bc
    ld hl, sp+$38                                 ; $4744: $f8 $38
    ret nc                                        ; $4746: $d0

    ldh a, [$e0]                                  ; $4747: $f0 $e0
    ldh [rNR41], a                                ; $4749: $e0 $20
    ldh [rNR41], a                                ; $474b: $e0 $20
    ldh [$c0], a                                  ; $474d: $e0 $c0
    ret nz                                        ; $474f: $c0

    ld bc, $0201                                  ; $4750: $01 $01 $02
    inc bc                                        ; $4753: $03
    inc b                                         ; $4754: $04
    rlca                                          ; $4755: $07
    ld [$080f], sp                                ; $4756: $08 $0f $08
    rrca                                          ; $4759: $0f
    add hl, bc                                    ; $475a: $09
    rrca                                          ; $475b: $0f
    rlca                                          ; $475c: $07
    ld b, $07                                     ; $475d: $06 $07
    rlca                                          ; $475f: $07
    ld [bc], a                                    ; $4760: $02
    inc bc                                        ; $4761: $03
    rlca                                          ; $4762: $07
    rlca                                          ; $4763: $07
    rrca                                          ; $4764: $0f
    ld a, [bc]                                    ; $4765: $0a
    rra                                           ; $4766: $1f
    rla                                           ; $4767: $17
    inc e                                         ; $4768: $1c
    rra                                           ; $4769: $1f
    rrca                                          ; $476a: $0f
    rrca                                          ; $476b: $0f
    dec bc                                        ; $476c: $0b
    rrca                                          ; $476d: $0f
    ld b, $06                                     ; $476e: $06 $06
    ldh [$e0], a                                  ; $4770: $e0 $e0
    db $10                                        ; $4772: $10
    ldh a, [$28]                                  ; $4773: $f0 $28
    ld hl, sp+$68                                 ; $4775: $f8 $68
    ld hl, sp-$0c                                 ; $4777: $f8 $f4
    sbc h                                         ; $4779: $9c
    db $f4                                        ; $477a: $f4
    cp h                                          ; $477b: $bc
    db $fc                                        ; $477c: $fc
    xor h                                         ; $477d: $ac
    ld hl, sp+$08                                 ; $477e: $f8 $08
    ldh a, [$90]                                  ; $4780: $f0 $90
    ldh [$e0], a                                  ; $4782: $e0 $e0
    ldh a, [$50]                                  ; $4784: $f0 $50
    ldh a, [$f0]                                  ; $4786: $f0 $f0
    ld h, b                                       ; $4788: $60
    ldh [$d0], a                                  ; $4789: $e0 $d0
    ldh a, [$b0]                                  ; $478b: $f0 $b0
    ldh a, [$e0]                                  ; $478d: $f0 $e0
    ldh [$03], a                                  ; $478f: $e0 $03
    inc bc                                        ; $4791: $03
    dec b                                         ; $4792: $05
    rlca                                          ; $4793: $07
    add hl, bc                                    ; $4794: $09
    rrca                                          ; $4795: $0f
    dec bc                                        ; $4796: $0b
    ld c, $0b                                     ; $4797: $0e $0b
    ld c, $0f                                     ; $4799: $0e $0f
    dec c                                         ; $479b: $0d
    rrca                                          ; $479c: $0f
    add hl, bc                                    ; $479d: $09
    rlca                                          ; $479e: $07
    inc b                                         ; $479f: $04
    dec bc                                        ; $47a0: $0b
    ld c, $3f                                     ; $47a1: $0e $3f
    dec hl                                        ; $47a3: $2b
    ccf                                           ; $47a4: $3f
    inc a                                         ; $47a5: $3c
    dec hl                                        ; $47a6: $2b
    cpl                                           ; $47a7: $2f
    ld h, h                                       ; $47a8: $64
    ld h, a                                       ; $47a9: $67
    ld h, a                                       ; $47aa: $67
    ld h, a                                       ; $47ab: $67
    inc b                                         ; $47ac: $04
    rlca                                          ; $47ad: $07
    inc bc                                        ; $47ae: $03
    inc bc                                        ; $47af: $03
    ldh [$e0], a                                  ; $47b0: $e0 $e0
    db $10                                        ; $47b2: $10
    ldh a, [$08]                                  ; $47b3: $f0 $08
    ld hl, sp-$7c                                 ; $47b5: $f8 $84
    db $fc                                        ; $47b7: $fc
    call nz, $c47c                                ; $47b8: $c4 $7c $c4
    ld a, h                                       ; $47bb: $7c
    add sp, $38                                   ; $47bc: $e8 $38
    add sp, $38                                   ; $47be: $e8 $38
    ldh a, [$30]                                  ; $47c0: $f0 $30
    ldh a, [$f0]                                  ; $47c2: $f0 $f0
    ld hl, sp+$28                                 ; $47c4: $f8 $28
    call c, Call_000_2cf4                         ; $47c6: $dc $f4 $2c
    db $ec                                        ; $47c9: $ec
    ret nz                                        ; $47ca: $c0

    ret nz                                        ; $47cb: $c0

    add b                                         ; $47cc: $80
    add b                                         ; $47cd: $80
    add b                                         ; $47ce: $80
    add b                                         ; $47cf: $80
    ld bc, $0201                                  ; $47d0: $01 $01 $02
    inc bc                                        ; $47d3: $03
    inc b                                         ; $47d4: $04
    rlca                                          ; $47d5: $07
    inc b                                         ; $47d6: $04
    rlca                                          ; $47d7: $07
    ld [$080f], sp                                ; $47d8: $08 $0f $08
    rrca                                          ; $47db: $0f
    ld [$090f], sp                                ; $47dc: $08 $0f $09
    rrca                                          ; $47df: $0f
    dec b                                         ; $47e0: $05
    rlca                                          ; $47e1: $07
    rlca                                          ; $47e2: $07
    rlca                                          ; $47e3: $07
    inc bc                                        ; $47e4: $03
    ld [bc], a                                    ; $47e5: $02
    rlca                                          ; $47e6: $07
    dec b                                         ; $47e7: $05
    ld b, $07                                     ; $47e8: $06 $07
    rrca                                          ; $47ea: $0f
    rrca                                          ; $47eb: $0f
    dec bc                                        ; $47ec: $0b
    rrca                                          ; $47ed: $0f
    rlca                                          ; $47ee: $07
    rlca                                          ; $47ef: $07
    ldh [$e0], a                                  ; $47f0: $e0 $e0
    db $10                                        ; $47f2: $10
    ldh a, [$08]                                  ; $47f3: $f0 $08
    ld hl, sp+$04                                 ; $47f5: $f8 $04
    db $fc                                        ; $47f7: $fc
    inc b                                         ; $47f8: $04
    db $fc                                        ; $47f9: $fc

jr_021_47fa:
    inc h                                         ; $47fa: $24
    db $fc                                        ; $47fb: $fc
    ld hl, sp-$28                                 ; $47fc: $f8 $d8
    ld hl, sp+$38                                 ; $47fe: $f8 $38
    ret nc                                        ; $4800: $d0

    ld [hl], b                                    ; $4801: $70
    ldh a, [$f0]                                  ; $4802: $f0 $f0
    ld hl, sp-$58                                 ; $4804: $f8 $a8
    ld hl, sp-$08                                 ; $4806: $f8 $f8
    jr nc, jr_021_47fa                            ; $4808: $30 $f0

    add sp, -$28                                  ; $480a: $e8 $d8
    ret c                                         ; $480c: $d8

    ld hl, sp+$70                                 ; $480d: $f8 $70
    ld [hl], b                                    ; $480f: $70
    ld bc, $0201                                  ; $4810: $01 $01 $02
    inc bc                                        ; $4813: $03
    inc b                                         ; $4814: $04
    rlca                                          ; $4815: $07
    ld [$080f], sp                                ; $4816: $08 $0f $08
    rrca                                          ; $4819: $0f
    ld a, [bc]                                    ; $481a: $0a
    rrca                                          ; $481b: $0f
    ld b, $07                                     ; $481c: $06 $07
    rlca                                          ; $481e: $07
    dec b                                         ; $481f: $05
    inc bc                                        ; $4820: $03
    ld [bc], a                                    ; $4821: $02
    rrca                                          ; $4822: $0f
    rrca                                          ; $4823: $0f

jr_021_4824:
    rra                                           ; $4824: $1f
    inc d                                         ; $4825: $14
    dec sp                                        ; $4826: $3b
    cpl                                           ; $4827: $2f

jr_021_4828:
    inc [hl]                                      ; $4828: $34
    scf                                           ; $4829: $37
    inc bc                                        ; $482a: $03
    inc bc                                        ; $482b: $03
    ld bc, $0101                                  ; $482c: $01 $01 $01
    ld bc, $c0c0                                  ; $482f: $01 $c0 $c0
    jr nc, jr_021_4824                            ; $4832: $30 $f0

    jr z, @-$06                                   ; $4834: $28 $f8

    inc b                                         ; $4836: $04
    db $fc                                        ; $4837: $fc
    inc b                                         ; $4838: $04
    db $fc                                        ; $4839: $fc
    inc b                                         ; $483a: $04
    db $fc                                        ; $483b: $fc
    inc d                                         ; $483c: $14
    db $fc                                        ; $483d: $fc
    jr c, jr_021_4828                             ; $483e: $38 $e8

    cp $de                                        ; $4840: $fe $de
    db $fc                                        ; $4842: $fc
    call nc, Call_000_38f8                        ; $4843: $d4 $f8 $38
    ret nc                                        ; $4846: $d0

    ldh a, [$e0]                                  ; $4847: $f0 $e0
    ldh [rNR41], a                                ; $4849: $e0 $20
    ldh [rNR41], a                                ; $484b: $e0 $20
    ldh [$c0], a                                  ; $484d: $e0 $c0
    ret nz                                        ; $484f: $c0

    rlca                                          ; $4850: $07
    rlca                                          ; $4851: $07
    ld [$100f], sp                                ; $4852: $08 $0f $10
    rra                                           ; $4855: $1f
    ld hl, $233f                                  ; $4856: $21 $3f $23
    ld a, $27                                     ; $4859: $3e $27
    ld a, $1f                                     ; $485b: $3e $1f
    ld a, [de]                                    ; $485d: $1a
    rra                                           ; $485e: $1f
    inc e                                         ; $485f: $1c
    dec bc                                        ; $4860: $0b
    ld c, $07                                     ; $4861: $0e $07
    rlca                                          ; $4863: $07
    rrca                                          ; $4864: $0f
    ld a, [bc]                                    ; $4865: $0a
    rra                                           ; $4866: $1f
    rla                                           ; $4867: $17
    inc e                                         ; $4868: $1c
    rra                                           ; $4869: $1f
    rrca                                          ; $486a: $0f
    rrca                                          ; $486b: $0f
    dec bc                                        ; $486c: $0b
    rrca                                          ; $486d: $0f
    ld b, $06                                     ; $486e: $06 $06
    add b                                         ; $4870: $80
    add b                                         ; $4871: $80
    ld b, b                                       ; $4872: $40
    ret nz                                        ; $4873: $c0

    and b                                         ; $4874: $a0
    ldh [$a0], a                                  ; $4875: $e0 $a0
    ldh [$d0], a                                  ; $4877: $e0 $d0
    ld [hl], b                                    ; $4879: $70
    ret nc                                        ; $487a: $d0

    ldh a, [$f0]                                  ; $487b: $f0 $f0
    or b                                          ; $487d: $b0
    ldh [rNR41], a                                ; $487e: $e0 $20
    ret nz                                        ; $4880: $c0

    ld b, b                                       ; $4881: $40
    ldh [$e0], a                                  ; $4882: $e0 $e0
    ldh a, [$50]                                  ; $4884: $f0 $50
    ldh a, [$f0]                                  ; $4886: $f0 $f0
    ld h, b                                       ; $4888: $60
    ldh [$d0], a                                  ; $4889: $e0 $d0
    ldh a, [$b0]                                  ; $488b: $f0 $b0
    ldh a, [$e0]                                  ; $488d: $f0 $e0
    ldh [rIF], a                                  ; $488f: $e0 $0f
    rrca                                          ; $4891: $0f
    inc d                                         ; $4892: $14
    rra                                           ; $4893: $1f
    inc h                                         ; $4894: $24
    ccf                                           ; $4895: $3f

jr_021_4896:
    ld l, $3b                                     ; $4896: $2e $3b
    cpl                                           ; $4898: $2f
    add hl, sp                                    ; $4899: $39
    ccf                                           ; $489a: $3f
    dec [hl]                                      ; $489b: $35
    ccf                                           ; $489c: $3f
    inc h                                         ; $489d: $24
    rra                                           ; $489e: $1f
    db $10                                        ; $489f: $10
    cpl                                           ; $48a0: $2f
    jr c, jr_021_48e2                             ; $48a1: $38 $3f

    dec hl                                        ; $48a3: $2b
    ccf                                           ; $48a4: $3f
    inc a                                         ; $48a5: $3c
    dec hl                                        ; $48a6: $2b
    cpl                                           ; $48a7: $2f
    ld h, h                                       ; $48a8: $64
    ld h, a                                       ; $48a9: $67
    ld h, a                                       ; $48aa: $67
    ld h, a                                       ; $48ab: $67
    inc b                                         ; $48ac: $04
    rlca                                          ; $48ad: $07
    inc bc                                        ; $48ae: $03
    inc bc                                        ; $48af: $03
    add b                                         ; $48b0: $80
    add b                                         ; $48b1: $80
    ld b, b                                       ; $48b2: $40
    ret nz                                        ; $48b3: $c0

    jr nz, jr_021_4896                            ; $48b4: $20 $e0

    db $10                                        ; $48b6: $10
    ldh a, [rNR10]                                ; $48b7: $f0 $10
    ldh a, [rNR10]                                ; $48b9: $f0 $10
    ldh a, [$a0]                                  ; $48bb: $f0 $a0
    ldh [$a0], a                                  ; $48bd: $e0 $a0
    ldh [$c0], a                                  ; $48bf: $e0 $c0
    ret nz                                        ; $48c1: $c0

    ldh a, [$f0]                                  ; $48c2: $f0 $f0
    ld hl, sp+$28                                 ; $48c4: $f8 $28
    call c, Call_000_2cf4                         ; $48c6: $dc $f4 $2c
    db $ec                                        ; $48c9: $ec
    ret nz                                        ; $48ca: $c0

    ret nz                                        ; $48cb: $c0

    add b                                         ; $48cc: $80
    add b                                         ; $48cd: $80
    add b                                         ; $48ce: $80
    add b                                         ; $48cf: $80
    rlca                                          ; $48d0: $07
    rlca                                          ; $48d1: $07
    ld [$100f], sp                                ; $48d2: $08 $0f $10
    rra                                           ; $48d5: $1f

jr_021_48d6:
    db $10                                        ; $48d6: $10
    rra                                           ; $48d7: $1f
    jr nz, @+$41                                  ; $48d8: $20 $3f

    jr nz, @+$41                                  ; $48da: $20 $3f

    inc hl                                        ; $48dc: $23
    ccf                                           ; $48dd: $3f
    daa                                           ; $48de: $27
    inc a                                         ; $48df: $3c
    rla                                           ; $48e0: $17
    dec e                                         ; $48e1: $1d

jr_021_48e2:
    rlca                                          ; $48e2: $07
    rlca                                          ; $48e3: $07
    inc bc                                        ; $48e4: $03
    ld [bc], a                                    ; $48e5: $02
    rlca                                          ; $48e6: $07
    dec b                                         ; $48e7: $05
    ld b, $07                                     ; $48e8: $06 $07
    rrca                                          ; $48ea: $0f
    rrca                                          ; $48eb: $0f
    dec bc                                        ; $48ec: $0b
    rrca                                          ; $48ed: $0f
    rlca                                          ; $48ee: $07
    rlca                                          ; $48ef: $07
    add b                                         ; $48f0: $80
    add b                                         ; $48f1: $80
    ld b, b                                       ; $48f2: $40
    ret nz                                        ; $48f3: $c0

    jr nz, jr_021_48d6                            ; $48f4: $20 $e0

    db $10                                        ; $48f6: $10
    ldh a, [rNR10]                                ; $48f7: $f0 $10
    ldh a, [$90]                                  ; $48f9: $f0 $90
    ldh a, [$e0]                                  ; $48fb: $f0 $e0
    ld h, b                                       ; $48fd: $60
    ldh [$e0], a                                  ; $48fe: $e0 $e0
    ld b, b                                       ; $4900: $40
    ret nz                                        ; $4901: $c0

    ldh a, [$f0]                                  ; $4902: $f0 $f0
    ld hl, sp-$58                                 ; $4904: $f8 $a8
    ld hl, sp-$08                                 ; $4906: $f8 $f8
    jr nc, @-$0e                                  ; $4908: $30 $f0

    add sp, -$28                                  ; $490a: $e8 $d8
    ret c                                         ; $490c: $d8

    ld hl, sp+$70                                 ; $490d: $f8 $70
    ld [hl], b                                    ; $490f: $70
    rlca                                          ; $4910: $07
    rlca                                          ; $4911: $07
    ld [$100f], sp                                ; $4912: $08 $0f $10
    rra                                           ; $4915: $1f
    jr nz, jr_021_4957                            ; $4916: $20 $3f

    jr nz, @+$41                                  ; $4918: $20 $3f

    jr z, jr_021_495b                             ; $491a: $28 $3f

    jr jr_021_493d                                ; $491c: $18 $1f

    inc e                                         ; $491e: $1c
    rla                                           ; $491f: $17
    rrca                                          ; $4920: $0f
    dec bc                                        ; $4921: $0b
    rrca                                          ; $4922: $0f
    rrca                                          ; $4923: $0f
    rra                                           ; $4924: $1f
    inc d                                         ; $4925: $14
    dec sp                                        ; $4926: $3b
    cpl                                           ; $4927: $2f
    inc [hl]                                      ; $4928: $34
    scf                                           ; $4929: $37
    inc bc                                        ; $492a: $03
    inc bc                                        ; $492b: $03
    ld bc, $0101                                  ; $492c: $01 $01 $01
    ld bc, $0000                                  ; $492f: $01 $00 $00
    ret nz                                        ; $4932: $c0

    ret nz                                        ; $4933: $c0

    and b                                         ; $4934: $a0
    ldh [rNR10], a                                ; $4935: $e0 $10
    ldh a, [rNR10]                                ; $4937: $f0 $10
    ldh a, [rNR10]                                ; $4939: $f0 $10
    ldh a, [$50]                                  ; $493b: $f0 $50

jr_021_493d:
    ldh a, [$e0]                                  ; $493d: $f0 $e0
    and b                                         ; $493f: $a0
    ld hl, sp+$78                                 ; $4940: $f8 $78
    db $fc                                        ; $4942: $fc
    call nc, Call_000_38f8                        ; $4943: $d4 $f8 $38
    ret nc                                        ; $4946: $d0

    ldh a, [$e0]                                  ; $4947: $f0 $e0
    ldh [rNR41], a                                ; $4949: $e0 $20
    ldh [rNR41], a                                ; $494b: $e0 $20
    ldh [$c0], a                                  ; $494d: $e0 $c0
    ret nz                                        ; $494f: $c0

    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    inc bc                                        ; $4952: $03
    inc bc                                        ; $4953: $03
    nop                                           ; $4954: $00
    inc bc                                        ; $4955: $03
    inc b                                         ; $4956: $04

jr_021_4957:
    rlca                                          ; $4957: $07
    ld [$090f], sp                                ; $4958: $08 $0f $09

jr_021_495b:
    rrca                                          ; $495b: $0f
    rlca                                          ; $495c: $07
    dec b                                         ; $495d: $05
    rlca                                          ; $495e: $07
    ld b, $01                                     ; $495f: $06 $01
    inc bc                                        ; $4961: $03
    inc bc                                        ; $4962: $03
    inc bc                                        ; $4963: $03
    rrca                                          ; $4964: $0f
    dec bc                                        ; $4965: $0b
    inc c                                         ; $4966: $0c
    rrca                                          ; $4967: $0f
    rlca                                          ; $4968: $07
    rlca                                          ; $4969: $07
    rlca                                          ; $496a: $07
    rlca                                          ; $496b: $07
    ld [bc], a                                    ; $496c: $02

jr_021_496d:
    ld [bc], a                                    ; $496d: $02
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    ret nz                                        ; $4972: $c0

    ret nz                                        ; $4973: $c0

    nop                                           ; $4974: $00
    ret nz                                        ; $4975: $c0

    ld h, b                                       ; $4976: $60
    ldh [$e0], a                                  ; $4977: $e0 $e0
    ldh [$d0], a                                  ; $4979: $e0 $d0
    jr nc, jr_021_496d                            ; $497b: $30 $f0

    ld [hl], b                                    ; $497d: $70
    ldh [rNR41], a                                ; $497e: $e0 $20
    ret nz                                        ; $4980: $c0

    nop                                           ; $4981: $00
    ret nz                                        ; $4982: $c0

    ret nz                                        ; $4983: $c0

    ldh [$e0], a                                  ; $4984: $e0 $e0
    ld b, b                                       ; $4986: $40
    ret nz                                        ; $4987: $c0

    ldh [$e0], a                                  ; $4988: $e0 $e0
    and b                                         ; $498a: $a0
    ldh [$c0], a                                  ; $498b: $e0 $c0
    ret nz                                        ; $498d: $c0

    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    inc bc                                        ; $4992: $03
    inc bc                                        ; $4993: $03
    ld b, $07                                     ; $4994: $06 $07
    ld a, [bc]                                    ; $4996: $0a
    rrca                                          ; $4997: $0f

jr_021_4998:
    dec bc                                        ; $4998: $0b
    dec c                                         ; $4999: $0d
    dec bc                                        ; $499a: $0b
    inc c                                         ; $499b: $0c
    rrca                                          ; $499c: $0f
    ld a, [bc]                                    ; $499d: $0a
    rlca                                          ; $499e: $07
    inc b                                         ; $499f: $04

jr_021_49a0:
    dec bc                                        ; $49a0: $0b
    inc c                                         ; $49a1: $0c
    rra                                           ; $49a2: $1f
    rla                                           ; $49a3: $17
    rla                                           ; $49a4: $17
    rla                                           ; $49a5: $17
    jr nc, @+$35                                  ; $49a6: $30 $33

    inc sp                                        ; $49a8: $33
    inc sp                                        ; $49a9: $33
    nop                                           ; $49aa: $00
    inc bc                                        ; $49ab: $03
    inc bc                                        ; $49ac: $03
    inc bc                                        ; $49ad: $03
    nop                                           ; $49ae: $00
    nop                                           ; $49af: $00
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    ret nz                                        ; $49b2: $c0

    ret nz                                        ; $49b3: $c0

    nop                                           ; $49b4: $00
    ret nz                                        ; $49b5: $c0

    jr nz, jr_021_4998                            ; $49b6: $20 $e0

    db $10                                        ; $49b8: $10
    ldh a, [$90]                                  ; $49b9: $f0 $90
    ldh a, [$e0]                                  ; $49bb: $f0 $e0
    ld h, b                                       ; $49bd: $60
    ldh [$60], a                                  ; $49be: $e0 $60
    ret nz                                        ; $49c0: $c0

    ld b, b                                       ; $49c1: $40
    ldh [$e0], a                                  ; $49c2: $e0 $e0
    ld hl, sp-$18                                 ; $49c4: $f8 $e8
    jr jr_021_49a0                                ; $49c6: $18 $d8

    ret nz                                        ; $49c8: $c0

    ret nz                                        ; $49c9: $c0

    add b                                         ; $49ca: $80
    add b                                         ; $49cb: $80
    add b                                         ; $49cc: $80
    add b                                         ; $49cd: $80
    nop                                           ; $49ce: $00
    nop                                           ; $49cf: $00
    nop                                           ; $49d0: $00
    nop                                           ; $49d1: $00
    inc bc                                        ; $49d2: $03
    inc bc                                        ; $49d3: $03
    nop                                           ; $49d4: $00
    inc bc                                        ; $49d5: $03
    inc b                                         ; $49d6: $04
    rlca                                          ; $49d7: $07

jr_021_49d8:
    inc b                                         ; $49d8: $04
    rlca                                          ; $49d9: $07
    ld [$090f], sp                                ; $49da: $08 $0f $09
    rrca                                          ; $49dd: $0f
    dec bc                                        ; $49de: $0b
    ld c, $07                                     ; $49df: $0e $07
    ld b, $03                                     ; $49e1: $06 $03
    inc bc                                        ; $49e3: $03
    inc bc                                        ; $49e4: $03
    ld bc, $0302                                  ; $49e5: $01 $02 $03

jr_021_49e8:
    rlca                                          ; $49e8: $07
    rlca                                          ; $49e9: $07
    rlca                                          ; $49ea: $07
    rlca                                          ; $49eb: $07
    inc bc                                        ; $49ec: $03
    inc bc                                        ; $49ed: $03
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    ret nz                                        ; $49f2: $c0

    ret nz                                        ; $49f3: $c0

    nop                                           ; $49f4: $00
    ret nz                                        ; $49f5: $c0

    jr nz, jr_021_49d8                            ; $49f6: $20 $e0

    db $10                                        ; $49f8: $10
    ldh a, [rNR10]                                ; $49f9: $f0 $10
    ldh a, [$e0]                                  ; $49fb: $f0 $e0
    and b                                         ; $49fd: $a0
    ldh [$60], a                                  ; $49fe: $e0 $60
    add b                                         ; $4a00: $80
    ret nz                                        ; $4a01: $c0

    ldh [$e0], a                                  ; $4a02: $e0 $e0
    ldh a, [$f0]                                  ; $4a04: $f0 $f0
    jr nz, jr_021_49e8                            ; $4a06: $20 $e0

    ret nc                                        ; $4a08: $d0

    ldh a, [$f0]                                  ; $4a09: $f0 $f0
    ldh a, [$60]                                  ; $4a0b: $f0 $60
    ld h, b                                       ; $4a0d: $60
    nop                                           ; $4a0e: $00
    nop                                           ; $4a0f: $00
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    inc bc                                        ; $4a12: $03
    inc bc                                        ; $4a13: $03
    nop                                           ; $4a14: $00
    inc bc                                        ; $4a15: $03
    inc b                                         ; $4a16: $04
    rlca                                          ; $4a17: $07
    ld [$080f], sp                                ; $4a18: $08 $0f $08
    rrca                                          ; $4a1b: $0f
    inc b                                         ; $4a1c: $04
    rlca                                          ; $4a1d: $07
    ld b, $07                                     ; $4a1e: $06 $07
    inc bc                                        ; $4a20: $03
    ld bc, $0707                                  ; $4a21: $01 $07 $07
    rra                                           ; $4a24: $1f
    rla                                           ; $4a25: $17
    jr @+$1d                                      ; $4a26: $18 $1b

    inc bc                                        ; $4a28: $03
    inc bc                                        ; $4a29: $03
    ld bc, $0101                                  ; $4a2a: $01 $01 $01
    ld bc, $0000                                  ; $4a2d: $01 $00 $00
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    add b                                         ; $4a32: $80
    add b                                         ; $4a33: $80
    ld b, b                                       ; $4a34: $40
    ret nz                                        ; $4a35: $c0

    ld h, b                                       ; $4a36: $60
    ldh [rNR10], a                                ; $4a37: $e0 $10
    ldh a, [rNR10]                                ; $4a39: $f0 $10
    ldh a, [rNR10]                                ; $4a3b: $f0 $10
    ldh a, [$60]                                  ; $4a3d: $f0 $60
    ldh [$f8], a                                  ; $4a3f: $e0 $f8
    cp b                                          ; $4a41: $b8
    ld hl, sp-$18                                 ; $4a42: $f8 $e8
    ldh [$e0], a                                  ; $4a44: $e0 $e0
    ret nz                                        ; $4a46: $c0

    ret nz                                        ; $4a47: $c0

    nop                                           ; $4a48: $00
    ret nz                                        ; $4a49: $c0

    nop                                           ; $4a4a: $00
    ret nz                                        ; $4a4b: $c0

    ret nz                                        ; $4a4c: $c0

    ret nz                                        ; $4a4d: $c0

    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    ld h, d                                       ; $4a50: $62
    ld c, d                                       ; $4a51: $4a
    ld h, l                                       ; $4a52: $65
    ld c, d                                       ; $4a53: $4a
    ld l, e                                       ; $4a54: $6b
    ld c, d                                       ; $4a55: $4a
    ld l, [hl]                                    ; $4a56: $6e
    ld c, d                                       ; $4a57: $4a
    ld a, c                                       ; $4a58: $79
    ld c, d                                       ; $4a59: $4a
    add b                                         ; $4a5a: $80
    ld c, d                                       ; $4a5b: $4a
    adc b                                         ; $4a5c: $88
    ld c, d                                       ; $4a5d: $4a
    sbc h                                         ; $4a5e: $9c
    ld c, d                                       ; $4a5f: $4a
    xor b                                         ; $4a60: $a8
    ld c, d                                       ; $4a61: $4a
    nop                                           ; $4a62: $00
    rst $38                                       ; $4a63: $ff
    db $fd                                        ; $4a64: $fd
    nop                                           ; $4a65: $00
    ld e, $01                                     ; $4a66: $1e $01
    ld e, $ff                                     ; $4a68: $1e $ff
    nop                                           ; $4a6a: $00
    ld [bc], a                                    ; $4a6b: $02
    rst $38                                       ; $4a6c: $ff
    db $fd                                        ; $4a6d: $fd
    ld [bc], a                                    ; $4a6e: $02
    inc c                                         ; $4a6f: $0c
    inc bc                                        ; $4a70: $03
    inc c                                         ; $4a71: $0c
    inc b                                         ; $4a72: $04
    jr jr_021_4a77                                ; $4a73: $18 $02

    inc c                                         ; $4a75: $0c
    dec b                                         ; $4a76: $05

jr_021_4a77:
    inc c                                         ; $4a77: $0c
    db $fd                                        ; $4a78: $fd
    ld [bc], a                                    ; $4a79: $02
    jr @+$05                                      ; $4a7a: $18 $03

    jr jr_021_4a80                                ; $4a7c: $18 $02

    jr @-$01                                      ; $4a7e: $18 $fd

jr_021_4a80:
    nop                                           ; $4a80: $00
    ld a, [bc]                                    ; $4a81: $0a
    ld b, $1e                                     ; $4a82: $06 $1e
    nop                                           ; $4a84: $00
    ld a, [bc]                                    ; $4a85: $0a
    cp $01                                        ; $4a86: $fe $01
    nop                                           ; $4a88: $00
    ld a, [bc]                                    ; $4a89: $0a
    rlca                                          ; $4a8a: $07
    ld a, [bc]                                    ; $4a8b: $0a
    nop                                           ; $4a8c: $00
    inc bc                                        ; $4a8d: $03
    ld [$000a], sp                                ; $4a8e: $08 $0a $00
    inc bc                                        ; $4a91: $03
    rlca                                          ; $4a92: $07
    ld a, [bc]                                    ; $4a93: $0a
    nop                                           ; $4a94: $00
    inc bc                                        ; $4a95: $03
    ld [$000a], sp                                ; $4a96: $08 $0a $00
    ld a, [bc]                                    ; $4a99: $0a
    cp $01                                        ; $4a9a: $fe $01
    nop                                           ; $4a9c: $00
    ld a, [bc]                                    ; $4a9d: $0a
    add hl, bc                                    ; $4a9e: $09
    ld [$0800], sp                                ; $4a9f: $08 $00 $08
    add hl, bc                                    ; $4aa2: $09
    ld [$0a00], sp                                ; $4aa3: $08 $00 $0a
    cp $01                                        ; $4aa6: $fe $01
    ld [bc], a                                    ; $4aa8: $02
    ld [de], a                                    ; $4aa9: $12
    inc bc                                        ; $4aaa: $03
    ld [de], a                                    ; $4aab: $12
    ld [bc], a                                    ; $4aac: $02
    ld e, $05                                     ; $4aad: $1e $05
    ld [de], a                                    ; $4aaf: $12
    db $fd                                        ; $4ab0: $fd
    inc b                                         ; $4ab1: $04
    inc b                                         ; $4ab2: $04
    cp c                                          ; $4ab3: $b9
    ld c, d                                       ; $4ab4: $4a
    ret nc                                        ; $4ab5: $d0

    ld d, h                                       ; $4ab6: $54
    cp c                                          ; $4ab7: $b9
    ld c, d                                       ; $4ab8: $4a
    ret nc                                        ; $4ab9: $d0

    ld c, d                                       ; $4aba: $4a
    ret nc                                        ; $4abb: $d0

    ld c, e                                       ; $4abc: $4b
    ret nc                                        ; $4abd: $d0

    ld c, h                                       ; $4abe: $4c
    ret nc                                        ; $4abf: $d0

    ld c, l                                       ; $4ac0: $4d
    ret nc                                        ; $4ac1: $d0

    ld c, [hl]                                    ; $4ac2: $4e
    ret nc                                        ; $4ac3: $d0

    ld c, a                                       ; $4ac4: $4f
    ret nc                                        ; $4ac5: $d0

    ld d, b                                       ; $4ac6: $50
    ret nc                                        ; $4ac7: $d0

    ld d, c                                       ; $4ac8: $51
    ret nc                                        ; $4ac9: $d0

    ld d, d                                       ; $4aca: $52
    ret nc                                        ; $4acb: $d0

    ld d, e                                       ; $4acc: $53
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    rlca                                          ; $4ad0: $07
    rlca                                          ; $4ad1: $07
    rrca                                          ; $4ad2: $0f
    dec c                                         ; $4ad3: $0d
    inc bc                                        ; $4ad4: $03
    inc bc                                        ; $4ad5: $03
    ld [bc], a                                    ; $4ad6: $02
    inc bc                                        ; $4ad7: $03

jr_021_4ad8:
    inc b                                         ; $4ad8: $04
    rlca                                          ; $4ad9: $07
    dec b                                         ; $4ada: $05
    rlca                                          ; $4adb: $07
    ld b, $07                                     ; $4adc: $06 $07
    ld c, $0f                                     ; $4ade: $0e $0f
    ld de, $221f                                  ; $4ae0: $11 $1f $22
    ccf                                           ; $4ae3: $3f
    cpl                                           ; $4ae4: $2f
    ccf                                           ; $4ae5: $3f
    rra                                           ; $4ae6: $1f
    inc e                                         ; $4ae7: $1c
    rlca                                          ; $4ae8: $07
    rlca                                          ; $4ae9: $07
    dec bc                                        ; $4aea: $0b
    rrca                                          ; $4aeb: $0f
    rrca                                          ; $4aec: $0f
    rrca                                          ; $4aed: $0f
    ld b, $06                                     ; $4aee: $06 $06
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    ret nz                                        ; $4af4: $c0

    ret nz                                        ; $4af5: $c0

    jr nz, jr_021_4ad8                            ; $4af6: $20 $e0

    db $10                                        ; $4af8: $10
    ldh a, [$30]                                  ; $4af9: $f0 $30
    ldh a, [$88]                                  ; $4afb: $f0 $88
    ld hl, sp+$10                                 ; $4afd: $f8 $10
    ldh a, [rNR23]                                ; $4aff: $f0 $18
    ld hl, sp-$4c                                 ; $4b01: $f8 $b4
    db $fc                                        ; $4b03: $fc
    ret c                                         ; $4b04: $d8

    ld a, b                                       ; $4b05: $78
    ldh [rNR41], a                                ; $4b06: $e0 $20
    ldh [$e0], a                                  ; $4b08: $e0 $e0
    ret nc                                        ; $4b0a: $d0

    ldh a, [$90]                                  ; $4b0b: $f0 $90
    ldh a, [$e0]                                  ; $4b0d: $f0 $e0
    ldh [$03], a                                  ; $4b0f: $e0 $03
    inc bc                                        ; $4b11: $03
    rlca                                          ; $4b12: $07
    ld b, $03                                     ; $4b13: $06 $03
    inc bc                                        ; $4b15: $03
    inc b                                         ; $4b16: $04
    rlca                                          ; $4b17: $07
    ld [$1a0f], sp                                ; $4b18: $08 $0f $1a
    rra                                           ; $4b1b: $1f
    add hl, hl                                    ; $4b1c: $29
    ccf                                           ; $4b1d: $3f
    ld h, b                                       ; $4b1e: $60
    ld a, a                                       ; $4b1f: $7f
    sbc b                                         ; $4b20: $98
    rst $38                                       ; $4b21: $ff
    xor e                                         ; $4b22: $ab
    rst $38                                       ; $4b23: $ff
    ld [hl], h                                    ; $4b24: $74
    ld a, a                                       ; $4b25: $7f
    ld l, a                                       ; $4b26: $6f
    ld l, e                                       ; $4b27: $6b
    rst $08                                       ; $4b28: $cf
    call z, $cfcf                                 ; $4b29: $cc $cf $cf
    add hl, bc                                    ; $4b2c: $09
    rrca                                          ; $4b2d: $0f
    rlca                                          ; $4b2e: $07
    rlca                                          ; $4b2f: $07
    add b                                         ; $4b30: $80
    add b                                         ; $4b31: $80
    ret nz                                        ; $4b32: $c0

    ret nz                                        ; $4b33: $c0

    add b                                         ; $4b34: $80
    add b                                         ; $4b35: $80
    ld b, b                                       ; $4b36: $40
    ret nz                                        ; $4b37: $c0

    jr nz, @-$1e                                  ; $4b38: $20 $e0

    or b                                          ; $4b3a: $b0
    ldh a, [$28]                                  ; $4b3b: $f0 $28
    ld hl, sp+$08                                 ; $4b3d: $f8 $08
    ld hl, sp+$38                                 ; $4b3f: $f8 $38
    ld hl, sp-$5c                                 ; $4b41: $f8 $a4
    db $fc                                        ; $4b43: $fc
    ld b, d                                       ; $4b44: $42
    cp $fa                                        ; $4b45: $fe $fa
    cp [hl]                                       ; $4b47: $be
    db $ec                                        ; $4b48: $ec
    ld l, h                                       ; $4b49: $6c
    ldh [$e0], a                                  ; $4b4a: $e0 $e0
    ret nz                                        ; $4b4c: $c0

    ret nz                                        ; $4b4d: $c0

    nop                                           ; $4b4e: $00
    nop                                           ; $4b4f: $00
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    inc bc                                        ; $4b54: $03
    inc bc                                        ; $4b55: $03
    inc b                                         ; $4b56: $04
    rlca                                          ; $4b57: $07
    ld [$0c0f], sp                                ; $4b58: $08 $0f $0c
    rrca                                          ; $4b5b: $0f
    ld de, $091f                                  ; $4b5c: $11 $1f $09
    rrca                                          ; $4b5f: $0f
    ld a, [bc]                                    ; $4b60: $0a
    rrca                                          ; $4b61: $0f
    inc c                                         ; $4b62: $0c
    rrca                                          ; $4b63: $0f
    inc e                                         ; $4b64: $1c
    rla                                           ; $4b65: $17
    rrca                                          ; $4b66: $0f
    dec bc                                        ; $4b67: $0b
    rlca                                          ; $4b68: $07
    rlca                                          ; $4b69: $07
    dec bc                                        ; $4b6a: $0b
    rrca                                          ; $4b6b: $0f
    rrca                                          ; $4b6c: $0f
    rrca                                          ; $4b6d: $0f
    ld b, $06                                     ; $4b6e: $06 $06
    ldh [$e0], a                                  ; $4b70: $e0 $e0
    ldh a, [$b0]                                  ; $4b72: $f0 $b0
    ret nz                                        ; $4b74: $c0

    ret nz                                        ; $4b75: $c0

    ld b, b                                       ; $4b76: $40
    ret nz                                        ; $4b77: $c0

    jr nz, @-$1e                                  ; $4b78: $20 $e0

    and b                                         ; $4b7a: $a0
    ldh [$60], a                                  ; $4b7b: $e0 $60
    ldh [$d0], a                                  ; $4b7d: $e0 $d0
    ldh a, [rBCPS]                                ; $4b7f: $f0 $68
    ld hl, sp+$68                                 ; $4b81: $f8 $68
    ld hl, sp+$30                                 ; $4b83: $f8 $30
    ldh a, [rNR41]                                ; $4b85: $f0 $20
    ldh [$e0], a                                  ; $4b87: $e0 $e0
    ldh [$d0], a                                  ; $4b89: $e0 $d0
    ldh a, [$90]                                  ; $4b8b: $f0 $90
    ldh a, [$e0]                                  ; $4b8d: $f0 $e0
    ldh [$03], a                                  ; $4b8f: $e0 $03
    inc bc                                        ; $4b91: $03
    rlca                                          ; $4b92: $07
    rlca                                          ; $4b93: $07
    inc bc                                        ; $4b94: $03
    ld [bc], a                                    ; $4b95: $02
    rlca                                          ; $4b96: $07
    rlca                                          ; $4b97: $07
    dec bc                                        ; $4b98: $0b
    rrca                                          ; $4b99: $0f
    jr jr_021_4bbb                                ; $4b9a: $18 $1f

    ld l, b                                       ; $4b9c: $68
    ld a, a                                       ; $4b9d: $7f
    cp h                                          ; $4b9e: $bc
    rst $38                                       ; $4b9f: $ff
    adc a                                         ; $4ba0: $8f
    rst $38                                       ; $4ba1: $ff
    ld b, a                                       ; $4ba2: $47
    ld a, h                                       ; $4ba3: $7c
    ccf                                           ; $4ba4: $3f
    jr c, jr_021_4bb6                             ; $4ba5: $38 $0f

    inc c                                         ; $4ba7: $0c
    rrca                                          ; $4ba8: $0f
    rrca                                          ; $4ba9: $0f
    rrca                                          ; $4baa: $0f
    rrca                                          ; $4bab: $0f
    add hl, bc                                    ; $4bac: $09
    rrca                                          ; $4bad: $0f
    rlca                                          ; $4bae: $07
    rlca                                          ; $4baf: $07
    add b                                         ; $4bb0: $80
    add b                                         ; $4bb1: $80
    ret nz                                        ; $4bb2: $c0

    ret nz                                        ; $4bb3: $c0

    add b                                         ; $4bb4: $80
    add b                                         ; $4bb5: $80

jr_021_4bb6:
    ret nz                                        ; $4bb6: $c0

    ret nz                                        ; $4bb7: $c0

    and b                                         ; $4bb8: $a0
    ldh [$30], a                                  ; $4bb9: $e0 $30

jr_021_4bbb:
    ldh a, [$28]                                  ; $4bbb: $f0 $28
    ld hl, sp+$48                                 ; $4bbd: $f8 $48
    ld hl, sp-$08                                 ; $4bbf: $f8 $f8
    ld hl, sp-$3c                                 ; $4bc1: $f8 $c4
    ld a, h                                       ; $4bc3: $7c
    ld [c], a                                     ; $4bc4: $e2
    ld a, $fa                                     ; $4bc5: $3e $fa
    ld a, [hl]                                    ; $4bc7: $7e
    xor $ee                                       ; $4bc8: $ee $ee
    and $e6                                       ; $4bca: $e6 $e6
    ret nz                                        ; $4bcc: $c0

    ret nz                                        ; $4bcd: $c0

    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    rlca                                          ; $4bd0: $07
    rlca                                          ; $4bd1: $07
    rrca                                          ; $4bd2: $0f
    dec c                                         ; $4bd3: $0d
    inc bc                                        ; $4bd4: $03
    inc bc                                        ; $4bd5: $03
    ld [bc], a                                    ; $4bd6: $02
    inc bc                                        ; $4bd7: $03

jr_021_4bd8:
    inc b                                         ; $4bd8: $04
    rlca                                          ; $4bd9: $07
    dec b                                         ; $4bda: $05
    rlca                                          ; $4bdb: $07
    ld b, $07                                     ; $4bdc: $06 $07
    dec bc                                        ; $4bde: $0b
    rrca                                          ; $4bdf: $0f
    ld d, $1f                                     ; $4be0: $16 $1f
    ld d, $1f                                     ; $4be2: $16 $1f
    rrca                                          ; $4be4: $0f
    dec c                                         ; $4be5: $0d
    rlca                                          ; $4be6: $07
    inc b                                         ; $4be7: $04
    rlca                                          ; $4be8: $07
    rlca                                          ; $4be9: $07
    dec bc                                        ; $4bea: $0b
    rrca                                          ; $4beb: $0f
    add hl, bc                                    ; $4bec: $09
    rrca                                          ; $4bed: $0f
    rlca                                          ; $4bee: $07
    rlca                                          ; $4bef: $07
    nop                                           ; $4bf0: $00
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    ret nz                                        ; $4bf4: $c0

    ret nz                                        ; $4bf5: $c0

    jr nz, jr_021_4bd8                            ; $4bf6: $20 $e0

    db $10                                        ; $4bf8: $10
    ldh a, [$30]                                  ; $4bf9: $f0 $30
    ldh a, [$88]                                  ; $4bfb: $f0 $88
    ld hl, sp-$6a                                 ; $4bfd: $f8 $96
    or $56                                        ; $4bff: $f6 $56
    or $3c                                        ; $4c01: $f6 $3c
    db $fc                                        ; $4c03: $fc
    ld [$d0f8], sp                                ; $4c04: $08 $f8 $d0
    ldh a, [$e0]                                  ; $4c07: $f0 $e0
    ldh [$d0], a                                  ; $4c09: $e0 $d0
    ldh a, [$f0]                                  ; $4c0b: $f0 $f0
    ldh a, [$60]                                  ; $4c0d: $f0 $60
    ld h, b                                       ; $4c0f: $60
    inc bc                                        ; $4c10: $03
    inc bc                                        ; $4c11: $03
    rlca                                          ; $4c12: $07
    ld b, $03                                     ; $4c13: $06 $03
    inc bc                                        ; $4c15: $03
    inc b                                         ; $4c16: $04
    rlca                                          ; $4c17: $07
    ld [$1a0f], sp                                ; $4c18: $08 $0f $1a
    rra                                           ; $4c1b: $1f
    add hl, hl                                    ; $4c1c: $29
    ccf                                           ; $4c1d: $3f
    ldh [rIE], a                                  ; $4c1e: $e0 $ff
    ld hl, sp-$01                                 ; $4c20: $f8 $ff
    ld c, e                                       ; $4c22: $4b
    ld a, a                                       ; $4c23: $7f
    call nz, $bfff                                ; $4c24: $c4 $ff $bf
    ei                                            ; $4c27: $fb
    ld l, a                                       ; $4c28: $6f
    ld l, h                                       ; $4c29: $6c
    rrca                                          ; $4c2a: $0f
    rrca                                          ; $4c2b: $0f
    rlca                                          ; $4c2c: $07
    rlca                                          ; $4c2d: $07

jr_021_4c2e:
    ld bc, $8001                                  ; $4c2e: $01 $01 $80
    add b                                         ; $4c31: $80
    ret nz                                        ; $4c32: $c0

    ret nz                                        ; $4c33: $c0

    add b                                         ; $4c34: $80
    add b                                         ; $4c35: $80
    ld b, b                                       ; $4c36: $40
    ret nz                                        ; $4c37: $c0

    jr nz, @-$1e                                  ; $4c38: $20 $e0

    or b                                          ; $4c3a: $b0
    ldh a, [$28]                                  ; $4c3b: $f0 $28
    ld hl, sp+$0c                                 ; $4c3d: $f8 $0c
    db $fc                                        ; $4c3f: $fc
    ld [hl-], a                                   ; $4c40: $32
    cp $aa                                        ; $4c41: $fe $aa
    cp $5c                                        ; $4c43: $fe $5c
    db $fc                                        ; $4c45: $fc
    ldh [$a0], a                                  ; $4c46: $e0 $a0
    ldh [$60], a                                  ; $4c48: $e0 $60
    ldh [$e0], a                                  ; $4c4a: $e0 $e0
    jr nz, jr_021_4c2e                            ; $4c4c: $20 $e0

    ret nz                                        ; $4c4e: $c0

    ret nz                                        ; $4c4f: $c0

    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    nop                                           ; $4c52: $00
    nop                                           ; $4c53: $00
    inc bc                                        ; $4c54: $03
    inc bc                                        ; $4c55: $03
    inc b                                         ; $4c56: $04
    rlca                                          ; $4c57: $07
    ld [$0c0f], sp                                ; $4c58: $08 $0f $0c
    rrca                                          ; $4c5b: $0f
    ld [hl], c                                    ; $4c5c: $71
    ld a, a                                       ; $4c5d: $7f
    ld l, b                                       ; $4c5e: $68
    ld l, a                                       ; $4c5f: $6f
    jr c, jr_021_4ca1                             ; $4c60: $38 $3f

    dec l                                         ; $4c62: $2d
    ccf                                           ; $4c63: $3f
    dec de                                        ; $4c64: $1b
    ld e, $07                                     ; $4c65: $1e $07
    inc b                                         ; $4c67: $04
    rlca                                          ; $4c68: $07
    rlca                                          ; $4c69: $07
    dec bc                                        ; $4c6a: $0b
    rrca                                          ; $4c6b: $0f
    add hl, bc                                    ; $4c6c: $09
    rrca                                          ; $4c6d: $0f
    rlca                                          ; $4c6e: $07
    rlca                                          ; $4c6f: $07
    ldh [$e0], a                                  ; $4c70: $e0 $e0
    ldh a, [$b0]                                  ; $4c72: $f0 $b0
    ret nz                                        ; $4c74: $c0

    ret nz                                        ; $4c75: $c0

    ld b, b                                       ; $4c76: $40
    ret nz                                        ; $4c77: $c0

    jr nz, @-$1e                                  ; $4c78: $20 $e0

    and b                                         ; $4c7a: $a0
    ldh [$60], a                                  ; $4c7b: $e0 $60
    ldh [rSVBK], a                                ; $4c7d: $e0 $70
    ldh a, [$88]                                  ; $4c7f: $f0 $88
    ld hl, sp+$44                                 ; $4c81: $f8 $44
    db $fc                                        ; $4c83: $fc
    db $f4                                        ; $4c84: $f4
    db $fc                                        ; $4c85: $fc
    add sp, $28                                   ; $4c86: $e8 $28
    ldh [$e0], a                                  ; $4c88: $e0 $e0
    ret nc                                        ; $4c8a: $d0

    ldh a, [$f0]                                  ; $4c8b: $f0 $f0
    ldh a, [$60]                                  ; $4c8d: $f0 $60
    ld h, b                                       ; $4c8f: $60
    inc bc                                        ; $4c90: $03
    inc bc                                        ; $4c91: $03
    rlca                                          ; $4c92: $07
    rlca                                          ; $4c93: $07
    inc bc                                        ; $4c94: $03
    ld [bc], a                                    ; $4c95: $02
    rlca                                          ; $4c96: $07
    rlca                                          ; $4c97: $07
    dec bc                                        ; $4c98: $0b
    rrca                                          ; $4c99: $0f
    jr jr_021_4cbb                                ; $4c9a: $18 $1f

    jr z, jr_021_4cdd                             ; $4c9c: $28 $3f

    inc h                                         ; $4c9e: $24
    ccf                                           ; $4c9f: $3f
    ccf                                           ; $4ca0: $3f

jr_021_4ca1:
    ccf                                           ; $4ca1: $3f
    ld b, a                                       ; $4ca2: $47
    ld a, h                                       ; $4ca3: $7c
    adc a                                         ; $4ca4: $8f
    ld hl, sp-$41                                 ; $4ca5: $f8 $bf
    db $fc                                        ; $4ca7: $fc
    ld l, a                                       ; $4ca8: $6f
    ld l, a                                       ; $4ca9: $6f
    rrca                                          ; $4caa: $0f
    rrca                                          ; $4cab: $0f
    rlca                                          ; $4cac: $07
    rlca                                          ; $4cad: $07

jr_021_4cae:
    ld bc, $8001                                  ; $4cae: $01 $01 $80
    add b                                         ; $4cb1: $80
    ret nz                                        ; $4cb2: $c0

    ret nz                                        ; $4cb3: $c0

    add b                                         ; $4cb4: $80
    add b                                         ; $4cb5: $80
    add $c6                                       ; $4cb6: $c6 $c6
    and [hl]                                      ; $4cb8: $a6
    and $34                                       ; $4cb9: $e6 $34

jr_021_4cbb:
    db $f4                                        ; $4cbb: $f4
    inc l                                         ; $4cbc: $2c
    db $fc                                        ; $4cbd: $fc
    ld a, d                                       ; $4cbe: $7a
    cp $e2                                        ; $4cbf: $fe $e2
    cp $c4                                        ; $4cc1: $fe $c4
    ld a, h                                       ; $4cc3: $7c
    ld hl, sp+$38                                 ; $4cc4: $f8 $38
    ldh [$60], a                                  ; $4cc6: $e0 $60
    ldh [$e0], a                                  ; $4cc8: $e0 $e0
    ldh [$e0], a                                  ; $4cca: $e0 $e0
    jr nz, jr_021_4cae                            ; $4ccc: $20 $e0

    ret nz                                        ; $4cce: $c0

    ret nz                                        ; $4ccf: $c0

    ld bc, $0301                                  ; $4cd0: $01 $01 $03
    inc bc                                        ; $4cd3: $03
    ld bc, $0101                                  ; $4cd4: $01 $01 $01
    ld bc, $0302                                  ; $4cd7: $01 $02 $03
    ld [bc], a                                    ; $4cda: $02
    inc bc                                        ; $4cdb: $03
    inc bc                                        ; $4cdc: $03

jr_021_4cdd:
    inc bc                                        ; $4cdd: $03
    rlca                                          ; $4cde: $07
    dec b                                         ; $4cdf: $05
    ld c, $0b                                     ; $4ce0: $0e $0b
    ld e, $13                                     ; $4ce2: $1e $13
    ld e, $1b                                     ; $4ce4: $1e $1b
    rra                                           ; $4ce6: $1f
    rra                                           ; $4ce7: $1f
    rrca                                          ; $4ce8: $0f
    rrca                                          ; $4ce9: $0f
    ld c, $0e                                     ; $4cea: $0e $0e
    add hl, bc                                    ; $4cec: $09
    rrca                                          ; $4ced: $0f
    rrca                                          ; $4cee: $0f
    rrca                                          ; $4cef: $0f
    ldh [$e0], a                                  ; $4cf0: $e0 $e0
    ret nz                                        ; $4cf2: $c0

    ld b, b                                       ; $4cf3: $40
    ldh [$e0], a                                  ; $4cf4: $e0 $e0
    db $10                                        ; $4cf6: $10
    ldh a, [$08]                                  ; $4cf7: $f0 $08
    ld hl, sp-$78                                 ; $4cf9: $f8 $88
    ld hl, sp+$58                                 ; $4cfb: $f8 $58
    ld hl, sp+$08                                 ; $4cfd: $f8 $08
    ld hl, sp-$70                                 ; $4cff: $f8 $90
    ldh a, [$50]                                  ; $4d01: $f0 $50
    ldh a, [$60]                                  ; $4d03: $f0 $60
    ldh [rNR41], a                                ; $4d05: $e0 $20
    ldh [$a0], a                                  ; $4d07: $e0 $a0
    ldh [rSVBK], a                                ; $4d09: $e0 $70
    ld [hl], b                                    ; $4d0b: $70
    dec de                                        ; $4d0c: $1b
    dec de                                        ; $4d0d: $1b
    rrca                                          ; $4d0e: $0f
    rrca                                          ; $4d0f: $0f
    inc bc                                        ; $4d10: $03
    inc bc                                        ; $4d11: $03
    rlca                                          ; $4d12: $07
    ld b, $03                                     ; $4d13: $06 $03
    inc bc                                        ; $4d15: $03
    ld [bc], a                                    ; $4d16: $02
    inc bc                                        ; $4d17: $03

jr_021_4d18:
    inc b                                         ; $4d18: $04
    rlca                                          ; $4d19: $07
    ld [$150f], sp                                ; $4d1a: $08 $0f $15
    rra                                           ; $4d1d: $1f
    db $10                                        ; $4d1e: $10
    rra                                           ; $4d1f: $1f
    inc l                                         ; $4d20: $2c
    ccf                                           ; $4d21: $3f
    inc h                                         ; $4d22: $24
    ccf                                           ; $4d23: $3f
    ld [de], a                                    ; $4d24: $12
    rra                                           ; $4d25: $1f
    add hl, bc                                    ; $4d26: $09
    rrca                                          ; $4d27: $0f
    inc c                                         ; $4d28: $0c
    rrca                                          ; $4d29: $0f
    ld c, $0f                                     ; $4d2a: $0e $0f
    inc de                                        ; $4d2c: $13
    rra                                           ; $4d2d: $1f
    rra                                           ; $4d2e: $1f
    rra                                           ; $4d2f: $1f
    ret nz                                        ; $4d30: $c0

    ret nz                                        ; $4d31: $c0

    add b                                         ; $4d32: $80
    add b                                         ; $4d33: $80
    ret nz                                        ; $4d34: $c0

    ret nz                                        ; $4d35: $c0

    jr nz, jr_021_4d18                            ; $4d36: $20 $e0

    db $10                                        ; $4d38: $10
    ldh a, [rNR10]                                ; $4d39: $f0 $10
    ldh a, [$58]                                  ; $4d3b: $f0 $58
    ld hl, sp-$68                                 ; $4d3d: $f8 $98
    ld hl, sp+$14                                 ; $4d3f: $f8 $14
    db $fc                                        ; $4d41: $fc
    inc h                                         ; $4d42: $24
    db $fc                                        ; $4d43: $fc
    jr z, @-$06                                   ; $4d44: $28 $f8

    ret z                                         ; $4d46: $c8

    ld hl, sp-$30                                 ; $4d47: $f8 $d0
    ldh a, [$b0]                                  ; $4d49: $f0 $b0
    ldh a, [$c8]                                  ; $4d4b: $f0 $c8
    ld hl, sp-$08                                 ; $4d4d: $f8 $f8
    ld hl, sp+$07                                 ; $4d4f: $f8 $07
    rlca                                          ; $4d51: $07
    inc bc                                        ; $4d52: $03
    ld [bc], a                                    ; $4d53: $02
    rlca                                          ; $4d54: $07
    rlca                                          ; $4d55: $07
    ld [$100f], sp                                ; $4d56: $08 $0f $10
    rra                                           ; $4d59: $1f
    ld de, $1a1f                                  ; $4d5a: $11 $1f $1a
    rra                                           ; $4d5d: $1f
    db $10                                        ; $4d5e: $10
    rra                                           ; $4d5f: $1f
    add hl, bc                                    ; $4d60: $09
    rrca                                          ; $4d61: $0f
    ld a, [bc]                                    ; $4d62: $0a
    rrca                                          ; $4d63: $0f
    ld b, $07                                     ; $4d64: $06 $07
    inc b                                         ; $4d66: $04
    rlca                                          ; $4d67: $07
    dec b                                         ; $4d68: $05
    rlca                                          ; $4d69: $07
    ld c, $0e                                     ; $4d6a: $0e $0e
    ret c                                         ; $4d6c: $d8

    ret c                                         ; $4d6d: $d8

    ldh a, [$f0]                                  ; $4d6e: $f0 $f0
    add b                                         ; $4d70: $80
    add b                                         ; $4d71: $80
    ret nz                                        ; $4d72: $c0

    ret nz                                        ; $4d73: $c0

    add b                                         ; $4d74: $80
    add b                                         ; $4d75: $80
    add b                                         ; $4d76: $80
    add b                                         ; $4d77: $80
    ld b, b                                       ; $4d78: $40
    ret nz                                        ; $4d79: $c0

    ld b, b                                       ; $4d7a: $40
    ret nz                                        ; $4d7b: $c0

    ret nz                                        ; $4d7c: $c0

    ret nz                                        ; $4d7d: $c0

    ldh [$a0], a                                  ; $4d7e: $e0 $a0
    ld [hl], b                                    ; $4d80: $70
    ret nc                                        ; $4d81: $d0

    ld a, b                                       ; $4d82: $78
    ret z                                         ; $4d83: $c8

    ld a, b                                       ; $4d84: $78
    ret c                                         ; $4d85: $d8

    ld hl, sp-$08                                 ; $4d86: $f8 $f8
    ldh a, [$f0]                                  ; $4d88: $f0 $f0
    ld [hl], b                                    ; $4d8a: $70
    ld [hl], b                                    ; $4d8b: $70
    sub b                                         ; $4d8c: $90
    ldh a, [$f0]                                  ; $4d8d: $f0 $f0
    ldh a, [$03]                                  ; $4d8f: $f0 $03
    inc bc                                        ; $4d91: $03
    ld bc, $0301                                  ; $4d92: $01 $01 $03
    inc bc                                        ; $4d95: $03
    inc b                                         ; $4d96: $04
    rlca                                          ; $4d97: $07

jr_021_4d98:
    ld [$140f], sp                                ; $4d98: $08 $0f $14
    rra                                           ; $4d9b: $1f
    rla                                           ; $4d9c: $17
    rra                                           ; $4d9d: $1f
    dec de                                        ; $4d9e: $1b
    ld e, $23                                     ; $4d9f: $1e $23
    ld a, $27                                     ; $4da1: $3e $27
    inc a                                         ; $4da3: $3c
    rla                                           ; $4da4: $17
    dec e                                         ; $4da5: $1d
    rrca                                          ; $4da6: $0f
    rrca                                          ; $4da7: $0f
    rlca                                          ; $4da8: $07
    rlca                                          ; $4da9: $07
    rrca                                          ; $4daa: $0f
    rrca                                          ; $4dab: $0f
    ld [de], a                                    ; $4dac: $12
    ld e, $1e                                     ; $4dad: $1e $1e
    ld e, $c0                                     ; $4daf: $1e $c0
    ret nz                                        ; $4db1: $c0

    ldh [$60], a                                  ; $4db2: $e0 $60
    ret nz                                        ; $4db4: $c0

    ret nz                                        ; $4db5: $c0

    jr nz, jr_021_4d98                            ; $4db6: $20 $e0

    db $10                                        ; $4db8: $10
    ldh a, [rNR10]                                ; $4db9: $f0 $10
    ldh a, [$28]                                  ; $4dbb: $f0 $28
    ld hl, sp-$0c                                 ; $4dbd: $f8 $f4
    call c, $1cf4                                 ; $4dbf: $dc $f4 $1c
    db $f4                                        ; $4dc2: $f4
    inc e                                         ; $4dc3: $1c
    ld hl, sp-$08                                 ; $4dc4: $f8 $f8
    ldh a, [$f0]                                  ; $4dc6: $f0 $f0
    ldh a, [$f0]                                  ; $4dc8: $f0 $f0
    ldh a, [$f0]                                  ; $4dca: $f0 $f0
    ret z                                         ; $4dcc: $c8

    ld hl, sp-$08                                 ; $4dcd: $f8 $f8
    ld hl, sp+$01                                 ; $4dcf: $f8 $01
    ld bc, $0303                                  ; $4dd1: $01 $03 $03
    ld bc, $0101                                  ; $4dd4: $01 $01 $01
    ld bc, $0302                                  ; $4dd7: $01 $02 $03
    ld [bc], a                                    ; $4dda: $02
    inc bc                                        ; $4ddb: $03
    rlca                                          ; $4ddc: $07
    rlca                                          ; $4ddd: $07
    add hl, bc                                    ; $4dde: $09
    rrca                                          ; $4ddf: $0f
    add hl, bc                                    ; $4de0: $09
    rrca                                          ; $4de1: $0f
    ld a, h                                       ; $4de2: $7c
    ld [hl], a                                    ; $4de3: $77
    ld a, h                                       ; $4de4: $7c
    ld a, a                                       ; $4de5: $7f
    rra                                           ; $4de6: $1f
    rra                                           ; $4de7: $1f
    ld c, $0f                                     ; $4de8: $0e $0f
    rrca                                          ; $4dea: $0f
    rrca                                          ; $4deb: $0f
    add hl, bc                                    ; $4dec: $09
    rrca                                          ; $4ded: $0f
    rrca                                          ; $4dee: $0f
    rrca                                          ; $4def: $0f
    ldh [$e0], a                                  ; $4df0: $e0 $e0
    ret nz                                        ; $4df2: $c0

    ld b, b                                       ; $4df3: $40
    ldh [$e0], a                                  ; $4df4: $e0 $e0
    db $10                                        ; $4df6: $10
    ldh a, [$08]                                  ; $4df7: $f0 $08
    ld hl, sp-$78                                 ; $4df9: $f8 $88
    ld hl, sp+$58                                 ; $4dfb: $f8 $58
    ld hl, sp+$08                                 ; $4dfd: $f8 $08
    ld hl, sp+$10                                 ; $4dff: $f8 $10
    ldh a, [$90]                                  ; $4e01: $f0 $90
    ldh a, [$a0]                                  ; $4e03: $f0 $a0
    ldh [rLCDC], a                                ; $4e05: $e0 $40
    ret nz                                        ; $4e07: $c0

    ld b, b                                       ; $4e08: $40
    ret nz                                        ; $4e09: $c0

    add b                                         ; $4e0a: $80
    add b                                         ; $4e0b: $80
    nop                                           ; $4e0c: $00
    nop                                           ; $4e0d: $00
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    inc bc                                        ; $4e10: $03
    inc bc                                        ; $4e11: $03
    rlca                                          ; $4e12: $07
    ld b, $03                                     ; $4e13: $06 $03
    inc bc                                        ; $4e15: $03
    ld [bc], a                                    ; $4e16: $02
    inc bc                                        ; $4e17: $03

jr_021_4e18:
    inc b                                         ; $4e18: $04
    rlca                                          ; $4e19: $07
    ld [$150f], sp                                ; $4e1a: $08 $0f $15
    rra                                           ; $4e1d: $1f
    jr nc, jr_021_4e5f                            ; $4e1e: $30 $3f

    inc l                                         ; $4e20: $2c
    ccf                                           ; $4e21: $3f
    db $f4                                        ; $4e22: $f4
    rst $38                                       ; $4e23: $ff
    and $ff                                       ; $4e24: $e6 $ff
    ld [hl], a                                    ; $4e26: $77
    ld a, l                                       ; $4e27: $7d
    ld e, $1f                                     ; $4e28: $1e $1f
    inc c                                         ; $4e2a: $0c
    rrca                                          ; $4e2b: $0f
    rla                                           ; $4e2c: $17
    rra                                           ; $4e2d: $1f
    ld e, $1e                                     ; $4e2e: $1e $1e
    ret nz                                        ; $4e30: $c0

    ret nz                                        ; $4e31: $c0

    add b                                         ; $4e32: $80
    add b                                         ; $4e33: $80
    ret nz                                        ; $4e34: $c0

    ret nz                                        ; $4e35: $c0

    jr nz, jr_021_4e18                            ; $4e36: $20 $e0

    db $10                                        ; $4e38: $10
    ldh a, [rNR10]                                ; $4e39: $f0 $10
    ldh a, [$58]                                  ; $4e3b: $f0 $58
    ld hl, sp-$68                                 ; $4e3d: $f8 $98
    ld hl, sp+$10                                 ; $4e3f: $f8 $10
    ldh a, [$30]                                  ; $4e41: $f0 $30
    ldh a, [$28]                                  ; $4e43: $f0 $28
    ld hl, sp-$38                                 ; $4e45: $f8 $c8
    ld hl, sp+$30                                 ; $4e47: $f8 $30
    ldh a, [$f0]                                  ; $4e49: $f0 $f0
    ldh a, [$c8]                                  ; $4e4b: $f0 $c8
    ld hl, sp+$78                                 ; $4e4d: $f8 $78
    ld a, b                                       ; $4e4f: $78
    rlca                                          ; $4e50: $07
    rlca                                          ; $4e51: $07
    inc bc                                        ; $4e52: $03
    ld [bc], a                                    ; $4e53: $02
    rlca                                          ; $4e54: $07
    rlca                                          ; $4e55: $07
    ld [$100f], sp                                ; $4e56: $08 $0f $10
    rra                                           ; $4e59: $1f
    ld de, $1a1f                                  ; $4e5a: $11 $1f $1a
    rra                                           ; $4e5d: $1f
    db $10                                        ; $4e5e: $10

jr_021_4e5f:
    rra                                           ; $4e5f: $1f
    add hl, bc                                    ; $4e60: $09
    rrca                                          ; $4e61: $0f
    dec bc                                        ; $4e62: $0b
    rrca                                          ; $4e63: $0f
    inc b                                         ; $4e64: $04
    rlca                                          ; $4e65: $07
    inc c                                         ; $4e66: $0c
    rrca                                          ; $4e67: $0f
    add hl, bc                                    ; $4e68: $09
    rrca                                          ; $4e69: $0f
    rlca                                          ; $4e6a: $07
    rlca                                          ; $4e6b: $07
    nop                                           ; $4e6c: $00
    nop                                           ; $4e6d: $00
    nop                                           ; $4e6e: $00
    nop                                           ; $4e6f: $00
    add b                                         ; $4e70: $80
    add b                                         ; $4e71: $80
    ret nz                                        ; $4e72: $c0

    ret nz                                        ; $4e73: $c0

    add b                                         ; $4e74: $80
    add b                                         ; $4e75: $80
    add b                                         ; $4e76: $80
    add b                                         ; $4e77: $80
    ld b, b                                       ; $4e78: $40
    ret nz                                        ; $4e79: $c0

    ld b, b                                       ; $4e7a: $40
    ret nz                                        ; $4e7b: $c0

    ret nz                                        ; $4e7c: $c0

    ret nz                                        ; $4e7d: $c0

    and b                                         ; $4e7e: $a0
    ldh [$f0], a                                  ; $4e7f: $e0 $f0
    ret nc                                        ; $4e81: $d0

    db $fc                                        ; $4e82: $fc
    inc c                                         ; $4e83: $0c
    db $fc                                        ; $4e84: $fc
    sbc h                                         ; $4e85: $9c
    ld hl, sp-$08                                 ; $4e86: $f8 $f8
    ldh a, [$f0]                                  ; $4e88: $f0 $f0
    ld [hl], b                                    ; $4e8a: $70
    ld [hl], b                                    ; $4e8b: $70
    sub b                                         ; $4e8c: $90
    ldh a, [$f0]                                  ; $4e8d: $f0 $f0
    ldh a, [$03]                                  ; $4e8f: $f0 $03
    inc bc                                        ; $4e91: $03
    ld bc, $0301                                  ; $4e92: $01 $01 $03
    inc bc                                        ; $4e95: $03
    inc b                                         ; $4e96: $04
    rlca                                          ; $4e97: $07

jr_021_4e98:
    ld [$140f], sp                                ; $4e98: $08 $0f $14
    rra                                           ; $4e9b: $1f
    inc d                                         ; $4e9c: $14
    rra                                           ; $4e9d: $1f
    rra                                           ; $4e9e: $1f
    rra                                           ; $4e9f: $1f
    rla                                           ; $4ea0: $17
    inc e                                         ; $4ea1: $1c
    rla                                           ; $4ea2: $17
    inc e                                         ; $4ea3: $1c
    rrca                                          ; $4ea4: $0f
    rrca                                          ; $4ea5: $0f
    rlca                                          ; $4ea6: $07
    rlca                                          ; $4ea7: $07
    rlca                                          ; $4ea8: $07
    rlca                                          ; $4ea9: $07
    ld c, $0e                                     ; $4eaa: $0e $0e
    ld [de], a                                    ; $4eac: $12
    ld e, $1e                                     ; $4ead: $1e $1e
    ld e, $c0                                     ; $4eaf: $1e $c0
    ret nz                                        ; $4eb1: $c0

    ldh [$60], a                                  ; $4eb2: $e0 $60
    ret nz                                        ; $4eb4: $c0

    ret nz                                        ; $4eb5: $c0

    jr nz, jr_021_4e98                            ; $4eb6: $20 $e0

    db $10                                        ; $4eb8: $10
    ldh a, [$30]                                  ; $4eb9: $f0 $30
    ldh a, [$c8]                                  ; $4ebb: $f0 $c8
    ld hl, sp-$3c                                 ; $4ebd: $f8 $c4
    ld a, h                                       ; $4ebf: $7c
    call nz, $eb7c                                ; $4ec0: $c4 $7c $eb
    dec sp                                        ; $4ec3: $3b
    rst $38                                       ; $4ec4: $ff
    cp a                                          ; $4ec5: $bf
    ld hl, sp-$08                                 ; $4ec6: $f8 $f8
    ldh a, [$f0]                                  ; $4ec8: $f0 $f0
    ldh a, [$f0]                                  ; $4eca: $f0 $f0
    ld c, b                                       ; $4ecc: $48
    ld a, b                                       ; $4ecd: $78
    ld a, b                                       ; $4ece: $78
    ld a, b                                       ; $4ecf: $78
    ld bc, $0301                                  ; $4ed0: $01 $01 $03
    inc bc                                        ; $4ed3: $03
    pop bc                                        ; $4ed4: $c1
    pop bc                                        ; $4ed5: $c1
    pop bc                                        ; $4ed6: $c1
    pop bc                                        ; $4ed7: $c1
    jp nz, Jump_021_7ec3                          ; $4ed8: $c2 $c3 $7e

    ld a, a                                       ; $4edb: $7f
    cpl                                           ; $4edc: $2f
    dec sp                                        ; $4edd: $3b
    scf                                           ; $4ede: $37
    ccf                                           ; $4edf: $3f
    ld [hl-], a                                   ; $4ee0: $32
    ccf                                           ; $4ee1: $3f
    add hl, hl                                    ; $4ee2: $29
    ccf                                           ; $4ee3: $3f
    jr jr_021_4f05                                ; $4ee4: $18 $1f

    inc e                                         ; $4ee6: $1c
    rra                                           ; $4ee7: $1f
    rrca                                          ; $4ee8: $0f
    rrca                                          ; $4ee9: $0f
    ld c, $0e                                     ; $4eea: $0e $0e
    add hl, bc                                    ; $4eec: $09
    rrca                                          ; $4eed: $0f
    rrca                                          ; $4eee: $0f
    rrca                                          ; $4eef: $0f
    ldh [$e0], a                                  ; $4ef0: $e0 $e0
    ret nz                                        ; $4ef2: $c0

    ld b, b                                       ; $4ef3: $40
    ldh [$e0], a                                  ; $4ef4: $e0 $e0
    db $10                                        ; $4ef6: $10
    ldh a, [$08]                                  ; $4ef7: $f0 $08
    ld hl, sp-$78                                 ; $4ef9: $f8 $88
    ld hl, sp+$58                                 ; $4efb: $f8 $58
    ld hl, sp+$08                                 ; $4efd: $f8 $08
    ld hl, sp-$70                                 ; $4eff: $f8 $90
    ldh a, [$90]                                  ; $4f01: $f0 $90
    ldh a, [$60]                                  ; $4f03: $f0 $60

jr_021_4f05:
    ldh [rLCDC], a                                ; $4f05: $e0 $40
    ret nz                                        ; $4f07: $c0

    add b                                         ; $4f08: $80
    add b                                         ; $4f09: $80
    nop                                           ; $4f0a: $00
    nop                                           ; $4f0b: $00
    nop                                           ; $4f0c: $00
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    nop                                           ; $4f0f: $00
    inc bc                                        ; $4f10: $03
    inc bc                                        ; $4f11: $03
    rlca                                          ; $4f12: $07
    ld b, $c3                                     ; $4f13: $06 $c3
    jp $c3c2                                      ; $4f15: $c3 $c2 $c3


jr_021_4f18:
    add h                                         ; $4f18: $84
    add a                                         ; $4f19: $87
    ret z                                         ; $4f1a: $c8

    rst $08                                       ; $4f1b: $cf
    ld [hl], l                                    ; $4f1c: $75
    ld a, a                                       ; $4f1d: $7f
    ld d, b                                       ; $4f1e: $50
    ld a, a                                       ; $4f1f: $7f
    ld a, h                                       ; $4f20: $7c
    ld a, a                                       ; $4f21: $7f
    inc l                                         ; $4f22: $2c
    ccf                                           ; $4f23: $3f
    ld [de], a                                    ; $4f24: $12
    rra                                           ; $4f25: $1f
    add hl, de                                    ; $4f26: $19
    rra                                           ; $4f27: $1f
    inc c                                         ; $4f28: $0c
    rrca                                          ; $4f29: $0f
    rrca                                          ; $4f2a: $0f
    rrca                                          ; $4f2b: $0f
    ld [de], a                                    ; $4f2c: $12
    ld e, $1e                                     ; $4f2d: $1e $1e
    ld e, $c0                                     ; $4f2f: $1e $c0
    ret nz                                        ; $4f31: $c0

    add b                                         ; $4f32: $80
    add b                                         ; $4f33: $80
    ret nz                                        ; $4f34: $c0

    ret nz                                        ; $4f35: $c0

    jr nz, jr_021_4f18                            ; $4f36: $20 $e0

    db $10                                        ; $4f38: $10
    ldh a, [rNR10]                                ; $4f39: $f0 $10
    ldh a, [$58]                                  ; $4f3b: $f0 $58
    ld hl, sp-$68                                 ; $4f3d: $f8 $98
    ld hl, sp+$10                                 ; $4f3f: $f8 $10
    ldh a, [$30]                                  ; $4f41: $f0 $30
    ldh a, [$50]                                  ; $4f43: $f0 $50
    ldh a, [$90]                                  ; $4f45: $f0 $90
    ldh a, [rSVBK]                                ; $4f47: $f0 $70
    ldh a, [$f0]                                  ; $4f49: $f0 $f0
    ldh a, [$c8]                                  ; $4f4b: $f0 $c8
    ld hl, sp+$78                                 ; $4f4d: $f8 $78
    ld a, b                                       ; $4f4f: $78
    rlca                                          ; $4f50: $07
    rlca                                          ; $4f51: $07
    inc bc                                        ; $4f52: $03
    ld [bc], a                                    ; $4f53: $02
    rlca                                          ; $4f54: $07
    rlca                                          ; $4f55: $07
    ld [$100f], sp                                ; $4f56: $08 $0f $10
    rra                                           ; $4f59: $1f
    ld de, $1a1f                                  ; $4f5a: $11 $1f $1a
    rra                                           ; $4f5d: $1f
    db $10                                        ; $4f5e: $10
    rra                                           ; $4f5f: $1f
    add hl, bc                                    ; $4f60: $09
    rrca                                          ; $4f61: $0f
    dec bc                                        ; $4f62: $0b
    ld c, $05                                     ; $4f63: $0e $05
    rlca                                          ; $4f65: $07
    inc b                                         ; $4f66: $04
    rlca                                          ; $4f67: $07
    inc bc                                        ; $4f68: $03
    inc bc                                        ; $4f69: $03
    nop                                           ; $4f6a: $00
    nop                                           ; $4f6b: $00
    nop                                           ; $4f6c: $00
    nop                                           ; $4f6d: $00
    nop                                           ; $4f6e: $00
    nop                                           ; $4f6f: $00
    add b                                         ; $4f70: $80
    add b                                         ; $4f71: $80
    ret nz                                        ; $4f72: $c0

    ret nz                                        ; $4f73: $c0

    add e                                         ; $4f74: $83
    add e                                         ; $4f75: $83
    add e                                         ; $4f76: $83
    add e                                         ; $4f77: $83
    ld b, e                                       ; $4f78: $43
    jp $de5e                                      ; $4f79: $c3 $5e $de


    db $e4                                        ; $4f7c: $e4
    db $fc                                        ; $4f7d: $fc
    xor b                                         ; $4f7e: $a8
    ld hl, sp-$08                                 ; $4f7f: $f8 $f8
    ret c                                         ; $4f81: $d8

    ld hl, sp+$08                                 ; $4f82: $f8 $08
    ld hl, sp+$18                                 ; $4f84: $f8 $18
    ld hl, sp-$08                                 ; $4f86: $f8 $f8
    ldh a, [$f0]                                  ; $4f88: $f0 $f0
    ld [hl], b                                    ; $4f8a: $70
    ld [hl], b                                    ; $4f8b: $70
    sub b                                         ; $4f8c: $90
    ldh a, [$f0]                                  ; $4f8d: $f0 $f0
    ldh a, [$03]                                  ; $4f8f: $f0 $03
    inc bc                                        ; $4f91: $03
    ld bc, $0301                                  ; $4f92: $01 $01 $03
    inc bc                                        ; $4f95: $03
    inc b                                         ; $4f96: $04
    rlca                                          ; $4f97: $07
    ld [$140f], sp                                ; $4f98: $08 $0f $14
    rra                                           ; $4f9b: $1f
    dec d                                         ; $4f9c: $15
    rra                                           ; $4f9d: $1f
    rrca                                          ; $4f9e: $0f
    ld c, $0f                                     ; $4f9f: $0e $0f
    inc c                                         ; $4fa1: $0c
    rrca                                          ; $4fa2: $0f
    inc c                                         ; $4fa3: $0c
    rlca                                          ; $4fa4: $07
    rlca                                          ; $4fa5: $07
    rlca                                          ; $4fa6: $07
    rlca                                          ; $4fa7: $07
    rlca                                          ; $4fa8: $07
    rlca                                          ; $4fa9: $07
    ld c, $0e                                     ; $4faa: $0e $0e
    ld [de], a                                    ; $4fac: $12
    ld e, $1e                                     ; $4fad: $1e $1e
    ld e, $c0                                     ; $4faf: $1e $c0
    ret nz                                        ; $4fb1: $c0

    ldh [$60], a                                  ; $4fb2: $e0 $60
    jp Jump_000_23c3                              ; $4fb4: $c3 $c3 $23


jr_021_4fb7:
    db $e3                                        ; $4fb7: $e3
    ld de, $73f1                                  ; $4fb8: $11 $f1 $73
    di                                            ; $4fbb: $f3
    sbc [hl]                                      ; $4fbc: $9e
    cp $92                                        ; $4fbd: $fe $92
    cp $d4                                        ; $4fbf: $fe $d4
    ld a, h                                       ; $4fc1: $7c
    call nz, $e87c                                ; $4fc2: $c4 $7c $e8
    jr c, jr_021_4fb7                             ; $4fc5: $38 $f0

    ldh a, [$f0]                                  ; $4fc7: $f0 $f0
    ldh a, [$f0]                                  ; $4fc9: $f0 $f0
    ldh a, [rOBP0]                                ; $4fcb: $f0 $48
    ld a, b                                       ; $4fcd: $78
    ld a, b                                       ; $4fce: $78
    ld a, b                                       ; $4fcf: $78
    inc bc                                        ; $4fd0: $03
    inc bc                                        ; $4fd1: $03
    rlca                                          ; $4fd2: $07
    ld b, $c3                                     ; $4fd3: $06 $c3
    jp $c7c4                                      ; $4fd5: $c3 $c4 $c7


jr_021_4fd8:
    call nz, Call_021_68c7                        ; $4fd8: $c4 $c7 $68
    ld l, a                                       ; $4fdb: $6f
    inc a                                         ; $4fdc: $3c
    ccf                                           ; $4fdd: $3f
    ld d, $1f                                     ; $4fde: $16 $1f
    rra                                           ; $4fe0: $1f
    dec e                                         ; $4fe1: $1d
    rrca                                          ; $4fe2: $0f
    ld [$0c0f], sp                                ; $4fe3: $08 $0f $0c
    rrca                                          ; $4fe6: $0f
    rrca                                          ; $4fe7: $0f
    rrca                                          ; $4fe8: $0f
    rrca                                          ; $4fe9: $0f
    ld c, $0f                                     ; $4fea: $0e $0f
    add hl, bc                                    ; $4fec: $09
    rrca                                          ; $4fed: $0f

jr_021_4fee:
    rrca                                          ; $4fee: $0f
    rrca                                          ; $4fef: $0f
    add b                                         ; $4ff0: $80
    add b                                         ; $4ff1: $80
    add b                                         ; $4ff2: $80
    add b                                         ; $4ff3: $80
    ret nz                                        ; $4ff4: $c0

    ret nz                                        ; $4ff5: $c0

    jr nz, jr_021_4fd8                            ; $4ff6: $20 $e0

    jr nz, @-$1e                                  ; $4ff8: $20 $e0

    db $10                                        ; $4ffa: $10
    ldh a, [$50]                                  ; $4ffb: $f0 $50
    ldh a, [rSVBK]                                ; $4ffd: $f0 $70
    ldh a, [$e8]                                  ; $4fff: $f0 $e8
    cp b                                          ; $5001: $b8
    add sp, $38                                   ; $5002: $e8 $38
    ldh a, [$30]                                  ; $5004: $f0 $30
    ldh [$e0], a                                  ; $5006: $e0 $e0
    ret nz                                        ; $5008: $c0

    ret nz                                        ; $5009: $c0

    ld b, b                                       ; $500a: $40
    ret nz                                        ; $500b: $c0

    jr nz, jr_021_4fee                            ; $500c: $20 $e0

    ldh [$e0], a                                  ; $500e: $e0 $e0
    inc b                                         ; $5010: $04
    inc b                                         ; $5011: $04
    ld c, $0e                                     ; $5012: $0e $0e
    ld a, a                                       ; $5014: $7f
    ld a, e                                       ; $5015: $7b
    ld h, [hl]                                    ; $5016: $66
    ld h, a                                       ; $5017: $67

jr_021_5018:
    ld [hl], h                                    ; $5018: $74
    ld [hl], a                                    ; $5019: $77
    dec e                                         ; $501a: $1d
    rra                                           ; $501b: $1f
    ld c, $0f                                     ; $501c: $0e $0f
    ld b, $07                                     ; $501e: $06 $07
    dec b                                         ; $5020: $05
    rlca                                          ; $5021: $07
    inc bc                                        ; $5022: $03
    ld [bc], a                                    ; $5023: $02
    inc bc                                        ; $5024: $03
    ld [bc], a                                    ; $5025: $02
    inc bc                                        ; $5026: $03
    inc bc                                        ; $5027: $03
    rlca                                          ; $5028: $07
    rlca                                          ; $5029: $07
    dec bc                                        ; $502a: $0b
    rrca                                          ; $502b: $0f
    add hl, bc                                    ; $502c: $09
    rrca                                          ; $502d: $0f
    rlca                                          ; $502e: $07
    rlca                                          ; $502f: $07
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    ret nz                                        ; $5034: $c0

    ret nz                                        ; $5035: $c0

    jr nz, jr_021_5018                            ; $5036: $20 $e0

    db $10                                        ; $5038: $10
    ldh a, [rNR10]                                ; $5039: $f0 $10
    ldh a, [$a8]                                  ; $503b: $f0 $a8
    ld hl, sp+$18                                 ; $503d: $f8 $18
    ld hl, sp+$68                                 ; $503f: $f8 $68
    ld hl, sp-$68                                 ; $5041: $f8 $98
    ld hl, sp-$7c                                 ; $5043: $f8 $84
    db $fc                                        ; $5045: $fc
    db $e4                                        ; $5046: $e4
    ld a, h                                       ; $5047: $7c
    ld hl, sp-$08                                 ; $5048: $f8 $f8
    ldh a, [$f0]                                  ; $504a: $f0 $f0
    ret z                                         ; $504c: $c8

    ld hl, sp+$78                                 ; $504d: $f8 $78
    ld a, b                                       ; $504f: $78
    ld c, $0e                                     ; $5050: $0e $0e
    ld e, $1a                                     ; $5052: $1e $1a
    rrca                                          ; $5054: $0f
    rrca                                          ; $5055: $0f
    ld [$100f], sp                                ; $5056: $08 $0f $10
    rra                                           ; $5059: $1f
    ld de, $141f                                  ; $505a: $11 $1f $14
    rra                                           ; $505d: $1f
    ld a, [bc]                                    ; $505e: $0a
    rrca                                          ; $505f: $0f
    ld [$050f], sp                                ; $5060: $08 $0f $05
    rlca                                          ; $5063: $07
    rlca                                          ; $5064: $07
    rlca                                          ; $5065: $07
    inc b                                         ; $5066: $04
    rlca                                          ; $5067: $07
    ld [bc], a                                    ; $5068: $02
    inc bc                                        ; $5069: $03
    inc bc                                        ; $506a: $03
    inc bc                                        ; $506b: $03
    ld [bc], a                                    ; $506c: $02
    inc bc                                        ; $506d: $03
    ld bc, $0001                                  ; $506e: $01 $01 $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    inc bc                                        ; $5074: $03
    inc bc                                        ; $5075: $03
    jp $a3c3                                      ; $5076: $c3 $c3 $a3


    db $e3                                        ; $5079: $e3
    ld h, $e6                                     ; $507a: $26 $e6
    ld l, h                                       ; $507c: $6c
    db $ec                                        ; $507d: $ec
    inc [hl]                                      ; $507e: $34
    db $fc                                        ; $507f: $fc
    xor b                                         ; $5080: $a8
    ld hl, sp+$48                                 ; $5081: $f8 $48
    ld hl, sp-$68                                 ; $5083: $f8 $98
    ld hl, sp+$30                                 ; $5085: $f8 $30
    ldh a, [rSVBK]                                ; $5087: $f0 $70
    ldh a, [$f0]                                  ; $5089: $f0 $f0
    ldh a, [$90]                                  ; $508b: $f0 $90
    ldh a, [$f0]                                  ; $508d: $f0 $f0
    ldh a, [rP1]                                  ; $508f: $f0 $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    ld bc, $0201                                  ; $5094: $01 $01 $02
    inc bc                                        ; $5097: $03
    inc b                                         ; $5098: $04
    rlca                                          ; $5099: $07
    ld b, $07                                     ; $509a: $06 $07
    ld [$0c0f], sp                                ; $509c: $08 $0f $0c
    rrca                                          ; $509f: $0f
    dec bc                                        ; $50a0: $0b
    rrca                                          ; $50a1: $0f
    ld c, $0f                                     ; $50a2: $0e $0f
    ld [$090f], sp                                ; $50a4: $08 $0f $09
    rrca                                          ; $50a7: $0f
    rlca                                          ; $50a8: $07
    rlca                                          ; $50a9: $07
    rrca                                          ; $50aa: $0f
    rrca                                          ; $50ab: $0f
    inc de                                        ; $50ac: $13
    rra                                           ; $50ad: $1f
    ld e, $1e                                     ; $50ae: $1e $1e
    ld [hl], b                                    ; $50b0: $70
    ld [hl], b                                    ; $50b1: $70
    ld a, b                                       ; $50b2: $78
    ld e, b                                       ; $50b3: $58
    db $e3                                        ; $50b4: $e3
    db $e3                                        ; $50b5: $e3
    inc hl                                        ; $50b6: $23
    db $e3                                        ; $50b7: $e3
    inc de                                        ; $50b8: $13
    di                                            ; $50b9: $f3

jr_021_50ba:
    ld d, [hl]                                    ; $50ba: $56
    or $3c                                        ; $50bb: $f6 $3c
    db $fc                                        ; $50bd: $fc
    db $f4                                        ; $50be: $f4
    db $fc                                        ; $50bf: $fc
    jr z, jr_021_50ba                             ; $50c0: $28 $f8

    ld l, b                                       ; $50c2: $68
    ld hl, sp-$10                                 ; $50c3: $f8 $f0
    or b                                          ; $50c5: $b0
    ldh [$e0], a                                  ; $50c6: $e0 $e0
    ldh a, [$f0]                                  ; $50c8: $f0 $f0
    ret nc                                        ; $50ca: $d0

    ldh a, [$90]                                  ; $50cb: $f0 $90
    ldh a, [$60]                                  ; $50cd: $f0 $60
    ld h, b                                       ; $50cf: $60
    nop                                           ; $50d0: $00
    nop                                           ; $50d1: $00
    rlca                                          ; $50d2: $07
    rlca                                          ; $50d3: $07
    rrca                                          ; $50d4: $0f
    dec c                                         ; $50d5: $0d
    inc bc                                        ; $50d6: $03
    inc bc                                        ; $50d7: $03
    ld [bc], a                                    ; $50d8: $02
    inc bc                                        ; $50d9: $03

jr_021_50da:
    inc b                                         ; $50da: $04
    rlca                                          ; $50db: $07
    dec b                                         ; $50dc: $05
    rlca                                          ; $50dd: $07
    ld b, $07                                     ; $50de: $06 $07
    ld c, $0f                                     ; $50e0: $0e $0f
    ld de, $2f1f                                  ; $50e2: $11 $1f $2f
    ccf                                           ; $50e5: $3f
    rra                                           ; $50e6: $1f
    inc e                                         ; $50e7: $1c
    rlca                                          ; $50e8: $07
    rlca                                          ; $50e9: $07
    dec bc                                        ; $50ea: $0b
    rrca                                          ; $50eb: $0f
    rrca                                          ; $50ec: $0f
    rrca                                          ; $50ed: $0f
    ld b, $06                                     ; $50ee: $06 $06
    nop                                           ; $50f0: $00
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    nop                                           ; $50f3: $00
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    ret nz                                        ; $50f6: $c0

    ret nz                                        ; $50f7: $c0

    jr nz, jr_021_50da                            ; $50f8: $20 $e0

    db $10                                        ; $50fa: $10
    ldh a, [$30]                                  ; $50fb: $f0 $30
    ldh a, [$88]                                  ; $50fd: $f0 $88
    ld hl, sp+$10                                 ; $50ff: $f8 $10
    ldh a, [rNR23]                                ; $5101: $f0 $18
    ld hl, sp-$28                                 ; $5103: $f8 $d8
    ld a, b                                       ; $5105: $78
    ldh [rNR41], a                                ; $5106: $e0 $20
    ldh [$e0], a                                  ; $5108: $e0 $e0
    ret nc                                        ; $510a: $d0

    ldh a, [$90]                                  ; $510b: $f0 $90
    ldh a, [$e0]                                  ; $510d: $f0 $e0
    ldh [rP1], a                                  ; $510f: $e0 $00
    nop                                           ; $5111: $00
    inc bc                                        ; $5112: $03
    inc bc                                        ; $5113: $03
    rlca                                          ; $5114: $07
    ld b, $03                                     ; $5115: $06 $03
    inc bc                                        ; $5117: $03
    inc b                                         ; $5118: $04
    rlca                                          ; $5119: $07
    ld [$1a0f], sp                                ; $511a: $08 $0f $1a
    rra                                           ; $511d: $1f
    add hl, hl                                    ; $511e: $29
    ccf                                           ; $511f: $3f
    ld h, b                                       ; $5120: $60
    ld a, a                                       ; $5121: $7f
    sbc b                                         ; $5122: $98
    rst $38                                       ; $5123: $ff
    ld [hl], h                                    ; $5124: $74
    ld a, a                                       ; $5125: $7f
    ld l, a                                       ; $5126: $6f
    ld l, e                                       ; $5127: $6b
    rst $08                                       ; $5128: $cf
    call z, $cfcf                                 ; $5129: $cc $cf $cf
    add hl, bc                                    ; $512c: $09
    rrca                                          ; $512d: $0f
    rlca                                          ; $512e: $07
    rlca                                          ; $512f: $07
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    add b                                         ; $5132: $80
    add b                                         ; $5133: $80
    ret nz                                        ; $5134: $c0

    ret nz                                        ; $5135: $c0

    add b                                         ; $5136: $80
    add b                                         ; $5137: $80
    ld b, b                                       ; $5138: $40
    ret nz                                        ; $5139: $c0

    jr nz, @-$1e                                  ; $513a: $20 $e0

    or b                                          ; $513c: $b0
    ldh a, [$28]                                  ; $513d: $f0 $28
    ld hl, sp+$08                                 ; $513f: $f8 $08
    ld hl, sp+$38                                 ; $5141: $f8 $38
    ld hl, sp+$42                                 ; $5143: $f8 $42
    cp $fa                                        ; $5145: $fe $fa
    cp [hl]                                       ; $5147: $be
    db $ec                                        ; $5148: $ec
    ld l, h                                       ; $5149: $6c
    ldh [$e0], a                                  ; $514a: $e0 $e0
    ret nz                                        ; $514c: $c0

    ret nz                                        ; $514d: $c0

    nop                                           ; $514e: $00
    nop                                           ; $514f: $00
    nop                                           ; $5150: $00
    nop                                           ; $5151: $00
    nop                                           ; $5152: $00
    nop                                           ; $5153: $00
    nop                                           ; $5154: $00
    nop                                           ; $5155: $00
    inc bc                                        ; $5156: $03
    inc bc                                        ; $5157: $03
    inc b                                         ; $5158: $04
    rlca                                          ; $5159: $07
    ld [$0c0f], sp                                ; $515a: $08 $0f $0c
    rrca                                          ; $515d: $0f
    ld de, $091f                                  ; $515e: $11 $1f $09
    rrca                                          ; $5161: $0f
    ld a, [bc]                                    ; $5162: $0a
    rrca                                          ; $5163: $0f
    inc e                                         ; $5164: $1c
    rla                                           ; $5165: $17
    rrca                                          ; $5166: $0f
    dec bc                                        ; $5167: $0b
    rlca                                          ; $5168: $07
    rlca                                          ; $5169: $07
    dec bc                                        ; $516a: $0b
    rrca                                          ; $516b: $0f
    rrca                                          ; $516c: $0f
    rrca                                          ; $516d: $0f
    ld b, $06                                     ; $516e: $06 $06
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    ldh [$e0], a                                  ; $5172: $e0 $e0
    ldh a, [$b0]                                  ; $5174: $f0 $b0
    ret nz                                        ; $5176: $c0

    ret nz                                        ; $5177: $c0

    ld b, b                                       ; $5178: $40
    ret nz                                        ; $5179: $c0

    jr nz, @-$1e                                  ; $517a: $20 $e0

    and b                                         ; $517c: $a0
    ldh [$60], a                                  ; $517d: $e0 $60
    ldh [$d0], a                                  ; $517f: $e0 $d0
    ldh a, [rBCPS]                                ; $5181: $f0 $68
    ld hl, sp+$30                                 ; $5183: $f8 $30
    ldh a, [rNR41]                                ; $5185: $f0 $20
    ldh [$e0], a                                  ; $5187: $e0 $e0
    ldh [$d0], a                                  ; $5189: $e0 $d0
    ldh a, [$90]                                  ; $518b: $f0 $90
    ldh a, [$e0]                                  ; $518d: $f0 $e0
    ldh [rP1], a                                  ; $518f: $e0 $00
    nop                                           ; $5191: $00
    inc bc                                        ; $5192: $03
    inc bc                                        ; $5193: $03
    rlca                                          ; $5194: $07
    rlca                                          ; $5195: $07
    inc bc                                        ; $5196: $03
    ld [bc], a                                    ; $5197: $02
    rlca                                          ; $5198: $07
    rlca                                          ; $5199: $07
    dec bc                                        ; $519a: $0b
    rrca                                          ; $519b: $0f
    jr jr_021_51bd                                ; $519c: $18 $1f

    ld l, b                                       ; $519e: $68
    ld a, a                                       ; $519f: $7f
    cp h                                          ; $51a0: $bc
    rst $38                                       ; $51a1: $ff
    adc a                                         ; $51a2: $8f
    rst $38                                       ; $51a3: $ff
    ccf                                           ; $51a4: $3f
    jr c, jr_021_51b6                             ; $51a5: $38 $0f

    inc c                                         ; $51a7: $0c
    rrca                                          ; $51a8: $0f
    rrca                                          ; $51a9: $0f
    rrca                                          ; $51aa: $0f
    rrca                                          ; $51ab: $0f
    add hl, bc                                    ; $51ac: $09
    rrca                                          ; $51ad: $0f
    rlca                                          ; $51ae: $07
    rlca                                          ; $51af: $07
    nop                                           ; $51b0: $00
    nop                                           ; $51b1: $00
    add b                                         ; $51b2: $80
    add b                                         ; $51b3: $80
    ret nz                                        ; $51b4: $c0

    ret nz                                        ; $51b5: $c0

jr_021_51b6:
    add b                                         ; $51b6: $80
    add b                                         ; $51b7: $80
    ret nz                                        ; $51b8: $c0

    ret nz                                        ; $51b9: $c0

    and b                                         ; $51ba: $a0
    ldh [$30], a                                  ; $51bb: $e0 $30

jr_021_51bd:
    ldh a, [$28]                                  ; $51bd: $f0 $28
    ld hl, sp+$48                                 ; $51bf: $f8 $48
    ld hl, sp-$08                                 ; $51c1: $f8 $f8
    ld hl, sp-$1e                                 ; $51c3: $f8 $e2
    ld a, $fa                                     ; $51c5: $3e $fa
    ld a, [hl]                                    ; $51c7: $7e
    xor $ee                                       ; $51c8: $ee $ee
    and $e6                                       ; $51ca: $e6 $e6
    ret nz                                        ; $51cc: $c0

    ret nz                                        ; $51cd: $c0

    nop                                           ; $51ce: $00
    nop                                           ; $51cf: $00
    inc bc                                        ; $51d0: $03
    inc bc                                        ; $51d1: $03
    rlca                                          ; $51d2: $07
    ld b, $01                                     ; $51d3: $06 $01
    ld bc, $0101                                  ; $51d5: $01 $01 $01
    ld [bc], a                                    ; $51d8: $02
    inc bc                                        ; $51d9: $03
    ld [bc], a                                    ; $51da: $02
    inc bc                                        ; $51db: $03
    inc bc                                        ; $51dc: $03
    inc bc                                        ; $51dd: $03
    rlca                                          ; $51de: $07
    rlca                                          ; $51df: $07
    ld [$220f], sp                                ; $51e0: $08 $0f $22
    ccf                                           ; $51e3: $3f
    cpl                                           ; $51e4: $2f
    ccf                                           ; $51e5: $3f
    rra                                           ; $51e6: $1f
    inc e                                         ; $51e7: $1c
    rlca                                          ; $51e8: $07
    rlca                                          ; $51e9: $07
    dec bc                                        ; $51ea: $0b
    rrca                                          ; $51eb: $0f
    rrca                                          ; $51ec: $0f
    rrca                                          ; $51ed: $0f
    ld b, $06                                     ; $51ee: $06 $06
    add b                                         ; $51f0: $80
    add b                                         ; $51f1: $80
    add b                                         ; $51f2: $80
    add b                                         ; $51f3: $80
    ldh [$e0], a                                  ; $51f4: $e0 $e0
    db $10                                        ; $51f6: $10
    ldh a, [$08]                                  ; $51f7: $f0 $08
    ld hl, sp-$68                                 ; $51f9: $f8 $98
    ld hl, sp+$44                                 ; $51fb: $f8 $44
    db $fc                                        ; $51fd: $fc
    ld [$8cf8], sp                                ; $51fe: $08 $f8 $8c
    db $fc                                        ; $5201: $fc
    or h                                          ; $5202: $b4
    db $fc                                        ; $5203: $fc
    ret c                                         ; $5204: $d8

    ld a, b                                       ; $5205: $78
    ldh [rNR41], a                                ; $5206: $e0 $20
    ldh [$e0], a                                  ; $5208: $e0 $e0
    ret nc                                        ; $520a: $d0

    ldh a, [$90]                                  ; $520b: $f0 $90
    ldh a, [$e0]                                  ; $520d: $f0 $e0
    ldh [rSB], a                                  ; $520f: $e0 $01
    ld bc, $0303                                  ; $5211: $01 $03 $03
    ld bc, $0201                                  ; $5214: $01 $01 $02
    inc bc                                        ; $5217: $03

jr_021_5218:
    inc b                                         ; $5218: $04
    rlca                                          ; $5219: $07
    dec c                                         ; $521a: $0d
    rrca                                          ; $521b: $0f
    inc d                                         ; $521c: $14
    rra                                           ; $521d: $1f
    jr nc, jr_021_525f                            ; $521e: $30 $3f

    ld c, h                                       ; $5220: $4c
    ld a, a                                       ; $5221: $7f
    xor e                                         ; $5222: $ab
    rst $38                                       ; $5223: $ff
    ld [hl], h                                    ; $5224: $74
    ld a, a                                       ; $5225: $7f
    ld l, a                                       ; $5226: $6f
    ld l, e                                       ; $5227: $6b
    rst $08                                       ; $5228: $cf
    call z, $cfcf                                 ; $5229: $cc $cf $cf
    add hl, bc                                    ; $522c: $09
    rrca                                          ; $522d: $0f
    rlca                                          ; $522e: $07
    rlca                                          ; $522f: $07
    ret nz                                        ; $5230: $c0

    ret nz                                        ; $5231: $c0

    ldh [$60], a                                  ; $5232: $e0 $60
    ret nz                                        ; $5234: $c0

    ret nz                                        ; $5235: $c0

    jr nz, jr_021_5218                            ; $5236: $20 $e0

    db $10                                        ; $5238: $10
    ldh a, [$58]                                  ; $5239: $f0 $58
    ld hl, sp-$6c                                 ; $523b: $f8 $94
    db $fc                                        ; $523d: $fc
    inc b                                         ; $523e: $04
    db $fc                                        ; $523f: $fc
    inc e                                         ; $5240: $1c
    db $fc                                        ; $5241: $fc
    and h                                         ; $5242: $a4
    db $fc                                        ; $5243: $fc
    ld b, d                                       ; $5244: $42
    cp $fa                                        ; $5245: $fe $fa
    cp [hl]                                       ; $5247: $be
    db $ec                                        ; $5248: $ec
    ld l, h                                       ; $5249: $6c
    ldh [$e0], a                                  ; $524a: $e0 $e0
    ret nz                                        ; $524c: $c0

    ret nz                                        ; $524d: $c0

    nop                                           ; $524e: $00
    nop                                           ; $524f: $00
    nop                                           ; $5250: $00
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    ld bc, $0201                                  ; $5254: $01 $01 $02
    inc bc                                        ; $5257: $03

jr_021_5258:
    inc b                                         ; $5258: $04
    rlca                                          ; $5259: $07
    ld b, $07                                     ; $525a: $06 $07
    ld [$040f], sp                                ; $525c: $08 $0f $04

Jump_021_525f:
jr_021_525f:
    rlca                                          ; $525f: $07
    dec b                                         ; $5260: $05
    rlca                                          ; $5261: $07
    inc c                                         ; $5262: $0c
    rrca                                          ; $5263: $0f
    inc e                                         ; $5264: $1c
    rla                                           ; $5265: $17
    rrca                                          ; $5266: $0f
    dec bc                                        ; $5267: $0b
    rlca                                          ; $5268: $07
    rlca                                          ; $5269: $07
    dec bc                                        ; $526a: $0b
    rrca                                          ; $526b: $0f
    rrca                                          ; $526c: $0f
    rrca                                          ; $526d: $0f
    ld b, $06                                     ; $526e: $06 $06
    ld [hl], b                                    ; $5270: $70
    ld [hl], b                                    ; $5271: $70
    ld a, b                                       ; $5272: $78
    ld e, b                                       ; $5273: $58
    ldh [$e0], a                                  ; $5274: $e0 $e0
    jr nz, jr_021_5258                            ; $5276: $20 $e0

    db $10                                        ; $5278: $10
    ldh a, [$50]                                  ; $5279: $f0 $50
    ldh a, [$b0]                                  ; $527b: $f0 $b0
    ldh a, [$e8]                                  ; $527d: $f0 $e8
    ld hl, sp+$34                                 ; $527f: $f8 $34
    db $fc                                        ; $5281: $fc
    ld l, b                                       ; $5282: $68
    ld hl, sp+$30                                 ; $5283: $f8 $30
    ldh a, [rNR41]                                ; $5285: $f0 $20
    ldh [$e0], a                                  ; $5287: $e0 $e0
    ldh [$d0], a                                  ; $5289: $e0 $d0
    ldh a, [$90]                                  ; $528b: $f0 $90
    ldh a, [$e0]                                  ; $528d: $f0 $e0
    ldh [rSB], a                                  ; $528f: $e0 $01
    ld bc, $0303                                  ; $5291: $01 $03 $03
    ld bc, $0301                                  ; $5294: $01 $01 $03
    inc bc                                        ; $5297: $03
    dec b                                         ; $5298: $05
    rlca                                          ; $5299: $07
    inc c                                         ; $529a: $0c
    rrca                                          ; $529b: $0f
    inc [hl]                                      ; $529c: $34
    ccf                                           ; $529d: $3f
    ld e, [hl]                                    ; $529e: $5e
    ld a, a                                       ; $529f: $7f
    ld b, a                                       ; $52a0: $47
    ld a, a                                       ; $52a1: $7f
    ld b, a                                       ; $52a2: $47
    ld a, h                                       ; $52a3: $7c
    ccf                                           ; $52a4: $3f
    jr c, jr_021_52b6                             ; $52a5: $38 $0f

    inc c                                         ; $52a7: $0c
    rrca                                          ; $52a8: $0f
    rrca                                          ; $52a9: $0f
    rrca                                          ; $52aa: $0f
    rrca                                          ; $52ab: $0f
    add hl, bc                                    ; $52ac: $09
    rrca                                          ; $52ad: $0f
    rlca                                          ; $52ae: $07
    rlca                                          ; $52af: $07
    ret nz                                        ; $52b0: $c0

    ret nz                                        ; $52b1: $c0

    ldh [$e0], a                                  ; $52b2: $e0 $e0
    ret nz                                        ; $52b4: $c0

    ld b, b                                       ; $52b5: $40

jr_021_52b6:
    ldh [$e0], a                                  ; $52b6: $e0 $e0
    ret nc                                        ; $52b8: $d0

    ldh a, [rNR23]                                ; $52b9: $f0 $18
    ld hl, sp+$14                                 ; $52bb: $f8 $14
    db $fc                                        ; $52bd: $fc
    inc h                                         ; $52be: $24
    db $fc                                        ; $52bf: $fc
    db $fc                                        ; $52c0: $fc
    db $fc                                        ; $52c1: $fc
    call nz, $e27c                                ; $52c2: $c4 $7c $e2
    ld a, $fa                                     ; $52c5: $3e $fa
    ld a, [hl]                                    ; $52c7: $7e
    xor $ee                                       ; $52c8: $ee $ee
    and $e6                                       ; $52ca: $e6 $e6
    ret nz                                        ; $52cc: $c0

    ret nz                                        ; $52cd: $c0

    nop                                           ; $52ce: $00
    nop                                           ; $52cf: $00
    ld c, $0e                                     ; $52d0: $0e $0e
    ld e, $1a                                     ; $52d2: $1e $1a
    rlca                                          ; $52d4: $07
    rlca                                          ; $52d5: $07
    inc b                                         ; $52d6: $04
    rlca                                          ; $52d7: $07
    ld [$0a0f], sp                                ; $52d8: $08 $0f $0a
    rrca                                          ; $52db: $0f
    dec c                                         ; $52dc: $0d
    rrca                                          ; $52dd: $0f
    inc e                                         ; $52de: $1c
    rra                                           ; $52df: $1f
    ld [hl+], a                                   ; $52e0: $22
    ccf                                           ; $52e1: $3f
    ld [hl+], a                                   ; $52e2: $22
    ccf                                           ; $52e3: $3f
    cpl                                           ; $52e4: $2f
    ccf                                           ; $52e5: $3f
    rra                                           ; $52e6: $1f
    inc e                                         ; $52e7: $1c
    rlca                                          ; $52e8: $07
    rlca                                          ; $52e9: $07
    dec bc                                        ; $52ea: $0b
    rrca                                          ; $52eb: $0f
    rrca                                          ; $52ec: $0f
    rrca                                          ; $52ed: $0f
    ld b, $06                                     ; $52ee: $06 $06
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    add b                                         ; $52f4: $80
    add b                                         ; $52f5: $80
    ld b, b                                       ; $52f6: $40
    ret nz                                        ; $52f7: $c0

    jr nz, @-$1e                                  ; $52f8: $20 $e0

    ld h, b                                       ; $52fa: $60
    ldh [rNR10], a                                ; $52fb: $e0 $10
    ldh a, [rNR41]                                ; $52fd: $f0 $20
    ldh [$30], a                                  ; $52ff: $e0 $30
    ldh a, [$b4]                                  ; $5301: $f0 $b4
    db $fc                                        ; $5303: $fc
    ret c                                         ; $5304: $d8

    ld a, b                                       ; $5305: $78
    ldh [rNR41], a                                ; $5306: $e0 $20
    ldh [$e0], a                                  ; $5308: $e0 $e0
    ret nc                                        ; $530a: $d0

    ldh a, [$90]                                  ; $530b: $f0 $90
    ldh a, [$e0]                                  ; $530d: $f0 $e0
    ldh [rTAC], a                                 ; $530f: $e0 $07
    rlca                                          ; $5311: $07
    rrca                                          ; $5312: $0f
    dec c                                         ; $5313: $0d
    rlca                                          ; $5314: $07
    rlca                                          ; $5315: $07
    ld [$100f], sp                                ; $5316: $08 $0f $10
    rra                                           ; $5319: $1f
    dec [hl]                                      ; $531a: $35
    ccf                                           ; $531b: $3f
    ld d, d                                       ; $531c: $52
    ld a, a                                       ; $531d: $7f
    ret nz                                        ; $531e: $c0

    rst $38                                       ; $531f: $ff
    jr nc, @+$01                                  ; $5320: $30 $ff

    xor e                                         ; $5322: $ab
    rst $38                                       ; $5323: $ff
    ld [hl], h                                    ; $5324: $74
    ld a, a                                       ; $5325: $7f
    ld l, a                                       ; $5326: $6f
    ld l, e                                       ; $5327: $6b
    rst $08                                       ; $5328: $cf
    call z, $cfcf                                 ; $5329: $cc $cf $cf
    add hl, bc                                    ; $532c: $09
    rrca                                          ; $532d: $0f
    rlca                                          ; $532e: $07
    rlca                                          ; $532f: $07
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    add b                                         ; $5332: $80
    add b                                         ; $5333: $80
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    add b                                         ; $5336: $80
    add b                                         ; $5337: $80
    ld b, b                                       ; $5338: $40
    ret nz                                        ; $5339: $c0

    ld h, b                                       ; $533a: $60
    ldh [$50], a                                  ; $533b: $e0 $50
    ldh a, [rNR10]                                ; $533d: $f0 $10
    ldh a, [rSVBK]                                ; $533f: $f0 $70
    ldh a, [$a4]                                  ; $5341: $f0 $a4
    db $fc                                        ; $5343: $fc
    ld b, d                                       ; $5344: $42
    cp $fa                                        ; $5345: $fe $fa
    cp [hl]                                       ; $5347: $be
    db $ec                                        ; $5348: $ec
    ld l, h                                       ; $5349: $6c
    ldh [$e0], a                                  ; $534a: $e0 $e0
    ret nz                                        ; $534c: $c0

    ret nz                                        ; $534d: $c0

    nop                                           ; $534e: $00
    nop                                           ; $534f: $00
    ld bc, $0101                                  ; $5350: $01 $01 $01
    ld bc, $0707                                  ; $5353: $01 $07 $07
    ld [$100f], sp                                ; $5356: $08 $0f $10
    rra                                           ; $5359: $1f
    add hl, de                                    ; $535a: $19
    rra                                           ; $535b: $1f
    ld [hl+], a                                   ; $535c: $22
    ccf                                           ; $535d: $3f
    inc de                                        ; $535e: $13
    rra                                           ; $535f: $1f
    inc d                                         ; $5360: $14
    rra                                           ; $5361: $1f
    inc c                                         ; $5362: $0c
    rrca                                          ; $5363: $0f
    inc e                                         ; $5364: $1c
    rla                                           ; $5365: $17
    rrca                                          ; $5366: $0f
    dec bc                                        ; $5367: $0b
    rlca                                          ; $5368: $07
    rlca                                          ; $5369: $07
    dec bc                                        ; $536a: $0b
    rrca                                          ; $536b: $0f
    rrca                                          ; $536c: $0f
    rrca                                          ; $536d: $0f
    ld b, $06                                     ; $536e: $06 $06
    ret nz                                        ; $5370: $c0

    ret nz                                        ; $5371: $c0

    ldh [$60], a                                  ; $5372: $e0 $60
    add b                                         ; $5374: $80
    add b                                         ; $5375: $80
    add b                                         ; $5376: $80
    add b                                         ; $5377: $80
    ld b, b                                       ; $5378: $40
    ret nz                                        ; $5379: $c0

    ld b, b                                       ; $537a: $40
    ret nz                                        ; $537b: $c0

    ret nz                                        ; $537c: $c0

    ret nz                                        ; $537d: $c0

    and b                                         ; $537e: $a0
    ldh [$d0], a                                  ; $537f: $e0 $d0
    ldh a, [rBCPS]                                ; $5381: $f0 $68
    ld hl, sp+$30                                 ; $5383: $f8 $30
    ldh a, [rNR41]                                ; $5385: $f0 $20
    ldh [$e0], a                                  ; $5387: $e0 $e0
    ldh [$d0], a                                  ; $5389: $e0 $d0
    ldh a, [$90]                                  ; $538b: $f0 $90
    ldh a, [$e0]                                  ; $538d: $f0 $e0
    ldh [rTAC], a                                 ; $538f: $e0 $07
    rlca                                          ; $5391: $07
    rrca                                          ; $5392: $0f
    rrca                                          ; $5393: $0f
    rlca                                          ; $5394: $07
    dec b                                         ; $5395: $05
    rrca                                          ; $5396: $0f
    rrca                                          ; $5397: $0f
    rla                                           ; $5398: $17
    rra                                           ; $5399: $1f
    jr nc, jr_021_53db                            ; $539a: $30 $3f

    ret nc                                        ; $539c: $d0

    rst $38                                       ; $539d: $ff
    ld a, b                                       ; $539e: $78
    rst $38                                       ; $539f: $ff
    rra                                           ; $53a0: $1f
    rst $38                                       ; $53a1: $ff
    ld b, a                                       ; $53a2: $47
    ld a, h                                       ; $53a3: $7c
    ccf                                           ; $53a4: $3f
    jr c, jr_021_53b6                             ; $53a5: $38 $0f

    inc c                                         ; $53a7: $0c
    rrca                                          ; $53a8: $0f
    rrca                                          ; $53a9: $0f
    rrca                                          ; $53aa: $0f
    rrca                                          ; $53ab: $0f
    add hl, bc                                    ; $53ac: $09
    rrca                                          ; $53ad: $0f
    rlca                                          ; $53ae: $07
    rlca                                          ; $53af: $07
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    add b                                         ; $53b2: $80
    add b                                         ; $53b3: $80
    nop                                           ; $53b4: $00
    nop                                           ; $53b5: $00

jr_021_53b6:
    add b                                         ; $53b6: $80
    add b                                         ; $53b7: $80
    ld b, b                                       ; $53b8: $40
    ret nz                                        ; $53b9: $c0

    ld h, b                                       ; $53ba: $60
    ldh [$50], a                                  ; $53bb: $e0 $50
    ldh a, [$90]                                  ; $53bd: $f0 $90
    ldh a, [$f0]                                  ; $53bf: $f0 $f0
    ldh a, [$c4]                                  ; $53c1: $f0 $c4
    ld a, h                                       ; $53c3: $7c
    ld [c], a                                     ; $53c4: $e2
    ld a, $fa                                     ; $53c5: $3e $fa
    ld a, [hl]                                    ; $53c7: $7e
    xor $ee                                       ; $53c8: $ee $ee
    and $e6                                       ; $53ca: $e6 $e6
    ret nz                                        ; $53cc: $c0

    ret nz                                        ; $53cd: $c0

    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    inc bc                                        ; $53d2: $03
    inc bc                                        ; $53d3: $03
    rlca                                          ; $53d4: $07
    dec b                                         ; $53d5: $05
    inc bc                                        ; $53d6: $03
    inc bc                                        ; $53d7: $03
    ld [bc], a                                    ; $53d8: $02
    inc bc                                        ; $53d9: $03
    nop                                           ; $53da: $00

jr_021_53db:
    inc bc                                        ; $53db: $03

jr_021_53dc:
    ld [bc], a                                    ; $53dc: $02
    inc bc                                        ; $53dd: $03
    ld b, $07                                     ; $53de: $06 $07
    add hl, bc                                    ; $53e0: $09
    rrca                                          ; $53e1: $0f
    ld [de], a                                    ; $53e2: $12
    rra                                           ; $53e3: $1f
    rrca                                          ; $53e4: $0f
    inc c                                         ; $53e5: $0c
    inc bc                                        ; $53e6: $03
    inc bc                                        ; $53e7: $03
    rlca                                          ; $53e8: $07
    rlca                                          ; $53e9: $07
    rlca                                          ; $53ea: $07
    rlca                                          ; $53eb: $07
    ld [bc], a                                    ; $53ec: $02
    ld [bc], a                                    ; $53ed: $02
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00
    nop                                           ; $53f3: $00
    nop                                           ; $53f4: $00
    nop                                           ; $53f5: $00
    ret nz                                        ; $53f6: $c0

    ret nz                                        ; $53f7: $c0

    nop                                           ; $53f8: $00
    ret nz                                        ; $53f9: $c0

    jr nz, jr_021_53dc                            ; $53fa: $20 $e0

    sub b                                         ; $53fc: $90
    ldh a, [rNR41]                                ; $53fd: $f0 $20
    ldh [$30], a                                  ; $53ff: $e0 $30
    ldh a, [$a8]                                  ; $5401: $f0 $a8
    ld hl, sp-$40                                 ; $5403: $f8 $c0
    nop                                           ; $5405: $00
    ret nz                                        ; $5406: $c0

    ret nz                                        ; $5407: $c0

    ldh [$e0], a                                  ; $5408: $e0 $e0
    and b                                         ; $540a: $a0
    ldh [$c0], a                                  ; $540b: $e0 $c0
    ret nz                                        ; $540d: $c0

    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    inc bc                                        ; $5412: $03
    inc bc                                        ; $5413: $03
    inc bc                                        ; $5414: $03
    ld [bc], a                                    ; $5415: $02
    inc bc                                        ; $5416: $03
    inc bc                                        ; $5417: $03
    nop                                           ; $5418: $00
    inc bc                                        ; $5419: $03
    inc b                                         ; $541a: $04
    rlca                                          ; $541b: $07
    dec d                                         ; $541c: $15
    rra                                           ; $541d: $1f
    jr nc, jr_021_545f                            ; $541e: $30 $3f

    ld c, h                                       ; $5420: $4c
    ld a, a                                       ; $5421: $7f
    ld d, a                                       ; $5422: $57
    ld a, a                                       ; $5423: $7f
    scf                                           ; $5424: $37
    scf                                           ; $5425: $37
    ld h, a                                       ; $5426: $67
    ld h, h                                       ; $5427: $64
    ld h, a                                       ; $5428: $67
    ld h, a                                       ; $5429: $67
    dec b                                         ; $542a: $05
    rlca                                          ; $542b: $07
    inc bc                                        ; $542c: $03
    inc bc                                        ; $542d: $03
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    add b                                         ; $5432: $80
    add b                                         ; $5433: $80
    ret nz                                        ; $5434: $c0

    ret nz                                        ; $5435: $c0

    add b                                         ; $5436: $80
    add b                                         ; $5437: $80
    ld b, b                                       ; $5438: $40
    ret nz                                        ; $5439: $c0

    nop                                           ; $543a: $00
    ret nz                                        ; $543b: $c0

    db $10                                        ; $543c: $10
    ldh a, [rNR10]                                ; $543d: $f0 $10
    ldh a, [$30]                                  ; $543f: $f0 $30
    ldh a, [$88]                                  ; $5441: $f0 $88
    ld hl, sp-$0c                                 ; $5443: $f8 $f4
    cp h                                          ; $5445: $bc
    ret c                                         ; $5446: $d8

    ld e, b                                       ; $5447: $58
    ret nz                                        ; $5448: $c0

    ret nz                                        ; $5449: $c0

    ret nz                                        ; $544a: $c0

    ret nz                                        ; $544b: $c0

    nop                                           ; $544c: $00
    nop                                           ; $544d: $00
    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    inc bc                                        ; $5456: $03
    inc bc                                        ; $5457: $03
    nop                                           ; $5458: $00
    inc bc                                        ; $5459: $03
    inc b                                         ; $545a: $04
    rlca                                          ; $545b: $07
    add hl, bc                                    ; $545c: $09
    rrca                                          ; $545d: $0f
    dec b                                         ; $545e: $05

jr_021_545f:
    rlca                                          ; $545f: $07
    ld b, $07                                     ; $5460: $06 $07
    inc b                                         ; $5462: $04
    rlca                                          ; $5463: $07
    rlca                                          ; $5464: $07
    rlca                                          ; $5465: $07
    inc bc                                        ; $5466: $03
    inc bc                                        ; $5467: $03
    rlca                                          ; $5468: $07
    rlca                                          ; $5469: $07
    rlca                                          ; $546a: $07
    rlca                                          ; $546b: $07
    ld [bc], a                                    ; $546c: $02
    ld [bc], a                                    ; $546d: $02
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    ret nz                                        ; $5472: $c0

    ret nz                                        ; $5473: $c0

    ldh [$a0], a                                  ; $5474: $e0 $a0
    ret nz                                        ; $5476: $c0

    ret nz                                        ; $5477: $c0

    ld b, b                                       ; $5478: $40
    ret nz                                        ; $5479: $c0

    nop                                           ; $547a: $00
    ret nz                                        ; $547b: $c0

    ld b, b                                       ; $547c: $40
    ret nz                                        ; $547d: $c0

    ldh [$e0], a                                  ; $547e: $e0 $e0
    ld d, b                                       ; $5480: $50
    ldh a, [$50]                                  ; $5481: $f0 $50
    ldh a, [rP1]                                  ; $5483: $f0 $00
    ret nz                                        ; $5485: $c0

    ret nz                                        ; $5486: $c0

    ret nz                                        ; $5487: $c0

    ldh [$e0], a                                  ; $5488: $e0 $e0
    and b                                         ; $548a: $a0
    ldh [$c0], a                                  ; $548b: $e0 $c0
    ret nz                                        ; $548d: $c0

    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    inc bc                                        ; $5492: $03
    inc bc                                        ; $5493: $03
    inc bc                                        ; $5494: $03
    inc bc                                        ; $5495: $03
    inc bc                                        ; $5496: $03
    ld [bc], a                                    ; $5497: $02
    inc bc                                        ; $5498: $03
    inc bc                                        ; $5499: $03
    rlca                                          ; $549a: $07
    rlca                                          ; $549b: $07
    inc [hl]                                      ; $549c: $34
    ccf                                           ; $549d: $3f
    ld e, h                                       ; $549e: $5c
    ld a, a                                       ; $549f: $7f
    ld b, a                                       ; $54a0: $47
    ld a, a                                       ; $54a1: $7f
    inc hl                                        ; $54a2: $23
    inc a                                         ; $54a3: $3c
    rlca                                          ; $54a4: $07
    inc b                                         ; $54a5: $04
    rlca                                          ; $54a6: $07
    rlca                                          ; $54a7: $07
    rlca                                          ; $54a8: $07
    rlca                                          ; $54a9: $07
    dec b                                         ; $54aa: $05
    rlca                                          ; $54ab: $07
    inc bc                                        ; $54ac: $03
    inc bc                                        ; $54ad: $03
    nop                                           ; $54ae: $00
    nop                                           ; $54af: $00
    nop                                           ; $54b0: $00
    nop                                           ; $54b1: $00
    add b                                         ; $54b2: $80
    add b                                         ; $54b3: $80
    ret nz                                        ; $54b4: $c0

    ret nz                                        ; $54b5: $c0

    add b                                         ; $54b6: $80
    add b                                         ; $54b7: $80
    ret nz                                        ; $54b8: $c0

    ret nz                                        ; $54b9: $c0

    add b                                         ; $54ba: $80
    ret nz                                        ; $54bb: $c0

    db $10                                        ; $54bc: $10
    ldh a, [$50]                                  ; $54bd: $f0 $50
    ldh a, [$f0]                                  ; $54bf: $f0 $f0
    ldh a, [$c8]                                  ; $54c1: $f0 $c8
    ld a, b                                       ; $54c3: $78
    db $f4                                        ; $54c4: $f4
    ld a, h                                       ; $54c5: $7c
    call c, $ccdc                                 ; $54c6: $dc $dc $cc
    call z, $c0c0                                 ; $54c9: $cc $c0 $c0
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00
    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    ld [c], a                                     ; $54d0: $e2
    ld d, h                                       ; $54d1: $54
    push hl                                       ; $54d2: $e5
    ld d, h                                       ; $54d3: $54
    db $eb                                        ; $54d4: $eb
    ld d, h                                       ; $54d5: $54
    xor $54                                       ; $54d6: $ee $54
    ld sp, hl                                     ; $54d8: $f9
    ld d, h                                       ; $54d9: $54
    nop                                           ; $54da: $00
    ld d, l                                       ; $54db: $55
    ld [$1c55], sp                                ; $54dc: $08 $55 $1c
    ld d, l                                       ; $54df: $55
    jr z, jr_021_5537                             ; $54e0: $28 $55

    nop                                           ; $54e2: $00
    rst $38                                       ; $54e3: $ff
    db $fd                                        ; $54e4: $fd
    nop                                           ; $54e5: $00
    ld e, $01                                     ; $54e6: $1e $01
    ld e, $ff                                     ; $54e8: $1e $ff
    nop                                           ; $54ea: $00
    ld [bc], a                                    ; $54eb: $02
    rst $38                                       ; $54ec: $ff
    db $fd                                        ; $54ed: $fd
    ld [bc], a                                    ; $54ee: $02
    inc c                                         ; $54ef: $0c
    inc bc                                        ; $54f0: $03
    inc c                                         ; $54f1: $0c
    inc b                                         ; $54f2: $04
    jr jr_021_54f7                                ; $54f3: $18 $02

    inc c                                         ; $54f5: $0c
    dec b                                         ; $54f6: $05

jr_021_54f7:
    inc c                                         ; $54f7: $0c
    db $fd                                        ; $54f8: $fd
    ld [bc], a                                    ; $54f9: $02
    jr @+$05                                      ; $54fa: $18 $03

    jr jr_021_5500                                ; $54fc: $18 $02

    jr @-$01                                      ; $54fe: $18 $fd

jr_021_5500:
    nop                                           ; $5500: $00
    ld a, [bc]                                    ; $5501: $0a
    ld b, $1e                                     ; $5502: $06 $1e
    nop                                           ; $5504: $00
    ld a, [bc]                                    ; $5505: $0a
    cp $01                                        ; $5506: $fe $01
    nop                                           ; $5508: $00
    ld a, [bc]                                    ; $5509: $0a
    rlca                                          ; $550a: $07
    ld a, [bc]                                    ; $550b: $0a
    nop                                           ; $550c: $00
    inc bc                                        ; $550d: $03
    ld [$000a], sp                                ; $550e: $08 $0a $00
    inc bc                                        ; $5511: $03
    rlca                                          ; $5512: $07
    ld a, [bc]                                    ; $5513: $0a
    nop                                           ; $5514: $00
    inc bc                                        ; $5515: $03
    ld [$000a], sp                                ; $5516: $08 $0a $00
    ld a, [bc]                                    ; $5519: $0a
    cp $01                                        ; $551a: $fe $01
    nop                                           ; $551c: $00
    ld a, [bc]                                    ; $551d: $0a
    add hl, bc                                    ; $551e: $09
    ld [$0800], sp                                ; $551f: $08 $00 $08
    add hl, bc                                    ; $5522: $09
    ld [$0a00], sp                                ; $5523: $08 $00 $0a
    cp $01                                        ; $5526: $fe $01
    ld [bc], a                                    ; $5528: $02
    ld [de], a                                    ; $5529: $12
    inc bc                                        ; $552a: $03
    ld [de], a                                    ; $552b: $12
    ld [bc], a                                    ; $552c: $02
    ld e, $05                                     ; $552d: $1e $05
    ld [de], a                                    ; $552f: $12
    db $fd                                        ; $5530: $fd
    rlca                                          ; $5531: $07
    inc b                                         ; $5532: $04
    add hl, sp                                    ; $5533: $39
    ld d, l                                       ; $5534: $55
    ld d, b                                       ; $5535: $50
    ld e, a                                       ; $5536: $5f

jr_021_5537:
    add hl, sp                                    ; $5537: $39
    ld d, l                                       ; $5538: $55
    ld d, b                                       ; $5539: $50
    ld d, l                                       ; $553a: $55
    ld d, b                                       ; $553b: $50
    ld d, [hl]                                    ; $553c: $56
    ld d, b                                       ; $553d: $50
    ld d, a                                       ; $553e: $57
    ld d, b                                       ; $553f: $50
    ld e, b                                       ; $5540: $58
    ld d, b                                       ; $5541: $50
    ld e, c                                       ; $5542: $59
    ld d, b                                       ; $5543: $50
    ld e, d                                       ; $5544: $5a
    ld d, b                                       ; $5545: $50
    ld e, e                                       ; $5546: $5b
    ld d, b                                       ; $5547: $50
    ld e, h                                       ; $5548: $5c
    ld d, b                                       ; $5549: $50
    ld e, l                                       ; $554a: $5d
    ld d, b                                       ; $554b: $50
    ld e, [hl]                                    ; $554c: $5e
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    inc bc                                        ; $5550: $03
    inc bc                                        ; $5551: $03
    rlca                                          ; $5552: $07
    rlca                                          ; $5553: $07
    rra                                           ; $5554: $1f
    inc e                                         ; $5555: $1c
    inc de                                        ; $5556: $13
    rra                                           ; $5557: $1f
    ld [$070f], sp                                ; $5558: $08 $0f $07
    rlca                                          ; $555b: $07
    rlca                                          ; $555c: $07
    dec b                                         ; $555d: $05
    rlca                                          ; $555e: $07

Call_021_555f:
    dec b                                         ; $555f: $05
    inc bc                                        ; $5560: $03
    ld [bc], a                                    ; $5561: $02
    inc bc                                        ; $5562: $03
    inc bc                                        ; $5563: $03
    rlca                                          ; $5564: $07
    ld b, $0f                                     ; $5565: $06 $0f
    ld a, [bc]                                    ; $5567: $0a
    rra                                           ; $5568: $1f
    rla                                           ; $5569: $17
    rra                                           ; $556a: $1f
    rra                                           ; $556b: $1f
    rrca                                          ; $556c: $0f
    rrca                                          ; $556d: $0f
    rlca                                          ; $556e: $07
    rlca                                          ; $556f: $07
    ldh a, [$f0]                                  ; $5570: $f0 $f0
    ld [$f8f8], sp                                ; $5572: $08 $f8 $f8
    ld hl, sp-$08                                 ; $5575: $f8 $f8
    ld [$fcfc], sp                                ; $5577: $08 $fc $fc
    ld [bc], a                                    ; $557a: $02
    cp $fc                                        ; $557b: $fe $fc
    db $fc                                        ; $557d: $fc
    ldh a, [$50]                                  ; $557e: $f0 $50
    ldh a, [rNR10]                                ; $5580: $f0 $10
    ldh a, [$30]                                  ; $5582: $f0 $30
    ld hl, sp-$18                                 ; $5584: $f8 $e8
    ld hl, sp+$78                                 ; $5586: $f8 $78
    ret nc                                        ; $5588: $d0

    ldh a, [$28]                                  ; $5589: $f0 $28
    ld hl, sp-$28                                 ; $558b: $f8 $d8
    ld hl, sp+$70                                 ; $558d: $f8 $70
    ld [hl], b                                    ; $558f: $70
    rlca                                          ; $5590: $07
    rlca                                          ; $5591: $07
    ld [$3f0f], sp                                ; $5592: $08 $0f $3f
    scf                                           ; $5595: $37
    ld c, a                                       ; $5596: $4f
    ld a, b                                       ; $5597: $78
    ld h, a                                       ; $5598: $67
    ld a, a                                       ; $5599: $7f
    jr c, jr_021_55db                             ; $559a: $38 $3f

    ccf                                           ; $559c: $3f
    cpl                                           ; $559d: $2f
    ccf                                           ; $559e: $3f
    ld a, [hl+]                                   ; $559f: $2a
    ld a, a                                       ; $55a0: $7f
    ld e, b                                       ; $55a1: $58
    ld a, a                                       ; $55a2: $7f
    ld a, h                                       ; $55a3: $7c
    cpl                                           ; $55a4: $2f
    dec hl                                        ; $55a5: $2b
    cpl                                           ; $55a6: $2f
    cpl                                           ; $55a7: $2f
    ld l, c                                       ; $55a8: $69
    ld l, a                                       ; $55a9: $6f
    ld l, a                                       ; $55aa: $6f
    ld l, a                                       ; $55ab: $6f
    add hl, bc                                    ; $55ac: $09
    rrca                                          ; $55ad: $0f
    rlca                                          ; $55ae: $07
    rlca                                          ; $55af: $07
    ret nz                                        ; $55b0: $c0

    ret nz                                        ; $55b1: $c0

    jr nz, @-$1e                                  ; $55b2: $20 $e0

    ld hl, sp-$28                                 ; $55b4: $f8 $d8
    db $e4                                        ; $55b6: $e4
    inc a                                         ; $55b7: $3c
    call z, Call_000_38fc                         ; $55b8: $cc $fc $38
    ld hl, sp-$08                                 ; $55bb: $f8 $f8
    add sp, -$08                                  ; $55bd: $e8 $f8
    xor b                                         ; $55bf: $a8
    ldh a, [$30]                                  ; $55c0: $f0 $30

jr_021_55c2:
    ld hl, sp+$68                                 ; $55c2: $f8 $68
    db $fc                                        ; $55c4: $fc
    and h                                         ; $55c5: $a4
    db $fc                                        ; $55c6: $fc
    db $f4                                        ; $55c7: $f4
    jr c, jr_021_55c2                             ; $55c8: $38 $f8

    ldh [$e0], a                                  ; $55ca: $e0 $e0
    ret nz                                        ; $55cc: $c0

    ret nz                                        ; $55cd: $c0

    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    rrca                                          ; $55d0: $0f
    rrca                                          ; $55d1: $0f
    db $10                                        ; $55d2: $10
    rra                                           ; $55d3: $1f
    rra                                           ; $55d4: $1f
    rra                                           ; $55d5: $1f
    rra                                           ; $55d6: $1f
    db $10                                        ; $55d7: $10
    ccf                                           ; $55d8: $3f
    ccf                                           ; $55d9: $3f
    ld b, b                                       ; $55da: $40

jr_021_55db:
    ld a, a                                       ; $55db: $7f
    ccf                                           ; $55dc: $3f
    ccf                                           ; $55dd: $3f
    rrca                                          ; $55de: $0f
    ld a, [bc]                                    ; $55df: $0a
    rrca                                          ; $55e0: $0f
    ld [$0407], sp                                ; $55e1: $08 $07 $04
    rlca                                          ; $55e4: $07
    rlca                                          ; $55e5: $07
    rlca                                          ; $55e6: $07
    dec b                                         ; $55e7: $05
    rrca                                          ; $55e8: $0f
    dec bc                                        ; $55e9: $0b
    ld e, $1f                                     ; $55ea: $1e $1f
    rla                                           ; $55ec: $17
    rra                                           ; $55ed: $1f
    ld c, $0e                                     ; $55ee: $0e $0e
    ret nz                                        ; $55f0: $c0

    ret nz                                        ; $55f1: $c0

    ldh [$e0], a                                  ; $55f2: $e0 $e0
    ld hl, sp+$38                                 ; $55f4: $f8 $38
    ret z                                         ; $55f6: $c8

    ld hl, sp+$10                                 ; $55f7: $f8 $10
    ldh a, [$e0]                                  ; $55f9: $f0 $e0
    ldh [$e0], a                                  ; $55fb: $e0 $e0
    and b                                         ; $55fd: $a0
    ldh [$a0], a                                  ; $55fe: $e0 $a0
    ret nz                                        ; $5600: $c0

    ld b, b                                       ; $5601: $40
    ldh [$e0], a                                  ; $5602: $e0 $e0
    ldh a, [$50]                                  ; $5604: $f0 $50
    ldh a, [rSVBK]                                ; $5606: $f0 $70
    and b                                         ; $5608: $a0
    ldh [$50], a                                  ; $5609: $e0 $50
    ldh a, [$b0]                                  ; $560b: $f0 $b0
    ldh a, [$e0]                                  ; $560d: $f0 $e0
    ldh [rTAC], a                                 ; $560f: $e0 $07
    rlca                                          ; $5611: $07
    rrca                                          ; $5612: $0f
    rrca                                          ; $5613: $0f
    ccf                                           ; $5614: $3f
    jr nc, jr_021_5666                            ; $5615: $30 $4f

    ld a, a                                       ; $5617: $7f
    ld [hl], b                                    ; $5618: $70
    ld a, a                                       ; $5619: $7f
    ccf                                           ; $561a: $3f
    ccf                                           ; $561b: $3f
    ccf                                           ; $561c: $3f
    cpl                                           ; $561d: $2f
    ccf                                           ; $561e: $3f
    dec hl                                        ; $561f: $2b
    ld a, a                                       ; $5620: $7f
    ld e, h                                       ; $5621: $5c
    ld a, a                                       ; $5622: $7f
    ld a, b                                       ; $5623: $78
    rrca                                          ; $5624: $0f
    ld [$0f0f], sp                                ; $5625: $08 $0f $0f
    rrca                                          ; $5628: $0f
    rrca                                          ; $5629: $0f
    add hl, bc                                    ; $562a: $09
    rrca                                          ; $562b: $0f
    add hl, bc                                    ; $562c: $09
    rrca                                          ; $562d: $0f
    rlca                                          ; $562e: $07
    rlca                                          ; $562f: $07
    ret nz                                        ; $5630: $c0

    ret nz                                        ; $5631: $c0

    ldh [$e0], a                                  ; $5632: $e0 $e0
    ld hl, sp+$18                                 ; $5634: $f8 $18
    db $e4                                        ; $5636: $e4
    db $fc                                        ; $5637: $fc
    inc e                                         ; $5638: $1c
    db $fc                                        ; $5639: $fc
    ld hl, sp-$08                                 ; $563a: $f8 $f8
    ld hl, sp-$18                                 ; $563c: $f8 $e8
    ld hl, sp-$58                                 ; $563e: $f8 $a8
    ldh a, [rSVBK]                                ; $5640: $f0 $70
    ld hl, sp+$28                                 ; $5642: $f8 $28
    db $fc                                        ; $5644: $fc
    inc h                                         ; $5645: $24
    db $fc                                        ; $5646: $fc
    db $fc                                        ; $5647: $fc
    inc a                                         ; $5648: $3c
    db $fc                                        ; $5649: $fc
    db $ec                                        ; $564a: $ec
    db $ec                                        ; $564b: $ec
    ret nz                                        ; $564c: $c0

    ret nz                                        ; $564d: $c0

    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    inc bc                                        ; $5650: $03
    inc bc                                        ; $5651: $03
    rlca                                          ; $5652: $07
    rlca                                          ; $5653: $07
    rra                                           ; $5654: $1f
    inc e                                         ; $5655: $1c
    inc de                                        ; $5656: $13
    rra                                           ; $5657: $1f
    ld [$070f], sp                                ; $5658: $08 $0f $07
    rlca                                          ; $565b: $07
    rlca                                          ; $565c: $07
    dec b                                         ; $565d: $05
    rlca                                          ; $565e: $07
    dec b                                         ; $565f: $05
    inc bc                                        ; $5660: $03
    ld [bc], a                                    ; $5661: $02
    rlca                                          ; $5662: $07
    rlca                                          ; $5663: $07
    rrca                                          ; $5664: $0f
    ld a, [bc]                                    ; $5665: $0a

jr_021_5666:
    rrca                                          ; $5666: $0f
    ld c, $05                                     ; $5667: $0e $05
    rlca                                          ; $5669: $07
    ld a, [bc]                                    ; $566a: $0a
    rrca                                          ; $566b: $0f
    dec c                                         ; $566c: $0d
    rrca                                          ; $566d: $0f
    rlca                                          ; $566e: $07
    rlca                                          ; $566f: $07
    ldh a, [$f0]                                  ; $5670: $f0 $f0
    ld [$f8f8], sp                                ; $5672: $08 $f8 $f8
    ld hl, sp-$08                                 ; $5675: $f8 $f8
    ld [$fcfc], sp                                ; $5677: $08 $fc $fc
    ld [bc], a                                    ; $567a: $02
    cp $fc                                        ; $567b: $fe $fc
    db $fc                                        ; $567d: $fc
    ldh a, [$50]                                  ; $567e: $f0 $50
    or $16                                        ; $5680: $f6 $16
    and $26                                       ; $5682: $e6 $26
    db $ec                                        ; $5684: $ec
    db $ec                                        ; $5685: $ec
    ld hl, sp-$48                                 ; $5686: $f8 $b8
    ldh a, [$d0]                                  ; $5688: $f0 $d0
    ld a, b                                       ; $568a: $78
    ld hl, sp-$18                                 ; $568b: $f8 $e8
    ld hl, sp+$70                                 ; $568d: $f8 $70
    ld [hl], b                                    ; $568f: $70
    rlca                                          ; $5690: $07
    rlca                                          ; $5691: $07
    ld [$3f0f], sp                                ; $5692: $08 $0f $3f
    scf                                           ; $5695: $37
    ld c, a                                       ; $5696: $4f
    ld a, b                                       ; $5697: $78
    ld h, a                                       ; $5698: $67
    ld a, a                                       ; $5699: $7f
    jr c, jr_021_56db                             ; $569a: $38 $3f

    ccf                                           ; $569c: $3f
    cpl                                           ; $569d: $2f
    ccf                                           ; $569e: $3f
    ld a, [hl+]                                   ; $569f: $2a
    ld a, a                                       ; $56a0: $7f
    ld a, b                                       ; $56a1: $78
    ld a, a                                       ; $56a2: $7f
    ld l, h                                       ; $56a3: $6c
    ld a, a                                       ; $56a4: $7f
    ld l, e                                       ; $56a5: $6b
    ld a, a                                       ; $56a6: $7f
    ld a, a                                       ; $56a7: $7f
    add hl, hl                                    ; $56a8: $29
    cpl                                           ; $56a9: $2f

jr_021_56aa:
    rrca                                          ; $56aa: $0f
    rrca                                          ; $56ab: $0f
    rlca                                          ; $56ac: $07
    rlca                                          ; $56ad: $07

jr_021_56ae:
    ld bc, $c001                                  ; $56ae: $01 $01 $c0
    ret nz                                        ; $56b1: $c0

    jr nz, @-$1e                                  ; $56b2: $20 $e0

    ld hl, sp-$28                                 ; $56b4: $f8 $d8
    db $e4                                        ; $56b6: $e4
    inc a                                         ; $56b7: $3c
    call z, Call_000_38fc                         ; $56b8: $cc $fc $38
    ld hl, sp-$08                                 ; $56bb: $f8 $f8
    add sp, -$08                                  ; $56bd: $e8 $f8
    xor b                                         ; $56bf: $a8
    db $fc                                        ; $56c0: $fc
    inc [hl]                                      ; $56c1: $34
    db $fc                                        ; $56c2: $fc
    ld a, h                                       ; $56c3: $7c
    ldh [$a0], a                                  ; $56c4: $e0 $a0
    ldh [$e0], a                                  ; $56c6: $e0 $e0
    jr nz, jr_021_56aa                            ; $56c8: $20 $e0

    ldh [$e0], a                                  ; $56ca: $e0 $e0
    jr nz, jr_021_56ae                            ; $56cc: $20 $e0

    ret nz                                        ; $56ce: $c0

    ret nz                                        ; $56cf: $c0

    rrca                                          ; $56d0: $0f
    rrca                                          ; $56d1: $0f
    db $10                                        ; $56d2: $10
    rra                                           ; $56d3: $1f
    rra                                           ; $56d4: $1f
    rra                                           ; $56d5: $1f
    rra                                           ; $56d6: $1f
    db $10                                        ; $56d7: $10
    ccf                                           ; $56d8: $3f
    ccf                                           ; $56d9: $3f
    ld b, b                                       ; $56da: $40

jr_021_56db:
    ld a, a                                       ; $56db: $7f
    ld a, a                                       ; $56dc: $7f
    ld a, a                                       ; $56dd: $7f
    ld l, a                                       ; $56de: $6f
    ld l, d                                       ; $56df: $6a
    ccf                                           ; $56e0: $3f
    jr c, jr_021_5702                             ; $56e1: $38 $1f

    inc e                                         ; $56e3: $1c
    rra                                           ; $56e4: $1f
    rla                                           ; $56e5: $17
    rrca                                          ; $56e6: $0f
    ld c, $0b                                     ; $56e7: $0e $0b
    rrca                                          ; $56e9: $0f
    inc d                                         ; $56ea: $14
    rra                                           ; $56eb: $1f
    dec de                                        ; $56ec: $1b
    rra                                           ; $56ed: $1f
    ld c, $0e                                     ; $56ee: $0e $0e
    ret nz                                        ; $56f0: $c0

    ret nz                                        ; $56f1: $c0

    ldh [$e0], a                                  ; $56f2: $e0 $e0
    ld hl, sp+$38                                 ; $56f4: $f8 $38
    ret z                                         ; $56f6: $c8

    ld hl, sp+$10                                 ; $56f7: $f8 $10
    ldh a, [$e0]                                  ; $56f9: $f0 $e0
    ldh [$e0], a                                  ; $56fb: $e0 $e0
    and b                                         ; $56fd: $a0
    ldh [$a0], a                                  ; $56fe: $e0 $a0
    ret nz                                        ; $5700: $c0

    ld b, b                                       ; $5701: $40

jr_021_5702:
    ret nz                                        ; $5702: $c0

    ret nz                                        ; $5703: $c0

    ldh [$60], a                                  ; $5704: $e0 $60
    ldh a, [$50]                                  ; $5706: $f0 $50
    ld hl, sp-$18                                 ; $5708: $f8 $e8
    ld hl, sp-$08                                 ; $570a: $f8 $f8
    ret nc                                        ; $570c: $d0

    ldh a, [$e0]                                  ; $570d: $f0 $e0
    ldh [rTAC], a                                 ; $570f: $e0 $07
    rlca                                          ; $5711: $07
    rrca                                          ; $5712: $0f
    rrca                                          ; $5713: $0f
    ccf                                           ; $5714: $3f
    jr nc, jr_021_5766                            ; $5715: $30 $4f

    ld a, a                                       ; $5717: $7f
    ld [hl], b                                    ; $5718: $70
    ld a, a                                       ; $5719: $7f
    ccf                                           ; $571a: $3f
    ccf                                           ; $571b: $3f
    ccf                                           ; $571c: $3f
    cpl                                           ; $571d: $2f
    ccf                                           ; $571e: $3f
    dec hl                                        ; $571f: $2b
    rra                                           ; $5720: $1f
    inc e                                         ; $5721: $1c
    ccf                                           ; $5722: $3f
    jr z, jr_021_57a4                             ; $5723: $28 $7f

    ld c, b                                       ; $5725: $48
    ld a, a                                       ; $5726: $7f
    ld a, a                                       ; $5727: $7f
    add hl, sp                                    ; $5728: $39
    ccf                                           ; $5729: $3f
    rrca                                          ; $572a: $0f
    rrca                                          ; $572b: $0f

jr_021_572c:
    rlca                                          ; $572c: $07
    rlca                                          ; $572d: $07

jr_021_572e:
    ld bc, $c001                                  ; $572e: $01 $01 $c0
    ret nz                                        ; $5731: $c0

    ldh [$e0], a                                  ; $5732: $e0 $e0
    ld hl, sp+$18                                 ; $5734: $f8 $18
    db $e4                                        ; $5736: $e4
    db $fc                                        ; $5737: $fc
    inc e                                         ; $5738: $1c
    db $fc                                        ; $5739: $fc
    db $fc                                        ; $573a: $fc
    db $fc                                        ; $573b: $fc
    ld hl, sp-$18                                 ; $573c: $f8 $e8
    ld hl, sp-$58                                 ; $573e: $f8 $a8
    db $fc                                        ; $5740: $fc
    ld [hl], h                                    ; $5741: $74
    db $fc                                        ; $5742: $fc
    inc a                                         ; $5743: $3c
    ldh [rNR41], a                                ; $5744: $e0 $20
    ldh [$e0], a                                  ; $5746: $e0 $e0
    ldh [$e0], a                                  ; $5748: $e0 $e0
    jr nz, jr_021_572c                            ; $574a: $20 $e0

    jr nz, jr_021_572e                            ; $574c: $20 $e0

    ret nz                                        ; $574e: $c0

    ret nz                                        ; $574f: $c0

    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    ld bc, $0301                                  ; $5752: $01 $01 $03
    inc bc                                        ; $5755: $03
    rrca                                          ; $5756: $0f
    ld c, $09                                     ; $5757: $0e $09
    rrca                                          ; $5759: $0f
    ld b, $07                                     ; $575a: $06 $07
    inc bc                                        ; $575c: $03
    inc bc                                        ; $575d: $03
    inc bc                                        ; $575e: $03
    ld [bc], a                                    ; $575f: $02
    inc bc                                        ; $5760: $03
    ld [bc], a                                    ; $5761: $02
    ld bc, $0301                                  ; $5762: $01 $01 $03
    ld [bc], a                                    ; $5765: $02

jr_021_5766:
    inc bc                                        ; $5766: $03
    ld [bc], a                                    ; $5767: $02
    dec b                                         ; $5768: $05
    rlca                                          ; $5769: $07
    dec b                                         ; $576a: $05
    rlca                                          ; $576b: $07

jr_021_576c:
    ld [bc], a                                    ; $576c: $02
    inc bc                                        ; $576d: $03
    inc bc                                        ; $576e: $03
    inc bc                                        ; $576f: $03
    ret nz                                        ; $5770: $c0

    ret nz                                        ; $5771: $c0

    jr c, jr_021_576c                             ; $5772: $38 $f8

    add h                                         ; $5774: $84
    db $fc                                        ; $5775: $fc
    db $e4                                        ; $5776: $e4
    ld a, h                                       ; $5777: $7c
    db $fc                                        ; $5778: $fc
    sbc h                                         ; $5779: $9c
    ld a, h                                       ; $577a: $7c
    db $e4                                        ; $577b: $e4
    sbc [hl]                                      ; $577c: $9e
    cp $e1                                        ; $577d: $fe $e1
    rst $38                                       ; $577f: $ff
    cp $be                                        ; $5780: $fe $be
    ld hl, sp+$08                                 ; $5782: $f8 $08
    ldh a, [$90]                                  ; $5784: $f0 $90
    ldh [$e0], a                                  ; $5786: $e0 $e0
    ldh [$a0], a                                  ; $5788: $e0 $a0
    ldh a, [$d0]                                  ; $578a: $f0 $d0
    ld a, e                                       ; $578c: $7b
    ei                                            ; $578d: $fb
    rst $08                                       ; $578e: $cf
    rst $08                                       ; $578f: $cf
    rlca                                          ; $5790: $07
    rlca                                          ; $5791: $07
    ld [$380f], sp                                ; $5792: $08 $0f $38
    ccf                                           ; $5795: $3f
    ld e, [hl]                                    ; $5796: $5e
    ld [hl], a                                    ; $5797: $77
    ld c, a                                       ; $5798: $4f
    ld a, c                                       ; $5799: $79
    daa                                           ; $579a: $27
    ld a, $11                                     ; $579b: $3e $11
    rra                                           ; $579d: $1f
    inc e                                         ; $579e: $1c
    rra                                           ; $579f: $1f
    rra                                           ; $57a0: $1f
    rla                                           ; $57a1: $17
    rrca                                          ; $57a2: $0f
    inc c                                         ; $57a3: $0c

jr_021_57a4:
    rrca                                          ; $57a4: $0f
    ld a, [bc]                                    ; $57a5: $0a
    rrca                                          ; $57a6: $0f
    dec c                                         ; $57a7: $0d
    dec bc                                        ; $57a8: $0b
    ld c, $0f                                     ; $57a9: $0e $0f
    rrca                                          ; $57ab: $0f
    inc de                                        ; $57ac: $13
    rra                                           ; $57ad: $1f

jr_021_57ae:
    rra                                           ; $57ae: $1f
    rra                                           ; $57af: $1f
    ret nz                                        ; $57b0: $c0

    ret nz                                        ; $57b1: $c0

    jr nz, @-$1e                                  ; $57b2: $20 $e0

    jr jr_021_57ae                                ; $57b4: $18 $f8

    inc [hl]                                      ; $57b6: $34
    db $fc                                        ; $57b7: $fc
    db $f4                                        ; $57b8: $f4
    call c, Call_000_3ce4                         ; $57b9: $dc $e4 $3c
    ret z                                         ; $57bc: $c8

    ld hl, sp+$18                                 ; $57bd: $f8 $18
    ld hl, sp-$08                                 ; $57bf: $f8 $f8
    add sp, -$10                                  ; $57c1: $e8 $f0
    jr nc, @-$0e                                  ; $57c3: $30 $f0

    ld d, b                                       ; $57c5: $50
    ldh a, [$b0]                                  ; $57c6: $f0 $b0
    ret nc                                        ; $57c8: $d0

    ldh a, [$f0]                                  ; $57c9: $f0 $f0
    ldh a, [rOBP0]                                ; $57cb: $f0 $48
    ld a, b                                       ; $57cd: $78
    ld a, b                                       ; $57ce: $78
    ld a, b                                       ; $57cf: $78
    inc bc                                        ; $57d0: $03
    inc bc                                        ; $57d1: $03
    inc e                                         ; $57d2: $1c
    rra                                           ; $57d3: $1f
    ld hl, $273f                                  ; $57d4: $21 $3f $27
    ld a, $3f                                     ; $57d7: $3e $3f
    add hl, sp                                    ; $57d9: $39
    ld a, $27                                     ; $57da: $3e $27
    ld a, c                                       ; $57dc: $79
    ld a, a                                       ; $57dd: $7f
    add a                                         ; $57de: $87
    rst $38                                       ; $57df: $ff
    ld a, a                                       ; $57e0: $7f
    ld a, l                                       ; $57e1: $7d
    rra                                           ; $57e2: $1f
    db $10                                        ; $57e3: $10
    rrca                                          ; $57e4: $0f
    add hl, bc                                    ; $57e5: $09
    rlca                                          ; $57e6: $07
    rlca                                          ; $57e7: $07
    rlca                                          ; $57e8: $07
    dec b                                         ; $57e9: $05
    dec bc                                        ; $57ea: $0b
    rrca                                          ; $57eb: $0f
    sbc $df                                       ; $57ec: $de $df
    di                                            ; $57ee: $f3
    di                                            ; $57ef: $f3
    nop                                           ; $57f0: $00
    nop                                           ; $57f1: $00
    add b                                         ; $57f2: $80
    add b                                         ; $57f3: $80
    ret nz                                        ; $57f4: $c0

    ret nz                                        ; $57f5: $c0

    ldh a, [rSVBK]                                ; $57f6: $f0 $70
    sub b                                         ; $57f8: $90
    ldh a, [$60]                                  ; $57f9: $f0 $60
    ldh [$c0], a                                  ; $57fb: $e0 $c0
    ret nz                                        ; $57fd: $c0

    ret nz                                        ; $57fe: $c0

    ld b, b                                       ; $57ff: $40
    ret nz                                        ; $5800: $c0

    ld b, b                                       ; $5801: $40
    add b                                         ; $5802: $80
    add b                                         ; $5803: $80
    ret nz                                        ; $5804: $c0

    ld b, b                                       ; $5805: $40
    ret nz                                        ; $5806: $c0

    ld b, b                                       ; $5807: $40
    and b                                         ; $5808: $a0
    ldh [$a0], a                                  ; $5809: $e0 $a0
    ldh [rLCDC], a                                ; $580b: $e0 $40
    ret nz                                        ; $580d: $c0

    ret nz                                        ; $580e: $c0

    ret nz                                        ; $580f: $c0

    rlca                                          ; $5810: $07
    rlca                                          ; $5811: $07
    rrca                                          ; $5812: $0f
    ld [$0f0f], sp                                ; $5813: $08 $0f $0f
    jr @+$21                                      ; $5816: $18 $1f

    inc hl                                        ; $5818: $23
    ccf                                           ; $5819: $3f
    ld c, a                                       ; $581a: $4f
    ld a, a                                       ; $581b: $7f
    ld e, a                                       ; $581c: $5f
    ld [hl], a                                    ; $581d: $77
    cpl                                           ; $581e: $2f
    ld a, [hl-]                                   ; $581f: $3a
    rra                                           ; $5820: $1f
    rra                                           ; $5821: $1f
    rlca                                          ; $5822: $07
    inc b                                         ; $5823: $04
    rrca                                          ; $5824: $0f
    ld a, [bc]                                    ; $5825: $0a
    rrca                                          ; $5826: $0f
    dec bc                                        ; $5827: $0b
    inc b                                         ; $5828: $04
    rlca                                          ; $5829: $07
    rlca                                          ; $582a: $07
    rlca                                          ; $582b: $07
    add hl, bc                                    ; $582c: $09
    rrca                                          ; $582d: $0f
    rrca                                          ; $582e: $0f
    rrca                                          ; $582f: $0f
    ldh [$e0], a                                  ; $5830: $e0 $e0
    ldh a, [rNR10]                                ; $5832: $f0 $10
    ldh a, [$f0]                                  ; $5834: $f0 $f0
    ld [$e4f8], sp                                ; $5836: $08 $f8 $e4
    db $fc                                        ; $5839: $fc
    db $f4                                        ; $583a: $f4
    db $fc                                        ; $583b: $fc
    ld hl, sp-$08                                 ; $583c: $f8 $f8
    ldh a, [$d0]                                  ; $583e: $f0 $d0
    ldh a, [$30]                                  ; $5840: $f0 $30
    ldh a, [$30]                                  ; $5842: $f0 $30
    ld hl, sp+$28                                 ; $5844: $f8 $28
    ld hl, sp-$08                                 ; $5846: $f8 $f8
    sub b                                         ; $5848: $90
    ldh a, [$f0]                                  ; $5849: $f0 $f0
    ldh a, [$c8]                                  ; $584b: $f0 $c8
    ld hl, sp-$08                                 ; $584d: $f8 $f8
    ld hl, sp+$00                                 ; $584f: $f8 $00
    nop                                           ; $5851: $00
    ld bc, $0301                                  ; $5852: $01 $01 $03
    inc bc                                        ; $5855: $03
    rrca                                          ; $5856: $0f
    ld c, $09                                     ; $5857: $0e $09
    rrca                                          ; $5859: $0f
    ld b, $07                                     ; $585a: $06 $07
    inc bc                                        ; $585c: $03
    inc bc                                        ; $585d: $03
    inc bc                                        ; $585e: $03
    ld [bc], a                                    ; $585f: $02
    inc bc                                        ; $5860: $03
    ld [bc], a                                    ; $5861: $02
    ld bc, $0f01                                  ; $5862: $01 $01 $0f
    ld c, $0f                                     ; $5865: $0e $0f
    rrca                                          ; $5867: $0f
    rlca                                          ; $5868: $07
    rlca                                          ; $5869: $07
    dec b                                         ; $586a: $05
    rlca                                          ; $586b: $07

jr_021_586c:
    ld [bc], a                                    ; $586c: $02
    inc bc                                        ; $586d: $03
    inc bc                                        ; $586e: $03
    inc bc                                        ; $586f: $03
    ret nz                                        ; $5870: $c0

    ret nz                                        ; $5871: $c0

    jr c, jr_021_586c                             ; $5872: $38 $f8

    add h                                         ; $5874: $84
    db $fc                                        ; $5875: $fc
    db $e4                                        ; $5876: $e4
    ld a, h                                       ; $5877: $7c
    db $fc                                        ; $5878: $fc
    sbc h                                         ; $5879: $9c
    ld a, h                                       ; $587a: $7c
    db $e4                                        ; $587b: $e4
    sbc [hl]                                      ; $587c: $9e
    cp $e1                                        ; $587d: $fe $e1
    rst $38                                       ; $587f: $ff
    cp $be                                        ; $5880: $fe $be
    ld hl, sp+$08                                 ; $5882: $f8 $08
    ldh a, [$90]                                  ; $5884: $f0 $90
    ldh a, [$f0]                                  ; $5886: $f0 $f0
    ldh a, [$50]                                  ; $5888: $f0 $50
    ret nc                                        ; $588a: $d0

    ldh a, [$60]                                  ; $588b: $f0 $60
    ldh [$c0], a                                  ; $588d: $e0 $c0
    ret nz                                        ; $588f: $c0

    rlca                                          ; $5890: $07
    rlca                                          ; $5891: $07
    ld [$380f], sp                                ; $5892: $08 $0f $38
    ccf                                           ; $5895: $3f
    ld e, [hl]                                    ; $5896: $5e
    ld [hl], a                                    ; $5897: $77
    ld c, a                                       ; $5898: $4f
    ld a, c                                       ; $5899: $79
    daa                                           ; $589a: $27
    ld a, $11                                     ; $589b: $3e $11
    rra                                           ; $589d: $1f
    inc e                                         ; $589e: $1c
    rra                                           ; $589f: $1f
    rra                                           ; $58a0: $1f
    rla                                           ; $58a1: $17
    rrca                                          ; $58a2: $0f
    inc c                                         ; $58a3: $0c
    rst $08                                       ; $58a4: $cf

jr_021_58a5:
    jp z, $e7e7                                   ; $58a5: $ca $e7 $e7

    dec e                                         ; $58a8: $1d
    rra                                           ; $58a9: $1f
    rrca                                          ; $58aa: $0f
    rrca                                          ; $58ab: $0f
    ld [de], a                                    ; $58ac: $12
    ld e, $1e                                     ; $58ad: $1e $1e
    ld e, $c0                                     ; $58af: $1e $c0
    ret nz                                        ; $58b1: $c0

    jr nz, @-$1e                                  ; $58b2: $20 $e0

    jr @-$06                                      ; $58b4: $18 $f8

    inc [hl]                                      ; $58b6: $34
    db $fc                                        ; $58b7: $fc
    db $f4                                        ; $58b8: $f4
    call c, Call_000_3ce4                         ; $58b9: $dc $e4 $3c
    ret z                                         ; $58bc: $c8

    ld hl, sp+$18                                 ; $58bd: $f8 $18
    ld hl, sp-$08                                 ; $58bf: $f8 $f8
    add sp, -$10                                  ; $58c1: $e8 $f0
    jr nc, jr_021_58a5                            ; $58c3: $30 $e0

    ld h, b                                       ; $58c5: $60
    ldh [$a0], a                                  ; $58c6: $e0 $a0
    ret nc                                        ; $58c8: $d0

    ld [hl], b                                    ; $58c9: $70
    ldh a, [$f0]                                  ; $58ca: $f0 $f0
    ld c, b                                       ; $58cc: $48
    ld a, b                                       ; $58cd: $78
    ld a, b                                       ; $58ce: $78
    ld a, b                                       ; $58cf: $78
    inc bc                                        ; $58d0: $03
    inc bc                                        ; $58d1: $03
    inc e                                         ; $58d2: $1c
    rra                                           ; $58d3: $1f
    ld hl, $273f                                  ; $58d4: $21 $3f $27
    ld a, $3f                                     ; $58d7: $3e $3f
    add hl, sp                                    ; $58d9: $39
    ld a, $27                                     ; $58da: $3e $27
    ld a, c                                       ; $58dc: $79
    ld a, a                                       ; $58dd: $7f
    add a                                         ; $58de: $87
    rst $38                                       ; $58df: $ff
    ld a, a                                       ; $58e0: $7f
    ld a, l                                       ; $58e1: $7d
    rra                                           ; $58e2: $1f
    db $10                                        ; $58e3: $10
    rrca                                          ; $58e4: $0f
    add hl, bc                                    ; $58e5: $09
    rrca                                          ; $58e6: $0f
    ld c, $0f                                     ; $58e7: $0e $0f
    dec bc                                        ; $58e9: $0b

jr_021_58ea:
    rla                                           ; $58ea: $17
    rra                                           ; $58eb: $1f
    ld c, $0f                                     ; $58ec: $0e $0f
    inc bc                                        ; $58ee: $03
    inc bc                                        ; $58ef: $03
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    add b                                         ; $58f2: $80
    add b                                         ; $58f3: $80
    ret nz                                        ; $58f4: $c0

    ret nz                                        ; $58f5: $c0

    ldh a, [rSVBK]                                ; $58f6: $f0 $70
    sub b                                         ; $58f8: $90
    ldh a, [$60]                                  ; $58f9: $f0 $60
    ldh [$c0], a                                  ; $58fb: $e0 $c0
    ret nz                                        ; $58fd: $c0

    ret nz                                        ; $58fe: $c0

    ld b, b                                       ; $58ff: $40
    ret nz                                        ; $5900: $c0

    ld b, b                                       ; $5901: $40
    ldh a, [$f0]                                  ; $5902: $f0 $f0
    ldh a, [rSVBK]                                ; $5904: $f0 $70
    ret nz                                        ; $5906: $c0

    ret nz                                        ; $5907: $c0

    jr nz, jr_021_58ea                            ; $5908: $20 $e0

    and b                                         ; $590a: $a0
    ldh [rLCDC], a                                ; $590b: $e0 $40
    ret nz                                        ; $590d: $c0

    ret nz                                        ; $590e: $c0

    ret nz                                        ; $590f: $c0

    rlca                                          ; $5910: $07
    rlca                                          ; $5911: $07
    rrca                                          ; $5912: $0f
    ld [$0f0f], sp                                ; $5913: $08 $0f $0f
    jr @+$21                                      ; $5916: $18 $1f

    inc hl                                        ; $5918: $23
    ccf                                           ; $5919: $3f
    ld c, a                                       ; $591a: $4f
    ld a, a                                       ; $591b: $7f
    ld e, a                                       ; $591c: $5f
    ld [hl], a                                    ; $591d: $77
    cpl                                           ; $591e: $2f
    ld a, [hl-]                                   ; $591f: $3a
    rra                                           ; $5920: $1f
    ld e, $07                                     ; $5921: $1e $07
    inc b                                         ; $5923: $04
    rlca                                          ; $5924: $07
    inc b                                         ; $5925: $04
    rlca                                          ; $5926: $07
    rlca                                          ; $5927: $07
    inc b                                         ; $5928: $04
    rlca                                          ; $5929: $07
    rlca                                          ; $592a: $07
    rlca                                          ; $592b: $07
    add hl, bc                                    ; $592c: $09
    rrca                                          ; $592d: $0f
    rrca                                          ; $592e: $0f
    rrca                                          ; $592f: $0f
    ldh [$e0], a                                  ; $5930: $e0 $e0
    ldh a, [rNR10]                                ; $5932: $f0 $10
    ldh a, [$f0]                                  ; $5934: $f0 $f0
    ld [$e4f8], sp                                ; $5936: $08 $f8 $e4
    db $fc                                        ; $5939: $fc
    db $f4                                        ; $593a: $f4
    db $fc                                        ; $593b: $fc
    ld hl, sp-$08                                 ; $593c: $f8 $f8
    ldh a, [$d0]                                  ; $593e: $f0 $d0
    ldh a, [rSVBK]                                ; $5940: $f0 $70
    ei                                            ; $5942: $fb
    dec hl                                        ; $5943: $2b
    rst $38                                       ; $5944: $ff
    scf                                           ; $5945: $37
    cp $fe                                        ; $5946: $fe $fe
    sbc b                                         ; $5948: $98
    ld hl, sp-$10                                 ; $5949: $f8 $f0
    ldh a, [rOBP0]                                ; $594b: $f0 $48
    ld a, b                                       ; $594d: $78
    ld a, b                                       ; $594e: $78
    ld a, b                                       ; $594f: $78
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    ld bc, $0301                                  ; $5952: $01 $01 $03
    inc bc                                        ; $5955: $03
    ld l, a                                       ; $5956: $6f
    ld l, [hl]                                    ; $5957: $6e
    ld l, c                                       ; $5958: $69
    ld l, a                                       ; $5959: $6f
    ld h, [hl]                                    ; $595a: $66
    ld h, a                                       ; $595b: $67
    inc sp                                        ; $595c: $33
    inc sp                                        ; $595d: $33
    rra                                           ; $595e: $1f
    ld e, $0f                                     ; $595f: $1e $0f
    ld a, [bc]                                    ; $5961: $0a
    rrca                                          ; $5962: $0f
    rrca                                          ; $5963: $0f
    ld c, $0b                                     ; $5964: $0e $0b
    rlca                                          ; $5966: $07
    rlca                                          ; $5967: $07
    inc b                                         ; $5968: $04
    rlca                                          ; $5969: $07
    dec b                                         ; $596a: $05
    rlca                                          ; $596b: $07

jr_021_596c:
    ld [bc], a                                    ; $596c: $02
    inc bc                                        ; $596d: $03
    inc bc                                        ; $596e: $03
    inc bc                                        ; $596f: $03
    ret nz                                        ; $5970: $c0

    ret nz                                        ; $5971: $c0

    jr c, jr_021_596c                             ; $5972: $38 $f8

    add h                                         ; $5974: $84
    db $fc                                        ; $5975: $fc
    db $e4                                        ; $5976: $e4
    ld a, h                                       ; $5977: $7c
    db $fc                                        ; $5978: $fc
    sbc h                                         ; $5979: $9c
    ld a, h                                       ; $597a: $7c
    db $e4                                        ; $597b: $e4
    sbc [hl]                                      ; $597c: $9e
    cp $e1                                        ; $597d: $fe $e1
    rst $38                                       ; $597f: $ff
    cp $be                                        ; $5980: $fe $be
    ld hl, sp+$08                                 ; $5982: $f8 $08
    ldh a, [$90]                                  ; $5984: $f0 $90
    ldh a, [rSVBK]                                ; $5986: $f0 $70
    ldh a, [$b0]                                  ; $5988: $f0 $b0
    ldh [$e0], a                                  ; $598a: $e0 $e0
    ld b, b                                       ; $598c: $40
    ret nz                                        ; $598d: $c0

    ret nz                                        ; $598e: $c0

    ret nz                                        ; $598f: $c0

    rlca                                          ; $5990: $07
    rlca                                          ; $5991: $07
    ld [$380f], sp                                ; $5992: $08 $0f $38
    ccf                                           ; $5995: $3f
    sbc $f7                                       ; $5996: $de $f7
    rst $08                                       ; $5998: $cf
    ld sp, hl                                     ; $5999: $f9
    rst $20                                       ; $599a: $e7
    cp $51                                        ; $599b: $fe $51
    ld e, a                                       ; $599d: $5f
    ld a, h                                       ; $599e: $7c
    ld a, a                                       ; $599f: $7f
    ccf                                           ; $59a0: $3f
    scf                                           ; $59a1: $37
    ccf                                           ; $59a2: $3f
    inc a                                         ; $59a3: $3c
    ccf                                           ; $59a4: $3f

jr_021_59a5:
    ld l, $17                                     ; $59a5: $2e $17
    rra                                           ; $59a7: $1f
    rrca                                          ; $59a8: $0f
    dec c                                         ; $59a9: $0d
    rrca                                          ; $59aa: $0f
    rrca                                          ; $59ab: $0f
    ld [de], a                                    ; $59ac: $12
    ld e, $1e                                     ; $59ad: $1e $1e
    ld e, $c0                                     ; $59af: $1e $c0
    ret nz                                        ; $59b1: $c0

    jr nz, @-$1e                                  ; $59b2: $20 $e0

    jr @-$06                                      ; $59b4: $18 $f8

    inc [hl]                                      ; $59b6: $34
    db $fc                                        ; $59b7: $fc
    db $f4                                        ; $59b8: $f4
    call c, Call_000_3ce4                         ; $59b9: $dc $e4 $3c
    ret z                                         ; $59bc: $c8

    ld hl, sp+$18                                 ; $59bd: $f8 $18
    ld hl, sp-$08                                 ; $59bf: $f8 $f8
    add sp, -$10                                  ; $59c1: $e8 $f0
    jr nc, jr_021_59a5                            ; $59c3: $30 $e0

    ld h, b                                       ; $59c5: $60
    ldh [$a0], a                                  ; $59c6: $e0 $a0
    ret nc                                        ; $59c8: $d0

    ld [hl], b                                    ; $59c9: $70
    ldh a, [$f0]                                  ; $59ca: $f0 $f0
    ld c, b                                       ; $59cc: $48
    ld a, b                                       ; $59cd: $78
    ld a, b                                       ; $59ce: $78
    ld a, b                                       ; $59cf: $78
    inc bc                                        ; $59d0: $03
    inc bc                                        ; $59d1: $03
    inc e                                         ; $59d2: $1c
    rra                                           ; $59d3: $1f
    ld hl, $273f                                  ; $59d4: $21 $3f $27
    ld a, $3f                                     ; $59d7: $3e $3f
    add hl, sp                                    ; $59d9: $39
    ld a, $27                                     ; $59da: $3e $27
    ld a, c                                       ; $59dc: $79
    ld a, a                                       ; $59dd: $7f
    add a                                         ; $59de: $87
    rst $38                                       ; $59df: $ff
    ld a, a                                       ; $59e0: $7f
    ld a, l                                       ; $59e1: $7d
    rra                                           ; $59e2: $1f
    db $10                                        ; $59e3: $10
    rrca                                          ; $59e4: $0f
    add hl, bc                                    ; $59e5: $09
    rlca                                          ; $59e6: $07
    ld b, $07                                     ; $59e7: $06 $07
    rlca                                          ; $59e9: $07

jr_021_59ea:
    inc bc                                        ; $59ea: $03
    inc bc                                        ; $59eb: $03
    ld [bc], a                                    ; $59ec: $02
    inc bc                                        ; $59ed: $03
    inc bc                                        ; $59ee: $03
    inc bc                                        ; $59ef: $03
    nop                                           ; $59f0: $00
    nop                                           ; $59f1: $00
    add b                                         ; $59f2: $80
    add b                                         ; $59f3: $80
    ret nz                                        ; $59f4: $c0

    ret nz                                        ; $59f5: $c0

    or $76                                        ; $59f6: $f6 $76
    sub [hl]                                      ; $59f8: $96
    or $66                                        ; $59f9: $f6 $66
    and $cc                                       ; $59fb: $e6 $cc
    call z, Call_021_78f8                         ; $59fd: $cc $f8 $78
    ldh a, [$50]                                  ; $5a00: $f0 $50
    ldh [$e0], a                                  ; $5a02: $e0 $e0
    ret nz                                        ; $5a04: $c0

    ld b, b                                       ; $5a05: $40
    ret nz                                        ; $5a06: $c0

    ret nz                                        ; $5a07: $c0

    jr nz, jr_021_59ea                            ; $5a08: $20 $e0

    and b                                         ; $5a0a: $a0
    ldh [rLCDC], a                                ; $5a0b: $e0 $40
    ret nz                                        ; $5a0d: $c0

    ret nz                                        ; $5a0e: $c0

    ret nz                                        ; $5a0f: $c0

    rlca                                          ; $5a10: $07
    rlca                                          ; $5a11: $07
    rrca                                          ; $5a12: $0f
    ld [$0f0f], sp                                ; $5a13: $08 $0f $0f
    jr jr_021_5a37                                ; $5a16: $18 $1f

    inc hl                                        ; $5a18: $23
    ccf                                           ; $5a19: $3f
    ld c, a                                       ; $5a1a: $4f
    ld a, a                                       ; $5a1b: $7f
    ld e, a                                       ; $5a1c: $5f
    ld [hl], a                                    ; $5a1d: $77
    cpl                                           ; $5a1e: $2f
    ld a, [hl-]                                   ; $5a1f: $3a
    rra                                           ; $5a20: $1f
    rra                                           ; $5a21: $1f
    rlca                                          ; $5a22: $07
    inc b                                         ; $5a23: $04
    rlca                                          ; $5a24: $07
    inc b                                         ; $5a25: $04
    rlca                                          ; $5a26: $07
    rlca                                          ; $5a27: $07
    dec b                                         ; $5a28: $05
    rlca                                          ; $5a29: $07
    rlca                                          ; $5a2a: $07
    rlca                                          ; $5a2b: $07
    add hl, bc                                    ; $5a2c: $09
    rrca                                          ; $5a2d: $0f
    rrca                                          ; $5a2e: $0f
    rrca                                          ; $5a2f: $0f
    ldh [$e0], a                                  ; $5a30: $e0 $e0
    ldh a, [rNR10]                                ; $5a32: $f0 $10
    ldh a, [$f0]                                  ; $5a34: $f0 $f0
    dec bc                                        ; $5a36: $0b

jr_021_5a37:
    ei                                            ; $5a37: $fb
    rst $20                                       ; $5a38: $e7
    rst $38                                       ; $5a39: $ff

jr_021_5a3a:
    push af                                       ; $5a3a: $f5
    db $fd                                        ; $5a3b: $fd
    ei                                            ; $5a3c: $fb
    ei                                            ; $5a3d: $fb
    cp $de                                        ; $5a3e: $fe $de
    cp $fa                                        ; $5a40: $fe $fa
    db $fc                                        ; $5a42: $fc
    ld d, h                                       ; $5a43: $54
    db $fc                                        ; $5a44: $fc
    inc l                                         ; $5a45: $2c
    ld hl, sp-$08                                 ; $5a46: $f8 $f8
    jr nc, jr_021_5a3a                            ; $5a48: $30 $f0

    ldh a, [$f0]                                  ; $5a4a: $f0 $f0
    ld c, b                                       ; $5a4c: $48
    ld a, b                                       ; $5a4d: $78
    ld a, b                                       ; $5a4e: $78
    ld a, b                                       ; $5a4f: $78
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    ld bc, $0301                                  ; $5a52: $01 $01 $03
    inc bc                                        ; $5a55: $03
    rst $18                                       ; $5a56: $df
    rst $18                                       ; $5a57: $df
    ret nc                                        ; $5a58: $d0

    rst $18                                       ; $5a59: $df
    set 1, a                                      ; $5a5a: $cb $cf
    ld h, a                                       ; $5a5c: $67
    ld h, l                                       ; $5a5d: $65
    ccf                                           ; $5a5e: $3f
    dec a                                         ; $5a5f: $3d
    rra                                           ; $5a60: $1f
    rla                                           ; $5a61: $17
    rrca                                          ; $5a62: $0f
    ld a, [bc]                                    ; $5a63: $0a
    rlca                                          ; $5a64: $07
    inc b                                         ; $5a65: $04
    rlca                                          ; $5a66: $07
    rlca                                          ; $5a67: $07
    inc b                                         ; $5a68: $04
    rlca                                          ; $5a69: $07
    dec b                                         ; $5a6a: $05
    rlca                                          ; $5a6b: $07

jr_021_5a6c:
    ld [bc], a                                    ; $5a6c: $02
    inc bc                                        ; $5a6d: $03
    inc bc                                        ; $5a6e: $03
    inc bc                                        ; $5a6f: $03
    ldh [$e0], a                                  ; $5a70: $e0 $e0
    jr jr_021_5a6c                                ; $5a72: $18 $f8

    db $e4                                        ; $5a74: $e4
    db $fc                                        ; $5a75: $fc
    db $f4                                        ; $5a76: $f4
    sbc h                                         ; $5a77: $9c
    ld a, h                                       ; $5a78: $7c
    db $fc                                        ; $5a79: $fc
    adc [hl]                                      ; $5a7a: $8e
    cp $f1                                        ; $5a7b: $fe $f1
    rst $38                                       ; $5a7d: $ff
    cp $fe                                        ; $5a7e: $fe $fe
    ld hl, sp-$18                                 ; $5a80: $f8 $e8
    ldh a, [$50]                                  ; $5a82: $f0 $50
    ldh [rNR41], a                                ; $5a84: $e0 $20
    ldh [rNR41], a                                ; $5a86: $e0 $20
    ldh [$e0], a                                  ; $5a88: $e0 $e0
    and b                                         ; $5a8a: $a0
    ldh [$d0], a                                  ; $5a8b: $e0 $d0
    ldh a, [$f0]                                  ; $5a8d: $f0 $f0
    ldh a, [$03]                                  ; $5a8f: $f0 $03
    inc bc                                        ; $5a91: $03
    rlca                                          ; $5a92: $07
    rlca                                          ; $5a93: $07
    rra                                           ; $5a94: $1f
    inc e                                         ; $5a95: $1c
    ld [hl], e                                    ; $5a96: $73
    ld a, a                                       ; $5a97: $7f
    ld l, b                                       ; $5a98: $68
    ld l, a                                       ; $5a99: $6f
    ld [hl], a                                    ; $5a9a: $77
    ld [hl], a                                    ; $5a9b: $77
    rra                                           ; $5a9c: $1f
    inc e                                         ; $5a9d: $1c
    rrca                                          ; $5a9e: $0f
    ld c, $07                                     ; $5a9f: $0e $07
    dec b                                         ; $5aa1: $05
    inc bc                                        ; $5aa2: $03
    inc bc                                        ; $5aa3: $03
    inc bc                                        ; $5aa4: $03
    ld [bc], a                                    ; $5aa5: $02
    inc bc                                        ; $5aa6: $03
    inc bc                                        ; $5aa7: $03
    ld b, $07                                     ; $5aa8: $06 $07
    dec bc                                        ; $5aaa: $0b
    rrca                                          ; $5aab: $0f
    dec c                                         ; $5aac: $0d
    rrca                                          ; $5aad: $0f
    rlca                                          ; $5aae: $07
    rlca                                          ; $5aaf: $07
    ldh a, [$f0]                                  ; $5ab0: $f0 $f0
    ld [$f8f8], sp                                ; $5ab2: $08 $f8 $f8
    ld hl, sp-$08                                 ; $5ab5: $f8 $f8
    ld [$fcfc], sp                                ; $5ab7: $08 $fc $fc
    ld [bc], a                                    ; $5aba: $02
    cp $fc                                        ; $5abb: $fe $fc
    db $fc                                        ; $5abd: $fc
    ld hl, sp-$58                                 ; $5abe: $f8 $a8
    ld hl, sp+$08                                 ; $5ac0: $f8 $08
    ld hl, sp-$68                                 ; $5ac2: $f8 $98
    ld hl, sp-$18                                 ; $5ac4: $f8 $e8
    ldh a, [$50]                                  ; $5ac6: $f0 $50
    ldh a, [$f0]                                  ; $5ac8: $f0 $f0
    ldh a, [$f0]                                  ; $5aca: $f0 $f0
    ld c, b                                       ; $5acc: $48
    ld a, b                                       ; $5acd: $78
    ld a, b                                       ; $5ace: $78
    ld a, b                                       ; $5acf: $78
    rlca                                          ; $5ad0: $07
    rlca                                          ; $5ad1: $07
    jr jr_021_5af3                                ; $5ad2: $18 $1f

    inc hl                                        ; $5ad4: $23
    ccf                                           ; $5ad5: $3f
    cpl                                           ; $5ad6: $2f
    inc a                                         ; $5ad7: $3c
    ccf                                           ; $5ad8: $3f
    inc sp                                        ; $5ad9: $33
    ccf                                           ; $5ada: $3f
    cpl                                           ; $5adb: $2f
    ccf                                           ; $5adc: $3f
    ld a, [hl-]                                   ; $5add: $3a
    ld e, a                                       ; $5ade: $5f
    ld a, b                                       ; $5adf: $78
    ld a, a                                       ; $5ae0: $7f
    ld [hl], b                                    ; $5ae1: $70
    rrca                                          ; $5ae2: $0f
    ld [$0707], sp                                ; $5ae3: $08 $07 $07
    rlca                                          ; $5ae6: $07
    inc b                                         ; $5ae7: $04
    rlca                                          ; $5ae8: $07
    rlca                                          ; $5ae9: $07
    dec bc                                        ; $5aea: $0b
    rrca                                          ; $5aeb: $0f
    ld a, [bc]                                    ; $5aec: $0a
    rrca                                          ; $5aed: $0f
    rlca                                          ; $5aee: $07
    rlca                                          ; $5aef: $07
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    add b                                         ; $5af2: $80

jr_021_5af3:
    add b                                         ; $5af3: $80
    ldh [$e0], a                                  ; $5af4: $e0 $e0
    sub e                                         ; $5af6: $93
    di                                            ; $5af7: $f3
    db $d3                                        ; $5af8: $d3
    di                                            ; $5af9: $f3
    db $e3                                        ; $5afa: $e3
    db $e3                                        ; $5afb: $e3
    or $b6                                        ; $5afc: $f6 $b6
    db $fc                                        ; $5afe: $fc
    cp h                                          ; $5aff: $bc
    add sp, $78                                   ; $5b00: $e8 $78
    ld hl, sp-$28                                 ; $5b02: $f8 $d8
    ld hl, sp-$58                                 ; $5b04: $f8 $a8
    ldh a, [$f0]                                  ; $5b06: $f0 $f0
    ldh [$e0], a                                  ; $5b08: $e0 $e0
    and b                                         ; $5b0a: $a0
    ldh [rLCDC], a                                ; $5b0b: $e0 $40
    ret nz                                        ; $5b0d: $c0

    ret nz                                        ; $5b0e: $c0

    ret nz                                        ; $5b0f: $c0

    rrca                                          ; $5b10: $0f
    rrca                                          ; $5b11: $0f
    rra                                           ; $5b12: $1f
    inc e                                         ; $5b13: $1c
    rra                                           ; $5b14: $1f
    inc de                                        ; $5b15: $13
    inc e                                         ; $5b16: $1c
    rra                                           ; $5b17: $1f
    inc sp                                        ; $5b18: $33
    ccf                                           ; $5b19: $3f
    ld c, a                                       ; $5b1a: $4f
    ld a, l                                       ; $5b1b: $7d
    ld a, a                                       ; $5b1c: $7f
    ld [hl], l                                    ; $5b1d: $75
    rrca                                          ; $5b1e: $0f
    ld [$080f], sp                                ; $5b1f: $08 $0f $08
    rlca                                          ; $5b22: $07
    dec b                                         ; $5b23: $05
    inc bc                                        ; $5b24: $03
    ld [bc], a                                    ; $5b25: $02
    inc bc                                        ; $5b26: $03
    inc bc                                        ; $5b27: $03
    ld [bc], a                                    ; $5b28: $02
    inc bc                                        ; $5b29: $03
    rlca                                          ; $5b2a: $07
    rlca                                          ; $5b2b: $07
    add hl, bc                                    ; $5b2c: $09
    rrca                                          ; $5b2d: $0f
    rrca                                          ; $5b2e: $0f
    rrca                                          ; $5b2f: $0f
    ret nz                                        ; $5b30: $c0

    ret nz                                        ; $5b31: $c0

    ldh [rNR41], a                                ; $5b32: $e0 $20
    db $fc                                        ; $5b34: $fc
    db $fc                                        ; $5b35: $fc
    rlca                                          ; $5b36: $07
    rst $38                                       ; $5b37: $ff
    db $db                                        ; $5b38: $db
    ei                                            ; $5b39: $fb
    db $e3                                        ; $5b3a: $e3
    ld h, e                                       ; $5b3b: $63
    and $66                                       ; $5b3c: $e6 $66
    db $fc                                        ; $5b3e: $fc
    db $fc                                        ; $5b3f: $fc
    add sp, -$48                                  ; $5b40: $e8 $b8
    ldh a, [rSVBK]                                ; $5b42: $f0 $70
    ldh [$a0], a                                  ; $5b44: $e0 $a0
    ldh [$e0], a                                  ; $5b46: $e0 $e0
    ld [hl], b                                    ; $5b48: $70
    ldh a, [$e8]                                  ; $5b49: $f0 $e8
    ld hl, sp+$58                                 ; $5b4b: $f8 $58
    ld a, b                                       ; $5b4d: $78
    ld [hl], b                                    ; $5b4e: $70
    ld [hl], b                                    ; $5b4f: $70
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    inc bc                                        ; $5b52: $03
    inc bc                                        ; $5b53: $03
    rlca                                          ; $5b54: $07
    rlca                                          ; $5b55: $07
    rra                                           ; $5b56: $1f
    inc e                                         ; $5b57: $1c
    inc de                                        ; $5b58: $13
    rra                                           ; $5b59: $1f
    ld [$070f], sp                                ; $5b5a: $08 $0f $07
    rlca                                          ; $5b5d: $07
    rlca                                          ; $5b5e: $07
    dec b                                         ; $5b5f: $05
    rlca                                          ; $5b60: $07
    dec b                                         ; $5b61: $05
    inc bc                                        ; $5b62: $03
    ld [bc], a                                    ; $5b63: $02
    rlca                                          ; $5b64: $07
    ld b, $0f                                     ; $5b65: $06 $0f
    ld a, [bc]                                    ; $5b67: $0a
    rra                                           ; $5b68: $1f
    rla                                           ; $5b69: $17
    rra                                           ; $5b6a: $1f
    rra                                           ; $5b6b: $1f
    rrca                                          ; $5b6c: $0f
    rrca                                          ; $5b6d: $0f
    rlca                                          ; $5b6e: $07
    rlca                                          ; $5b6f: $07
    nop                                           ; $5b70: $00
    nop                                           ; $5b71: $00
    ldh a, [$f0]                                  ; $5b72: $f0 $f0
    ld [$f8f8], sp                                ; $5b74: $08 $f8 $f8
    ld hl, sp-$08                                 ; $5b77: $f8 $f8
    ld [$fcfc], sp                                ; $5b79: $08 $fc $fc
    ld [bc], a                                    ; $5b7c: $02
    cp $fc                                        ; $5b7d: $fe $fc
    db $fc                                        ; $5b7f: $fc
    ldh a, [$50]                                  ; $5b80: $f0 $50
    ldh a, [rNR10]                                ; $5b82: $f0 $10
    ld hl, sp-$18                                 ; $5b84: $f8 $e8
    ld hl, sp+$78                                 ; $5b86: $f8 $78
    ret nc                                        ; $5b88: $d0

    ldh a, [$28]                                  ; $5b89: $f0 $28
    ld hl, sp-$28                                 ; $5b8b: $f8 $d8
    ld hl, sp+$70                                 ; $5b8d: $f8 $70
    ld [hl], b                                    ; $5b8f: $70
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    rlca                                          ; $5b92: $07
    rlca                                          ; $5b93: $07
    ld [$3f0f], sp                                ; $5b94: $08 $0f $3f
    scf                                           ; $5b97: $37
    ld c, a                                       ; $5b98: $4f
    ld a, b                                       ; $5b99: $78
    ld h, a                                       ; $5b9a: $67
    ld a, a                                       ; $5b9b: $7f
    jr c, jr_021_5bdd                             ; $5b9c: $38 $3f

    ccf                                           ; $5b9e: $3f
    cpl                                           ; $5b9f: $2f
    ccf                                           ; $5ba0: $3f
    ld a, [hl+]                                   ; $5ba1: $2a
    ld a, a                                       ; $5ba2: $7f
    ld e, b                                       ; $5ba3: $58
    cpl                                           ; $5ba4: $2f
    dec hl                                        ; $5ba5: $2b
    cpl                                           ; $5ba6: $2f
    cpl                                           ; $5ba7: $2f
    ld l, c                                       ; $5ba8: $69
    ld l, a                                       ; $5ba9: $6f
    ld l, a                                       ; $5baa: $6f
    ld l, a                                       ; $5bab: $6f
    add hl, bc                                    ; $5bac: $09
    rrca                                          ; $5bad: $0f
    rlca                                          ; $5bae: $07
    rlca                                          ; $5baf: $07
    nop                                           ; $5bb0: $00
    nop                                           ; $5bb1: $00
    ret nz                                        ; $5bb2: $c0

    ret nz                                        ; $5bb3: $c0

    jr nz, @-$1e                                  ; $5bb4: $20 $e0

    ld hl, sp-$28                                 ; $5bb6: $f8 $d8
    db $e4                                        ; $5bb8: $e4
    inc a                                         ; $5bb9: $3c
    call z, Call_000_38fc                         ; $5bba: $cc $fc $38
    ld hl, sp-$08                                 ; $5bbd: $f8 $f8
    add sp, -$08                                  ; $5bbf: $e8 $f8
    xor b                                         ; $5bc1: $a8

jr_021_5bc2:
    ldh a, [$30]                                  ; $5bc2: $f0 $30
    db $fc                                        ; $5bc4: $fc
    and h                                         ; $5bc5: $a4
    db $fc                                        ; $5bc6: $fc
    db $f4                                        ; $5bc7: $f4
    jr c, jr_021_5bc2                             ; $5bc8: $38 $f8

    ldh [$e0], a                                  ; $5bca: $e0 $e0
    ret nz                                        ; $5bcc: $c0

    ret nz                                        ; $5bcd: $c0

    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00
    nop                                           ; $5bd1: $00
    rrca                                          ; $5bd2: $0f
    rrca                                          ; $5bd3: $0f
    db $10                                        ; $5bd4: $10
    rra                                           ; $5bd5: $1f
    rra                                           ; $5bd6: $1f
    rra                                           ; $5bd7: $1f
    rra                                           ; $5bd8: $1f
    db $10                                        ; $5bd9: $10
    ccf                                           ; $5bda: $3f
    ccf                                           ; $5bdb: $3f
    ld b, b                                       ; $5bdc: $40

jr_021_5bdd:
    ld a, a                                       ; $5bdd: $7f
    ccf                                           ; $5bde: $3f
    ccf                                           ; $5bdf: $3f
    rrca                                          ; $5be0: $0f
    ld a, [bc]                                    ; $5be1: $0a
    rrca                                          ; $5be2: $0f
    ld [$0707], sp                                ; $5be3: $08 $07 $07
    rlca                                          ; $5be6: $07
    dec b                                         ; $5be7: $05
    rrca                                          ; $5be8: $0f
    dec bc                                        ; $5be9: $0b
    ld e, $1f                                     ; $5bea: $1e $1f
    rla                                           ; $5bec: $17
    rra                                           ; $5bed: $1f
    ld c, $0e                                     ; $5bee: $0e $0e
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    ret nz                                        ; $5bf2: $c0

    ret nz                                        ; $5bf3: $c0

    ldh [$e0], a                                  ; $5bf4: $e0 $e0
    ld hl, sp+$38                                 ; $5bf6: $f8 $38
    ret z                                         ; $5bf8: $c8

    ld hl, sp+$10                                 ; $5bf9: $f8 $10
    ldh a, [$e0]                                  ; $5bfb: $f0 $e0
    ldh [$e0], a                                  ; $5bfd: $e0 $e0
    and b                                         ; $5bff: $a0
    ldh [$a0], a                                  ; $5c00: $e0 $a0
    ret nz                                        ; $5c02: $c0

    ld b, b                                       ; $5c03: $40
    ldh a, [$50]                                  ; $5c04: $f0 $50
    ldh a, [rSVBK]                                ; $5c06: $f0 $70
    and b                                         ; $5c08: $a0
    ldh [$50], a                                  ; $5c09: $e0 $50
    ldh a, [$b0]                                  ; $5c0b: $f0 $b0
    ldh a, [$e0]                                  ; $5c0d: $f0 $e0
    ldh [rP1], a                                  ; $5c0f: $e0 $00
    nop                                           ; $5c11: $00
    rlca                                          ; $5c12: $07
    rlca                                          ; $5c13: $07
    rrca                                          ; $5c14: $0f
    rrca                                          ; $5c15: $0f
    ccf                                           ; $5c16: $3f
    jr nc, jr_021_5c68                            ; $5c17: $30 $4f

    ld a, a                                       ; $5c19: $7f
    ld [hl], b                                    ; $5c1a: $70
    ld a, a                                       ; $5c1b: $7f
    ccf                                           ; $5c1c: $3f
    ccf                                           ; $5c1d: $3f
    ccf                                           ; $5c1e: $3f
    cpl                                           ; $5c1f: $2f
    ccf                                           ; $5c20: $3f
    dec hl                                        ; $5c21: $2b
    ld a, a                                       ; $5c22: $7f
    ld e, h                                       ; $5c23: $5c
    rrca                                          ; $5c24: $0f
    ld [$0f0f], sp                                ; $5c25: $08 $0f $0f
    rrca                                          ; $5c28: $0f
    rrca                                          ; $5c29: $0f
    add hl, bc                                    ; $5c2a: $09
    rrca                                          ; $5c2b: $0f
    add hl, bc                                    ; $5c2c: $09
    rrca                                          ; $5c2d: $0f
    rlca                                          ; $5c2e: $07
    rlca                                          ; $5c2f: $07
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    ret nz                                        ; $5c32: $c0

    ret nz                                        ; $5c33: $c0

    ldh [$e0], a                                  ; $5c34: $e0 $e0
    ld hl, sp+$18                                 ; $5c36: $f8 $18
    db $e4                                        ; $5c38: $e4
    db $fc                                        ; $5c39: $fc
    inc e                                         ; $5c3a: $1c
    db $fc                                        ; $5c3b: $fc
    ld hl, sp-$08                                 ; $5c3c: $f8 $f8
    ld hl, sp-$18                                 ; $5c3e: $f8 $e8
    ld hl, sp-$58                                 ; $5c40: $f8 $a8
    ldh a, [rSVBK]                                ; $5c42: $f0 $70
    db $fc                                        ; $5c44: $fc
    inc h                                         ; $5c45: $24
    db $fc                                        ; $5c46: $fc
    db $fc                                        ; $5c47: $fc
    inc a                                         ; $5c48: $3c
    db $fc                                        ; $5c49: $fc
    db $ec                                        ; $5c4a: $ec
    db $ec                                        ; $5c4b: $ec
    ret nz                                        ; $5c4c: $c0

    ret nz                                        ; $5c4d: $c0

    nop                                           ; $5c4e: $00
    nop                                           ; $5c4f: $00
    ld bc, $0301                                  ; $5c50: $01 $01 $03
    inc bc                                        ; $5c53: $03
    rrca                                          ; $5c54: $0f
    ld c, $09                                     ; $5c55: $0e $09
    rrca                                          ; $5c57: $0f
    inc b                                         ; $5c58: $04
    rlca                                          ; $5c59: $07
    inc bc                                        ; $5c5a: $03
    inc bc                                        ; $5c5b: $03
    inc bc                                        ; $5c5c: $03
    ld [bc], a                                    ; $5c5d: $02
    inc bc                                        ; $5c5e: $03
    ld [bc], a                                    ; $5c5f: $02
    ld bc, $0301                                  ; $5c60: $01 $01 $03
    inc bc                                        ; $5c63: $03
    rlca                                          ; $5c64: $07
    ld b, $0f                                     ; $5c65: $06 $0f
    ld a, [bc]                                    ; $5c67: $0a

jr_021_5c68:
    rra                                           ; $5c68: $1f
    rla                                           ; $5c69: $17
    rra                                           ; $5c6a: $1f
    rra                                           ; $5c6b: $1f
    rrca                                          ; $5c6c: $0f
    rrca                                          ; $5c6d: $0f
    rlca                                          ; $5c6e: $07
    rlca                                          ; $5c6f: $07
    ld hl, sp-$08                                 ; $5c70: $f8 $f8
    add h                                         ; $5c72: $84
    db $fc                                        ; $5c73: $fc
    db $fc                                        ; $5c74: $fc
    ld a, h                                       ; $5c75: $7c
    db $fc                                        ; $5c76: $fc
    add h                                         ; $5c77: $84
    ld a, [hl]                                    ; $5c78: $7e
    cp $81                                        ; $5c79: $fe $81
    rst $38                                       ; $5c7b: $ff
    cp $fe                                        ; $5c7c: $fe $fe
    ld hl, sp-$58                                 ; $5c7e: $f8 $a8
    ld hl, sp+$08                                 ; $5c80: $f8 $08
    ldh a, [$30]                                  ; $5c82: $f0 $30
    ld hl, sp-$18                                 ; $5c84: $f8 $e8
    ld hl, sp+$78                                 ; $5c86: $f8 $78
    ret nc                                        ; $5c88: $d0

    ldh a, [$28]                                  ; $5c89: $f0 $28
    ld hl, sp-$28                                 ; $5c8b: $f8 $d8
    ld hl, sp+$70                                 ; $5c8d: $f8 $70
    ld [hl], b                                    ; $5c8f: $70
    inc bc                                        ; $5c90: $03
    inc bc                                        ; $5c91: $03
    inc b                                         ; $5c92: $04
    rlca                                          ; $5c93: $07
    rra                                           ; $5c94: $1f
    dec de                                        ; $5c95: $1b
    daa                                           ; $5c96: $27
    inc a                                         ; $5c97: $3c
    inc sp                                        ; $5c98: $33
    ccf                                           ; $5c99: $3f
    inc e                                         ; $5c9a: $1c
    rra                                           ; $5c9b: $1f
    rra                                           ; $5c9c: $1f
    rla                                           ; $5c9d: $17
    rra                                           ; $5c9e: $1f
    dec d                                         ; $5c9f: $15
    ccf                                           ; $5ca0: $3f
    inc l                                         ; $5ca1: $2c
    ld a, a                                       ; $5ca2: $7f
    ld a, h                                       ; $5ca3: $7c
    cpl                                           ; $5ca4: $2f
    dec hl                                        ; $5ca5: $2b
    cpl                                           ; $5ca6: $2f
    cpl                                           ; $5ca7: $2f
    ld l, c                                       ; $5ca8: $69
    ld l, a                                       ; $5ca9: $6f
    ld l, a                                       ; $5caa: $6f
    ld l, a                                       ; $5cab: $6f
    add hl, bc                                    ; $5cac: $09
    rrca                                          ; $5cad: $0f
    rlca                                          ; $5cae: $07
    rlca                                          ; $5caf: $07
    ldh [$e0], a                                  ; $5cb0: $e0 $e0
    db $10                                        ; $5cb2: $10
    ldh a, [$fc]                                  ; $5cb3: $f0 $fc
    db $ec                                        ; $5cb5: $ec
    ld a, [c]                                     ; $5cb6: $f2
    ld e, $e6                                     ; $5cb7: $1e $e6
    cp $1c                                        ; $5cb9: $fe $1c
    db $fc                                        ; $5cbb: $fc
    db $fc                                        ; $5cbc: $fc
    db $f4                                        ; $5cbd: $f4
    db $fc                                        ; $5cbe: $fc
    ld d, h                                       ; $5cbf: $54
    ld hl, sp+$18                                 ; $5cc0: $f8 $18

jr_021_5cc2:
    ld hl, sp+$68                                 ; $5cc2: $f8 $68
    db $fc                                        ; $5cc4: $fc
    and h                                         ; $5cc5: $a4
    db $fc                                        ; $5cc6: $fc
    db $f4                                        ; $5cc7: $f4
    jr c, jr_021_5cc2                             ; $5cc8: $38 $f8

    ldh [$e0], a                                  ; $5cca: $e0 $e0
    ret nz                                        ; $5ccc: $c0

    ret nz                                        ; $5ccd: $c0

    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    rlca                                          ; $5cd0: $07
    rlca                                          ; $5cd1: $07
    ld [$0f0f], sp                                ; $5cd2: $08 $0f $0f
    rrca                                          ; $5cd5: $0f
    rrca                                          ; $5cd6: $0f
    ld [$1f1f], sp                                ; $5cd7: $08 $1f $1f
    jr nz, jr_021_5d1b                            ; $5cda: $20 $3f

    rra                                           ; $5cdc: $1f
    rra                                           ; $5cdd: $1f
    rlca                                          ; $5cde: $07
    dec b                                         ; $5cdf: $05
    rlca                                          ; $5ce0: $07
    inc b                                         ; $5ce1: $04
    rlca                                          ; $5ce2: $07
    inc b                                         ; $5ce3: $04
    rlca                                          ; $5ce4: $07
    rlca                                          ; $5ce5: $07
    rlca                                          ; $5ce6: $07
    dec b                                         ; $5ce7: $05
    rrca                                          ; $5ce8: $0f
    dec bc                                        ; $5ce9: $0b
    ld e, $1f                                     ; $5cea: $1e $1f
    rla                                           ; $5cec: $17
    rra                                           ; $5ced: $1f
    ld c, $0e                                     ; $5cee: $0e $0e
    ldh [$e0], a                                  ; $5cf0: $e0 $e0
    ld [hl], b                                    ; $5cf2: $70
    ldh a, [$fc]                                  ; $5cf3: $f0 $fc
    sbc h                                         ; $5cf5: $9c
    db $e4                                        ; $5cf6: $e4
    ld a, h                                       ; $5cf7: $7c
    adc b                                         ; $5cf8: $88
    ld hl, sp+$70                                 ; $5cf9: $f8 $70
    ldh a, [$f0]                                  ; $5cfb: $f0 $f0
    ret nc                                        ; $5cfd: $d0

    ldh a, [$50]                                  ; $5cfe: $f0 $50
    ldh [rNR41], a                                ; $5d00: $e0 $20
    ldh [$e0], a                                  ; $5d02: $e0 $e0
    ldh a, [$50]                                  ; $5d04: $f0 $50
    ldh a, [rSVBK]                                ; $5d06: $f0 $70
    and b                                         ; $5d08: $a0
    ldh [$50], a                                  ; $5d09: $e0 $50
    ldh a, [$b0]                                  ; $5d0b: $f0 $b0
    ldh a, [$e0]                                  ; $5d0d: $f0 $e0
    ldh [$03], a                                  ; $5d0f: $e0 $03
    inc bc                                        ; $5d11: $03
    rlca                                          ; $5d12: $07
    rlca                                          ; $5d13: $07
    rra                                           ; $5d14: $1f
    jr jr_021_5d3e                                ; $5d15: $18 $27

    ccf                                           ; $5d17: $3f
    jr c, jr_021_5d59                             ; $5d18: $38 $3f

    rra                                           ; $5d1a: $1f

jr_021_5d1b:
    rra                                           ; $5d1b: $1f
    rra                                           ; $5d1c: $1f
    rla                                           ; $5d1d: $17
    rra                                           ; $5d1e: $1f
    dec d                                         ; $5d1f: $15
    ccf                                           ; $5d20: $3f
    ld l, $7f                                     ; $5d21: $2e $7f
    ld a, b                                       ; $5d23: $78
    rrca                                          ; $5d24: $0f
    ld [$0f0f], sp                                ; $5d25: $08 $0f $0f
    rrca                                          ; $5d28: $0f
    rrca                                          ; $5d29: $0f
    add hl, bc                                    ; $5d2a: $09
    rrca                                          ; $5d2b: $0f
    add hl, bc                                    ; $5d2c: $09
    rrca                                          ; $5d2d: $0f
    rlca                                          ; $5d2e: $07
    rlca                                          ; $5d2f: $07
    ldh [$e0], a                                  ; $5d30: $e0 $e0
    ldh a, [$f0]                                  ; $5d32: $f0 $f0
    db $fc                                        ; $5d34: $fc
    inc c                                         ; $5d35: $0c
    ld a, [c]                                     ; $5d36: $f2
    cp $0e                                        ; $5d37: $fe $0e
    cp $fc                                        ; $5d39: $fe $fc
    db $fc                                        ; $5d3b: $fc
    db $fc                                        ; $5d3c: $fc
    db $f4                                        ; $5d3d: $f4

jr_021_5d3e:
    db $fc                                        ; $5d3e: $fc
    call nc, Call_000_38f8                        ; $5d3f: $d4 $f8 $38
    ld hl, sp+$28                                 ; $5d42: $f8 $28
    db $fc                                        ; $5d44: $fc
    inc h                                         ; $5d45: $24
    db $fc                                        ; $5d46: $fc
    db $fc                                        ; $5d47: $fc
    inc a                                         ; $5d48: $3c
    db $fc                                        ; $5d49: $fc
    db $ec                                        ; $5d4a: $ec
    db $ec                                        ; $5d4b: $ec
    ret nz                                        ; $5d4c: $c0

    ret nz                                        ; $5d4d: $c0

    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    rlca                                          ; $5d50: $07
    rlca                                          ; $5d51: $07
    ld c, $0f                                     ; $5d52: $0e $0f
    ccf                                           ; $5d54: $3f
    add hl, sp                                    ; $5d55: $39
    daa                                           ; $5d56: $27
    ld a, $11                                     ; $5d57: $3e $11

jr_021_5d59:
    rra                                           ; $5d59: $1f
    ld c, $0f                                     ; $5d5a: $0e $0f
    rrca                                          ; $5d5c: $0f
    dec bc                                        ; $5d5d: $0b
    rrca                                          ; $5d5e: $0f
    ld a, [bc]                                    ; $5d5f: $0a
    rlca                                          ; $5d60: $07
    inc b                                         ; $5d61: $04
    inc bc                                        ; $5d62: $03
    inc bc                                        ; $5d63: $03
    rlca                                          ; $5d64: $07
    ld b, $0f                                     ; $5d65: $06 $0f
    ld a, [bc]                                    ; $5d67: $0a
    rra                                           ; $5d68: $1f
    rla                                           ; $5d69: $17
    rra                                           ; $5d6a: $1f
    rra                                           ; $5d6b: $1f
    rrca                                          ; $5d6c: $0f
    rrca                                          ; $5d6d: $0f
    rlca                                          ; $5d6e: $07
    rlca                                          ; $5d6f: $07
    ldh [$e0], a                                  ; $5d70: $e0 $e0
    db $10                                        ; $5d72: $10
    ldh a, [$f0]                                  ; $5d73: $f0 $f0
    ldh a, [$f0]                                  ; $5d75: $f0 $f0
    db $10                                        ; $5d77: $10
    ld hl, sp-$08                                 ; $5d78: $f8 $f8
    inc b                                         ; $5d7a: $04
    db $fc                                        ; $5d7b: $fc
    ld hl, sp-$08                                 ; $5d7c: $f8 $f8
    ldh [$a0], a                                  ; $5d7e: $e0 $a0
    ldh [rNR41], a                                ; $5d80: $e0 $20
    ldh a, [$30]                                  ; $5d82: $f0 $30
    ld hl, sp-$18                                 ; $5d84: $f8 $e8
    ld hl, sp+$78                                 ; $5d86: $f8 $78
    ret nc                                        ; $5d88: $d0

    ldh a, [$28]                                  ; $5d89: $f0 $28
    ld hl, sp-$28                                 ; $5d8b: $f8 $d8
    ld hl, sp+$70                                 ; $5d8d: $f8 $70
    ld [hl], b                                    ; $5d8f: $70
    rrca                                          ; $5d90: $0f
    rrca                                          ; $5d91: $0f
    db $10                                        ; $5d92: $10
    rra                                           ; $5d93: $1f
    ld a, a                                       ; $5d94: $7f
    ld l, a                                       ; $5d95: $6f
    sbc a                                         ; $5d96: $9f
    ldh a, [$cf]                                  ; $5d97: $f0 $cf
    rst $38                                       ; $5d99: $ff
    ld [hl], b                                    ; $5d9a: $70
    ld a, a                                       ; $5d9b: $7f
    ld a, a                                       ; $5d9c: $7f
    ld e, a                                       ; $5d9d: $5f
    ld a, a                                       ; $5d9e: $7f
    ld d, l                                       ; $5d9f: $55
    rst $38                                       ; $5da0: $ff
    or b                                          ; $5da1: $b0
    ld a, a                                       ; $5da2: $7f
    ld a, h                                       ; $5da3: $7c
    cpl                                           ; $5da4: $2f
    dec hl                                        ; $5da5: $2b
    cpl                                           ; $5da6: $2f
    cpl                                           ; $5da7: $2f
    ld l, c                                       ; $5da8: $69
    ld l, a                                       ; $5da9: $6f
    ld l, a                                       ; $5daa: $6f
    ld l, a                                       ; $5dab: $6f
    add hl, bc                                    ; $5dac: $09
    rrca                                          ; $5dad: $0f
    rlca                                          ; $5dae: $07
    rlca                                          ; $5daf: $07
    add b                                         ; $5db0: $80
    add b                                         ; $5db1: $80
    ld b, b                                       ; $5db2: $40
    ret nz                                        ; $5db3: $c0

    ldh a, [$b0]                                  ; $5db4: $f0 $b0
    ret z                                         ; $5db6: $c8

    ld a, b                                       ; $5db7: $78
    sbc b                                         ; $5db8: $98
    ld hl, sp+$70                                 ; $5db9: $f8 $70
    ldh a, [$f0]                                  ; $5dbb: $f0 $f0
    ret nc                                        ; $5dbd: $d0

    ldh a, [$50]                                  ; $5dbe: $f0 $50
    ldh [$60], a                                  ; $5dc0: $e0 $60

jr_021_5dc2:
    ld hl, sp+$68                                 ; $5dc2: $f8 $68
    db $fc                                        ; $5dc4: $fc
    and h                                         ; $5dc5: $a4
    db $fc                                        ; $5dc6: $fc
    db $f4                                        ; $5dc7: $f4
    jr c, jr_021_5dc2                             ; $5dc8: $38 $f8

    ldh [$e0], a                                  ; $5dca: $e0 $e0
    ret nz                                        ; $5dcc: $c0

    ret nz                                        ; $5dcd: $c0

    nop                                           ; $5dce: $00
    nop                                           ; $5dcf: $00
    rra                                           ; $5dd0: $1f
    rra                                           ; $5dd1: $1f
    ld hl, $3f3f                                  ; $5dd2: $21 $3f $3f
    ld a, $3f                                     ; $5dd5: $3e $3f
    ld hl, $7f7e                                  ; $5dd7: $21 $7e $7f
    add c                                         ; $5dda: $81
    rst $38                                       ; $5ddb: $ff
    ld a, a                                       ; $5ddc: $7f
    ld a, a                                       ; $5ddd: $7f
    rra                                           ; $5dde: $1f
    dec d                                         ; $5ddf: $15
    rra                                           ; $5de0: $1f
    db $10                                        ; $5de1: $10
    rlca                                          ; $5de2: $07
    inc b                                         ; $5de3: $04
    rlca                                          ; $5de4: $07
    rlca                                          ; $5de5: $07
    rlca                                          ; $5de6: $07
    dec b                                         ; $5de7: $05
    rrca                                          ; $5de8: $0f
    dec bc                                        ; $5de9: $0b
    ld e, $1f                                     ; $5dea: $1e $1f
    rla                                           ; $5dec: $17
    rra                                           ; $5ded: $1f
    ld c, $0e                                     ; $5dee: $0e $0e
    add b                                         ; $5df0: $80
    add b                                         ; $5df1: $80
    ret nz                                        ; $5df2: $c0

    ret nz                                        ; $5df3: $c0

    ldh a, [rSVBK]                                ; $5df4: $f0 $70
    sub b                                         ; $5df6: $90
    ldh a, [rNR41]                                ; $5df7: $f0 $20
    ldh [$c0], a                                  ; $5df9: $e0 $c0
    ret nz                                        ; $5dfb: $c0

    ret nz                                        ; $5dfc: $c0

    ld b, b                                       ; $5dfd: $40
    ret nz                                        ; $5dfe: $c0

    ld b, b                                       ; $5dff: $40
    add b                                         ; $5e00: $80
    add b                                         ; $5e01: $80
    ldh [$e0], a                                  ; $5e02: $e0 $e0
    ldh a, [$50]                                  ; $5e04: $f0 $50
    ldh a, [rSVBK]                                ; $5e06: $f0 $70
    and b                                         ; $5e08: $a0
    ldh [$50], a                                  ; $5e09: $e0 $50
    ldh a, [$b0]                                  ; $5e0b: $f0 $b0
    ldh a, [$e0]                                  ; $5e0d: $f0 $e0
    ldh [rIF], a                                  ; $5e0f: $e0 $0f
    rrca                                          ; $5e11: $0f
    rra                                           ; $5e12: $1f
    rra                                           ; $5e13: $1f
    ld a, a                                       ; $5e14: $7f
    ld h, b                                       ; $5e15: $60
    sbc a                                         ; $5e16: $9f
    rst $38                                       ; $5e17: $ff
    ldh [rIE], a                                  ; $5e18: $e0 $ff
    ld a, a                                       ; $5e1a: $7f
    ld a, a                                       ; $5e1b: $7f
    ld a, a                                       ; $5e1c: $7f
    ld e, a                                       ; $5e1d: $5f
    ld a, a                                       ; $5e1e: $7f
    ld d, a                                       ; $5e1f: $57
    rst $38                                       ; $5e20: $ff
    cp b                                          ; $5e21: $b8
    ld a, a                                       ; $5e22: $7f
    ld a, b                                       ; $5e23: $78
    rrca                                          ; $5e24: $0f
    ld [$0f0f], sp                                ; $5e25: $08 $0f $0f
    rrca                                          ; $5e28: $0f
    rrca                                          ; $5e29: $0f
    add hl, bc                                    ; $5e2a: $09
    rrca                                          ; $5e2b: $0f
    add hl, bc                                    ; $5e2c: $09
    rrca                                          ; $5e2d: $0f
    rlca                                          ; $5e2e: $07
    rlca                                          ; $5e2f: $07
    add b                                         ; $5e30: $80
    add b                                         ; $5e31: $80
    ret nz                                        ; $5e32: $c0

    ret nz                                        ; $5e33: $c0

    ldh a, [$30]                                  ; $5e34: $f0 $30
    ret z                                         ; $5e36: $c8

    ld hl, sp+$38                                 ; $5e37: $f8 $38
    ld hl, sp-$10                                 ; $5e39: $f8 $f0
    ldh a, [$f0]                                  ; $5e3b: $f0 $f0
    ret nc                                        ; $5e3d: $d0

    ldh a, [$50]                                  ; $5e3e: $f0 $50
    ldh [$e0], a                                  ; $5e40: $e0 $e0
    ld hl, sp+$28                                 ; $5e42: $f8 $28
    db $fc                                        ; $5e44: $fc
    inc h                                         ; $5e45: $24
    db $fc                                        ; $5e46: $fc
    db $fc                                        ; $5e47: $fc
    inc a                                         ; $5e48: $3c
    db $fc                                        ; $5e49: $fc
    db $ec                                        ; $5e4a: $ec
    db $ec                                        ; $5e4b: $ec
    ret nz                                        ; $5e4c: $c0

    ret nz                                        ; $5e4d: $c0

    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00
    inc bc                                        ; $5e52: $03
    inc bc                                        ; $5e53: $03
    inc bc                                        ; $5e54: $03
    inc bc                                        ; $5e55: $03
    rrca                                          ; $5e56: $0f
    inc c                                         ; $5e57: $0c
    dec bc                                        ; $5e58: $0b
    rrca                                          ; $5e59: $0f
    inc b                                         ; $5e5a: $04
    rlca                                          ; $5e5b: $07
    inc bc                                        ; $5e5c: $03
    ld bc, $0103                                  ; $5e5d: $01 $03 $01
    inc bc                                        ; $5e60: $03
    ld [bc], a                                    ; $5e61: $02
    inc bc                                        ; $5e62: $03
    inc bc                                        ; $5e63: $03
    rlca                                          ; $5e64: $07
    ld b, $0f                                     ; $5e65: $06 $0f
    dec bc                                        ; $5e67: $0b
    rrca                                          ; $5e68: $0f
    rrca                                          ; $5e69: $0f
    rlca                                          ; $5e6a: $07
    rlca                                          ; $5e6b: $07
    inc bc                                        ; $5e6c: $03
    inc bc                                        ; $5e6d: $03
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    ldh [$e0], a                                  ; $5e72: $e0 $e0
    db $10                                        ; $5e74: $10
    ldh a, [$f0]                                  ; $5e75: $f0 $f0
    ldh a, [$f0]                                  ; $5e77: $f0 $f0
    db $10                                        ; $5e79: $10
    ld hl, sp-$08                                 ; $5e7a: $f8 $f8
    ld hl, sp-$08                                 ; $5e7c: $f8 $f8
    ldh [$60], a                                  ; $5e7e: $e0 $60
    ldh [rNR41], a                                ; $5e80: $e0 $20
    ldh [rNR41], a                                ; $5e82: $e0 $20
    ldh a, [rSVBK]                                ; $5e84: $f0 $70
    ldh [$e0], a                                  ; $5e86: $e0 $e0
    db $10                                        ; $5e88: $10
    ldh a, [$f0]                                  ; $5e89: $f0 $f0
    ldh a, [$60]                                  ; $5e8b: $f0 $60
    ld h, b                                       ; $5e8d: $60
    nop                                           ; $5e8e: $00
    nop                                           ; $5e8f: $00
    nop                                           ; $5e90: $00
    nop                                           ; $5e91: $00
    inc bc                                        ; $5e92: $03

jr_021_5e93:
    inc bc                                        ; $5e93: $03
    inc b                                         ; $5e94: $04
    rlca                                          ; $5e95: $07
    rra                                           ; $5e96: $1f
    dec de                                        ; $5e97: $1b
    daa                                           ; $5e98: $27
    inc a                                         ; $5e99: $3c
    inc sp                                        ; $5e9a: $33
    ccf                                           ; $5e9b: $3f
    rra                                           ; $5e9c: $1f
    rla                                           ; $5e9d: $17
    rra                                           ; $5e9e: $1f
    ld d, $3f                                     ; $5e9f: $16 $3f
    inc l                                         ; $5ea1: $2c
    ccf                                           ; $5ea2: $3f
    inc a                                         ; $5ea3: $3c
    rla                                           ; $5ea4: $17
    rla                                           ; $5ea5: $17
    dec [hl]                                      ; $5ea6: $35
    scf                                           ; $5ea7: $37
    scf                                           ; $5ea8: $37
    scf                                           ; $5ea9: $37
    dec b                                         ; $5eaa: $05
    rlca                                          ; $5eab: $07
    inc bc                                        ; $5eac: $03
    inc bc                                        ; $5ead: $03
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    ret nz                                        ; $5eb2: $c0

    ret nz                                        ; $5eb3: $c0

    nop                                           ; $5eb4: $00
    ret nz                                        ; $5eb5: $c0

    ldh a, [$f0]                                  ; $5eb6: $f0 $f0

jr_021_5eb8:
    ret z                                         ; $5eb8: $c8

    jr c, jr_021_5e93                             ; $5eb9: $38 $d8

    ld hl, sp-$10                                 ; $5ebb: $f8 $f0
    ret nc                                        ; $5ebd: $d0

    ldh a, [$90]                                  ; $5ebe: $f0 $90
    ldh [rNR41], a                                ; $5ec0: $e0 $20
    ldh a, [$50]                                  ; $5ec2: $f0 $50
    ld hl, sp-$18                                 ; $5ec4: $f8 $e8
    jr nc, jr_021_5eb8                            ; $5ec6: $30 $f0

    ret nz                                        ; $5ec8: $c0

    ret nz                                        ; $5ec9: $c0

    ret nz                                        ; $5eca: $c0

    ret nz                                        ; $5ecb: $c0

    nop                                           ; $5ecc: $00
    nop                                           ; $5ecd: $00
    nop                                           ; $5ece: $00
    nop                                           ; $5ecf: $00
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    rlca                                          ; $5ed2: $07
    rlca                                          ; $5ed3: $07
    ld [$0f0f], sp                                ; $5ed4: $08 $0f $0f
    rrca                                          ; $5ed7: $0f
    rrca                                          ; $5ed8: $0f
    ld [$1f1f], sp                                ; $5ed9: $08 $1f $1f
    rra                                           ; $5edc: $1f
    rra                                           ; $5edd: $1f
    rlca                                          ; $5ede: $07
    ld b, $07                                     ; $5edf: $06 $07
    inc b                                         ; $5ee1: $04
    inc bc                                        ; $5ee2: $03
    nop                                           ; $5ee3: $00
    inc bc                                        ; $5ee4: $03
    ld bc, $0707                                  ; $5ee5: $01 $07 $07
    ld c, $0f                                     ; $5ee8: $0e $0f
    dec bc                                        ; $5eea: $0b
    rrca                                          ; $5eeb: $0f
    ld b, $06                                     ; $5eec: $06 $06
    nop                                           ; $5eee: $00
    nop                                           ; $5eef: $00
    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    ret nz                                        ; $5ef2: $c0

    ret nz                                        ; $5ef3: $c0

    ret nz                                        ; $5ef4: $c0

    ret nz                                        ; $5ef5: $c0

    ldh a, [$30]                                  ; $5ef6: $f0 $30
    ret nc                                        ; $5ef8: $d0

    ldh a, [rNR41]                                ; $5ef9: $f0 $20
    ldh [$c0], a                                  ; $5efb: $e0 $c0
    add b                                         ; $5efd: $80
    ret nz                                        ; $5efe: $c0

    add b                                         ; $5eff: $80
    ret nz                                        ; $5f00: $c0

    ld b, b                                       ; $5f01: $40
    ret nz                                        ; $5f02: $c0

    ret nz                                        ; $5f03: $c0

    ldh [$60], a                                  ; $5f04: $e0 $60
    add b                                         ; $5f06: $80
    ret nz                                        ; $5f07: $c0

    ld h, b                                       ; $5f08: $60
    ldh [$a0], a                                  ; $5f09: $e0 $a0
    ldh [$c0], a                                  ; $5f0b: $e0 $c0
    ret nz                                        ; $5f0d: $c0

    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    nop                                           ; $5f10: $00
    nop                                           ; $5f11: $00
    inc bc                                        ; $5f12: $03
    inc bc                                        ; $5f13: $03
    rlca                                          ; $5f14: $07
    rlca                                          ; $5f15: $07
    rra                                           ; $5f16: $1f
    jr jr_021_5f40                                ; $5f17: $18 $27

    ccf                                           ; $5f19: $3f
    jr c, jr_021_5f5b                             ; $5f1a: $38 $3f

    rra                                           ; $5f1c: $1f
    rla                                           ; $5f1d: $17
    rra                                           ; $5f1e: $1f
    rla                                           ; $5f1f: $17
    ccf                                           ; $5f20: $3f
    inc l                                         ; $5f21: $2c
    ccf                                           ; $5f22: $3f
    inc a                                         ; $5f23: $3c
    rlca                                          ; $5f24: $07
    rlca                                          ; $5f25: $07
    rlca                                          ; $5f26: $07
    rlca                                          ; $5f27: $07
    dec b                                         ; $5f28: $05
    rlca                                          ; $5f29: $07
    dec b                                         ; $5f2a: $05
    rlca                                          ; $5f2b: $07
    inc bc                                        ; $5f2c: $03
    inc bc                                        ; $5f2d: $03
    nop                                           ; $5f2e: $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    ret nz                                        ; $5f32: $c0

    ret nz                                        ; $5f33: $c0

    ret nz                                        ; $5f34: $c0

    ret nz                                        ; $5f35: $c0

    ldh a, [$30]                                  ; $5f36: $f0 $30
    ret z                                         ; $5f38: $c8

    ld hl, sp+$38                                 ; $5f39: $f8 $38
    ld hl, sp-$10                                 ; $5f3b: $f8 $f0
    ret nc                                        ; $5f3d: $d0

    ldh a, [$90]                                  ; $5f3e: $f0 $90

jr_021_5f40:
    ldh [$60], a                                  ; $5f40: $e0 $60
    ldh a, [rNR10]                                ; $5f42: $f0 $10
    ld hl, sp-$08                                 ; $5f44: $f8 $f8
    jr c, jr_021_5f40                             ; $5f46: $38 $f8

    ret c                                         ; $5f48: $d8

    ret c                                         ; $5f49: $d8

    ret nz                                        ; $5f4a: $c0

    ret nz                                        ; $5f4b: $c0

    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    nop                                           ; $5f4e: $00
    nop                                           ; $5f4f: $00
    ld h, d                                       ; $5f50: $62
    ld e, a                                       ; $5f51: $5f
    ld h, l                                       ; $5f52: $65
    ld e, a                                       ; $5f53: $5f
    ld l, e                                       ; $5f54: $6b
    ld e, a                                       ; $5f55: $5f
    ld l, [hl]                                    ; $5f56: $6e
    ld e, a                                       ; $5f57: $5f
    ld a, c                                       ; $5f58: $79
    ld e, a                                       ; $5f59: $5f
    add b                                         ; $5f5a: $80

jr_021_5f5b:
    ld e, a                                       ; $5f5b: $5f
    adc b                                         ; $5f5c: $88
    ld e, a                                       ; $5f5d: $5f
    sbc h                                         ; $5f5e: $9c
    ld e, a                                       ; $5f5f: $5f
    xor b                                         ; $5f60: $a8
    ld e, a                                       ; $5f61: $5f
    nop                                           ; $5f62: $00
    rst $38                                       ; $5f63: $ff
    db $fd                                        ; $5f64: $fd
    nop                                           ; $5f65: $00
    ld e, $01                                     ; $5f66: $1e $01
    ld e, $ff                                     ; $5f68: $1e $ff
    nop                                           ; $5f6a: $00
    ld [bc], a                                    ; $5f6b: $02
    rst $38                                       ; $5f6c: $ff
    db $fd                                        ; $5f6d: $fd
    ld [bc], a                                    ; $5f6e: $02
    inc c                                         ; $5f6f: $0c
    inc bc                                        ; $5f70: $03
    inc c                                         ; $5f71: $0c
    inc b                                         ; $5f72: $04
    jr jr_021_5f77                                ; $5f73: $18 $02

    inc c                                         ; $5f75: $0c
    dec b                                         ; $5f76: $05

jr_021_5f77:
    inc c                                         ; $5f77: $0c
    db $fd                                        ; $5f78: $fd
    ld [bc], a                                    ; $5f79: $02
    jr @+$05                                      ; $5f7a: $18 $03

    jr jr_021_5f80                                ; $5f7c: $18 $02

    jr @-$01                                      ; $5f7e: $18 $fd

jr_021_5f80:
    nop                                           ; $5f80: $00
    ld a, [bc]                                    ; $5f81: $0a
    ld b, $1e                                     ; $5f82: $06 $1e
    nop                                           ; $5f84: $00
    ld a, [bc]                                    ; $5f85: $0a
    cp $01                                        ; $5f86: $fe $01
    nop                                           ; $5f88: $00
    ld a, [bc]                                    ; $5f89: $0a
    rlca                                          ; $5f8a: $07
    ld a, [bc]                                    ; $5f8b: $0a
    nop                                           ; $5f8c: $00
    inc bc                                        ; $5f8d: $03
    ld [$000a], sp                                ; $5f8e: $08 $0a $00
    inc bc                                        ; $5f91: $03
    rlca                                          ; $5f92: $07
    ld a, [bc]                                    ; $5f93: $0a
    nop                                           ; $5f94: $00
    inc bc                                        ; $5f95: $03
    ld [$000a], sp                                ; $5f96: $08 $0a $00
    ld a, [bc]                                    ; $5f99: $0a
    cp $01                                        ; $5f9a: $fe $01
    nop                                           ; $5f9c: $00
    ld a, [bc]                                    ; $5f9d: $0a
    add hl, bc                                    ; $5f9e: $09
    ld [$0800], sp                                ; $5f9f: $08 $00 $08
    add hl, bc                                    ; $5fa2: $09
    ld [$0a00], sp                                ; $5fa3: $08 $00 $0a
    cp $01                                        ; $5fa6: $fe $01
    ld [bc], a                                    ; $5fa8: $02
    ld [de], a                                    ; $5fa9: $12
    inc bc                                        ; $5faa: $03
    ld [de], a                                    ; $5fab: $12
    ld [bc], a                                    ; $5fac: $02
    ld e, $05                                     ; $5fad: $1e $05
    ld [de], a                                    ; $5faf: $12
    db $fd                                        ; $5fb0: $fd

    db $06, $04, $b9, $5f, $d0, $69, $b9, $5f, $d0, $5f, $d0, $60, $d0, $61, $d0, $62

    ret nc                                        ; $5fc1: $d0

    ld h, e                                       ; $5fc2: $63

    db $d0, $64

    ret nc                                        ; $5fc5: $d0

    ld h, l                                       ; $5fc6: $65
    ret nc                                        ; $5fc7: $d0

    ld h, [hl]                                    ; $5fc8: $66
    ret nc                                        ; $5fc9: $d0

    ld h, a                                       ; $5fca: $67
    ret nc                                        ; $5fcb: $d0

    ld l, b                                       ; $5fcc: $68
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    nop                                           ; $5fcf: $00
    inc bc                                        ; $5fd0: $03
    inc bc                                        ; $5fd1: $03
    inc b                                         ; $5fd2: $04
    rlca                                          ; $5fd3: $07
    ld [$090f], sp                                ; $5fd4: $08 $0f $09
    rrca                                          ; $5fd7: $0f
    rrca                                          ; $5fd8: $0f
    rrca                                          ; $5fd9: $0f
    rrca                                          ; $5fda: $0f
    rrca                                          ; $5fdb: $0f
    rra                                           ; $5fdc: $1f
    add hl, de                                    ; $5fdd: $19
    rra                                           ; $5fde: $1f
    jr jr_021_5ff0                                ; $5fdf: $18 $0f

    ld c, $05                                     ; $5fe1: $0e $05
    rlca                                          ; $5fe3: $07
    ld b, $07                                     ; $5fe4: $06 $07
    rrca                                          ; $5fe6: $0f
    dec bc                                        ; $5fe7: $0b
    rra                                           ; $5fe8: $1f
    ld d, $1f                                     ; $5fe9: $16 $1f
    rra                                           ; $5feb: $1f
    dec c                                         ; $5fec: $0d
    rrca                                          ; $5fed: $0f
    ld b, $06                                     ; $5fee: $06 $06

jr_021_5ff0:
    ret nz                                        ; $5ff0: $c0

    ret nz                                        ; $5ff1: $c0

    ldh [$a0], a                                  ; $5ff2: $e0 $a0
    ld [hl], b                                    ; $5ff4: $70
    ldh a, [$c8]                                  ; $5ff5: $f0 $c8
    ld hl, sp-$10                                 ; $5ff7: $f8 $f0
    or b                                          ; $5ff9: $b0
    ld hl, sp+$38                                 ; $5ffa: $f8 $38
    db $fc                                        ; $5ffc: $fc
    ld h, h                                       ; $5ffd: $64
    ld hl, sp+$38                                 ; $5ffe: $f8 $38
    ldh a, [rNR10]                                ; $6000: $f0 $10
    ldh a, [$b0]                                  ; $6002: $f0 $b0
    ld a, b                                       ; $6004: $78
    add sp, -$10                                  ; $6005: $e8 $f0
    ldh a, [$e0]                                  ; $6007: $f0 $e0
    ld h, b                                       ; $6009: $60
    ldh a, [$30]                                  ; $600a: $f0 $30
    ret nc                                        ; $600c: $d0

    ld [hl], b                                    ; $600d: $70
    ldh [$e0], a                                  ; $600e: $e0 $e0
    rlca                                          ; $6010: $07
    rlca                                          ; $6011: $07
    dec bc                                        ; $6012: $0b
    ld c, $14                                     ; $6013: $0e $14
    rra                                           ; $6015: $1f
    inc de                                        ; $6016: $13
    rra                                           ; $6017: $1f
    rra                                           ; $6018: $1f
    ld e, $3f                                     ; $6019: $1e $3f
    ld a, [hl-]                                   ; $601b: $3a
    ld a, a                                       ; $601c: $7f
    ld d, h                                       ; $601d: $54
    ld a, a                                       ; $601e: $7f
    ld b, a                                       ; $601f: $47
    ccf                                           ; $6020: $3f
    inc sp                                        ; $6021: $33
    cpl                                           ; $6022: $2f
    inc a                                         ; $6023: $3c
    ld a, e                                       ; $6024: $7b
    ld e, a                                       ; $6025: $5f
    ld a, [hl]                                    ; $6026: $7e
    ld a, a                                       ; $6027: $7f
    rst $08                                       ; $6028: $cf
    ret                                           ; $6029: $c9


    rst $18                                       ; $602a: $df
    sub $09                                       ; $602b: $d6 $09
    rrca                                          ; $602d: $0f
    rlca                                          ; $602e: $07
    rlca                                          ; $602f: $07
    ret nz                                        ; $6030: $c0

    ret nz                                        ; $6031: $c0

    and b                                         ; $6032: $a0
    ldh [$50], a                                  ; $6033: $e0 $50
    ldh a, [$90]                                  ; $6035: $f0 $90
    ldh a, [$f0]                                  ; $6037: $f0 $f0
    ldh a, [$f8]                                  ; $6039: $f0 $f8
    cp b                                          ; $603b: $b8
    db $fc                                        ; $603c: $fc
    ld d, h                                       ; $603d: $54
    db $fc                                        ; $603e: $fc
    call nz, $98f8                                ; $603f: $c4 $f8 $98
    ldh a, [rSVBK]                                ; $6042: $f0 $70
    xor b                                         ; $6044: $a8
    ld hl, sp+$7c                                 ; $6045: $f8 $7c
    db $f4                                        ; $6047: $f4
    db $fc                                        ; $6048: $fc
    and h                                         ; $6049: $a4
    ld hl, sp-$08                                 ; $604a: $f8 $f8
    ret nz                                        ; $604c: $c0

    ret nz                                        ; $604d: $c0

    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    inc bc                                        ; $6050: $03
    inc bc                                        ; $6051: $03
    rlca                                          ; $6052: $07
    dec b                                         ; $6053: $05

jr_021_6054:
    ld c, $0f                                     ; $6054: $0e $0f
    inc de                                        ; $6056: $13
    rra                                           ; $6057: $1f
    rrca                                          ; $6058: $0f
    dec c                                         ; $6059: $0d
    rra                                           ; $605a: $1f

jr_021_605b:
    inc e                                         ; $605b: $1c
    ccf                                           ; $605c: $3f
    ld h, $1f                                     ; $605d: $26 $1f
    inc e                                         ; $605f: $1c
    rrca                                          ; $6060: $0f
    ld [$0507], sp                                ; $6061: $08 $07 $05
    ld [bc], a                                    ; $6064: $02
    inc bc                                        ; $6065: $03
    rlca                                          ; $6066: $07
    dec b                                         ; $6067: $05
    rrca                                          ; $6068: $0f
    ld a, [bc]                                    ; $6069: $0a
    rrca                                          ; $606a: $0f
    rrca                                          ; $606b: $0f
    dec c                                         ; $606c: $0d
    rrca                                          ; $606d: $0f
    rlca                                          ; $606e: $07
    rlca                                          ; $606f: $07
    ret nz                                        ; $6070: $c0

    ret nz                                        ; $6071: $c0

    jr nz, jr_021_6054                            ; $6072: $20 $e0

    db $10                                        ; $6074: $10
    ldh a, [rNR10]                                ; $6075: $f0 $10
    ldh a, [$f0]                                  ; $6077: $f0 $f0
    ldh a, [$f0]                                  ; $6079: $f0 $f0
    ldh a, [$f8]                                  ; $607b: $f0 $f8
    sbc b                                         ; $607d: $98
    ld hl, sp+$18                                 ; $607e: $f8 $18
    ldh a, [rSVBK]                                ; $6080: $f0 $70
    or b                                          ; $6082: $b0
    ldh a, [$38]                                  ; $6083: $f0 $38
    add sp, -$08                                  ; $6085: $e8 $f8
    ld hl, sp-$20                                 ; $6087: $f8 $e0
    jr nz, jr_021_605b                            ; $6089: $20 $d0

    ld [hl], b                                    ; $608b: $70
    ret nc                                        ; $608c: $d0

    ldh a, [$60]                                  ; $608d: $f0 $60
    ld h, b                                       ; $608f: $60
    rlca                                          ; $6090: $07
    rlca                                          ; $6091: $07
    ld [$100f], sp                                ; $6092: $08 $0f $10
    rra                                           ; $6095: $1f
    db $10                                        ; $6096: $10
    rra                                           ; $6097: $1f
    jr jr_021_60b9                                ; $6098: $18 $1f

    ccf                                           ; $609a: $3f
    ccf                                           ; $609b: $3f
    ld a, a                                       ; $609c: $7f
    ld e, a                                       ; $609d: $5f
    ld a, a                                       ; $609e: $7f
    ld c, a                                       ; $609f: $4f
    ccf                                           ; $60a0: $3f
    ccf                                           ; $60a1: $3f
    ld a, h                                       ; $60a2: $7c
    ld e, a                                       ; $60a3: $5f
    ld l, e                                       ; $60a4: $6b
    ld a, a                                       ; $60a5: $7f
    ld e, $1f                                     ; $60a6: $1e $1f
    rrca                                          ; $60a8: $0f
    add hl, bc                                    ; $60a9: $09
    rra                                           ; $60aa: $1f
    ld d, $09                                     ; $60ab: $16 $09
    rrca                                          ; $60ad: $0f
    rlca                                          ; $60ae: $07
    rlca                                          ; $60af: $07
    ret nz                                        ; $60b0: $c0

    ret nz                                        ; $60b1: $c0

    jr nz, @-$1e                                  ; $60b2: $20 $e0

    db $10                                        ; $60b4: $10
    ldh a, [rNR10]                                ; $60b5: $f0 $10
    ldh a, [$30]                                  ; $60b7: $f0 $30

jr_021_60b9:
    ldh a, [$f8]                                  ; $60b9: $f0 $f8
    ld hl, sp-$04                                 ; $60bb: $f8 $fc
    db $f4                                        ; $60bd: $f4
    db $fc                                        ; $60be: $fc
    db $e4                                        ; $60bf: $e4
    ld hl, sp-$08                                 ; $60c0: $f8 $f8
    ld [hl], b                                    ; $60c2: $70
    ldh a, [$a8]                                  ; $60c3: $f0 $a8
    ld hl, sp+$7c                                 ; $60c5: $f8 $7c
    db $f4                                        ; $60c7: $f4
    cp $be                                        ; $60c8: $fe $be
    and $e6                                       ; $60ca: $e6 $e6
    ret nz                                        ; $60cc: $c0

    ret nz                                        ; $60cd: $c0

    nop                                           ; $60ce: $00
    nop                                           ; $60cf: $00
    inc bc                                        ; $60d0: $03
    inc bc                                        ; $60d1: $03
    inc b                                         ; $60d2: $04
    rlca                                          ; $60d3: $07
    ld [$090f], sp                                ; $60d4: $08 $0f $09
    rrca                                          ; $60d7: $0f
    rrca                                          ; $60d8: $0f
    rrca                                          ; $60d9: $0f
    rrca                                          ; $60da: $0f
    rrca                                          ; $60db: $0f
    rra                                           ; $60dc: $1f
    add hl, de                                    ; $60dd: $19
    rra                                           ; $60de: $1f
    jr jr_021_60f0                                ; $60df: $18 $0f

    ld c, $0d                                     ; $60e1: $0e $0d
    rrca                                          ; $60e3: $0f
    inc e                                         ; $60e4: $1c
    rla                                           ; $60e5: $17
    rra                                           ; $60e6: $1f
    rra                                           ; $60e7: $1f
    rlca                                          ; $60e8: $07
    inc b                                         ; $60e9: $04
    dec bc                                        ; $60ea: $0b
    ld c, $0b                                     ; $60eb: $0e $0b
    rrca                                          ; $60ed: $0f
    ld b, $06                                     ; $60ee: $06 $06

jr_021_60f0:
    ret nz                                        ; $60f0: $c0

    ret nz                                        ; $60f1: $c0

    ldh [$a0], a                                  ; $60f2: $e0 $a0
    ld [hl], b                                    ; $60f4: $70
    ldh a, [$c8]                                  ; $60f5: $f0 $c8
    ld hl, sp-$10                                 ; $60f7: $f8 $f0
    or b                                          ; $60f9: $b0
    ld hl, sp+$38                                 ; $60fa: $f8 $38
    db $fc                                        ; $60fc: $fc
    ld h, h                                       ; $60fd: $64
    ld hl, sp+$38                                 ; $60fe: $f8 $38
    ldh a, [rNR10]                                ; $6100: $f0 $10
    db $ec                                        ; $6102: $ec
    xor h                                         ; $6103: $ac
    ld c, h                                       ; $6104: $4c
    call z, $a8e8                                 ; $6105: $cc $e8 $a8
    ld hl, sp+$58                                 ; $6108: $f8 $58
    ldh a, [$f0]                                  ; $610a: $f0 $f0
    or b                                          ; $610c: $b0
    ldh a, [$e0]                                  ; $610d: $f0 $e0
    ldh [rTAC], a                                 ; $610f: $e0 $07
    rlca                                          ; $6111: $07
    dec bc                                        ; $6112: $0b
    ld c, $14                                     ; $6113: $0e $14
    rra                                           ; $6115: $1f
    inc de                                        ; $6116: $13
    rra                                           ; $6117: $1f
    rra                                           ; $6118: $1f
    ld e, $3f                                     ; $6119: $1e $3f
    ld a, [hl-]                                   ; $611b: $3a
    ld a, a                                       ; $611c: $7f
    ld d, h                                       ; $611d: $54
    ld a, a                                       ; $611e: $7f
    ld b, a                                       ; $611f: $47
    ccf                                           ; $6120: $3f
    inc sp                                        ; $6121: $33
    rst $18                                       ; $6122: $df
    call c, $ffeb                                 ; $6123: $dc $eb $ff
    ld a, h                                       ; $6126: $7c
    ld e, a                                       ; $6127: $5f
    ld a, a                                       ; $6128: $7f
    ld c, e                                       ; $6129: $4b
    ccf                                           ; $612a: $3f
    ld a, $07                                     ; $612b: $3e $07
    rlca                                          ; $612d: $07

jr_021_612e:
    ld bc, $c001                                  ; $612e: $01 $01 $c0
    ret nz                                        ; $6131: $c0

    and b                                         ; $6132: $a0
    ldh [$50], a                                  ; $6133: $e0 $50
    ldh a, [$90]                                  ; $6135: $f0 $90
    ldh a, [$f0]                                  ; $6137: $f0 $f0
    ldh a, [$f8]                                  ; $6139: $f0 $f8
    cp b                                          ; $613b: $b8
    db $fc                                        ; $613c: $fc
    ld d, h                                       ; $613d: $54
    db $fc                                        ; $613e: $fc
    call nz, $98f8                                ; $613f: $c4 $f8 $98
    add sp, $78                                   ; $6142: $e8 $78
    cp h                                          ; $6144: $bc
    db $f4                                        ; $6145: $f4
    db $fc                                        ; $6146: $fc
    db $fc                                        ; $6147: $fc
    ldh [rNR41], a                                ; $6148: $e0 $20
    ldh a, [$d0]                                  ; $614a: $f0 $d0
    jr nz, jr_021_612e                            ; $614c: $20 $e0

    ret nz                                        ; $614e: $c0

    ret nz                                        ; $614f: $c0

    inc bc                                        ; $6150: $03
    inc bc                                        ; $6151: $03
    rlca                                          ; $6152: $07
    dec b                                         ; $6153: $05

jr_021_6154:
    ld c, $0f                                     ; $6154: $0e $0f
    inc de                                        ; $6156: $13
    rra                                           ; $6157: $1f
    rrca                                          ; $6158: $0f
    dec c                                         ; $6159: $0d
    rra                                           ; $615a: $1f
    inc e                                         ; $615b: $1c
    ccf                                           ; $615c: $3f
    ld h, $7f                                     ; $615d: $26 $7f
    ld a, h                                       ; $615f: $7c
    ld l, a                                       ; $6160: $6f
    ld l, b                                       ; $6161: $68
    ccf                                           ; $6162: $3f
    dec a                                         ; $6163: $3d
    ld e, $17                                     ; $6164: $1e $17
    rrca                                          ; $6166: $0f
    rrca                                          ; $6167: $0f
    rlca                                          ; $6168: $07
    ld b, $0f                                     ; $6169: $06 $0f
    inc c                                         ; $616b: $0c
    dec bc                                        ; $616c: $0b
    ld c, $07                                     ; $616d: $0e $07
    rlca                                          ; $616f: $07
    ret nz                                        ; $6170: $c0

    ret nz                                        ; $6171: $c0

    jr nz, jr_021_6154                            ; $6172: $20 $e0

    db $10                                        ; $6174: $10
    ldh a, [$90]                                  ; $6175: $f0 $90
    ldh a, [$f0]                                  ; $6177: $f0 $f0
    ldh a, [$f0]                                  ; $6179: $f0 $f0
    ldh a, [$f8]                                  ; $617b: $f0 $f8
    sbc b                                         ; $617d: $98
    ld hl, sp+$18                                 ; $617e: $f8 $18
    ldh a, [rSVBK]                                ; $6180: $f0 $70
    and b                                         ; $6182: $a0
    ldh [$60], a                                  ; $6183: $e0 $60
    ldh [$f0], a                                  ; $6185: $e0 $f0
    ret nc                                        ; $6187: $d0

    ld hl, sp+$68                                 ; $6188: $f8 $68
    ld hl, sp-$08                                 ; $618a: $f8 $f8
    ldh a, [$f0]                                  ; $618c: $f0 $f0
    ld h, b                                       ; $618e: $60
    ld h, b                                       ; $618f: $60
    rlca                                          ; $6190: $07
    rlca                                          ; $6191: $07
    ld [$100f], sp                                ; $6192: $08 $0f $10
    rra                                           ; $6195: $1f
    db $10                                        ; $6196: $10
    rra                                           ; $6197: $1f
    jr jr_021_61b9                                ; $6198: $18 $1f

    ccf                                           ; $619a: $3f
    ccf                                           ; $619b: $3f
    ld a, a                                       ; $619c: $7f
    ld e, a                                       ; $619d: $5f
    ld a, a                                       ; $619e: $7f
    ld c, a                                       ; $619f: $4f
    ccf                                           ; $61a0: $3f
    ccf                                           ; $61a1: $3f
    inc e                                         ; $61a2: $1c
    rra                                           ; $61a3: $1f
    dec hl                                        ; $61a4: $2b
    ccf                                           ; $61a5: $3f
    ld a, h                                       ; $61a6: $7c
    ld e, a                                       ; $61a7: $5f
    ld a, a                                       ; $61a8: $7f
    ld a, e                                       ; $61a9: $7b
    rrca                                          ; $61aa: $0f
    ld c, $07                                     ; $61ab: $0e $07
    rlca                                          ; $61ad: $07

jr_021_61ae:
    ld bc, $c001                                  ; $61ae: $01 $01 $c0
    ret nz                                        ; $61b1: $c0

    jr nz, @-$1e                                  ; $61b2: $20 $e0

    db $10                                        ; $61b4: $10
    ldh a, [rNR10]                                ; $61b5: $f0 $10
    ldh a, [$30]                                  ; $61b7: $f0 $30

jr_021_61b9:
    ldh a, [$f8]                                  ; $61b9: $f0 $f8
    ld hl, sp-$02                                 ; $61bb: $f8 $fe
    or $fe                                        ; $61bd: $f6 $fe
    and $fc                                       ; $61bf: $e6 $fc
    db $fc                                        ; $61c1: $fc
    ld a, h                                       ; $61c2: $7c
    db $f4                                        ; $61c3: $f4
    xor h                                         ; $61c4: $ac
    db $fc                                        ; $61c5: $fc
    ldh a, [$f0]                                  ; $61c6: $f0 $f0
    ldh [rNR41], a                                ; $61c8: $e0 $20
    ldh a, [$d0]                                  ; $61ca: $f0 $d0
    jr nz, jr_021_61ae                            ; $61cc: $20 $e0

    ret nz                                        ; $61ce: $c0

    ret nz                                        ; $61cf: $c0

    inc bc                                        ; $61d0: $03
    inc bc                                        ; $61d1: $03
    inc b                                         ; $61d2: $04
    rlca                                          ; $61d3: $07

jr_021_61d4:
    ld [$0e0f], sp                                ; $61d4: $08 $0f $0e
    rrca                                          ; $61d7: $0f
    rrca                                          ; $61d8: $0f
    rrca                                          ; $61d9: $0f
    rra                                           ; $61da: $1f
    rra                                           ; $61db: $1f
    rra                                           ; $61dc: $1f
    add hl, de                                    ; $61dd: $19
    rrca                                          ; $61de: $0f
    ld [$0607], sp                                ; $61df: $08 $07 $06
    dec b                                         ; $61e2: $05
    rlca                                          ; $61e3: $07
    ld [$1d0f], sp                                ; $61e4: $08 $0f $1d
    rla                                           ; $61e7: $17
    rra                                           ; $61e8: $1f
    dec de                                        ; $61e9: $1b
    rra                                           ; $61ea: $1f
    rla                                           ; $61eb: $17
    add hl, bc                                    ; $61ec: $09
    rrca                                          ; $61ed: $0f
    rrca                                          ; $61ee: $0f
    rrca                                          ; $61ef: $0f
    ret nz                                        ; $61f0: $c0

    ret nz                                        ; $61f1: $c0

    jr nz, jr_021_61d4                            ; $61f2: $20 $e0

    ld [hl], b                                    ; $61f4: $70
    ret nc                                        ; $61f5: $d0

    ld [hl], b                                    ; $61f6: $70
    ldh a, [$c8]                                  ; $61f7: $f0 $c8
    ld hl, sp-$10                                 ; $61f9: $f8 $f0
    or b                                          ; $61fb: $b0
    ld hl, sp+$38                                 ; $61fc: $f8 $38
    db $fc                                        ; $61fe: $fc
    inc h                                         ; $61ff: $24
    ld hl, sp+$78                                 ; $6200: $f8 $78
    ldh a, [$30]                                  ; $6202: $f0 $30
    ldh [$e0], a                                  ; $6204: $e0 $e0
    ldh [$a0], a                                  ; $6206: $e0 $a0
    ldh a, [$d0]                                  ; $6208: $f0 $d0
    jr nc, jr_021_623c                            ; $620a: $30 $30

    dec de                                        ; $620c: $1b
    dec de                                        ; $620d: $1b
    rrca                                          ; $620e: $0f
    rrca                                          ; $620f: $0f
    rlca                                          ; $6210: $07
    rlca                                          ; $6211: $07
    ld [$110f], sp                                ; $6212: $08 $0f $11
    rra                                           ; $6215: $1f
    ld d, $1f                                     ; $6216: $16 $1f
    add hl, de                                    ; $6218: $19
    rra                                           ; $6219: $1f
    rra                                           ; $621a: $1f
    rra                                           ; $621b: $1f
    ccf                                           ; $621c: $3f
    add hl, hl                                    ; $621d: $29
    ccf                                           ; $621e: $3f
    ld [hl+], a                                   ; $621f: $22
    rra                                           ; $6220: $1f
    dec de                                        ; $6221: $1b
    rra                                           ; $6222: $1f
    rra                                           ; $6223: $1f
    ld d, $1f                                     ; $6224: $16 $1f
    rrca                                          ; $6226: $0f
    dec c                                         ; $6227: $0d

jr_021_6228:
    rrca                                          ; $6228: $0f
    dec bc                                        ; $6229: $0b
    rrca                                          ; $622a: $0f
    dec c                                         ; $622b: $0d
    inc de                                        ; $622c: $13
    rra                                           ; $622d: $1f
    rra                                           ; $622e: $1f
    rra                                           ; $622f: $1f
    ret nz                                        ; $6230: $c0

    ret nz                                        ; $6231: $c0

    and b                                         ; $6232: $a0
    ldh [$d0], a                                  ; $6233: $e0 $d0
    ld [hl], b                                    ; $6235: $70
    jr nc, jr_021_6228                            ; $6236: $30 $f0

    ret nc                                        ; $6238: $d0

    ldh a, [$f8]                                  ; $6239: $f0 $f8
    ld a, b                                       ; $623b: $78

jr_021_623c:
    ld hl, sp+$58                                 ; $623c: $f8 $58
    ld hl, sp+$28                                 ; $623e: $f8 $28
    ldh a, [$f0]                                  ; $6240: $f0 $f0
    ldh a, [$f0]                                  ; $6242: $f0 $f0
    ret nc                                        ; $6244: $d0

    ldh a, [$60]                                  ; $6245: $f0 $60
    ldh [$e0], a                                  ; $6247: $e0 $e0
    and b                                         ; $6249: $a0
    ldh [$60], a                                  ; $624a: $e0 $60
    sub b                                         ; $624c: $90
    ldh a, [$f0]                                  ; $624d: $f0 $f0
    ldh a, [$03]                                  ; $624f: $f0 $03
    inc bc                                        ; $6251: $03
    inc b                                         ; $6252: $04
    rlca                                          ; $6253: $07

jr_021_6254:
    ld c, $0b                                     ; $6254: $0e $0b
    ld c, $0f                                     ; $6256: $0e $0f
    inc de                                        ; $6258: $13
    rra                                           ; $6259: $1f
    rrca                                          ; $625a: $0f
    dec c                                         ; $625b: $0d
    rra                                           ; $625c: $1f
    inc e                                         ; $625d: $1c
    ccf                                           ; $625e: $3f
    inc h                                         ; $625f: $24
    rra                                           ; $6260: $1f
    ld e, $0f                                     ; $6261: $1e $0f
    inc c                                         ; $6263: $0c
    rlca                                          ; $6264: $07
    rlca                                          ; $6265: $07
    rlca                                          ; $6266: $07
    dec b                                         ; $6267: $05
    rrca                                          ; $6268: $0f
    dec bc                                        ; $6269: $0b
    dec c                                         ; $626a: $0d
    dec c                                         ; $626b: $0d
    jp c, $f3db                                   ; $626c: $da $db $f3

    di                                            ; $626f: $f3
    ret nz                                        ; $6270: $c0

    ret nz                                        ; $6271: $c0

    jr nz, jr_021_6254                            ; $6272: $20 $e0

    db $10                                        ; $6274: $10
    ldh a, [rSVBK]                                ; $6275: $f0 $70
    ldh a, [$f0]                                  ; $6277: $f0 $f0
    ldh a, [$f8]                                  ; $6279: $f0 $f8
    ld hl, sp-$08                                 ; $627b: $f8 $f8
    sbc b                                         ; $627d: $98
    ldh a, [rNR10]                                ; $627e: $f0 $10
    ldh [$60], a                                  ; $6280: $e0 $60
    and b                                         ; $6282: $a0
    ldh [rNR10], a                                ; $6283: $e0 $10
    ldh a, [$b8]                                  ; $6285: $f0 $b8
    add sp, -$08                                  ; $6287: $e8 $f8
    ret z                                         ; $6289: $c8

    ld hl, sp-$18                                 ; $628a: $f8 $e8
    sub b                                         ; $628c: $90
    ldh a, [$f0]                                  ; $628d: $f0 $f0
    ldh a, [rTAC]                                 ; $628f: $f0 $07
    rlca                                          ; $6291: $07
    ld [$100f], sp                                ; $6292: $08 $0f $10
    rra                                           ; $6295: $1f
    db $10                                        ; $6296: $10
    rra                                           ; $6297: $1f
    rra                                           ; $6298: $1f
    rra                                           ; $6299: $1f
    rra                                           ; $629a: $1f
    rra                                           ; $629b: $1f
    ccf                                           ; $629c: $3f
    cpl                                           ; $629d: $2f
    ccf                                           ; $629e: $3f
    daa                                           ; $629f: $27
    rra                                           ; $62a0: $1f
    rra                                           ; $62a1: $1f
    inc c                                         ; $62a2: $0c
    rrca                                          ; $62a3: $0f
    inc d                                         ; $62a4: $14
    rra                                           ; $62a5: $1f
    rra                                           ; $62a6: $1f
    rra                                           ; $62a7: $1f
    rrca                                          ; $62a8: $0f
    add hl, bc                                    ; $62a9: $09
    rrca                                          ; $62aa: $0f

jr_021_62ab:
    dec bc                                        ; $62ab: $0b
    inc de                                        ; $62ac: $13
    rra                                           ; $62ad: $1f
    rra                                           ; $62ae: $1f
    rra                                           ; $62af: $1f
    ret nz                                        ; $62b0: $c0

    ret nz                                        ; $62b1: $c0

    jr nz, @-$1e                                  ; $62b2: $20 $e0

    db $10                                        ; $62b4: $10
    ldh a, [rNR10]                                ; $62b5: $f0 $10
    ldh a, [$f0]                                  ; $62b7: $f0 $f0
    ldh a, [$f0]                                  ; $62b9: $f0 $f0
    ldh a, [$f8]                                  ; $62bb: $f0 $f8
    ld hl, sp-$08                                 ; $62bd: $f8 $f8
    add sp, -$10                                  ; $62bf: $e8 $f0
    ldh a, [rSVBK]                                ; $62c1: $f0 $70
    ldh a, [$50]                                  ; $62c3: $f0 $50
    ldh a, [$e0]                                  ; $62c5: $f0 $e0
    ldh [$e0], a                                  ; $62c7: $e0 $e0
    jr nz, jr_021_62ab                            ; $62c9: $20 $e0

    and b                                         ; $62cb: $a0
    sub b                                         ; $62cc: $90
    ldh a, [$f0]                                  ; $62cd: $f0 $f0
    ldh a, [$03]                                  ; $62cf: $f0 $03
    inc bc                                        ; $62d1: $03
    inc b                                         ; $62d2: $04
    rlca                                          ; $62d3: $07

jr_021_62d4:
    ld [$0e0f], sp                                ; $62d4: $08 $0f $0e
    rrca                                          ; $62d7: $0f
    rrca                                          ; $62d8: $0f
    rrca                                          ; $62d9: $0f
    rra                                           ; $62da: $1f
    rra                                           ; $62db: $1f
    rra                                           ; $62dc: $1f
    add hl, de                                    ; $62dd: $19
    rrca                                          ; $62de: $0f
    ld [$0607], sp                                ; $62df: $08 $07 $06
    rlca                                          ; $62e2: $07
    rlca                                          ; $62e3: $07
    ld c, $0f                                     ; $62e4: $0e $0f
    rra                                           ; $62e6: $1f
    rla                                           ; $62e7: $17
    rra                                           ; $62e8: $1f
    dec de                                        ; $62e9: $1b
    rra                                           ; $62ea: $1f
    rla                                           ; $62eb: $17
    add hl, bc                                    ; $62ec: $09
    rrca                                          ; $62ed: $0f
    rrca                                          ; $62ee: $0f
    rrca                                          ; $62ef: $0f
    ret nz                                        ; $62f0: $c0

    ret nz                                        ; $62f1: $c0

    jr nz, jr_021_62d4                            ; $62f2: $20 $e0

    ld [hl], b                                    ; $62f4: $70
    ret nc                                        ; $62f5: $d0

    ld [hl], b                                    ; $62f6: $70
    ldh a, [$c8]                                  ; $62f7: $f0 $c8
    ld hl, sp-$10                                 ; $62f9: $f8 $f0
    or b                                          ; $62fb: $b0
    ld hl, sp+$38                                 ; $62fc: $f8 $38
    db $fc                                        ; $62fe: $fc
    inc h                                         ; $62ff: $24
    ld hl, sp+$78                                 ; $6300: $f8 $78
    ldh a, [$30]                                  ; $6302: $f0 $30
    ldh [$e0], a                                  ; $6304: $e0 $e0
    ld h, b                                       ; $6306: $60
    and b                                         ; $6307: $a0
    ret nz                                        ; $6308: $c0

    ret nz                                        ; $6309: $c0

    nop                                           ; $630a: $00
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    nop                                           ; $630f: $00
    rlca                                          ; $6310: $07
    rlca                                          ; $6311: $07
    ld [$110f], sp                                ; $6312: $08 $0f $11
    rra                                           ; $6315: $1f
    ld d, $1f                                     ; $6316: $16 $1f
    add hl, de                                    ; $6318: $19
    rra                                           ; $6319: $1f
    rra                                           ; $631a: $1f
    rra                                           ; $631b: $1f
    ccf                                           ; $631c: $3f
    add hl, hl                                    ; $631d: $29
    ccf                                           ; $631e: $3f
    ld [hl+], a                                   ; $631f: $22
    rra                                           ; $6320: $1f
    dec de                                        ; $6321: $1b
    rst $18                                       ; $6322: $df
    rst $18                                       ; $6323: $df
    di                                            ; $6324: $f3
    rst $38                                       ; $6325: $ff
    ld a, l                                       ; $6326: $7d
    ld [hl], a                                    ; $6327: $77

jr_021_6328:
    rra                                           ; $6328: $1f
    rra                                           ; $6329: $1f
    rrca                                          ; $632a: $0f
    dec c                                         ; $632b: $0d
    ld [de], a                                    ; $632c: $12
    ld e, $1e                                     ; $632d: $1e $1e
    ld e, $c0                                     ; $632f: $1e $c0
    ret nz                                        ; $6331: $c0

    and b                                         ; $6332: $a0
    ldh [$d0], a                                  ; $6333: $e0 $d0
    ld [hl], b                                    ; $6335: $70
    jr nc, jr_021_6328                            ; $6336: $30 $f0

    ret nc                                        ; $6338: $d0

    ldh a, [$f8]                                  ; $6339: $f0 $f8
    ld a, b                                       ; $633b: $78
    ld hl, sp+$58                                 ; $633c: $f8 $58
    ld hl, sp+$28                                 ; $633e: $f8 $28
    ldh a, [$f0]                                  ; $6340: $f0 $f0
    ldh [$e0], a                                  ; $6342: $e0 $e0
    and b                                         ; $6344: $a0
    ldh [$e0], a                                  ; $6345: $e0 $e0
    ld h, b                                       ; $6347: $60
    ldh [$a0], a                                  ; $6348: $e0 $a0
    ldh [$60], a                                  ; $634a: $e0 $60
    sub b                                         ; $634c: $90
    ldh a, [$f0]                                  ; $634d: $f0 $f0
    ldh a, [$03]                                  ; $634f: $f0 $03
    inc bc                                        ; $6351: $03
    inc b                                         ; $6352: $04
    rlca                                          ; $6353: $07

jr_021_6354:
    ld c, $0b                                     ; $6354: $0e $0b
    ld c, $0f                                     ; $6356: $0e $0f
    inc de                                        ; $6358: $13
    rra                                           ; $6359: $1f
    rrca                                          ; $635a: $0f
    dec c                                         ; $635b: $0d
    rra                                           ; $635c: $1f
    inc e                                         ; $635d: $1c
    ccf                                           ; $635e: $3f
    inc h                                         ; $635f: $24
    rra                                           ; $6360: $1f
    ld e, $0f                                     ; $6361: $1e $0f
    dec c                                         ; $6363: $0d
    ld a, [bc]                                    ; $6364: $0a
    rrca                                          ; $6365: $0f
    rlca                                          ; $6366: $07
    rlca                                          ; $6367: $07
    inc bc                                        ; $6368: $03
    inc bc                                        ; $6369: $03
    ld bc, $0201                                  ; $636a: $01 $01 $02
    inc bc                                        ; $636d: $03
    inc bc                                        ; $636e: $03
    inc bc                                        ; $636f: $03
    ret nz                                        ; $6370: $c0

    ret nz                                        ; $6371: $c0

    jr nz, jr_021_6354                            ; $6372: $20 $e0

    db $10                                        ; $6374: $10
    ldh a, [rSVBK]                                ; $6375: $f0 $70
    ldh a, [$f0]                                  ; $6377: $f0 $f0
    ldh a, [$f8]                                  ; $6379: $f0 $f8
    ld hl, sp-$08                                 ; $637b: $f8 $f8
    sbc b                                         ; $637d: $98
    ldh a, [rNR10]                                ; $637e: $f0 $10
    ldh [$60], a                                  ; $6380: $e0 $60
    or b                                          ; $6382: $b0
    ldh a, [rNR10]                                ; $6383: $f0 $10
    ldh a, [$38]                                  ; $6385: $f0 $38
    add sp, -$08                                  ; $6387: $e8 $f8
    ret z                                         ; $6389: $c8

    ld hl, sp-$18                                 ; $638a: $f8 $e8
    sub b                                         ; $638c: $90
    ldh a, [$f0]                                  ; $638d: $f0 $f0
    ldh a, [rTAC]                                 ; $638f: $f0 $07
    rlca                                          ; $6391: $07
    ld [$100f], sp                                ; $6392: $08 $0f $10
    rra                                           ; $6395: $1f
    db $10                                        ; $6396: $10
    rra                                           ; $6397: $1f
    rra                                           ; $6398: $1f
    rra                                           ; $6399: $1f
    rra                                           ; $639a: $1f
    rra                                           ; $639b: $1f
    ccf                                           ; $639c: $3f
    cpl                                           ; $639d: $2f
    ccf                                           ; $639e: $3f
    daa                                           ; $639f: $27
    rra                                           ; $63a0: $1f
    rra                                           ; $63a1: $1f
    inc c                                         ; $63a2: $0c
    rrca                                          ; $63a3: $0f
    ld [$0f0f], sp                                ; $63a4: $08 $0f $0f
    rrca                                          ; $63a7: $0f
    rrca                                          ; $63a8: $0f
    add hl, bc                                    ; $63a9: $09
    rrca                                          ; $63aa: $0f

jr_021_63ab:
    dec bc                                        ; $63ab: $0b
    ld [de], a                                    ; $63ac: $12
    ld e, $1e                                     ; $63ad: $1e $1e
    ld e, $c0                                     ; $63af: $1e $c0
    ret nz                                        ; $63b1: $c0

    jr nz, @-$1e                                  ; $63b2: $20 $e0

    db $10                                        ; $63b4: $10
    ldh a, [rNR10]                                ; $63b5: $f0 $10
    ldh a, [$f0]                                  ; $63b7: $f0 $f0
    ldh a, [$f0]                                  ; $63b9: $f0 $f0
    ldh a, [$f8]                                  ; $63bb: $f0 $f8
    ld hl, sp-$08                                 ; $63bd: $f8 $f8
    add sp, -$10                                  ; $63bf: $e8 $f0
    ldh a, [rPCM12]                               ; $63c1: $f0 $76
    or $be                                        ; $63c3: $f6 $be
    xor $fe                                       ; $63c5: $ee $fe
    cp $f0                                        ; $63c7: $fe $f0
    jr nc, jr_021_63ab                            ; $63c9: $30 $e0

    and b                                         ; $63cb: $a0
    sub b                                         ; $63cc: $90
    ldh a, [$f0]                                  ; $63cd: $f0 $f0
    ldh a, [$03]                                  ; $63cf: $f0 $03
    inc bc                                        ; $63d1: $03
    inc b                                         ; $63d2: $04
    rlca                                          ; $63d3: $07

jr_021_63d4:
    ret z                                         ; $63d4: $c8

    rst $08                                       ; $63d5: $cf
    adc $cf                                       ; $63d6: $ce $cf
    rst $08                                       ; $63d8: $cf
    rst $08                                       ; $63d9: $cf
    ld e, a                                       ; $63da: $5f
    ld e, a                                       ; $63db: $5f
    ccf                                           ; $63dc: $3f
    add hl, sp                                    ; $63dd: $39
    ccf                                           ; $63de: $3f
    jr c, jr_021_6420                             ; $63df: $38 $3f

    ld l, $1b                                     ; $63e1: $2e $1b
    rra                                           ; $63e3: $1f
    rrca                                          ; $63e4: $0f
    ld c, $1d                                     ; $63e5: $0e $1d
    rla                                           ; $63e7: $17
    rra                                           ; $63e8: $1f
    dec de                                        ; $63e9: $1b
    rra                                           ; $63ea: $1f
    rla                                           ; $63eb: $17
    add hl, bc                                    ; $63ec: $09
    rrca                                          ; $63ed: $0f
    rrca                                          ; $63ee: $0f
    rrca                                          ; $63ef: $0f
    ret nz                                        ; $63f0: $c0

    ret nz                                        ; $63f1: $c0

    jr nz, jr_021_63d4                            ; $63f2: $20 $e0

    ld [hl], b                                    ; $63f4: $70
    ret nc                                        ; $63f5: $d0

    ld [hl], b                                    ; $63f6: $70
    ldh a, [$c8]                                  ; $63f7: $f0 $c8
    ld hl, sp-$10                                 ; $63f9: $f8 $f0
    or b                                          ; $63fb: $b0
    ld hl, sp+$38                                 ; $63fc: $f8 $38
    db $fc                                        ; $63fe: $fc
    inc h                                         ; $63ff: $24
    ld hl, sp+$78                                 ; $6400: $f8 $78
    ldh a, [$30]                                  ; $6402: $f0 $30
    ldh [$e0], a                                  ; $6404: $e0 $e0
    ld b, b                                       ; $6406: $40
    ret nz                                        ; $6407: $c0

    ret nz                                        ; $6408: $c0

    ret nz                                        ; $6409: $c0

    nop                                           ; $640a: $00
    nop                                           ; $640b: $00
    nop                                           ; $640c: $00
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    rlca                                          ; $6410: $07
    rlca                                          ; $6411: $07
    ld [$710f], sp                                ; $6412: $08 $0f $71
    ld a, a                                       ; $6415: $7f
    halt                                          ; $6416: $76
    ld a, a                                       ; $6417: $7f
    ld a, c                                       ; $6418: $79
    ld a, a                                       ; $6419: $7f
    ld e, a                                       ; $641a: $5f
    ld e, a                                       ; $641b: $5f
    ld a, a                                       ; $641c: $7f
    ld l, c                                       ; $641d: $69
    ld a, a                                       ; $641e: $7f
    ld h, d                                       ; $641f: $62

jr_021_6420:
    ld a, a                                       ; $6420: $7f
    ld e, e                                       ; $6421: $5b
    scf                                           ; $6422: $37
    ccf                                           ; $6423: $3f
    rra                                           ; $6424: $1f
    dec e                                         ; $6425: $1d

jr_021_6426:
    rrca                                          ; $6426: $0f
    rrca                                          ; $6427: $0f

jr_021_6428:
    rrca                                          ; $6428: $0f
    ld a, [bc]                                    ; $6429: $0a
    rrca                                          ; $642a: $0f
    dec c                                         ; $642b: $0d
    ld [de], a                                    ; $642c: $12
    ld e, $1e                                     ; $642d: $1e $1e
    ld e, $c0                                     ; $642f: $1e $c0
    ret nz                                        ; $6431: $c0

    and b                                         ; $6432: $a0
    ldh [$d0], a                                  ; $6433: $e0 $d0
    ld [hl], b                                    ; $6435: $70
    jr nc, jr_021_6428                            ; $6436: $30 $f0

    ret nc                                        ; $6438: $d0

    ldh a, [$f8]                                  ; $6439: $f0 $f8
    ld a, b                                       ; $643b: $78
    ld hl, sp+$58                                 ; $643c: $f8 $58
    ld hl, sp+$28                                 ; $643e: $f8 $28
    ldh a, [$f0]                                  ; $6440: $f0 $f0
    ldh [$e0], a                                  ; $6442: $e0 $e0
    jr nz, jr_021_6426                            ; $6444: $20 $e0

    ldh [$e0], a                                  ; $6446: $e0 $e0
    ldh [rNR41], a                                ; $6448: $e0 $20
    ldh [$60], a                                  ; $644a: $e0 $60
    sub b                                         ; $644c: $90
    ldh a, [$f0]                                  ; $644d: $f0 $f0
    ldh a, [$03]                                  ; $644f: $f0 $03
    inc bc                                        ; $6451: $03
    inc b                                         ; $6452: $04
    rlca                                          ; $6453: $07

jr_021_6454:
    ld c, $0b                                     ; $6454: $0e $0b
    ld c, $0f                                     ; $6456: $0e $0f
    inc de                                        ; $6458: $13
    rra                                           ; $6459: $1f
    rrca                                          ; $645a: $0f
    dec c                                         ; $645b: $0d
    rra                                           ; $645c: $1f
    inc e                                         ; $645d: $1c
    ccf                                           ; $645e: $3f
    ld h, $1f                                     ; $645f: $26 $1f
    inc e                                         ; $6461: $1c
    rrca                                          ; $6462: $0f
    dec c                                         ; $6463: $0d
    ld b, $07                                     ; $6464: $06 $07
    inc bc                                        ; $6466: $03
    inc bc                                        ; $6467: $03
    ld bc, $0101                                  ; $6468: $01 $01 $01
    ld bc, $0302                                  ; $646b: $01 $02 $03
    inc bc                                        ; $646e: $03
    inc bc                                        ; $646f: $03
    ret nz                                        ; $6470: $c0

    ret nz                                        ; $6471: $c0

    jr nz, jr_021_6454                            ; $6472: $20 $e0

    ld d, $f6                                     ; $6474: $16 $f6
    halt                                          ; $6476: $76
    or $fc                                        ; $6477: $f6 $fc
    db $fc                                        ; $6479: $fc
    ld hl, sp-$08                                 ; $647a: $f8 $f8
    ld hl, sp-$68                                 ; $647c: $f8 $98
    ldh a, [rNR10]                                ; $647e: $f0 $10
    ldh [$60], a                                  ; $6480: $e0 $60
    and b                                         ; $6482: $a0
    ldh [rNR10], a                                ; $6483: $e0 $10
    ldh a, [$38]                                  ; $6485: $f0 $38
    add sp, -$08                                  ; $6487: $e8 $f8
    ret z                                         ; $6489: $c8

    ld hl, sp-$18                                 ; $648a: $f8 $e8
    sub b                                         ; $648c: $90
    ldh a, [$f0]                                  ; $648d: $f0 $f0
    ldh a, [rTAC]                                 ; $648f: $f0 $07
    rlca                                          ; $6491: $07
    ld [$100f], sp                                ; $6492: $08 $0f $10
    rra                                           ; $6495: $1f
    db $10                                        ; $6496: $10
    rra                                           ; $6497: $1f
    rra                                           ; $6498: $1f
    rra                                           ; $6499: $1f
    rra                                           ; $649a: $1f
    rra                                           ; $649b: $1f
    ccf                                           ; $649c: $3f
    cpl                                           ; $649d: $2f
    ccf                                           ; $649e: $3f
    daa                                           ; $649f: $27
    rra                                           ; $64a0: $1f
    rra                                           ; $64a1: $1f
    inc b                                         ; $64a2: $04
    rlca                                          ; $64a3: $07
    add hl, bc                                    ; $64a4: $09
    rrca                                          ; $64a5: $0f
    rrca                                          ; $64a6: $0f
    rrca                                          ; $64a7: $0f
    rrca                                          ; $64a8: $0f
    add hl, bc                                    ; $64a9: $09
    rrca                                          ; $64aa: $0f
    dec bc                                        ; $64ab: $0b
    inc de                                        ; $64ac: $13
    rra                                           ; $64ad: $1f

jr_021_64ae:
    ld e, $1e                                     ; $64ae: $1e $1e
    ret nz                                        ; $64b0: $c0

    ret nz                                        ; $64b1: $c0

    jr nz, @-$1e                                  ; $64b2: $20 $e0

    jr jr_021_64ae                                ; $64b4: $18 $f8

    inc e                                         ; $64b6: $1c
    db $fc                                        ; $64b7: $fc
    db $fc                                        ; $64b8: $fc
    db $fc                                        ; $64b9: $fc
    db $f4                                        ; $64ba: $f4
    db $f4                                        ; $64bb: $f4
    db $fc                                        ; $64bc: $fc
    db $fc                                        ; $64bd: $fc
    db $fc                                        ; $64be: $fc
    db $ec                                        ; $64bf: $ec
    db $fc                                        ; $64c0: $fc
    db $fc                                        ; $64c1: $fc
    or h                                          ; $64c2: $b4
    db $fc                                        ; $64c3: $fc
    ld a, b                                       ; $64c4: $78
    ret c                                         ; $64c5: $d8

    ldh a, [$f0]                                  ; $64c6: $f0 $f0
    ldh [$60], a                                  ; $64c8: $e0 $60
    ldh [$a0], a                                  ; $64ca: $e0 $a0
    sub b                                         ; $64cc: $90
    ldh a, [$f0]                                  ; $64cd: $f0 $f0
    ldh a, [$03]                                  ; $64cf: $f0 $03
    inc bc                                        ; $64d1: $03
    inc b                                         ; $64d2: $04
    rlca                                          ; $64d3: $07

jr_021_64d4:
    ret z                                         ; $64d4: $c8

    rst $08                                       ; $64d5: $cf
    ret c                                         ; $64d6: $d8

    rst $18                                       ; $64d7: $df
    cp $ef                                        ; $64d8: $fe $ef
    ld a, a                                       ; $64da: $7f
    ld l, a                                       ; $64db: $6f
    ccf                                           ; $64dc: $3f
    ccf                                           ; $64dd: $3f
    ccf                                           ; $64de: $3f
    cpl                                           ; $64df: $2f
    dec d                                         ; $64e0: $15
    rra                                           ; $64e1: $1f
    ld [$0c0f], sp                                ; $64e2: $08 $0f $0c
    rrca                                          ; $64e5: $0f
    rra                                           ; $64e6: $1f
    inc de                                        ; $64e7: $13
    rra                                           ; $64e8: $1f
    inc d                                         ; $64e9: $14
    rra                                           ; $64ea: $1f
    rla                                           ; $64eb: $17
    rrca                                          ; $64ec: $0f
    rrca                                          ; $64ed: $0f
    rrca                                          ; $64ee: $0f
    rrca                                          ; $64ef: $0f
    ret nz                                        ; $64f0: $c0

    ret nz                                        ; $64f1: $c0

    jr nz, jr_021_64d4                            ; $64f2: $20 $e0

    db $10                                        ; $64f4: $10
    ldh a, [rNR10]                                ; $64f5: $f0 $10
    ldh a, [$28]                                  ; $64f7: $f0 $28
    ld hl, sp-$08                                 ; $64f9: $f8 $f8
    ld hl, sp-$08                                 ; $64fb: $f8 $f8
    add sp, -$08                                  ; $64fd: $e8 $f8
    ret z                                         ; $64ff: $c8

    ldh a, [$b0]                                  ; $6500: $f0 $b0
    ldh [$e0], a                                  ; $6502: $e0 $e0
    and b                                         ; $6504: $a0
    ldh [$c0], a                                  ; $6505: $e0 $c0
    ret nz                                        ; $6507: $c0

    add b                                         ; $6508: $80
    add b                                         ; $6509: $80
    add b                                         ; $650a: $80
    add b                                         ; $650b: $80
    ld b, b                                       ; $650c: $40
    ret nz                                        ; $650d: $c0

    ret nz                                        ; $650e: $c0

    ret nz                                        ; $650f: $c0

    inc bc                                        ; $6510: $03
    inc bc                                        ; $6511: $03
    inc b                                         ; $6512: $04
    rlca                                          ; $6513: $07

jr_021_6514:
    ld l, b                                       ; $6514: $68
    ld l, a                                       ; $6515: $6f
    ld a, b                                       ; $6516: $78
    ld a, a                                       ; $6517: $7f
    ld a, h                                       ; $6518: $7c
    ld a, a                                       ; $6519: $7f
    rrca                                          ; $651a: $0f
    rrca                                          ; $651b: $0f
    rra                                           ; $651c: $1f
    add hl, de                                    ; $651d: $19
    rra                                           ; $651e: $1f
    jr jr_021_6530                                ; $651f: $18 $0f

    ld c, $07                                     ; $6521: $0e $07
    rlca                                          ; $6523: $07
    inc b                                         ; $6524: $04
    rlca                                          ; $6525: $07
    rlca                                          ; $6526: $07
    rlca                                          ; $6527: $07
    rrca                                          ; $6528: $0f
    ld [$1d17], sp                                ; $6529: $08 $17 $1d
    rla                                           ; $652c: $17
    rra                                           ; $652d: $1f
    ld c, $0e                                     ; $652e: $0e $0e

jr_021_6530:
    ret nz                                        ; $6530: $c0

    ret nz                                        ; $6531: $c0

    jr nz, jr_021_6514                            ; $6532: $20 $e0

    ld [hl], b                                    ; $6534: $70
    ret nc                                        ; $6535: $d0

    ld c, b                                       ; $6536: $48
    ld hl, sp-$68                                 ; $6537: $f8 $98
    ld hl, sp-$04                                 ; $6539: $f8 $fc
    db $f4                                        ; $653b: $f4
    db $fc                                        ; $653c: $fc
    inc h                                         ; $653d: $24
    ld hl, sp+$78                                 ; $653e: $f8 $78
    ld hl, sp+$68                                 ; $6540: $f8 $68
    ldh a, [$f0]                                  ; $6542: $f0 $f0
    ld d, b                                       ; $6544: $50
    ldh a, [$e0]                                  ; $6545: $f0 $e0
    ldh [$e0], a                                  ; $6547: $e0 $e0
    and b                                         ; $6549: $a0
    ldh [$e0], a                                  ; $654a: $e0 $e0
    sub b                                         ; $654c: $90
    ldh a, [rSVBK]                                ; $654d: $f0 $70
    ld [hl], b                                    ; $654f: $70
    inc bc                                        ; $6550: $03
    inc bc                                        ; $6551: $03
    rlca                                          ; $6552: $07
    ld b, $0b                                     ; $6553: $06 $0b
    rrca                                          ; $6555: $0f
    inc c                                         ; $6556: $0c
    rrca                                          ; $6557: $0f
    dec bc                                        ; $6558: $0b
    rrca                                          ; $6559: $0f
    rrca                                          ; $655a: $0f
    ld c, $1f                                     ; $655b: $0e $1f
    dec de                                        ; $655d: $1b
    rra                                           ; $655e: $1f
    inc d                                         ; $655f: $14
    rrca                                          ; $6560: $0f
    rrca                                          ; $6561: $0f
    rlca                                          ; $6562: $07
    rlca                                          ; $6563: $07
    inc b                                         ; $6564: $04
    rlca                                          ; $6565: $07
    inc bc                                        ; $6566: $03
    inc bc                                        ; $6567: $03
    inc bc                                        ; $6568: $03
    ld [bc], a                                    ; $6569: $02
    inc bc                                        ; $656a: $03
    inc bc                                        ; $656b: $03
    dec b                                         ; $656c: $05
    rlca                                          ; $656d: $07
    rlca                                          ; $656e: $07
    rlca                                          ; $656f: $07
    ret nz                                        ; $6570: $c0

    ret nz                                        ; $6571: $c0

    and b                                         ; $6572: $a0
    ldh [$d6], a                                  ; $6573: $e0 $d6
    or $36                                        ; $6575: $f6 $36
    or $f6                                        ; $6577: $f6 $f6
    or $fc                                        ; $6579: $f6 $fc
    xor h                                         ; $657b: $ac
    db $fc                                        ; $657c: $fc
    inc c                                         ; $657d: $0c
    db $f4                                        ; $657e: $f4
    call c, $e8f8                                 ; $657f: $dc $f8 $e8
    ld hl, sp-$58                                 ; $6582: $f8 $a8
    ldh a, [$f0]                                  ; $6584: $f0 $f0
    or b                                          ; $6586: $b0
    ldh a, [$f0]                                  ; $6587: $f0 $f0
    ret nc                                        ; $6589: $d0

    ldh a, [$f0]                                  ; $658a: $f0 $f0
    sub b                                         ; $658c: $90
    ldh a, [rSVBK]                                ; $658d: $f0 $70
    ld [hl], b                                    ; $658f: $70
    rlca                                          ; $6590: $07
    rlca                                          ; $6591: $07
    ld [$180f], sp                                ; $6592: $08 $0f $18
    rra                                           ; $6595: $1f
    daa                                           ; $6596: $27
    ccf                                           ; $6597: $3f
    ccf                                           ; $6598: $3f
    ccf                                           ; $6599: $3f
    ccf                                           ; $659a: $3f
    inc [hl]                                      ; $659b: $34
    ld a, a                                       ; $659c: $7f
    ld c, b                                       ; $659d: $48
    ld a, a                                       ; $659e: $7f
    ld a, e                                       ; $659f: $7b
    ld a, $33                                     ; $65a0: $3e $33
    rra                                           ; $65a2: $1f
    rra                                           ; $65a3: $1f
    rla                                           ; $65a4: $17
    dec e                                         ; $65a5: $1d
    rra                                           ; $65a6: $1f
    ld e, $0f                                     ; $65a7: $1e $0f
    dec c                                         ; $65a9: $0d
    rrca                                          ; $65aa: $0f
    add hl, bc                                    ; $65ab: $09
    inc de                                        ; $65ac: $13
    ld e, $1f                                     ; $65ad: $1e $1f
    rra                                           ; $65af: $1f
    ret nz                                        ; $65b0: $c0

    ret nz                                        ; $65b1: $c0

    jr nz, @-$1e                                  ; $65b2: $20 $e0

    ld d, $f6                                     ; $65b4: $16 $f6
    ld d, $f6                                     ; $65b6: $16 $f6
    sub $f6                                       ; $65b8: $d6 $f6
    db $fc                                        ; $65ba: $fc
    db $fc                                        ; $65bb: $fc
    ld hl, sp-$08                                 ; $65bc: $f8 $f8
    ldh a, [$f0]                                  ; $65be: $f0 $f0
    ldh [$a0], a                                  ; $65c0: $e0 $a0
    ld b, b                                       ; $65c2: $40
    ret nz                                        ; $65c3: $c0

    ret nz                                        ; $65c4: $c0

    ret nz                                        ; $65c5: $c0

    ret nz                                        ; $65c6: $c0

    ret nz                                        ; $65c7: $c0

    ldh [$a0], a                                  ; $65c8: $e0 $a0
    ldh a, [$f0]                                  ; $65ca: $f0 $f0
    sub b                                         ; $65cc: $90
    ldh a, [$e0]                                  ; $65cd: $f0 $e0
    ldh [rP1], a                                  ; $65cf: $e0 $00
    nop                                           ; $65d1: $00
    inc bc                                        ; $65d2: $03
    inc bc                                        ; $65d3: $03
    inc b                                         ; $65d4: $04
    rlca                                          ; $65d5: $07
    ld [$090f], sp                                ; $65d6: $08 $0f $09
    rrca                                          ; $65d9: $0f
    rrca                                          ; $65da: $0f
    rrca                                          ; $65db: $0f
    rrca                                          ; $65dc: $0f
    rrca                                          ; $65dd: $0f
    rra                                           ; $65de: $1f
    add hl, de                                    ; $65df: $19
    rra                                           ; $65e0: $1f
    jr jr_021_65f2                                ; $65e1: $18 $0f

    ld c, $06                                     ; $65e3: $0e $06
    rlca                                          ; $65e5: $07
    rrca                                          ; $65e6: $0f
    dec bc                                        ; $65e7: $0b
    rra                                           ; $65e8: $1f
    ld d, $1f                                     ; $65e9: $16 $1f
    rra                                           ; $65eb: $1f
    dec c                                         ; $65ec: $0d
    rrca                                          ; $65ed: $0f
    ld b, $06                                     ; $65ee: $06 $06
    nop                                           ; $65f0: $00
    nop                                           ; $65f1: $00

jr_021_65f2:
    ret nz                                        ; $65f2: $c0

    ret nz                                        ; $65f3: $c0

    ldh [$a0], a                                  ; $65f4: $e0 $a0
    ld [hl], b                                    ; $65f6: $70
    ldh a, [$c8]                                  ; $65f7: $f0 $c8
    ld hl, sp-$10                                 ; $65f9: $f8 $f0
    or b                                          ; $65fb: $b0
    ld hl, sp+$38                                 ; $65fc: $f8 $38
    db $fc                                        ; $65fe: $fc
    ld h, h                                       ; $65ff: $64
    ld hl, sp+$38                                 ; $6600: $f8 $38
    ldh a, [rNR10]                                ; $6602: $f0 $10
    ld a, b                                       ; $6604: $78
    add sp, -$10                                  ; $6605: $e8 $f0
    ldh a, [$e0]                                  ; $6607: $f0 $e0
    ld h, b                                       ; $6609: $60
    ldh a, [$30]                                  ; $660a: $f0 $30
    ret nc                                        ; $660c: $d0

    ld [hl], b                                    ; $660d: $70
    ldh [$e0], a                                  ; $660e: $e0 $e0
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    rlca                                          ; $6612: $07
    rlca                                          ; $6613: $07
    dec bc                                        ; $6614: $0b
    ld c, $14                                     ; $6615: $0e $14
    rra                                           ; $6617: $1f
    inc de                                        ; $6618: $13
    rra                                           ; $6619: $1f
    rra                                           ; $661a: $1f
    ld e, $3f                                     ; $661b: $1e $3f
    ld a, [hl-]                                   ; $661d: $3a
    ld a, a                                       ; $661e: $7f
    ld d, h                                       ; $661f: $54
    ld a, a                                       ; $6620: $7f
    ld b, a                                       ; $6621: $47
    ccf                                           ; $6622: $3f
    inc sp                                        ; $6623: $33
    ld a, e                                       ; $6624: $7b
    ld e, a                                       ; $6625: $5f
    ld a, [hl]                                    ; $6626: $7e
    ld a, a                                       ; $6627: $7f
    rst $08                                       ; $6628: $cf
    ret                                           ; $6629: $c9


    rst $18                                       ; $662a: $df
    sub $09                                       ; $662b: $d6 $09
    rrca                                          ; $662d: $0f
    rlca                                          ; $662e: $07
    rlca                                          ; $662f: $07
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    ret nz                                        ; $6632: $c0

    ret nz                                        ; $6633: $c0

    and b                                         ; $6634: $a0
    ldh [$50], a                                  ; $6635: $e0 $50
    ldh a, [$90]                                  ; $6637: $f0 $90
    ldh a, [$f0]                                  ; $6639: $f0 $f0
    ldh a, [$f8]                                  ; $663b: $f0 $f8
    cp b                                          ; $663d: $b8
    db $fc                                        ; $663e: $fc
    ld d, h                                       ; $663f: $54
    db $fc                                        ; $6640: $fc
    call nz, $98f8                                ; $6641: $c4 $f8 $98
    xor b                                         ; $6644: $a8
    ld hl, sp+$7c                                 ; $6645: $f8 $7c
    db $f4                                        ; $6647: $f4
    db $fc                                        ; $6648: $fc
    and h                                         ; $6649: $a4
    ld hl, sp-$08                                 ; $664a: $f8 $f8
    ret nz                                        ; $664c: $c0

    ret nz                                        ; $664d: $c0

    nop                                           ; $664e: $00
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    inc bc                                        ; $6652: $03
    inc bc                                        ; $6653: $03
    rlca                                          ; $6654: $07
    dec b                                         ; $6655: $05

jr_021_6656:
    ld c, $0f                                     ; $6656: $0e $0f
    inc de                                        ; $6658: $13
    rra                                           ; $6659: $1f
    rrca                                          ; $665a: $0f
    dec c                                         ; $665b: $0d
    rra                                           ; $665c: $1f
    inc e                                         ; $665d: $1c
    ccf                                           ; $665e: $3f
    ld h, $1f                                     ; $665f: $26 $1f
    inc e                                         ; $6661: $1c
    rrca                                          ; $6662: $0f
    ld [$0302], sp                                ; $6663: $08 $02 $03
    rlca                                          ; $6666: $07
    dec b                                         ; $6667: $05
    rrca                                          ; $6668: $0f
    ld a, [bc]                                    ; $6669: $0a
    rrca                                          ; $666a: $0f
    rrca                                          ; $666b: $0f
    dec c                                         ; $666c: $0d
    rrca                                          ; $666d: $0f

jr_021_666e:
    rlca                                          ; $666e: $07
    rlca                                          ; $666f: $07
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    ret nz                                        ; $6672: $c0

    ret nz                                        ; $6673: $c0

    jr nz, jr_021_6656                            ; $6674: $20 $e0

    db $10                                        ; $6676: $10
    ldh a, [rNR10]                                ; $6677: $f0 $10
    ldh a, [$f0]                                  ; $6679: $f0 $f0
    ldh a, [$f0]                                  ; $667b: $f0 $f0
    ldh a, [$f8]                                  ; $667d: $f0 $f8
    sbc b                                         ; $667f: $98
    ld hl, sp+$18                                 ; $6680: $f8 $18
    ldh a, [rSVBK]                                ; $6682: $f0 $70
    jr c, jr_021_666e                             ; $6684: $38 $e8

    ld hl, sp-$08                                 ; $6686: $f8 $f8
    ldh [rNR41], a                                ; $6688: $e0 $20
    ret nc                                        ; $668a: $d0

    ld [hl], b                                    ; $668b: $70
    ret nc                                        ; $668c: $d0

    ldh a, [$60]                                  ; $668d: $f0 $60
    ld h, b                                       ; $668f: $60
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    rlca                                          ; $6692: $07
    rlca                                          ; $6693: $07
    ld [$100f], sp                                ; $6694: $08 $0f $10
    rra                                           ; $6697: $1f
    db $10                                        ; $6698: $10
    rra                                           ; $6699: $1f
    jr jr_021_66bb                                ; $669a: $18 $1f

    ccf                                           ; $669c: $3f
    ccf                                           ; $669d: $3f
    ld a, a                                       ; $669e: $7f
    ld e, a                                       ; $669f: $5f
    ld a, a                                       ; $66a0: $7f
    ld c, a                                       ; $66a1: $4f
    ccf                                           ; $66a2: $3f
    ccf                                           ; $66a3: $3f
    ld l, e                                       ; $66a4: $6b
    ld a, a                                       ; $66a5: $7f
    ld e, $1f                                     ; $66a6: $1e $1f
    rrca                                          ; $66a8: $0f
    add hl, bc                                    ; $66a9: $09
    rra                                           ; $66aa: $1f
    ld d, $09                                     ; $66ab: $16 $09
    rrca                                          ; $66ad: $0f
    rlca                                          ; $66ae: $07
    rlca                                          ; $66af: $07
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    ret nz                                        ; $66b2: $c0

    ret nz                                        ; $66b3: $c0

    jr nz, @-$1e                                  ; $66b4: $20 $e0

    db $10                                        ; $66b6: $10
    ldh a, [rNR10]                                ; $66b7: $f0 $10
    ldh a, [$30]                                  ; $66b9: $f0 $30

jr_021_66bb:
    ldh a, [$f8]                                  ; $66bb: $f0 $f8
    ld hl, sp-$04                                 ; $66bd: $f8 $fc
    db $f4                                        ; $66bf: $f4
    db $fc                                        ; $66c0: $fc
    db $e4                                        ; $66c1: $e4
    ld hl, sp-$08                                 ; $66c2: $f8 $f8
    xor b                                         ; $66c4: $a8
    ld hl, sp+$7c                                 ; $66c5: $f8 $7c
    db $f4                                        ; $66c7: $f4
    cp $be                                        ; $66c8: $fe $be
    and $e6                                       ; $66ca: $e6 $e6
    ret nz                                        ; $66cc: $c0

    ret nz                                        ; $66cd: $c0

    nop                                           ; $66ce: $00
    nop                                           ; $66cf: $00
    ld bc, $0201                                  ; $66d0: $01 $01 $02
    inc bc                                        ; $66d3: $03
    inc b                                         ; $66d4: $04
    rlca                                          ; $66d5: $07
    inc b                                         ; $66d6: $04
    rlca                                          ; $66d7: $07
    rlca                                          ; $66d8: $07
    rlca                                          ; $66d9: $07
    rlca                                          ; $66da: $07
    rlca                                          ; $66db: $07
    rrca                                          ; $66dc: $0f
    inc c                                         ; $66dd: $0c
    rrca                                          ; $66de: $0f
    inc c                                         ; $66df: $0c
    rlca                                          ; $66e0: $07
    rlca                                          ; $66e1: $07
    dec b                                         ; $66e2: $05
    rlca                                          ; $66e3: $07
    ld b, $07                                     ; $66e4: $06 $07
    rrca                                          ; $66e6: $0f
    dec bc                                        ; $66e7: $0b
    rra                                           ; $66e8: $1f
    ld d, $1f                                     ; $66e9: $16 $1f
    rra                                           ; $66eb: $1f
    dec c                                         ; $66ec: $0d
    rrca                                          ; $66ed: $0f

jr_021_66ee:
    ld b, $06                                     ; $66ee: $06 $06
    ldh [$e0], a                                  ; $66f0: $e0 $e0
    ld [hl], b                                    ; $66f2: $70
    ret nc                                        ; $66f3: $d0

    jr c, jr_021_66ee                             ; $66f4: $38 $f8

    db $e4                                        ; $66f6: $e4
    db $fc                                        ; $66f7: $fc
    ld hl, sp-$28                                 ; $66f8: $f8 $d8
    db $fc                                        ; $66fa: $fc
    sbc h                                         ; $66fb: $9c
    cp $b2                                        ; $66fc: $fe $b2
    db $fc                                        ; $66fe: $fc
    inc e                                         ; $66ff: $1c
    ld hl, sp+$08                                 ; $6700: $f8 $08
    ldh a, [$b0]                                  ; $6702: $f0 $b0
    ld a, b                                       ; $6704: $78
    add sp, -$10                                  ; $6705: $e8 $f0
    ldh a, [$e0]                                  ; $6707: $f0 $e0
    ld h, b                                       ; $6709: $60
    ldh a, [$30]                                  ; $670a: $f0 $30
    ret nc                                        ; $670c: $d0

    ld [hl], b                                    ; $670d: $70
    ldh [$e0], a                                  ; $670e: $e0 $e0
    inc bc                                        ; $6710: $03
    inc bc                                        ; $6711: $03
    dec b                                         ; $6712: $05
    rlca                                          ; $6713: $07
    ld a, [bc]                                    ; $6714: $0a
    rrca                                          ; $6715: $0f
    add hl, bc                                    ; $6716: $09
    rrca                                          ; $6717: $0f
    rrca                                          ; $6718: $0f
    rrca                                          ; $6719: $0f
    rra                                           ; $671a: $1f
    dec e                                         ; $671b: $1d
    ccf                                           ; $671c: $3f
    ld a, [hl+]                                   ; $671d: $2a
    ccf                                           ; $671e: $3f
    inc hl                                        ; $671f: $23
    rra                                           ; $6720: $1f
    add hl, de                                    ; $6721: $19
    cpl                                           ; $6722: $2f
    inc a                                         ; $6723: $3c
    ld a, e                                       ; $6724: $7b
    ld e, a                                       ; $6725: $5f
    ld a, [hl]                                    ; $6726: $7e
    ld a, a                                       ; $6727: $7f
    rst $08                                       ; $6728: $cf
    ret                                           ; $6729: $c9


    rst $18                                       ; $672a: $df
    sub $09                                       ; $672b: $d6 $09
    rrca                                          ; $672d: $0f

jr_021_672e:
    rlca                                          ; $672e: $07
    rlca                                          ; $672f: $07
    ldh [$e0], a                                  ; $6730: $e0 $e0
    ret nc                                        ; $6732: $d0

    ld [hl], b                                    ; $6733: $70
    jr z, jr_021_672e                             ; $6734: $28 $f8

    ret z                                         ; $6736: $c8

    ld hl, sp-$08                                 ; $6737: $f8 $f8
    ld a, b                                       ; $6739: $78
    db $fc                                        ; $673a: $fc
    ld e, h                                       ; $673b: $5c
    cp $2a                                        ; $673c: $fe $2a
    cp $e2                                        ; $673e: $fe $e2
    db $fc                                        ; $6740: $fc
    call z, Call_021_70f0                         ; $6741: $cc $f0 $70
    xor b                                         ; $6744: $a8
    ld hl, sp+$7c                                 ; $6745: $f8 $7c
    db $f4                                        ; $6747: $f4
    db $fc                                        ; $6748: $fc
    and h                                         ; $6749: $a4
    ld hl, sp-$08                                 ; $674a: $f8 $f8
    ret nz                                        ; $674c: $c0

    ret nz                                        ; $674d: $c0

    nop                                           ; $674e: $00
    nop                                           ; $674f: $00
    ld bc, $0301                                  ; $6750: $01 $01 $03
    ld [bc], a                                    ; $6753: $02
    rlca                                          ; $6754: $07
    rlca                                          ; $6755: $07
    add hl, bc                                    ; $6756: $09
    rrca                                          ; $6757: $0f
    rlca                                          ; $6758: $07
    ld b, $0f                                     ; $6759: $06 $0f

jr_021_675b:
    ld c, $1f                                     ; $675b: $0e $1f
    inc de                                        ; $675d: $13
    rrca                                          ; $675e: $0f
    ld c, $07                                     ; $675f: $0e $07
    inc b                                         ; $6761: $04
    rlca                                          ; $6762: $07
    dec b                                         ; $6763: $05
    ld [bc], a                                    ; $6764: $02
    inc bc                                        ; $6765: $03
    rlca                                          ; $6766: $07
    dec b                                         ; $6767: $05
    rrca                                          ; $6768: $0f
    ld a, [bc]                                    ; $6769: $0a
    rrca                                          ; $676a: $0f
    rrca                                          ; $676b: $0f
    dec c                                         ; $676c: $0d
    rrca                                          ; $676d: $0f
    rlca                                          ; $676e: $07
    rlca                                          ; $676f: $07
    ldh [$e0], a                                  ; $6770: $e0 $e0
    sub b                                         ; $6772: $90
    ldh a, [$08]                                  ; $6773: $f0 $08
    ld hl, sp-$78                                 ; $6775: $f8 $88
    ld hl, sp-$08                                 ; $6777: $f8 $f8
    ld hl, sp-$08                                 ; $6779: $f8 $f8
    ld a, b                                       ; $677b: $78
    db $fc                                        ; $677c: $fc
    ld c, h                                       ; $677d: $4c
    db $fc                                        ; $677e: $fc
    inc c                                         ; $677f: $0c
    ld hl, sp+$38                                 ; $6780: $f8 $38
    or b                                          ; $6782: $b0
    ldh a, [$38]                                  ; $6783: $f0 $38
    add sp, -$08                                  ; $6785: $e8 $f8
    ld hl, sp-$20                                 ; $6787: $f8 $e0
    jr nz, jr_021_675b                            ; $6789: $20 $d0

    ld [hl], b                                    ; $678b: $70
    ret nc                                        ; $678c: $d0

    ldh a, [$60]                                  ; $678d: $f0 $60
    ld h, b                                       ; $678f: $60
    inc bc                                        ; $6790: $03
    inc bc                                        ; $6791: $03
    inc b                                         ; $6792: $04
    rlca                                          ; $6793: $07
    ld [$080f], sp                                ; $6794: $08 $0f $08
    rrca                                          ; $6797: $0f
    inc c                                         ; $6798: $0c
    rrca                                          ; $6799: $0f
    rra                                           ; $679a: $1f
    rra                                           ; $679b: $1f
    ccf                                           ; $679c: $3f
    cpl                                           ; $679d: $2f
    ccf                                           ; $679e: $3f
    daa                                           ; $679f: $27
    rra                                           ; $67a0: $1f
    rra                                           ; $67a1: $1f
    ld a, h                                       ; $67a2: $7c
    ld e, a                                       ; $67a3: $5f
    ld l, e                                       ; $67a4: $6b
    ld a, a                                       ; $67a5: $7f
    ld e, $1f                                     ; $67a6: $1e $1f
    rrca                                          ; $67a8: $0f
    add hl, bc                                    ; $67a9: $09
    rra                                           ; $67aa: $1f
    ld d, $09                                     ; $67ab: $16 $09
    rrca                                          ; $67ad: $0f
    rlca                                          ; $67ae: $07
    rlca                                          ; $67af: $07
    ldh [$e0], a                                  ; $67b0: $e0 $e0
    db $10                                        ; $67b2: $10
    ldh a, [$08]                                  ; $67b3: $f0 $08
    ld hl, sp+$08                                 ; $67b5: $f8 $08
    ld hl, sp+$18                                 ; $67b7: $f8 $18
    ld hl, sp-$04                                 ; $67b9: $f8 $fc
    db $fc                                        ; $67bb: $fc
    cp $fa                                        ; $67bc: $fe $fa
    cp $f2                                        ; $67be: $fe $f2
    db $fc                                        ; $67c0: $fc
    db $fc                                        ; $67c1: $fc
    ld [hl], b                                    ; $67c2: $70
    ldh a, [$a8]                                  ; $67c3: $f0 $a8
    ld hl, sp+$7c                                 ; $67c5: $f8 $7c
    db $f4                                        ; $67c7: $f4
    cp $be                                        ; $67c8: $fe $be
    and $e6                                       ; $67ca: $e6 $e6
    ret nz                                        ; $67cc: $c0

    ret nz                                        ; $67cd: $c0

    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    rlca                                          ; $67d0: $07
    rlca                                          ; $67d1: $07
    add hl, bc                                    ; $67d2: $09
    rrca                                          ; $67d3: $0f
    db $10                                        ; $67d4: $10
    rra                                           ; $67d5: $1f
    inc de                                        ; $67d6: $13
    rra                                           ; $67d7: $1f
    rra                                           ; $67d8: $1f
    rra                                           ; $67d9: $1f
    rra                                           ; $67da: $1f
    ld e, $3f                                     ; $67db: $1e $3f
    ld [hl-], a                                   ; $67dd: $32
    ccf                                           ; $67de: $3f
    jr nc, jr_021_6800                            ; $67df: $30 $1f

    inc e                                         ; $67e1: $1c
    dec b                                         ; $67e2: $05
    rlca                                          ; $67e3: $07
    ld b, $07                                     ; $67e4: $06 $07
    rrca                                          ; $67e6: $0f
    dec bc                                        ; $67e7: $0b
    rra                                           ; $67e8: $1f
    ld d, $1f                                     ; $67e9: $16 $1f
    rra                                           ; $67eb: $1f
    dec c                                         ; $67ec: $0d
    rrca                                          ; $67ed: $0f
    ld b, $06                                     ; $67ee: $06 $06
    add b                                         ; $67f0: $80
    add b                                         ; $67f1: $80
    ret nz                                        ; $67f2: $c0

    ld b, b                                       ; $67f3: $40
    ldh [$e0], a                                  ; $67f4: $e0 $e0
    sub b                                         ; $67f6: $90
    ldh a, [$e0]                                  ; $67f7: $f0 $e0
    ld h, b                                       ; $67f9: $60
    ldh a, [rSVBK]                                ; $67fa: $f0 $70
    ld hl, sp-$38                                 ; $67fc: $f8 $c8
    ldh a, [rSVBK]                                ; $67fe: $f0 $70

jr_021_6800:
    ldh [rNR41], a                                ; $6800: $e0 $20
    ldh a, [$b0]                                  ; $6802: $f0 $b0
    ld a, b                                       ; $6804: $78
    add sp, -$10                                  ; $6805: $e8 $f0
    ldh a, [$e0]                                  ; $6807: $f0 $e0
    ld h, b                                       ; $6809: $60
    ldh a, [$30]                                  ; $680a: $f0 $30
    ret nc                                        ; $680c: $d0

    ld [hl], b                                    ; $680d: $70
    ldh [$e0], a                                  ; $680e: $e0 $e0
    rrca                                          ; $6810: $0f
    rrca                                          ; $6811: $0f
    rla                                           ; $6812: $17
    dec e                                         ; $6813: $1d
    jr z, jr_021_6855                             ; $6814: $28 $3f

    daa                                           ; $6816: $27
    ccf                                           ; $6817: $3f
    ccf                                           ; $6818: $3f
    dec a                                         ; $6819: $3d
    ld a, a                                       ; $681a: $7f
    ld [hl], l                                    ; $681b: $75
    rst $38                                       ; $681c: $ff
    xor b                                         ; $681d: $a8
    rst $38                                       ; $681e: $ff
    adc a                                         ; $681f: $8f
    ld a, a                                       ; $6820: $7f
    ld h, a                                       ; $6821: $67
    cpl                                           ; $6822: $2f
    inc a                                         ; $6823: $3c
    ld a, e                                       ; $6824: $7b
    ld e, a                                       ; $6825: $5f
    ld a, [hl]                                    ; $6826: $7e
    ld a, a                                       ; $6827: $7f
    rst $08                                       ; $6828: $cf
    ret                                           ; $6829: $c9


    rst $18                                       ; $682a: $df
    sub $09                                       ; $682b: $d6 $09
    rrca                                          ; $682d: $0f
    rlca                                          ; $682e: $07
    rlca                                          ; $682f: $07
    add b                                         ; $6830: $80
    add b                                         ; $6831: $80
    ld b, b                                       ; $6832: $40
    ret nz                                        ; $6833: $c0

    and b                                         ; $6834: $a0
    ldh [rNR41], a                                ; $6835: $e0 $20
    ldh [$e0], a                                  ; $6837: $e0 $e0
    ldh [$f0], a                                  ; $6839: $e0 $f0
    ld [hl], b                                    ; $683b: $70
    ld hl, sp-$58                                 ; $683c: $f8 $a8
    ld hl, sp-$78                                 ; $683e: $f8 $88
    ldh a, [$30]                                  ; $6840: $f0 $30
    ldh a, [rSVBK]                                ; $6842: $f0 $70
    xor b                                         ; $6844: $a8
    ld hl, sp+$7c                                 ; $6845: $f8 $7c
    db $f4                                        ; $6847: $f4
    db $fc                                        ; $6848: $fc
    and h                                         ; $6849: $a4
    ld hl, sp-$08                                 ; $684a: $f8 $f8
    ret nz                                        ; $684c: $c0

    ret nz                                        ; $684d: $c0

    nop                                           ; $684e: $00
    nop                                           ; $684f: $00
    rlca                                          ; $6850: $07
    rlca                                          ; $6851: $07
    ld c, $0b                                     ; $6852: $0e $0b
    inc e                                         ; $6854: $1c

jr_021_6855:
    rra                                           ; $6855: $1f

jr_021_6856:
    ld h, $3f                                     ; $6856: $26 $3f

jr_021_6858:
    rra                                           ; $6858: $1f
    dec de                                        ; $6859: $1b
    ccf                                           ; $685a: $3f

jr_021_685b:
    add hl, sp                                    ; $685b: $39
    ld a, a                                       ; $685c: $7f
    ld c, l                                       ; $685d: $4d
    ccf                                           ; $685e: $3f
    jr c, jr_021_6880                             ; $685f: $38 $1f

    db $10                                        ; $6861: $10
    rlca                                          ; $6862: $07
    dec b                                         ; $6863: $05
    ld [bc], a                                    ; $6864: $02
    inc bc                                        ; $6865: $03
    rlca                                          ; $6866: $07
    dec b                                         ; $6867: $05
    rrca                                          ; $6868: $0f
    ld a, [bc]                                    ; $6869: $0a
    rrca                                          ; $686a: $0f
    rrca                                          ; $686b: $0f
    dec c                                         ; $686c: $0d
    rrca                                          ; $686d: $0f
    rlca                                          ; $686e: $07
    rlca                                          ; $686f: $07
    add b                                         ; $6870: $80
    add b                                         ; $6871: $80
    ld b, b                                       ; $6872: $40
    ret nz                                        ; $6873: $c0

    jr nz, jr_021_6856                            ; $6874: $20 $e0

    jr nz, jr_021_6858                            ; $6876: $20 $e0

    ldh [$e0], a                                  ; $6878: $e0 $e0
    ldh [$e0], a                                  ; $687a: $e0 $e0
    ldh a, [$30]                                  ; $687c: $f0 $30
    ldh a, [$30]                                  ; $687e: $f0 $30

jr_021_6880:
    ldh [$e0], a                                  ; $6880: $e0 $e0
    or b                                          ; $6882: $b0
    ldh a, [$38]                                  ; $6883: $f0 $38
    add sp, -$08                                  ; $6885: $e8 $f8
    ld hl, sp-$20                                 ; $6887: $f8 $e0
    jr nz, jr_021_685b                            ; $6889: $20 $d0

    ld [hl], b                                    ; $688b: $70
    ret nc                                        ; $688c: $d0

    ldh a, [$60]                                  ; $688d: $f0 $60
    ld h, b                                       ; $688f: $60
    rrca                                          ; $6890: $0f
    rrca                                          ; $6891: $0f
    db $10                                        ; $6892: $10
    rra                                           ; $6893: $1f
    jr nz, jr_021_68d5                            ; $6894: $20 $3f

jr_021_6896:
    jr nz, jr_021_68d7                            ; $6896: $20 $3f

jr_021_6898:
    jr nc, jr_021_68d9                            ; $6898: $30 $3f

    ld a, a                                       ; $689a: $7f
    ld a, a                                       ; $689b: $7f
    rst $38                                       ; $689c: $ff
    cp a                                          ; $689d: $bf
    rst $38                                       ; $689e: $ff
    sbc a                                         ; $689f: $9f
    ld a, a                                       ; $68a0: $7f
    ld a, a                                       ; $68a1: $7f
    ld a, h                                       ; $68a2: $7c
    ld e, a                                       ; $68a3: $5f
    ld l, e                                       ; $68a4: $6b
    ld a, a                                       ; $68a5: $7f
    ld e, $1f                                     ; $68a6: $1e $1f
    rrca                                          ; $68a8: $0f
    add hl, bc                                    ; $68a9: $09
    rra                                           ; $68aa: $1f
    ld d, $09                                     ; $68ab: $16 $09
    rrca                                          ; $68ad: $0f
    rlca                                          ; $68ae: $07
    rlca                                          ; $68af: $07
    add b                                         ; $68b0: $80
    add b                                         ; $68b1: $80
    ld b, b                                       ; $68b2: $40
    ret nz                                        ; $68b3: $c0

    jr nz, jr_021_6896                            ; $68b4: $20 $e0

    jr nz, jr_021_6898                            ; $68b6: $20 $e0

    ld h, b                                       ; $68b8: $60
    ldh [$f0], a                                  ; $68b9: $e0 $f0
    ldh a, [$f8]                                  ; $68bb: $f0 $f8
    add sp, -$08                                  ; $68bd: $e8 $f8
    ret z                                         ; $68bf: $c8

    ldh a, [$f0]                                  ; $68c0: $f0 $f0
    ld [hl], b                                    ; $68c2: $70
    ldh a, [$a8]                                  ; $68c3: $f0 $a8
    ld hl, sp+$7c                                 ; $68c5: $f8 $7c

Call_021_68c7:
    db $f4                                        ; $68c7: $f4
    cp $be                                        ; $68c8: $fe $be
    and $e6                                       ; $68ca: $e6 $e6
    ret nz                                        ; $68cc: $c0

    ret nz                                        ; $68cd: $c0

    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    inc bc                                        ; $68d2: $03
    inc bc                                        ; $68d3: $03
    nop                                           ; $68d4: $00

jr_021_68d5:
    inc bc                                        ; $68d5: $03
    inc b                                         ; $68d6: $04

jr_021_68d7:
    rlca                                          ; $68d7: $07
    dec b                                         ; $68d8: $05

jr_021_68d9:
    rlca                                          ; $68d9: $07
    rlca                                          ; $68da: $07
    rlca                                          ; $68db: $07
    rrca                                          ; $68dc: $0f
    dec c                                         ; $68dd: $0d
    rrca                                          ; $68de: $0f
    inc c                                         ; $68df: $0c
    rlca                                          ; $68e0: $07
    ld b, $01                                     ; $68e1: $06 $01
    inc bc                                        ; $68e3: $03
    rlca                                          ; $68e4: $07
    rlca                                          ; $68e5: $07
    rrca                                          ; $68e6: $0f
    ld a, [bc]                                    ; $68e7: $0a
    rrca                                          ; $68e8: $0f
    rrca                                          ; $68e9: $0f
    dec b                                         ; $68ea: $05
    rlca                                          ; $68eb: $07
    ld [bc], a                                    ; $68ec: $02
    ld [bc], a                                    ; $68ed: $02
    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    ret nz                                        ; $68f2: $c0

    ret nz                                        ; $68f3: $c0

    ret nz                                        ; $68f4: $c0

    add b                                         ; $68f5: $80
    ld h, b                                       ; $68f6: $60
    ldh [$d0], a                                  ; $68f7: $e0 $d0
    ldh a, [$e0]                                  ; $68f9: $f0 $e0
    and b                                         ; $68fb: $a0
    ld hl, sp+$48                                 ; $68fc: $f8 $48
    ldh a, [$30]                                  ; $68fe: $f0 $30
    ldh [rNR41], a                                ; $6900: $e0 $20
    ldh [$a0], a                                  ; $6902: $e0 $a0
    ldh [$e0], a                                  ; $6904: $e0 $e0
    ret nz                                        ; $6906: $c0

    ld b, b                                       ; $6907: $40
    ldh [rNR41], a                                ; $6908: $e0 $20
    ldh [$60], a                                  ; $690a: $e0 $60
    ret nz                                        ; $690c: $c0

    ret nz                                        ; $690d: $c0

    nop                                           ; $690e: $00
    nop                                           ; $690f: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    inc bc                                        ; $6912: $03
    inc bc                                        ; $6913: $03
    rlca                                          ; $6914: $07
    ld b, $08                                     ; $6915: $06 $08
    rrca                                          ; $6917: $0f
    dec bc                                        ; $6918: $0b
    rrca                                          ; $6919: $0f
    rrca                                          ; $691a: $0f
    ld c, $3f                                     ; $691b: $0e $3f
    jr z, jr_021_695e                             ; $691d: $28 $3f

    inc hl                                        ; $691f: $23
    rra                                           ; $6920: $1f
    dec de                                        ; $6921: $1b
    rla                                           ; $6922: $17
    inc e                                         ; $6923: $1c
    ld a, $3f                                     ; $6924: $3e $3f
    ld h, a                                       ; $6926: $67
    ld h, l                                       ; $6927: $65
    ld l, a                                       ; $6928: $6f
    ld l, d                                       ; $6929: $6a
    dec b                                         ; $692a: $05
    rlca                                          ; $692b: $07
    inc bc                                        ; $692c: $03
    inc bc                                        ; $692d: $03
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    ret nz                                        ; $6932: $c0

    ret nz                                        ; $6933: $c0

    add b                                         ; $6934: $80
    ret nz                                        ; $6935: $c0

    ld h, b                                       ; $6936: $60
    ldh [$a0], a                                  ; $6937: $e0 $a0
    ldh [$e0], a                                  ; $6939: $e0 $e0
    ldh [$f8], a                                  ; $693b: $e0 $f8
    ld l, b                                       ; $693d: $68
    ld hl, sp-$38                                 ; $693e: $f8 $c8
    ldh a, [$b0]                                  ; $6940: $f0 $b0
    ldh [$60], a                                  ; $6942: $e0 $60
    ld a, b                                       ; $6944: $78
    add sp, -$08                                  ; $6945: $e8 $f8
    adc b                                         ; $6947: $88
    ldh a, [$f0]                                  ; $6948: $f0 $f0
    ret nz                                        ; $694a: $c0

    ret nz                                        ; $694b: $c0

    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    inc bc                                        ; $6952: $03
    inc bc                                        ; $6953: $03
    inc bc                                        ; $6954: $03
    ld bc, $0706                                  ; $6955: $01 $06 $07

jr_021_6958:
    dec bc                                        ; $6958: $0b
    rrca                                          ; $6959: $0f

jr_021_695a:
    rlca                                          ; $695a: $07
    dec b                                         ; $695b: $05
    rra                                           ; $695c: $1f
    ld [de], a                                    ; $695d: $12

jr_021_695e:
    rrca                                          ; $695e: $0f
    inc c                                         ; $695f: $0c
    rlca                                          ; $6960: $07
    inc b                                         ; $6961: $04
    inc bc                                        ; $6962: $03
    ld bc, $0103                                  ; $6963: $01 $03 $01
    rlca                                          ; $6966: $07
    ld b, $07                                     ; $6967: $06 $07
    rlca                                          ; $6969: $07
    dec b                                         ; $696a: $05
    rlca                                          ; $696b: $07
    inc bc                                        ; $696c: $03
    inc bc                                        ; $696d: $03
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    ret nz                                        ; $6972: $c0

    ret nz                                        ; $6973: $c0

    nop                                           ; $6974: $00
    ret nz                                        ; $6975: $c0

    jr nz, jr_021_6958                            ; $6976: $20 $e0

    jr nz, jr_021_695a                            ; $6978: $20 $e0

    ldh [$e0], a                                  ; $697a: $e0 $e0
    ldh a, [$b0]                                  ; $697c: $f0 $b0
    ldh a, [$30]                                  ; $697e: $f0 $30
    ldh [$60], a                                  ; $6980: $e0 $60
    and b                                         ; $6982: $a0
    ldh [$f0], a                                  ; $6983: $e0 $f0
    ldh a, [$c0]                                  ; $6985: $f0 $c0
    nop                                           ; $6987: $00
    ldh [$60], a                                  ; $6988: $e0 $60
    ldh [$e0], a                                  ; $698a: $e0 $e0
    ld b, b                                       ; $698c: $40
    ld b, b                                       ; $698d: $40
    nop                                           ; $698e: $00
    nop                                           ; $698f: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    inc bc                                        ; $6992: $03
    inc bc                                        ; $6993: $03
    inc b                                         ; $6994: $04
    rlca                                          ; $6995: $07
    ld [$080f], sp                                ; $6996: $08 $0f $08
    rrca                                          ; $6999: $0f

jr_021_699a:
    inc c                                         ; $699a: $0c
    rrca                                          ; $699b: $0f

jr_021_699c:
    ccf                                           ; $699c: $3f
    cpl                                           ; $699d: $2f
    ccf                                           ; $699e: $3f
    daa                                           ; $699f: $27
    rra                                           ; $69a0: $1f
    rra                                           ; $69a1: $1f
    inc a                                         ; $69a2: $3c
    cpl                                           ; $69a3: $2f
    ld c, $0f                                     ; $69a4: $0e $0f
    rlca                                          ; $69a6: $07
    dec b                                         ; $69a7: $05
    rrca                                          ; $69a8: $0f
    ld a, [bc]                                    ; $69a9: $0a
    dec b                                         ; $69aa: $05
    rlca                                          ; $69ab: $07
    inc bc                                        ; $69ac: $03
    inc bc                                        ; $69ad: $03
    nop                                           ; $69ae: $00
    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    nop                                           ; $69b1: $00
    ret nz                                        ; $69b2: $c0

    ret nz                                        ; $69b3: $c0

    nop                                           ; $69b4: $00
    ret nz                                        ; $69b5: $c0

    jr nz, @-$1e                                  ; $69b6: $20 $e0

    jr nz, jr_021_699a                            ; $69b8: $20 $e0

    jr nz, jr_021_699c                            ; $69ba: $20 $e0

    ld hl, sp-$18                                 ; $69bc: $f8 $e8
    ld hl, sp-$38                                 ; $69be: $f8 $c8
    ldh a, [$f0]                                  ; $69c0: $f0 $f0
    ld h, b                                       ; $69c2: $60
    ldh [$78], a                                  ; $69c3: $e0 $78
    add sp, -$04                                  ; $69c5: $e8 $fc
    cp h                                          ; $69c7: $bc
    call z, $c0cc                                 ; $69c8: $cc $cc $c0
    ret nz                                        ; $69cb: $c0

    nop                                           ; $69cc: $00
    nop                                           ; $69cd: $00
    nop                                           ; $69ce: $00
    nop                                           ; $69cf: $00

    db $e2, $69

    push hl                                       ; $69d2: $e5
    ld l, c                                       ; $69d3: $69

    db $eb, $69, $ee, $69

    ld sp, hl                                     ; $69d8: $f9
    ld l, c                                       ; $69d9: $69
    nop                                           ; $69da: $00
    ld l, d                                       ; $69db: $6a
    ld [$1c6a], sp                                ; $69dc: $08 $6a $1c
    ld l, d                                       ; $69df: $6a
    jr z, @+$6c                                   ; $69e0: $28 $6a

    nop                                           ; $69e2: $00
    rst $38                                       ; $69e3: $ff
    db $fd                                        ; $69e4: $fd
    nop                                           ; $69e5: $00
    ld e, $01                                     ; $69e6: $1e $01
    ld e, $ff                                     ; $69e8: $1e $ff
    nop                                           ; $69ea: $00

    db $02, $ff

    db $fd                                        ; $69ed: $fd
    ld [bc], a                                    ; $69ee: $02
    inc c                                         ; $69ef: $0c
    inc bc                                        ; $69f0: $03
    inc c                                         ; $69f1: $0c
    inc b                                         ; $69f2: $04
    jr @+$04                                      ; $69f3: $18 $02

    inc c                                         ; $69f5: $0c

    db $05, $0c, $fd, $02

    jr @+$05                                      ; $69fa: $18 $03

    jr jr_021_6a00                                ; $69fc: $18 $02

    jr @-$01                                      ; $69fe: $18 $fd

jr_021_6a00:
    nop                                           ; $6a00: $00
    ld a, [bc]                                    ; $6a01: $0a
    ld b, $1e                                     ; $6a02: $06 $1e
    nop                                           ; $6a04: $00
    ld a, [bc]                                    ; $6a05: $0a
    cp $01                                        ; $6a06: $fe $01
    nop                                           ; $6a08: $00
    ld a, [bc]                                    ; $6a09: $0a
    rlca                                          ; $6a0a: $07
    ld a, [bc]                                    ; $6a0b: $0a
    nop                                           ; $6a0c: $00
    inc bc                                        ; $6a0d: $03
    ld [$000a], sp                                ; $6a0e: $08 $0a $00
    inc bc                                        ; $6a11: $03
    rlca                                          ; $6a12: $07
    ld a, [bc]                                    ; $6a13: $0a
    nop                                           ; $6a14: $00
    inc bc                                        ; $6a15: $03
    ld [$000a], sp                                ; $6a16: $08 $0a $00
    ld a, [bc]                                    ; $6a19: $0a
    cp $01                                        ; $6a1a: $fe $01
    nop                                           ; $6a1c: $00
    ld a, [bc]                                    ; $6a1d: $0a
    add hl, bc                                    ; $6a1e: $09
    ld [$0800], sp                                ; $6a1f: $08 $00 $08
    add hl, bc                                    ; $6a22: $09
    ld [$0a00], sp                                ; $6a23: $08 $00 $0a
    cp $01                                        ; $6a26: $fe $01
    ld [bc], a                                    ; $6a28: $02
    ld [de], a                                    ; $6a29: $12
    inc bc                                        ; $6a2a: $03
    ld [de], a                                    ; $6a2b: $12
    ld [bc], a                                    ; $6a2c: $02
    ld e, $05                                     ; $6a2d: $1e $05
    ld [de], a                                    ; $6a2f: $12
    db $fd                                        ; $6a30: $fd

    db $63, $04, $41, $6a, $60, $74, $39, $6a, $78, $3a, $ff, $6b, $80, $12, $00, $00

    ld h, b                                       ; $6a41: $60
    ld l, d                                       ; $6a42: $6a
    ld h, b                                       ; $6a43: $60
    ld l, e                                       ; $6a44: $6b

    db $60, $6c, $60, $6d

    ld h, b                                       ; $6a49: $60
    ld l, [hl]                                    ; $6a4a: $6e

    db $60, $6f

    ld h, b                                       ; $6a4d: $60
    ld [hl], b                                    ; $6a4e: $70
    ld h, b                                       ; $6a4f: $60
    ld [hl], c                                    ; $6a50: $71
    ld h, b                                       ; $6a51: $60
    ld [hl], d                                    ; $6a52: $72
    ld h, b                                       ; $6a53: $60
    ld [hl], e                                    ; $6a54: $73
    nop                                           ; $6a55: $00
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    inc bc                                        ; $6a60: $03
    inc bc                                        ; $6a61: $03
    inc b                                         ; $6a62: $04
    rlca                                          ; $6a63: $07
    ld [$0f0f], sp                                ; $6a64: $08 $0f $0f
    rrca                                          ; $6a67: $0f
    rrca                                          ; $6a68: $0f
    rrca                                          ; $6a69: $0f
    rra                                           ; $6a6a: $1f
    ld [de], a                                    ; $6a6b: $12
    rra                                           ; $6a6c: $1f
    ld [de], a                                    ; $6a6d: $12
    rrca                                          ; $6a6e: $0f
    inc c                                         ; $6a6f: $0c
    rrca                                          ; $6a70: $0f
    ld c, $07                                     ; $6a71: $0e $07
    rlca                                          ; $6a73: $07
    ld b, $07                                     ; $6a74: $06 $07
    rrca                                          ; $6a76: $0f
    dec bc                                        ; $6a77: $0b
    rra                                           ; $6a78: $1f
    ld d, $0f                                     ; $6a79: $16 $0f
    rrca                                          ; $6a7b: $0f
    dec c                                         ; $6a7c: $0d
    rrca                                          ; $6a7d: $0f
    ld b, $06                                     ; $6a7e: $06 $06
    ret nz                                        ; $6a80: $c0

    ret nz                                        ; $6a81: $c0

    ldh [$a0], a                                  ; $6a82: $e0 $a0
    ld h, b                                       ; $6a84: $60
    ldh [$90], a                                  ; $6a85: $e0 $90
    ldh a, [$e0]                                  ; $6a87: $f0 $e0
    ld h, b                                       ; $6a89: $60
    ldh a, [rSVBK]                                ; $6a8a: $f0 $70
    ld hl, sp-$38                                 ; $6a8c: $f8 $c8
    ldh a, [$f0]                                  ; $6a8e: $f0 $f0
    ldh a, [rSVBK]                                ; $6a90: $f0 $70
    ldh [rNR41], a                                ; $6a92: $e0 $20
    ldh a, [$f0]                                  ; $6a94: $f0 $f0
    ld hl, sp-$18                                 ; $6a96: $f8 $e8
    ldh a, [rSVBK]                                ; $6a98: $f0 $70
    ldh [rNR41], a                                ; $6a9a: $e0 $20
    ldh [$60], a                                  ; $6a9c: $e0 $60
    ret nz                                        ; $6a9e: $c0

    ret nz                                        ; $6a9f: $c0

    rlca                                          ; $6aa0: $07
    rlca                                          ; $6aa1: $07
    dec bc                                        ; $6aa2: $0b
    ld c, $14                                     ; $6aa3: $0e $14
    rra                                           ; $6aa5: $1f
    dec de                                        ; $6aa6: $1b
    rra                                           ; $6aa7: $1f
    rra                                           ; $6aa8: $1f
    ld e, $3f                                     ; $6aa9: $1e $3f
    ld a, [hl+]                                   ; $6aab: $2a
    ccf                                           ; $6aac: $3f
    inc h                                         ; $6aad: $24
    ccf                                           ; $6aae: $3f
    scf                                           ; $6aaf: $37
    cpl                                           ; $6ab0: $2f
    dec sp                                        ; $6ab1: $3b
    ld a, a                                       ; $6ab2: $7f
    ld e, h                                       ; $6ab3: $5c
    ld a, e                                       ; $6ab4: $7b
    ld a, a                                       ; $6ab5: $7f
    rst $08                                       ; $6ab6: $cf
    rst $08                                       ; $6ab7: $cf
    rst $08                                       ; $6ab8: $cf
    ret                                           ; $6ab9: $c9


    rra                                           ; $6aba: $1f
    ld d, $09                                     ; $6abb: $16 $09
    rrca                                          ; $6abd: $0f
    ld b, $06                                     ; $6abe: $06 $06
    ret nz                                        ; $6ac0: $c0

    ret nz                                        ; $6ac1: $c0

    and b                                         ; $6ac2: $a0
    ldh [$50], a                                  ; $6ac3: $e0 $50
    ldh a, [$b0]                                  ; $6ac5: $f0 $b0
    ldh a, [$f0]                                  ; $6ac7: $f0 $f0
    ldh a, [$f8]                                  ; $6ac9: $f0 $f8
    xor b                                         ; $6acb: $a8
    ld hl, sp+$48                                 ; $6acc: $f8 $48
    ldh a, [$d0]                                  ; $6ace: $f0 $d0
    add sp, -$48                                  ; $6ad0: $e8 $b8
    add sp, $78                                   ; $6ad2: $e8 $78
    cp h                                          ; $6ad4: $bc
    db $f4                                        ; $6ad5: $f4
    ld a, h                                       ; $6ad6: $7c
    db $e4                                        ; $6ad7: $e4
    ld hl, sp-$08                                 ; $6ad8: $f8 $f8
    ret nz                                        ; $6ada: $c0

    ret nz                                        ; $6adb: $c0

    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    inc bc                                        ; $6ae0: $03
    inc bc                                        ; $6ae1: $03
    rlca                                          ; $6ae2: $07
    dec b                                         ; $6ae3: $05

jr_021_6ae4:
    ld b, $07                                     ; $6ae4: $06 $07
    add hl, bc                                    ; $6ae6: $09
    rrca                                          ; $6ae7: $0f
    rlca                                          ; $6ae8: $07
    ld b, $0f                                     ; $6ae9: $06 $0f
    ld c, $1f                                     ; $6aeb: $0e $1f
    inc de                                        ; $6aed: $13
    rrca                                          ; $6aee: $0f
    rrca                                          ; $6aef: $0f
    rrca                                          ; $6af0: $0f
    ld c, $07                                     ; $6af1: $0e $07
    inc b                                         ; $6af3: $04
    inc bc                                        ; $6af4: $03
    inc bc                                        ; $6af5: $03
    rlca                                          ; $6af6: $07
    dec b                                         ; $6af7: $05
    rrca                                          ; $6af8: $0f
    dec bc                                        ; $6af9: $0b
    rlca                                          ; $6afa: $07
    rlca                                          ; $6afb: $07
    inc b                                         ; $6afc: $04
    rlca                                          ; $6afd: $07
    inc bc                                        ; $6afe: $03
    inc bc                                        ; $6aff: $03
    ret nz                                        ; $6b00: $c0

    ret nz                                        ; $6b01: $c0

    jr nz, jr_021_6ae4                            ; $6b02: $20 $e0

    db $10                                        ; $6b04: $10
    ldh a, [$f0]                                  ; $6b05: $f0 $f0
    ldh a, [$f0]                                  ; $6b07: $f0 $f0
    ldh a, [$f8]                                  ; $6b09: $f0 $f8
    ld c, b                                       ; $6b0b: $48
    ld hl, sp+$48                                 ; $6b0c: $f8 $48
    ldh a, [$30]                                  ; $6b0e: $f0 $30
    ldh a, [rSVBK]                                ; $6b10: $f0 $70
    ldh [$e0], a                                  ; $6b12: $e0 $e0
    ld h, b                                       ; $6b14: $60
    ldh [$f0], a                                  ; $6b15: $e0 $f0
    ldh a, [$f0]                                  ; $6b17: $f0 $f0
    jr nc, @-$06                                  ; $6b19: $30 $f8

    adc b                                         ; $6b1b: $88
    ld hl, sp-$28                                 ; $6b1c: $f8 $d8
    or b                                          ; $6b1e: $b0
    or b                                          ; $6b1f: $b0
    rlca                                          ; $6b20: $07
    rlca                                          ; $6b21: $07
    ld [$100f], sp                                ; $6b22: $08 $0f $10
    rra                                           ; $6b25: $1f
    db $10                                        ; $6b26: $10
    rra                                           ; $6b27: $1f
    db $10                                        ; $6b28: $10
    rra                                           ; $6b29: $1f
    jr c, jr_021_6b5b                             ; $6b2a: $38 $2f

    ccf                                           ; $6b2c: $3f
    cpl                                           ; $6b2d: $2f
    rra                                           ; $6b2e: $1f
    rla                                           ; $6b2f: $17
    cpl                                           ; $6b30: $2f
    ccf                                           ; $6b31: $3f
    halt                                          ; $6b32: $76
    ld e, a                                       ; $6b33: $5f
    ld a, b                                       ; $6b34: $78
    ld a, a                                       ; $6b35: $7f
    ld c, $0f                                     ; $6b36: $0e $0f
    rrca                                          ; $6b38: $0f
    add hl, bc                                    ; $6b39: $09
    rra                                           ; $6b3a: $1f
    ld d, $09                                     ; $6b3b: $16 $09
    rrca                                          ; $6b3d: $0f
    ld b, $06                                     ; $6b3e: $06 $06
    ret nz                                        ; $6b40: $c0

    ret nz                                        ; $6b41: $c0

    jr nz, @-$1e                                  ; $6b42: $20 $e0

    db $10                                        ; $6b44: $10
    ldh a, [rNR10]                                ; $6b45: $f0 $10
    ldh a, [rNR10]                                ; $6b47: $f0 $10
    ldh a, [$38]                                  ; $6b49: $f0 $38
    add sp, -$08                                  ; $6b4b: $e8 $f8
    add sp, -$10                                  ; $6b4d: $e8 $f0
    ret nc                                        ; $6b4f: $d0

    db $eb                                        ; $6b50: $eb
    ei                                            ; $6b51: $fb
    set 7, e                                      ; $6b52: $cb $fb
    ld a, $f6                                     ; $6b54: $3e $f6
    ld a, h                                       ; $6b56: $7c
    db $e4                                        ; $6b57: $e4
    ld hl, sp-$08                                 ; $6b58: $f8 $f8
    ret nz                                        ; $6b5a: $c0

jr_021_6b5b:
    ret nz                                        ; $6b5b: $c0

    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    inc bc                                        ; $6b60: $03
    inc bc                                        ; $6b61: $03
    inc b                                         ; $6b62: $04
    rlca                                          ; $6b63: $07
    ld [$0f0f], sp                                ; $6b64: $08 $0f $0f
    rrca                                          ; $6b67: $0f
    rrca                                          ; $6b68: $0f
    rrca                                          ; $6b69: $0f
    rra                                           ; $6b6a: $1f
    ld [de], a                                    ; $6b6b: $12
    rra                                           ; $6b6c: $1f
    ld [de], a                                    ; $6b6d: $12
    rrca                                          ; $6b6e: $0f
    inc c                                         ; $6b6f: $0c
    rrca                                          ; $6b70: $0f
    ld c, $07                                     ; $6b71: $0e $07
    rlca                                          ; $6b73: $07
    ld b, $07                                     ; $6b74: $06 $07
    rrca                                          ; $6b76: $0f
    rrca                                          ; $6b77: $0f
    rrca                                          ; $6b78: $0f
    inc c                                         ; $6b79: $0c
    rra                                           ; $6b7a: $1f
    ld de, $1b1f                                  ; $6b7b: $11 $1f $1b

jr_021_6b7e:
    dec c                                         ; $6b7e: $0d
    dec c                                         ; $6b7f: $0d
    ret nz                                        ; $6b80: $c0

    ret nz                                        ; $6b81: $c0

    ldh [$a0], a                                  ; $6b82: $e0 $a0
    ld h, b                                       ; $6b84: $60
    ldh [$90], a                                  ; $6b85: $e0 $90
    ldh a, [$e0]                                  ; $6b87: $f0 $e0
    ld h, b                                       ; $6b89: $60
    ldh a, [rSVBK]                                ; $6b8a: $f0 $70
    ld hl, sp-$38                                 ; $6b8c: $f8 $c8
    ldh a, [$f0]                                  ; $6b8e: $f0 $f0
    ldh a, [rSVBK]                                ; $6b90: $f0 $70
    and $26                                       ; $6b92: $e6 $26
    add $c6                                       ; $6b94: $c6 $c6
    db $ec                                        ; $6b96: $ec
    xor h                                         ; $6b97: $ac
    ld hl, sp-$28                                 ; $6b98: $f8 $d8
    ldh [$e0], a                                  ; $6b9a: $e0 $e0
    jr nz, jr_021_6b7e                            ; $6b9c: $20 $e0

    ret nz                                        ; $6b9e: $c0

    ret nz                                        ; $6b9f: $c0

    rlca                                          ; $6ba0: $07
    rlca                                          ; $6ba1: $07
    dec bc                                        ; $6ba2: $0b
    ld c, $14                                     ; $6ba3: $0e $14
    rra                                           ; $6ba5: $1f
    dec de                                        ; $6ba6: $1b
    rra                                           ; $6ba7: $1f
    rra                                           ; $6ba8: $1f
    ld e, $3f                                     ; $6ba9: $1e $3f
    ld a, [hl+]                                   ; $6bab: $2a
    ccf                                           ; $6bac: $3f
    inc h                                         ; $6bad: $24
    rra                                           ; $6bae: $1f
    rla                                           ; $6baf: $17
    rst $28                                       ; $6bb0: $ef
    ei                                            ; $6bb1: $fb
    rst $28                                       ; $6bb2: $ef
    db $fc                                        ; $6bb3: $fc
    ld a, e                                       ; $6bb4: $7b
    ld e, a                                       ; $6bb5: $5f
    ld a, l                                       ; $6bb6: $7d
    ld c, a                                       ; $6bb7: $4f
    ccf                                           ; $6bb8: $3f
    ccf                                           ; $6bb9: $3f
    rlca                                          ; $6bba: $07
    ld b, $01                                     ; $6bbb: $06 $01
    ld bc, $0000                                  ; $6bbd: $01 $00 $00
    ret nz                                        ; $6bc0: $c0

    ret nz                                        ; $6bc1: $c0

    and b                                         ; $6bc2: $a0
    ldh [$50], a                                  ; $6bc3: $e0 $50
    ldh a, [$b0]                                  ; $6bc5: $f0 $b0
    ldh a, [$f0]                                  ; $6bc7: $f0 $f0
    ldh a, [$f8]                                  ; $6bc9: $f0 $f8
    xor b                                         ; $6bcb: $a8
    ld hl, sp+$48                                 ; $6bcc: $f8 $48
    ld hl, sp-$28                                 ; $6bce: $f8 $d8
    add sp, -$48                                  ; $6bd0: $e8 $b8
    db $fc                                        ; $6bd2: $fc
    ld [hl], h                                    ; $6bd3: $74
    cp h                                          ; $6bd4: $bc
    db $fc                                        ; $6bd5: $fc
    ldh [$e0], a                                  ; $6bd6: $e0 $e0
    ldh [rNR41], a                                ; $6bd8: $e0 $20
    ldh a, [$d0]                                  ; $6bda: $f0 $d0
    jr nz, @-$1e                                  ; $6bdc: $20 $e0

    ret nz                                        ; $6bde: $c0

    ret nz                                        ; $6bdf: $c0

    inc bc                                        ; $6be0: $03
    inc bc                                        ; $6be1: $03
    rlca                                          ; $6be2: $07
    dec b                                         ; $6be3: $05

jr_021_6be4:
    ld b, $07                                     ; $6be4: $06 $07
    add hl, bc                                    ; $6be6: $09
    rrca                                          ; $6be7: $0f
    rlca                                          ; $6be8: $07
    ld b, $0f                                     ; $6be9: $06 $0f
    ld c, $1f                                     ; $6beb: $0e $1f
    inc de                                        ; $6bed: $13
    rrca                                          ; $6bee: $0f
    rrca                                          ; $6bef: $0f
    rrca                                          ; $6bf0: $0f
    ld c, $67                                     ; $6bf1: $0e $67
    ld h, h                                       ; $6bf3: $64
    ld l, a                                       ; $6bf4: $6f
    ld l, a                                       ; $6bf5: $6f
    ccf                                           ; $6bf6: $3f
    scf                                           ; $6bf7: $37
    rrca                                          ; $6bf8: $0f
    ld c, $07                                     ; $6bf9: $0e $07
    inc b                                         ; $6bfb: $04
    rlca                                          ; $6bfc: $07
    ld b, $03                                     ; $6bfd: $06 $03
    inc bc                                        ; $6bff: $03
    ret nz                                        ; $6c00: $c0

    ret nz                                        ; $6c01: $c0

    jr nz, jr_021_6be4                            ; $6c02: $20 $e0

    db $10                                        ; $6c04: $10
    ldh a, [$f0]                                  ; $6c05: $f0 $f0
    ldh a, [$f0]                                  ; $6c07: $f0 $f0
    ldh a, [$f8]                                  ; $6c09: $f0 $f8
    ld c, b                                       ; $6c0b: $48
    ld hl, sp+$48                                 ; $6c0c: $f8 $48
    ldh a, [$30]                                  ; $6c0e: $f0 $30
    ldh a, [rSVBK]                                ; $6c10: $f0 $70
    ldh [$e0], a                                  ; $6c12: $e0 $e0
    ld h, b                                       ; $6c14: $60
    ldh [$f0], a                                  ; $6c15: $e0 $f0
    ret nc                                        ; $6c17: $d0

    ld hl, sp+$68                                 ; $6c18: $f8 $68
    ldh a, [$f0]                                  ; $6c1a: $f0 $f0
    or b                                          ; $6c1c: $b0
    ldh a, [$60]                                  ; $6c1d: $f0 $60
    ld h, b                                       ; $6c1f: $60
    rlca                                          ; $6c20: $07
    rlca                                          ; $6c21: $07
    ld [$100f], sp                                ; $6c22: $08 $0f $10
    rra                                           ; $6c25: $1f
    db $10                                        ; $6c26: $10
    rra                                           ; $6c27: $1f
    db $10                                        ; $6c28: $10
    rra                                           ; $6c29: $1f
    jr c, @+$31                                   ; $6c2a: $38 $2f

    ccf                                           ; $6c2c: $3f
    cpl                                           ; $6c2d: $2f
    rra                                           ; $6c2e: $1f
    rla                                           ; $6c2f: $17
    cpl                                           ; $6c30: $2f
    ccf                                           ; $6c31: $3f
    ld h, $3f                                     ; $6c32: $26 $3f
    ld a, b                                       ; $6c34: $78
    ld e, a                                       ; $6c35: $5f
    ld a, b                                       ; $6c36: $78
    ld c, a                                       ; $6c37: $4f
    ccf                                           ; $6c38: $3f
    ccf                                           ; $6c39: $3f
    rlca                                          ; $6c3a: $07
    ld b, $01                                     ; $6c3b: $06 $01
    ld bc, $0000                                  ; $6c3d: $01 $00 $00
    ret nz                                        ; $6c40: $c0

    ret nz                                        ; $6c41: $c0

    jr nz, @-$1e                                  ; $6c42: $20 $e0

    db $10                                        ; $6c44: $10
    ldh a, [rNR10]                                ; $6c45: $f0 $10
    ldh a, [rNR10]                                ; $6c47: $f0 $10
    ldh a, [$3b]                                  ; $6c49: $f0 $3b
    db $eb                                        ; $6c4b: $eb
    ei                                            ; $6c4c: $fb
    db $eb                                        ; $6c4d: $eb
    ld a, [c]                                     ; $6c4e: $f2
    jp nc, $faea                                  ; $6c4f: $d2 $ea $fa

    sbc $f6                                       ; $6c52: $de $f6
    inc a                                         ; $6c54: $3c
    db $fc                                        ; $6c55: $fc
    ldh [$e0], a                                  ; $6c56: $e0 $e0
    ldh [rNR41], a                                ; $6c58: $e0 $20
    ldh a, [$d0]                                  ; $6c5a: $f0 $d0
    jr nz, @-$1e                                  ; $6c5c: $20 $e0

    ret nz                                        ; $6c5e: $c0

    ret nz                                        ; $6c5f: $c0

    inc bc                                        ; $6c60: $03
    inc bc                                        ; $6c61: $03
    inc b                                         ; $6c62: $04
    rlca                                          ; $6c63: $07
    ld [$0f0f], sp                                ; $6c64: $08 $0f $0f
    rrca                                          ; $6c67: $0f
    rrca                                          ; $6c68: $0f
    rrca                                          ; $6c69: $0f
    rra                                           ; $6c6a: $1f
    ld [de], a                                    ; $6c6b: $12
    rra                                           ; $6c6c: $1f
    ld [de], a                                    ; $6c6d: $12
    rrca                                          ; $6c6e: $0f
    inc c                                         ; $6c6f: $0c
    rrca                                          ; $6c70: $0f
    ld c, $05                                     ; $6c71: $0e $05
    rlca                                          ; $6c73: $07
    ld [$1d0f], sp                                ; $6c74: $08 $0f $1d
    rla                                           ; $6c77: $17
    rra                                           ; $6c78: $1f
    inc de                                        ; $6c79: $13
    rra                                           ; $6c7a: $1f
    dec de                                        ; $6c7b: $1b
    inc e                                         ; $6c7c: $1c
    rla                                           ; $6c7d: $17
    rrca                                          ; $6c7e: $0f
    rrca                                          ; $6c7f: $0f
    ret nz                                        ; $6c80: $c0

    ret nz                                        ; $6c81: $c0

    ldh [$a0], a                                  ; $6c82: $e0 $a0
    ld h, b                                       ; $6c84: $60
    ldh [$90], a                                  ; $6c85: $e0 $90
    ldh a, [$e0]                                  ; $6c87: $f0 $e0
    ld h, b                                       ; $6c89: $60
    ldh a, [rSVBK]                                ; $6c8a: $f0 $70
    ld hl, sp-$38                                 ; $6c8c: $f8 $c8
    ldh a, [$f0]                                  ; $6c8e: $f0 $f0
    ldh a, [rSVBK]                                ; $6c90: $f0 $70
    ldh [rNR41], a                                ; $6c92: $e0 $20
    ret nz                                        ; $6c94: $c0

    ret nz                                        ; $6c95: $c0

    ldh [$a0], a                                  ; $6c96: $e0 $a0
    ldh a, [$d0]                                  ; $6c98: $f0 $d0
    jr nc, jr_021_6ccc                            ; $6c9a: $30 $30

    sbc e                                         ; $6c9c: $9b
    sbc e                                         ; $6c9d: $9b
    adc a                                         ; $6c9e: $8f
    adc a                                         ; $6c9f: $8f
    rlca                                          ; $6ca0: $07
    rlca                                          ; $6ca1: $07
    ld [$110f], sp                                ; $6ca2: $08 $0f $11
    rra                                           ; $6ca5: $1f
    ld [de], a                                    ; $6ca6: $12
    rra                                           ; $6ca7: $1f
    inc e                                         ; $6ca8: $1c
    rra                                           ; $6ca9: $1f
    rra                                           ; $6caa: $1f
    rra                                           ; $6cab: $1f
    ccf                                           ; $6cac: $3f
    add hl, hl                                    ; $6cad: $29
    ccf                                           ; $6cae: $3f
    ld [hl+], a                                   ; $6caf: $22
    rra                                           ; $6cb0: $1f
    rla                                           ; $6cb1: $17
    rra                                           ; $6cb2: $1f
    dec de                                        ; $6cb3: $1b
    rla                                           ; $6cb4: $17
    rra                                           ; $6cb5: $1f
    rrca                                          ; $6cb6: $0f
    dec c                                         ; $6cb7: $0d

jr_021_6cb8:
    rlca                                          ; $6cb8: $07
    ld b, $0f                                     ; $6cb9: $06 $0f
    dec c                                         ; $6cbb: $0d
    inc de                                        ; $6cbc: $13
    rra                                           ; $6cbd: $1f
    rra                                           ; $6cbe: $1f
    rra                                           ; $6cbf: $1f
    ret nz                                        ; $6cc0: $c0

    ret nz                                        ; $6cc1: $c0

    and b                                         ; $6cc2: $a0
    ldh [$d0], a                                  ; $6cc3: $e0 $d0
    ld [hl], b                                    ; $6cc5: $70
    jr nc, jr_021_6cb8                            ; $6cc6: $30 $f0

    ret nc                                        ; $6cc8: $d0

    ldh a, [$f8]                                  ; $6cc9: $f0 $f8
    ld a, b                                       ; $6ccb: $78

jr_021_6ccc:
    ld hl, sp+$58                                 ; $6ccc: $f8 $58
    ld hl, sp+$28                                 ; $6cce: $f8 $28
    ldh a, [$f0]                                  ; $6cd0: $f0 $f0
    ldh a, [$f0]                                  ; $6cd2: $f0 $f0
    and b                                         ; $6cd4: $a0
    ldh [$e0], a                                  ; $6cd5: $e0 $e0
    ld h, b                                       ; $6cd7: $60
    ret nz                                        ; $6cd8: $c0

    ret nz                                        ; $6cd9: $c0

    ldh [$60], a                                  ; $6cda: $e0 $60
    sub b                                         ; $6cdc: $90
    ldh a, [$f0]                                  ; $6cdd: $f0 $f0
    ldh a, [$03]                                  ; $6cdf: $f0 $03
    inc bc                                        ; $6ce1: $03
    rlca                                          ; $6ce2: $07
    dec b                                         ; $6ce3: $05

jr_021_6ce4:
    ld b, $07                                     ; $6ce4: $06 $07
    add hl, bc                                    ; $6ce6: $09
    rrca                                          ; $6ce7: $0f
    rlca                                          ; $6ce8: $07
    ld b, $0f                                     ; $6ce9: $06 $0f
    ld c, $1f                                     ; $6ceb: $0e $1f
    inc de                                        ; $6ced: $13
    rrca                                          ; $6cee: $0f
    rrca                                          ; $6cef: $0f
    rrca                                          ; $6cf0: $0f
    ld c, $07                                     ; $6cf1: $0e $07
    inc b                                         ; $6cf3: $04
    inc bc                                        ; $6cf4: $03
    inc bc                                        ; $6cf5: $03
    rlca                                          ; $6cf6: $07
    dec b                                         ; $6cf7: $05
    rrca                                          ; $6cf8: $0f
    dec bc                                        ; $6cf9: $0b
    inc c                                         ; $6cfa: $0c
    inc c                                         ; $6cfb: $0c
    reti                                          ; $6cfc: $d9


    reti                                          ; $6cfd: $d9


    pop af                                        ; $6cfe: $f1
    pop af                                        ; $6cff: $f1
    ret nz                                        ; $6d00: $c0

    ret nz                                        ; $6d01: $c0

    jr nz, jr_021_6ce4                            ; $6d02: $20 $e0

    db $10                                        ; $6d04: $10
    ldh a, [$f0]                                  ; $6d05: $f0 $f0
    ldh a, [$f0]                                  ; $6d07: $f0 $f0
    ldh a, [$f8]                                  ; $6d09: $f0 $f8
    ld c, b                                       ; $6d0b: $48
    ld hl, sp+$48                                 ; $6d0c: $f8 $48
    ldh a, [$30]                                  ; $6d0e: $f0 $30
    ldh a, [rSVBK]                                ; $6d10: $f0 $70
    and b                                         ; $6d12: $a0
    ldh [rNR10], a                                ; $6d13: $e0 $10
    ldh a, [$b8]                                  ; $6d15: $f0 $b8
    add sp, -$08                                  ; $6d17: $e8 $f8
    ret z                                         ; $6d19: $c8

    ld hl, sp-$28                                 ; $6d1a: $f8 $d8
    jr c, @-$16                                   ; $6d1c: $38 $e8

    ldh a, [$f0]                                  ; $6d1e: $f0 $f0
    inc bc                                        ; $6d20: $03
    inc bc                                        ; $6d21: $03
    inc b                                         ; $6d22: $04
    rlca                                          ; $6d23: $07
    ld [$080f], sp                                ; $6d24: $08 $0f $08
    rrca                                          ; $6d27: $0f
    inc c                                         ; $6d28: $0c
    rrca                                          ; $6d29: $0f
    rra                                           ; $6d2a: $1f
    rla                                           ; $6d2b: $17
    rra                                           ; $6d2c: $1f
    inc de                                        ; $6d2d: $13
    rrca                                          ; $6d2e: $0f
    add hl, bc                                    ; $6d2f: $09
    rlca                                          ; $6d30: $07
    rlca                                          ; $6d31: $07
    inc b                                         ; $6d32: $04
    rlca                                          ; $6d33: $07
    dec b                                         ; $6d34: $05
    rlca                                          ; $6d35: $07
    rlca                                          ; $6d36: $07
    ld b, $07                                     ; $6d37: $06 $07
    inc b                                         ; $6d39: $04
    rlca                                          ; $6d3a: $07
    dec b                                         ; $6d3b: $05
    add hl, bc                                    ; $6d3c: $09
    rrca                                          ; $6d3d: $0f
    rrca                                          ; $6d3e: $0f
    rrca                                          ; $6d3f: $0f
    ldh [$e0], a                                  ; $6d40: $e0 $e0
    db $10                                        ; $6d42: $10
    ldh a, [$08]                                  ; $6d43: $f0 $08
    ld hl, sp+$08                                 ; $6d45: $f8 $08
    ld hl, sp+$38                                 ; $6d47: $f8 $38

jr_021_6d49:
    ld hl, sp-$04                                 ; $6d49: $f8 $fc
    db $f4                                        ; $6d4b: $f4
    db $fc                                        ; $6d4c: $fc
    db $f4                                        ; $6d4d: $f4
    cp b                                          ; $6d4e: $b8
    ld hl, sp+$30                                 ; $6d4f: $f8 $30
    ldh a, [rNR10]                                ; $6d51: $f0 $10
    ldh a, [$d0]                                  ; $6d53: $f0 $d0
    ldh a, [$f0]                                  ; $6d55: $f0 $f0
    jr nc, jr_021_6d49                            ; $6d57: $30 $f0

    ret nc                                        ; $6d59: $d0

    ldh a, [$90]                                  ; $6d5a: $f0 $90
    ret z                                         ; $6d5c: $c8

    ld hl, sp-$48                                 ; $6d5d: $f8 $b8
    cp b                                          ; $6d5f: $b8
    inc bc                                        ; $6d60: $03
    inc bc                                        ; $6d61: $03
    inc b                                         ; $6d62: $04
    rlca                                          ; $6d63: $07
    ld [$0f0f], sp                                ; $6d64: $08 $0f $0f
    rrca                                          ; $6d67: $0f
    rrca                                          ; $6d68: $0f
    rrca                                          ; $6d69: $0f
    rra                                           ; $6d6a: $1f
    ld [de], a                                    ; $6d6b: $12
    rra                                           ; $6d6c: $1f
    ld [de], a                                    ; $6d6d: $12
    rrca                                          ; $6d6e: $0f
    inc c                                         ; $6d6f: $0c
    rrca                                          ; $6d70: $0f
    ld c, $05                                     ; $6d71: $0e $05
    rlca                                          ; $6d73: $07
    dec bc                                        ; $6d74: $0b
    rrca                                          ; $6d75: $0f
    ld e, $17                                     ; $6d76: $1e $17
    rra                                           ; $6d78: $1f
    inc de                                        ; $6d79: $13
    rra                                           ; $6d7a: $1f
    dec de                                        ; $6d7b: $1b
    inc e                                         ; $6d7c: $1c
    rla                                           ; $6d7d: $17
    rrca                                          ; $6d7e: $0f
    rrca                                          ; $6d7f: $0f
    ret nz                                        ; $6d80: $c0

    ret nz                                        ; $6d81: $c0

    ldh [$a0], a                                  ; $6d82: $e0 $a0
    ld h, b                                       ; $6d84: $60
    ldh [$90], a                                  ; $6d85: $e0 $90
    ldh a, [$e0]                                  ; $6d87: $f0 $e0
    ld h, b                                       ; $6d89: $60
    ldh a, [rSVBK]                                ; $6d8a: $f0 $70
    ld hl, sp-$38                                 ; $6d8c: $f8 $c8
    ldh a, [$f0]                                  ; $6d8e: $f0 $f0
    ldh a, [rSVBK]                                ; $6d90: $f0 $70
    ldh [rNR41], a                                ; $6d92: $e0 $20
    ret nz                                        ; $6d94: $c0

    ret nz                                        ; $6d95: $c0

    ret nz                                        ; $6d96: $c0

    ld b, b                                       ; $6d97: $40
    ret nz                                        ; $6d98: $c0

    ret nz                                        ; $6d99: $c0

    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    add b                                         ; $6d9c: $80
    add b                                         ; $6d9d: $80
    add b                                         ; $6d9e: $80
    add b                                         ; $6d9f: $80
    inc bc                                        ; $6da0: $03
    inc bc                                        ; $6da1: $03
    inc c                                         ; $6da2: $0c
    rrca                                          ; $6da3: $0f
    ld de, $121f                                  ; $6da4: $11 $1f $12
    rra                                           ; $6da7: $1f
    inc e                                         ; $6da8: $1c
    rra                                           ; $6da9: $1f
    rra                                           ; $6daa: $1f
    rra                                           ; $6dab: $1f
    ccf                                           ; $6dac: $3f
    add hl, hl                                    ; $6dad: $29
    ccf                                           ; $6dae: $3f
    ld [hl+], a                                   ; $6daf: $22
    rra                                           ; $6db0: $1f
    rla                                           ; $6db1: $17
    rrca                                          ; $6db2: $0f
    dec bc                                        ; $6db3: $0b
    rrca                                          ; $6db4: $0f
    rrca                                          ; $6db5: $0f
    rra                                           ; $6db6: $1f
    ld e, $1f                                     ; $6db7: $1e $1f
    rra                                           ; $6db9: $1f
    rrca                                          ; $6dba: $0f
    dec c                                         ; $6dbb: $0d
    inc de                                        ; $6dbc: $13
    rra                                           ; $6dbd: $1f
    inc e                                         ; $6dbe: $1c
    inc e                                         ; $6dbf: $1c
    ret nz                                        ; $6dc0: $c0

    ret nz                                        ; $6dc1: $c0

    and b                                         ; $6dc2: $a0
    ldh [$d0], a                                  ; $6dc3: $e0 $d0
    ld [hl], b                                    ; $6dc5: $70
    jr nc, @-$0e                                  ; $6dc6: $30 $f0

    ret nc                                        ; $6dc8: $d0

    ldh a, [$f8]                                  ; $6dc9: $f0 $f8
    ld a, b                                       ; $6dcb: $78
    ld hl, sp+$58                                 ; $6dcc: $f8 $58
    ld hl, sp+$28                                 ; $6dce: $f8 $28
    ldh a, [$f0]                                  ; $6dd0: $f0 $f0
    ldh a, [$f0]                                  ; $6dd2: $f0 $f0
    ld h, b                                       ; $6dd4: $60
    ldh [$e0], a                                  ; $6dd5: $e0 $e0
    ldh [$c0], a                                  ; $6dd7: $e0 $c0
    ret nz                                        ; $6dd9: $c0

    ldh [$60], a                                  ; $6dda: $e0 $60
    sub b                                         ; $6ddc: $90
    ldh a, [rSVBK]                                ; $6ddd: $f0 $70
    ld [hl], b                                    ; $6ddf: $70
    inc bc                                        ; $6de0: $03
    inc bc                                        ; $6de1: $03
    rlca                                          ; $6de2: $07
    dec b                                         ; $6de3: $05

jr_021_6de4:
    ld b, $07                                     ; $6de4: $06 $07
    add hl, bc                                    ; $6de6: $09
    rrca                                          ; $6de7: $0f
    rlca                                          ; $6de8: $07
    ld b, $0f                                     ; $6de9: $06 $0f
    ld c, $1f                                     ; $6deb: $0e $1f
    inc de                                        ; $6ded: $13
    rrca                                          ; $6dee: $0f
    rrca                                          ; $6def: $0f
    rra                                           ; $6df0: $1f
    ld e, $1f                                     ; $6df1: $1e $1f
    dec e                                         ; $6df3: $1d
    ld a, [bc]                                    ; $6df4: $0a
    rrca                                          ; $6df5: $0f
    rlca                                          ; $6df6: $07
    rlca                                          ; $6df7: $07
    ld bc, $0001                                  ; $6df8: $01 $01 $00
    nop                                           ; $6dfb: $00
    ld bc, $0101                                  ; $6dfc: $01 $01 $01
    ld bc, $c0c0                                  ; $6dff: $01 $c0 $c0
    jr nz, jr_021_6de4                            ; $6e02: $20 $e0

    db $10                                        ; $6e04: $10
    ldh a, [$f0]                                  ; $6e05: $f0 $f0
    ldh a, [$f0]                                  ; $6e07: $f0 $f0
    ldh a, [$f8]                                  ; $6e09: $f0 $f8
    ld c, b                                       ; $6e0b: $48
    ld hl, sp+$48                                 ; $6e0c: $f8 $48
    ldh a, [$30]                                  ; $6e0e: $f0 $30
    ldh a, [rSVBK]                                ; $6e10: $f0 $70
    and b                                         ; $6e12: $a0
    ldh [rNR10], a                                ; $6e13: $e0 $10
    ldh a, [$38]                                  ; $6e15: $f0 $38
    add sp, -$08                                  ; $6e17: $e8 $f8
    ret z                                         ; $6e19: $c8

    ld hl, sp-$28                                 ; $6e1a: $f8 $d8
    jr c, @-$16                                   ; $6e1c: $38 $e8

    ldh a, [$f0]                                  ; $6e1e: $f0 $f0
    inc bc                                        ; $6e20: $03
    inc bc                                        ; $6e21: $03
    inc b                                         ; $6e22: $04
    rlca                                          ; $6e23: $07
    ld [$080f], sp                                ; $6e24: $08 $0f $08
    rrca                                          ; $6e27: $0f
    inc c                                         ; $6e28: $0c
    rrca                                          ; $6e29: $0f
    rra                                           ; $6e2a: $1f
    rla                                           ; $6e2b: $17
    rra                                           ; $6e2c: $1f
    inc de                                        ; $6e2d: $13
    rrca                                          ; $6e2e: $0f
    add hl, bc                                    ; $6e2f: $09
    rlca                                          ; $6e30: $07
    rlca                                          ; $6e31: $07
    ld [bc], a                                    ; $6e32: $02
    inc bc                                        ; $6e33: $03
    inc bc                                        ; $6e34: $03
    inc bc                                        ; $6e35: $03
    inc bc                                        ; $6e36: $03
    ld [bc], a                                    ; $6e37: $02
    inc bc                                        ; $6e38: $03
    inc bc                                        ; $6e39: $03
    rlca                                          ; $6e3a: $07
    dec b                                         ; $6e3b: $05
    add hl, bc                                    ; $6e3c: $09
    rrca                                          ; $6e3d: $0f
    ld c, $0e                                     ; $6e3e: $0e $0e
    ldh [$e0], a                                  ; $6e40: $e0 $e0
    db $10                                        ; $6e42: $10
    ldh a, [$08]                                  ; $6e43: $f0 $08
    ld hl, sp+$08                                 ; $6e45: $f8 $08
    ld hl, sp+$38                                 ; $6e47: $f8 $38

jr_021_6e49:
    ld hl, sp-$04                                 ; $6e49: $f8 $fc
    db $f4                                        ; $6e4b: $f4
    db $fc                                        ; $6e4c: $fc
    db $f4                                        ; $6e4d: $f4
    ei                                            ; $6e4e: $fb
    ei                                            ; $6e4f: $fb
    or e                                          ; $6e50: $b3
    di                                            ; $6e51: $f3
    ld d, $f6                                     ; $6e52: $16 $f6
    call z, $f8fc                                 ; $6e54: $cc $fc $f8
    jr c, jr_021_6e49                             ; $6e57: $38 $f0

    ret nc                                        ; $6e59: $d0

    ldh a, [$90]                                  ; $6e5a: $f0 $90
    ld c, b                                       ; $6e5c: $48
    ld a, b                                       ; $6e5d: $78
    jr c, jr_021_6e98                             ; $6e5e: $38 $38

    inc bc                                        ; $6e60: $03
    inc bc                                        ; $6e61: $03
    inc b                                         ; $6e62: $04
    rlca                                          ; $6e63: $07
    ld [$cf0f], sp                                ; $6e64: $08 $0f $cf
    rst $08                                       ; $6e67: $cf
    rst $08                                       ; $6e68: $cf
    rst $08                                       ; $6e69: $cf
    rst $18                                       ; $6e6a: $df
    jp nc, Jump_021_525f                          ; $6e6b: $d2 $5f $52

    ld l, a                                       ; $6e6e: $6f
    ld l, h                                       ; $6e6f: $6c
    ccf                                           ; $6e70: $3f
    ld a, $1b                                     ; $6e71: $3e $1b
    rra                                           ; $6e73: $1f
    rrca                                          ; $6e74: $0f
    ld c, $1d                                     ; $6e75: $0e $1d
    rla                                           ; $6e77: $17
    rra                                           ; $6e78: $1f
    inc de                                        ; $6e79: $13
    rra                                           ; $6e7a: $1f
    dec de                                        ; $6e7b: $1b
    inc e                                         ; $6e7c: $1c
    rla                                           ; $6e7d: $17
    rrca                                          ; $6e7e: $0f
    rrca                                          ; $6e7f: $0f
    ret nz                                        ; $6e80: $c0

    ret nz                                        ; $6e81: $c0

    ldh [$a0], a                                  ; $6e82: $e0 $a0
    ld h, b                                       ; $6e84: $60
    ldh [$90], a                                  ; $6e85: $e0 $90
    ldh a, [$e0]                                  ; $6e87: $f0 $e0
    ld h, b                                       ; $6e89: $60
    ldh a, [rSVBK]                                ; $6e8a: $f0 $70
    ld hl, sp-$38                                 ; $6e8c: $f8 $c8
    ldh a, [$f0]                                  ; $6e8e: $f0 $f0
    ldh a, [rSVBK]                                ; $6e90: $f0 $70
    ldh [rNR41], a                                ; $6e92: $e0 $20
    ret nz                                        ; $6e94: $c0

    ret nz                                        ; $6e95: $c0

    ld b, b                                       ; $6e96: $40
    ret nz                                        ; $6e97: $c0

jr_021_6e98:
    ret nz                                        ; $6e98: $c0

    ret nz                                        ; $6e99: $c0

    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    add b                                         ; $6e9c: $80
    add b                                         ; $6e9d: $80
    add b                                         ; $6e9e: $80
    add b                                         ; $6e9f: $80
    rlca                                          ; $6ea0: $07
    rlca                                          ; $6ea1: $07
    ld [$110f], sp                                ; $6ea2: $08 $0f $11
    rra                                           ; $6ea5: $1f
    jp nc, $dddf                                  ; $6ea6: $d2 $df $dd

    rst $18                                       ; $6ea9: $df
    rst $18                                       ; $6eaa: $df
    rst $18                                       ; $6eab: $df
    ld a, a                                       ; $6eac: $7f
    ld l, c                                       ; $6ead: $69
    ld a, a                                       ; $6eae: $7f
    ld h, d                                       ; $6eaf: $62
    ccf                                           ; $6eb0: $3f
    scf                                           ; $6eb1: $37
    ccf                                           ; $6eb2: $3f
    dec hl                                        ; $6eb3: $2b
    dec e                                         ; $6eb4: $1d
    rla                                           ; $6eb5: $17
    rrca                                          ; $6eb6: $0f
    rrca                                          ; $6eb7: $0f

jr_021_6eb8:
    rrca                                          ; $6eb8: $0f
    rrca                                          ; $6eb9: $0f
    rrca                                          ; $6eba: $0f
    add hl, bc                                    ; $6ebb: $09
    inc de                                        ; $6ebc: $13
    rra                                           ; $6ebd: $1f
    inc e                                         ; $6ebe: $1c
    inc e                                         ; $6ebf: $1c
    ret nz                                        ; $6ec0: $c0

    ret nz                                        ; $6ec1: $c0

    and b                                         ; $6ec2: $a0
    ldh [$d0], a                                  ; $6ec3: $e0 $d0
    ld [hl], b                                    ; $6ec5: $70
    jr nc, jr_021_6eb8                            ; $6ec6: $30 $f0

    ret nc                                        ; $6ec8: $d0

    ldh a, [$f8]                                  ; $6ec9: $f0 $f8
    ld a, b                                       ; $6ecb: $78
    ld hl, sp+$58                                 ; $6ecc: $f8 $58
    ld hl, sp+$28                                 ; $6ece: $f8 $28
    ldh a, [$f0]                                  ; $6ed0: $f0 $f0
    ldh a, [$f0]                                  ; $6ed2: $f0 $f0
    ld h, b                                       ; $6ed4: $60
    ldh [$c0], a                                  ; $6ed5: $e0 $c0
    ret nz                                        ; $6ed7: $c0

    ret nz                                        ; $6ed8: $c0

    ret nz                                        ; $6ed9: $c0

    ldh [$60], a                                  ; $6eda: $e0 $60
    sub b                                         ; $6edc: $90
    ldh a, [rSVBK]                                ; $6edd: $f0 $70
    ld [hl], b                                    ; $6edf: $70
    inc bc                                        ; $6ee0: $03
    inc bc                                        ; $6ee1: $03
    rlca                                          ; $6ee2: $07
    dec b                                         ; $6ee3: $05

jr_021_6ee4:
    ld b, $07                                     ; $6ee4: $06 $07
    add hl, bc                                    ; $6ee6: $09
    rrca                                          ; $6ee7: $0f
    rlca                                          ; $6ee8: $07
    ld b, $0f                                     ; $6ee9: $06 $0f
    ld c, $1f                                     ; $6eeb: $0e $1f
    inc de                                        ; $6eed: $13
    rrca                                          ; $6eee: $0f
    rrca                                          ; $6eef: $0f
    rrca                                          ; $6ef0: $0f
    ld c, $07                                     ; $6ef1: $0e $07
    dec b                                         ; $6ef3: $05
    ld [bc], a                                    ; $6ef4: $02
    inc bc                                        ; $6ef5: $03
    ld bc, $0101                                  ; $6ef6: $01 $01 $01
    ld bc, $0000                                  ; $6ef9: $01 $00 $00
    ld bc, $0101                                  ; $6efc: $01 $01 $01
    ld bc, $c0c0                                  ; $6eff: $01 $c0 $c0
    jr nz, jr_021_6ee4                            ; $6f02: $20 $e0

    db $10                                        ; $6f04: $10
    ldh a, [$f6]                                  ; $6f05: $f0 $f6
    or $f6                                        ; $6f07: $f6 $f6
    or $fe                                        ; $6f09: $f6 $fe
    ld c, [hl]                                    ; $6f0b: $4e
    ld hl, sp+$48                                 ; $6f0c: $f8 $48
    ldh a, [$30]                                  ; $6f0e: $f0 $30
    ldh a, [rSVBK]                                ; $6f10: $f0 $70
    and b                                         ; $6f12: $a0
    ldh [rNR10], a                                ; $6f13: $e0 $10
    ldh a, [$38]                                  ; $6f15: $f0 $38
    add sp, -$08                                  ; $6f17: $e8 $f8
    ret z                                         ; $6f19: $c8

    ld hl, sp-$28                                 ; $6f1a: $f8 $d8
    jr c, @-$16                                   ; $6f1c: $38 $e8

    ldh a, [$f0]                                  ; $6f1e: $f0 $f0
    inc bc                                        ; $6f20: $03
    inc bc                                        ; $6f21: $03
    inc b                                         ; $6f22: $04
    rlca                                          ; $6f23: $07
    ld [$080f], sp                                ; $6f24: $08 $0f $08
    rrca                                          ; $6f27: $0f
    inc c                                         ; $6f28: $0c
    rrca                                          ; $6f29: $0f
    rra                                           ; $6f2a: $1f
    rla                                           ; $6f2b: $17
    rra                                           ; $6f2c: $1f
    inc de                                        ; $6f2d: $13
    rrca                                          ; $6f2e: $0f
    add hl, bc                                    ; $6f2f: $09
    rlca                                          ; $6f30: $07
    rlca                                          ; $6f31: $07
    ld [bc], a                                    ; $6f32: $02
    inc bc                                        ; $6f33: $03
    inc bc                                        ; $6f34: $03
    inc bc                                        ; $6f35: $03
    inc bc                                        ; $6f36: $03
    ld [bc], a                                    ; $6f37: $02
    inc bc                                        ; $6f38: $03
    inc bc                                        ; $6f39: $03
    rlca                                          ; $6f3a: $07
    dec b                                         ; $6f3b: $05
    add hl, bc                                    ; $6f3c: $09
    rrca                                          ; $6f3d: $0f
    ld c, $0e                                     ; $6f3e: $0e $0e
    ldh [$e0], a                                  ; $6f40: $e0 $e0
    db $10                                        ; $6f42: $10
    ldh a, [$08]                                  ; $6f43: $f0 $08
    ld hl, sp+$0b                                 ; $6f45: $f8 $0b
    ei                                            ; $6f47: $fb
    dec sp                                        ; $6f48: $3b

jr_021_6f49:
    ei                                            ; $6f49: $fb
    rst $38                                       ; $6f4a: $ff
    rst $30                                       ; $6f4b: $f7
    db $fc                                        ; $6f4c: $fc
    db $f4                                        ; $6f4d: $f4
    db $fc                                        ; $6f4e: $fc
    db $ec                                        ; $6f4f: $ec
    cp b                                          ; $6f50: $b8
    ld hl, sp+$08                                 ; $6f51: $f8 $08
    ld hl, sp-$30                                 ; $6f53: $f8 $d0
    ldh a, [$f0]                                  ; $6f55: $f0 $f0
    jr nc, jr_021_6f49                            ; $6f57: $30 $f0

    ret nc                                        ; $6f59: $d0

    ldh a, [$90]                                  ; $6f5a: $f0 $90
    ld c, b                                       ; $6f5c: $48
    ld a, b                                       ; $6f5d: $78
    jr c, jr_021_6f98                             ; $6f5e: $38 $38

    inc bc                                        ; $6f60: $03
    inc bc                                        ; $6f61: $03
    inc b                                         ; $6f62: $04
    rlca                                          ; $6f63: $07

jr_021_6f64:
    ret z                                         ; $6f64: $c8

    rst $08                                       ; $6f65: $cf
    ret z                                         ; $6f66: $c8

    rst $08                                       ; $6f67: $cf
    sbc $df                                       ; $6f68: $de $df
    ld a, a                                       ; $6f6a: $7f
    ld [hl], a                                    ; $6f6b: $77
    ccf                                           ; $6f6c: $3f
    scf                                           ; $6f6d: $37
    rra                                           ; $6f6e: $1f
    rra                                           ; $6f6f: $1f
    dec d                                         ; $6f70: $15
    rra                                           ; $6f71: $1f
    ld [$0e0f], sp                                ; $6f72: $08 $0f $0e
    rrca                                          ; $6f75: $0f
    rlca                                          ; $6f76: $07
    dec b                                         ; $6f77: $05
    rrca                                          ; $6f78: $0f
    ld a, [bc]                                    ; $6f79: $0a
    rrca                                          ; $6f7a: $0f
    dec bc                                        ; $6f7b: $0b
    rrca                                          ; $6f7c: $0f
    rrca                                          ; $6f7d: $0f
    rlca                                          ; $6f7e: $07
    rlca                                          ; $6f7f: $07
    ret nz                                        ; $6f80: $c0

    ret nz                                        ; $6f81: $c0

    jr nz, jr_021_6f64                            ; $6f82: $20 $e0

    db $10                                        ; $6f84: $10
    ldh a, [rNR10]                                ; $6f85: $f0 $10
    ldh a, [$28]                                  ; $6f87: $f0 $28
    ld hl, sp-$08                                 ; $6f89: $f8 $f8
    ld hl, sp-$08                                 ; $6f8b: $f8 $f8
    add sp, -$08                                  ; $6f8d: $e8 $f8
    ret z                                         ; $6f8f: $c8

    ldh a, [$f0]                                  ; $6f90: $f0 $f0
    ld d, b                                       ; $6f92: $50
    ldh a, [$60]                                  ; $6f93: $f0 $60
    ldh [rLCDC], a                                ; $6f95: $e0 $40
    ret nz                                        ; $6f97: $c0

jr_021_6f98:
    add b                                         ; $6f98: $80
    add b                                         ; $6f99: $80
    add b                                         ; $6f9a: $80
    add b                                         ; $6f9b: $80
    ld b, b                                       ; $6f9c: $40
    ret nz                                        ; $6f9d: $c0

    ret nz                                        ; $6f9e: $c0

    ret nz                                        ; $6f9f: $c0

    ld bc, $0201                                  ; $6fa0: $01 $01 $02
    inc bc                                        ; $6fa3: $03
    call nz, $c6c7                                ; $6fa4: $c4 $c7 $c6
    rst $00                                       ; $6fa7: $c7
    rst $20                                       ; $6fa8: $e7
    rst $20                                       ; $6fa9: $e7
    ccf                                           ; $6faa: $3f
    add hl, sp                                    ; $6fab: $39
    rra                                           ; $6fac: $1f
    add hl, de                                    ; $6fad: $19
    rrca                                          ; $6fae: $0f
    ld c, $07                                     ; $6faf: $0e $07
    rlca                                          ; $6fb1: $07
    ld [bc], a                                    ; $6fb2: $02
    inc bc                                        ; $6fb3: $03
    inc bc                                        ; $6fb4: $03
    inc bc                                        ; $6fb5: $03
    rlca                                          ; $6fb6: $07
    inc b                                         ; $6fb7: $04
    rlca                                          ; $6fb8: $07
    ld b, $0b                                     ; $6fb9: $06 $0b
    rrca                                          ; $6fbb: $0f
    ld a, [bc]                                    ; $6fbc: $0a
    ld c, $06                                     ; $6fbd: $0e $06
    ld b, $e0                                     ; $6fbf: $06 $e0
    ldh [rSVBK], a                                ; $6fc1: $e0 $70
    ret nc                                        ; $6fc3: $d0

    ld l, b                                       ; $6fc4: $68
    ld hl, sp-$78                                 ; $6fc5: $f8 $88
    ld hl, sp-$04                                 ; $6fc7: $f8 $fc
    db $f4                                        ; $6fc9: $f4
    db $fc                                        ; $6fca: $fc
    inc h                                         ; $6fcb: $24
    ld hl, sp+$78                                 ; $6fcc: $f8 $78
    ld hl, sp+$68                                 ; $6fce: $f8 $68
    ldh a, [$f0]                                  ; $6fd0: $f0 $f0
    ld d, b                                       ; $6fd2: $50
    ldh a, [$e0]                                  ; $6fd3: $f0 $e0
    ldh [$e0], a                                  ; $6fd5: $e0 $e0
    and b                                         ; $6fd7: $a0
    ldh [$e0], a                                  ; $6fd8: $e0 $e0
    ldh [$e0], a                                  ; $6fda: $e0 $e0
    sub b                                         ; $6fdc: $90
    ldh a, [rSVBK]                                ; $6fdd: $f0 $70
    ld [hl], b                                    ; $6fdf: $70
    inc bc                                        ; $6fe0: $03
    inc bc                                        ; $6fe1: $03
    rlca                                          ; $6fe2: $07
    ld b, $0b                                     ; $6fe3: $06 $0b
    rrca                                          ; $6fe5: $0f
    inc c                                         ; $6fe6: $0c
    rrca                                          ; $6fe7: $0f
    rrca                                          ; $6fe8: $0f
    rrca                                          ; $6fe9: $0f
    rra                                           ; $6fea: $1f
    ld a, [de]                                    ; $6feb: $1a
    rra                                           ; $6fec: $1f
    inc d                                         ; $6fed: $14
    rra                                           ; $6fee: $1f
    rra                                           ; $6fef: $1f
    rrca                                          ; $6ff0: $0f
    rrca                                          ; $6ff1: $0f
    rlca                                          ; $6ff2: $07
    ld b, $07                                     ; $6ff3: $06 $07
    rlca                                          ; $6ff5: $07
    inc b                                         ; $6ff6: $04
    rlca                                          ; $6ff7: $07
    inc bc                                        ; $6ff8: $03
    inc bc                                        ; $6ff9: $03
    inc bc                                        ; $6ffa: $03
    inc bc                                        ; $6ffb: $03
    dec b                                         ; $6ffc: $05
    rlca                                          ; $6ffd: $07
    rlca                                          ; $6ffe: $07
    rlca                                          ; $6fff: $07
    ret nz                                        ; $7000: $c0

    ret nz                                        ; $7001: $c0

    and b                                         ; $7002: $a0
    ldh [$d3], a                                  ; $7003: $e0 $d3
    di                                            ; $7005: $f3
    inc sp                                        ; $7006: $33
    di                                            ; $7007: $f3
    db $d3                                        ; $7008: $d3
    di                                            ; $7009: $f3
    ld a, [$feaa]                                 ; $700a: $fa $aa $fe
    ld e, [hl]                                    ; $700d: $5e

jr_021_700e:
    db $fc                                        ; $700e: $fc
    call nc, $b8f8                                ; $700f: $d4 $f8 $b8
    ld hl, sp+$78                                 ; $7012: $f8 $78
    ldh a, [$d0]                                  ; $7014: $f0 $d0
    ldh a, [$f0]                                  ; $7016: $f0 $f0
    ld [hl], b                                    ; $7018: $70
    ret nc                                        ; $7019: $d0

    ldh a, [$d0]                                  ; $701a: $f0 $d0
    jr nc, jr_021_700e                            ; $701c: $30 $f0

    ldh [$e0], a                                  ; $701e: $e0 $e0
    rlca                                          ; $7020: $07
    rlca                                          ; $7021: $07
    inc c                                         ; $7022: $0c
    rrca                                          ; $7023: $0f
    db $10                                        ; $7024: $10
    rra                                           ; $7025: $1f
    rra                                           ; $7026: $1f
    rra                                           ; $7027: $1f
    ccf                                           ; $7028: $3f
    ld a, [hl-]                                   ; $7029: $3a
    ccf                                           ; $702a: $3f
    inc h                                         ; $702b: $24
    rra                                           ; $702c: $1f
    ld e, $1f                                     ; $702d: $1e $1f
    dec e                                         ; $702f: $1d
    rrca                                          ; $7030: $0f
    add hl, bc                                    ; $7031: $09
    rrca                                          ; $7032: $0f
    rrca                                          ; $7033: $0f
    dec b                                         ; $7034: $05
    rlca                                          ; $7035: $07
    rlca                                          ; $7036: $07
    rlca                                          ; $7037: $07
    rlca                                          ; $7038: $07
    ld b, $07                                     ; $7039: $06 $07
    inc b                                         ; $703b: $04
    add hl, bc                                    ; $703c: $09
    ld c, $0f                                     ; $703d: $0e $0f
    rrca                                          ; $703f: $0f
    add b                                         ; $7040: $80
    add b                                         ; $7041: $80
    ld b, b                                       ; $7042: $40
    ret nz                                        ; $7043: $c0

    inc hl                                        ; $7044: $23
    db $e3                                        ; $7045: $e3
    and e                                         ; $7046: $a3
    db $e3                                        ; $7047: $e3
    rst $20                                       ; $7048: $e7
    ld h, a                                       ; $7049: $67
    db $ec                                        ; $704a: $ec
    ld l, h                                       ; $704b: $6c
    ld hl, sp-$08                                 ; $704c: $f8 $f8
    ld [hl], b                                    ; $704e: $70
    ldh a, [$a0]                                  ; $704f: $f0 $a0
    ldh [$c0], a                                  ; $7051: $e0 $c0
    ret nz                                        ; $7053: $c0

    ret nz                                        ; $7054: $c0

    ld b, b                                       ; $7055: $40
    ldh [$a0], a                                  ; $7056: $e0 $a0
    ldh [$e0], a                                  ; $7058: $e0 $e0
    ldh a, [$d0]                                  ; $705a: $f0 $d0
    sub b                                         ; $705c: $90
    ldh a, [rSVBK]                                ; $705d: $f0 $70
    ld [hl], b                                    ; $705f: $70
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    inc bc                                        ; $7062: $03
    inc bc                                        ; $7063: $03
    inc b                                         ; $7064: $04
    rlca                                          ; $7065: $07
    ld [$0f0f], sp                                ; $7066: $08 $0f $0f
    rrca                                          ; $7069: $0f
    rrca                                          ; $706a: $0f
    rrca                                          ; $706b: $0f
    rra                                           ; $706c: $1f
    ld [de], a                                    ; $706d: $12
    rra                                           ; $706e: $1f
    ld [de], a                                    ; $706f: $12
    rrca                                          ; $7070: $0f
    inc c                                         ; $7071: $0c
    rrca                                          ; $7072: $0f
    ld c, $06                                     ; $7073: $0e $06
    rlca                                          ; $7075: $07
    rrca                                          ; $7076: $0f
    dec bc                                        ; $7077: $0b
    rra                                           ; $7078: $1f
    ld d, $0f                                     ; $7079: $16 $0f
    rrca                                          ; $707b: $0f
    dec c                                         ; $707c: $0d
    rrca                                          ; $707d: $0f
    ld b, $06                                     ; $707e: $06 $06
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    ret nz                                        ; $7082: $c0

    ret nz                                        ; $7083: $c0

    ldh [$a0], a                                  ; $7084: $e0 $a0
    ld h, b                                       ; $7086: $60
    ldh [$90], a                                  ; $7087: $e0 $90
    ldh a, [$e0]                                  ; $7089: $f0 $e0
    ld h, b                                       ; $708b: $60
    ldh a, [rSVBK]                                ; $708c: $f0 $70
    ld hl, sp-$38                                 ; $708e: $f8 $c8
    ldh a, [$f0]                                  ; $7090: $f0 $f0
    ldh a, [rSVBK]                                ; $7092: $f0 $70
    ldh a, [$f0]                                  ; $7094: $f0 $f0
    ld hl, sp-$18                                 ; $7096: $f8 $e8
    ldh a, [rSVBK]                                ; $7098: $f0 $70
    ldh [rNR41], a                                ; $709a: $e0 $20
    ldh [$60], a                                  ; $709c: $e0 $60
    ret nz                                        ; $709e: $c0

    ret nz                                        ; $709f: $c0

    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    rlca                                          ; $70a2: $07
    rlca                                          ; $70a3: $07
    dec bc                                        ; $70a4: $0b
    ld c, $14                                     ; $70a5: $0e $14
    rra                                           ; $70a7: $1f
    dec de                                        ; $70a8: $1b
    rra                                           ; $70a9: $1f
    rra                                           ; $70aa: $1f
    ld e, $3f                                     ; $70ab: $1e $3f
    ld a, [hl+]                                   ; $70ad: $2a
    ccf                                           ; $70ae: $3f
    inc h                                         ; $70af: $24
    ccf                                           ; $70b0: $3f
    scf                                           ; $70b1: $37
    cpl                                           ; $70b2: $2f
    dec sp                                        ; $70b3: $3b
    ld a, e                                       ; $70b4: $7b
    ld a, a                                       ; $70b5: $7f
    rst $08                                       ; $70b6: $cf
    rst $08                                       ; $70b7: $cf
    rst $08                                       ; $70b8: $cf
    ret                                           ; $70b9: $c9


    rra                                           ; $70ba: $1f
    ld d, $09                                     ; $70bb: $16 $09
    rrca                                          ; $70bd: $0f
    ld b, $06                                     ; $70be: $06 $06
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    ret nz                                        ; $70c2: $c0

    ret nz                                        ; $70c3: $c0

    and b                                         ; $70c4: $a0
    ldh [$50], a                                  ; $70c5: $e0 $50
    ldh a, [$b0]                                  ; $70c7: $f0 $b0
    ldh a, [$f0]                                  ; $70c9: $f0 $f0
    ldh a, [$f8]                                  ; $70cb: $f0 $f8
    xor b                                         ; $70cd: $a8
    ld hl, sp+$48                                 ; $70ce: $f8 $48
    ldh a, [$d0]                                  ; $70d0: $f0 $d0
    add sp, -$48                                  ; $70d2: $e8 $b8
    cp h                                          ; $70d4: $bc
    db $f4                                        ; $70d5: $f4
    ld a, h                                       ; $70d6: $7c
    db $e4                                        ; $70d7: $e4
    ld hl, sp-$08                                 ; $70d8: $f8 $f8
    ret nz                                        ; $70da: $c0

    ret nz                                        ; $70db: $c0

    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    inc bc                                        ; $70e2: $03
    inc bc                                        ; $70e3: $03
    rlca                                          ; $70e4: $07
    dec b                                         ; $70e5: $05

jr_021_70e6:
    ld b, $07                                     ; $70e6: $06 $07
    add hl, bc                                    ; $70e8: $09
    rrca                                          ; $70e9: $0f
    rlca                                          ; $70ea: $07
    ld b, $0f                                     ; $70eb: $06 $0f
    ld c, $1f                                     ; $70ed: $0e $1f
    inc de                                        ; $70ef: $13

Call_021_70f0:
    rrca                                          ; $70f0: $0f
    rrca                                          ; $70f1: $0f
    rrca                                          ; $70f2: $0f
    ld c, $03                                     ; $70f3: $0e $03
    inc bc                                        ; $70f5: $03
    rlca                                          ; $70f6: $07
    dec b                                         ; $70f7: $05
    rrca                                          ; $70f8: $0f
    dec bc                                        ; $70f9: $0b
    rlca                                          ; $70fa: $07
    rlca                                          ; $70fb: $07
    inc b                                         ; $70fc: $04
    rlca                                          ; $70fd: $07
    inc bc                                        ; $70fe: $03
    inc bc                                        ; $70ff: $03
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    ret nz                                        ; $7102: $c0

    ret nz                                        ; $7103: $c0

    jr nz, jr_021_70e6                            ; $7104: $20 $e0

    db $10                                        ; $7106: $10
    ldh a, [$f0]                                  ; $7107: $f0 $f0
    ldh a, [$f0]                                  ; $7109: $f0 $f0
    ldh a, [$f8]                                  ; $710b: $f0 $f8
    ld c, b                                       ; $710d: $48
    ld hl, sp+$48                                 ; $710e: $f8 $48
    ldh a, [$30]                                  ; $7110: $f0 $30
    ldh a, [rSVBK]                                ; $7112: $f0 $70
    ld h, b                                       ; $7114: $60
    ldh [$f0], a                                  ; $7115: $e0 $f0
    ldh a, [$f0]                                  ; $7117: $f0 $f0
    jr nc, @-$06                                  ; $7119: $30 $f8

    adc b                                         ; $711b: $88
    ld hl, sp-$28                                 ; $711c: $f8 $d8
    or b                                          ; $711e: $b0
    or b                                          ; $711f: $b0
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    rlca                                          ; $7122: $07
    rlca                                          ; $7123: $07
    ld [$100f], sp                                ; $7124: $08 $0f $10
    rra                                           ; $7127: $1f
    db $10                                        ; $7128: $10
    rra                                           ; $7129: $1f
    db $10                                        ; $712a: $10
    rra                                           ; $712b: $1f
    jr c, jr_021_715d                             ; $712c: $38 $2f

    ccf                                           ; $712e: $3f
    cpl                                           ; $712f: $2f
    rra                                           ; $7130: $1f
    rla                                           ; $7131: $17
    cpl                                           ; $7132: $2f
    ccf                                           ; $7133: $3f
    ld a, b                                       ; $7134: $78
    ld a, a                                       ; $7135: $7f
    ld c, $0f                                     ; $7136: $0e $0f
    rrca                                          ; $7138: $0f
    add hl, bc                                    ; $7139: $09
    rra                                           ; $713a: $1f
    ld d, $09                                     ; $713b: $16 $09
    rrca                                          ; $713d: $0f
    ld b, $06                                     ; $713e: $06 $06
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    ret nz                                        ; $7142: $c0

    ret nz                                        ; $7143: $c0

    jr nz, @-$1e                                  ; $7144: $20 $e0

    db $10                                        ; $7146: $10
    ldh a, [rNR10]                                ; $7147: $f0 $10
    ldh a, [rNR10]                                ; $7149: $f0 $10
    ldh a, [$38]                                  ; $714b: $f0 $38
    add sp, -$08                                  ; $714d: $e8 $f8
    add sp, -$10                                  ; $714f: $e8 $f0
    ret nc                                        ; $7151: $d0

    db $eb                                        ; $7152: $eb
    ei                                            ; $7153: $fb
    ld a, $f6                                     ; $7154: $3e $f6
    ld a, h                                       ; $7156: $7c
    db $e4                                        ; $7157: $e4
    ld hl, sp-$08                                 ; $7158: $f8 $f8
    ret nz                                        ; $715a: $c0

    ret nz                                        ; $715b: $c0

    nop                                           ; $715c: $00

jr_021_715d:
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00
    ld bc, $0201                                  ; $7160: $01 $01 $02
    inc bc                                        ; $7163: $03
    inc b                                         ; $7164: $04
    rlca                                          ; $7165: $07
    rlca                                          ; $7166: $07
    rlca                                          ; $7167: $07
    rlca                                          ; $7168: $07
    rlca                                          ; $7169: $07
    rrca                                          ; $716a: $0f
    add hl, bc                                    ; $716b: $09
    rrca                                          ; $716c: $0f
    add hl, bc                                    ; $716d: $09
    rlca                                          ; $716e: $07
    ld b, $07                                     ; $716f: $06 $07
    rlca                                          ; $7171: $07
    rlca                                          ; $7172: $07
    rlca                                          ; $7173: $07
    ld b, $07                                     ; $7174: $06 $07

jr_021_7176:
    rrca                                          ; $7176: $0f
    dec bc                                        ; $7177: $0b
    rra                                           ; $7178: $1f
    ld d, $0f                                     ; $7179: $16 $0f
    rrca                                          ; $717b: $0f
    dec c                                         ; $717c: $0d
    rrca                                          ; $717d: $0f
    ld b, $06                                     ; $717e: $06 $06
    ldh [$e0], a                                  ; $7180: $e0 $e0
    ld [hl], b                                    ; $7182: $70
    ret nc                                        ; $7183: $d0

    jr nc, jr_021_7176                            ; $7184: $30 $f0

    ret z                                         ; $7186: $c8

    ld hl, sp-$10                                 ; $7187: $f8 $f0
    or b                                          ; $7189: $b0
    ld hl, sp+$38                                 ; $718a: $f8 $38
    db $fc                                        ; $718c: $fc
    ld h, h                                       ; $718d: $64
    ld hl, sp+$78                                 ; $718e: $f8 $78
    ld hl, sp+$38                                 ; $7190: $f8 $38
    ldh [rNR41], a                                ; $7192: $e0 $20
    ldh a, [$f0]                                  ; $7194: $f0 $f0
    ld hl, sp-$18                                 ; $7196: $f8 $e8
    ldh a, [rSVBK]                                ; $7198: $f0 $70
    ldh [rNR41], a                                ; $719a: $e0 $20
    ldh [$60], a                                  ; $719c: $e0 $60
    ret nz                                        ; $719e: $c0

    ret nz                                        ; $719f: $c0

    inc bc                                        ; $71a0: $03
    inc bc                                        ; $71a1: $03
    dec b                                         ; $71a2: $05
    rlca                                          ; $71a3: $07
    ld a, [bc]                                    ; $71a4: $0a
    rrca                                          ; $71a5: $0f
    dec c                                         ; $71a6: $0d
    rrca                                          ; $71a7: $0f
    rrca                                          ; $71a8: $0f
    rrca                                          ; $71a9: $0f
    rra                                           ; $71aa: $1f
    dec d                                         ; $71ab: $15
    rra                                           ; $71ac: $1f
    ld [de], a                                    ; $71ad: $12
    rra                                           ; $71ae: $1f
    dec de                                        ; $71af: $1b
    rla                                           ; $71b0: $17
    dec e                                         ; $71b1: $1d
    ld a, a                                       ; $71b2: $7f
    ld e, h                                       ; $71b3: $5c
    ld a, e                                       ; $71b4: $7b
    ld a, a                                       ; $71b5: $7f
    rst $08                                       ; $71b6: $cf
    rst $08                                       ; $71b7: $cf
    rst $08                                       ; $71b8: $cf
    ret                                           ; $71b9: $c9


    rra                                           ; $71ba: $1f
    ld d, $09                                     ; $71bb: $16 $09
    rrca                                          ; $71bd: $0f

jr_021_71be:
    ld b, $06                                     ; $71be: $06 $06
    ldh [$e0], a                                  ; $71c0: $e0 $e0
    ret nc                                        ; $71c2: $d0

    ld [hl], b                                    ; $71c3: $70
    jr z, jr_021_71be                             ; $71c4: $28 $f8

    ret c                                         ; $71c6: $d8

    ld hl, sp-$08                                 ; $71c7: $f8 $f8
    ld a, b                                       ; $71c9: $78
    db $fc                                        ; $71ca: $fc
    ld d, h                                       ; $71cb: $54
    db $fc                                        ; $71cc: $fc
    inc h                                         ; $71cd: $24
    ld hl, sp-$18                                 ; $71ce: $f8 $e8
    db $f4                                        ; $71d0: $f4
    call c, Call_021_78e8                         ; $71d1: $dc $e8 $78
    cp h                                          ; $71d4: $bc
    db $f4                                        ; $71d5: $f4
    ld a, h                                       ; $71d6: $7c
    db $e4                                        ; $71d7: $e4
    ld hl, sp-$08                                 ; $71d8: $f8 $f8
    ret nz                                        ; $71da: $c0

    ret nz                                        ; $71db: $c0

    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    ld bc, $0301                                  ; $71e0: $01 $01 $03
    ld [bc], a                                    ; $71e3: $02
    inc bc                                        ; $71e4: $03
    inc bc                                        ; $71e5: $03
    inc b                                         ; $71e6: $04
    rlca                                          ; $71e7: $07
    inc bc                                        ; $71e8: $03
    inc bc                                        ; $71e9: $03
    rlca                                          ; $71ea: $07
    rlca                                          ; $71eb: $07
    rrca                                          ; $71ec: $0f
    add hl, bc                                    ; $71ed: $09
    rlca                                          ; $71ee: $07
    rlca                                          ; $71ef: $07
    rlca                                          ; $71f0: $07
    rlca                                          ; $71f1: $07
    rlca                                          ; $71f2: $07
    inc b                                         ; $71f3: $04
    inc bc                                        ; $71f4: $03
    inc bc                                        ; $71f5: $03
    rlca                                          ; $71f6: $07
    dec b                                         ; $71f7: $05
    rrca                                          ; $71f8: $0f
    dec bc                                        ; $71f9: $0b
    rlca                                          ; $71fa: $07
    rlca                                          ; $71fb: $07
    inc b                                         ; $71fc: $04
    rlca                                          ; $71fd: $07
    inc bc                                        ; $71fe: $03
    inc bc                                        ; $71ff: $03
    ldh [$e0], a                                  ; $7200: $e0 $e0
    sub b                                         ; $7202: $90
    ldh a, [$08]                                  ; $7203: $f0 $08
    ld hl, sp-$08                                 ; $7205: $f8 $f8
    ld hl, sp-$08                                 ; $7207: $f8 $f8
    ld a, b                                       ; $7209: $78
    db $fc                                        ; $720a: $fc
    inc h                                         ; $720b: $24
    db $fc                                        ; $720c: $fc
    and h                                         ; $720d: $a4
    ld hl, sp-$68                                 ; $720e: $f8 $98
    ld hl, sp+$38                                 ; $7210: $f8 $38
    ldh [$e0], a                                  ; $7212: $e0 $e0
    ld h, b                                       ; $7214: $60
    ldh [$f0], a                                  ; $7215: $e0 $f0
    ldh a, [$f0]                                  ; $7217: $f0 $f0
    jr nc, @-$06                                  ; $7219: $30 $f8

    adc b                                         ; $721b: $88
    ld hl, sp-$28                                 ; $721c: $f8 $d8
    or b                                          ; $721e: $b0
    or b                                          ; $721f: $b0
    inc bc                                        ; $7220: $03
    inc bc                                        ; $7221: $03
    inc b                                         ; $7222: $04
    rlca                                          ; $7223: $07
    ld [$080f], sp                                ; $7224: $08 $0f $08
    rrca                                          ; $7227: $0f
    ld [$1c0f], sp                                ; $7228: $08 $0f $1c
    rla                                           ; $722b: $17
    rra                                           ; $722c: $1f
    rla                                           ; $722d: $17
    rrca                                          ; $722e: $0f
    dec bc                                        ; $722f: $0b
    rla                                           ; $7230: $17
    rra                                           ; $7231: $1f
    halt                                          ; $7232: $76
    ld e, a                                       ; $7233: $5f
    ld a, b                                       ; $7234: $78
    ld a, a                                       ; $7235: $7f
    ld c, $0f                                     ; $7236: $0e $0f
    rrca                                          ; $7238: $0f
    add hl, bc                                    ; $7239: $09
    rra                                           ; $723a: $1f
    ld d, $09                                     ; $723b: $16 $09
    rrca                                          ; $723d: $0f
    ld b, $06                                     ; $723e: $06 $06
    ldh [$e0], a                                  ; $7240: $e0 $e0
    db $10                                        ; $7242: $10
    ldh a, [$08]                                  ; $7243: $f0 $08
    ld hl, sp+$08                                 ; $7245: $f8 $08
    ld hl, sp+$08                                 ; $7247: $f8 $08
    ld hl, sp+$1c                                 ; $7249: $f8 $1c
    db $f4                                        ; $724b: $f4
    db $fc                                        ; $724c: $fc
    db $f4                                        ; $724d: $f4
    ld hl, sp-$18                                 ; $724e: $f8 $e8
    push af                                       ; $7250: $f5
    db $fd                                        ; $7251: $fd
    set 7, e                                      ; $7252: $cb $fb
    ld a, $f6                                     ; $7254: $3e $f6
    ld a, h                                       ; $7256: $7c
    db $e4                                        ; $7257: $e4
    ld hl, sp-$08                                 ; $7258: $f8 $f8
    ret nz                                        ; $725a: $c0

    ret nz                                        ; $725b: $c0

    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    rlca                                          ; $7260: $07
    rlca                                          ; $7261: $07
    add hl, bc                                    ; $7262: $09
    rrca                                          ; $7263: $0f
    db $10                                        ; $7264: $10
    rra                                           ; $7265: $1f
    rra                                           ; $7266: $1f
    rra                                           ; $7267: $1f

jr_021_7268:
    rra                                           ; $7268: $1f
    ld e, $3f                                     ; $7269: $1e $3f
    inc h                                         ; $726b: $24
    ccf                                           ; $726c: $3f
    dec h                                         ; $726d: $25
    rra                                           ; $726e: $1f
    add hl, de                                    ; $726f: $19
    rra                                           ; $7270: $1f
    inc e                                         ; $7271: $1c
    rlca                                          ; $7272: $07
    rlca                                          ; $7273: $07
    ld b, $07                                     ; $7274: $06 $07
    rrca                                          ; $7276: $0f
    dec bc                                        ; $7277: $0b
    rra                                           ; $7278: $1f
    ld d, $0f                                     ; $7279: $16 $0f
    rrca                                          ; $727b: $0f
    dec c                                         ; $727c: $0d
    rrca                                          ; $727d: $0f
    ld b, $06                                     ; $727e: $06 $06
    add b                                         ; $7280: $80
    add b                                         ; $7281: $80
    ret nz                                        ; $7282: $c0

    ld b, b                                       ; $7283: $40
    ret nz                                        ; $7284: $c0

    ret nz                                        ; $7285: $c0

    jr nz, jr_021_7268                            ; $7286: $20 $e0

    ret nz                                        ; $7288: $c0

    ret nz                                        ; $7289: $c0

    ldh [$e0], a                                  ; $728a: $e0 $e0
    ldh a, [$90]                                  ; $728c: $f0 $90
    ldh [$e0], a                                  ; $728e: $e0 $e0
    ldh [$e0], a                                  ; $7290: $e0 $e0
    ldh [rNR41], a                                ; $7292: $e0 $20
    ldh a, [$f0]                                  ; $7294: $f0 $f0
    ld hl, sp-$18                                 ; $7296: $f8 $e8
    ldh a, [rSVBK]                                ; $7298: $f0 $70
    ldh [rNR41], a                                ; $729a: $e0 $20
    ldh [$60], a                                  ; $729c: $e0 $60
    ret nz                                        ; $729e: $c0

    ret nz                                        ; $729f: $c0

    rrca                                          ; $72a0: $0f
    rrca                                          ; $72a1: $0f
    rla                                           ; $72a2: $17
    dec e                                         ; $72a3: $1d
    jr z, jr_021_72e5                             ; $72a4: $28 $3f

    scf                                           ; $72a6: $37
    ccf                                           ; $72a7: $3f
    ccf                                           ; $72a8: $3f
    dec a                                         ; $72a9: $3d
    ld a, a                                       ; $72aa: $7f
    ld d, l                                       ; $72ab: $55
    ld a, a                                       ; $72ac: $7f
    ld c, b                                       ; $72ad: $48
    ld a, a                                       ; $72ae: $7f
    ld l, a                                       ; $72af: $6f
    ld e, a                                       ; $72b0: $5f
    ld [hl], a                                    ; $72b1: $77
    ld a, a                                       ; $72b2: $7f
    ld e, h                                       ; $72b3: $5c
    ld a, e                                       ; $72b4: $7b
    ld a, a                                       ; $72b5: $7f
    rst $08                                       ; $72b6: $cf
    rst $08                                       ; $72b7: $cf
    rst $08                                       ; $72b8: $cf
    ret                                           ; $72b9: $c9


    rra                                           ; $72ba: $1f
    ld d, $09                                     ; $72bb: $16 $09
    rrca                                          ; $72bd: $0f
    ld b, $06                                     ; $72be: $06 $06
    add b                                         ; $72c0: $80
    add b                                         ; $72c1: $80
    ld b, b                                       ; $72c2: $40
    ret nz                                        ; $72c3: $c0

    and b                                         ; $72c4: $a0
    ldh [$60], a                                  ; $72c5: $e0 $60
    ldh [$e0], a                                  ; $72c7: $e0 $e0
    ldh [$f0], a                                  ; $72c9: $e0 $f0
    ld d, b                                       ; $72cb: $50
    ldh a, [$90]                                  ; $72cc: $f0 $90
    ldh [$a0], a                                  ; $72ce: $e0 $a0
    ret nc                                        ; $72d0: $d0

    ld [hl], b                                    ; $72d1: $70
    add sp, $78                                   ; $72d2: $e8 $78
    cp h                                          ; $72d4: $bc
    db $f4                                        ; $72d5: $f4
    ld a, h                                       ; $72d6: $7c
    db $e4                                        ; $72d7: $e4
    ld hl, sp-$08                                 ; $72d8: $f8 $f8
    ret nz                                        ; $72da: $c0

    ret nz                                        ; $72db: $c0

    nop                                           ; $72dc: $00
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    rlca                                          ; $72e0: $07
    rlca                                          ; $72e1: $07
    ld c, $0b                                     ; $72e2: $0e $0b
    inc c                                         ; $72e4: $0c

jr_021_72e5:
    rrca                                          ; $72e5: $0f

jr_021_72e6:
    inc de                                        ; $72e6: $13
    rra                                           ; $72e7: $1f
    rrca                                          ; $72e8: $0f
    dec c                                         ; $72e9: $0d
    rra                                           ; $72ea: $1f
    inc e                                         ; $72eb: $1c
    ccf                                           ; $72ec: $3f
    ld h, $1f                                     ; $72ed: $26 $1f
    ld e, $1f                                     ; $72ef: $1e $1f
    inc e                                         ; $72f1: $1c
    rlca                                          ; $72f2: $07
    inc b                                         ; $72f3: $04
    inc bc                                        ; $72f4: $03
    inc bc                                        ; $72f5: $03
    rlca                                          ; $72f6: $07
    dec b                                         ; $72f7: $05
    rrca                                          ; $72f8: $0f
    dec bc                                        ; $72f9: $0b
    rlca                                          ; $72fa: $07
    rlca                                          ; $72fb: $07
    inc b                                         ; $72fc: $04
    rlca                                          ; $72fd: $07
    inc bc                                        ; $72fe: $03
    inc bc                                        ; $72ff: $03
    add b                                         ; $7300: $80
    add b                                         ; $7301: $80
    ld b, b                                       ; $7302: $40
    ret nz                                        ; $7303: $c0

    jr nz, jr_021_72e6                            ; $7304: $20 $e0

    ldh [$e0], a                                  ; $7306: $e0 $e0
    ldh [$e0], a                                  ; $7308: $e0 $e0
    ldh a, [$90]                                  ; $730a: $f0 $90
    ldh a, [$90]                                  ; $730c: $f0 $90
    ldh [$60], a                                  ; $730e: $e0 $60
    ldh [$e0], a                                  ; $7310: $e0 $e0
    ldh [$e0], a                                  ; $7312: $e0 $e0
    ld h, b                                       ; $7314: $60
    ldh [$f0], a                                  ; $7315: $e0 $f0
    ldh a, [$f0]                                  ; $7317: $f0 $f0
    jr nc, @-$06                                  ; $7319: $30 $f8

    adc b                                         ; $731b: $88
    ld hl, sp-$28                                 ; $731c: $f8 $d8
    or b                                          ; $731e: $b0
    or b                                          ; $731f: $b0
    rrca                                          ; $7320: $0f
    rrca                                          ; $7321: $0f
    db $10                                        ; $7322: $10
    rra                                           ; $7323: $1f
    jr nz, jr_021_7365                            ; $7324: $20 $3f

jr_021_7326:
    jr nz, jr_021_7367                            ; $7326: $20 $3f

jr_021_7328:
    jr nz, jr_021_7369                            ; $7328: $20 $3f

jr_021_732a:
    ld [hl], b                                    ; $732a: $70
    ld e, a                                       ; $732b: $5f
    ld a, a                                       ; $732c: $7f
    ld e, a                                       ; $732d: $5f
    ccf                                           ; $732e: $3f
    cpl                                           ; $732f: $2f
    ld e, a                                       ; $7330: $5f
    ld a, a                                       ; $7331: $7f
    halt                                          ; $7332: $76
    ld e, a                                       ; $7333: $5f
    ld a, b                                       ; $7334: $78
    ld a, a                                       ; $7335: $7f
    ld c, $0f                                     ; $7336: $0e $0f
    rrca                                          ; $7338: $0f
    add hl, bc                                    ; $7339: $09
    rra                                           ; $733a: $1f
    ld d, $09                                     ; $733b: $16 $09
    rrca                                          ; $733d: $0f
    ld b, $06                                     ; $733e: $06 $06
    add b                                         ; $7340: $80
    add b                                         ; $7341: $80
    ld b, b                                       ; $7342: $40
    ret nz                                        ; $7343: $c0

    jr nz, jr_021_7326                            ; $7344: $20 $e0

    jr nz, jr_021_7328                            ; $7346: $20 $e0

    jr nz, jr_021_732a                            ; $7348: $20 $e0

    ld [hl], b                                    ; $734a: $70
    ret nc                                        ; $734b: $d0

    ldh a, [$d0]                                  ; $734c: $f0 $d0
    ldh [$a0], a                                  ; $734e: $e0 $a0
    sub $f6                                       ; $7350: $d6 $f6
    set 7, e                                      ; $7352: $cb $fb
    ld a, $f6                                     ; $7354: $3e $f6
    ld a, h                                       ; $7356: $7c
    db $e4                                        ; $7357: $e4
    ld hl, sp-$08                                 ; $7358: $f8 $f8
    ret nz                                        ; $735a: $c0

    ret nz                                        ; $735b: $c0

    nop                                           ; $735c: $00
    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    nop                                           ; $735f: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    inc bc                                        ; $7362: $03
    inc bc                                        ; $7363: $03
    nop                                           ; $7364: $00

jr_021_7365:
    inc bc                                        ; $7365: $03
    inc b                                         ; $7366: $04

jr_021_7367:
    rlca                                          ; $7367: $07
    rlca                                          ; $7368: $07

jr_021_7369:
    rlca                                          ; $7369: $07
    rlca                                          ; $736a: $07
    rlca                                          ; $736b: $07
    rrca                                          ; $736c: $0f
    ld a, [bc]                                    ; $736d: $0a
    rlca                                          ; $736e: $07
    inc b                                         ; $736f: $04
    rlca                                          ; $7370: $07
    ld b, $03                                     ; $7371: $06 $03
    inc bc                                        ; $7373: $03
    rlca                                          ; $7374: $07
    rlca                                          ; $7375: $07
    rrca                                          ; $7376: $0f
    ld a, [bc]                                    ; $7377: $0a
    rlca                                          ; $7378: $07
    rlca                                          ; $7379: $07
    dec b                                         ; $737a: $05
    rlca                                          ; $737b: $07
    ld [bc], a                                    ; $737c: $02
    ld [bc], a                                    ; $737d: $02
    nop                                           ; $737e: $00
    nop                                           ; $737f: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    ret nz                                        ; $7382: $c0

    ret nz                                        ; $7383: $c0

    ret nz                                        ; $7384: $c0

    add b                                         ; $7385: $80
    ld b, b                                       ; $7386: $40
    ret nz                                        ; $7387: $c0

    and b                                         ; $7388: $a0
    ldh [$c0], a                                  ; $7389: $e0 $c0
    ld b, b                                       ; $738b: $40
    ldh a, [$d0]                                  ; $738c: $f0 $d0
    ldh [$e0], a                                  ; $738e: $e0 $e0
    ldh [$60], a                                  ; $7390: $e0 $60
    ret nz                                        ; $7392: $c0

    nop                                           ; $7393: $00
    ldh a, [$d0]                                  ; $7394: $f0 $d0
    ldh [$60], a                                  ; $7396: $e0 $60
    ret nz                                        ; $7398: $c0

    nop                                           ; $7399: $00
    ret nz                                        ; $739a: $c0

    ld b, b                                       ; $739b: $40
    ret nz                                        ; $739c: $c0

    ret nz                                        ; $739d: $c0

    nop                                           ; $739e: $00
    nop                                           ; $739f: $00
    nop                                           ; $73a0: $00
    nop                                           ; $73a1: $00
    inc bc                                        ; $73a2: $03
    inc bc                                        ; $73a3: $03
    rlca                                          ; $73a4: $07
    ld b, $08                                     ; $73a5: $06 $08
    rrca                                          ; $73a7: $0f
    rrca                                          ; $73a8: $0f
    rrca                                          ; $73a9: $0f
    rrca                                          ; $73aa: $0f
    ld c, $1f                                     ; $73ab: $0e $1f
    db $10                                        ; $73ad: $10
    rra                                           ; $73ae: $1f
    dec de                                        ; $73af: $1b
    rla                                           ; $73b0: $17
    rra                                           ; $73b1: $1f
    ccf                                           ; $73b2: $3f
    inc l                                         ; $73b3: $2c
    ld h, a                                       ; $73b4: $67
    ld h, a                                       ; $73b5: $67
    ld h, a                                       ; $73b6: $67
    ld h, l                                       ; $73b7: $65
    rrca                                          ; $73b8: $0f
    ld a, [bc]                                    ; $73b9: $0a
    dec b                                         ; $73ba: $05
    rlca                                          ; $73bb: $07
    ld [bc], a                                    ; $73bc: $02
    ld [bc], a                                    ; $73bd: $02
    nop                                           ; $73be: $00
    nop                                           ; $73bf: $00
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    ret nz                                        ; $73c2: $c0

    ret nz                                        ; $73c3: $c0

    add b                                         ; $73c4: $80
    ret nz                                        ; $73c5: $c0

    ld h, b                                       ; $73c6: $60
    ldh [$a0], a                                  ; $73c7: $e0 $a0
    ldh [$e0], a                                  ; $73c9: $e0 $e0
    ldh [$f0], a                                  ; $73cb: $e0 $f0
    ld d, b                                       ; $73cd: $50
    ldh [$e0], a                                  ; $73ce: $e0 $e0
    ret nc                                        ; $73d0: $d0

    or b                                          ; $73d1: $b0
    ret nc                                        ; $73d2: $d0

    ld [hl], b                                    ; $73d3: $70
    ld a, b                                       ; $73d4: $78
    ret z                                         ; $73d5: $c8

    ldh a, [$f0]                                  ; $73d6: $f0 $f0
    ret nz                                        ; $73d8: $c0

    ret nz                                        ; $73d9: $c0

    nop                                           ; $73da: $00
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    inc bc                                        ; $73e2: $03
    inc bc                                        ; $73e3: $03
    inc bc                                        ; $73e4: $03
    ld bc, $0302                                  ; $73e5: $01 $02 $03

jr_021_73e8:
    dec b                                         ; $73e8: $05
    rlca                                          ; $73e9: $07
    inc bc                                        ; $73ea: $03
    ld [bc], a                                    ; $73eb: $02
    rrca                                          ; $73ec: $0f
    dec bc                                        ; $73ed: $0b
    rlca                                          ; $73ee: $07
    rlca                                          ; $73ef: $07
    rlca                                          ; $73f0: $07
    ld b, $03                                     ; $73f1: $06 $03
    nop                                           ; $73f3: $00
    inc bc                                        ; $73f4: $03
    ld bc, $0707                                  ; $73f5: $01 $07 $07
    inc bc                                        ; $73f8: $03
    inc bc                                        ; $73f9: $03
    nop                                           ; $73fa: $00
    inc bc                                        ; $73fb: $03
    inc bc                                        ; $73fc: $03
    inc bc                                        ; $73fd: $03
    nop                                           ; $73fe: $00
    nop                                           ; $73ff: $00
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    ret nz                                        ; $7402: $c0

    ret nz                                        ; $7403: $c0

    nop                                           ; $7404: $00
    ret nz                                        ; $7405: $c0

    jr nz, jr_021_73e8                            ; $7406: $20 $e0

    ldh [$e0], a                                  ; $7408: $e0 $e0
    ldh [$e0], a                                  ; $740a: $e0 $e0
    ldh a, [$50]                                  ; $740c: $f0 $50
    ldh [rNR41], a                                ; $740e: $e0 $20
    ldh [$60], a                                  ; $7410: $e0 $60
    ret nz                                        ; $7412: $c0

    ret nz                                        ; $7413: $c0

    ldh [$e0], a                                  ; $7414: $e0 $e0
    ldh [rNR41], a                                ; $7416: $e0 $20
    ldh a, [$90]                                  ; $7418: $f0 $90
    ldh a, [$f0]                                  ; $741a: $f0 $f0
    and b                                         ; $741c: $a0
    and b                                         ; $741d: $a0
    nop                                           ; $741e: $00
    nop                                           ; $741f: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    inc bc                                        ; $7422: $03
    inc bc                                        ; $7423: $03
    inc b                                         ; $7424: $04
    rlca                                          ; $7425: $07
    ld [$080f], sp                                ; $7426: $08 $0f $08
    rrca                                          ; $7429: $0f

jr_021_742a:
    ld [$1f0f], sp                                ; $742a: $08 $0f $1f
    rla                                           ; $742d: $17
    rrca                                          ; $742e: $0f
    dec bc                                        ; $742f: $0b
    rla                                           ; $7430: $17
    rra                                           ; $7431: $1f
    ld a, [hl-]                                   ; $7432: $3a
    cpl                                           ; $7433: $2f
    ld b, $07                                     ; $7434: $06 $07
    rlca                                          ; $7436: $07
    dec b                                         ; $7437: $05
    rrca                                          ; $7438: $0f
    ld a, [bc]                                    ; $7439: $0a
    dec b                                         ; $743a: $05
    rlca                                          ; $743b: $07
    ld [bc], a                                    ; $743c: $02
    ld [bc], a                                    ; $743d: $02
    nop                                           ; $743e: $00
    nop                                           ; $743f: $00
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    ret nz                                        ; $7442: $c0

    ret nz                                        ; $7443: $c0

    nop                                           ; $7444: $00
    ret nz                                        ; $7445: $c0

    jr nz, @-$1e                                  ; $7446: $20 $e0

    jr nz, jr_021_742a                            ; $7448: $20 $e0

    jr nz, @-$1e                                  ; $744a: $20 $e0

    ldh a, [$d0]                                  ; $744c: $f0 $d0
    ldh [$e0], a                                  ; $744e: $e0 $e0
    sub $f6                                       ; $7450: $d6 $f6
    sub $f6                                       ; $7452: $d6 $f6
    ld a, b                                       ; $7454: $78
    ret z                                         ; $7455: $c8

    ldh a, [$f0]                                  ; $7456: $f0 $f0
    ret nz                                        ; $7458: $c0

    ret nz                                        ; $7459: $c0

    nop                                           ; $745a: $00
    nop                                           ; $745b: $00
    nop                                           ; $745c: $00
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    nop                                           ; $745f: $00

    db $72, $74

    ld [hl], l                                    ; $7462: $75
    ld [hl], h                                    ; $7463: $74

    db $7b, $74, $7e, $74, $89, $74

    sub b                                         ; $746a: $90
    ld [hl], h                                    ; $746b: $74
    sbc b                                         ; $746c: $98
    ld [hl], h                                    ; $746d: $74
    xor h                                         ; $746e: $ac
    ld [hl], h                                    ; $746f: $74
    cp b                                          ; $7470: $b8
    ld [hl], h                                    ; $7471: $74
    nop                                           ; $7472: $00
    rst $38                                       ; $7473: $ff
    db $fd                                        ; $7474: $fd
    nop                                           ; $7475: $00
    ld e, $01                                     ; $7476: $1e $01
    ld e, $ff                                     ; $7478: $1e $ff
    nop                                           ; $747a: $00

    db $02, $ff, $fd, $02

    inc c                                         ; $747f: $0c
    inc bc                                        ; $7480: $03
    inc c                                         ; $7481: $0c
    inc b                                         ; $7482: $04
    jr @+$04                                      ; $7483: $18 $02

    inc c                                         ; $7485: $0c

    db $05, $0c, $fd, $02, $18, $03, $18, $02, $18, $fd, $00

    ld a, [bc]                                    ; $7491: $0a
    ld b, $1e                                     ; $7492: $06 $1e
    nop                                           ; $7494: $00
    ld a, [bc]                                    ; $7495: $0a
    cp $01                                        ; $7496: $fe $01
    nop                                           ; $7498: $00
    ld a, [bc]                                    ; $7499: $0a
    rlca                                          ; $749a: $07
    ld a, [bc]                                    ; $749b: $0a
    nop                                           ; $749c: $00
    inc bc                                        ; $749d: $03
    ld [$000a], sp                                ; $749e: $08 $0a $00
    inc bc                                        ; $74a1: $03
    rlca                                          ; $74a2: $07
    ld a, [bc]                                    ; $74a3: $0a
    nop                                           ; $74a4: $00
    inc bc                                        ; $74a5: $03
    ld [$000a], sp                                ; $74a6: $08 $0a $00
    ld a, [bc]                                    ; $74a9: $0a
    cp $01                                        ; $74aa: $fe $01
    nop                                           ; $74ac: $00
    ld a, [bc]                                    ; $74ad: $0a
    add hl, bc                                    ; $74ae: $09
    ld [$0800], sp                                ; $74af: $08 $00 $08
    add hl, bc                                    ; $74b2: $09
    ld [$0a00], sp                                ; $74b3: $08 $00 $0a
    cp $01                                        ; $74b6: $fe $01
    ld [bc], a                                    ; $74b8: $02
    ld [de], a                                    ; $74b9: $12
    inc bc                                        ; $74ba: $03
    ld [de], a                                    ; $74bb: $12
    ld [bc], a                                    ; $74bc: $02
    ld e, $05                                     ; $74bd: $1e $05
    ld [de], a                                    ; $74bf: $12
    db $fd                                        ; $74c0: $fd
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

Call_021_78e8:
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

Call_021_78f8:
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

Jump_021_7ec3:
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
