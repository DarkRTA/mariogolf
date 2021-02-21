; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $057", ROMX[$4000], BANK[$57]

    inc e                                         ; $4000: $1c
    ld b, b                                       ; $4001: $40
    db $dd                                        ; $4002: $dd
    ld b, e                                       ; $4003: $43
    xor d                                         ; $4004: $aa
    ld b, a                                       ; $4005: $47

    db $63, $4b, $68, $50, $d7, $54

    ld a, [de]                                    ; $400c: $1a
    ld e, c                                       ; $400d: $59
    cp c                                          ; $400e: $b9
    ld e, l                                       ; $400f: $5d
    or d                                          ; $4010: $b2
    ld h, c                                       ; $4011: $61
    ld [hl+], a                                   ; $4012: $22
    ld h, [hl]                                    ; $4013: $66
    ld a, c                                       ; $4014: $79
    ld l, d                                       ; $4015: $6a
    push hl                                       ; $4016: $e5
    ld l, a                                       ; $4017: $6f
    ld h, h                                       ; $4018: $64
    ld [hl], h                                    ; $4019: $74
    ld [hl+], a                                   ; $401a: $22
    ld a, c                                       ; $401b: $79
    inc h                                         ; $401c: $24
    ld b, b                                       ; $401d: $40
    ld d, h                                       ; $401e: $54
    ld b, b                                       ; $401f: $40
    ret nc                                        ; $4020: $d0

    ld b, c                                       ; $4021: $41
    xor c                                         ; $4022: $a9
    ld b, e                                       ; $4023: $43
    ld [$c503], a                                 ; $4024: $ea $03 $c5
    ld b, $e2                                     ; $4027: $06 $e2
    ld bc, $00a0                                  ; $4029: $01 $a0 $00
    ld [$f003], a                                 ; $402c: $ea $03 $f0
    inc bc                                        ; $402f: $03
    push bc                                       ; $4030: $c5
    ld b, $e2                                     ; $4031: $06 $e2
    ld bc, $023f                                  ; $4033: $01 $3f $02
    xor e                                         ; $4036: $ab
    nop                                           ; $4037: $00
    inc sp                                        ; $4038: $33
    ld bc, $06c5                                  ; $4039: $01 $c5 $06
    ld [$0825], sp                                ; $403c: $08 $25 $08
    dec h                                         ; $403f: $25
    ld [$0825], sp                                ; $4040: $08 $25 $08

Jump_057_4043:
    dec h                                         ; $4043: $25
    ld [$0825], sp                                ; $4044: $08 $25 $08
    dec h                                         ; $4047: $25
    ld [$0825], sp                                ; $4048: $08 $25 $08
    dec h                                         ; $404b: $25
    ld [$0825], sp                                ; $404c: $08 $25 $08
    dec h                                         ; $404f: $25
    ld [$0825], sp                                ; $4050: $08 $25 $08
    dec h                                         ; $4053: $25
    ld [hl], e                                    ; $4054: $73
    ld a, [bc]                                    ; $4055: $0a
    dec bc                                        ; $4056: $0b
    rst $38                                       ; $4057: $ff
    ldh [$fb], a                                  ; $4058: $e0 $fb
    ld [c], a                                     ; $405a: $e2
    dec bc                                        ; $405b: $0b
    dec hl                                        ; $405c: $2b
    dec hl                                        ; $405d: $2b
    push af                                       ; $405e: $f5
    pop hl                                        ; $405f: $e1
    jp nz, $e0ef                                  ; $4060: $c2 $ef $e0

    inc c                                         ; $4063: $0c
    rst $38                                       ; $4064: $ff
    rst $38                                       ; $4065: $ff
    rst $20                                       ; $4066: $e7
    and $c6                                       ; $4067: $e6 $c6
    ld [c], a                                     ; $4069: $e2
    ei                                            ; $406a: $fb
    push hl                                       ; $406b: $e5
    dec hl                                        ; $406c: $2b
    dec hl                                        ; $406d: $2b
    ldh a, [$c1]                                  ; $406e: $f0 $c1
    pop hl                                        ; $4070: $e1
    ret nz                                        ; $4071: $c0

    rst $38                                       ; $4072: $ff
    ret nz                                        ; $4073: $c0

    jp hl                                         ; $4074: $e9


    ld a, a                                       ; $4075: $7f
    ldh [rWX], a                                  ; $4076: $e0 $4b
    dec bc                                        ; $4078: $0b
    dec hl                                        ; $4079: $2b
    ld l, e                                       ; $407a: $6b
    inc bc                                        ; $407b: $03
    ld l, e                                       ; $407c: $6b
    ld c, e                                       ; $407d: $4b
    rst $38                                       ; $407e: $ff
    ldh [$7b], a                                  ; $407f: $e0 $7b
    pop hl                                        ; $4081: $e1
    ld [hl], d                                    ; $4082: $72
    ldh [$ca], a                                  ; $4083: $e0 $ca
    rst $38                                       ; $4085: $ff
    add sp, -$19                                  ; $4086: $e8 $e7
    pop bc                                        ; $4088: $c1
    jp hl                                         ; $4089: $e9


    ld h, b                                       ; $408a: $60
    cp l                                          ; $408b: $bd
    ld [c], a                                     ; $408c: $e2
    dec sp                                        ; $408d: $3b
    ldh [$ca], a                                  ; $408e: $e0 $ca
    rst $38                                       ; $4090: $ff
    ld b, b                                       ; $4091: $40
    db $ec                                        ; $4092: $ec
    pop bc                                        ; $4093: $c1
    push hl                                       ; $4094: $e5
    dec bc                                        ; $4095: $0b
    dec hl                                        ; $4096: $2b
    ld a, h                                       ; $4097: $7c
    ldh [$29], a                                  ; $4098: $e0 $29
    ld c, e                                       ; $409a: $4b
    ret nz                                        ; $409b: $c0

    rst $38                                       ; $409c: $ff
    add b                                         ; $409d: $80
    ld [$c16b], a                                 ; $409e: $ea $6b $c1
    ldh [$0b], a                                  ; $40a1: $e0 $0b
    ld b, h                                       ; $40a3: $44
    ld [c], a                                     ; $40a4: $e2
    cp l                                          ; $40a5: $bd
    ret nz                                        ; $40a6: $c0

    ld b, c                                       ; $40a7: $41
    ld l, e                                       ; $40a8: $6b
    cp [hl]                                       ; $40a9: $be
    pop hl                                        ; $40aa: $e1
    jp z, $c0ff                                   ; $40ab: $ca $ff $c0

    ret                                           ; $40ae: $c9


    ret nz                                        ; $40af: $c0

    ldh [rDMA], a                                 ; $40b0: $e0 $46
    db $e4                                        ; $40b2: $e4
    dec hl                                        ; $40b3: $2b
    ld hl, sp-$40                                 ; $40b4: $f8 $c0
    adc b                                         ; $40b6: $88
    ld a, a                                       ; $40b7: $7f
    pop hl                                        ; $40b8: $e1
    jp z, $80ff                                   ; $40b9: $ca $ff $80

    ret z                                         ; $40bc: $c8

    ld l, e                                       ; $40bd: $6b
    ccf                                           ; $40be: $3f
    ret nz                                        ; $40bf: $c0

    ret nz                                        ; $40c0: $c0

    and $3f                                       ; $40c1: $e6 $3f
    ldh [$2b], a                                  ; $40c3: $e0 $2b
    nop                                           ; $40c5: $00
    ret nz                                        ; $40c6: $c0

    rst $38                                       ; $40c7: $ff
    ret nz                                        ; $40c8: $c0

    db $ec                                        ; $40c9: $ec
    ld b, d                                       ; $40ca: $42
    ldh [rSCX], a                                 ; $40cb: $e0 $43
    db $e4                                        ; $40cd: $e4
    or a                                          ; $40ce: $b7
    pop hl                                        ; $40cf: $e1
    ld b, b                                       ; $40d0: $40
    rst $18                                       ; $40d1: $df
    nop                                           ; $40d2: $00
    call z, $e14c                                 ; $40d3: $cc $4c $e1
    nop                                           ; $40d6: $00
    ld b, e                                       ; $40d7: $43
    db $e4                                        ; $40d8: $e4
    di                                            ; $40d9: $f3
    and h                                         ; $40da: $a4
    jp z, Jump_000_00ff                           ; $40db: $ca $ff $00

    db $eb                                        ; $40de: $eb
    ld b, e                                       ; $40df: $43
    and $c0                                       ; $40e0: $e6 $c0
    rst $38                                       ; $40e2: $ff
    ret nz                                        ; $40e3: $c0

    jp nc, $e443                                  ; $40e4: $d2 $43 $e4

    ld h, b                                       ; $40e7: $60
    ld [hl], l                                    ; $40e8: $75
    and [hl]                                      ; $40e9: $a6
    jp z, Jump_057_40ff                           ; $40ea: $ca $ff $40

    xor c                                         ; $40ed: $a9
    add [hl]                                      ; $40ee: $86
    call nz, $e5c5                                ; $40ef: $c4 $c5 $e5
    inc l                                         ; $40f2: $2c
    inc l                                         ; $40f3: $2c
    set 7, a                                      ; $40f4: $cb $ff
    nop                                           ; $40f6: $00
    nop                                           ; $40f7: $00
    xor e                                         ; $40f8: $ab
    dec b                                         ; $40f9: $05
    jp $e587                                      ; $40fa: $c3 $87 $e5


    ret nz                                        ; $40fd: $c0

    rst $38                                       ; $40fe: $ff

Jump_057_40ff:
    ret nz                                        ; $40ff: $c0

Call_057_4100:
    sub [hl]                                      ; $4100: $96
    jp nz, $c0e2                                  ; $4101: $c2 $e2 $c0

    rst $38                                       ; $4104: $ff
    add b                                         ; $4105: $80
    sub l                                         ; $4106: $95
    nop                                           ; $4107: $00
    pop bc                                        ; $4108: $c1
    db $e4                                        ; $4109: $e4
    ret nz                                        ; $410a: $c0

    rst $38                                       ; $410b: $ff
    rst $38                                       ; $410c: $ff
    rst $38                                       ; $410d: $ff
    rst $38                                       ; $410e: $ff
    rst $38                                       ; $410f: $ff
    rst $38                                       ; $4110: $ff
    rst $38                                       ; $4111: $ff
    rst $38                                       ; $4112: $ff
    rst $38                                       ; $4113: $ff
    rst $38                                       ; $4114: $ff
    rst $38                                       ; $4115: $ff
    rst $38                                       ; $4116: $ff
    rst $38                                       ; $4117: $ff
    nop                                           ; $4118: $00
    rst $38                                       ; $4119: $ff
    rst $38                                       ; $411a: $ff
    rst $38                                       ; $411b: $ff
    rst $38                                       ; $411c: $ff
    rst $38                                       ; $411d: $ff
    rst $38                                       ; $411e: $ff
    rst $38                                       ; $411f: $ff
    rst $38                                       ; $4120: $ff
    rst $38                                       ; $4121: $ff
    rst $38                                       ; $4122: $ff
    rst $38                                       ; $4123: $ff
    rst $38                                       ; $4124: $ff
    rst $38                                       ; $4125: $ff
    rst $38                                       ; $4126: $ff
    rst $38                                       ; $4127: $ff
    rst $38                                       ; $4128: $ff
    nop                                           ; $4129: $00
    rst $38                                       ; $412a: $ff
    rst $38                                       ; $412b: $ff
    rst $38                                       ; $412c: $ff
    rst $38                                       ; $412d: $ff
    rst $38                                       ; $412e: $ff
    rst $38                                       ; $412f: $ff
    rst $38                                       ; $4130: $ff
    rst $38                                       ; $4131: $ff
    rst $38                                       ; $4132: $ff
    rst $38                                       ; $4133: $ff
    rst $38                                       ; $4134: $ff
    rst $38                                       ; $4135: $ff
    rst $38                                       ; $4136: $ff
    rst $38                                       ; $4137: $ff
    rst $38                                       ; $4138: $ff
    rst $38                                       ; $4139: $ff
    nop                                           ; $413a: $00
    rst $38                                       ; $413b: $ff
    rst $38                                       ; $413c: $ff
    rst $38                                       ; $413d: $ff
    rst $38                                       ; $413e: $ff
    rst $38                                       ; $413f: $ff
    rst $38                                       ; $4140: $ff
    rst $38                                       ; $4141: $ff
    rst $38                                       ; $4142: $ff
    rst $38                                       ; $4143: $ff
    rst $38                                       ; $4144: $ff
    rst $38                                       ; $4145: $ff
    rst $38                                       ; $4146: $ff
    rst $38                                       ; $4147: $ff
    rst $38                                       ; $4148: $ff
    rst $38                                       ; $4149: $ff
    rst $38                                       ; $414a: $ff
    nop                                           ; $414b: $00
    rst $38                                       ; $414c: $ff
    rst $38                                       ; $414d: $ff
    rst $38                                       ; $414e: $ff
    rst $38                                       ; $414f: $ff
    rst $38                                       ; $4150: $ff
    rst $38                                       ; $4151: $ff
    rst $38                                       ; $4152: $ff
    rst $38                                       ; $4153: $ff
    rst $38                                       ; $4154: $ff
    rst $38                                       ; $4155: $ff
    rst $38                                       ; $4156: $ff
    rst $38                                       ; $4157: $ff
    rst $38                                       ; $4158: $ff
    rst $38                                       ; $4159: $ff
    rst $38                                       ; $415a: $ff
    rst $38                                       ; $415b: $ff
    nop                                           ; $415c: $00
    rst $38                                       ; $415d: $ff
    rst $38                                       ; $415e: $ff
    rst $38                                       ; $415f: $ff
    rst $38                                       ; $4160: $ff
    rst $38                                       ; $4161: $ff
    rst $38                                       ; $4162: $ff
    rst $38                                       ; $4163: $ff
    rst $38                                       ; $4164: $ff
    rst $38                                       ; $4165: $ff
    rst $38                                       ; $4166: $ff
    rst $38                                       ; $4167: $ff
    rst $38                                       ; $4168: $ff
    rst $38                                       ; $4169: $ff
    rst $38                                       ; $416a: $ff
    rst $38                                       ; $416b: $ff
    rst $38                                       ; $416c: $ff
    nop                                           ; $416d: $00
    rst $38                                       ; $416e: $ff
    rst $38                                       ; $416f: $ff
    rst $38                                       ; $4170: $ff
    rst $38                                       ; $4171: $ff
    rst $38                                       ; $4172: $ff
    rst $38                                       ; $4173: $ff
    rst $38                                       ; $4174: $ff
    rst $38                                       ; $4175: $ff
    rst $38                                       ; $4176: $ff
    rst $38                                       ; $4177: $ff
    rst $38                                       ; $4178: $ff
    rst $38                                       ; $4179: $ff
    rst $38                                       ; $417a: $ff
    rst $38                                       ; $417b: $ff
    rst $38                                       ; $417c: $ff
    rst $38                                       ; $417d: $ff
    nop                                           ; $417e: $00
    rst $38                                       ; $417f: $ff

Jump_057_4180:
    rst $38                                       ; $4180: $ff
    rst $38                                       ; $4181: $ff
    rst $38                                       ; $4182: $ff
    rst $38                                       ; $4183: $ff
    rst $38                                       ; $4184: $ff
    rst $38                                       ; $4185: $ff
    rst $38                                       ; $4186: $ff
    rst $38                                       ; $4187: $ff
    rst $38                                       ; $4188: $ff
    rst $38                                       ; $4189: $ff
    rst $38                                       ; $418a: $ff
    rst $38                                       ; $418b: $ff
    rst $38                                       ; $418c: $ff
    rst $38                                       ; $418d: $ff
    rst $38                                       ; $418e: $ff
    nop                                           ; $418f: $00
    rst $38                                       ; $4190: $ff
    rst $38                                       ; $4191: $ff
    rst $38                                       ; $4192: $ff
    rst $38                                       ; $4193: $ff
    rst $38                                       ; $4194: $ff
    rst $38                                       ; $4195: $ff
    rst $38                                       ; $4196: $ff
    rst $38                                       ; $4197: $ff
    rst $38                                       ; $4198: $ff
    rst $38                                       ; $4199: $ff
    rst $38                                       ; $419a: $ff
    rst $38                                       ; $419b: $ff
    rst $38                                       ; $419c: $ff
    rst $38                                       ; $419d: $ff
    rst $38                                       ; $419e: $ff
    rst $38                                       ; $419f: $ff
    nop                                           ; $41a0: $00
    rst $38                                       ; $41a1: $ff
    rst $38                                       ; $41a2: $ff
    rst $38                                       ; $41a3: $ff
    rst $38                                       ; $41a4: $ff
    rst $38                                       ; $41a5: $ff
    rst $38                                       ; $41a6: $ff
    rst $38                                       ; $41a7: $ff
    rst $38                                       ; $41a8: $ff
    rst $38                                       ; $41a9: $ff
    rst $38                                       ; $41aa: $ff
    rst $38                                       ; $41ab: $ff
    rst $38                                       ; $41ac: $ff
    rst $38                                       ; $41ad: $ff
    rst $38                                       ; $41ae: $ff
    rst $38                                       ; $41af: $ff
    rst $38                                       ; $41b0: $ff
    nop                                           ; $41b1: $00
    rst $38                                       ; $41b2: $ff
    rst $38                                       ; $41b3: $ff
    rst $38                                       ; $41b4: $ff
    rst $38                                       ; $41b5: $ff
    rst $38                                       ; $41b6: $ff
    rst $38                                       ; $41b7: $ff
    rst $38                                       ; $41b8: $ff
    rst $38                                       ; $41b9: $ff
    rst $38                                       ; $41ba: $ff
    rst $38                                       ; $41bb: $ff
    rst $38                                       ; $41bc: $ff
    rst $38                                       ; $41bd: $ff
    rst $38                                       ; $41be: $ff
    rst $38                                       ; $41bf: $ff
    rst $38                                       ; $41c0: $ff
    rst $38                                       ; $41c1: $ff
    nop                                           ; $41c2: $00
    rst $38                                       ; $41c3: $ff
    rst $38                                       ; $41c4: $ff
    rst $38                                       ; $41c5: $ff
    rst $38                                       ; $41c6: $ff
    rst $38                                       ; $41c7: $ff
    rst $38                                       ; $41c8: $ff
    rst $38                                       ; $41c9: $ff
    rst $38                                       ; $41ca: $ff
    rst $38                                       ; $41cb: $ff
    push af                                       ; $41cc: $f5
    nop                                           ; $41cd: $00
    nop                                           ; $41ce: $00
    nop                                           ; $41cf: $00
    di                                            ; $41d0: $f3
    ld e, d                                       ; $41d1: $5a
    ld e, e                                       ; $41d2: $5b
    rst $38                                       ; $41d3: $ff
    ldh [$fb], a                                  ; $41d4: $e0 $fb
    ldh [$5c], a                                  ; $41d6: $e0 $5c
    ld e, l                                       ; $41d8: $5d
    ld sp, $095d                                  ; $41d9: $31 $5d $09
    ld e, h                                       ; $41dc: $5c
    push af                                       ; $41dd: $f5
    pop hl                                        ; $41de: $e1
    rst $28                                       ; $41df: $ef
    ldh [rP1], a                                  ; $41e0: $e0 $00
    rst $38                                       ; $41e2: $ff
    rst $38                                       ; $41e3: $ff
    rst $20                                       ; $41e4: $e7
    and $c1                                       ; $41e5: $e6 $c1
    pop hl                                        ; $41e7: $e1
    jp nz, $86e2                                  ; $41e8: $c2 $e2 $86

    rst $38                                       ; $41eb: $ff
    pop hl                                        ; $41ec: $e1
    ld e, l                                       ; $41ed: $5d
    ld e, h                                       ; $41ee: $5c
    pop bc                                        ; $41ef: $c1
    pop hl                                        ; $41f0: $e1
    ret nz                                        ; $41f1: $c0

    rst $38                                       ; $41f2: $ff
    ret nz                                        ; $41f3: $c0

    jp hl                                         ; $41f4: $e9


    ld a, a                                       ; $41f5: $7f
    pop hl                                        ; $41f6: $e1
    ld h, b                                       ; $41f7: $60
    rst $38                                       ; $41f8: $ff
    ld sp, $3a4d                                  ; $41f9: $31 $4d $3a
    ld d, h                                       ; $41fc: $54
    ld d, l                                       ; $41fd: $55
    dec sp                                        ; $41fe: $3b
    ld c, l                                       ; $41ff: $4d
    ld sp, $3187                                  ; $4200: $31 $87 $31
    ld h, d                                       ; $4203: $62
    ld h, b                                       ; $4204: $60
    ld [hl], d                                    ; $4205: $72
    ldh [$ca], a                                  ; $4206: $e0 $ca
    rst $38                                       ; $4208: $ff
    add sp, -$19                                  ; $4209: $e8 $e7

Jump_057_420b:
    pop bc                                        ; $420b: $c1
    db $e4                                        ; $420c: $e4
    ld [hl-], a                                   ; $420d: $32
    ccf                                           ; $420e: $3f
    ld l, l                                       ; $420f: $6d
    ld l, h                                       ; $4210: $6c
    ld l, h                                       ; $4211: $6c
    ld l, l                                       ; $4212: $6d
    ld c, d                                       ; $4213: $4a
    ld d, h                                       ; $4214: $54
    cp l                                          ; $4215: $bd
    ldh [$bf], a                                  ; $4216: $e0 $bf
    ldh [$f8], a                                  ; $4218: $e0 $f8
    jp z, Jump_057_40ff                           ; $421a: $ca $ff $40

    ld [$e1c1], a                                 ; $421d: $ea $c1 $e1
    jr nc, @+$6d                                  ; $4220: $30 $6b

    ld l, d                                       ; $4222: $6a
    ld l, b                                       ; $4223: $68
    ld l, d                                       ; $4224: $6a
    ld a, a                                       ; $4225: $7f
    ld l, d                                       ; $4226: $6a
    jr nc, jr_057_4293                            ; $4227: $30 $6a

    ld c, d                                       ; $4229: $4a
    inc a                                         ; $422a: $3c
    ld sp, $c05f                                  ; $422b: $31 $5f $c0
    rst $38                                       ; $422e: $ff
    ld a, d                                       ; $422f: $7a
    add b                                         ; $4230: $80
    ld [$c15f], a                                 ; $4231: $ea $5f $c1
    pop hl                                        ; $4234: $e1
    jr nc, @+$6d                                  ; $4235: $30 $6b

    ld l, c                                       ; $4237: $69
    jr nc, @+$01                                  ; $4238: $30 $ff

    ldh [$9f], a                                  ; $423a: $e0 $9f
    ld l, c                                       ; $423c: $69
    ld l, e                                       ; $423d: $6b
    dec [hl]                                      ; $423e: $35
    ld c, l                                       ; $423f: $4d
    ld e, [hl]                                    ; $4240: $5e
    ret nz                                        ; $4241: $c0

    rst $38                                       ; $4242: $ff
    ret nz                                        ; $4243: $c0

    jp z, $e35e                                   ; $4244: $ca $5e $e3

    ld sp, $4339                                  ; $4247: $31 $39 $43
    pop hl                                        ; $424a: $e1
    add e                                         ; $424b: $83
    ldh [$7d], a                                  ; $424c: $e0 $7d
    ldh [rOCPD], a                                ; $424e: $e0 $6b
    jr nc, jr_057_428b                            ; $4250: $30 $39

    di                                            ; $4252: $f3
    ld sp, $ca5f                                  ; $4253: $31 $5f $ca
    rst $38                                       ; $4256: $ff
    add b                                         ; $4257: $80
    ret z                                         ; $4258: $c8

    ld e, a                                       ; $4259: $5f
    ld sp, $5231                                  ; $425a: $31 $31 $52
    inc a                                         ; $425d: $3c
    ld b, e                                       ; $425e: $43
    db $e4                                        ; $425f: $e4
    db $fc                                        ; $4260: $fc
    pop bc                                        ; $4261: $c1
    jr nc, @+$54                                  ; $4262: $30 $52

    ld sp, $ca5e                                  ; $4264: $31 $5e $ca
    rst $38                                       ; $4267: $ff
    ld b, b                                       ; $4268: $40
    ret z                                         ; $4269: $c8

    rst $08                                       ; $426a: $cf
    ld e, [hl]                                    ; $426b: $5e
    ld sp, $354d                                  ; $426c: $31 $4d $35
    ld b, e                                       ; $426f: $43
    push hl                                       ; $4270: $e5
    dec a                                         ; $4271: $3d
    pop hl                                        ; $4272: $e1
    add hl, sp                                    ; $4273: $39
    ld sp, $3179                                  ; $4274: $31 $79 $31
    jp z, $e8ff                                   ; $4277: $ca $ff $e8

    rst $20                                       ; $427a: $e7
    ld h, b                                       ; $427b: $60
    ld sp, $3931                                  ; $427c: $31 $31 $39
    ld b, e                                       ; $427f: $43
    rst $20                                       ; $4280: $e7
    ld b, a                                       ; $4281: $47
    jr nc, jr_057_42ba                            ; $4282: $30 $36

    ld b, [hl]                                    ; $4284: $46
    dec sp                                        ; $4285: $3b
    ret nz                                        ; $4286: $c0

    jp z, $e8ff                                   ; $4287: $ca $ff $e8

    rst $20                                       ; $428a: $e7

jr_057_428b:
    ld sp, $e081                                  ; $428b: $31 $81 $e0
    adc [hl]                                      ; $428e: $8e
    ld b, e                                       ; $428f: $43
    and $36                                       ; $4290: $e6 $36
    ld b, [hl]                                    ; $4292: $46

jr_057_4293:
    ld b, a                                       ; $4293: $47
    cp b                                          ; $4294: $b8
    and c                                         ; $4295: $a1
    jp z, $e8ff                                   ; $4296: $ca $ff $e8

    rst $20                                       ; $4299: $e7
    and h                                         ; $429a: $a4
    jp Jump_000_39a4                              ; $429b: $c3 $a4 $39


    ld b, e                                       ; $429e: $43
    push hl                                       ; $429f: $e5
    jp nz, $c0e4                                  ; $42a0: $c2 $e4 $c0

    rst $38                                       ; $42a3: $ff
    ld [$80e9], a                                 ; $42a4: $ea $e9 $80
    add b                                         ; $42a7: $80
    di                                            ; $42a8: $f3
    ld [hl], d                                    ; $42a9: $72
    ld b, d                                       ; $42aa: $42
    add [hl]                                      ; $42ab: $86
    jp nz, $e384                                  ; $42ac: $c2 $84 $e3

    ld de, $1412                                  ; $42af: $11 $12 $14
    inc d                                         ; $42b2: $14
    ld sp, hl                                     ; $42b3: $f9
    inc d                                         ; $42b4: $14
    jp z, $c0ff                                   ; $42b5: $ca $ff $c0

    jp hl                                         ; $42b8: $e9


    add b                                         ; $42b9: $80

jr_057_42ba:
    ld [hl], d                                    ; $42ba: $72
    ld d, l                                       ; $42bb: $55
    ld d, l                                       ; $42bc: $55
    ld d, h                                       ; $42bd: $54
    ei                                            ; $42be: $fb
    ld d, h                                       ; $42bf: $54
    ld [hl-], a                                   ; $42c0: $32
    jp nz, Jump_000_21e3                          ; $42c1: $c2 $e3 $21

    ld [hl+], a                                   ; $42c4: $22
    inc h                                         ; $42c5: $24
    inc h                                         ; $42c6: $24
    inc h                                         ; $42c7: $24
    add sp, -$36                                  ; $42c8: $e8 $ca
    rst $38                                       ; $42ca: $ff
    ret nz                                        ; $42cb: $c0

    ld [$e2fd], a                                 ; $42cc: $ea $fd $e2
    and c                                         ; $42cf: $a1
    cp a                                          ; $42d0: $bf
    add b                                         ; $42d1: $80
    add hl, hl                                    ; $42d2: $29
    ld hl, $7122                                  ; $42d3: $21 $22 $71
    jr nz, @+$01                                  ; $42d6: $20 $ff

    pop hl                                        ; $42d8: $e1
    jp z, $c0ff                                   ; $42d9: $ca $ff $c0

    ld a, [c]                                     ; $42dc: $f2
    add hl, hl                                    ; $42dd: $29
    ld hl, $c128                                  ; $42de: $21 $28 $c1
    ld [c], a                                     ; $42e1: $e2

Jump_057_42e2:
    nop                                           ; $42e2: $00
    ret nz                                        ; $42e3: $c0

    rst $38                                       ; $42e4: $ff
    rst $38                                       ; $42e5: $ff
    rst $38                                       ; $42e6: $ff
    rst $38                                       ; $42e7: $ff
    rst $38                                       ; $42e8: $ff
    rst $38                                       ; $42e9: $ff
    rst $38                                       ; $42ea: $ff
    rst $38                                       ; $42eb: $ff
    rst $38                                       ; $42ec: $ff
    rst $38                                       ; $42ed: $ff
    rst $38                                       ; $42ee: $ff
    rst $38                                       ; $42ef: $ff
    rst $38                                       ; $42f0: $ff
    rst $38                                       ; $42f1: $ff
    rst $38                                       ; $42f2: $ff
    nop                                           ; $42f3: $00
    rst $38                                       ; $42f4: $ff
    rst $38                                       ; $42f5: $ff
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
    nop                                           ; $4304: $00
    rst $38                                       ; $4305: $ff
    rst $38                                       ; $4306: $ff
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
    rst $38                                       ; $4311: $ff
    rst $38                                       ; $4312: $ff
    rst $38                                       ; $4313: $ff
    rst $38                                       ; $4314: $ff
    nop                                           ; $4315: $00
    rst $38                                       ; $4316: $ff
    rst $38                                       ; $4317: $ff
    rst $38                                       ; $4318: $ff
    rst $38                                       ; $4319: $ff
    rst $38                                       ; $431a: $ff
    rst $38                                       ; $431b: $ff
    rst $38                                       ; $431c: $ff
    rst $38                                       ; $431d: $ff
    rst $38                                       ; $431e: $ff
    rst $38                                       ; $431f: $ff
    rst $38                                       ; $4320: $ff
    rst $38                                       ; $4321: $ff
    rst $38                                       ; $4322: $ff
    rst $38                                       ; $4323: $ff
    rst $38                                       ; $4324: $ff
    rst $38                                       ; $4325: $ff
    nop                                           ; $4326: $00
    rst $38                                       ; $4327: $ff
    rst $38                                       ; $4328: $ff
    rst $38                                       ; $4329: $ff
    rst $38                                       ; $432a: $ff
    rst $38                                       ; $432b: $ff
    rst $38                                       ; $432c: $ff
    rst $38                                       ; $432d: $ff
    rst $38                                       ; $432e: $ff
    rst $38                                       ; $432f: $ff
    rst $38                                       ; $4330: $ff
    rst $38                                       ; $4331: $ff
    rst $38                                       ; $4332: $ff
    rst $38                                       ; $4333: $ff
    rst $38                                       ; $4334: $ff
    rst $38                                       ; $4335: $ff
    rst $38                                       ; $4336: $ff
    nop                                           ; $4337: $00
    rst $38                                       ; $4338: $ff
    rst $38                                       ; $4339: $ff
    rst $38                                       ; $433a: $ff
    rst $38                                       ; $433b: $ff
    rst $38                                       ; $433c: $ff
    rst $38                                       ; $433d: $ff
    rst $38                                       ; $433e: $ff
    rst $38                                       ; $433f: $ff
    rst $38                                       ; $4340: $ff
    rst $38                                       ; $4341: $ff
    rst $38                                       ; $4342: $ff
    rst $38                                       ; $4343: $ff
    rst $38                                       ; $4344: $ff
    rst $38                                       ; $4345: $ff
    rst $38                                       ; $4346: $ff
    rst $38                                       ; $4347: $ff
    nop                                           ; $4348: $00
    rst $38                                       ; $4349: $ff
    rst $38                                       ; $434a: $ff
    rst $38                                       ; $434b: $ff
    rst $38                                       ; $434c: $ff
    rst $38                                       ; $434d: $ff
    rst $38                                       ; $434e: $ff
    rst $38                                       ; $434f: $ff
    rst $38                                       ; $4350: $ff
    rst $38                                       ; $4351: $ff
    rst $38                                       ; $4352: $ff
    rst $38                                       ; $4353: $ff
    rst $38                                       ; $4354: $ff
    rst $38                                       ; $4355: $ff
    rst $38                                       ; $4356: $ff
    rst $38                                       ; $4357: $ff
    rst $38                                       ; $4358: $ff
    nop                                           ; $4359: $00
    rst $38                                       ; $435a: $ff
    rst $38                                       ; $435b: $ff
    rst $38                                       ; $435c: $ff
    rst $38                                       ; $435d: $ff
    rst $38                                       ; $435e: $ff
    rst $38                                       ; $435f: $ff
    rst $38                                       ; $4360: $ff
    rst $38                                       ; $4361: $ff
    rst $38                                       ; $4362: $ff
    rst $38                                       ; $4363: $ff
    rst $38                                       ; $4364: $ff
    rst $38                                       ; $4365: $ff
    rst $38                                       ; $4366: $ff
    rst $38                                       ; $4367: $ff
    rst $38                                       ; $4368: $ff
    rst $38                                       ; $4369: $ff
    nop                                           ; $436a: $00
    rst $38                                       ; $436b: $ff
    rst $38                                       ; $436c: $ff
    rst $38                                       ; $436d: $ff
    rst $38                                       ; $436e: $ff
    rst $38                                       ; $436f: $ff
    rst $38                                       ; $4370: $ff
    rst $38                                       ; $4371: $ff
    rst $38                                       ; $4372: $ff
    rst $38                                       ; $4373: $ff
    rst $38                                       ; $4374: $ff
    rst $38                                       ; $4375: $ff
    rst $38                                       ; $4376: $ff
    rst $38                                       ; $4377: $ff
    rst $38                                       ; $4378: $ff
    rst $38                                       ; $4379: $ff
    rst $38                                       ; $437a: $ff
    nop                                           ; $437b: $00
    rst $38                                       ; $437c: $ff
    rst $38                                       ; $437d: $ff
    rst $38                                       ; $437e: $ff
    rst $38                                       ; $437f: $ff
    rst $38                                       ; $4380: $ff
    rst $38                                       ; $4381: $ff
    rst $38                                       ; $4382: $ff
    rst $38                                       ; $4383: $ff
    rst $38                                       ; $4384: $ff
    rst $38                                       ; $4385: $ff
    rst $38                                       ; $4386: $ff
    rst $38                                       ; $4387: $ff
    rst $38                                       ; $4388: $ff
    rst $38                                       ; $4389: $ff
    rst $38                                       ; $438a: $ff
    rst $38                                       ; $438b: $ff
    nop                                           ; $438c: $00
    rst $38                                       ; $438d: $ff
    rst $38                                       ; $438e: $ff
    rst $38                                       ; $438f: $ff
    rst $38                                       ; $4390: $ff
    rst $38                                       ; $4391: $ff
    rst $38                                       ; $4392: $ff
    rst $38                                       ; $4393: $ff
    rst $38                                       ; $4394: $ff
    rst $38                                       ; $4395: $ff
    rst $38                                       ; $4396: $ff
    rst $38                                       ; $4397: $ff
    rst $38                                       ; $4398: $ff
    rst $38                                       ; $4399: $ff
    rst $38                                       ; $439a: $ff
    rst $38                                       ; $439b: $ff
    rst $38                                       ; $439c: $ff
    nop                                           ; $439d: $00
    rst $38                                       ; $439e: $ff
    rst $38                                       ; $439f: $ff
    rst $38                                       ; $43a0: $ff
    rst $38                                       ; $43a1: $ff
    rst $38                                       ; $43a2: $ff
    rst $38                                       ; $43a3: $ff
    rst $38                                       ; $43a4: $ff
    db $f4                                        ; $43a5: $f4
    nop                                           ; $43a6: $00
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    and l                                         ; $43a9: $a5
    nop                                           ; $43aa: $00
    rst $38                                       ; $43ab: $ff
    push hl                                       ; $43ac: $e5
    ld [hl-], a                                   ; $43ad: $32
    or $e6                                        ; $43ae: $f6 $e6
    rst $30                                       ; $43b0: $f7
    rst $20                                       ; $43b1: $e7
    dec [hl]                                      ; $43b2: $35
    db $ec                                        ; $43b3: $ec
    xor $37                                       ; $43b4: $ee $37
    db $ec                                        ; $43b6: $ec
    jp c, $c7f0                                   ; $43b7: $da $f0 $c7

    add sp, $33                                   ; $43ba: $e8 $33
    ld sp, $f2e0                                  ; $43bc: $31 $e0 $f2
    ld [hl], $30                                  ; $43bf: $36 $30
    scf                                           ; $43c1: $37
    cp a                                          ; $43c2: $bf
    ld h, $20                                     ; $43c3: $26 $20
    daa                                           ; $43c5: $27
    db $10                                        ; $43c6: $10
    ld d, $17                                     ; $43c7: $16 $17
    jp nz, Jump_000_34f6                          ; $43c9: $c2 $f6 $34

    rst $38                                       ; $43cc: $ff
    ld [hl], $32                                  ; $43cd: $36 $32
    jr nc, jr_057_4408                            ; $43cf: $30 $37

    ld sp, $3133                                  ; $43d1: $31 $33 $31
    inc sp                                        ; $43d4: $33
    nop                                           ; $43d5: $00
    and b                                         ; $43d6: $a0
    ei                                            ; $43d7: $fb
    rst $38                                       ; $43d8: $ff
    rst $28                                       ; $43d9: $ef
    nop                                           ; $43da: $00
    nop                                           ; $43db: $00
    nop                                           ; $43dc: $00
    push hl                                       ; $43dd: $e5
    ld b, e                                       ; $43de: $43
    dec d                                         ; $43df: $15
    ld b, h                                       ; $43e0: $44
    and b                                         ; $43e1: $a0
    ld b, l                                       ; $43e2: $45
    halt                                          ; $43e3: $76
    ld b, a                                       ; $43e4: $47
    ld [$c503], a                                 ; $43e5: $ea $03 $c5
    ld b, $e2                                     ; $43e8: $06 $e2
    ld bc, $00a0                                  ; $43ea: $01 $a0 $00
    ld [$f003], a                                 ; $43ed: $ea $03 $f0
    inc bc                                        ; $43f0: $03
    push bc                                       ; $43f1: $c5
    ld b, $e2                                     ; $43f2: $06 $e2
    ld bc, $023f                                  ; $43f4: $01 $3f $02
    xor e                                         ; $43f7: $ab
    nop                                           ; $43f8: $00
    inc sp                                        ; $43f9: $33
    ld bc, $06c5                                  ; $43fa: $01 $c5 $06
    ld [$0825], sp                                ; $43fd: $08 $25 $08
    dec h                                         ; $4400: $25
    ld [$0825], sp                                ; $4401: $08 $25 $08
    dec h                                         ; $4404: $25
    ld [$0825], sp                                ; $4405: $08 $25 $08

jr_057_4408:
    dec h                                         ; $4408: $25
    ld [$0825], sp                                ; $4409: $08 $25 $08
    dec h                                         ; $440c: $25
    ld [$0825], sp                                ; $440d: $08 $25 $08
    dec h                                         ; $4410: $25
    ld [$0825], sp                                ; $4411: $08 $25 $08
    dec h                                         ; $4414: $25
    rst $20                                       ; $4415: $e7
    ld a, [bc]                                    ; $4416: $0a
    dec bc                                        ; $4417: $0b
    dec bc                                        ; $4418: $0b
    db $fd                                        ; $4419: $fd
    ldh [$fe], a                                  ; $441a: $e0 $fe
    pop hl                                        ; $441c: $e1
    dec hl                                        ; $441d: $2b
    dec hl                                        ; $441e: $2b
    ld c, e                                       ; $441f: $4b
    inc b                                         ; $4420: $04
    rst $38                                       ; $4421: $ff
    pop hl                                        ; $4422: $e1
    rst $28                                       ; $4423: $ef
    ldh [$0c], a                                  ; $4424: $e0 $0c
    rst $38                                       ; $4426: $ff
    rst $38                                       ; $4427: $ff
    rst $20                                       ; $4428: $e7
    and $c2                                       ; $4429: $e6 $c2
    push hl                                       ; $442b: $e5
    cp [hl]                                       ; $442c: $be
    and $b0                                       ; $442d: $e6 $b0
    ldh [$08], a                                  ; $442f: $e0 $08
    jp z, $c0ff                                   ; $4431: $ca $ff $c0

    add sp, -$7d                                  ; $4434: $e8 $83
    ld [c], a                                     ; $4436: $e2
    ld l, e                                       ; $4437: $6b
    add l                                         ; $4438: $85
    pop hl                                        ; $4439: $e1
    ld a, d                                       ; $443a: $7a
    db $e4                                        ; $443b: $e4
    add b                                         ; $443c: $80
    rst $38                                       ; $443d: $ff
    ret nz                                        ; $443e: $c0

    xor $9f                                       ; $443f: $ee $9f
    ld l, e                                       ; $4441: $6b
    dec bc                                        ; $4442: $0b
    dec bc                                        ; $4443: $0b
    ld c, e                                       ; $4444: $4b
    ld c, e                                       ; $4445: $4b
    cp h                                          ; $4446: $bc
    pop hl                                        ; $4447: $e1
    ld [hl], $e1                                  ; $4448: $36 $e1
    ld c, e                                       ; $444a: $4b
    inc b                                         ; $444b: $04
    ret nz                                        ; $444c: $c0

    rst $38                                       ; $444d: $ff
    ld b, b                                       ; $444e: $40
    ld [$c16b], a                                 ; $444f: $ea $6b $c1
    ldh [$81], a                                  ; $4452: $e0 $81
    db $e3                                        ; $4454: $e3
    nop                                           ; $4455: $00
    ld [c], a                                     ; $4456: $e2
    ret nz                                        ; $4457: $c0

    rst $38                                       ; $4458: $ff
    db $eb                                        ; $4459: $eb
    ld [$0a61], a                                 ; $445a: $ea $61 $0a
    add e                                         ; $445d: $83
    ldh [$86], a                                  ; $445e: $e0 $86
    db $e3                                        ; $4460: $e3
    pop bc                                        ; $4461: $c1
    jp nz, $c0bb                                  ; $4462: $c2 $bb $c0

    dec bc                                        ; $4465: $0b
    ld c, e                                       ; $4466: $4b
    jp z, Jump_000_00ff                           ; $4467: $ca $ff $00

    ret nz                                        ; $446a: $c0

    add sp, -$7f                                  ; $446b: $e8 $81
    pop hl                                        ; $446d: $e1
    ld a, a                                       ; $446e: $7f
    jp nz, $e4c1                                  ; $446f: $c2 $c1 $e4

    ret nz                                        ; $4472: $c0

    rst $38                                       ; $4473: $ff
    add b                                         ; $4474: $80
    bit 0, c                                      ; $4475: $cb $41
    ldh [$cd], a                                  ; $4477: $e0 $cd
    ret nz                                        ; $4479: $c0

    nop                                           ; $447a: $00
    pop bc                                        ; $447b: $c1
    and $c0                                       ; $447c: $e6 $c0
    rst $18                                       ; $447e: $df
    ld b, b                                       ; $447f: $40
    call z, $e0d0                                 ; $4480: $cc $d0 $e0
    call $83e0                                    ; $4483: $cd $e0 $83
    jp nz, $e4c1                                  ; $4486: $c2 $c1 $e4

    ret nz                                        ; $4489: $c0

    rst $38                                       ; $448a: $ff
    ret nz                                        ; $448b: $c0

    ret nz                                        ; $448c: $c0

    xor $42                                       ; $448d: $ee $42
    jp $e084                                      ; $448f: $c3 $84 $e0


    ld [hl], l                                    ; $4492: $75
    ld [c], a                                     ; $4493: $e2
    jp z, $80ff                                   ; $4494: $ca $ff $80

    ld [$6b2b], a                                 ; $4497: $ea $2b $6b
    jp nz, $c201                                  ; $449a: $c2 $01 $c2

    ld c, e                                       ; $449d: $4b
    inc b                                         ; $449e: $04
    jp nz, $c133                                  ; $449f: $c2 $33 $c1

    jp z, $80ff                                   ; $44a2: $ca $ff $80

    ret z                                         ; $44a5: $c8

    ld a, [bc]                                    ; $44a6: $0a
    dec hl                                        ; $44a7: $2b
    inc bc                                        ; $44a8: $03
    dec hl                                        ; $44a9: $2b
    dec hl                                        ; $44aa: $2b
    pop bc                                        ; $44ab: $c1
    xor b                                         ; $44ac: $a8
    db $f4                                        ; $44ad: $f4
    and c                                         ; $44ae: $a1
    jp z, Jump_057_40ff                           ; $44af: $ca $ff $40

    xor c                                         ; $44b2: $a9
    ld c, e                                       ; $44b3: $4b
    ldh [rSC], a                                  ; $44b4: $e0 $02
    jp $c500                                      ; $44b6: $c3 $00 $c5


    and c                                         ; $44b9: $a1
    dec [hl]                                      ; $44ba: $35
    ldh [$c0], a                                  ; $44bb: $e0 $c0
    rst $38                                       ; $44bd: $ff
    add b                                         ; $44be: $80
    db $eb                                        ; $44bf: $eb
    cp a                                          ; $44c0: $bf
    pop hl                                        ; $44c1: $e1
    cp a                                          ; $44c2: $bf
    call nz, $a237                                ; $44c3: $c4 $37 $a2
    nop                                           ; $44c6: $00
    cp a                                          ; $44c7: $bf
    nop                                           ; $44c8: $00
    ret nz                                        ; $44c9: $c0

    adc e                                         ; $44ca: $8b
    ld a, a                                       ; $44cb: $7f
    ldh [rIE], a                                  ; $44cc: $e0 $ff
    add sp, -$43                                  ; $44ce: $e8 $bd
    pop bc                                        ; $44d0: $c1
    jp z, $80ff                                   ; $44d1: $ca $ff $80

    xor c                                         ; $44d4: $a9
    cp a                                          ; $44d5: $bf
    db $eb                                        ; $44d6: $eb
    cp c                                          ; $44d7: $b9
    pop bc                                        ; $44d8: $c1
    nop                                           ; $44d9: $00
    jp z, $ffff                                   ; $44da: $ca $ff $ff

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
    rst $38                                       ; $44e7: $ff
    rst $38                                       ; $44e8: $ff
    rst $38                                       ; $44e9: $ff
    nop                                           ; $44ea: $00
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
    rst $38                                       ; $44f8: $ff
    rst $38                                       ; $44f9: $ff
    rst $38                                       ; $44fa: $ff
    nop                                           ; $44fb: $00
    rst $38                                       ; $44fc: $ff
    rst $38                                       ; $44fd: $ff
    rst $38                                       ; $44fe: $ff
    rst $38                                       ; $44ff: $ff
    rst $38                                       ; $4500: $ff
    rst $38                                       ; $4501: $ff
    rst $38                                       ; $4502: $ff
    rst $38                                       ; $4503: $ff
    rst $38                                       ; $4504: $ff
    rst $38                                       ; $4505: $ff
    rst $38                                       ; $4506: $ff
    rst $38                                       ; $4507: $ff
    rst $38                                       ; $4508: $ff
    rst $38                                       ; $4509: $ff
    rst $38                                       ; $450a: $ff
    rst $38                                       ; $450b: $ff
    nop                                           ; $450c: $00
    rst $38                                       ; $450d: $ff
    rst $38                                       ; $450e: $ff
    rst $38                                       ; $450f: $ff
    rst $38                                       ; $4510: $ff
    rst $38                                       ; $4511: $ff
    rst $38                                       ; $4512: $ff
    rst $38                                       ; $4513: $ff
    rst $38                                       ; $4514: $ff
    rst $38                                       ; $4515: $ff
    rst $38                                       ; $4516: $ff
    rst $38                                       ; $4517: $ff
    rst $38                                       ; $4518: $ff
    rst $38                                       ; $4519: $ff
    rst $38                                       ; $451a: $ff
    rst $38                                       ; $451b: $ff
    rst $38                                       ; $451c: $ff
    nop                                           ; $451d: $00
    rst $38                                       ; $451e: $ff
    rst $38                                       ; $451f: $ff
    rst $38                                       ; $4520: $ff
    rst $38                                       ; $4521: $ff
    rst $38                                       ; $4522: $ff
    rst $38                                       ; $4523: $ff
    rst $38                                       ; $4524: $ff
    rst $38                                       ; $4525: $ff
    rst $38                                       ; $4526: $ff
    rst $38                                       ; $4527: $ff
    rst $38                                       ; $4528: $ff
    rst $38                                       ; $4529: $ff
    rst $38                                       ; $452a: $ff
    rst $38                                       ; $452b: $ff
    rst $38                                       ; $452c: $ff
    rst $38                                       ; $452d: $ff
    nop                                           ; $452e: $00
    rst $38                                       ; $452f: $ff
    rst $38                                       ; $4530: $ff
    rst $38                                       ; $4531: $ff
    rst $38                                       ; $4532: $ff
    rst $38                                       ; $4533: $ff
    rst $38                                       ; $4534: $ff
    rst $38                                       ; $4535: $ff
    rst $38                                       ; $4536: $ff
    rst $38                                       ; $4537: $ff
    rst $38                                       ; $4538: $ff
    rst $38                                       ; $4539: $ff
    rst $38                                       ; $453a: $ff
    rst $38                                       ; $453b: $ff
    rst $38                                       ; $453c: $ff
    rst $38                                       ; $453d: $ff
    rst $38                                       ; $453e: $ff
    nop                                           ; $453f: $00
    rst $38                                       ; $4540: $ff
    rst $38                                       ; $4541: $ff
    rst $38                                       ; $4542: $ff
    rst $38                                       ; $4543: $ff
    rst $38                                       ; $4544: $ff
    rst $38                                       ; $4545: $ff

Jump_057_4546:
    rst $38                                       ; $4546: $ff
    rst $38                                       ; $4547: $ff
    rst $38                                       ; $4548: $ff
    rst $38                                       ; $4549: $ff
    rst $38                                       ; $454a: $ff
    rst $38                                       ; $454b: $ff
    rst $38                                       ; $454c: $ff
    rst $38                                       ; $454d: $ff
    rst $38                                       ; $454e: $ff
    rst $38                                       ; $454f: $ff
    nop                                           ; $4550: $00
    rst $38                                       ; $4551: $ff
    rst $38                                       ; $4552: $ff
    rst $38                                       ; $4553: $ff
    rst $38                                       ; $4554: $ff
    rst $38                                       ; $4555: $ff
    rst $38                                       ; $4556: $ff
    rst $38                                       ; $4557: $ff
    rst $38                                       ; $4558: $ff
    rst $38                                       ; $4559: $ff
    rst $38                                       ; $455a: $ff
    rst $38                                       ; $455b: $ff
    rst $38                                       ; $455c: $ff
    rst $38                                       ; $455d: $ff
    rst $38                                       ; $455e: $ff
    rst $38                                       ; $455f: $ff
    rst $38                                       ; $4560: $ff
    nop                                           ; $4561: $00
    rst $38                                       ; $4562: $ff
    rst $38                                       ; $4563: $ff
    rst $38                                       ; $4564: $ff
    rst $38                                       ; $4565: $ff
    rst $38                                       ; $4566: $ff
    rst $38                                       ; $4567: $ff
    rst $38                                       ; $4568: $ff
    rst $38                                       ; $4569: $ff
    rst $38                                       ; $456a: $ff
    rst $38                                       ; $456b: $ff
    rst $38                                       ; $456c: $ff
    rst $38                                       ; $456d: $ff
    rst $38                                       ; $456e: $ff
    rst $38                                       ; $456f: $ff
    rst $38                                       ; $4570: $ff
    rst $38                                       ; $4571: $ff
    nop                                           ; $4572: $00
    rst $38                                       ; $4573: $ff
    rst $38                                       ; $4574: $ff
    rst $38                                       ; $4575: $ff
    rst $38                                       ; $4576: $ff
    rst $38                                       ; $4577: $ff
    rst $38                                       ; $4578: $ff
    rst $38                                       ; $4579: $ff
    rst $38                                       ; $457a: $ff
    rst $38                                       ; $457b: $ff
    rst $38                                       ; $457c: $ff
    rst $38                                       ; $457d: $ff
    rst $38                                       ; $457e: $ff
    rst $38                                       ; $457f: $ff
    rst $38                                       ; $4580: $ff
    rst $38                                       ; $4581: $ff
    rst $38                                       ; $4582: $ff
    nop                                           ; $4583: $00
    rst $38                                       ; $4584: $ff
    rst $38                                       ; $4585: $ff
    rst $38                                       ; $4586: $ff
    rst $38                                       ; $4587: $ff
    rst $38                                       ; $4588: $ff
    rst $38                                       ; $4589: $ff
    rst $38                                       ; $458a: $ff
    rst $38                                       ; $458b: $ff
    rst $38                                       ; $458c: $ff
    rst $38                                       ; $458d: $ff
    rst $38                                       ; $458e: $ff
    rst $38                                       ; $458f: $ff
    rst $38                                       ; $4590: $ff
    rst $38                                       ; $4591: $ff
    rst $38                                       ; $4592: $ff
    rst $38                                       ; $4593: $ff
    nop                                           ; $4594: $00
    rst $38                                       ; $4595: $ff
    rst $38                                       ; $4596: $ff
    rst $38                                       ; $4597: $ff
    rst $38                                       ; $4598: $ff
    rst $38                                       ; $4599: $ff
    rst $38                                       ; $459a: $ff
    rst $38                                       ; $459b: $ff
    di                                            ; $459c: $f3
    nop                                           ; $459d: $00
    nop                                           ; $459e: $00
    nop                                           ; $459f: $00
    rst $30                                       ; $45a0: $f7
    ld e, d                                       ; $45a1: $5a
    ld e, e                                       ; $45a2: $5b
    ld e, e                                       ; $45a3: $5b
    db $fd                                        ; $45a4: $fd
    ldh [$5c], a                                  ; $45a5: $e0 $5c
    ld e, l                                       ; $45a7: $5d
    ld sp, $2731                                  ; $45a8: $31 $31 $27
    ld e, l                                       ; $45ab: $5d
    ld e, h                                       ; $45ac: $5c
    ld e, e                                       ; $45ad: $5b
    rst $38                                       ; $45ae: $ff
    pop hl                                        ; $45af: $e1
    rst $28                                       ; $45b0: $ef
    ldh [rP1], a                                  ; $45b1: $e0 $00
    rst $38                                       ; $45b3: $ff
    rst $38                                       ; $45b4: $ff
    rst $20                                       ; $45b5: $e7
    and $0e                                       ; $45b6: $e6 $0e
    jp nz, Jump_057_5be1                          ; $45b8: $c2 $e1 $5b

    ld h, b                                       ; $45bb: $60
    ld sp, $e2ff                                  ; $45bc: $31 $ff $e2
    cp [hl]                                       ; $45bf: $be
    push hl                                       ; $45c0: $e5
    jp z, $c0ff                                   ; $45c1: $ca $ff $c0

    add sp, -$42                                  ; $45c4: $e8 $be
    pop bc                                        ; $45c6: $c1
    ld [c], a                                     ; $45c7: $e2
    inc a                                         ; $45c8: $3c
    ld d, l                                       ; $45c9: $55
    ld d, h                                       ; $45ca: $54
    dec sp                                        ; $45cb: $3b
    ld c, l                                       ; $45cc: $4d
    cp e                                          ; $45cd: $bb
    ldh [$62], a                                  ; $45ce: $e0 $62
    pop hl                                        ; $45d0: $e1
    ld h, d                                       ; $45d1: $62
    ld a, d                                       ; $45d2: $7a
    pop hl                                        ; $45d3: $e1
    jp z, $c0ff                                   ; $45d4: $ca $ff $c0

    ld [$e0c1], a                                 ; $45d7: $ea $c1 $e0
    ld b, d                                       ; $45da: $42
    jr nc, jr_057_4647                            ; $45db: $30 $6a

    ld e, a                                       ; $45dd: $5f
    ld l, d                                       ; $45de: $6a
    ccf                                           ; $45df: $3f
    ld d, h                                       ; $45e0: $54
    ld a, [hl-]                                   ; $45e1: $3a
    ld b, a                                       ; $45e2: $47
    ld a, b                                       ; $45e3: $78
    pop hl                                        ; $45e4: $e1
    ld e, a                                       ; $45e5: $5f
    ret nz                                        ; $45e6: $c0

    rst $38                                       ; $45e7: $ff
    cp $40                                        ; $45e8: $fe $40
    ld [$315f], a                                 ; $45ea: $ea $5f $31
    ld c, l                                       ; $45ed: $4d
    dec [hl]                                      ; $45ee: $35
    ld l, b                                       ; $45ef: $68
    ld l, b                                       ; $45f0: $68
    ld l, d                                       ; $45f1: $6a
    rst $38                                       ; $45f2: $ff
    jr nc, @+$32                                  ; $45f3: $30 $30

    jr nc, @+$6c                                  ; $45f5: $30 $6a

    ld [hl], $54                                  ; $45f7: $36 $54
    ld d, h                                       ; $45f9: $54
    inc a                                         ; $45fa: $3c
    di                                            ; $45fb: $f3
    ld sp, $c05e                                  ; $45fc: $31 $5e $c0
    rst $38                                       ; $45ff: $ff
    jp hl                                         ; $4600: $e9


    add sp, $5a                                   ; $4601: $e8 $5a
    ld e, e                                       ; $4603: $5b
    ld e, [hl]                                    ; $4604: $5e
    ld sp, $39cf                                  ; $4605: $31 $cf $39
    ld l, b                                       ; $4608: $68
    ld l, b                                       ; $4609: $68
    ld l, b                                       ; $460a: $68
    pop bc                                        ; $460b: $c1
    pop hl                                        ; $460c: $e1
    rst $38                                       ; $460d: $ff
    ldh [$30], a                                  ; $460e: $e0 $30
    dec [hl]                                      ; $4610: $35
    rlca                                          ; $4611: $07
    ld c, l                                       ; $4612: $4d
    ld sp, $ca5f                                  ; $4613: $31 $5f $ca
    rst $38                                       ; $4616: $ff
    ret nz                                        ; $4617: $c0

    add sp, -$7f                                  ; $4618: $e8 $81
    pop hl                                        ; $461a: $e1
    add h                                         ; $461b: $84
    ldh [$c1], a                                  ; $461c: $e0 $c1
    db $e4                                        ; $461e: $e4
    rra                                           ; $461f: $1f
    jr nc, jr_057_468c                            ; $4620: $30 $6a

    add hl, sp                                    ; $4622: $39
    ld sp, $ca5e                                  ; $4623: $31 $5e $ca
    rst $38                                       ; $4626: $ff
    add b                                         ; $4627: $80
    ret z                                         ; $4628: $c8

    add c                                         ; $4629: $81
    ldh [$3d], a                                  ; $462a: $e0 $3d
    ld l, c                                       ; $462c: $69
    pop bc                                        ; $462d: $c1
    add sp, $30                                   ; $462e: $e8 $30
    ld d, d                                       ; $4630: $52
    ld sp, $ca31                                  ; $4631: $31 $31 $ca
    rst $38                                       ; $4634: $ff
    ld b, b                                       ; $4635: $40
    ret z                                         ; $4636: $c8

    scf                                           ; $4637: $37
    ld h, c                                       ; $4638: $61
    ld sp, $c052                                  ; $4639: $31 $52 $c0
    ld [c], a                                     ; $463c: $e2
    ld l, c                                       ; $463d: $69
    ld l, c                                       ; $463e: $69
    cp c                                          ; $463f: $b9
    ldh [$fa], a                                  ; $4640: $e0 $fa
    ret nz                                        ; $4642: $c0

    ld a, b                                       ; $4643: $78
    add b                                         ; $4644: $80
    rst $38                                       ; $4645: $ff
    add b                                         ; $4646: $80

jr_057_4647:
    db $ed                                        ; $4647: $ed
    ret nz                                        ; $4648: $c0

    add sp, $69                                   ; $4649: $e8 $69
    jr nc, jr_057_4683                            ; $464b: $30 $36

    scf                                           ; $464d: $37
    nop                                           ; $464e: $00
    rst $38                                       ; $464f: $ff
    adc $c0                                       ; $4650: $ce $c0
    xor d                                         ; $4652: $aa
    ld e, a                                       ; $4653: $5f
    ld sp, $0839                                  ; $4654: $31 $39 $08
    ld [c], a                                     ; $4657: $e2
    inc bc                                        ; $4658: $03
    pop hl                                        ; $4659: $e1
    jr nc, jr_057_46c5                            ; $465a: $30 $69

    rst $08                                       ; $465c: $cf
    ld [hl-], a                                   ; $465d: $32
    ld b, a                                       ; $465e: $47
    ld sp, $8060                                  ; $465f: $31 $60 $80
    rst $18                                       ; $4662: $df
    add b                                         ; $4663: $80
    ret                                           ; $4664: $c9


    ld e, d                                       ; $4665: $5a
    ld e, [hl]                                    ; $4666: $5e
    rst $30                                       ; $4667: $f7
    ld c, l                                       ; $4668: $4d
    ld [hl-], a                                   ; $4669: $32
    ld l, d                                       ; $466a: $6a
    ld b, b                                       ; $466b: $40
    ret nz                                        ; $466c: $c0

    ld l, d                                       ; $466d: $6a
    ld [hl], $55                                  ; $466e: $36 $55
    ld d, h                                       ; $4670: $54
    rst $00                                       ; $4671: $c7
    ld d, h                                       ; $4672: $54
    ld a, [hl]                                    ; $4673: $7e
    xor a                                         ; $4674: $af
    pop bc                                        ; $4675: $c1
    ldh [$c0], a                                  ; $4676: $e0 $c0
    rst $38                                       ; $4678: $ff
    nop                                           ; $4679: $00
    ret nc                                        ; $467a: $d0

    ld [hl], $7e                                  ; $467b: $36 $7e
    adc e                                         ; $467d: $8b
    ld [hl], h                                    ; $467e: $74
    add b                                         ; $467f: $80
    rst $38                                       ; $4680: $ff
    ldh [$81], a                                  ; $4681: $e0 $81

jr_057_4683:
    pop bc                                        ; $4683: $c1
    and b                                         ; $4684: $a0
    ret nz                                        ; $4685: $c0

    rst $38                                       ; $4686: $ff
    add b                                         ; $4687: $80
    ld [$f95a], a                                 ; $4688: $ea $5a $f9
    ld e, [hl]                                    ; $468b: $5e

jr_057_468c:
    ld b, c                                       ; $468c: $41
    and b                                         ; $468d: $a0
    jp nz, $80e3                                  ; $468e: $c2 $e3 $80

    add b                                         ; $4691: $80
    xor b                                         ; $4692: $a8
    xor h                                         ; $4693: $ac
    ld e, [hl]                                    ; $4694: $5e
    jr jr_057_4697                                ; $4695: $18 $00

jr_057_4697:
    cp a                                          ; $4697: $bf
    ret nz                                        ; $4698: $c0

    adc e                                         ; $4699: $8b
    ld a, a                                       ; $469a: $7f
    and b                                         ; $469b: $a0
    ld sp, $c2a0                                  ; $469c: $31 $a0 $c2
    db $e3                                        ; $469f: $e3
    ld a, a                                       ; $46a0: $7f
    ld [c], a                                     ; $46a1: $e2
    nop                                           ; $46a2: $00
    rst $38                                       ; $46a3: $ff
    ld a, b                                       ; $46a4: $78
    add b                                         ; $46a5: $80
    xor e                                         ; $46a6: $ab
    ld a, a                                       ; $46a7: $7f
    pop hl                                        ; $46a8: $e1
    ret nz                                        ; $46a9: $c0

    rst $20                                       ; $46aa: $e7
    xor [hl]                                      ; $46ab: $ae
    ld [hl], b                                    ; $46ac: $70
    ld sp, $ca60                                  ; $46ad: $31 $60 $ca
    rst $38                                       ; $46b0: $ff
    nop                                           ; $46b1: $00
    rst $38                                       ; $46b2: $ff
    rst $38                                       ; $46b3: $ff
    rst $38                                       ; $46b4: $ff
    rst $38                                       ; $46b5: $ff
    rst $38                                       ; $46b6: $ff
    rst $38                                       ; $46b7: $ff
    rst $38                                       ; $46b8: $ff
    rst $38                                       ; $46b9: $ff
    rst $38                                       ; $46ba: $ff
    rst $38                                       ; $46bb: $ff
    rst $38                                       ; $46bc: $ff
    rst $38                                       ; $46bd: $ff
    rst $38                                       ; $46be: $ff
    rst $38                                       ; $46bf: $ff
    rst $38                                       ; $46c0: $ff
    rst $38                                       ; $46c1: $ff
    nop                                           ; $46c2: $00
    rst $38                                       ; $46c3: $ff
    rst $38                                       ; $46c4: $ff

jr_057_46c5:
    rst $38                                       ; $46c5: $ff
    rst $38                                       ; $46c6: $ff
    rst $38                                       ; $46c7: $ff
    rst $38                                       ; $46c8: $ff
    rst $38                                       ; $46c9: $ff
    rst $38                                       ; $46ca: $ff
    rst $38                                       ; $46cb: $ff
    rst $38                                       ; $46cc: $ff
    rst $38                                       ; $46cd: $ff
    rst $38                                       ; $46ce: $ff
    rst $38                                       ; $46cf: $ff
    rst $38                                       ; $46d0: $ff
    rst $38                                       ; $46d1: $ff
    rst $38                                       ; $46d2: $ff
    nop                                           ; $46d3: $00
    rst $38                                       ; $46d4: $ff
    rst $38                                       ; $46d5: $ff
    rst $38                                       ; $46d6: $ff
    rst $38                                       ; $46d7: $ff
    rst $38                                       ; $46d8: $ff
    rst $38                                       ; $46d9: $ff
    rst $38                                       ; $46da: $ff
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    rst $38                                       ; $46dd: $ff
    rst $38                                       ; $46de: $ff
    rst $38                                       ; $46df: $ff
    rst $38                                       ; $46e0: $ff
    rst $38                                       ; $46e1: $ff
    rst $38                                       ; $46e2: $ff
    rst $38                                       ; $46e3: $ff
    nop                                           ; $46e4: $00
    rst $38                                       ; $46e5: $ff
    rst $38                                       ; $46e6: $ff
    rst $38                                       ; $46e7: $ff
    rst $38                                       ; $46e8: $ff
    rst $38                                       ; $46e9: $ff
    rst $38                                       ; $46ea: $ff
    rst $38                                       ; $46eb: $ff
    rst $38                                       ; $46ec: $ff
    rst $38                                       ; $46ed: $ff
    rst $38                                       ; $46ee: $ff
    rst $38                                       ; $46ef: $ff
    rst $38                                       ; $46f0: $ff
    rst $38                                       ; $46f1: $ff
    rst $38                                       ; $46f2: $ff
    rst $38                                       ; $46f3: $ff
    rst $38                                       ; $46f4: $ff
    nop                                           ; $46f5: $00
    rst $38                                       ; $46f6: $ff
    rst $38                                       ; $46f7: $ff
    rst $38                                       ; $46f8: $ff
    rst $38                                       ; $46f9: $ff
    rst $38                                       ; $46fa: $ff
    rst $38                                       ; $46fb: $ff
    rst $38                                       ; $46fc: $ff
    rst $38                                       ; $46fd: $ff
    rst $38                                       ; $46fe: $ff
    rst $38                                       ; $46ff: $ff
    rst $38                                       ; $4700: $ff
    rst $38                                       ; $4701: $ff
    rst $38                                       ; $4702: $ff
    rst $38                                       ; $4703: $ff
    rst $38                                       ; $4704: $ff
    rst $38                                       ; $4705: $ff
    nop                                           ; $4706: $00
    rst $38                                       ; $4707: $ff
    rst $38                                       ; $4708: $ff
    rst $38                                       ; $4709: $ff
    rst $38                                       ; $470a: $ff
    rst $38                                       ; $470b: $ff
    rst $38                                       ; $470c: $ff
    rst $38                                       ; $470d: $ff
    rst $38                                       ; $470e: $ff
    rst $38                                       ; $470f: $ff
    rst $38                                       ; $4710: $ff
    rst $38                                       ; $4711: $ff
    rst $38                                       ; $4712: $ff
    rst $38                                       ; $4713: $ff
    rst $38                                       ; $4714: $ff
    rst $38                                       ; $4715: $ff
    rst $38                                       ; $4716: $ff
    nop                                           ; $4717: $00
    rst $38                                       ; $4718: $ff
    rst $38                                       ; $4719: $ff
    rst $38                                       ; $471a: $ff
    rst $38                                       ; $471b: $ff
    rst $38                                       ; $471c: $ff
    rst $38                                       ; $471d: $ff
    rst $38                                       ; $471e: $ff
    rst $38                                       ; $471f: $ff
    rst $38                                       ; $4720: $ff
    rst $38                                       ; $4721: $ff
    rst $38                                       ; $4722: $ff
    rst $38                                       ; $4723: $ff
    rst $38                                       ; $4724: $ff
    rst $38                                       ; $4725: $ff
    rst $38                                       ; $4726: $ff
    rst $38                                       ; $4727: $ff
    nop                                           ; $4728: $00
    rst $38                                       ; $4729: $ff
    rst $38                                       ; $472a: $ff
    rst $38                                       ; $472b: $ff
    rst $38                                       ; $472c: $ff
    rst $38                                       ; $472d: $ff
    rst $38                                       ; $472e: $ff
    rst $38                                       ; $472f: $ff
    rst $38                                       ; $4730: $ff
    rst $38                                       ; $4731: $ff
    rst $38                                       ; $4732: $ff
    rst $38                                       ; $4733: $ff
    rst $38                                       ; $4734: $ff
    rst $38                                       ; $4735: $ff
    rst $38                                       ; $4736: $ff
    rst $38                                       ; $4737: $ff
    rst $38                                       ; $4738: $ff
    nop                                           ; $4739: $00

Jump_057_473a:
    rst $38                                       ; $473a: $ff
    rst $38                                       ; $473b: $ff
    rst $38                                       ; $473c: $ff
    rst $38                                       ; $473d: $ff
    rst $38                                       ; $473e: $ff
    rst $38                                       ; $473f: $ff
    rst $38                                       ; $4740: $ff
    rst $38                                       ; $4741: $ff
    rst $38                                       ; $4742: $ff
    rst $38                                       ; $4743: $ff
    rst $38                                       ; $4744: $ff
    rst $38                                       ; $4745: $ff
    rst $38                                       ; $4746: $ff
    rst $38                                       ; $4747: $ff
    rst $38                                       ; $4748: $ff
    rst $38                                       ; $4749: $ff
    nop                                           ; $474a: $00
    rst $38                                       ; $474b: $ff
    rst $38                                       ; $474c: $ff
    rst $38                                       ; $474d: $ff
    rst $38                                       ; $474e: $ff
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    rst $38                                       ; $4753: $ff
    rst $38                                       ; $4754: $ff
    rst $38                                       ; $4755: $ff
    rst $38                                       ; $4756: $ff
    rst $38                                       ; $4757: $ff
    rst $38                                       ; $4758: $ff
    rst $38                                       ; $4759: $ff
    rst $38                                       ; $475a: $ff
    nop                                           ; $475b: $00
    rst $38                                       ; $475c: $ff
    rst $38                                       ; $475d: $ff
    rst $38                                       ; $475e: $ff
    rst $38                                       ; $475f: $ff
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff
    rst $38                                       ; $4762: $ff
    rst $38                                       ; $4763: $ff
    rst $38                                       ; $4764: $ff
    rst $38                                       ; $4765: $ff
    rst $38                                       ; $4766: $ff
    rst $38                                       ; $4767: $ff
    rst $38                                       ; $4768: $ff
    rst $38                                       ; $4769: $ff
    rst $38                                       ; $476a: $ff
    rst $38                                       ; $476b: $ff
    nop                                           ; $476c: $00
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    rst $38                                       ; $476f: $ff
    rst $38                                       ; $4770: $ff
    rst $38                                       ; $4771: $ff
    di                                            ; $4772: $f3
    nop                                           ; $4773: $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    and l                                         ; $4776: $a5
    nop                                           ; $4777: $00
    rst $38                                       ; $4778: $ff
    push hl                                       ; $4779: $e5
    ld [hl-], a                                   ; $477a: $32
    or $e6                                        ; $477b: $f6 $e6
    rst $30                                       ; $477d: $f7
    rst $20                                       ; $477e: $e7
    dec [hl]                                      ; $477f: $35
    db $ec                                        ; $4780: $ec
    xor $37                                       ; $4781: $ee $37
    db $ec                                        ; $4783: $ec
    jp c, $c7f0                                   ; $4784: $da $f0 $c7

    add sp, $33                                   ; $4787: $e8 $33
    ld sp, $f2e0                                  ; $4789: $31 $e0 $f2
    ld [hl], $30                                  ; $478c: $36 $30
    scf                                           ; $478e: $37
    cp a                                          ; $478f: $bf
    ld h, $20                                     ; $4790: $26 $20
    daa                                           ; $4792: $27
    db $10                                        ; $4793: $10
    ld d, $17                                     ; $4794: $16 $17
    jp nz, Jump_000_34f6                          ; $4796: $c2 $f6 $34

    rst $38                                       ; $4799: $ff
    ld [hl], $32                                  ; $479a: $36 $32
    jr nc, jr_057_47d5                            ; $479c: $30 $37

    ld sp, $3133                                  ; $479e: $31 $33 $31
    inc sp                                        ; $47a1: $33
    nop                                           ; $47a2: $00
    and b                                         ; $47a3: $a0
    ei                                            ; $47a4: $fb
    rst $38                                       ; $47a5: $ff
    rst $28                                       ; $47a6: $ef
    nop                                           ; $47a7: $00
    nop                                           ; $47a8: $00
    nop                                           ; $47a9: $00
    or d                                          ; $47aa: $b2
    ld b, a                                       ; $47ab: $47
    ld [c], a                                     ; $47ac: $e2
    ld b, a                                       ; $47ad: $47
    ld d, a                                       ; $47ae: $57
    ld c, c                                       ; $47af: $49
    cpl                                           ; $47b0: $2f
    ld c, e                                       ; $47b1: $4b
    ld [$c503], a                                 ; $47b2: $ea $03 $c5
    ld b, $e2                                     ; $47b5: $06 $e2
    ld bc, $00a0                                  ; $47b7: $01 $a0 $00
    ld [$f003], a                                 ; $47ba: $ea $03 $f0
    inc bc                                        ; $47bd: $03
    push bc                                       ; $47be: $c5
    ld b, $e2                                     ; $47bf: $06 $e2
    ld bc, $023f                                  ; $47c1: $01 $3f $02
    xor e                                         ; $47c4: $ab
    nop                                           ; $47c5: $00
    inc sp                                        ; $47c6: $33
    ld bc, $06c5                                  ; $47c7: $01 $c5 $06
    ld [$0825], sp                                ; $47ca: $08 $25 $08
    dec h                                         ; $47cd: $25
    ld [$0825], sp                                ; $47ce: $08 $25 $08
    dec h                                         ; $47d1: $25
    ld [$0825], sp                                ; $47d2: $08 $25 $08

jr_057_47d5:
    dec h                                         ; $47d5: $25
    ld [$0825], sp                                ; $47d6: $08 $25 $08
    dec h                                         ; $47d9: $25
    ld [$0825], sp                                ; $47da: $08 $25 $08
    dec h                                         ; $47dd: $25
    ld [$0825], sp                                ; $47de: $08 $25 $08
    dec h                                         ; $47e1: $25
    ld e, e                                       ; $47e2: $5b
    ld a, [bc]                                    ; $47e3: $0a
    dec bc                                        ; $47e4: $0b
    rst $38                                       ; $47e5: $ff
    jp hl                                         ; $47e6: $e9


    dec hl                                        ; $47e7: $2b
    dec hl                                        ; $47e8: $2b
    pop af                                        ; $47e9: $f1
    pop hl                                        ; $47ea: $e1
    inc c                                         ; $47eb: $0c
    rst $38                                       ; $47ec: $ff
    rst $38                                       ; $47ed: $ff
    jr @-$17                                      ; $47ee: $18 $e7

    and $c1                                       ; $47f0: $e6 $c1
    ld [$e1be], a                                 ; $47f2: $ea $be $e1
    ld a, [bc]                                    ; $47f5: $0a
    ld a, [bc]                                    ; $47f6: $0a
    ret nz                                        ; $47f7: $c0

    rst $38                                       ; $47f8: $ff
    ret nz                                        ; $47f9: $c0

    jp hl                                         ; $47fa: $e9


    ld a, a                                       ; $47fb: $7f
    db $e3                                        ; $47fc: $e3
    inc sp                                        ; $47fd: $33
    ld l, e                                       ; $47fe: $6b
    ld c, e                                       ; $47ff: $4b
    rst $38                                       ; $4800: $ff
    db $e3                                        ; $4801: $e3
    ld a, l                                       ; $4802: $7d
    ldh [$0b], a                                  ; $4803: $e0 $0b
    ld a, [bc]                                    ; $4805: $0a
    jp z, $e8ff                                   ; $4806: $ca $ff $e8

    rst $20                                       ; $4809: $e7
    add $40                                       ; $480a: $c6 $40
    pop hl                                        ; $480c: $e1
    ld l, e                                       ; $480d: $6b
    ld l, e                                       ; $480e: $6b
    ret z                                         ; $480f: $c8

    ldh [$38], a                                  ; $4810: $e0 $38
    ld [c], a                                     ; $4812: $e2
    cp a                                          ; $4813: $bf
    pop hl                                        ; $4814: $e1
    ld c, e                                       ; $4815: $4b
    dec hl                                        ; $4816: $2b
    inc c                                         ; $4817: $0c
    jp z, Jump_057_40ff                           ; $4818: $ca $ff $40

    ld [$6b6b], a                                 ; $481b: $ea $6b $6b
    ld a, [bc]                                    ; $481e: $0a
    ld [c], a                                     ; $481f: $e2
    cp a                                          ; $4820: $bf
    push hl                                       ; $4821: $e5
    ret nz                                        ; $4822: $c0

    rst $38                                       ; $4823: $ff
    nop                                           ; $4824: $00
    db $eb                                        ; $4825: $eb
    sub h                                         ; $4826: $94
    pop bc                                        ; $4827: $c1
    ldh [$c0], a                                  ; $4828: $e0 $c0
    rst $20                                       ; $482a: $e7
    dec bc                                        ; $482b: $0b
    ld a, $e0                                     ; $482c: $3e $e0
    ld a, [hl+]                                   ; $482e: $2a
    jp z, $c0ff                                   ; $482f: $ca $ff $c0

    ret z                                         ; $4832: $c8

    dec hl                                        ; $4833: $2b
    nop                                           ; $4834: $00
    pop bc                                        ; $4835: $c1
    ldh [$c0], a                                  ; $4836: $e0 $c0
    add sp, $7f                                   ; $4838: $e8 $7f
    ret nz                                        ; $483a: $c0

    add b                                         ; $483b: $80
    rst $38                                       ; $483c: $ff
    add b                                         ; $483d: $80
    jp z, $e0c1                                   ; $483e: $ca $c1 $e0

    ret nz                                        ; $4841: $c0

    jp hl                                         ; $4842: $e9


    ccf                                           ; $4843: $3f
    ldh [rP1], a                                  ; $4844: $e0 $00
    jp z, $80ff                                   ; $4846: $ca $ff $80

    jp hl                                         ; $4849: $e9


    ret nz                                        ; $484a: $c0

    db $eb                                        ; $484b: $eb
    ccf                                           ; $484c: $3f
    ldh [$c0], a                                  ; $484d: $e0 $c0
    rst $38                                       ; $484f: $ff
    jp hl                                         ; $4850: $e9


    add sp, -$3f                                  ; $4851: $e8 $c1
    ld [c], a                                     ; $4853: $e2
    ret nz                                        ; $4854: $c0

    jp hl                                         ; $4855: $e9


    ld b, b                                       ; $4856: $40
    cp [hl]                                       ; $4857: $be
    and b                                         ; $4858: $a0
    jp z, $c0ff                                   ; $4859: $ca $ff $c0

    db $ec                                        ; $485c: $ec
    ld a, l                                       ; $485d: $7d
    xor d                                         ; $485e: $aa
    ret nz                                        ; $485f: $c0

    rst $38                                       ; $4860: $ff
    nop                                           ; $4861: $00
    jp z, Jump_057_4b2b                           ; $4862: $ca $2b $4b

    and e                                         ; $4865: $a3
    ret nz                                        ; $4866: $c0

    cp $a3                                        ; $4867: $fe $a3
    cp d                                          ; $4869: $ba
    and b                                         ; $486a: $a0
    ret nz                                        ; $486b: $c0

    rst $38                                       ; $486c: $ff
    add b                                         ; $486d: $80
    call z, $c6c8                                 ; $486e: $cc $c8 $c6
    ret nz                                        ; $4871: $c0

    and d                                         ; $4872: $a2
    ld l, e                                       ; $4873: $6b
    ld l, e                                       ; $4874: $6b
    inc b                                         ; $4875: $04
    ret nz                                        ; $4876: $c0

    rst $38                                       ; $4877: $ff
    add b                                         ; $4878: $80
    xor d                                         ; $4879: $aa
    ld a, [bc]                                    ; $487a: $0a
    ld c, b                                       ; $487b: $48
    and l                                         ; $487c: $a5
    cp e                                          ; $487d: $bb
    and e                                         ; $487e: $a3
    or h                                          ; $487f: $b4
    and c                                         ; $4880: $a1
    jp z, Jump_000_00ff                           ; $4881: $ca $ff $00

    xor [hl]                                      ; $4884: $ae
    nop                                           ; $4885: $00
    ld b, $a3                                     ; $4886: $06 $a3
    ld [hl], h                                    ; $4888: $74
    add h                                         ; $4889: $84
    jp z, Jump_000_00ff                           ; $488a: $ca $ff $00

    xor e                                         ; $488d: $ab
    add a                                         ; $488e: $87
    and h                                         ; $488f: $a4
    ret nz                                        ; $4890: $c0

    rst $38                                       ; $4891: $ff
    rst $38                                       ; $4892: $ff
    rst $38                                       ; $4893: $ff
    rst $38                                       ; $4894: $ff
    rst $38                                       ; $4895: $ff
    nop                                           ; $4896: $00
    rst $38                                       ; $4897: $ff
    rst $38                                       ; $4898: $ff
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
    nop                                           ; $48a7: $00
    rst $38                                       ; $48a8: $ff
    rst $38                                       ; $48a9: $ff
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
    nop                                           ; $48b8: $00
    rst $38                                       ; $48b9: $ff
    rst $38                                       ; $48ba: $ff
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
    nop                                           ; $48c9: $00
    rst $38                                       ; $48ca: $ff
    rst $38                                       ; $48cb: $ff
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
    nop                                           ; $48da: $00
    rst $38                                       ; $48db: $ff
    rst $38                                       ; $48dc: $ff
    rst $38                                       ; $48dd: $ff
    rst $38                                       ; $48de: $ff
    rst $38                                       ; $48df: $ff
    rst $38                                       ; $48e0: $ff
    rst $38                                       ; $48e1: $ff
    rst $38                                       ; $48e2: $ff
    rst $38                                       ; $48e3: $ff
    rst $38                                       ; $48e4: $ff
    rst $38                                       ; $48e5: $ff
    rst $38                                       ; $48e6: $ff
    rst $38                                       ; $48e7: $ff
    rst $38                                       ; $48e8: $ff
    rst $38                                       ; $48e9: $ff
    rst $38                                       ; $48ea: $ff
    nop                                           ; $48eb: $00
    rst $38                                       ; $48ec: $ff
    rst $38                                       ; $48ed: $ff
    rst $38                                       ; $48ee: $ff
    rst $38                                       ; $48ef: $ff
    rst $38                                       ; $48f0: $ff
    rst $38                                       ; $48f1: $ff
    rst $38                                       ; $48f2: $ff
    rst $38                                       ; $48f3: $ff
    rst $38                                       ; $48f4: $ff
    rst $38                                       ; $48f5: $ff
    rst $38                                       ; $48f6: $ff
    rst $38                                       ; $48f7: $ff
    rst $38                                       ; $48f8: $ff
    rst $38                                       ; $48f9: $ff
    rst $38                                       ; $48fa: $ff
    rst $38                                       ; $48fb: $ff
    nop                                           ; $48fc: $00
    rst $38                                       ; $48fd: $ff
    rst $38                                       ; $48fe: $ff
    rst $38                                       ; $48ff: $ff
    rst $38                                       ; $4900: $ff
    rst $38                                       ; $4901: $ff
    rst $38                                       ; $4902: $ff
    rst $38                                       ; $4903: $ff
    rst $38                                       ; $4904: $ff
    rst $38                                       ; $4905: $ff
    rst $38                                       ; $4906: $ff
    rst $38                                       ; $4907: $ff
    rst $38                                       ; $4908: $ff
    rst $38                                       ; $4909: $ff
    rst $38                                       ; $490a: $ff
    rst $38                                       ; $490b: $ff
    rst $38                                       ; $490c: $ff
    nop                                           ; $490d: $00
    rst $38                                       ; $490e: $ff
    rst $38                                       ; $490f: $ff
    rst $38                                       ; $4910: $ff
    rst $38                                       ; $4911: $ff
    rst $38                                       ; $4912: $ff
    rst $38                                       ; $4913: $ff
    rst $38                                       ; $4914: $ff
    rst $38                                       ; $4915: $ff
    rst $38                                       ; $4916: $ff
    rst $38                                       ; $4917: $ff
    rst $38                                       ; $4918: $ff
    rst $38                                       ; $4919: $ff
    rst $38                                       ; $491a: $ff
    rst $38                                       ; $491b: $ff
    rst $38                                       ; $491c: $ff
    rst $38                                       ; $491d: $ff
    nop                                           ; $491e: $00
    rst $38                                       ; $491f: $ff
    rst $38                                       ; $4920: $ff
    rst $38                                       ; $4921: $ff
    rst $38                                       ; $4922: $ff
    rst $38                                       ; $4923: $ff
    rst $38                                       ; $4924: $ff
    rst $38                                       ; $4925: $ff
    rst $38                                       ; $4926: $ff
    rst $38                                       ; $4927: $ff
    rst $38                                       ; $4928: $ff
    rst $38                                       ; $4929: $ff
    rst $38                                       ; $492a: $ff
    rst $38                                       ; $492b: $ff
    rst $38                                       ; $492c: $ff
    rst $38                                       ; $492d: $ff
    rst $38                                       ; $492e: $ff
    nop                                           ; $492f: $00
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
    nop                                           ; $4940: $00
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
    nop                                           ; $4951: $00
    rst $38                                       ; $4952: $ff
    db $fc                                        ; $4953: $fc
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    cp e                                          ; $4957: $bb
    ld e, d                                       ; $4958: $5a
    ld e, e                                       ; $4959: $5b
    rst $38                                       ; $495a: $ff
    ldh [$5c], a                                  ; $495b: $e0 $5c
    ld e, l                                       ; $495d: $5d
    ld h, d                                       ; $495e: $62
    rst $38                                       ; $495f: $ff
    db $e3                                        ; $4960: $e3
    ld e, l                                       ; $4961: $5d
    ld b, l                                       ; $4962: $45
    ld e, h                                       ; $4963: $5c
    pop af                                        ; $4964: $f1
    pop hl                                        ; $4965: $e1
    nop                                           ; $4966: $00
    rst $38                                       ; $4967: $ff
    rst $38                                       ; $4968: $ff
    rst $20                                       ; $4969: $e7
    and $c2                                       ; $496a: $e6 $c2
    ld [c], a                                     ; $496c: $e2
    ld sp, $e7ff                                  ; $496d: $31 $ff $e7
    ld h, a                                       ; $4970: $67
    ld h, b                                       ; $4971: $60
    ld e, d                                       ; $4972: $5a
    ld e, d                                       ; $4973: $5a
    ret nz                                        ; $4974: $c0

    rst $38                                       ; $4975: $ff
    ret nz                                        ; $4976: $c0

    jp hl                                         ; $4977: $e9


    ld e, d                                       ; $4978: $5a
    ld h, b                                       ; $4979: $60
    jp nz, Jump_057_77e0                          ; $497a: $c2 $e0 $77

    inc [hl]                                      ; $497d: $34
    ld a, [hl-]                                   ; $497e: $3a
    ld d, h                                       ; $497f: $54
    rst $38                                       ; $4980: $ff
    ldh [rHDMA5], a                               ; $4981: $e0 $55
    ld b, [hl]                                    ; $4983: $46
    ld c, l                                       ; $4984: $4d
    cp a                                          ; $4985: $bf
    ldh [$e3], a                                  ; $4986: $e0 $e3
    ld e, e                                       ; $4988: $5b
    ld e, d                                       ; $4989: $5a
    jp z, $e8ff                                   ; $498a: $ca $ff $e8

    rst $20                                       ; $498d: $e7
    pop bc                                        ; $498e: $c1
    pop hl                                        ; $498f: $e1
    ld c, l                                       ; $4990: $4d
    dec sp                                        ; $4991: $3b
    ccf                                           ; $4992: $3f
    ld d, a                                       ; $4993: $57
    ld l, h                                       ; $4994: $6c
    ld l, h                                       ; $4995: $6c
    jr nc, @+$01                                  ; $4996: $30 $ff

    pop hl                                        ; $4998: $e1
    ld [hl-], a                                   ; $4999: $32
    cp a                                          ; $499a: $bf
    ldh [$5f], a                                  ; $499b: $e0 $5f
    add b                                         ; $499d: $80
    rst $38                                       ; $499e: $ff
    db $fc                                        ; $499f: $fc
    jp hl                                         ; $49a0: $e9


    add sp, -$3f                                  ; $49a1: $e8 $c1
    pop hl                                        ; $49a3: $e1
    ld [hl-], a                                   ; $49a4: $32
    ld l, l                                       ; $49a5: $6d
    ld l, h                                       ; $49a6: $6c
    ld l, h                                       ; $49a7: $6c
    ld l, h                                       ; $49a8: $6c
    ld l, l                                       ; $49a9: $6d
    dec b                                         ; $49aa: $05
    ld l, l                                       ; $49ab: $6d
    cp a                                          ; $49ac: $bf
    db $e4                                        ; $49ad: $e4
    ld e, [hl]                                    ; $49ae: $5e
    ret nz                                        ; $49af: $c0

    rst $38                                       ; $49b0: $ff
    jp hl                                         ; $49b1: $e9


    add sp, -$3f                                  ; $49b2: $e8 $c1
    ld [c], a                                     ; $49b4: $e2
    ret nz                                        ; $49b5: $c0

    db $e3                                        ; $49b6: $e3
    cp [hl]                                       ; $49b7: $be
    ld [c], a                                     ; $49b8: $e2
    and a                                         ; $49b9: $a7
    add hl, sp                                    ; $49ba: $39
    ld sp, $4061                                  ; $49bb: $31 $61 $40
    rst $38                                       ; $49be: $ff
    ret nz                                        ; $49bf: $c0

    jp hl                                         ; $49c0: $e9


    ld a, $c1                                     ; $49c1: $3e $c1
    ldh [$6d], a                                  ; $49c3: $e0 $6d
    rst $20                                       ; $49c5: $e7
    ld l, b                                       ; $49c6: $68
    ld l, b                                       ; $49c7: $68
    ld l, b                                       ; $49c8: $68
    ret nz                                        ; $49c9: $c0

    pop hl                                        ; $49ca: $e1
    ld a, l                                       ; $49cb: $7d
    ldh [rHDMA2], a                               ; $49cc: $e0 $52
    ld sp, $5461                                  ; $49ce: $31 $61 $54
    add b                                         ; $49d1: $80
    rst $38                                       ; $49d2: $ff
    add b                                         ; $49d3: $80
    jp hl                                         ; $49d4: $e9


    ld d, d                                       ; $49d5: $52
    add a                                         ; $49d6: $87
    ldh [rOCPS], a                                ; $49d7: $e0 $6a
    ret nz                                        ; $49d9: $c0

    ldh [rOCPS], a                                ; $49da: $e0 $6a
    cp a                                          ; $49dc: $bf
    db $e3                                        ; $49dd: $e3
    ld c, a                                       ; $49de: $4f
    dec [hl]                                      ; $49df: $35
    ld c, l                                       ; $49e0: $4d
    ld sp, $ca5f                                  ; $49e1: $31 $5f $ca
    rst $38                                       ; $49e4: $ff
    ld b, b                                       ; $49e5: $40
    add sp, $39                                   ; $49e6: $e8 $39
    pop bc                                        ; $49e8: $c1
    ldh [$c8], a                                  ; $49e9: $e0 $c8
    ret nz                                        ; $49eb: $c0

    ld [c], a                                     ; $49ec: $e2
    cp a                                          ; $49ed: $bf
    ld [c], a                                     ; $49ee: $e2
    ccf                                           ; $49ef: $3f
    pop hl                                        ; $49f0: $e1
    ld e, [hl]                                    ; $49f1: $5e
    jp z, $e8ff                                   ; $49f2: $ca $ff $e8

    rst $20                                       ; $49f5: $e7
    ld e, [hl]                                    ; $49f6: $5e
    ld c, l                                       ; $49f7: $4d
    adc a                                         ; $49f8: $8f
    ld [hl-], a                                   ; $49f9: $32
    ld l, d                                       ; $49fa: $6a
    ld l, d                                       ; $49fb: $6a
    ld l, d                                       ; $49fc: $6a
    add e                                         ; $49fd: $83
    ret nz                                        ; $49fe: $c0

    ld a, [$fde0]                                 ; $49ff: $fa $e0 $fd
    jp nz, $1353                                  ; $4a02: $c2 $53 $13

    ld sp, $ca61                                  ; $4a05: $31 $61 $ca
    rst $38                                       ; $4a08: $ff
    add sp, -$19                                  ; $4a09: $e8 $e7
    ld e, a                                       ; $4a0b: $5f
    add c                                         ; $4a0c: $81
    ret nz                                        ; $4a0d: $c0

    pop bc                                        ; $4a0e: $c1
    pop hl                                        ; $4a0f: $e1
    cp a                                          ; $4a10: $bf
    push hl                                       ; $4a11: $e5
    jp nc, $c0ff                                  ; $4a12: $d2 $ff $c0

    ld sp, $ffca                                  ; $4a15: $31 $ca $ff
    nop                                           ; $4a18: $00
    ret z                                         ; $4a19: $c8

    ld e, [hl]                                    ; $4a1a: $5e
    ld bc, $55c0                                  ; $4a1b: $01 $c0 $55
    ld d, h                                       ; $4a1e: $54
    rst $38                                       ; $4a1f: $ff
    ld d, l                                       ; $4a20: $55
    ld b, d                                       ; $4a21: $42
    jr nc, jr_057_4a54                            ; $4a22: $30 $30

    ld l, c                                       ; $4a24: $69
    ld l, c                                       ; $4a25: $69
    ld l, c                                       ; $4a26: $69
    ld l, e                                       ; $4a27: $6b
    sbc a                                         ; $4a28: $9f
    ld l, e                                       ; $4a29: $6b
    ld l, e                                       ; $4a2a: $6b
    ld d, d                                       ; $4a2b: $52
    and h                                         ; $4a2c: $a4
    and h                                         ; $4a2d: $a4
    jp z, Jump_057_40ff                           ; $4a2e: $ca $ff $40

    xor b                                         ; $4a31: $a8
    ld e, a                                       ; $4a32: $5f
    or $43                                        ; $4a33: $f6 $43
    and e                                         ; $4a35: $a3
    inc a                                         ; $4a36: $3c
    ld b, d                                       ; $4a37: $42
    ret nz                                        ; $4a38: $c0

    db $e3                                        ; $4a39: $e3
    ld b, d                                       ; $4a3a: $42
    ld [hl], d                                    ; $4a3b: $72
    add b                                         ; $4a3c: $80
    add b                                         ; $4a3d: $80
    db $f4                                        ; $4a3e: $f4
    jp z, $80ff                                   ; $4a3f: $ca $ff $80

    xor b                                         ; $4a42: $a8
    ld e, d                                       ; $4a43: $5a
    jp Jump_000_3182                              ; $4a44: $c3 $82 $31


    ld sp, $4647                                  ; $4a47: $31 $47 $46
    ld b, $7a                                     ; $4a4a: $06 $7a
    ldh [rHDMA5], a                               ; $4a4c: $e0 $55
    ld d, h                                       ; $4a4e: $54
    pop bc                                        ; $4a4f: $c1
    ldh [$c0], a                                  ; $4a50: $e0 $c0
    rst $38                                       ; $4a52: $ff
    nop                                           ; $4a53: $00

jr_057_4a54:
    xor d                                         ; $4a54: $aa
    ld a, a                                       ; $4a55: $7f
    add c                                         ; $4a56: $81
    cp h                                          ; $4a57: $bc
    add d                                         ; $4a58: $82
    add c                                         ; $4a59: $81
    and c                                         ; $4a5a: $a1
    push bc                                       ; $4a5b: $c5
    ldh [$fd], a                                  ; $4a5c: $e0 $fd
    ld [c], a                                     ; $4a5e: $e2
    jp z, Jump_000_00ff                           ; $4a5f: $ca $ff $00

    xor b                                         ; $4a62: $a8
    pop bc                                        ; $4a63: $c1
    ld [c], a                                     ; $4a64: $e2
    dec sp                                        ; $4a65: $3b
    add b                                         ; $4a66: $80
    ld h, b                                       ; $4a67: $60
    nop                                           ; $4a68: $00
    ret nz                                        ; $4a69: $c0

    rst $38                                       ; $4a6a: $ff
    rst $38                                       ; $4a6b: $ff
    rst $38                                       ; $4a6c: $ff
    rst $38                                       ; $4a6d: $ff
    rst $38                                       ; $4a6e: $ff
    rst $38                                       ; $4a6f: $ff
    rst $38                                       ; $4a70: $ff
    rst $38                                       ; $4a71: $ff
    rst $38                                       ; $4a72: $ff
    rst $38                                       ; $4a73: $ff
    rst $38                                       ; $4a74: $ff
    rst $38                                       ; $4a75: $ff
    rst $38                                       ; $4a76: $ff
    rst $38                                       ; $4a77: $ff
    rst $38                                       ; $4a78: $ff
    nop                                           ; $4a79: $00
    rst $38                                       ; $4a7a: $ff
    rst $38                                       ; $4a7b: $ff
    rst $38                                       ; $4a7c: $ff
    rst $38                                       ; $4a7d: $ff
    rst $38                                       ; $4a7e: $ff
    rst $38                                       ; $4a7f: $ff
    rst $38                                       ; $4a80: $ff
    rst $38                                       ; $4a81: $ff
    rst $38                                       ; $4a82: $ff
    rst $38                                       ; $4a83: $ff
    rst $38                                       ; $4a84: $ff
    rst $38                                       ; $4a85: $ff
    rst $38                                       ; $4a86: $ff
    rst $38                                       ; $4a87: $ff
    rst $38                                       ; $4a88: $ff
    rst $38                                       ; $4a89: $ff
    nop                                           ; $4a8a: $00
    rst $38                                       ; $4a8b: $ff
    rst $38                                       ; $4a8c: $ff
    rst $38                                       ; $4a8d: $ff
    rst $38                                       ; $4a8e: $ff
    rst $38                                       ; $4a8f: $ff
    rst $38                                       ; $4a90: $ff
    rst $38                                       ; $4a91: $ff
    rst $38                                       ; $4a92: $ff
    rst $38                                       ; $4a93: $ff
    rst $38                                       ; $4a94: $ff
    rst $38                                       ; $4a95: $ff
    rst $38                                       ; $4a96: $ff
    rst $38                                       ; $4a97: $ff
    rst $38                                       ; $4a98: $ff
    rst $38                                       ; $4a99: $ff
    rst $38                                       ; $4a9a: $ff
    nop                                           ; $4a9b: $00
    rst $38                                       ; $4a9c: $ff
    rst $38                                       ; $4a9d: $ff
    rst $38                                       ; $4a9e: $ff
    rst $38                                       ; $4a9f: $ff
    rst $38                                       ; $4aa0: $ff
    rst $38                                       ; $4aa1: $ff
    rst $38                                       ; $4aa2: $ff
    rst $38                                       ; $4aa3: $ff
    rst $38                                       ; $4aa4: $ff
    rst $38                                       ; $4aa5: $ff
    rst $38                                       ; $4aa6: $ff
    rst $38                                       ; $4aa7: $ff
    rst $38                                       ; $4aa8: $ff
    rst $38                                       ; $4aa9: $ff
    rst $38                                       ; $4aaa: $ff
    rst $38                                       ; $4aab: $ff
    nop                                           ; $4aac: $00
    rst $38                                       ; $4aad: $ff
    rst $38                                       ; $4aae: $ff
    rst $38                                       ; $4aaf: $ff
    rst $38                                       ; $4ab0: $ff
    rst $38                                       ; $4ab1: $ff
    rst $38                                       ; $4ab2: $ff
    rst $38                                       ; $4ab3: $ff
    rst $38                                       ; $4ab4: $ff
    rst $38                                       ; $4ab5: $ff
    rst $38                                       ; $4ab6: $ff
    rst $38                                       ; $4ab7: $ff
    rst $38                                       ; $4ab8: $ff
    rst $38                                       ; $4ab9: $ff
    rst $38                                       ; $4aba: $ff
    rst $38                                       ; $4abb: $ff
    rst $38                                       ; $4abc: $ff
    nop                                           ; $4abd: $00
    rst $38                                       ; $4abe: $ff
    rst $38                                       ; $4abf: $ff
    rst $38                                       ; $4ac0: $ff
    rst $38                                       ; $4ac1: $ff
    rst $38                                       ; $4ac2: $ff
    rst $38                                       ; $4ac3: $ff
    rst $38                                       ; $4ac4: $ff
    rst $38                                       ; $4ac5: $ff
    rst $38                                       ; $4ac6: $ff
    rst $38                                       ; $4ac7: $ff
    rst $38                                       ; $4ac8: $ff
    rst $38                                       ; $4ac9: $ff
    rst $38                                       ; $4aca: $ff
    rst $38                                       ; $4acb: $ff
    rst $38                                       ; $4acc: $ff
    rst $38                                       ; $4acd: $ff
    nop                                           ; $4ace: $00
    rst $38                                       ; $4acf: $ff
    rst $38                                       ; $4ad0: $ff
    rst $38                                       ; $4ad1: $ff
    rst $38                                       ; $4ad2: $ff
    rst $38                                       ; $4ad3: $ff
    rst $38                                       ; $4ad4: $ff
    rst $38                                       ; $4ad5: $ff
    rst $38                                       ; $4ad6: $ff
    rst $38                                       ; $4ad7: $ff
    rst $38                                       ; $4ad8: $ff
    rst $38                                       ; $4ad9: $ff
    rst $38                                       ; $4ada: $ff
    rst $38                                       ; $4adb: $ff
    rst $38                                       ; $4adc: $ff
    rst $38                                       ; $4add: $ff
    rst $38                                       ; $4ade: $ff
    nop                                           ; $4adf: $00
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
    rst $38                                       ; $4aea: $ff
    rst $38                                       ; $4aeb: $ff
    rst $38                                       ; $4aec: $ff
    rst $38                                       ; $4aed: $ff
    rst $38                                       ; $4aee: $ff
    rst $38                                       ; $4aef: $ff
    nop                                           ; $4af0: $00
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
    rst $38                                       ; $4afb: $ff
    rst $38                                       ; $4afc: $ff
    rst $38                                       ; $4afd: $ff
    rst $38                                       ; $4afe: $ff
    rst $38                                       ; $4aff: $ff
    rst $38                                       ; $4b00: $ff
    nop                                           ; $4b01: $00
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
    rst $38                                       ; $4b0c: $ff
    rst $38                                       ; $4b0d: $ff
    rst $38                                       ; $4b0e: $ff
    rst $38                                       ; $4b0f: $ff
    rst $38                                       ; $4b10: $ff
    rst $38                                       ; $4b11: $ff
    nop                                           ; $4b12: $00
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
    rst $38                                       ; $4b1d: $ff
    rst $38                                       ; $4b1e: $ff
    rst $38                                       ; $4b1f: $ff
    rst $38                                       ; $4b20: $ff
    rst $38                                       ; $4b21: $ff
    rst $38                                       ; $4b22: $ff
    nop                                           ; $4b23: $00
    rst $38                                       ; $4b24: $ff
    rst $38                                       ; $4b25: $ff
    rst $38                                       ; $4b26: $ff
    rst $38                                       ; $4b27: $ff
    rst $38                                       ; $4b28: $ff
    rst $38                                       ; $4b29: $ff
    rst $38                                       ; $4b2a: $ff

Jump_057_4b2b:
    db $fd                                        ; $4b2b: $fd
    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    and l                                         ; $4b2f: $a5
    nop                                           ; $4b30: $00
    rst $38                                       ; $4b31: $ff
    push hl                                       ; $4b32: $e5
    ld [hl-], a                                   ; $4b33: $32
    or $e6                                        ; $4b34: $f6 $e6
    rst $30                                       ; $4b36: $f7
    rst $20                                       ; $4b37: $e7
    dec [hl]                                      ; $4b38: $35
    db $ec                                        ; $4b39: $ec
    xor $37                                       ; $4b3a: $ee $37
    db $ec                                        ; $4b3c: $ec
    jp c, $c7f0                                   ; $4b3d: $da $f0 $c7

    add sp, $33                                   ; $4b40: $e8 $33
    ld sp, $f2e0                                  ; $4b42: $31 $e0 $f2
    ld [hl], $30                                  ; $4b45: $36 $30
    scf                                           ; $4b47: $37
    cp a                                          ; $4b48: $bf
    ld h, $20                                     ; $4b49: $26 $20
    daa                                           ; $4b4b: $27
    db $10                                        ; $4b4c: $10
    ld d, $17                                     ; $4b4d: $16 $17
    jp nz, Jump_000_34f6                          ; $4b4f: $c2 $f6 $34

    rst $38                                       ; $4b52: $ff
    ld [hl], $32                                  ; $4b53: $36 $32
    jr nc, @+$39                                  ; $4b55: $30 $37

    ld sp, $3133                                  ; $4b57: $31 $33 $31
    inc sp                                        ; $4b5a: $33
    nop                                           ; $4b5b: $00
    and b                                         ; $4b5c: $a0
    ei                                            ; $4b5d: $fb
    rst $38                                       ; $4b5e: $ff
    rst $28                                       ; $4b5f: $ef
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00

    db $6b, $4b, $9b, $4b, $4c, $4e, $34, $50, $f0, $03, $4d, $0f, $40, $02, $c0, $00
    db $f0, $03, $f5, $03, $48, $0f, $40, $02, $5f, $3b, $38, $0e, $31, $19, $48, $0f
    db $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25
    db $08, $25, $08, $25, $08, $25, $08, $25, $7d, $0c, $ff, $e4, $4c, $4c, $4c, $2c
    db $0b, $ff, $e0, $0f, $0a, $0b, $4b, $0b, $f2, $e0, $ef, $e1, $ea, $e1, $f5, $e1
    db $24, $f7, $e1, $fd, $fa, $6c, $ff, $e0, $c0, $e0, $6c, $c0, $e1, $bc, $e1, $c0
    db $c5, $e3, $c7, $e0, $fd, $e3, $ba, $e3, $fc, $e3, $c0, $f6, $0c, $0b, $0d, $0c
    db $81, $e0, $2b, $2b, $7c, $e1, $6f, $e4, $bd, $e3, $bf, $e2, $40, $f7, $e5, $76
    db $ef, $56, $e0, $81, $e0, $86, $e5, $be, $e2, $0a, $45, $e1, $80, $3e, $e3, $f6
    db $e3, $24, $e0, $b6, $e3, $44, $f1, $42, $e0, $08, $e0, $6b, $1b, $6b, $4b, $ff
    db $e4, $0b, $2b, $40, $e0, $3f, $e6, $c0, $e4, $04, $f1, $c3, $f7, $c4, $2c, $f9
    db $ea, $45, $e1, $c1, $e0, $04, $e5, $bf, $e1, $40, $c0, $cc, $b1, $c6, $7f, $f3
    db $c9, $c0, $c1, $e1, $85, $e1, $4b, $bf, $e1, $30, $c0, $d0, $c2, $d9, $c6, $c0
    db $c1, $e4, $4b, $6b, $c0, $e1, $7e, $e0, $78, $c0, $ce, $83, $c4, $fe, $d1, $6c
    db $2c, $2c, $0b, $c1, $e5, $00, $82, $c3, $40, $c3, $c0, $df, $c0, $e7, $08, $e2
    db $43, $c1, $42, $c0, $3b, $e1, $00, $c0, $cc, $81, $c6, $7e, $d1, $8a, $a3, $45
    db $c4, $80, $e4, $80, $ad, $ff, $e7, $08, $81, $c6, $7c, $c4, $48, $a0, $6c, $41
    db $e1, $c1, $ea, $80, $ad, $7d, $a8, $20, $f8, $e6, $2d, $a7, $8a, $a1, $88, $c1
    db $82, $e5, $6b, $ef, $86, $80, $a6, $08, $c0, $a3, $2c, $a7, $c1, $eb, $6b, $c4
    db $a1, $45, $a5, $44, $a2, $c0, $cf, $04, $35, $a9, $a8, $81, $2c, $ff, $e0, $81
    db $e4, $c5, $a2, $89, $a1, $c0, $e7, $20, $80, $8f, $f6, $89, $63, $81, $c0, $e7
    db $86, $a4, $4b, $c5, $c6, $18, $c5, $08, $80, $88, $7c, $c4, $bd, $c5, $4c, $81
    db $e8, $94, $f3, $87, $c6, $49, $c9, $00, $fa, $e8, $c0, $e8, $94, $f1, $84, $ca
    db $87, $84, $bb, $e8, $b0, $6f, $14, $87, $20, $dd, $e8, $c5, $e5, $7f, $65, $ef
    db $67, $c2, $c1, $2c, $79, $84, $54, $ab, $00, $5b, $e8, $4e, $c4, $47, $e9, $b0
    db $65, $c0, $eb, $14, $8b, $50, $e3, $f3, $e5, $00, $b7, $e6, $2d, $64, $7a, $a5
    db $bf, $ca, $e5, $c6, $1b, $ca, $4a, $c8, $3b, $8b, $01, $4c, $c0, $60, $7f, $cb
    db $a0, $c5, $51, $8f, $81, $a6, $bd, $87, $fb, $52, $00, $c0, $ca, $47, $ab, $3b
    db $ab, $01, $e2, $40, $ed, $9f, $a9, $48, $ea, $6a, $c7, $00, $bb, $a9, $40, $ec
    db $e5, $ca, $d8, $cb, $aa, $e8, $1e, $c7, $41, $a2, $03, $cb, $00, $cd, $e9, $ce
    db $47, $8f, $c9, $81, $aa, $c0, $eb, $a5, $aa, $4b, $a9, $0e, $45, $00, $81, $af
    db $c1, $ea, $80, $ac, $c3, $ea, $fb, $6a, $5c, $a7, $c0, $ec, $15, $ca, $00, $c7
    db $4a, $b4, $c9, $3a, $35, $c0, $cc, $8e, $45, $8c, $ae, $81, $a9, $c5, $89, $00
    db $40, $ac, $52, $04, $cc, $8b, $67, $e4, $2b, $01, $87, $61, $c3, $80, $be, $cb
    db $00, $d8, $cb, $4a, $2a, $84, $08, $c4, $84, $c1, $ae, $25, $8a, $83, $c9, $bb
    db $28, $00, $ad, $25, $08, $62, $c2, $8b, $94, $4d, $8d, $ed, $bb, $25, $3e, $26
    db $82, $8c, $00, $80, $cc, $15, $6b, $46, $67, $ec, $44, $83, $71, $4d, $ab, $d1
    db $07, $4c, $6c, $00, $2a, $05, $01, $f2, $b3, $b4, $e6, $ab, $c0, $f1, $ef, $0d
    db $12, $49, $06, $4b, $00, $41, $f2, $b3, $b9, $f4, $eb, $7e, $14, $76, $f9, $c0
    db $26, $c0, $d8, $bd, $fc, $00, $a9, $46, $c0, $c7, $ff, $ff, $9b, $22, $e6, $87
    db $c1, $25, $80, $ff, $c0, $ea, $00, $e7, $86, $7c, $8a, $ff, $ff, $26, $8c, $41
    db $a5, $39, $28, $ff, $ff, $e6, $49, $00, $c0, $e8, $ff, $ff, $f3, $d4, $cd, $b9
    db $ff, $ff, $ff, $ff, $96, $ff, $99, $d9, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $37, $eb, $dc, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $bf, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $16, $53, $00, $00

    nop                                           ; $4e4b: $00

    db $fd, $20, $ff, $e4, $24, $24, $24, $2b, $31, $61, $7f, $5b, $5b, $5a, $5b, $5b
    db $5b, $00, $ff, $ff, $fc, $e7, $e6, $c0, $e2, $10, $22, $21, $14, $14, $14, $e1
    db $29, $c0, $e1, $fe, $e1, $ca, $ff, $c0, $eb, $22, $21, $12, $ff, $11, $04, $31
    db $04, $31, $31, $31, $5d, $39, $5c, $c0, $ff, $80, $ee, $22, $12, $11, $c5, $e0
    db $fd, $e4, $b2, $be, $e0, $5a, $ca, $ff, $40, $e9, $28, $17, $87, $e0, $4d, $f7
    db $3b, $54, $55, $fe, $e0, $54, $3b, $4d, $31, $d9, $60, $80, $ff, $00, $ea, $16
    db $15, $c1, $e0, $32, $30, $0e, $ff, $e2, $6a, $6d, $32, $bf, $e0, $ca, $ff, $c0
    db $c8, $81, $e1, $6e, $c1, $e1, $68, $68, $68, $bf, $e3, $3e, $31, $ca, $ff, $a8
    db $80, $c8, $81, $e0, $82, $e1, $6a, $c0, $e0, $6a, $7e, $e1, $6b, $f3, $36, $49
    db $ca, $ff, $e8, $e7, $10, $2b, $01, $31, $fd, $39, $47, $e0, $6a, $6c, $6c, $6d
    db $69, $69, $e7, $30, $30, $69, $c0, $ff, $c0, $ee, $52, $30, $69, $5f, $69, $6d
    db $30, $30, $6b, $c0, $e1, $6a, $40, $ff, $f8, $eb, $ea, $8a, $a0, $c0, $e2, $6b
    db $30, $30, $6d, $6a, $a0, $80, $e0, $c0, $c0, $c0, $ff, $e9, $e8, $8a, $a0, $ac
    db $c0, $e3, $6d, $c1, $6a, $00, $e0, $c1, $e1, $c0, $ff, $e9, $e8, $8a, $a0, $81
    db $6f, $99, $71, $06, $e0, $c1, $e6, $11, $12, $ca, $ff, $e8, $e7, $31, $3f, $31
    db $70, $ae, $80, $79, $71, $c7, $c0, $43, $e3, $8f, $11, $12, $21, $22, $ca, $ff
    db $c0, $e8, $c1, $e0, $80, $78, $bf, $e1, $83, $c0, $04, $e1, $27, $10, $10, $20
    db $ca, $ff, $e8, $e8, $e7, $c1, $e2, $bf, $e0, $6e, $44, $a2, $31, $01, $27, $03
    db $28, $20, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $f4, $00, $00

    nop                                           ; $5033: $00

    db $a5, $00, $ff, $e5, $32, $f6, $e6, $f7, $e7, $35, $ec, $ee, $37, $ec, $da, $f0
    db $c7, $e8, $33, $31, $e0, $f2, $36, $30, $37, $bf, $26, $20, $27, $10, $16, $17
    db $c2, $f6, $34, $ff, $36, $32, $30, $37, $31, $33, $31, $33, $00, $a0, $fb, $ff
    db $ef, $00, $00

    nop                                           ; $5067: $00

    db $70, $50, $a0, $50, $05, $53, $a3, $54, $f0, $03, $4d, $0f, $40, $02, $c0, $00
    db $f0, $03, $f5, $03, $48, $0f, $40, $02, $5f, $3b, $38, $0e, $31, $19, $48, $0f
    db $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25
    db $08, $25, $08, $25, $08, $25, $08, $25, $ff, $0b, $6b, $6b, $4b, $0b, $0b, $0b
    db $6b, $f9, $4b, $ff, $e1, $f7, $e0, $4c, $4c, $4c, $0c, $0c, $00, $fc, $e1, $fb
    db $e1, $f3, $e4, $f1, $e2, $fd, $f4, $c7, $e1, $c0, $e0, $c1, $e2, $00, $bf, $e7
    db $c1, $e1, $ba, $ff, $aa, $e1, $8b, $e2, $c1, $e5, $7e, $e4, $c9, $e3, $00, $ba
    db $e4, $fa, $e7, $f7, $e9, $c0, $e7, $43, $e6, $3e, $e0, $3a, $e0, $3d, $e1, $40
    db $80, $e3, $38, $e5, $bb, $e3, $3d, $e2, $38, $f0, $82, $e9, $6b, $f4, $c0, $20
    db $f3, $c1, $8d, $e8, $fb, $c2, $f8, $c2, $f9, $c7, $2c, $f9, $e9, $42, $e1, $00
    db $02, $e5, $c0, $e0, $7e, $e2, $41, $ea, $c1, $e5, $b5, $e4, $80, $f1, $c0, $e9
    db $00, $3d, $e1, $4e, $e5, $bf, $c4, $fe, $e4, $eb, $c7, $c0, $f3, $c2, $e2, $3d
    db $e1, $20, $40, $e2, $85, $e2, $80, $c4, $31, $e8, $00, $f2, $2b, $80, $e9, $f6
    db $a0, $40, $1e, $e0, $3f, $eb, $be, $c5, $c0, $dc, $bf, $e5, $de, $c3, $4c, $ba
    db $e4, $08, $44, $e9, $00, $fb, $fe, $c4, $2b, $c0, $e6, $c0, $a6, $7d, $c5, $81
    db $c6, $1c, $7c, $c4, $80, $c4, $0b, $4b, $2b, $38, $e4, $c0, $e3, $80, $a3, $40
    db $80, $f2, $c7, $e6, $00, $c9, $3f, $a2, $ba, $e1, $fc, $a2, $0b, $00, $e4, $60
    db $80, $f4, $40, $d0, $01, $a2, $79, $e2, $7c, $a0, $0b, $6b, $c6, $f4, $8a, $b7
    db $84, $2c, $c0, $a0, $2c, $ff, $e0, $80, $a7, $8d, $e0, $0b, $01, $0a, $7e, $e4
    db $75, $80, $fe, $86, $81, $89, $fd, $87, $c0, $ed, $c2, $e3, $00, $ba, $83, $f2
    db $c3, $c7, $94, $fe, $c7, $81, $e7, $27, $94, $c7, $8f, $fd, $87, $00, $c0, $eb
    db $5c, $a5, $14, $a4, $d5, $66, $c7, $8d, $fd, $98, $58, $a5, $d3, $67, $04, $c7
    db $90, $fd, $87, $2c, $c2, $c2, $fa, $e0, $54, $eb, $d3, $69, $c7, $92, $00, $ae
    db $65, $c0, $ed, $dc, $85, $d3, $6c, $c7, $8d, $fd, $86, $40, $cb, $8f, $e8, $00
    db $d3, $66, $c7, $91, $fd, $87, $c0, $ec, $11, $67, $d3, $66, $c7, $91, $7d, $b6
    db $00, $d2, $45, $d3, $68, $c7, $94, $fe, $85, $ff, $ae, $5f, $e5, $d3, $69, $c2
    db $48, $00, $fd, $4c, $40, $ab, $1b, $85, $d3, $6b, $ea, $a7, $fd, $52, $82, $a8
    db $1b, $85, $00, $d3, $6a, $46, $67, $fd, $53, $42, $ac, $4e, $21, $d3, $6a, $85
    db $48, $fd, $52, $00, $fb, $68, $94, $d2, $46, $66, $fd, $54, $c0, $ea, $5b, $70
    db $46, $66, $fd, $5f, $00, $9b, $55, $41, $43, $fd, $59, $40, $f8, $4c, $47, $89
    db $25, $ba, $65, $41, $a4, $00, $7e, $c7, $9b, $52, $3a, $a7, $01, $27, $2e, $e5
    db $01, $ac, $80, $f3, $ad, $85, $00, $73, $e7, $df, $65, $08, $62, $81, $68, $80
    db $f3, $c2, $a7, $fa, $4c, $01, $c4, $00, $bf, $aa, $9d, $d2, $00, $69, $c4, $47
    db $f3, $03, $08, $6a, $9a, $31, $ff, $8c, $00, $20, $ac, $c1, $4c, $be, $d5, $fa
    db $51, $c0, $f1, $79, $59, $c4, $8e, $7e, $10, $00, $3b, $5b, $fa, $4b, $3e, $31
    db $82, $f9, $fa, $4d, $7f, $ff, $26, $bc, $7f, $ff, $00, $26, $bd, $c7, $ff, $68
    db $df, $ff, $ff, $25, $49, $35, $45, $ed, $67, $ff, $ff, $00, $e4, $0d, $85, $ff
    db $f3, $dc, $cd, $bf, $ff, $ff, $ff, $ff, $96, $ff, $99, $d3, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $37, $eb, $dc, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $bf, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $da, $53, $00, $00

    nop                                           ; $5304: $00

    db $ff, $31, $ac, $58, $aa, $80, $80, $79, $6e, $ff, $54, $54, $54, $3b, $4d, $31
    db $31, $31, $1f, $29, $27, $10, $20, $00, $ff, $ff, $e7, $e6, $c2, $e1, $2f, $80
    db $79, $71, $6c, $ff, $e1, $32, $bf, $e4, $ca, $ff, $40, $e8, $e7, $c2, $e0, $c1
    db $e5, $bf, $e6, $ca, $ff, $c0, $eb, $83, $c1, $e4, $a3, $6c, $6d, $7e, $e3, $ca
    db $ff, $80, $eb, $52, $c1, $e5, $6d, $08, $bf, $e3, $ca, $ff, $c0, $ec, $68, $ff
    db $e3, $c0, $e0, $7e, $e2, $ca, $ff, $a2, $c0, $f3, $6a, $bf, $e4, $ca, $ff, $40
    db $ec, $65, $ff, $e2, $67, $05, $6a, $bf, $e2, $39, $c0, $ff, $c0, $cd, $47, $e1
    db $03, $e0, $bf, $e3, $23, $48, $49, $ca, $ff, $40, $cd, $bf, $ea, $39, $ca, $ff
    db $00, $cb, $f2, $bf, $ec, $52, $ca, $ff, $c0, $aa, $ae, $a5, $58, $b0, $8d, $45
    db $40, $a0, $55, $44, $3d, $e3, $c0, $ff, $80, $aa, $ae, $19, $70, $09, $a0, $fd
    db $e2, $34, $32, $fc, $c2, $40, $ff, $40, $a9, $32, $c1, $e2, $62, $ff, $e0, $bf
    db $e5, $32, $34, $ca, $ff, $e8, $e7, $fe, $82, $e1, $5d, $5c, $5b, $5b, $5a, $5b
    db $5c, $3d, $5d, $7e, $e0, $45, $55, $45, $34, $40, $df, $e9, $e8, $01, $70, $c2
    db $e4, $ff, $e1, $be, $e1, $34, $e1, $ca, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $f3, $00, $00

    nop                                           ; $54a2: $00

    db $a5, $00, $ff, $e5, $32, $f6, $e6, $f7, $e7, $35, $ec, $ee, $37, $ec, $da, $f0
    db $c7, $e8, $33, $31, $e0, $f2, $36, $30, $37, $bf, $26, $20, $27, $10, $16, $17
    db $c2, $f6, $34, $ff, $36, $32, $30, $37, $31, $33, $31, $33, $00, $a0, $fb, $ff
    db $ef, $00, $00

    nop                                           ; $54d6: $00

    db $df, $54, $0f, $55, $0e, $57, $e6, $58, $f0, $03, $4d, $0f, $40, $02, $c0, $00
    db $f0, $03, $f5, $03, $48, $0f, $40, $02, $5f, $3b, $38, $0e, $31, $19, $48, $0f
    db $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25
    db $08, $25, $08, $25, $08, $25, $08, $25, $fd, $0c, $ff, $e0, $0b, $0b, $0a, $4b
    db $4b, $0b, $be, $ff, $e2, $4b, $0b, $0a, $0b, $4b, $ec, $e1, $0c, $f1, $4c, $fc
    db $e4, $ff, $ff, $c0, $e0, $4b, $4b, $6b, $6b, $85, $6b, $bc, $e1, $4b, $f5, $e0
    db $c0, $e0, $c7, $ff, $c0, $eb, $2b, $5d, $0b, $c0, $e0, $6b, $6b, $2b, $c1, $e1
    db $0a, $80, $f6, $08, $6d, $e0, $a7, $f2, $45, $e1, $6b, $fd, $e0, $c0, $e2, $79
    db $e0, $43, $e0, $20, $7f, $e2, $fa, $e3, $ff, $ff, $c1, $e3, $7d, $e1, $2b, $b7
    db $e0, $40, $e1, $04, $cc, $f3, $80, $e4, $2c, $ae, $e3, $f9, $e4, $82, $e3, $c0
    db $e1, $be, $c0, $30, $c0, $fb, $44, $f5, $c1, $e6, $c0, $e2, $0b, $0b, $a2, $e9
    db $c0, $ff, $00, $07, $e1, $41, $c5, $3b, $c3, $5e, $e1, $c0, $ff, $e4, $e3, $51
    db $c0, $0d, $e1, $20, $fe, $e2, $c2, $e4, $c3, $ff, $84, $cd, $c0, $e6, $6b, $c4
    db $c6, $bd, $f2, $01, $2c, $c5, $c3, $38, $c9, $89, $c2, $81, $e8, $9e, $c9, $ff
    db $ff, $44, $c3, $00, $c0, $ee, $80, $ff, $80, $e8, $c0, $e4, $03, $e6, $80, $ff
    db $44, $ae, $c1, $ec, $0c, $80, $fd, $c1, $a9, $0b, $4b, $0b, $a0, $86, $83, $07
    db $c3, $9e, $a4, $00, $7d, $fe, $c0, $e5, $84, $80, $c2, $e4, $43, $e4, $00, $c3
    db $ff, $ff, $22, $b0, $20, $09, $88, $c0, $d7, $3b, $c1, $9f, $ed, $97, $8e, $4c
    db $ff, $df, $2b, $86, $00, $54, $83, $8f, $64, $fe, $e3, $db, $f4, $be, $a1, $bc
    db $a0, $fb, $e1, $fa, $e0, $00, $80, $fb, $d3, $71, $6a, $e0, $c0, $ee, $80, $e0
    db $86, $e4, $a1, $62, $7e, $e2, $00, $c8, $67, $fa, $44, $6c, $e7, $7f, $e2, $fa
    db $e4, $b1, $dd, $81, $71, $c0, $ff, $00, $6b, $ce, $72, $eb, $f4, $b8, $ad, $e7
    db $a3, $f7, $80, $ed, $b8, $c2, $b3, $c1, $00, $6a, $e2, $f6, $e6, $ff, $56, $c0
    db $f2, $f9, $e5, $c0, $e6, $54, $b3, $fe, $66, $00, $f9, $ad, $40, $f2, $9e, $d2
    db $c0, $f1, $15, $98, $2b, $e3, $86, $88, $44, $43, $00, $84, $df, $8a, $9b, $85
    db $ac, $98, $3f, $ff, $ff, $88, $fd, $8b, $22, $aa, $85, $00, $80, $ff, $6d, $f5
    db $c3, $81, $fa, $e5, $ab, $bc, $32, $b0, $c0, $84, $41, $bf, $00, $81, $b9, $fa
    db $e6, $26, $7c, $bb, $fa, $81, $e9, $d2, $43, $cc, $44, $c5, $5f, $00, $b6, $51
    db $c0, $ea, $cf, $ff, $40, $ff, $05, $5b, $40, $fa, $a5, $df, $d5, $bf, $00, $4c
    db $ff, $ff, $ff, $c0, $ff, $80, $ff, $c1, $ff, $dc, $17, $1c, $8b, $c0, $ff, $00
    db $c0, $fa, $ff, $ff, $01, $ff, $da, $ff, $81, $df, $ff, $ff, $c0, $ff, $ff, $ff
    db $00, $ff, $ff, $16, $ff, $ff, $ff, $99, $df, $ff, $ff, $ff, $ff, $ff, $ff, $b7
    db $df, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $00, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $25, $0a, $00, $00, $00, $ff, $20, $20, $20, $00, $31, $61, $5a, $5b
    db $b7, $5b, $60, $31, $ff, $e1, $5f, $5b, $f5, $e0, $00, $f8, $ff, $ff, $e7, $e6
    db $c0, $e3, $5b, $5b, $5f, $4d, $3b, $3f, $55, $3b, $3e, $31, $5e, $5b, $ff, $e0
    db $ca, $ff, $fe, $c0, $ec, $31, $60, $60, $4d, $32, $30, $30, $c7, $30, $42, $49
    db $7f, $e2, $ca, $ff, $c0, $ed, $31, $31, $1b, $39, $6b, $c0, $e0, $30, $39, $7f
    db $e2, $ca, $ff, $40, $e9, $bb, $0a, $0b, $06, $e0, $4d, $77, $6b, $bf, $e1, $52
    db $f0, $35, $e1, $c0, $ff, $e9, $e8, $c2, $e2, $31, $4d, $32, $69, $01, $69, $c0
    db $ff, $f2, $f1, $8a, $c2, $03, $e0, $c0, $e0, $3e, $e0, $c0, $e1, $f3, $5c, $5d
    db $ca, $ff, $c0, $eb, $4d, $32, $6c, $6c, $7e, $c0, $e3, $39, $31, $31, $62, $31
    db $31, $ca, $ff, $de, $e8, $e7, $a5, $a5, $58, $b0, $c1, $e0, $6c, $6a, $bf, $6a
    db $6d, $6d, $30, $48, $49, $fb, $a0, $11, $f9, $12, $ca, $ff, $e8, $e7, $80, $80
    db $79, $71, $6a, $78, $c1, $e1, $c0, $e1, $81, $e0, $11, $12, $21, $22, $ca, $ff
    db $be, $c0, $e9, $83, $6a, $6a, $68, $68, $81, $e6, $2b, $b1, $10, $6f, $a0, $ff
    db $ff, $80, $e8, $52, $6d, $c0, $e1, $6d, $b8, $81, $e3, $c0, $ff, $c0, $f0, $6d
    db $6c, $6c, $03, $e0, $30, $3f, $32, $43, $31, $31, $29, $27, $c0, $ff, $40, $ed
    db $1d, $30, $c0, $e1, $30, $36, $45, $c1, $e5, $c0, $ff, $c0, $ca, $cb, $76, $42
    db $06, $a0, $36, $c4, $80, $82, $e4, $0a, $0b, $3c, $ca, $ff, $80, $c9, $80, $72
    db $55, $54, $c2, $e2, $43, $e2, $00, $32, $a1, $ca, $ff, $ff, $ff, $ff, $ff, $ff
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
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3, $00, $00

    nop                                           ; $58e5: $00

    db $a5, $00, $ff, $e5, $32, $f6, $e6, $f7, $e7, $35, $ec, $ee, $37, $ec, $da, $f0
    db $c7, $e8, $33, $31, $e0, $f2, $36, $30, $37, $bf, $26, $20, $27, $10, $16, $17
    db $c2, $f6, $34, $ff, $36, $32, $30, $37, $31, $33, $31, $33, $00, $a0, $fb, $ff
    db $ef, $00, $00

    nop                                           ; $5919: $00
    ld [hl+], a                                   ; $591a: $22
    ld e, c                                       ; $591b: $59
    ld d, d                                       ; $591c: $52
    ld e, c                                       ; $591d: $59
    xor c                                         ; $591e: $a9
    ld e, e                                       ; $591f: $5b
    add l                                         ; $5920: $85
    ld e, l                                       ; $5921: $5d
    ldh a, [$03]                                  ; $5922: $f0 $03
    ld c, l                                       ; $5924: $4d
    rrca                                          ; $5925: $0f
    ld b, b                                       ; $5926: $40
    ld [bc], a                                    ; $5927: $02
    ret nz                                        ; $5928: $c0

    nop                                           ; $5929: $00
    ldh a, [$03]                                  ; $592a: $f0 $03
    push af                                       ; $592c: $f5
    inc bc                                        ; $592d: $03
    ld c, b                                       ; $592e: $48
    rrca                                          ; $592f: $0f
    ld b, b                                       ; $5930: $40
    ld [bc], a                                    ; $5931: $02
    ld e, a                                       ; $5932: $5f
    dec sp                                        ; $5933: $3b
    jr c, @+$10                                   ; $5934: $38 $0e

    ld sp, $4819                                  ; $5936: $31 $19 $48
    rrca                                          ; $5939: $0f
    ld [$0825], sp                                ; $593a: $08 $25 $08
    dec h                                         ; $593d: $25
    ld [$0825], sp                                ; $593e: $08 $25 $08
    dec h                                         ; $5941: $25
    ld [$0825], sp                                ; $5942: $08 $25 $08
    dec h                                         ; $5945: $25
    ld [$0825], sp                                ; $5946: $08 $25 $08
    dec h                                         ; $5949: $25
    ld [$0825], sp                                ; $594a: $08 $25 $08
    dec h                                         ; $594d: $25
    ld [$0825], sp                                ; $594e: $08 $25 $08
    dec h                                         ; $5951: $25
    db $db                                        ; $5952: $db
    ld a, [bc]                                    ; $5953: $0a
    dec bc                                        ; $5954: $0b
    rst $38                                       ; $5955: $ff
    ld [$0b2b], a                                 ; $5956: $ea $2b $0b
    rst $28                                       ; $5959: $ef
    ldh [$0c], a                                  ; $595a: $e0 $0c
    inc c                                         ; $595c: $0c
    add e                                         ; $595d: $83
    inc c                                         ; $595e: $0c
    ld c, h                                       ; $595f: $4c
    db $fd                                        ; $5960: $fd
    ldh [$fc], a                                  ; $5961: $e0 $fc
    ldh [$f8], a                                  ; $5963: $e0 $f8
    ld [c], a                                     ; $5965: $e2
    pop af                                        ; $5966: $f1
    ldh [$f0], a                                  ; $5967: $e0 $f0
    and $0c                                       ; $5969: $e6 $0c
    jp $2c0c                                      ; $596b: $c3 $0c $2c


    ld a, [$fbe2]                                 ; $596e: $fa $e2 $fb
    and $c1                                       ; $5971: $e6 $c1
    pop hl                                        ; $5973: $e1
    cp h                                          ; $5974: $bc
    db $e3                                        ; $5975: $e3
    ld l, e                                       ; $5976: $6b
    ld l, e                                       ; $5977: $6b
    ld b, a                                       ; $5978: $47
    ld c, e                                       ; $5979: $4b
    ld c, e                                       ; $597a: $4b
    ld c, e                                       ; $597b: $4b
    cp a                                          ; $597c: $bf
    ldh [$c0], a                                  ; $597d: $e0 $c0
    ldh [$c5], a                                  ; $597f: $e0 $c5
    db $e3                                        ; $5981: $e3
    ld c, h                                       ; $5982: $4c
    db $fd                                        ; $5983: $fd
    and $82                                       ; $5984: $e6 $82
    ldh a, [$e5]                                  ; $5986: $f0 $e5
    inc l                                         ; $5988: $2c
    jp $c0e0                                      ; $5989: $c3 $e0 $c0


    ldh a, [$c1]                                  ; $598c: $f0 $c1
    db $e4                                        ; $598e: $e4
    halt                                          ; $598f: $76
    ldh [$bf], a                                  ; $5990: $e0 $bf
    pop hl                                        ; $5992: $e1
    dec hl                                        ; $5993: $2b
    db $10                                        ; $5994: $10
    add b                                         ; $5995: $80
    pop hl                                        ; $5996: $e1
    ret nz                                        ; $5997: $c0

    add sp, -$47                                  ; $5998: $e8 $b9
    ldh [$b2], a                                  ; $599a: $e0 $b2
    db $e4                                        ; $599c: $e4
    inc l                                         ; $599d: $2c
    ret nz                                        ; $599e: $c0

    ldh a, [rLCDC]                                ; $599f: $f0 $40
    ldh [$3d], a                                  ; $59a1: $e0 $3d
    ld [c], a                                     ; $59a3: $e2
    inc bc                                        ; $59a4: $03
    ld l, e                                       ; $59a5: $6b
    ld l, e                                       ; $59a6: $6b
    add [hl]                                      ; $59a7: $86
    pop hl                                        ; $59a8: $e1
    cp a                                          ; $59a9: $bf
    ld [c], a                                     ; $59aa: $e2
    add b                                         ; $59ab: $80
    db $e3                                        ; $59ac: $e3
    ld a, $e3                                     ; $59ad: $3e $e3
    or $e2                                        ; $59af: $f6 $e2
    ld a, [c]                                     ; $59b1: $f2
    push hl                                       ; $59b2: $e5
    ld b, b                                       ; $59b3: $40
    add c                                         ; $59b4: $81
    pop hl                                        ; $59b5: $e1
    add b                                         ; $59b6: $80
    db $f4                                        ; $59b7: $f4
    pop bc                                        ; $59b8: $c1
    ldh [$87], a                                  ; $59b9: $e0 $87
    ldh [$3f], a                                  ; $59bb: $e0 $3f
    ldh [$3d], a                                  ; $59bd: $e0 $3d
    ldh [rWX], a                                  ; $59bf: $e0 $4b
    adc e                                         ; $59c1: $8b
    ld [c], a                                     ; $59c2: $e2
    db $10                                        ; $59c3: $10
    ccf                                           ; $59c4: $3f
    db $e4                                        ; $59c5: $e4
    rst $30                                       ; $59c6: $f7
    jp nz, $e530                                  ; $59c7: $c2 $30 $e5

    ld bc, $2ce1                                  ; $59ca: $01 $e1 $2c
    cp $c5                                        ; $59cd: $fe $c5
    rst $30                                       ; $59cf: $f7
    jp $c1d0                                      ; $59d0: $c3 $d0 $c1


    nop                                           ; $59d3: $00
    ld b, [hl]                                    ; $59d4: $46
    ldh [$c1], a                                  ; $59d5: $e0 $c1
    ldh [rSTAT], a                                ; $59d7: $e0 $41
    ld [c], a                                     ; $59d9: $e2
    ret nz                                        ; $59da: $c0

    db $e3                                        ; $59db: $e3
    ld b, b                                       ; $59dc: $40
    db $e3                                        ; $59dd: $e3
    ld a, [$f1e8]                                 ; $59de: $fa $e8 $f1
    call nz, $cbc5                                ; $59e1: $c4 $c5 $cb
    ld [bc], a                                    ; $59e4: $02
    ret nz                                        ; $59e5: $c0

    add $6b                                       ; $59e6: $c6 $6b
    cp [hl]                                       ; $59e8: $be
    ldh [$c0], a                                  ; $59e9: $e0 $c0
    pop hl                                        ; $59eb: $e1
    add c                                         ; $59ec: $81
    ld [c], a                                     ; $59ed: $e2
    cp a                                          ; $59ee: $bf
    ret nz                                        ; $59ef: $c0

    ld [bc], a                                    ; $59f0: $02
    db $e4                                        ; $59f1: $e4
    cp e                                          ; $59f2: $bb
    push hl                                       ; $59f3: $e5
    db $10                                        ; $59f4: $10
    ld a, a                                       ; $59f5: $7f
    jp z, $e23c                                   ; $59f6: $ca $3c $e2

    ret nz                                        ; $59f9: $c0

    db $ed                                        ; $59fa: $ed
    ld b, d                                       ; $59fb: $42
    add sp, $4b                                   ; $59fc: $e8 $4b
    add b                                         ; $59fe: $80
    pop bc                                        ; $59ff: $c1
    ret nz                                        ; $5a00: $c0

    call $e83f                                    ; $5a01: $cd $3f $e8
    inc b                                         ; $5a04: $04
    ret nz                                        ; $5a05: $c0

    ldh a, [$c5]                                  ; $5a06: $f0 $c5
    ret nz                                        ; $5a08: $c0

    ld c, e                                       ; $5a09: $4b
    pop bc                                        ; $5a0a: $c1
    jp hl                                         ; $5a0b: $e9


    add b                                         ; $5a0c: $80
    jp $c5c0                                      ; $5a0d: $c3 $c0 $c5


    add c                                         ; $5a10: $81
    pop bc                                        ; $5a11: $c1
    dec [hl]                                      ; $5a12: $35
    call nz, $4102                                ; $5a13: $c4 $02 $41
    ldh a, [$0c]                                  ; $5a16: $f0 $0c
    add h                                         ; $5a18: $84
    ldh [$c5], a                                  ; $5a19: $e0 $c5
    pop bc                                        ; $5a1b: $c1
    inc bc                                        ; $5a1c: $03
    jp nz, $e8c0                                  ; $5a1d: $c2 $c0 $e8

    cp $a4                                        ; $5a20: $fe $a4
    cp $e4                                        ; $5a22: $fe $e4
    nop                                           ; $5a24: $00
    ld [hl], l                                    ; $5a25: $75
    add $c0                                       ; $5a26: $c6 $c0
    ldh a, [$c5]                                  ; $5a28: $f0 $c5
    pop bc                                        ; $5a2a: $c1
    cp $e1                                        ; $5a2b: $fe $e1
    add c                                         ; $5a2d: $81
    rst $20                                       ; $5a2e: $e7
    ret nz                                        ; $5a2f: $c0

    pop bc                                        ; $5a30: $c1
    cp a                                          ; $5a31: $bf
    and l                                         ; $5a32: $a5
    cp [hl]                                       ; $5a33: $be
    rst $00                                       ; $5a34: $c7

jr_057_5a35:
    nop                                           ; $5a35: $00
    ret nz                                        ; $5a36: $c0

    add $7f                                       ; $5a37: $c6 $7f
    and d                                         ; $5a39: $a2
    ld a, d                                       ; $5a3a: $7a
    and [hl]                                      ; $5a3b: $a6
    ld c, h                                       ; $5a3c: $4c
    and c                                         ; $5a3d: $a1
    cp a                                          ; $5a3e: $bf
    ld [c], a                                     ; $5a3f: $e2
    ld b, e                                       ; $5a40: $43
    jp nz, $a233                                  ; $5a41: $c2 $33 $a2

    add b                                         ; $5a44: $80
    rst $00                                       ; $5a45: $c7
    ld b, b                                       ; $5a46: $40
    ld hl, sp-$5c                                 ; $5a47: $f8 $a4
    ld a, [hl-]                                   ; $5a49: $3a
    and h                                         ; $5a4a: $a4
    ld a, a                                       ; $5a4b: $7f
    ld a, [c]                                     ; $5a4c: $f2
    ret nz                                        ; $5a4d: $c0

    and $02                                       ; $5a4e: $e6 $02
    pop bc                                        ; $5a50: $c1
    add hl, sp                                    ; $5a51: $39
    and d                                         ; $5a52: $a2
    ld c, e                                       ; $5a53: $4b
    ld b, b                                       ; $5a54: $40
    ret nz                                        ; $5a55: $c0

    sub c                                         ; $5a56: $91
    inc l                                         ; $5a57: $2c
    ccf                                           ; $5a58: $3f
    rst $20                                       ; $5a59: $e7
    rlca                                          ; $5a5a: $07
    and l                                         ; $5a5b: $a5
    ld b, b                                       ; $5a5c: $40
    call nc, $812b                                ; $5a5d: $d4 $2b $81
    push hl                                       ; $5a60: $e5
    add hl, sp                                    ; $5a61: $39
    and l                                         ; $5a62: $a5
    ld c, e                                       ; $5a63: $4b
    inc bc                                        ; $5a64: $03
    ld c, e                                       ; $5a65: $4b
    ld a, [hl+]                                   ; $5a66: $2a
    db $db                                        ; $5a67: $db
    add h                                         ; $5a68: $84
    dec b                                         ; $5a69: $05
    and l                                         ; $5a6a: $a5
    ld a, l                                       ; $5a6b: $7d
    jp $87bf                                      ; $5a6c: $c3 $bf $87


    ei                                            ; $5a6f: $fb
    add c                                         ; $5a70: $81
    dec [hl]                                      ; $5a71: $35
    and d                                         ; $5a72: $a2
    jr c, jr_057_5a35                             ; $5a73: $38 $c0

    push hl                                       ; $5a75: $e5
    add [hl]                                      ; $5a76: $86
    add e                                         ; $5a77: $83
    cp [hl]                                       ; $5a78: $be
    and c                                         ; $5a79: $a1
    ld l, e                                       ; $5a7a: $6b
    ld l, e                                       ; $5a7b: $6b
    ld a, [hl+]                                   ; $5a7c: $2a
    cp e                                          ; $5a7d: $bb
    add b                                         ; $5a7e: $80
    ld b, b                                       ; $5a7f: $40
    add sp, $08                                   ; $5a80: $e8 $08
    ld b, c                                       ; $5a82: $41
    and l                                         ; $5a83: $a5
    ld a, a                                       ; $5a84: $7f
    and a                                         ; $5a85: $a7
    ret nz                                        ; $5a86: $c0

    db $ec                                        ; $5a87: $ec
    dec bc                                        ; $5a88: $0b
    call $f9c3                                    ; $5a89: $cd $c3 $f9
    ldh [$be], a                                  ; $5a8c: $e0 $be
    and [hl]                                      ; $5a8e: $a6
    add b                                         ; $5a8f: $80
    ldh [rP1], a                                  ; $5a90: $e0 $00
    ld a, a                                       ; $5a92: $7f
    rst $00                                       ; $5a93: $c7
    ret nz                                        ; $5a94: $c0

    add sp, $47                                   ; $5a95: $e8 $47
    add h                                         ; $5a97: $84
    add c                                         ; $5a98: $81
    ld [$9f15], a                                 ; $5a99: $ea $15 $9f
    jp nc, $eeec                                  ; $5a9c: $d2 $ec $ee

    db $ed                                        ; $5a9f: $ed
    dec d                                         ; $5aa0: $15
    sbc d                                         ; $5aa1: $9a
    nop                                           ; $5aa2: $00
    add b                                         ; $5aa3: $80
    or d                                          ; $5aa4: $b2
    db $fc                                        ; $5aa5: $fc
    ld l, a                                       ; $5aa6: $6f
    dec d                                         ; $5aa7: $15
    sub [hl]                                      ; $5aa8: $96
    add b                                         ; $5aa9: $80
    or d                                          ; $5aaa: $b2
    pop bc                                        ; $5aab: $c1
    push bc                                       ; $5aac: $c5
    ld [hl], a                                    ; $5aad: $77
    ld h, e                                       ; $5aae: $63
    dec d                                         ; $5aaf: $15
    sbc d                                         ; $5ab0: $9a
    add b                                         ; $5ab1: $80
    or l                                          ; $5ab2: $b5
    nop                                           ; $5ab3: $00
    ret nz                                        ; $5ab4: $c0

    ld [$9915], a                                 ; $5ab5: $ea $15 $99
    add b                                         ; $5ab8: $80
    or c                                          ; $5ab9: $b1
    ld b, d                                       ; $5aba: $42
    jp $8a78                                      ; $5abb: $c3 $78 $8a


    dec d                                         ; $5abe: $15
    sub l                                         ; $5abf: $95
    add b                                         ; $5ac0: $80
    or [hl]                                       ; $5ac1: $b6
    ld a, a                                       ; $5ac2: $7f
    rlc b                                         ; $5ac3: $cb $00
    dec d                                         ; $5ac5: $15
    sub [hl]                                      ; $5ac6: $96
    add b                                         ; $5ac7: $80
    or h                                          ; $5ac8: $b4
    db $fc                                        ; $5ac9: $fc
    ld l, l                                       ; $5aca: $6d
    dec d                                         ; $5acb: $15
    sub a                                         ; $5acc: $97
    ld c, c                                       ; $5acd: $49
    ld c, d                                       ; $5ace: $4a
    ld a, a                                       ; $5acf: $7f
    add [hl]                                      ; $5ad0: $86
    ld b, b                                       ; $5ad1: $40
    db $ed                                        ; $5ad2: $ed
    dec d                                         ; $5ad3: $15
    sub [hl]                                      ; $5ad4: $96
    nop                                           ; $5ad5: $00
    ld c, c                                       ; $5ad6: $49
    ld c, e                                       ; $5ad7: $4b
    ld b, b                                       ; $5ad8: $40
    db $f4                                        ; $5ad9: $f4
    dec d                                         ; $5ada: $15
    sbc d                                         ; $5adb: $9a
    ld c, c                                       ; $5adc: $49
    ld d, h                                       ; $5add: $54
    jp Jump_000_15cd                              ; $5ade: $c3 $cd $15


Jump_057_5ae1:
    sub h                                         ; $5ae1: $94
    ld c, c                                       ; $5ae2: $49
    ld d, [hl]                                    ; $5ae3: $56
    ld a, e                                       ; $5ae4: $7b
    inc l                                         ; $5ae5: $2c
    nop                                           ; $5ae6: $00
    dec d                                         ; $5ae7: $15
    sub l                                         ; $5ae8: $95
    ld c, c                                       ; $5ae9: $49
    ld c, c                                       ; $5aea: $49
    db $fc                                        ; $5aeb: $fc
    ld [hl], l                                    ; $5aec: $75
    dec d                                         ; $5aed: $15
    sbc h                                         ; $5aee: $9c
    ld c, c                                       ; $5aef: $49
    ld c, d                                       ; $5af0: $4a
    inc a                                         ; $5af1: $3c
    ld d, c                                       ; $5af2: $51
    dec d                                         ; $5af3: $15
    sbc c                                         ; $5af4: $99
    inc [hl]                                      ; $5af5: $34
    jp z, Jump_057_7700                           ; $5af6: $ca $00 $77

    adc [hl]                                      ; $5af9: $8e
    ld a, a                                       ; $5afa: $7f
    call z, $9015                                 ; $5afb: $cc $15 $90
    inc [hl]                                      ; $5afe: $34
    set 7, h                                      ; $5aff: $cb $fc
    ld l, b                                       ; $5b01: $68
    jp nz, Jump_000_158d                          ; $5b02: $c2 $8d $15

    sub h                                         ; $5b05: $94
    ld c, c                                       ; $5b06: $49
    ld c, d                                       ; $5b07: $4a
    nop                                           ; $5b08: $00
    add b                                         ; $5b09: $80
    ld c, d                                       ; $5b0a: $4a
    cp l                                          ; $5b0b: $bd
    xor [hl]                                      ; $5b0c: $ae
    dec d                                         ; $5b0d: $15
    sub e                                         ; $5b0e: $93
    ld c, c                                       ; $5b0f: $49
    ld c, b                                       ; $5b10: $48
    add a                                         ; $5b11: $87
    ld a, [hl+]                                   ; $5b12: $2a
    xor $6e                                       ; $5b13: $ee $6e
    ret nz                                        ; $5b15: $c0

    db $f4                                        ; $5b16: $f4
    add hl, bc                                    ; $5b17: $09
    ld a, [hl+]                                   ; $5b18: $2a
    nop                                           ; $5b19: $00
    ld a, h                                       ; $5b1a: $7c
    ld [$8bc2], sp                                ; $5b1b: $08 $c2 $8b
    ld d, l                                       ; $5b1e: $55
    halt                                          ; $5b1f: $76
    inc [hl]                                      ; $5b20: $34
    jp z, Jump_000_097c                           ; $5b21: $ca $7c $09

    add c                                         ; $5b24: $81
    db $f4                                        ; $5b25: $f4
    add b                                         ; $5b26: $80
    ei                                            ; $5b27: $fb
    ld a, h                                       ; $5b28: $7c
    dec d                                         ; $5b29: $15
    nop                                           ; $5b2a: $00
    add b                                         ; $5b2b: $80
    ld hl, sp-$3c                                 ; $5b2c: $f8 $c4
    ld c, e                                       ; $5b2e: $4b
    ld h, a                                       ; $5b2f: $67
    add a                                         ; $5b30: $87
    add b                                         ; $5b31: $80
    rst $38                                       ; $5b32: $ff
    ld c, h                                       ; $5b33: $4c
    db $ed                                        ; $5b34: $ed
    sub a                                         ; $5b35: $97
    ld h, a                                       ; $5b36: $67
    ret nz                                        ; $5b37: $c0

    ld sp, hl                                     ; $5b38: $f9
    inc [hl]                                      ; $5b39: $34
    reti                                          ; $5b3a: $d9


    nop                                           ; $5b3b: $00
    ld a, h                                       ; $5b3c: $7c
    rla                                           ; $5b3d: $17
    ld [hl], h                                    ; $5b3e: $74
    rst $38                                       ; $5b3f: $ff
    inc sp                                        ; $5b40: $33
    call $ffff                                    ; $5b41: $cd $ff $ff
    ld h, a                                       ; $5b44: $67
    sbc h                                         ; $5b45: $9c
    rst $38                                       ; $5b46: $ff
    rst $38                                       ; $5b47: $ff
    ld a, h                                       ; $5b48: $7c
    rra                                           ; $5b49: $1f
    ld b, b                                       ; $5b4a: $40
    db $fd                                        ; $5b4b: $fd
    nop                                           ; $5b4c: $00
    ld a, h                                       ; $5b4d: $7c
    rra                                           ; $5b4e: $1f
    ret nz                                        ; $5b4f: $c0

    db $fc                                        ; $5b50: $fc
    ld h, a                                       ; $5b51: $67
    sbc c                                         ; $5b52: $99
    rst $38                                       ; $5b53: $ff
    rst $38                                       ; $5b54: $ff
    ld a, h                                       ; $5b55: $7c
    add hl, de                                    ; $5b56: $19
    rst $38                                       ; $5b57: $ff
    rst $38                                       ; $5b58: $ff
    daa                                           ; $5b59: $27
    cp l                                          ; $5b5a: $bd
    rst $38                                       ; $5b5b: $ff
    rst $38                                       ; $5b5c: $ff
    nop                                           ; $5b5d: $00
    daa                                           ; $5b5e: $27
    cp h                                          ; $5b5f: $bc
    rst $38                                       ; $5b60: $ff
    rst $38                                       ; $5b61: $ff
    rst $38                                       ; $5b62: $ff
    rst $38                                       ; $5b63: $ff
    sub [hl]                                      ; $5b64: $96
    rst $38                                       ; $5b65: $ff
    rst $38                                       ; $5b66: $ff
    rst $38                                       ; $5b67: $ff
    db $d3                                        ; $5b68: $d3
    rst $38                                       ; $5b69: $ff
    rst $38                                       ; $5b6a: $ff
    rst $38                                       ; $5b6b: $ff
    rst $38                                       ; $5b6c: $ff
    rst $38                                       ; $5b6d: $ff
    nop                                           ; $5b6e: $00
    rst $38                                       ; $5b6f: $ff
    rst $38                                       ; $5b70: $ff
    inc [hl]                                      ; $5b71: $34
    ld [hl], b                                    ; $5b72: $70
    call c, $ffff                                 ; $5b73: $dc $ff $ff
    rst $38                                       ; $5b76: $ff
    rst $38                                       ; $5b77: $ff
    rst $38                                       ; $5b78: $ff
    rst $38                                       ; $5b79: $ff
    rst $38                                       ; $5b7a: $ff
    rst $38                                       ; $5b7b: $ff
    rst $38                                       ; $5b7c: $ff
    rst $38                                       ; $5b7d: $ff
    rst $38                                       ; $5b7e: $ff
    nop                                           ; $5b7f: $00
    rst $38                                       ; $5b80: $ff
    rst $38                                       ; $5b81: $ff
    rst $38                                       ; $5b82: $ff
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
    nop                                           ; $5b90: $00
    rst $38                                       ; $5b91: $ff
    rst $38                                       ; $5b92: $ff
    rst $38                                       ; $5b93: $ff
    rst $38                                       ; $5b94: $ff
    rst $38                                       ; $5b95: $ff
    rst $38                                       ; $5b96: $ff
    rst $38                                       ; $5b97: $ff
    rst $38                                       ; $5b98: $ff
    nop                                           ; $5b99: $00
    cp a                                          ; $5b9a: $bf
    rst $38                                       ; $5b9b: $ff
    rst $38                                       ; $5b9c: $ff
    rst $38                                       ; $5b9d: $ff
    rst $38                                       ; $5b9e: $ff
    rst $38                                       ; $5b9f: $ff
    rst $38                                       ; $5ba0: $ff
    nop                                           ; $5ba1: $00
    rst $38                                       ; $5ba2: $ff
    rst $38                                       ; $5ba3: $ff
    rst $38                                       ; $5ba4: $ff
    di                                            ; $5ba5: $f3
    nop                                           ; $5ba6: $00
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    cp e                                          ; $5ba9: $bb
    ld e, d                                       ; $5baa: $5a
    ld e, e                                       ; $5bab: $5b
    rst $38                                       ; $5bac: $ff
    db $e4                                        ; $5bad: $e4
    ld e, h                                       ; $5bae: $5c
    ld e, l                                       ; $5baf: $5d
    ld sp, $e0ff                                  ; $5bb0: $31 $ff $e0
    ld h, b                                       ; $5bb3: $60
    add l                                         ; $5bb4: $85
    ld e, e                                       ; $5bb5: $5b
    rst $28                                       ; $5bb6: $ef
    ldh [rP1], a                                  ; $5bb7: $e0 $00
    rst $38                                       ; $5bb9: $ff
    rst $38                                       ; $5bba: $ff
    rst $20                                       ; $5bbb: $e7
    and $c1                                       ; $5bbc: $e6 $c1
    pop hl                                        ; $5bbe: $e1
    cp h                                          ; $5bbf: $bc
    pop hl                                        ; $5bc0: $e1
    ld h, b                                       ; $5bc1: $60
    ccf                                           ; $5bc2: $3f
    ld sp, $3a4d                                  ; $5bc3: $31 $4d $3a
    ld d, h                                       ; $5bc6: $54
    ld a, [hl-]                                   ; $5bc7: $3a
    ld c, l                                       ; $5bc8: $4d
    cp a                                          ; $5bc9: $bf
    ldh [$c0], a                                  ; $5bca: $e0 $c0
    rst $38                                       ; $5bcc: $ff
    ld a, h                                       ; $5bcd: $7c
    ret nz                                        ; $5bce: $c0

    db $ed                                        ; $5bcf: $ed
    pop bc                                        ; $5bd0: $c1
    db $e3                                        ; $5bd1: $e3
    ld [hl-], a                                   ; $5bd2: $32
    ld l, b                                       ; $5bd3: $68
    ld l, b                                       ; $5bd4: $68
    ld l, b                                       ; $5bd5: $68
    ld [hl-], a                                   ; $5bd6: $32
    cp a                                          ; $5bd7: $bf
    ld [c], a                                     ; $5bd8: $e2
    ldh [$ca], a                                  ; $5bd9: $e0 $ca
    rst $38                                       ; $5bdb: $ff
    add sp, -$19                                  ; $5bdc: $e8 $e7
    ld b, b                                       ; $5bde: $40
    ldh [$3d], a                                  ; $5bdf: $e0 $3d

Jump_057_5be1:
    ldh [$c1], a                                  ; $5be1: $e0 $c1
    pop hl                                        ; $5be3: $e1
    ld l, d                                       ; $5be4: $6a
    ld l, h                                       ; $5be5: $6c
    ld l, h                                       ; $5be6: $6c
    jp $306c                                      ; $5be7: $c3 $6c $30


    cp a                                          ; $5bea: $bf
    ld [c], a                                     ; $5beb: $e2
    jp z, $80ff                                   ; $5bec: $ca $ff $80

    db $ec                                        ; $5bef: $ec
    pop bc                                        ; $5bf0: $c1
    ld [c], a                                     ; $5bf1: $e2
    ld l, l                                       ; $5bf2: $6d
    ld l, l                                       ; $5bf3: $6d
    cpl                                           ; $5bf4: $2f
    jr nc, jr_057_5c27                            ; $5bf5: $30 $30

    ld l, l                                       ; $5bf7: $6d
    ld l, l                                       ; $5bf8: $6d
    ld a, [hl]                                    ; $5bf9: $7e
    ldh [$5f], a                                  ; $5bfa: $e0 $5f
    jp z, Jump_000_00ff                           ; $5bfc: $ca $ff $00

    add sp, $3e                                   ; $5bff: $e8 $3e
    cp a                                          ; $5c01: $bf
    ret nz                                        ; $5c02: $c0

    ld e, a                                       ; $5c03: $5f
    ld sp, $3931                                  ; $5c04: $31 $31 $39
    ld l, d                                       ; $5c07: $6a
    jp nz, $c1e0                                  ; $5c08: $c2 $e0 $c1

    ldh [$9f], a                                  ; $5c0b: $e0 $9f
    ld l, l                                       ; $5c0d: $6d
    ld l, d                                       ; $5c0e: $6a
    add hl, sp                                    ; $5c0f: $39
    ld sp, $ca5e                                  ; $5c10: $31 $5e $ca
    rst $38                                       ; $5c13: $ff
    ret nz                                        ; $5c14: $c0

    bit 3, [hl]                                   ; $5c15: $cb $5e
    rst $30                                       ; $5c17: $f7
    ld sp, $3547                                  ; $5c18: $31 $47 $35
    ret nz                                        ; $5c1b: $c0

    db $e4                                        ; $5c1c: $e4
    ld l, d                                       ; $5c1d: $6a
    ld l, d                                       ; $5c1e: $6a
    ld d, e                                       ; $5c1f: $53
    ld sp, $31f9                                  ; $5c20: $31 $f9 $31
    jp z, $80ff                                   ; $5c23: $ca $ff $80

    ret                                           ; $5c26: $c9


jr_057_5c27:
    ld e, h                                       ; $5c27: $5c
    ld e, l                                       ; $5c28: $5d
    ld c, l                                       ; $5c29: $4d
    ld a, [hl-]                                   ; $5c2a: $3a
    ld [hl], $7b                                  ; $5c2b: $36 $7b
    ld l, c                                       ; $5c2d: $69
    ld l, e                                       ; $5c2e: $6b
    ld b, d                                       ; $5c2f: $42
    ld [c], a                                     ; $5c30: $e2
    ld l, d                                       ; $5c31: $6a
    ld l, d                                       ; $5c32: $6a
    ld h, a                                       ; $5c33: $67
    add hl, sp                                    ; $5c34: $39
    ret nz                                        ; $5c35: $c0

    rst $38                                       ; $5c36: $ff
    cp h                                          ; $5c37: $bc
    ld b, b                                       ; $5c38: $40
    jp z, $c186                                   ; $5c39: $ca $86 $c1

    ld h, a                                       ; $5c3c: $67
    jr nc, jr_057_5ca8                            ; $5c3d: $30 $69

    ld l, e                                       ; $5c3f: $6b
    ld b, e                                       ; $5c40: $43
    ld [c], a                                     ; $5c41: $e2
    ld l, d                                       ; $5c42: $6a
    and a                                         ; $5c43: $a7
    ld h, a                                       ; $5c44: $67
    ld c, b                                       ; $5c45: $48
    ld c, c                                       ; $5c46: $49
    ld b, b                                       ; $5c47: $40
    rst $38                                       ; $5c48: $ff
    ld [$5fe9], a                                 ; $5c49: $ea $e9 $5f
    pop bc                                        ; $5c4c: $c1
    pop hl                                        ; $5c4d: $e1
    ld h, a                                       ; $5c4e: $67
    adc l                                         ; $5c4f: $8d
    ld l, d                                       ; $5c50: $6a
    inc b                                         ; $5c51: $04
    db $e3                                        ; $5c52: $e3
    ld l, d                                       ; $5c53: $6a
    ld h, a                                       ; $5c54: $67
    add c                                         ; $5c55: $81
    pop hl                                        ; $5c56: $e1
    ret nz                                        ; $5c57: $c0

    rst $18                                       ; $5c58: $df
    jp hl                                         ; $5c59: $e9


    add sp, $5e                                   ; $5c5a: $e8 $5e
    inc bc                                        ; $5c5c: $03
    ld sp, $c139                                  ; $5c5d: $31 $39 $c1
    ldh [$c2], a                                  ; $5c60: $e0 $c2
    ret nz                                        ; $5c62: $c0

    pop bc                                        ; $5c63: $c1
    db $e3                                        ; $5c64: $e3
    add c                                         ; $5c65: $81
    pop hl                                        ; $5c66: $e1
    ld b, b                                       ; $5c67: $40
    rst $18                                       ; $5c68: $df
    jp hl                                         ; $5c69: $e9


    add sp, -$39                                  ; $5c6a: $e8 $c7
    ld sp, $5331                                  ; $5c6c: $31 $31 $53
    pop bc                                        ; $5c6f: $c1
    pop hl                                        ; $5c70: $e1
    ld b, e                                       ; $5c71: $43
    ret nz                                        ; $5c72: $c0

    add d                                         ; $5c73: $82
    pop hl                                        ; $5c74: $e1
    ld [hl-], a                                   ; $5c75: $32
    ld b, a                                       ; $5c76: $47
    ldh [$81], a                                  ; $5c77: $e0 $81
    ldh [$c0], a                                  ; $5c79: $e0 $c0
    rst $38                                       ; $5c7b: $ff
    ret nz                                        ; $5c7c: $c0

    db $eb                                        ; $5c7d: $eb
    pop bc                                        ; $5c7e: $c1
    ld [c], a                                     ; $5c7f: $e2
    ld [bc], a                                    ; $5c80: $02
    ret nz                                        ; $5c81: $c0

    ld h, a                                       ; $5c82: $67
    ld h, a                                       ; $5c83: $67
    ld [hl], $e1                                  ; $5c84: $36 $e1
    ld c, c                                       ; $5c86: $49
    cp $81                                        ; $5c87: $fe $81
    ret nz                                        ; $5c89: $c0

    rst $38                                       ; $5c8a: $ff
    ld b, b                                       ; $5c8b: $40
    db $eb                                        ; $5c8c: $eb
    pop bc                                        ; $5c8d: $c1
    ld [c], a                                     ; $5c8e: $e2
    ld [hl], $54                                  ; $5c8f: $36 $54
    ld d, l                                       ; $5c91: $55
    sub e                                         ; $5c92: $93
    ld d, h                                       ; $5c93: $54
    ld b, [hl]                                    ; $5c94: $46
    add d                                         ; $5c95: $82
    ldh [rP1], a                                  ; $5c96: $e0 $00
    and b                                         ; $5c98: $a0
    ld e, d                                       ; $5c99: $5a
    jp z, $c0ff                                   ; $5c9a: $ca $ff $c0

    jp z, $ff46                                   ; $5c9d: $ca $46 $ff

    ld d, h                                       ; $5ca0: $54
    ld d, l                                       ; $5ca1: $55
    ld d, l                                       ; $5ca2: $55
    ld l, [hl]                                    ; $5ca3: $6e
    ld l, a                                       ; $5ca4: $6f
    add b                                         ; $5ca5: $80
    add b                                         ; $5ca6: $80
    and b                                         ; $5ca7: $a0

jr_057_5ca8:
    adc a                                         ; $5ca8: $8f
    ld sp, $5d31                                  ; $5ca9: $31 $31 $5d
    ld e, h                                       ; $5cac: $5c
    ld [hl], b                                    ; $5cad: $70
    add c                                         ; $5cae: $81
    jp z, Jump_057_40ff                           ; $5caf: $ca $ff $40

    jp z, Jump_000_3b31                           ; $5cb2: $ca $31 $3b

    and b                                         ; $5cb5: $a0
    add b                                         ; $5cb6: $80
    rst $38                                       ; $5cb7: $ff
    ld [c], a                                     ; $5cb8: $e2
    and b                                         ; $5cb9: $a0
    ld sp, $3361                                  ; $5cba: $31 $61 $33
    add d                                         ; $5cbd: $82
    add b                                         ; $5cbe: $80
    rst $38                                       ; $5cbf: $ff
    nop                                           ; $5cc0: $00
    rst $38                                       ; $5cc1: $ff
    rst $38                                       ; $5cc2: $ff
    rst $38                                       ; $5cc3: $ff
    rst $38                                       ; $5cc4: $ff
    rst $38                                       ; $5cc5: $ff
    rst $38                                       ; $5cc6: $ff
    rst $38                                       ; $5cc7: $ff
    rst $38                                       ; $5cc8: $ff
    rst $38                                       ; $5cc9: $ff
    rst $38                                       ; $5cca: $ff
    rst $38                                       ; $5ccb: $ff
    rst $38                                       ; $5ccc: $ff
    rst $38                                       ; $5ccd: $ff
    rst $38                                       ; $5cce: $ff
    rst $38                                       ; $5ccf: $ff
    rst $38                                       ; $5cd0: $ff
    nop                                           ; $5cd1: $00
    rst $38                                       ; $5cd2: $ff
    rst $38                                       ; $5cd3: $ff
    rst $38                                       ; $5cd4: $ff
    rst $38                                       ; $5cd5: $ff
    rst $38                                       ; $5cd6: $ff
    rst $38                                       ; $5cd7: $ff
    rst $38                                       ; $5cd8: $ff
    rst $38                                       ; $5cd9: $ff
    rst $38                                       ; $5cda: $ff
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    rst $38                                       ; $5cdd: $ff
    rst $38                                       ; $5cde: $ff
    rst $38                                       ; $5cdf: $ff
    rst $38                                       ; $5ce0: $ff
    rst $38                                       ; $5ce1: $ff
    nop                                           ; $5ce2: $00
    rst $38                                       ; $5ce3: $ff
    rst $38                                       ; $5ce4: $ff
    rst $38                                       ; $5ce5: $ff
    rst $38                                       ; $5ce6: $ff
    rst $38                                       ; $5ce7: $ff
    rst $38                                       ; $5ce8: $ff
    rst $38                                       ; $5ce9: $ff
    rst $38                                       ; $5cea: $ff
    rst $38                                       ; $5ceb: $ff
    rst $38                                       ; $5cec: $ff
    rst $38                                       ; $5ced: $ff
    rst $38                                       ; $5cee: $ff
    rst $38                                       ; $5cef: $ff
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    rst $38                                       ; $5cf2: $ff
    nop                                           ; $5cf3: $00
    rst $38                                       ; $5cf4: $ff
    rst $38                                       ; $5cf5: $ff
    rst $38                                       ; $5cf6: $ff
    rst $38                                       ; $5cf7: $ff
    rst $38                                       ; $5cf8: $ff
    rst $38                                       ; $5cf9: $ff
    rst $38                                       ; $5cfa: $ff
    rst $38                                       ; $5cfb: $ff
    rst $38                                       ; $5cfc: $ff
    rst $38                                       ; $5cfd: $ff
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    rst $38                                       ; $5d00: $ff
    rst $38                                       ; $5d01: $ff
    rst $38                                       ; $5d02: $ff
    rst $38                                       ; $5d03: $ff
    nop                                           ; $5d04: $00
    rst $38                                       ; $5d05: $ff
    rst $38                                       ; $5d06: $ff
    rst $38                                       ; $5d07: $ff
    rst $38                                       ; $5d08: $ff
    rst $38                                       ; $5d09: $ff
    rst $38                                       ; $5d0a: $ff
    rst $38                                       ; $5d0b: $ff
    rst $38                                       ; $5d0c: $ff
    rst $38                                       ; $5d0d: $ff
    rst $38                                       ; $5d0e: $ff
    rst $38                                       ; $5d0f: $ff
    rst $38                                       ; $5d10: $ff
    rst $38                                       ; $5d11: $ff
    rst $38                                       ; $5d12: $ff
    rst $38                                       ; $5d13: $ff
    rst $38                                       ; $5d14: $ff
    nop                                           ; $5d15: $00
    rst $38                                       ; $5d16: $ff
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
    rst $38                                       ; $5d24: $ff
    rst $38                                       ; $5d25: $ff
    nop                                           ; $5d26: $00
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
    rst $38                                       ; $5d35: $ff
    rst $38                                       ; $5d36: $ff
    nop                                           ; $5d37: $00
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
    rst $38                                       ; $5d42: $ff
    rst $38                                       ; $5d43: $ff
    rst $38                                       ; $5d44: $ff
    rst $38                                       ; $5d45: $ff
    rst $38                                       ; $5d46: $ff
    rst $38                                       ; $5d47: $ff
    nop                                           ; $5d48: $00
    rst $38                                       ; $5d49: $ff
    rst $38                                       ; $5d4a: $ff
    rst $38                                       ; $5d4b: $ff
    rst $38                                       ; $5d4c: $ff
    rst $38                                       ; $5d4d: $ff
    rst $38                                       ; $5d4e: $ff
    rst $38                                       ; $5d4f: $ff
    rst $38                                       ; $5d50: $ff
    rst $38                                       ; $5d51: $ff
    rst $38                                       ; $5d52: $ff
    rst $38                                       ; $5d53: $ff
    rst $38                                       ; $5d54: $ff
    rst $38                                       ; $5d55: $ff
    rst $38                                       ; $5d56: $ff
    rst $38                                       ; $5d57: $ff
    rst $38                                       ; $5d58: $ff
    nop                                           ; $5d59: $00
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
    rst $38                                       ; $5d68: $ff
    rst $38                                       ; $5d69: $ff
    nop                                           ; $5d6a: $00
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
    rst $38                                       ; $5d79: $ff
    rst $38                                       ; $5d7a: $ff
    nop                                           ; $5d7b: $00
    rst $38                                       ; $5d7c: $ff
    rst $38                                       ; $5d7d: $ff
    rst $38                                       ; $5d7e: $ff
    rst $38                                       ; $5d7f: $ff
    rst $38                                       ; $5d80: $ff
    db $f4                                        ; $5d81: $f4
    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    nop                                           ; $5d84: $00
    and l                                         ; $5d85: $a5
    nop                                           ; $5d86: $00
    rst $38                                       ; $5d87: $ff
    push hl                                       ; $5d88: $e5
    ld [hl-], a                                   ; $5d89: $32
    or $e6                                        ; $5d8a: $f6 $e6
    rst $30                                       ; $5d8c: $f7
    rst $20                                       ; $5d8d: $e7
    dec [hl]                                      ; $5d8e: $35
    db $ec                                        ; $5d8f: $ec
    xor $37                                       ; $5d90: $ee $37
    db $ec                                        ; $5d92: $ec
    jp c, $c7f0                                   ; $5d93: $da $f0 $c7

    add sp, $33                                   ; $5d96: $e8 $33
    ld sp, $f2e0                                  ; $5d98: $31 $e0 $f2
    ld [hl], $30                                  ; $5d9b: $36 $30
    scf                                           ; $5d9d: $37
    cp a                                          ; $5d9e: $bf
    ld h, $20                                     ; $5d9f: $26 $20
    daa                                           ; $5da1: $27
    db $10                                        ; $5da2: $10
    ld d, $17                                     ; $5da3: $16 $17
    jp nz, Jump_000_34f6                          ; $5da5: $c2 $f6 $34

    rst $38                                       ; $5da8: $ff
    ld [hl], $32                                  ; $5da9: $36 $32
    jr nc, @+$39                                  ; $5dab: $30 $37

    ld sp, $3133                                  ; $5dad: $31 $33 $31
    inc sp                                        ; $5db0: $33
    nop                                           ; $5db1: $00
    and b                                         ; $5db2: $a0
    ei                                            ; $5db3: $fb
    rst $38                                       ; $5db4: $ff
    rst $28                                       ; $5db5: $ef
    nop                                           ; $5db6: $00
    nop                                           ; $5db7: $00
    nop                                           ; $5db8: $00
    pop bc                                        ; $5db9: $c1
    ld e, l                                       ; $5dba: $5d
    pop af                                        ; $5dbb: $f1
    ld e, l                                       ; $5dbc: $5d
    db $eb                                        ; $5dbd: $eb
    ld e, a                                       ; $5dbe: $5f
    add [hl]                                      ; $5dbf: $86
    ld h, c                                       ; $5dc0: $61
    ld [$c503], a                                 ; $5dc1: $ea $03 $c5
    ld b, $e2                                     ; $5dc4: $06 $e2
    ld bc, $00a0                                  ; $5dc6: $01 $a0 $00
    ld [$f003], a                                 ; $5dc9: $ea $03 $f0
    inc bc                                        ; $5dcc: $03
    push bc                                       ; $5dcd: $c5
    ld b, $e2                                     ; $5dce: $06 $e2
    ld bc, $7d40                                  ; $5dd0: $01 $40 $7d
    ret nz                                        ; $5dd3: $c0

    ld a, [hl]                                    ; $5dd4: $7e
    ld [$c503], a                                 ; $5dd5: $ea $03 $c5
    ld b, $08                                     ; $5dd8: $06 $08
    dec h                                         ; $5dda: $25
    ld [$0825], sp                                ; $5ddb: $08 $25 $08
    dec h                                         ; $5dde: $25
    ld [$0825], sp                                ; $5ddf: $08 $25 $08
    dec h                                         ; $5de2: $25
    ld [$0825], sp                                ; $5de3: $08 $25 $08
    dec h                                         ; $5de6: $25
    ld [$0825], sp                                ; $5de7: $08 $25 $08
    dec h                                         ; $5dea: $25
    ld [$0825], sp                                ; $5deb: $08 $25 $08
    dec h                                         ; $5dee: $25
    ld [$df25], sp                                ; $5def: $08 $25 $df
    dec bc                                        ; $5df2: $0b
    dec bc                                        ; $5df3: $0b
    ld l, e                                       ; $5df4: $6b
    dec bc                                        ; $5df5: $0b
    dec hl                                        ; $5df6: $2b
    rst $38                                       ; $5df7: $ff
    ldh [$4c], a                                  ; $5df8: $e0 $4c
    inc l                                         ; $5dfa: $2c
    ld l, a                                       ; $5dfb: $6f
    ld c, h                                       ; $5dfc: $4c
    ld l, h                                       ; $5dfd: $6c
    ld c, h                                       ; $5dfe: $4c
    ld l, h                                       ; $5dff: $6c
    rst $38                                       ; $5e00: $ff
    ld [c], a                                     ; $5e01: $e2
    inc l                                         ; $5e02: $2c
    inc c                                         ; $5e03: $0c
    rst $38                                       ; $5e04: $ff
    pop hl                                        ; $5e05: $e1
    rst $20                                       ; $5e06: $e7
    ld c, h                                       ; $5e07: $4c
    inc c                                         ; $5e08: $0c
    ld c, h                                       ; $5e09: $4c
    rst $38                                       ; $5e0a: $ff
    pop hl                                        ; $5e0b: $e1
    db $f4                                        ; $5e0c: $f4
    ld [c], a                                     ; $5e0d: $e2
    inc c                                         ; $5e0e: $0c
    inc c                                         ; $5e0f: $0c
    inc l                                         ; $5e10: $2c
    and c                                         ; $5e11: $a1
    inc l                                         ; $5e12: $2c
    ldh a, [$e2]                                  ; $5e13: $f0 $e2
    ld a, [c]                                     ; $5e15: $f2
    db $e4                                        ; $5e16: $e4
    ld sp, hl                                     ; $5e17: $f9
    add sp, -$40                                  ; $5e18: $e8 $c0
    ld [c], a                                     ; $5e1a: $e2
    dec bc                                        ; $5e1b: $0b
    rst $38                                       ; $5e1c: $ff
    ldh [$4c], a                                  ; $5e1d: $e0 $4c
    ld b, c                                       ; $5e1f: $41
    inc l                                         ; $5e20: $2c
    rst $38                                       ; $5e21: $ff
    ldh [$bf], a                                  ; $5e22: $e0 $bf
    db $e3                                        ; $5e24: $e3
    call nz, $d6e1                                ; $5e25: $c4 $e1 $d6
    and $b2                                       ; $5e28: $e6 $b2
    db $e3                                        ; $5e2a: $e3
    inc l                                         ; $5e2b: $2c
    xor e                                         ; $5e2c: $ab
    db $e3                                        ; $5e2d: $e3
    ld h, h                                       ; $5e2e: $64
    ret nz                                        ; $5e2f: $c0

    pop af                                        ; $5e30: $f1
    cp $e5                                        ; $5e31: $fe $e5
    ld c, h                                       ; $5e33: $4c
    jp nz, $fde0                                  ; $5e34: $c2 $e0 $fd

    pop hl                                        ; $5e37: $e1
    inc l                                         ; $5e38: $2c
    ld l, h                                       ; $5e39: $6c
    sbc d                                         ; $5e3a: $9a
    ld [$c018], a                                 ; $5e3b: $ea $18 $c0
    db $e4                                        ; $5e3e: $e4
    pop bc                                        ; $5e3f: $c1
    db $f4                                        ; $5e40: $f4
    add b                                         ; $5e41: $80
    pop hl                                        ; $5e42: $e1
    ld l, e                                       ; $5e43: $6b
    ld c, e                                       ; $5e44: $4b
    rst $38                                       ; $5e45: $ff
    ldh [$bf], a                                  ; $5e46: $e0 $bf
    and $c0                                       ; $5e48: $e6 $c0
    db $ed                                        ; $5e4a: $ed
    ld hl, sp+$3f                                 ; $5e4b: $f8 $3f
    db $e3                                        ; $5e4d: $e3
    ld b, [hl]                                    ; $5e4e: $46
    ldh a, [rLCDC]                                ; $5e4f: $f0 $40
    db $e4                                        ; $5e51: $e4
    ld l, e                                       ; $5e52: $6b
    ld l, e                                       ; $5e53: $6b
    dec bc                                        ; $5e54: $0b
    ld c, e                                       ; $5e55: $4b
    ld c, e                                       ; $5e56: $4b
    ret nz                                        ; $5e57: $c0

    cp l                                          ; $5e58: $bd
    ldh [$7e], a                                  ; $5e59: $e0 $7e
    rst $20                                       ; $5e5b: $e7
    add b                                         ; $5e5c: $80
    db $eb                                        ; $5e5d: $eb
    dec bc                                        ; $5e5e: $0b
    pop af                                        ; $5e5f: $f1
    daa                                           ; $5e60: $27
    add sp, -$3f                                  ; $5e61: $e8 $c1
    ldh [$0b], a                                  ; $5e63: $e0 $0b
    dec bc                                        ; $5e65: $0b
    inc hl                                        ; $5e66: $23
    ld c, e                                       ; $5e67: $4b
    dec bc                                        ; $5e68: $0b
    cp a                                          ; $5e69: $bf
    add sp, $15                                   ; $5e6a: $e8 $15
    ld [c], a                                     ; $5e6c: $e2
    ld de, $0bed                                  ; $5e6d: $11 $ed $0b
    cp l                                          ; $5e70: $bd
    ret nz                                        ; $5e71: $c0

    db $fc                                        ; $5e72: $fc
    pop hl                                        ; $5e73: $e1
    ret nz                                        ; $5e74: $c0

    cp a                                          ; $5e75: $bf
    adc $c4                                       ; $5e76: $ce $c4
    jp nz, $c0c0                                  ; $5e78: $c2 $c0 $c0

    cp a                                          ; $5e7b: $bf
    jp hl                                         ; $5e7c: $e9


    rrca                                          ; $5e7d: $0f
    ldh a, [$c0]                                  ; $5e7e: $f0 $c0
    rst $38                                       ; $5e80: $ff
    ld l, e                                       ; $5e81: $6b
    ld c, e                                       ; $5e82: $4b
    rrca                                          ; $5e83: $0f
    dec hl                                        ; $5e84: $2b
    dec hl                                        ; $5e85: $2b
    ld c, e                                       ; $5e86: $4b
    dec bc                                        ; $5e87: $0b
    dec a                                         ; $5e88: $3d
    jp nz, $f4c0                                  ; $5e89: $c2 $c0 $f4

    ld a, [hl]                                    ; $5e8c: $7e
    jp nc, $e480                                  ; $5e8d: $d2 $80 $e4

    ld d, c                                       ; $5e90: $51
    ld l, e                                       ; $5e91: $6b
    cp c                                          ; $5e92: $b9
    ret nz                                        ; $5e93: $c0

    or a                                          ; $5e94: $b7
    pop bc                                        ; $5e95: $c1
    db $fd                                        ; $5e96: $fd
    and d                                         ; $5e97: $a2
    inc l                                         ; $5e98: $2c
    ld d, $d2                                     ; $5e99: $16 $d2
    inc c                                         ; $5e9b: $0c
    db $fd                                        ; $5e9c: $fd
    and d                                         ; $5e9d: $a2
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    adc $85                                       ; $5ea0: $ce $85
    jp nz, $e27f                                  ; $5ea2: $c2 $7f $e2

    cp a                                          ; $5ea5: $bf
    pop hl                                        ; $5ea6: $e1
    ld a, a                                       ; $5ea7: $7f
    ld [c], a                                     ; $5ea8: $e2
    inc d                                         ; $5ea9: $14
    pop de                                        ; $5eaa: $d1
    or e                                          ; $5eab: $b3
    and b                                         ; $5eac: $a0
    db $fd                                        ; $5ead: $fd
    or d                                          ; $5eae: $b2
    ld [$c0c3], sp                                ; $5eaf: $08 $c3 $c0
    cp a                                          ; $5eb2: $bf
    db $e3                                        ; $5eb3: $e3
    ret nz                                        ; $5eb4: $c0

    ld [c], a                                     ; $5eb5: $e2
    ld l, e                                       ; $5eb6: $6b
    ret nz                                        ; $5eb7: $c0

    or $83                                        ; $5eb8: $f6 $83
    jp nc, $a3c0                                  ; $5eba: $d2 $c0 $a3

    cp a                                          ; $5ebd: $bf
    jp hl                                         ; $5ebe: $e9


    nop                                           ; $5ebf: $00
    add b                                         ; $5ec0: $80
    push hl                                       ; $5ec1: $e5
    ret nc                                        ; $5ec2: $d0

    or [hl]                                       ; $5ec3: $b6
    ld a, b                                       ; $5ec4: $78
    xor l                                         ; $5ec5: $ad
    rst $00                                       ; $5ec6: $c7
    and c                                         ; $5ec7: $a1
    dec a                                         ; $5ec8: $3d
    db $e3                                        ; $5ec9: $e3
    add c                                         ; $5eca: $81
    ld [c], a                                     ; $5ecb: $e2
    ld b, b                                       ; $5ecc: $40
    db $e3                                        ; $5ecd: $e3
    inc c                                         ; $5ece: $0c
    sub $00                                       ; $5ecf: $d6 $00
    nop                                           ; $5ed1: $00
    xor a                                         ; $5ed2: $af
    ld [bc], a                                    ; $5ed3: $02
    ld [c], a                                     ; $5ed4: $e2
    add c                                         ; $5ed5: $81
    and d                                         ; $5ed6: $a2
    pop bc                                        ; $5ed7: $c1
    ld [c], a                                     ; $5ed8: $e2
    ld b, b                                       ; $5ed9: $40
    rst $30                                       ; $5eda: $f7
    ld bc, $00d3                                  ; $5edb: $01 $d3 $00
    and h                                         ; $5ede: $a4
    ld b, b                                       ; $5edf: $40
    and c                                         ; $5ee0: $a1
    db $10                                        ; $5ee1: $10
    or [hl]                                       ; $5ee2: $b6
    and d                                         ; $5ee3: $a2
    ld b, b                                       ; $5ee4: $40
    rst $30                                       ; $5ee5: $f7
    ld hl, sp-$6c                                 ; $5ee6: $f8 $94
    ret nz                                        ; $5ee8: $c0

    add e                                         ; $5ee9: $83
    dec hl                                        ; $5eea: $2b
    ld a, $a0                                     ; $5eeb: $3e $a0
    add e                                         ; $5eed: $83
    ret nz                                        ; $5eee: $c0

    add b                                         ; $5eef: $80
    ld [c], a                                     ; $5ef0: $e2
    ld [$c097], sp                                ; $5ef1: $08 $97 $c0
    ld b, c                                       ; $5ef4: $41
    rst $10                                       ; $5ef5: $d7
    ld a, c                                       ; $5ef6: $79
    sub e                                         ; $5ef7: $93
    inc l                                         ; $5ef8: $2c
    cp $e2                                        ; $5ef9: $fe $e2
    db $fd                                        ; $5efb: $fd
    db $e4                                        ; $5efc: $e4
    sub e                                         ; $5efd: $93
    sub d                                         ; $5efe: $92
    ld b, c                                       ; $5eff: $41
    push de                                       ; $5f00: $d5
    nop                                           ; $5f01: $00
    ld a, [de]                                    ; $5f02: $1a
    adc b                                         ; $5f03: $88
    rst $18                                       ; $5f04: $df
    ld l, h                                       ; $5f05: $6c
    ret nz                                        ; $5f06: $c0

    ld h, d                                       ; $5f07: $62
    ld a, [bc]                                    ; $5f08: $0a
    adc [hl]                                      ; $5f09: $8e
    cp l                                          ; $5f0a: $bd
    ld l, [hl]                                    ; $5f0b: $6e
    push de                                       ; $5f0c: $d5
    ld h, d                                       ; $5f0d: $62
    and a                                         ; $5f0e: $a7
    and a                                         ; $5f0f: $a7
    adc a                                         ; $5f10: $8f
    ld h, b                                       ; $5f11: $60
    nop                                           ; $5f12: $00
    cp $e2                                        ; $5f13: $fe $e2
    ld a, [hl]                                    ; $5f15: $7e
    rst $18                                       ; $5f16: $df
    inc h                                         ; $5f17: $24
    sbc a                                         ; $5f18: $9f
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    rst $38                                       ; $5f1b: $ff
    rst $38                                       ; $5f1c: $ff
    rst $38                                       ; $5f1d: $ff
    rst $38                                       ; $5f1e: $ff
    ld [hl-], a                                   ; $5f1f: $32
    db $ed                                        ; $5f20: $ed
    ret nc                                        ; $5f21: $d0

    ld [hl], e                                    ; $5f22: $73
    nop                                           ; $5f23: $00
    ld b, b                                       ; $5f24: $40
    sub [hl]                                      ; $5f25: $96
    rst $38                                       ; $5f26: $ff
    rst $38                                       ; $5f27: $ff
    nop                                           ; $5f28: $00
    sbc e                                         ; $5f29: $9b
    sub l                                         ; $5f2a: $95
    ld c, c                                       ; $5f2b: $49
    ld a, a                                       ; $5f2c: $7f
    ld [$4d50], a                                 ; $5f2d: $ea $50 $4d
    add c                                         ; $5f30: $81
    ld sp, hl                                     ; $5f31: $f9
    adc a                                         ; $5f32: $8f
    rst $18                                       ; $5f33: $df
    nop                                           ; $5f34: $00
    ld b, c                                       ; $5f35: $41
    ld h, l                                       ; $5f36: $65
    sub h                                         ; $5f37: $94
    rst $18                                       ; $5f38: $df
    add a                                         ; $5f39: $87
    sbc a                                         ; $5f3a: $9f
    rst $38                                       ; $5f3b: $ff
    rst $38                                       ; $5f3c: $ff
    nop                                           ; $5f3d: $00
    rst $38                                       ; $5f3e: $ff
    and a                                         ; $5f3f: $a7
    rst $38                                       ; $5f40: $ff
    ret nz                                        ; $5f41: $c0

    rst $38                                       ; $5f42: $ff
    or h                                          ; $5f43: $b4
    ld l, h                                       ; $5f44: $6c
    ld bc, $ff08                                  ; $5f45: $01 $08 $ff
    ldh [$f6], a                                  ; $5f48: $e0 $f6
    push hl                                       ; $5f4a: $e5
    ret nz                                        ; $5f4b: $c0

    ld a, [c]                                     ; $5f4c: $f2
    ld [hl], h                                    ; $5f4d: $74
    ld a, h                                       ; $5f4e: $7c
    ret nz                                        ; $5f4f: $c0

    pop hl                                        ; $5f50: $e1
    db $fc                                        ; $5f51: $fc
    push hl                                       ; $5f52: $e5
    ld c, [hl]                                    ; $5f53: $4e
    ld [hl-], a                                   ; $5f54: $32
    nop                                           ; $5f55: $00
    ret nz                                        ; $5f56: $c0

    ld d, d                                       ; $5f57: $52
    add a                                         ; $5f58: $87
    rst $18                                       ; $5f59: $df
    adc c                                         ; $5f5a: $89
    jp $9d7f                                      ; $5f5b: $c3 $7f $9d


    add h                                         ; $5f5e: $84
    rst $18                                       ; $5f5f: $df
    cp [hl]                                       ; $5f60: $be
    rla                                           ; $5f61: $17
    ret nz                                        ; $5f62: $c0

    rst $38                                       ; $5f63: $ff
    db $e3                                        ; $5f64: $e3
    rst $38                                       ; $5f65: $ff
    nop                                           ; $5f66: $00
    ld h, c                                       ; $5f67: $61
    sbc b                                         ; $5f68: $98
    ld e, $fa                                     ; $5f69: $1e $fa
    ld bc, $ffff                                  ; $5f6b: $01 $ff $ff
    rst $38                                       ; $5f6e: $ff
    inc bc                                        ; $5f6f: $03
    sbc $1e                                       ; $5f70: $de $1e
    ld sp, hl                                     ; $5f72: $f9
    ld bc, $9eff                                  ; $5f73: $01 $ff $9e
    cp a                                          ; $5f76: $bf
    nop                                           ; $5f77: $00
    nop                                           ; $5f78: $00
    db $fc                                        ; $5f79: $fc
    call c, $ffff                                 ; $5f7a: $dc $ff $ff
    rst $38                                       ; $5f7d: $ff
    rst $38                                       ; $5f7e: $ff
    rst $38                                       ; $5f7f: $ff
    ld e, $ff                                     ; $5f80: $1e $ff
    ld d, l                                       ; $5f82: $55
    rst $38                                       ; $5f83: $ff
    ld d, h                                       ; $5f84: $54
    rst $38                                       ; $5f85: $ff
    adc [hl]                                      ; $5f86: $8e
    ld c, l                                       ; $5f87: $4d
    nop                                           ; $5f88: $00
    xor d                                         ; $5f89: $aa
    ld [hl+], a                                   ; $5f8a: $22
    cp $e5                                        ; $5f8b: $fe $e5
    add $ff                                       ; $5f8d: $c6 $ff
    and h                                         ; $5f8f: $a4
    rst $18                                       ; $5f90: $df
    rst $38                                       ; $5f91: $ff
    rst $38                                       ; $5f92: $ff
    rst $38                                       ; $5f93: $ff
    rst $38                                       ; $5f94: $ff
    rst $38                                       ; $5f95: $ff
    rst $38                                       ; $5f96: $ff
    rst $38                                       ; $5f97: $ff
    rst $38                                       ; $5f98: $ff
    nop                                           ; $5f99: $00
    rst $38                                       ; $5f9a: $ff
    rst $38                                       ; $5f9b: $ff
    rst $38                                       ; $5f9c: $ff
    rst $38                                       ; $5f9d: $ff
    rst $38                                       ; $5f9e: $ff
    rst $38                                       ; $5f9f: $ff
    rst $38                                       ; $5fa0: $ff
    rst $38                                       ; $5fa1: $ff
    rst $38                                       ; $5fa2: $ff
    rst $38                                       ; $5fa3: $ff
    rst $38                                       ; $5fa4: $ff
    rst $38                                       ; $5fa5: $ff
    rst $38                                       ; $5fa6: $ff
    rst $38                                       ; $5fa7: $ff
    rst $38                                       ; $5fa8: $ff
    rst $38                                       ; $5fa9: $ff
    nop                                           ; $5faa: $00
    ccf                                           ; $5fab: $3f
    rst $18                                       ; $5fac: $df
    rst $38                                       ; $5fad: $ff
    rst $38                                       ; $5fae: $ff
    rst $38                                       ; $5faf: $ff
    rst $38                                       ; $5fb0: $ff
    rst $38                                       ; $5fb1: $ff
    rst $38                                       ; $5fb2: $ff
    rst $38                                       ; $5fb3: $ff
    rst $38                                       ; $5fb4: $ff
    rst $38                                       ; $5fb5: $ff
    rst $38                                       ; $5fb6: $ff
    rst $38                                       ; $5fb7: $ff
    rst $38                                       ; $5fb8: $ff
    rst $38                                       ; $5fb9: $ff
    rst $38                                       ; $5fba: $ff
    nop                                           ; $5fbb: $00
    rst $38                                       ; $5fbc: $ff
    rst $38                                       ; $5fbd: $ff
    rst $38                                       ; $5fbe: $ff
    rst $38                                       ; $5fbf: $ff
    rst $38                                       ; $5fc0: $ff
    rst $38                                       ; $5fc1: $ff
    rst $38                                       ; $5fc2: $ff
    rst $38                                       ; $5fc3: $ff
    rst $38                                       ; $5fc4: $ff
    rst $38                                       ; $5fc5: $ff
    rst $38                                       ; $5fc6: $ff
    rst $38                                       ; $5fc7: $ff
    rst $38                                       ; $5fc8: $ff
    rst $38                                       ; $5fc9: $ff
    rst $38                                       ; $5fca: $ff
    rst $38                                       ; $5fcb: $ff
    nop                                           ; $5fcc: $00
    rst $38                                       ; $5fcd: $ff
    rst $38                                       ; $5fce: $ff
    rst $38                                       ; $5fcf: $ff
    rst $38                                       ; $5fd0: $ff
    rst $38                                       ; $5fd1: $ff
    rst $38                                       ; $5fd2: $ff
    rst $38                                       ; $5fd3: $ff
    rst $38                                       ; $5fd4: $ff
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    rst $38                                       ; $5fd7: $ff
    rst $38                                       ; $5fd8: $ff
    rst $38                                       ; $5fd9: $ff
    rst $38                                       ; $5fda: $ff
    nop                                           ; $5fdb: $00
    cp a                                          ; $5fdc: $bf
    nop                                           ; $5fdd: $00
    rst $38                                       ; $5fde: $ff
    rst $38                                       ; $5fdf: $ff
    rst $38                                       ; $5fe0: $ff
    rst $38                                       ; $5fe1: $ff
    rst $38                                       ; $5fe2: $ff
    rst $38                                       ; $5fe3: $ff
    rst $38                                       ; $5fe4: $ff
    rst $38                                       ; $5fe5: $ff
    pop hl                                        ; $5fe6: $e1
    inc a                                         ; $5fe7: $3c
    nop                                           ; $5fe8: $00
    nop                                           ; $5fe9: $00
    nop                                           ; $5fea: $00
    rst $28                                       ; $5feb: $ef
    ld c, e                                       ; $5fec: $4b
    ld c, e                                       ; $5fed: $4b
    ld c, a                                       ; $5fee: $4f
    ld hl, $e1ff                                  ; $5fef: $21 $ff $e1
    inc bc                                        ; $5ff2: $03
    ld bc, $1c00                                  ; $5ff3: $01 $00 $1c
    rst $38                                       ; $5ff6: $ff
    rst $38                                       ; $5ff7: $ff
    pop af                                        ; $5ff8: $f1
    ldh a, [rWX]                                  ; $5ff9: $f0 $4b
    ld c, e                                       ; $5ffb: $4b
    ld c, [hl]                                    ; $5ffc: $4e
    ret nz                                        ; $5ffd: $c0

    ld [c], a                                     ; $5ffe: $e2
    cp a                                          ; $5fff: $bf
    rst $38                                       ; $6000: $ff
    ret nz                                        ; $6001: $c0

    db $f4                                        ; $6002: $f4
    pop af                                        ; $6003: $f1
    ld d, b                                       ; $6004: $50
    pop bc                                        ; $6005: $c1
    db $e3                                        ; $6006: $e3
    cp a                                          ; $6007: $bf
    rst $38                                       ; $6008: $ff
    db $f4                                        ; $6009: $f4
    di                                            ; $600a: $f3
    ld d, b                                       ; $600b: $50
    ld hl, $2a3d                                  ; $600c: $21 $3d $2a
    rst $08                                       ; $600f: $cf
    ld b, h                                       ; $6010: $44
    ld b, l                                       ; $6011: $45
    ld a, [hl+]                                   ; $6012: $2a
    dec a                                         ; $6013: $3d
    cp a                                          ; $6014: $bf
    rst $38                                       ; $6015: $ff
    db $f4                                        ; $6016: $f4
    di                                            ; $6017: $f3
    ld hl, $3f3d                                  ; $6018: $21 $3d $3f
    ld [hl+], a                                   ; $601b: $22
    ld e, l                                       ; $601c: $5d
    jr nz, jr_057_603f                            ; $601d: $20 $20

    ld e, l                                       ; $601f: $5d
    ld [hl+], a                                   ; $6020: $22
    cp a                                          ; $6021: $bf
    rst $38                                       ; $6022: $ff
    db $f4                                        ; $6023: $f4
    di                                            ; $6024: $f3
    ld l, a                                       ; $6025: $6f
    dec a                                         ; $6026: $3d
    ld [hl+], a                                   ; $6027: $22
    ld e, d                                       ; $6028: $5a
    ld e, l                                       ; $6029: $5d
    cp a                                          ; $602a: $bf
    rst $38                                       ; $602b: $ff
    nop                                           ; $602c: $00
    sub b                                         ; $602d: $90
    db $fc                                        ; $602e: $fc
    db $e4                                        ; $602f: $e4
    add [hl]                                      ; $6030: $86
    xor a                                         ; $6031: $af
    xor $40                                       ; $6032: $ee $40
    ld e, l                                       ; $6034: $5d
    ret nz                                        ; $6035: $c0

    ld [c], a                                     ; $6036: $e2
    ld a, [hl]                                    ; $6037: $7e
    db $fd                                        ; $6038: $fd
    ret nz                                        ; $6039: $c0

    ei                                            ; $603a: $fb
    ld a, a                                       ; $603b: $7f
    pop hl                                        ; $603c: $e1
    ld e, l                                       ; $603d: $5d
    ccf                                           ; $603e: $3f

jr_057_603f:
    ld [hl+], a                                   ; $603f: $22
    ld b, [hl]                                    ; $6040: $46
    ld b, [hl]                                    ; $6041: $46
    dec a                                         ; $6042: $3d
    ld hl, $c017                                  ; $6043: $21 $17 $c0
    ld hl, sp+$33                                 ; $6046: $f8 $33
    ld a, [c]                                     ; $6048: $f2
    ld a, [hl-]                                   ; $6049: $3a
    ret nz                                        ; $604a: $c0

    push hl                                       ; $604b: $e5
    jr nz, jr_057_60c6                            ; $604c: $20 $78

    pop hl                                        ; $604e: $e1

jr_057_604f:
    ld [hl+], a                                   ; $604f: $22
    dec a                                         ; $6050: $3d
    ld [$ff0e], sp                                ; $6051: $08 $0e $ff
    db $ec                                        ; $6054: $ec
    db $eb                                        ; $6055: $eb
    rst $20                                       ; $6056: $e7
    sbc a                                         ; $6057: $9f
    ld l, l                                       ; $6058: $6d
    ld h, c                                       ; $6059: $61
    ccf                                           ; $605a: $3f
    db $e4                                        ; $605b: $e4
    ld a, b                                       ; $605c: $78
    pop hl                                        ; $605d: $e1
    add hl, hl                                    ; $605e: $29
    ld hl, $9c1e                                  ; $605f: $21 $1e $9c
    call $ebff                                    ; $6062: $cd $ff $eb
    ld [$7071], a                                 ; $6065: $ea $71 $70
    ld l, c                                       ; $6068: $69
    cp a                                          ; $6069: $bf
    db $e3                                        ; $606a: $e3
    jr c, jr_057_604f                             ; $606b: $38 $e2

    ld b, e                                       ; $606d: $43
    adc h                                         ; $606e: $8c
    ret nz                                        ; $606f: $c0

    rst $38                                       ; $6070: $ff
    db $ed                                        ; $6071: $ed
    db $ec                                        ; $6072: $ec
    sbc c                                         ; $6073: $99
    ld [hl], b                                    ; $6074: $70
    cp a                                          ; $6075: $bf
    jp hl                                         ; $6076: $e9


    ret nz                                        ; $6077: $c0

    rst $38                                       ; $6078: $ff
    xor $ed                                       ; $6079: $ee $ed
    ld [hl], b                                    ; $607b: $70
    nop                                           ; $607c: $00
    rst $38                                       ; $607d: $ff
    ldh [$7e], a                                  ; $607e: $e0 $7e
    db $e3                                        ; $6080: $e3
    ld [hl], a                                    ; $6081: $77
    pop bc                                        ; $6082: $c1
    ld b, b                                       ; $6083: $40
    rst $38                                       ; $6084: $ff
    ret nz                                        ; $6085: $c0

    pop af                                        ; $6086: $f1
    dec a                                         ; $6087: $3d
    ld [c], a                                     ; $6088: $e2
    cp [hl]                                       ; $6089: $be
    pop bc                                        ; $608a: $c1
    cp d                                          ; $608b: $ba
    and b                                         ; $608c: $a0
    add b                                         ; $608d: $80
    ret nz                                        ; $608e: $c0

    rst $30                                       ; $608f: $f7
    ld a, l                                       ; $6090: $7d
    db $d3                                        ; $6091: $d3
    ret nz                                        ; $6092: $c0

    ld [c], a                                     ; $6093: $e2
    cp a                                          ; $6094: $bf
    db $e3                                        ; $6095: $e3
    ld a, e                                       ; $6096: $7b
    and d                                         ; $6097: $a2
    add b                                         ; $6098: $80
    rst $38                                       ; $6099: $ff
    ret nz                                        ; $609a: $c0

    pop af                                        ; $609b: $f1
    sbc b                                         ; $609c: $98
    rra                                           ; $609d: $1f
    and b                                         ; $609e: $a0
    ld b, [hl]                                    ; $609f: $46
    ld b, a                                       ; $60a0: $47
    ld b, [hl]                                    ; $60a1: $46
    ld b, a                                       ; $60a2: $47
    inc a                                         ; $60a3: $3c
    and c                                         ; $60a4: $a1
    ret nz                                        ; $60a5: $c0

    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    rst $38                                       ; $60a8: $ff
    nop                                           ; $60a9: $00
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
    nop                                           ; $60ba: $00
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    cp $00                                        ; $60be: $fe $00

Jump_057_60c0:
    sub [hl]                                      ; $60c0: $96
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    ret nz                                        ; $60c3: $c0

    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff

jr_057_60c6:
    rst $38                                       ; $60c6: $ff
    db $fd                                        ; $60c7: $fd
    ld a, d                                       ; $60c8: $7a
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
    add b                                         ; $60cb: $80
    ret nz                                        ; $60cc: $c0

    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    nop                                           ; $60d2: $00
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    ret nz                                        ; $60d6: $c0

    rst $38                                       ; $60d7: $ff
    call nc, $a4f6                                ; $60d8: $d4 $f6 $a4
    scf                                           ; $60db: $37
    and l                                         ; $60dc: $a5
    and [hl]                                      ; $60dd: $a6
    and a                                         ; $60de: $a7
    or a                                          ; $60df: $b7
    db $e3                                        ; $60e0: $e3
    xor [hl]                                      ; $60e1: $ae
    xor a                                         ; $60e2: $af
    inc bc                                        ; $60e3: $03
    rst $38                                       ; $60e4: $ff
    ldh a, [$ef]                                  ; $60e5: $f0 $ef
    rst $38                                       ; $60e7: $ff
    or h                                          ; $60e8: $b4
    or l                                          ; $60e9: $b5
    or [hl]                                       ; $60ea: $b6
    or a                                          ; $60eb: $b7
    cp b                                          ; $60ec: $b8
    cp c                                          ; $60ed: $b9
    cp d                                          ; $60ee: $ba
    cp e                                          ; $60ef: $bb
    rrca                                          ; $60f0: $0f
    cp h                                          ; $60f1: $bc
    cp l                                          ; $60f2: $bd
    cp [hl]                                       ; $60f3: $be
    cp a                                          ; $60f4: $bf
    jp nc, $ffff                                  ; $60f5: $d2 $ff $ff

    rst $38                                       ; $60f8: $ff
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    nop                                           ; $60fd: $00
    rst $38                                       ; $60fe: $ff
    rst $38                                       ; $60ff: $ff
    ld h, l                                       ; $6100: $65
    jr nz, jr_057_6127                            ; $6101: $20 $24

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
    nop                                           ; $610e: $00
    ld e, $ff                                     ; $610f: $1e $ff
    db $e3                                        ; $6111: $e3
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
    nop                                           ; $611f: $00
    ld e, $ff                                     ; $6120: $1e $ff
    rst $38                                       ; $6122: $ff
    rst $38                                       ; $6123: $ff
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    rst $38                                       ; $6126: $ff

jr_057_6127:
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    rst $38                                       ; $6129: $ff
    rst $38                                       ; $612a: $ff
    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    rst $38                                       ; $612d: $ff
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    nop                                           ; $6130: $00
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
    nop                                           ; $6141: $00
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
    rst $38                                       ; $614f: $ff
    rst $38                                       ; $6150: $ff
    rst $38                                       ; $6151: $ff
    nop                                           ; $6152: $00
    rst $38                                       ; $6153: $ff
    rst $38                                       ; $6154: $ff
    rst $38                                       ; $6155: $ff
    rst $38                                       ; $6156: $ff
    rst $38                                       ; $6157: $ff
    rst $38                                       ; $6158: $ff
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    rst $38                                       ; $615b: $ff
    rst $38                                       ; $615c: $ff
    rst $38                                       ; $615d: $ff
    rst $38                                       ; $615e: $ff
    rst $38                                       ; $615f: $ff
    rst $38                                       ; $6160: $ff
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    nop                                           ; $6163: $00
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
    nop                                           ; $6174: $00
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
    pop hl                                        ; $6181: $e1
    ld [hl+], a                                   ; $6182: $22
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    call $ff00                                    ; $6186: $cd $00 $ff
    jp hl                                         ; $6189: $e9


    scf                                           ; $618a: $37
    ld [hl-], a                                   ; $618b: $32
    pop af                                        ; $618c: $f1
    ld [$ffff], a                                 ; $618d: $ea $ff $ff
    inc sp                                        ; $6190: $33
    ld sp, $dcfe                                  ; $6191: $31 $fe $dc
    ld a, [c]                                     ; $6194: $f2
    ld [hl], $30                                  ; $6195: $36 $30
    scf                                           ; $6197: $37
    ld h, $20                                     ; $6198: $26 $20
    daa                                           ; $619a: $27
    db $10                                        ; $619b: $10
    ei                                            ; $619c: $fb
    ld d, $17                                     ; $619d: $16 $17
    cp [hl]                                       ; $619f: $be
    or $34                                        ; $61a0: $f6 $34
    ld [hl], $32                                  ; $61a2: $36 $32
    jr nc, jr_057_61dd                            ; $61a4: $30 $37

    rrca                                          ; $61a6: $0f
    ld sp, $3133                                  ; $61a7: $31 $33 $31
    inc sp                                        ; $61aa: $33
    sbc h                                         ; $61ab: $9c
    rst $38                                       ; $61ac: $ff
    rst $38                                       ; $61ad: $ff
    ei                                            ; $61ae: $fb
    nop                                           ; $61af: $00
    nop                                           ; $61b0: $00
    nop                                           ; $61b1: $00
    cp d                                          ; $61b2: $ba
    ld h, c                                       ; $61b3: $61
    ld [$4161], a                                 ; $61b4: $ea $61 $41
    ld h, h                                       ; $61b7: $64
    xor $65                                       ; $61b8: $ee $65
    ldh a, [$03]                                  ; $61ba: $f0 $03
    ld c, l                                       ; $61bc: $4d
    rrca                                          ; $61bd: $0f
    ld b, b                                       ; $61be: $40
    ld [bc], a                                    ; $61bf: $02
    ret nz                                        ; $61c0: $c0

    nop                                           ; $61c1: $00
    ldh a, [$03]                                  ; $61c2: $f0 $03
    push af                                       ; $61c4: $f5
    inc bc                                        ; $61c5: $03
    ld c, b                                       ; $61c6: $48
    rrca                                          ; $61c7: $0f
    ld b, b                                       ; $61c8: $40
    ld [bc], a                                    ; $61c9: $02
    ld e, a                                       ; $61ca: $5f
    dec sp                                        ; $61cb: $3b
    jr c, @+$10                                   ; $61cc: $38 $0e

    ld sp, $4819                                  ; $61ce: $31 $19 $48
    rrca                                          ; $61d1: $0f
    ld [$0825], sp                                ; $61d2: $08 $25 $08
    dec h                                         ; $61d5: $25
    ld [$0825], sp                                ; $61d6: $08 $25 $08
    dec h                                         ; $61d9: $25
    ld [$0825], sp                                ; $61da: $08 $25 $08

jr_057_61dd:
    dec h                                         ; $61dd: $25
    ld [$0825], sp                                ; $61de: $08 $25 $08
    dec h                                         ; $61e1: $25
    ld [$0825], sp                                ; $61e2: $08 $25 $08
    dec h                                         ; $61e5: $25
    ld [$0825], sp                                ; $61e6: $08 $25 $08
    dec h                                         ; $61e9: $25
    rst $18                                       ; $61ea: $df
    inc c                                         ; $61eb: $0c
    inc c                                         ; $61ec: $0c
    inc l                                         ; $61ed: $2c
    inc l                                         ; $61ee: $2c
    dec bc                                        ; $61ef: $0b
    rst $38                                       ; $61f0: $ff
    ldh [rOCPD], a                                ; $61f1: $e0 $6b
    ld l, e                                       ; $61f3: $6b
    rst $28                                       ; $61f4: $ef
    ld c, e                                       ; $61f5: $4b
    ld c, e                                       ; $61f6: $4b
    dec bc                                        ; $61f7: $0b
    dec hl                                        ; $61f8: $2b
    or $e1                                        ; $61f9: $f6 $e1
    dec bc                                        ; $61fb: $0b
    dec bc                                        ; $61fc: $0b
    ld c, h                                       ; $61fd: $4c
    rrca                                          ; $61fe: $0f
    ld c, h                                       ; $61ff: $4c
    inc c                                         ; $6200: $0c
    inc c                                         ; $6201: $0c
    inc c                                         ; $6202: $0c
    ei                                            ; $6203: $fb
    ldh [$fd], a                                  ; $6204: $e0 $fd
    push hl                                       ; $6206: $e5
    ldh a, [$e5]                                  ; $6207: $f0 $e5
    db $eb                                        ; $6209: $eb
    ldh [$60], a                                  ; $620a: $e0 $60
    rst $20                                       ; $620c: $e7
    ldh [$fd], a                                  ; $620d: $e0 $fd
    db $ed                                        ; $620f: $ed
    ret nz                                        ; $6210: $c0

    ld [c], a                                     ; $6211: $e2
    pop bc                                        ; $6212: $c1
    pop hl                                        ; $6213: $e1
    cp a                                          ; $6214: $bf
    db $e4                                        ; $6215: $e4
    ld a, [bc]                                    ; $6216: $0a
    dec bc                                        ; $6217: $0b
    db $db                                        ; $6218: $db
    ld [c], a                                     ; $6219: $e2
    ret nz                                        ; $621a: $c0

    jp $cbe6                                      ; $621b: $c3 $e6 $cb


    ld [c], a                                     ; $621e: $e2
    cp l                                          ; $621f: $bd
    rst $20                                       ; $6220: $e7
    ret nz                                        ; $6221: $c0

    ld a, [c]                                     ; $6222: $f2
    pop bc                                        ; $6223: $c1
    db $e3                                        ; $6224: $e3
    ld a, [hl]                                    ; $6225: $7e
    ldh [rWX], a                                  ; $6226: $e0 $4b
    ld a, [bc]                                    ; $6228: $0a
    nop                                           ; $6229: $00
    add b                                         ; $622a: $80
    db $e4                                        ; $622b: $e4
    db $fd                                        ; $622c: $fd
    pop hl                                        ; $622d: $e1
    ld a, [hl]                                    ; $622e: $7e
    ld [c], a                                     ; $622f: $e2
    db $fc                                        ; $6230: $fc
    db $e3                                        ; $6231: $e3
    add l                                         ; $6232: $85
    pop hl                                        ; $6233: $e1
    db $f4                                        ; $6234: $f4
    db $e4                                        ; $6235: $e4
    ret nz                                        ; $6236: $c0

    ld a, [c]                                     ; $6237: $f2
    pop bc                                        ; $6238: $c1
    db $e3                                        ; $6239: $e3
    ld b, b                                       ; $623a: $40
    ret nz                                        ; $623b: $c0

    ldh [rLCDC], a                                ; $623c: $e0 $40
    db $e3                                        ; $623e: $e3
    ccf                                           ; $623f: $3f
    and $b9                                       ; $6240: $e6 $b9
    ld [c], a                                     ; $6242: $e2
    ld b, b                                       ; $6243: $40
    rst $38                                       ; $6244: $ff
    pop bc                                        ; $6245: $c1
    db $e4                                        ; $6246: $e4
    ld l, e                                       ; $6247: $6b
    nop                                           ; $6248: $00
    db $e3                                        ; $6249: $e3
    db $10                                        ; $624a: $10
    ld b, b                                       ; $624b: $40
    db $e3                                        ; $624c: $e3
    ld a, [$3fe8]                                 ; $624d: $fa $e8 $3f
    rst $20                                       ; $6250: $e7
    and $c1                                       ; $6251: $e6 $c1
    inc l                                         ; $6253: $2c
    ld [$c0e4], sp                                ; $6254: $08 $e4 $c0
    rst $28                                       ; $6257: $ef
    or a                                          ; $6258: $b7

jr_057_6259:
    pop bc                                        ; $6259: $c1
    jr nz, @+$41                                  ; $625a: $20 $3f

    ldh [rNR12], a                                ; $625c: $e0 $12
    and $bf                                       ; $625e: $e6 $bf
    srl d                                         ; $6260: $cb $3a
    db $e3                                        ; $6262: $e3
    ret nz                                        ; $6263: $c0

    jp nc, $c12b                                  ; $6264: $d2 $2b $c1

    jp $e4ff                                      ; $6267: $c3 $ff $e4


    nop                                           ; $626a: $00
    adc [hl]                                      ; $626b: $8e
    and $bf                                       ; $626c: $e6 $bf
    bit 7, a                                      ; $626e: $cb $7f
    call nc, $e2c0                                ; $6270: $d4 $c0 $e2
    cp a                                          ; $6273: $bf
    pop hl                                        ; $6274: $e1
    ld b, c                                       ; $6275: $41
    pop bc                                        ; $6276: $c1
    ld a, $c2                                     ; $6277: $3e $c2
    call Call_000_18c6                            ; $6279: $cd $c6 $18
    cp a                                          ; $627c: $bf
    call $d680                                    ; $627d: $cd $80 $d6
    dec b                                         ; $6280: $05
    ret nz                                        ; $6281: $c0

    dec hl                                        ; $6282: $2b
    dec hl                                        ; $6283: $2b
    ld a, [$02c0]                                 ; $6284: $fa $c0 $02
    db $e4                                        ; $6287: $e4
    cp a                                          ; $6288: $bf
    ret nc                                        ; $6289: $d0

    ld [hl-], a                                   ; $628a: $32
    cp d                                          ; $628b: $ba
    ret                                           ; $628c: $c9


    inc l                                         ; $628d: $2c
    rst $38                                       ; $628e: $ff
    ldh [$f7], a                                  ; $628f: $e0 $f7
    and [hl]                                      ; $6291: $a6
    ld l, h                                       ; $6292: $6c
    ld l, h                                       ; $6293: $6c
    ld b, b                                       ; $6294: $40
    jp nz, $e0c0                                  ; $6295: $c2 $c0 $e0

    jr nz, jr_057_6259                            ; $6298: $20 $bf

    ldh [rLY], a                                  ; $629a: $e0 $44
    push hl                                       ; $629c: $e5
    cp a                                          ; $629d: $bf
    adc $b3                                       ; $629e: $ce $b3
    and [hl]                                      ; $62a0: $a6
    cp a                                          ; $62a1: $bf
    xor l                                         ; $62a2: $ad
    ld l, h                                       ; $62a3: $6c
    rst $38                                       ; $62a4: $ff
    ldh [$82], a                                  ; $62a5: $e0 $82
    and b                                         ; $62a7: $a0
    ret nz                                        ; $62a8: $c0

    pop bc                                        ; $62a9: $c1
    pop hl                                        ; $62aa: $e1
    ld a, l                                       ; $62ab: $7d
    pop hl                                        ; $62ac: $e1
    call nz, Call_057_7fa6                        ; $62ad: $c4 $a6 $7f
    xor h                                         ; $62b0: $ac
    rst $30                                       ; $62b1: $f7
    and h                                         ; $62b2: $a4
    cp [hl]                                       ; $62b3: $be
    xor a                                         ; $62b4: $af
    ld l, h                                       ; $62b5: $6c
    ld l, h                                       ; $62b6: $6c
    nop                                           ; $62b7: $00
    jp z, $41e1                                   ; $62b8: $ca $e1 $41

    pop hl                                        ; $62bb: $e1
    ret nz                                        ; $62bc: $c0

    add sp, $7f                                   ; $62bd: $e8 $7f
    or b                                          ; $62bf: $b0
    ld l, h                                       ; $62c0: $6c
    and [hl]                                      ; $62c1: $a6
    ld a, $ac                                     ; $62c2: $3e $ac
    ld b, h                                       ; $62c4: $44
    ld [c], a                                     ; $62c5: $e2
    pop bc                                        ; $62c6: $c1
    rst $20                                       ; $62c7: $e7
    and b                                         ; $62c8: $a0
    add b                                         ; $62c9: $80
    rst $20                                       ; $62ca: $e7
    ld a, a                                       ; $62cb: $7f
    xor e                                         ; $62cc: $ab
    ld a, l                                       ; $62cd: $7d
    and h                                         ; $62ce: $a4
    dec a                                         ; $62cf: $3d
    xor a                                         ; $62d0: $af
    ret z                                         ; $62d1: $c8

    add b                                         ; $62d2: $80
    ld a, [bc]                                    ; $62d3: $0a
    ret nz                                        ; $62d4: $c0

    ldh [rWX], a                                  ; $62d5: $e0 $4b
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    pop hl                                        ; $62d9: $e1
    pop bc                                        ; $62da: $c1
    and c                                         ; $62db: $a1
    ld b, c                                       ; $62dc: $41
    di                                            ; $62dd: $f3
    cp h                                          ; $62de: $bc
    push hl                                       ; $62df: $e5
    rst $38                                       ; $62e0: $ff
    rst $08                                       ; $62e1: $cf
    ld [$7fa2], sp                                ; $62e2: $08 $a2 $7f
    db $e3                                        ; $62e5: $e3
    inc b                                         ; $62e6: $04
    ret z                                         ; $62e7: $c8

    ld [$90c0], sp                                ; $62e8: $08 $c0 $90
    ld [hl], h                                    ; $62eb: $74
    jp hl                                         ; $62ec: $e9


    ld b, b                                       ; $62ed: $40
    jp hl                                         ; $62ee: $e9


    ld a, [bc]                                    ; $62ef: $0a
    ret nz                                        ; $62f0: $c0

    push hl                                       ; $62f1: $e5
    ld b, h                                       ; $62f2: $44
    and a                                         ; $62f3: $a7
    ret nz                                        ; $62f4: $c0

    sub b                                         ; $62f5: $90
    call nz, Call_000_0085                        ; $62f6: $c4 $85 $00
    ld a, l                                       ; $62f9: $7d
    adc [hl]                                      ; $62fa: $8e
    inc d                                         ; $62fb: $14
    sbc b                                         ; $62fc: $98
    ld bc, $42ca                                  ; $62fd: $01 $ca $42
    sub l                                         ; $6300: $95
    inc d                                         ; $6301: $14
    sub l                                         ; $6302: $95
    ret nz                                        ; $6303: $c0

    adc h                                         ; $6304: $8c
    call $80aa                                    ; $6305: $cd $aa $80
    db $ed                                        ; $6308: $ed
    nop                                           ; $6309: $00
    daa                                           ; $630a: $27
    adc l                                         ; $630b: $8d
    cp a                                          ; $630c: $bf
    rst $20                                       ; $630d: $e7
    adc h                                         ; $630e: $8c
    ld [hl], l                                    ; $630f: $75
    ld a, [de]                                    ; $6310: $1a
    ret                                           ; $6311: $c9


    ld h, e                                       ; $6312: $63
    ld h, l                                       ; $6313: $65
    sbc a                                         ; $6314: $9f
    and l                                         ; $6315: $a5
    ld b, a                                       ; $6316: $47
    add h                                         ; $6317: $84
    cp a                                          ; $6318: $bf
    ld h, l                                       ; $6319: $65
    nop                                           ; $631a: $00
    ccf                                           ; $631b: $3f
    ld h, [hl]                                    ; $631c: $66
    cp e                                          ; $631d: $bb
    ld sp, hl                                     ; $631e: $f9
    db $ec                                        ; $631f: $ec
    ret nc                                        ; $6320: $d0

    ld c, l                                       ; $6321: $4d
    and a                                         ; $6322: $a7
    pop bc                                        ; $6323: $c1
    db $fd                                        ; $6324: $fd
    add hl, hl                                    ; $6325: $29
    ld h, l                                       ; $6326: $65
    ld hl, $808b                                  ; $6327: $21 $8b $80
    add sp, $00                                   ; $632a: $e8 $00
    add e                                         ; $632c: $83
    ei                                            ; $632d: $fb
    ld b, c                                       ; $632e: $41
    db $eb                                        ; $632f: $eb
    ld c, l                                       ; $6330: $4d
    ld l, b                                       ; $6331: $68
    nop                                           ; $6332: $00
    ld l, e                                       ; $6333: $6b
    ld b, c                                       ; $6334: $41
    ei                                            ; $6335: $fb
    and e                                         ; $6336: $a3
    ld h, l                                       ; $6337: $65
    rst $38                                       ; $6338: $ff
    jp nz, $8416                                  ; $6339: $c2 $16 $84

    nop                                           ; $633c: $00
    nop                                           ; $633d: $00
    ld l, e                                       ; $633e: $6b
    ld b, c                                       ; $633f: $41
    ei                                            ; $6340: $fb
    ld h, l                                       ; $6341: $65
    ld c, c                                       ; $6342: $49
    ld c, l                                       ; $6343: $4d
    add l                                         ; $6344: $85
    ld bc, $d7ff                                  ; $6345: $01 $ff $d7
    ld b, [hl]                                    ; $6348: $46
    add hl, de                                    ; $6349: $19
    ld b, [hl]                                    ; $634a: $46
    inc b                                         ; $634b: $04
    add [hl]                                      ; $634c: $86
    ld b, b                                       ; $634d: $40
    ld bc, $804c                                  ; $634e: $01 $4c $80
    rst $18                                       ; $6351: $df
    sbc h                                         ; $6352: $9c
    adc b                                         ; $6353: $88
    xor h                                         ; $6354: $ac
    and $8c                                       ; $6355: $e6 $8c
    dec h                                         ; $6357: $25
    db $fd                                        ; $6358: $fd
    cp c                                          ; $6359: $b9
    inc l                                         ; $635a: $2c
    ld h, l                                       ; $635b: $65
    ld b, [hl]                                    ; $635c: $46
    nop                                           ; $635d: $00
    ld d, l                                       ; $635e: $55
    add a                                         ; $635f: $87
    add $25                                       ; $6360: $c6 $25
    add hl, sp                                    ; $6362: $39
    ld h, $c0                                     ; $6363: $26 $c0
    ld a, [$26d4]                                 ; $6365: $fa $d4 $26
    pop de                                        ; $6368: $d1
    and l                                         ; $6369: $a5
    ld b, d                                       ; $636a: $42
    push bc                                       ; $636b: $c5
    ld [hl], h                                    ; $636c: $74
    rst $20                                       ; $636d: $e7
    nop                                           ; $636e: $00
    ret nz                                        ; $636f: $c0

    rst $38                                       ; $6370: $ff
    ret nz                                        ; $6371: $c0

    db $eb                                        ; $6372: $eb
    ld b, b                                       ; $6373: $40
    db $ec                                        ; $6374: $ec
    ccf                                           ; $6375: $3f
    db $fc                                        ; $6376: $fc
    ld a, a                                       ; $6377: $7f
    pop af                                        ; $6378: $f1
    xor d                                         ; $6379: $aa
    and a                                         ; $637a: $a7
    ld b, c                                       ; $637b: $41
    cp l                                          ; $637c: $bd
    ccf                                           ; $637d: $3f
    rst $30                                       ; $637e: $f7
    ld [$a979], sp                                ; $637f: $08 $79 $a9
    jp nz, Jump_057_4546                          ; $6382: $c2 $46 $45

    ld b, c                                       ; $6385: $41
    inc l                                         ; $6386: $2c
    ld a, [$c0e2]                                 ; $6387: $fa $e2 $c0
    ret c                                         ; $638a: $d8

    call nz, $c7e4                                ; $638b: $c4 $e4 $c7
    add l                                         ; $638e: $85
    nop                                           ; $638f: $00
    ld a, h                                       ; $6390: $7c
    jr z, jr_057_6398                             ; $6391: $28 $05

    ld b, d                                       ; $6393: $42
    rst $38                                       ; $6394: $ff
    add hl, hl                                    ; $6395: $29
    ld b, c                                       ; $6396: $41
    rst $30                                       ; $6397: $f7

jr_057_6398:
    halt                                          ; $6398: $76
    and a                                         ; $6399: $a7
    inc [hl]                                      ; $639a: $34
    ld [$22c6], sp                                ; $639b: $08 $c6 $22
    di                                            ; $639e: $f3
    ld l, l                                       ; $639f: $6d
    nop                                           ; $63a0: $00
    ld a, [de]                                    ; $63a1: $1a
    xor b                                         ; $63a2: $a8
    add [hl]                                      ; $63a3: $86
    ld b, l                                       ; $63a4: $45
    ld b, e                                       ; $63a5: $43
    ld b, $de                                     ; $63a6: $06 $de
    ld l, d                                       ; $63a8: $6a
    ld a, $23                                     ; $63a9: $3e $23
    add b                                         ; $63ab: $80
    ld a, [hl+]                                   ; $63ac: $2a
    nop                                           ; $63ad: $00
    call nc, $c8c0                                ; $63ae: $d4 $c0 $c8
    nop                                           ; $63b1: $00
    ld a, [$fdea]                                 ; $63b2: $fa $ea $fd
    ld c, $81                                     ; $63b5: $0e $81
    push de                                       ; $63b7: $d5
    ld [hl], b                                    ; $63b8: $70
    xor c                                         ; $63b9: $a9
    ld sp, hl                                     ; $63ba: $f9
    push bc                                       ; $63bb: $c5
    nop                                           ; $63bc: $00
    ld sp, $f780                                  ; $63bd: $31 $80 $f7
    inc c                                         ; $63c0: $0c
    ld b, a                                       ; $63c1: $47
    nop                                           ; $63c2: $00
    ret nz                                        ; $63c3: $c0

    add hl, de                                    ; $63c4: $19
    add b                                         ; $63c5: $80
    or h                                          ; $63c6: $b4
    ei                                            ; $63c7: $fb
    add $a3                                       ; $63c8: $c6 $a3
    add l                                         ; $63ca: $85
    ret nz                                        ; $63cb: $c0

    inc d                                         ; $63cc: $14
    daa                                           ; $63cd: $27
    sbc a                                         ; $63ce: $9f
    cp $e4                                        ; $63cf: $fe $e4
    push af                                       ; $63d1: $f5
    sbc a                                         ; $63d2: $9f
    nop                                           ; $63d3: $00
    daa                                           ; $63d4: $27
    sub e                                         ; $63d5: $93
    ld b, b                                       ; $63d6: $40
    xor c                                         ; $63d7: $a9
    ld a, a                                       ; $63d8: $7f
    rst $38                                       ; $63d9: $ff
    ld h, [hl]                                    ; $63da: $66
    ld [hl], b                                    ; $63db: $70
    daa                                           ; $63dc: $27
    call z, $ffcb                                 ; $63dd: $cc $cb $ff
    ld h, a                                       ; $63e0: $67
    cp a                                          ; $63e1: $bf
    rst $38                                       ; $63e2: $ff
    rst $38                                       ; $63e3: $ff
    nop                                           ; $63e4: $00
    ld h, a                                       ; $63e5: $67
    sub [hl]                                      ; $63e6: $96
    ret nz                                        ; $63e7: $c0

    rst $38                                       ; $63e8: $ff
    ld h, a                                       ; $63e9: $67
    xor [hl]                                      ; $63ea: $ae
    ret nz                                        ; $63eb: $c0

    ld a, [de]                                    ; $63ec: $1a
    ld a, a                                       ; $63ed: $7f
    rst $18                                       ; $63ee: $df
    add b                                         ; $63ef: $80
    ld a, [bc]                                    ; $63f0: $0a
    rst $38                                       ; $63f1: $ff
    rst $38                                       ; $63f2: $ff
    di                                            ; $63f3: $f3
    call nc, $c000                                ; $63f4: $d4 $00 $c0
    dec d                                         ; $63f7: $15
    rst $38                                       ; $63f8: $ff
    rst $38                                       ; $63f9: $ff
    rst $38                                       ; $63fa: $ff
    rst $38                                       ; $63fb: $ff
    sub [hl]                                      ; $63fc: $96
    rst $38                                       ; $63fd: $ff
    sbc c                                         ; $63fe: $99
    db $dd                                        ; $63ff: $dd
    rst $38                                       ; $6400: $ff
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    rst $38                                       ; $6403: $ff
    rst $38                                       ; $6404: $ff
    rst $38                                       ; $6405: $ff
    nop                                           ; $6406: $00
    rst $38                                       ; $6407: $ff
    rst $38                                       ; $6408: $ff
    scf                                           ; $6409: $37
    db $eb                                        ; $640a: $eb
    call c, $ffff                                 ; $640b: $dc $ff $ff
    rst $38                                       ; $640e: $ff
    rst $38                                       ; $640f: $ff
    rst $38                                       ; $6410: $ff
    rst $38                                       ; $6411: $ff
    rst $38                                       ; $6412: $ff
    rst $38                                       ; $6413: $ff
    rst $38                                       ; $6414: $ff
    rst $38                                       ; $6415: $ff
    rst $38                                       ; $6416: $ff
    nop                                           ; $6417: $00
    rst $38                                       ; $6418: $ff
    rst $38                                       ; $6419: $ff
    rst $38                                       ; $641a: $ff
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
    nop                                           ; $6428: $00
    rst $38                                       ; $6429: $ff
    rst $38                                       ; $642a: $ff
    rst $38                                       ; $642b: $ff
    rst $38                                       ; $642c: $ff
    rst $38                                       ; $642d: $ff
    rst $38                                       ; $642e: $ff
    rst $38                                       ; $642f: $ff
    rst $38                                       ; $6430: $ff
    nop                                           ; $6431: $00
    cp a                                          ; $6432: $bf
    rst $38                                       ; $6433: $ff
    rst $38                                       ; $6434: $ff
    rst $38                                       ; $6435: $ff
    rst $38                                       ; $6436: $ff
    rst $38                                       ; $6437: $ff
    rst $38                                       ; $6438: $ff
    nop                                           ; $6439: $00
    rst $38                                       ; $643a: $ff
    rst $38                                       ; $643b: $ff
    sbc c                                         ; $643c: $99
    ld d, e                                       ; $643d: $53
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    nop                                           ; $6440: $00
    rst $18                                       ; $6441: $df
    jr nz, jr_057_6464                            ; $6442: $20 $20

    inc l                                         ; $6444: $2c
    dec hl                                        ; $6445: $2b
    ld sp, $e0ff                                  ; $6446: $31 $ff $e0
    ld b, a                                       ; $6449: $47
    ld b, l                                       ; $644a: $45
    ld e, a                                       ; $644b: $5f
    ld b, l                                       ; $644c: $45
    ld b, a                                       ; $644d: $47
    ld sp, $5b60                                  ; $644e: $31 $60 $5b
    rst $38                                       ; $6451: $ff
    ld [c], a                                     ; $6452: $e2
    nop                                           ; $6453: $00
    rst $38                                       ; $6454: $ff
    rst $38                                       ; $6455: $ff
    db $fc                                        ; $6456: $fc
    rst $20                                       ; $6457: $e7
    and $c0                                       ; $6458: $e6 $c0
    db $e4                                        ; $645a: $e4
    inc a                                         ; $645b: $3c
    ld [hl], $6d                                  ; $645c: $36 $6d
    ld l, l                                       ; $645e: $6d
    ld [hl], $3c                                  ; $645f: $36 $3c
    ld [hl], d                                    ; $6461: $72
    cp a                                          ; $6462: $bf
    ld [c], a                                     ; $6463: $e2

jr_057_6464:
    ld e, d                                       ; $6464: $5a
    ret nz                                        ; $6465: $c0

    rst $38                                       ; $6466: $ff
    ret nz                                        ; $6467: $c0

    xor $49                                       ; $6468: $ee $49
    ld c, b                                       ; $646a: $48
    ld l, l                                       ; $646b: $6d
    rst $38                                       ; $646c: $ff
    ldh [$9f], a                                  ; $646d: $e0 $9f
    ld c, b                                       ; $646f: $48
    ld c, c                                       ; $6470: $49
    ld sp, $5a5f                                  ; $6471: $31 $5f $5a
    add b                                         ; $6474: $80
    rst $38                                       ; $6475: $ff
    add b                                         ; $6476: $80
    ldh a, [$39]                                  ; $6477: $f0 $39
    ld a, $c1                                     ; $6479: $3e $c1
    pop hl                                        ; $647b: $e1
    ld l, l                                       ; $647c: $6d
    ld l, l                                       ; $647d: $6d
    add hl, sp                                    ; $647e: $39
    ld sp, $405e                                  ; $647f: $31 $5e $40
    rst $38                                       ; $6482: $ff
    ld b, b                                       ; $6483: $40
    pop af                                        ; $6484: $f1
    sbc l                                         ; $6485: $9d
    ld d, e                                       ; $6486: $53
    ret nz                                        ; $6487: $c0

    db $e3                                        ; $6488: $e3
    ld d, e                                       ; $6489: $53
    ld sp, $c061                                  ; $648a: $31 $61 $c0
    rst $38                                       ; $648d: $ff
    ret nz                                        ; $648e: $c0

    rst $30                                       ; $648f: $f7
    ld l, d                                       ; $6490: $6a
    sub b                                         ; $6491: $90
    add b                                         ; $6492: $80
    pop hl                                        ; $6493: $e1
    ccf                                           ; $6494: $3f
    ldh [$ca], a                                  ; $6495: $e0 $ca
    rst $38                                       ; $6497: $ff
    ld b, b                                       ; $6498: $40
    xor $6a                                       ; $6499: $ee $6a
    pop bc                                        ; $649b: $c1
    pop hl                                        ; $649c: $e1
    nop                                           ; $649d: $00
    pop hl                                        ; $649e: $e1
    ld e, e                                       ; $649f: $5b
    rst $00                                       ; $64a0: $c7
    ld e, e                                       ; $64a1: $5b
    ld e, h                                       ; $64a2: $5c
    ld e, l                                       ; $64a3: $5d
    jp z, $c0ff                                   ; $64a4: $ca $ff $c0

    rst $08                                       ; $64a7: $cf
    cp a                                          ; $64a8: $bf
    ldh [rBCPD], a                                ; $64a9: $e0 $69
    ld d, e                                       ; $64ab: $53
    ld a, a                                       ; $64ac: $7f
    ld sp, $6031                                  ; $64ad: $31 $31 $60
    ld e, h                                       ; $64b0: $5c

jr_057_64b1:
    ld e, l                                       ; $64b1: $5d

Jump_057_64b2:
    ld sp, $ca31                                  ; $64b2: $31 $31 $ca
    rst $38                                       ; $64b5: $ff
    ld h, [hl]                                    ; $64b6: $66
    ld b, b                                       ; $64b7: $40
    adc $53                                       ; $64b8: $ce $53
    ld l, c                                       ; $64ba: $69
    add b                                         ; $64bb: $80
    db $e3                                        ; $64bc: $e3
    push af                                       ; $64bd: $f5
    and b                                         ; $64be: $a0
    ld de, $ca12                                  ; $64bf: $11 $12 $ca
    rst $38                                       ; $64c2: $ff
    add $00                                       ; $64c3: $c6 $00
    ret z                                         ; $64c5: $c8

    jr z, @+$12                                   ; $64c6: $28 $10

    add b                                         ; $64c8: $80
    push hl                                       ; $64c9: $e5
    nop                                           ; $64ca: $00
    pop hl                                        ; $64cb: $e1
    jp nz, Jump_000_21e0                          ; $64cc: $c2 $e0 $21

    ld [hl+], a                                   ; $64cf: $22
    inc a                                         ; $64d0: $3c
    jp z, $e8ff                                   ; $64d1: $ca $ff $e8

    rst $20                                       ; $64d4: $e7
    ld [hl+], a                                   ; $64d5: $22
    ld hl, $1112                                  ; $64d6: $21 $12 $11
    nop                                           ; $64d9: $00
    db $e4                                        ; $64da: $e4
    add b                                         ; $64db: $80
    pop bc                                        ; $64dc: $c1
    rra                                           ; $64dd: $1f
    ld sp, $212b                                  ; $64de: $31 $2b $21
    jr z, jr_057_6503                             ; $64e1: $28 $20

    jp z, $e8ff                                   ; $64e3: $ca $ff $e8

    rst $20                                       ; $64e6: $e7
    jp nz, $9ee1                                  ; $64e7: $c2 $e1 $9e

    ld b, b                                       ; $64ea: $40
    ret z                                         ; $64eb: $c8

    ld sp, $2c2b                                  ; $64ec: $31 $2b $2c
    jr nz, jr_057_64b1                            ; $64ef: $20 $c0

    rst $38                                       ; $64f1: $ff
    jp hl                                         ; $64f2: $e9


    add sp, $31                                   ; $64f3: $e8 $31
    adc a                                         ; $64f5: $8f
    ld sp, $5c5d                                  ; $64f6: $31 $5d $5c
    ld e, [hl]                                    ; $64f9: $5e
    ret nz                                        ; $64fa: $c0

    and a                                         ; $64fb: $a7
    ret nz                                        ; $64fc: $c0

    rst $38                                       ; $64fd: $ff
    db $ed                                        ; $64fe: $ed
    db $ec                                        ; $64ff: $ec
    ld e, l                                       ; $6500: $5d
    ld a, a                                       ; $6501: $7f
    ld e, h                                       ; $6502: $5c

jr_057_6503:
    ld e, e                                       ; $6503: $5b
    ld e, d                                       ; $6504: $5a
    ld e, a                                       ; $6505: $5f
    ld sp, $4249                                  ; $6506: $31 $49 $42
    ld b, b                                       ; $6509: $40
    and c                                         ; $650a: $a1
    ld hl, $c042                                  ; $650b: $21 $42 $c0
    ret nz                                        ; $650e: $c0

    ret nz                                        ; $650f: $c0

    rst $38                                       ; $6510: $ff
    db $ec                                        ; $6511: $ec
    db $eb                                        ; $6512: $eb
    adc [hl]                                      ; $6513: $8e
    add d                                         ; $6514: $82
    ld e, [hl]                                    ; $6515: $5e
    ret nz                                        ; $6516: $c0

    add l                                         ; $6517: $85
    ret nz                                        ; $6518: $c0

    rst $38                                       ; $6519: $ff
    db $fc                                        ; $651a: $fc
    ret nz                                        ; $651b: $c0

    xor $cf                                       ; $651c: $ee $cf
    add c                                         ; $651e: $81
    ld e, a                                       ; $651f: $5f
    ld sp, $6fa1                                  ; $6520: $31 $a1 $6f
    ld l, [hl]                                    ; $6523: $6e
    ld l, [hl]                                    ; $6524: $6e
    inc bc                                        ; $6525: $03
    ld l, a                                       ; $6526: $6f
    and c                                         ; $6527: $a1
    ret nz                                        ; $6528: $c0

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
    nop                                           ; $6534: $00
    rst $38                                       ; $6535: $ff
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
    nop                                           ; $6545: $00
    rst $38                                       ; $6546: $ff
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
    nop                                           ; $6556: $00
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
    nop                                           ; $6567: $00
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
    nop                                           ; $6578: $00
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
    nop                                           ; $6589: $00
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
    nop                                           ; $659a: $00
    rst $38                                       ; $659b: $ff
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
    nop                                           ; $65ab: $00
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
    nop                                           ; $65bc: $00
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
    nop                                           ; $65cd: $00
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
    nop                                           ; $65de: $00
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
    ld a, [$0000]                                 ; $65ea: $fa $00 $00
    nop                                           ; $65ed: $00
    and l                                         ; $65ee: $a5
    nop                                           ; $65ef: $00
    rst $38                                       ; $65f0: $ff
    push hl                                       ; $65f1: $e5
    ld [hl-], a                                   ; $65f2: $32
    or $e6                                        ; $65f3: $f6 $e6
    rst $30                                       ; $65f5: $f7
    rst $20                                       ; $65f6: $e7
    dec [hl]                                      ; $65f7: $35
    db $ec                                        ; $65f8: $ec
    xor $37                                       ; $65f9: $ee $37
    db $ec                                        ; $65fb: $ec
    jp c, $c7f0                                   ; $65fc: $da $f0 $c7

    add sp, $33                                   ; $65ff: $e8 $33
    ld sp, $f2e0                                  ; $6601: $31 $e0 $f2
    ld [hl], $30                                  ; $6604: $36 $30
    scf                                           ; $6606: $37
    cp a                                          ; $6607: $bf
    ld h, $20                                     ; $6608: $26 $20
    daa                                           ; $660a: $27
    db $10                                        ; $660b: $10
    ld d, $17                                     ; $660c: $16 $17
    jp nz, Jump_000_34f6                          ; $660e: $c2 $f6 $34

    rst $38                                       ; $6611: $ff
    ld [hl], $32                                  ; $6612: $36 $32
    jr nc, jr_057_664d                            ; $6614: $30 $37

    ld sp, $3133                                  ; $6616: $31 $33 $31
    inc sp                                        ; $6619: $33
    nop                                           ; $661a: $00
    and b                                         ; $661b: $a0
    ei                                            ; $661c: $fb
    rst $38                                       ; $661d: $ff
    rst $28                                       ; $661e: $ef
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    ld a, [hl+]                                   ; $6622: $2a
    ld h, [hl]                                    ; $6623: $66
    ld e, d                                       ; $6624: $5a
    ld h, [hl]                                    ; $6625: $66
    ld h, a                                       ; $6626: $67
    ld l, b                                       ; $6627: $68
    ld b, l                                       ; $6628: $45
    ld l, d                                       ; $6629: $6a
    ldh a, [$03]                                  ; $662a: $f0 $03
    ld c, l                                       ; $662c: $4d
    rrca                                          ; $662d: $0f
    ld b, b                                       ; $662e: $40
    ld [bc], a                                    ; $662f: $02
    ret nz                                        ; $6630: $c0

    nop                                           ; $6631: $00
    ldh a, [$03]                                  ; $6632: $f0 $03
    push af                                       ; $6634: $f5
    inc bc                                        ; $6635: $03
    ld c, b                                       ; $6636: $48
    rrca                                          ; $6637: $0f
    ld b, b                                       ; $6638: $40
    ld [bc], a                                    ; $6639: $02
    ld e, a                                       ; $663a: $5f
    dec sp                                        ; $663b: $3b
    jr c, @+$10                                   ; $663c: $38 $0e

    ld sp, $4819                                  ; $663e: $31 $19 $48
    rrca                                          ; $6641: $0f
    ld [$0825], sp                                ; $6642: $08 $25 $08
    dec h                                         ; $6645: $25
    ld [$0825], sp                                ; $6646: $08 $25 $08
    dec h                                         ; $6649: $25
    ld [$0825], sp                                ; $664a: $08 $25 $08

jr_057_664d:
    dec h                                         ; $664d: $25
    ld [$0825], sp                                ; $664e: $08 $25 $08
    dec h                                         ; $6651: $25
    ld [$0825], sp                                ; $6652: $08 $25 $08
    dec h                                         ; $6655: $25
    ld [$0825], sp                                ; $6656: $08 $25 $08
    dec h                                         ; $6659: $25
    rst $38                                       ; $665a: $ff
    ld a, [bc]                                    ; $665b: $0a
    dec bc                                        ; $665c: $0b
    dec hl                                        ; $665d: $2b
    dec bc                                        ; $665e: $0b
    inc c                                         ; $665f: $0c
    ld c, h                                       ; $6660: $4c
    inc c                                         ; $6661: $0c
    inc c                                         ; $6662: $0c
    ld e, a                                       ; $6663: $5f
    inc c                                         ; $6664: $0c
    ld l, h                                       ; $6665: $6c
    ld l, h                                       ; $6666: $6c
    ld l, h                                       ; $6667: $6c
    dec bc                                        ; $6668: $0b
    rst $38                                       ; $6669: $ff
    ldh [$4c], a                                  ; $666a: $e0 $4c
    db $f4                                        ; $666c: $f4
    pop hl                                        ; $666d: $e1
    ld h, h                                       ; $666e: $64
    rst $38                                       ; $666f: $ff
    rst $38                                       ; $6670: $ff
    rst $20                                       ; $6671: $e7
    and $0b                                       ; $6672: $e6 $0b
    ret nz                                        ; $6674: $c0

    db $e4                                        ; $6675: $e4
    pop bc                                        ; $6676: $c1
    db $e4                                        ; $6677: $e4
    dec bc                                        ; $6678: $0b
    inc l                                         ; $6679: $2c
    ret nz                                        ; $667a: $c0

    rst $38                                       ; $667b: $ff
    ld a, [$ebc0]                                 ; $667c: $fa $c0 $eb
    ld a, [bc]                                    ; $667f: $0a
    add b                                         ; $6680: $80
    ldh [$0c], a                                  ; $6681: $e0 $0c
    ld c, h                                       ; $6683: $4c
    ld c, h                                       ; $6684: $4c
    ld l, h                                       ; $6685: $6c
    ld l, h                                       ; $6686: $6c
    cp a                                          ; $6687: $bf
    ld l, e                                       ; $6688: $6b
    dec bc                                        ; $6689: $0b
    ld l, e                                       ; $668a: $6b
    ld l, e                                       ; $668b: $6b
    ld c, e                                       ; $668c: $4b
    ld c, e                                       ; $668d: $4b
    ld a, a                                       ; $668e: $7f
    db $e3                                        ; $668f: $e3
    inc l                                         ; $6690: $2c
    or h                                          ; $6691: $b4
    rst $00                                       ; $6692: $c7
    xor $68                                       ; $6693: $ee $68
    ldh [$2c], a                                  ; $6695: $e0 $2c
    ld [$0cef], a                                 ; $6697: $ea $ef $0c
    inc c                                         ; $669a: $0c
    ld b, b                                       ; $669b: $40
    pop hl                                        ; $669c: $e1
    ld c, h                                       ; $669d: $4c
    halt                                          ; $669e: $76
    rst $38                                       ; $669f: $ff
    ldh [$6c], a                                  ; $66a0: $e0 $6c
    ld l, e                                       ; $66a2: $6b
    rst $38                                       ; $66a3: $ff
    ldh [$0b], a                                  ; $66a4: $e0 $0b
    dec bc                                        ; $66a6: $0b
    ld l, e                                       ; $66a7: $6b
    ld a, a                                       ; $66a8: $7f
    db $e3                                        ; $66a9: $e3
    jr nz, @-$28                                  ; $66aa: $20 $d6

    pop af                                        ; $66ac: $f1
    ld b, b                                       ; $66ad: $40
    rst $30                                       ; $66ae: $f7
    ld [$c2e1], sp                                ; $66af: $08 $e1 $c2
    ld [c], a                                     ; $66b2: $e2
    rst $38                                       ; $66b3: $ff
    pop bc                                        ; $66b4: $c1
    ld l, h                                       ; $66b5: $6c
    call z, $80f6                                 ; $66b6: $cc $f6 $80
    push hl                                       ; $66b9: $e5
    ld [hl+], a                                   ; $66ba: $22
    ld sp, hl                                     ; $66bb: $f9
    ld [$8b0a], a                                 ; $66bc: $ea $0a $8b
    pop hl                                        ; $66bf: $e1
    ld c, b                                       ; $66c0: $48
    ldh [$c2], a                                  ; $66c1: $e0 $c2
    db $e4                                        ; $66c3: $e4
    dec bc                                        ; $66c4: $0b
    inc sp                                        ; $66c5: $33
    ldh [rLCDC], a                                ; $66c6: $e0 $40
    jp hl                                         ; $66c8: $e9


    jr c, @-$0c                                   ; $66c9: $38 $f2

    ret                                           ; $66cb: $c9


    ld b, b                                       ; $66cc: $40
    ld a, [c]                                     ; $66cd: $f2
    ld c, [hl]                                    ; $66ce: $4e
    ldh [rOCPD], a                                ; $66cf: $e0 $6b
    ld l, e                                       ; $66d1: $6b
    dec hl                                        ; $66d2: $2b
    ld a, h                                       ; $66d3: $7c
    db $e3                                        ; $66d4: $e3
    add b                                         ; $66d5: $80
    ret nz                                        ; $66d6: $c0

    pop bc                                        ; $66d7: $c1
    dec hl                                        ; $66d8: $2b
    add c                                         ; $66d9: $81
    ld [c], a                                     ; $66da: $e2
    ld d, $f2                                     ; $66db: $16 $f2
    db $f4                                        ; $66dd: $f4
    di                                            ; $66de: $f3
    pop bc                                        ; $66df: $c1
    db $e3                                        ; $66e0: $e3
    cp a                                          ; $66e1: $bf
    db $e4                                        ; $66e2: $e4
    ld l, e                                       ; $66e3: $6b
    dec bc                                        ; $66e4: $0b
    ld h, c                                       ; $66e5: $61
    ld c, e                                       ; $66e6: $4b
    sub [hl]                                      ; $66e7: $96
    rst $30                                       ; $66e8: $f7
    ret nz                                        ; $66e9: $c0

    or $c1                                        ; $66ea: $f6 $c1
    pop hl                                        ; $66ec: $e1
    ld a, [hl]                                    ; $66ed: $7e
    db $e4                                        ; $66ee: $e4
    ld c, e                                       ; $66ef: $4b
    ld c, e                                       ; $66f0: $4b
    ld c, [hl]                                    ; $66f1: $4e
    rst $20                                       ; $66f2: $e7
    inc h                                         ; $66f3: $24
    ld a, h                                       ; $66f4: $7c
    rst $18                                       ; $66f5: $df
    nop                                           ; $66f6: $00
    jp Jump_057_420b                              ; $66f7: $c3 $0b $42


    pop hl                                        ; $66fa: $e1
    ld a, [hl]                                    ; $66fb: $7e
    db $e3                                        ; $66fc: $e3
    ld c, e                                       ; $66fd: $4b
    ret nz                                        ; $66fe: $c0

    db $e4                                        ; $66ff: $e4
    add b                                         ; $6700: $80
    rst $38                                       ; $6701: $ff
    ld [bc], a                                    ; $6702: $02
    ret nz                                        ; $6703: $c0

    db $ed                                        ; $6704: $ed
    ld c, e                                       ; $6705: $4b
    inc a                                         ; $6706: $3c
    ldh [$7f], a                                  ; $6707: $e0 $7f
    jp nz, $e3c0                                  ; $6709: $c2 $c0 $e3

    ret z                                         ; $670c: $c8

    ld sp, hl                                     ; $670d: $f9
    ld l, b                                       ; $670e: $68
    ld [c], a                                     ; $670f: $e2
    ld h, e                                       ; $6710: $63
    and $08                                       ; $6711: $e6 $08
    add b                                         ; $6713: $80
    ld [c], a                                     ; $6714: $e2
    dec a                                         ; $6715: $3d
    pop bc                                        ; $6716: $c1
    db $fc                                        ; $6717: $fc
    call nz, Call_000_3a4c                        ; $6718: $c4 $4c $3a
    and b                                         ; $671b: $a0
    ccf                                           ; $671c: $3f
    rst $38                                       ; $671d: $ff
    ld b, b                                       ; $671e: $40
    db $ec                                        ; $671f: $ec
    add b                                         ; $6720: $80
    ret nz                                        ; $6721: $c0

    ld [$c5bd], sp                                ; $6722: $08 $bd $c5
    push af                                       ; $6725: $f5
    and c                                         ; $6726: $a1
    sub [hl]                                      ; $6727: $96
    and d                                         ; $6728: $a2
    inc l                                         ; $6729: $2c
    cp e                                          ; $672a: $bb
    cp a                                          ; $672b: $bf
    nop                                           ; $672c: $00
    and e                                         ; $672d: $a3
    ld b, l                                       ; $672e: $45
    pop hl                                        ; $672f: $e1
    ld a, [hl]                                    ; $6730: $7e
    pop bc                                        ; $6731: $c1
    ld c, h                                       ; $6732: $4c
    ret nz                                        ; $6733: $c0

    and c                                         ; $6734: $a1
    rst $30                                       ; $6735: $f7
    and c                                         ; $6736: $a1
    ld l, e                                       ; $6737: $6b
    dec bc                                        ; $6738: $0b
    add [hl]                                      ; $6739: $86
    ld [c], a                                     ; $673a: $e2
    jp nz, Jump_000_2cf4                          ; $673b: $c2 $f4 $2c

    rst $38                                       ; $673e: $ff
    ldh [$38], a                                  ; $673f: $e0 $38
    ld a, [$80e5]                                 ; $6741: $fa $e5 $80
    add sp, -$02                                  ; $6744: $e8 $fe
    and e                                         ; $6746: $a3
    ld l, e                                       ; $6747: $6b
    ld l, e                                       ; $6748: $6b
    ld a, [bc]                                    ; $6749: $0a
    cp l                                          ; $674a: $bd
    and d                                         ; $674b: $a2
    ld d, $a3                                     ; $674c: $16 $a3
    jr nz, @-$43                                  ; $674e: $20 $bb

    or h                                          ; $6750: $b4
    ret nz                                        ; $6751: $c0

    xor $7e                                       ; $6752: $ee $7e
    jp $c201                                      ; $6754: $c3 $01 $c2


    ld a, l                                       ; $6757: $7d
    add d                                         ; $6758: $82
    ld a, [bc]                                    ; $6759: $0a
    sub a                                         ; $675a: $97
    push hl                                       ; $675b: $e5
    ld a, e                                       ; $675c: $7b
    or c                                          ; $675d: $b1
    nop                                           ; $675e: $00
    jp hl                                         ; $675f: $e9


    jp nz, $e781                                  ; $6760: $c2 $81 $e7

    ld d, $b7                                     ; $6763: $16 $b7
    db $dd                                        ; $6765: $dd
    db $f4                                        ; $6766: $f4
    ld b, c                                       ; $6767: $41
    db $ec                                        ; $6768: $ec
    ld e, l                                       ; $6769: $5d
    ret c                                         ; $676a: $d8

    cp e                                          ; $676b: $bb
    sbc e                                         ; $676c: $9b
    jp Jump_000_00ff                              ; $676d: $c3 $ff $00


    ld de, $c192                                  ; $6770: $11 $92 $c1
    jp nz, $c1bc                                  ; $6773: $c2 $bc $c1

    ld h, c                                       ; $6776: $61
    add $1a                                       ; $6777: $c6 $1a
    adc $c0                                       ; $6779: $ce $c0
    and $f9                                       ; $677b: $e6 $f9
    or c                                          ; $677d: $b1
    ret nz                                        ; $677e: $c0

    rst $38                                       ; $677f: $ff
    nop                                           ; $6780: $00
    call nz, $84ba                                ; $6781: $c4 $ba $84
    db $e3                                        ; $6784: $e3
    rst $38                                       ; $6785: $ff
    call nc, $a990                                ; $6786: $d4 $90 $a9
    call nz, $c0b6                                ; $6789: $c4 $b6 $c0
    xor $9a                                       ; $678c: $ee $9a
    cp a                                          ; $678e: $bf
    cp a                                          ; $678f: $bf
    ld a, d                                       ; $6790: $7a
    nop                                           ; $6791: $00
    db $eb                                        ; $6792: $eb
    ld c, b                                       ; $6793: $48
    and [hl]                                      ; $6794: $a6
    rst $18                                       ; $6795: $df
    add [hl]                                      ; $6796: $86
    and [hl]                                      ; $6797: $a6
    add b                                         ; $6798: $80
    and a                                         ; $6799: $a7
    xor e                                         ; $679a: $ab
    ld b, a                                       ; $679b: $47
    ld h, [hl]                                    ; $679c: $66
    rst $18                                       ; $679d: $df
    ld b, b                                       ; $679e: $40
    ld a, [c]                                     ; $679f: $f2
    halt                                          ; $67a0: $76
    rst $38                                       ; $67a1: $ff
    nop                                           ; $67a2: $00
    jp nz, Jump_000_09c7                          ; $67a3: $c2 $c7 $09

    and l                                         ; $67a6: $a5
    ld c, e                                       ; $67a7: $4b
    jp hl                                         ; $67a8: $e9


    ld a, [de]                                    ; $67a9: $1a
    jp nc, $f784                                  ; $67aa: $d2 $84 $f7

    ret nz                                        ; $67ad: $c0

    xor $13                                       ; $67ae: $ee $13
    add [hl]                                      ; $67b0: $86
    ld b, b                                       ; $67b1: $40
    db $fd                                        ; $67b2: $fd
    nop                                           ; $67b3: $00
    add c                                         ; $67b4: $81
    rst $20                                       ; $67b5: $e7
    and $69                                       ; $67b6: $e6 $69
    nop                                           ; $67b8: $00
    add sp, -$20                                  ; $67b9: $e8 $e0
    adc b                                         ; $67bb: $88
    add [hl]                                      ; $67bc: $86
    sub l                                         ; $67bd: $95
    ret nz                                        ; $67be: $c0

    ldh a, [$03]                                  ; $67bf: $f0 $03
    pop de                                        ; $67c1: $d1
    add [hl]                                      ; $67c2: $86
    sub h                                         ; $67c3: $94
    nop                                           ; $67c4: $00
    ld de, $dcbb                                  ; $67c5: $11 $bb $dc
    sbc l                                         ; $67c8: $9d
    ld b, b                                       ; $67c9: $40
    di                                            ; $67ca: $f3
    ld a, [bc]                                    ; $67cb: $0a
    rst $18                                       ; $67cc: $df
    nop                                           ; $67cd: $00
    db $ec                                        ; $67ce: $ec
    inc h                                         ; $67cf: $24
    ld h, h                                       ; $67d0: $64
    ret                                           ; $67d1: $c9


    ld sp, hl                                     ; $67d2: $f9
    add [hl]                                      ; $67d3: $86
    sub l                                         ; $67d4: $95
    nop                                           ; $67d5: $00
    ld bc, $15d2                                  ; $67d6: $01 $d2 $15
    jr nc, @-$78                                  ; $67d9: $30 $86

    sub l                                         ; $67db: $95
    ld [$c166], sp                                ; $67dc: $08 $66 $c1
    jp hl                                         ; $67df: $e9


    call nc, $87df                                ; $67e0: $d4 $df $87
    ld l, $81                                     ; $67e3: $2e $81
    ld [$5a00], a                                 ; $67e5: $ea $00 $5a
    ld [hl], h                                    ; $67e8: $74
    ldh a, [$df]                                  ; $67e9: $f0 $df
    sub [hl]                                      ; $67eb: $96
    sbc a                                         ; $67ec: $9f
    xor [hl]                                      ; $67ed: $ae
    push af                                       ; $67ee: $f5
    add b                                         ; $67ef: $80
    cp $22                                        ; $67f0: $fe $22
    ld b, h                                       ; $67f2: $44
    ld c, b                                       ; $67f3: $48
    ld c, e                                       ; $67f4: $4b
    ret nz                                        ; $67f5: $c0

    db $f4                                        ; $67f6: $f4
    nop                                           ; $67f7: $00
    call nc, $c2d6                                ; $67f8: $d4 $d6 $c2
    cp a                                          ; $67fb: $bf
    ld b, b                                       ; $67fc: $40
    rst $38                                       ; $67fd: $ff
    ld c, h                                       ; $67fe: $4c
    di                                            ; $67ff: $f3
    inc d                                         ; $6800: $14
    rst $18                                       ; $6801: $df
    ret nz                                        ; $6802: $c0

    rst $38                                       ; $6803: $ff
    ld b, b                                       ; $6804: $40
    rst $38                                       ; $6805: $ff
    pop bc                                        ; $6806: $c1
    rst $38                                       ; $6807: $ff
    nop                                           ; $6808: $00
    ld b, l                                       ; $6809: $45
    ei                                            ; $680a: $fb
    ld c, b                                       ; $680b: $48
    ld c, a                                       ; $680c: $4f
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    ret nz                                        ; $680f: $c0

    or $ff                                        ; $6810: $f6 $ff
    rst $38                                       ; $6812: $ff
    jp $da9f                                      ; $6813: $c3 $9f $da


    rst $38                                       ; $6816: $ff
    ld b, e                                       ; $6817: $43
    sbc e                                         ; $6818: $9b
    nop                                           ; $6819: $00
    call nz, $c0ff                                ; $681a: $c4 $ff $c0
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    ld d, $ff                                     ; $6822: $16 $ff
    jp c, $80ff                                   ; $6824: $da $ff $80

    ld a, a                                       ; $6827: $7f
    rst $38                                       ; $6828: $ff
    rst $38                                       ; $6829: $ff
    nop                                           ; $682a: $00
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    rst $38                                       ; $682e: $ff
    or a                                          ; $682f: $b7
    rst $18                                       ; $6830: $df
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
    nop                                           ; $683b: $00
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
    nop                                           ; $684c: $00
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    rst $38                                       ; $6850: $ff
    rst $38                                       ; $6851: $ff
    rst $38                                       ; $6852: $ff
    rst $38                                       ; $6853: $ff
    rst $38                                       ; $6854: $ff
    nop                                           ; $6855: $00
    cp a                                          ; $6856: $bf
    rst $38                                       ; $6857: $ff
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    nop                                           ; $685d: $00
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    rst $38                                       ; $6861: $ff
    rst $38                                       ; $6862: $ff
    xor $00                                       ; $6863: $ee $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    rst $38                                       ; $6867: $ff
    ld e, d                                       ; $6868: $5a
    ld e, e                                       ; $6869: $5b
    ld h, c                                       ; $686a: $61
    ld sp, $102b                                  ; $686b: $31 $2b $10
    jr nz, @+$22                                  ; $686e: $20 $20

    rst $18                                       ; $6870: $df
    jr nz, jr_057_6883                            ; $6871: $20 $10

    daa                                           ; $6873: $27
    add hl, hl                                    ; $6874: $29
    ld sp, $e0ff                                  ; $6875: $31 $ff $e0
    rla                                           ; $6878: $17
    jr z, @+$29                                   ; $6879: $28 $27

    jr nz, jr_057_689d                            ; $687b: $20 $20

    nop                                           ; $687d: $00
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    rst $20                                       ; $6880: $e7
    and $5b                                       ; $6881: $e6 $5b

jr_057_6883:
    ret nz                                        ; $6883: $c0

    db $e4                                        ; $6884: $e4
    pop bc                                        ; $6885: $c1
    db $e4                                        ; $6886: $e4
    and a                                         ; $6887: $a7
    ld sp, $1615                                  ; $6888: $31 $15 $16
    ret nz                                        ; $688b: $c0

    rst $38                                       ; $688c: $ff
    ret nz                                        ; $688d: $c0

    ld [$805a], a                                 ; $688e: $ea $5a $80
    ldh [rNR21], a                                ; $6891: $e0 $16
    ld a, e                                       ; $6893: $7b
    inc h                                         ; $6894: $24
    inc h                                         ; $6895: $24
    add d                                         ; $6896: $82
    pop hl                                        ; $6897: $e1
    ld b, a                                       ; $6898: $47
    ld b, [hl]                                    ; $6899: $46
    ld d, h                                       ; $689a: $54
    inc a                                         ; $689b: $3c
    ld a, a                                       ; $689c: $7f

jr_057_689d:
    pop hl                                        ; $689d: $e1
    ld hl, sp-$36                                 ; $689e: $f8 $ca
    rst $38                                       ; $68a0: $ff
    add sp, -$19                                  ; $68a1: $e8 $e7
    ld b, b                                       ; $68a3: $40
    pop hl                                        ; $68a4: $e1
    add hl, hl                                    ; $68a5: $29
    inc d                                         ; $68a6: $14
    inc d                                         ; $68a7: $14
    inc d                                         ; $68a8: $14
    add hl, hl                                    ; $68a9: $29
    ld e, $c2                                     ; $68aa: $1e $c2
    ldh [$36], a                                  ; $68ac: $e0 $36
    ld l, e                                       ; $68ae: $6b
    ld l, e                                       ; $68af: $6b
    ld d, d                                       ; $68b0: $52
    ld a, a                                       ; $68b1: $7f
    pop hl                                        ; $68b2: $e1
    jp z, Jump_057_40ff                           ; $68b3: $ca $ff $40

    db $eb                                        ; $68b6: $eb
    sbc h                                         ; $68b7: $9c
    ld [$c2e1], sp                                ; $68b8: $08 $e1 $c2
    ld [c], a                                     ; $68bb: $e2
    ld l, e                                       ; $68bc: $6b
    ld l, e                                       ; $68bd: $6b
    add hl, sp                                    ; $68be: $39
    ret nz                                        ; $68bf: $c0

    rst $38                                       ; $68c0: $ff
    add b                                         ; $68c1: $80
    db $ec                                        ; $68c2: $ec
    ld e, a                                       ; $68c3: $5f
    halt                                          ; $68c4: $76
    ld c, b                                       ; $68c5: $48
    pop hl                                        ; $68c6: $e1
    ld d, l                                       ; $68c7: $55
    ld d, h                                       ; $68c8: $54
    jp nz, $6be2                                  ; $68c9: $c2 $e2 $6b

    ld c, b                                       ; $68cc: $48
    ld c, c                                       ; $68cd: $49
    ld b, b                                       ; $68ce: $40
    rst $38                                       ; $68cf: $ff
    cp $c0                                        ; $68d0: $fe $c0
    call z, Call_000_315e                         ; $68d2: $cc $5e $31
    inc a                                         ; $68d5: $3c
    ld [hl], $69                                  ; $68d6: $36 $69
    ld l, c                                       ; $68d8: $69
    ld h, a                                       ; $68d9: $67
    pop hl                                        ; $68da: $e1
    ld h, a                                       ; $68db: $67
    ret nz                                        ; $68dc: $c0

    ld [c], a                                     ; $68dd: $e2
    add c                                         ; $68de: $81
    ld [c], a                                     ; $68df: $e2
    ret nz                                        ; $68e0: $c0

    rst $38                                       ; $68e1: $ff
    jp hl                                         ; $68e2: $e9


    add sp, $5f                                   ; $68e3: $e8 $5f
    ld sp, $6f49                                  ; $68e5: $31 $49 $6f
    ld c, b                                       ; $68e8: $48
    ld l, c                                       ; $68e9: $69
    ld l, e                                       ; $68ea: $6b
    ld l, e                                       ; $68eb: $6b
    cp a                                          ; $68ec: $bf
    db $e3                                        ; $68ed: $e3
    ld [hl], a                                    ; $68ee: $77
    ld b, e                                       ; $68ef: $43
    ld b, b                                       ; $68f0: $40
    rst $18                                       ; $68f1: $df
    adc $ed                                       ; $68f2: $ce $ed
    db $ec                                        ; $68f4: $ec
    ld e, [hl]                                    ; $68f5: $5e
    ld sp, $c139                                  ; $68f6: $31 $39 $c1
    ldh [$bf], a                                  ; $68f9: $e0 $bf
    db $e3                                        ; $68fb: $e3
    ld c, b                                       ; $68fc: $48
    inc a                                         ; $68fd: $3c
    pop af                                        ; $68fe: $f1
    ld sp, $a2f4                                  ; $68ff: $31 $f4 $a2
    jp z, $e8ff                                   ; $6902: $ca $ff $e8

    rst $20                                       ; $6905: $e7
    ld sp, $5231                                  ; $6906: $31 $31 $52
    ld l, c                                       ; $6909: $69
    rla                                           ; $690a: $17
    ld l, e                                       ; $690b: $6b
    jr nc, jr_057_693e                            ; $690c: $30 $30

    ld a, [hl]                                    ; $690e: $7e
    ld [c], a                                     ; $690f: $e2
    add hl, sp                                    ; $6910: $39
    cp a                                          ; $6911: $bf
    and b                                         ; $6912: $a0
    ret nz                                        ; $6913: $c0

    rst $38                                       ; $6914: $ff
    ret nz                                        ; $6915: $c0

    ld a, [c]                                     ; $6916: $f2
    sbc b                                         ; $6917: $98
    cp a                                          ; $6918: $bf
    pop hl                                        ; $6919: $e1
    ld b, d                                       ; $691a: $42
    ldh [$c0], a                                  ; $691b: $e0 $c0
    pop hl                                        ; $691d: $e1
    ld a, [bc]                                    ; $691e: $0a
    dec bc                                        ; $691f: $0b
    jp z, $e8ff                                   ; $6920: $ca $ff $e8

    rst $20                                       ; $6923: $e7
    and h                                         ; $6924: $a4
    ld e, c                                       ; $6925: $59
    and h                                         ; $6926: $a4
    add b                                         ; $6927: $80
    ldh [$bf], a                                  ; $6928: $e0 $bf
    ld [c], a                                     ; $692a: $e2
    ld l, c                                       ; $692b: $69
    ld d, d                                       ; $692c: $52
    ld b, b                                       ; $692d: $40
    and c                                         ; $692e: $a1
    add hl, hl                                    ; $692f: $29
    ld a, [hl-]                                   ; $6930: $3a
    and b                                         ; $6931: $a0
    inc l                                         ; $6932: $2c
    jp z, $e8ff                                   ; $6933: $ca $ff $e8

    rst $20                                       ; $6936: $e7
    add b                                         ; $6937: $80
    add b                                         ; $6938: $80
    ret nz                                        ; $6939: $c0

    pop hl                                        ; $693a: $e1
    ld l, e                                       ; $693b: $6b
    ccf                                           ; $693c: $3f
    pop hl                                        ; $693d: $e1

jr_057_693e:
    ld b, c                                       ; $693e: $41
    pop hl                                        ; $693f: $e1
    sub d                                         ; $6940: $92
    db $fd                                        ; $6941: $fd
    add c                                         ; $6942: $81
    ld e, l                                       ; $6943: $5d
    jp z, $c0ff                                   ; $6944: $ca $ff $c0

    jp hl                                         ; $6947: $e9


    ld [hl], d                                    ; $6948: $72
    ld b, c                                       ; $6949: $41
    ret nz                                        ; $694a: $c0

    cp a                                          ; $694b: $bf
    pop bc                                        ; $694c: $c1
    ld b, d                                       ; $694d: $42
    rst $38                                       ; $694e: $ff
    ld c, c                                       ; $694f: $49
    ld sp, $6031                                  ; $6950: $31 $31 $60
    ld e, h                                       ; $6953: $5c
    ld e, l                                       ; $6954: $5d
    ld e, l                                       ; $6955: $5d
    ld e, h                                       ; $6956: $5c
    cp c                                          ; $6957: $b9
    ld e, e                                       ; $6958: $5b
    jp z, $80ff                                   ; $6959: $ca $ff $80

    jp hl                                         ; $695c: $e9


    add b                                         ; $695d: $80
    ld l, a                                       ; $695e: $6f
    ld l, [hl]                                    ; $695f: $6e
    rst $38                                       ; $6960: $ff
    and b                                         ; $6961: $a0
    ld l, c                                       ; $6962: $69
    dec a                                         ; $6963: $3d
    ld b, h                                       ; $6964: $44
    add e                                         ; $6965: $83
    ret nz                                        ; $6966: $c0

    ld h, b                                       ; $6967: $60
    ld e, e                                       ; $6968: $5b
    ld e, d                                       ; $6969: $5a
    ld e, e                                       ; $696a: $5b
    rst $38                                       ; $696b: $ff
    ldh [$ca], a                                  ; $696c: $e0 $ca
    rst $38                                       ; $696e: $ff
    xor h                                         ; $696f: $ac
    ret nz                                        ; $6970: $c0

    ld [$e1be], a                                 ; $6971: $ea $be $e1
    ld d, h                                       ; $6974: $54
    ld b, l                                       ; $6975: $45
    jp Jump_057_60c0                              ; $6976: $c3 $c0 $60


    jp Jump_057_5be1                              ; $6979: $c3 $e1 $5b


    inc bc                                        ; $697c: $03
    ld e, e                                       ; $697d: $5b
    ld e, d                                       ; $697e: $5a
    jp z, $ffff                                   ; $697f: $ca $ff $ff

    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    nop                                           ; $698b: $00
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
    nop                                           ; $699c: $00
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
    nop                                           ; $69ad: $00
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
    nop                                           ; $69be: $00
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
    nop                                           ; $69cf: $00
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
    nop                                           ; $69e0: $00
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
    nop                                           ; $69f1: $00
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
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    nop                                           ; $6a02: $00
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
    nop                                           ; $6a13: $00
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
    nop                                           ; $6a24: $00
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
    nop                                           ; $6a35: $00
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
    di                                            ; $6a41: $f3
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    and l                                         ; $6a45: $a5
    nop                                           ; $6a46: $00
    rst $38                                       ; $6a47: $ff
    push hl                                       ; $6a48: $e5
    ld [hl-], a                                   ; $6a49: $32
    or $e6                                        ; $6a4a: $f6 $e6
    rst $30                                       ; $6a4c: $f7
    rst $20                                       ; $6a4d: $e7
    dec [hl]                                      ; $6a4e: $35
    db $ec                                        ; $6a4f: $ec
    xor $37                                       ; $6a50: $ee $37
    db $ec                                        ; $6a52: $ec
    jp c, $c7f0                                   ; $6a53: $da $f0 $c7

    add sp, $33                                   ; $6a56: $e8 $33
    ld sp, $f2e0                                  ; $6a58: $31 $e0 $f2
    ld [hl], $30                                  ; $6a5b: $36 $30
    scf                                           ; $6a5d: $37
    cp a                                          ; $6a5e: $bf
    ld h, $20                                     ; $6a5f: $26 $20
    daa                                           ; $6a61: $27
    db $10                                        ; $6a62: $10
    ld d, $17                                     ; $6a63: $16 $17
    jp nz, Jump_000_34f6                          ; $6a65: $c2 $f6 $34

    rst $38                                       ; $6a68: $ff
    ld [hl], $32                                  ; $6a69: $36 $32
    jr nc, jr_057_6aa4                            ; $6a6b: $30 $37

    ld sp, $3133                                  ; $6a6d: $31 $33 $31
    inc sp                                        ; $6a70: $33
    nop                                           ; $6a71: $00
    and b                                         ; $6a72: $a0
    ei                                            ; $6a73: $fb
    rst $38                                       ; $6a74: $ff
    rst $28                                       ; $6a75: $ef
    nop                                           ; $6a76: $00
    nop                                           ; $6a77: $00
    nop                                           ; $6a78: $00
    add c                                         ; $6a79: $81
    ld l, d                                       ; $6a7a: $6a
    or c                                          ; $6a7b: $b1
    ld l, d                                       ; $6a7c: $6a
    and h                                         ; $6a7d: $a4
    ld l, l                                       ; $6a7e: $6d
    or c                                          ; $6a7f: $b1
    ld l, a                                       ; $6a80: $6f
    ldh a, [$03]                                  ; $6a81: $f0 $03
    ld c, l                                       ; $6a83: $4d
    rrca                                          ; $6a84: $0f
    ld b, b                                       ; $6a85: $40
    ld [bc], a                                    ; $6a86: $02
    ret nz                                        ; $6a87: $c0

    nop                                           ; $6a88: $00
    ldh a, [$03]                                  ; $6a89: $f0 $03
    push af                                       ; $6a8b: $f5
    inc bc                                        ; $6a8c: $03
    ld c, b                                       ; $6a8d: $48
    rrca                                          ; $6a8e: $0f
    ld b, b                                       ; $6a8f: $40
    ld [bc], a                                    ; $6a90: $02
    ld e, a                                       ; $6a91: $5f
    dec sp                                        ; $6a92: $3b
    jr c, @+$10                                   ; $6a93: $38 $0e

    ld sp, $4819                                  ; $6a95: $31 $19 $48
    rrca                                          ; $6a98: $0f
    ld [$0825], sp                                ; $6a99: $08 $25 $08
    dec h                                         ; $6a9c: $25
    ld [$0825], sp                                ; $6a9d: $08 $25 $08
    dec h                                         ; $6aa0: $25
    ld [$0825], sp                                ; $6aa1: $08 $25 $08

jr_057_6aa4:
    dec h                                         ; $6aa4: $25
    ld [$0825], sp                                ; $6aa5: $08 $25 $08
    dec h                                         ; $6aa8: $25
    ld [$0825], sp                                ; $6aa9: $08 $25 $08
    dec h                                         ; $6aac: $25
    ld [$0825], sp                                ; $6aad: $08 $25 $08
    dec h                                         ; $6ab0: $25
    ld a, l                                       ; $6ab1: $7d
    inc c                                         ; $6ab2: $0c
    rst $38                                       ; $6ab3: $ff
    ldh [$0b], a                                  ; $6ab4: $e0 $0b
    dec bc                                        ; $6ab6: $0b
    ld l, e                                       ; $6ab7: $6b
    ld l, e                                       ; $6ab8: $6b
    ld c, e                                       ; $6ab9: $4b
    rst $38                                       ; $6aba: $ff
    db $e3                                        ; $6abb: $e3
    ld a, a                                       ; $6abc: $7f
    dec bc                                        ; $6abd: $0b
    dec hl                                        ; $6abe: $2b
    dec bc                                        ; $6abf: $0b
    dec bc                                        ; $6ac0: $0b
    dec bc                                        ; $6ac1: $0b
    inc c                                         ; $6ac2: $0c
    ld c, h                                       ; $6ac3: $4c
    ld [$00e0], a                                 ; $6ac4: $ea $e0 $00
    db $fc                                        ; $6ac7: $fc
    ldh [$f9], a                                  ; $6ac8: $e0 $f9
    pop hl                                        ; $6aca: $e1
    ld hl, sp-$1e                                 ; $6acb: $f8 $e2
    ldh a, [$e2]                                  ; $6acd: $f0 $e2
    ld a, [c]                                     ; $6acf: $f2
    ld [c], a                                     ; $6ad0: $e2
    db $fc                                        ; $6ad1: $fc
    ld a, [c]                                     ; $6ad2: $f2
    pop bc                                        ; $6ad3: $c1
    ldh [$c9], a                                  ; $6ad4: $e0 $c9
    pop hl                                        ; $6ad6: $e1
    ldh [$c6], a                                  ; $6ad7: $e0 $c6
    ldh [$bf], a                                  ; $6ad9: $e0 $bf
    db $e3                                        ; $6adb: $e3
    call nz, $ffe7                                ; $6adc: $c4 $e7 $ff
    ld [c], a                                     ; $6adf: $e2
    ld sp, hl                                     ; $6ae0: $f9
    db $e4                                        ; $6ae1: $e4
    ld c, h                                       ; $6ae2: $4c
    inc c                                         ; $6ae3: $0c
    inc l                                         ; $6ae4: $2c
    ld a, [bc]                                    ; $6ae5: $0a
    cp [hl]                                       ; $6ae6: $be
    ld a, [c]                                     ; $6ae7: $f2
    ld c, h                                       ; $6ae8: $4c
    pop bc                                        ; $6ae9: $c1
    pop hl                                        ; $6aea: $e1
    dec hl                                        ; $6aeb: $2b
    cp a                                          ; $6aec: $bf
    push hl                                       ; $6aed: $e5
    db $fd                                        ; $6aee: $fd
    pop hl                                        ; $6aef: $e1
    sub d                                         ; $6af0: $92
    db $e4                                        ; $6af1: $e4
    push bc                                       ; $6af2: $c5
    ld [c], a                                     ; $6af3: $e2
    add h                                         ; $6af4: $84
    add [hl]                                      ; $6af5: $86
    db $e3                                        ; $6af6: $e3
    ld l, a                                       ; $6af7: $6f
    ld [c], a                                     ; $6af8: $e2
    inc l                                         ; $6af9: $2c
    ret nz                                        ; $6afa: $c0

    di                                            ; $6afb: $f3
    add c                                         ; $6afc: $81
    ldh [$c1], a                                  ; $6afd: $e0 $c1
    ldh [$7f], a                                  ; $6aff: $e0 $7f
    db $e4                                        ; $6b01: $e4
    ld l, e                                       ; $6b02: $6b
    ld b, c                                       ; $6b03: $41
    ld l, e                                       ; $6b04: $6b
    ld a, e                                       ; $6b05: $7b
    ldh [rHDMA2], a                               ; $6b06: $e0 $52
    db $e3                                        ; $6b08: $e3
    sub d                                         ; $6b09: $92
    pop hl                                        ; $6b0a: $e1
    cp c                                          ; $6b0b: $b9
    ld [c], a                                     ; $6b0c: $e2
    or d                                          ; $6b0d: $b2
    push hl                                       ; $6b0e: $e5
    inc l                                         ; $6b0f: $2c
    cp a                                          ; $6b10: $bf
    db $f4                                        ; $6b11: $f4
    inc bc                                        ; $6b12: $03
    dec bc                                        ; $6b13: $0b
    dec bc                                        ; $6b14: $0b
    ret nz                                        ; $6b15: $c0

    rst $20                                       ; $6b16: $e7
    dec sp                                        ; $6b17: $3b
    ld [c], a                                     ; $6b18: $e2
    adc [hl]                                      ; $6b19: $8e
    ld [c], a                                     ; $6b1a: $e2
    sub d                                         ; $6b1b: $92
    ld [c], a                                     ; $6b1c: $e2
    ld b, c                                       ; $6b1d: $41
    ld [c], a                                     ; $6b1e: $e2
    ld sp, hl                                     ; $6b1f: $f9
    db $e4                                        ; $6b20: $e4
    ldh a, [$eb]                                  ; $6b21: $f0 $eb
    ret nz                                        ; $6b23: $c0

    ccf                                           ; $6b24: $3f
    db $e3                                        ; $6b25: $e3
    add hl, sp                                    ; $6b26: $39
    db $e4                                        ; $6b27: $e4
    ld [hl-], a                                   ; $6b28: $32
    push hl                                       ; $6b29: $e5
    ld c, e                                       ; $6b2a: $4b
    ld l, e                                       ; $6b2b: $6b
    dec bc                                        ; $6b2c: $0b
    dec hl                                        ; $6b2d: $2b
    ld bc, $bf6b                                  ; $6b2e: $01 $6b $bf
    call nz, $c2c1                                ; $6b31: $c4 $c1 $c2
    ld b, b                                       ; $6b34: $40
    db $e3                                        ; $6b35: $e3
    ld d, d                                       ; $6b36: $52
    ldh [rTIMA], a                                ; $6b37: $e0 $05
    and $bf                                       ; $6b39: $e6 $bf
    push hl                                       ; $6b3b: $e5
    rst $38                                       ; $6b3c: $ff
    jp nc, $0b01                                  ; $6b3d: $d2 $01 $0b

    ld c, l                                       ; $6b40: $4d
    ldh [$80], a                                  ; $6b41: $e0 $80
    add $00                                       ; $6b43: $c6 $00
    ldh [$c0], a                                  ; $6b45: $e0 $c0
    db $e4                                        ; $6b47: $e4
    adc c                                         ; $6b48: $89
    rst $00                                       ; $6b49: $c7
    db $fc                                        ; $6b4a: $fc
    push bc                                       ; $6b4b: $c5
    ld a, a                                       ; $6b4c: $7f
    call nc, $4d0c                                ; $6b4d: $d4 $0c $4d
    pop bc                                        ; $6b50: $c1
    ret nz                                        ; $6b51: $c0

    ret nz                                        ; $6b52: $c0

    ld c, e                                       ; $6b53: $4b
    ld c, e                                       ; $6b54: $4b
    dec sp                                        ; $6b55: $3b
    pop bc                                        ; $6b56: $c1
    add c                                         ; $6b57: $81

jr_057_6b58:
    jp nz, $c6cd                                  ; $6b58: $c2 $cd $c6

    scf                                           ; $6b5b: $37
    db $e3                                        ; $6b5c: $e3
    jr nz, jr_057_6b58                            ; $6b5d: $20 $f9

    db $e4                                        ; $6b5f: $e4
    db $f4                                        ; $6b60: $f4
    ret z                                         ; $6b61: $c8

    ld bc, $bff0                                  ; $6b62: $01 $f0 $bf
    pop hl                                        ; $6b65: $e1
    nop                                           ; $6b66: $00
    jp Jump_000_0c6c                              ; $6b67: $c3 $6c $0c


    ret z                                         ; $6b6a: $c8

    ret                                           ; $6b6b: $c9


    jp nz, $f900                                  ; $6b6c: $c2 $00 $f9

    db $e4                                        ; $6b6f: $e4
    nop                                           ; $6b70: $00
    call nz, $cd38                                ; $6b71: $c4 $38 $cd
    ret nc                                        ; $6b74: $d0

    and b                                         ; $6b75: $a0
    pop bc                                        ; $6b76: $c1
    db $e3                                        ; $6b77: $e3
    inc bc                                        ; $6b78: $03
    ret nz                                        ; $6b79: $c0

    ld b, d                                       ; $6b7a: $42
    push hl                                       ; $6b7b: $e5
    ld c, e                                       ; $6b7c: $4b
    add $80                                       ; $6b7d: $c6 $80
    res 4, h                                      ; $6b7f: $cb $a4

Jump_057_6b81:
    or e                                          ; $6b81: $b3
    push hl                                       ; $6b82: $e5
    ld l, a                                       ; $6b83: $6f
    db $e4                                        ; $6b84: $e4
    ld hl, sp-$57                                 ; $6b85: $f8 $a9
    ret z                                         ; $6b87: $c8

    and c                                         ; $6b88: $a1
    add d                                         ; $6b89: $82
    db $e3                                        ; $6b8a: $e3
    jp $2ba0                                      ; $6b8b: $c3 $a0 $2b


    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    pop bc                                        ; $6b90: $c1
    ld b, c                                       ; $6b91: $41
    add sp, $39                                   ; $6b92: $e8 $39
    jp nz, $a37f                                  ; $6b94: $c2 $7f $a3

    add c                                         ; $6b97: $81
    ldh [$34], a                                  ; $6b98: $e0 $34
    push bc                                       ; $6b9a: $c5
    ld hl, sp-$5f                                 ; $6b9b: $f8 $a1
    or l                                          ; $6b9d: $b5
    and [hl]                                      ; $6b9e: $a6
    sub c                                         ; $6b9f: $91
    dec bc                                        ; $6ba0: $0b
    add a                                         ; $6ba1: $87
    ldh [rLCDC], a                                ; $6ba2: $e0 $40
    ret nz                                        ; $6ba4: $c0

    ld b, [hl]                                    ; $6ba5: $46
    and b                                         ; $6ba6: $a0
    ld l, e                                       ; $6ba7: $6b
    pop bc                                        ; $6ba8: $c1
    ldh [rSB], a                                  ; $6ba9: $e0 $01
    ret nz                                        ; $6bab: $c0

    ld l, h                                       ; $6bac: $6c
    nop                                           ; $6bad: $00
    ld b, d                                       ; $6bae: $42
    and b                                         ; $6baf: $a0
    db $d3                                        ; $6bb0: $d3
    call nz, $c339                                ; $6bb1: $c4 $39 $c3
    ld a, [hl]                                    ; $6bb4: $7e
    and d                                         ; $6bb5: $a2
    ld sp, hl                                     ; $6bb6: $f9
    db $e3                                        ; $6bb7: $e3
    ld [hl], h                                    ; $6bb8: $74
    and $c2                                       ; $6bb9: $e6 $c2
    ret                                           ; $6bbb: $c9


    ret nz                                        ; $6bbc: $c0

    pop hl                                        ; $6bbd: $e1
    inc b                                         ; $6bbe: $04
    adc b                                         ; $6bbf: $88
    jp $a004                                      ; $6bc0: $c3 $04 $a0


    ld l, e                                       ; $6bc3: $6b
    add e                                         ; $6bc4: $83
    and b                                         ; $6bc5: $a0
    ld c, $a3                                     ; $6bc6: $0e $a3
    ld b, b                                       ; $6bc8: $40
    db $e4                                        ; $6bc9: $e4
    ret nz                                        ; $6bca: $c0

    ldh [$f9], a                                  ; $6bcb: $e0 $f9
    push hl                                       ; $6bcd: $e5
    nop                                           ; $6bce: $00
    xor [hl]                                      ; $6bcf: $ae
    add $f7                                       ; $6bd0: $c6 $f7
    adc c                                         ; $6bd2: $89
    ld c, l                                       ; $6bd3: $4d
    ld [c], a                                     ; $6bd4: $e2
    ld b, d                                       ; $6bd5: $42
    and d                                         ; $6bd6: $a2
    ei                                            ; $6bd7: $fb
    db $e3                                        ; $6bd8: $e3
    ret nz                                        ; $6bd9: $c0

    ld [c], a                                     ; $6bda: $e2
    sbc c                                         ; $6bdb: $99
    add $00                                       ; $6bdc: $c6 $00
    ld [$ae08], a                                 ; $6bde: $ea $08 $ae
    add $b7                                       ; $6be1: $c6 $b7
    and b                                         ; $6be3: $a0
    ld [hl], h                                    ; $6be4: $74
    and [hl]                                      ; $6be5: $a6
    dec hl                                        ; $6be6: $2b
    adc [hl]                                      ; $6be7: $8e
    add d                                         ; $6be8: $82
    pop bc                                        ; $6be9: $c1
    add d                                         ; $6bea: $82
    inc b                                         ; $6beb: $04

jr_057_6bec:
    and c                                         ; $6bec: $a1
    ret nz                                        ; $6bed: $c0

    pop hl                                        ; $6bee: $e1
    nop                                           ; $6bef: $00
    ld a, [bc]                                    ; $6bf0: $0a
    res 6, h                                      ; $6bf1: $cb $b4
    rst $00                                       ; $6bf3: $c7
    ld l, l                                       ; $6bf4: $6d
    db $e3                                        ; $6bf5: $e3
    ret nz                                        ; $6bf6: $c0

    db $ec                                        ; $6bf7: $ec
    call $c8e0                                    ; $6bf8: $cd $e0 $c8
    db $e3                                        ; $6bfb: $e3
    nop                                           ; $6bfc: $00
    ldh [$7d], a                                  ; $6bfd: $e0 $7d
    ret nz                                        ; $6bff: $c0

    inc bc                                        ; $6c00: $03
    dec hl                                        ; $6c01: $2b
    dec bc                                        ; $6c02: $0b
    dec c                                         ; $6c03: $0d
    xor c                                         ; $6c04: $a9
    ret z                                         ; $6c05: $c8

    and [hl]                                      ; $6c06: $a6
    jr nc, jr_057_6bec                            ; $6c07: $30 $e3

    daa                                           ; $6c09: $27
    push hl                                       ; $6c0a: $e5
    add c                                         ; $6c0b: $81
    add sp, $57                                   ; $6c0c: $e8 $57
    add sp, $00                                   ; $6c0e: $e8 $00
    sub h                                         ; $6c10: $94
    ld [$6afe], a                                 ; $6c11: $ea $fe $6a
    rst $38                                       ; $6c14: $ff
    push hl                                       ; $6c15: $e5
    ld a, c                                       ; $6c16: $79
    xor b                                         ; $6c17: $a8
    ld [hl], h                                    ; $6c18: $74
    add [hl]                                      ; $6c19: $86
    ld e, $c5                                     ; $6c1a: $1e $c5
    inc [hl]                                      ; $6c1c: $34
    add h                                         ; $6c1d: $84
    ld d, a                                       ; $6c1e: $57
    and h                                         ; $6c1f: $a4
    nop                                           ; $6c20: $00
    ld b, c                                       ; $6c21: $41
    add h                                         ; $6c22: $84
    inc bc                                        ; $6c23: $03
    add h                                         ; $6c24: $84
    or b                                          ; $6c25: $b0
    ld h, l                                       ; $6c26: $65
    add sp, -$59                                  ; $6c27: $e8 $a7
    or $67                                        ; $6c29: $f6 $67
    pop hl                                        ; $6c2b: $e1
    ld h, l                                       ; $6c2c: $65
    ld hl, $fde5                                  ; $6c2d: $21 $e5 $fd
    and $00                                       ; $6c30: $e6 $00
    ld [de], a                                    ; $6c32: $12
    db $e4                                        ; $6c33: $e4
    ld a, [hl-]                                   ; $6c34: $3a
    adc b                                         ; $6c35: $88
    rst $38                                       ; $6c36: $ff
    and [hl]                                      ; $6c37: $a6
    pop bc                                        ; $6c38: $c1
    jp Jump_057_64b2                              ; $6c39: $c3 $b2 $64


    ld b, b                                       ; $6c3c: $40
    db $eb                                        ; $6c3d: $eb
    add c                                         ; $6c3e: $81
    and $07                                       ; $6c3f: $e6 $07
    push hl                                       ; $6c41: $e5
    nop                                           ; $6c42: $00
    ld a, [hl-]                                   ; $6c43: $3a
    add a                                         ; $6c44: $87
    rla                                           ; $6c45: $17
    add sp, -$40                                  ; $6c46: $e8 $c0
    add sp, $40                                   ; $6c48: $e8 $40
    db $fc                                        ; $6c4a: $fc
    ld c, h                                       ; $6c4b: $4c
    ld h, b                                       ; $6c4c: $60
    ld b, c                                       ; $6c4d: $41
    add [hl]                                      ; $6c4e: $86
    or h                                          ; $6c4f: $b4
    rst $00                                       ; $6c50: $c7
    ccf                                           ; $6c51: $3f
    jp nz, $0000                                  ; $6c52: $c2 $00 $00

    pop af                                        ; $6c55: $f1
    ld b, b                                       ; $6c56: $40
    db $ec                                        ; $6c57: $ec
    call $cbe5                                    ; $6c58: $cd $e5 $cb
    adc d                                         ; $6c5b: $8a
    ld a, [hl]                                    ; $6c5c: $7e
    push hl                                       ; $6c5d: $e5
    ret nc                                        ; $6c5e: $d0

    and $f2                                       ; $6c5f: $e6 $f2
    ld c, e                                       ; $6c61: $4b
    add hl, de                                    ; $6c62: $19
    add sp, $00                                   ; $6c63: $e8 $00
    pop bc                                        ; $6c65: $c1
    adc b                                         ; $6c66: $88
    inc bc                                        ; $6c67: $03
    ld h, d                                       ; $6c68: $62
    ld [hl], b                                    ; $6c69: $70
    ld c, d                                       ; $6c6a: $4a
    adc a                                         ; $6c6b: $8f
    add sp, -$47                                  ; $6c6c: $e8 $b9
    ldh a, [$83]                                  ; $6c6e: $f0 $83
    ld b, e                                       ; $6c70: $43
    ld bc, $38e4                                  ; $6c71: $01 $e4 $38
    and h                                         ; $6c74: $a4
    nop                                           ; $6c75: $00
    ld a, c                                       ; $6c76: $79
    ld h, h                                       ; $6c77: $64
    cp [hl]                                       ; $6c78: $be
    push bc                                       ; $6c79: $c5
    ld c, [hl]                                    ; $6c7a: $4e
    add $f8                                       ; $6c7b: $c6 $f8
    and $9c                                       ; $6c7d: $e6 $9c
    ret z                                         ; $6c7f: $c8

    call z, Call_000_3446                         ; $6c80: $cc $46 $34
    xor b                                         ; $6c83: $a8
    ld [hl+], a                                   ; $6c84: $22
    rst $00                                       ; $6c85: $c7
    nop                                           ; $6c86: $00
    nop                                           ; $6c87: $00
    jp hl                                         ; $6c88: $e9


    ld b, d                                       ; $6c89: $42
    db $f4                                        ; $6c8a: $f4
    ld b, c                                       ; $6c8b: $41
    ld b, e                                       ; $6c8c: $43
    call $8367                                    ; $6c8d: $cd $67 $83
    push hl                                       ; $6c90: $e5
    scf                                           ; $6c91: $37
    ld l, l                                       ; $6c92: $6d
    xor d                                         ; $6c93: $aa
    scf                                           ; $6c94: $37
    adc $22                                       ; $6c95: $ce $22
    nop                                           ; $6c97: $00
    ld [hl], h                                    ; $6c98: $74
    add h                                         ; $6c99: $84
    ld a, d                                       ; $6c9a: $7a
    add e                                         ; $6c9b: $83
    and [hl]                                      ; $6c9c: $a6
    ld l, c                                       ; $6c9d: $69
    ret nz                                        ; $6c9e: $c0

    or l                                          ; $6c9f: $b5
    and a                                         ; $6ca0: $a7
    xor d                                         ; $6ca1: $aa
    ld c, d                                       ; $6ca2: $4a
    add h                                         ; $6ca3: $84
    ld b, c                                       ; $6ca4: $41
    add a                                         ; $6ca5: $87
    db $fd                                        ; $6ca6: $fd
    ld d, b                                       ; $6ca7: $50
    nop                                           ; $6ca8: $00
    cpl                                           ; $6ca9: $2f
    adc b                                         ; $6caa: $88
    jp Jump_000_03aa                              ; $6cab: $c3 $aa $03


    add [hl]                                      ; $6cae: $86
    dec b                                         ; $6caf: $05
    daa                                           ; $6cb0: $27
    push de                                       ; $6cb1: $d5
    adc b                                         ; $6cb2: $88
    ld d, b                                       ; $6cb3: $50
    jp z, $0fe6                                   ; $6cb4: $ca $e6 $0f

    ret                                           ; $6cb7: $c9


    db $ed                                        ; $6cb8: $ed
    nop                                           ; $6cb9: $00
    ldh a, [$a6]                                  ; $6cba: $f0 $a6
    add hl, hl                                    ; $6cbc: $29
    ret                                           ; $6cbd: $c9


    ld sp, $2bf1                                  ; $6cbe: $31 $f1 $2b
    ret z                                         ; $6cc1: $c8

    inc a                                         ; $6cc2: $3c
    ld b, [hl]                                    ; $6cc3: $46
    rst $38                                       ; $6cc4: $ff
    ld h, a                                       ; $6cc5: $67
    ld a, e                                       ; $6cc6: $7b
    dec b                                         ; $6cc7: $05
    or a                                          ; $6cc8: $b7
    ld [$1500], sp                                ; $6cc9: $08 $00 $15
    adc e                                         ; $6ccc: $8b

Jump_057_6ccd:
    dec c                                         ; $6ccd: $0d
    adc c                                         ; $6cce: $89
    and h                                         ; $6ccf: $a4
    add l                                         ; $6cd0: $85
    ld [hl+], a                                   ; $6cd1: $22
    adc h                                         ; $6cd2: $8c
    jp nz, Jump_057_4043                          ; $6cd3: $c2 $43 $40

    add a                                         ; $6cd6: $87
    jp c, $e4e5                                   ; $6cd7: $da $e5 $e4

    and a                                         ; $6cda: $a7
    nop                                           ; $6cdb: $00
    ld d, e                                       ; $6cdc: $53
    add sp, -$0d                                  ; $6cdd: $e8 $f3
    ret z                                         ; $6cdf: $c8

    ld b, e                                       ; $6ce0: $43
    ld b, [hl]                                    ; $6ce1: $46
    add d                                         ; $6ce2: $82
    ld b, c                                       ; $6ce3: $41
    ret nz                                        ; $6ce4: $c0

    ld l, e                                       ; $6ce5: $6b
    push de                                       ; $6ce6: $d5
    db $ec                                        ; $6ce7: $ec
    ld b, $a4                                     ; $6ce8: $06 $a4
    call Call_000_006b                            ; $6cea: $cd $6b $00
    ld b, e                                       ; $6ced: $43
    ld c, c                                       ; $6cee: $49
    jp nz, $a287                                  ; $6cef: $c2 $87 $a2

    ld [hl], d                                    ; $6cf2: $72
    ld [hl], h                                    ; $6cf3: $74

Jump_057_6cf4:
    ld h, a                                       ; $6cf4: $67
    or l                                          ; $6cf5: $b5
    jr z, jr_057_6d3e                             ; $6cf6: $28 $46

    and [hl]                                      ; $6cf8: $a6
    add e                                         ; $6cf9: $83
    add e                                         ; $6cfa: $83
    or d                                          ; $6cfb: $b2
    adc e                                         ; $6cfc: $8b
    nop                                           ; $6cfd: $00
    push de                                       ; $6cfe: $d5
    db $ed                                        ; $6cff: $ed
    call $9470                                    ; $6d00: $cd $70 $94
    ret c                                         ; $6d03: $d8

    and d                                         ; $6d04: $a2
    ld l, l                                       ; $6d05: $6d
    ld sp, hl                                     ; $6d06: $f9
    jp Jump_057_6ccd                              ; $6d07: $c3 $cd $6c


    add l                                         ; $6d0a: $85
    adc c                                         ; $6d0b: $89
    pop bc                                        ; $6d0c: $c1
    ld c, c                                       ; $6d0d: $49
    nop                                           ; $6d0e: $00
    and d                                         ; $6d0f: $a2
    ld [hl], b                                    ; $6d10: $70
    ld d, h                                       ; $6d11: $54
    ld b, e                                       ; $6d12: $43
    call $a16c                                    ; $6d13: $cd $6c $a1
    rst $00                                       ; $6d16: $c7
    pop bc                                        ; $6d17: $c1
    pop de                                        ; $6d18: $d1
    and d                                         ; $6d19: $a2
    ld l, e                                       ; $6d1a: $6b
    or e                                          ; $6d1b: $b3
    ld b, a                                       ; $6d1c: $47
    and c                                         ; $6d1d: $a1
    jp nc, $1500                                  ; $6d1e: $d2 $00 $15

    sub c                                         ; $6d21: $91
    ld [de], a                                    ; $6d22: $12
    pop af                                        ; $6d23: $f1
    scf                                           ; $6d24: $37
    and $43                                       ; $6d25: $e6 $43
    ld c, l                                       ; $6d27: $4d
    push de                                       ; $6d28: $d5
    ld [hl], c                                    ; $6d29: $71
    ld [de], a                                    ; $6d2a: $12
    rst $28                                       ; $6d2b: $ef
    ld e, d                                       ; $6d2c: $5a
    ld [bc], a                                    ; $6d2d: $02
    ld b, e                                       ; $6d2e: $43
    ld d, c                                       ; $6d2f: $51
    nop                                           ; $6d30: $00
    cp a                                          ; $6d31: $bf
    ret nc                                        ; $6d32: $d0

    rst $18                                       ; $6d33: $df
    ld c, a                                       ; $6d34: $4f
    ld h, d                                       ; $6d35: $62
    xor l                                         ; $6d36: $ad
    add l                                         ; $6d37: $85
    sub c                                         ; $6d38: $91
    db $fc                                        ; $6d39: $fc
    ei                                            ; $6d3a: $fb
    add [hl]                                      ; $6d3b: $86
    ld b, d                                       ; $6d3c: $42
    halt                                          ; $6d3d: $76

jr_057_6d3e:
    call nc, $ffff                                ; $6d3e: $d4 $ff $ff
    nop                                           ; $6d41: $00
    ld b, b                                       ; $6d42: $40
    add sp, $64                                   ; $6d43: $e8 $64
    db $f4                                        ; $6d45: $f4
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    add hl, sp                                    ; $6d48: $39
    ld h, a                                       ; $6d49: $67
    ld [$c046], sp                                ; $6d4a: $08 $46 $c0
    rst $38                                       ; $6d4d: $ff
    and [hl]                                      ; $6d4e: $a6
    xor h                                         ; $6d4f: $ac
    ret nz                                        ; $6d50: $c0

    db $ec                                        ; $6d51: $ec
    nop                                           ; $6d52: $00
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    di                                            ; $6d55: $f3
    call nc, $aa8d                                ; $6d56: $d4 $8d $aa
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    sub [hl]                                      ; $6d5d: $96
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    ld [hl], h                                    ; $6d61: $74
    ld l, h                                       ; $6d62: $6c
    nop                                           ; $6d63: $00
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    scf                                           ; $6d6c: $37
    push hl                                       ; $6d6d: $e5
    call c, $ffff                                 ; $6d6e: $dc $ff $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    nop                                           ; $6d74: $00
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
    nop                                           ; $6d85: $00
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
    nop                                           ; $6d94: $00
    cp a                                          ; $6d95: $bf
    nop                                           ; $6d96: $00
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    ld e, $73                                     ; $6d9f: $1e $73
    nop                                           ; $6da1: $00
    nop                                           ; $6da2: $00
    nop                                           ; $6da3: $00
    rst $38                                       ; $6da4: $ff
    jr nz, jr_057_6dc7                            ; $6da5: $20 $20

    jr nz, jr_057_6db1                            ; $6da7: $20 $08

    ld sp, $4d31                                  ; $6da9: $31 $31 $4d
    ld a, [hl-]                                   ; $6dac: $3a
    rst $38                                       ; $6dad: $ff
    ld d, h                                       ; $6dae: $54
    ld d, l                                       ; $6daf: $55
    ld d, h                                       ; $6db0: $54

jr_057_6db1:
    ld d, h                                       ; $6db1: $54
    ld d, h                                       ; $6db2: $54
    dec sp                                        ; $6db3: $3b
    ld c, l                                       ; $6db4: $4d
    ld sp, $601f                                  ; $6db5: $31 $1f $60
    ld e, e                                       ; $6db8: $5b
    ld e, e                                       ; $6db9: $5b
    ld e, e                                       ; $6dba: $5b
    nop                                           ; $6dbb: $00
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $20                                       ; $6dbe: $e7
    and $c0                                       ; $6dbf: $e6 $c0
    ldh [$bf], a                                  ; $6dc1: $e0 $bf
    dec d                                         ; $6dc3: $15
    ld sp, $324d                                  ; $6dc4: $31 $4d $32

jr_057_6dc7:
    ld l, l                                       ; $6dc7: $6d
    ld h, l                                       ; $6dc8: $65
    rst $38                                       ; $6dc9: $ff
    ldh [$6d], a                                  ; $6dca: $e0 $6d
    and e                                         ; $6dcc: $a3
    ld l, l                                       ; $6dcd: $6d
    ld [hl-], a                                   ; $6dce: $32
    cp a                                          ; $6dcf: $bf
    ld [c], a                                     ; $6dd0: $e2
    jp z, $c0ff                                   ; $6dd1: $ca $ff $c0

    jp hl                                         ; $6dd4: $e9


    nop                                           ; $6dd5: $00
    pop bc                                        ; $6dd6: $c1
    pop hl                                        ; $6dd7: $e1
    ld h, a                                       ; $6dd8: $67
    rst $30                                       ; $6dd9: $f7
    ld l, l                                       ; $6dda: $6d
    ld l, h                                       ; $6ddb: $6c
    ld l, h                                       ; $6ddc: $6c
    ei                                            ; $6ddd: $fb
    ldh [$6d], a                                  ; $6dde: $e0 $6d
    add hl, sp                                    ; $6de0: $39
    ld sp, $f931                                  ; $6de1: $31 $31 $f9
    ld e, a                                       ; $6de4: $5f
    ret nz                                        ; $6de5: $c0

    rst $38                                       ; $6de6: $ff
    add b                                         ; $6de7: $80
    ld [$3108], a                                 ; $6de8: $ea $08 $31
    add hl, sp                                    ; $6deb: $39
    ld l, e                                       ; $6dec: $6b
    ld h, [hl]                                    ; $6ded: $66
    rst $18                                       ; $6dee: $df
    ld l, e                                       ; $6def: $6b
    ld l, e                                       ; $6df0: $6b
    jr nc, @+$32                                  ; $6df1: $30 $30

    ld l, e                                       ; $6df3: $6b
    ld sp, hl                                     ; $6df4: $f9
    ldh [$93], a                                  ; $6df5: $e0 $93
    sub l                                         ; $6df7: $95
    cp b                                          ; $6df8: $b8
    cp a                                          ; $6df9: $bf
    ldh [$ca], a                                  ; $6dfa: $e0 $ca
    rst $38                                       ; $6dfc: $ff
    ld b, b                                       ; $6dfd: $40
    jp hl                                         ; $6dfe: $e9


    dec d                                         ; $6dff: $15
    ld sp, $c052                                  ; $6e00: $31 $52 $c0
    rst $20                                       ; $6e03: $e7
    ld l, e                                       ; $6e04: $6b
    adc a                                         ; $6e05: $8f
    sbc l                                         ; $6e06: $9d
    sbc a                                         ; $6e07: $9f
    ld sp, $ca5e                                  ; $6e08: $31 $5e $ca
    rst $38                                       ; $6e0b: $ff
    nop                                           ; $6e0c: $00
    add sp, $41                                   ; $6e0d: $e8 $41
    ldh [$35], a                                  ; $6e0f: $e0 $35
    db $fd                                        ; $6e11: $fd
    ld l, e                                       ; $6e12: $6b
    ld b, b                                       ; $6e13: $40
    push hl                                       ; $6e14: $e5
    ld l, e                                       ; $6e15: $6b
    sub e                                         ; $6e16: $93
    add [hl]                                      ; $6e17: $86
    sbc a                                         ; $6e18: $9f
    ld sp, $bc31                                  ; $6e19: $31 $31 $bc
    jp z, $c0ff                                   ; $6e1c: $ca $ff $c0

    ld [$3039], a                                 ; $6e1f: $ea $39 $30
    jr nc, jr_057_6e91                            ; $6e22: $30 $6d

    ret nz                                        ; $6e24: $c0

    call nz, $c16d                                ; $6e25: $c4 $6d $c1
    sub c                                         ; $6e28: $91
    ret nz                                        ; $6e29: $c0

    rst $38                                       ; $6e2a: $ff
    add b                                         ; $6e2b: $80
    call z, $e001                                 ; $6e2c: $cc $01 $e0
    ret nz                                        ; $6e2f: $c0

    pop hl                                        ; $6e30: $e1
    ret nz                                        ; $6e31: $c0

    ret nz                                        ; $6e32: $c0

    sbc c                                         ; $6e33: $99
    sbc b                                         ; $6e34: $98
    ld a, a                                       ; $6e35: $7f
    sbc h                                         ; $6e36: $9c
    sbc h                                         ; $6e37: $9c
    add [hl]                                      ; $6e38: $86
    sub b                                         ; $6e39: $90
    ld sp, $2931                                  ; $6e3a: $31 $31 $29
    jp z, $beff                                   ; $6e3d: $ca $ff $be

    ld b, b                                       ; $6e40: $40
    ret z                                         ; $6e41: $c8

    dec d                                         ; $6e42: $15
    ld sp, $48af                                  ; $6e43: $31 $af $48
    ld l, e                                       ; $6e46: $6b
    add [hl]                                      ; $6e47: $86
    ldh [rOCPS], a                                ; $6e48: $e0 $6a
    ld a, e                                       ; $6e4a: $7b
    sub h                                         ; $6e4b: $94
    add [hl]                                      ; $6e4c: $86
    rst $38                                       ; $6e4d: $ff
    pop hl                                        ; $6e4e: $e1
    sub d                                         ; $6e4f: $92
    ld sp, $1615                                  ; $6e50: $31 $15 $16
    jp z, $beff                                   ; $6e53: $ca $ff $be

    add sp, -$19                                  ; $6e56: $e8 $e7
    rrca                                          ; $6e58: $0f
    ld sp, $8131                                  ; $6e59: $31 $31 $81
    add e                                         ; $6e5c: $83
    pop bc                                        ; $6e5d: $c1
    pop hl                                        ; $6e5e: $e1
    ld l, d                                       ; $6e5f: $6a
    db $fd                                        ; $6e60: $fd
    sbc l                                         ; $6e61: $9d
    ret nz                                        ; $6e62: $c0

    ldh [$96], a                                  ; $6e63: $e0 $96
    sub a                                         ; $6e65: $97
    ld sp, $1731                                  ; $6e66: $31 $31 $17
    jr z, @-$02                                   ; $6e69: $28 $fc

    jp z, $e8ff                                   ; $6e6b: $ca $ff $e8

    rst $20                                       ; $6e6e: $e7
    ld sp, $ab31                                  ; $6e6f: $31 $31 $ab
    xor c                                         ; $6e72: $a9
    halt                                          ; $6e73: $76
    ld c, b                                       ; $6e74: $48
    db $fc                                        ; $6e75: $fc
    pop bc                                        ; $6e76: $c1
    ldh [rTIMA], a                                ; $6e77: $e0 $05
    ldh [$86], a                                  ; $6e79: $e0 $86
    sub l                                         ; $6e7b: $95
    ld sp, $3162                                  ; $6e7c: $31 $62 $31
    ld sp, $2bf3                                  ; $6e7f: $31 $f3 $2b
    inc l                                         ; $6e82: $2c
    jp z, $c0ff                                   ; $6e83: $ca $ff $c0

    add sp, -$59                                  ; $6e86: $e8 $a7
    xor d                                         ; $6e88: $aa
    add b                                         ; $6e89: $80
    add b                                         ; $6e8a: $80
    ld l, l                                       ; $6e8b: $6d
    add e                                         ; $6e8c: $83
    pop bc                                        ; $6e8d: $c1
    ldh [$30], a                                  ; $6e8e: $e0 $30
    sub e                                         ; $6e90: $93

jr_057_6e91:
    inc b                                         ; $6e91: $04
    ldh [$60], a                                  ; $6e92: $e0 $60
    ld e, a                                       ; $6e94: $5f
    ld b, c                                       ; $6e95: $41
    ldh [$f9], a                                  ; $6e96: $e0 $f9
    jr nz, @-$34                                  ; $6e98: $20 $ca

    rst $38                                       ; $6e9a: $ff
    add b                                         ; $6e9b: $80
    add sp, -$54                                  ; $6e9c: $e8 $ac
    xor c                                         ; $6e9e: $a9
    add b                                         ; $6e9f: $80
    add b                                         ; $6ea0: $80
    ld a, d                                       ; $6ea1: $7a
    cp $c1                                        ; $6ea2: $fe $c1
    ldh [$30], a                                  ; $6ea4: $e0 $30
    jr nc, @-$61                                  ; $6ea6: $30 $9d

    sub d                                         ; $6ea8: $92
    ld h, c                                       ; $6ea9: $61
    ld e, e                                       ; $6eaa: $5b
    ld e, [hl]                                    ; $6eab: $5e
    ld hl, sp+$41                                 ; $6eac: $f8 $41
    ldh [$c0], a                                  ; $6eae: $e0 $c0
    rst $38                                       ; $6eb0: $ff
    jp hl                                         ; $6eb1: $e9


    add sp, $5e                                   ; $6eb2: $e8 $5e
    ld sp, $8081                                  ; $6eb4: $31 $81 $80
    add b                                         ; $6eb7: $80
    ld [hl], e                                    ; $6eb8: $73
    halt                                          ; $6eb9: $76
    ld c, b                                       ; $6eba: $48
    pop bc                                        ; $6ebb: $c1
    ldh [$85], a                                  ; $6ebc: $e0 $85
    and b                                         ; $6ebe: $a0
    ld h, c                                       ; $6ebf: $61
    ld e, e                                       ; $6ec0: $5b
    ld h, c                                       ; $6ec1: $61
    ld b, c                                       ; $6ec2: $41
    ldh [$3c], a                                  ; $6ec3: $e0 $3c
    ret nz                                        ; $6ec5: $c0

    rst $38                                       ; $6ec6: $ff
    jp hl                                         ; $6ec7: $e9


    add sp, $5f                                   ; $6ec8: $e8 $5f
    ld sp, $80a1                                  ; $6eca: $31 $a1 $80
    ccf                                           ; $6ecd: $3f
    ldh [$81], a                                  ; $6ece: $e0 $81
    ldh [$cb], a                                  ; $6ed0: $e0 $cb
    add e                                         ; $6ed2: $83
    ld [hl], b                                    ; $6ed3: $70
    inc b                                         ; $6ed4: $04
    and b                                         ; $6ed5: $a0
    ld e, [hl]                                    ; $6ed6: $5e
    ret nz                                        ; $6ed7: $c0

    rst $38                                       ; $6ed8: $ff
    db $ec                                        ; $6ed9: $ec
    db $eb                                        ; $6eda: $eb
    ld e, e                                       ; $6edb: $5b
    ld h, b                                       ; $6edc: $60
    cp $3f                                        ; $6edd: $fe $3f
    pop hl                                        ; $6edf: $e1
    ld a, b                                       ; $6ee0: $78
    ld l, [hl]                                    ; $6ee1: $6e
    ld d, l                                       ; $6ee2: $55
    ld l, [hl]                                    ; $6ee3: $6e
    ld a, c                                       ; $6ee4: $79
    xor [hl]                                      ; $6ee5: $ae
    ld [hl], b                                    ; $6ee6: $70
    rlca                                          ; $6ee7: $07
    ld sp, $5f5e                                  ; $6ee8: $31 $5e $5f
    ld b, b                                       ; $6eeb: $40
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    nop                                           ; $6ef5: $00
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
    nop                                           ; $6f06: $00
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
    nop                                           ; $6f17: $00
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
    nop                                           ; $6f28: $00
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
    nop                                           ; $6f39: $00
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
    nop                                           ; $6f4a: $00
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
    nop                                           ; $6f5b: $00
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
    nop                                           ; $6f6c: $00
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
    nop                                           ; $6f7d: $00
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
    nop                                           ; $6f8e: $00
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
    nop                                           ; $6f9f: $00
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
    rst $30                                       ; $6fad: $f7
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    and l                                         ; $6fb1: $a5
    nop                                           ; $6fb2: $00
    rst $38                                       ; $6fb3: $ff
    push hl                                       ; $6fb4: $e5
    ld [hl-], a                                   ; $6fb5: $32
    or $e6                                        ; $6fb6: $f6 $e6
    rst $30                                       ; $6fb8: $f7
    rst $20                                       ; $6fb9: $e7
    dec [hl]                                      ; $6fba: $35
    db $ec                                        ; $6fbb: $ec
    xor $37                                       ; $6fbc: $ee $37
    db $ec                                        ; $6fbe: $ec
    jp c, $c7f0                                   ; $6fbf: $da $f0 $c7

    add sp, $33                                   ; $6fc2: $e8 $33
    ld sp, $f2e0                                  ; $6fc4: $31 $e0 $f2
    ld [hl], $30                                  ; $6fc7: $36 $30
    scf                                           ; $6fc9: $37
    cp a                                          ; $6fca: $bf
    ld h, $20                                     ; $6fcb: $26 $20
    daa                                           ; $6fcd: $27
    db $10                                        ; $6fce: $10
    ld d, $17                                     ; $6fcf: $16 $17
    jp nz, Jump_000_34f6                          ; $6fd1: $c2 $f6 $34

    rst $38                                       ; $6fd4: $ff
    ld [hl], $32                                  ; $6fd5: $36 $32
    jr nc, jr_057_7010                            ; $6fd7: $30 $37

    ld sp, $3133                                  ; $6fd9: $31 $33 $31
    inc sp                                        ; $6fdc: $33
    nop                                           ; $6fdd: $00
    and b                                         ; $6fde: $a0
    ei                                            ; $6fdf: $fb
    rst $38                                       ; $6fe0: $ff
    rst $28                                       ; $6fe1: $ef
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    nop                                           ; $6fe4: $00
    db $ed                                        ; $6fe5: $ed
    ld l, a                                       ; $6fe6: $6f
    dec e                                         ; $6fe7: $1d
    ld [hl], b                                    ; $6fe8: $70
    adc h                                         ; $6fe9: $8c
    ld [hl], d                                    ; $6fea: $72
    jr nc, jr_057_7061                            ; $6feb: $30 $74

    ldh a, [$03]                                  ; $6fed: $f0 $03
    ld c, l                                       ; $6fef: $4d
    rrca                                          ; $6ff0: $0f
    ld b, b                                       ; $6ff1: $40
    ld [bc], a                                    ; $6ff2: $02
    ret nz                                        ; $6ff3: $c0

    nop                                           ; $6ff4: $00
    ldh a, [$03]                                  ; $6ff5: $f0 $03
    push af                                       ; $6ff7: $f5
    inc bc                                        ; $6ff8: $03
    ld c, b                                       ; $6ff9: $48
    rrca                                          ; $6ffa: $0f
    ld b, b                                       ; $6ffb: $40
    ld [bc], a                                    ; $6ffc: $02
    ld e, a                                       ; $6ffd: $5f
    dec sp                                        ; $6ffe: $3b
    jr c, @+$10                                   ; $6fff: $38 $0e

    ld sp, $4819                                  ; $7001: $31 $19 $48
    rrca                                          ; $7004: $0f
    ld [$0825], sp                                ; $7005: $08 $25 $08
    dec h                                         ; $7008: $25
    ld [$0825], sp                                ; $7009: $08 $25 $08
    dec h                                         ; $700c: $25
    ld [$0825], sp                                ; $700d: $08 $25 $08

jr_057_7010:
    dec h                                         ; $7010: $25
    ld [$0825], sp                                ; $7011: $08 $25 $08
    dec h                                         ; $7014: $25
    ld [$0825], sp                                ; $7015: $08 $25 $08
    dec h                                         ; $7018: $25
    ld [$0825], sp                                ; $7019: $08 $25 $08
    dec h                                         ; $701c: $25
    ld a, l                                       ; $701d: $7d
    ld a, [bc]                                    ; $701e: $0a
    rst $38                                       ; $701f: $ff
    rst $28                                       ; $7020: $ef
    dec bc                                        ; $7021: $0b
    inc c                                         ; $7022: $0c
    inc c                                         ; $7023: $0c
    ld c, h                                       ; $7024: $4c
    ld c, h                                       ; $7025: $4c
    db $fd                                        ; $7026: $fd
    and $0c                                       ; $7027: $e6 $0c
    push af                                       ; $7029: $f5
    ldh [$f0], a                                  ; $702a: $e0 $f0
    ld [c], a                                     ; $702c: $e2
    inc l                                         ; $702d: $2c
    inc l                                         ; $702e: $2c
    ld hl, sp-$20                                 ; $702f: $f8 $e0
    db $fd                                        ; $7031: $fd
    rst $28                                       ; $7032: $ef
    ret nz                                        ; $7033: $c0

    ei                                            ; $7034: $fb
    cp c                                          ; $7035: $b9
    ldh [$66], a                                  ; $7036: $e0 $66
    jp nz, $4ce3                                  ; $7038: $c2 $e3 $4c

    inc l                                         ; $703b: $2c
    ret nz                                        ; $703c: $c0

    rst $38                                       ; $703d: $ff
    add d                                         ; $703e: $82
    db $e4                                        ; $703f: $e4
    dec bc                                        ; $7040: $0b
    dec bc                                        ; $7041: $0b
    set 4, c                                      ; $7042: $cb $e1
    jr nz, jr_057_70c4                            ; $7044: $20 $7e

    db $e3                                        ; $7046: $e3
    db $fc                                        ; $7047: $fc
    db $e3                                        ; $7048: $e3
    ld [hl], b                                    ; $7049: $70
    pop hl                                        ; $704a: $e1
    pop bc                                        ; $704b: $c1
    db $f4                                        ; $704c: $f4
    add b                                         ; $704d: $80
    xor $0b                                       ; $704e: $ee $0b
    cp a                                          ; $7050: $bf

jr_057_7051:
    ldh [rLCDC], a                                ; $7051: $e0 $40
    or $61                                        ; $7053: $f6 $61
    inc l                                         ; $7055: $2c
    cp $e0                                        ; $7056: $fe $e0
    cp d                                          ; $7058: $ba
    db $ec                                        ; $7059: $ec
    sub c                                         ; $705a: $91
    ldh [$fd], a                                  ; $705b: $e0 $fd
    pop hl                                        ; $705d: $e1
    ld l, e                                       ; $705e: $6b
    ld c, e                                       ; $705f: $4b
    rst $38                                       ; $7060: $ff

jr_057_7061:
    ld [c], a                                     ; $7061: $e2
    rlca                                          ; $7062: $07
    dec bc                                        ; $7063: $0b
    dec hl                                        ; $7064: $2b
    dec hl                                        ; $7065: $2b
    cp a                                          ; $7066: $bf
    ldh [rLCDC], a                                ; $7067: $e0 $40
    db $fc                                        ; $7069: $fc
    scf                                           ; $706a: $37
    db $e4                                        ; $706b: $e4
    jr nc, jr_057_7051                            ; $706c: $30 $e3

    jp $0ce2                                      ; $706e: $c3 $e2 $0c


    rst $38                                       ; $7071: $ff
    pop hl                                        ; $7072: $e1
    or a                                          ; $7073: $b7
    pop hl                                        ; $7074: $e1
    dec hl                                        ; $7075: $2b
    ld c, e                                       ; $7076: $4b
    db $fc                                        ; $7077: $fc
    ldh [rLCDC], a                                ; $7078: $e0 $40
    ld hl, sp-$80                                 ; $707a: $f8 $80
    di                                            ; $707c: $f3
    call nz, Call_000_01e0                        ; $707d: $c4 $e0 $01
    dec hl                                        ; $7080: $2b
    cp l                                          ; $7081: $bd
    ldh [$c4], a                                  ; $7082: $e0 $c4
    ldh [$bf], a                                  ; $7084: $e0 $bf
    ld [c], a                                     ; $7086: $e2
    ld b, b                                       ; $7087: $40
    pop hl                                        ; $7088: $e1
    jp nz, $80c5                                  ; $7089: $c2 $c5 $80

    ret z                                         ; $708c: $c8

    add a                                         ; $708d: $87
    pop hl                                        ; $708e: $e1
    inc b                                         ; $708f: $04
    ld b, b                                       ; $7090: $40
    ld a, [c]                                     ; $7091: $f2
    add [hl]                                      ; $7092: $86
    pop hl                                        ; $7093: $e1
    dec hl                                        ; $7094: $2b
    cp a                                          ; $7095: $bf
    pop hl                                        ; $7096: $e1
    dec [hl]                                      ; $7097: $35
    pop hl                                        ; $7098: $e1
    ret nz                                        ; $7099: $c0

    db $e4                                        ; $709a: $e4
    ld b, b                                       ; $709b: $40
    ret c                                         ; $709c: $d8

    ld a, c                                       ; $709d: $79
    call z, Call_000_008a                         ; $709e: $cc $8a $00
    db $e3                                        ; $70a1: $e3
    dec hl                                        ; $70a2: $2b
    cp a                                          ; $70a3: $bf
    push hl                                       ; $70a4: $e5
    dec hl                                        ; $70a5: $2b
    ld hl, sp-$3f                                 ; $70a6: $f8 $c1
    ld b, b                                       ; $70a8: $40
    rst $18                                       ; $70a9: $df
    ret nz                                        ; $70aa: $c0

    ret                                           ; $70ab: $c9


    dec hl                                        ; $70ac: $2b
    nop                                           ; $70ad: $00
    cp $e1                                        ; $70ae: $fe $e1
    cp a                                          ; $70b0: $bf
    push hl                                       ; $70b1: $e5
    ld [bc], a                                    ; $70b2: $02
    ldh [rLCDC], a                                ; $70b3: $e0 $40
    call c, $f080                                 ; $70b5: $dc $80 $f0
    jp nz, Jump_057_7ee1                          ; $70b8: $c2 $e1 $7e

    db $e4                                        ; $70bb: $e4
    ret nz                                        ; $70bc: $c0

    db $e3                                        ; $70bd: $e3
    db $10                                        ; $70be: $10
    ld b, b                                       ; $70bf: $40
    ld a, [$a2b8]                                 ; $70c0: $fa $b8 $a2
    or e                                          ; $70c3: $b3

jr_057_70c4:
    and [hl]                                      ; $70c4: $a6
    ld b, b                                       ; $70c5: $40
    jp $bf4b                                      ; $70c6: $c3 $4b $bf


    push hl                                       ; $70c9: $e5
    ret nz                                        ; $70ca: $c0

    db $ec                                        ; $70cb: $ec
    ld b, b                                       ; $70cc: $40
    rst $38                                       ; $70cd: $ff
    ret nz                                        ; $70ce: $c0

    xor d                                         ; $70cf: $aa
    pop bc                                        ; $70d0: $c1
    dec bc                                        ; $70d1: $0b
    ret nz                                        ; $70d2: $c0

    ld a, h                                       ; $70d3: $7c
    db $e3                                        ; $70d4: $e3
    add hl, sp                                    ; $70d5: $39
    call nz, $bf80                                ; $70d6: $c4 $80 $bf
    ret nz                                        ; $70d9: $c0

    db $eb                                        ; $70da: $eb
    inc l                                         ; $70db: $2c
    inc l                                         ; $70dc: $2c
    nop                                           ; $70dd: $00
    ld a, l                                       ; $70de: $7d

jr_057_70df:
    push hl                                       ; $70df: $e5
    ld a, [hl]                                    ; $70e0: $7e
    jp $e5c1                                      ; $70e1: $c3 $c1 $e5


    ld b, b                                       ; $70e4: $40
    adc $3a                                       ; $70e5: $ce $3a
    push bc                                       ; $70e7: $c5
    call z, $c0e2                                 ; $70e8: $cc $e2 $c0
    jp hl                                         ; $70eb: $e9


    cp a                                          ; $70ec: $bf
    db $e3                                        ; $70ed: $e3
    nop                                           ; $70ee: $00
    ld a, c                                       ; $70ef: $79
    and b                                         ; $70f0: $a0
    ret nz                                        ; $70f1: $c0

    jp nz, $e34a                                  ; $70f2: $c2 $4a $e3

    rlca                                          ; $70f5: $07
    and d                                         ; $70f6: $a2
    inc c                                         ; $70f7: $0c
    and e                                         ; $70f8: $a3
    jr c, jr_057_70df                             ; $70f9: $38 $e4

    jp hl                                         ; $70fb: $e9


    db $e4                                        ; $70fc: $e4
    ret nz                                        ; $70fd: $c0

    db $ec                                        ; $70fe: $ec
    nop                                           ; $70ff: $00
    ld d, d                                       ; $7100: $52
    add b                                         ; $7101: $80
    ld a, [hl]                                    ; $7102: $7e
    db $e3                                        ; $7103: $e3
    ld a, [hl]                                    ; $7104: $7e
    and d                                         ; $7105: $a2
    add b                                         ; $7106: $80
    push bc                                       ; $7107: $c5
    pop bc                                        ; $7108: $c1
    db $e4                                        ; $7109: $e4
    ret                                           ; $710a: $c9


    push hl                                       ; $710b: $e5
    ld a, [hl-]                                   ; $710c: $3a
    add d                                         ; $710d: $82
    adc l                                         ; $710e: $8d
    ld [$a400], a                                 ; $710f: $ea $00 $a4
    jp hl                                         ; $7112: $e9


    dec d                                         ; $7113: $15
    adc h                                         ; $7114: $8c
    inc b                                         ; $7115: $04
    db $e4                                        ; $7116: $e4
    ret                                           ; $7117: $c9


    adc b                                         ; $7118: $88
    ld [bc], a                                    ; $7119: $02
    add e                                         ; $711a: $83
    ld b, b                                       ; $711b: $40
    db $e3                                        ; $711c: $e3
    ret nz                                        ; $711d: $c0

    db $f4                                        ; $711e: $f4
    adc $69                                       ; $711f: $ce $69
    nop                                           ; $7121: $00
    ret nz                                        ; $7122: $c0

    db $e4                                        ; $7123: $e4
    add hl, bc                                    ; $7124: $09
    add l                                         ; $7125: $85
    ret nz                                        ; $7126: $c0

    push hl                                       ; $7127: $e5
    add hl, hl                                    ; $7128: $29
    db $e3                                        ; $7129: $e3
    ld hl, sp+$6b                                 ; $712a: $f8 $6b
    call nc, $8ec6                                ; $712c: $d4 $c6 $8e
    ld l, b                                       ; $712f: $68
    rrca                                          ; $7130: $0f
    and $00                                       ; $7131: $e6 $00
    add hl, bc                                    ; $7133: $09
    add a                                         ; $7134: $87
    jp $ce6a                                      ; $7135: $c3 $6a $ce


    jp nz, $8635                                  ; $7138: $c2 $35 $86

    call z, Call_000_3ceb                         ; $713b: $cc $eb $3c
    add sp, -$37                                  ; $713e: $e8 $c9
    add [hl]                                      ; $7140: $86
    ld c, l                                       ; $7141: $4d
    add e                                         ; $7142: $83
    nop                                           ; $7143: $00
    ld a, a                                       ; $7144: $7f
    and a                                         ; $7145: $a7
    ret nz                                        ; $7146: $c0

    ld [$c595], a                                 ; $7147: $ea $95 $c5
    ld [$93e7], sp                                ; $714a: $08 $e7 $93
    add e                                         ; $714d: $83
    ld d, c                                       ; $714e: $51
    pop bc                                        ; $714f: $c1
    ld [hl], a                                    ; $7150: $77
    push bc                                       ; $7151: $c5
    ld d, e                                       ; $7152: $53
    add sp, $00                                   ; $7153: $e8 $00
    or h                                          ; $7155: $b4
    db $e4                                        ; $7156: $e4
    ld sp, $c166                                  ; $7157: $31 $66 $c1
    and $8d                                       ; $715a: $e6 $8d
    res 0, [hl]                                   ; $715c: $cb $86
    push bc                                       ; $715e: $c5
    adc c                                         ; $715f: $89
    call nz, $8303                                ; $7160: $c4 $03 $83
    and a                                         ; $7163: $a7
    push hl                                       ; $7164: $e5
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    jp z, $4495                                   ; $7167: $ca $95 $44

    rrca                                          ; $716a: $0f
    ret                                           ; $716b: $c9


    add h                                         ; $716c: $84
    and h                                         ; $716d: $a4
    rst $08                                       ; $716e: $cf
    ld b, b                                       ; $716f: $40
    ret nz                                        ; $7170: $c0

    ld a, [c]                                     ; $7171: $f2
    or a                                          ; $7172: $b7
    ld c, d                                       ; $7173: $4a
    ret nz                                        ; $7174: $c0

    ret c                                         ; $7175: $d8

    nop                                           ; $7176: $00
    sub c                                         ; $7177: $91
    and b                                         ; $7178: $a0
    ld b, c                                       ; $7179: $41
    ld [$e831], a                                 ; $717a: $ea $31 $e8
    add b                                         ; $717d: $80
    pop af                                        ; $717e: $f1
    ret nz                                        ; $717f: $c0

    rst $00                                       ; $7180: $c7
    nop                                           ; $7181: $00
    ret                                           ; $7182: $c9


    ld d, e                                       ; $7183: $53
    res 6, b                                      ; $7184: $cb $b0
    add $00                                       ; $7186: $c6 $00
    ld b, b                                       ; $7188: $40
    xor $00                                       ; $7189: $ee $00
    jp nc, $cdc0                                  ; $718b: $d2 $c0 $cd

    ld a, c                                       ; $718e: $79
    and l                                         ; $718f: $a5
    db $f4                                        ; $7190: $f4
    jr z, jr_057_7193                             ; $7191: $28 $00

jr_057_7193:
    jp c, $eb7f                                   ; $7193: $da $7f $eb

    ld [hl], c                                    ; $7196: $71
    rst $00                                       ; $7197: $c7
    nop                                           ; $7198: $00
    inc bc                                        ; $7199: $03
    xor d                                         ; $719a: $aa
    ld b, b                                       ; $719b: $40
    ld hl, sp-$40                                 ; $719c: $f8 $c0
    ld b, e                                       ; $719e: $43
    ld l, [hl]                                    ; $719f: $6e
    and e                                         ; $71a0: $a3
    ld [$75e9], a                                 ; $71a1: $ea $e9 $75
    add hl, hl                                    ; $71a4: $29
    ld b, b                                       ; $71a5: $40
    cp b                                          ; $71a6: $b8
    ld a, b                                       ; $71a7: $78
    and a                                         ; $71a8: $a7
    nop                                           ; $71a9: $00
    cp a                                          ; $71aa: $bf
    call z, $8984                                 ; $71ab: $cc $84 $89
    ld d, e                                       ; $71ae: $53
    ld b, a                                       ; $71af: $47
    or $8a                                        ; $71b0: $f6 $8a
    db $10                                        ; $71b2: $10
    and l                                         ; $71b3: $a5
    ccf                                           ; $71b4: $3f
    inc h                                         ; $71b5: $24
    xor l                                         ; $71b6: $ad
    ld h, d                                       ; $71b7: $62
    xor a                                         ; $71b8: $af
    rst $08                                       ; $71b9: $cf
    nop                                           ; $71ba: $00
    add l                                         ; $71bb: $85
    xor e                                         ; $71bc: $ab
    ld d, d                                       ; $71bd: $52
    ld l, h                                       ; $71be: $6c
    ld [hl-], a                                   ; $71bf: $32
    and [hl]                                      ; $71c0: $a6
    add hl, sp                                    ; $71c1: $39
    adc h                                         ; $71c2: $8c
    ld b, b                                       ; $71c3: $40
    db $ec                                        ; $71c4: $ec
    ld d, d                                       ; $71c5: $52
    ld a, c                                       ; $71c6: $79
    ld hl, sp+$17                                 ; $71c7: $f8 $17
    jp nz, Jump_000_0086                          ; $71c9: $c2 $86 $00

    cp l                                          ; $71cc: $bd
    adc e                                         ; $71cd: $8b
    ret                                           ; $71ce: $c9


    adc e                                         ; $71cf: $8b
    cp b                                          ; $71d0: $b8
    ld d, l                                       ; $71d1: $55
    ret nz                                        ; $71d2: $c0

    ld l, l                                       ; $71d3: $6d
    ld d, d                                       ; $71d4: $52
    ld [hl], e                                    ; $71d5: $73
    inc hl                                        ; $71d6: $23
    add a                                         ; $71d7: $87
    ld hl, sp+$0e                                 ; $71d8: $f8 $0e
    add c                                         ; $71da: $81
    ld l, b                                       ; $71db: $68
    nop                                           ; $71dc: $00
    ld a, [hl]                                    ; $71dd: $7e
    add a                                         ; $71de: $87
    ld d, d                                       ; $71df: $52
    ld l, l                                       ; $71e0: $6d
    and l                                         ; $71e1: $a5
    ret z                                         ; $71e2: $c8

    ld hl, sp+$0d                                 ; $71e3: $f8 $0d
    ld [hl], e                                    ; $71e5: $73
    dec hl                                        ; $71e6: $2b
    ld a, l                                       ; $71e7: $7d
    xor c                                         ; $71e8: $a9
    sub c                                         ; $71e9: $91
    ld b, a                                       ; $71ea: $47
    ld b, b                                       ; $71eb: $40
    ld [c], a                                     ; $71ec: $e2
    nop                                           ; $71ed: $00
    ld h, [hl]                                    ; $71ee: $66
    push af                                       ; $71ef: $f5
    dec hl                                        ; $71f0: $2b
    xor h                                         ; $71f1: $ac
    db $d3                                        ; $71f2: $d3
    ld h, $72                                     ; $71f3: $26 $72
    adc c                                         ; $71f5: $89
    ei                                            ; $71f6: $fb
    and [hl]                                      ; $71f7: $a6
    cp b                                          ; $71f8: $b8
    ld c, [hl]                                    ; $71f9: $4e
    add d                                         ; $71fa: $82
    ld c, c                                       ; $71fb: $49
    rst $10                                       ; $71fc: $d7
    ld b, h                                       ; $71fd: $44
    nop                                           ; $71fe: $00
    sbc c                                         ; $71ff: $99
    or c                                          ; $7200: $b1
    ld h, [hl]                                    ; $7201: $66
    or $b3                                        ; $7202: $f6 $b3
    dec c                                         ; $7204: $0d
    sbc c                                         ; $7205: $99
    or h                                          ; $7206: $b4
    inc hl                                        ; $7207: $23
    add a                                         ; $7208: $87
    ld h, [hl]                                    ; $7209: $66
    db $ed                                        ; $720a: $ed
    cp [hl]                                       ; $720b: $be
    xor l                                         ; $720c: $ad
    sbc c                                         ; $720d: $99
    or d                                          ; $720e: $b2
    nop                                           ; $720f: $00
    add [hl]                                      ; $7210: $86
    inc h                                         ; $7211: $24
    ld h, [hl]                                    ; $7212: $66
    di                                            ; $7213: $f3
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff
    push bc                                       ; $7216: $c5
    ld b, $66                                     ; $7217: $06 $66
    pop af                                        ; $7219: $f1
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    ld h, [hl]                                    ; $721c: $66
    ld sp, hl                                     ; $721d: $f9
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    nop                                           ; $7220: $00
    ret nc                                        ; $7221: $d0

    ld b, a                                       ; $7222: $47
    ld b, e                                       ; $7223: $43
    add [hl]                                      ; $7224: $86
    add b                                         ; $7225: $80
    rst $38                                       ; $7226: $ff
    ret nz                                        ; $7227: $c0

    db $ed                                        ; $7228: $ed
    ld h, $a6                                     ; $7229: $26 $a6
    ld h, b                                       ; $722b: $60
    ld h, [hl]                                    ; $722c: $66
    add b                                         ; $722d: $80
    rst $38                                       ; $722e: $ff
    ld b, b                                       ; $722f: $40
    ldh a, [rP1]                                  ; $7230: $f0 $00
    ld [$c047], a                                 ; $7232: $ea $47 $c0
    rst $38                                       ; $7235: $ff
    pop de                                        ; $7236: $d1
    ld c, a                                       ; $7237: $4f
    ret nz                                        ; $7238: $c0

    db $eb                                        ; $7239: $eb
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    di                                            ; $723c: $f3
    call nc, $adcd                                ; $723d: $d4 $cd $ad
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    nop                                           ; $7242: $00
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    sub [hl]                                      ; $7245: $96
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    ld sp, $ff0c                                  ; $7249: $31 $0c $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    nop                                           ; $7253: $00
    db $db                                        ; $7254: $db
    inc l                                         ; $7255: $2c
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
    nop                                           ; $7264: $00
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
    nop                                           ; $7275: $00
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    nop                                           ; $727a: $00
    cp a                                          ; $727b: $bf
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
    nop                                           ; $7286: $00
    dec de                                        ; $7287: $1b
    ld c, c                                       ; $7288: $49
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    dec e                                         ; $728c: $1d
    adc b                                         ; $728d: $88
    rst $38                                       ; $728e: $ff
    xor $8b                                       ; $728f: $ee $8b
    ld e, e                                       ; $7291: $5b
    nop                                           ; $7292: $00
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $20                                       ; $7295: $e7
    and $c1                                       ; $7296: $e6 $c1
    rst $28                                       ; $7298: $ef
    add hl, sp                                    ; $7299: $39
    ld e, d                                       ; $729a: $5a
    ret nz                                        ; $729b: $c0

    rst $38                                       ; $729c: $ff
    ret nz                                        ; $729d: $c0

    ld hl, sp-$75                                 ; $729e: $f8 $8b
    ld e, e                                       ; $72a0: $5b
    ld e, e                                       ; $72a1: $5b
    ret nz                                        ; $72a2: $c0

    rst $38                                       ; $72a3: $ff
    add b                                         ; $72a4: $80
    rst $30                                       ; $72a5: $f7
    and a                                         ; $72a6: $a7
    adc e                                         ; $72a7: $8b
    ld e, e                                       ; $72a8: $5b
    ld e, d                                       ; $72a9: $5a
    ret nz                                        ; $72aa: $c0

    rst $38                                       ; $72ab: $ff
    ld [$62e9], a                                 ; $72ac: $ea $e9 $62
    rst $38                                       ; $72af: $ff
    ld [c], a                                     ; $72b0: $e2
    inc [hl]                                      ; $72b1: $34
    rst $38                                       ; $72b2: $ff
    ld b, l                                       ; $72b3: $45
    ld d, h                                       ; $72b4: $54
    ld d, l                                       ; $72b5: $55
    ld d, h                                       ; $72b6: $54
    ld d, h                                       ; $72b7: $54
    ld b, l                                       ; $72b8: $45
    ld b, a                                       ; $72b9: $47
    ld h, d                                       ; $72ba: $62
    and e                                         ; $72bb: $a3
    ld e, l                                       ; $72bc: $5d
    ld e, h                                       ; $72bd: $5c
    cp a                                          ; $72be: $bf
    ldh [$ca], a                                  ; $72bf: $e0 $ca
    rst $38                                       ; $72c1: $ff
    add sp, -$19                                  ; $72c2: $e8 $e7
    ld sp, $e0ff                                  ; $72c4: $31 $ff $e0
    ld c, l                                       ; $72c7: $4d
    rst $38                                       ; $72c8: $ff
    ld b, l                                       ; $72c9: $45
    ld b, h                                       ; $72ca: $44
    ld l, l                                       ; $72cb: $6d
    ld l, l                                       ; $72cc: $6d
    jr nc, jr_057_733c                            ; $72cd: $30 $6d

    ld l, l                                       ; $72cf: $6d
    ld l, d                                       ; $72d0: $6a
    sbc a                                         ; $72d1: $9f
    ld b, d                                       ; $72d2: $42
    inc a                                         ; $72d3: $3c
    ld sp, $6031                                  ; $72d4: $31 $31 $60
    add b                                         ; $72d7: $80
    rst $38                                       ; $72d8: $ff
    ret nz                                        ; $72d9: $c0

    db $ec                                        ; $72da: $ec
    ld b, a                                       ; $72db: $47
    rst $28                                       ; $72dc: $ef
    ld [hl-], a                                   ; $72dd: $32
    ld l, c                                       ; $72de: $69
    ld l, e                                       ; $72df: $6b
    ld l, d                                       ; $72e0: $6a
    cp a                                          ; $72e1: $bf
    db $e4                                        ; $72e2: $e4
    scf                                           ; $72e3: $37
    ld sp, $f331                                  ; $72e4: $31 $31 $f3
    ld h, d                                       ; $72e7: $62
    ld h, d                                       ; $72e8: $62
    jp z, $80ff                                   ; $72e9: $ca $ff $80

    jp hl                                         ; $72ec: $e9


    inc a                                         ; $72ed: $3c
    ld b, d                                       ; $72ee: $42
    ld l, e                                       ; $72ef: $6b
    ld l, c                                       ; $72f0: $69
    push bc                                       ; $72f1: $c5
    ld l, e                                       ; $72f2: $6b
    cp a                                          ; $72f3: $bf
    push hl                                       ; $72f4: $e5
    add hl, sp                                    ; $72f5: $39
    ld [hl], b                                    ; $72f6: $70
    pop hl                                        ; $72f7: $e1
    jp z, Jump_057_40ff                           ; $72f8: $ca $ff $40

    jp hl                                         ; $72fb: $e9


    ld d, e                                       ; $72fc: $53
    ld l, e                                       ; $72fd: $6b
    adc h                                         ; $72fe: $8c
    ret nz                                        ; $72ff: $c0

    pop hl                                        ; $7300: $e1
    ld a, [hl]                                    ; $7301: $7e
    db $e4                                        ; $7302: $e4
    ld d, d                                       ; $7303: $52
    and l                                         ; $7304: $a5
    rst $38                                       ; $7305: $ff
    ldh [$ca], a                                  ; $7306: $e0 $ca
    rst $38                                       ; $7308: $ff
    add b                                         ; $7309: $80
    ld [$1955], a                                 ; $730a: $ea $55 $19
    ld [hl], $c0                                  ; $730d: $36 $c0
    pop hl                                        ; $730f: $e1
    dec a                                         ; $7310: $3d
    db $e3                                        ; $7311: $e3
    ld d, d                                       ; $7312: $52
    add b                                         ; $7313: $80
    rst $38                                       ; $7314: $ff
    ldh [$ca], a                                  ; $7315: $e0 $ca
    rst $38                                       ; $7317: $ff
    ret nz                                        ; $7318: $c0

    set 0, a                                      ; $7319: $cb $c7
    ld b, a                                       ; $731b: $47
    ld b, l                                       ; $731c: $45
    ld b, h                                       ; $731d: $44
    cp a                                          ; $731e: $bf
    push hl                                       ; $731f: $e5
    ret nz                                        ; $7320: $c0

    rst $38                                       ; $7321: $ff
    add b                                         ; $7322: $80
    ret nc                                        ; $7323: $d0

    ld sp, $e131                                  ; $7324: $31 $31 $e1
    inc [hl]                                      ; $7327: $34
    cp [hl]                                       ; $7328: $be
    ld [c], a                                     ; $7329: $e2
    cp e                                          ; $732a: $bb
    ret nz                                        ; $732b: $c0

    ret nz                                        ; $732c: $c0

    rst $38                                       ; $732d: $ff
    db $ed                                        ; $732e: $ed
    db $ec                                        ; $732f: $ec
    inc d                                         ; $7330: $14
    inc d                                         ; $7331: $14
    ld [de], a                                    ; $7332: $12
    push bc                                       ; $7333: $c5
    ld de, $c23c                                  ; $7334: $11 $3c $c2
    ld [hl-], a                                   ; $7337: $32
    db $fc                                        ; $7338: $fc
    jp nz, $ffc0                                  ; $7339: $c2 $c0 $ff

jr_057_733c:
    db $ed                                        ; $733c: $ed
    db $ec                                        ; $733d: $ec
    inc h                                         ; $733e: $24
    inc h                                         ; $733f: $24
    db $eb                                        ; $7340: $eb
    ld [hl+], a                                   ; $7341: $22
    ld hl, $e2be                                  ; $7342: $21 $be $e2
    inc [hl]                                      ; $7345: $34
    cp a                                          ; $7346: $bf
    pop hl                                        ; $7347: $e1
    ld b, h                                       ; $7348: $44
    inc a                                         ; $7349: $3c
    xor b                                         ; $734a: $a8
    db $fc                                        ; $734b: $fc
    ret nz                                        ; $734c: $c0

    rst $38                                       ; $734d: $ff
    db $eb                                        ; $734e: $eb
    ld [$2020], a                                 ; $734f: $ea $20 $20
    jr nz, jr_057_7364                            ; $7352: $20 $10

    ld [hl+], a                                   ; $7354: $22
    ld hl, $297d                                  ; $7355: $21 $7d $29
    inc a                                         ; $7358: $3c
    ld [c], a                                     ; $7359: $e2
    ld d, h                                       ; $735a: $54
    ld b, l                                       ; $735b: $45
    inc [hl]                                      ; $735c: $34
    ld sp, $c0a0                                  ; $735d: $31 $a0 $c0
    rst $38                                       ; $7360: $ff
    nop                                           ; $7361: $00
    ret nz                                        ; $7362: $c0

    db $ed                                        ; $7363: $ed

jr_057_7364:
    cp [hl]                                       ; $7364: $be
    ldh [$bf], a                                  ; $7365: $e0 $bf
    ld [c], a                                     ; $7367: $e2
    push af                                       ; $7368: $f5
    jp nz, $ffc0                                  ; $7369: $c2 $c0 $ff

    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    nop                                           ; $7372: $00
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
    nop                                           ; $7383: $00
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
    nop                                           ; $7394: $00
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
    nop                                           ; $73a5: $00
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
    nop                                           ; $73b6: $00
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
    nop                                           ; $73c7: $00
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
    nop                                           ; $73d8: $00
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
    nop                                           ; $73e9: $00
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
    nop                                           ; $73fa: $00
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
    nop                                           ; $740b: $00
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
    nop                                           ; $741c: $00
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
    rst $30                                       ; $742c: $f7
    nop                                           ; $742d: $00
    nop                                           ; $742e: $00
    nop                                           ; $742f: $00
    and l                                         ; $7430: $a5
    nop                                           ; $7431: $00
    rst $38                                       ; $7432: $ff
    push hl                                       ; $7433: $e5
    ld [hl-], a                                   ; $7434: $32
    or $e6                                        ; $7435: $f6 $e6
    rst $30                                       ; $7437: $f7
    rst $20                                       ; $7438: $e7
    dec [hl]                                      ; $7439: $35
    db $ec                                        ; $743a: $ec
    xor $37                                       ; $743b: $ee $37
    db $ec                                        ; $743d: $ec
    jp c, $c7f0                                   ; $743e: $da $f0 $c7

    add sp, $33                                   ; $7441: $e8 $33
    ld sp, $f2e0                                  ; $7443: $31 $e0 $f2
    ld [hl], $30                                  ; $7446: $36 $30
    scf                                           ; $7448: $37
    cp a                                          ; $7449: $bf
    ld h, $20                                     ; $744a: $26 $20
    daa                                           ; $744c: $27
    db $10                                        ; $744d: $10
    ld d, $17                                     ; $744e: $16 $17
    jp nz, Jump_000_34f6                          ; $7450: $c2 $f6 $34

    rst $38                                       ; $7453: $ff
    ld [hl], $32                                  ; $7454: $36 $32
    jr nc, jr_057_748f                            ; $7456: $30 $37

    ld sp, $3133                                  ; $7458: $31 $33 $31
    inc sp                                        ; $745b: $33
    nop                                           ; $745c: $00
    and b                                         ; $745d: $a0
    ei                                            ; $745e: $fb
    rst $38                                       ; $745f: $ff
    rst $28                                       ; $7460: $ef
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    ld l, h                                       ; $7464: $6c
    ld [hl], h                                    ; $7465: $74
    sbc h                                         ; $7466: $9c
    ld [hl], h                                    ; $7467: $74
    inc e                                         ; $7468: $1c
    ld [hl], a                                    ; $7469: $77
    xor $78                                       ; $746a: $ee $78
    ldh a, [$03]                                  ; $746c: $f0 $03
    ld c, l                                       ; $746e: $4d
    rrca                                          ; $746f: $0f
    ld b, b                                       ; $7470: $40
    ld [bc], a                                    ; $7471: $02
    ret nz                                        ; $7472: $c0

    nop                                           ; $7473: $00
    ldh a, [$03]                                  ; $7474: $f0 $03
    push af                                       ; $7476: $f5
    inc bc                                        ; $7477: $03
    ld c, b                                       ; $7478: $48
    rrca                                          ; $7479: $0f
    ld b, b                                       ; $747a: $40
    ld [bc], a                                    ; $747b: $02
    ld e, a                                       ; $747c: $5f
    dec sp                                        ; $747d: $3b
    jr c, @+$10                                   ; $747e: $38 $0e

    ld sp, $4819                                  ; $7480: $31 $19 $48
    rrca                                          ; $7483: $0f
    ld [$0825], sp                                ; $7484: $08 $25 $08
    dec h                                         ; $7487: $25
    ld [$0825], sp                                ; $7488: $08 $25 $08
    dec h                                         ; $748b: $25
    ld [$0825], sp                                ; $748c: $08 $25 $08

jr_057_748f:
    dec h                                         ; $748f: $25
    ld [$0825], sp                                ; $7490: $08 $25 $08
    dec h                                         ; $7493: $25
    ld [$0825], sp                                ; $7494: $08 $25 $08
    dec h                                         ; $7497: $25
    ld [$0825], sp                                ; $7498: $08 $25 $08
    dec h                                         ; $749b: $25
    ld e, a                                       ; $749c: $5f
    ld c, h                                       ; $749d: $4c
    ld c, h                                       ; $749e: $4c
    dec bc                                        ; $749f: $0b
    dec bc                                        ; $74a0: $0b
    ld c, h                                       ; $74a1: $4c
    rst $38                                       ; $74a2: $ff
    jp hl                                         ; $74a3: $e9


    inc c                                         ; $74a4: $0c
    rst $38                                       ; $74a5: $ff
    db $e4                                        ; $74a6: $e4
    nop                                           ; $74a7: $00
    or $e0                                        ; $74a8: $f6 $e0
    db $f4                                        ; $74aa: $f4
    and $fb                                       ; $74ab: $e6 $fb
    ld a, [$eebe]                                 ; $74ad: $fa $be $ee
    cp l                                          ; $74b0: $bd
    ld [c], a                                     ; $74b1: $e2
    cp b                                          ; $74b2: $b8
    ldh [$b4], a                                  ; $74b3: $e0 $b4
    ld [c], a                                     ; $74b5: $e2
    ld hl, sp-$1f                                 ; $74b6: $f8 $e1
    inc e                                         ; $74b8: $1c
    ldh a, [$e4]                                  ; $74b9: $f0 $e4
    jp nz, Jump_057_6cf4                          ; $74bb: $c2 $f4 $6c

    inc l                                         ; $74be: $2c
    dec bc                                        ; $74bf: $0b
    rst $38                                       ; $74c0: $ff
    ldh [$89], a                                  ; $74c1: $e0 $89
    rst $20                                       ; $74c3: $e7
    ld a, l                                       ; $74c4: $7d
    pop hl                                        ; $74c5: $e1
    ld [$e5c5], sp                                ; $74c6: $08 $c5 $e5
    ld a, c                                       ; $74c9: $79
    rst $38                                       ; $74ca: $ff
    ld b, h                                       ; $74cb: $44
    ldh [$6c], a                                  ; $74cc: $e0 $6c
    ret nz                                        ; $74ce: $c0

    pop hl                                        ; $74cf: $e1
    db $fc                                        ; $74d0: $fc
    rst $20                                       ; $74d1: $e7
    dec a                                         ; $74d2: $3d
    and $81                                       ; $74d3: $e6 $81
    push hl                                       ; $74d5: $e5
    inc e                                         ; $74d6: $1c
    ld a, c                                       ; $74d7: $79
    db $fd                                        ; $74d8: $fd
    add c                                         ; $74d9: $81
    ldh [rOCPD], a                                ; $74da: $e0 $6b
    ld l, e                                       ; $74dc: $6b
    ld c, e                                       ; $74dd: $4b
    rst $38                                       ; $74de: $ff
    push hl                                       ; $74df: $e5
    ld [hl], h                                    ; $74e0: $74
    pop hl                                        ; $74e1: $e1
    ld a, h                                       ; $74e2: $7c
    db $e3                                        ; $74e3: $e3
    db $10                                        ; $74e4: $10
    push bc                                       ; $74e5: $c5
    push hl                                       ; $74e6: $e5
    rst $30                                       ; $74e7: $f7
    ret nz                                        ; $74e8: $c0

    db $fd                                        ; $74e9: $fd
    db $e4                                        ; $74ea: $e4
    ld [c], a                                     ; $74eb: $e2
    jp $dd2c                                      ; $74ec: $c3 $2c $dd


    jp $e3f9                                      ; $74ef: $c3 $f9 $e3


    ld b, h                                       ; $74f2: $44
    pop hl                                        ; $74f3: $e1
    rst $38                                       ; $74f4: $ff
    ld l, e                                       ; $74f5: $6b
    ld l, e                                       ; $74f6: $6b
    ld l, e                                       ; $74f7: $6b
    dec bc                                        ; $74f8: $0b
    ld c, e                                       ; $74f9: $4b
    ld c, e                                       ; $74fa: $4b
    dec hl                                        ; $74fb: $2b
    dec hl                                        ; $74fc: $2b
    ld b, c                                       ; $74fd: $41
    dec hl                                        ; $74fe: $2b
    jp nz, $c0e0                                  ; $74ff: $c2 $e0 $c0

    push hl                                       ; $7502: $e5
    call nz, $b4ca                                ; $7503: $c4 $ca $b4
    ret c                                         ; $7506: $d8

    jp nz, Jump_000_0be3                          ; $7507: $c2 $e3 $0b

    ret nz                                        ; $750a: $c0

    db $e3                                        ; $750b: $e3
    ret nz                                        ; $750c: $c0

    ld sp, hl                                     ; $750d: $f9
    pop hl                                        ; $750e: $e1
    ld a, a                                       ; $750f: $7f
    ldh [$f5], a                                  ; $7510: $e0 $f5
    jp z, $fc3b                                   ; $7512: $ca $3b $fc

    jp nz, $4be2                                  ; $7515: $c2 $e2 $4b

    pop hl                                        ; $7518: $e1
    dec bc                                        ; $7519: $0b
    dec hl                                        ; $751a: $2b
    ld bc, $c04b                                  ; $751b: $01 $4b $c0
    ldh [$78], a                                  ; $751e: $e0 $78
    ldh [$b4], a                                  ; $7520: $e0 $b4
    call nz, $e34f                                ; $7522: $c4 $4f $e3
    inc a                                         ; $7525: $3c
    ret nz                                        ; $7526: $c0

    dec sp                                        ; $7527: $3b
    di                                            ; $7528: $f3
    ret nz                                        ; $7529: $c0

    and $01                                       ; $752a: $e6 $01
    dec bc                                        ; $752c: $0b
    jp z, Jump_057_7ee2                           ; $752d: $ca $e2 $7e

    pop hl                                        ; $7530: $e1
    ld b, b                                       ; $7531: $40
    ld [c], a                                     ; $7532: $e2
    ld [hl], h                                    ; $7533: $74
    ret z                                         ; $7534: $c8

    ld bc, $fec9                                  ; $7535: $01 $c9 $fe
    add $eb                                       ; $7538: $c6 $eb
    xor l                                         ; $753a: $ad
    ld bc, $ca0b                                  ; $753b: $01 $0b $ca
    db $e3                                        ; $753e: $e3
    pop bc                                        ; $753f: $c1
    pop bc                                        ; $7540: $c1
    ret nz                                        ; $7541: $c0

    and $4a                                       ; $7542: $e6 $4a
    and $31                                       ; $7544: $e6 $31
    jp $c6b4                                      ; $7546: $c3 $b4 $c6


    ld h, $c5                                     ; $7549: $26 $c5
    inc b                                         ; $754b: $04
    xor b                                         ; $754c: $a8
    xor c                                         ; $754d: $a9
    ret nz                                        ; $754e: $c0

    rst $20                                       ; $754f: $e7
    ld l, e                                       ; $7550: $6b
    cp $e0                                        ; $7551: $fe $e0
    ld a, a                                       ; $7553: $7f
    db $e3                                        ; $7554: $e3
    adc d                                         ; $7555: $8a
    call nz, $e6c0                                ; $7556: $c4 $c0 $e6
    ld a, d                                       ; $7559: $7a
    add $38                                       ; $755a: $c6 $38
    ld [hl-], a                                   ; $755c: $32
    jp nz, $a25d                                  ; $755d: $c2 $5d $a2

    ld a, h                                       ; $7560: $7c
    call nz, $0c0c                                ; $7561: $c4 $0c $0c
    dec hl                                        ; $7564: $2b
    jp z, Jump_057_42e2                           ; $7565: $ca $e2 $42

    pop bc                                        ; $7568: $c1

jr_057_7569:
    nop                                           ; $7569: $00
    inc a                                         ; $756a: $3c
    jp nz, $e640                                  ; $756b: $c2 $40 $e6

    ld b, h                                       ; $756e: $44
    xor h                                         ; $756f: $ac
    ld l, l                                       ; $7570: $6d
    add sp, $2e                                   ; $7571: $e8 $2e
    xor e                                         ; $7573: $ab
    adc e                                         ; $7574: $8b
    ret nz                                        ; $7575: $c0

    inc c                                         ; $7576: $0c
    jp nz, $c480                                  ; $7577: $c2 $80 $c4

    nop                                           ; $757a: $00
    nop                                           ; $757b: $00
    di                                            ; $757c: $f3
    ld a, b                                       ; $757d: $78
    rst $00                                       ; $757e: $c7
    db $ec                                        ; $757f: $ec
    adc [hl]                                      ; $7580: $8e
    nop                                           ; $7581: $00
    ldh [$81], a                                  ; $7582: $e0 $81
    xor d                                         ; $7584: $aa
    inc sp                                        ; $7585: $33
    pop bc                                        ; $7586: $c1
    call c, $fea2                                 ; $7587: $dc $a2 $fe
    xor a                                         ; $758a: $af
    ld b, h                                       ; $758b: $44
    ld l, a                                       ; $758c: $6f
    call nz, $819c                                ; $758d: $c4 $9c $81
    inc l                                         ; $7590: $2c
    rst $38                                       ; $7591: $ff
    ldh [$83], a                                  ; $7592: $e0 $83
    and [hl]                                      ; $7594: $a6
    jp nz, $0aec                                  ; $7595: $c2 $ec $0a

    ld b, b                                       ; $7598: $40
    call nz, Call_057_4100                        ; $7599: $c4 $00 $41
    db $ec                                        ; $759c: $ec
    jr nc, jr_057_7569                            ; $759d: $30 $ca

    ret nz                                        ; $759f: $c0

    di                                            ; $75a0: $f3
    or a                                          ; $75a1: $b7
    and d                                         ; $75a2: $a2
    or h                                          ; $75a3: $b4
    add e                                         ; $75a4: $83
    jr c, @-$7a                                   ; $75a5: $38 $84

    ld d, l                                       ; $75a7: $55
    and e                                         ; $75a8: $a3
    add hl, sp                                    ; $75a9: $39
    and h                                         ; $75aa: $a4
    ld [bc], a                                    ; $75ab: $02
    rra                                           ; $75ac: $1f
    add [hl]                                      ; $75ad: $86
    ld c, h                                       ; $75ae: $4c
    add c                                         ; $75af: $81
    rst $20                                       ; $75b0: $e7
    dec hl                                        ; $75b1: $2b
    sub [hl]                                      ; $75b2: $96
    add l                                         ; $75b3: $85
    adc c                                         ; $75b4: $89
    di                                            ; $75b5: $f3
    add sp, -$57                                  ; $75b6: $e8 $a9
    db $e4                                        ; $75b8: $e4
    ret nz                                        ; $75b9: $c0

    ld a, [c]                                     ; $75ba: $f2
    nop                                           ; $75bb: $00
    adc $6f                                       ; $75bc: $ce $6f
    or d                                          ; $75be: $b2
    ld l, b                                       ; $75bf: $68
    ld b, $c7                                     ; $75c0: $06 $c7
    or $76                                        ; $75c2: $f6 $76
    ld d, l                                       ; $75c4: $55
    adc a                                         ; $75c5: $8f
    sub b                                         ; $75c6: $90
    add l                                         ; $75c7: $85
    ccf                                           ; $75c8: $3f
    and $32                                       ; $75c9: $e6 $32
    add h                                         ; $75cb: $84
    nop                                           ; $75cc: $00
    pop bc                                        ; $75cd: $c1
    jp nz, $eb3e                                  ; $75ce: $c2 $3e $eb

    ld a, [de]                                    ; $75d1: $1a
    or h                                          ; $75d2: $b4
    ld c, l                                       ; $75d3: $4d
    rst $00                                       ; $75d4: $c7
    inc h                                         ; $75d5: $24
    ld h, d                                       ; $75d6: $62
    dec hl                                        ; $75d7: $2b
    ld h, h                                       ; $75d8: $64
    ret nz                                        ; $75d9: $c0

    db $ec                                        ; $75da: $ec
    adc $67                                       ; $75db: $ce $67
    nop                                           ; $75dd: $00
    ld a, [de]                                    ; $75de: $1a
    xor h                                         ; $75df: $ac
    sub b                                         ; $75e0: $90
    and e                                         ; $75e1: $a3
    ld l, h                                       ; $75e2: $6c
    ld h, l                                       ; $75e3: $65
    push af                                       ; $75e4: $f5
    and [hl]                                      ; $75e5: $a6
    ld b, b                                       ; $75e6: $40
    ret                                           ; $75e7: $c9


    jp c, Jump_000_1ae6                           ; $75e8: $da $e6 $1a

    xor a                                         ; $75eb: $af
    ei                                            ; $75ec: $fb
    push hl                                       ; $75ed: $e5
    nop                                           ; $75ee: $00
    push bc                                       ; $75ef: $c5
    add [hl]                                      ; $75f0: $86
    sub $e7                                       ; $75f1: $d6 $e7
    ld a, a                                       ; $75f3: $7f
    ret z                                         ; $75f4: $c8

    ld h, e                                       ; $75f5: $63
    rst $00                                       ; $75f6: $c7
    ld a, [de]                                    ; $75f7: $1a
    xor a                                         ; $75f8: $af
    ld b, d                                       ; $75f9: $42
    add d                                         ; $75fa: $82
    ld [hl], e                                    ; $75fb: $73
    ld h, h                                       ; $75fc: $64
    xor h                                         ; $75fd: $ac
    ld l, l                                       ; $75fe: $6d
    nop                                           ; $75ff: $00
    ld hl, $1ab0                                  ; $7600: $21 $b0 $1a
    xor [hl]                                      ; $7603: $ae
    add [hl]                                      ; $7604: $86
    ld d, b                                       ; $7605: $50
    ccf                                           ; $7606: $3f
    pop de                                        ; $7607: $d1
    ld b, a                                       ; $7608: $47
    ret nc                                        ; $7609: $d0

    dec d                                         ; $760a: $15
    rst $20                                       ; $760b: $e7
    halt                                          ; $760c: $76
    ld b, l                                       ; $760d: $45
    ld [hl], d                                    ; $760e: $72
    ld b, [hl]                                    ; $760f: $46
    nop                                           ; $7610: $00
    ld b, b                                       ; $7611: $40
    xor e                                         ; $7612: $ab
    sbc h                                         ; $7613: $9c
    ld d, c                                       ; $7614: $51
    call nc, $bc47                                ; $7615: $d4 $47 $bc
    ld [hl+], a                                   ; $7618: $22
    or $e5                                        ; $7619: $f6 $e5
    ld a, [hl]                                    ; $761b: $7e
    jp $21a7                                      ; $761c: $c3 $a7 $21


    add e                                         ; $761f: $83
    db $ec                                        ; $7620: $ec
    nop                                           ; $7621: $00
    sbc h                                         ; $7622: $9c
    ld c, l                                       ; $7623: $4d
    ld c, d                                       ; $7624: $4a
    ld h, [hl]                                    ; $7625: $66
    or e                                          ; $7626: $b3
    push hl                                       ; $7627: $e5
    ld [hl], e                                    ; $7628: $73
    inc hl                                        ; $7629: $23
    halt                                          ; $762a: $76
    rst $00                                       ; $762b: $c7
    ld b, d                                       ; $762c: $42
    xor [hl]                                      ; $762d: $ae
    ld h, c                                       ; $762e: $61
    ld l, e                                       ; $762f: $6b
    cp h                                          ; $7630: $bc
    dec h                                         ; $7631: $25
    nop                                           ; $7632: $00
    ret nc                                        ; $7633: $d0

    ld h, l                                       ; $7634: $65
    ld [hl], d                                    ; $7635: $72
    rst $00                                       ; $7636: $c7
    ld b, b                                       ; $7637: $40
    and l                                         ; $7638: $a5
    ret nz                                        ; $7639: $c0

    ld a, [hl+]                                   ; $763a: $2a
    ld h, c                                       ; $763b: $61
    ld l, a                                       ; $763c: $6f
    dec d                                         ; $763d: $15
    add $78                                       ; $763e: $c6 $78
    daa                                           ; $7640: $27
    xor l                                         ; $7641: $ad
    ld a, [hl+]                                   ; $7642: $2a
    nop                                           ; $7643: $00
    ret nz                                        ; $7644: $c0

    db $eb                                        ; $7645: $eb
    ld h, c                                       ; $7646: $61
    ld l, [hl]                                    ; $7647: $6e
    ld b, e                                       ; $7648: $43
    add hl, hl                                    ; $7649: $29
    jp $edc9                                      ; $764a: $c3 $c9 $ed


    adc e                                         ; $764d: $8b
    ld h, c                                       ; $764e: $61
    ld a, c                                       ; $764f: $79
    ld l, [hl]                                    ; $7650: $6e
    xor b                                         ; $7651: $a8
    ld a, c                                       ; $7652: $79
    jr z, jr_057_7655                             ; $7653: $28 $00

jr_057_7655:
    add hl, hl                                    ; $7655: $29
    adc h                                         ; $7656: $8c
    ld h, c                                       ; $7657: $61
    ld [hl], a                                    ; $7658: $77
    ld b, d                                       ; $7659: $42
    inc h                                         ; $765a: $24
    ld b, [hl]                                    ; $765b: $46
    ld c, e                                       ; $765c: $4b
    inc [hl]                                      ; $765d: $34
    inc h                                         ; $765e: $24
    add a                                         ; $765f: $87
    ld h, c                                       ; $7660: $61
    jp $c280                                      ; $7661: $c3 $80 $c2


    adc [hl]                                      ; $7664: $8e
    nop                                           ; $7665: $00
    ld h, c                                       ; $7666: $61
    ld l, b                                       ; $7667: $68
    ld d, a                                       ; $7668: $57
    ld [$caa8], a                                 ; $7669: $ea $a8 $ca
    push bc                                       ; $766c: $c5
    ld h, d                                       ; $766d: $62
    nop                                           ; $766e: $00
    adc a                                         ; $766f: $8f
    ld h, c                                       ; $7670: $61
    ld l, l                                       ; $7671: $6d
    ld [bc], a                                    ; $7672: $02
    jp hl                                         ; $7673: $e9


    add hl, bc                                    ; $7674: $09
    ld c, d                                       ; $7675: $4a
    ld bc, $454c                                  ; $7676: $01 $4c $45
    jp Jump_057_6b81                              ; $7679: $c3 $81 $6b


    ld h, c                                       ; $767c: $61
    ld l, [hl]                                    ; $767d: $6e
    dec sp                                        ; $767e: $3b
    push bc                                       ; $767f: $c5
    add hl, bc                                    ; $7680: $09
    ld c, a                                       ; $7681: $4f
    rst $28                                       ; $7682: $ef
    ld h, h                                       ; $7683: $64
    ret nz                                        ; $7684: $c0

    db $ec                                        ; $7685: $ec
    nop                                           ; $7686: $00
    ld h, c                                       ; $7687: $61
    ld l, l                                       ; $7688: $6d
    add hl, bc                                    ; $7689: $09
    ld d, [hl]                                    ; $768a: $56
    ld a, b                                       ; $768b: $78
    ld d, $61                                     ; $768c: $16 $61
    ld [hl], e                                    ; $768e: $73
    add hl, bc                                    ; $768f: $09
    ld c, l                                       ; $7690: $4d
    add c                                         ; $7691: $81
    ld l, d                                       ; $7692: $6a
    jr nc, jr_057_769b                            ; $7693: $30 $06

    ld h, c                                       ; $7695: $61
    ld l, a                                       ; $7696: $6f
    nop                                           ; $7697: $00
    add hl, bc                                    ; $7698: $09
    ld d, [hl]                                    ; $7699: $56
    ret nz                                        ; $769a: $c0

jr_057_769b:
    ld a, [c]                                     ; $769b: $f2
    ld a, d                                       ; $769c: $7a
    ld e, e                                       ; $769d: $5b
    add hl, sp                                    ; $769e: $39
    add hl, bc                                    ; $769f: $09
    ld b, c                                       ; $76a0: $41
    or $af                                        ; $76a1: $f6 $af
    ld d, h                                       ; $76a3: $54
    add hl, bc                                    ; $76a4: $09
    ld c, l                                       ; $76a5: $4d
    xor d                                         ; $76a6: $aa
    add a                                         ; $76a7: $87
    nop                                           ; $76a8: $00
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    xor b                                         ; $76ab: $a8
    jp nc, $ff7f                                  ; $76ac: $d2 $7f $ff

    xor b                                         ; $76af: $a8
    jp c, $cfe0                                   ; $76b0: $da $e0 $cf

    ld a, a                                       ; $76b3: $7f
    ld sp, hl                                     ; $76b4: $f9
    xor b                                         ; $76b5: $a8
    ret nc                                        ; $76b6: $d0

    add b                                         ; $76b7: $80
    rst $38                                       ; $76b8: $ff
    nop                                           ; $76b9: $00
    ret nz                                        ; $76ba: $c0

    ld [$684f], a                                 ; $76bb: $ea $4f $68
    inc bc                                        ; $76be: $03
    ld b, h                                       ; $76bf: $44
    add b                                         ; $76c0: $80
    rst $38                                       ; $76c1: $ff
    ld l, h                                       ; $76c2: $6c
    jr nc, jr_057_76f5                            ; $76c3: $30 $30

    ld b, [hl]                                    ; $76c5: $46
    ld b, c                                       ; $76c6: $41
    sub [hl]                                      ; $76c7: $96
    ld a, a                                       ; $76c8: $7f
    call c, $c000                                 ; $76c9: $dc $00 $c0
    add sp, -$01                                  ; $76cc: $e8 $ff
    rst $38                                       ; $76ce: $ff
    di                                            ; $76cf: $f3
    call nc, $bfcd                                ; $76d0: $d4 $cd $bf
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    sub [hl]                                      ; $76d7: $96
    rst $38                                       ; $76d8: $ff
    sbc c                                         ; $76d9: $99
    db $d3                                        ; $76da: $d3
    nop                                           ; $76db: $00
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    scf                                           ; $76e4: $37
    db $eb                                        ; $76e5: $eb
    call c, $ffff                                 ; $76e6: $dc $ff $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    nop                                           ; $76ec: $00
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff

jr_057_76f4:
    rst $38                                       ; $76f4: $ff

jr_057_76f5:
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    nop                                           ; $76fd: $00
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff

Jump_057_7700:
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
    nop                                           ; $770c: $00
    cp a                                          ; $770d: $bf
    nop                                           ; $770e: $00
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    ld d, [hl]                                    ; $7717: $56
    ld [hl], e                                    ; $7718: $73
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00
    rst $38                                       ; $771c: $ff
    ld a, [bc]                                    ; $771d: $0a
    dec bc                                        ; $771e: $0b
    ld sp, $1131                                  ; $771f: $31 $31 $11
    ld [de], a                                    ; $7722: $12
    ld hl, $7d22                                  ; $7723: $21 $22 $7d
    inc h                                         ; $7726: $24
    rst $38                                       ; $7727: $ff
    db $e4                                        ; $7728: $e4
    jr z, jr_057_774b                             ; $7729: $28 $20

    jr nz, jr_057_774d                            ; $772b: $20 $20

    nop                                           ; $772d: $00
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    sub $e7                                       ; $7730: $d6 $e7
    and $20                                       ; $7732: $e6 $20
    jr nz, jr_057_76f4                            ; $7734: $20 $be

    db $e3                                        ; $7736: $e3
    inc d                                         ; $7737: $14
    rst $38                                       ; $7738: $ff
    db $e4                                        ; $7739: $e4
    ld hl, $b122                                  ; $773a: $21 $22 $b1
    db $10                                        ; $773d: $10
    ret nz                                        ; $773e: $c0

    rst $38                                       ; $773f: $ff
    jp hl                                         ; $7740: $e9


    add sp, -$72                                  ; $7741: $e8 $8e
    ldh [$2b], a                                  ; $7743: $e0 $2b
    ld sp, $e0ff                                  ; $7745: $31 $ff $e0
    inc b                                         ; $7748: $04
    jr nz, @+$01                                  ; $7749: $20 $ff

jr_057_774b:
    db $e4                                        ; $774b: $e4
    ld [hl], h                                    ; $774c: $74

jr_057_774d:
    pop hl                                        ; $774d: $e1
    jp z, $e8ff                                   ; $774e: $ca $ff $e8

    rst $20                                       ; $7751: $e7
    adc b                                         ; $7752: $88
    ldh [$29], a                                  ; $7753: $e0 $29
    ret nz                                        ; $7755: $c0

    pop hl                                        ; $7756: $e1
    db $fc                                        ; $7757: $fc
    rst $20                                       ; $7758: $e7
    jp $1211                                      ; $7759: $c3 $11 $12


    jp z, $e8ff                                   ; $775c: $ca $ff $e8

    rst $20                                       ; $775f: $e7
    adc b                                         ; $7760: $88
    ldh [$81], a                                  ; $7761: $e0 $81
    ldh [rBGP], a                                 ; $7763: $e0 $47
    ld a, [hl-]                                   ; $7765: $3a
    rst $38                                       ; $7766: $ff
    ld d, h                                       ; $7767: $54
    ld d, h                                       ; $7768: $54
    ld d, l                                       ; $7769: $55
    ld d, l                                       ; $776a: $55
    ld d, l                                       ; $776b: $55
    ld d, h                                       ; $776c: $54
    ld d, l                                       ; $776d: $55
    dec sp                                        ; $776e: $3b
    pop hl                                        ; $776f: $e1
    ld c, l                                       ; $7770: $4d
    ld [hl], e                                    ; $7771: $73
    ldh [$ca], a                                  ; $7772: $e0 $ca
    rst $38                                       ; $7774: $ff
    add sp, -$19                                  ; $7775: $e8 $e7
    ld b, h                                       ; $7777: $44
    pop hl                                        ; $7778: $e1
    ld b, a                                       ; $7779: $47
    ld b, [hl]                                    ; $777a: $46
    ld [hl], $df                                  ; $777b: $36 $df
    ld l, e                                       ; $777d: $6b
    jr nc, @+$32                                  ; $777e: $30 $30

    ld l, e                                       ; $7780: $6b
    ld l, c                                       ; $7781: $69
    ei                                            ; $7782: $fb
    ldh [$30], a                                  ; $7783: $e0 $30
    add hl, sp                                    ; $7785: $39
    ldh [$c0], a                                  ; $7786: $e0 $c0
    rst $38                                       ; $7788: $ff
    ret nz                                        ; $7789: $c0

    db $ec                                        ; $778a: $ec
    jp nz, $c5e1                                  ; $778b: $c2 $e1 $c5

    pop hl                                        ; $778e: $e1
    ret nz                                        ; $778f: $c0

    ldh [$6c], a                                  ; $7790: $e0 $6c
    ld l, h                                       ; $7792: $6c
    jr nc, jr_057_7808                            ; $7793: $30 $73

    ld c, b                                       ; $7795: $48
    ld c, c                                       ; $7796: $49
    ret nz                                        ; $7797: $c0

    rst $38                                       ; $7798: $ff
    ld [$4de9], a                                 ; $7799: $ea $e9 $4d
    ld b, [hl]                                    ; $779c: $46
    ld [hl], $ca                                  ; $779d: $36 $ca
    ldh [rIE], a                                  ; $779f: $e0 $ff
    ld l, l                                       ; $77a1: $6d
    ld l, d                                       ; $77a2: $6a
    ld l, h                                       ; $77a3: $6c
    ld l, h                                       ; $77a4: $6c
    ld l, d                                       ; $77a5: $6a
    jr nc, jr_057_7815                            ; $77a6: $30 $6d

    ld l, h                                       ; $77a8: $6c
    and e                                         ; $77a9: $a3
    ld l, h                                       ; $77aa: $6c
    ld l, l                                       ; $77ab: $6d
    ld a, a                                       ; $77ac: $7f
    pop hl                                        ; $77ad: $e1
    jp z, $e8ff                                   ; $77ae: $ca $ff $e8

    rst $20                                       ; $77b1: $e7
    add hl, sp                                    ; $77b2: $39
    jp z, $6de3                                   ; $77b3: $ca $e3 $6d

    cpl                                           ; $77b6: $2f
    ld l, b                                       ; $77b7: $68
    ld l, b                                       ; $77b8: $68
    jr nc, jr_057_7826                            ; $77b9: $30 $6b

    dec sp                                        ; $77bb: $3b
    pop hl                                        ; $77bc: $e1
    ld l, e                                       ; $77bd: $6b
    ret nz                                        ; $77be: $c0

    rst $38                                       ; $77bf: $ff
    db $eb                                        ; $77c0: $eb
    ld [$5321], a                                 ; $77c1: $ea $21 $53
    jp z, Jump_000_06e3                           ; $77c4: $ca $e3 $06

    ldh [$c0], a                                  ; $77c7: $e0 $c0
    db $e3                                        ; $77c9: $e3
    ld b, b                                       ; $77ca: $40
    ldh [$5e], a                                  ; $77cb: $e0 $5e
    jp z, $c0ff                                   ; $77cd: $ca $ff $c0

    xor $90                                       ; $77d0: $ee $90
    add b                                         ; $77d2: $80
    ldh [$7b], a                                  ; $77d3: $e0 $7b
    ldh [rLCDC], a                                ; $77d5: $e0 $40
    ldh [$c0], a                                  ; $77d7: $e0 $c0
    ret nz                                        ; $77d9: $c0

    ld e, a                                       ; $77da: $5f
    jp z, $e8ff                                   ; $77db: $ca $ff $e8

    rst $20                                       ; $77de: $e7
    add e                                         ; $77df: $83

Jump_057_77e0:
    ld a, h                                       ; $77e0: $7c
    ld a, [bc]                                    ; $77e1: $0a
    ld [c], a                                     ; $77e2: $e2
    nop                                           ; $77e3: $00
    ld [c], a                                     ; $77e4: $e2
    ld l, l                                       ; $77e5: $6d
    jr nc, jr_057_7854                            ; $77e6: $30 $6c

    ld l, h                                       ; $77e8: $6c
    ld [hl], $81                                  ; $77e9: $36 $81
    ldh [$99], a                                  ; $77eb: $e0 $99
    ld e, e                                       ; $77ed: $5b
    jp z, $e8ff                                   ; $77ee: $ca $ff $e8

    rst $20                                       ; $77f1: $e7
    add h                                         ; $77f2: $84
    ld [hl], $ca                                  ; $77f3: $36 $ca
    ldh [$80], a                                  ; $77f5: $e0 $80
    push bc                                       ; $77f7: $c5
    ld [hl], $e3                                  ; $77f8: $36 $e3
    ld b, [hl]                                    ; $77fa: $46
    ld b, a                                       ; $77fb: $47
    add c                                         ; $77fc: $81
    ldh [$c0], a                                  ; $77fd: $e0 $c0
    rst $38                                       ; $77ff: $ff
    jp hl                                         ; $7800: $e9


    add sp, -$80                                  ; $7801: $e8 $80
    ld l, a                                       ; $7803: $6f
    ld a, [hl]                                    ; $7804: $7e
    reti                                          ; $7805: $d9


    ld d, h                                       ; $7806: $54
    ret z                                         ; $7807: $c8

jr_057_7808:
    and b                                         ; $7808: $a0
    pop bc                                        ; $7809: $c1
    and b                                         ; $780a: $a0
    ld d, h                                       ; $780b: $54
    ld d, h                                       ; $780c: $54
    jp nz, $5de1                                  ; $780d: $c2 $e1 $5d

    ld e, h                                       ; $7810: $5c
    sub c                                         ; $7811: $91
    ld e, e                                       ; $7812: $5b
    ret nz                                        ; $7813: $c0

    rst $38                                       ; $7814: $ff

jr_057_7815:
    ret nz                                        ; $7815: $c0

    jp hl                                         ; $7816: $e9


    rst $38                                       ; $7817: $ff
    db $e4                                        ; $7818: $e4
    and c                                         ; $7819: $a1
    dec sp                                        ; $781a: $3b
    and d                                         ; $781b: $a2
    jp nz, Jump_057_5ae1                          ; $781c: $c2 $e1 $5a

    nop                                           ; $781f: $00
    ret nz                                        ; $7820: $c0

    rst $38                                       ; $7821: $ff
    ret nz                                        ; $7822: $c0

    db $f4                                        ; $7823: $f4
    add h                                         ; $7824: $84
    pop hl                                        ; $7825: $e1

jr_057_7826:
    cp $e1                                        ; $7826: $fe $e1
    jp z, $ffff                                   ; $7828: $ca $ff $ff

    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    nop                                           ; $7830: $00
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
    nop                                           ; $7841: $00
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
    nop                                           ; $7852: $00
    rst $38                                       ; $7853: $ff

jr_057_7854:
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
    nop                                           ; $7863: $00
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
    nop                                           ; $7874: $00
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
    nop                                           ; $7885: $00
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
    nop                                           ; $7896: $00
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
    nop                                           ; $78a7: $00
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
    nop                                           ; $78b8: $00
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
    nop                                           ; $78c9: $00
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
    nop                                           ; $78da: $00
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
    di                                            ; $78ea: $f3
    nop                                           ; $78eb: $00
    nop                                           ; $78ec: $00
    nop                                           ; $78ed: $00
    and l                                         ; $78ee: $a5
    nop                                           ; $78ef: $00
    rst $38                                       ; $78f0: $ff
    push hl                                       ; $78f1: $e5
    ld [hl-], a                                   ; $78f2: $32
    or $e6                                        ; $78f3: $f6 $e6
    rst $30                                       ; $78f5: $f7
    rst $20                                       ; $78f6: $e7
    dec [hl]                                      ; $78f7: $35
    db $ec                                        ; $78f8: $ec
    xor $37                                       ; $78f9: $ee $37
    db $ec                                        ; $78fb: $ec
    jp c, $c7f0                                   ; $78fc: $da $f0 $c7

    add sp, $33                                   ; $78ff: $e8 $33
    ld sp, $f2e0                                  ; $7901: $31 $e0 $f2
    ld [hl], $30                                  ; $7904: $36 $30
    scf                                           ; $7906: $37
    cp a                                          ; $7907: $bf
    ld h, $20                                     ; $7908: $26 $20
    daa                                           ; $790a: $27
    db $10                                        ; $790b: $10
    ld d, $17                                     ; $790c: $16 $17
    jp nz, Jump_000_34f6                          ; $790e: $c2 $f6 $34

    rst $38                                       ; $7911: $ff
    ld [hl], $32                                  ; $7912: $36 $32
    jr nc, jr_057_794d                            ; $7914: $30 $37

    ld sp, $3133                                  ; $7916: $31 $33 $31
    inc sp                                        ; $7919: $33
    nop                                           ; $791a: $00
    and b                                         ; $791b: $a0
    ei                                            ; $791c: $fb
    rst $38                                       ; $791d: $ff
    rst $28                                       ; $791e: $ef
    nop                                           ; $791f: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    ld a, [hl+]                                   ; $7922: $2a
    ld a, c                                       ; $7923: $79
    ld e, d                                       ; $7924: $5a
    ld a, c                                       ; $7925: $79
    ld [$a97b], a                                 ; $7926: $ea $7b $a9
    ld a, l                                       ; $7929: $7d
    ldh a, [$03]                                  ; $792a: $f0 $03
    ld c, l                                       ; $792c: $4d
    rrca                                          ; $792d: $0f
    ld b, b                                       ; $792e: $40
    ld [bc], a                                    ; $792f: $02
    ret nz                                        ; $7930: $c0

    nop                                           ; $7931: $00
    ldh a, [$03]                                  ; $7932: $f0 $03
    push af                                       ; $7934: $f5
    inc bc                                        ; $7935: $03
    ld c, b                                       ; $7936: $48
    rrca                                          ; $7937: $0f
    ld b, b                                       ; $7938: $40
    ld [bc], a                                    ; $7939: $02
    ld e, a                                       ; $793a: $5f
    dec sp                                        ; $793b: $3b
    jr c, @+$10                                   ; $793c: $38 $0e

    ld sp, $4819                                  ; $793e: $31 $19 $48
    rrca                                          ; $7941: $0f
    ld [$0825], sp                                ; $7942: $08 $25 $08
    dec h                                         ; $7945: $25
    ld [$0825], sp                                ; $7946: $08 $25 $08
    dec h                                         ; $7949: $25
    ld [$0825], sp                                ; $794a: $08 $25 $08

jr_057_794d:
    dec h                                         ; $794d: $25
    ld [$0825], sp                                ; $794e: $08 $25 $08
    dec h                                         ; $7951: $25
    ld [$0825], sp                                ; $7952: $08 $25 $08
    dec h                                         ; $7955: $25
    ld [$0825], sp                                ; $7956: $08 $25 $08
    dec h                                         ; $7959: $25
    db $ed                                        ; $795a: $ed
    inc c                                         ; $795b: $0c
    rst $38                                       ; $795c: $ff
    rst $20                                       ; $795d: $e7
    inc l                                         ; $795e: $2c
    dec bc                                        ; $795f: $0b
    rst $38                                       ; $7960: $ff
    pop hl                                        ; $7961: $e1
    ld c, e                                       ; $7962: $4b
    ld c, e                                       ; $7963: $4b
    ld a, [bc]                                    ; $7964: $0a
    add [hl]                                      ; $7965: $86
    db $ec                                        ; $7966: $ec
    ldh [$4c], a                                  ; $7967: $e0 $4c
    ld c, h                                       ; $7969: $4c
    db $fd                                        ; $796a: $fd
    rst $20                                       ; $796b: $e7
    db $fc                                        ; $796c: $fc
    push hl                                       ; $796d: $e5
    or $e0                                        ; $796e: $f6 $e0
    cp $f7                                        ; $7970: $fe $f7
    ld c, h                                       ; $7972: $4c
    cp a                                          ; $7973: $bf
    ld c, h                                       ; $7974: $4c
    ld c, h                                       ; $7975: $4c
    ld l, h                                       ; $7976: $6c
    dec bc                                        ; $7977: $0b
    dec bc                                        ; $7978: $0b
    dec hl                                        ; $7979: $2b
    ret nz                                        ; $797a: $c0

    ldh [$0a], a                                  ; $797b: $e0 $0a
    add c                                         ; $797d: $81
    ld c, e                                       ; $797e: $4b
    pop bc                                        ; $797f: $c1
    db $e4                                        ; $7980: $e4
    db $ed                                        ; $7981: $ed
    ldh [$be], a                                  ; $7982: $e0 $be
    rst $38                                       ; $7984: $ff
    add b                                         ; $7985: $80
    push hl                                       ; $7986: $e5
    add h                                         ; $7987: $84
    ld [c], a                                     ; $7988: $e2
    cp a                                          ; $7989: $bf
    ldh [$2b], a                                  ; $798a: $e0 $2b
    nop                                           ; $798c: $00
    ld a, a                                       ; $798d: $7f
    ldh [$ad], a                                  ; $798e: $e0 $ad
    push hl                                       ; $7990: $e5
    cp b                                          ; $7991: $b8
    push hl                                       ; $7992: $e5
    and d                                         ; $7993: $a2
    ld [c], a                                     ; $7994: $e2
    cp d                                          ; $7995: $ba
    db $e4                                        ; $7996: $e4
    jp nz, $befa                                  ; $7997: $c2 $fa $be

    db $e3                                        ; $799a: $e3
    ret nz                                        ; $799b: $c0

    db $e4                                        ; $799c: $e4
    add sp, $51                                   ; $799d: $e8 $51
    and $48                                       ; $799f: $e6 $48
    push hl                                       ; $79a1: $e5
    pop bc                                        ; $79a2: $c1
    push af                                       ; $79a3: $f5
    ld l, h                                       ; $79a4: $6c
    add e                                         ; $79a5: $83
    ld [c], a                                     ; $79a6: $e2
    ld l, e                                       ; $79a7: $6b
    ld l, e                                       ; $79a8: $6b
    ld c, e                                       ; $79a9: $4b
    db $10                                        ; $79aa: $10
    rst $38                                       ; $79ab: $ff
    ld [c], a                                     ; $79ac: $e2
    cp $c0                                        ; $79ad: $fe $c0
    add l                                         ; $79af: $85
    pop hl                                        ; $79b0: $e1
    rst $38                                       ; $79b1: $ff
    ret c                                         ; $79b2: $d8

    inc l                                         ; $79b3: $2c
    ld sp, hl                                     ; $79b4: $f9
    ld [$e0c0], a                                 ; $79b5: $ea $c0 $e0
    jp nz, Jump_000_01e2                          ; $79b8: $c2 $e2 $01

    ld l, e                                       ; $79bb: $6b
    jp $c1c2                                      ; $79bc: $c3 $c2 $c1


    ret nz                                        ; $79bf: $c0

    ret nz                                        ; $79c0: $c0

    pop hl                                        ; $79c1: $e1
    ret nz                                        ; $79c2: $c0

    ret                                           ; $79c3: $c9


    ld b, c                                       ; $79c4: $41
    add sp, -$42                                  ; $79c5: $e8 $be
    ret nc                                        ; $79c7: $d0

    ret                                           ; $79c8: $c9


    ret nz                                        ; $79c9: $c0

    ld bc, $c20c                                  ; $79ca: $01 $0c $c2
    push hl                                       ; $79cd: $e5
    add d                                         ; $79ce: $82
    jp nz, $e07f                                  ; $79cf: $c2 $7f $e0

    or c                                          ; $79d2: $b1
    jp $e512                                      ; $79d3: $c3 $12 $e5


    ld b, c                                       ; $79d6: $41
    add sp, -$40                                  ; $79d7: $e8 $c0
    di                                            ; $79d9: $f3
    nop                                           ; $79da: $00
    ld b, l                                       ; $79db: $45
    ldh [$88], a                                  ; $79dc: $e0 $88
    ret nz                                        ; $79de: $c0

    cp a                                          ; $79df: $bf
    push hl                                       ; $79e0: $e5
    dec sp                                        ; $79e1: $3b
    ret nz                                        ; $79e2: $c0

    ld d, d                                       ; $79e3: $52
    push bc                                       ; $79e4: $c5
    ld c, a                                       ; $79e5: $4f
    jp nz, $c14a                                  ; $79e6: $c2 $4a $c1

    adc b                                         ; $79e9: $88
    db $db                                        ; $79ea: $db
    nop                                           ; $79eb: $00
    pop bc                                        ; $79ec: $c1
    ldh [$c0], a                                  ; $79ed: $e0 $c0
    rst $20                                       ; $79ef: $e7
    db $fc                                        ; $79f0: $fc
    and c                                         ; $79f1: $a1
    add [hl]                                      ; $79f2: $86
    call nz, $c6f9                                ; $79f3: $c4 $f9 $c6
    inc sp                                        ; $79f6: $33
    ret z                                         ; $79f7: $c8

    ld c, b                                       ; $79f8: $48
    ret nc                                        ; $79f9: $d0

    pop bc                                        ; $79fa: $c1
    pop hl                                        ; $79fb: $e1
    nop                                           ; $79fc: $00
    ret nz                                        ; $79fd: $c0

    db $ec                                        ; $79fe: $ec
    ret nz                                        ; $79ff: $c0

    and l                                         ; $7a00: $a5
    pop bc                                        ; $7a01: $c1
    and $fb                                       ; $7a02: $e6 $fb
    and [hl]                                      ; $7a04: $a6
    ret nz                                        ; $7a05: $c0

    pop af                                        ; $7a06: $f1
    dec bc                                        ; $7a07: $0b
    ret nz                                        ; $7a08: $c0

    ret nz                                        ; $7a09: $c0

    xor $43                                       ; $7a0a: $ee $43
    push hl                                       ; $7a0c: $e5
    nop                                           ; $7a0d: $00
    rst $38                                       ; $7a0e: $ff
    push hl                                       ; $7a0f: $e5
    jp nz, $81c8                                  ; $7a10: $c2 $c8 $81

    jp nz, $c683                                  ; $7a13: $c2 $83 $c6

    ld c, h                                       ; $7a16: $4c
    and d                                         ; $7a17: $a2
    ret nz                                        ; $7a18: $c0

    rst $00                                       ; $7a19: $c7
    ld b, b                                       ; $7a1a: $40
    push hl                                       ; $7a1b: $e5
    ld a, a                                       ; $7a1c: $7f
    and a                                         ; $7a1d: $a7
    nop                                           ; $7a1e: $00
    or $a6                                        ; $7a1f: $f6 $a6
    ccf                                           ; $7a21: $3f
    and e                                         ; $7a22: $a3
    ld c, d                                       ; $7a23: $4a
    add $c0                                       ; $7a24: $c6 $c0
    db $ec                                        ; $7a26: $ec
    ld b, b                                       ; $7a27: $40
    jp nz, $a041                                  ; $7a28: $c2 $41 $a0

    sub h                                         ; $7a2b: $94
    rst $00                                       ; $7a2c: $c7
    cp $c3                                        ; $7a2d: $fe $c3
    nop                                           ; $7a2f: $00
    cp c                                          ; $7a30: $b9
    call nz, $c574                                ; $7a31: $c4 $74 $c5
    ld sp, hl                                     ; $7a34: $f9
    adc [hl]                                      ; $7a35: $8e
    ld c, b                                       ; $7a36: $48
    and e                                         ; $7a37: $a3
    ld bc, $c0c4                                  ; $7a38: $01 $c4 $c0
    add sp, $01                                   ; $7a3b: $e8 $01
    xor b                                         ; $7a3d: $a8
    nop                                           ; $7a3e: $00
    push hl                                       ; $7a3f: $e5
    inc b                                         ; $7a40: $04
    ld [hl], h                                    ; $7a41: $74
    call nz, $81f1                                ; $7a42: $c4 $f1 $81
    inc l                                         ; $7a45: $2c
    rst $38                                       ; $7a46: $ff
    ldh [$08], a                                  ; $7a47: $e0 $08
    and l                                         ; $7a49: $a5
    ld b, h                                       ; $7a4a: $44
    jp nz, $e780                                  ; $7a4b: $c2 $80 $e7

    adc d                                         ; $7a4e: $8a
    db $e4                                        ; $7a4f: $e4
    nop                                           ; $7a50: $00
    ld c, b                                       ; $7a51: $48
    ld [$8aba], a                                 ; $7a52: $ea $ba $8a
    xor c                                         ; $7a55: $a9
    add c                                         ; $7a56: $81
    ret nz                                        ; $7a57: $c0

    ld [$e3bf], a                                 ; $7a58: $ea $bf $e3
    add b                                         ; $7a5b: $80
    push hl                                       ; $7a5c: $e5
    inc de                                        ; $7a5d: $13
    db $e4                                        ; $7a5e: $e4
    ld c, b                                       ; $7a5f: $48
    ld [$ba00], a                                 ; $7a60: $ea $00 $ba
    adc d                                         ; $7a63: $8a
    dec d                                         ; $7a64: $15
    add d                                         ; $7a65: $82
    add c                                         ; $7a66: $81
    push hl                                       ; $7a67: $e5
    ld [$5ac2], a                                 ; $7a68: $ea $c2 $5a
    ret z                                         ; $7a6b: $c8

    ld c, e                                       ; $7a6c: $4b
    add h                                         ; $7a6d: $84
    ld c, b                                       ; $7a6e: $48
    db $ed                                        ; $7a6f: $ed
    add hl, sp                                    ; $7a70: $39
    push bc                                       ; $7a71: $c5
    nop                                           ; $7a72: $00
    xor c                                         ; $7a73: $a9
    add l                                         ; $7a74: $85
    ret nz                                        ; $7a75: $c0

    rst $20                                       ; $7a76: $e7
    add hl, de                                    ; $7a77: $19
    xor l                                         ; $7a78: $ad
    ld b, $88                                     ; $7a79: $06 $88
    ld c, b                                       ; $7a7b: $48
    adc c                                         ; $7a7c: $89
    ei                                            ; $7a7d: $fb
    ld h, [hl]                                    ; $7a7e: $66
    ld a, d                                       ; $7a7f: $7a
    jp hl                                         ; $7a80: $e9


    ld a, [hl+]                                   ; $7a81: $2a
    xor d                                         ; $7a82: $aa
    nop                                           ; $7a83: $00
    and d                                         ; $7a84: $a2
    ld l, a                                       ; $7a85: $6f
    rlca                                          ; $7a86: $07
    xor c                                         ; $7a87: $a9
    ei                                            ; $7a88: $fb
    ld h, [hl]                                    ; $7a89: $66
    ld h, a                                       ; $7a8a: $67
    ld h, e                                       ; $7a8b: $63
    pop bc                                        ; $7a8c: $c1
    pop bc                                        ; $7a8d: $c1
    ld [hl], $cb                                  ; $7a8e: $36 $cb
    ld e, e                                       ; $7a90: $5b
    ret                                           ; $7a91: $c9


    xor $ee                                       ; $7a92: $ee $ee
    nop                                           ; $7a94: $00
    ld a, [c]                                     ; $7a95: $f2
    ld l, d                                       ; $7a96: $6a
    add b                                         ; $7a97: $80
    call nz, $8439                                ; $7a98: $c4 $39 $84
    and d                                         ; $7a9b: $a2
    add $19                                       ; $7a9c: $c6 $19
    and [hl]                                      ; $7a9e: $a6
    xor $ef                                       ; $7a9f: $ee $ef
    nop                                           ; $7aa1: $00
    jp hl                                         ; $7aa2: $e9


    cp a                                          ; $7aa3: $bf
    rst $08                                       ; $7aa4: $cf
    nop                                           ; $7aa5: $00
    add hl, de                                    ; $7aa6: $19
    xor h                                         ; $7aa7: $ac
    cp $e4                                        ; $7aa8: $fe $e4
    rlca                                          ; $7aaa: $07
    xor h                                         ; $7aab: $ac
    ld [hl], l                                    ; $7aac: $75
    xor c                                         ; $7aad: $a9
    ld a, a                                       ; $7aae: $7f
    push hl                                       ; $7aaf: $e5
    ld l, e                                       ; $7ab0: $6b
    ld h, a                                       ; $7ab1: $67
    add hl, de                                    ; $7ab2: $19
    xor c                                         ; $7ab3: $a9
    or l                                          ; $7ab4: $b5
    ret                                           ; $7ab5: $c9


    nop                                           ; $7ab6: $00
    ret                                           ; $7ab7: $c9


    ld h, [hl]                                    ; $7ab8: $66
    pop bc                                        ; $7ab9: $c1
    ret                                           ; $7aba: $c9


    ld sp, hl                                     ; $7abb: $f9
    ld c, e                                       ; $7abc: $4b
    adc d                                         ; $7abd: $8a
    and $08                                       ; $7abe: $e6 $08
    db $eb                                        ; $7ac0: $eb
    cp a                                          ; $7ac1: $bf
    xor a                                         ; $7ac2: $af
    ld a, e                                       ; $7ac3: $7b
    ld l, c                                       ; $7ac4: $69
    cp a                                          ; $7ac5: $bf
    jp Jump_000_3f00                              ; $7ac6: $c3 $00 $3f


    db $ed                                        ; $7ac9: $ed
    add a                                         ; $7aca: $87
    xor d                                         ; $7acb: $aa
    xor $e6                                       ; $7acc: $ee $e6
    or e                                          ; $7ace: $b3
    ld d, e                                       ; $7acf: $53
    rst $38                                       ; $7ad0: $ff
    xor d                                         ; $7ad1: $aa
    ld e, d                                       ; $7ad2: $5a
    and $00                                       ; $7ad3: $e6 $00
    and $ee                                       ; $7ad5: $e6 $ee
    ld [$7b00], a                                 ; $7ad7: $ea $00 $7b
    ld l, c                                       ; $7ada: $69
    nop                                           ; $7adb: $00
    push hl                                       ; $7adc: $e5
    pop bc                                        ; $7add: $c1
    cpl                                           ; $7ade: $2f
    inc e                                         ; $7adf: $1c
    ld b, l                                       ; $7ae0: $45
    reti                                          ; $7ae1: $d9


    ld b, l                                       ; $7ae2: $45
    xor $ea                                       ; $7ae3: $ee $ea
    ld a, e                                       ; $7ae5: $7b
    ld h, [hl]                                    ; $7ae6: $66
    ld d, b                                       ; $7ae7: $50
    and l                                         ; $7ae8: $a5
    nop                                           ; $7ae9: $00
    reti                                          ; $7aea: $d9


    or b                                          ; $7aeb: $b0
    ld d, l                                       ; $7aec: $55
    xor $07                                       ; $7aed: $ee $07
    add [hl]                                      ; $7aef: $86
    ld h, d                                       ; $7af0: $62
    ret                                           ; $7af1: $c9


    sbc d                                         ; $7af2: $9a
    push bc                                       ; $7af3: $c5
    add a                                         ; $7af4: $87
    db $ec                                        ; $7af5: $ec
    nop                                           ; $7af6: $00
    db $ec                                        ; $7af7: $ec
    xor $e8                                       ; $7af8: $ee $e8
    nop                                           ; $7afa: $00
    ld h, d                                       ; $7afb: $62
    call z, Call_000_0dfa                         ; $7afc: $cc $fa $0d
    inc hl                                        ; $7aff: $23
    ld h, a                                       ; $7b00: $67
    rst $18                                       ; $7b01: $df
    ld b, $56                                     ; $7b02: $06 $56
    add a                                         ; $7b04: $87
    inc sp                                        ; $7b05: $33
    adc a                                         ; $7b06: $8f
    ld [hl], c                                    ; $7b07: $71
    ld c, [hl]                                    ; $7b08: $4e
    sbc l                                         ; $7b09: $9d
    ld c, c                                       ; $7b0a: $49
    nop                                           ; $7b0b: $00
    ld de, $c772                                  ; $7b0c: $11 $72 $c7
    add a                                         ; $7b0f: $87
    rst $00                                       ; $7b10: $c7
    rst $00                                       ; $7b11: $c7
    dec sp                                        ; $7b12: $3b
    ld l, c                                       ; $7b13: $69
    sbc l                                         ; $7b14: $9d
    ld b, a                                       ; $7b15: $47
    ret                                           ; $7b16: $c9


    ld l, [hl]                                    ; $7b17: $6e
    ld a, c                                       ; $7b18: $79
    dec hl                                        ; $7b19: $2b
    ld sp, $0064                                  ; $7b1a: $31 $64 $00
    add a                                         ; $7b1d: $87
    ld h, c                                       ; $7b1e: $61
    jp Jump_057_4180                              ; $7b1f: $c3 $80 $41


    jp z, Jump_000_2692                           ; $7b22: $ca $92 $26

    ld de, $3c6c                                  ; $7b25: $11 $6c $3c
    jr z, jr_057_7b93                             ; $7b28: $28 $69

    ld h, l                                       ; $7b2a: $65
    ld b, a                                       ; $7b2b: $47
    ld h, d                                       ; $7b2c: $62
    nop                                           ; $7b2d: $00
    ld b, c                                       ; $7b2e: $41
    ld h, a                                       ; $7b2f: $67
    ld d, l                                       ; $7b30: $55
    ld l, c                                       ; $7b31: $69
    ld de, $b86e                                  ; $7b32: $11 $6e $b8
    xor b                                         ; $7b35: $a8
    inc b                                         ; $7b36: $04
    add [hl]                                      ; $7b37: $86
    ld [$c162], sp                                ; $7b38: $08 $62 $c1
    ld l, b                                       ; $7b3b: $68
    ld [hl+], a                                   ; $7b3c: $22
    db $eb                                        ; $7b3d: $eb
    nop                                           ; $7b3e: $00
    ld c, d                                       ; $7b3f: $4a
    ld l, h                                       ; $7b40: $6c
    inc b                                         ; $7b41: $04
    adc h                                         ; $7b42: $8c
    cp l                                          ; $7b43: $bd
    dec h                                         ; $7b44: $25
    add c                                         ; $7b45: $81
    add sp, $00                                   ; $7b46: $e8 $00
    xor $81                                       ; $7b48: $ee $81
    jp hl                                         ; $7b4a: $e9


    or a                                          ; $7b4b: $b7
    jp hl                                         ; $7b4c: $e9


    cp l                                          ; $7b4d: $bd
    rla                                           ; $7b4e: $17
    nop                                           ; $7b4f: $00
    sbc b                                         ; $7b50: $98
    ld b, $60                                     ; $7b51: $06 $60
    ld c, $3a                                     ; $7b53: $0e $3a
    rst $20                                       ; $7b55: $e7
    or l                                          ; $7b56: $b5
    ld b, $3c                                     ; $7b57: $06 $3c
    ld [hl+], a                                   ; $7b59: $22
    add b                                         ; $7b5a: $80
    ld [$3329], a                                 ; $7b5b: $ea $29 $33
    ret nz                                        ; $7b5e: $c0

    rst $08                                       ; $7b5f: $cf
    nop                                           ; $7b60: $00
    ccf                                           ; $7b61: $3f
    add sp, -$40                                  ; $7b62: $e8 $c0
    db $eb                                        ; $7b64: $eb
    ld sp, hl                                     ; $7b65: $f9
    ld hl, sp-$5b                                 ; $7b66: $f8 $a5
    ld l, l                                       ; $7b68: $6d
    ld b, c                                       ; $7b69: $41
    pop af                                        ; $7b6a: $f1
    add e                                         ; $7b6b: $83
    ld a, [$6cb7]                                 ; $7b6c: $fa $b7 $6c
    ld d, h                                       ; $7b6f: $54
    ld a, [$8080]                                 ; $7b70: $fa $80 $80
    ld d, d                                       ; $7b73: $52
    and l                                         ; $7b74: $a5
    ld l, h                                       ; $7b75: $6c
    ld a, a                                       ; $7b76: $7f
    rst $38                                       ; $7b77: $ff
    ccf                                           ; $7b78: $3f
    pop af                                        ; $7b79: $f1
    ld a, [bc]                                    ; $7b7a: $0a
    adc b                                         ; $7b7b: $88
    ld a, a                                       ; $7b7c: $7f
    rst $38                                       ; $7b7d: $ff
    ld [$2c66], a                                 ; $7b7e: $ea $66 $2c
    nop                                           ; $7b81: $00
    db $e4                                        ; $7b82: $e4
    ld b, a                                       ; $7b83: $47
    rlca                                          ; $7b84: $07
    push bc                                       ; $7b85: $c5
    add b                                         ; $7b86: $80
    rst $38                                       ; $7b87: $ff
    ret nz                                        ; $7b88: $c0

    ld [$68a8], a                                 ; $7b89: $ea $a8 $68
    cp l                                          ; $7b8c: $bd
    add hl, bc                                    ; $7b8d: $09
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    ld a, a                                       ; $7b90: $7f
    rlc b                                         ; $7b91: $cb $00

jr_057_7b93:
    add [hl]                                      ; $7b93: $86
    ld b, $13                                     ; $7b94: $06 $13
    call c, $d67f                                 ; $7b96: $dc $7f $d6
    ret nz                                        ; $7b99: $c0

    add sp, -$01                                  ; $7b9a: $e8 $ff
    rst $38                                       ; $7b9c: $ff
    di                                            ; $7b9d: $f3
    call nc, $bfcd                                ; $7b9e: $d4 $cd $bf
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    nop                                           ; $7ba3: $00
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    sub [hl]                                      ; $7ba6: $96
    rst $38                                       ; $7ba7: $ff
    sbc c                                         ; $7ba8: $99
    db $d3                                        ; $7ba9: $d3
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    scf                                           ; $7bb2: $37
    db $eb                                        ; $7bb3: $eb
    nop                                           ; $7bb4: $00
    call c, $ffff                                 ; $7bb5: $dc $ff $ff
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
    nop                                           ; $7bc5: $00
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
    nop                                           ; $7bd6: $00
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    nop                                           ; $7bdb: $00
    cp a                                          ; $7bdc: $bf
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    ld e, l                                       ; $7be5: $5d
    inc sp                                        ; $7be6: $33
    nop                                           ; $7be7: $00
    nop                                           ; $7be8: $00
    nop                                           ; $7be9: $00
    ld a, l                                       ; $7bea: $7d
    jr nz, @+$01                                  ; $7beb: $20 $ff

    and $2d                                       ; $7bed: $e6 $2d
    daa                                           ; $7bef: $27
    ld sp, $5b61                                  ; $7bf0: $31 $61 $5b
    rst $38                                       ; $7bf3: $ff
    pop hl                                        ; $7bf4: $e1
    db $e3                                        ; $7bf5: $e3
    ld e, d                                       ; $7bf6: $5a
    nop                                           ; $7bf7: $00
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $20                                       ; $7bfa: $e7
    and $c0                                       ; $7bfb: $e6 $c0
    push hl                                       ; $7bfd: $e5
    dec b                                         ; $7bfe: $05
    dec b                                         ; $7bff: $05
    inc d                                         ; $7c00: $14
    cpl                                           ; $7c01: $2f
    add hl, hl                                    ; $7c02: $29
    ld sp, $6031                                  ; $7c03: $31 $31 $60
    pop bc                                        ; $7c06: $c1
    pop hl                                        ; $7c07: $e1
    ld e, e                                       ; $7c08: $5b
    jp z, $c0ff                                   ; $7c09: $ca $ff $c0

    db $ed                                        ; $7c0c: $ed
    scf                                           ; $7c0d: $37
    ld a, [bc]                                    ; $7c0e: $0a
    dec bc                                        ; $7c0f: $0b
    ld sp, $e3ff                                  ; $7c10: $31 $ff $e3
    ld e, l                                       ; $7c13: $5d
    ld e, h                                       ; $7c14: $5c
    ld a, l                                       ; $7c15: $7d
    ldh [$ca], a                                  ; $7c16: $e0 $ca
    rst $38                                       ; $7c18: $ff
    ld h, b                                       ; $7c19: $60
    add b                                         ; $7c1a: $80
    db $eb                                        ; $7c1b: $eb
    jp nz, $bee6                                  ; $7c1c: $c2 $e6 $be

    db $e4                                        ; $7c1f: $e4
    jp z, Jump_057_40ff                           ; $7c20: $ca $ff $40

    ld [$2627], a                                 ; $7c23: $ea $27 $26
    add e                                         ; $7c26: $83
    pop hl                                        ; $7c27: $e1
    rst $38                                       ; $7c28: $ff
    ld b, a                                       ; $7c29: $47
    ld b, [hl]                                    ; $7c2a: $46
    ld d, l                                       ; $7c2b: $55
    ld d, h                                       ; $7c2c: $54
    ld d, l                                       ; $7c2d: $55
    ld d, h                                       ; $7c2e: $54
    ld b, [hl]                                    ; $7c2f: $46
    ld b, a                                       ; $7c30: $47
    ld h, a                                       ; $7c31: $67
    ld sp, $5f31                                  ; $7c32: $31 $31 $5f
    jp z, Jump_000_00ff                           ; $7c35: $ca $ff $00

    jp hl                                         ; $7c38: $e9


    dec l                                         ; $7c39: $2d
    rla                                           ; $7c3a: $17
    jp nz, $ffe2                                  ; $7c3b: $c2 $e2 $ff

    ld [hl], $6c                                  ; $7c3e: $36 $6c
    ld h, a                                       ; $7c40: $67
    ld l, d                                       ; $7c41: $6a
    ld l, l                                       ; $7c42: $6d
    jr nc, jr_057_7c75                            ; $7c43: $30 $30

    ld [hl], $67                                  ; $7c45: $36 $67
    ld c, c                                       ; $7c47: $49
    ld sp, $ca5e                                  ; $7c48: $31 $5e $ca
    rst $38                                       ; $7c4b: $ff
    add sp, -$19                                  ; $7c4c: $e8 $e7
    inc h                                         ; $7c4e: $24
    inc h                                         ; $7c4f: $24
    add c                                         ; $7c50: $81
    ldh [$71], a                                  ; $7c51: $e0 $71
    ld c, l                                       ; $7c53: $4d
    jp nz, $ffe0                                  ; $7c54: $c2 $e0 $ff

    ldh [$bf], a                                  ; $7c57: $e0 $bf
    ld [c], a                                     ; $7c59: $e2
    add hl, sp                                    ; $7c5a: $39
    ld sp, $ca31                                  ; $7c5b: $31 $31 $ca
    rst $38                                       ; $7c5e: $ff
    cp d                                          ; $7c5f: $ba
    add sp, -$19                                  ; $7c60: $e8 $e7
    inc d                                         ; $7c62: $14
    adc c                                         ; $7c63: $89
    ret nz                                        ; $7c64: $c0

    ld c, l                                       ; $7c65: $4d
    ld [hl-], a                                   ; $7c66: $32
    ld h, [hl]                                    ; $7c67: $66
    pop bc                                        ; $7c68: $c1
    pop hl                                        ; $7c69: $e1
    ld l, h                                       ; $7c6a: $6c
    adc a                                         ; $7c6b: $8f
    ld l, h                                       ; $7c6c: $6c
    ld h, [hl]                                    ; $7c6d: $66
    ld l, c                                       ; $7c6e: $69
    ld l, e                                       ; $7c6f: $6b
    ret nz                                        ; $7c70: $c0

    rst $38                                       ; $7c71: $ff
    db $ec                                        ; $7c72: $ec
    db $eb                                        ; $7c73: $eb
    adc b                                         ; $7c74: $88

jr_057_7c75:
    ret nz                                        ; $7c75: $c0

    ld c, l                                       ; $7c76: $4d
    sbc e                                         ; $7c77: $9b
    ld [hl-], a                                   ; $7c78: $32
    ld l, c                                       ; $7c79: $69
    ret nz                                        ; $7c7a: $c0

    rst $20                                       ; $7c7b: $e7
    ld c, b                                       ; $7c7c: $48
    ld c, c                                       ; $7c7d: $49
    ret nz                                        ; $7c7e: $c0

    rst $38                                       ; $7c7f: $ff
    ret nz                                        ; $7c80: $c0

    db $eb                                        ; $7c81: $eb
    ld b, e                                       ; $7c82: $43
    jp $6b32                                      ; $7c83: $c3 $32 $6b


    ret nz                                        ; $7c86: $c0

    add sp, -$7f                                  ; $7c87: $e8 $81
    ldh [$c0], a                                  ; $7c89: $e0 $c0
    rst $38                                       ; $7c8b: $ff
    add b                                         ; $7c8c: $80
    ld [$3039], a                                 ; $7c8d: $ea $39 $30
    ldh a, [$c0]                                  ; $7c90: $f0 $c0
    add sp, -$3f                                  ; $7c92: $e8 $c1
    ret nz                                        ; $7c94: $c0

    ret nz                                        ; $7c95: $c0

    rst $38                                       ; $7c96: $ff
    ld b, b                                       ; $7c97: $40
    db $eb                                        ; $7c98: $eb
    ld d, d                                       ; $7c99: $52
    jr nc, @+$32                                  ; $7c9a: $30 $30

    ld l, l                                       ; $7c9c: $6d
    dec sp                                        ; $7c9d: $3b
    ld l, d                                       ; $7c9e: $6a
    ld h, a                                       ; $7c9f: $67
    ret nz                                        ; $7ca0: $c0

    ret nz                                        ; $7ca1: $c0

    ld [hl], $54                                  ; $7ca2: $36 $54
    ld d, l                                       ; $7ca4: $55
    ld b, c                                       ; $7ca5: $41
    pop bc                                        ; $7ca6: $c1
    ret nz                                        ; $7ca7: $c0

    rst $38                                       ; $7ca8: $ff
    db $fc                                        ; $7ca9: $fc
    ret nz                                        ; $7caa: $c0

    rst $28                                       ; $7cab: $ef
    cp a                                          ; $7cac: $bf
    ldh [rSCY], a                                 ; $7cad: $e0 $42
    ld l, [hl]                                    ; $7caf: $6e
    ld l, a                                       ; $7cb0: $6f
    add b                                         ; $7cb1: $80
    and b                                         ; $7cb2: $a0
    ld sp, $311f                                  ; $7cb3: $31 $1f $31
    add hl, hl                                    ; $7cb6: $29
    inc d                                         ; $7cb7: $14
    inc d                                         ; $7cb8: $14
    inc d                                         ; $7cb9: $14
    jp z, $80ff                                   ; $7cba: $ca $ff $80

    db $ec                                        ; $7cbd: $ec
    cp a                                          ; $7cbe: $bf
    pop hl                                        ; $7cbf: $e1
    rst $30                                       ; $7cc0: $f7
    add e                                         ; $7cc1: $83
    add b                                         ; $7cc2: $80
    add b                                         ; $7cc3: $80
    ret nz                                        ; $7cc4: $c0

    pop hl                                        ; $7cc5: $e1
    dec hl                                        ; $7cc6: $2b
    db $10                                        ; $7cc7: $10
    inc h                                         ; $7cc8: $24
    inc h                                         ; $7cc9: $24
    ret c                                         ; $7cca: $d8

    jp z, Jump_000_00ff                           ; $7ccb: $ca $ff $00

    db $eb                                        ; $7cce: $eb
    cp a                                          ; $7ccf: $bf
    pop hl                                        ; $7cd0: $e1
    ld [hl], a                                    ; $7cd1: $77
    ld a, c                                       ; $7cd2: $79
    ret nz                                        ; $7cd3: $c0

    push hl                                       ; $7cd4: $e5
    jr nz, jr_057_7cf7                            ; $7cd5: $20 $20

    inc d                                         ; $7cd7: $14
    jp z, $80ff                                   ; $7cd8: $ca $ff $80

    jp z, Jump_057_473a                           ; $7cdb: $ca $3a $47

    and c                                         ; $7cde: $a1
    ld [hl], d                                    ; $7cdf: $72
    add c                                         ; $7ce0: $81
    ldh [$c0], a                                  ; $7ce1: $e0 $c0
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    nop                                           ; $7ce6: $00
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

jr_057_7cf7:
    nop                                           ; $7cf7: $00
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
    nop                                           ; $7d08: $00
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
    nop                                           ; $7d19: $00
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
    nop                                           ; $7d2a: $00
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
    nop                                           ; $7d3b: $00
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
    nop                                           ; $7d4c: $00
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
    nop                                           ; $7d5d: $00
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
    nop                                           ; $7d6e: $00
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
    nop                                           ; $7d7f: $00
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
    nop                                           ; $7d90: $00
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
    nop                                           ; $7da1: $00
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    ei                                            ; $7da5: $fb
    nop                                           ; $7da6: $00
    nop                                           ; $7da7: $00
    nop                                           ; $7da8: $00
    and l                                         ; $7da9: $a5
    nop                                           ; $7daa: $00
    rst $38                                       ; $7dab: $ff
    push hl                                       ; $7dac: $e5
    ld [hl-], a                                   ; $7dad: $32
    or $e6                                        ; $7dae: $f6 $e6
    rst $30                                       ; $7db0: $f7
    rst $20                                       ; $7db1: $e7
    dec [hl]                                      ; $7db2: $35
    db $ec                                        ; $7db3: $ec
    xor $37                                       ; $7db4: $ee $37
    db $ec                                        ; $7db6: $ec
    jp c, $c7f0                                   ; $7db7: $da $f0 $c7

    add sp, $33                                   ; $7dba: $e8 $33
    ld sp, $f2e0                                  ; $7dbc: $31 $e0 $f2
    ld [hl], $30                                  ; $7dbf: $36 $30
    scf                                           ; $7dc1: $37
    cp a                                          ; $7dc2: $bf
    ld h, $20                                     ; $7dc3: $26 $20
    daa                                           ; $7dc5: $27
    db $10                                        ; $7dc6: $10
    ld d, $17                                     ; $7dc7: $16 $17
    jp nz, Jump_000_34f6                          ; $7dc9: $c2 $f6 $34

    rst $38                                       ; $7dcc: $ff
    ld [hl], $32                                  ; $7dcd: $36 $32
    jr nc, jr_057_7e08                            ; $7dcf: $30 $37

    ld sp, $3133                                  ; $7dd1: $31 $33 $31
    inc sp                                        ; $7dd4: $33
    nop                                           ; $7dd5: $00
    and b                                         ; $7dd6: $a0
    ei                                            ; $7dd7: $fb
    rst $38                                       ; $7dd8: $ff
    rst $28                                       ; $7dd9: $ef
    nop                                           ; $7dda: $00
    nop                                           ; $7ddb: $00
    nop                                           ; $7ddc: $00
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

jr_057_7e08:
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

Jump_057_7ee1:
    rst $38                                       ; $7ee1: $ff

Jump_057_7ee2:
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

Call_057_7fa6:
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
