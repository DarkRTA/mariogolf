; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

    ld [de], a                                    ; $4000: $12
    ld b, b                                       ; $4001: $40

    db $33, $40, $b1, $4a, $31, $51, $b1, $57, $4b, $64, $d1, $6a

    ld [hl-], a                                   ; $400e: $32
    ld l, h                                       ; $400f: $6c
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
    jr nc, jr_022_4022                            ; $401f: $30 $01

    inc h                                         ; $4021: $24

jr_022_4022:
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


    db $04, $04, $3b, $40, $50, $4a, $3b, $40, $50, $40, $50, $41, $50, $42, $50, $43

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
    ld [$080f], sp                                ; $4054: $08 $0f $08
    rrca                                          ; $4057: $0f
    rrca                                          ; $4058: $0f
    rrca                                          ; $4059: $0f
    rrca                                          ; $405a: $0f
    rrca                                          ; $405b: $0f
    rrca                                          ; $405c: $0f
    inc c                                         ; $405d: $0c
    rrca                                          ; $405e: $0f
    inc c                                         ; $405f: $0c
    rlca                                          ; $4060: $07
    ld b, $03                                     ; $4061: $06 $03
    inc bc                                        ; $4063: $03
    ld b, $07                                     ; $4064: $06 $07
    rrca                                          ; $4066: $0f
    dec bc                                        ; $4067: $0b
    rra                                           ; $4068: $1f
    ld d, $1f                                     ; $4069: $16 $1f
    rra                                           ; $406b: $1f
    rrca                                          ; $406c: $0f
    rrca                                          ; $406d: $0f
    rlca                                          ; $406e: $07
    rlca                                          ; $406f: $07
    ldh [$e0], a                                  ; $4070: $e0 $e0
    db $10                                        ; $4072: $10
    ldh a, [$38]                                  ; $4073: $f0 $38
    ld hl, sp+$44                                 ; $4075: $f8 $44
    db $fc                                        ; $4077: $fc
    db $fc                                        ; $4078: $fc
    db $fc                                        ; $4079: $fc
    ld hl, sp-$78                                 ; $407a: $f8 $88
    ld hl, sp-$58                                 ; $407c: $f8 $a8
    ld hl, sp+$28                                 ; $407e: $f8 $28
    ld hl, sp+$08                                 ; $4080: $f8 $08
    ldh a, [rNR10]                                ; $4082: $f0 $10
    add sp, -$08                                  ; $4084: $e8 $f8
    db $fc                                        ; $4086: $fc
    db $fc                                        ; $4087: $fc
    db $ec                                        ; $4088: $ec
    inc l                                         ; $4089: $2c
    ret nc                                        ; $408a: $d0

    ld [hl], b                                    ; $408b: $70
    or b                                          ; $408c: $b0
    ldh a, [$60]                                  ; $408d: $f0 $60
    ld h, b                                       ; $408f: $60
    inc bc                                        ; $4090: $03
    inc bc                                        ; $4091: $03
    inc b                                         ; $4092: $04
    rlca                                          ; $4093: $07

jr_022_4094:
    dec bc                                        ; $4094: $0b
    rrca                                          ; $4095: $0f
    inc c                                         ; $4096: $0c
    rrca                                          ; $4097: $0f
    dec bc                                        ; $4098: $0b
    rrca                                          ; $4099: $0f
    rra                                           ; $409a: $1f
    inc e                                         ; $409b: $1c
    ccf                                           ; $409c: $3f
    ld a, [hl+]                                   ; $409d: $2a
    ccf                                           ; $409e: $3f
    ld [hl+], a                                   ; $409f: $22
    rra                                           ; $40a0: $1f
    jr jr_022_40e2                                ; $40a1: $18 $3f

    inc l                                         ; $40a3: $2c
    dec sp                                        ; $40a4: $3b
    ccf                                           ; $40a5: $3f
    daa                                           ; $40a6: $27
    daa                                           ; $40a7: $27
    ld h, a                                       ; $40a8: $67
    ld h, h                                       ; $40a9: $64
    ld h, a                                       ; $40aa: $67
    ld h, a                                       ; $40ab: $67
    inc b                                         ; $40ac: $04
    rlca                                          ; $40ad: $07
    inc bc                                        ; $40ae: $03
    inc bc                                        ; $40af: $03
    ret nz                                        ; $40b0: $c0

    ret nz                                        ; $40b1: $c0

    jr nz, jr_022_4094                            ; $40b2: $20 $e0

    ret nc                                        ; $40b4: $d0

    ldh a, [$30]                                  ; $40b5: $f0 $30
    ldh a, [$d0]                                  ; $40b7: $f0 $d0

jr_022_40b9:
    ldh a, [$f8]                                  ; $40b9: $f0 $f8
    jr c, jr_022_40b9                             ; $40bb: $38 $fc

    ld d, h                                       ; $40bd: $54
    db $fc                                        ; $40be: $fc
    ld b, h                                       ; $40bf: $44
    ld hl, sp+$18                                 ; $40c0: $f8 $18
    ldh a, [$30]                                  ; $40c2: $f0 $30
    ret c                                         ; $40c4: $d8

    ld hl, sp-$04                                 ; $40c5: $f8 $fc
    db $f4                                        ; $40c7: $f4
    db $fc                                        ; $40c8: $fc
    or h                                          ; $40c9: $b4
    add sp, -$18                                  ; $40ca: $e8 $e8
    ret nz                                        ; $40cc: $c0

    ret nz                                        ; $40cd: $c0

    add b                                         ; $40ce: $80
    add b                                         ; $40cf: $80
    rlca                                          ; $40d0: $07
    rlca                                          ; $40d1: $07
    ld [$1c0f], sp                                ; $40d2: $08 $0f $1c
    rra                                           ; $40d5: $1f
    ld [hl+], a                                   ; $40d6: $22
    ccf                                           ; $40d7: $3f
    ccf                                           ; $40d8: $3f
    ccf                                           ; $40d9: $3f
    rra                                           ; $40da: $1f

jr_022_40db:
    ld de, $151f                                  ; $40db: $11 $1f $15
    rra                                           ; $40de: $1f
    inc d                                         ; $40df: $14
    rra                                           ; $40e0: $1f

jr_022_40e1:
    db $10                                        ; $40e1: $10

jr_022_40e2:
    rrca                                          ; $40e2: $0f
    ld [$0f0f], sp                                ; $40e3: $08 $0f $0f
    rrca                                          ; $40e6: $0f
    dec bc                                        ; $40e7: $0b
    rra                                           ; $40e8: $1f
    ld d, $1f                                     ; $40e9: $16 $1f
    rra                                           ; $40eb: $1f
    dec bc                                        ; $40ec: $0b
    rrca                                          ; $40ed: $0f
    ld b, $06                                     ; $40ee: $06 $06
    ret nz                                        ; $40f0: $c0

    ret nz                                        ; $40f1: $c0

    jr nz, @-$1e                                  ; $40f2: $20 $e0

    db $10                                        ; $40f4: $10
    ldh a, [rNR10]                                ; $40f5: $f0 $10
    ldh a, [$f0]                                  ; $40f7: $f0 $f0
    ldh a, [$f0]                                  ; $40f9: $f0 $f0
    ldh a, [$f0]                                  ; $40fb: $f0 $f0
    jr nc, @-$0e                                  ; $40fd: $30 $f0

    jr nc, jr_022_40e1                            ; $40ff: $30 $e0

    ld h, b                                       ; $4101: $60
    ret nz                                        ; $4102: $c0

    ret nz                                        ; $4103: $c0

    ld h, b                                       ; $4104: $60
    ldh [$f0], a                                  ; $4105: $e0 $f0
    ldh a, [$f0]                                  ; $4107: $f0 $f0
    jr nc, jr_022_40db                            ; $4109: $30 $d0

    ld [hl], b                                    ; $410b: $70
    sub b                                         ; $410c: $90
    ldh a, [$60]                                  ; $410d: $f0 $60
    ld h, b                                       ; $410f: $60
    inc bc                                        ; $4110: $03
    inc bc                                        ; $4111: $03
    inc b                                         ; $4112: $04
    rlca                                          ; $4113: $07

jr_022_4114:
    ld [$080f], sp                                ; $4114: $08 $0f $08
    rrca                                          ; $4117: $0f
    add hl, bc                                    ; $4118: $09
    rrca                                          ; $4119: $0f
    inc e                                         ; $411a: $1c
    rra                                           ; $411b: $1f
    ccf                                           ; $411c: $3f
    cpl                                           ; $411d: $2f
    ccf                                           ; $411e: $3f
    daa                                           ; $411f: $27
    rra                                           ; $4120: $1f
    dec de                                        ; $4121: $1b
    inc a                                         ; $4122: $3c
    cpl                                           ; $4123: $2f
    jr c, @+$41                                   ; $4124: $38 $3f

    rlca                                          ; $4126: $07
    rlca                                          ; $4127: $07
    rlca                                          ; $4128: $07
    rlca                                          ; $4129: $07
    inc b                                         ; $412a: $04
    rlca                                          ; $412b: $07
    inc b                                         ; $412c: $04
    rlca                                          ; $412d: $07
    inc bc                                        ; $412e: $03
    inc bc                                        ; $412f: $03
    ret nz                                        ; $4130: $c0

    ret nz                                        ; $4131: $c0

    jr nz, jr_022_4114                            ; $4132: $20 $e0

jr_022_4134:
    db $10                                        ; $4134: $10
    ldh a, [rNR10]                                ; $4135: $f0 $10
    ldh a, [$90]                                  ; $4137: $f0 $90
    ldh a, [$38]                                  ; $4139: $f0 $38
    ld hl, sp-$04                                 ; $413b: $f8 $fc
    db $f4                                        ; $413d: $f4

jr_022_413e:
    db $fc                                        ; $413e: $fc
    db $e4                                        ; $413f: $e4
    ld hl, sp-$28                                 ; $4140: $f8 $d8
    jr nc, jr_022_4134                            ; $4142: $30 $f0

    jr jr_022_413e                                ; $4144: $18 $f8

    cp $f6                                        ; $4146: $fe $f6
    cp $be                                        ; $4148: $fe $be
    db $ec                                        ; $414a: $ec
    db $ec                                        ; $414b: $ec
    ret nz                                        ; $414c: $c0

    ret nz                                        ; $414d: $c0

    add b                                         ; $414e: $80
    add b                                         ; $414f: $80
    inc bc                                        ; $4150: $03
    inc bc                                        ; $4151: $03
    inc b                                         ; $4152: $04
    rlca                                          ; $4153: $07
    ld [$080f], sp                                ; $4154: $08 $0f $08
    rrca                                          ; $4157: $0f
    rrca                                          ; $4158: $0f
    rrca                                          ; $4159: $0f
    rrca                                          ; $415a: $0f
    rrca                                          ; $415b: $0f
    rrca                                          ; $415c: $0f
    inc c                                         ; $415d: $0c
    rrca                                          ; $415e: $0f
    inc c                                         ; $415f: $0c
    rlca                                          ; $4160: $07
    ld b, $03                                     ; $4161: $06 $03
    inc bc                                        ; $4163: $03
    ld b, $07                                     ; $4164: $06 $07
    rrca                                          ; $4166: $0f
    rrca                                          ; $4167: $0f
    rrca                                          ; $4168: $0f
    inc c                                         ; $4169: $0c
    dec bc                                        ; $416a: $0b
    ld c, $09                                     ; $416b: $0e $09
    rrca                                          ; $416d: $0f
    ld b, $06                                     ; $416e: $06 $06
    ldh [$e0], a                                  ; $4170: $e0 $e0
    db $10                                        ; $4172: $10
    ldh a, [$38]                                  ; $4173: $f0 $38
    ld hl, sp+$44                                 ; $4175: $f8 $44
    db $fc                                        ; $4177: $fc
    db $fc                                        ; $4178: $fc
    db $fc                                        ; $4179: $fc
    ld hl, sp-$78                                 ; $417a: $f8 $88
    ld hl, sp-$58                                 ; $417c: $f8 $a8
    ld hl, sp+$28                                 ; $417e: $f8 $28
    ld hl, sp+$08                                 ; $4180: $f8 $08
    or $16                                        ; $4182: $f6 $16
    or $f6                                        ; $4184: $f6 $f6
    db $fc                                        ; $4186: $fc
    call c, $68f8                                 ; $4187: $dc $f8 $68
    ld hl, sp-$08                                 ; $418a: $f8 $f8
    ret nc                                        ; $418c: $d0

    ldh a, [$60]                                  ; $418d: $f0 $60
    ld h, b                                       ; $418f: $60
    inc bc                                        ; $4190: $03
    inc bc                                        ; $4191: $03
    inc b                                         ; $4192: $04
    rlca                                          ; $4193: $07

jr_022_4194:
    dec bc                                        ; $4194: $0b
    rrca                                          ; $4195: $0f
    inc c                                         ; $4196: $0c
    rrca                                          ; $4197: $0f
    dec bc                                        ; $4198: $0b
    rrca                                          ; $4199: $0f
    rra                                           ; $419a: $1f
    inc e                                         ; $419b: $1c
    ccf                                           ; $419c: $3f
    ld a, [hl+]                                   ; $419d: $2a
    ccf                                           ; $419e: $3f
    ld [hl+], a                                   ; $419f: $22
    rra                                           ; $41a0: $1f
    jr jr_022_4212                                ; $41a1: $18 $6f

    ld l, h                                       ; $41a3: $6c
    ld a, e                                       ; $41a4: $7b
    ld a, a                                       ; $41a5: $7f
    ccf                                           ; $41a6: $3f
    cpl                                           ; $41a7: $2f
    ccf                                           ; $41a8: $3f
    dec l                                         ; $41a9: $2d
    scf                                           ; $41aa: $37

jr_022_41ab:
    scf                                           ; $41ab: $37
    inc bc                                        ; $41ac: $03
    inc bc                                        ; $41ad: $03
    ld bc, $c001                                  ; $41ae: $01 $01 $c0
    ret nz                                        ; $41b1: $c0

    jr nz, jr_022_4194                            ; $41b2: $20 $e0

    ret nc                                        ; $41b4: $d0

    ldh a, [$30]                                  ; $41b5: $f0 $30
    ldh a, [$d0]                                  ; $41b7: $f0 $d0

jr_022_41b9:
    ldh a, [$f8]                                  ; $41b9: $f0 $f8
    jr c, jr_022_41b9                             ; $41bb: $38 $fc

    ld d, h                                       ; $41bd: $54
    db $fc                                        ; $41be: $fc
    ld b, h                                       ; $41bf: $44
    ld hl, sp+$18                                 ; $41c0: $f8 $18
    db $fc                                        ; $41c2: $fc
    inc [hl]                                      ; $41c3: $34
    call c, $e0fc                                 ; $41c4: $dc $fc $e0
    ldh [$e0], a                                  ; $41c7: $e0 $e0
    jr nz, jr_022_41ab                            ; $41c9: $20 $e0

    ldh [rNR41], a                                ; $41cb: $e0 $20
    ldh [$c0], a                                  ; $41cd: $e0 $c0
    ret nz                                        ; $41cf: $c0

    rlca                                          ; $41d0: $07
    rlca                                          ; $41d1: $07
    ld [$1c0f], sp                                ; $41d2: $08 $0f $1c
    rra                                           ; $41d5: $1f
    ld [hl+], a                                   ; $41d6: $22
    ccf                                           ; $41d7: $3f
    ccf                                           ; $41d8: $3f
    ccf                                           ; $41d9: $3f
    rra                                           ; $41da: $1f
    ld de, $151f                                  ; $41db: $11 $1f $15
    rst $18                                       ; $41de: $df
    call nc, $d0df                                ; $41df: $d4 $df $d0
    ld l, a                                       ; $41e2: $6f
    ld l, b                                       ; $41e3: $68
    scf                                           ; $41e4: $37
    ccf                                           ; $41e5: $3f
    ccf                                           ; $41e6: $3f
    ccf                                           ; $41e7: $3f
    scf                                           ; $41e8: $37
    inc [hl]                                      ; $41e9: $34
    dec bc                                        ; $41ea: $0b
    ld c, $0d                                     ; $41eb: $0e $0d
    rrca                                          ; $41ed: $0f
    ld b, $06                                     ; $41ee: $06 $06
    ret nz                                        ; $41f0: $c0

    ret nz                                        ; $41f1: $c0

    jr nz, @-$1e                                  ; $41f2: $20 $e0

    db $10                                        ; $41f4: $10
    ldh a, [rNR10]                                ; $41f5: $f0 $10
    ldh a, [$f0]                                  ; $41f7: $f0 $f0
    ldh a, [$f0]                                  ; $41f9: $f0 $f0
    ldh a, [$f0]                                  ; $41fb: $f0 $f0
    jr nc, @-$0e                                  ; $41fd: $30 $f0

    jr nc, @-$1e                                  ; $41ff: $30 $e0

    ld h, b                                       ; $4201: $60
    ret nz                                        ; $4202: $c0

    ret nz                                        ; $4203: $c0

    ld h, b                                       ; $4204: $60
    ldh [$f0], a                                  ; $4205: $e0 $f0
    ret nc                                        ; $4207: $d0

    ld hl, sp+$68                                 ; $4208: $f8 $68
    ld hl, sp-$08                                 ; $420a: $f8 $f8
    ret nc                                        ; $420c: $d0

    ldh a, [$60]                                  ; $420d: $f0 $60
    ld h, b                                       ; $420f: $60
    inc bc                                        ; $4210: $03
    inc bc                                        ; $4211: $03

jr_022_4212:
    inc b                                         ; $4212: $04
    rlca                                          ; $4213: $07

jr_022_4214:
    ld [$080f], sp                                ; $4214: $08 $0f $08
    rrca                                          ; $4217: $0f
    add hl, bc                                    ; $4218: $09
    rrca                                          ; $4219: $0f
    inc e                                         ; $421a: $1c
    rra                                           ; $421b: $1f
    ccf                                           ; $421c: $3f
    cpl                                           ; $421d: $2f
    ccf                                           ; $421e: $3f
    daa                                           ; $421f: $27
    rra                                           ; $4220: $1f
    dec de                                        ; $4221: $1b
    inc c                                         ; $4222: $0c
    rrca                                          ; $4223: $0f
    jr jr_022_4245                                ; $4224: $18 $1f

    ccf                                           ; $4226: $3f
    cpl                                           ; $4227: $2f
    ccf                                           ; $4228: $3f
    dec a                                         ; $4229: $3d
    rlca                                          ; $422a: $07
    rlca                                          ; $422b: $07

jr_022_422c:
    inc bc                                        ; $422c: $03
    inc bc                                        ; $422d: $03

jr_022_422e:
    ld bc, $c001                                  ; $422e: $01 $01 $c0
    ret nz                                        ; $4231: $c0

    jr nz, jr_022_4214                            ; $4232: $20 $e0

    db $10                                        ; $4234: $10
    ldh a, [rNR10]                                ; $4235: $f0 $10
    ldh a, [$90]                                  ; $4237: $f0 $90
    ldh a, [$38]                                  ; $4239: $f0 $38
    ld hl, sp-$02                                 ; $423b: $f8 $fe
    or $fe                                        ; $423d: $f6 $fe
    and $fc                                       ; $423f: $e6 $fc
    call c, $f43c                                 ; $4241: $dc $3c $f4
    inc e                                         ; $4244: $1c

jr_022_4245:
    db $fc                                        ; $4245: $fc
    ldh [$e0], a                                  ; $4246: $e0 $e0
    ldh [$e0], a                                  ; $4248: $e0 $e0
    jr nz, jr_022_422c                            ; $424a: $20 $e0

    jr nz, jr_022_422e                            ; $424c: $20 $e0

    ret nz                                        ; $424e: $c0

    ret nz                                        ; $424f: $c0

    ld bc, $0601                                  ; $4250: $01 $01 $06
    rlca                                          ; $4253: $07
    ld [$080f], sp                                ; $4254: $08 $0f $08
    rrca                                          ; $4257: $0f
    ld c, $0f                                     ; $4258: $0e $0f
    rrca                                          ; $425a: $0f
    rrca                                          ; $425b: $0f
    rrca                                          ; $425c: $0f
    rrca                                          ; $425d: $0f
    rrca                                          ; $425e: $0f
    inc c                                         ; $425f: $0c
    rlca                                          ; $4260: $07
    inc b                                         ; $4261: $04
    rlca                                          ; $4262: $07
    ld b, $09                                     ; $4263: $06 $09
    rrca                                          ; $4265: $0f
    dec c                                         ; $4266: $0d
    rrca                                          ; $4267: $0f
    rrca                                          ; $4268: $0f
    dec bc                                        ; $4269: $0b
    rrca                                          ; $426a: $0f
    dec bc                                        ; $426b: $0b
    inc b                                         ; $426c: $04
    rlca                                          ; $426d: $07
    rlca                                          ; $426e: $07
    rlca                                          ; $426f: $07
    ret nz                                        ; $4270: $c0

    ret nz                                        ; $4271: $c0

    jr nc, @-$0e                                  ; $4272: $30 $f0

    ld [$08f8], sp                                ; $4274: $08 $f8 $08
    ld hl, sp+$38                                 ; $4277: $f8 $38
    ld hl, sp-$3c                                 ; $4279: $f8 $c4
    db $fc                                        ; $427b: $fc
    db $fc                                        ; $427c: $fc
    db $fc                                        ; $427d: $fc
    ld hl, sp-$58                                 ; $427e: $f8 $a8
    ld hl, sp+$28                                 ; $4280: $f8 $28
    ld hl, sp+$08                                 ; $4282: $f8 $08
    ldh a, [$90]                                  ; $4284: $f0 $90
    ldh [$60], a                                  ; $4286: $e0 $60
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

jr_022_4294:
    ld [$090f], sp                                ; $4294: $08 $0f $09
    rrca                                          ; $4297: $0f
    ld [de], a                                    ; $4298: $12
    rra                                           ; $4299: $1f
    dec e                                         ; $429a: $1d
    rra                                           ; $429b: $1f
    rra                                           ; $429c: $1f
    ld e, $1f                                     ; $429d: $1e $1f
    dec d                                         ; $429f: $15
    rra                                           ; $42a0: $1f
    ld de, $0c0f                                  ; $42a1: $11 $0f $0c
    dec bc                                        ; $42a4: $0b
    ld c, $07                                     ; $42a5: $0e $07
    dec b                                         ; $42a7: $05
    rlca                                          ; $42a8: $07
    ld b, $0f                                     ; $42a9: $06 $0f
    dec c                                         ; $42ab: $0d
    inc de                                        ; $42ac: $13
    rra                                           ; $42ad: $1f
    rra                                           ; $42ae: $1f
    rra                                           ; $42af: $1f
    ret nz                                        ; $42b0: $c0

    ret nz                                        ; $42b1: $c0

    jr nz, jr_022_4294                            ; $42b2: $20 $e0

    db $10                                        ; $42b4: $10
    ldh a, [$f0]                                  ; $42b5: $f0 $f0
    ldh a, [$08]                                  ; $42b7: $f0 $08
    ld hl, sp-$0c                                 ; $42b9: $f8 $f4
    db $fc                                        ; $42bb: $fc
    db $fc                                        ; $42bc: $fc
    inc c                                         ; $42bd: $0c
    ld hl, sp+$28                                 ; $42be: $f8 $28
    ld hl, sp+$28                                 ; $42c0: $f8 $28
    ldh a, [rNR10]                                ; $42c2: $f0 $10
    ldh a, [$30]                                  ; $42c4: $f0 $30
    ldh a, [$d0]                                  ; $42c6: $f0 $d0
    and b                                         ; $42c8: $a0
    ldh [$f0], a                                  ; $42c9: $e0 $f0
    ret nc                                        ; $42cb: $d0

    ret z                                         ; $42cc: $c8

    ld hl, sp-$08                                 ; $42cd: $f8 $f8
    ld hl, sp+$03                                 ; $42cf: $f8 $03
    inc bc                                        ; $42d1: $03
    inc c                                         ; $42d2: $0c
    rrca                                          ; $42d3: $0f
    db $10                                        ; $42d4: $10
    rra                                           ; $42d5: $1f
    db $10                                        ; $42d6: $10
    rra                                           ; $42d7: $1f
    inc e                                         ; $42d8: $1c
    rra                                           ; $42d9: $1f
    inc hl                                        ; $42da: $23
    ccf                                           ; $42db: $3f
    ccf                                           ; $42dc: $3f
    ccf                                           ; $42dd: $3f
    rra                                           ; $42de: $1f
    dec d                                         ; $42df: $15
    rra                                           ; $42e0: $1f

jr_022_42e1:
    inc d                                         ; $42e1: $14
    rra                                           ; $42e2: $1f

jr_022_42e3:
    db $10                                        ; $42e3: $10
    rrca                                          ; $42e4: $0f
    add hl, bc                                    ; $42e5: $09
    rlca                                          ; $42e6: $07
    ld b, $07                                     ; $42e7: $06 $07
    dec b                                         ; $42e9: $05
    rrca                                          ; $42ea: $0f
    rrca                                          ; $42eb: $0f
    db $db                                        ; $42ec: $db
    db $db                                        ; $42ed: $db

jr_022_42ee:
    pop af                                        ; $42ee: $f1
    pop af                                        ; $42ef: $f1
    add b                                         ; $42f0: $80
    add b                                         ; $42f1: $80
    ld h, b                                       ; $42f2: $60
    ldh [rNR10], a                                ; $42f3: $e0 $10
    ldh a, [rNR10]                                ; $42f5: $f0 $10
    ldh a, [rSVBK]                                ; $42f7: $f0 $70
    ldh a, [$f0]                                  ; $42f9: $f0 $f0
    ldh a, [$f0]                                  ; $42fb: $f0 $f0
    ldh a, [$f0]                                  ; $42fd: $f0 $f0
    jr nc, jr_022_42e1                            ; $42ff: $30 $e0

    jr nz, jr_022_42e3                            ; $4301: $20 $e0

    ld h, b                                       ; $4303: $60
    sub b                                         ; $4304: $90
    ldh a, [$b0]                                  ; $4305: $f0 $b0
    ldh a, [$f0]                                  ; $4307: $f0 $f0
    ret nc                                        ; $4309: $d0

    ldh a, [$d0]                                  ; $430a: $f0 $d0
    jr nz, jr_022_42ee                            ; $430c: $20 $e0

    ldh [$e0], a                                  ; $430e: $e0 $e0
    inc bc                                        ; $4310: $03
    inc bc                                        ; $4311: $03
    inc b                                         ; $4312: $04
    rlca                                          ; $4313: $07

jr_022_4314:
    ld [$080f], sp                                ; $4314: $08 $0f $08
    rrca                                          ; $4317: $0f
    add hl, bc                                    ; $4318: $09
    rrca                                          ; $4319: $0f
    rla                                           ; $431a: $17
    rra                                           ; $431b: $1f
    rra                                           ; $431c: $1f
    rra                                           ; $431d: $1f
    rra                                           ; $431e: $1f
    inc de                                        ; $431f: $13
    rra                                           ; $4320: $1f
    inc d                                         ; $4321: $14
    rrca                                          ; $4322: $0f
    rrca                                          ; $4323: $0f
    ld a, [bc]                                    ; $4324: $0a
    rrca                                          ; $4325: $0f
    rlca                                          ; $4326: $07
    rlca                                          ; $4327: $07
    rlca                                          ; $4328: $07
    inc b                                         ; $4329: $04
    rrca                                          ; $432a: $0f
    ld c, $13                                     ; $432b: $0e $13
    rra                                           ; $432d: $1f
    ld e, $1e                                     ; $432e: $1e $1e
    ret nz                                        ; $4330: $c0

    ret nz                                        ; $4331: $c0

    jr nz, jr_022_4314                            ; $4332: $20 $e0

    ret nc                                        ; $4334: $d0

    ldh a, [rNR10]                                ; $4335: $f0 $10
    ldh a, [$e8]                                  ; $4337: $f0 $e8
    ld hl, sp-$08                                 ; $4339: $f8 $f8
    ld hl, sp-$08                                 ; $433b: $f8 $f8
    ld hl, sp-$04                                 ; $433d: $f8 $fc
    db $f4                                        ; $433f: $f4
    db $fc                                        ; $4340: $fc
    db $f4                                        ; $4341: $f4
    jr c, @-$06                                   ; $4342: $38 $f8

    jr z, @-$06                                   ; $4344: $28 $f8

    ldh a, [$f0]                                  ; $4346: $f0 $f0
    ldh a, [rNR10]                                ; $4348: $f0 $10
    ldh a, [$b0]                                  ; $434a: $f0 $b0
    ret z                                         ; $434c: $c8

    ld hl, sp-$08                                 ; $434d: $f8 $f8
    ld hl, sp+$01                                 ; $434f: $f8 $01
    ld bc, $0706                                  ; $4351: $01 $06 $07
    ld [$080f], sp                                ; $4354: $08 $0f $08
    rrca                                          ; $4357: $0f
    ld c, $0f                                     ; $4358: $0e $0f
    rrca                                          ; $435a: $0f
    rrca                                          ; $435b: $0f
    rrca                                          ; $435c: $0f
    rrca                                          ; $435d: $0f
    rrca                                          ; $435e: $0f
    inc c                                         ; $435f: $0c
    rlca                                          ; $4360: $07
    inc b                                         ; $4361: $04
    rra                                           ; $4362: $1f
    ld e, $1b                                     ; $4363: $1e $1b
    rra                                           ; $4365: $1f
    rra                                           ; $4366: $1f
    dec e                                         ; $4367: $1d
    ld c, $0f                                     ; $4368: $0e $0f
    rrca                                          ; $436a: $0f
    dec bc                                        ; $436b: $0b
    inc b                                         ; $436c: $04
    rlca                                          ; $436d: $07
    rlca                                          ; $436e: $07
    rlca                                          ; $436f: $07
    ret nz                                        ; $4370: $c0

    ret nz                                        ; $4371: $c0

    jr nc, @-$0e                                  ; $4372: $30 $f0

    ld [$08f8], sp                                ; $4374: $08 $f8 $08
    ld hl, sp+$38                                 ; $4377: $f8 $38
    ld hl, sp-$3c                                 ; $4379: $f8 $c4
    db $fc                                        ; $437b: $fc
    db $fc                                        ; $437c: $fc
    db $fc                                        ; $437d: $fc
    ld hl, sp-$58                                 ; $437e: $f8 $a8
    ld hl, sp+$28                                 ; $4380: $f8 $28
    ld hl, sp+$08                                 ; $4382: $f8 $08
    ldh a, [$90]                                  ; $4384: $f0 $90
    ld h, b                                       ; $4386: $60
    ldh [$a0], a                                  ; $4387: $e0 $a0
    ldh [$c0], a                                  ; $4389: $e0 $c0
    ret nz                                        ; $438b: $c0

    add b                                         ; $438c: $80
    add b                                         ; $438d: $80
    add b                                         ; $438e: $80
    add b                                         ; $438f: $80
    inc bc                                        ; $4390: $03
    inc bc                                        ; $4391: $03
    inc b                                         ; $4392: $04
    rlca                                          ; $4393: $07

jr_022_4394:
    ld [$090f], sp                                ; $4394: $08 $0f $09
    rrca                                          ; $4397: $0f
    ld [de], a                                    ; $4398: $12
    rra                                           ; $4399: $1f
    dec e                                         ; $439a: $1d
    rra                                           ; $439b: $1f
    rra                                           ; $439c: $1f
    ld e, $1f                                     ; $439d: $1e $1f
    dec d                                         ; $439f: $15
    rra                                           ; $43a0: $1f
    ld de, $cccf                                  ; $43a1: $11 $cf $cc
    set 1, [hl]                                   ; $43a4: $cb $ce
    rst $28                                       ; $43a6: $ef
    db $eb                                        ; $43a7: $eb
    dec a                                         ; $43a8: $3d
    ccf                                           ; $43a9: $3f
    rrca                                          ; $43aa: $0f
    rrca                                          ; $43ab: $0f
    ld [de], a                                    ; $43ac: $12
    ld e, $1e                                     ; $43ad: $1e $1e
    ld e, $c0                                     ; $43af: $1e $c0
    ret nz                                        ; $43b1: $c0

    jr nz, jr_022_4394                            ; $43b2: $20 $e0

    db $10                                        ; $43b4: $10
    ldh a, [$f0]                                  ; $43b5: $f0 $f0
    ldh a, [$08]                                  ; $43b7: $f0 $08
    ld hl, sp-$0c                                 ; $43b9: $f8 $f4
    db $fc                                        ; $43bb: $fc
    db $fc                                        ; $43bc: $fc
    inc c                                         ; $43bd: $0c
    ld hl, sp+$28                                 ; $43be: $f8 $28
    ld hl, sp+$28                                 ; $43c0: $f8 $28
    ldh a, [rNR10]                                ; $43c2: $f0 $10
    ldh [rNR41], a                                ; $43c4: $e0 $20
    ldh [$e0], a                                  ; $43c6: $e0 $e0
    and b                                         ; $43c8: $a0
    ld h, b                                       ; $43c9: $60
    ldh a, [$d0]                                  ; $43ca: $f0 $d0
    ret z                                         ; $43cc: $c8

    ld hl, sp+$78                                 ; $43cd: $f8 $78
    ld a, b                                       ; $43cf: $78
    inc bc                                        ; $43d0: $03
    inc bc                                        ; $43d1: $03
    inc c                                         ; $43d2: $0c
    rrca                                          ; $43d3: $0f
    db $10                                        ; $43d4: $10
    rra                                           ; $43d5: $1f
    db $10                                        ; $43d6: $10
    rra                                           ; $43d7: $1f
    inc e                                         ; $43d8: $1c
    rra                                           ; $43d9: $1f
    inc hl                                        ; $43da: $23
    ccf                                           ; $43db: $3f
    ccf                                           ; $43dc: $3f
    ccf                                           ; $43dd: $3f
    rra                                           ; $43de: $1f
    dec d                                         ; $43df: $15
    rra                                           ; $43e0: $1f

jr_022_43e1:
    inc d                                         ; $43e1: $14
    ccf                                           ; $43e2: $3f

jr_022_43e3:
    jr nc, jr_022_4424                            ; $43e3: $30 $3f

    add hl, sp                                    ; $43e5: $39
    rra                                           ; $43e6: $1f
    rra                                           ; $43e7: $1f
    dec bc                                        ; $43e8: $0b
    dec c                                         ; $43e9: $0d
    rlca                                          ; $43ea: $07
    rlca                                          ; $43eb: $07
    inc bc                                        ; $43ec: $03
    inc bc                                        ; $43ed: $03

jr_022_43ee:
    ld bc, $8001                                  ; $43ee: $01 $01 $80
    add b                                         ; $43f1: $80
    ld h, b                                       ; $43f2: $60
    ldh [rNR10], a                                ; $43f3: $e0 $10
    ldh a, [rNR10]                                ; $43f5: $f0 $10
    ldh a, [rSVBK]                                ; $43f7: $f0 $70
    ldh a, [$f0]                                  ; $43f9: $f0 $f0
    ldh a, [$f0]                                  ; $43fb: $f0 $f0
    ldh a, [$f0]                                  ; $43fd: $f0 $f0
    jr nc, jr_022_43e1                            ; $43ff: $30 $e0

    jr nz, jr_022_43e3                            ; $4401: $20 $e0

    ld h, b                                       ; $4403: $60
    sub b                                         ; $4404: $90
    ldh a, [$30]                                  ; $4405: $f0 $30
    ldh a, [$f0]                                  ; $4407: $f0 $f0
    ret nc                                        ; $4409: $d0

    ldh a, [$90]                                  ; $440a: $f0 $90
    jr nz, jr_022_43ee                            ; $440c: $20 $e0

    ldh [$e0], a                                  ; $440e: $e0 $e0
    inc bc                                        ; $4410: $03
    inc bc                                        ; $4411: $03
    inc b                                         ; $4412: $04
    rlca                                          ; $4413: $07

jr_022_4414:
    ld [$080f], sp                                ; $4414: $08 $0f $08
    rrca                                          ; $4417: $0f
    add hl, bc                                    ; $4418: $09
    rrca                                          ; $4419: $0f
    rla                                           ; $441a: $17
    rra                                           ; $441b: $1f
    rra                                           ; $441c: $1f
    rra                                           ; $441d: $1f
    rra                                           ; $441e: $1f
    inc de                                        ; $441f: $13
    rra                                           ; $4420: $1f
    inc d                                         ; $4421: $14
    rrca                                          ; $4422: $0f
    rrca                                          ; $4423: $0f

jr_022_4424:
    inc b                                         ; $4424: $04
    rlca                                          ; $4425: $07
    rlca                                          ; $4426: $07
    rlca                                          ; $4427: $07
    rlca                                          ; $4428: $07
    inc b                                         ; $4429: $04
    rrca                                          ; $442a: $0f
    ld c, $13                                     ; $442b: $0e $13
    rra                                           ; $442d: $1f
    ld e, $1e                                     ; $442e: $1e $1e
    ret nz                                        ; $4430: $c0

    ret nz                                        ; $4431: $c0

    jr nz, jr_022_4414                            ; $4432: $20 $e0

    ret nc                                        ; $4434: $d0

    ldh a, [rNR10]                                ; $4435: $f0 $10
    ldh a, [$e8]                                  ; $4437: $f0 $e8
    ld hl, sp-$08                                 ; $4439: $f8 $f8
    ld hl, sp-$08                                 ; $443b: $f8 $f8
    ld hl, sp-$04                                 ; $443d: $f8 $fc
    db $f4                                        ; $443f: $f4
    db $fc                                        ; $4440: $fc
    db $f4                                        ; $4441: $f4
    dec sp                                        ; $4442: $3b
    ei                                            ; $4443: $fb
    ld e, a                                       ; $4444: $5f
    rst $38                                       ; $4445: $ff
    db $ec                                        ; $4446: $ec
    db $fc                                        ; $4447: $fc
    ld hl, sp+$18                                 ; $4448: $f8 $18
    ldh a, [$b0]                                  ; $444a: $f0 $b0
    ret z                                         ; $444c: $c8

    ld hl, sp-$08                                 ; $444d: $f8 $f8
    ld hl, sp+$01                                 ; $444f: $f8 $01
    ld bc, $0706                                  ; $4451: $01 $06 $07
    ld [$080f], sp                                ; $4454: $08 $0f $08
    rrca                                          ; $4457: $0f
    adc $cf                                       ; $4458: $ce $cf
    rst $08                                       ; $445a: $cf
    rst $08                                       ; $445b: $cf
    rst $08                                       ; $445c: $cf
    rst $08                                       ; $445d: $cf
    ld l, a                                       ; $445e: $6f
    ld l, h                                       ; $445f: $6c
    ccf                                           ; $4460: $3f
    inc a                                         ; $4461: $3c
    rra                                           ; $4462: $1f
    ld d, $0d                                     ; $4463: $16 $0d
    rrca                                          ; $4465: $0f
    rrca                                          ; $4466: $0f
    ld c, $0f                                     ; $4467: $0e $0f
    add hl, bc                                    ; $4469: $09
    rrca                                          ; $446a: $0f
    dec bc                                        ; $446b: $0b
    inc b                                         ; $446c: $04
    rlca                                          ; $446d: $07
    rlca                                          ; $446e: $07
    rlca                                          ; $446f: $07
    ret nz                                        ; $4470: $c0

    ret nz                                        ; $4471: $c0

    jr nc, @-$0e                                  ; $4472: $30 $f0

    ld [$08f8], sp                                ; $4474: $08 $f8 $08
    ld hl, sp+$38                                 ; $4477: $f8 $38
    ld hl, sp-$3c                                 ; $4479: $f8 $c4
    db $fc                                        ; $447b: $fc
    db $fc                                        ; $447c: $fc
    db $fc                                        ; $447d: $fc
    ld hl, sp-$58                                 ; $447e: $f8 $a8
    ld hl, sp+$28                                 ; $4480: $f8 $28
    ld hl, sp+$08                                 ; $4482: $f8 $08
    ldh a, [$90]                                  ; $4484: $f0 $90
    ld h, b                                       ; $4486: $60
    ldh [$c0], a                                  ; $4487: $e0 $c0
    ret nz                                        ; $4489: $c0

    ret nz                                        ; $448a: $c0

    ld b, b                                       ; $448b: $40
    add b                                         ; $448c: $80
    add b                                         ; $448d: $80
    add b                                         ; $448e: $80
    add b                                         ; $448f: $80
    inc bc                                        ; $4490: $03
    inc bc                                        ; $4491: $03
    inc b                                         ; $4492: $04
    rlca                                          ; $4493: $07

jr_022_4494:
    ld [$090f], sp                                ; $4494: $08 $0f $09
    rrca                                          ; $4497: $0f
    jp nc, $dddf                                  ; $4498: $d2 $df $dd

    rst $18                                       ; $449b: $df
    rst $18                                       ; $449c: $df
    sbc $7f                                       ; $449d: $de $7f
    ld [hl], l                                    ; $449f: $75
    ccf                                           ; $44a0: $3f
    ld sp, $2c3f                                  ; $44a1: $31 $3f $2c
    rla                                           ; $44a4: $17
    ld e, $0d                                     ; $44a5: $1e $0d
    rrca                                          ; $44a7: $0f
    rlca                                          ; $44a8: $07
    ld b, $0f                                     ; $44a9: $06 $0f
    rrca                                          ; $44ab: $0f
    ld [de], a                                    ; $44ac: $12
    ld e, $1e                                     ; $44ad: $1e $1e
    ld e, $c0                                     ; $44af: $1e $c0
    ret nz                                        ; $44b1: $c0

    jr nz, jr_022_4494                            ; $44b2: $20 $e0

    db $10                                        ; $44b4: $10
    ldh a, [$f0]                                  ; $44b5: $f0 $f0
    ldh a, [$08]                                  ; $44b7: $f0 $08
    ld hl, sp-$0c                                 ; $44b9: $f8 $f4
    db $fc                                        ; $44bb: $fc
    db $fc                                        ; $44bc: $fc
    inc c                                         ; $44bd: $0c
    ld hl, sp+$28                                 ; $44be: $f8 $28
    ld hl, sp+$28                                 ; $44c0: $f8 $28
    ldh a, [rNR10]                                ; $44c2: $f0 $10
    ldh [rNR41], a                                ; $44c4: $e0 $20
    ldh [$e0], a                                  ; $44c6: $e0 $e0
    ld h, b                                       ; $44c8: $60
    ldh [$f0], a                                  ; $44c9: $e0 $f0
    ret nc                                        ; $44cb: $d0

    ret z                                         ; $44cc: $c8

    ld hl, sp+$78                                 ; $44cd: $f8 $78
    ld a, b                                       ; $44cf: $78
    inc bc                                        ; $44d0: $03
    inc bc                                        ; $44d1: $03
    inc c                                         ; $44d2: $0c
    rrca                                          ; $44d3: $0f
    db $10                                        ; $44d4: $10
    rra                                           ; $44d5: $1f
    db $10                                        ; $44d6: $10
    rra                                           ; $44d7: $1f
    inc e                                         ; $44d8: $1c
    rra                                           ; $44d9: $1f
    inc hl                                        ; $44da: $23
    ccf                                           ; $44db: $3f
    ccf                                           ; $44dc: $3f
    ccf                                           ; $44dd: $3f
    rra                                           ; $44de: $1f
    dec d                                         ; $44df: $15
    rra                                           ; $44e0: $1f
    inc d                                         ; $44e1: $14
    rra                                           ; $44e2: $1f
    db $10                                        ; $44e3: $10
    rrca                                          ; $44e4: $0f
    add hl, bc                                    ; $44e5: $09
    rlca                                          ; $44e6: $07
    rlca                                          ; $44e7: $07
    dec b                                         ; $44e8: $05
    rlca                                          ; $44e9: $07
    inc bc                                        ; $44ea: $03
    inc bc                                        ; $44eb: $03
    inc bc                                        ; $44ec: $03
    inc bc                                        ; $44ed: $03

jr_022_44ee:
    ld bc, $8001                                  ; $44ee: $01 $01 $80
    add b                                         ; $44f1: $80
    ld h, b                                       ; $44f2: $60
    ldh [rNR10], a                                ; $44f3: $e0 $10
    ldh a, [rNR10]                                ; $44f5: $f0 $10
    ldh a, [$73]                                  ; $44f7: $f0 $73
    di                                            ; $44f9: $f3
    di                                            ; $44fa: $f3
    di                                            ; $44fb: $f3
    rst $30                                       ; $44fc: $f7
    rst $30                                       ; $44fd: $f7
    db $fc                                        ; $44fe: $fc
    inc a                                         ; $44ff: $3c
    ld hl, sp+$38                                 ; $4500: $f8 $38
    ldh a, [rSVBK]                                ; $4502: $f0 $70
    sub b                                         ; $4504: $90
    ldh a, [$30]                                  ; $4505: $f0 $30
    ldh a, [$f0]                                  ; $4507: $f0 $f0
    ret nc                                        ; $4509: $d0

    ldh a, [$90]                                  ; $450a: $f0 $90
    jr nz, jr_022_44ee                            ; $450c: $20 $e0

    ldh [$e0], a                                  ; $450e: $e0 $e0
    inc bc                                        ; $4510: $03
    inc bc                                        ; $4511: $03
    inc b                                         ; $4512: $04
    rlca                                          ; $4513: $07

jr_022_4514:
    ld [$080f], sp                                ; $4514: $08 $0f $08
    rrca                                          ; $4517: $0f
    add hl, bc                                    ; $4518: $09
    rrca                                          ; $4519: $0f
    rla                                           ; $451a: $17
    rra                                           ; $451b: $1f
    rra                                           ; $451c: $1f
    rra                                           ; $451d: $1f
    rra                                           ; $451e: $1f
    inc de                                        ; $451f: $13
    rra                                           ; $4520: $1f
    inc d                                         ; $4521: $14
    rrca                                          ; $4522: $0f
    rrca                                          ; $4523: $0f
    inc b                                         ; $4524: $04
    rlca                                          ; $4525: $07
    rlca                                          ; $4526: $07
    rlca                                          ; $4527: $07
    rlca                                          ; $4528: $07
    inc b                                         ; $4529: $04
    rrca                                          ; $452a: $0f
    ld c, $13                                     ; $452b: $0e $13
    rra                                           ; $452d: $1f
    ld e, $1e                                     ; $452e: $1e $1e
    ret nz                                        ; $4530: $c0

    ret nz                                        ; $4531: $c0

    jr nz, jr_022_4514                            ; $4532: $20 $e0

    ret nc                                        ; $4534: $d0

    ldh a, [rNR10]                                ; $4535: $f0 $10
    ldh a, [$eb]                                  ; $4537: $f0 $eb
    ei                                            ; $4539: $fb
    ei                                            ; $453a: $fb
    ei                                            ; $453b: $fb
    ei                                            ; $453c: $fb
    ei                                            ; $453d: $fb
    cp $f6                                        ; $453e: $fe $f6
    db $fc                                        ; $4540: $fc
    db $f4                                        ; $4541: $f4
    ld a, h                                       ; $4542: $7c
    db $fc                                        ; $4543: $fc
    cp b                                          ; $4544: $b8
    ld hl, sp-$08                                 ; $4545: $f8 $f8
    add sp, -$10                                  ; $4547: $e8 $f0
    ld [hl], b                                    ; $4549: $70
    ldh a, [$b0]                                  ; $454a: $f0 $b0
    ret z                                         ; $454c: $c8

    ld hl, sp-$08                                 ; $454d: $f8 $f8
    ld hl, sp+$03                                 ; $454f: $f8 $03
    inc bc                                        ; $4551: $03
    inc c                                         ; $4552: $0c
    rrca                                          ; $4553: $0f
    db $10                                        ; $4554: $10
    rra                                           ; $4555: $1f
    ret nc                                        ; $4556: $d0

    rst $18                                       ; $4557: $df
    db $d3                                        ; $4558: $d3
    rst $18                                       ; $4559: $df
    call c, Call_022_7fdf                         ; $455a: $dc $df $7f
    ld l, a                                       ; $455d: $6f
    ccf                                           ; $455e: $3f
    ccf                                           ; $455f: $3f
    ccf                                           ; $4560: $3f
    dec hl                                        ; $4561: $2b
    rla                                           ; $4562: $17
    inc e                                         ; $4563: $1c
    rrca                                          ; $4564: $0f
    rrca                                          ; $4565: $0f
    inc c                                         ; $4566: $0c
    rrca                                          ; $4567: $0f
    rrca                                          ; $4568: $0f
    dec bc                                        ; $4569: $0b
    dec c                                         ; $456a: $0d
    rrca                                          ; $456b: $0f
    ld b, $07                                     ; $456c: $06 $07
    rlca                                          ; $456e: $07
    rlca                                          ; $456f: $07
    add b                                         ; $4570: $80
    add b                                         ; $4571: $80
    ld h, b                                       ; $4572: $60
    ldh [rNR10], a                                ; $4573: $e0 $10
    ldh a, [rNR10]                                ; $4575: $f0 $10
    ldh a, [rNR10]                                ; $4577: $f0 $10
    ldh a, [$30]                                  ; $4579: $f0 $30
    ldh a, [$f0]                                  ; $457b: $f0 $f0
    ldh a, [$f8]                                  ; $457d: $f0 $f8
    add sp, -$08                                  ; $457f: $e8 $f8
    ret z                                         ; $4581: $c8

    ldh a, [$30]                                  ; $4582: $f0 $30
    ldh [$e0], a                                  ; $4584: $e0 $e0
    ld b, b                                       ; $4586: $40
    ret nz                                        ; $4587: $c0

    ret nz                                        ; $4588: $c0

    ret nz                                        ; $4589: $c0

    ret nz                                        ; $458a: $c0

    ld b, b                                       ; $458b: $40
    add b                                         ; $458c: $80
    add b                                         ; $458d: $80
    add b                                         ; $458e: $80
    add b                                         ; $458f: $80
    inc bc                                        ; $4590: $03
    inc bc                                        ; $4591: $03
    inc b                                         ; $4592: $04
    rlca                                          ; $4593: $07

jr_022_4594:
    ld [$c80f], sp                                ; $4594: $08 $0f $c8
    rst $08                                       ; $4597: $cf
    ret nc                                        ; $4598: $d0

    rst $18                                       ; $4599: $df
    db $fd                                        ; $459a: $fd
    rst $38                                       ; $459b: $ff
    rra                                           ; $459c: $1f
    rra                                           ; $459d: $1f
    rrca                                          ; $459e: $0f
    add hl, bc                                    ; $459f: $09
    rrca                                          ; $45a0: $0f
    ld [$0607], sp                                ; $45a1: $08 $07 $06
    inc bc                                        ; $45a4: $03
    inc bc                                        ; $45a5: $03
    ld [bc], a                                    ; $45a6: $02
    inc bc                                        ; $45a7: $03
    rlca                                          ; $45a8: $07
    dec b                                         ; $45a9: $05
    dec bc                                        ; $45aa: $0b
    rrca                                          ; $45ab: $0f
    dec c                                         ; $45ac: $0d
    rrca                                          ; $45ad: $0f
    rlca                                          ; $45ae: $07
    rlca                                          ; $45af: $07
    ret nz                                        ; $45b0: $c0

    ret nz                                        ; $45b1: $c0

    jr nz, jr_022_4594                            ; $45b2: $20 $e0

jr_022_45b4:
    db $10                                        ; $45b4: $10
    ldh a, [$38]                                  ; $45b5: $f0 $38
    ld hl, sp-$3c                                 ; $45b7: $f8 $c4
    db $fc                                        ; $45b9: $fc
    jr jr_022_45b4                                ; $45ba: $18 $f8

    ld hl, sp-$18                                 ; $45bc: $f8 $e8
    ld hl, sp+$48                                 ; $45be: $f8 $48
    ld hl, sp+$48                                 ; $45c0: $f8 $48
    ld hl, sp+$08                                 ; $45c2: $f8 $08
    ldh a, [$90]                                  ; $45c4: $f0 $90
    ld a, b                                       ; $45c6: $78
    add sp, $50                                   ; $45c7: $e8 $50
    ldh a, [$f0]                                  ; $45c9: $f0 $f0
    ldh a, [$c8]                                  ; $45cb: $f0 $c8
    ld hl, sp+$78                                 ; $45cd: $f8 $78
    ld a, b                                       ; $45cf: $78
    inc bc                                        ; $45d0: $03
    inc bc                                        ; $45d1: $03
    inc b                                         ; $45d2: $04
    rlca                                          ; $45d3: $07

jr_022_45d4:
    ld [$130f], sp                                ; $45d4: $08 $0f $13
    rra                                           ; $45d7: $1f
    inc d                                         ; $45d8: $14
    rra                                           ; $45d9: $1f
    dec de                                        ; $45da: $1b
    rra                                           ; $45db: $1f
    rla                                           ; $45dc: $17
    ld e, $0f                                     ; $45dd: $1e $0f
    ld a, [bc]                                    ; $45df: $0a
    rrca                                          ; $45e0: $0f
    ld [$0407], sp                                ; $45e1: $08 $07 $04
    rlca                                          ; $45e4: $07
    rlca                                          ; $45e5: $07
    dec b                                         ; $45e6: $05
    rlca                                          ; $45e7: $07
    inc bc                                        ; $45e8: $03
    inc bc                                        ; $45e9: $03
    inc bc                                        ; $45ea: $03
    inc bc                                        ; $45eb: $03
    ld [bc], a                                    ; $45ec: $02
    inc bc                                        ; $45ed: $03
    ld bc, $c001                                  ; $45ee: $01 $01 $c0
    ret nz                                        ; $45f1: $c0

    jr nz, jr_022_45d4                            ; $45f2: $20 $e0

    db $10                                        ; $45f4: $10
    ldh a, [$d3]                                  ; $45f5: $f0 $d3
    di                                            ; $45f7: $f3
    inc sp                                        ; $45f8: $33
    di                                            ; $45f9: $f3
    ei                                            ; $45fa: $fb
    db $eb                                        ; $45fb: $eb
    cp $4e                                        ; $45fc: $fe $4e
    db $fc                                        ; $45fe: $fc
    inc e                                         ; $45ff: $1c
    ld hl, sp+$18                                 ; $4600: $f8 $18
    add sp, $38                                   ; $4602: $e8 $38
    ldh a, [$f0]                                  ; $4604: $f0 $f0
    ldh a, [$b0]                                  ; $4606: $f0 $b0
    ldh a, [rSVBK]                                ; $4608: $f0 $70
    ldh a, [$d0]                                  ; $460a: $f0 $d0
    sub b                                         ; $460c: $90
    ldh a, [$e0]                                  ; $460d: $f0 $e0
    ldh [$03], a                                  ; $460f: $e0 $03
    inc bc                                        ; $4611: $03
    inc b                                         ; $4612: $04
    rlca                                          ; $4613: $07

jr_022_4614:
    ld [$080f], sp                                ; $4614: $08 $0f $08
    rrca                                          ; $4617: $0f
    inc de                                        ; $4618: $13
    rra                                           ; $4619: $1f
    cpl                                           ; $461a: $2f
    ld a, $3f                                     ; $461b: $3e $3f
    ld a, [hl-]                                   ; $461d: $3a
    rra                                           ; $461e: $1f
    ld de, $090f                                  ; $461f: $11 $0f $09
    rlca                                          ; $4622: $07
    ld b, $05                                     ; $4623: $06 $05
    rlca                                          ; $4625: $07
    rlca                                          ; $4626: $07
    rlca                                          ; $4627: $07
    rrca                                          ; $4628: $0f
    ld [$0d0f], sp                                ; $4629: $08 $0f $0d
    inc de                                        ; $462c: $13
    rra                                           ; $462d: $1f
    ld e, $1e                                     ; $462e: $1e $1e
    ret nz                                        ; $4630: $c0

    ret nz                                        ; $4631: $c0

    jr nz, jr_022_4614                            ; $4632: $20 $e0

    db $10                                        ; $4634: $10
    ldh a, [rNR13]                                ; $4635: $f0 $13
    di                                            ; $4637: $f3
    db $eb                                        ; $4638: $eb
    ei                                            ; $4639: $fb
    rst $38                                       ; $463a: $ff
    rst $38                                       ; $463b: $ff
    db $fc                                        ; $463c: $fc
    db $fc                                        ; $463d: $fc
    ld hl, sp-$08                                 ; $463e: $f8 $f8
    or b                                          ; $4640: $b0
    ldh a, [$d0]                                  ; $4641: $f0 $d0
    ldh a, [$e0]                                  ; $4643: $f0 $e0
    ld h, b                                       ; $4645: $60
    ldh [$e0], a                                  ; $4646: $e0 $e0
    ldh [$a0], a                                  ; $4648: $e0 $a0
    ret nc                                        ; $464a: $d0

    ldh a, [$90]                                  ; $464b: $f0 $90
    ldh a, [$e0]                                  ; $464d: $f0 $e0
    ldh [rP1], a                                  ; $464f: $e0 $00
    nop                                           ; $4651: $00
    inc bc                                        ; $4652: $03
    inc bc                                        ; $4653: $03
    inc b                                         ; $4654: $04
    rlca                                          ; $4655: $07
    ld [$080f], sp                                ; $4656: $08 $0f $08
    rrca                                          ; $4659: $0f
    rrca                                          ; $465a: $0f
    rrca                                          ; $465b: $0f
    rrca                                          ; $465c: $0f
    rrca                                          ; $465d: $0f
    rrca                                          ; $465e: $0f
    inc c                                         ; $465f: $0c
    rrca                                          ; $4660: $0f
    inc c                                         ; $4661: $0c
    rlca                                          ; $4662: $07
    ld b, $06                                     ; $4663: $06 $06
    rlca                                          ; $4665: $07
    rrca                                          ; $4666: $0f
    dec bc                                        ; $4667: $0b
    rra                                           ; $4668: $1f
    ld d, $1f                                     ; $4669: $16 $1f
    rra                                           ; $466b: $1f
    rrca                                          ; $466c: $0f
    rrca                                          ; $466d: $0f
    rlca                                          ; $466e: $07
    rlca                                          ; $466f: $07
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    ldh [$e0], a                                  ; $4672: $e0 $e0
    db $10                                        ; $4674: $10
    ldh a, [$38]                                  ; $4675: $f0 $38
    ld hl, sp+$44                                 ; $4677: $f8 $44
    db $fc                                        ; $4679: $fc
    db $fc                                        ; $467a: $fc
    db $fc                                        ; $467b: $fc
    ld hl, sp-$78                                 ; $467c: $f8 $88
    ld hl, sp-$58                                 ; $467e: $f8 $a8
    ld hl, sp+$28                                 ; $4680: $f8 $28
    ld hl, sp+$08                                 ; $4682: $f8 $08
    add sp, -$08                                  ; $4684: $e8 $f8
    db $fc                                        ; $4686: $fc
    db $fc                                        ; $4687: $fc
    db $ec                                        ; $4688: $ec
    inc l                                         ; $4689: $2c
    ret nc                                        ; $468a: $d0

    ld [hl], b                                    ; $468b: $70
    or b                                          ; $468c: $b0
    ldh a, [$60]                                  ; $468d: $f0 $60
    ld h, b                                       ; $468f: $60
    nop                                           ; $4690: $00
    nop                                           ; $4691: $00
    inc bc                                        ; $4692: $03
    inc bc                                        ; $4693: $03
    inc b                                         ; $4694: $04
    rlca                                          ; $4695: $07

jr_022_4696:
    dec bc                                        ; $4696: $0b
    rrca                                          ; $4697: $0f
    inc c                                         ; $4698: $0c
    rrca                                          ; $4699: $0f
    dec bc                                        ; $469a: $0b
    rrca                                          ; $469b: $0f
    rra                                           ; $469c: $1f
    inc e                                         ; $469d: $1c
    ccf                                           ; $469e: $3f
    ld a, [hl+]                                   ; $469f: $2a
    ccf                                           ; $46a0: $3f
    ld [hl+], a                                   ; $46a1: $22
    rra                                           ; $46a2: $1f
    jr jr_022_46e0                                ; $46a3: $18 $3b

    ccf                                           ; $46a5: $3f
    daa                                           ; $46a6: $27
    daa                                           ; $46a7: $27
    ld h, a                                       ; $46a8: $67
    ld h, h                                       ; $46a9: $64
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

    jr nz, jr_022_4696                            ; $46b4: $20 $e0

    ret nc                                        ; $46b6: $d0

    ldh a, [$30]                                  ; $46b7: $f0 $30
    ldh a, [$d0]                                  ; $46b9: $f0 $d0

jr_022_46bb:
    ldh a, [$f8]                                  ; $46bb: $f0 $f8
    jr c, jr_022_46bb                             ; $46bd: $38 $fc

    ld d, h                                       ; $46bf: $54
    db $fc                                        ; $46c0: $fc
    ld b, h                                       ; $46c1: $44
    ld hl, sp+$18                                 ; $46c2: $f8 $18
    ret c                                         ; $46c4: $d8

    ld hl, sp-$04                                 ; $46c5: $f8 $fc
    db $f4                                        ; $46c7: $f4
    db $fc                                        ; $46c8: $fc
    or h                                          ; $46c9: $b4
    add sp, -$18                                  ; $46ca: $e8 $e8
    ret nz                                        ; $46cc: $c0

    ret nz                                        ; $46cd: $c0

    add b                                         ; $46ce: $80
    add b                                         ; $46cf: $80
    nop                                           ; $46d0: $00
    nop                                           ; $46d1: $00
    rlca                                          ; $46d2: $07
    rlca                                          ; $46d3: $07
    ld [$1c0f], sp                                ; $46d4: $08 $0f $1c
    rra                                           ; $46d7: $1f
    ld [hl+], a                                   ; $46d8: $22
    ccf                                           ; $46d9: $3f
    ccf                                           ; $46da: $3f

jr_022_46db:
    ccf                                           ; $46db: $3f
    rra                                           ; $46dc: $1f
    ld de, $151f                                  ; $46dd: $11 $1f $15

jr_022_46e0:
    rra                                           ; $46e0: $1f
    inc d                                         ; $46e1: $14
    rra                                           ; $46e2: $1f

jr_022_46e3:
    db $10                                        ; $46e3: $10
    rrca                                          ; $46e4: $0f
    rrca                                          ; $46e5: $0f
    rrca                                          ; $46e6: $0f
    dec bc                                        ; $46e7: $0b
    rra                                           ; $46e8: $1f
    ld d, $1f                                     ; $46e9: $16 $1f
    rra                                           ; $46eb: $1f
    dec bc                                        ; $46ec: $0b
    rrca                                          ; $46ed: $0f
    ld b, $06                                     ; $46ee: $06 $06
    nop                                           ; $46f0: $00

jr_022_46f1:
    nop                                           ; $46f1: $00
    ret nz                                        ; $46f2: $c0

    ret nz                                        ; $46f3: $c0

    jr nz, @-$1e                                  ; $46f4: $20 $e0

    db $10                                        ; $46f6: $10
    ldh a, [rNR10]                                ; $46f7: $f0 $10
    ldh a, [$f0]                                  ; $46f9: $f0 $f0
    ldh a, [$f0]                                  ; $46fb: $f0 $f0
    ldh a, [$f0]                                  ; $46fd: $f0 $f0
    jr nc, jr_022_46f1                            ; $46ff: $30 $f0

    jr nc, jr_022_46e3                            ; $4701: $30 $e0

    ld h, b                                       ; $4703: $60
    ld h, b                                       ; $4704: $60
    ldh [$f0], a                                  ; $4705: $e0 $f0
    ldh a, [$f0]                                  ; $4707: $f0 $f0
    jr nc, jr_022_46db                            ; $4709: $30 $d0

    ld [hl], b                                    ; $470b: $70
    sub b                                         ; $470c: $90
    ldh a, [$60]                                  ; $470d: $f0 $60
    ld h, b                                       ; $470f: $60
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    inc bc                                        ; $4712: $03
    inc bc                                        ; $4713: $03
    inc b                                         ; $4714: $04
    rlca                                          ; $4715: $07

jr_022_4716:
    ld [$080f], sp                                ; $4716: $08 $0f $08
    rrca                                          ; $4719: $0f
    add hl, bc                                    ; $471a: $09
    rrca                                          ; $471b: $0f
    inc e                                         ; $471c: $1c
    rra                                           ; $471d: $1f
    ccf                                           ; $471e: $3f
    cpl                                           ; $471f: $2f
    ccf                                           ; $4720: $3f
    daa                                           ; $4721: $27
    rra                                           ; $4722: $1f
    dec de                                        ; $4723: $1b
    jr c, @+$41                                   ; $4724: $38 $3f

    rlca                                          ; $4726: $07
    rlca                                          ; $4727: $07
    rlca                                          ; $4728: $07
    rlca                                          ; $4729: $07
    inc b                                         ; $472a: $04
    rlca                                          ; $472b: $07
    inc b                                         ; $472c: $04
    rlca                                          ; $472d: $07
    inc bc                                        ; $472e: $03
    inc bc                                        ; $472f: $03
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    ret nz                                        ; $4732: $c0

    ret nz                                        ; $4733: $c0

    jr nz, jr_022_4716                            ; $4734: $20 $e0

    db $10                                        ; $4736: $10
    ldh a, [rNR10]                                ; $4737: $f0 $10
    ldh a, [$90]                                  ; $4739: $f0 $90
    ldh a, [$38]                                  ; $473b: $f0 $38
    ld hl, sp-$04                                 ; $473d: $f8 $fc
    db $f4                                        ; $473f: $f4
    db $fc                                        ; $4740: $fc
    db $e4                                        ; $4741: $e4
    ld hl, sp-$28                                 ; $4742: $f8 $d8
    jr @-$06                                      ; $4744: $18 $f8

    cp $f6                                        ; $4746: $fe $f6
    cp $be                                        ; $4748: $fe $be
    db $ec                                        ; $474a: $ec
    db $ec                                        ; $474b: $ec
    ret nz                                        ; $474c: $c0

    ret nz                                        ; $474d: $c0

    add b                                         ; $474e: $80
    add b                                         ; $474f: $80
    ld bc, $0201                                  ; $4750: $01 $01 $02
    inc bc                                        ; $4753: $03
    inc b                                         ; $4754: $04
    rlca                                          ; $4755: $07
    inc b                                         ; $4756: $04
    rlca                                          ; $4757: $07
    rlca                                          ; $4758: $07
    rlca                                          ; $4759: $07
    rlca                                          ; $475a: $07
    rlca                                          ; $475b: $07
    rlca                                          ; $475c: $07
    ld b, $07                                     ; $475d: $06 $07
    ld b, $03                                     ; $475f: $06 $03
    inc bc                                        ; $4761: $03
    inc bc                                        ; $4762: $03
    inc bc                                        ; $4763: $03
    ld b, $07                                     ; $4764: $06 $07
    rrca                                          ; $4766: $0f
    dec bc                                        ; $4767: $0b
    rra                                           ; $4768: $1f
    ld d, $1f                                     ; $4769: $16 $1f
    rra                                           ; $476b: $1f
    rrca                                          ; $476c: $0f
    rrca                                          ; $476d: $0f
    rlca                                          ; $476e: $07
    rlca                                          ; $476f: $07
    ldh a, [$f0]                                  ; $4770: $f0 $f0
    ld [$1cf8], sp                                ; $4772: $08 $f8 $1c
    db $fc                                        ; $4775: $fc
    ld [hl+], a                                   ; $4776: $22
    cp $fe                                        ; $4777: $fe $fe
    cp $fc                                        ; $4779: $fe $fc
    call nz, Call_022_54fc                        ; $477b: $c4 $fc $54
    db $fc                                        ; $477e: $fc
    inc d                                         ; $477f: $14
    db $fc                                        ; $4780: $fc
    inc b                                         ; $4781: $04
    ldh a, [rNR10]                                ; $4782: $f0 $10
    add sp, -$08                                  ; $4784: $e8 $f8
    db $fc                                        ; $4786: $fc
    db $fc                                        ; $4787: $fc
    db $ec                                        ; $4788: $ec
    inc l                                         ; $4789: $2c
    ret nc                                        ; $478a: $d0

    ld [hl], b                                    ; $478b: $70
    or b                                          ; $478c: $b0
    ldh a, [$60]                                  ; $478d: $f0 $60
    ld h, b                                       ; $478f: $60
    ld bc, $0201                                  ; $4790: $01 $01 $02
    inc bc                                        ; $4793: $03
    dec b                                         ; $4794: $05
    rlca                                          ; $4795: $07
    ld b, $07                                     ; $4796: $06 $07
    dec b                                         ; $4798: $05
    rlca                                          ; $4799: $07
    rrca                                          ; $479a: $0f
    ld c, $1f                                     ; $479b: $0e $1f
    dec d                                         ; $479d: $15
    rra                                           ; $479e: $1f
    ld de, $0c0f                                  ; $479f: $11 $0f $0c
    ccf                                           ; $47a2: $3f
    inc l                                         ; $47a3: $2c
    dec sp                                        ; $47a4: $3b
    ccf                                           ; $47a5: $3f
    daa                                           ; $47a6: $27
    daa                                           ; $47a7: $27
    ld h, a                                       ; $47a8: $67
    ld h, h                                       ; $47a9: $64
    ld h, a                                       ; $47aa: $67
    ld h, a                                       ; $47ab: $67
    inc b                                         ; $47ac: $04
    rlca                                          ; $47ad: $07
    inc bc                                        ; $47ae: $03
    inc bc                                        ; $47af: $03
    ldh [$e0], a                                  ; $47b0: $e0 $e0
    db $10                                        ; $47b2: $10
    ldh a, [$e8]                                  ; $47b3: $f0 $e8
    ld hl, sp+$18                                 ; $47b5: $f8 $18
    ld hl, sp-$18                                 ; $47b7: $f8 $e8
    ld hl, sp-$04                                 ; $47b9: $f8 $fc
    inc e                                         ; $47bb: $1c
    cp $2a                                        ; $47bc: $fe $2a
    cp $22                                        ; $47be: $fe $22
    db $fc                                        ; $47c0: $fc
    inc c                                         ; $47c1: $0c
    ldh a, [$30]                                  ; $47c2: $f0 $30
    ret c                                         ; $47c4: $d8

    ld hl, sp-$04                                 ; $47c5: $f8 $fc
    db $f4                                        ; $47c7: $f4
    db $fc                                        ; $47c8: $fc
    or h                                          ; $47c9: $b4
    add sp, -$18                                  ; $47ca: $e8 $e8
    ret nz                                        ; $47cc: $c0

    ret nz                                        ; $47cd: $c0

    add b                                         ; $47ce: $80
    add b                                         ; $47cf: $80
    inc bc                                        ; $47d0: $03
    inc bc                                        ; $47d1: $03
    inc b                                         ; $47d2: $04
    rlca                                          ; $47d3: $07
    ld c, $0f                                     ; $47d4: $0e $0f
    ld de, $1f1f                                  ; $47d6: $11 $1f $1f
    rra                                           ; $47d9: $1f
    rrca                                          ; $47da: $0f

jr_022_47db:
    ld [$0a0f], sp                                ; $47db: $08 $0f $0a
    rrca                                          ; $47de: $0f
    ld a, [bc]                                    ; $47df: $0a
    rrca                                          ; $47e0: $0f
    ld [$080f], sp                                ; $47e1: $08 $0f $08
    rrca                                          ; $47e4: $0f
    rrca                                          ; $47e5: $0f
    rrca                                          ; $47e6: $0f
    dec bc                                        ; $47e7: $0b
    rra                                           ; $47e8: $1f
    ld d, $1f                                     ; $47e9: $16 $1f
    rra                                           ; $47eb: $1f
    dec bc                                        ; $47ec: $0b
    rrca                                          ; $47ed: $0f
    ld b, $06                                     ; $47ee: $06 $06
    ldh [$e0], a                                  ; $47f0: $e0 $e0
    db $10                                        ; $47f2: $10
    ldh a, [$08]                                  ; $47f3: $f0 $08
    ld hl, sp+$08                                 ; $47f5: $f8 $08
    ld hl, sp-$08                                 ; $47f7: $f8 $f8
    ld hl, sp-$08                                 ; $47f9: $f8 $f8
    ld hl, sp-$08                                 ; $47fb: $f8 $f8
    sbc b                                         ; $47fd: $98
    ld hl, sp+$18                                 ; $47fe: $f8 $18
    ldh a, [$30]                                  ; $4800: $f0 $30
    ret nz                                        ; $4802: $c0

    ret nz                                        ; $4803: $c0

    ld h, b                                       ; $4804: $60
    ldh [$f0], a                                  ; $4805: $e0 $f0
    ldh a, [$f0]                                  ; $4807: $f0 $f0
    jr nc, jr_022_47db                            ; $4809: $30 $d0

    ld [hl], b                                    ; $480b: $70
    sub b                                         ; $480c: $90
    ldh a, [$60]                                  ; $480d: $f0 $60
    ld h, b                                       ; $480f: $60
    ld bc, $0201                                  ; $4810: $01 $01 $02
    inc bc                                        ; $4813: $03
    inc b                                         ; $4814: $04
    rlca                                          ; $4815: $07
    inc b                                         ; $4816: $04
    rlca                                          ; $4817: $07
    inc b                                         ; $4818: $04
    rlca                                          ; $4819: $07
    ld c, $0f                                     ; $481a: $0e $0f
    rra                                           ; $481c: $1f
    rla                                           ; $481d: $17
    rra                                           ; $481e: $1f
    inc de                                        ; $481f: $13
    rrca                                          ; $4820: $0f
    dec c                                         ; $4821: $0d
    inc a                                         ; $4822: $3c
    cpl                                           ; $4823: $2f
    jr c, @+$41                                   ; $4824: $38 $3f

    rlca                                          ; $4826: $07
    rlca                                          ; $4827: $07
    rlca                                          ; $4828: $07
    rlca                                          ; $4829: $07
    inc b                                         ; $482a: $04
    rlca                                          ; $482b: $07
    inc b                                         ; $482c: $04
    rlca                                          ; $482d: $07
    inc bc                                        ; $482e: $03
    inc bc                                        ; $482f: $03
    ldh [$e0], a                                  ; $4830: $e0 $e0
    db $10                                        ; $4832: $10
    ldh a, [$08]                                  ; $4833: $f0 $08
    ld hl, sp+$08                                 ; $4835: $f8 $08
    ld hl, sp-$38                                 ; $4837: $f8 $c8
    ld hl, sp+$1c                                 ; $4839: $f8 $1c
    db $fc                                        ; $483b: $fc
    cp $fa                                        ; $483c: $fe $fa

jr_022_483e:
    cp $f2                                        ; $483e: $fe $f2
    db $fc                                        ; $4840: $fc
    db $ec                                        ; $4841: $ec
    jr nc, @-$0e                                  ; $4842: $30 $f0

    jr jr_022_483e                                ; $4844: $18 $f8

    cp $f6                                        ; $4846: $fe $f6
    cp $be                                        ; $4848: $fe $be
    db $ec                                        ; $484a: $ec
    db $ec                                        ; $484b: $ec
    ret nz                                        ; $484c: $c0

    ret nz                                        ; $484d: $c0

    add b                                         ; $484e: $80
    add b                                         ; $484f: $80
    rlca                                          ; $4850: $07
    rlca                                          ; $4851: $07
    ld [$100f], sp                                ; $4852: $08 $0f $10
    rra                                           ; $4855: $1f
    db $10                                        ; $4856: $10
    rra                                           ; $4857: $1f
    rra                                           ; $4858: $1f
    rra                                           ; $4859: $1f
    rra                                           ; $485a: $1f
    rra                                           ; $485b: $1f
    rra                                           ; $485c: $1f
    add hl, de                                    ; $485d: $19
    rra                                           ; $485e: $1f
    jr jr_022_4870                                ; $485f: $18 $0f

    inc c                                         ; $4861: $0c
    inc bc                                        ; $4862: $03
    inc bc                                        ; $4863: $03
    ld b, $07                                     ; $4864: $06 $07
    rrca                                          ; $4866: $0f
    dec bc                                        ; $4867: $0b
    rra                                           ; $4868: $1f
    ld d, $1f                                     ; $4869: $16 $1f
    rra                                           ; $486b: $1f
    rrca                                          ; $486c: $0f
    rrca                                          ; $486d: $0f
    rlca                                          ; $486e: $07
    rlca                                          ; $486f: $07

jr_022_4870:
    ret nz                                        ; $4870: $c0

    ret nz                                        ; $4871: $c0

    jr nz, @-$1e                                  ; $4872: $20 $e0

    ld [hl], b                                    ; $4874: $70
    ldh a, [$88]                                  ; $4875: $f0 $88
    ld hl, sp-$08                                 ; $4877: $f8 $f8
    ld hl, sp-$10                                 ; $4879: $f8 $f0
    db $10                                        ; $487b: $10
    ldh a, [$50]                                  ; $487c: $f0 $50
    ldh a, [$50]                                  ; $487e: $f0 $50
    ldh a, [rNR10]                                ; $4880: $f0 $10
    ldh a, [rNR10]                                ; $4882: $f0 $10
    add sp, -$08                                  ; $4884: $e8 $f8
    db $fc                                        ; $4886: $fc
    db $fc                                        ; $4887: $fc
    db $ec                                        ; $4888: $ec
    inc l                                         ; $4889: $2c
    ret nc                                        ; $488a: $d0

    ld [hl], b                                    ; $488b: $70
    or b                                          ; $488c: $b0
    ldh a, [$60]                                  ; $488d: $f0 $60
    ld h, b                                       ; $488f: $60
    rlca                                          ; $4890: $07
    rlca                                          ; $4891: $07
    ld [$170f], sp                                ; $4892: $08 $0f $17
    rra                                           ; $4895: $1f
    jr jr_022_48b7                                ; $4896: $18 $1f

    rla                                           ; $4898: $17
    rra                                           ; $4899: $1f
    ccf                                           ; $489a: $3f
    jr c, jr_022_491c                             ; $489b: $38 $7f

    ld d, h                                       ; $489d: $54
    ld a, a                                       ; $489e: $7f
    ld b, h                                       ; $489f: $44
    ccf                                           ; $48a0: $3f
    jr nc, @+$41                                  ; $48a1: $30 $3f

    inc l                                         ; $48a3: $2c
    dec sp                                        ; $48a4: $3b
    ccf                                           ; $48a5: $3f
    daa                                           ; $48a6: $27
    daa                                           ; $48a7: $27
    ld h, a                                       ; $48a8: $67
    ld h, h                                       ; $48a9: $64
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

    and b                                         ; $48b4: $a0
    ldh [$60], a                                  ; $48b5: $e0 $60

jr_022_48b7:
    ldh [$a0], a                                  ; $48b7: $e0 $a0
    ldh [$f0], a                                  ; $48b9: $e0 $f0
    ld [hl], b                                    ; $48bb: $70
    ld hl, sp-$58                                 ; $48bc: $f8 $a8
    ld hl, sp-$78                                 ; $48be: $f8 $88
    ldh a, [$30]                                  ; $48c0: $f0 $30
    ldh a, [$30]                                  ; $48c2: $f0 $30
    ret c                                         ; $48c4: $d8

    ld hl, sp-$04                                 ; $48c5: $f8 $fc
    db $f4                                        ; $48c7: $f4
    db $fc                                        ; $48c8: $fc
    or h                                          ; $48c9: $b4
    add sp, -$18                                  ; $48ca: $e8 $e8
    ret nz                                        ; $48cc: $c0

    ret nz                                        ; $48cd: $c0

    add b                                         ; $48ce: $80
    add b                                         ; $48cf: $80
    rrca                                          ; $48d0: $0f
    rrca                                          ; $48d1: $0f
    db $10                                        ; $48d2: $10
    rra                                           ; $48d3: $1f
    jr c, jr_022_4915                             ; $48d4: $38 $3f

jr_022_48d6:
    ld b, h                                       ; $48d6: $44
    ld a, a                                       ; $48d7: $7f

jr_022_48d8:
    ld a, a                                       ; $48d8: $7f
    ld a, a                                       ; $48d9: $7f
    ccf                                           ; $48da: $3f

jr_022_48db:
    inc hl                                        ; $48db: $23
    ccf                                           ; $48dc: $3f
    ld a, [hl+]                                   ; $48dd: $2a
    ccf                                           ; $48de: $3f
    jr z, jr_022_4920                             ; $48df: $28 $3f

    jr nz, jr_022_48f2                            ; $48e1: $20 $0f

    ld [$0f0f], sp                                ; $48e3: $08 $0f $0f
    rrca                                          ; $48e6: $0f
    dec bc                                        ; $48e7: $0b
    rra                                           ; $48e8: $1f
    ld d, $1f                                     ; $48e9: $16 $1f
    rra                                           ; $48eb: $1f
    dec bc                                        ; $48ec: $0b
    rrca                                          ; $48ed: $0f
    ld b, $06                                     ; $48ee: $06 $06
    add b                                         ; $48f0: $80
    add b                                         ; $48f1: $80

jr_022_48f2:
    ld b, b                                       ; $48f2: $40
    ret nz                                        ; $48f3: $c0

    jr nz, jr_022_48d6                            ; $48f4: $20 $e0

    jr nz, jr_022_48d8                            ; $48f6: $20 $e0

    ldh [$e0], a                                  ; $48f8: $e0 $e0
    ldh [$e0], a                                  ; $48fa: $e0 $e0
    ldh [$60], a                                  ; $48fc: $e0 $60
    ldh [$60], a                                  ; $48fe: $e0 $60
    ret nz                                        ; $4900: $c0

    ret nz                                        ; $4901: $c0

    ret nz                                        ; $4902: $c0

    ret nz                                        ; $4903: $c0

    ld h, b                                       ; $4904: $60
    ldh [$f0], a                                  ; $4905: $e0 $f0
    ldh a, [$f0]                                  ; $4907: $f0 $f0
    jr nc, jr_022_48db                            ; $4909: $30 $d0

    ld [hl], b                                    ; $490b: $70
    sub b                                         ; $490c: $90
    ldh a, [$60]                                  ; $490d: $f0 $60
    ld h, b                                       ; $490f: $60
    rlca                                          ; $4910: $07
    rlca                                          ; $4911: $07
    ld [$100f], sp                                ; $4912: $08 $0f $10

jr_022_4915:
    rra                                           ; $4915: $1f

jr_022_4916:
    db $10                                        ; $4916: $10
    rra                                           ; $4917: $1f

jr_022_4918:
    inc de                                        ; $4918: $13
    rra                                           ; $4919: $1f

jr_022_491a:
    jr c, jr_022_495b                             ; $491a: $38 $3f

jr_022_491c:
    ld a, a                                       ; $491c: $7f
    ld e, a                                       ; $491d: $5f
    ld a, a                                       ; $491e: $7f
    ld c, a                                       ; $491f: $4f

jr_022_4920:
    ccf                                           ; $4920: $3f
    scf                                           ; $4921: $37
    inc a                                         ; $4922: $3c
    cpl                                           ; $4923: $2f
    jr c, jr_022_4965                             ; $4924: $38 $3f

    rlca                                          ; $4926: $07
    rlca                                          ; $4927: $07
    rlca                                          ; $4928: $07
    rlca                                          ; $4929: $07
    inc b                                         ; $492a: $04
    rlca                                          ; $492b: $07
    inc b                                         ; $492c: $04
    rlca                                          ; $492d: $07
    inc bc                                        ; $492e: $03
    inc bc                                        ; $492f: $03
    add b                                         ; $4930: $80
    add b                                         ; $4931: $80
    ld b, b                                       ; $4932: $40
    ret nz                                        ; $4933: $c0

jr_022_4934:
    jr nz, jr_022_4916                            ; $4934: $20 $e0

    jr nz, jr_022_4918                            ; $4936: $20 $e0

    jr nz, jr_022_491a                            ; $4938: $20 $e0

    ld [hl], b                                    ; $493a: $70
    ldh a, [$f8]                                  ; $493b: $f0 $f8
    add sp, -$08                                  ; $493d: $e8 $f8
    ret z                                         ; $493f: $c8

    ldh a, [$b0]                                  ; $4940: $f0 $b0
    jr nc, jr_022_4934                            ; $4942: $30 $f0

    jr @-$06                                      ; $4944: $18 $f8

    cp $f6                                        ; $4946: $fe $f6
    cp $be                                        ; $4948: $fe $be
    db $ec                                        ; $494a: $ec
    db $ec                                        ; $494b: $ec
    ret nz                                        ; $494c: $c0

    ret nz                                        ; $494d: $c0

    add b                                         ; $494e: $80
    add b                                         ; $494f: $80
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    inc bc                                        ; $4952: $03
    inc bc                                        ; $4953: $03
    nop                                           ; $4954: $00
    inc bc                                        ; $4955: $03

jr_022_4956:
    inc b                                         ; $4956: $04
    rlca                                          ; $4957: $07
    inc b                                         ; $4958: $04
    rlca                                          ; $4959: $07
    rlca                                          ; $495a: $07

jr_022_495b:
    rlca                                          ; $495b: $07
    rlca                                          ; $495c: $07
    inc b                                         ; $495d: $04
    rlca                                          ; $495e: $07
    inc b                                         ; $495f: $04
    inc bc                                        ; $4960: $03
    ld [bc], a                                    ; $4961: $02
    inc bc                                        ; $4962: $03
    inc bc                                        ; $4963: $03
    rlca                                          ; $4964: $07

jr_022_4965:
    rlca                                          ; $4965: $07
    rrca                                          ; $4966: $0f
    ld a, [bc]                                    ; $4967: $0a

jr_022_4968:
    rrca                                          ; $4968: $0f

jr_022_4969:
    rrca                                          ; $4969: $0f
    rlca                                          ; $496a: $07
    rlca                                          ; $496b: $07
    inc bc                                        ; $496c: $03
    inc bc                                        ; $496d: $03
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    ret nz                                        ; $4972: $c0

    ret nz                                        ; $4973: $c0

    jr nz, jr_022_4956                            ; $4974: $20 $e0

    jr nc, jr_022_4968                            ; $4976: $30 $f0

    ld c, b                                       ; $4978: $48
    ld hl, sp-$08                                 ; $4979: $f8 $f8
    ld hl, sp-$10                                 ; $497b: $f8 $f0
    sub b                                         ; $497d: $90
    ldh a, [rNR10]                                ; $497e: $f0 $10
    ldh a, [rNR10]                                ; $4980: $f0 $10
    ldh [rNR41], a                                ; $4982: $e0 $20
    ld hl, sp-$08                                 ; $4984: $f8 $f8
    ret c                                         ; $4986: $d8

    jr jr_022_4969                                ; $4987: $18 $e0

    ld h, b                                       ; $4989: $60
    and b                                         ; $498a: $a0
    ldh [rLCDC], a                                ; $498b: $e0 $40
    ld b, b                                       ; $498d: $40
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    inc bc                                        ; $4992: $03
    inc bc                                        ; $4993: $03
    nop                                           ; $4994: $00
    inc bc                                        ; $4995: $03
    rlca                                          ; $4996: $07
    rlca                                          ; $4997: $07
    inc b                                         ; $4998: $04
    rlca                                          ; $4999: $07

jr_022_499a:
    rlca                                          ; $499a: $07
    rlca                                          ; $499b: $07
    rra                                           ; $499c: $1f
    ld d, $1f                                     ; $499d: $16 $1f
    ld [de], a                                    ; $499f: $12
    rrca                                          ; $49a0: $0f
    inc c                                         ; $49a1: $0c
    rra                                           ; $49a2: $1f
    inc d                                         ; $49a3: $14
    inc de                                        ; $49a4: $13
    inc de                                        ; $49a5: $13
    inc sp                                        ; $49a6: $33
    jr nc, jr_022_49dc                            ; $49a7: $30 $33

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

    ldh [$e0], a                                  ; $49b6: $e0 $e0
    jr nz, jr_022_499a                            ; $49b8: $20 $e0

    ldh [$e0], a                                  ; $49ba: $e0 $e0
    ld hl, sp+$68                                 ; $49bc: $f8 $68
    ld hl, sp+$48                                 ; $49be: $f8 $48
    ldh a, [$30]                                  ; $49c0: $f0 $30
    ldh [rNR41], a                                ; $49c2: $e0 $20
    ld hl, sp-$18                                 ; $49c4: $f8 $e8
    ld hl, sp-$58                                 ; $49c6: $f8 $a8
    ret nc                                        ; $49c8: $d0

    ret nc                                        ; $49c9: $d0

    ret nz                                        ; $49ca: $c0

    ret nz                                        ; $49cb: $c0

    add b                                         ; $49cc: $80
    add b                                         ; $49cd: $80
    nop                                           ; $49ce: $00
    nop                                           ; $49cf: $00
    nop                                           ; $49d0: $00
    nop                                           ; $49d1: $00
    inc bc                                        ; $49d2: $03
    inc bc                                        ; $49d3: $03
    inc b                                         ; $49d4: $04
    rlca                                          ; $49d5: $07
    inc c                                         ; $49d6: $0c
    rrca                                          ; $49d7: $0f

jr_022_49d8:
    ld [de], a                                    ; $49d8: $12
    rra                                           ; $49d9: $1f

jr_022_49da:
    rra                                           ; $49da: $1f
    rra                                           ; $49db: $1f

jr_022_49dc:
    rrca                                          ; $49dc: $0f
    add hl, bc                                    ; $49dd: $09
    rrca                                          ; $49de: $0f
    ld [$080f], sp                                ; $49df: $08 $0f $08
    rlca                                          ; $49e2: $07
    inc b                                         ; $49e3: $04
    rlca                                          ; $49e4: $07
    rlca                                          ; $49e5: $07
    rrca                                          ; $49e6: $0f
    ld a, [bc]                                    ; $49e7: $0a
    rrca                                          ; $49e8: $0f
    rrca                                          ; $49e9: $0f
    rlca                                          ; $49ea: $07
    rlca                                          ; $49eb: $07
    ld [bc], a                                    ; $49ec: $02
    ld [bc], a                                    ; $49ed: $02
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    ret nz                                        ; $49f2: $c0

    ret nz                                        ; $49f3: $c0

    nop                                           ; $49f4: $00
    ret nz                                        ; $49f5: $c0

    jr nz, jr_022_49d8                            ; $49f6: $20 $e0

    jr nz, jr_022_49da                            ; $49f8: $20 $e0

    ldh [$e0], a                                  ; $49fa: $e0 $e0
    ldh [rNR41], a                                ; $49fc: $e0 $20
    ldh [rNR41], a                                ; $49fe: $e0 $20
    ret nz                                        ; $4a00: $c0

    ld b, b                                       ; $4a01: $40
    ret nz                                        ; $4a02: $c0

    ret nz                                        ; $4a03: $c0

    ldh [$e0], a                                  ; $4a04: $e0 $e0
    ldh [rNR41], a                                ; $4a06: $e0 $20
    ldh [$60], a                                  ; $4a08: $e0 $60
    and b                                         ; $4a0a: $a0
    ldh [rLCDC], a                                ; $4a0b: $e0 $40
    ld b, b                                       ; $4a0d: $40
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

jr_022_4a18:
    inc b                                         ; $4a18: $04
    rlca                                          ; $4a19: $07

jr_022_4a1a:
    dec b                                         ; $4a1a: $05
    rlca                                          ; $4a1b: $07
    rra                                           ; $4a1c: $1f
    rla                                           ; $4a1d: $17
    rra                                           ; $4a1e: $1f
    inc de                                        ; $4a1f: $13
    rrca                                          ; $4a20: $0f
    rrca                                          ; $4a21: $0f
    inc e                                         ; $4a22: $1c
    rla                                           ; $4a23: $17

jr_022_4a24:
    inc bc                                        ; $4a24: $03
    inc bc                                        ; $4a25: $03
    inc bc                                        ; $4a26: $03
    inc bc                                        ; $4a27: $03
    nop                                           ; $4a28: $00
    inc bc                                        ; $4a29: $03
    nop                                           ; $4a2a: $00
    inc bc                                        ; $4a2b: $03
    inc bc                                        ; $4a2c: $03
    inc bc                                        ; $4a2d: $03
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    ret nz                                        ; $4a32: $c0

    ret nz                                        ; $4a33: $c0

    nop                                           ; $4a34: $00
    ret nz                                        ; $4a35: $c0

    jr nz, jr_022_4a18                            ; $4a36: $20 $e0

    jr nz, jr_022_4a1a                            ; $4a38: $20 $e0

    and b                                         ; $4a3a: $a0
    ldh [$f8], a                                  ; $4a3b: $e0 $f8
    add sp, -$08                                  ; $4a3d: $e8 $f8
    ret z                                         ; $4a3f: $c8

    ldh a, [$f0]                                  ; $4a40: $f0 $f0
    jr nz, jr_022_4a24                            ; $4a42: $20 $e0

    db $fc                                        ; $4a44: $fc
    db $ec                                        ; $4a45: $ec
    db $fc                                        ; $4a46: $fc
    cp h                                          ; $4a47: $bc
    ret c                                         ; $4a48: $d8

    ret c                                         ; $4a49: $d8

    ret nz                                        ; $4a4a: $c0

    ret nz                                        ; $4a4b: $c0

    add b                                         ; $4a4c: $80
    add b                                         ; $4a4d: $80
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00

    db $62, $4a, $65, $4a

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

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $4a6b: $02
    rst $38                                       ; $4a6c: $ff
    db $fd                                        ; $4a6d: $fd
    ld [bc], a                                    ; $4a6e: $02
    inc c                                         ; $4a6f: $0c
    inc bc                                        ; $4a70: $03
    inc c                                         ; $4a71: $0c
    inc b                                         ; $4a72: $04
    jr jr_022_4a77                                ; $4a73: $18 $02

    inc c                                         ; $4a75: $0c
    dec b                                         ; $4a76: $05

jr_022_4a77:
    inc c                                         ; $4a77: $0c
    db $fd                                        ; $4a78: $fd
    ld [bc], a                                    ; $4a79: $02
    jr @+$05                                      ; $4a7a: $18 $03

    jr jr_022_4a80                                ; $4a7c: $18 $02

    jr @-$01                                      ; $4a7e: $18 $fd

jr_022_4a80:
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

    db $07, $04, $b9, $4a, $d0, $50, $b9, $4a, $d0, $4a, $d0, $4b, $d0, $4b, $d0, $4b

    ret nc                                        ; $4ac1: $d0

    ld c, e                                       ; $4ac2: $4b
    ret nc                                        ; $4ac3: $d0

    ld c, e                                       ; $4ac4: $4b
    ret nc                                        ; $4ac5: $d0

    ld c, h                                       ; $4ac6: $4c
    ret nc                                        ; $4ac7: $d0

    ld c, l                                       ; $4ac8: $4d
    ret nc                                        ; $4ac9: $d0

    ld c, [hl]                                    ; $4aca: $4e
    ret nc                                        ; $4acb: $d0

    ld c, a                                       ; $4acc: $4f
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    inc bc                                        ; $4ad0: $03
    inc bc                                        ; $4ad1: $03
    inc b                                         ; $4ad2: $04
    rlca                                          ; $4ad3: $07
    ld [$080f], sp                                ; $4ad4: $08 $0f $08
    rrca                                          ; $4ad7: $0f
    db $10                                        ; $4ad8: $10
    rra                                           ; $4ad9: $1f
    ld de, $111f                                  ; $4ada: $11 $1f $11
    rra                                           ; $4add: $1f
    add hl, bc                                    ; $4ade: $09
    rrca                                          ; $4adf: $0f
    rlca                                          ; $4ae0: $07
    rlca                                          ; $4ae1: $07
    rlca                                          ; $4ae2: $07
    dec b                                         ; $4ae3: $05
    rrca                                          ; $4ae4: $0f
    dec bc                                        ; $4ae5: $0b
    rrca                                          ; $4ae6: $0f
    ld a, [bc]                                    ; $4ae7: $0a
    rlca                                          ; $4ae8: $07
    rlca                                          ; $4ae9: $07
    rrca                                          ; $4aea: $0f
    rrca                                          ; $4aeb: $0f
    dec bc                                        ; $4aec: $0b
    rrca                                          ; $4aed: $0f
    rlca                                          ; $4aee: $07
    rlca                                          ; $4aef: $07
    ldh [$e0], a                                  ; $4af0: $e0 $e0
    db $10                                        ; $4af2: $10
    ldh a, [rBCPS]                                ; $4af3: $f0 $68
    ld hl, sp-$18                                 ; $4af5: $f8 $e8
    cp b                                          ; $4af7: $b8
    ld hl, sp-$68                                 ; $4af8: $f8 $98
    ld hl, sp+$58                                 ; $4afa: $f8 $58
    ldh a, [$50]                                  ; $4afc: $f0 $50
    ldh a, [rNR10]                                ; $4afe: $f0 $10
    ldh [rNR41], a                                ; $4b00: $e0 $20
    ldh a, [$f0]                                  ; $4b02: $f0 $f0
    ld hl, sp+$68                                 ; $4b04: $f8 $68
    ld hl, sp+$38                                 ; $4b06: $f8 $38
    ldh a, [$f0]                                  ; $4b08: $f0 $f0
    xor b                                         ; $4b0a: $a8
    ld hl, sp-$38                                 ; $4b0b: $f8 $c8
    ld hl, sp+$70                                 ; $4b0d: $f8 $70
    ld [hl], b                                    ; $4b0f: $70
    inc bc                                        ; $4b10: $03
    inc bc                                        ; $4b11: $03
    inc b                                         ; $4b12: $04
    rlca                                          ; $4b13: $07
    add hl, bc                                    ; $4b14: $09
    rrca                                          ; $4b15: $0f
    dec bc                                        ; $4b16: $0b
    ld c, $17                                     ; $4b17: $0e $17
    inc e                                         ; $4b19: $1c
    rla                                           ; $4b1a: $17
    dec e                                         ; $4b1b: $1d
    rla                                           ; $4b1c: $17
    dec e                                         ; $4b1d: $1d
    rrca                                          ; $4b1e: $0f
    inc c                                         ; $4b1f: $0c
    rra                                           ; $4b20: $1f
    ld e, $3f                                     ; $4b21: $1e $3f
    dec hl                                        ; $4b23: $2b
    ccf                                           ; $4b24: $3f
    dec a                                         ; $4b25: $3d
    rlca                                          ; $4b26: $07
    ld b, $05                                     ; $4b27: $06 $05
    rlca                                          ; $4b29: $07
    rlca                                          ; $4b2a: $07
    rlca                                          ; $4b2b: $07
    inc b                                         ; $4b2c: $04
    rlca                                          ; $4b2d: $07
    inc bc                                        ; $4b2e: $03
    inc bc                                        ; $4b2f: $03
    ldh [$e0], a                                  ; $4b30: $e0 $e0
    sub b                                         ; $4b32: $90
    ldh a, [$c8]                                  ; $4b33: $f0 $c8
    ld hl, sp-$18                                 ; $4b35: $f8 $e8

jr_022_4b37:
    jr c, @-$06                                   ; $4b37: $38 $f8

    jr jr_022_4b37                                ; $4b39: $18 $fc

    ld d, h                                       ; $4b3b: $54
    db $fc                                        ; $4b3c: $fc
    ld b, h                                       ; $4b3d: $44
    ld hl, sp+$18                                 ; $4b3e: $f8 $18
    ldh a, [$30]                                  ; $4b40: $f0 $30
    ld hl, sp-$28                                 ; $4b42: $f8 $d8
    db $fc                                        ; $4b44: $fc
    ld d, h                                       ; $4b45: $54
    db $fc                                        ; $4b46: $fc
    inc [hl]                                      ; $4b47: $34
    ret c                                         ; $4b48: $d8

    ld hl, sp-$50                                 ; $4b49: $f8 $b0
    ldh a, [$e0]                                  ; $4b4b: $f0 $e0
    ldh [$80], a                                  ; $4b4d: $e0 $80
    add b                                         ; $4b4f: $80
    rlca                                          ; $4b50: $07
    rlca                                          ; $4b51: $07
    ld [$120f], sp                                ; $4b52: $08 $0f $12
    rra                                           ; $4b55: $1f
    rla                                           ; $4b56: $17
    dec e                                         ; $4b57: $1d
    rra                                           ; $4b58: $1f
    jr @+$21                                      ; $4b59: $18 $1f

    ld a, [de]                                    ; $4b5b: $1a
    rrca                                          ; $4b5c: $0f
    ld a, [bc]                                    ; $4b5d: $0a
    rrca                                          ; $4b5e: $0f
    ld [$0407], sp                                ; $4b5f: $08 $07 $04
    rlca                                          ; $4b62: $07
    rlca                                          ; $4b63: $07
    rlca                                          ; $4b64: $07
    dec b                                         ; $4b65: $05
    rrca                                          ; $4b66: $0f
    dec bc                                        ; $4b67: $0b
    rrca                                          ; $4b68: $0f
    rrca                                          ; $4b69: $0f
    rra                                           ; $4b6a: $1f
    rra                                           ; $4b6b: $1f
    rla                                           ; $4b6c: $17
    rra                                           ; $4b6d: $1f
    ld c, $0e                                     ; $4b6e: $0e $0e
    ret nz                                        ; $4b70: $c0

    ret nz                                        ; $4b71: $c0

    jr nz, @-$1e                                  ; $4b72: $20 $e0

    db $10                                        ; $4b74: $10
    ldh a, [rNR10]                                ; $4b75: $f0 $10
    ldh a, [$a8]                                  ; $4b77: $f0 $a8
    ld hl, sp-$08                                 ; $4b79: $f8 $f8
    ret c                                         ; $4b7b: $d8

    ld hl, sp+$18                                 ; $4b7c: $f8 $18
    ldh a, [rSVBK]                                ; $4b7e: $f0 $70
    ldh [$e0], a                                  ; $4b80: $e0 $e0
    ldh a, [$50]                                  ; $4b82: $f0 $50
    ldh a, [$30]                                  ; $4b84: $f0 $30
    ldh a, [$30]                                  ; $4b86: $f0 $30
    ldh [$e0], a                                  ; $4b88: $e0 $e0
    ld d, b                                       ; $4b8a: $50
    ldh a, [$90]                                  ; $4b8b: $f0 $90
    ldh a, [$e0]                                  ; $4b8d: $f0 $e0
    ldh [rTAC], a                                 ; $4b8f: $e0 $07
    rlca                                          ; $4b91: $07
    ld [$100f], sp                                ; $4b92: $08 $0f $10
    rra                                           ; $4b95: $1f
    db $10                                        ; $4b96: $10
    rra                                           ; $4b97: $1f
    db $10                                        ; $4b98: $10
    rra                                           ; $4b99: $1f
    jr nc, @+$41                                  ; $4b9a: $30 $3f

    jr c, jr_022_4bcd                             ; $4b9c: $38 $2f

    inc e                                         ; $4b9e: $1c
    rra                                           ; $4b9f: $1f
    ccf                                           ; $4ba0: $3f
    ccf                                           ; $4ba1: $3f
    ccf                                           ; $4ba2: $3f
    ld a, [hl+]                                   ; $4ba3: $2a
    rra                                           ; $4ba4: $1f
    inc e                                         ; $4ba5: $1c
    rrca                                          ; $4ba6: $0f
    inc c                                         ; $4ba7: $0c
    dec bc                                        ; $4ba8: $0b
    rrca                                          ; $4ba9: $0f
    rrca                                          ; $4baa: $0f
    rrca                                          ; $4bab: $0f
    add hl, bc                                    ; $4bac: $09
    rrca                                          ; $4bad: $0f
    rlca                                          ; $4bae: $07
    rlca                                          ; $4baf: $07
    ret nz                                        ; $4bb0: $c0

    ret nz                                        ; $4bb1: $c0

    jr nz, @-$1e                                  ; $4bb2: $20 $e0

    db $10                                        ; $4bb4: $10
    ldh a, [rNR10]                                ; $4bb5: $f0 $10
    ldh a, [$08]                                  ; $4bb7: $f0 $08
    ld hl, sp+$08                                 ; $4bb9: $f8 $08
    ld hl, sp+$28                                 ; $4bbb: $f8 $28
    ld hl, sp+$70                                 ; $4bbd: $f8 $70
    ldh a, [$e0]                                  ; $4bbf: $f0 $e0
    ldh [$f0], a                                  ; $4bc1: $e0 $f0
    or b                                          ; $4bc3: $b0
    ld hl, sp+$28                                 ; $4bc4: $f8 $28
    ld hl, sp+$68                                 ; $4bc6: $f8 $68
    or b                                          ; $4bc8: $b0
    ldh a, [$e0]                                  ; $4bc9: $f0 $e0
    ldh [$c0], a                                  ; $4bcb: $e0 $c0

jr_022_4bcd:
    ret nz                                        ; $4bcd: $c0

    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    inc bc                                        ; $4bd0: $03
    inc bc                                        ; $4bd1: $03
    inc b                                         ; $4bd2: $04
    rlca                                          ; $4bd3: $07
    ld [$080f], sp                                ; $4bd4: $08 $0f $08
    rrca                                          ; $4bd7: $0f
    db $10                                        ; $4bd8: $10
    rra                                           ; $4bd9: $1f
    ld de, $111f                                  ; $4bda: $11 $1f $11
    rra                                           ; $4bdd: $1f
    add hl, bc                                    ; $4bde: $09
    rrca                                          ; $4bdf: $0f
    rlca                                          ; $4be0: $07
    rlca                                          ; $4be1: $07
    rrca                                          ; $4be2: $0f
    ld a, [bc]                                    ; $4be3: $0a
    rrca                                          ; $4be4: $0f
    inc c                                         ; $4be5: $0c
    rrca                                          ; $4be6: $0f
    inc c                                         ; $4be7: $0c
    rlca                                          ; $4be8: $07
    rlca                                          ; $4be9: $07
    ld a, [bc]                                    ; $4bea: $0a
    rrca                                          ; $4beb: $0f
    add hl, bc                                    ; $4bec: $09
    rrca                                          ; $4bed: $0f
    rlca                                          ; $4bee: $07
    rlca                                          ; $4bef: $07
    ldh [$e0], a                                  ; $4bf0: $e0 $e0
    db $10                                        ; $4bf2: $10
    ldh a, [rBCPS]                                ; $4bf3: $f0 $68
    ld hl, sp-$18                                 ; $4bf5: $f8 $e8
    cp b                                          ; $4bf7: $b8
    ld hl, sp-$68                                 ; $4bf8: $f8 $98
    ld hl, sp+$58                                 ; $4bfa: $f8 $58
    ldh a, [$50]                                  ; $4bfc: $f0 $50
    ldh a, [rNR10]                                ; $4bfe: $f0 $10
    ldh [rNR41], a                                ; $4c00: $e0 $20
    ldh [$e0], a                                  ; $4c02: $e0 $e0
    ldh [$a0], a                                  ; $4c04: $e0 $a0
    ldh a, [$d0]                                  ; $4c06: $f0 $d0
    ldh a, [$f0]                                  ; $4c08: $f0 $f0
    ld hl, sp-$08                                 ; $4c0a: $f8 $f8
    add sp, -$08                                  ; $4c0c: $e8 $f8
    ld [hl], b                                    ; $4c0e: $70
    ld [hl], b                                    ; $4c0f: $70
    inc bc                                        ; $4c10: $03
    inc bc                                        ; $4c11: $03
    inc b                                         ; $4c12: $04
    rlca                                          ; $4c13: $07
    add hl, bc                                    ; $4c14: $09
    rrca                                          ; $4c15: $0f
    dec bc                                        ; $4c16: $0b
    ld c, $17                                     ; $4c17: $0e $17
    inc e                                         ; $4c19: $1c
    rla                                           ; $4c1a: $17
    dec e                                         ; $4c1b: $1d
    rla                                           ; $4c1c: $17
    dec e                                         ; $4c1d: $1d
    rrca                                          ; $4c1e: $0f
    inc c                                         ; $4c1f: $0c
    rlca                                          ; $4c20: $07
    ld b, $0f                                     ; $4c21: $06 $0f
    dec c                                         ; $4c23: $0d
    rra                                           ; $4c24: $1f
    dec d                                         ; $4c25: $15
    rra                                           ; $4c26: $1f
    ld d, $0d                                     ; $4c27: $16 $0d
    rrca                                          ; $4c29: $0f
    ld b, $07                                     ; $4c2a: $06 $07
    inc bc                                        ; $4c2c: $03
    inc bc                                        ; $4c2d: $03
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    ldh [$e0], a                                  ; $4c30: $e0 $e0
    sub b                                         ; $4c32: $90
    ldh a, [$c8]                                  ; $4c33: $f0 $c8
    ld hl, sp-$18                                 ; $4c35: $f8 $e8

jr_022_4c37:
    jr c, @-$06                                   ; $4c37: $38 $f8

    jr jr_022_4c37                                ; $4c39: $18 $fc

    ld d, h                                       ; $4c3b: $54
    db $fc                                        ; $4c3c: $fc
    ld b, h                                       ; $4c3d: $44
    ld hl, sp+$18                                 ; $4c3e: $f8 $18
    db $fc                                        ; $4c40: $fc
    inc a                                         ; $4c41: $3c
    cp $ea                                        ; $4c42: $fe $ea
    cp $5e                                        ; $4c44: $fe $5e
    ldh a, [$30]                                  ; $4c46: $f0 $30
    ret nc                                        ; $4c48: $d0

    ldh a, [$f0]                                  ; $4c49: $f0 $f0
    ldh a, [$90]                                  ; $4c4b: $f0 $90
    ldh a, [$e0]                                  ; $4c4d: $f0 $e0
    ldh [rTAC], a                                 ; $4c4f: $e0 $07
    rlca                                          ; $4c51: $07
    ld [$120f], sp                                ; $4c52: $08 $0f $12
    rra                                           ; $4c55: $1f
    rla                                           ; $4c56: $17
    dec e                                         ; $4c57: $1d
    rra                                           ; $4c58: $1f
    jr @+$21                                      ; $4c59: $18 $1f

    ld a, [de]                                    ; $4c5b: $1a
    rrca                                          ; $4c5c: $0f
    ld a, [bc]                                    ; $4c5d: $0a
    rrca                                          ; $4c5e: $0f
    ld [$0407], sp                                ; $4c5f: $08 $07 $04
    rrca                                          ; $4c62: $0f
    rrca                                          ; $4c63: $0f
    rra                                           ; $4c64: $1f
    ld d, $1f                                     ; $4c65: $16 $1f
    inc e                                         ; $4c67: $1c
    rrca                                          ; $4c68: $0f
    rrca                                          ; $4c69: $0f
    dec d                                         ; $4c6a: $15
    rra                                           ; $4c6b: $1f
    inc de                                        ; $4c6c: $13
    rra                                           ; $4c6d: $1f
    ld c, $0e                                     ; $4c6e: $0e $0e
    ret nz                                        ; $4c70: $c0

    ret nz                                        ; $4c71: $c0

    jr nz, @-$1e                                  ; $4c72: $20 $e0

    db $10                                        ; $4c74: $10
    ldh a, [rNR10]                                ; $4c75: $f0 $10
    ldh a, [$a8]                                  ; $4c77: $f0 $a8
    ld hl, sp-$08                                 ; $4c79: $f8 $f8
    ret c                                         ; $4c7b: $d8

    ld hl, sp+$18                                 ; $4c7c: $f8 $18
    ldh a, [rSVBK]                                ; $4c7e: $f0 $70
    ldh [$e0], a                                  ; $4c80: $e0 $e0
    ldh [$a0], a                                  ; $4c82: $e0 $a0
    ldh a, [$d0]                                  ; $4c84: $f0 $d0
    ldh a, [$50]                                  ; $4c86: $f0 $50
    ldh [$e0], a                                  ; $4c88: $e0 $e0
    ldh a, [$f0]                                  ; $4c8a: $f0 $f0
    ret nc                                        ; $4c8c: $d0

    ldh a, [$e0]                                  ; $4c8d: $f0 $e0
    ldh [rTAC], a                                 ; $4c8f: $e0 $07
    rlca                                          ; $4c91: $07
    ld [$100f], sp                                ; $4c92: $08 $0f $10
    rra                                           ; $4c95: $1f
    db $10                                        ; $4c96: $10
    rra                                           ; $4c97: $1f
    db $10                                        ; $4c98: $10
    rra                                           ; $4c99: $1f
    jr nc, jr_022_4cdb                            ; $4c9a: $30 $3f

    jr c, jr_022_4ccd                             ; $4c9c: $38 $2f

    inc e                                         ; $4c9e: $1c
    rra                                           ; $4c9f: $1f
    rrca                                          ; $4ca0: $0f
    rrca                                          ; $4ca1: $0f
    rra                                           ; $4ca2: $1f
    ld a, [de]                                    ; $4ca3: $1a
    ccf                                           ; $4ca4: $3f
    jr z, jr_022_4ce6                             ; $4ca5: $28 $3f

    inc l                                         ; $4ca7: $2c
    dec de                                        ; $4ca8: $1b
    rra                                           ; $4ca9: $1f
    rrca                                          ; $4caa: $0f
    rrca                                          ; $4cab: $0f
    rlca                                          ; $4cac: $07
    rlca                                          ; $4cad: $07
    ld bc, $c001                                  ; $4cae: $01 $01 $c0
    ret nz                                        ; $4cb1: $c0

    jr nz, @-$1e                                  ; $4cb2: $20 $e0

    db $10                                        ; $4cb4: $10
    ldh a, [rNR10]                                ; $4cb5: $f0 $10
    ldh a, [$08]                                  ; $4cb7: $f0 $08
    ld hl, sp+$08                                 ; $4cb9: $f8 $08
    ld hl, sp+$28                                 ; $4cbb: $f8 $28
    ld hl, sp+$70                                 ; $4cbd: $f8 $70
    ldh a, [$f8]                                  ; $4cbf: $f0 $f8
    ld hl, sp-$08                                 ; $4cc1: $f8 $f8
    xor b                                         ; $4cc3: $a8
    ldh a, [rSVBK]                                ; $4cc4: $f0 $70
    ldh [$60], a                                  ; $4cc6: $e0 $60
    and b                                         ; $4cc8: $a0
    ldh [$e0], a                                  ; $4cc9: $e0 $e0
    ldh [rNR41], a                                ; $4ccb: $e0 $20

jr_022_4ccd:
    ldh [$c0], a                                  ; $4ccd: $e0 $c0
    ret nz                                        ; $4ccf: $c0

    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    inc bc                                        ; $4cd2: $03
    inc bc                                        ; $4cd3: $03
    inc b                                         ; $4cd4: $04
    rlca                                          ; $4cd5: $07
    ld [$080f], sp                                ; $4cd6: $08 $0f $08
    rrca                                          ; $4cd9: $0f
    db $10                                        ; $4cda: $10

jr_022_4cdb:
    rra                                           ; $4cdb: $1f
    ld de, $111f                                  ; $4cdc: $11 $1f $11

Call_022_4cdf:
    rra                                           ; $4cdf: $1f
    add hl, bc                                    ; $4ce0: $09
    rrca                                          ; $4ce1: $0f
    rlca                                          ; $4ce2: $07
    rlca                                          ; $4ce3: $07
    rrca                                          ; $4ce4: $0f
    dec bc                                        ; $4ce5: $0b

jr_022_4ce6:
    rrca                                          ; $4ce6: $0f
    ld a, [bc]                                    ; $4ce7: $0a
    rlca                                          ; $4ce8: $07
    rlca                                          ; $4ce9: $07
    rrca                                          ; $4cea: $0f
    rrca                                          ; $4ceb: $0f
    dec bc                                        ; $4cec: $0b
    rrca                                          ; $4ced: $0f
    rlca                                          ; $4cee: $07
    rlca                                          ; $4cef: $07
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    ldh [$e0], a                                  ; $4cf2: $e0 $e0
    db $10                                        ; $4cf4: $10
    ldh a, [rBCPS]                                ; $4cf5: $f0 $68
    ld hl, sp-$18                                 ; $4cf7: $f8 $e8
    cp b                                          ; $4cf9: $b8
    ld hl, sp-$68                                 ; $4cfa: $f8 $98
    ld hl, sp+$58                                 ; $4cfc: $f8 $58
    ldh a, [$50]                                  ; $4cfe: $f0 $50
    ldh a, [rNR10]                                ; $4d00: $f0 $10
    ldh [rNR41], a                                ; $4d02: $e0 $20
    ld hl, sp+$68                                 ; $4d04: $f8 $68
    ld hl, sp+$38                                 ; $4d06: $f8 $38
    ldh a, [$f0]                                  ; $4d08: $f0 $f0
    xor b                                         ; $4d0a: $a8
    ld hl, sp-$38                                 ; $4d0b: $f8 $c8
    ld hl, sp+$70                                 ; $4d0d: $f8 $70
    ld [hl], b                                    ; $4d0f: $70
    nop                                           ; $4d10: $00
    nop                                           ; $4d11: $00
    inc bc                                        ; $4d12: $03
    inc bc                                        ; $4d13: $03
    inc b                                         ; $4d14: $04
    rlca                                          ; $4d15: $07
    add hl, bc                                    ; $4d16: $09
    rrca                                          ; $4d17: $0f
    dec bc                                        ; $4d18: $0b
    ld c, $17                                     ; $4d19: $0e $17
    inc e                                         ; $4d1b: $1c
    rla                                           ; $4d1c: $17
    dec e                                         ; $4d1d: $1d
    rla                                           ; $4d1e: $17
    dec e                                         ; $4d1f: $1d
    rrca                                          ; $4d20: $0f
    inc c                                         ; $4d21: $0c
    rra                                           ; $4d22: $1f
    ld e, $3f                                     ; $4d23: $1e $3f
    dec a                                         ; $4d25: $3d
    rlca                                          ; $4d26: $07
    ld b, $05                                     ; $4d27: $06 $05
    rlca                                          ; $4d29: $07
    rlca                                          ; $4d2a: $07
    rlca                                          ; $4d2b: $07
    inc b                                         ; $4d2c: $04
    rlca                                          ; $4d2d: $07
    inc bc                                        ; $4d2e: $03
    inc bc                                        ; $4d2f: $03
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    ldh [$e0], a                                  ; $4d32: $e0 $e0
    sub b                                         ; $4d34: $90
    ldh a, [$c8]                                  ; $4d35: $f0 $c8
    ld hl, sp-$18                                 ; $4d37: $f8 $e8

jr_022_4d39:
    jr c, @-$06                                   ; $4d39: $38 $f8

    jr jr_022_4d39                                ; $4d3b: $18 $fc

    ld d, h                                       ; $4d3d: $54
    db $fc                                        ; $4d3e: $fc
    ld b, h                                       ; $4d3f: $44
    ld hl, sp+$18                                 ; $4d40: $f8 $18
    ldh a, [$30]                                  ; $4d42: $f0 $30
    db $fc                                        ; $4d44: $fc
    ld d, h                                       ; $4d45: $54
    db $fc                                        ; $4d46: $fc
    inc [hl]                                      ; $4d47: $34
    ret c                                         ; $4d48: $d8

    ld hl, sp-$50                                 ; $4d49: $f8 $b0
    ldh a, [$e0]                                  ; $4d4b: $f0 $e0
    ldh [$80], a                                  ; $4d4d: $e0 $80
    add b                                         ; $4d4f: $80
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    rlca                                          ; $4d52: $07
    rlca                                          ; $4d53: $07
    ld [$120f], sp                                ; $4d54: $08 $0f $12
    rra                                           ; $4d57: $1f
    rla                                           ; $4d58: $17
    dec e                                         ; $4d59: $1d
    rra                                           ; $4d5a: $1f
    jr @+$21                                      ; $4d5b: $18 $1f

    ld a, [de]                                    ; $4d5d: $1a
    rrca                                          ; $4d5e: $0f
    ld a, [bc]                                    ; $4d5f: $0a
    rrca                                          ; $4d60: $0f
    ld [$0407], sp                                ; $4d61: $08 $07 $04
    rlca                                          ; $4d64: $07
    dec b                                         ; $4d65: $05
    rrca                                          ; $4d66: $0f
    dec bc                                        ; $4d67: $0b
    rrca                                          ; $4d68: $0f
    rrca                                          ; $4d69: $0f
    rra                                           ; $4d6a: $1f
    rra                                           ; $4d6b: $1f
    rla                                           ; $4d6c: $17
    rra                                           ; $4d6d: $1f
    ld c, $0e                                     ; $4d6e: $0e $0e
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    ret nz                                        ; $4d72: $c0

    ret nz                                        ; $4d73: $c0

    jr nz, @-$1e                                  ; $4d74: $20 $e0

    db $10                                        ; $4d76: $10
    ldh a, [rNR10]                                ; $4d77: $f0 $10
    ldh a, [$a8]                                  ; $4d79: $f0 $a8
    ld hl, sp-$08                                 ; $4d7b: $f8 $f8
    ret c                                         ; $4d7d: $d8

    ld hl, sp+$18                                 ; $4d7e: $f8 $18
    ldh a, [rSVBK]                                ; $4d80: $f0 $70
    ldh [$e0], a                                  ; $4d82: $e0 $e0
    ldh a, [$30]                                  ; $4d84: $f0 $30
    ldh a, [$30]                                  ; $4d86: $f0 $30
    ldh [$e0], a                                  ; $4d88: $e0 $e0
    ld d, b                                       ; $4d8a: $50
    ldh a, [$90]                                  ; $4d8b: $f0 $90
    ldh a, [$e0]                                  ; $4d8d: $f0 $e0
    ldh [rP1], a                                  ; $4d8f: $e0 $00
    nop                                           ; $4d91: $00
    rlca                                          ; $4d92: $07
    rlca                                          ; $4d93: $07
    ld [$100f], sp                                ; $4d94: $08 $0f $10
    rra                                           ; $4d97: $1f
    db $10                                        ; $4d98: $10
    rra                                           ; $4d99: $1f
    db $10                                        ; $4d9a: $10
    rra                                           ; $4d9b: $1f
    jr nc, @+$41                                  ; $4d9c: $30 $3f

    jr c, jr_022_4dcf                             ; $4d9e: $38 $2f

    inc e                                         ; $4da0: $1c
    rra                                           ; $4da1: $1f
    ccf                                           ; $4da2: $3f
    ccf                                           ; $4da3: $3f
    rra                                           ; $4da4: $1f
    inc e                                         ; $4da5: $1c
    rrca                                          ; $4da6: $0f
    inc c                                         ; $4da7: $0c
    dec bc                                        ; $4da8: $0b
    rrca                                          ; $4da9: $0f
    rrca                                          ; $4daa: $0f
    rrca                                          ; $4dab: $0f
    add hl, bc                                    ; $4dac: $09
    rrca                                          ; $4dad: $0f
    rlca                                          ; $4dae: $07
    rlca                                          ; $4daf: $07
    nop                                           ; $4db0: $00
    nop                                           ; $4db1: $00
    ret nz                                        ; $4db2: $c0

    ret nz                                        ; $4db3: $c0

    jr nz, @-$1e                                  ; $4db4: $20 $e0

    db $10                                        ; $4db6: $10
    ldh a, [rNR10]                                ; $4db7: $f0 $10
    ldh a, [$08]                                  ; $4db9: $f0 $08
    ld hl, sp+$08                                 ; $4dbb: $f8 $08
    ld hl, sp+$28                                 ; $4dbd: $f8 $28

jr_022_4dbf:
    ld hl, sp+$70                                 ; $4dbf: $f8 $70
    ldh a, [$e0]                                  ; $4dc1: $f0 $e0
    ldh [$f8], a                                  ; $4dc3: $e0 $f8
    jr z, jr_022_4dbf                             ; $4dc5: $28 $f8

    ld l, b                                       ; $4dc7: $68
    or b                                          ; $4dc8: $b0
    ldh a, [$e0]                                  ; $4dc9: $f0 $e0
    ldh [$c0], a                                  ; $4dcb: $e0 $c0
    ret nz                                        ; $4dcd: $c0

    nop                                           ; $4dce: $00

jr_022_4dcf:
    nop                                           ; $4dcf: $00
    ld bc, $0201                                  ; $4dd0: $01 $01 $02
    inc bc                                        ; $4dd3: $03
    inc b                                         ; $4dd4: $04
    rlca                                          ; $4dd5: $07
    inc b                                         ; $4dd6: $04
    rlca                                          ; $4dd7: $07
    ld [$080f], sp                                ; $4dd8: $08 $0f $08
    rrca                                          ; $4ddb: $0f
    ld [$040f], sp                                ; $4ddc: $08 $0f $04
    rlca                                          ; $4ddf: $07
    inc bc                                        ; $4de0: $03
    inc bc                                        ; $4de1: $03
    rlca                                          ; $4de2: $07
    dec b                                         ; $4de3: $05
    rrca                                          ; $4de4: $0f
    dec bc                                        ; $4de5: $0b
    rrca                                          ; $4de6: $0f
    ld a, [bc]                                    ; $4de7: $0a
    rlca                                          ; $4de8: $07
    rlca                                          ; $4de9: $07
    rrca                                          ; $4dea: $0f
    rrca                                          ; $4deb: $0f
    dec bc                                        ; $4dec: $0b
    rrca                                          ; $4ded: $0f
    rlca                                          ; $4dee: $07
    rlca                                          ; $4def: $07
    ldh a, [$f0]                                  ; $4df0: $f0 $f0
    ld [$34f8], sp                                ; $4df2: $08 $f8 $34
    db $fc                                        ; $4df5: $fc
    ld [hl], h                                    ; $4df6: $74
    call c, $cc7c                                 ; $4df7: $dc $7c $cc
    db $fc                                        ; $4dfa: $fc
    xor h                                         ; $4dfb: $ac
    ld hl, sp-$58                                 ; $4dfc: $f8 $a8
    ld hl, sp-$78                                 ; $4dfe: $f8 $88
    ldh a, [$90]                                  ; $4e00: $f0 $90
    ldh a, [$f0]                                  ; $4e02: $f0 $f0
    ld hl, sp+$68                                 ; $4e04: $f8 $68
    ld hl, sp+$38                                 ; $4e06: $f8 $38
    ldh a, [$f0]                                  ; $4e08: $f0 $f0
    xor b                                         ; $4e0a: $a8
    ld hl, sp-$38                                 ; $4e0b: $f8 $c8
    ld hl, sp+$70                                 ; $4e0d: $f8 $70
    ld [hl], b                                    ; $4e0f: $70
    ld bc, $0201                                  ; $4e10: $01 $01 $02
    inc bc                                        ; $4e13: $03
    inc b                                         ; $4e14: $04
    rlca                                          ; $4e15: $07
    dec b                                         ; $4e16: $05
    rlca                                          ; $4e17: $07
    dec bc                                        ; $4e18: $0b
    ld c, $0b                                     ; $4e19: $0e $0b
    ld c, $0b                                     ; $4e1b: $0e $0b
    ld c, $07                                     ; $4e1d: $0e $07
    ld b, $0f                                     ; $4e1f: $06 $0f
    rrca                                          ; $4e21: $0f
    ccf                                           ; $4e22: $3f
    dec hl                                        ; $4e23: $2b
    ccf                                           ; $4e24: $3f
    dec a                                         ; $4e25: $3d
    rlca                                          ; $4e26: $07
    ld b, $05                                     ; $4e27: $06 $05
    rlca                                          ; $4e29: $07
    rlca                                          ; $4e2a: $07
    rlca                                          ; $4e2b: $07
    inc b                                         ; $4e2c: $04
    rlca                                          ; $4e2d: $07
    inc bc                                        ; $4e2e: $03
    inc bc                                        ; $4e2f: $03
    ldh a, [$f0]                                  ; $4e30: $f0 $f0
    ld c, b                                       ; $4e32: $48
    ld hl, sp-$1c                                 ; $4e33: $f8 $e4
    db $fc                                        ; $4e35: $fc
    db $f4                                        ; $4e36: $f4
    inc e                                         ; $4e37: $1c
    db $fc                                        ; $4e38: $fc
    inc c                                         ; $4e39: $0c
    cp $aa                                        ; $4e3a: $fe $aa
    cp $a2                                        ; $4e3c: $fe $a2
    db $fc                                        ; $4e3e: $fc
    inc c                                         ; $4e3f: $0c
    ld hl, sp+$18                                 ; $4e40: $f8 $18
    ld hl, sp-$28                                 ; $4e42: $f8 $d8
    db $fc                                        ; $4e44: $fc
    ld d, h                                       ; $4e45: $54
    db $fc                                        ; $4e46: $fc
    inc [hl]                                      ; $4e47: $34
    ret c                                         ; $4e48: $d8

    ld hl, sp-$50                                 ; $4e49: $f8 $b0
    ldh a, [$e0]                                  ; $4e4b: $f0 $e0
    ldh [$80], a                                  ; $4e4d: $e0 $80
    add b                                         ; $4e4f: $80
    inc bc                                        ; $4e50: $03
    inc bc                                        ; $4e51: $03
    inc b                                         ; $4e52: $04
    rlca                                          ; $4e53: $07
    add hl, bc                                    ; $4e54: $09
    rrca                                          ; $4e55: $0f
    dec bc                                        ; $4e56: $0b
    ld c, $0f                                     ; $4e57: $0e $0f
    inc c                                         ; $4e59: $0c
    rrca                                          ; $4e5a: $0f
    dec c                                         ; $4e5b: $0d
    rlca                                          ; $4e5c: $07
    dec b                                         ; $4e5d: $05
    rlca                                          ; $4e5e: $07
    inc b                                         ; $4e5f: $04
    inc bc                                        ; $4e60: $03
    ld [bc], a                                    ; $4e61: $02
    rlca                                          ; $4e62: $07
    rlca                                          ; $4e63: $07
    rlca                                          ; $4e64: $07
    dec b                                         ; $4e65: $05
    rrca                                          ; $4e66: $0f
    dec bc                                        ; $4e67: $0b
    rrca                                          ; $4e68: $0f
    rrca                                          ; $4e69: $0f
    rra                                           ; $4e6a: $1f
    rra                                           ; $4e6b: $1f
    rla                                           ; $4e6c: $17
    rra                                           ; $4e6d: $1f
    ld c, $0e                                     ; $4e6e: $0e $0e
    ldh [$e0], a                                  ; $4e70: $e0 $e0
    db $10                                        ; $4e72: $10
    ldh a, [$08]                                  ; $4e73: $f0 $08
    ld hl, sp-$78                                 ; $4e75: $f8 $88
    ld hl, sp-$2c                                 ; $4e77: $f8 $d4
    ld a, h                                       ; $4e79: $7c
    db $fc                                        ; $4e7a: $fc
    ld l, h                                       ; $4e7b: $6c
    db $fc                                        ; $4e7c: $fc
    inc c                                         ; $4e7d: $0c
    ld hl, sp+$38                                 ; $4e7e: $f8 $38
    ldh a, [rSVBK]                                ; $4e80: $f0 $70
    ldh a, [$50]                                  ; $4e82: $f0 $50
    ldh a, [$30]                                  ; $4e84: $f0 $30
    ldh a, [$30]                                  ; $4e86: $f0 $30
    ldh [$e0], a                                  ; $4e88: $e0 $e0
    ld d, b                                       ; $4e8a: $50
    ldh a, [$90]                                  ; $4e8b: $f0 $90
    ldh a, [$e0]                                  ; $4e8d: $f0 $e0
    ldh [$03], a                                  ; $4e8f: $e0 $03
    inc bc                                        ; $4e91: $03
    inc b                                         ; $4e92: $04
    rlca                                          ; $4e93: $07
    ld [$080f], sp                                ; $4e94: $08 $0f $08
    rrca                                          ; $4e97: $0f
    ld [$180f], sp                                ; $4e98: $08 $0f $18
    rra                                           ; $4e9b: $1f
    inc e                                         ; $4e9c: $1c
    rla                                           ; $4e9d: $17
    ld c, $0f                                     ; $4e9e: $0e $0f
    rra                                           ; $4ea0: $1f
    rra                                           ; $4ea1: $1f
    ccf                                           ; $4ea2: $3f
    ld a, [hl+]                                   ; $4ea3: $2a
    rra                                           ; $4ea4: $1f
    inc e                                         ; $4ea5: $1c
    rrca                                          ; $4ea6: $0f
    inc c                                         ; $4ea7: $0c
    dec bc                                        ; $4ea8: $0b
    rrca                                          ; $4ea9: $0f
    rrca                                          ; $4eaa: $0f
    rrca                                          ; $4eab: $0f
    add hl, bc                                    ; $4eac: $09
    rrca                                          ; $4ead: $0f
    rlca                                          ; $4eae: $07
    rlca                                          ; $4eaf: $07
    ldh [$e0], a                                  ; $4eb0: $e0 $e0
    db $10                                        ; $4eb2: $10
    ldh a, [$08]                                  ; $4eb3: $f0 $08
    ld hl, sp+$08                                 ; $4eb5: $f8 $08
    ld hl, sp+$04                                 ; $4eb7: $f8 $04
    db $fc                                        ; $4eb9: $fc
    inc b                                         ; $4eba: $04
    db $fc                                        ; $4ebb: $fc
    inc d                                         ; $4ebc: $14
    db $fc                                        ; $4ebd: $fc
    jr c, @-$06                                   ; $4ebe: $38 $f8

    ldh a, [$f0]                                  ; $4ec0: $f0 $f0
    ldh a, [$b0]                                  ; $4ec2: $f0 $b0
    ld hl, sp+$28                                 ; $4ec4: $f8 $28
    ld hl, sp+$68                                 ; $4ec6: $f8 $68
    or b                                          ; $4ec8: $b0
    ldh a, [$e0]                                  ; $4ec9: $f0 $e0
    ldh [$c0], a                                  ; $4ecb: $e0 $c0
    ret nz                                        ; $4ecd: $c0

    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    rlca                                          ; $4ed0: $07
    rlca                                          ; $4ed1: $07
    ld [$100f], sp                                ; $4ed2: $08 $0f $10
    rra                                           ; $4ed5: $1f
    ld de, $211f                                  ; $4ed6: $11 $1f $21
    ccf                                           ; $4ed9: $3f
    inc hl                                        ; $4eda: $23
    ld a, $23                                     ; $4edb: $3e $23
    ld a, $13                                     ; $4edd: $3e $13
    ld e, $0f                                     ; $4edf: $1e $0f
    ld c, $07                                     ; $4ee1: $0e $07
    dec b                                         ; $4ee3: $05
    rrca                                          ; $4ee4: $0f
    dec bc                                        ; $4ee5: $0b
    rrca                                          ; $4ee6: $0f
    ld a, [bc]                                    ; $4ee7: $0a
    rlca                                          ; $4ee8: $07
    rlca                                          ; $4ee9: $07
    rrca                                          ; $4eea: $0f
    rrca                                          ; $4eeb: $0f
    dec bc                                        ; $4eec: $0b
    rrca                                          ; $4eed: $0f
    rlca                                          ; $4eee: $07
    rlca                                          ; $4eef: $07
    ret nz                                        ; $4ef0: $c0

    ret nz                                        ; $4ef1: $c0

    jr nz, @-$1e                                  ; $4ef2: $20 $e0

    ret nc                                        ; $4ef4: $d0

    ldh a, [$d0]                                  ; $4ef5: $f0 $d0
    ld [hl], b                                    ; $4ef7: $70
    ldh a, [$30]                                  ; $4ef8: $f0 $30
    ldh a, [$b0]                                  ; $4efa: $f0 $b0
    ldh [$a0], a                                  ; $4efc: $e0 $a0
    ldh [rNR41], a                                ; $4efe: $e0 $20
    ret nz                                        ; $4f00: $c0

    ld b, b                                       ; $4f01: $40
    ldh a, [$f0]                                  ; $4f02: $f0 $f0
    ld hl, sp+$68                                 ; $4f04: $f8 $68
    ld hl, sp+$38                                 ; $4f06: $f8 $38
    ldh a, [$f0]                                  ; $4f08: $f0 $f0
    xor b                                         ; $4f0a: $a8
    ld hl, sp-$38                                 ; $4f0b: $f8 $c8
    ld hl, sp+$70                                 ; $4f0d: $f8 $70
    ld [hl], b                                    ; $4f0f: $70
    rlca                                          ; $4f10: $07
    rlca                                          ; $4f11: $07
    add hl, bc                                    ; $4f12: $09
    rrca                                          ; $4f13: $0f

jr_022_4f14:
    inc de                                        ; $4f14: $13
    rra                                           ; $4f15: $1f
    rla                                           ; $4f16: $17
    inc e                                         ; $4f17: $1c
    cpl                                           ; $4f18: $2f
    jr c, @+$31                                   ; $4f19: $38 $2f

    ld a, [hl-]                                   ; $4f1b: $3a
    cpl                                           ; $4f1c: $2f
    ld a, [hl-]                                   ; $4f1d: $3a
    rra                                           ; $4f1e: $1f
    jr jr_022_4f60                                ; $4f1f: $18 $3f

    inc a                                         ; $4f21: $3c
    ccf                                           ; $4f22: $3f
    dec hl                                        ; $4f23: $2b
    ccf                                           ; $4f24: $3f
    dec a                                         ; $4f25: $3d
    rlca                                          ; $4f26: $07
    ld b, $05                                     ; $4f27: $06 $05
    rlca                                          ; $4f29: $07
    rlca                                          ; $4f2a: $07
    rlca                                          ; $4f2b: $07
    inc b                                         ; $4f2c: $04
    rlca                                          ; $4f2d: $07
    inc bc                                        ; $4f2e: $03
    inc bc                                        ; $4f2f: $03
    ret nz                                        ; $4f30: $c0

    ret nz                                        ; $4f31: $c0

    jr nz, jr_022_4f14                            ; $4f32: $20 $e0

    sub b                                         ; $4f34: $90
    ldh a, [$d0]                                  ; $4f35: $f0 $d0
    ld [hl], b                                    ; $4f37: $70
    ldh a, [$30]                                  ; $4f38: $f0 $30
    ld hl, sp-$58                                 ; $4f3a: $f8 $a8
    ld hl, sp-$78                                 ; $4f3c: $f8 $88
    ldh a, [$30]                                  ; $4f3e: $f0 $30
    ldh [$60], a                                  ; $4f40: $e0 $60
    ld hl, sp-$28                                 ; $4f42: $f8 $d8
    db $fc                                        ; $4f44: $fc
    ld d, h                                       ; $4f45: $54
    db $fc                                        ; $4f46: $fc
    inc [hl]                                      ; $4f47: $34
    ret c                                         ; $4f48: $d8

    ld hl, sp-$50                                 ; $4f49: $f8 $b0
    ldh a, [$e0]                                  ; $4f4b: $f0 $e0
    ldh [$80], a                                  ; $4f4d: $e0 $80
    add b                                         ; $4f4f: $80
    rrca                                          ; $4f50: $0f
    rrca                                          ; $4f51: $0f
    db $10                                        ; $4f52: $10
    rra                                           ; $4f53: $1f
    inc h                                         ; $4f54: $24
    ccf                                           ; $4f55: $3f

jr_022_4f56:
    ld l, $3b                                     ; $4f56: $2e $3b

jr_022_4f58:
    ccf                                           ; $4f58: $3f
    ld sp, $353f                                  ; $4f59: $31 $3f $35
    rra                                           ; $4f5c: $1f
    inc d                                         ; $4f5d: $14
    rra                                           ; $4f5e: $1f
    db $10                                        ; $4f5f: $10

jr_022_4f60:
    rrca                                          ; $4f60: $0f
    add hl, bc                                    ; $4f61: $09
    rlca                                          ; $4f62: $07
    rlca                                          ; $4f63: $07
    rlca                                          ; $4f64: $07
    dec b                                         ; $4f65: $05
    rrca                                          ; $4f66: $0f
    dec bc                                        ; $4f67: $0b
    rrca                                          ; $4f68: $0f
    rrca                                          ; $4f69: $0f
    rra                                           ; $4f6a: $1f
    rra                                           ; $4f6b: $1f
    rla                                           ; $4f6c: $17
    rra                                           ; $4f6d: $1f
    ld c, $0e                                     ; $4f6e: $0e $0e
    add b                                         ; $4f70: $80
    add b                                         ; $4f71: $80
    ld b, b                                       ; $4f72: $40
    ret nz                                        ; $4f73: $c0

    jr nz, jr_022_4f56                            ; $4f74: $20 $e0

    jr nz, jr_022_4f58                            ; $4f76: $20 $e0

    ld d, b                                       ; $4f78: $50
    ldh a, [$f0]                                  ; $4f79: $f0 $f0
    or b                                          ; $4f7b: $b0
    ldh a, [$30]                                  ; $4f7c: $f0 $30
    ldh [$e0], a                                  ; $4f7e: $e0 $e0
    ret nz                                        ; $4f80: $c0

    ret nz                                        ; $4f81: $c0

    ldh a, [$50]                                  ; $4f82: $f0 $50
    ldh a, [$30]                                  ; $4f84: $f0 $30
    ldh a, [$30]                                  ; $4f86: $f0 $30
    ldh [$e0], a                                  ; $4f88: $e0 $e0
    ld d, b                                       ; $4f8a: $50
    ldh a, [$90]                                  ; $4f8b: $f0 $90
    ldh a, [$e0]                                  ; $4f8d: $f0 $e0
    ldh [rIF], a                                  ; $4f8f: $e0 $0f
    rrca                                          ; $4f91: $0f
    db $10                                        ; $4f92: $10
    rra                                           ; $4f93: $1f
    jr nz, jr_022_4fd5                            ; $4f94: $20 $3f

jr_022_4f96:
    jr nz, jr_022_4fd7                            ; $4f96: $20 $3f

jr_022_4f98:
    jr nz, jr_022_4fd9                            ; $4f98: $20 $3f

    ld h, b                                       ; $4f9a: $60
    ld a, a                                       ; $4f9b: $7f
    ld [hl], b                                    ; $4f9c: $70
    ld e, a                                       ; $4f9d: $5f
    jr c, jr_022_4fdf                             ; $4f9e: $38 $3f

    ld a, a                                       ; $4fa0: $7f
    ld a, a                                       ; $4fa1: $7f
    ccf                                           ; $4fa2: $3f
    ld a, [hl+]                                   ; $4fa3: $2a
    rra                                           ; $4fa4: $1f
    inc e                                         ; $4fa5: $1c
    rrca                                          ; $4fa6: $0f
    inc c                                         ; $4fa7: $0c
    dec bc                                        ; $4fa8: $0b
    rrca                                          ; $4fa9: $0f
    rrca                                          ; $4faa: $0f
    rrca                                          ; $4fab: $0f
    add hl, bc                                    ; $4fac: $09
    rrca                                          ; $4fad: $0f
    rlca                                          ; $4fae: $07
    rlca                                          ; $4faf: $07
    add b                                         ; $4fb0: $80
    add b                                         ; $4fb1: $80
    ld b, b                                       ; $4fb2: $40
    ret nz                                        ; $4fb3: $c0

    jr nz, jr_022_4f96                            ; $4fb4: $20 $e0

    jr nz, jr_022_4f98                            ; $4fb6: $20 $e0

    db $10                                        ; $4fb8: $10
    ldh a, [rNR10]                                ; $4fb9: $f0 $10
    ldh a, [$50]                                  ; $4fbb: $f0 $50
    ldh a, [$e0]                                  ; $4fbd: $f0 $e0
    ldh [$c0], a                                  ; $4fbf: $e0 $c0
    ret nz                                        ; $4fc1: $c0

    ldh a, [$b0]                                  ; $4fc2: $f0 $b0
    ld hl, sp+$28                                 ; $4fc4: $f8 $28
    ld hl, sp+$68                                 ; $4fc6: $f8 $68
    or b                                          ; $4fc8: $b0
    ldh a, [$e0]                                  ; $4fc9: $f0 $e0
    ldh [$c0], a                                  ; $4fcb: $e0 $c0
    ret nz                                        ; $4fcd: $c0

    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    inc bc                                        ; $4fd2: $03
    inc bc                                        ; $4fd3: $03
    nop                                           ; $4fd4: $00

jr_022_4fd5:
    inc bc                                        ; $4fd5: $03

jr_022_4fd6:
    inc b                                         ; $4fd6: $04

jr_022_4fd7:
    rlca                                          ; $4fd7: $07
    inc b                                         ; $4fd8: $04

jr_022_4fd9:
    rlca                                          ; $4fd9: $07
    ld [$090f], sp                                ; $4fda: $08 $0f $09
    rrca                                          ; $4fdd: $0f
    dec b                                         ; $4fde: $05

jr_022_4fdf:
    rlca                                          ; $4fdf: $07
    inc bc                                        ; $4fe0: $03
    inc bc                                        ; $4fe1: $03
    inc bc                                        ; $4fe2: $03
    ld bc, $0607                                  ; $4fe3: $01 $07 $06
    inc bc                                        ; $4fe6: $03
    inc bc                                        ; $4fe7: $03
    rlca                                          ; $4fe8: $07
    rlca                                          ; $4fe9: $07
    rlca                                          ; $4fea: $07
    rlca                                          ; $4feb: $07
    inc bc                                        ; $4fec: $03
    inc bc                                        ; $4fed: $03
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    ret nz                                        ; $4ff2: $c0

    ret nz                                        ; $4ff3: $c0

    jr nz, jr_022_4fd6                            ; $4ff4: $20 $e0

    ld d, b                                       ; $4ff6: $50
    ldh a, [$d0]                                  ; $4ff7: $f0 $d0
    or b                                          ; $4ff9: $b0
    ldh a, [$b0]                                  ; $4ffa: $f0 $b0
    ldh [$60], a                                  ; $4ffc: $e0 $60
    ldh [rNR41], a                                ; $4ffe: $e0 $20
    ret nz                                        ; $5000: $c0

    nop                                           ; $5001: $00
    ldh [$e0], a                                  ; $5002: $e0 $e0
    ldh a, [$30]                                  ; $5004: $f0 $30
    ldh [$e0], a                                  ; $5006: $e0 $e0
    sub b                                         ; $5008: $90
    ldh a, [$d0]                                  ; $5009: $f0 $d0
    ldh a, [$60]                                  ; $500b: $f0 $60
    ld h, b                                       ; $500d: $60
    nop                                           ; $500e: $00
    nop                                           ; $500f: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    inc bc                                        ; $5012: $03
    inc bc                                        ; $5013: $03
    nop                                           ; $5014: $00
    inc bc                                        ; $5015: $03
    dec b                                         ; $5016: $05
    rlca                                          ; $5017: $07
    rlca                                          ; $5018: $07
    ld b, $0b                                     ; $5019: $06 $0b
    inc c                                         ; $501b: $0c
    dec bc                                        ; $501c: $0b
    dec c                                         ; $501d: $0d
    rlca                                          ; $501e: $07
    inc b                                         ; $501f: $04
    rrca                                          ; $5020: $0f
    ld c, $1f                                     ; $5021: $0e $1f
    rla                                           ; $5023: $17
    inc bc                                        ; $5024: $03
    ld [bc], a                                    ; $5025: $02
    ld bc, $0303                                  ; $5026: $01 $03 $03
    inc bc                                        ; $5029: $03
    nop                                           ; $502a: $00

jr_022_502b:
    inc bc                                        ; $502b: $03
    inc bc                                        ; $502c: $03
    inc bc                                        ; $502d: $03
    nop                                           ; $502e: $00
    nop                                           ; $502f: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    ret nz                                        ; $5032: $c0

    ret nz                                        ; $5033: $c0

    and b                                         ; $5034: $a0

jr_022_5035:
    ldh [$d0], a                                  ; $5035: $e0 $d0
    ldh a, [$d0]                                  ; $5037: $f0 $d0
    jr nc, jr_022_502b                            ; $5039: $30 $f0

    jr nc, jr_022_5035                            ; $503b: $30 $f8

    ld c, b                                       ; $503d: $48
    ldh a, [$30]                                  ; $503e: $f0 $30
    ldh [rNR41], a                                ; $5040: $e0 $20
    ldh a, [$f0]                                  ; $5042: $f0 $f0
    ld hl, sp+$28                                 ; $5044: $f8 $28
    ldh a, [$f0]                                  ; $5046: $f0 $f0
    and b                                         ; $5048: $a0
    ldh [$c0], a                                  ; $5049: $e0 $c0
    ret nz                                        ; $504b: $c0

    add b                                         ; $504c: $80
    add b                                         ; $504d: $80
    nop                                           ; $504e: $00
    nop                                           ; $504f: $00
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    inc bc                                        ; $5052: $03
    inc bc                                        ; $5053: $03
    inc b                                         ; $5054: $04
    rlca                                          ; $5055: $07
    ld a, [bc]                                    ; $5056: $0a
    rrca                                          ; $5057: $0f

jr_022_5058:
    dec bc                                        ; $5058: $0b
    dec c                                         ; $5059: $0d

jr_022_505a:
    rrca                                          ; $505a: $0f
    inc c                                         ; $505b: $0c
    rlca                                          ; $505c: $07
    ld b, $07                                     ; $505d: $06 $07

jr_022_505f:
    inc b                                         ; $505f: $04
    inc bc                                        ; $5060: $03
    nop                                           ; $5061: $00
    inc bc                                        ; $5062: $03
    inc bc                                        ; $5063: $03
    rlca                                          ; $5064: $07
    rlca                                          ; $5065: $07
    rlca                                          ; $5066: $07
    rlca                                          ; $5067: $07
    rrca                                          ; $5068: $0f
    rrca                                          ; $5069: $0f
    dec bc                                        ; $506a: $0b
    rrca                                          ; $506b: $0f
    ld b, $06                                     ; $506c: $06 $06
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    ret nz                                        ; $5072: $c0

    ret nz                                        ; $5073: $c0

    nop                                           ; $5074: $00
    ret nz                                        ; $5075: $c0

    jr nz, jr_022_5058                            ; $5076: $20 $e0

    jr nz, jr_022_505a                            ; $5078: $20 $e0

    sub b                                         ; $507a: $90
    ldh a, [$f0]                                  ; $507b: $f0 $f0
    jr nc, jr_022_505f                            ; $507d: $30 $e0

    ld h, b                                       ; $507f: $60
    ret nz                                        ; $5080: $c0

    ret nz                                        ; $5081: $c0

    ldh [$60], a                                  ; $5082: $e0 $60
    ldh [rNR41], a                                ; $5084: $e0 $20
    ret nz                                        ; $5086: $c0

    ret nz                                        ; $5087: $c0

    ld h, b                                       ; $5088: $60
    ldh [$a0], a                                  ; $5089: $e0 $a0
    ldh [$c0], a                                  ; $508b: $e0 $c0
    ret nz                                        ; $508d: $c0

    nop                                           ; $508e: $00
    nop                                           ; $508f: $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    inc bc                                        ; $5092: $03
    inc bc                                        ; $5093: $03
    inc b                                         ; $5094: $04
    rlca                                          ; $5095: $07
    ld [$080f], sp                                ; $5096: $08 $0f $08
    rrca                                          ; $5099: $0f

jr_022_509a:
    ld [$1c0f], sp                                ; $509a: $08 $0f $1c
    rla                                           ; $509d: $17
    inc c                                         ; $509e: $0c
    rrca                                          ; $509f: $0f
    rra                                           ; $50a0: $1f
    rra                                           ; $50a1: $1f
    rra                                           ; $50a2: $1f
    ld d, $07                                     ; $50a3: $16 $07
    inc b                                         ; $50a5: $04
    rlca                                          ; $50a6: $07
    rlca                                          ; $50a7: $07
    rlca                                          ; $50a8: $07
    rlca                                          ; $50a9: $07
    dec b                                         ; $50aa: $05
    rlca                                          ; $50ab: $07
    inc bc                                        ; $50ac: $03
    inc bc                                        ; $50ad: $03
    nop                                           ; $50ae: $00
    nop                                           ; $50af: $00
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    ret nz                                        ; $50b2: $c0

    ret nz                                        ; $50b3: $c0

    nop                                           ; $50b4: $00
    ret nz                                        ; $50b5: $c0

    jr nz, @-$1e                                  ; $50b6: $20 $e0

    jr nz, jr_022_509a                            ; $50b8: $20 $e0

    db $10                                        ; $50ba: $10
    ldh a, [rNR10]                                ; $50bb: $f0 $10
    ldh a, [$60]                                  ; $50bd: $f0 $60
    ldh [$c0], a                                  ; $50bf: $e0 $c0
    ret nz                                        ; $50c1: $c0

    ldh [$a0], a                                  ; $50c2: $e0 $a0
    ldh a, [$50]                                  ; $50c4: $f0 $50
    and b                                         ; $50c6: $a0
    ldh [$c0], a                                  ; $50c7: $e0 $c0
    ret nz                                        ; $50c9: $c0

    ret nz                                        ; $50ca: $c0

    ret nz                                        ; $50cb: $c0

    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    nop                                           ; $50ce: $00
    nop                                           ; $50cf: $00

    db $e2, $50, $e5, $50

    db $eb                                        ; $50d4: $eb
    ld d, b                                       ; $50d5: $50
    xor $50                                       ; $50d6: $ee $50
    ld sp, hl                                     ; $50d8: $f9
    ld d, b                                       ; $50d9: $50
    nop                                           ; $50da: $00
    ld d, c                                       ; $50db: $51
    ld [$1c51], sp                                ; $50dc: $08 $51 $1c
    ld d, c                                       ; $50df: $51
    jr z, @+$53                                   ; $50e0: $28 $51

    nop                                           ; $50e2: $00
    rst $38                                       ; $50e3: $ff
    db $fd                                        ; $50e4: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $50eb: $02
    rst $38                                       ; $50ec: $ff
    db $fd                                        ; $50ed: $fd
    ld [bc], a                                    ; $50ee: $02
    inc c                                         ; $50ef: $0c
    inc bc                                        ; $50f0: $03
    inc c                                         ; $50f1: $0c
    inc b                                         ; $50f2: $04
    jr jr_022_50f7                                ; $50f3: $18 $02

    inc c                                         ; $50f5: $0c
    dec b                                         ; $50f6: $05

jr_022_50f7:
    rst $38                                       ; $50f7: $ff
    db $fd                                        ; $50f8: $fd
    ld [bc], a                                    ; $50f9: $02
    jr @+$05                                      ; $50fa: $18 $03

    jr jr_022_5100                                ; $50fc: $18 $02

    jr @-$01                                      ; $50fe: $18 $fd

jr_022_5100:
    nop                                           ; $5100: $00
    ld a, [bc]                                    ; $5101: $0a
    ld b, $1e                                     ; $5102: $06 $1e
    nop                                           ; $5104: $00
    ld a, [bc]                                    ; $5105: $0a
    cp $01                                        ; $5106: $fe $01
    nop                                           ; $5108: $00
    ld a, [bc]                                    ; $5109: $0a
    rlca                                          ; $510a: $07
    ld a, [bc]                                    ; $510b: $0a
    nop                                           ; $510c: $00
    inc bc                                        ; $510d: $03
    ld [$000a], sp                                ; $510e: $08 $0a $00
    inc bc                                        ; $5111: $03
    rlca                                          ; $5112: $07
    ld a, [bc]                                    ; $5113: $0a
    nop                                           ; $5114: $00
    inc bc                                        ; $5115: $03
    ld [$000a], sp                                ; $5116: $08 $0a $00
    ld a, [bc]                                    ; $5119: $0a
    cp $01                                        ; $511a: $fe $01
    nop                                           ; $511c: $00
    ld a, [bc]                                    ; $511d: $0a
    add hl, bc                                    ; $511e: $09
    ld [$0800], sp                                ; $511f: $08 $00 $08
    add hl, bc                                    ; $5122: $09
    ld [$0a00], sp                                ; $5123: $08 $00 $0a
    cp $01                                        ; $5126: $fe $01
    ld [bc], a                                    ; $5128: $02
    ld [de], a                                    ; $5129: $12
    inc bc                                        ; $512a: $03
    ld [de], a                                    ; $512b: $12
    ld [bc], a                                    ; $512c: $02
    ld e, $05                                     ; $512d: $1e $05
    ld [de], a                                    ; $512f: $12
    db $fd                                        ; $5130: $fd

    db $07, $04, $39, $51, $50, $57, $39, $51, $50, $51, $50, $52, $50, $52, $50, $52

    ld d, b                                       ; $5141: $50
    ld d, d                                       ; $5142: $52
    ld d, b                                       ; $5143: $50
    ld d, d                                       ; $5144: $52
    ld d, b                                       ; $5145: $50
    ld d, e                                       ; $5146: $53
    ld d, b                                       ; $5147: $50
    ld d, h                                       ; $5148: $54
    ld d, b                                       ; $5149: $50
    ld d, l                                       ; $514a: $55
    ld d, b                                       ; $514b: $50
    ld d, [hl]                                    ; $514c: $56
    nop                                           ; $514d: $00
    nop                                           ; $514e: $00
    nop                                           ; $514f: $00
    rlca                                          ; $5150: $07
    rlca                                          ; $5151: $07
    ld [$110f], sp                                ; $5152: $08 $0f $11
    rra                                           ; $5155: $1f
    ld de, $171f                                  ; $5156: $11 $1f $17
    rra                                           ; $5159: $1f
    rra                                           ; $515a: $1f
    add hl, de                                    ; $515b: $19
    rrca                                          ; $515c: $0f
    ld [$0c0f], sp                                ; $515d: $08 $0f $0c
    rlca                                          ; $5160: $07
    ld b, $07                                     ; $5161: $06 $07
    dec b                                         ; $5163: $05
    rlca                                          ; $5164: $07
    rlca                                          ; $5165: $07
    rrca                                          ; $5166: $0f
    ld a, [bc]                                    ; $5167: $0a
    rra                                           ; $5168: $1f
    inc d                                         ; $5169: $14
    rra                                           ; $516a: $1f
    rra                                           ; $516b: $1f
    rra                                           ; $516c: $1f
    rra                                           ; $516d: $1f
    ld c, $0e                                     ; $516e: $0e $0e
    ret nz                                        ; $5170: $c0

    ret nz                                        ; $5171: $c0

    and b                                         ; $5172: $a0
    ldh [$d0], a                                  ; $5173: $e0 $d0
    ld [hl], b                                    ; $5175: $70
    ret nc                                        ; $5176: $d0

    ld [hl], b                                    ; $5177: $70
    ldh a, [$30]                                  ; $5178: $f0 $30
    ldh a, [$50]                                  ; $517a: $f0 $50
    ldh a, [$50]                                  ; $517c: $f0 $50
    ldh a, [rNR10]                                ; $517e: $f0 $10
    ldh a, [rNR10]                                ; $5180: $f0 $10
    ldh a, [$30]                                  ; $5182: $f0 $30
    ld hl, sp-$18                                 ; $5184: $f8 $e8
    ld hl, sp+$78                                 ; $5186: $f8 $78
    ldh [rNR41], a                                ; $5188: $e0 $20
    ret nc                                        ; $518a: $d0

    ldh a, [$90]                                  ; $518b: $f0 $90
    ldh a, [$e0]                                  ; $518d: $f0 $e0
    ldh [rTAC], a                                 ; $518f: $e0 $07
    rlca                                          ; $5191: $07
    ld [$090f], sp                                ; $5192: $08 $0f $09
    rrca                                          ; $5195: $0f
    dec bc                                        ; $5196: $0b
    ld c, $1f                                     ; $5197: $0e $1f
    inc e                                         ; $5199: $1c
    ccf                                           ; $519a: $3f
    ld a, [hl+]                                   ; $519b: $2a
    ccf                                           ; $519c: $3f
    ld [hl+], a                                   ; $519d: $22
    rra                                           ; $519e: $1f
    jr @+$41                                      ; $519f: $18 $3f

    jr c, jr_022_5222                             ; $51a1: $38 $7f

    ld d, h                                       ; $51a3: $54
    ld a, a                                       ; $51a4: $7f
    ld a, e                                       ; $51a5: $7b
    rrca                                          ; $51a6: $0f
    ld a, [bc]                                    ; $51a7: $0a
    rrca                                          ; $51a8: $0f
    inc c                                         ; $51a9: $0c
    rrca                                          ; $51aa: $0f
    rrca                                          ; $51ab: $0f
    add hl, bc                                    ; $51ac: $09
    rrca                                          ; $51ad: $0f
    rlca                                          ; $51ae: $07
    rlca                                          ; $51af: $07
    ret nz                                        ; $51b0: $c0

    ret nz                                        ; $51b1: $c0

    and b                                         ; $51b2: $a0
    ldh [$e0], a                                  ; $51b3: $e0 $e0
    ld h, b                                       ; $51b5: $60
    ldh [$60], a                                  ; $51b6: $e0 $60
    ldh a, [$30]                                  ; $51b8: $f0 $30
    ld hl, sp-$58                                 ; $51ba: $f8 $a8
    ld hl, sp-$78                                 ; $51bc: $f8 $88
    ldh a, [$30]                                  ; $51be: $f0 $30
    ldh [rNR41], a                                ; $51c0: $e0 $20
    ldh a, [$50]                                  ; $51c2: $f0 $50
    ld hl, sp-$68                                 ; $51c4: $f8 $98
    db $fc                                        ; $51c6: $fc
    or h                                          ; $51c7: $b4
    db $ec                                        ; $51c8: $ec
    ld l, h                                       ; $51c9: $6c
    ldh [$e0], a                                  ; $51ca: $e0 $e0
    ret nz                                        ; $51cc: $c0

    ret nz                                        ; $51cd: $c0

    nop                                           ; $51ce: $00
    nop                                           ; $51cf: $00
    inc bc                                        ; $51d0: $03
    inc bc                                        ; $51d1: $03
    ld b, $07                                     ; $51d2: $06 $07
    rrca                                          ; $51d4: $0f
    dec c                                         ; $51d5: $0d
    rrca                                          ; $51d6: $0f
    dec c                                         ; $51d7: $0d
    rrca                                          ; $51d8: $0f
    ld [$0a0f], sp                                ; $51d9: $08 $0f $0a
    rrca                                          ; $51dc: $0f
    ld a, [bc]                                    ; $51dd: $0a
    rrca                                          ; $51de: $0f
    ld [$080f], sp                                ; $51df: $08 $0f $08
    rlca                                          ; $51e2: $07
    inc b                                         ; $51e3: $04
    rlca                                          ; $51e4: $07
    rlca                                          ; $51e5: $07
    rlca                                          ; $51e6: $07
    dec b                                         ; $51e7: $05
    rrca                                          ; $51e8: $0f
    ld a, [bc]                                    ; $51e9: $0a
    rrca                                          ; $51ea: $0f
    rrca                                          ; $51eb: $0f
    rrca                                          ; $51ec: $0f
    rrca                                          ; $51ed: $0f
    rlca                                          ; $51ee: $07
    rlca                                          ; $51ef: $07
    ldh [$e0], a                                  ; $51f0: $e0 $e0
    db $10                                        ; $51f2: $10
    ldh a, [$08]                                  ; $51f3: $f0 $08
    ld hl, sp+$08                                 ; $51f5: $f8 $08
    ld hl, sp-$18                                 ; $51f7: $f8 $e8
    ld hl, sp-$08                                 ; $51f9: $f8 $f8
    sbc b                                         ; $51fb: $98
    ldh a, [rNR10]                                ; $51fc: $f0 $10
    ldh a, [$30]                                  ; $51fe: $f0 $30
    ldh [$60], a                                  ; $5200: $e0 $60
    ldh [$a0], a                                  ; $5202: $e0 $a0
    ldh a, [$d0]                                  ; $5204: $f0 $d0
    ldh a, [rSVBK]                                ; $5206: $f0 $70
    ldh a, [$30]                                  ; $5208: $f0 $30
    add sp, -$08                                  ; $520a: $e8 $f8
    ret z                                         ; $520c: $c8

    ld hl, sp+$70                                 ; $520d: $f8 $70
    ld [hl], b                                    ; $520f: $70
    rlca                                          ; $5210: $07
    rlca                                          ; $5211: $07
    ld [$080f], sp                                ; $5212: $08 $0f $08
    rrca                                          ; $5215: $0f

jr_022_5216:
    ld [$180f], sp                                ; $5216: $08 $0f $18
    rra                                           ; $5219: $1f
    jr c, @+$31                                   ; $521a: $38 $2f

    inc a                                         ; $521c: $3c
    daa                                           ; $521d: $27
    rra                                           ; $521e: $1f
    dec de                                        ; $521f: $1b
    ld a, a                                       ; $5220: $7f
    ld a, b                                       ; $5221: $78

jr_022_5222:
    ld a, a                                       ; $5222: $7f
    ld d, h                                       ; $5223: $54

jr_022_5224:
    ccf                                           ; $5224: $3f
    dec sp                                        ; $5225: $3b
    rrca                                          ; $5226: $0f
    ld [$0f0f], sp                                ; $5227: $08 $0f $0f

jr_022_522a:
    rrca                                          ; $522a: $0f
    rrca                                          ; $522b: $0f
    add hl, bc                                    ; $522c: $09
    rrca                                          ; $522d: $0f
    rlca                                          ; $522e: $07
    rlca                                          ; $522f: $07
    ret nz                                        ; $5230: $c0

    ret nz                                        ; $5231: $c0

    jr nz, @-$1e                                  ; $5232: $20 $e0

    jr nz, jr_022_5216                            ; $5234: $20 $e0

    jr nz, @-$1e                                  ; $5236: $20 $e0

    jr nc, jr_022_522a                            ; $5238: $30 $f0

    jr c, jr_022_5224                             ; $523a: $38 $e8

    ld a, b                                       ; $523c: $78
    ret z                                         ; $523d: $c8

    ldh a, [$b0]                                  ; $523e: $f0 $b0
    ldh [rNR41], a                                ; $5240: $e0 $20
    ldh a, [$50]                                  ; $5242: $f0 $50
    ld hl, sp-$68                                 ; $5244: $f8 $98
    db $fc                                        ; $5246: $fc
    inc [hl]                                      ; $5247: $34
    db $ec                                        ; $5248: $ec
    db $ec                                        ; $5249: $ec
    ldh [$e0], a                                  ; $524a: $e0 $e0
    ret nz                                        ; $524c: $c0

    ret nz                                        ; $524d: $c0

    nop                                           ; $524e: $00
    nop                                           ; $524f: $00
    rlca                                          ; $5250: $07
    rlca                                          ; $5251: $07
    ld [$110f], sp                                ; $5252: $08 $0f $11
    rra                                           ; $5255: $1f
    ld de, $171f                                  ; $5256: $11 $1f $17
    rra                                           ; $5259: $1f
    rra                                           ; $525a: $1f
    add hl, de                                    ; $525b: $19
    rrca                                          ; $525c: $0f
    ld [$0c0f], sp                                ; $525d: $08 $0f $0c
    rlca                                          ; $5260: $07
    ld b, $07                                     ; $5261: $06 $07
    dec b                                         ; $5263: $05
    rrca                                          ; $5264: $0f
    dec bc                                        ; $5265: $0b
    rrca                                          ; $5266: $0f
    ld c, $0f                                     ; $5267: $0e $0f
    inc c                                         ; $5269: $0c
    rla                                           ; $526a: $17
    rra                                           ; $526b: $1f
    inc de                                        ; $526c: $13
    rra                                           ; $526d: $1f
    ld c, $0e                                     ; $526e: $0e $0e
    ret nz                                        ; $5270: $c0

    ret nz                                        ; $5271: $c0

    and b                                         ; $5272: $a0
    ldh [$d0], a                                  ; $5273: $e0 $d0
    ld [hl], b                                    ; $5275: $70
    ret nc                                        ; $5276: $d0

    ld [hl], b                                    ; $5277: $70
    ldh a, [$30]                                  ; $5278: $f0 $30
    ldh a, [$50]                                  ; $527a: $f0 $50
    ldh a, [$50]                                  ; $527c: $f0 $50
    ldh a, [rNR10]                                ; $527e: $f0 $10
    ldh a, [rNR10]                                ; $5280: $f0 $10
    ldh [rNR41], a                                ; $5282: $e0 $20
    ldh [$e0], a                                  ; $5284: $e0 $e0
    ldh [$a0], a                                  ; $5286: $e0 $a0
    ldh a, [$50]                                  ; $5288: $f0 $50
    ldh a, [$f0]                                  ; $528a: $f0 $f0
    ldh a, [$f0]                                  ; $528c: $f0 $f0
    ldh [$e0], a                                  ; $528e: $e0 $e0
    rlca                                          ; $5290: $07
    rlca                                          ; $5291: $07
    ld [$090f], sp                                ; $5292: $08 $0f $09
    rrca                                          ; $5295: $0f
    dec bc                                        ; $5296: $0b
    ld c, $1f                                     ; $5297: $0e $1f
    inc e                                         ; $5299: $1c
    ccf                                           ; $529a: $3f
    ld a, [hl+]                                   ; $529b: $2a
    ccf                                           ; $529c: $3f
    ld [hl+], a                                   ; $529d: $22
    rra                                           ; $529e: $1f
    jr @+$11                                      ; $529f: $18 $0f

    ld [$141f], sp                                ; $52a1: $08 $1f $14
    ccf                                           ; $52a4: $3f
    inc sp                                        ; $52a5: $33
    ld a, a                                       ; $52a6: $7f
    ld e, d                                       ; $52a7: $5a
    ld l, a                                       ; $52a8: $6f
    ld l, h                                       ; $52a9: $6c
    rrca                                          ; $52aa: $0f
    rrca                                          ; $52ab: $0f
    rlca                                          ; $52ac: $07
    rlca                                          ; $52ad: $07

jr_022_52ae:
    ld bc, $c001                                  ; $52ae: $01 $01 $c0
    ret nz                                        ; $52b1: $c0

    and b                                         ; $52b2: $a0
    ldh [$e0], a                                  ; $52b3: $e0 $e0
    ld h, b                                       ; $52b5: $60
    ldh [$60], a                                  ; $52b6: $e0 $60
    ldh a, [$30]                                  ; $52b8: $f0 $30
    ld hl, sp-$58                                 ; $52ba: $f8 $a8
    ld hl, sp-$78                                 ; $52bc: $f8 $88
    ldh a, [$30]                                  ; $52be: $f0 $30
    ld hl, sp+$38                                 ; $52c0: $f8 $38
    db $fc                                        ; $52c2: $fc
    ld d, h                                       ; $52c3: $54
    db $fc                                        ; $52c4: $fc
    cp h                                          ; $52c5: $bc
    ldh [$a0], a                                  ; $52c6: $e0 $a0
    ldh [$60], a                                  ; $52c8: $e0 $60
    ldh [$e0], a                                  ; $52ca: $e0 $e0
    jr nz, jr_022_52ae                            ; $52cc: $20 $e0

    ret nz                                        ; $52ce: $c0

    ret nz                                        ; $52cf: $c0

    inc bc                                        ; $52d0: $03
    inc bc                                        ; $52d1: $03
    ld b, $07                                     ; $52d2: $06 $07
    rrca                                          ; $52d4: $0f
    dec c                                         ; $52d5: $0d
    rrca                                          ; $52d6: $0f
    dec c                                         ; $52d7: $0d
    rrca                                          ; $52d8: $0f
    ld [$0a0f], sp                                ; $52d9: $08 $0f $0a
    rrca                                          ; $52dc: $0f
    ld a, [bc]                                    ; $52dd: $0a
    rrca                                          ; $52de: $0f
    ld [$080f], sp                                ; $52df: $08 $0f $08
    rrca                                          ; $52e2: $0f
    inc c                                         ; $52e3: $0c
    rra                                           ; $52e4: $1f
    rla                                           ; $52e5: $17
    rra                                           ; $52e6: $1f
    ld e, $07                                     ; $52e7: $1e $07
    inc b                                         ; $52e9: $04
    dec bc                                        ; $52ea: $0b
    rrca                                          ; $52eb: $0f
    add hl, bc                                    ; $52ec: $09
    rrca                                          ; $52ed: $0f
    rlca                                          ; $52ee: $07
    rlca                                          ; $52ef: $07
    ldh [$e0], a                                  ; $52f0: $e0 $e0
    db $10                                        ; $52f2: $10
    ldh a, [$08]                                  ; $52f3: $f0 $08
    ld hl, sp+$08                                 ; $52f5: $f8 $08
    ld hl, sp-$18                                 ; $52f7: $f8 $e8
    ld hl, sp-$08                                 ; $52f9: $f8 $f8
    sbc b                                         ; $52fb: $98
    ldh a, [rNR10]                                ; $52fc: $f0 $10
    ldh a, [$30]                                  ; $52fe: $f0 $30
    ldh [$60], a                                  ; $5300: $e0 $60
    ldh [$a0], a                                  ; $5302: $e0 $a0
    ldh [$e0], a                                  ; $5304: $e0 $e0
    ldh a, [$50]                                  ; $5306: $f0 $50
    ld hl, sp+$28                                 ; $5308: $f8 $28
    ld hl, sp-$08                                 ; $530a: $f8 $f8
    ld hl, sp-$08                                 ; $530c: $f8 $f8
    ld [hl], b                                    ; $530e: $70
    ld [hl], b                                    ; $530f: $70
    rlca                                          ; $5310: $07
    rlca                                          ; $5311: $07
    ld [$080f], sp                                ; $5312: $08 $0f $08
    rrca                                          ; $5315: $0f

jr_022_5316:
    ld [$180f], sp                                ; $5316: $08 $0f $18
    rra                                           ; $5319: $1f
    jr c, @+$31                                   ; $531a: $38 $2f

    inc a                                         ; $531c: $3c
    daa                                           ; $531d: $27
    rra                                           ; $531e: $1f
    dec de                                        ; $531f: $1b
    rrca                                          ; $5320: $0f
    ld [$141f], sp                                ; $5321: $08 $1f $14

jr_022_5324:
    ccf                                           ; $5324: $3f
    inc sp                                        ; $5325: $33
    ld a, a                                       ; $5326: $7f
    ld e, b                                       ; $5327: $58
    ld l, a                                       ; $5328: $6f
    ld l, a                                       ; $5329: $6f

jr_022_532a:
    rrca                                          ; $532a: $0f
    rrca                                          ; $532b: $0f
    rlca                                          ; $532c: $07
    rlca                                          ; $532d: $07

jr_022_532e:
    ld bc, $c001                                  ; $532e: $01 $01 $c0
    ret nz                                        ; $5331: $c0

    jr nz, @-$1e                                  ; $5332: $20 $e0

    jr nz, jr_022_5316                            ; $5334: $20 $e0

    jr nz, @-$1e                                  ; $5336: $20 $e0

    jr nc, jr_022_532a                            ; $5338: $30 $f0

    jr c, jr_022_5324                             ; $533a: $38 $e8

    ld a, b                                       ; $533c: $78
    ret z                                         ; $533d: $c8

    ldh a, [$b0]                                  ; $533e: $f0 $b0
    db $fc                                        ; $5340: $fc
    inc a                                         ; $5341: $3c
    db $fc                                        ; $5342: $fc
    ld d, h                                       ; $5343: $54
    ld hl, sp-$48                                 ; $5344: $f8 $b8
    ldh [rNR41], a                                ; $5346: $e0 $20
    ldh [$e0], a                                  ; $5348: $e0 $e0
    ldh [$e0], a                                  ; $534a: $e0 $e0
    jr nz, jr_022_532e                            ; $534c: $20 $e0

    ret nz                                        ; $534e: $c0

    ret nz                                        ; $534f: $c0

    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    rlca                                          ; $5352: $07
    rlca                                          ; $5353: $07
    ld [$110f], sp                                ; $5354: $08 $0f $11
    rra                                           ; $5357: $1f
    ld de, $171f                                  ; $5358: $11 $1f $17
    rra                                           ; $535b: $1f
    rra                                           ; $535c: $1f
    add hl, de                                    ; $535d: $19
    rrca                                          ; $535e: $0f
    ld [$0c0f], sp                                ; $535f: $08 $0f $0c
    rlca                                          ; $5362: $07
    ld b, $07                                     ; $5363: $06 $07
    rlca                                          ; $5365: $07
    rrca                                          ; $5366: $0f
    ld a, [bc]                                    ; $5367: $0a
    rra                                           ; $5368: $1f
    inc d                                         ; $5369: $14
    rra                                           ; $536a: $1f
    rra                                           ; $536b: $1f
    rra                                           ; $536c: $1f
    rra                                           ; $536d: $1f
    ld c, $0e                                     ; $536e: $0e $0e
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    ret nz                                        ; $5372: $c0

    ret nz                                        ; $5373: $c0

    and b                                         ; $5374: $a0
    ldh [$d0], a                                  ; $5375: $e0 $d0
    ld [hl], b                                    ; $5377: $70
    ret nc                                        ; $5378: $d0

    ld [hl], b                                    ; $5379: $70
    ldh a, [$30]                                  ; $537a: $f0 $30
    ldh a, [$50]                                  ; $537c: $f0 $50
    ldh a, [$50]                                  ; $537e: $f0 $50
    ldh a, [rNR10]                                ; $5380: $f0 $10
    ldh a, [rNR10]                                ; $5382: $f0 $10
    ld hl, sp-$18                                 ; $5384: $f8 $e8
    ld hl, sp+$78                                 ; $5386: $f8 $78
    ldh [rNR41], a                                ; $5388: $e0 $20
    ret nc                                        ; $538a: $d0

    ldh a, [$90]                                  ; $538b: $f0 $90
    ldh a, [$e0]                                  ; $538d: $f0 $e0
    ldh [rP1], a                                  ; $538f: $e0 $00
    nop                                           ; $5391: $00
    rlca                                          ; $5392: $07
    rlca                                          ; $5393: $07
    ld [$090f], sp                                ; $5394: $08 $0f $09
    rrca                                          ; $5397: $0f
    dec bc                                        ; $5398: $0b
    ld c, $1f                                     ; $5399: $0e $1f
    inc e                                         ; $539b: $1c
    ccf                                           ; $539c: $3f
    ld a, [hl+]                                   ; $539d: $2a
    ccf                                           ; $539e: $3f
    ld [hl+], a                                   ; $539f: $22
    rra                                           ; $53a0: $1f
    jr @+$41                                      ; $53a1: $18 $3f

    jr c, jr_022_5424                             ; $53a3: $38 $7f

    ld a, e                                       ; $53a5: $7b
    rrca                                          ; $53a6: $0f
    ld a, [bc]                                    ; $53a7: $0a
    rrca                                          ; $53a8: $0f
    inc c                                         ; $53a9: $0c
    rrca                                          ; $53aa: $0f
    rrca                                          ; $53ab: $0f
    add hl, bc                                    ; $53ac: $09
    rrca                                          ; $53ad: $0f
    rlca                                          ; $53ae: $07
    rlca                                          ; $53af: $07
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    ret nz                                        ; $53b2: $c0

    ret nz                                        ; $53b3: $c0

    and b                                         ; $53b4: $a0
    ldh [$e0], a                                  ; $53b5: $e0 $e0
    ld h, b                                       ; $53b7: $60
    ldh [$60], a                                  ; $53b8: $e0 $60
    ldh a, [$30]                                  ; $53ba: $f0 $30
    ld hl, sp-$58                                 ; $53bc: $f8 $a8
    ld hl, sp-$78                                 ; $53be: $f8 $88
    ldh a, [$30]                                  ; $53c0: $f0 $30
    ldh [rNR41], a                                ; $53c2: $e0 $20
    ld hl, sp-$68                                 ; $53c4: $f8 $98
    db $fc                                        ; $53c6: $fc
    or h                                          ; $53c7: $b4
    db $ec                                        ; $53c8: $ec
    ld l, h                                       ; $53c9: $6c
    ldh [$e0], a                                  ; $53ca: $e0 $e0
    ret nz                                        ; $53cc: $c0

    ret nz                                        ; $53cd: $c0

    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    inc bc                                        ; $53d2: $03
    inc bc                                        ; $53d3: $03
    ld b, $07                                     ; $53d4: $06 $07
    rrca                                          ; $53d6: $0f
    dec c                                         ; $53d7: $0d
    rrca                                          ; $53d8: $0f
    dec c                                         ; $53d9: $0d
    rrca                                          ; $53da: $0f
    ld [$0a0f], sp                                ; $53db: $08 $0f $0a
    rrca                                          ; $53de: $0f
    ld a, [bc]                                    ; $53df: $0a
    rrca                                          ; $53e0: $0f
    ld [$080f], sp                                ; $53e1: $08 $0f $08
    rlca                                          ; $53e4: $07
    rlca                                          ; $53e5: $07
    rlca                                          ; $53e6: $07
    dec b                                         ; $53e7: $05
    rrca                                          ; $53e8: $0f
    ld a, [bc]                                    ; $53e9: $0a
    rrca                                          ; $53ea: $0f
    rrca                                          ; $53eb: $0f
    rrca                                          ; $53ec: $0f
    rrca                                          ; $53ed: $0f
    rlca                                          ; $53ee: $07
    rlca                                          ; $53ef: $07
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    ldh [$e0], a                                  ; $53f2: $e0 $e0
    db $10                                        ; $53f4: $10
    ldh a, [$08]                                  ; $53f5: $f0 $08
    ld hl, sp+$08                                 ; $53f7: $f8 $08
    ld hl, sp-$18                                 ; $53f9: $f8 $e8
    ld hl, sp-$08                                 ; $53fb: $f8 $f8
    sbc b                                         ; $53fd: $98
    ldh a, [rNR10]                                ; $53fe: $f0 $10
    ldh a, [$30]                                  ; $5400: $f0 $30
    ldh [$60], a                                  ; $5402: $e0 $60
    ldh a, [$d0]                                  ; $5404: $f0 $d0
    ldh a, [rSVBK]                                ; $5406: $f0 $70
    ldh a, [$30]                                  ; $5408: $f0 $30
    add sp, -$08                                  ; $540a: $e8 $f8
    ret z                                         ; $540c: $c8

    ld hl, sp+$70                                 ; $540d: $f8 $70
    ld [hl], b                                    ; $540f: $70
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    rlca                                          ; $5412: $07
    rlca                                          ; $5413: $07
    ld [$080f], sp                                ; $5414: $08 $0f $08
    rrca                                          ; $5417: $0f

jr_022_5418:
    ld [$180f], sp                                ; $5418: $08 $0f $18
    rra                                           ; $541b: $1f
    jr c, jr_022_544d                             ; $541c: $38 $2f

    inc a                                         ; $541e: $3c
    daa                                           ; $541f: $27
    rra                                           ; $5420: $1f
    dec de                                        ; $5421: $1b
    ld a, a                                       ; $5422: $7f
    ld a, b                                       ; $5423: $78

jr_022_5424:
    ccf                                           ; $5424: $3f
    dec sp                                        ; $5425: $3b

jr_022_5426:
    rrca                                          ; $5426: $0f
    ld [$0f0f], sp                                ; $5427: $08 $0f $0f
    rrca                                          ; $542a: $0f
    rrca                                          ; $542b: $0f

jr_022_542c:
    add hl, bc                                    ; $542c: $09
    rrca                                          ; $542d: $0f
    rlca                                          ; $542e: $07
    rlca                                          ; $542f: $07
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    ret nz                                        ; $5432: $c0

    ret nz                                        ; $5433: $c0

    jr nz, @-$1e                                  ; $5434: $20 $e0

    jr nz, jr_022_5418                            ; $5436: $20 $e0

    jr nz, @-$1e                                  ; $5438: $20 $e0

    jr nc, jr_022_542c                            ; $543a: $30 $f0

    jr c, jr_022_5426                             ; $543c: $38 $e8

    ld a, b                                       ; $543e: $78
    ret z                                         ; $543f: $c8

    ldh a, [$b0]                                  ; $5440: $f0 $b0
    ldh [rNR41], a                                ; $5442: $e0 $20
    ld hl, sp-$68                                 ; $5444: $f8 $98
    db $fc                                        ; $5446: $fc
    inc [hl]                                      ; $5447: $34
    db $ec                                        ; $5448: $ec
    db $ec                                        ; $5449: $ec
    ldh [$e0], a                                  ; $544a: $e0 $e0
    ret nz                                        ; $544c: $c0

jr_022_544d:
    ret nz                                        ; $544d: $c0

    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    inc bc                                        ; $5450: $03
    inc bc                                        ; $5451: $03
    inc b                                         ; $5452: $04
    rlca                                          ; $5453: $07
    ld [$080f], sp                                ; $5454: $08 $0f $08
    rrca                                          ; $5457: $0f
    dec bc                                        ; $5458: $0b
    rrca                                          ; $5459: $0f
    rrca                                          ; $545a: $0f
    inc c                                         ; $545b: $0c
    rlca                                          ; $545c: $07
    inc b                                         ; $545d: $04
    rlca                                          ; $545e: $07
    ld b, $03                                     ; $545f: $06 $03
    inc bc                                        ; $5461: $03
    rlca                                          ; $5462: $07
    dec b                                         ; $5463: $05
    rlca                                          ; $5464: $07
    rlca                                          ; $5465: $07
    rrca                                          ; $5466: $0f
    ld a, [bc]                                    ; $5467: $0a
    rra                                           ; $5468: $1f
    inc d                                         ; $5469: $14
    rra                                           ; $546a: $1f
    rra                                           ; $546b: $1f
    rra                                           ; $546c: $1f
    rra                                           ; $546d: $1f
    ld c, $0e                                     ; $546e: $0e $0e
    ldh [$e0], a                                  ; $5470: $e0 $e0
    ld d, b                                       ; $5472: $50
    ldh a, [$e8]                                  ; $5473: $f0 $e8
    cp b                                          ; $5475: $b8
    add sp, -$48                                  ; $5476: $e8 $b8
    ld hl, sp-$68                                 ; $5478: $f8 $98
    ld hl, sp-$58                                 ; $547a: $f8 $a8
    ld hl, sp+$28                                 ; $547c: $f8 $28
    ld hl, sp+$08                                 ; $547e: $f8 $08
    ld hl, sp+$08                                 ; $5480: $f8 $08
    ldh a, [$30]                                  ; $5482: $f0 $30
    ld hl, sp-$18                                 ; $5484: $f8 $e8
    ld hl, sp+$78                                 ; $5486: $f8 $78
    ldh [rNR41], a                                ; $5488: $e0 $20
    ret nc                                        ; $548a: $d0

    ldh a, [$90]                                  ; $548b: $f0 $90
    ldh a, [$e0]                                  ; $548d: $f0 $e0
    ldh [$03], a                                  ; $548f: $e0 $03
    inc bc                                        ; $5491: $03
    inc b                                         ; $5492: $04
    rlca                                          ; $5493: $07
    inc b                                         ; $5494: $04
    rlca                                          ; $5495: $07
    dec b                                         ; $5496: $05
    rlca                                          ; $5497: $07
    rrca                                          ; $5498: $0f
    ld c, $1f                                     ; $5499: $0e $1f
    dec d                                         ; $549b: $15
    rra                                           ; $549c: $1f
    ld de, $0c0f                                  ; $549d: $11 $0f $0c
    rra                                           ; $54a0: $1f
    inc e                                         ; $54a1: $1c
    ld a, a                                       ; $54a2: $7f
    ld d, h                                       ; $54a3: $54
    ld a, a                                       ; $54a4: $7f
    ld a, e                                       ; $54a5: $7b
    rrca                                          ; $54a6: $0f
    ld a, [bc]                                    ; $54a7: $0a
    rrca                                          ; $54a8: $0f
    inc c                                         ; $54a9: $0c
    rrca                                          ; $54aa: $0f
    rrca                                          ; $54ab: $0f
    add hl, bc                                    ; $54ac: $09
    rrca                                          ; $54ad: $0f
    rlca                                          ; $54ae: $07
    rlca                                          ; $54af: $07
    ldh [$e0], a                                  ; $54b0: $e0 $e0
    ld d, b                                       ; $54b2: $50
    ldh a, [$f0]                                  ; $54b3: $f0 $f0
    or b                                          ; $54b5: $b0
    ldh a, [$30]                                  ; $54b6: $f0 $30
    ld hl, sp+$18                                 ; $54b8: $f8 $18
    db $fc                                        ; $54ba: $fc
    ld d, h                                       ; $54bb: $54
    db $fc                                        ; $54bc: $fc
    ld b, h                                       ; $54bd: $44
    ld hl, sp+$18                                 ; $54be: $f8 $18
    ldh a, [rNR10]                                ; $54c0: $f0 $10
    ldh a, [$50]                                  ; $54c2: $f0 $50
    ld hl, sp-$68                                 ; $54c4: $f8 $98
    db $fc                                        ; $54c6: $fc
    or h                                          ; $54c7: $b4
    db $ec                                        ; $54c8: $ec
    ld l, h                                       ; $54c9: $6c
    ldh [$e0], a                                  ; $54ca: $e0 $e0
    ret nz                                        ; $54cc: $c0

    ret nz                                        ; $54cd: $c0

    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    ld bc, $0301                                  ; $54d0: $01 $01 $03
    inc bc                                        ; $54d3: $03
    rlca                                          ; $54d4: $07
    ld b, $07                                     ; $54d5: $06 $07
    ld b, $07                                     ; $54d7: $06 $07
    inc b                                         ; $54d9: $04
    rlca                                          ; $54da: $07
    dec b                                         ; $54db: $05
    rlca                                          ; $54dc: $07
    dec b                                         ; $54dd: $05
    rlca                                          ; $54de: $07
    inc b                                         ; $54df: $04
    rlca                                          ; $54e0: $07
    inc b                                         ; $54e1: $04
    rlca                                          ; $54e2: $07
    inc b                                         ; $54e3: $04
    rlca                                          ; $54e4: $07
    rlca                                          ; $54e5: $07
    rlca                                          ; $54e6: $07
    dec b                                         ; $54e7: $05
    rrca                                          ; $54e8: $0f
    ld a, [bc]                                    ; $54e9: $0a
    rrca                                          ; $54ea: $0f
    rrca                                          ; $54eb: $0f
    rrca                                          ; $54ec: $0f
    rrca                                          ; $54ed: $0f
    rlca                                          ; $54ee: $07
    rlca                                          ; $54ef: $07
    ldh a, [$f0]                                  ; $54f0: $f0 $f0
    ld [$84f8], sp                                ; $54f2: $08 $f8 $84
    db $fc                                        ; $54f5: $fc
    add h                                         ; $54f6: $84
    db $fc                                        ; $54f7: $fc
    db $f4                                        ; $54f8: $f4
    ld a, h                                       ; $54f9: $7c
    db $fc                                        ; $54fa: $fc
    ld c, h                                       ; $54fb: $4c

Call_022_54fc:
    ld hl, sp+$08                                 ; $54fc: $f8 $08
    ld hl, sp+$18                                 ; $54fe: $f8 $18
    ldh a, [$30]                                  ; $5500: $f0 $30
    ldh [$a0], a                                  ; $5502: $e0 $a0
    ldh a, [$d0]                                  ; $5504: $f0 $d0
    ldh a, [rSVBK]                                ; $5506: $f0 $70
    ldh a, [$30]                                  ; $5508: $f0 $30
    add sp, -$08                                  ; $550a: $e8 $f8
    ret z                                         ; $550c: $c8

    ld hl, sp+$70                                 ; $550d: $f8 $70
    ld [hl], b                                    ; $550f: $70
    inc bc                                        ; $5510: $03
    inc bc                                        ; $5511: $03
    inc b                                         ; $5512: $04
    rlca                                          ; $5513: $07
    inc b                                         ; $5514: $04
    rlca                                          ; $5515: $07
    inc b                                         ; $5516: $04
    rlca                                          ; $5517: $07
    inc c                                         ; $5518: $0c
    rrca                                          ; $5519: $0f
    inc e                                         ; $551a: $1c
    rla                                           ; $551b: $17
    ld e, $13                                     ; $551c: $1e $13
    rrca                                          ; $551e: $0f
    dec c                                         ; $551f: $0d
    ccf                                           ; $5520: $3f
    inc a                                         ; $5521: $3c
    ld a, a                                       ; $5522: $7f
    ld d, h                                       ; $5523: $54
    ccf                                           ; $5524: $3f
    dec sp                                        ; $5525: $3b
    rrca                                          ; $5526: $0f
    ld [$0f0f], sp                                ; $5527: $08 $0f $0f
    rrca                                          ; $552a: $0f
    rrca                                          ; $552b: $0f
    add hl, bc                                    ; $552c: $09
    rrca                                          ; $552d: $0f
    rlca                                          ; $552e: $07
    rlca                                          ; $552f: $07
    ldh [$e0], a                                  ; $5530: $e0 $e0
    db $10                                        ; $5532: $10
    ldh a, [rNR10]                                ; $5533: $f0 $10
    ldh a, [rNR10]                                ; $5535: $f0 $10
    ldh a, [rNR23]                                ; $5537: $f0 $18
    ld hl, sp+$1c                                 ; $5539: $f8 $1c
    db $f4                                        ; $553b: $f4
    inc a                                         ; $553c: $3c
    db $e4                                        ; $553d: $e4
    ld hl, sp-$28                                 ; $553e: $f8 $d8
    ldh a, [rNR10]                                ; $5540: $f0 $10
    ldh a, [$50]                                  ; $5542: $f0 $50
    ld hl, sp-$68                                 ; $5544: $f8 $98
    db $fc                                        ; $5546: $fc
    inc [hl]                                      ; $5547: $34
    db $ec                                        ; $5548: $ec
    db $ec                                        ; $5549: $ec
    ldh [$e0], a                                  ; $554a: $e0 $e0
    ret nz                                        ; $554c: $c0

    ret nz                                        ; $554d: $c0

    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    rrca                                          ; $5550: $0f
    rrca                                          ; $5551: $0f
    ld de, $231f                                  ; $5552: $11 $1f $23
    ld a, $23                                     ; $5555: $3e $23
    ld a, $2f                                     ; $5557: $3e $2f
    ld a, $3f                                     ; $5559: $3e $3f
    ld [hl-], a                                   ; $555b: $32
    rra                                           ; $555c: $1f
    db $10                                        ; $555d: $10
    rra                                           ; $555e: $1f
    jr jr_022_5570                                ; $555f: $18 $0f

    inc c                                         ; $5561: $0c
    rlca                                          ; $5562: $07
    dec b                                         ; $5563: $05
    rlca                                          ; $5564: $07
    rlca                                          ; $5565: $07
    rrca                                          ; $5566: $0f
    ld a, [bc]                                    ; $5567: $0a
    rra                                           ; $5568: $1f
    inc d                                         ; $5569: $14
    rra                                           ; $556a: $1f
    rra                                           ; $556b: $1f
    rra                                           ; $556c: $1f
    rra                                           ; $556d: $1f
    ld c, $0e                                     ; $556e: $0e $0e

jr_022_5570:
    add b                                         ; $5570: $80
    add b                                         ; $5571: $80
    ld b, b                                       ; $5572: $40
    ret nz                                        ; $5573: $c0

    and b                                         ; $5574: $a0
    ldh [$a0], a                                  ; $5575: $e0 $a0
    ldh [$e0], a                                  ; $5577: $e0 $e0
    ld h, b                                       ; $5579: $60
    ldh [$a0], a                                  ; $557a: $e0 $a0
    ldh [$a0], a                                  ; $557c: $e0 $a0
    ldh [rNR41], a                                ; $557e: $e0 $20
    ldh [rNR41], a                                ; $5580: $e0 $20
    ldh a, [$30]                                  ; $5582: $f0 $30
    ld hl, sp-$18                                 ; $5584: $f8 $e8
    ld hl, sp+$78                                 ; $5586: $f8 $78
    ldh [rNR41], a                                ; $5588: $e0 $20
    ret nc                                        ; $558a: $d0

    ldh a, [$90]                                  ; $558b: $f0 $90
    ldh a, [$e0]                                  ; $558d: $f0 $e0
    ldh [rIF], a                                  ; $558f: $e0 $0f
    rrca                                          ; $5591: $0f
    ld de, $131f                                  ; $5592: $11 $1f $13
    ld e, $17                                     ; $5595: $1e $17
    inc e                                         ; $5597: $1c
    ccf                                           ; $5598: $3f
    jr c, jr_022_561a                             ; $5599: $38 $7f

    ld d, l                                       ; $559b: $55
    ld a, a                                       ; $559c: $7f
    ld b, l                                       ; $559d: $45
    ccf                                           ; $559e: $3f
    jr nc, jr_022_5620                            ; $559f: $30 $7f

    ld [hl], b                                    ; $55a1: $70
    ld a, a                                       ; $55a2: $7f
    ld d, h                                       ; $55a3: $54
    ld a, a                                       ; $55a4: $7f
    ld a, e                                       ; $55a5: $7b
    rrca                                          ; $55a6: $0f
    ld a, [bc]                                    ; $55a7: $0a
    rrca                                          ; $55a8: $0f
    inc c                                         ; $55a9: $0c
    rrca                                          ; $55aa: $0f
    rrca                                          ; $55ab: $0f
    add hl, bc                                    ; $55ac: $09
    rrca                                          ; $55ad: $0f
    rlca                                          ; $55ae: $07
    rlca                                          ; $55af: $07
    add b                                         ; $55b0: $80
    add b                                         ; $55b1: $80
    ld b, b                                       ; $55b2: $40
    ret nz                                        ; $55b3: $c0

    ret nz                                        ; $55b4: $c0

    ret nz                                        ; $55b5: $c0

    ret nz                                        ; $55b6: $c0

    ret nz                                        ; $55b7: $c0

    ldh [$60], a                                  ; $55b8: $e0 $60
    ldh a, [$50]                                  ; $55ba: $f0 $50
    ldh a, [rNR10]                                ; $55bc: $f0 $10
    ldh [$60], a                                  ; $55be: $e0 $60
    ret nz                                        ; $55c0: $c0

    ld b, b                                       ; $55c1: $40
    ldh a, [$50]                                  ; $55c2: $f0 $50
    ld hl, sp-$68                                 ; $55c4: $f8 $98
    db $fc                                        ; $55c6: $fc
    or h                                          ; $55c7: $b4
    db $ec                                        ; $55c8: $ec
    ld l, h                                       ; $55c9: $6c
    ldh [$e0], a                                  ; $55ca: $e0 $e0
    ret nz                                        ; $55cc: $c0

    ret nz                                        ; $55cd: $c0

    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    rlca                                          ; $55d0: $07
    rlca                                          ; $55d1: $07
    inc c                                         ; $55d2: $0c
    rrca                                          ; $55d3: $0f

jr_022_55d4:
    ld e, $1b                                     ; $55d4: $1e $1b
    ld e, $1b                                     ; $55d6: $1e $1b
    rra                                           ; $55d8: $1f
    ld de, $151f                                  ; $55d9: $11 $1f $15
    rra                                           ; $55dc: $1f

jr_022_55dd:
    inc d                                         ; $55dd: $14
    rra                                           ; $55de: $1f

jr_022_55df:
    db $10                                        ; $55df: $10
    rra                                           ; $55e0: $1f
    db $10                                        ; $55e1: $10
    rlca                                          ; $55e2: $07
    inc b                                         ; $55e3: $04
    rlca                                          ; $55e4: $07
    rlca                                          ; $55e5: $07
    rlca                                          ; $55e6: $07
    dec b                                         ; $55e7: $05
    rrca                                          ; $55e8: $0f
    ld a, [bc]                                    ; $55e9: $0a
    rrca                                          ; $55ea: $0f
    rrca                                          ; $55eb: $0f
    rrca                                          ; $55ec: $0f
    rrca                                          ; $55ed: $0f
    rlca                                          ; $55ee: $07
    rlca                                          ; $55ef: $07
    ret nz                                        ; $55f0: $c0

    ret nz                                        ; $55f1: $c0

    jr nz, jr_022_55d4                            ; $55f2: $20 $e0

    db $10                                        ; $55f4: $10
    ldh a, [rNR10]                                ; $55f5: $f0 $10
    ldh a, [$d0]                                  ; $55f7: $f0 $d0
    ldh a, [$f0]                                  ; $55f9: $f0 $f0
    jr nc, jr_022_55dd                            ; $55fb: $30 $e0

    jr nz, jr_022_55df                            ; $55fd: $20 $e0

    ld h, b                                       ; $55ff: $60
    ret nz                                        ; $5600: $c0

    ret nz                                        ; $5601: $c0

    ldh [$a0], a                                  ; $5602: $e0 $a0
    ldh a, [$d0]                                  ; $5604: $f0 $d0
    ldh a, [rSVBK]                                ; $5606: $f0 $70
    ldh a, [$30]                                  ; $5608: $f0 $30
    add sp, -$08                                  ; $560a: $e8 $f8
    ret z                                         ; $560c: $c8

    ld hl, sp+$70                                 ; $560d: $f8 $70
    ld [hl], b                                    ; $560f: $70
    rrca                                          ; $5610: $0f
    rrca                                          ; $5611: $0f
    db $10                                        ; $5612: $10
    rra                                           ; $5613: $1f
    db $10                                        ; $5614: $10
    rra                                           ; $5615: $1f
    db $10                                        ; $5616: $10
    rra                                           ; $5617: $1f
    jr nc, jr_022_5659                            ; $5618: $30 $3f

jr_022_561a:
    ld [hl], b                                    ; $561a: $70
    ld e, a                                       ; $561b: $5f
    ld a, b                                       ; $561c: $78
    ld c, a                                       ; $561d: $4f
    ccf                                           ; $561e: $3f
    scf                                           ; $561f: $37

jr_022_5620:
    rst $38                                       ; $5620: $ff
    ldh a, [$7f]                                  ; $5621: $f0 $7f
    ld d, h                                       ; $5623: $54
    ccf                                           ; $5624: $3f
    dec sp                                        ; $5625: $3b
    rrca                                          ; $5626: $0f
    ld [$0f0f], sp                                ; $5627: $08 $0f $0f
    rrca                                          ; $562a: $0f
    rrca                                          ; $562b: $0f
    add hl, bc                                    ; $562c: $09
    rrca                                          ; $562d: $0f
    rlca                                          ; $562e: $07
    rlca                                          ; $562f: $07
    add b                                         ; $5630: $80
    add b                                         ; $5631: $80
    ld b, b                                       ; $5632: $40
    ret nz                                        ; $5633: $c0

    ld b, b                                       ; $5634: $40
    ret nz                                        ; $5635: $c0

    ld b, b                                       ; $5636: $40
    ret nz                                        ; $5637: $c0

    ld h, b                                       ; $5638: $60
    ldh [rSVBK], a                                ; $5639: $e0 $70
    ret nc                                        ; $563b: $d0

    ldh a, [$90]                                  ; $563c: $f0 $90
    ldh [$60], a                                  ; $563e: $e0 $60
    ret nz                                        ; $5640: $c0

    ld b, b                                       ; $5641: $40
    ldh a, [$50]                                  ; $5642: $f0 $50
    ld hl, sp-$68                                 ; $5644: $f8 $98
    db $fc                                        ; $5646: $fc
    inc [hl]                                      ; $5647: $34
    db $ec                                        ; $5648: $ec
    db $ec                                        ; $5649: $ec
    ldh [$e0], a                                  ; $564a: $e0 $e0
    ret nz                                        ; $564c: $c0

    ret nz                                        ; $564d: $c0

    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    inc bc                                        ; $5652: $03
    inc bc                                        ; $5653: $03
    inc b                                         ; $5654: $04
    rlca                                          ; $5655: $07
    add hl, bc                                    ; $5656: $09
    rrca                                          ; $5657: $0f
    add hl, bc                                    ; $5658: $09

jr_022_5659:
    rrca                                          ; $5659: $0f
    dec bc                                        ; $565a: $0b
    rrca                                          ; $565b: $0f
    rlca                                          ; $565c: $07
    inc b                                         ; $565d: $04
    rlca                                          ; $565e: $07
    inc b                                         ; $565f: $04
    inc bc                                        ; $5660: $03
    ld [bc], a                                    ; $5661: $02
    inc bc                                        ; $5662: $03
    ld bc, $0607                                  ; $5663: $01 $07 $06
    rrca                                          ; $5666: $0f
    ld [$0f0f], sp                                ; $5667: $08 $0f $0f
    rrca                                          ; $566a: $0f
    rrca                                          ; $566b: $0f
    ld b, $06                                     ; $566c: $06 $06
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    ret nz                                        ; $5672: $c0

    ret nz                                        ; $5673: $c0

    add b                                         ; $5674: $80
    ret nz                                        ; $5675: $c0

    ldh [$60], a                                  ; $5676: $e0 $60
    ldh [$60], a                                  ; $5678: $e0 $60
    ldh [rNR41], a                                ; $567a: $e0 $20
    ldh [$60], a                                  ; $567c: $e0 $60
    ldh [rNR41], a                                ; $567e: $e0 $20
    ldh [rNR41], a                                ; $5680: $e0 $20
    ldh [rNR41], a                                ; $5682: $e0 $20
    ldh a, [rSVBK]                                ; $5684: $f0 $70
    ret nz                                        ; $5686: $c0

    nop                                           ; $5687: $00
    ldh [$e0], a                                  ; $5688: $e0 $e0
    and b                                         ; $568a: $a0
    ldh [$c0], a                                  ; $568b: $e0 $c0
    ret nz                                        ; $568d: $c0

    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    inc bc                                        ; $5692: $03
    inc bc                                        ; $5693: $03
    inc b                                         ; $5694: $04
    rlca                                          ; $5695: $07
    dec b                                         ; $5696: $05
    rlca                                          ; $5697: $07
    rlca                                          ; $5698: $07
    ld b, $0f                                     ; $5699: $06 $0f
    inc c                                         ; $569b: $0c
    rra                                           ; $569c: $1f
    ld [de], a                                    ; $569d: $12
    rrca                                          ; $569e: $0f
    inc c                                         ; $569f: $0c
    rra                                           ; $56a0: $1f
    inc e                                         ; $56a1: $1c
    ccf                                           ; $56a2: $3f
    jr z, jr_022_56ac                             ; $56a3: $28 $07

    ld b, $07                                     ; $56a5: $06 $07
    inc b                                         ; $56a7: $04
    rlca                                          ; $56a8: $07
    rlca                                          ; $56a9: $07
    dec b                                         ; $56aa: $05
    rlca                                          ; $56ab: $07

jr_022_56ac:
    inc bc                                        ; $56ac: $03
    inc bc                                        ; $56ad: $03
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    ret nz                                        ; $56b2: $c0

    ret nz                                        ; $56b3: $c0

    add b                                         ; $56b4: $80
    ret nz                                        ; $56b5: $c0

    ret nz                                        ; $56b6: $c0

    ld b, b                                       ; $56b7: $40
    ret nz                                        ; $56b8: $c0

    ld b, b                                       ; $56b9: $40
    ldh [rNR41], a                                ; $56ba: $e0 $20
    ldh a, [$90]                                  ; $56bc: $f0 $90
    ldh [rNR41], a                                ; $56be: $e0 $20
    ret nz                                        ; $56c0: $c0

jr_022_56c1:
    nop                                           ; $56c1: $00
    ldh [$60], a                                  ; $56c2: $e0 $60
    ld hl, sp-$58                                 ; $56c4: $f8 $a8
    ret c                                         ; $56c6: $d8

    ld e, b                                       ; $56c7: $58
    ret nz                                        ; $56c8: $c0

    ret nz                                        ; $56c9: $c0

    ret nz                                        ; $56ca: $c0

    ret nz                                        ; $56cb: $c0

    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    inc bc                                        ; $56d2: $03
    inc bc                                        ; $56d3: $03
    ld [bc], a                                    ; $56d4: $02
    inc bc                                        ; $56d5: $03

jr_022_56d6:
    rlca                                          ; $56d6: $07
    dec b                                         ; $56d7: $05
    rlca                                          ; $56d8: $07
    dec b                                         ; $56d9: $05
    rlca                                          ; $56da: $07
    inc b                                         ; $56db: $04
    rlca                                          ; $56dc: $07
    ld b, $07                                     ; $56dd: $06 $07

jr_022_56df:
    inc b                                         ; $56df: $04
    rlca                                          ; $56e0: $07
    inc b                                         ; $56e1: $04
    inc bc                                        ; $56e2: $03
    nop                                           ; $56e3: $00
    inc bc                                        ; $56e4: $03
    ld bc, $0607                                  ; $56e5: $01 $07 $06
    rlca                                          ; $56e8: $07
    rlca                                          ; $56e9: $07
    rlca                                          ; $56ea: $07
    rlca                                          ; $56eb: $07
    inc bc                                        ; $56ec: $03
    inc bc                                        ; $56ed: $03
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    ret nz                                        ; $56f2: $c0

    ret nz                                        ; $56f3: $c0

    jr nz, jr_022_56d6                            ; $56f4: $20 $e0

    db $10                                        ; $56f6: $10
    ldh a, [rNR10]                                ; $56f7: $f0 $10
    ldh a, [$d0]                                  ; $56f9: $f0 $d0
    ldh a, [$e0]                                  ; $56fb: $f0 $e0
    jr nz, jr_022_56df                            ; $56fd: $20 $e0

    jr nz, jr_022_56c1                            ; $56ff: $20 $c0

    ld b, b                                       ; $5701: $40
    ret nz                                        ; $5702: $c0

    add b                                         ; $5703: $80
    ldh [$60], a                                  ; $5704: $e0 $60
    ldh [rNR41], a                                ; $5706: $e0 $20
    ret nc                                        ; $5708: $d0

    ldh a, [$d0]                                  ; $5709: $f0 $d0
    ldh a, [$60]                                  ; $570b: $f0 $60
    ld h, b                                       ; $570d: $60
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    inc bc                                        ; $5712: $03
    inc bc                                        ; $5713: $03
    inc b                                         ; $5714: $04
    rlca                                          ; $5715: $07
    inc b                                         ; $5716: $04
    rlca                                          ; $5717: $07
    inc b                                         ; $5718: $04
    rlca                                          ; $5719: $07
    inc c                                         ; $571a: $0c
    rrca                                          ; $571b: $0f

jr_022_571c:
    inc e                                         ; $571c: $1c
    inc de                                        ; $571d: $13
    rrca                                          ; $571e: $0f
    rrca                                          ; $571f: $0f
    ccf                                           ; $5720: $3f
    inc a                                         ; $5721: $3c
    ccf                                           ; $5722: $3f
    jr z, jr_022_572c                             ; $5723: $28 $07

    inc b                                         ; $5725: $04
    rlca                                          ; $5726: $07
    rlca                                          ; $5727: $07
    rlca                                          ; $5728: $07
    rlca                                          ; $5729: $07
    dec b                                         ; $572a: $05
    rlca                                          ; $572b: $07

jr_022_572c:
    inc bc                                        ; $572c: $03
    inc bc                                        ; $572d: $03
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    ret nz                                        ; $5732: $c0

    ret nz                                        ; $5733: $c0

    nop                                           ; $5734: $00
    ret nz                                        ; $5735: $c0

    nop                                           ; $5736: $00
    ret nz                                        ; $5737: $c0

    nop                                           ; $5738: $00
    ret nz                                        ; $5739: $c0

    jr nz, jr_022_571c                            ; $573a: $20 $e0

    ld [hl], b                                    ; $573c: $70
    ret nc                                        ; $573d: $d0

    ldh [$a0], a                                  ; $573e: $e0 $a0
    ret nz                                        ; $5740: $c0

    nop                                           ; $5741: $00
    ldh [$60], a                                  ; $5742: $e0 $60
    ld hl, sp+$28                                 ; $5744: $f8 $28
    ret c                                         ; $5746: $d8

    ret c                                         ; $5747: $d8

    ret nz                                        ; $5748: $c0

    ret nz                                        ; $5749: $c0

    ret nz                                        ; $574a: $c0

    ret nz                                        ; $574b: $c0

    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    nop                                           ; $574e: $00
    nop                                           ; $574f: $00

    db $62, $57, $65, $57

    ld l, e                                       ; $5754: $6b
    ld d, a                                       ; $5755: $57
    ld l, [hl]                                    ; $5756: $6e
    ld d, a                                       ; $5757: $57
    ld a, c                                       ; $5758: $79
    ld d, a                                       ; $5759: $57
    add b                                         ; $575a: $80
    ld d, a                                       ; $575b: $57
    adc b                                         ; $575c: $88
    ld d, a                                       ; $575d: $57
    sbc h                                         ; $575e: $9c
    ld d, a                                       ; $575f: $57
    xor b                                         ; $5760: $a8
    ld d, a                                       ; $5761: $57
    nop                                           ; $5762: $00
    rst $38                                       ; $5763: $ff
    db $fd                                        ; $5764: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $576b: $02
    rst $38                                       ; $576c: $ff
    db $fd                                        ; $576d: $fd
    ld [bc], a                                    ; $576e: $02
    inc c                                         ; $576f: $0c
    inc bc                                        ; $5770: $03
    inc c                                         ; $5771: $0c
    inc b                                         ; $5772: $04
    jr jr_022_5777                                ; $5773: $18 $02

    inc c                                         ; $5775: $0c
    dec b                                         ; $5776: $05

jr_022_5777:
    inc c                                         ; $5777: $0c
    db $fd                                        ; $5778: $fd
    ld [bc], a                                    ; $5779: $02
    jr @+$05                                      ; $577a: $18 $03

    jr jr_022_5780                                ; $577c: $18 $02

    jr @-$01                                      ; $577e: $18 $fd

jr_022_5780:
    nop                                           ; $5780: $00
    ld a, [bc]                                    ; $5781: $0a
    ld b, $1e                                     ; $5782: $06 $1e
    nop                                           ; $5784: $00
    ld a, [bc]                                    ; $5785: $0a
    cp $01                                        ; $5786: $fe $01
    nop                                           ; $5788: $00
    ld a, [bc]                                    ; $5789: $0a
    rlca                                          ; $578a: $07
    ld a, [bc]                                    ; $578b: $0a
    nop                                           ; $578c: $00
    inc bc                                        ; $578d: $03
    ld [$000a], sp                                ; $578e: $08 $0a $00
    inc bc                                        ; $5791: $03
    rlca                                          ; $5792: $07
    ld a, [bc]                                    ; $5793: $0a
    nop                                           ; $5794: $00
    inc bc                                        ; $5795: $03
    ld [$000a], sp                                ; $5796: $08 $0a $00
    ld a, [bc]                                    ; $5799: $0a
    cp $01                                        ; $579a: $fe $01
    nop                                           ; $579c: $00
    ld a, [bc]                                    ; $579d: $0a
    add hl, bc                                    ; $579e: $09
    ld [$0800], sp                                ; $579f: $08 $00 $08
    add hl, bc                                    ; $57a2: $09
    ld [$0a00], sp                                ; $57a3: $08 $00 $0a
    cp $01                                        ; $57a6: $fe $01
    ld [bc], a                                    ; $57a8: $02
    ld [de], a                                    ; $57a9: $12
    inc bc                                        ; $57aa: $03
    ld [de], a                                    ; $57ab: $12
    ld [bc], a                                    ; $57ac: $02
    ld e, $05                                     ; $57ad: $1e $05
    ld [de], a                                    ; $57af: $12
    db $fd                                        ; $57b0: $fd

    db $04, $04, $b9, $57, $e0, $63, $b9, $57, $e0, $57, $e0, $58, $e0, $59, $e0, $5a
    db $e0, $5b, $e0, $5c

    ldh [$5d], a                                  ; $57c5: $e0 $5d
    ldh [$5e], a                                  ; $57c7: $e0 $5e
    ldh [$5f], a                                  ; $57c9: $e0 $5f
    ldh [$60], a                                  ; $57cb: $e0 $60
    ldh [$61], a                                  ; $57cd: $e0 $61
    ldh [$62], a                                  ; $57cf: $e0 $62
    nop                                           ; $57d1: $00
    nop                                           ; $57d2: $00
    nop                                           ; $57d3: $00
    nop                                           ; $57d4: $00
    nop                                           ; $57d5: $00
    nop                                           ; $57d6: $00
    nop                                           ; $57d7: $00
    nop                                           ; $57d8: $00
    nop                                           ; $57d9: $00
    nop                                           ; $57da: $00
    nop                                           ; $57db: $00
    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00
    nop                                           ; $57df: $00
    jr jr_022_57fa                                ; $57e0: $18 $18

    dec h                                         ; $57e2: $25
    dec a                                         ; $57e3: $3d
    ld c, [hl]                                    ; $57e4: $4e
    ld a, a                                       ; $57e5: $7f
    ld e, h                                       ; $57e6: $5c
    ld [hl], a                                    ; $57e7: $77
    jr z, jr_022_5829                             ; $57e8: $28 $3f

    dec hl                                        ; $57ea: $2b
    ccf                                           ; $57eb: $3f
    cpl                                           ; $57ec: $2f
    inc a                                         ; $57ed: $3c
    scf                                           ; $57ee: $37
    inc [hl]                                      ; $57ef: $34
    inc hl                                        ; $57f0: $23
    ld [hl+], a                                   ; $57f1: $22
    inc bc                                        ; $57f2: $03
    inc bc                                        ; $57f3: $03
    rlca                                          ; $57f4: $07
    dec b                                         ; $57f5: $05
    ld c, $0b                                     ; $57f6: $0e $0b
    rlca                                          ; $57f8: $07
    rlca                                          ; $57f9: $07

jr_022_57fa:
    rrca                                          ; $57fa: $0f
    rrca                                          ; $57fb: $0f
    dec bc                                        ; $57fc: $0b
    rrca                                          ; $57fd: $0f
    ld b, $06                                     ; $57fe: $06 $06
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    ldh a, [$f0]                                  ; $5802: $f0 $f0
    ld [$24f8], sp                                ; $5804: $08 $f8 $24
    db $fc                                        ; $5807: $fc
    ld [hl], h                                    ; $5808: $74
    call c, $dc74                                 ; $5809: $dc $74 $dc
    ld hl, sp-$48                                 ; $580c: $f8 $b8
    ld hl, sp-$58                                 ; $580e: $f8 $a8
    ld hl, sp+$08                                 ; $5810: $f8 $08
    ldh a, [$90]                                  ; $5812: $f0 $90
    ld a, b                                       ; $5814: $78
    add sp, $38                                   ; $5815: $e8 $38
    ld hl, sp-$10                                 ; $5817: $f8 $f0
    ret nc                                        ; $5819: $d0

    add sp, $78                                   ; $581a: $e8 $78
    ret c                                         ; $581c: $d8

    ld hl, sp-$10                                 ; $581d: $f8 $f0
    ldh a, [rSB]                                  ; $581f: $f0 $01
    ld bc, $0302                                  ; $5821: $01 $02 $03

jr_022_5824:
    rlca                                          ; $5824: $07
    rlca                                          ; $5825: $07
    ld [$110f], sp                                ; $5826: $08 $0f $11

jr_022_5829:
    rra                                           ; $5829: $1f
    ld de, $3f1f                                  ; $582a: $11 $1f $3f
    ld l, $3f                                     ; $582d: $2e $3f
    ld a, [hl+]                                   ; $582f: $2a
    ccf                                           ; $5830: $3f
    jr c, jr_022_58b2                             ; $5831: $38 $7f

    ld e, h                                       ; $5833: $5c
    ld a, e                                       ; $5834: $7b
    ld a, a                                       ; $5835: $7f
    ld e, h                                       ; $5836: $5c
    ld d, a                                       ; $5837: $57
    rst $08                                       ; $5838: $cf
    set 0, a                                      ; $5839: $cb $c7
    rst $00                                       ; $583b: $c7
    inc b                                         ; $583c: $04
    rlca                                          ; $583d: $07
    inc bc                                        ; $583e: $03
    inc bc                                        ; $583f: $03
    ret nz                                        ; $5840: $c0

    ret nz                                        ; $5841: $c0

    jr nz, jr_022_5824                            ; $5842: $20 $e0

    ld h, b                                       ; $5844: $60
    ldh [$90], a                                  ; $5845: $e0 $90
    ldh a, [$c8]                                  ; $5847: $f0 $c8
    ld a, b                                       ; $5849: $78
    add sp, $38                                   ; $584a: $e8 $38
    db $fc                                        ; $584c: $fc
    ld [hl], h                                    ; $584d: $74
    db $fc                                        ; $584e: $fc
    ld d, h                                       ; $584f: $54
    ld hl, sp+$18                                 ; $5850: $f8 $18
    add sp, $38                                   ; $5852: $e8 $38
    call c, Call_000_3ef4                         ; $5854: $dc $f4 $3e
    ld a, [$d6f6]                                 ; $5857: $fa $f6 $d6
    ldh [$e0], a                                  ; $585a: $e0 $e0
    ret nz                                        ; $585c: $c0

    ret nz                                        ; $585d: $c0

    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    rrca                                          ; $5862: $0f
    rrca                                          ; $5863: $0f
    db $10                                        ; $5864: $10
    rra                                           ; $5865: $1f
    inc h                                         ; $5866: $24
    ccf                                           ; $5867: $3f
    ld l, $3b                                     ; $5868: $2e $3b
    ld l, $3b                                     ; $586a: $2e $3b
    rra                                           ; $586c: $1f
    dec e                                         ; $586d: $1d
    rra                                           ; $586e: $1f
    dec d                                         ; $586f: $15
    rra                                           ; $5870: $1f
    db $10                                        ; $5871: $10
    rrca                                          ; $5872: $0f
    add hl, bc                                    ; $5873: $09
    ld b, $07                                     ; $5874: $06 $07
    rlca                                          ; $5876: $07
    dec b                                         ; $5877: $05
    rrca                                          ; $5878: $0f
    dec bc                                        ; $5879: $0b
    rra                                           ; $587a: $1f
    ld e, $17                                     ; $587b: $1e $17
    rra                                           ; $587d: $1f
    inc c                                         ; $587e: $0c
    inc c                                         ; $587f: $0c
    jr jr_022_589a                                ; $5880: $18 $18

    and h                                         ; $5882: $a4
    cp h                                          ; $5883: $bc
    ld [hl], d                                    ; $5884: $72
    cp $3a                                        ; $5885: $fe $3a
    xor $12                                       ; $5887: $ee $12
    cp $d4                                        ; $5889: $fe $d4
    db $fc                                        ; $588b: $fc
    db $f4                                        ; $588c: $f4
    inc a                                         ; $588d: $3c
    add sp, $28                                   ; $588e: $e8 $28
    ret z                                         ; $5890: $c8

    ld c, b                                       ; $5891: $48
    ldh [$e0], a                                  ; $5892: $e0 $e0
    ld [hl], b                                    ; $5894: $70
    ret nc                                        ; $5895: $d0

    jr nc, @-$0e                                  ; $5896: $30 $f0

    ldh [$e0], a                                  ; $5898: $e0 $e0

jr_022_589a:
    ret nc                                        ; $589a: $d0

    ld [hl], b                                    ; $589b: $70
    sub b                                         ; $589c: $90
    ldh a, [$60]                                  ; $589d: $f0 $60
    ld h, b                                       ; $589f: $60
    inc bc                                        ; $58a0: $03
    inc bc                                        ; $58a1: $03
    inc b                                         ; $58a2: $04
    rlca                                          ; $58a3: $07

jr_022_58a4:
    dec bc                                        ; $58a4: $0b
    rrca                                          ; $58a5: $0f
    inc c                                         ; $58a6: $0c
    rrca                                          ; $58a7: $0f
    inc d                                         ; $58a8: $14
    rra                                           ; $58a9: $1f
    inc d                                         ; $58aa: $14
    rra                                           ; $58ab: $1f
    inc a                                         ; $58ac: $3c
    cpl                                           ; $58ad: $2f
    ld a, $2f                                     ; $58ae: $3e $2f
    ld a, [hl]                                    ; $58b0: $7e
    ld a, e                                       ; $58b1: $7b

jr_022_58b2:
    ld a, a                                       ; $58b2: $7f
    ld e, a                                       ; $58b3: $5f
    jr c, @+$41                                   ; $58b4: $38 $3f

    inc e                                         ; $58b6: $1c
    rla                                           ; $58b7: $17
    rrca                                          ; $58b8: $0f
    dec bc                                        ; $58b9: $0b
    inc b                                         ; $58ba: $04
    rlca                                          ; $58bb: $07
    inc b                                         ; $58bc: $04
    rlca                                          ; $58bd: $07
    inc bc                                        ; $58be: $03
    inc bc                                        ; $58bf: $03
    ret nz                                        ; $58c0: $c0

    ret nz                                        ; $58c1: $c0

    jr nz, jr_022_58a4                            ; $58c2: $20 $e0

    sub b                                         ; $58c4: $90
    ldh a, [$50]                                  ; $58c5: $f0 $50
    ldh a, [rOBP0]                                ; $58c7: $f0 $48
    ld hl, sp+$48                                 ; $58c9: $f8 $48
    ld hl, sp-$64                                 ; $58cb: $f8 $9c
    db $f4                                        ; $58cd: $f4
    cp a                                          ; $58ce: $bf
    rst $30                                       ; $58cf: $f7
    ei                                            ; $58d0: $fb
    db $db                                        ; $58d1: $db
    ld l, [hl]                                    ; $58d2: $6e
    cp $de                                        ; $58d3: $fe $de
    ld a, [c]                                     ; $58d5: $f2
    inc a                                         ; $58d6: $3c
    db $fc                                        ; $58d7: $fc
    ldh a, [$d0]                                  ; $58d8: $f0 $d0
    ldh [$e0], a                                  ; $58da: $e0 $e0
    ret nz                                        ; $58dc: $c0

    ret nz                                        ; $58dd: $c0

    nop                                           ; $58de: $00
    nop                                           ; $58df: $00
    jr jr_022_58fa                                ; $58e0: $18 $18

    dec h                                         ; $58e2: $25
    dec a                                         ; $58e3: $3d
    ld c, [hl]                                    ; $58e4: $4e
    ld a, a                                       ; $58e5: $7f
    ld e, h                                       ; $58e6: $5c
    ld [hl], a                                    ; $58e7: $77
    ld c, b                                       ; $58e8: $48
    ld a, a                                       ; $58e9: $7f
    dec hl                                        ; $58ea: $2b
    ccf                                           ; $58eb: $3f
    cpl                                           ; $58ec: $2f
    inc a                                         ; $58ed: $3c
    rla                                           ; $58ee: $17
    inc d                                         ; $58ef: $14
    inc de                                        ; $58f0: $13
    ld [de], a                                    ; $58f1: $12
    rlca                                          ; $58f2: $07
    rlca                                          ; $58f3: $07
    ld c, $0b                                     ; $58f4: $0e $0b
    inc c                                         ; $58f6: $0c
    rrca                                          ; $58f7: $0f
    rlca                                          ; $58f8: $07
    rlca                                          ; $58f9: $07

jr_022_58fa:
    dec bc                                        ; $58fa: $0b
    ld c, $09                                     ; $58fb: $0e $09
    rrca                                          ; $58fd: $0f
    ld b, $06                                     ; $58fe: $06 $06
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    ldh a, [$f0]                                  ; $5902: $f0 $f0
    ld [$24f8], sp                                ; $5904: $08 $f8 $24
    db $fc                                        ; $5907: $fc
    ld [hl], h                                    ; $5908: $74
    call c, $dc74                                 ; $5909: $dc $74 $dc
    ld hl, sp-$48                                 ; $590c: $f8 $b8
    ld hl, sp-$58                                 ; $590e: $f8 $a8
    cp $0e                                        ; $5910: $fe $0e
    or $96                                        ; $5912: $f6 $96
    ld h, h                                       ; $5914: $64
    db $e4                                        ; $5915: $e4
    add sp, -$58                                  ; $5916: $e8 $a8
    ldh a, [$d0]                                  ; $5918: $f0 $d0
    ld hl, sp+$78                                 ; $591a: $f8 $78
    add sp, -$08                                  ; $591c: $e8 $f8
    jr nc, jr_022_5950                            ; $591e: $30 $30

    inc bc                                        ; $5920: $03
    inc bc                                        ; $5921: $03
    inc b                                         ; $5922: $04
    rlca                                          ; $5923: $07
    rlca                                          ; $5924: $07
    rlca                                          ; $5925: $07
    ld [$110f], sp                                ; $5926: $08 $0f $11
    rra                                           ; $5929: $1f
    ld de, $3f1f                                  ; $592a: $11 $1f $3f
    ld l, $3f                                     ; $592d: $2e $3f
    ld a, [hl+]                                   ; $592f: $2a
    rst $18                                       ; $5930: $df
    ret c                                         ; $5931: $d8

    rst $10                                       ; $5932: $d7
    call c, $6f7b                                 ; $5933: $dc $7b $6f
    ld a, h                                       ; $5936: $7c
    ld e, a                                       ; $5937: $5f
    ld l, a                                       ; $5938: $6f
    ld l, e                                       ; $5939: $6b
    rlca                                          ; $593a: $07
    rlca                                          ; $593b: $07
    inc bc                                        ; $593c: $03
    inc bc                                        ; $593d: $03

jr_022_593e:
    nop                                           ; $593e: $00
    nop                                           ; $593f: $00

jr_022_5940:
    add b                                         ; $5940: $80
    add b                                         ; $5941: $80
    ld b, b                                       ; $5942: $40
    ret nz                                        ; $5943: $c0

    ld h, b                                       ; $5944: $60
    ldh [$90], a                                  ; $5945: $e0 $90
    ldh a, [$c8]                                  ; $5947: $f0 $c8
    ld a, b                                       ; $5949: $78
    add sp, $38                                   ; $594a: $e8 $38
    db $fc                                        ; $594c: $fc
    ld [hl], h                                    ; $594d: $74
    db $fc                                        ; $594e: $fc
    ld d, h                                       ; $594f: $54

jr_022_5950:
    db $fc                                        ; $5950: $fc
    inc e                                         ; $5951: $1c
    cp $3a                                        ; $5952: $fe $3a
    sbc $fe                                       ; $5954: $de $fe
    jr c, jr_022_5940                             ; $5956: $38 $e8

    ldh a, [$d0]                                  ; $5958: $f0 $d0
    ldh [$e0], a                                  ; $595a: $e0 $e0
    jr nz, jr_022_593e                            ; $595c: $20 $e0

    ret nz                                        ; $595e: $c0

    ret nz                                        ; $595f: $c0

    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    rrca                                          ; $5962: $0f
    rrca                                          ; $5963: $0f
    db $10                                        ; $5964: $10
    rra                                           ; $5965: $1f
    inc h                                         ; $5966: $24
    ccf                                           ; $5967: $3f
    ld l, $3b                                     ; $5968: $2e $3b
    ld l, $3b                                     ; $596a: $2e $3b
    rst $18                                       ; $596c: $df
    db $dd                                        ; $596d: $dd
    rst $18                                       ; $596e: $df
    push de                                       ; $596f: $d5
    ld e, a                                       ; $5970: $5f
    ld d, b                                       ; $5971: $50
    ccf                                           ; $5972: $3f
    add hl, sp                                    ; $5973: $39
    ld e, $17                                     ; $5974: $1e $17
    inc e                                         ; $5976: $1c
    rra                                           ; $5977: $1f
    rrca                                          ; $5978: $0f
    dec bc                                        ; $5979: $0b
    rla                                           ; $597a: $17
    inc e                                         ; $597b: $1c
    dec de                                        ; $597c: $1b
    rra                                           ; $597d: $1f
    inc c                                         ; $597e: $0c
    inc c                                         ; $597f: $0c
    jr jr_022_599a                                ; $5980: $18 $18

    and h                                         ; $5982: $a4
    cp h                                          ; $5983: $bc
    ld [hl], d                                    ; $5984: $72
    cp $3a                                        ; $5985: $fe $3a
    xor $14                                       ; $5987: $ee $14
    db $fc                                        ; $5989: $fc
    call nc, $f4fc                                ; $598a: $d4 $fc $f4
    inc a                                         ; $598d: $3c
    db $ec                                        ; $598e: $ec
    inc l                                         ; $598f: $2c
    call nz, $c044                                ; $5990: $c4 $44 $c0
    ret nz                                        ; $5993: $c0

    ldh [$a0], a                                  ; $5994: $e0 $a0
    ld [hl], b                                    ; $5996: $70
    ret nc                                        ; $5997: $d0

    ldh [$e0], a                                  ; $5998: $e0 $e0

jr_022_599a:
    ldh a, [rSVBK]                                ; $599a: $f0 $70
    ret nc                                        ; $599c: $d0

    ldh a, [$60]                                  ; $599d: $f0 $60
    ld h, b                                       ; $599f: $60
    inc bc                                        ; $59a0: $03
    inc bc                                        ; $59a1: $03
    inc b                                         ; $59a2: $04
    rlca                                          ; $59a3: $07

jr_022_59a4:
    add hl, bc                                    ; $59a4: $09
    rrca                                          ; $59a5: $0f
    ld a, [bc]                                    ; $59a6: $0a
    rrca                                          ; $59a7: $0f
    ld [de], a                                    ; $59a8: $12
    rra                                           ; $59a9: $1f
    ld [de], a                                    ; $59aa: $12
    rra                                           ; $59ab: $1f
    add hl, sp                                    ; $59ac: $39
    cpl                                           ; $59ad: $2f
    dec a                                         ; $59ae: $3d
    cpl                                           ; $59af: $2f
    rra                                           ; $59b0: $1f
    dec de                                        ; $59b1: $1b
    halt                                          ; $59b2: $76
    ld a, a                                       ; $59b3: $7f
    ld a, e                                       ; $59b4: $7b
    ld c, a                                       ; $59b5: $4f
    inc a                                         ; $59b6: $3c
    ccf                                           ; $59b7: $3f
    rrca                                          ; $59b8: $0f
    dec bc                                        ; $59b9: $0b
    rlca                                          ; $59ba: $07
    rlca                                          ; $59bb: $07

jr_022_59bc:
    inc bc                                        ; $59bc: $03
    inc bc                                        ; $59bd: $03

jr_022_59be:
    nop                                           ; $59be: $00
    nop                                           ; $59bf: $00

jr_022_59c0:
    ret nz                                        ; $59c0: $c0

    ret nz                                        ; $59c1: $c0

    jr nz, jr_022_59a4                            ; $59c2: $20 $e0

    ret nc                                        ; $59c4: $d0

    ldh a, [$30]                                  ; $59c5: $f0 $30
    ldh a, [$2b]                                  ; $59c7: $f0 $2b
    ei                                            ; $59c9: $fb
    dec hl                                        ; $59ca: $2b
    ei                                            ; $59cb: $fb
    ld a, $f6                                     ; $59cc: $3e $f6
    ld a, [hl]                                    ; $59ce: $7e
    or $7e                                        ; $59cf: $f6 $7e
    sbc $fe                                       ; $59d1: $de $fe
    ld a, [$fcdc]                                 ; $59d3: $fa $dc $fc
    jr c, jr_022_59c0                             ; $59d6: $38 $e8

    ldh a, [$d0]                                  ; $59d8: $f0 $d0
    jr nz, jr_022_59bc                            ; $59da: $20 $e0

    jr nz, jr_022_59be                            ; $59dc: $20 $e0

    ret nz                                        ; $59de: $c0

    ret nz                                        ; $59df: $c0

    inc b                                         ; $59e0: $04
    inc b                                         ; $59e1: $04
    ld a, [de]                                    ; $59e2: $1a
    ld e, $27                                     ; $59e3: $1e $27
    ccf                                           ; $59e5: $3f
    ld l, $3b                                     ; $59e6: $2e $3b
    dec d                                         ; $59e8: $15
    rra                                           ; $59e9: $1f
    rla                                           ; $59ea: $17
    ld e, $17                                     ; $59eb: $1e $17
    inc e                                         ; $59ed: $1c
    dec bc                                        ; $59ee: $0b
    ld a, [bc]                                    ; $59ef: $0a
    dec b                                         ; $59f0: $05
    rlca                                          ; $59f1: $07
    ld a, [bc]                                    ; $59f2: $0a
    rrca                                          ; $59f3: $0f
    inc e                                         ; $59f4: $1c
    rla                                           ; $59f5: $17
    ld e, $13                                     ; $59f6: $1e $13
    rrca                                          ; $59f8: $0f
    rrca                                          ; $59f9: $0f
    ld b, $06                                     ; $59fa: $06 $06
    add hl, bc                                    ; $59fc: $09
    rrca                                          ; $59fd: $0f

jr_022_59fe:
    rrca                                          ; $59fe: $0f
    rrca                                          ; $59ff: $0f
    nop                                           ; $5a00: $00
    nop                                           ; $5a01: $00
    ldh [$e0], a                                  ; $5a02: $e0 $e0
    jr jr_022_59fe                                ; $5a04: $18 $f8

    inc b                                         ; $5a06: $04
    db $fc                                        ; $5a07: $fc
    inc d                                         ; $5a08: $14
    db $fc                                        ; $5a09: $fc
    cp b                                          ; $5a0a: $b8
    add sp, -$10                                  ; $5a0b: $e8 $f0
    ld d, b                                       ; $5a0d: $50
    ldh a, [$90]                                  ; $5a0e: $f0 $90
    ld hl, sp+$08                                 ; $5a10: $f8 $08
    ldh a, [$90]                                  ; $5a12: $f0 $90
    ld h, b                                       ; $5a14: $60
    ldh [rLCDC], a                                ; $5a15: $e0 $40
    ret nz                                        ; $5a17: $c0

    ldh [$a0], a                                  ; $5a18: $e0 $a0
    ld h, b                                       ; $5a1a: $60
    ld h, b                                       ; $5a1b: $60
    ld d, $16                                     ; $5a1c: $16 $16
    ld c, $0e                                     ; $5a1e: $0e $0e
    ld bc, $0601                                  ; $5a20: $01 $01 $06
    rlca                                          ; $5a23: $07
    inc b                                         ; $5a24: $04
    rlca                                          ; $5a25: $07
    dec bc                                        ; $5a26: $0b
    rrca                                          ; $5a27: $0f
    ld [$180f], sp                                ; $5a28: $08 $0f $18
    rra                                           ; $5a2b: $1f
    inc a                                         ; $5a2c: $3c
    cpl                                           ; $5a2d: $2f
    ccf                                           ; $5a2e: $3f
    daa                                           ; $5a2f: $27
    rra                                           ; $5a30: $1f
    add hl, de                                    ; $5a31: $19
    rrca                                          ; $5a32: $0f
    inc c                                         ; $5a33: $0c
    dec bc                                        ; $5a34: $0b
    rrca                                          ; $5a35: $0f
    rlca                                          ; $5a36: $07
    dec b                                         ; $5a37: $05
    rlca                                          ; $5a38: $07
    ld b, $07                                     ; $5a39: $06 $07
    dec b                                         ; $5a3b: $05
    add hl, bc                                    ; $5a3c: $09
    rrca                                          ; $5a3d: $0f
    rrca                                          ; $5a3e: $0f
    rrca                                          ; $5a3f: $0f
    add b                                         ; $5a40: $80
    add b                                         ; $5a41: $80
    ld b, b                                       ; $5a42: $40
    ret nz                                        ; $5a43: $c0

    or b                                          ; $5a44: $b0
    ldh a, [rNR10]                                ; $5a45: $f0 $10
    ldh a, [$88]                                  ; $5a47: $f0 $88
    ld hl, sp+$48                                 ; $5a49: $f8 $48
    ld hl, sp-$04                                 ; $5a4b: $f8 $fc
    or h                                          ; $5a4d: $b4
    db $fc                                        ; $5a4e: $fc
    ld d, h                                       ; $5a4f: $54
    ld hl, sp+$58                                 ; $5a50: $f8 $58
    ldh a, [$30]                                  ; $5a52: $f0 $30
    ret nc                                        ; $5a54: $d0

    ldh a, [$e0]                                  ; $5a55: $f0 $e0
    and b                                         ; $5a57: $a0
    ldh [$e0], a                                  ; $5a58: $e0 $e0
    ldh [$a0], a                                  ; $5a5a: $e0 $a0
    sub b                                         ; $5a5c: $90
    ldh a, [$f0]                                  ; $5a5d: $f0 $f0
    ldh a, [rP1]                                  ; $5a5f: $f0 $00
    nop                                           ; $5a61: $00
    rlca                                          ; $5a62: $07
    rlca                                          ; $5a63: $07
    jr jr_022_5a85                                ; $5a64: $18 $1f

    jr nz, jr_022_5aa7                            ; $5a66: $20 $3f

    jr z, jr_022_5aa9                             ; $5a68: $28 $3f

    dec e                                         ; $5a6a: $1d
    rla                                           ; $5a6b: $17
    rrca                                          ; $5a6c: $0f
    ld a, [bc]                                    ; $5a6d: $0a
    rrca                                          ; $5a6e: $0f
    add hl, bc                                    ; $5a6f: $09
    rra                                           ; $5a70: $1f
    db $10                                        ; $5a71: $10
    rrca                                          ; $5a72: $0f
    add hl, bc                                    ; $5a73: $09
    ld b, $07                                     ; $5a74: $06 $07
    ld [bc], a                                    ; $5a76: $02
    inc bc                                        ; $5a77: $03
    rlca                                          ; $5a78: $07
    dec b                                         ; $5a79: $05
    ld b, $06                                     ; $5a7a: $06 $06
    ld l, b                                       ; $5a7c: $68
    ld l, b                                       ; $5a7d: $68
    ld [hl], b                                    ; $5a7e: $70
    ld [hl], b                                    ; $5a7f: $70
    jr nz, jr_022_5aa2                            ; $5a80: $20 $20

    ld e, b                                       ; $5a82: $58
    ld a, b                                       ; $5a83: $78
    db $e4                                        ; $5a84: $e4

jr_022_5a85:
    db $fc                                        ; $5a85: $fc
    ld [hl], h                                    ; $5a86: $74
    call c, $f8a8                                 ; $5a87: $dc $a8 $f8
    add sp, $78                                   ; $5a8a: $e8 $78
    add sp, $38                                   ; $5a8c: $e8 $38
    ret nc                                        ; $5a8e: $d0

    ld d, b                                       ; $5a8f: $50
    and b                                         ; $5a90: $a0
    ldh [$50], a                                  ; $5a91: $e0 $50
    ldh a, [$38]                                  ; $5a93: $f0 $38
    add sp, $78                                   ; $5a95: $e8 $78
    ret z                                         ; $5a97: $c8

    ldh a, [$f0]                                  ; $5a98: $f0 $f0
    ld h, b                                       ; $5a9a: $60
    ld h, b                                       ; $5a9b: $60
    sub b                                         ; $5a9c: $90
    ldh a, [$f0]                                  ; $5a9d: $f0 $f0
    ldh a, [$03]                                  ; $5a9f: $f0 $03
    inc bc                                        ; $5aa1: $03

jr_022_5aa2:
    inc b                                         ; $5aa2: $04
    rlca                                          ; $5aa3: $07

jr_022_5aa4:
    add hl, bc                                    ; $5aa4: $09
    rrca                                          ; $5aa5: $0f
    ld a, [bc]                                    ; $5aa6: $0a

jr_022_5aa7:
    rrca                                          ; $5aa7: $0f
    ld [de], a                                    ; $5aa8: $12

jr_022_5aa9:
    rra                                           ; $5aa9: $1f
    ld a, [hl-]                                   ; $5aaa: $3a
    cpl                                           ; $5aab: $2f
    dec a                                         ; $5aac: $3d
    daa                                           ; $5aad: $27
    dec e                                         ; $5aae: $1d
    rla                                           ; $5aaf: $17
    dec bc                                        ; $5ab0: $0b
    rrca                                          ; $5ab1: $0f
    inc c                                         ; $5ab2: $0c
    rrca                                          ; $5ab3: $0f
    dec bc                                        ; $5ab4: $0b
    rrca                                          ; $5ab5: $0f
    rlca                                          ; $5ab6: $07
    inc b                                         ; $5ab7: $04
    rlca                                          ; $5ab8: $07
    rlca                                          ; $5ab9: $07
    rlca                                          ; $5aba: $07
    dec b                                         ; $5abb: $05
    add hl, bc                                    ; $5abc: $09
    rrca                                          ; $5abd: $0f
    rrca                                          ; $5abe: $0f
    rrca                                          ; $5abf: $0f
    ret nz                                        ; $5ac0: $c0

    ret nz                                        ; $5ac1: $c0

    jr nz, jr_022_5aa4                            ; $5ac2: $20 $e0

    ret nc                                        ; $5ac4: $d0

    ldh a, [$30]                                  ; $5ac5: $f0 $30
    ldh a, [$28]                                  ; $5ac7: $f0 $28
    ld hl, sp+$28                                 ; $5ac9: $f8 $28
    ld hl, sp+$28                                 ; $5acb: $f8 $28
    ld hl, sp+$78                                 ; $5acd: $f8 $78
    ld hl, sp+$70                                 ; $5acf: $f8 $70
    ret nc                                        ; $5ad1: $d0

    ldh a, [$f0]                                  ; $5ad2: $f0 $f0
    ret nc                                        ; $5ad4: $d0

    ldh a, [$f0]                                  ; $5ad5: $f0 $f0
    db $10                                        ; $5ad7: $10
    ldh a, [$f0]                                  ; $5ad8: $f0 $f0
    ldh a, [$d0]                                  ; $5ada: $f0 $d0
    ret z                                         ; $5adc: $c8

    ld hl, sp-$08                                 ; $5add: $f8 $f8
    ld hl, sp+$04                                 ; $5adf: $f8 $04
    inc b                                         ; $5ae1: $04
    ld a, [de]                                    ; $5ae2: $1a
    ld e, $27                                     ; $5ae3: $1e $27
    ccf                                           ; $5ae5: $3f
    ld l, $3b                                     ; $5ae6: $2e $3b
    dec d                                         ; $5ae8: $15
    rra                                           ; $5ae9: $1f
    rla                                           ; $5aea: $17
    ld e, $17                                     ; $5aeb: $1e $17
    inc e                                         ; $5aed: $1c
    dec bc                                        ; $5aee: $0b
    ld a, [bc]                                    ; $5aef: $0a
    dec b                                         ; $5af0: $05
    rlca                                          ; $5af1: $07
    ld a, [bc]                                    ; $5af2: $0a
    rrca                                          ; $5af3: $0f
    inc e                                         ; $5af4: $1c
    rla                                           ; $5af5: $17
    ld e, $1f                                     ; $5af6: $1e $1f
    rrca                                          ; $5af8: $0f
    rrca                                          ; $5af9: $0f
    ld b, $06                                     ; $5afa: $06 $06
    add hl, bc                                    ; $5afc: $09
    rrca                                          ; $5afd: $0f

jr_022_5afe:
    rrca                                          ; $5afe: $0f
    rrca                                          ; $5aff: $0f
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00
    ldh [$e0], a                                  ; $5b02: $e0 $e0
    jr jr_022_5afe                                ; $5b04: $18 $f8

    inc b                                         ; $5b06: $04
    db $fc                                        ; $5b07: $fc
    inc d                                         ; $5b08: $14
    db $fc                                        ; $5b09: $fc
    cp b                                          ; $5b0a: $b8
    add sp, -$10                                  ; $5b0b: $e8 $f0
    ld d, b                                       ; $5b0d: $50
    ldh a, [$90]                                  ; $5b0e: $f0 $90
    ld hl, sp+$08                                 ; $5b10: $f8 $08
    ldh a, [$90]                                  ; $5b12: $f0 $90
    ld h, b                                       ; $5b14: $60
    ldh [$c0], a                                  ; $5b15: $e0 $c0
    ret nz                                        ; $5b17: $c0

    add b                                         ; $5b18: $80
    add b                                         ; $5b19: $80
    nop                                           ; $5b1a: $00
    nop                                           ; $5b1b: $00
    nop                                           ; $5b1c: $00
    nop                                           ; $5b1d: $00
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    ld bc, $0601                                  ; $5b20: $01 $01 $06
    rlca                                          ; $5b23: $07
    inc b                                         ; $5b24: $04
    rlca                                          ; $5b25: $07
    dec bc                                        ; $5b26: $0b
    rrca                                          ; $5b27: $0f
    ld [$180f], sp                                ; $5b28: $08 $0f $18
    rra                                           ; $5b2b: $1f
    inc a                                         ; $5b2c: $3c
    cpl                                           ; $5b2d: $2f
    ccf                                           ; $5b2e: $3f
    daa                                           ; $5b2f: $27
    rra                                           ; $5b30: $1f
    add hl, de                                    ; $5b31: $19
    rrca                                          ; $5b32: $0f
    inc c                                         ; $5b33: $0c
    dec bc                                        ; $5b34: $0b
    rrca                                          ; $5b35: $0f
    rlca                                          ; $5b36: $07
    dec b                                         ; $5b37: $05
    ld a, a                                       ; $5b38: $7f

jr_022_5b39:
    ld a, a                                       ; $5b39: $7f
    ld h, a                                       ; $5b3a: $67
    ld h, l                                       ; $5b3b: $65
    add hl, bc                                    ; $5b3c: $09
    rrca                                          ; $5b3d: $0f
    ld c, $0e                                     ; $5b3e: $0e $0e
    add b                                         ; $5b40: $80
    add b                                         ; $5b41: $80
    ld b, b                                       ; $5b42: $40
    ret nz                                        ; $5b43: $c0

    or b                                          ; $5b44: $b0
    ldh a, [rNR10]                                ; $5b45: $f0 $10
    ldh a, [$88]                                  ; $5b47: $f0 $88
    ld hl, sp+$48                                 ; $5b49: $f8 $48
    ld hl, sp-$04                                 ; $5b4b: $f8 $fc
    or h                                          ; $5b4d: $b4
    db $fc                                        ; $5b4e: $fc
    ld d, h                                       ; $5b4f: $54
    ld hl, sp+$58                                 ; $5b50: $f8 $58
    ldh a, [$30]                                  ; $5b52: $f0 $30
    ret nc                                        ; $5b54: $d0

    ldh a, [$e0]                                  ; $5b55: $f0 $e0
    jr nz, jr_022_5b39                            ; $5b57: $20 $e0

    ldh [$e0], a                                  ; $5b59: $e0 $e0
    and b                                         ; $5b5b: $a0
    sub b                                         ; $5b5c: $90
    ldh a, [$f0]                                  ; $5b5d: $f0 $f0
    ldh a, [rP1]                                  ; $5b5f: $f0 $00
    nop                                           ; $5b61: $00
    rlca                                          ; $5b62: $07
    rlca                                          ; $5b63: $07
    jr jr_022_5b85                                ; $5b64: $18 $1f

    jr nz, jr_022_5ba7                            ; $5b66: $20 $3f

    jr z, jr_022_5ba9                             ; $5b68: $28 $3f

    dec e                                         ; $5b6a: $1d
    rla                                           ; $5b6b: $17
    rrca                                          ; $5b6c: $0f
    ld a, [bc]                                    ; $5b6d: $0a
    rrca                                          ; $5b6e: $0f
    add hl, bc                                    ; $5b6f: $09
    rra                                           ; $5b70: $1f
    db $10                                        ; $5b71: $10
    rrca                                          ; $5b72: $0f
    add hl, bc                                    ; $5b73: $09
    ld b, $07                                     ; $5b74: $06 $07
    ld [bc], a                                    ; $5b76: $02
    inc bc                                        ; $5b77: $03
    ld bc, $0001                                  ; $5b78: $01 $01 $00
    nop                                           ; $5b7b: $00
    nop                                           ; $5b7c: $00
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    nop                                           ; $5b7f: $00
    jr nz, jr_022_5ba2                            ; $5b80: $20 $20

    ld e, b                                       ; $5b82: $58
    ld a, b                                       ; $5b83: $78
    db $e4                                        ; $5b84: $e4

jr_022_5b85:
    db $fc                                        ; $5b85: $fc
    ld [hl], h                                    ; $5b86: $74
    call c, $f8a8                                 ; $5b87: $dc $a8 $f8
    add sp, $78                                   ; $5b8a: $e8 $78
    add sp, $38                                   ; $5b8c: $e8 $38
    ret nc                                        ; $5b8e: $d0

    ld d, b                                       ; $5b8f: $50
    and b                                         ; $5b90: $a0
    ldh [$d0], a                                  ; $5b91: $e0 $d0
    ldh a, [$f8]                                  ; $5b93: $f0 $f8
    add sp, $78                                   ; $5b95: $e8 $78
    ret z                                         ; $5b97: $c8

    ldh a, [$f0]                                  ; $5b98: $f0 $f0
    ld h, b                                       ; $5b9a: $60
    ld h, b                                       ; $5b9b: $60
    sub b                                         ; $5b9c: $90
    ldh a, [$f0]                                  ; $5b9d: $f0 $f0
    ldh a, [$03]                                  ; $5b9f: $f0 $03
    inc bc                                        ; $5ba1: $03

jr_022_5ba2:
    inc b                                         ; $5ba2: $04
    rlca                                          ; $5ba3: $07

jr_022_5ba4:
    add hl, bc                                    ; $5ba4: $09
    rrca                                          ; $5ba5: $0f
    ld a, [bc]                                    ; $5ba6: $0a

jr_022_5ba7:
    rrca                                          ; $5ba7: $0f
    ld [de], a                                    ; $5ba8: $12

jr_022_5ba9:
    rra                                           ; $5ba9: $1f
    ld a, [hl-]                                   ; $5baa: $3a
    cpl                                           ; $5bab: $2f
    dec a                                         ; $5bac: $3d
    daa                                           ; $5bad: $27
    dec e                                         ; $5bae: $1d
    rla                                           ; $5baf: $17
    dec bc                                        ; $5bb0: $0b
    rrca                                          ; $5bb1: $0f
    inc b                                         ; $5bb2: $04
    rlca                                          ; $5bb3: $07
    rlca                                          ; $5bb4: $07
    rlca                                          ; $5bb5: $07
    rlca                                          ; $5bb6: $07
    inc b                                         ; $5bb7: $04
    rlca                                          ; $5bb8: $07
    rlca                                          ; $5bb9: $07
    rlca                                          ; $5bba: $07
    dec b                                         ; $5bbb: $05
    add hl, bc                                    ; $5bbc: $09
    rrca                                          ; $5bbd: $0f
    rrca                                          ; $5bbe: $0f
    rrca                                          ; $5bbf: $0f
    ret nz                                        ; $5bc0: $c0

    ret nz                                        ; $5bc1: $c0

    jr nz, jr_022_5ba4                            ; $5bc2: $20 $e0

    ret nc                                        ; $5bc4: $d0

    ldh a, [$30]                                  ; $5bc5: $f0 $30
    ldh a, [$28]                                  ; $5bc7: $f0 $28
    ld hl, sp+$28                                 ; $5bc9: $f8 $28
    ld hl, sp+$28                                 ; $5bcb: $f8 $28
    ld hl, sp+$78                                 ; $5bcd: $f8 $78
    ld hl, sp+$70                                 ; $5bcf: $f8 $70
    ret nc                                        ; $5bd1: $d0

    ldh a, [$f0]                                  ; $5bd2: $f0 $f0
    ret nc                                        ; $5bd4: $d0

    ldh a, [$fe]                                  ; $5bd5: $f0 $fe
    ld e, $f6                                     ; $5bd7: $1e $f6
    or $f0                                        ; $5bd9: $f6 $f0
    ret nc                                        ; $5bdb: $d0

    ld c, b                                       ; $5bdc: $48
    ld a, b                                       ; $5bdd: $78
    ld a, b                                       ; $5bde: $78
    ld a, b                                       ; $5bdf: $78
    inc b                                         ; $5be0: $04
    inc b                                         ; $5be1: $04
    ld a, [de]                                    ; $5be2: $1a
    ld e, $27                                     ; $5be3: $1e $27
    ccf                                           ; $5be5: $3f
    xor $fb                                       ; $5be6: $ee $fb
    push de                                       ; $5be8: $d5
    rst $18                                       ; $5be9: $df
    rst $10                                       ; $5bea: $d7
    sbc $57                                       ; $5beb: $de $57
    ld e, h                                       ; $5bed: $5c
    dec hl                                        ; $5bee: $2b
    ld a, [hl+]                                   ; $5bef: $2a
    dec e                                         ; $5bf0: $1d
    rra                                           ; $5bf1: $1f
    inc e                                         ; $5bf2: $1c
    rla                                           ; $5bf3: $17
    ld e, $1b                                     ; $5bf4: $1e $1b
    rra                                           ; $5bf6: $1f
    rra                                           ; $5bf7: $1f
    rrca                                          ; $5bf8: $0f
    rrca                                          ; $5bf9: $0f
    ld b, $06                                     ; $5bfa: $06 $06
    add hl, bc                                    ; $5bfc: $09
    rrca                                          ; $5bfd: $0f

jr_022_5bfe:
    rrca                                          ; $5bfe: $0f
    rrca                                          ; $5bff: $0f
    nop                                           ; $5c00: $00
    nop                                           ; $5c01: $00
    ldh [$e0], a                                  ; $5c02: $e0 $e0
    jr jr_022_5bfe                                ; $5c04: $18 $f8

    inc b                                         ; $5c06: $04
    db $fc                                        ; $5c07: $fc
    inc d                                         ; $5c08: $14
    db $fc                                        ; $5c09: $fc
    cp b                                          ; $5c0a: $b8
    add sp, -$10                                  ; $5c0b: $e8 $f0
    ld d, b                                       ; $5c0d: $50
    ldh a, [$90]                                  ; $5c0e: $f0 $90
    ld hl, sp+$08                                 ; $5c10: $f8 $08
    ldh a, [$90]                                  ; $5c12: $f0 $90
    ld h, b                                       ; $5c14: $60
    ldh [$c0], a                                  ; $5c15: $e0 $c0
    ret nz                                        ; $5c17: $c0

    add b                                         ; $5c18: $80
    add b                                         ; $5c19: $80
    nop                                           ; $5c1a: $00
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    ld bc, $0601                                  ; $5c20: $01 $01 $06
    rlca                                          ; $5c23: $07
    inc b                                         ; $5c24: $04
    rlca                                          ; $5c25: $07
    dec bc                                        ; $5c26: $0b
    rrca                                          ; $5c27: $0f
    ld [$d80f], sp                                ; $5c28: $08 $0f $d8
    rst $18                                       ; $5c2b: $df
    db $fc                                        ; $5c2c: $fc
    rst $28                                       ; $5c2d: $ef
    rst $38                                       ; $5c2e: $ff
    rst $20                                       ; $5c2f: $e7
    ccf                                           ; $5c30: $3f
    add hl, sp                                    ; $5c31: $39
    rra                                           ; $5c32: $1f
    inc e                                         ; $5c33: $1c
    rrca                                          ; $5c34: $0f
    dec bc                                        ; $5c35: $0b
    rlca                                          ; $5c36: $07
    inc b                                         ; $5c37: $04
    rlca                                          ; $5c38: $07
    rlca                                          ; $5c39: $07
    rlca                                          ; $5c3a: $07
    dec b                                         ; $5c3b: $05
    add hl, bc                                    ; $5c3c: $09
    rrca                                          ; $5c3d: $0f
    ld c, $0e                                     ; $5c3e: $0e $0e
    add b                                         ; $5c40: $80
    add b                                         ; $5c41: $80
    ld b, b                                       ; $5c42: $40
    ret nz                                        ; $5c43: $c0

    or b                                          ; $5c44: $b0
    ldh a, [rNR10]                                ; $5c45: $f0 $10
    ldh a, [$88]                                  ; $5c47: $f0 $88
    ld hl, sp+$48                                 ; $5c49: $f8 $48
    ld hl, sp-$04                                 ; $5c4b: $f8 $fc
    or h                                          ; $5c4d: $b4
    db $fc                                        ; $5c4e: $fc
    ld d, h                                       ; $5c4f: $54
    ld hl, sp+$58                                 ; $5c50: $f8 $58
    ldh a, [$30]                                  ; $5c52: $f0 $30
    ldh [$e0], a                                  ; $5c54: $e0 $e0
    and b                                         ; $5c56: $a0
    ldh [$e0], a                                  ; $5c57: $e0 $e0
    ldh [$e0], a                                  ; $5c59: $e0 $e0
    and b                                         ; $5c5b: $a0
    sub b                                         ; $5c5c: $90
    ldh a, [$f0]                                  ; $5c5d: $f0 $f0
    ldh a, [rP1]                                  ; $5c5f: $f0 $00
    nop                                           ; $5c61: $00
    rlca                                          ; $5c62: $07
    rlca                                          ; $5c63: $07
    jr jr_022_5c85                                ; $5c64: $18 $1f

    jr nz, jr_022_5ca7                            ; $5c66: $20 $3f

    jr z, jr_022_5ca9                             ; $5c68: $28 $3f

    dec e                                         ; $5c6a: $1d
    rla                                           ; $5c6b: $17
    rrca                                          ; $5c6c: $0f
    ld a, [bc]                                    ; $5c6d: $0a
    rrca                                          ; $5c6e: $0f
    add hl, bc                                    ; $5c6f: $09
    rra                                           ; $5c70: $1f
    db $10                                        ; $5c71: $10
    rrca                                          ; $5c72: $0f
    add hl, bc                                    ; $5c73: $09
    dec b                                         ; $5c74: $05
    rlca                                          ; $5c75: $07
    ld [bc], a                                    ; $5c76: $02
    inc bc                                        ; $5c77: $03
    ld bc, $0001                                  ; $5c78: $01 $01 $00
    nop                                           ; $5c7b: $00
    nop                                           ; $5c7c: $00
    nop                                           ; $5c7d: $00
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    jr nz, jr_022_5ca2                            ; $5c80: $20 $20

    ld e, b                                       ; $5c82: $58
    ld a, b                                       ; $5c83: $78
    db $e4                                        ; $5c84: $e4

jr_022_5c85:
    db $fc                                        ; $5c85: $fc
    ld [hl], h                                    ; $5c86: $74
    call c, $fbab                                 ; $5c87: $dc $ab $fb
    db $eb                                        ; $5c8a: $eb
    ld a, e                                       ; $5c8b: $7b
    ld [$d43a], a                                 ; $5c8c: $ea $3a $d4
    ld d, h                                       ; $5c8f: $54
    xor b                                         ; $5c90: $a8
    add sp, -$30                                  ; $5c91: $e8 $d0
    ldh a, [$f8]                                  ; $5c93: $f0 $f8
    add sp, -$08                                  ; $5c95: $e8 $f8
    ret z                                         ; $5c97: $c8

    ldh a, [$f0]                                  ; $5c98: $f0 $f0
    ld h, b                                       ; $5c9a: $60
    ld h, b                                       ; $5c9b: $60
    sub b                                         ; $5c9c: $90
    ldh a, [$f0]                                  ; $5c9d: $f0 $f0
    ldh a, [$03]                                  ; $5c9f: $f0 $03
    inc bc                                        ; $5ca1: $03

jr_022_5ca2:
    inc b                                         ; $5ca2: $04
    rlca                                          ; $5ca3: $07

jr_022_5ca4:
    add hl, bc                                    ; $5ca4: $09
    rrca                                          ; $5ca5: $0f
    ld a, [bc]                                    ; $5ca6: $0a

jr_022_5ca7:
    rrca                                          ; $5ca7: $0f
    ld [de], a                                    ; $5ca8: $12

jr_022_5ca9:
    rra                                           ; $5ca9: $1f
    ld a, [hl-]                                   ; $5caa: $3a
    cpl                                           ; $5cab: $2f
    dec a                                         ; $5cac: $3d
    daa                                           ; $5cad: $27
    dec e                                         ; $5cae: $1d
    rla                                           ; $5caf: $17
    dec bc                                        ; $5cb0: $0b
    rrca                                          ; $5cb1: $0f
    inc b                                         ; $5cb2: $04
    rlca                                          ; $5cb3: $07
    rlca                                          ; $5cb4: $07
    rlca                                          ; $5cb5: $07
    rlca                                          ; $5cb6: $07
    inc b                                         ; $5cb7: $04
    rlca                                          ; $5cb8: $07
    rlca                                          ; $5cb9: $07
    rlca                                          ; $5cba: $07
    dec b                                         ; $5cbb: $05
    add hl, bc                                    ; $5cbc: $09
    rrca                                          ; $5cbd: $0f
    rrca                                          ; $5cbe: $0f
    rrca                                          ; $5cbf: $0f
    ret nz                                        ; $5cc0: $c0

    ret nz                                        ; $5cc1: $c0

    jr nz, jr_022_5ca4                            ; $5cc2: $20 $e0

    db $d3                                        ; $5cc4: $d3
    di                                            ; $5cc5: $f3
    inc sp                                        ; $5cc6: $33
    di                                            ; $5cc7: $f3
    add hl, hl                                    ; $5cc8: $29
    ld sp, hl                                     ; $5cc9: $f9
    ld a, [hl+]                                   ; $5cca: $2a
    ld a, [$fc2c]                                 ; $5ccb: $fa $2c $fc
    ld a, h                                       ; $5cce: $7c
    db $f4                                        ; $5ccf: $f4
    ld a, b                                       ; $5cd0: $78
    ret c                                         ; $5cd1: $d8

    add sp, -$08                                  ; $5cd2: $e8 $f8
    ret z                                         ; $5cd4: $c8

    ld hl, sp-$10                                 ; $5cd5: $f8 $f0
    db $10                                        ; $5cd7: $10
    ldh a, [$f0]                                  ; $5cd8: $f0 $f0
    ldh a, [$d0]                                  ; $5cda: $f0 $d0
    ld c, b                                       ; $5cdc: $48
    ld a, b                                       ; $5cdd: $78
    ld a, b                                       ; $5cde: $78
    ld a, b                                       ; $5cdf: $78
    inc bc                                        ; $5ce0: $03
    inc bc                                        ; $5ce1: $03
    inc b                                         ; $5ce2: $04
    rlca                                          ; $5ce3: $07

jr_022_5ce4:
    dec bc                                        ; $5ce4: $0b
    rrca                                          ; $5ce5: $0f
    call nc, $d4df                                ; $5ce6: $d4 $df $d4
    rst $18                                       ; $5ce9: $df
    call nc, Call_022_4cdf                        ; $5cea: $d4 $df $4c
    ld c, a                                       ; $5ced: $4f
    inc l                                         ; $5cee: $2c
    cpl                                           ; $5cef: $2f
    dec d                                         ; $5cf0: $15
    rla                                           ; $5cf1: $17
    ld a, [bc]                                    ; $5cf2: $0a
    rrca                                          ; $5cf3: $0f
    rrca                                          ; $5cf4: $0f
    rrca                                          ; $5cf5: $0f
    rrca                                          ; $5cf6: $0f
    ld [$0f0f], sp                                ; $5cf7: $08 $0f $0f
    rlca                                          ; $5cfa: $07
    rlca                                          ; $5cfb: $07
    add hl, bc                                    ; $5cfc: $09
    rrca                                          ; $5cfd: $0f
    ld c, $0e                                     ; $5cfe: $0e $0e
    ret nz                                        ; $5d00: $c0

    ret nz                                        ; $5d01: $c0

    jr nz, jr_022_5ce4                            ; $5d02: $20 $e0

    sub b                                         ; $5d04: $90
    ldh a, [$50]                                  ; $5d05: $f0 $50
    ldh a, [$50]                                  ; $5d07: $f0 $50
    ldh a, [$f0]                                  ; $5d09: $f0 $f0
    ldh a, [$f0]                                  ; $5d0b: $f0 $f0
    ret nc                                        ; $5d0d: $d0

    ldh a, [$d0]                                  ; $5d0e: $f0 $d0
    ldh [$a0], a                                  ; $5d10: $e0 $a0
    ld b, b                                       ; $5d12: $40
    ret nz                                        ; $5d13: $c0

    ret nz                                        ; $5d14: $c0

    ret nz                                        ; $5d15: $c0

    ret nz                                        ; $5d16: $c0

    ld b, b                                       ; $5d17: $40
    ret nz                                        ; $5d18: $c0

    ret nz                                        ; $5d19: $c0

    add b                                         ; $5d1a: $80
    add b                                         ; $5d1b: $80
    ld b, b                                       ; $5d1c: $40
    ret nz                                        ; $5d1d: $c0

    ret nz                                        ; $5d1e: $c0

    ret nz                                        ; $5d1f: $c0

    jr jr_022_5d3a                                ; $5d20: $18 $18

    dec h                                         ; $5d22: $25
    dec a                                         ; $5d23: $3d
    ld c, [hl]                                    ; $5d24: $4e
    ld a, a                                       ; $5d25: $7f
    ld e, h                                       ; $5d26: $5c
    ld [hl], a                                    ; $5d27: $77
    ret z                                         ; $5d28: $c8

    rst $38                                       ; $5d29: $ff
    ld [$efff], a                                 ; $5d2a: $ea $ff $ef
    db $fd                                        ; $5d2d: $fd
    scf                                           ; $5d2e: $37
    inc [hl]                                      ; $5d2f: $34
    dec de                                        ; $5d30: $1b
    dec de                                        ; $5d31: $1b
    dec b                                         ; $5d32: $05
    rlca                                          ; $5d33: $07
    ld [bc], a                                    ; $5d34: $02
    inc bc                                        ; $5d35: $03
    inc bc                                        ; $5d36: $03
    inc bc                                        ; $5d37: $03
    rlca                                          ; $5d38: $07
    inc b                                         ; $5d39: $04

jr_022_5d3a:
    rlca                                          ; $5d3a: $07
    rlca                                          ; $5d3b: $07
    dec b                                         ; $5d3c: $05
    rlca                                          ; $5d3d: $07
    rlca                                          ; $5d3e: $07
    rlca                                          ; $5d3f: $07
    nop                                           ; $5d40: $00
    nop                                           ; $5d41: $00
    ldh a, [$f0]                                  ; $5d42: $f0 $f0
    ld [$24f8], sp                                ; $5d44: $08 $f8 $24
    db $fc                                        ; $5d47: $fc
    ld [hl], h                                    ; $5d48: $74
    call c, $dc74                                 ; $5d49: $dc $74 $dc
    ld hl, sp-$48                                 ; $5d4c: $f8 $b8
    ld hl, sp-$58                                 ; $5d4e: $f8 $a8
    ld hl, sp+$08                                 ; $5d50: $f8 $08
    ldh a, [$90]                                  ; $5d52: $f0 $90
    ld h, b                                       ; $5d54: $60
    ldh [rNR41], a                                ; $5d55: $e0 $20
    ldh [$c0], a                                  ; $5d57: $e0 $c0
    ret nz                                        ; $5d59: $c0

    ldh [$e0], a                                  ; $5d5a: $e0 $e0
    sub b                                         ; $5d5c: $90
    ldh a, [rSVBK]                                ; $5d5d: $f0 $70
    ld [hl], b                                    ; $5d5f: $70
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    rlca                                          ; $5d62: $07
    rlca                                          ; $5d63: $07
    ld [$110f], sp                                ; $5d64: $08 $0f $11
    rra                                           ; $5d67: $1f
    inc de                                        ; $5d68: $13
    ld e, $1f                                     ; $5d69: $1e $1f
    dec e                                         ; $5d6b: $1d
    rra                                           ; $5d6c: $1f
    dec d                                         ; $5d6d: $15
    rra                                           ; $5d6e: $1f
    db $10                                        ; $5d6f: $10
    rrca                                          ; $5d70: $0f
    ld [$0707], sp                                ; $5d71: $08 $07 $07

jr_022_5d74:
    ld b, $07                                     ; $5d74: $06 $07
    inc bc                                        ; $5d76: $03
    inc bc                                        ; $5d77: $03
    ld bc, $0301                                  ; $5d78: $01 $01 $03
    inc bc                                        ; $5d7b: $03
    rlca                                          ; $5d7c: $07
    dec b                                         ; $5d7d: $05

jr_022_5d7e:
    rlca                                          ; $5d7e: $07
    rlca                                          ; $5d7f: $07
    ret nz                                        ; $5d80: $c0

    ret nz                                        ; $5d81: $c0

    jr nc, jr_022_5d74                            ; $5d82: $30 $f0

    ret z                                         ; $5d84: $c8

    ld hl, sp+$2b                                 ; $5d85: $f8 $2b
    ei                                            ; $5d87: $fb
    sub e                                         ; $5d88: $93
    di                                            ; $5d89: $f3
    or e                                          ; $5d8a: $b3
    di                                            ; $5d8b: $f3
    ld a, [c]                                     ; $5d8c: $f2
    ld d, d                                       ; $5d8d: $52
    db $f4                                        ; $5d8e: $f4
    inc d                                         ; $5d8f: $14
    add sp, $68                                   ; $5d90: $e8 $68
    ldh a, [$d0]                                  ; $5d92: $f0 $d0
    ld [hl], b                                    ; $5d94: $70
    ldh a, [$e0]                                  ; $5d95: $f0 $e0
    ldh [$e0], a                                  ; $5d97: $e0 $e0
    jr nz, @-$3e                                  ; $5d99: $20 $c0

    ret nz                                        ; $5d9b: $c0

    jr nz, jr_022_5d7e                            ; $5d9c: $20 $e0

    ldh [$e0], a                                  ; $5d9e: $e0 $e0
    inc bc                                        ; $5da0: $03
    inc bc                                        ; $5da1: $03
    inc c                                         ; $5da2: $0c
    rrca                                          ; $5da3: $0f
    db $10                                        ; $5da4: $10
    rra                                           ; $5da5: $1f
    inc h                                         ; $5da6: $24
    ccf                                           ; $5da7: $3f
    ld l, $3b                                     ; $5da8: $2e $3b
    ld e, $13                                     ; $5daa: $1e $13
    rra                                           ; $5dac: $1f
    dec d                                         ; $5dad: $15
    rra                                           ; $5dae: $1f
    dec d                                         ; $5daf: $15
    rra                                           ; $5db0: $1f
    db $10                                        ; $5db1: $10
    rrca                                          ; $5db2: $0f
    dec bc                                        ; $5db3: $0b
    inc b                                         ; $5db4: $04
    rlca                                          ; $5db5: $07
    dec b                                         ; $5db6: $05
    rlca                                          ; $5db7: $07
    inc bc                                        ; $5db8: $03
    inc bc                                        ; $5db9: $03
    rlca                                          ; $5dba: $07
    rlca                                          ; $5dbb: $07
    add hl, bc                                    ; $5dbc: $09
    rrca                                          ; $5dbd: $0f
    ld c, $0e                                     ; $5dbe: $0e $0e
    jr jr_022_5dda                                ; $5dc0: $18 $18

    and h                                         ; $5dc2: $a4
    cp h                                          ; $5dc3: $bc
    ld [hl], d                                    ; $5dc4: $72
    cp $3a                                        ; $5dc5: $fe $3a
    xor $13                                       ; $5dc7: $ee $13
    rst $38                                       ; $5dc9: $ff
    rst $10                                       ; $5dca: $d7
    rst $38                                       ; $5dcb: $ff
    rst $30                                       ; $5dcc: $f7
    ccf                                           ; $5dcd: $3f
    db $fc                                        ; $5dce: $fc
    inc a                                         ; $5dcf: $3c
    ld hl, sp-$08                                 ; $5dd0: $f8 $f8
    ld [hl], b                                    ; $5dd2: $70
    ret nc                                        ; $5dd3: $d0

    and b                                         ; $5dd4: $a0
    ldh [$c0], a                                  ; $5dd5: $e0 $c0
    ret nz                                        ; $5dd7: $c0

    ldh [rNR41], a                                ; $5dd8: $e0 $20

jr_022_5dda:
    ldh [$e0], a                                  ; $5dda: $e0 $e0
    and b                                         ; $5ddc: $a0
    ldh [$e0], a                                  ; $5ddd: $e0 $e0
    ldh [rP1], a                                  ; $5ddf: $e0 $00
    nop                                           ; $5de1: $00
    jr jr_022_5dfc                                ; $5de2: $18 $18

    dec h                                         ; $5de4: $25
    dec a                                         ; $5de5: $3d
    ld c, [hl]                                    ; $5de6: $4e
    ld a, a                                       ; $5de7: $7f
    ld e, h                                       ; $5de8: $5c
    ld [hl], a                                    ; $5de9: $77
    jr z, jr_022_5e2b                             ; $5dea: $28 $3f

    dec hl                                        ; $5dec: $2b
    ccf                                           ; $5ded: $3f
    cpl                                           ; $5dee: $2f
    inc a                                         ; $5def: $3c
    scf                                           ; $5df0: $37
    inc [hl]                                      ; $5df1: $34
    inc hl                                        ; $5df2: $23
    ld [hl+], a                                   ; $5df3: $22
    rlca                                          ; $5df4: $07
    dec b                                         ; $5df5: $05
    ld c, $0b                                     ; $5df6: $0e $0b
    rlca                                          ; $5df8: $07
    rlca                                          ; $5df9: $07
    rrca                                          ; $5dfa: $0f
    rrca                                          ; $5dfb: $0f

jr_022_5dfc:
    dec bc                                        ; $5dfc: $0b
    rrca                                          ; $5dfd: $0f
    ld b, $06                                     ; $5dfe: $06 $06
    nop                                           ; $5e00: $00
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    nop                                           ; $5e03: $00
    ldh a, [$f0]                                  ; $5e04: $f0 $f0
    ld [$24f8], sp                                ; $5e06: $08 $f8 $24
    db $fc                                        ; $5e09: $fc
    ld [hl], h                                    ; $5e0a: $74
    call c, $dc74                                 ; $5e0b: $dc $74 $dc
    ld hl, sp-$48                                 ; $5e0e: $f8 $b8
    ld hl, sp-$58                                 ; $5e10: $f8 $a8
    ld hl, sp+$08                                 ; $5e12: $f8 $08
    ld a, b                                       ; $5e14: $78
    add sp, $38                                   ; $5e15: $e8 $38
    ld hl, sp-$10                                 ; $5e17: $f8 $f0
    ret nc                                        ; $5e19: $d0

    add sp, $78                                   ; $5e1a: $e8 $78
    ret c                                         ; $5e1c: $d8

    ld hl, sp-$10                                 ; $5e1d: $f8 $f0
    ldh a, [rP1]                                  ; $5e1f: $f0 $00
    nop                                           ; $5e21: $00
    ld bc, $0201                                  ; $5e22: $01 $01 $02
    inc bc                                        ; $5e25: $03

jr_022_5e26:
    rlca                                          ; $5e26: $07
    rlca                                          ; $5e27: $07
    ld [$110f], sp                                ; $5e28: $08 $0f $11

jr_022_5e2b:
    rra                                           ; $5e2b: $1f
    ld de, $3f1f                                  ; $5e2c: $11 $1f $3f
    ld l, $3f                                     ; $5e2f: $2e $3f
    ld a, [hl+]                                   ; $5e31: $2a
    ccf                                           ; $5e32: $3f
    jr c, jr_022_5eb0                             ; $5e33: $38 $7b

    ld a, a                                       ; $5e35: $7f
    ld e, h                                       ; $5e36: $5c
    ld d, a                                       ; $5e37: $57
    rst $08                                       ; $5e38: $cf
    set 0, a                                      ; $5e39: $cb $c7
    rst $00                                       ; $5e3b: $c7
    inc b                                         ; $5e3c: $04
    rlca                                          ; $5e3d: $07
    inc bc                                        ; $5e3e: $03
    inc bc                                        ; $5e3f: $03
    nop                                           ; $5e40: $00
    nop                                           ; $5e41: $00
    ret nz                                        ; $5e42: $c0

    ret nz                                        ; $5e43: $c0

    jr nz, jr_022_5e26                            ; $5e44: $20 $e0

    ld h, b                                       ; $5e46: $60
    ldh [$90], a                                  ; $5e47: $e0 $90
    ldh a, [$c8]                                  ; $5e49: $f0 $c8
    ld a, b                                       ; $5e4b: $78
    add sp, $38                                   ; $5e4c: $e8 $38
    db $fc                                        ; $5e4e: $fc
    ld [hl], h                                    ; $5e4f: $74
    db $fc                                        ; $5e50: $fc
    ld d, h                                       ; $5e51: $54
    ld hl, sp+$18                                 ; $5e52: $f8 $18
    call c, Call_000_3ef4                         ; $5e54: $dc $f4 $3e
    ld a, [$d6f6]                                 ; $5e57: $fa $f6 $d6
    ldh [$e0], a                                  ; $5e5a: $e0 $e0
    ret nz                                        ; $5e5c: $c0

    ret nz                                        ; $5e5d: $c0

    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    nop                                           ; $5e60: $00
    nop                                           ; $5e61: $00
    nop                                           ; $5e62: $00
    nop                                           ; $5e63: $00
    rrca                                          ; $5e64: $0f
    rrca                                          ; $5e65: $0f
    db $10                                        ; $5e66: $10
    rra                                           ; $5e67: $1f
    inc h                                         ; $5e68: $24
    ccf                                           ; $5e69: $3f
    ld l, $3b                                     ; $5e6a: $2e $3b
    ld l, $3b                                     ; $5e6c: $2e $3b
    rra                                           ; $5e6e: $1f
    dec e                                         ; $5e6f: $1d
    rra                                           ; $5e70: $1f
    dec d                                         ; $5e71: $15
    rra                                           ; $5e72: $1f
    db $10                                        ; $5e73: $10
    ld b, $07                                     ; $5e74: $06 $07
    rlca                                          ; $5e76: $07
    dec b                                         ; $5e77: $05
    rrca                                          ; $5e78: $0f
    dec bc                                        ; $5e79: $0b
    rra                                           ; $5e7a: $1f
    ld e, $17                                     ; $5e7b: $1e $17
    rra                                           ; $5e7d: $1f
    inc c                                         ; $5e7e: $0c
    inc c                                         ; $5e7f: $0c
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    jr jr_022_5e9c                                ; $5e82: $18 $18

    and h                                         ; $5e84: $a4
    cp h                                          ; $5e85: $bc
    ld [hl], d                                    ; $5e86: $72
    cp $3a                                        ; $5e87: $fe $3a
    xor $12                                       ; $5e89: $ee $12
    cp $d4                                        ; $5e8b: $fe $d4
    db $fc                                        ; $5e8d: $fc
    db $f4                                        ; $5e8e: $f4
    inc a                                         ; $5e8f: $3c
    add sp, $28                                   ; $5e90: $e8 $28
    ret z                                         ; $5e92: $c8

    ld c, b                                       ; $5e93: $48
    ld [hl], b                                    ; $5e94: $70
    ret nc                                        ; $5e95: $d0

    jr nc, @-$0e                                  ; $5e96: $30 $f0

    ldh [$e0], a                                  ; $5e98: $e0 $e0
    ret nc                                        ; $5e9a: $d0

    ld [hl], b                                    ; $5e9b: $70

jr_022_5e9c:
    sub b                                         ; $5e9c: $90
    ldh a, [$60]                                  ; $5e9d: $f0 $60
    ld h, b                                       ; $5e9f: $60
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    inc bc                                        ; $5ea2: $03
    inc bc                                        ; $5ea3: $03
    inc b                                         ; $5ea4: $04
    rlca                                          ; $5ea5: $07

jr_022_5ea6:
    dec bc                                        ; $5ea6: $0b
    rrca                                          ; $5ea7: $0f
    inc c                                         ; $5ea8: $0c
    rrca                                          ; $5ea9: $0f
    inc d                                         ; $5eaa: $14
    rra                                           ; $5eab: $1f
    inc d                                         ; $5eac: $14
    rra                                           ; $5ead: $1f
    inc a                                         ; $5eae: $3c
    cpl                                           ; $5eaf: $2f

jr_022_5eb0:
    ld a, $2f                                     ; $5eb0: $3e $2f
    ld a, [hl]                                    ; $5eb2: $7e
    ld a, e                                       ; $5eb3: $7b
    jr c, jr_022_5ef5                             ; $5eb4: $38 $3f

    inc e                                         ; $5eb6: $1c
    rla                                           ; $5eb7: $17
    rrca                                          ; $5eb8: $0f
    dec bc                                        ; $5eb9: $0b
    inc b                                         ; $5eba: $04
    rlca                                          ; $5ebb: $07
    inc b                                         ; $5ebc: $04
    rlca                                          ; $5ebd: $07
    inc bc                                        ; $5ebe: $03
    inc bc                                        ; $5ebf: $03
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    ret nz                                        ; $5ec2: $c0

    ret nz                                        ; $5ec3: $c0

    jr nz, jr_022_5ea6                            ; $5ec4: $20 $e0

    sub b                                         ; $5ec6: $90
    ldh a, [$50]                                  ; $5ec7: $f0 $50
    ldh a, [rOBP0]                                ; $5ec9: $f0 $48
    ld hl, sp+$48                                 ; $5ecb: $f8 $48
    ld hl, sp-$64                                 ; $5ecd: $f8 $9c
    db $f4                                        ; $5ecf: $f4
    cp a                                          ; $5ed0: $bf
    rst $30                                       ; $5ed1: $f7
    ei                                            ; $5ed2: $fb
    db $db                                        ; $5ed3: $db
    sbc $f2                                       ; $5ed4: $de $f2
    inc a                                         ; $5ed6: $3c
    db $fc                                        ; $5ed7: $fc
    ldh a, [$d0]                                  ; $5ed8: $f0 $d0
    ldh [$e0], a                                  ; $5eda: $e0 $e0
    ret nz                                        ; $5edc: $c0

    ret nz                                        ; $5edd: $c0

    nop                                           ; $5ede: $00
    nop                                           ; $5edf: $00
    inc c                                         ; $5ee0: $0c
    inc c                                         ; $5ee1: $0c
    ld [de], a                                    ; $5ee2: $12
    ld e, $27                                     ; $5ee3: $1e $27
    ccf                                           ; $5ee5: $3f
    ld l, $3b                                     ; $5ee6: $2e $3b
    inc d                                         ; $5ee8: $14
    rra                                           ; $5ee9: $1f
    dec d                                         ; $5eea: $15
    rra                                           ; $5eeb: $1f
    rla                                           ; $5eec: $17
    ld e, $1b                                     ; $5eed: $1e $1b
    ld a, [de]                                    ; $5eef: $1a
    ld de, $0311                                  ; $5ef0: $11 $11 $03
    inc bc                                        ; $5ef3: $03
    rlca                                          ; $5ef4: $07

jr_022_5ef5:
    dec b                                         ; $5ef5: $05
    ld c, $0b                                     ; $5ef6: $0e $0b
    rlca                                          ; $5ef8: $07
    rlca                                          ; $5ef9: $07
    rrca                                          ; $5efa: $0f
    rrca                                          ; $5efb: $0f
    dec bc                                        ; $5efc: $0b
    rrca                                          ; $5efd: $0f
    ld b, $06                                     ; $5efe: $06 $06
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    ld hl, sp-$08                                 ; $5f02: $f8 $f8
    inc b                                         ; $5f04: $04
    db $fc                                        ; $5f05: $fc
    ld [de], a                                    ; $5f06: $12
    cp $3a                                        ; $5f07: $fe $3a
    xor $ba                                       ; $5f09: $ee $ba
    xor $fc                                       ; $5f0b: $ee $fc
    ld e, h                                       ; $5f0d: $5c
    db $fc                                        ; $5f0e: $fc
    ld d, h                                       ; $5f0f: $54
    db $fc                                        ; $5f10: $fc
    inc b                                         ; $5f11: $04
    ldh a, [$90]                                  ; $5f12: $f0 $90
    ld a, b                                       ; $5f14: $78
    add sp, $38                                   ; $5f15: $e8 $38
    ld hl, sp-$10                                 ; $5f17: $f8 $f0
    ret nc                                        ; $5f19: $d0

    add sp, $78                                   ; $5f1a: $e8 $78
    ret c                                         ; $5f1c: $d8

    ld hl, sp-$10                                 ; $5f1d: $f8 $f0
    ldh a, [rP1]                                  ; $5f1f: $f0 $00
    nop                                           ; $5f21: $00
    ld bc, $0301                                  ; $5f22: $01 $01 $03
    inc bc                                        ; $5f25: $03
    inc b                                         ; $5f26: $04
    rlca                                          ; $5f27: $07
    ld [$080f], sp                                ; $5f28: $08 $0f $08
    rrca                                          ; $5f2b: $0f
    rra                                           ; $5f2c: $1f
    rla                                           ; $5f2d: $17
    rra                                           ; $5f2e: $1f
    dec d                                         ; $5f2f: $15
    rra                                           ; $5f30: $1f
    inc e                                         ; $5f31: $1c
    ld a, a                                       ; $5f32: $7f
    ld e, h                                       ; $5f33: $5c
    ld a, e                                       ; $5f34: $7b
    ld a, a                                       ; $5f35: $7f
    ld e, h                                       ; $5f36: $5c
    ld d, a                                       ; $5f37: $57
    rst $08                                       ; $5f38: $cf
    set 0, a                                      ; $5f39: $cb $c7
    rst $00                                       ; $5f3b: $c7
    inc b                                         ; $5f3c: $04
    rlca                                          ; $5f3d: $07
    inc bc                                        ; $5f3e: $03
    inc bc                                        ; $5f3f: $03
    ldh [$e0], a                                  ; $5f40: $e0 $e0
    db $10                                        ; $5f42: $10
    ldh a, [$b0]                                  ; $5f43: $f0 $b0
    ldh a, [rOBP0]                                ; $5f45: $f0 $48
    ld hl, sp-$1c                                 ; $5f47: $f8 $e4
    cp h                                          ; $5f49: $bc
    db $f4                                        ; $5f4a: $f4
    sbc h                                         ; $5f4b: $9c
    cp $3a                                        ; $5f4c: $fe $3a
    cp $2a                                        ; $5f4e: $fe $2a
    db $fc                                        ; $5f50: $fc
    inc c                                         ; $5f51: $0c
    add sp, $38                                   ; $5f52: $e8 $38
    call c, Call_000_3ef4                         ; $5f54: $dc $f4 $3e
    ld a, [$d6f6]                                 ; $5f57: $fa $f6 $d6
    ldh [$e0], a                                  ; $5f5a: $e0 $e0
    ret nz                                        ; $5f5c: $c0

    ret nz                                        ; $5f5d: $c0

    nop                                           ; $5f5e: $00
    nop                                           ; $5f5f: $00
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    rlca                                          ; $5f62: $07
    rlca                                          ; $5f63: $07
    ld [$120f], sp                                ; $5f64: $08 $0f $12
    rra                                           ; $5f67: $1f
    rla                                           ; $5f68: $17
    dec e                                         ; $5f69: $1d
    rla                                           ; $5f6a: $17
    dec e                                         ; $5f6b: $1d
    rrca                                          ; $5f6c: $0f
    ld c, $0f                                     ; $5f6d: $0e $0f
    ld a, [bc]                                    ; $5f6f: $0a
    rrca                                          ; $5f70: $0f
    ld [$090f], sp                                ; $5f71: $08 $0f $09
    ld b, $07                                     ; $5f74: $06 $07
    rlca                                          ; $5f76: $07
    dec b                                         ; $5f77: $05
    rrca                                          ; $5f78: $0f
    dec bc                                        ; $5f79: $0b
    rra                                           ; $5f7a: $1f
    ld e, $17                                     ; $5f7b: $1e $17
    rra                                           ; $5f7d: $1f
    inc c                                         ; $5f7e: $0c
    inc c                                         ; $5f7f: $0c
    inc c                                         ; $5f80: $0c
    inc c                                         ; $5f81: $0c
    jp nc, Jump_000_39de                          ; $5f82: $d2 $de $39

    rst $38                                       ; $5f85: $ff
    dec e                                         ; $5f86: $1d
    rst $30                                       ; $5f87: $f7

jr_022_5f88:
    add hl, bc                                    ; $5f88: $09
    rst $38                                       ; $5f89: $ff
    ld l, d                                       ; $5f8a: $6a
    cp $fa                                        ; $5f8b: $fe $fa
    sbc [hl]                                      ; $5f8d: $9e
    db $f4                                        ; $5f8e: $f4
    sub h                                         ; $5f8f: $94
    db $e4                                        ; $5f90: $e4
    inc h                                         ; $5f91: $24
    ldh [$e0], a                                  ; $5f92: $e0 $e0
    ld [hl], b                                    ; $5f94: $70
    ret nc                                        ; $5f95: $d0

    jr nc, jr_022_5f88                            ; $5f96: $30 $f0

    ldh [$e0], a                                  ; $5f98: $e0 $e0
    ret nc                                        ; $5f9a: $d0

    ld [hl], b                                    ; $5f9b: $70
    sub b                                         ; $5f9c: $90
    ldh a, [$60]                                  ; $5f9d: $f0 $60
    ld h, b                                       ; $5f9f: $60
    ld bc, $0201                                  ; $5fa0: $01 $01 $02
    inc bc                                        ; $5fa3: $03
    dec b                                         ; $5fa4: $05
    rlca                                          ; $5fa5: $07
    ld b, $07                                     ; $5fa6: $06 $07
    ld a, [bc]                                    ; $5fa8: $0a
    rrca                                          ; $5fa9: $0f
    ld a, [bc]                                    ; $5faa: $0a
    rrca                                          ; $5fab: $0f
    ld e, $17                                     ; $5fac: $1e $17
    rra                                           ; $5fae: $1f
    rla                                           ; $5faf: $17
    ccf                                           ; $5fb0: $3f
    dec a                                         ; $5fb1: $3d
    ld a, a                                       ; $5fb2: $7f
    ld e, a                                       ; $5fb3: $5f
    jr c, jr_022_5ff5                             ; $5fb4: $38 $3f

    inc e                                         ; $5fb6: $1c
    rla                                           ; $5fb7: $17
    rrca                                          ; $5fb8: $0f
    dec bc                                        ; $5fb9: $0b
    inc b                                         ; $5fba: $04
    rlca                                          ; $5fbb: $07
    inc b                                         ; $5fbc: $04
    rlca                                          ; $5fbd: $07
    inc bc                                        ; $5fbe: $03
    inc bc                                        ; $5fbf: $03
    ldh [$e0], a                                  ; $5fc0: $e0 $e0
    db $10                                        ; $5fc2: $10
    ldh a, [$c8]                                  ; $5fc3: $f0 $c8
    ld hl, sp+$28                                 ; $5fc5: $f8 $28
    ld hl, sp+$24                                 ; $5fc7: $f8 $24
    db $fc                                        ; $5fc9: $fc
    inc h                                         ; $5fca: $24
    db $fc                                        ; $5fcb: $fc
    ld c, [hl]                                    ; $5fcc: $4e
    ld a, [$fb5f]                                 ; $5fcd: $fa $5f $fb
    ld a, l                                       ; $5fd0: $7d
    db $ed                                        ; $5fd1: $ed
    ld l, [hl]                                    ; $5fd2: $6e
    cp $de                                        ; $5fd3: $fe $de
    ld a, [c]                                     ; $5fd5: $f2
    inc a                                         ; $5fd6: $3c
    db $fc                                        ; $5fd7: $fc
    ldh a, [$d0]                                  ; $5fd8: $f0 $d0
    ldh [$e0], a                                  ; $5fda: $e0 $e0
    ret nz                                        ; $5fdc: $c0

    ret nz                                        ; $5fdd: $c0

    nop                                           ; $5fde: $00
    nop                                           ; $5fdf: $00
    jr nc, jr_022_6012                            ; $5fe0: $30 $30

    ld c, e                                       ; $5fe2: $4b
    ld a, e                                       ; $5fe3: $7b
    sbc h                                         ; $5fe4: $9c
    rst $38                                       ; $5fe5: $ff
    cp b                                          ; $5fe6: $b8
    rst $28                                       ; $5fe7: $ef
    ld d, b                                       ; $5fe8: $50
    ld a, a                                       ; $5fe9: $7f
    ld d, [hl]                                    ; $5fea: $56
    ld a, a                                       ; $5feb: $7f
    ld e, a                                       ; $5fec: $5f
    ld a, c                                       ; $5fed: $79
    ld l, a                                       ; $5fee: $6f
    ld l, c                                       ; $5fef: $69
    ld b, a                                       ; $5ff0: $47
    ld b, h                                       ; $5ff1: $44
    inc bc                                        ; $5ff2: $03
    inc bc                                        ; $5ff3: $03
    rlca                                          ; $5ff4: $07

jr_022_5ff5:
    dec b                                         ; $5ff5: $05
    ld c, $0b                                     ; $5ff6: $0e $0b
    rlca                                          ; $5ff8: $07
    rlca                                          ; $5ff9: $07
    rrca                                          ; $5ffa: $0f
    rrca                                          ; $5ffb: $0f
    dec bc                                        ; $5ffc: $0b
    rrca                                          ; $5ffd: $0f
    ld b, $06                                     ; $5ffe: $06 $06
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    ldh [$e0], a                                  ; $6002: $e0 $e0
    db $10                                        ; $6004: $10
    ldh a, [rOBP0]                                ; $6005: $f0 $48
    ld hl, sp-$18                                 ; $6007: $f8 $e8
    cp b                                          ; $6009: $b8
    add sp, -$48                                  ; $600a: $e8 $b8
    ldh a, [rSVBK]                                ; $600c: $f0 $70
    ldh a, [$50]                                  ; $600e: $f0 $50
    ldh a, [rNR10]                                ; $6010: $f0 $10

jr_022_6012:
    ldh a, [$90]                                  ; $6012: $f0 $90
    ld a, b                                       ; $6014: $78
    add sp, $38                                   ; $6015: $e8 $38
    ld hl, sp-$10                                 ; $6017: $f8 $f0
    ret nc                                        ; $6019: $d0

    add sp, $78                                   ; $601a: $e8 $78
    ret c                                         ; $601c: $d8

    ld hl, sp-$10                                 ; $601d: $f8 $f0
    ldh a, [$03]                                  ; $601f: $f0 $03
    inc bc                                        ; $6021: $03
    inc b                                         ; $6022: $04
    rlca                                          ; $6023: $07
    ld c, $0f                                     ; $6024: $0e $0f
    ld de, $231f                                  ; $6026: $11 $1f $23
    ld a, $23                                     ; $6029: $3e $23
    ld a, $7f                                     ; $602b: $3e $7f
    ld e, h                                       ; $602d: $5c
    ld a, a                                       ; $602e: $7f
    ld d, h                                       ; $602f: $54
    ld a, a                                       ; $6030: $7f
    ld [hl], b                                    ; $6031: $70
    ld a, a                                       ; $6032: $7f
    ld e, h                                       ; $6033: $5c
    ld a, e                                       ; $6034: $7b
    ld a, a                                       ; $6035: $7f
    ld e, h                                       ; $6036: $5c
    ld d, a                                       ; $6037: $57
    rst $08                                       ; $6038: $cf
    set 0, a                                      ; $6039: $cb $c7
    rst $00                                       ; $603b: $c7
    inc b                                         ; $603c: $04
    rlca                                          ; $603d: $07
    inc bc                                        ; $603e: $03
    inc bc                                        ; $603f: $03
    add b                                         ; $6040: $80
    add b                                         ; $6041: $80
    ld b, b                                       ; $6042: $40
    ret nz                                        ; $6043: $c0

    ret nz                                        ; $6044: $c0

    ret nz                                        ; $6045: $c0

    jr nz, @-$1e                                  ; $6046: $20 $e0

    sub b                                         ; $6048: $90
    ldh a, [$d0]                                  ; $6049: $f0 $d0
    ld [hl], b                                    ; $604b: $70
    ld hl, sp-$18                                 ; $604c: $f8 $e8
    ld hl, sp-$58                                 ; $604e: $f8 $a8
    ldh a, [$30]                                  ; $6050: $f0 $30
    add sp, $38                                   ; $6052: $e8 $38
    call c, Call_000_3ef4                         ; $6054: $dc $f4 $3e
    ld a, [$d6f6]                                 ; $6057: $fa $f6 $d6
    ldh [$e0], a                                  ; $605a: $e0 $e0
    ret nz                                        ; $605c: $c0

    ret nz                                        ; $605d: $c0

    nop                                           ; $605e: $00
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    rra                                           ; $6062: $1f
    rra                                           ; $6063: $1f
    jr nz, jr_022_60a5                            ; $6064: $20 $3f

    ld c, b                                       ; $6066: $48
    ld a, a                                       ; $6067: $7f
    ld e, h                                       ; $6068: $5c
    ld [hl], a                                    ; $6069: $77
    ld e, l                                       ; $606a: $5d
    ld [hl], a                                    ; $606b: $77
    ccf                                           ; $606c: $3f
    ld a, [hl-]                                   ; $606d: $3a
    ccf                                           ; $606e: $3f
    ld a, [hl+]                                   ; $606f: $2a
    ccf                                           ; $6070: $3f
    jr nz, jr_022_6082                            ; $6071: $20 $0f

    add hl, bc                                    ; $6073: $09
    ld b, $07                                     ; $6074: $06 $07
    rlca                                          ; $6076: $07
    dec b                                         ; $6077: $05
    rrca                                          ; $6078: $0f
    dec bc                                        ; $6079: $0b
    rra                                           ; $607a: $1f
    ld e, $17                                     ; $607b: $1e $17
    rra                                           ; $607d: $1f
    inc c                                         ; $607e: $0c
    inc c                                         ; $607f: $0c
    jr nc, jr_022_60b2                            ; $6080: $30 $30

jr_022_6082:
    ld c, b                                       ; $6082: $48
    ld a, b                                       ; $6083: $78
    db $e4                                        ; $6084: $e4
    db $fc                                        ; $6085: $fc
    ld [hl], h                                    ; $6086: $74
    call c, $fc24                                 ; $6087: $dc $24 $fc
    xor b                                         ; $608a: $a8
    ld hl, sp-$18                                 ; $608b: $f8 $e8
    ld a, b                                       ; $608d: $78
    ret nc                                        ; $608e: $d0

    ld d, b                                       ; $608f: $50
    sub b                                         ; $6090: $90
    sub b                                         ; $6091: $90
    ldh [$e0], a                                  ; $6092: $e0 $e0
    ld [hl], b                                    ; $6094: $70
    ret nc                                        ; $6095: $d0

    jr nc, @-$0e                                  ; $6096: $30 $f0

    ldh [$e0], a                                  ; $6098: $e0 $e0
    ret nc                                        ; $609a: $d0

    ld [hl], b                                    ; $609b: $70
    sub b                                         ; $609c: $90
    ldh a, [$60]                                  ; $609d: $f0 $60
    ld h, b                                       ; $609f: $60
    rlca                                          ; $60a0: $07
    rlca                                          ; $60a1: $07
    ld [$170f], sp                                ; $60a2: $08 $0f $17

jr_022_60a5:
    rra                                           ; $60a5: $1f

jr_022_60a6:
    jr jr_022_60c7                                ; $60a6: $18 $1f

    jr z, jr_022_60e9                             ; $60a8: $28 $3f

    jr z, jr_022_60eb                             ; $60aa: $28 $3f

    ld a, c                                       ; $60ac: $79
    ld e, a                                       ; $60ad: $5f
    ld a, l                                       ; $60ae: $7d
    ld e, a                                       ; $60af: $5f
    db $fd                                        ; $60b0: $fd
    rst $30                                       ; $60b1: $f7

jr_022_60b2:
    ld a, a                                       ; $60b2: $7f
    ld e, a                                       ; $60b3: $5f
    jr c, @+$41                                   ; $60b4: $38 $3f

    inc e                                         ; $60b6: $1c
    rla                                           ; $60b7: $17
    rrca                                          ; $60b8: $0f
    dec bc                                        ; $60b9: $0b
    inc b                                         ; $60ba: $04
    rlca                                          ; $60bb: $07
    inc b                                         ; $60bc: $04
    rlca                                          ; $60bd: $07
    inc bc                                        ; $60be: $03
    inc bc                                        ; $60bf: $03
    add b                                         ; $60c0: $80
    add b                                         ; $60c1: $80
    ld b, b                                       ; $60c2: $40
    ret nz                                        ; $60c3: $c0

    jr nz, jr_022_60a6                            ; $60c4: $20 $e0

    and b                                         ; $60c6: $a0

jr_022_60c7:
    ldh [$90], a                                  ; $60c7: $e0 $90
    ldh a, [$90]                                  ; $60c9: $f0 $90
    ldh a, [$38]                                  ; $60cb: $f0 $38
    add sp, $7e                                   ; $60cd: $e8 $7e
    xor $f6                                       ; $60cf: $ee $f6
    or [hl]                                       ; $60d1: $b6
    ld l, [hl]                                    ; $60d2: $6e
    cp $de                                        ; $60d3: $fe $de
    ld a, [c]                                     ; $60d5: $f2
    inc a                                         ; $60d6: $3c
    db $fc                                        ; $60d7: $fc
    ldh a, [$d0]                                  ; $60d8: $f0 $d0
    ldh [$e0], a                                  ; $60da: $e0 $e0
    ret nz                                        ; $60dc: $c0

    ret nz                                        ; $60dd: $c0

    nop                                           ; $60de: $00
    nop                                           ; $60df: $00
    nop                                           ; $60e0: $00
    nop                                           ; $60e1: $00
    inc c                                         ; $60e2: $0c
    inc c                                         ; $60e3: $0c
    ld de, $261d                                  ; $60e4: $11 $1d $26
    ccf                                           ; $60e7: $3f
    inc l                                         ; $60e8: $2c

jr_022_60e9:
    dec sp                                        ; $60e9: $3b
    inc d                                         ; $60ea: $14

jr_022_60eb:
    rra                                           ; $60eb: $1f
    rla                                           ; $60ec: $17
    inc e                                         ; $60ed: $1c
    dec de                                        ; $60ee: $1b
    jr jr_022_6104                                ; $60ef: $18 $13

    ld [de], a                                    ; $60f1: $12
    inc bc                                        ; $60f2: $03
    inc bc                                        ; $60f3: $03
    ld b, $07                                     ; $60f4: $06 $07
    inc bc                                        ; $60f6: $03
    inc bc                                        ; $60f7: $03
    rlca                                          ; $60f8: $07
    rlca                                          ; $60f9: $07
    rlca                                          ; $60fa: $07
    rlca                                          ; $60fb: $07
    ld [bc], a                                    ; $60fc: $02
    ld [bc], a                                    ; $60fd: $02
    nop                                           ; $60fe: $00
    nop                                           ; $60ff: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00

jr_022_6104:
    ldh [$e0], a                                  ; $6104: $e0 $e0

jr_022_6106:
    db $10                                        ; $6106: $10
    ldh a, [$08]                                  ; $6107: $f0 $08
    ld hl, sp+$68                                 ; $6109: $f8 $68
    ld hl, sp-$10                                 ; $610b: $f8 $f0
    or b                                          ; $610d: $b0
    ldh a, [$90]                                  ; $610e: $f0 $90
    ldh a, [rNR10]                                ; $6110: $f0 $10
    ldh [$a0], a                                  ; $6112: $e0 $a0
    jr nc, jr_022_6106                            ; $6114: $30 $f0

    ldh [$e0], a                                  ; $6116: $e0 $e0
    ret nc                                        ; $6118: $d0

    ld [hl], b                                    ; $6119: $70
    ldh a, [$f0]                                  ; $611a: $f0 $f0
    ldh [$e0], a                                  ; $611c: $e0 $e0
    nop                                           ; $611e: $00
    nop                                           ; $611f: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    ld bc, $0201                                  ; $6122: $01 $01 $02
    inc bc                                        ; $6125: $03
    inc bc                                        ; $6126: $03
    inc bc                                        ; $6127: $03
    inc b                                         ; $6128: $04
    rlca                                          ; $6129: $07
    add hl, bc                                    ; $612a: $09
    rrca                                          ; $612b: $0f
    rra                                           ; $612c: $1f
    ld d, $1f                                     ; $612d: $16 $1f
    ld d, $1f                                     ; $612f: $16 $1f
    inc e                                         ; $6131: $1c
    ccf                                           ; $6132: $3f
    inc l                                         ; $6133: $2c
    inc l                                         ; $6134: $2c
    dec hl                                        ; $6135: $2b
    ld h, a                                       ; $6136: $67
    ld h, a                                       ; $6137: $67
    ld h, e                                       ; $6138: $63
    ld h, e                                       ; $6139: $63
    nop                                           ; $613a: $00
    inc bc                                        ; $613b: $03
    inc bc                                        ; $613c: $03
    inc bc                                        ; $613d: $03
    nop                                           ; $613e: $00
    nop                                           ; $613f: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    ret nz                                        ; $6142: $c0

    ret nz                                        ; $6143: $c0

    nop                                           ; $6144: $00
    ret nz                                        ; $6145: $c0

    ld b, b                                       ; $6146: $40
    ret nz                                        ; $6147: $c0

    and b                                         ; $6148: $a0
    ldh [$d0], a                                  ; $6149: $e0 $d0
    ld [hl], b                                    ; $614b: $70
    ld hl, sp+$68                                 ; $614c: $f8 $68
    ld hl, sp+$68                                 ; $614e: $f8 $68
    ldh a, [$30]                                  ; $6150: $f0 $30
    ret nc                                        ; $6152: $d0

    jr nc, jr_022_6191                            ; $6153: $30 $3c

    db $f4                                        ; $6155: $f4
    db $ec                                        ; $6156: $ec
    db $ec                                        ; $6157: $ec
    ret nz                                        ; $6158: $c0

    ret nz                                        ; $6159: $c0

    ret nz                                        ; $615a: $c0

    ret nz                                        ; $615b: $c0

    nop                                           ; $615c: $00
    nop                                           ; $615d: $00
    nop                                           ; $615e: $00
    nop                                           ; $615f: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    rlca                                          ; $6164: $07
    rlca                                          ; $6165: $07
    ld [$100f], sp                                ; $6166: $08 $0f $10
    rra                                           ; $6169: $1f
    ld d, $1f                                     ; $616a: $16 $1f
    rrca                                          ; $616c: $0f
    dec c                                         ; $616d: $0d
    rrca                                          ; $616e: $0f
    add hl, bc                                    ; $616f: $09
    rrca                                          ; $6170: $0f
    ld [$0507], sp                                ; $6171: $08 $07 $05
    inc bc                                        ; $6174: $03
    ld bc, $0707                                  ; $6175: $01 $07 $07
    rrca                                          ; $6178: $0f
    ld c, $0b                                     ; $6179: $0e $0b
    rrca                                          ; $617b: $0f
    inc b                                         ; $617c: $04
    inc b                                         ; $617d: $04
    nop                                           ; $617e: $00
    nop                                           ; $617f: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    jr nc, jr_022_61b4                            ; $6182: $30 $30

    adc b                                         ; $6184: $88
    cp b                                          ; $6185: $b8
    ld h, h                                       ; $6186: $64
    db $fc                                        ; $6187: $fc
    inc [hl]                                      ; $6188: $34
    call c, $fc24                                 ; $6189: $dc $24 $fc
    add sp, $38                                   ; $618c: $e8 $38
    ret nc                                        ; $618e: $d0

    db $10                                        ; $618f: $10
    ret nc                                        ; $6190: $d0

jr_022_6191:
    ld d, b                                       ; $6191: $50
    ret nz                                        ; $6192: $c0

    ret nz                                        ; $6193: $c0

    jr nz, @-$1e                                  ; $6194: $20 $e0

    ret nz                                        ; $6196: $c0

    ret nz                                        ; $6197: $c0

    ldh [$60], a                                  ; $6198: $e0 $60
    and b                                         ; $619a: $a0
    ldh [rLCDC], a                                ; $619b: $e0 $40
    ld b, b                                       ; $619d: $40
    nop                                           ; $619e: $00
    nop                                           ; $619f: $00
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    inc bc                                        ; $61a2: $03
    inc bc                                        ; $61a3: $03
    nop                                           ; $61a4: $00
    inc bc                                        ; $61a5: $03
    rlca                                          ; $61a6: $07
    rlca                                          ; $61a7: $07
    inc b                                         ; $61a8: $04
    rlca                                          ; $61a9: $07
    ld [$1c0f], sp                                ; $61aa: $08 $0f $1c
    rla                                           ; $61ad: $17
    ld e, $17                                     ; $61ae: $1e $17
    ld a, $3f                                     ; $61b0: $3e $3f
    ccf                                           ; $61b2: $3f
    cpl                                           ; $61b3: $2f

jr_022_61b4:
    inc c                                         ; $61b4: $0c
    dec bc                                        ; $61b5: $0b
    rlca                                          ; $61b6: $07
    rlca                                          ; $61b7: $07
    nop                                           ; $61b8: $00
    inc bc                                        ; $61b9: $03
    nop                                           ; $61ba: $00
    inc bc                                        ; $61bb: $03
    inc bc                                        ; $61bc: $03
    inc bc                                        ; $61bd: $03
    nop                                           ; $61be: $00
    nop                                           ; $61bf: $00
    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    ret nz                                        ; $61c2: $c0

    ret nz                                        ; $61c3: $c0

    nop                                           ; $61c4: $00
    ret nz                                        ; $61c5: $c0

    and b                                         ; $61c6: $a0
    ldh [$60], a                                  ; $61c7: $e0 $60
    ldh [$50], a                                  ; $61c9: $e0 $50
    ldh a, [$b8]                                  ; $61cb: $f0 $b8
    add sp, -$42                                  ; $61cd: $e8 $be
    xor $f6                                       ; $61cf: $ee $f6
    or $5c                                        ; $61d1: $f6 $5c
    db $fc                                        ; $61d3: $fc
    jr c, @-$06                                   ; $61d4: $38 $f8

    ldh [$e0], a                                  ; $61d6: $e0 $e0
    ret nz                                        ; $61d8: $c0

    ret nz                                        ; $61d9: $c0

    ret nz                                        ; $61da: $c0

    ret nz                                        ; $61db: $c0

    nop                                           ; $61dc: $00
    nop                                           ; $61dd: $00
    nop                                           ; $61de: $00
    nop                                           ; $61df: $00
    nop                                           ; $61e0: $00
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    nop                                           ; $61e3: $00
    nop                                           ; $61e4: $00
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    nop                                           ; $61e8: $00
    nop                                           ; $61e9: $00
    nop                                           ; $61ea: $00
    nop                                           ; $61eb: $00
    nop                                           ; $61ec: $00
    nop                                           ; $61ed: $00
    nop                                           ; $61ee: $00
    nop                                           ; $61ef: $00
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    nop                                           ; $61f2: $00
    nop                                           ; $61f3: $00
    nop                                           ; $61f4: $00
    nop                                           ; $61f5: $00
    nop                                           ; $61f6: $00
    nop                                           ; $61f7: $00
    nop                                           ; $61f8: $00
    nop                                           ; $61f9: $00
    nop                                           ; $61fa: $00
    nop                                           ; $61fb: $00
    nop                                           ; $61fc: $00
    nop                                           ; $61fd: $00
    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    nop                                           ; $6209: $00
    nop                                           ; $620a: $00
    nop                                           ; $620b: $00
    nop                                           ; $620c: $00
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    nop                                           ; $620f: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    nop                                           ; $621a: $00
    nop                                           ; $621b: $00
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
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
    nop                                           ; $622a: $00
    nop                                           ; $622b: $00
    nop                                           ; $622c: $00
    nop                                           ; $622d: $00
    nop                                           ; $622e: $00
    nop                                           ; $622f: $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623a: $00
    nop                                           ; $623b: $00
    nop                                           ; $623c: $00
    nop                                           ; $623d: $00
    nop                                           ; $623e: $00
    nop                                           ; $623f: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    nop                                           ; $624a: $00
    nop                                           ; $624b: $00
    nop                                           ; $624c: $00
    nop                                           ; $624d: $00
    nop                                           ; $624e: $00
    nop                                           ; $624f: $00
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    nop                                           ; $6252: $00
    nop                                           ; $6253: $00
    nop                                           ; $6254: $00
    nop                                           ; $6255: $00
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    nop                                           ; $625a: $00
    nop                                           ; $625b: $00
    nop                                           ; $625c: $00
    nop                                           ; $625d: $00
    nop                                           ; $625e: $00
    nop                                           ; $625f: $00
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626a: $00
    nop                                           ; $626b: $00
    nop                                           ; $626c: $00
    nop                                           ; $626d: $00
    nop                                           ; $626e: $00
    nop                                           ; $626f: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    nop                                           ; $627a: $00
    nop                                           ; $627b: $00
    nop                                           ; $627c: $00
    nop                                           ; $627d: $00
    nop                                           ; $627e: $00
    nop                                           ; $627f: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    nop                                           ; $628b: $00
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    nop                                           ; $628f: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    nop                                           ; $629a: $00
    nop                                           ; $629b: $00
    nop                                           ; $629c: $00
    nop                                           ; $629d: $00
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    nop                                           ; $62a2: $00
    nop                                           ; $62a3: $00
    inc bc                                        ; $62a4: $03
    inc bc                                        ; $62a5: $03
    inc b                                         ; $62a6: $04
    rlca                                          ; $62a7: $07
    dec bc                                        ; $62a8: $0b
    rrca                                          ; $62a9: $0f

jr_022_62aa:
    inc c                                         ; $62aa: $0c
    rrca                                          ; $62ab: $0f
    inc c                                         ; $62ac: $0c
    rrca                                          ; $62ad: $0f
    dec e                                         ; $62ae: $1d
    rla                                           ; $62af: $17
    ccf                                           ; $62b0: $3f
    dec sp                                        ; $62b1: $3b
    ld a, $2f                                     ; $62b2: $3e $2f
    inc e                                         ; $62b4: $1c
    rra                                           ; $62b5: $1f
    rrca                                          ; $62b6: $0f
    dec bc                                        ; $62b7: $0b
    dec b                                         ; $62b8: $05
    rlca                                          ; $62b9: $07
    dec b                                         ; $62ba: $05
    rlca                                          ; $62bb: $07
    ld [bc], a                                    ; $62bc: $02
    ld [bc], a                                    ; $62bd: $02
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    add b                                         ; $62c4: $80
    add b                                         ; $62c5: $80
    ld b, b                                       ; $62c6: $40
    ret nz                                        ; $62c7: $c0

    jr nz, jr_022_62aa                            ; $62c8: $20 $e0

    and b                                         ; $62ca: $a0
    ldh [$a0], a                                  ; $62cb: $e0 $a0
    ldh [rSVBK], a                                ; $62cd: $e0 $70
    ret nc                                        ; $62cf: $d0

    ld hl, sp-$48                                 ; $62d0: $f8 $b8
    ld hl, sp-$08                                 ; $62d2: $f8 $f8
    ld a, b                                       ; $62d4: $78
    ret z                                         ; $62d5: $c8

    ldh a, [$b0]                                  ; $62d6: $f0 $b0
    ret nz                                        ; $62d8: $c0

    ret nz                                        ; $62d9: $c0

    add b                                         ; $62da: $80
    add b                                         ; $62db: $80
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    nop                                           ; $62e6: $00
    nop                                           ; $62e7: $00
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    nop                                           ; $62ed: $00
    nop                                           ; $62ee: $00
    nop                                           ; $62ef: $00
    nop                                           ; $62f0: $00
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    nop                                           ; $62f7: $00
    nop                                           ; $62f8: $00
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    nop                                           ; $62fb: $00
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    nop                                           ; $630f: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631a: $00
    nop                                           ; $631b: $00
    nop                                           ; $631c: $00
    nop                                           ; $631d: $00
    nop                                           ; $631e: $00
    nop                                           ; $631f: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632a: $00
    nop                                           ; $632b: $00
    nop                                           ; $632c: $00
    nop                                           ; $632d: $00
    nop                                           ; $632e: $00
    nop                                           ; $632f: $00
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    nop                                           ; $6334: $00
    nop                                           ; $6335: $00
    nop                                           ; $6336: $00
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    nop                                           ; $6339: $00
    nop                                           ; $633a: $00
    nop                                           ; $633b: $00
    nop                                           ; $633c: $00
    nop                                           ; $633d: $00
    nop                                           ; $633e: $00
    nop                                           ; $633f: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    nop                                           ; $6344: $00
    nop                                           ; $6345: $00
    nop                                           ; $6346: $00
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    nop                                           ; $6349: $00
    nop                                           ; $634a: $00
    nop                                           ; $634b: $00
    nop                                           ; $634c: $00
    nop                                           ; $634d: $00
    nop                                           ; $634e: $00
    nop                                           ; $634f: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00
    nop                                           ; $635c: $00
    nop                                           ; $635d: $00
    nop                                           ; $635e: $00
    nop                                           ; $635f: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    nop                                           ; $636c: $00
    nop                                           ; $636d: $00
    nop                                           ; $636e: $00
    nop                                           ; $636f: $00
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637a: $00
    nop                                           ; $637b: $00
    nop                                           ; $637c: $00
    nop                                           ; $637d: $00
    nop                                           ; $637e: $00
    nop                                           ; $637f: $00
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
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    nop                                           ; $638c: $00
    nop                                           ; $638d: $00
    nop                                           ; $638e: $00
    nop                                           ; $638f: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    nop                                           ; $639b: $00
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    nop                                           ; $639e: $00
    nop                                           ; $639f: $00
    nop                                           ; $63a0: $00
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    inc bc                                        ; $63a4: $03
    inc bc                                        ; $63a5: $03
    inc b                                         ; $63a6: $04
    rlca                                          ; $63a7: $07
    add hl, bc                                    ; $63a8: $09
    rrca                                          ; $63a9: $0f
    ld a, [bc]                                    ; $63aa: $0a
    rrca                                          ; $63ab: $0f
    ld a, [bc]                                    ; $63ac: $0a
    rrca                                          ; $63ad: $0f
    dec e                                         ; $63ae: $1d
    rla                                           ; $63af: $17
    rrca                                          ; $63b0: $0f
    dec bc                                        ; $63b1: $0b
    ld e, $1f                                     ; $63b2: $1e $1f
    inc a                                         ; $63b4: $3c
    daa                                           ; $63b5: $27
    rra                                           ; $63b6: $1f
    dec de                                        ; $63b7: $1b
    rlca                                          ; $63b8: $07
    rlca                                          ; $63b9: $07
    inc bc                                        ; $63ba: $03
    inc bc                                        ; $63bb: $03
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    nop                                           ; $63c3: $00
    add b                                         ; $63c4: $80
    add b                                         ; $63c5: $80
    ld b, b                                       ; $63c6: $40
    ret nz                                        ; $63c7: $c0

    and b                                         ; $63c8: $a0
    ldh [$60], a                                  ; $63c9: $e0 $60
    ldh [$60], a                                  ; $63cb: $e0 $60
    ldh [$78], a                                  ; $63cd: $e0 $78
    ret c                                         ; $63cf: $d8

    ld hl, sp-$48                                 ; $63d0: $f8 $b8
    ld hl, sp-$18                                 ; $63d2: $f8 $e8
    ld [hl], b                                    ; $63d4: $70
    ldh a, [$e0]                                  ; $63d5: $f0 $e0
    and b                                         ; $63d7: $a0
    ld b, b                                       ; $63d8: $40
    ret nz                                        ; $63d9: $c0

    ld b, b                                       ; $63da: $40
    ret nz                                        ; $63db: $c0

    add b                                         ; $63dc: $80
    add b                                         ; $63dd: $80
    nop                                           ; $63de: $00
    nop                                           ; $63df: $00

    db $f6, $63, $f9, $63

    rst $38                                       ; $63e4: $ff
    ld h, e                                       ; $63e5: $63

    db $02, $64

    dec c                                         ; $63e8: $0d
    ld h, h                                       ; $63e9: $64
    inc d                                         ; $63ea: $14
    ld h, h                                       ; $63eb: $64
    inc e                                         ; $63ec: $1c
    ld h, h                                       ; $63ed: $64
    jr nc, @+$66                                  ; $63ee: $30 $64

    inc a                                         ; $63f0: $3c
    ld h, h                                       ; $63f1: $64
    or $63                                        ; $63f2: $f6 $63
    ld b, l                                       ; $63f4: $45
    ld h, h                                       ; $63f5: $64
    nop                                           ; $63f6: $00
    rst $38                                       ; $63f7: $ff
    db $fd                                        ; $63f8: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $63ff: $02
    rst $38                                       ; $6400: $ff
    db $fd                                        ; $6401: $fd

    db $02, $0c, $03, $0c, $04, $18, $02, $0c, $05, $0c, $fd, $02

    jr @+$05                                      ; $640e: $18 $03

    jr jr_022_6414                                ; $6410: $18 $02

    jr @-$01                                      ; $6412: $18 $fd

jr_022_6414:
    nop                                           ; $6414: $00
    ld a, [bc]                                    ; $6415: $0a
    ld b, $1e                                     ; $6416: $06 $1e
    nop                                           ; $6418: $00
    ld a, [bc]                                    ; $6419: $0a
    cp $01                                        ; $641a: $fe $01
    nop                                           ; $641c: $00
    ld a, [bc]                                    ; $641d: $0a
    rlca                                          ; $641e: $07
    ld a, [bc]                                    ; $641f: $0a
    nop                                           ; $6420: $00
    inc bc                                        ; $6421: $03
    ld [$000a], sp                                ; $6422: $08 $0a $00
    inc bc                                        ; $6425: $03
    rlca                                          ; $6426: $07
    ld a, [bc]                                    ; $6427: $0a
    nop                                           ; $6428: $00
    inc bc                                        ; $6429: $03
    ld [$000a], sp                                ; $642a: $08 $0a $00
    ld a, [bc]                                    ; $642d: $0a
    cp $01                                        ; $642e: $fe $01
    nop                                           ; $6430: $00
    ld a, [bc]                                    ; $6431: $0a
    add hl, bc                                    ; $6432: $09
    ld [$0800], sp                                ; $6433: $08 $00 $08
    add hl, bc                                    ; $6436: $09
    ld [$0a00], sp                                ; $6437: $08 $00 $0a
    cp $01                                        ; $643a: $fe $01
    ld [bc], a                                    ; $643c: $02
    ld [de], a                                    ; $643d: $12
    inc bc                                        ; $643e: $03
    ld [de], a                                    ; $643f: $12
    ld [bc], a                                    ; $6440: $02
    ld e, $05                                     ; $6441: $1e $05
    ld [de], a                                    ; $6443: $12
    db $fd                                        ; $6444: $fd
    ld a, [bc]                                    ; $6445: $0a
    ld e, $0b                                     ; $6446: $1e $0b
    ld e, $ff                                     ; $6448: $1e $ff
    nop                                           ; $644a: $00

    db $05, $04, $53, $64, $70, $6a, $53, $64, $70, $64, $70, $65, $70, $65, $70, $65

    ld [hl], b                                    ; $645b: $70
    ld h, l                                       ; $645c: $65
    ld [hl], b                                    ; $645d: $70
    ld h, l                                       ; $645e: $65

    db $70, $66

    ld [hl], b                                    ; $6461: $70
    ld h, a                                       ; $6462: $67
    ld [hl], b                                    ; $6463: $70
    ld l, b                                       ; $6464: $68

    db $70, $69

    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    nop                                           ; $646b: $00
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    ld bc, $0301                                  ; $6470: $01 $01 $03
    inc bc                                        ; $6473: $03
    rlca                                          ; $6474: $07
    rlca                                          ; $6475: $07
    rrca                                          ; $6476: $0f
    rrca                                          ; $6477: $0f
    ld c, $0f                                     ; $6478: $0e $0f
    rlca                                          ; $647a: $07
    rlca                                          ; $647b: $07
    add hl, bc                                    ; $647c: $09
    rrca                                          ; $647d: $0f
    ld [$070f], sp                                ; $647e: $08 $0f $07
    rlca                                          ; $6481: $07
    rlca                                          ; $6482: $07
    ld b, $07                                     ; $6483: $06 $07
    dec b                                         ; $6485: $05
    dec bc                                        ; $6486: $0b
    rrca                                          ; $6487: $0f
    dec bc                                        ; $6488: $0b
    rrca                                          ; $6489: $0f
    rrca                                          ; $648a: $0f
    rrca                                          ; $648b: $0f
    rrca                                          ; $648c: $0f
    dec bc                                        ; $648d: $0b
    rlca                                          ; $648e: $07
    rlca                                          ; $648f: $07
    ldh [$e0], a                                  ; $6490: $e0 $e0
    ldh a, [$f0]                                  ; $6492: $f0 $f0
    sub b                                         ; $6494: $90
    ldh a, [rNR10]                                ; $6495: $f0 $10
    ldh a, [$30]                                  ; $6497: $f0 $30
    ldh a, [rNR10]                                ; $6499: $f0 $10
    ldh a, [$28]                                  ; $649b: $f0 $28
    ld hl, sp+$38                                 ; $649d: $f8 $38
    ld hl, sp+$30                                 ; $649f: $f8 $30
    ret nc                                        ; $64a1: $d0

    sub b                                         ; $64a2: $90
    ldh a, [$e8]                                  ; $64a3: $f0 $e8
    ld a, b                                       ; $64a5: $78
    ld hl, sp-$08                                 ; $64a6: $f8 $f8
    db $10                                        ; $64a8: $10
    ldh a, [$f8]                                  ; $64a9: $f0 $f8
    add sp, -$08                                  ; $64ab: $e8 $f8
    ret c                                         ; $64ad: $d8

    ld [hl], b                                    ; $64ae: $70
    ld [hl], b                                    ; $64af: $70
    rlca                                          ; $64b0: $07
    rlca                                          ; $64b1: $07
    rrca                                          ; $64b2: $0f
    rrca                                          ; $64b3: $0f
    inc c                                         ; $64b4: $0c
    rrca                                          ; $64b5: $0f
    ld [$0a0f], sp                                ; $64b6: $08 $0f $0a
    rrca                                          ; $64b9: $0f
    jr jr_022_64db                                ; $64ba: $18 $1f

    ld a, [hl+]                                   ; $64bc: $2a
    ccf                                           ; $64bd: $3f
    inc hl                                        ; $64be: $23
    ccf                                           ; $64bf: $3f
    ld e, c                                       ; $64c0: $59
    ld a, [hl]                                    ; $64c1: $7e
    ld a, h                                       ; $64c2: $7c
    ld [hl], a                                    ; $64c3: $77
    ld c, a                                       ; $64c4: $4f
    ld c, e                                       ; $64c5: $4b
    rst $08                                       ; $64c6: $cf
    adc $c9                                       ; $64c7: $ce $c9
    rst $08                                       ; $64c9: $cf
    ld d, $1f                                     ; $64ca: $16 $1f
    rrca                                          ; $64cc: $0f
    add hl, bc                                    ; $64cd: $09
    rlca                                          ; $64ce: $07
    rlca                                          ; $64cf: $07
    add b                                         ; $64d0: $80
    add b                                         ; $64d1: $80
    ret nz                                        ; $64d2: $c0

    ret nz                                        ; $64d3: $c0

    ldh [$e0], a                                  ; $64d4: $e0 $e0
    jr nz, @-$1e                                  ; $64d6: $20 $e0

    and b                                         ; $64d8: $a0
    ldh [$30], a                                  ; $64d9: $e0 $30

jr_022_64db:
    ldh a, [$a8]                                  ; $64db: $f0 $a8
    ld hl, sp-$78                                 ; $64dd: $f8 $88
    ld hl, sp+$30                                 ; $64df: $f8 $30
    ldh a, [$78]                                  ; $64e1: $f0 $78
    ret c                                         ; $64e3: $d8

    db $f4                                        ; $64e4: $f4
    sbc h                                         ; $64e5: $9c
    db $fc                                        ; $64e6: $fc
    ld a, h                                       ; $64e7: $7c
    and b                                         ; $64e8: $a0
    ldh [$e0], a                                  ; $64e9: $e0 $e0
    ldh [$c0], a                                  ; $64eb: $e0 $c0
    ret nz                                        ; $64ed: $c0

    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    rlca                                          ; $64f0: $07
    rlca                                          ; $64f1: $07
    rrca                                          ; $64f2: $0f
    rrca                                          ; $64f3: $0f
    dec bc                                        ; $64f4: $0b
    rrca                                          ; $64f5: $0f
    ld [$0c0f], sp                                ; $64f6: $08 $0f $0c
    rrca                                          ; $64f9: $0f
    ld [$140f], sp                                ; $64fa: $08 $0f $14
    rra                                           ; $64fd: $1f
    inc e                                         ; $64fe: $1c
    rra                                           ; $64ff: $1f
    inc c                                         ; $6500: $0c
    dec bc                                        ; $6501: $0b
    add hl, bc                                    ; $6502: $09
    rrca                                          ; $6503: $0f
    rlca                                          ; $6504: $07
    ld b, $05                                     ; $6505: $06 $05
    rlca                                          ; $6507: $07
    dec bc                                        ; $6508: $0b
    rrca                                          ; $6509: $0f
    rra                                           ; $650a: $1f
    rra                                           ; $650b: $1f
    ld e, $16                                     ; $650c: $1e $16
    ld c, $0e                                     ; $650e: $0e $0e
    add b                                         ; $6510: $80
    add b                                         ; $6511: $80
    ret nz                                        ; $6512: $c0

    ret nz                                        ; $6513: $c0

    ldh [$e0], a                                  ; $6514: $e0 $e0
    ldh a, [$f0]                                  ; $6516: $f0 $f0
    ld [hl], b                                    ; $6518: $70
    ldh a, [$e0]                                  ; $6519: $f0 $e0
    ldh [$90], a                                  ; $651b: $e0 $90
    ldh a, [rNR10]                                ; $651d: $f0 $10
    ldh a, [$e0]                                  ; $651f: $f0 $e0
    ldh [$f0], a                                  ; $6521: $e0 $f0
    jr nc, @-$16                                  ; $6523: $30 $e8

    cp b                                          ; $6525: $b8
    add sp, -$08                                  ; $6526: $e8 $f8
    jr nc, @-$0e                                  ; $6528: $30 $f0

    ld [hl], b                                    ; $652a: $70
    ret nc                                        ; $652b: $d0

    ldh a, [$b0]                                  ; $652c: $f0 $b0
    ldh [$e0], a                                  ; $652e: $e0 $e0
    inc bc                                        ; $6530: $03
    inc bc                                        ; $6531: $03
    rlca                                          ; $6532: $07
    rlca                                          ; $6533: $07
    rrca                                          ; $6534: $0f
    rrca                                          ; $6535: $0f
    rrca                                          ; $6536: $0f
    rrca                                          ; $6537: $0f
    rrca                                          ; $6538: $0f
    rrca                                          ; $6539: $0f
    rra                                           ; $653a: $1f
    rra                                           ; $653b: $1f
    ld a, [hl+]                                   ; $653c: $2a
    ccf                                           ; $653d: $3f
    jr z, @+$41                                   ; $653e: $28 $3f

    ld a, e                                       ; $6540: $7b
    ld a, a                                       ; $6541: $7f
    ld e, a                                       ; $6542: $5f
    ld [hl], h                                    ; $6543: $74
    ccf                                           ; $6544: $3f
    jr c, jr_022_6556                             ; $6545: $38 $0f

    inc c                                         ; $6547: $0c
    dec bc                                        ; $6548: $0b
    rrca                                          ; $6549: $0f
    rla                                           ; $654a: $17
    rra                                           ; $654b: $1f
    rrca                                          ; $654c: $0f
    add hl, bc                                    ; $654d: $09
    rlca                                          ; $654e: $07
    rlca                                          ; $654f: $07
    ret nz                                        ; $6550: $c0

    ret nz                                        ; $6551: $c0

    ldh [$e0], a                                  ; $6552: $e0 $e0
    ldh [$e0], a                                  ; $6554: $e0 $e0

jr_022_6556:
    ldh [$e0], a                                  ; $6556: $e0 $e0
    ldh [$e0], a                                  ; $6558: $e0 $e0
    ldh a, [$f0]                                  ; $655a: $f0 $f0
    xor b                                         ; $655c: $a8
    ld hl, sp+$28                                 ; $655d: $f8 $28
    ld hl, sp-$50                                 ; $655f: $f8 $b0
    ldh a, [$f0]                                  ; $6561: $f0 $f0
    ld d, b                                       ; $6563: $50
    ld hl, sp+$18                                 ; $6564: $f8 $18
    db $f4                                        ; $6566: $f4
    ld a, h                                       ; $6567: $7c
    xor [hl]                                      ; $6568: $ae
    xor $e6                                       ; $6569: $ee $e6
    and $c0                                       ; $656b: $e6 $c0
    ret nz                                        ; $656d: $c0

    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    ld bc, $0301                                  ; $6570: $01 $01 $03
    inc bc                                        ; $6573: $03
    rlca                                          ; $6574: $07
    rlca                                          ; $6575: $07
    rrca                                          ; $6576: $0f
    rrca                                          ; $6577: $0f
    ld c, $0f                                     ; $6578: $0e $0f
    rlca                                          ; $657a: $07
    rlca                                          ; $657b: $07
    add hl, bc                                    ; $657c: $09
    rrca                                          ; $657d: $0f
    ld [$070f], sp                                ; $657e: $08 $0f $07
    rlca                                          ; $6581: $07
    rrca                                          ; $6582: $0f
    inc c                                         ; $6583: $0c
    rla                                           ; $6584: $17
    dec e                                         ; $6585: $1d
    rla                                           ; $6586: $17
    rra                                           ; $6587: $1f
    inc c                                         ; $6588: $0c
    rrca                                          ; $6589: $0f
    ld c, $0b                                     ; $658a: $0e $0b
    rrca                                          ; $658c: $0f
    dec c                                         ; $658d: $0d
    rlca                                          ; $658e: $07
    rlca                                          ; $658f: $07
    ldh [$e0], a                                  ; $6590: $e0 $e0
    ldh a, [$f0]                                  ; $6592: $f0 $f0
    sub b                                         ; $6594: $90
    ldh a, [rNR10]                                ; $6595: $f0 $10
    ldh a, [$30]                                  ; $6597: $f0 $30
    ldh a, [rNR10]                                ; $6599: $f0 $10
    ldh a, [$28]                                  ; $659b: $f0 $28
    ld hl, sp+$3e                                 ; $659d: $f8 $3e
    cp $36                                        ; $659f: $fe $36
    sub $94                                       ; $65a1: $d6 $94
    db $f4                                        ; $65a3: $f4
    add sp, $68                                   ; $65a4: $e8 $68
    cp b                                          ; $65a6: $b8
    ld hl, sp-$30                                 ; $65a7: $f8 $d0
    ldh a, [$f8]                                  ; $65a9: $f0 $f8
    ld hl, sp+$78                                 ; $65ab: $f8 $78
    ld l, b                                       ; $65ad: $68
    ld [hl], b                                    ; $65ae: $70

jr_022_65af:
    ld [hl], b                                    ; $65af: $70
    rlca                                          ; $65b0: $07
    rlca                                          ; $65b1: $07
    rrca                                          ; $65b2: $0f
    rrca                                          ; $65b3: $0f
    inc c                                         ; $65b4: $0c
    rrca                                          ; $65b5: $0f
    ld [$0a0f], sp                                ; $65b6: $08 $0f $0a
    rrca                                          ; $65b9: $0f
    jr jr_022_65db                                ; $65ba: $18 $1f

    ld a, [hl+]                                   ; $65bc: $2a
    ccf                                           ; $65bd: $3f
    db $e3                                        ; $65be: $e3
    rst $38                                       ; $65bf: $ff
    reti                                          ; $65c0: $d9


    sbc $7c                                       ; $65c1: $de $7c
    ld [hl], a                                    ; $65c3: $77
    ld e, a                                       ; $65c4: $5f
    ld [hl], e                                    ; $65c5: $73
    ld a, a                                       ; $65c6: $7f
    ld a, h                                       ; $65c7: $7c
    dec bc                                        ; $65c8: $0b
    rrca                                          ; $65c9: $0f

jr_022_65ca:
    ld c, $0f                                     ; $65ca: $0e $0f
    rlca                                          ; $65cc: $07
    rlca                                          ; $65cd: $07
    ld bc, $8001                                  ; $65ce: $01 $01 $80
    add b                                         ; $65d1: $80
    ret nz                                        ; $65d2: $c0

    ret nz                                        ; $65d3: $c0

    ldh [$e0], a                                  ; $65d4: $e0 $e0
    jr nz, @-$1e                                  ; $65d6: $20 $e0

    and b                                         ; $65d8: $a0
    ldh [$30], a                                  ; $65d9: $e0 $30

jr_022_65db:
    ldh a, [$a8]                                  ; $65db: $f0 $a8
    ld hl, sp-$78                                 ; $65dd: $f8 $88
    ld hl, sp+$34                                 ; $65df: $f8 $34
    db $fc                                        ; $65e1: $fc
    ld a, h                                       ; $65e2: $7c
    call c, $a0e0                                 ; $65e3: $dc $e0 $a0
    ldh [$e0], a                                  ; $65e6: $e0 $e0
    jr nz, jr_022_65ca                            ; $65e8: $20 $e0

    ret nc                                        ; $65ea: $d0

    ldh a, [$e0]                                  ; $65eb: $f0 $e0
    jr nz, jr_022_65af                            ; $65ed: $20 $c0

    ret nz                                        ; $65ef: $c0

    rlca                                          ; $65f0: $07
    rlca                                          ; $65f1: $07
    rrca                                          ; $65f2: $0f
    rrca                                          ; $65f3: $0f
    dec bc                                        ; $65f4: $0b
    rrca                                          ; $65f5: $0f
    ld [$0c0f], sp                                ; $65f6: $08 $0f $0c
    rrca                                          ; $65f9: $0f
    ld [$740f], sp                                ; $65fa: $08 $0f $74
    ld a, a                                       ; $65fd: $7f
    ld a, h                                       ; $65fe: $7c
    ld a, a                                       ; $65ff: $7f
    inc l                                         ; $6600: $2c
    dec hl                                        ; $6601: $2b
    add hl, sp                                    ; $6602: $39
    ccf                                           ; $6603: $3f
    rla                                           ; $6604: $17
    ld e, $1f                                     ; $6605: $1e $1f
    rra                                           ; $6607: $1f
    ld [$1d0f], sp                                ; $6608: $08 $0f $1d
    rla                                           ; $660b: $17
    ld e, $1a                                     ; $660c: $1e $1a
    ld c, $0e                                     ; $660e: $0e $0e
    add b                                         ; $6610: $80
    add b                                         ; $6611: $80
    ret nz                                        ; $6612: $c0

    ret nz                                        ; $6613: $c0

    ldh [$e0], a                                  ; $6614: $e0 $e0
    ldh a, [$f0]                                  ; $6616: $f0 $f0
    ld [hl], b                                    ; $6618: $70
    ldh a, [$e0]                                  ; $6619: $f0 $e0
    ldh [$90], a                                  ; $661b: $e0 $90
    ldh a, [rNR10]                                ; $661d: $f0 $10
    ldh a, [$e0]                                  ; $661f: $f0 $e0
    ldh [$e0], a                                  ; $6621: $e0 $e0
    ld h, b                                       ; $6623: $60
    ldh [$a0], a                                  ; $6624: $e0 $a0
    ret nc                                        ; $6626: $d0

    ldh a, [$d0]                                  ; $6627: $f0 $d0
    ldh a, [$b0]                                  ; $6629: $f0 $b0
    ldh a, [$f0]                                  ; $662b: $f0 $f0
    ret nc                                        ; $662d: $d0

    ldh [$e0], a                                  ; $662e: $e0 $e0
    inc bc                                        ; $6630: $03
    inc bc                                        ; $6631: $03
    rlca                                          ; $6632: $07
    rlca                                          ; $6633: $07
    rrca                                          ; $6634: $0f
    rrca                                          ; $6635: $0f
    rrca                                          ; $6636: $0f
    rrca                                          ; $6637: $0f
    rrca                                          ; $6638: $0f
    rrca                                          ; $6639: $0f
    rra                                           ; $663a: $1f
    rra                                           ; $663b: $1f
    ld a, [hl+]                                   ; $663c: $2a
    ccf                                           ; $663d: $3f
    jr z, jr_022_667f                             ; $663e: $28 $3f

    dec de                                        ; $6640: $1b
    rra                                           ; $6641: $1f
    rra                                           ; $6642: $1f
    inc d                                         ; $6643: $14
    ccf                                           ; $6644: $3f
    jr nc, jr_022_66a6                            ; $6645: $30 $5f

    ld a, h                                       ; $6647: $7c
    ld l, e                                       ; $6648: $6b
    ld l, a                                       ; $6649: $6f
    rrca                                          ; $664a: $0f
    rrca                                          ; $664b: $0f
    rlca                                          ; $664c: $07
    rlca                                          ; $664d: $07
    ld bc, $c001                                  ; $664e: $01 $01 $c0
    ret nz                                        ; $6651: $c0

    ldh [$e0], a                                  ; $6652: $e0 $e0
    ldh [$e0], a                                  ; $6654: $e0 $e0
    ldh [$e0], a                                  ; $6656: $e0 $e0
    ldh [$e0], a                                  ; $6658: $e0 $e0
    or $f6                                        ; $665a: $f6 $f6
    xor [hl]                                      ; $665c: $ae
    cp $2c                                        ; $665d: $fe $2c
    db $fc                                        ; $665f: $fc
    cp h                                          ; $6660: $bc
    db $fc                                        ; $6661: $fc
    db $f4                                        ; $6662: $f4
    ld e, h                                       ; $6663: $5c
    ld hl, sp+$38                                 ; $6664: $f8 $38
    ldh [$60], a                                  ; $6666: $e0 $60
    and b                                         ; $6668: $a0
    ldh [$d0], a                                  ; $6669: $e0 $d0
    ldh a, [$e0]                                  ; $666b: $f0 $e0
    jr nz, @-$3e                                  ; $666d: $20 $c0

    ret nz                                        ; $666f: $c0

    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    ld bc, $0301                                  ; $6672: $01 $01 $03
    inc bc                                        ; $6675: $03
    rlca                                          ; $6676: $07
    rlca                                          ; $6677: $07
    rrca                                          ; $6678: $0f
    rrca                                          ; $6679: $0f
    ld c, $0f                                     ; $667a: $0e $0f
    rlca                                          ; $667c: $07
    rlca                                          ; $667d: $07
    add hl, bc                                    ; $667e: $09

jr_022_667f:
    rrca                                          ; $667f: $0f
    ld [$070f], sp                                ; $6680: $08 $0f $07
    rlca                                          ; $6683: $07
    rlca                                          ; $6684: $07
    dec b                                         ; $6685: $05
    dec bc                                        ; $6686: $0b
    rrca                                          ; $6687: $0f
    dec bc                                        ; $6688: $0b
    rrca                                          ; $6689: $0f
    rrca                                          ; $668a: $0f
    rrca                                          ; $668b: $0f
    rrca                                          ; $668c: $0f
    dec bc                                        ; $668d: $0b
    rlca                                          ; $668e: $07
    rlca                                          ; $668f: $07
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    ldh [$e0], a                                  ; $6692: $e0 $e0
    ldh a, [$f0]                                  ; $6694: $f0 $f0
    sub b                                         ; $6696: $90
    ldh a, [rNR10]                                ; $6697: $f0 $10
    ldh a, [$30]                                  ; $6699: $f0 $30
    ldh a, [rNR10]                                ; $669b: $f0 $10
    ldh a, [$28]                                  ; $669d: $f0 $28
    ld hl, sp+$38                                 ; $669f: $f8 $38
    ld hl, sp+$30                                 ; $66a1: $f8 $30
    ret nc                                        ; $66a3: $d0

    add sp, $78                                   ; $66a4: $e8 $78

jr_022_66a6:
    ld hl, sp-$08                                 ; $66a6: $f8 $f8
    db $10                                        ; $66a8: $10
    ldh a, [$f8]                                  ; $66a9: $f0 $f8
    add sp, -$08                                  ; $66ab: $e8 $f8
    ret c                                         ; $66ad: $d8

    ld [hl], b                                    ; $66ae: $70
    ld [hl], b                                    ; $66af: $70
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    rlca                                          ; $66b2: $07
    rlca                                          ; $66b3: $07
    rrca                                          ; $66b4: $0f
    rrca                                          ; $66b5: $0f
    inc c                                         ; $66b6: $0c
    rrca                                          ; $66b7: $0f
    ld [$0a0f], sp                                ; $66b8: $08 $0f $0a
    rrca                                          ; $66bb: $0f
    jr jr_022_66dd                                ; $66bc: $18 $1f

    ld a, [hl+]                                   ; $66be: $2a
    ccf                                           ; $66bf: $3f
    inc hl                                        ; $66c0: $23
    ccf                                           ; $66c1: $3f
    ld e, c                                       ; $66c2: $59
    ld a, [hl]                                    ; $66c3: $7e
    ld c, a                                       ; $66c4: $4f
    ld c, e                                       ; $66c5: $4b
    rst $08                                       ; $66c6: $cf
    adc $c9                                       ; $66c7: $ce $c9
    rst $08                                       ; $66c9: $cf
    ld d, $1f                                     ; $66ca: $16 $1f
    rrca                                          ; $66cc: $0f
    add hl, bc                                    ; $66cd: $09
    rlca                                          ; $66ce: $07
    rlca                                          ; $66cf: $07
    nop                                           ; $66d0: $00
    nop                                           ; $66d1: $00
    add b                                         ; $66d2: $80
    add b                                         ; $66d3: $80
    ret nz                                        ; $66d4: $c0

    ret nz                                        ; $66d5: $c0

    ldh [$e0], a                                  ; $66d6: $e0 $e0
    jr nz, @-$1e                                  ; $66d8: $20 $e0

    and b                                         ; $66da: $a0
    ldh [$30], a                                  ; $66db: $e0 $30

jr_022_66dd:
    ldh a, [$a8]                                  ; $66dd: $f0 $a8
    ld hl, sp-$78                                 ; $66df: $f8 $88
    ld hl, sp+$30                                 ; $66e1: $f8 $30
    ldh a, [$f4]                                  ; $66e3: $f0 $f4
    sbc h                                         ; $66e5: $9c
    db $fc                                        ; $66e6: $fc
    ld a, h                                       ; $66e7: $7c
    and b                                         ; $66e8: $a0
    ldh [$e0], a                                  ; $66e9: $e0 $e0
    ldh [$c0], a                                  ; $66eb: $e0 $c0
    ret nz                                        ; $66ed: $c0

    nop                                           ; $66ee: $00
    nop                                           ; $66ef: $00
    nop                                           ; $66f0: $00
    nop                                           ; $66f1: $00
    rlca                                          ; $66f2: $07
    rlca                                          ; $66f3: $07
    rrca                                          ; $66f4: $0f
    rrca                                          ; $66f5: $0f
    dec bc                                        ; $66f6: $0b
    rrca                                          ; $66f7: $0f
    ld [$0c0f], sp                                ; $66f8: $08 $0f $0c
    rrca                                          ; $66fb: $0f
    ld [$140f], sp                                ; $66fc: $08 $0f $14
    rra                                           ; $66ff: $1f
    inc e                                         ; $6700: $1c
    rra                                           ; $6701: $1f
    inc c                                         ; $6702: $0c
    dec bc                                        ; $6703: $0b
    rlca                                          ; $6704: $07
    ld b, $05                                     ; $6705: $06 $05
    rlca                                          ; $6707: $07
    dec bc                                        ; $6708: $0b
    rrca                                          ; $6709: $0f
    rra                                           ; $670a: $1f
    rra                                           ; $670b: $1f
    ld e, $16                                     ; $670c: $1e $16
    ld c, $0e                                     ; $670e: $0e $0e
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    add b                                         ; $6712: $80
    add b                                         ; $6713: $80
    ret nz                                        ; $6714: $c0

    ret nz                                        ; $6715: $c0

    ldh [$e0], a                                  ; $6716: $e0 $e0
    ldh a, [$f0]                                  ; $6718: $f0 $f0

jr_022_671a:
    ld [hl], b                                    ; $671a: $70
    ldh a, [$e0]                                  ; $671b: $f0 $e0
    ldh [$90], a                                  ; $671d: $e0 $90
    ldh a, [rNR10]                                ; $671f: $f0 $10
    ldh a, [$e0]                                  ; $6721: $f0 $e0
    ldh [$e8], a                                  ; $6723: $e0 $e8
    cp b                                          ; $6725: $b8
    add sp, -$08                                  ; $6726: $e8 $f8
    jr nc, jr_022_671a                            ; $6728: $30 $f0

    ld [hl], b                                    ; $672a: $70
    ret nc                                        ; $672b: $d0

    ldh a, [$b0]                                  ; $672c: $f0 $b0
    ldh [$e0], a                                  ; $672e: $e0 $e0
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    inc bc                                        ; $6732: $03
    inc bc                                        ; $6733: $03
    rlca                                          ; $6734: $07
    rlca                                          ; $6735: $07
    rrca                                          ; $6736: $0f
    rrca                                          ; $6737: $0f
    rrca                                          ; $6738: $0f
    rrca                                          ; $6739: $0f
    rrca                                          ; $673a: $0f
    rrca                                          ; $673b: $0f
    rra                                           ; $673c: $1f
    rra                                           ; $673d: $1f
    ld a, [hl+]                                   ; $673e: $2a
    ccf                                           ; $673f: $3f
    jr z, jr_022_6781                             ; $6740: $28 $3f

    ld a, e                                       ; $6742: $7b
    ld a, a                                       ; $6743: $7f
    ccf                                           ; $6744: $3f
    jr c, jr_022_6756                             ; $6745: $38 $0f

    inc c                                         ; $6747: $0c
    dec bc                                        ; $6748: $0b
    rrca                                          ; $6749: $0f
    rla                                           ; $674a: $17
    rra                                           ; $674b: $1f
    rrca                                          ; $674c: $0f
    add hl, bc                                    ; $674d: $09
    rlca                                          ; $674e: $07
    rlca                                          ; $674f: $07
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    ret nz                                        ; $6752: $c0

    ret nz                                        ; $6753: $c0

    ldh [$e0], a                                  ; $6754: $e0 $e0

jr_022_6756:
    ldh [$e0], a                                  ; $6756: $e0 $e0
    ldh [$e0], a                                  ; $6758: $e0 $e0
    ldh [$e0], a                                  ; $675a: $e0 $e0
    ldh a, [$f0]                                  ; $675c: $f0 $f0
    xor b                                         ; $675e: $a8
    ld hl, sp+$28                                 ; $675f: $f8 $28
    ld hl, sp-$50                                 ; $6761: $f8 $b0
    ldh a, [$f8]                                  ; $6763: $f0 $f8
    jr @-$0a                                      ; $6765: $18 $f4

    ld a, h                                       ; $6767: $7c
    xor [hl]                                      ; $6768: $ae
    xor $e6                                       ; $6769: $ee $e6
    and $c0                                       ; $676b: $e6 $c0
    ret nz                                        ; $676d: $c0

    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    ld bc, $0301                                  ; $6772: $01 $01 $03
    inc bc                                        ; $6775: $03
    rlca                                          ; $6776: $07
    rlca                                          ; $6777: $07
    rlca                                          ; $6778: $07
    rlca                                          ; $6779: $07
    inc bc                                        ; $677a: $03
    inc bc                                        ; $677b: $03
    inc b                                         ; $677c: $04
    rlca                                          ; $677d: $07
    inc b                                         ; $677e: $04
    rlca                                          ; $677f: $07
    inc bc                                        ; $6780: $03

jr_022_6781:
    inc bc                                        ; $6781: $03
    rlca                                          ; $6782: $07
    ld b, $07                                     ; $6783: $06 $07
    dec b                                         ; $6785: $05
    dec bc                                        ; $6786: $0b
    rrca                                          ; $6787: $0f
    dec bc                                        ; $6788: $0b
    rrca                                          ; $6789: $0f
    rrca                                          ; $678a: $0f
    rrca                                          ; $678b: $0f
    rrca                                          ; $678c: $0f
    dec bc                                        ; $678d: $0b
    rlca                                          ; $678e: $07
    rlca                                          ; $678f: $07
    ldh a, [$f0]                                  ; $6790: $f0 $f0
    ld hl, sp-$08                                 ; $6792: $f8 $f8
    ret z                                         ; $6794: $c8

    ld hl, sp-$78                                 ; $6795: $f8 $88
    ld hl, sp+$18                                 ; $6797: $f8 $18
    ld hl, sp-$78                                 ; $6799: $f8 $88
    ld hl, sp-$6c                                 ; $679b: $f8 $94
    db $fc                                        ; $679d: $fc
    inc e                                         ; $679e: $1c
    db $fc                                        ; $679f: $fc
    sbc b                                         ; $67a0: $98
    add sp, -$70                                  ; $67a1: $e8 $90
    ldh a, [$e8]                                  ; $67a3: $f0 $e8
    ld a, b                                       ; $67a5: $78
    ld hl, sp-$08                                 ; $67a6: $f8 $f8
    db $10                                        ; $67a8: $10
    ldh a, [$f8]                                  ; $67a9: $f0 $f8
    add sp, -$08                                  ; $67ab: $e8 $f8
    ret c                                         ; $67ad: $d8

    ld [hl], b                                    ; $67ae: $70
    ld [hl], b                                    ; $67af: $70
    inc bc                                        ; $67b0: $03
    inc bc                                        ; $67b1: $03
    rlca                                          ; $67b2: $07
    rlca                                          ; $67b3: $07
    ld b, $07                                     ; $67b4: $06 $07
    inc b                                         ; $67b6: $04
    rlca                                          ; $67b7: $07
    dec b                                         ; $67b8: $05
    rlca                                          ; $67b9: $07
    inc c                                         ; $67ba: $0c
    rrca                                          ; $67bb: $0f
    dec d                                         ; $67bc: $15
    rra                                           ; $67bd: $1f
    ld de, $2c1f                                  ; $67be: $11 $1f $2c
    ccf                                           ; $67c1: $3f
    ld a, h                                       ; $67c2: $7c
    ld [hl], a                                    ; $67c3: $77
    ld c, a                                       ; $67c4: $4f
    ld c, e                                       ; $67c5: $4b
    rst $08                                       ; $67c6: $cf
    adc $c9                                       ; $67c7: $ce $c9
    rst $08                                       ; $67c9: $cf
    ld d, $1f                                     ; $67ca: $16 $1f
    rrca                                          ; $67cc: $0f
    add hl, bc                                    ; $67cd: $09
    rlca                                          ; $67ce: $07
    rlca                                          ; $67cf: $07
    ret nz                                        ; $67d0: $c0

    ret nz                                        ; $67d1: $c0

    ldh [$e0], a                                  ; $67d2: $e0 $e0
    ld [hl], b                                    ; $67d4: $70
    ldh a, [rNR10]                                ; $67d5: $f0 $10
    ldh a, [$50]                                  ; $67d7: $f0 $50
    ldh a, [rNR23]                                ; $67d9: $f0 $18
    ld hl, sp+$54                                 ; $67db: $f8 $54
    db $fc                                        ; $67dd: $fc
    call nz, $98fc                                ; $67de: $c4 $fc $98
    ld a, b                                       ; $67e1: $78
    ld a, b                                       ; $67e2: $78
    ret c                                         ; $67e3: $d8

    db $f4                                        ; $67e4: $f4
    sbc h                                         ; $67e5: $9c
    db $fc                                        ; $67e6: $fc
    ld a, h                                       ; $67e7: $7c
    and b                                         ; $67e8: $a0
    ldh [$e0], a                                  ; $67e9: $e0 $e0
    ldh [$c0], a                                  ; $67eb: $e0 $c0
    ret nz                                        ; $67ed: $c0

    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    inc bc                                        ; $67f0: $03
    inc bc                                        ; $67f1: $03
    rlca                                          ; $67f2: $07
    rlca                                          ; $67f3: $07
    dec b                                         ; $67f4: $05
    rlca                                          ; $67f5: $07
    inc b                                         ; $67f6: $04
    rlca                                          ; $67f7: $07
    ld b, $07                                     ; $67f8: $06 $07
    inc b                                         ; $67fa: $04
    rlca                                          ; $67fb: $07
    ld a, [bc]                                    ; $67fc: $0a
    rrca                                          ; $67fd: $0f
    ld c, $0f                                     ; $67fe: $0e $0f
    ld b, $05                                     ; $6800: $06 $05
    add hl, bc                                    ; $6802: $09
    rrca                                          ; $6803: $0f
    rlca                                          ; $6804: $07
    ld b, $05                                     ; $6805: $06 $05
    rlca                                          ; $6807: $07
    dec bc                                        ; $6808: $0b
    rrca                                          ; $6809: $0f
    rra                                           ; $680a: $1f
    rra                                           ; $680b: $1f
    ld e, $16                                     ; $680c: $1e $16
    ld c, $0e                                     ; $680e: $0e $0e
    ret nz                                        ; $6810: $c0

    ret nz                                        ; $6811: $c0

    ldh [$e0], a                                  ; $6812: $e0 $e0
    ldh a, [$f0]                                  ; $6814: $f0 $f0
    ld a, b                                       ; $6816: $78
    ld hl, sp+$38                                 ; $6817: $f8 $38
    ld hl, sp+$70                                 ; $6819: $f8 $70
    ldh a, [rOBP0]                                ; $681b: $f0 $48
    ld hl, sp+$08                                 ; $681d: $f8 $08
    ld hl, sp+$70                                 ; $681f: $f8 $70
    ldh a, [$f0]                                  ; $6821: $f0 $f0
    jr nc, @-$16                                  ; $6823: $30 $e8

    cp b                                          ; $6825: $b8
    add sp, -$08                                  ; $6826: $e8 $f8
    jr nc, @-$0e                                  ; $6828: $30 $f0

    ld [hl], b                                    ; $682a: $70
    ret nc                                        ; $682b: $d0

    ldh a, [$b0]                                  ; $682c: $f0 $b0
    ldh [$e0], a                                  ; $682e: $e0 $e0
    ld bc, $0301                                  ; $6830: $01 $01 $03
    inc bc                                        ; $6833: $03
    rlca                                          ; $6834: $07
    rlca                                          ; $6835: $07
    rlca                                          ; $6836: $07
    rlca                                          ; $6837: $07
    rlca                                          ; $6838: $07
    rlca                                          ; $6839: $07
    rrca                                          ; $683a: $0f
    rrca                                          ; $683b: $0f
    dec d                                         ; $683c: $15
    rra                                           ; $683d: $1f
    inc d                                         ; $683e: $14
    rra                                           ; $683f: $1f
    dec a                                         ; $6840: $3d
    ccf                                           ; $6841: $3f
    ld e, a                                       ; $6842: $5f
    ld [hl], h                                    ; $6843: $74
    ccf                                           ; $6844: $3f
    jr c, jr_022_6856                             ; $6845: $38 $0f

    inc c                                         ; $6847: $0c
    dec bc                                        ; $6848: $0b
    rrca                                          ; $6849: $0f
    rla                                           ; $684a: $17
    rra                                           ; $684b: $1f
    rrca                                          ; $684c: $0f
    add hl, bc                                    ; $684d: $09
    rlca                                          ; $684e: $07
    rlca                                          ; $684f: $07
    ldh [$e0], a                                  ; $6850: $e0 $e0
    ldh a, [$f0]                                  ; $6852: $f0 $f0
    ldh a, [$f0]                                  ; $6854: $f0 $f0

jr_022_6856:
    ldh a, [$f0]                                  ; $6856: $f0 $f0
    ldh a, [$f0]                                  ; $6858: $f0 $f0
    ld hl, sp-$08                                 ; $685a: $f8 $f8
    ld d, h                                       ; $685c: $54
    db $fc                                        ; $685d: $fc
    inc d                                         ; $685e: $14
    db $fc                                        ; $685f: $fc
    ret c                                         ; $6860: $d8

    ld hl, sp-$10                                 ; $6861: $f8 $f0
    ld d, b                                       ; $6863: $50
    ld hl, sp+$18                                 ; $6864: $f8 $18
    db $f4                                        ; $6866: $f4
    ld a, h                                       ; $6867: $7c
    xor [hl]                                      ; $6868: $ae
    xor $e6                                       ; $6869: $ee $e6
    and $c0                                       ; $686b: $e6 $c0
    ret nz                                        ; $686d: $c0

    nop                                           ; $686e: $00
    nop                                           ; $686f: $00
    inc bc                                        ; $6870: $03
    inc bc                                        ; $6871: $03
    rlca                                          ; $6872: $07
    rlca                                          ; $6873: $07
    rrca                                          ; $6874: $0f
    rrca                                          ; $6875: $0f

jr_022_6876:
    ld e, $1f                                     ; $6876: $1e $1f

jr_022_6878:
    inc e                                         ; $6878: $1c
    rra                                           ; $6879: $1f
    ld c, $0f                                     ; $687a: $0e $0f
    ld [de], a                                    ; $687c: $12
    rra                                           ; $687d: $1f
    db $10                                        ; $687e: $10
    rra                                           ; $687f: $1f
    ld c, $0f                                     ; $6880: $0e $0f
    rlca                                          ; $6882: $07
    ld b, $07                                     ; $6883: $06 $07
    dec b                                         ; $6885: $05
    dec bc                                        ; $6886: $0b
    rrca                                          ; $6887: $0f
    dec bc                                        ; $6888: $0b
    rrca                                          ; $6889: $0f
    rrca                                          ; $688a: $0f
    rrca                                          ; $688b: $0f
    rrca                                          ; $688c: $0f
    dec bc                                        ; $688d: $0b
    rlca                                          ; $688e: $07
    rlca                                          ; $688f: $07
    ret nz                                        ; $6890: $c0

    ret nz                                        ; $6891: $c0

    ldh [$e0], a                                  ; $6892: $e0 $e0
    jr nz, jr_022_6876                            ; $6894: $20 $e0

    jr nz, jr_022_6878                            ; $6896: $20 $e0

    ld h, b                                       ; $6898: $60
    ldh [rNR41], a                                ; $6899: $e0 $20
    ldh [$50], a                                  ; $689b: $e0 $50
    ldh a, [rSVBK]                                ; $689d: $f0 $70
    ldh a, [$60]                                  ; $689f: $f0 $60
    and b                                         ; $68a1: $a0
    sub b                                         ; $68a2: $90
    ldh a, [$e8]                                  ; $68a3: $f0 $e8
    ld a, b                                       ; $68a5: $78
    ld hl, sp-$08                                 ; $68a6: $f8 $f8
    db $10                                        ; $68a8: $10
    ldh a, [$f8]                                  ; $68a9: $f0 $f8
    add sp, -$08                                  ; $68ab: $e8 $f8
    ret c                                         ; $68ad: $d8

    ld [hl], b                                    ; $68ae: $70
    ld [hl], b                                    ; $68af: $70
    rrca                                          ; $68b0: $0f
    rrca                                          ; $68b1: $0f
    rra                                           ; $68b2: $1f
    rra                                           ; $68b3: $1f
    add hl, de                                    ; $68b4: $19
    rra                                           ; $68b5: $1f
    db $10                                        ; $68b6: $10
    rra                                           ; $68b7: $1f
    dec d                                         ; $68b8: $15
    rra                                           ; $68b9: $1f
    jr nc, @+$41                                  ; $68ba: $30 $3f

    ld d, l                                       ; $68bc: $55
    ld a, a                                       ; $68bd: $7f
    ld b, a                                       ; $68be: $47
    ld a, a                                       ; $68bf: $7f
    or d                                          ; $68c0: $b2
    db $fd                                        ; $68c1: $fd
    ld a, h                                       ; $68c2: $7c
    ld [hl], a                                    ; $68c3: $77
    ld c, a                                       ; $68c4: $4f
    ld c, e                                       ; $68c5: $4b
    rst $08                                       ; $68c6: $cf
    adc $c9                                       ; $68c7: $ce $c9
    rst $08                                       ; $68c9: $cf
    ld d, $1f                                     ; $68ca: $16 $1f
    rrca                                          ; $68cc: $0f
    add hl, bc                                    ; $68cd: $09
    rlca                                          ; $68ce: $07
    rlca                                          ; $68cf: $07
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    add b                                         ; $68d2: $80
    add b                                         ; $68d3: $80
    ret nz                                        ; $68d4: $c0

    ret nz                                        ; $68d5: $c0

    ld b, b                                       ; $68d6: $40
    ret nz                                        ; $68d7: $c0

    ld b, b                                       ; $68d8: $40
    ret nz                                        ; $68d9: $c0

    ld h, b                                       ; $68da: $60
    ldh [$50], a                                  ; $68db: $e0 $50
    ldh a, [rNR10]                                ; $68dd: $f0 $10
    ldh a, [$60]                                  ; $68df: $f0 $60
    ldh [$78], a                                  ; $68e1: $e0 $78
    ret c                                         ; $68e3: $d8

    db $f4                                        ; $68e4: $f4
    sbc h                                         ; $68e5: $9c
    db $fc                                        ; $68e6: $fc
    ld a, h                                       ; $68e7: $7c
    and b                                         ; $68e8: $a0
    ldh [$e0], a                                  ; $68e9: $e0 $e0
    ldh [$c0], a                                  ; $68eb: $e0 $c0
    ret nz                                        ; $68ed: $c0

    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    rrca                                          ; $68f0: $0f
    rrca                                          ; $68f1: $0f
    rra                                           ; $68f2: $1f
    rra                                           ; $68f3: $1f
    rla                                           ; $68f4: $17
    rra                                           ; $68f5: $1f
    ld de, $181f                                  ; $68f6: $11 $1f $18
    rra                                           ; $68f9: $1f
    ld de, $291f                                  ; $68fa: $11 $1f $29
    ccf                                           ; $68fd: $3f

jr_022_68fe:
    jr c, jr_022_693f                             ; $68fe: $38 $3f

jr_022_6900:
    add hl, de                                    ; $6900: $19
    rla                                           ; $6901: $17
    add hl, bc                                    ; $6902: $09
    rrca                                          ; $6903: $0f
    rlca                                          ; $6904: $07
    ld b, $05                                     ; $6905: $06 $05
    rlca                                          ; $6907: $07
    dec bc                                        ; $6908: $0b
    rrca                                          ; $6909: $0f
    rra                                           ; $690a: $1f
    rra                                           ; $690b: $1f
    ld e, $16                                     ; $690c: $1e $16
    ld c, $0e                                     ; $690e: $0e $0e
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    add b                                         ; $6912: $80
    add b                                         ; $6913: $80
    ret nz                                        ; $6914: $c0

    ret nz                                        ; $6915: $c0

    ldh [$e0], a                                  ; $6916: $e0 $e0
    ldh [$e0], a                                  ; $6918: $e0 $e0

jr_022_691a:
    ret nz                                        ; $691a: $c0

    ret nz                                        ; $691b: $c0

    jr nz, jr_022_68fe                            ; $691c: $20 $e0

    jr nz, jr_022_6900                            ; $691e: $20 $e0

    ret nz                                        ; $6920: $c0

    ret nz                                        ; $6921: $c0

    ldh a, [$30]                                  ; $6922: $f0 $30
    add sp, -$48                                  ; $6924: $e8 $b8
    add sp, -$08                                  ; $6926: $e8 $f8
    jr nc, jr_022_691a                            ; $6928: $30 $f0

    ld [hl], b                                    ; $692a: $70
    ret nc                                        ; $692b: $d0

    ldh a, [$b0]                                  ; $692c: $f0 $b0
    ldh [$e0], a                                  ; $692e: $e0 $e0
    rlca                                          ; $6930: $07
    rlca                                          ; $6931: $07
    rrca                                          ; $6932: $0f
    rrca                                          ; $6933: $0f
    rra                                           ; $6934: $1f
    rra                                           ; $6935: $1f
    rra                                           ; $6936: $1f
    rra                                           ; $6937: $1f
    rra                                           ; $6938: $1f
    rra                                           ; $6939: $1f
    ccf                                           ; $693a: $3f
    ccf                                           ; $693b: $3f
    ld d, l                                       ; $693c: $55
    ld a, a                                       ; $693d: $7f
    ld d, b                                       ; $693e: $50

jr_022_693f:
    ld a, a                                       ; $693f: $7f
    rst $30                                       ; $6940: $f7
    rst $38                                       ; $6941: $ff
    ld e, a                                       ; $6942: $5f
    ld [hl], h                                    ; $6943: $74
    ccf                                           ; $6944: $3f
    jr c, jr_022_6956                             ; $6945: $38 $0f

    inc c                                         ; $6947: $0c
    dec bc                                        ; $6948: $0b
    rrca                                          ; $6949: $0f
    rla                                           ; $694a: $17
    rra                                           ; $694b: $1f
    rrca                                          ; $694c: $0f
    add hl, bc                                    ; $694d: $09
    rlca                                          ; $694e: $07
    rlca                                          ; $694f: $07
    add b                                         ; $6950: $80
    add b                                         ; $6951: $80
    ret nz                                        ; $6952: $c0

    ret nz                                        ; $6953: $c0

    ret nz                                        ; $6954: $c0

    ret nz                                        ; $6955: $c0

jr_022_6956:
    ret nz                                        ; $6956: $c0

    ret nz                                        ; $6957: $c0

    ret nz                                        ; $6958: $c0

    ret nz                                        ; $6959: $c0

    ldh [$e0], a                                  ; $695a: $e0 $e0
    ld d, b                                       ; $695c: $50
    ldh a, [$50]                                  ; $695d: $f0 $50
    ldh a, [$60]                                  ; $695f: $f0 $60
    ldh [$f0], a                                  ; $6961: $e0 $f0
    ld d, b                                       ; $6963: $50
    ld hl, sp+$18                                 ; $6964: $f8 $18
    db $f4                                        ; $6966: $f4
    ld a, h                                       ; $6967: $7c
    xor [hl]                                      ; $6968: $ae
    xor $e6                                       ; $6969: $ee $e6
    and $c0                                       ; $696b: $e6 $c0
    ret nz                                        ; $696d: $c0

    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    ld bc, $0301                                  ; $6972: $01 $01 $03
    inc bc                                        ; $6975: $03
    inc bc                                        ; $6976: $03
    inc bc                                        ; $6977: $03
    rlca                                          ; $6978: $07
    rlca                                          ; $6979: $07
    ld b, $07                                     ; $697a: $06 $07
    dec b                                         ; $697c: $05
    rlca                                          ; $697d: $07
    inc b                                         ; $697e: $04
    rlca                                          ; $697f: $07
    inc bc                                        ; $6980: $03
    inc bc                                        ; $6981: $03
    inc bc                                        ; $6982: $03
    ld [bc], a                                    ; $6983: $02
    rlca                                          ; $6984: $07
    rlca                                          ; $6985: $07
    rlca                                          ; $6986: $07
    rlca                                          ; $6987: $07
    rlca                                          ; $6988: $07
    rlca                                          ; $6989: $07
    rlca                                          ; $698a: $07
    rlca                                          ; $698b: $07
    inc bc                                        ; $698c: $03
    inc bc                                        ; $698d: $03
    nop                                           ; $698e: $00
    nop                                           ; $698f: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    ret nz                                        ; $6992: $c0

    ret nz                                        ; $6993: $c0

    ldh [$e0], a                                  ; $6994: $e0 $e0
    and b                                         ; $6996: $a0
    ldh [rNR41], a                                ; $6997: $e0 $20
    ldh [rNR41], a                                ; $6999: $e0 $20
    ldh [rNR10], a                                ; $699b: $e0 $10
    ldh a, [$30]                                  ; $699d: $f0 $30
    ldh a, [rNR41]                                ; $699f: $f0 $20
    ldh [$a0], a                                  ; $69a1: $e0 $a0
    ldh [$f0], a                                  ; $69a3: $e0 $f0
    ldh a, [rNR41]                                ; $69a5: $f0 $20
    ldh [$f0], a                                  ; $69a7: $e0 $f0
    ret nc                                        ; $69a9: $d0

    ldh a, [$f0]                                  ; $69aa: $f0 $f0
    ld h, b                                       ; $69ac: $60
    ld h, b                                       ; $69ad: $60
    nop                                           ; $69ae: $00
    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    nop                                           ; $69b1: $00
    inc bc                                        ; $69b2: $03
    inc bc                                        ; $69b3: $03
    rlca                                          ; $69b4: $07
    rlca                                          ; $69b5: $07
    inc b                                         ; $69b6: $04
    rlca                                          ; $69b7: $07
    inc b                                         ; $69b8: $04
    rlca                                          ; $69b9: $07
    ld b, $07                                     ; $69ba: $06 $07
    ld d, $1f                                     ; $69bc: $16 $1f
    inc de                                        ; $69be: $13
    rra                                           ; $69bf: $1f
    dec l                                         ; $69c0: $2d
    ld a, $3c                                     ; $69c1: $3e $3c
    dec sp                                        ; $69c3: $3b
    ld h, a                                       ; $69c4: $67
    ld h, [hl]                                    ; $69c5: $66
    ld h, l                                       ; $69c6: $65
    ld h, a                                       ; $69c7: $67
    ld a, [bc]                                    ; $69c8: $0a
    rrca                                          ; $69c9: $0f
    rlca                                          ; $69ca: $07
    dec b                                         ; $69cb: $05
    inc bc                                        ; $69cc: $03
    inc bc                                        ; $69cd: $03
    nop                                           ; $69ce: $00
    nop                                           ; $69cf: $00
    nop                                           ; $69d0: $00
    nop                                           ; $69d1: $00
    add b                                         ; $69d2: $80
    add b                                         ; $69d3: $80
    ret nz                                        ; $69d4: $c0

    ret nz                                        ; $69d5: $c0

    ret nz                                        ; $69d6: $c0

    ret nz                                        ; $69d7: $c0

    nop                                           ; $69d8: $00
    ret nz                                        ; $69d9: $c0

    add b                                         ; $69da: $80
    ret nz                                        ; $69db: $c0

    sub b                                         ; $69dc: $90
    ldh a, [$90]                                  ; $69dd: $f0 $90
    ldh a, [rNR41]                                ; $69df: $f0 $20
    ldh [rSVBK], a                                ; $69e1: $e0 $70
    ldh a, [$f8]                                  ; $69e3: $f0 $f8
    ld a, b                                       ; $69e5: $78
    add b                                         ; $69e6: $80
    ret nz                                        ; $69e7: $c0

    ret nz                                        ; $69e8: $c0

    ret nz                                        ; $69e9: $c0

    ret nz                                        ; $69ea: $c0

    ret nz                                        ; $69eb: $c0

    nop                                           ; $69ec: $00
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    inc bc                                        ; $69f2: $03
    inc bc                                        ; $69f3: $03
    rlca                                          ; $69f4: $07
    rlca                                          ; $69f5: $07
    rlca                                          ; $69f6: $07
    rlca                                          ; $69f7: $07
    inc b                                         ; $69f8: $04
    rlca                                          ; $69f9: $07
    inc b                                         ; $69fa: $04
    rlca                                          ; $69fb: $07
    ld [$0c0f], sp                                ; $69fc: $08 $0f $0c
    rrca                                          ; $69ff: $0f
    inc b                                         ; $6a00: $04
    rlca                                          ; $6a01: $07
    dec b                                         ; $6a02: $05
    rlca                                          ; $6a03: $07
    ld bc, $0703                                  ; $6a04: $01 $03 $07
    rlca                                          ; $6a07: $07
    rrca                                          ; $6a08: $0f
    rrca                                          ; $6a09: $0f
    ld c, $0a                                     ; $6a0a: $0e $0a
    ld b, $06                                     ; $6a0c: $06 $06
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    nop                                           ; $6a11: $00
    add b                                         ; $6a12: $80
    add b                                         ; $6a13: $80
    ret nz                                        ; $6a14: $c0

    ret nz                                        ; $6a15: $c0

    ret nz                                        ; $6a16: $c0

    ret nz                                        ; $6a17: $c0

    ldh [$e0], a                                  ; $6a18: $e0 $e0
    ld h, b                                       ; $6a1a: $60
    ldh [$a0], a                                  ; $6a1b: $e0 $a0
    ldh [rNR41], a                                ; $6a1d: $e0 $20
    ldh [$c0], a                                  ; $6a1f: $e0 $c0
    ret nz                                        ; $6a21: $c0

    ldh [rNR41], a                                ; $6a22: $e0 $20
    ret nc                                        ; $6a24: $d0

    ldh a, [rNR41]                                ; $6a25: $f0 $20
    ldh [$60], a                                  ; $6a27: $e0 $60
    ldh [$e0], a                                  ; $6a29: $e0 $e0
    and b                                         ; $6a2b: $a0
    ret nz                                        ; $6a2c: $c0

    ret nz                                        ; $6a2d: $c0

    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    nop                                           ; $6a30: $00
    nop                                           ; $6a31: $00
    inc bc                                        ; $6a32: $03
    inc bc                                        ; $6a33: $03
    inc bc                                        ; $6a34: $03
    inc bc                                        ; $6a35: $03
    rlca                                          ; $6a36: $07
    rlca                                          ; $6a37: $07
    rlca                                          ; $6a38: $07
    rlca                                          ; $6a39: $07
    rlca                                          ; $6a3a: $07
    rlca                                          ; $6a3b: $07
    ld d, $1f                                     ; $6a3c: $16 $1f
    inc d                                         ; $6a3e: $14
    rra                                           ; $6a3f: $1f
    ccf                                           ; $6a40: $3f
    ccf                                           ; $6a41: $3f
    cpl                                           ; $6a42: $2f
    jr c, jr_022_6a4c                             ; $6a43: $38 $07

    inc b                                         ; $6a45: $04
    rlca                                          ; $6a46: $07
    rlca                                          ; $6a47: $07
    dec bc                                        ; $6a48: $0b
    rrca                                          ; $6a49: $0f
    rlca                                          ; $6a4a: $07
    dec b                                         ; $6a4b: $05

jr_022_6a4c:
    inc bc                                        ; $6a4c: $03
    inc bc                                        ; $6a4d: $03
    nop                                           ; $6a4e: $00
    nop                                           ; $6a4f: $00
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    ret nz                                        ; $6a52: $c0

    ret nz                                        ; $6a53: $c0

    ret nz                                        ; $6a54: $c0

    ret nz                                        ; $6a55: $c0

    ret nz                                        ; $6a56: $c0

    ret nz                                        ; $6a57: $c0

    ret nz                                        ; $6a58: $c0

    ret nz                                        ; $6a59: $c0

    ret nz                                        ; $6a5a: $c0

    ret nz                                        ; $6a5b: $c0

    sub b                                         ; $6a5c: $90
    ldh a, [rNR10]                                ; $6a5d: $f0 $10
    ldh a, [$a0]                                  ; $6a5f: $f0 $a0
    ldh [$e0], a                                  ; $6a61: $e0 $e0
    ld h, b                                       ; $6a63: $60
    add sp, $78                                   ; $6a64: $e8 $78
    sbc h                                         ; $6a66: $9c
    call c, $cccc                                 ; $6a67: $dc $cc $cc
    ret nz                                        ; $6a6a: $c0

    ret nz                                        ; $6a6b: $c0

    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00

    db $82, $6a, $85, $6a

    adc e                                         ; $6a74: $8b
    ld l, d                                       ; $6a75: $6a
    adc [hl]                                      ; $6a76: $8e
    ld l, d                                       ; $6a77: $6a
    sbc c                                         ; $6a78: $99
    ld l, d                                       ; $6a79: $6a

    db $a0, $6a

    xor b                                         ; $6a7c: $a8
    ld l, d                                       ; $6a7d: $6a

    db $bc, $6a

    ret z                                         ; $6a80: $c8

    ld l, d                                       ; $6a81: $6a
    nop                                           ; $6a82: $00
    rst $38                                       ; $6a83: $ff
    db $fd                                        ; $6a84: $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a                                    ; $6a8b: $02
    rst $38                                       ; $6a8c: $ff
    db $fd                                        ; $6a8d: $fd
    ld [bc], a                                    ; $6a8e: $02
    inc c                                         ; $6a8f: $0c
    inc bc                                        ; $6a90: $03
    inc c                                         ; $6a91: $0c
    inc b                                         ; $6a92: $04
    jr jr_022_6a97                                ; $6a93: $18 $02

    inc c                                         ; $6a95: $0c
    dec b                                         ; $6a96: $05

jr_022_6a97:
    inc c                                         ; $6a97: $0c
    db $fd                                        ; $6a98: $fd
    ld [bc], a                                    ; $6a99: $02
    jr @+$05                                      ; $6a9a: $18 $03

    jr @+$04                                      ; $6a9c: $18 $02

    jr @-$01                                      ; $6a9e: $18 $fd

    db $00, $0a, $06, $1e, $00, $0a, $fe, $01

    nop                                           ; $6aa8: $00
    ld a, [bc]                                    ; $6aa9: $0a
    rlca                                          ; $6aaa: $07
    ld a, [bc]                                    ; $6aab: $0a
    nop                                           ; $6aac: $00
    inc bc                                        ; $6aad: $03
    ld [$000a], sp                                ; $6aae: $08 $0a $00
    inc bc                                        ; $6ab1: $03
    rlca                                          ; $6ab2: $07
    ld a, [bc]                                    ; $6ab3: $0a
    nop                                           ; $6ab4: $00
    inc bc                                        ; $6ab5: $03
    ld [$000a], sp                                ; $6ab6: $08 $0a $00
    ld a, [bc]                                    ; $6ab9: $0a
    cp $01                                        ; $6aba: $fe $01

    db $00, $0a, $09, $08, $00, $08, $09, $08, $00, $0a, $fe, $01

    ld [bc], a                                    ; $6ac8: $02
    ld [de], a                                    ; $6ac9: $12
    inc bc                                        ; $6aca: $03
    ld [de], a                                    ; $6acb: $12
    ld [bc], a                                    ; $6acc: $02
    ld e, $05                                     ; $6acd: $1e $05
    ld [de], a                                    ; $6acf: $12
    db $fd                                        ; $6ad0: $fd

    db $63, $04, $e1, $6a, $f0, $6b, $d9, $6a, $78, $3a, $ff, $6b, $80, $12, $00, $00

    ldh a, [rOCPS]                                ; $6ae1: $f0 $6a
    ldh a, [rOCPS]                                ; $6ae3: $f0 $6a
    ldh a, [rOCPS]                                ; $6ae5: $f0 $6a
    ldh a, [rOCPS]                                ; $6ae7: $f0 $6a
    ldh a, [rOCPS]                                ; $6ae9: $f0 $6a
    ldh a, [rOCPS]                                ; $6aeb: $f0 $6a
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    nop                                           ; $6af0: $00
    nop                                           ; $6af1: $00
    inc bc                                        ; $6af2: $03
    rlca                                          ; $6af3: $07
    inc c                                         ; $6af4: $0c
    rra                                           ; $6af5: $1f
    inc e                                         ; $6af6: $1c
    inc sp                                        ; $6af7: $33
    add hl, sp                                    ; $6af8: $39
    ld h, $23                                     ; $6af9: $26 $23
    ld a, h                                       ; $6afb: $7c
    ld b, e                                       ; $6afc: $43
    ld a, h                                       ; $6afd: $7c
    ld h, c                                       ; $6afe: $61
    ld e, [hl]                                    ; $6aff: $5e
    ld [hl], b                                    ; $6b00: $70
    ld c, a                                       ; $6b01: $4f
    ld [hl], b                                    ; $6b02: $70
    ld c, a                                       ; $6b03: $4f
    ld h, a                                       ; $6b04: $67
    ld a, a                                       ; $6b05: $7f
    ccf                                           ; $6b06: $3f
    ld a, d                                       ; $6b07: $7a
    rra                                           ; $6b08: $1f
    ld [hl-], a                                   ; $6b09: $32
    rra                                           ; $6b0a: $1f
    db $10                                        ; $6b0b: $10
    rrca                                          ; $6b0c: $0f
    jr @+$09                                      ; $6b0d: $18 $07

    rrca                                          ; $6b0f: $0f
    nop                                           ; $6b10: $00
    nop                                           ; $6b11: $00
    ret nz                                        ; $6b12: $c0

    ldh [$30], a                                  ; $6b13: $e0 $30
    ld hl, sp+$38                                 ; $6b15: $f8 $38
    call z, $649c                                 ; $6b17: $cc $9c $64
    call nz, $c23e                                ; $6b1a: $c4 $3e $c2
    ld a, $86                                     ; $6b1d: $3e $86
    ld a, d                                       ; $6b1f: $7a
    ld c, $f2                                     ; $6b20: $0e $f2
    ld c, $f2                                     ; $6b22: $0e $f2
    and $fe                                       ; $6b24: $e6 $fe
    db $fc                                        ; $6b26: $fc
    ld e, [hl]                                    ; $6b27: $5e
    ld hl, sp+$4c                                 ; $6b28: $f8 $4c
    ld hl, sp+$08                                 ; $6b2a: $f8 $08
    ldh a, [rNR23]                                ; $6b2c: $f0 $18
    ldh [$f0], a                                  ; $6b2e: $e0 $f0
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    inc bc                                        ; $6b32: $03
    rlca                                          ; $6b33: $07
    inc c                                         ; $6b34: $0c
    rra                                           ; $6b35: $1f
    inc e                                         ; $6b36: $1c
    inc sp                                        ; $6b37: $33
    add hl, sp                                    ; $6b38: $39
    ld h, $23                                     ; $6b39: $26 $23
    ld a, h                                       ; $6b3b: $7c
    ld b, e                                       ; $6b3c: $43
    ld a, h                                       ; $6b3d: $7c
    ld h, c                                       ; $6b3e: $61
    ld e, [hl]                                    ; $6b3f: $5e
    ld [hl], b                                    ; $6b40: $70
    ld c, a                                       ; $6b41: $4f
    ld [hl], b                                    ; $6b42: $70
    ld c, a                                       ; $6b43: $4f
    ld h, a                                       ; $6b44: $67
    ld a, a                                       ; $6b45: $7f
    ccf                                           ; $6b46: $3f
    ld a, d                                       ; $6b47: $7a
    rra                                           ; $6b48: $1f
    ld [hl-], a                                   ; $6b49: $32
    rra                                           ; $6b4a: $1f
    db $10                                        ; $6b4b: $10
    rrca                                          ; $6b4c: $0f
    jr @+$09                                      ; $6b4d: $18 $07

    rrca                                          ; $6b4f: $0f
    nop                                           ; $6b50: $00
    nop                                           ; $6b51: $00
    ret nz                                        ; $6b52: $c0

    ldh [$30], a                                  ; $6b53: $e0 $30
    ld hl, sp+$38                                 ; $6b55: $f8 $38
    call z, $649c                                 ; $6b57: $cc $9c $64
    call nz, $c23e                                ; $6b5a: $c4 $3e $c2
    ld a, $86                                     ; $6b5d: $3e $86
    ld a, d                                       ; $6b5f: $7a
    ld c, $f2                                     ; $6b60: $0e $f2
    ld c, $f2                                     ; $6b62: $0e $f2
    and $fe                                       ; $6b64: $e6 $fe
    db $fc                                        ; $6b66: $fc
    ld e, [hl]                                    ; $6b67: $5e
    ld hl, sp+$4c                                 ; $6b68: $f8 $4c
    ld hl, sp+$08                                 ; $6b6a: $f8 $08
    ldh a, [rNR23]                                ; $6b6c: $f0 $18
    ldh [$f0], a                                  ; $6b6e: $e0 $f0
    nop                                           ; $6b70: $00
    nop                                           ; $6b71: $00
    inc bc                                        ; $6b72: $03
    rlca                                          ; $6b73: $07
    inc c                                         ; $6b74: $0c
    rra                                           ; $6b75: $1f
    inc e                                         ; $6b76: $1c
    inc sp                                        ; $6b77: $33
    add hl, sp                                    ; $6b78: $39
    ld h, $23                                     ; $6b79: $26 $23
    ld a, h                                       ; $6b7b: $7c
    ld b, e                                       ; $6b7c: $43
    ld a, h                                       ; $6b7d: $7c
    ld h, c                                       ; $6b7e: $61
    ld e, [hl]                                    ; $6b7f: $5e
    ld [hl], b                                    ; $6b80: $70
    ld c, a                                       ; $6b81: $4f
    ld [hl], b                                    ; $6b82: $70
    ld c, a                                       ; $6b83: $4f
    ld h, a                                       ; $6b84: $67
    ld a, a                                       ; $6b85: $7f
    ccf                                           ; $6b86: $3f
    ld a, d                                       ; $6b87: $7a
    rra                                           ; $6b88: $1f
    ld [hl-], a                                   ; $6b89: $32
    rra                                           ; $6b8a: $1f
    db $10                                        ; $6b8b: $10
    rrca                                          ; $6b8c: $0f
    jr @+$09                                      ; $6b8d: $18 $07

    rrca                                          ; $6b8f: $0f
    nop                                           ; $6b90: $00
    nop                                           ; $6b91: $00
    ret nz                                        ; $6b92: $c0

    ldh [$30], a                                  ; $6b93: $e0 $30
    ld hl, sp+$38                                 ; $6b95: $f8 $38
    call z, $649c                                 ; $6b97: $cc $9c $64
    call nz, $c23e                                ; $6b9a: $c4 $3e $c2
    ld a, $86                                     ; $6b9d: $3e $86
    ld a, d                                       ; $6b9f: $7a
    ld c, $f2                                     ; $6ba0: $0e $f2
    ld c, $f2                                     ; $6ba2: $0e $f2
    and $fe                                       ; $6ba4: $e6 $fe
    db $fc                                        ; $6ba6: $fc
    ld e, [hl]                                    ; $6ba7: $5e
    ld hl, sp+$4c                                 ; $6ba8: $f8 $4c
    ld hl, sp+$08                                 ; $6baa: $f8 $08
    ldh a, [rNR23]                                ; $6bac: $f0 $18
    ldh [$f0], a                                  ; $6bae: $e0 $f0
    nop                                           ; $6bb0: $00
    nop                                           ; $6bb1: $00
    inc bc                                        ; $6bb2: $03
    rlca                                          ; $6bb3: $07
    inc c                                         ; $6bb4: $0c
    rra                                           ; $6bb5: $1f
    inc e                                         ; $6bb6: $1c
    inc sp                                        ; $6bb7: $33
    add hl, sp                                    ; $6bb8: $39
    ld h, $23                                     ; $6bb9: $26 $23
    ld a, h                                       ; $6bbb: $7c
    ld b, e                                       ; $6bbc: $43
    ld a, h                                       ; $6bbd: $7c
    ld h, c                                       ; $6bbe: $61
    ld e, [hl]                                    ; $6bbf: $5e
    ld [hl], b                                    ; $6bc0: $70
    ld c, a                                       ; $6bc1: $4f
    ld [hl], b                                    ; $6bc2: $70
    ld c, a                                       ; $6bc3: $4f
    ld h, a                                       ; $6bc4: $67
    ld a, a                                       ; $6bc5: $7f
    ccf                                           ; $6bc6: $3f
    ld a, d                                       ; $6bc7: $7a
    rra                                           ; $6bc8: $1f
    ld [hl-], a                                   ; $6bc9: $32
    rra                                           ; $6bca: $1f
    db $10                                        ; $6bcb: $10
    rrca                                          ; $6bcc: $0f
    jr @+$09                                      ; $6bcd: $18 $07

    rrca                                          ; $6bcf: $0f
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    ret nz                                        ; $6bd2: $c0

    ldh [$30], a                                  ; $6bd3: $e0 $30
    ld hl, sp+$38                                 ; $6bd5: $f8 $38
    call z, $649c                                 ; $6bd7: $cc $9c $64
    call nz, $c23e                                ; $6bda: $c4 $3e $c2
    ld a, $86                                     ; $6bdd: $3e $86
    ld a, d                                       ; $6bdf: $7a
    ld c, $f2                                     ; $6be0: $0e $f2
    ld c, $f2                                     ; $6be2: $0e $f2
    and $fe                                       ; $6be4: $e6 $fe
    db $fc                                        ; $6be6: $fc
    ld e, [hl]                                    ; $6be7: $5e
    ld hl, sp+$4c                                 ; $6be8: $f8 $4c
    ld hl, sp+$08                                 ; $6bea: $f8 $08
    ldh a, [rNR23]                                ; $6bec: $f0 $18
    ldh [$f0], a                                  ; $6bee: $e0 $f0

    db $02, $6c, $05, $6c

    ld [bc], a                                    ; $6bf4: $02
    ld l, h                                       ; $6bf5: $6c
    ld [bc], a                                    ; $6bf6: $02
    ld l, h                                       ; $6bf7: $6c
    ld [bc], a                                    ; $6bf8: $02
    ld l, h                                       ; $6bf9: $6c
    ld [bc], a                                    ; $6bfa: $02
    ld l, h                                       ; $6bfb: $6c
    ld [bc], a                                    ; $6bfc: $02
    ld l, h                                       ; $6bfd: $6c
    ld [bc], a                                    ; $6bfe: $02
    ld l, h                                       ; $6bff: $6c
    ld [bc], a                                    ; $6c00: $02
    ld l, h                                       ; $6c01: $6c
    nop                                           ; $6c02: $00
    rst $38                                       ; $6c03: $ff
    db $fd                                        ; $6c04: $fd
    nop                                           ; $6c05: $00
    ld e, $00                                     ; $6c06: $1e $00
    ld e, $ff                                     ; $6c08: $1e $ff
    nop                                           ; $6c0a: $00
    ld bc, $fdff                                  ; $6c0b: $01 $ff $fd
    nop                                           ; $6c0e: $00
    ld e, $01                                     ; $6c0f: $1e $01
    ld e, $fd                                     ; $6c11: $1e $fd
    ld [bc], a                                    ; $6c13: $02
    jr @+$05                                      ; $6c14: $18 $03

    jr jr_022_6c1a                                ; $6c16: $18 $02

    jr @-$01                                      ; $6c18: $18 $fd

jr_022_6c1a:
    nop                                           ; $6c1a: $00
    ld a, [bc]                                    ; $6c1b: $0a
    ld b, $1e                                     ; $6c1c: $06 $1e
    nop                                           ; $6c1e: $00
    ld a, [bc]                                    ; $6c1f: $0a
    cp $01                                        ; $6c20: $fe $01
    nop                                           ; $6c22: $00
    ld a, [bc]                                    ; $6c23: $0a
    cp $01                                        ; $6c24: $fe $01
    nop                                           ; $6c26: $00
    ld a, [bc]                                    ; $6c27: $0a
    add hl, bc                                    ; $6c28: $09
    ld [$0800], sp                                ; $6c29: $08 $00 $08
    add hl, bc                                    ; $6c2c: $09
    ld [$0a00], sp                                ; $6c2d: $08 $00 $0a
    cp $01                                        ; $6c30: $fe $01
    ld h, e                                       ; $6c32: $63
    inc b                                         ; $6c33: $04
    ld b, d                                       ; $6c34: $42
    ld l, h                                       ; $6c35: $6c
    ld d, b                                       ; $6c36: $50
    ld l, a                                       ; $6c37: $6f
    ld a, [hl-]                                   ; $6c38: $3a
    ld l, h                                       ; $6c39: $6c
    ld a, b                                       ; $6c3a: $78
    ld a, [hl-]                                   ; $6c3b: $3a
    rst $38                                       ; $6c3c: $ff
    ld l, e                                       ; $6c3d: $6b
    add b                                         ; $6c3e: $80
    ld [de], a                                    ; $6c3f: $12
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    ld d, b                                       ; $6c42: $50
    ld l, h                                       ; $6c43: $6c
    ld d, b                                       ; $6c44: $50
    ld l, l                                       ; $6c45: $6d
    ld d, b                                       ; $6c46: $50
    ld l, [hl]                                    ; $6c47: $6e
    ld d, b                                       ; $6c48: $50
    ld l, h                                       ; $6c49: $6c
    ld d, b                                       ; $6c4a: $50
    ld l, h                                       ; $6c4b: $6c
    ld d, b                                       ; $6c4c: $50
    ld l, h                                       ; $6c4d: $6c
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    rrca                                          ; $6c56: $0f
    rrca                                          ; $6c57: $0f
    rra                                           ; $6c58: $1f
    jr jr_022_6c7a                                ; $6c59: $18 $1f

    db $10                                        ; $6c5b: $10
    rra                                           ; $6c5c: $1f
    db $10                                        ; $6c5d: $10
    ld a, a                                       ; $6c5e: $7f
    ld [hl], b                                    ; $6c5f: $70
    rst $38                                       ; $6c60: $ff
    ret nz                                        ; $6c61: $c0

    rst $38                                       ; $6c62: $ff
    add b                                         ; $6c63: $80
    rst $38                                       ; $6c64: $ff
    add b                                         ; $6c65: $80
    rst $38                                       ; $6c66: $ff
    ret nz                                        ; $6c67: $c0

    ld a, e                                       ; $6c68: $7b
    ld a, h                                       ; $6c69: $7c
    rrca                                          ; $6c6a: $0f
    ld c, $03                                     ; $6c6b: $0e $03
    inc bc                                        ; $6c6d: $03
    ld bc, $0001                                  ; $6c6e: $01 $01 $00
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    nop                                           ; $6c73: $00
    nop                                           ; $6c74: $00
    nop                                           ; $6c75: $00
    add b                                         ; $6c76: $80
    add b                                         ; $6c77: $80
    ret nz                                        ; $6c78: $c0

    ret nz                                        ; $6c79: $c0

jr_022_6c7a:
    ret nz                                        ; $6c7a: $c0

    ld b, b                                       ; $6c7b: $40
    ldh a, [rSVBK]                                ; $6c7c: $f0 $70
    ld hl, sp+$18                                 ; $6c7e: $f8 $18
    ld hl, sp+$08                                 ; $6c80: $f8 $08
    ld hl, sp+$08                                 ; $6c82: $f8 $08
    ld hl, sp+$18                                 ; $6c84: $f8 $18
    or b                                          ; $6c86: $b0
    ld [hl], b                                    ; $6c87: $70
    ldh [$60], a                                  ; $6c88: $e0 $60
    ret nz                                        ; $6c8a: $c0

    ld b, b                                       ; $6c8b: $40
    ret nz                                        ; $6c8c: $c0

    ld b, b                                       ; $6c8d: $40
    ret nz                                        ; $6c8e: $c0

    ret nz                                        ; $6c8f: $c0

    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    nop                                           ; $6c94: $00
    nop                                           ; $6c95: $00
    rrca                                          ; $6c96: $0f
    rrca                                          ; $6c97: $0f
    rra                                           ; $6c98: $1f
    jr jr_022_6cba                                ; $6c99: $18 $1f

    db $10                                        ; $6c9b: $10
    rra                                           ; $6c9c: $1f
    db $10                                        ; $6c9d: $10
    ld a, a                                       ; $6c9e: $7f
    ld [hl], b                                    ; $6c9f: $70
    rst $38                                       ; $6ca0: $ff
    ret nz                                        ; $6ca1: $c0

    rst $38                                       ; $6ca2: $ff
    add b                                         ; $6ca3: $80
    rst $38                                       ; $6ca4: $ff
    add b                                         ; $6ca5: $80
    rst $38                                       ; $6ca6: $ff
    ret nz                                        ; $6ca7: $c0

    ld a, e                                       ; $6ca8: $7b
    ld a, h                                       ; $6ca9: $7c
    rrca                                          ; $6caa: $0f
    ld c, $03                                     ; $6cab: $0e $03
    inc bc                                        ; $6cad: $03
    ld bc, $0001                                  ; $6cae: $01 $01 $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    nop                                           ; $6cb3: $00
    nop                                           ; $6cb4: $00
    nop                                           ; $6cb5: $00
    add b                                         ; $6cb6: $80
    add b                                         ; $6cb7: $80
    ret nz                                        ; $6cb8: $c0

    ret nz                                        ; $6cb9: $c0

jr_022_6cba:
    ret nz                                        ; $6cba: $c0

    ld b, b                                       ; $6cbb: $40
    ldh a, [rSVBK]                                ; $6cbc: $f0 $70
    ld hl, sp+$18                                 ; $6cbe: $f8 $18
    ld hl, sp+$08                                 ; $6cc0: $f8 $08
    ld hl, sp+$08                                 ; $6cc2: $f8 $08
    ld hl, sp+$18                                 ; $6cc4: $f8 $18
    or b                                          ; $6cc6: $b0
    ld [hl], b                                    ; $6cc7: $70
    ldh [$60], a                                  ; $6cc8: $e0 $60
    ret nz                                        ; $6cca: $c0

    ld b, b                                       ; $6ccb: $40
    ret nz                                        ; $6ccc: $c0

    ld b, b                                       ; $6ccd: $40
    ret nz                                        ; $6cce: $c0

    ret nz                                        ; $6ccf: $c0

    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    rrca                                          ; $6cd6: $0f
    rrca                                          ; $6cd7: $0f
    rra                                           ; $6cd8: $1f
    jr jr_022_6cfa                                ; $6cd9: $18 $1f

    db $10                                        ; $6cdb: $10
    rra                                           ; $6cdc: $1f
    db $10                                        ; $6cdd: $10
    ld a, a                                       ; $6cde: $7f
    ld [hl], b                                    ; $6cdf: $70
    rst $38                                       ; $6ce0: $ff
    ret nz                                        ; $6ce1: $c0

    rst $38                                       ; $6ce2: $ff
    add b                                         ; $6ce3: $80
    rst $38                                       ; $6ce4: $ff
    add b                                         ; $6ce5: $80
    rst $38                                       ; $6ce6: $ff
    ret nz                                        ; $6ce7: $c0

    ld a, e                                       ; $6ce8: $7b
    ld a, h                                       ; $6ce9: $7c
    rrca                                          ; $6cea: $0f
    ld c, $03                                     ; $6ceb: $0e $03
    inc bc                                        ; $6ced: $03
    ld bc, $0001                                  ; $6cee: $01 $01 $00
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    nop                                           ; $6cf5: $00
    add b                                         ; $6cf6: $80
    add b                                         ; $6cf7: $80
    ret nz                                        ; $6cf8: $c0

    ret nz                                        ; $6cf9: $c0

jr_022_6cfa:
    ret nz                                        ; $6cfa: $c0

    ld b, b                                       ; $6cfb: $40
    ldh a, [rSVBK]                                ; $6cfc: $f0 $70
    ld hl, sp+$18                                 ; $6cfe: $f8 $18
    ld hl, sp+$08                                 ; $6d00: $f8 $08
    ld hl, sp+$08                                 ; $6d02: $f8 $08
    ld hl, sp+$18                                 ; $6d04: $f8 $18
    or b                                          ; $6d06: $b0
    ld [hl], b                                    ; $6d07: $70
    ldh [$60], a                                  ; $6d08: $e0 $60
    ret nz                                        ; $6d0a: $c0

    ld b, b                                       ; $6d0b: $40
    ret nz                                        ; $6d0c: $c0

    ld b, b                                       ; $6d0d: $40
    ret nz                                        ; $6d0e: $c0

    ret nz                                        ; $6d0f: $c0

    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    rrca                                          ; $6d16: $0f
    rrca                                          ; $6d17: $0f
    rra                                           ; $6d18: $1f
    jr jr_022_6d3a                                ; $6d19: $18 $1f

    db $10                                        ; $6d1b: $10
    rra                                           ; $6d1c: $1f
    db $10                                        ; $6d1d: $10
    ld a, a                                       ; $6d1e: $7f
    ld [hl], b                                    ; $6d1f: $70
    rst $38                                       ; $6d20: $ff
    ret nz                                        ; $6d21: $c0

    rst $38                                       ; $6d22: $ff
    add b                                         ; $6d23: $80
    rst $38                                       ; $6d24: $ff
    add b                                         ; $6d25: $80
    rst $38                                       ; $6d26: $ff
    ret nz                                        ; $6d27: $c0

    ld a, e                                       ; $6d28: $7b
    ld a, h                                       ; $6d29: $7c
    rrca                                          ; $6d2a: $0f
    ld c, $03                                     ; $6d2b: $0e $03
    inc bc                                        ; $6d2d: $03
    ld bc, $0001                                  ; $6d2e: $01 $01 $00
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00
    nop                                           ; $6d34: $00
    nop                                           ; $6d35: $00
    add b                                         ; $6d36: $80
    add b                                         ; $6d37: $80
    ret nz                                        ; $6d38: $c0

    ret nz                                        ; $6d39: $c0

jr_022_6d3a:
    ret nz                                        ; $6d3a: $c0

    ld b, b                                       ; $6d3b: $40
    ldh a, [rSVBK]                                ; $6d3c: $f0 $70
    ld hl, sp+$18                                 ; $6d3e: $f8 $18
    ld hl, sp+$08                                 ; $6d40: $f8 $08
    ld hl, sp+$08                                 ; $6d42: $f8 $08
    ld hl, sp+$18                                 ; $6d44: $f8 $18
    or b                                          ; $6d46: $b0
    ld [hl], b                                    ; $6d47: $70
    ldh [$60], a                                  ; $6d48: $e0 $60
    ret nz                                        ; $6d4a: $c0

    ld b, b                                       ; $6d4b: $40
    ret nz                                        ; $6d4c: $c0

    ld b, b                                       ; $6d4d: $40
    ret nz                                        ; $6d4e: $c0

    ret nz                                        ; $6d4f: $c0

    rlca                                          ; $6d50: $07
    rlca                                          ; $6d51: $07
    rrca                                          ; $6d52: $0f
    inc c                                         ; $6d53: $0c
    rrca                                          ; $6d54: $0f
    ld [$383f], sp                                ; $6d55: $08 $3f $38
    ld a, a                                       ; $6d58: $7f
    ld h, b                                       ; $6d59: $60
    ld a, a                                       ; $6d5a: $7f
    ld b, b                                       ; $6d5b: $40
    ld a, a                                       ; $6d5c: $7f
    ld b, b                                       ; $6d5d: $40
    ld a, a                                       ; $6d5e: $7f
    ld h, b                                       ; $6d5f: $60
    ccf                                           ; $6d60: $3f
    inc a                                         ; $6d61: $3c
    dec b                                         ; $6d62: $05
    ld b, $07                                     ; $6d63: $06 $07
    ld b, $02                                     ; $6d65: $06 $02
    inc bc                                        ; $6d67: $03
    inc bc                                        ; $6d68: $03
    inc bc                                        ; $6d69: $03
    ld bc, $0001                                  ; $6d6a: $01 $01 $00
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    ret nz                                        ; $6d70: $c0

    ret nz                                        ; $6d71: $c0

    ldh [$60], a                                  ; $6d72: $e0 $60
    ldh [rNR41], a                                ; $6d74: $e0 $20
    ld hl, sp+$38                                 ; $6d76: $f8 $38
    db $fc                                        ; $6d78: $fc
    inc c                                         ; $6d79: $0c
    db $fc                                        ; $6d7a: $fc
    inc b                                         ; $6d7b: $04
    db $fc                                        ; $6d7c: $fc
    inc b                                         ; $6d7d: $04
    db $fc                                        ; $6d7e: $fc
    inc c                                         ; $6d7f: $0c
    ld hl, sp+$78                                 ; $6d80: $f8 $78
    ld b, b                                       ; $6d82: $40
    ret nz                                        ; $6d83: $c0

    ret nz                                        ; $6d84: $c0

    ret nz                                        ; $6d85: $c0

    add b                                         ; $6d86: $80
    add b                                         ; $6d87: $80
    add b                                         ; $6d88: $80
    add b                                         ; $6d89: $80
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    nop                                           ; $6d8c: $00
    nop                                           ; $6d8d: $00
    nop                                           ; $6d8e: $00
    nop                                           ; $6d8f: $00
    rlca                                          ; $6d90: $07
    rlca                                          ; $6d91: $07
    rrca                                          ; $6d92: $0f
    inc c                                         ; $6d93: $0c
    rrca                                          ; $6d94: $0f
    ld [$383f], sp                                ; $6d95: $08 $3f $38
    ld a, a                                       ; $6d98: $7f
    ld h, b                                       ; $6d99: $60
    ld a, a                                       ; $6d9a: $7f
    ld b, b                                       ; $6d9b: $40
    ld a, a                                       ; $6d9c: $7f
    ld b, b                                       ; $6d9d: $40
    ld a, a                                       ; $6d9e: $7f
    ld h, b                                       ; $6d9f: $60
    ccf                                           ; $6da0: $3f
    inc a                                         ; $6da1: $3c
    dec b                                         ; $6da2: $05
    ld b, $07                                     ; $6da3: $06 $07
    ld b, $02                                     ; $6da5: $06 $02
    inc bc                                        ; $6da7: $03
    inc bc                                        ; $6da8: $03
    inc bc                                        ; $6da9: $03
    ld bc, $0001                                  ; $6daa: $01 $01 $00
    nop                                           ; $6dad: $00
    nop                                           ; $6dae: $00
    nop                                           ; $6daf: $00
    ret nz                                        ; $6db0: $c0

    ret nz                                        ; $6db1: $c0

    ldh [$60], a                                  ; $6db2: $e0 $60
    ldh [rNR41], a                                ; $6db4: $e0 $20
    ld hl, sp+$38                                 ; $6db6: $f8 $38
    db $fc                                        ; $6db8: $fc
    inc c                                         ; $6db9: $0c
    db $fc                                        ; $6dba: $fc
    inc b                                         ; $6dbb: $04
    db $fc                                        ; $6dbc: $fc
    inc b                                         ; $6dbd: $04
    db $fc                                        ; $6dbe: $fc
    inc c                                         ; $6dbf: $0c
    ld hl, sp+$78                                 ; $6dc0: $f8 $78
    ld b, b                                       ; $6dc2: $40
    ret nz                                        ; $6dc3: $c0

    ret nz                                        ; $6dc4: $c0

    ret nz                                        ; $6dc5: $c0

    add b                                         ; $6dc6: $80
    add b                                         ; $6dc7: $80
    add b                                         ; $6dc8: $80
    add b                                         ; $6dc9: $80
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    nop                                           ; $6dcc: $00
    nop                                           ; $6dcd: $00
    nop                                           ; $6dce: $00
    nop                                           ; $6dcf: $00
    rlca                                          ; $6dd0: $07
    rlca                                          ; $6dd1: $07
    rrca                                          ; $6dd2: $0f
    inc c                                         ; $6dd3: $0c
    rrca                                          ; $6dd4: $0f
    ld [$383f], sp                                ; $6dd5: $08 $3f $38
    ld a, a                                       ; $6dd8: $7f
    ld h, b                                       ; $6dd9: $60
    ld a, a                                       ; $6dda: $7f
    ld b, b                                       ; $6ddb: $40
    ld a, a                                       ; $6ddc: $7f
    ld b, b                                       ; $6ddd: $40
    ld a, a                                       ; $6dde: $7f
    ld h, b                                       ; $6ddf: $60
    ccf                                           ; $6de0: $3f
    inc a                                         ; $6de1: $3c
    dec b                                         ; $6de2: $05
    ld b, $07                                     ; $6de3: $06 $07
    ld b, $02                                     ; $6de5: $06 $02
    inc bc                                        ; $6de7: $03
    inc bc                                        ; $6de8: $03
    inc bc                                        ; $6de9: $03
    ld bc, $0001                                  ; $6dea: $01 $01 $00
    nop                                           ; $6ded: $00
    nop                                           ; $6dee: $00
    nop                                           ; $6def: $00
    ret nz                                        ; $6df0: $c0

    ret nz                                        ; $6df1: $c0

    ldh [$60], a                                  ; $6df2: $e0 $60
    ldh [rNR41], a                                ; $6df4: $e0 $20
    ld hl, sp+$38                                 ; $6df6: $f8 $38
    db $fc                                        ; $6df8: $fc
    inc c                                         ; $6df9: $0c
    db $fc                                        ; $6dfa: $fc
    inc b                                         ; $6dfb: $04
    db $fc                                        ; $6dfc: $fc
    inc b                                         ; $6dfd: $04
    db $fc                                        ; $6dfe: $fc
    inc c                                         ; $6dff: $0c
    ld hl, sp+$78                                 ; $6e00: $f8 $78
    ld b, b                                       ; $6e02: $40
    ret nz                                        ; $6e03: $c0

    ret nz                                        ; $6e04: $c0

    ret nz                                        ; $6e05: $c0

    add b                                         ; $6e06: $80
    add b                                         ; $6e07: $80
    add b                                         ; $6e08: $80
    add b                                         ; $6e09: $80
    nop                                           ; $6e0a: $00
    nop                                           ; $6e0b: $00
    nop                                           ; $6e0c: $00
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    nop                                           ; $6e0f: $00
    rlca                                          ; $6e10: $07
    rlca                                          ; $6e11: $07
    rrca                                          ; $6e12: $0f
    inc c                                         ; $6e13: $0c
    rrca                                          ; $6e14: $0f
    ld [$383f], sp                                ; $6e15: $08 $3f $38
    ld a, a                                       ; $6e18: $7f
    ld h, b                                       ; $6e19: $60
    ld a, a                                       ; $6e1a: $7f
    ld b, b                                       ; $6e1b: $40
    ld a, a                                       ; $6e1c: $7f
    ld b, b                                       ; $6e1d: $40
    ld a, a                                       ; $6e1e: $7f
    ld h, b                                       ; $6e1f: $60
    ccf                                           ; $6e20: $3f
    inc a                                         ; $6e21: $3c
    dec b                                         ; $6e22: $05
    ld b, $07                                     ; $6e23: $06 $07
    ld b, $02                                     ; $6e25: $06 $02
    inc bc                                        ; $6e27: $03
    inc bc                                        ; $6e28: $03
    inc bc                                        ; $6e29: $03
    ld bc, $0001                                  ; $6e2a: $01 $01 $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    ret nz                                        ; $6e30: $c0

    ret nz                                        ; $6e31: $c0

    ldh [$60], a                                  ; $6e32: $e0 $60
    ldh [rNR41], a                                ; $6e34: $e0 $20
    ld hl, sp+$38                                 ; $6e36: $f8 $38
    db $fc                                        ; $6e38: $fc
    inc c                                         ; $6e39: $0c
    db $fc                                        ; $6e3a: $fc
    inc b                                         ; $6e3b: $04
    db $fc                                        ; $6e3c: $fc
    inc b                                         ; $6e3d: $04
    db $fc                                        ; $6e3e: $fc
    inc c                                         ; $6e3f: $0c
    ld hl, sp+$78                                 ; $6e40: $f8 $78
    ld b, b                                       ; $6e42: $40
    ret nz                                        ; $6e43: $c0

    ret nz                                        ; $6e44: $c0

    ret nz                                        ; $6e45: $c0

    add b                                         ; $6e46: $80
    add b                                         ; $6e47: $80
    add b                                         ; $6e48: $80
    add b                                         ; $6e49: $80
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00
    nop                                           ; $6e4e: $00
    nop                                           ; $6e4f: $00
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    nop                                           ; $6e53: $00
    nop                                           ; $6e54: $00
    nop                                           ; $6e55: $00
    ld bc, $0301                                  ; $6e56: $01 $01 $03
    inc bc                                        ; $6e59: $03
    inc bc                                        ; $6e5a: $03
    ld [bc], a                                    ; $6e5b: $02
    rrca                                          ; $6e5c: $0f
    ld c, $1f                                     ; $6e5d: $0e $1f
    jr jr_022_6e80                                ; $6e5f: $18 $1f

    db $10                                        ; $6e61: $10
    rra                                           ; $6e62: $1f
    db $10                                        ; $6e63: $10
    rra                                           ; $6e64: $1f
    jr jr_022_6e74                                ; $6e65: $18 $0d

    ld c, $07                                     ; $6e67: $0e $07
    ld b, $03                                     ; $6e69: $06 $03
    ld [bc], a                                    ; $6e6b: $02
    inc bc                                        ; $6e6c: $03
    ld [bc], a                                    ; $6e6d: $02
    inc bc                                        ; $6e6e: $03
    inc bc                                        ; $6e6f: $03
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00

jr_022_6e74:
    nop                                           ; $6e74: $00
    nop                                           ; $6e75: $00
    ldh a, [$f0]                                  ; $6e76: $f0 $f0
    ld hl, sp+$18                                 ; $6e78: $f8 $18
    ld hl, sp+$08                                 ; $6e7a: $f8 $08
    ld hl, sp+$08                                 ; $6e7c: $f8 $08
    cp $0e                                        ; $6e7e: $fe $0e

jr_022_6e80:
    rst $38                                       ; $6e80: $ff
    inc bc                                        ; $6e81: $03
    rst $38                                       ; $6e82: $ff
    ld bc, $01ff                                  ; $6e83: $01 $ff $01
    rst $38                                       ; $6e86: $ff
    inc bc                                        ; $6e87: $03
    sbc $3e                                       ; $6e88: $de $3e
    ldh a, [rSVBK]                                ; $6e8a: $f0 $70
    ret nz                                        ; $6e8c: $c0

    ret nz                                        ; $6e8d: $c0

    add b                                         ; $6e8e: $80
    add b                                         ; $6e8f: $80
    nop                                           ; $6e90: $00
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    nop                                           ; $6e95: $00
    ld bc, $0301                                  ; $6e96: $01 $01 $03
    inc bc                                        ; $6e99: $03
    inc bc                                        ; $6e9a: $03
    ld [bc], a                                    ; $6e9b: $02
    rrca                                          ; $6e9c: $0f
    ld c, $1f                                     ; $6e9d: $0e $1f
    jr jr_022_6ec0                                ; $6e9f: $18 $1f

    db $10                                        ; $6ea1: $10
    rra                                           ; $6ea2: $1f
    db $10                                        ; $6ea3: $10
    rra                                           ; $6ea4: $1f
    jr jr_022_6eb4                                ; $6ea5: $18 $0d

    ld c, $07                                     ; $6ea7: $0e $07
    ld b, $03                                     ; $6ea9: $06 $03
    ld [bc], a                                    ; $6eab: $02
    inc bc                                        ; $6eac: $03
    ld [bc], a                                    ; $6ead: $02
    inc bc                                        ; $6eae: $03
    inc bc                                        ; $6eaf: $03
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00
    nop                                           ; $6eb2: $00
    nop                                           ; $6eb3: $00

jr_022_6eb4:
    nop                                           ; $6eb4: $00
    nop                                           ; $6eb5: $00
    ldh a, [$f0]                                  ; $6eb6: $f0 $f0
    ld hl, sp+$18                                 ; $6eb8: $f8 $18
    ld hl, sp+$08                                 ; $6eba: $f8 $08
    ld hl, sp+$08                                 ; $6ebc: $f8 $08
    cp $0e                                        ; $6ebe: $fe $0e

jr_022_6ec0:
    rst $38                                       ; $6ec0: $ff
    inc bc                                        ; $6ec1: $03
    rst $38                                       ; $6ec2: $ff
    ld bc, $01ff                                  ; $6ec3: $01 $ff $01
    rst $38                                       ; $6ec6: $ff
    inc bc                                        ; $6ec7: $03
    sbc $3e                                       ; $6ec8: $de $3e
    ldh a, [rSVBK]                                ; $6eca: $f0 $70
    ret nz                                        ; $6ecc: $c0

    ret nz                                        ; $6ecd: $c0

    add b                                         ; $6ece: $80
    add b                                         ; $6ecf: $80
    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    nop                                           ; $6ed3: $00
    nop                                           ; $6ed4: $00
    nop                                           ; $6ed5: $00
    ld bc, $0301                                  ; $6ed6: $01 $01 $03
    inc bc                                        ; $6ed9: $03
    inc bc                                        ; $6eda: $03
    ld [bc], a                                    ; $6edb: $02
    rrca                                          ; $6edc: $0f
    ld c, $1f                                     ; $6edd: $0e $1f
    jr jr_022_6f00                                ; $6edf: $18 $1f

    db $10                                        ; $6ee1: $10
    rra                                           ; $6ee2: $1f
    db $10                                        ; $6ee3: $10
    rra                                           ; $6ee4: $1f
    jr jr_022_6ef4                                ; $6ee5: $18 $0d

    ld c, $07                                     ; $6ee7: $0e $07
    ld b, $03                                     ; $6ee9: $06 $03
    ld [bc], a                                    ; $6eeb: $02
    inc bc                                        ; $6eec: $03
    ld [bc], a                                    ; $6eed: $02
    inc bc                                        ; $6eee: $03
    inc bc                                        ; $6eef: $03
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    nop                                           ; $6ef3: $00

jr_022_6ef4:
    nop                                           ; $6ef4: $00
    nop                                           ; $6ef5: $00
    ldh a, [$f0]                                  ; $6ef6: $f0 $f0
    ld hl, sp+$18                                 ; $6ef8: $f8 $18
    ld hl, sp+$08                                 ; $6efa: $f8 $08
    ld hl, sp+$08                                 ; $6efc: $f8 $08
    cp $0e                                        ; $6efe: $fe $0e

jr_022_6f00:
    rst $38                                       ; $6f00: $ff
    inc bc                                        ; $6f01: $03
    rst $38                                       ; $6f02: $ff
    ld bc, $01ff                                  ; $6f03: $01 $ff $01
    rst $38                                       ; $6f06: $ff
    inc bc                                        ; $6f07: $03
    sbc $3e                                       ; $6f08: $de $3e
    ldh a, [rSVBK]                                ; $6f0a: $f0 $70
    ret nz                                        ; $6f0c: $c0

    ret nz                                        ; $6f0d: $c0

    add b                                         ; $6f0e: $80
    add b                                         ; $6f0f: $80
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    nop                                           ; $6f13: $00
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    ld bc, $0301                                  ; $6f16: $01 $01 $03
    inc bc                                        ; $6f19: $03
    inc bc                                        ; $6f1a: $03
    ld [bc], a                                    ; $6f1b: $02
    rrca                                          ; $6f1c: $0f
    ld c, $1f                                     ; $6f1d: $0e $1f
    jr jr_022_6f40                                ; $6f1f: $18 $1f

    db $10                                        ; $6f21: $10
    rra                                           ; $6f22: $1f
    db $10                                        ; $6f23: $10
    rra                                           ; $6f24: $1f
    jr jr_022_6f34                                ; $6f25: $18 $0d

    ld c, $07                                     ; $6f27: $0e $07
    ld b, $03                                     ; $6f29: $06 $03
    ld [bc], a                                    ; $6f2b: $02
    inc bc                                        ; $6f2c: $03
    ld [bc], a                                    ; $6f2d: $02
    inc bc                                        ; $6f2e: $03
    inc bc                                        ; $6f2f: $03
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00

jr_022_6f34:
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    ldh a, [$f0]                                  ; $6f36: $f0 $f0
    ld hl, sp+$18                                 ; $6f38: $f8 $18
    ld hl, sp+$08                                 ; $6f3a: $f8 $08
    ld hl, sp+$08                                 ; $6f3c: $f8 $08
    cp $0e                                        ; $6f3e: $fe $0e

jr_022_6f40:
    rst $38                                       ; $6f40: $ff
    inc bc                                        ; $6f41: $03
    rst $38                                       ; $6f42: $ff
    ld bc, $01ff                                  ; $6f43: $01 $ff $01
    rst $38                                       ; $6f46: $ff
    inc bc                                        ; $6f47: $03
    sbc $3e                                       ; $6f48: $de $3e
    ldh a, [rSVBK]                                ; $6f4a: $f0 $70
    ret nz                                        ; $6f4c: $c0

    ret nz                                        ; $6f4d: $c0

    add b                                         ; $6f4e: $80
    add b                                         ; $6f4f: $80
    ld h, d                                       ; $6f50: $62
    ld l, a                                       ; $6f51: $6f
    ld h, l                                       ; $6f52: $65
    ld l, a                                       ; $6f53: $6f
    ld h, d                                       ; $6f54: $62
    ld l, a                                       ; $6f55: $6f
    ld h, d                                       ; $6f56: $62
    ld l, a                                       ; $6f57: $6f
    ld h, d                                       ; $6f58: $62
    ld l, a                                       ; $6f59: $6f
    ld h, d                                       ; $6f5a: $62
    ld l, a                                       ; $6f5b: $6f
    ld h, d                                       ; $6f5c: $62
    ld l, a                                       ; $6f5d: $6f
    ld h, d                                       ; $6f5e: $62
    ld l, a                                       ; $6f5f: $6f
    ld h, d                                       ; $6f60: $62
    ld l, a                                       ; $6f61: $6f
    ld [bc], a                                    ; $6f62: $02
    rst $38                                       ; $6f63: $ff
    db $fd                                        ; $6f64: $fd
    nop                                           ; $6f65: $00
    ld a, [bc]                                    ; $6f66: $0a
    ld bc, $020a                                  ; $6f67: $01 $0a $02
    ld a, [bc]                                    ; $6f6a: $0a
    ld bc, $ff0a                                  ; $6f6b: $01 $0a $ff
    nop                                           ; $6f6e: $00
    ld bc, $fdff                                  ; $6f6f: $01 $ff $fd
    nop                                           ; $6f72: $00
    ld e, $01                                     ; $6f73: $1e $01
    ld e, $fd                                     ; $6f75: $1e $fd
    ld [bc], a                                    ; $6f77: $02
    jr @+$05                                      ; $6f78: $18 $03

    jr jr_022_6f7e                                ; $6f7a: $18 $02

    jr @-$01                                      ; $6f7c: $18 $fd

jr_022_6f7e:
    nop                                           ; $6f7e: $00
    ld a, [bc]                                    ; $6f7f: $0a
    ld b, $1e                                     ; $6f80: $06 $1e
    nop                                           ; $6f82: $00
    ld a, [bc]                                    ; $6f83: $0a
    cp $01                                        ; $6f84: $fe $01
    nop                                           ; $6f86: $00
    ld a, [bc]                                    ; $6f87: $0a
    cp $01                                        ; $6f88: $fe $01
    nop                                           ; $6f8a: $00
    ld a, [bc]                                    ; $6f8b: $0a
    add hl, bc                                    ; $6f8c: $09
    ld [$0800], sp                                ; $6f8d: $08 $00 $08
    add hl, bc                                    ; $6f90: $09
    ld [$0a00], sp                                ; $6f91: $08 $00 $0a
    cp $01                                        ; $6f94: $fe $01
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

Call_022_7fdf:
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
