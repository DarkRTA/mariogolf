; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $074", ROMX[$4000], BANK[$74]

    db $ae, $79

    ld d, l                                       ; $4002: $55
    ld a, d                                       ; $4003: $7a
    ld b, b                                       ; $4004: $40
    ld b, b                                       ; $4005: $40
    ld c, b                                       ; $4006: $48
    ld b, b                                       ; $4007: $40

Jump_074_4008:
    and d                                         ; $4008: $a2
    ld b, e                                       ; $4009: $43
    adc d                                         ; $400a: $8a
    ld b, l                                       ; $400b: $45
    ld [hl-], a                                   ; $400c: $32
    ld b, a                                       ; $400d: $47
    ld a, b                                       ; $400e: $78
    ld b, a                                       ; $400f: $47
    cp [hl]                                       ; $4010: $be
    ld b, a                                       ; $4011: $47
    cp a                                          ; $4012: $bf
    ld b, a                                       ; $4013: $47
    adc b                                         ; $4014: $88
    ld b, b                                       ; $4015: $40

    db $45, $48, $4d, $48, $50, $53, $30, $58, $6c, $5b, $e2, $5b

    ccf                                           ; $4022: $3f
    ld e, h                                       ; $4023: $5c

    db $40, $5c, $8d, $48

    dec hl                                        ; $4028: $2b
    ld e, a                                       ; $4029: $5f
    inc sp                                        ; $402a: $33
    ld e, a                                       ; $402b: $5f
    add l                                         ; $402c: $85
    ld l, d                                       ; $402d: $6a
    rst $08                                       ; $402e: $cf
    ld [hl], b                                    ; $402f: $70
    xor [hl]                                      ; $4030: $ae
    ld [hl], l                                    ; $4031: $75
    inc h                                         ; $4032: $24
    halt                                          ; $4033: $76
    ld [hl], d                                    ; $4034: $72
    halt                                          ; $4035: $76
    jp Jump_074_7376                              ; $4036: $c3 $76 $73


    ld e, a                                       ; $4039: $5f
    cp [hl]                                       ; $403a: $be
    ld b, a                                       ; $403b: $47

    db $3f, $5c

    ld [hl], d                                    ; $403e: $72
    halt                                          ; $403f: $76
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    inc d                                         ; $4044: $14
    ld [de], a                                    ; $4045: $12
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    nop                                           ; $4048: $00
    jr nz, jr_074_406b                            ; $4049: $20 $20

    ld d, l                                       ; $404b: $55
    and b                                         ; $404c: $a0
    ld a, [hl]                                    ; $404d: $7e
    rst $38                                       ; $404e: $ff
    ld a, a                                       ; $404f: $7f
    ld [$0825], sp                                ; $4050: $08 $25 $08
    dec h                                         ; $4053: $25
    ld [$0825], sp                                ; $4054: $08 $25 $08
    dec h                                         ; $4057: $25
    xor [hl]                                      ; $4058: $ae
    nop                                           ; $4059: $00
    ld e, a                                       ; $405a: $5f
    ld [hl+], a                                   ; $405b: $22
    inc l                                         ; $405c: $2c
    inc bc                                        ; $405d: $03
    inc d                                         ; $405e: $14
    ld bc, $7fff                                  ; $405f: $01 $ff $7f
    or b                                          ; $4062: $b0
    inc bc                                        ; $4063: $03
    inc l                                         ; $4064: $2c
    inc bc                                        ; $4065: $03
    inc d                                         ; $4066: $14
    ld bc, $7c8a                                  ; $4067: $01 $8a $7c
    sub h                                         ; $406a: $94

jr_074_406b:
    ld a, l                                       ; $406b: $7d
    adc h                                         ; $406c: $8c
    nop                                           ; $406d: $00
    inc d                                         ; $406e: $14
    ld bc, $7fff                                  ; $406f: $01 $ff $7f
    inc l                                         ; $4072: $2c
    inc bc                                        ; $4073: $03
    inc d                                         ; $4074: $14
    ld bc, $046a                                  ; $4075: $01 $6a $04
    ld [hl], h                                    ; $4078: $74
    nop                                           ; $4079: $00
    ccf                                           ; $407a: $3f
    ld bc, $02bf                                  ; $407b: $01 $bf $02
    ld l, d                                       ; $407e: $6a
    inc b                                         ; $407f: $04
    ld [$0825], sp                                ; $4080: $08 $25 $08
    dec h                                         ; $4083: $25
    ld [$0825], sp                                ; $4084: $08 $25 $08
    dec h                                         ; $4087: $25
    ld bc, $ff00                                  ; $4088: $01 $00 $ff
    rst $38                                       ; $408b: $ff
    rst $38                                       ; $408c: $ff
    rst $38                                       ; $408d: $ff
    rst $38                                       ; $408e: $ff
    rst $38                                       ; $408f: $ff
    rst $38                                       ; $4090: $ff
    rst $38                                       ; $4091: $ff
    rst $38                                       ; $4092: $ff
    rst $38                                       ; $4093: $ff
    rst $38                                       ; $4094: $ff
    rst $38                                       ; $4095: $ff
    rst $38                                       ; $4096: $ff
    rst $38                                       ; $4097: $ff
    nop                                           ; $4098: $00
    rst $38                                       ; $4099: $ff
    rst $38                                       ; $409a: $ff
    rst $38                                       ; $409b: $ff
    rst $38                                       ; $409c: $ff
    rst $38                                       ; $409d: $ff
    rst $38                                       ; $409e: $ff
    rst $38                                       ; $409f: $ff
    rst $38                                       ; $40a0: $ff
    rst $38                                       ; $40a1: $ff
    rst $38                                       ; $40a2: $ff
    rst $38                                       ; $40a3: $ff
    rst $38                                       ; $40a4: $ff
    rst $38                                       ; $40a5: $ff
    rst $38                                       ; $40a6: $ff
    rst $38                                       ; $40a7: $ff
    rst $38                                       ; $40a8: $ff
    cp $ef                                        ; $40a9: $fe $ef
    xor $18                                       ; $40ab: $ee $18
    rst $20                                       ; $40ad: $e7
    inc a                                         ; $40ae: $3c
    jp $c33c                                      ; $40af: $c3 $3c $c3


    jr @-$01                                      ; $40b2: $18 $fd

    rst $20                                       ; $40b4: $e7
    ld hl, sp-$1b                                 ; $40b5: $f8 $e5
    ei                                            ; $40b7: $fb
    rst $38                                       ; $40b8: $ff
    sbc $ff                                       ; $40b9: $de $ff
    push af                                       ; $40bb: $f5
    rst $38                                       ; $40bc: $ff
    rst $38                                       ; $40bd: $ff
    xor d                                         ; $40be: $aa
    rst $38                                       ; $40bf: $ff

Call_074_40c0:
    ld d, a                                       ; $40c0: $57
    rst $38                                       ; $40c1: $ff

Jump_074_40c2:
    cp d                                          ; $40c2: $ba
    rst $38                                       ; $40c3: $ff
    db $ec                                        ; $40c4: $ec
    di                                            ; $40c5: $f3
    rst $30                                       ; $40c6: $f7
    sbc b                                         ; $40c7: $98
    rst $20                                       ; $40c8: $e7
    rst $28                                       ; $40c9: $ef
    or $e0                                        ; $40ca: $f6 $e0
    ld l, l                                       ; $40cc: $6d
    rst $38                                       ; $40cd: $ff
    scf                                           ; $40ce: $37
    rst $38                                       ; $40cf: $ff
    ld a, a                                       ; $40d0: $7f
    dec hl                                        ; $40d1: $2b
    rst $38                                       ; $40d2: $ff
    ld d, $ff                                     ; $40d3: $16 $ff
    dec sp                                        ; $40d5: $3b
    rst $38                                       ; $40d6: $ff
    dec d                                         ; $40d7: $15
    add sp, -$20                                  ; $40d8: $e8 $e0
    cp a                                          ; $40da: $bf
    xor d                                         ; $40db: $aa
    rst $38                                       ; $40dc: $ff
    ld a, l                                       ; $40dd: $7d
    rst $38                                       ; $40de: $ff
    set 7, a                                      ; $40df: $cb $ff
    ret z                                         ; $40e1: $c8

    push hl                                       ; $40e2: $e5
    or b                                          ; $40e3: $b0
    rst $38                                       ; $40e4: $ff
    rst $38                                       ; $40e5: $ff
    ld d, h                                       ; $40e6: $54
    ei                                            ; $40e7: $fb
    and h                                         ; $40e8: $a4
    ei                                            ; $40e9: $fb
    ld a, b                                       ; $40ea: $78
    rst $30                                       ; $40eb: $f7
    xor b                                         ; $40ec: $a8
    ld a, a                                       ; $40ed: $7f
    rst $30                                       ; $40ee: $f7
    ld h, h                                       ; $40ef: $64
    ei                                            ; $40f0: $fb
    or h                                          ; $40f1: $b4
    ei                                            ; $40f2: $fb
    ret nc                                        ; $40f3: $d0

    rst $38                                       ; $40f4: $ff
    rst $38                                       ; $40f5: $ff
    db $e3                                        ; $40f6: $e3
    db $dd                                        ; $40f7: $dd
    cp a                                          ; $40f8: $bf
    ld hl, sp-$20                                 ; $40f9: $f8 $e0
    ld e, a                                       ; $40fb: $5f
    rst $38                                       ; $40fc: $ff
    or a                                          ; $40fd: $b7
    db $fc                                        ; $40fe: $fc
    ldh [rNR22], a                                ; $40ff: $e0 $17
    xor d                                         ; $4101: $aa
    rst $38                                       ; $4102: $ff
    db $e4                                        ; $4103: $e4
    ld a, [bc]                                    ; $4104: $0a
    adc e                                         ; $4105: $8b
    jr nz, jr_074_412a                            ; $4106: $20 $22

    nop                                           ; $4108: $00
    db $dd                                        ; $4109: $dd
    nop                                           ; $410a: $00
    ei                                            ; $410b: $fb
    cp l                                          ; $410c: $bd
    ld b, d                                       ; $410d: $42
    sbc b                                         ; $410e: $98
    pop hl                                        ; $410f: $e1
    dec a                                         ; $4110: $3d
    ret nz                                        ; $4111: $c0

    ld c, a                                       ; $4112: $4f
    and b                                         ; $4113: $a0
    jr nc, @+$01                                  ; $4114: $30 $ff

    ret                                           ; $4116: $c9


    ld d, d                                       ; $4117: $52
    and c                                         ; $4118: $a1
    ld l, l                                       ; $4119: $6d
    jp nz, $c934                                  ; $411a: $c2 $34 $c9

    ld c, b                                       ; $411d: $48
    rst $38                                       ; $411e: $ff
    or e                                          ; $411f: $b3
    ld a, [de]                                    ; $4120: $1a
    push hl                                       ; $4121: $e5
    dec d                                         ; $4122: $15
    cp a                                          ; $4123: $bf
    adc $3f                                       ; $4124: $ce $3f
    ld d, [hl]                                    ; $4126: $56
    rst $38                                       ; $4127: $ff
    cp a                                          ; $4128: $bf
    ld l, l                                       ; $4129: $6d

jr_074_412a:
    cp a                                          ; $412a: $bf
    sbc [hl]                                      ; $412b: $9e
    ld a, a                                       ; $412c: $7f
    ld l, d                                       ; $412d: $6a
    cp a                                          ; $412e: $bf
    dec e                                         ; $412f: $1d
    rst $38                                       ; $4130: $ff
    rst $38                                       ; $4131: $ff
    ld c, [hl]                                    ; $4132: $4e
    cp a                                          ; $4133: $bf
    dec [hl]                                      ; $4134: $35
    ret nz                                        ; $4135: $c0

    ld c, [hl]                                    ; $4136: $4e
    and c                                         ; $4137: $a1
    ld [hl-], a                                   ; $4138: $32
    rst $38                                       ; $4139: $ff
    ret                                           ; $413a: $c9


    ld d, a                                       ; $413b: $57
    and d                                         ; $413c: $a2
    ld a, a                                       ; $413d: $7f
    push bc                                       ; $413e: $c5
    ld [hl-], a                                   ; $413f: $32
    rst $08                                       ; $4140: $cf
    ld d, l                                       ; $4141: $55
    rst $38                                       ; $4142: $ff
    cp a                                          ; $4143: $bf
    dec hl                                        ; $4144: $2b
    rst $38                                       ; $4145: $ff
    sbc d                                         ; $4146: $9a
    ld a, a                                       ; $4147: $7f
    rst $28                                       ; $4148: $ef
    ccf                                           ; $4149: $3f
    ld a, [hl-]                                   ; $414a: $3a
    rst $38                                       ; $414b: $ff
    rst $18                                       ; $414c: $df
    ld c, l                                       ; $414d: $4d
    rst $38                                       ; $414e: $ff
    or h                                          ; $414f: $b4
    rst $38                                       ; $4150: $ff
    ld a, d                                       ; $4151: $7a
    rst $38                                       ; $4152: $ff
    xor b                                         ; $4153: $a8
    rst $38                                       ; $4154: $ff
    rst $38                                       ; $4155: $ff
    ld [hl], h                                    ; $4156: $74
    rst $38                                       ; $4157: $ff
    ld h, a                                       ; $4158: $67
    adc b                                         ; $4159: $88
    call Call_000_32bb                            ; $415a: $cd $bb $32
    rst $38                                       ; $415d: $ff
    rst $28                                       ; $415e: $ef
    db $eb                                        ; $415f: $eb
    rst $38                                       ; $4160: $ff
    xor [hl]                                      ; $4161: $ae
    rst $38                                       ; $4162: $ff
    cp $ff                                        ; $4163: $fe $ff
    xor e                                         ; $4165: $ab
    xor $5c                                       ; $4166: $ee $5c
    ldh [rSB], a                                  ; $4168: $e0 $01
    rst $38                                       ; $416a: $ff
    ld h, b                                       ; $416b: $60
    db $e4                                        ; $416c: $e4
    ldh [rP1], a                                  ; $416d: $e0 $00
    rst $38                                       ; $416f: $ff
    ld [hl+], a                                   ; $4170: $22
    ei                                            ; $4171: $fb
    rst $38                                       ; $4172: $ff
    ld [$e05e], sp                                ; $4173: $08 $5e $e0
    ld b, b                                       ; $4176: $40
    rst $38                                       ; $4177: $ff
    sub b                                         ; $4178: $90
    rst $38                                       ; $4179: $ff
    ld [bc], a                                    ; $417a: $02
    xor a                                         ; $417b: $af
    rst $38                                       ; $417c: $ff
    jr z, @+$01                                   ; $417d: $28 $ff

    add b                                         ; $417f: $80
    db $fc                                        ; $4180: $fc
    ldh [rP1], a                                  ; $4181: $e0 $00
    ld a, [c]                                     ; $4183: $f2
    ldh [rP1], a                                  ; $4184: $e0 $00
    rst $38                                       ; $4186: $ff
    rst $38                                       ; $4187: $ff
    inc bc                                        ; $4188: $03
    rst $38                                       ; $4189: $ff
    dec b                                         ; $418a: $05
    cp $2b                                        ; $418b: $fe $2b
    db $fc                                        ; $418d: $fc
    dec c                                         ; $418e: $0d
    rst $38                                       ; $418f: $ff
    ld a, [$fd32]                                 ; $4190: $fa $32 $fd
    ld d, l                                       ; $4193: $55
    ld [$d7a8], a                                 ; $4194: $ea $a8 $d7
    db $f4                                        ; $4197: $f4
    rst $38                                       ; $4198: $ff
    adc e                                         ; $4199: $8b
    rst $20                                       ; $419a: $e7
    rst $38                                       ; $419b: $ff
    jp c, $f53d                                   ; $419c: $da $3d $f5

    ld a, [bc]                                    ; $419f: $0a
    xor d                                         ; $41a0: $aa
    rst $28                                       ; $41a1: $ef
    ld d, l                                       ; $41a2: $55
    ld b, c                                       ; $41a3: $41
    cp [hl]                                       ; $41a4: $be
    inc d                                         ; $41a5: $14
    or b                                          ; $41a6: $b0
    ldh [$75], a                                  ; $41a7: $e0 $75
    rst $38                                       ; $41a9: $ff
    sub l                                         ; $41aa: $95
    rst $38                                       ; $41ab: $ff
    db $eb                                        ; $41ac: $eb
    dec bc                                        ; $41ad: $0b
    push af                                       ; $41ae: $f5
    and l                                         ; $41af: $a5
    ei                                            ; $41b0: $fb
    ld c, d                                       ; $41b1: $4a
    rst $30                                       ; $41b2: $f7
    and [hl]                                      ; $41b3: $a6
    rst $38                                       ; $41b4: $ff
    ei                                            ; $41b5: $fb
    call $97f3                                    ; $41b6: $cd $f3 $97
    jp hl                                         ; $41b9: $e9


    ld c, a                                       ; $41ba: $4f
    pop af                                        ; $41bb: $f1
    push af                                       ; $41bc: $f5

jr_074_41bd:
    rst $38                                       ; $41bd: $ff
    rst $38                                       ; $41be: $ff
    add sp, -$01                                  ; $41bf: $e8 $ff
    ld a, [c]                                     ; $41c1: $f2
    db $fd                                        ; $41c2: $fd
    xor c                                         ; $41c3: $a9
    cp $52                                        ; $41c4: $fe $52
    ld a, a                                       ; $41c6: $7f
    db $fd                                        ; $41c7: $fd
    add c                                         ; $41c8: $81
    cp $2a                                        ; $41c9: $fe $2a
    push de                                       ; $41cb: $d5
    sub l                                         ; $41cc: $95
    db $eb                                        ; $41cd: $eb
    cpl                                           ; $41ce: $2f
    db $e4                                        ; $41cf: $e4
    cp $f9                                        ; $41d0: $fe $f9
    and $df                                       ; $41d2: $e6 $df
    sbc c                                         ; $41d4: $99
    sbc a                                         ; $41d5: $9f
    ld c, l                                       ; $41d6: $4d
    daa                                           ; $41d7: $27
    rla                                           ; $41d8: $17
    and e                                         ; $41d9: $a3
    rst $38                                       ; $41da: $ff
    di                                            ; $41db: $f3
    db $db                                        ; $41dc: $db
    pop hl                                        ; $41dd: $e1
    xor $f1                                       ; $41de: $ee $f1
    or h                                          ; $41e0: $b4
    ei                                            ; $41e1: $fb
    ld b, c                                       ; $41e2: $41
    rst $38                                       ; $41e3: $ff
    rst $38                                       ; $41e4: $ff
    rst $18                                       ; $41e5: $df
    sbc a                                         ; $41e6: $9f
    sbc h                                         ; $41e7: $9c
    ld c, a                                       ; $41e8: $4f
    ld h, $17                                     ; $41e9: $26 $17
    and d                                         ; $41eb: $a2
    rst $38                                       ; $41ec: $ff
    di                                            ; $41ed: $f3
    jp c, $eee1                                   ; $41ee: $da $e1 $ee

    ld [hl], c                                    ; $41f1: $71
    db $f4                                        ; $41f2: $f4
    dec sp                                        ; $41f3: $3b
    ld sp, hl                                     ; $41f4: $f9
    rst $38                                       ; $41f5: $ff
    rst $38                                       ; $41f6: $ff
    rst $20                                       ; $41f7: $e7

Jump_074_41f8:
    jr jr_074_41bd                                ; $41f8: $18 $c3

    inc h                                         ; $41fa: $24
    rst $20                                       ; $41fb: $e7
    inc h                                         ; $41fc: $24
    rst $38                                       ; $41fd: $ff
    rst $18                                       ; $41fe: $df
    inc a                                         ; $41ff: $3c
    db $db                                        ; $4200: $db
    inc a                                         ; $4201: $3c
    rst $20                                       ; $4202: $e7
    jr @+$6b                                      ; $4203: $18 $69

    ldh [rP1], a                                  ; $4205: $e0 $00
    ld h, a                                       ; $4207: $67

Call_074_4208:
    rst $38                                       ; $4208: $ff
    sbc d                                         ; $4209: $9a
    call nz, $0b8a                                ; $420a: $c4 $8a $0b
    ret nz                                        ; $420d: $c0

    ld b, d                                       ; $420e: $42
    and b                                         ; $420f: $a0
    db $10                                        ; $4210: $10
    rst $38                                       ; $4211: $ff
    ret nz                                        ; $4212: $c0

    jp hl                                         ; $4213: $e9


    add b                                         ; $4214: $80
    ld h, b                                       ; $4215: $60
    sub c                                         ; $4216: $91
    adc e                                         ; $4217: $8b
    ld h, b                                       ; $4218: $60
    ld d, $ff                                     ; $4219: $16 $ff
    xor c                                         ; $421b: $a9
    pop hl                                        ; $421c: $e1
    dec bc                                        ; $421d: $0b
    adc d                                         ; $421e: $8a
    daa                                           ; $421f: $27

Call_074_4220:
    daa                                           ; $4220: $27
    rrca                                          ; $4221: $0f
    xor l                                         ; $4222: $ad
    xor a                                         ; $4223: $af
    rra                                           ; $4224: $1f
    sub $3f                                       ; $4225: $d6 $3f
    ld a, l                                       ; $4227: $7d
    ld b, $e0                                     ; $4228: $06 $e0
    xor e                                         ; $422a: $ab
    ld h, b                                       ; $422b: $60
    ldh [$ab], a                                  ; $422c: $e0 $ab
    ld a, [$e060]                                 ; $422e: $fa $60 $e0
    or d                                          ; $4231: $b2
    ld h, b                                       ; $4232: $60
    db $e4                                        ; $4233: $e4
    sub b                                         ; $4234: $90
    rst $38                                       ; $4235: $ff
    ld a, [hl+]                                   ; $4236: $2a
    rst $28                                       ; $4237: $ef
    inc a                                         ; $4238: $3c
    rst $38                                       ; $4239: $ff
    rst $28                                       ; $423a: $ef
    xor d                                         ; $423b: $aa
    db $eb                                        ; $423c: $eb
    ld a, a                                       ; $423d: $7f
    db $eb                                        ; $423e: $eb
    xor d                                         ; $423f: $aa
    or a                                          ; $4240: $b7
    cp $ff                                        ; $4241: $fe $ff
    xor a                                         ; $4243: $af
    cp a                                          ; $4244: $bf
    xor l                                         ; $4245: $ad
    db $ed                                        ; $4246: $ed
    sbc a                                         ; $4247: $9f
    ld e, a                                       ; $4248: $5f
    db $ed                                        ; $4249: $ed
    and l                                         ; $424a: $a5
    rst $38                                       ; $424b: $ff
    ei                                            ; $424c: $fb
    ld [hl], $ef                                  ; $424d: $36 $ef
    xor c                                         ; $424f: $a9
    rst $38                                       ; $4250: $ff
    ld a, $ef                                     ; $4251: $3e $ef
    ld [hl], a                                    ; $4253: $77
    rst $30                                       ; $4254: $f7
    rst $08                                       ; $4255: $cf
    ld l, $ff                                     ; $4256: $2e $ff
    xor h                                         ; $4258: $ac
    pop hl                                        ; $4259: $e1
    db $db                                        ; $425a: $db
    inc h                                         ; $425b: $24
    cp $01                                        ; $425c: $fe $01
    rst $38                                       ; $425e: $ff
    push af                                       ; $425f: $f5
    ld a, [bc]                                    ; $4260: $0a
    jp c, $f425                                   ; $4261: $da $25 $f4

    dec bc                                        ; $4264: $0b
    add sp, $17                                   ; $4265: $e8 $17
    rst $38                                       ; $4267: $ff
    db $f4                                        ; $4268: $f4
    dec bc                                        ; $4269: $0b
    xor c                                         ; $426a: $a9

Jump_074_426b:
    ld d, [hl]                                    ; $426b: $56
    pop af                                        ; $426c: $f1
    ld c, $aa                                     ; $426d: $0e $aa
    ld d, h                                       ; $426f: $54
    rst $38                                       ; $4270: $ff
    ld d, d                                       ; $4271: $52
    xor h                                         ; $4272: $ac
    add h                                         ; $4273: $84
    ld a, b                                       ; $4274: $78
    jr @-$1e                                      ; $4275: $18 $e0

    ld l, b                                       ; $4277: $68
    add b                                         ; $4278: $80
    rst $38                                       ; $4279: $ff
    ld a, a                                       ; $427a: $7f
    cp a                                          ; $427b: $bf
    rra                                           ; $427c: $1f
    rst $28                                       ; $427d: $ef
    add a                                         ; $427e: $87
    ld a, a                                       ; $427f: $7f
    ld d, e                                       ; $4280: $53
    xor a                                         ; $4281: $af
    rst $38                                       ; $4282: $ff
    xor e                                         ; $4283: $ab
    ld d, l                                       ; $4284: $55
    pop af                                        ; $4285: $f1
    rrca                                          ; $4286: $0f
    xor c                                         ; $4287: $a9
    ld d, [hl]                                    ; $4288: $56
    db $f4                                        ; $4289: $f4
    dec bc                                        ; $428a: $0b
    ld a, a                                       ; $428b: $7f
    sub b                                         ; $428c: $90
    nop                                           ; $428d: $00
    adc b                                         ; $428e: $88
    nop                                           ; $428f: $00
    ld de, $8001                                  ; $4290: $11 $01 $80
    db $fc                                        ; $4293: $fc
    ldh [rIE], a                                  ; $4294: $e0 $ff
    ret nz                                        ; $4296: $c0

    ld b, b                                       ; $4297: $40
    ld de, $0201                                  ; $4298: $11 $01 $02
    ld [bc], a                                    ; $429b: $02
    ld b, c                                       ; $429c: $41
    ld b, c                                       ; $429d: $41
    rst $38                                       ; $429e: $ff
    ld [bc], a                                    ; $429f: $02
    ld [bc], a                                    ; $42a0: $02
    ld b, l                                       ; $42a1: $45
    ld b, l                                       ; $42a2: $45
    inc hl                                        ; $42a3: $23
    inc hl                                        ; $42a4: $23
    ld b, l                                       ; $42a5: $45
    ld b, l                                       ; $42a6: $45
    rst $18                                       ; $42a7: $df
    xor e                                         ; $42a8: $ab
    xor e                                         ; $42a9: $ab
    ld d, a                                       ; $42aa: $57
    ld d, a                                       ; $42ab: $57
    rst $38                                       ; $42ac: $ff
    cp d                                          ; $42ad: $ba
    ret nz                                        ; $42ae: $c0

    cp $fe                                        ; $42af: $fe $fe
    ld a, a                                       ; $42b1: $7f
    db $f4                                        ; $42b2: $f4
    ld a, [$f2f6]                                 ; $42b3: $fa $f6 $f2
    pop af                                        ; $42b6: $f1
    or $fe                                        ; $42b7: $f6 $fe
    db $fc                                        ; $42b9: $fc
    ldh [$bf], a                                  ; $42ba: $e0 $bf
    db $f4                                        ; $42bc: $f4
    ld a, [$7fff]                                 ; $42bd: $fa $ff $7f
    ccf                                           ; $42c0: $3f
    ld a, a                                       ; $42c1: $7f
    db $fc                                        ; $42c2: $fc
    ldh [rIE], a                                  ; $42c3: $e0 $ff
    rst $38                                       ; $42c5: $ff
    rst $38                                       ; $42c6: $ff
    ld a, a                                       ; $42c7: $7f
    cpl                                           ; $42c8: $2f
    rst $30                                       ; $42c9: $f7
    db $eb                                        ; $42ca: $eb
    ld h, a                                       ; $42cb: $67
    inc hl                                        ; $42cc: $23
    rst $28                                       ; $42cd: $ef
    rst $38                                       ; $42ce: $ff
    ld sp, hl                                     ; $42cf: $f9
    cp $fe                                        ; $42d0: $fe $fe
    cp $eb                                        ; $42d2: $fe $eb
    or $ee                                        ; $42d4: $f6 $ee
    and $77                                       ; $42d6: $e6 $77
    db $e3                                        ; $42d8: $e3
    xor $fe                                       ; $42d9: $ee $fe
    db $fc                                        ; $42db: $fc
    ldh [$e8], a                                  ; $42dc: $e0 $e8
    or $ff                                        ; $42de: $f6 $ff
    db $ec                                        ; $42e0: $ec
    ldh [$de], a                                  ; $42e1: $e0 $de
    db $fc                                        ; $42e3: $fc
    ld [c], a                                     ; $42e4: $e2
    ld b, a                                       ; $42e5: $47
    inc de                                        ; $42e6: $13
    rst $28                                       ; $42e7: $ef
    rst $00                                       ; $42e8: $c7
    ret c                                         ; $42e9: $d8

    ldh [$f5], a                                  ; $42ea: $e0 $f5
    ld a, [$fcfd]                                 ; $42ec: $fa $fd $fc
    cp l                                          ; $42ef: $bd
    pop hl                                        ; $42f0: $e1
    cp $dd                                        ; $42f1: $fe $dd
    cp $f3                                        ; $42f3: $fe $f3
    db $fc                                        ; $42f5: $fc
    ld d, l                                       ; $42f6: $55
    rst $30                                       ; $42f7: $f7
    ld [$fdf2], a                                 ; $42f8: $ea $f2 $fd
    call nz, Call_000_3fe3                        ; $42fb: $c4 $e3 $3f
    rst $38                                       ; $42fe: $ff
    rst $30                                       ; $42ff: $f7
    ld a, a                                       ; $4300: $7f
    ld sp, hl                                     ; $4301: $f9
    ld a, $bc                                     ; $4302: $3e $bc
    and b                                         ; $4304: $a0
    cp b                                          ; $4305: $b8
    ldh [rIE], a                                  ; $4306: $e0 $ff
    ld a, [$fdfa]                                 ; $4308: $fa $fa $fd
    db $fd                                        ; $430b: $fd
    ld e, a                                       ; $430c: $5f
    cp $fc                                        ; $430d: $fe $fc
    db $fd                                        ; $430f: $fd
    ld a, [$e4fc]                                 ; $4310: $fa $fc $e4
    and b                                         ; $4313: $a0
    db $fd                                        ; $4314: $fd
    cp a                                          ; $4315: $bf
    ret nz                                        ; $4316: $c0

    ld a, a                                       ; $4317: $7f
    cp a                                          ; $4318: $bf
    ld a, a                                       ; $4319: $7f

jr_074_431a:
    ld c, a                                       ; $431a: $4f
    ccf                                           ; $431b: $3f
    rst $18                                       ; $431c: $df
    ccf                                           ; $431d: $3f
    sbc a                                         ; $431e: $9f
    db $e4                                        ; $431f: $e4
    ldh [$df], a                                  ; $4320: $e0 $df
    rst $28                                       ; $4322: $ef
    rst $38                                       ; $4323: $ff
    ld e, a                                       ; $4324: $5f
    ccf                                           ; $4325: $3f
    cp $7f                                        ; $4326: $fe $7f
    pop hl                                        ; $4328: $e1
    db $fd                                        ; $4329: $fd
    cp $fa                                        ; $432a: $fe $fa
    ret z                                         ; $432c: $c8

    and b                                         ; $432d: $a0
    cp $d8                                        ; $432e: $fe $d8
    ldh [rIE], a                                  ; $4330: $e0 $ff
    db $fc                                        ; $4332: $fc
    xor a                                         ; $4333: $af
    sbc a                                         ; $4334: $9f
    ld l, a                                       ; $4335: $6f
    ld l, a                                       ; $4336: $6f
    rra                                           ; $4337: $1f
    rst $00                                       ; $4338: $c7
    ld a, a                                       ; $4339: $7f
    rra                                           ; $433a: $1f
    cp h                                          ; $433b: $bc
    and c                                         ; $433c: $a1

Call_074_433d:
    ld a, a                                       ; $433d: $7f
    rst $08                                       ; $433e: $cf
    ret c                                         ; $433f: $d8

    ldh [$fb], a                                  ; $4340: $e0 $fb
    ld sp, hl                                     ; $4342: $f9
    cp $c8                                        ; $4343: $fe $c8
    db $e3                                        ; $4345: $e3
    cp $fe                                        ; $4346: $fe $fe
    rst $28                                       ; $4348: $ef
    cp $7e                                        ; $4349: $fe $7e
    cp a                                          ; $434b: $bf
    db $fd                                        ; $434c: $fd
    or $ff                                        ; $434d: $f6 $ff
    sbc a                                         ; $434f: $9f
    rst $38                                       ; $4350: $ff
    cpl                                           ; $4351: $2f
    ld a, d                                       ; $4352: $7a
    pop bc                                        ; $4353: $c1
    ccf                                           ; $4354: $3f
    rst $18                                       ; $4355: $df
    rst $20                                       ; $4356: $e7
    sbc a                                         ; $4357: $9f
    rst $28                                       ; $4358: $ef
    rra                                           ; $4359: $1f
    call $e2d8                                    ; $435a: $cd $d8 $e2
    rst $08                                       ; $435d: $cf
    rst $10                                       ; $435e: $d7
    rst $38                                       ; $435f: $ff
    db $e3                                        ; $4360: $e3
    db $db                                        ; $4361: $db
    add e                                         ; $4362: $83
    cp e                                          ; $4363: $bb
    ret                                           ; $4364: $c9


    or c                                          ; $4365: $b1
    pop hl                                        ; $4366: $e1
    sub l                                         ; $4367: $95
    rst $28                                       ; $4368: $ef
    ld [hl], $00                                  ; $4369: $36 $00
    and c                                         ; $436b: $a1
    add c                                         ; $436c: $81
    ld a, a                                       ; $436d: $7f
    and c                                         ; $436e: $a1
    rst $28                                       ; $436f: $ef
    rst $08                                       ; $4370: $cf
    rst $08                                       ; $4371: $cf
    rst $38                                       ; $4372: $ff
    rst $38                                       ; $4373: $ff
    sub a                                         ; $4374: $97
    and a                                         ; $4375: $a7
    db $db                                        ; $4376: $db
    and e                                         ; $4377: $a3
    sbc a                                         ; $4378: $9f
    db $e3                                        ; $4379: $e3
    ccf                                           ; $437a: $3f
    rst $38                                       ; $437b: $ff
    ld b, e                                       ; $437c: $43
    ei                                            ; $437d: $fb
    ei                                            ; $437e: $fb
    cp $fe                                        ; $437f: $fe $fe
    ld a, a                                       ; $4381: $7f
    ld a, [hl]                                    ; $4382: $7e
    ld hl, sp-$01                                 ; $4383: $f8 $ff
    ldh a, [$a6]                                  ; $4385: $f0 $a6
    sbc d                                         ; $4387: $9a
    pop hl                                        ; $4388: $e1
    add c                                         ; $4389: $81
    daa                                           ; $438a: $27
    daa                                           ; $438b: $27
    rst $38                                       ; $438c: $ff
    rst $38                                       ; $438d: $ff
    rst $38                                       ; $438e: $ff
    sub c                                         ; $438f: $91
    ld b, c                                       ; $4390: $41
    ld b, d                                       ; $4391: $42
    add b                                         ; $4392: $80
    db $e3                                        ; $4393: $e3
    jr nz, jr_074_431a                            ; $4394: $20 $84

    ld [hl], a                                    ; $4396: $77
    nop                                           ; $4397: $00
    or e                                          ; $4398: $b3
    or e                                          ; $4399: $b3
    inc b                                         ; $439a: $04
    ldh [$fe], a                                  ; $439b: $e0 $fe
    cp a                                          ; $439d: $bf
    cp a                                          ; $439e: $bf
    nop                                           ; $439f: $00
    nop                                           ; $43a0: $00
    nop                                           ; $43a1: $00
    rst $18                                       ; $43a2: $df
    inc sp                                        ; $43a3: $33
    inc sp                                        ; $43a4: $33
    ld [hl-], a                                   ; $43a5: $32
    add hl, sp                                    ; $43a6: $39
    dec l                                         ; $43a7: $2d
    rst $38                                       ; $43a8: $ff
    pop hl                                        ; $43a9: $e1
    ld l, $2e                                     ; $43aa: $2e $2e
    ld a, $f9                                     ; $43ac: $3e $f9
    ld [c], a                                     ; $43ae: $e2
    ld sp, $4e33                                  ; $43af: $31 $33 $4e
    inc sp                                        ; $43b2: $33
    jr nz, @+$01                                  ; $43b3: $20 $ff

    rst $38                                       ; $43b5: $ff
    rst $20                                       ; $43b6: $e7
    and $e5                                       ; $43b7: $e6 $e5
    inc sp                                        ; $43b9: $33
    cp a                                          ; $43ba: $bf
    ldh [$30], a                                  ; $43bb: $e0 $30
    cp [hl]                                       ; $43bd: $be
    db $e3                                        ; $43be: $e3
    cp c                                          ; $43bf: $b9
    pop hl                                        ; $43c0: $e1
    add hl, sp                                    ; $43c1: $39
    ld [hl-], a                                   ; $43c2: $32
    ld c, a                                       ; $43c3: $4f
    ld a, c                                       ; $43c4: $79
    ld d, b                                       ; $43c5: $50
    ret nz                                        ; $43c6: $c0

    rst $38                                       ; $43c7: $ff
    ret nz                                        ; $43c8: $c0

    ld [$4241], a                                 ; $43c9: $ea $41 $42
    inc sp                                        ; $43cc: $33
    ld sp, $e4c0                                  ; $43cd: $31 $c0 $e4
    rst $00                                       ; $43d0: $c7
    ld a, [hl-]                                   ; $43d1: $3a
    add hl, sp                                    ; $43d2: $39
    ld [hl-], a                                   ; $43d3: $32
    ld a, [c]                                     ; $43d4: $f2
    ldh [$c0], a                                  ; $43d5: $e0 $c0
    rst $38                                       ; $43d7: $ff
    add b                                         ; $43d8: $80
    ld [$4443], a                                 ; $43d9: $ea $43 $44
    adc [hl]                                      ; $43dc: $8e
    ret nz                                        ; $43dd: $c0

    push hl                                       ; $43de: $e5
    ld a, [hl-]                                   ; $43df: $3a

Call_074_43e0:
    dec sp                                        ; $43e0: $3b
    ld sp, $e1f2                                  ; $43e1: $31 $f2 $e1
    ret nz                                        ; $43e4: $c0

    rst $38                                       ; $43e5: $ff
    ld b, b                                       ; $43e6: $40
    ld [$6d45], a                                 ; $43e7: $ea $45 $6d
    ld b, [hl]                                    ; $43ea: $46
    cp $c4                                        ; $43eb: $fe $c4
    dec l                                         ; $43ed: $2d
    dec sp                                        ; $43ee: $3b
    add b                                         ; $43ef: $80
    ldh [rLYC], a                                 ; $43f0: $e0 $45
    ld b, [hl]                                    ; $43f2: $46
    ret nz                                        ; $43f3: $c0

    rst $38                                       ; $43f4: $ff
    halt                                          ; $43f5: $76
    nop                                           ; $43f6: $00
    db $ec                                        ; $43f7: $ec
    inc sp                                        ; $43f8: $33
    inc [hl]                                      ; $43f9: $34
    ld bc, $3be5                                  ; $43fa: $01 $e5 $3b
    ld a, [hl-]                                   ; $43fd: $3a
    ld sp, $e1f0                                  ; $43fe: $31 $f0 $e1
    db $e4                                        ; $4401: $e4
    jp z, $e8ff                                   ; $4402: $ca $ff $e8

    rst $20                                       ; $4405: $e7
    ld c, [hl]                                    ; $4406: $4e
    ld a, a                                       ; $4407: $7f
    add $7e                                       ; $4408: $c6 $7e
    ld [c], a                                     ; $440a: $e2
    add hl, sp                                    ; $440b: $39
    ld [hl-], a                                   ; $440c: $32
    inc sp                                        ; $440d: $33
    db $d3                                        ; $440e: $d3
    ld b, a                                       ; $440f: $47
    ld c, b                                       ; $4410: $48
    jp z, $e8ff                                   ; $4411: $ca $ff $e8

    rst $20                                       ; $4414: $e7
    ld d, b                                       ; $4415: $50
    ld b, b                                       ; $4416: $40
    ret nz                                        ; $4417: $c0

    ld a, [hl-]                                   ; $4418: $3a
    dec l                                         ; $4419: $2d
    or a                                          ; $441a: $b7
    ld h, $22                                     ; $441b: $26 $22
    inc h                                         ; $441d: $24
    rst $38                                       ; $441e: $ff
    ldh [rNR43], a                                ; $441f: $e0 $22
    ld h, $7f                                     ; $4421: $26 $7f
    pop bc                                        ; $4423: $c1
    ld c, c                                       ; $4424: $49
    jp hl                                         ; $4425: $e9


    ld c, d                                       ; $4426: $4a
    jp z, $e8ff                                   ; $4427: $ca $ff $e8

    rst $20                                       ; $442a: $e7
    ld c, l                                       ; $442b: $4d
    add e                                         ; $442c: $83
    ret nz                                        ; $442d: $c0

    dec sp                                        ; $442e: $3b
    ld a, [hl-]                                   ; $442f: $3a
    inc hl                                        ; $4430: $23
    db $db                                        ; $4431: $db
    scf                                           ; $4432: $37
    daa                                           ; $4433: $27
    rst $38                                       ; $4434: $ff
    ldh [$38], a                                  ; $4435: $e0 $38
    inc hl                                        ; $4437: $23
    or $a0                                        ; $4438: $f6 $a0
    inc [hl]                                      ; $443a: $34
    ld c, e                                       ; $443b: $4b

Jump_074_443c:
    ld sp, hl                                     ; $443c: $f9
    ld c, h                                       ; $443d: $4c
    jp z, Jump_000_00ff                           ; $443e: $ca $ff $00

    ret                                           ; $4441: $c9


    ld sp, $2d3a                                  ; $4442: $31 $3a $2d
    dec sp                                        ; $4445: $3b
    dec h                                         ; $4446: $25
    ld a, a                                       ; $4447: $7f
    jr z, jr_074_4480                             ; $4448: $28 $36

    ld hl, $3621                                  ; $444a: $21 $21 $36
    add hl, hl                                    ; $444d: $29
    dec h                                         ; $444e: $25
    cp a                                          ; $444f: $bf
    and d                                         ; $4450: $a2
    db $fc                                        ; $4451: $fc
    nop                                           ; $4452: $00
    rst $38                                       ; $4453: $ff
    ret nz                                        ; $4454: $c0

    db $eb                                        ; $4455: $eb
    dec sp                                        ; $4456: $3b
    dec l                                         ; $4457: $2d
    dec l                                         ; $4458: $2d
    dec h                                         ; $4459: $25
    jr z, jr_074_447d                             ; $445a: $28 $21

    ret nz                                        ; $445c: $c0

    rst $38                                       ; $445d: $ff
    ldh [$c0], a                                  ; $445e: $e0 $c0
    pop hl                                        ; $4460: $e1
    rst $38                                       ; $4461: $ff
    ret nz                                        ; $4462: $c0

    ret nz                                        ; $4463: $c0

    rst $38                                       ; $4464: $ff
    add b                                         ; $4465: $80
    xor d                                         ; $4466: $aa
    ld b, b                                       ; $4467: $40
    and c                                         ; $4468: $a1
    inc hl                                        ; $4469: $23
    ld a, [hl+]                                   ; $446a: $2a
    adc l                                         ; $446b: $8d
    inc l                                         ; $446c: $2c
    rst $38                                       ; $446d: $ff
    ldh [$2b], a                                  ; $446e: $e0 $2b
    inc hl                                        ; $4470: $23
    pop bc                                        ; $4471: $c1
    ld [c], a                                     ; $4472: $e2
    ret nz                                        ; $4473: $c0

    rst $38                                       ; $4474: $ff
    ld b, b                                       ; $4475: $40
    xor h                                         ; $4476: $ac
    add hl, sp                                    ; $4477: $39
    ld h, h                                       ; $4478: $64
    ret nz                                        ; $4479: $c0

    add $c1                                       ; $447a: $c6 $c1
    ld [c], a                                     ; $447c: $e2

jr_074_447d:
    ld a, $ca                                     ; $447d: $3e $ca
    rst $38                                       ; $447f: $ff

jr_074_4480:
    nop                                           ; $4480: $00
    xor b                                         ; $4481: $a8
    ld b, a                                       ; $4482: $47
    ld c, b                                       ; $4483: $48
    nop                                           ; $4484: $00
    add $37                                       ; $4485: $c6 $37
    add hl, sp                                    ; $4487: $39
    jr nc, @+$34                                  ; $4488: $30 $32

    jp nz, Jump_000_3e80                          ; $448a: $c2 $80 $3e

    inc a                                         ; $448d: $3c
    jp z, $c0ff                                   ; $448e: $ca $ff $c0

    adc b                                         ; $4491: $88
    inc hl                                        ; $4492: $23
    ld c, c                                       ; $4493: $49
    ld c, d                                       ; $4494: $4a
    ld a, [hl]                                    ; $4495: $7e
    add l                                         ; $4496: $85
    dec b                                         ; $4497: $05
    pop hl                                        ; $4498: $e1
    jp nz, Jump_000_3d80                          ; $4499: $c2 $80 $3d

    ret nz                                        ; $449c: $c0

    rst $38                                       ; $449d: $ff
    add b                                         ; $449e: $80
    adc c                                         ; $449f: $89
    jp $4c4b                                      ; $44a0: $c3 $4b $4c


    ld a, [hl]                                    ; $44a3: $7e
    add c                                         ; $44a4: $81
    rst $38                                       ; $44a5: $ff
    pop hl                                        ; $44a6: $e1
    push bc                                       ; $44a7: $c5
    and c                                         ; $44a8: $a1
    ld [hl], c                                    ; $44a9: $71
    add b                                         ; $44aa: $80
    ccf                                           ; $44ab: $3f
    dec a                                         ; $44ac: $3d
    ldh [$ca], a                                  ; $44ad: $e0 $ca
    rst $38                                       ; $44af: $ff
    ld b, b                                       ; $44b0: $40
    xor e                                         ; $44b1: $ab
    ld a, h                                       ; $44b2: $7c
    and b                                         ; $44b3: $a0
    cp $e3                                        ; $44b4: $fe $e3
    ld [hl], h                                    ; $44b6: $74
    ldh [$33], a                                  ; $44b7: $e0 $33
    inc sp                                        ; $44b9: $33
    ld b, b                                       ; $44ba: $40
    ld sp, $ca3f                                  ; $44bb: $31 $3f $ca
    rst $38                                       ; $44be: $ff
    nop                                           ; $44bf: $00
    adc d                                         ; $44c0: $8a
    ld c, $80                                     ; $44c1: $0e $80
    inc sp                                        ; $44c3: $33
    ld c, l                                       ; $44c4: $4d
    cp l                                          ; $44c5: $bd
    ld [c], a                                     ; $44c6: $e2
    ld [hl], h                                    ; $44c7: $74
    pop hl                                        ; $44c8: $e1
    nop                                           ; $44c9: $00
    cp a                                          ; $44ca: $bf
    ldh [$ca], a                                  ; $44cb: $e0 $ca
    rst $38                                       ; $44cd: $ff
    rst $38                                       ; $44ce: $ff
    rst $38                                       ; $44cf: $ff
    rst $38                                       ; $44d0: $ff
    rst $38                                       ; $44d1: $ff
    rst $38                                       ; $44d2: $ff
    rst $38                                       ; $44d3: $ff
    rst $38                                       ; $44d4: $ff
    rst $38                                       ; $44d5: $ff
    rst $38                                       ; $44d6: $ff
    rst $38                                       ; $44d7: $ff
    rst $38                                       ; $44d8: $ff
    rst $38                                       ; $44d9: $ff
    nop                                           ; $44da: $00
    rst $38                                       ; $44db: $ff
    rst $38                                       ; $44dc: $ff
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
    rst $38                                       ; $44ea: $ff
    nop                                           ; $44eb: $00
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
    rst $38                                       ; $44fb: $ff
    nop                                           ; $44fc: $00
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
    rst $38                                       ; $450c: $ff
    nop                                           ; $450d: $00
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
    rst $38                                       ; $451d: $ff
    nop                                           ; $451e: $00
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
    rst $38                                       ; $452e: $ff
    nop                                           ; $452f: $00
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
    rst $38                                       ; $453f: $ff
    nop                                           ; $4540: $00
    rst $38                                       ; $4541: $ff
    rst $38                                       ; $4542: $ff
    rst $38                                       ; $4543: $ff
    rst $38                                       ; $4544: $ff
    rst $38                                       ; $4545: $ff

Jump_074_4546:
    rst $38                                       ; $4546: $ff
    rst $38                                       ; $4547: $ff

Call_074_4548:
    rst $38                                       ; $4548: $ff
    rst $38                                       ; $4549: $ff
    rst $38                                       ; $454a: $ff
    rst $38                                       ; $454b: $ff
    rst $38                                       ; $454c: $ff
    rst $38                                       ; $454d: $ff
    rst $38                                       ; $454e: $ff
    rst $38                                       ; $454f: $ff
    rst $38                                       ; $4550: $ff
    nop                                           ; $4551: $00
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
    rst $38                                       ; $4561: $ff
    nop                                           ; $4562: $00
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
    rst $38                                       ; $4572: $ff
    nop                                           ; $4573: $00
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
    rst $38                                       ; $4583: $ff
    nop                                           ; $4584: $00
    rst $38                                       ; $4585: $ff
    ei                                            ; $4586: $fb
    nop                                           ; $4587: $00
    nop                                           ; $4588: $00
    nop                                           ; $4589: $00
    rst $18                                       ; $458a: $df
    ld c, l                                       ; $458b: $4d
    ld c, l                                       ; $458c: $4d
    ld c, l                                       ; $458d: $4d
    dec l                                         ; $458e: $2d
    dec c                                         ; $458f: $0d
    rst $38                                       ; $4590: $ff
    pop hl                                        ; $4591: $e1
    ld c, l                                       ; $4592: $4d
    ld l, l                                       ; $4593: $6d
    ld a, $f9                                     ; $4594: $3e $f9
    ld [c], a                                     ; $4596: $e2
    dec l                                         ; $4597: $2d
    dec c                                         ; $4598: $0d
    ld c, $4d                                     ; $4599: $0e $4d
    ld [$ffff], sp                                ; $459b: $08 $ff $ff
    rst $20                                       ; $459e: $e7
    and $32                                       ; $459f: $e6 $32
    ret nz                                        ; $45a1: $c0

    ldh [rKEY1], a                                ; $45a2: $e0 $4d
    set 4, b                                      ; $45a4: $cb $e0
    rst $38                                       ; $45a6: $ff
    and $6d                                       ; $45a7: $e6 $6d
    ld c, $c0                                     ; $45a9: $0e $c0
    rst $38                                       ; $45ab: $ff
    ret nz                                        ; $45ac: $c0

    db $eb                                        ; $45ad: $eb
    ld b, b                                       ; $45ae: $40
    add l                                         ; $45af: $85
    ldh [$c1], a                                  ; $45b0: $e0 $c1
    add sp, $74                                   ; $45b2: $e8 $74
    pop hl                                        ; $45b4: $e1
    jp z, $c0ff                                   ; $45b5: $ca $ff $c0

    db $eb                                        ; $45b8: $eb
    add d                                         ; $45b9: $82
    rst $20                                       ; $45ba: $e7
    dec l                                         ; $45bb: $2d
    or d                                          ; $45bc: $b2
    pop hl                                        ; $45bd: $e1
    nop                                           ; $45be: $00
    add b                                         ; $45bf: $80
    rst $38                                       ; $45c0: $ff
    ret nz                                        ; $45c1: $c0

    db $ed                                        ; $45c2: $ed
    dec b                                         ; $45c3: $05
    db $e3                                        ; $45c4: $e3
    ei                                            ; $45c5: $fb
    pop bc                                        ; $45c6: $c1
    db $f4                                        ; $45c7: $f4
    ret nz                                        ; $45c8: $c0

    ret nz                                        ; $45c9: $c0

    rst $38                                       ; $45ca: $ff
    add b                                         ; $45cb: $80
    rst $30                                       ; $45cc: $f7
    ld a, a                                       ; $45cd: $7f
    ldh [$08], a                                  ; $45ce: $e0 $08
    xor a                                         ; $45d0: $af
    ret nz                                        ; $45d1: $c0

    jp z, $e8ff                                   ; $45d2: $ca $ff $e8

    rst $20                                       ; $45d5: $e7
    ld c, $c1                                     ; $45d6: $0e $c1
    ret nz                                        ; $45d8: $c0

    add c                                         ; $45d9: $81
    and $7f                                       ; $45da: $e6 $7f
    pop hl                                        ; $45dc: $e1
    ldh a, [$c0]                                  ; $45dd: $f0 $c0
    ret c                                         ; $45df: $d8

    jp z, $c0ff                                   ; $45e0: $ca $ff $c0

    jp hl                                         ; $45e3: $e9


    call z, Call_000_2bc1                         ; $45e4: $cc $c1 $2b
    dec bc                                        ; $45e7: $0b
    rst $38                                       ; $45e8: $ff
    pop hl                                        ; $45e9: $e1
    dec hl                                        ; $45ea: $2b
    dec bc                                        ; $45eb: $0b
    jr nz, jr_074_462c                            ; $45ec: $20 $3e

    db $e3                                        ; $45ee: $e3
    jp z, $80ff                                   ; $45ef: $ca $ff $80

    add sp, $03                                   ; $45f2: $e8 $03
    jp nz, $e3c0                                  ; $45f4: $c2 $c0 $e3

    dec bc                                        ; $45f7: $0b
    ret nz                                        ; $45f8: $c0

    ldh [$34], a                                  ; $45f9: $e0 $34
    pop bc                                        ; $45fb: $c1
    ld hl, sp-$36                                 ; $45fc: $f8 $ca
    rst $38                                       ; $45fe: $ff
    add b                                         ; $45ff: $80
    call $e0c6                                    ; $4600: $cd $c6 $e0
    dec bc                                        ; $4603: $0b
    dec bc                                        ; $4604: $0b
    dec l                                         ; $4605: $2d
    dec bc                                        ; $4606: $0b
    dec hl                                        ; $4607: $2b
    nop                                           ; $4608: $00

Call_074_4609:
    cp $c3                                        ; $4609: $fe $c3
    jp z, $c0ff                                   ; $460b: $ca $ff $c0

    rst $28                                       ; $460e: $ef
    ccf                                           ; $460f: $3f
    db $e3                                        ; $4610: $e3
    cp a                                          ; $4611: $bf
    and c                                         ; $4612: $a1
    ret nz                                        ; $4613: $c0

    rst $38                                       ; $4614: $ff
    add b                                         ; $4615: $80
    xor d                                         ; $4616: $aa
    ld c, h                                       ; $4617: $4c
    jp nz, Jump_074_6b35                          ; $4618: $c2 $35 $6b

    ld b, b                                       ; $461b: $40
    db $e3                                        ; $461c: $e3
    ld c, e                                       ; $461d: $4b
    pop bc                                        ; $461e: $c1
    pop hl                                        ; $461f: $e1
    ld l, l                                       ; $4620: $6d
    ld l, l                                       ; $4621: $6d
    jp z, $80ff                                   ; $4622: $ca $ff $80

    xor d                                         ; $4625: $aa
    or [hl]                                       ; $4626: $b6
    rst $38                                       ; $4627: $ff
    add b                                         ; $4628: $80
    ld l, e                                       ; $4629: $6b
    ld c, e                                       ; $462a: $4b
    rst $38                                       ; $462b: $ff

jr_074_462c:
    pop hl                                        ; $462c: $e1
    ld l, e                                       ; $462d: $6b
    ld c, e                                       ; $462e: $4b
    add d                                         ; $462f: $82
    pop hl                                        ; $4630: $e1
    ld l, l                                       ; $4631: $6d
    pop de                                        ; $4632: $d1
    ld l, $ca                                     ; $4633: $2e $ca
    rst $38                                       ; $4635: $ff
    add b                                         ; $4636: $80
    jp hl                                         ; $4637: $e9


    add b                                         ; $4638: $80
    xor c                                         ; $4639: $a9
    ld l, l                                       ; $463a: $6d
    jp nz, $2e80                                  ; $463b: $c2 $80 $2e

    ld l, [hl]                                    ; $463e: $6e
    ldh a, [$ca]                                  ; $463f: $f0 $ca
    rst $38                                       ; $4641: $ff
    ret nz                                        ; $4642: $c0

    db $eb                                        ; $4643: $eb
    ld a, [hl]                                    ; $4644: $7e
    add h                                         ; $4645: $84
    inc bc                                        ; $4646: $03
    and b                                         ; $4647: $a0
    ld c, l                                       ; $4648: $4d
    ld c, $0e                                     ; $4649: $0e $0e
    dec c                                         ; $464b: $0d
    ld bc, $802e                                  ; $464c: $01 $2e $80
    rst $38                                       ; $464f: $ff
    add b                                         ; $4650: $80
    db $eb                                        ; $4651: $eb
    ld a, [hl]                                    ; $4652: $7e
    add c                                         ; $4653: $81
    add l                                         ; $4654: $85
    add d                                         ; $4655: $82
    or l                                          ; $4656: $b5
    add b                                         ; $4657: $80
    rst $38                                       ; $4658: $ff
    add b                                         ; $4659: $80
    ret nz                                        ; $465a: $c0

    rst $38                                       ; $465b: $ff
    ld b, h                                       ; $465c: $44
    ld b, b                                       ; $465d: $40
    adc h                                         ; $465e: $8c
    ld c, $80                                     ; $465f: $0e $80
    dec l                                         ; $4661: $2d
    adc b                                         ; $4662: $88
    and b                                         ; $4663: $a0
    or [hl]                                       ; $4664: $b6
    ret nz                                        ; $4665: $c0

    ld sp, hl                                     ; $4666: $f9
    ld h, c                                       ; $4667: $61
    ld c, l                                       ; $4668: $4d
    ret nz                                        ; $4669: $c0

    rst $38                                       ; $466a: $ff
    inc c                                         ; $466b: $0c
    nop                                           ; $466c: $00
    adc h                                         ; $466d: $8c
    ld c, $80                                     ; $466e: $0e $80
    dec l                                         ; $4670: $2d
    ld c, $c0                                     ; $4671: $0e $c0
    rst $20                                       ; $4673: $e7
    ret nz                                        ; $4674: $c0

    rst $18                                       ; $4675: $df
    rst $38                                       ; $4676: $ff
    rst $38                                       ; $4677: $ff
    rst $38                                       ; $4678: $ff
    rst $38                                       ; $4679: $ff
    nop                                           ; $467a: $00
    rst $38                                       ; $467b: $ff
    rst $38                                       ; $467c: $ff
    rst $38                                       ; $467d: $ff
    rst $38                                       ; $467e: $ff
    rst $38                                       ; $467f: $ff
    rst $38                                       ; $4680: $ff
    rst $38                                       ; $4681: $ff
    rst $38                                       ; $4682: $ff
    rst $38                                       ; $4683: $ff
    rst $38                                       ; $4684: $ff
    rst $38                                       ; $4685: $ff
    rst $38                                       ; $4686: $ff
    rst $38                                       ; $4687: $ff
    rst $38                                       ; $4688: $ff
    rst $38                                       ; $4689: $ff
    rst $38                                       ; $468a: $ff
    nop                                           ; $468b: $00
    rst $38                                       ; $468c: $ff
    rst $38                                       ; $468d: $ff
    rst $38                                       ; $468e: $ff
    rst $38                                       ; $468f: $ff
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    rst $38                                       ; $4692: $ff
    rst $38                                       ; $4693: $ff
    rst $38                                       ; $4694: $ff
    rst $38                                       ; $4695: $ff
    rst $38                                       ; $4696: $ff
    rst $38                                       ; $4697: $ff
    rst $38                                       ; $4698: $ff
    rst $38                                       ; $4699: $ff
    rst $38                                       ; $469a: $ff
    rst $38                                       ; $469b: $ff
    nop                                           ; $469c: $00
    rst $38                                       ; $469d: $ff
    rst $38                                       ; $469e: $ff
    rst $38                                       ; $469f: $ff
    rst $38                                       ; $46a0: $ff
    rst $38                                       ; $46a1: $ff
    rst $38                                       ; $46a2: $ff
    rst $38                                       ; $46a3: $ff
    rst $38                                       ; $46a4: $ff
    rst $38                                       ; $46a5: $ff
    rst $38                                       ; $46a6: $ff
    rst $38                                       ; $46a7: $ff
    rst $38                                       ; $46a8: $ff
    rst $38                                       ; $46a9: $ff
    rst $38                                       ; $46aa: $ff
    rst $38                                       ; $46ab: $ff
    rst $38                                       ; $46ac: $ff
    nop                                           ; $46ad: $00
    rst $38                                       ; $46ae: $ff
    rst $38                                       ; $46af: $ff
    rst $38                                       ; $46b0: $ff
    rst $38                                       ; $46b1: $ff
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
    nop                                           ; $46be: $00
    rst $38                                       ; $46bf: $ff
    rst $38                                       ; $46c0: $ff
    rst $38                                       ; $46c1: $ff
    rst $38                                       ; $46c2: $ff
    rst $38                                       ; $46c3: $ff
    rst $38                                       ; $46c4: $ff
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
    nop                                           ; $46cf: $00
    rst $38                                       ; $46d0: $ff
    rst $38                                       ; $46d1: $ff
    rst $38                                       ; $46d2: $ff
    rst $38                                       ; $46d3: $ff
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
    nop                                           ; $46e0: $00
    rst $38                                       ; $46e1: $ff
    rst $38                                       ; $46e2: $ff
    rst $38                                       ; $46e3: $ff
    rst $38                                       ; $46e4: $ff
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
    nop                                           ; $46f1: $00
    rst $38                                       ; $46f2: $ff
    rst $38                                       ; $46f3: $ff
    rst $38                                       ; $46f4: $ff
    rst $38                                       ; $46f5: $ff
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
    nop                                           ; $4702: $00
    rst $38                                       ; $4703: $ff
    rst $38                                       ; $4704: $ff
    rst $38                                       ; $4705: $ff
    rst $38                                       ; $4706: $ff
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
    nop                                           ; $4713: $00
    rst $38                                       ; $4714: $ff
    rst $38                                       ; $4715: $ff
    rst $38                                       ; $4716: $ff
    rst $38                                       ; $4717: $ff
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
    nop                                           ; $4724: $00
    rst $38                                       ; $4725: $ff
    rst $38                                       ; $4726: $ff
    rst $38                                       ; $4727: $ff
    rst $38                                       ; $4728: $ff
    rst $38                                       ; $4729: $ff
    rst $38                                       ; $472a: $ff
    rst $38                                       ; $472b: $ff
    rst $38                                       ; $472c: $ff
    rst $38                                       ; $472d: $ff
    db $fd                                        ; $472e: $fd
    nop                                           ; $472f: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    ld bc, $ff00                                  ; $4732: $01 $00 $ff
    rst $38                                       ; $4735: $ff
    rst $38                                       ; $4736: $ff
    rst $38                                       ; $4737: $ff
    rst $38                                       ; $4738: $ff
    rst $38                                       ; $4739: $ff
    rst $38                                       ; $473a: $ff
    rst $38                                       ; $473b: $ff
    rst $38                                       ; $473c: $ff
    rst $38                                       ; $473d: $ff
    rst $38                                       ; $473e: $ff
    rst $38                                       ; $473f: $ff
    rst $38                                       ; $4740: $ff
    rst $38                                       ; $4741: $ff
    nop                                           ; $4742: $00
    rst $38                                       ; $4743: $ff
    rst $38                                       ; $4744: $ff
    rst $38                                       ; $4745: $ff
    rst $38                                       ; $4746: $ff
    rst $38                                       ; $4747: $ff
    rst $38                                       ; $4748: $ff
    rst $38                                       ; $4749: $ff
    rst $38                                       ; $474a: $ff
    rst $38                                       ; $474b: $ff
    rst $38                                       ; $474c: $ff
    rst $38                                       ; $474d: $ff
    rst $38                                       ; $474e: $ff
    rst $38                                       ; $474f: $ff
    rst $38                                       ; $4750: $ff
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    nop                                           ; $4753: $00
    rst $38                                       ; $4754: $ff
    rst $38                                       ; $4755: $ff
    rst $38                                       ; $4756: $ff
    rst $38                                       ; $4757: $ff
    rst $38                                       ; $4758: $ff
    rst $38                                       ; $4759: $ff
    rst $38                                       ; $475a: $ff
    rst $38                                       ; $475b: $ff
    rst $38                                       ; $475c: $ff
    rst $38                                       ; $475d: $ff
    rst $38                                       ; $475e: $ff
    rst $38                                       ; $475f: $ff
    rst $38                                       ; $4760: $ff
    rst $38                                       ; $4761: $ff
    rst $38                                       ; $4762: $ff
    rst $38                                       ; $4763: $ff
    nop                                           ; $4764: $00
    rst $38                                       ; $4765: $ff
    rst $38                                       ; $4766: $ff
    rst $38                                       ; $4767: $ff
    rst $38                                       ; $4768: $ff
    rst $38                                       ; $4769: $ff
    rst $38                                       ; $476a: $ff
    rst $38                                       ; $476b: $ff
    rst $38                                       ; $476c: $ff
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    rst $38                                       ; $476f: $ff
    rst $38                                       ; $4770: $ff
    rst $38                                       ; $4771: $ff
    rst $38                                       ; $4772: $ff
    rst $38                                       ; $4773: $ff
    ldh [rP1], a                                  ; $4774: $e0 $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    ld bc, $ff00                                  ; $4778: $01 $00 $ff
    rst $38                                       ; $477b: $ff
    rst $38                                       ; $477c: $ff
    rst $38                                       ; $477d: $ff
    rst $38                                       ; $477e: $ff
    rst $38                                       ; $477f: $ff
    rst $38                                       ; $4780: $ff
    rst $38                                       ; $4781: $ff
    rst $38                                       ; $4782: $ff
    rst $38                                       ; $4783: $ff
    rst $38                                       ; $4784: $ff
    rst $38                                       ; $4785: $ff
    rst $38                                       ; $4786: $ff
    rst $38                                       ; $4787: $ff
    nop                                           ; $4788: $00
    rst $38                                       ; $4789: $ff
    rst $38                                       ; $478a: $ff
    rst $38                                       ; $478b: $ff
    rst $38                                       ; $478c: $ff
    rst $38                                       ; $478d: $ff
    rst $38                                       ; $478e: $ff
    rst $38                                       ; $478f: $ff
    rst $38                                       ; $4790: $ff
    rst $38                                       ; $4791: $ff
    rst $38                                       ; $4792: $ff
    rst $38                                       ; $4793: $ff
    rst $38                                       ; $4794: $ff
    rst $38                                       ; $4795: $ff
    rst $38                                       ; $4796: $ff
    rst $38                                       ; $4797: $ff
    rst $38                                       ; $4798: $ff
    nop                                           ; $4799: $00
    rst $38                                       ; $479a: $ff
    rst $38                                       ; $479b: $ff
    rst $38                                       ; $479c: $ff
    rst $38                                       ; $479d: $ff
    rst $38                                       ; $479e: $ff
    rst $38                                       ; $479f: $ff
    rst $38                                       ; $47a0: $ff
    rst $38                                       ; $47a1: $ff
    rst $38                                       ; $47a2: $ff
    rst $38                                       ; $47a3: $ff
    rst $38                                       ; $47a4: $ff
    rst $38                                       ; $47a5: $ff
    rst $38                                       ; $47a6: $ff
    rst $38                                       ; $47a7: $ff
    rst $38                                       ; $47a8: $ff
    rst $38                                       ; $47a9: $ff
    nop                                           ; $47aa: $00
    rst $38                                       ; $47ab: $ff
    rst $38                                       ; $47ac: $ff
    rst $38                                       ; $47ad: $ff
    rst $38                                       ; $47ae: $ff
    rst $38                                       ; $47af: $ff
    rst $38                                       ; $47b0: $ff
    rst $38                                       ; $47b1: $ff
    rst $38                                       ; $47b2: $ff
    rst $38                                       ; $47b3: $ff
    rst $38                                       ; $47b4: $ff
    rst $38                                       ; $47b5: $ff
    rst $38                                       ; $47b6: $ff
    rst $38                                       ; $47b7: $ff
    rst $38                                       ; $47b8: $ff
    rst $38                                       ; $47b9: $ff
    ldh [rP1], a                                  ; $47ba: $e0 $00
    nop                                           ; $47bc: $00
    nop                                           ; $47bd: $00
    cp $01                                        ; $47be: $fe $01
    nop                                           ; $47c0: $00
    rst $38                                       ; $47c1: $ff
    rst $38                                       ; $47c2: $ff
    rst $38                                       ; $47c3: $ff
    rst $38                                       ; $47c4: $ff
    rst $38                                       ; $47c5: $ff
    rst $38                                       ; $47c6: $ff
    rst $38                                       ; $47c7: $ff
    rst $38                                       ; $47c8: $ff
    rst $38                                       ; $47c9: $ff
    rst $38                                       ; $47ca: $ff
    rst $38                                       ; $47cb: $ff
    rst $38                                       ; $47cc: $ff
    rst $38                                       ; $47cd: $ff
    rst $38                                       ; $47ce: $ff
    nop                                           ; $47cf: $00
    rst $38                                       ; $47d0: $ff
    rst $38                                       ; $47d1: $ff
    rst $38                                       ; $47d2: $ff
    rst $38                                       ; $47d3: $ff
    rst $38                                       ; $47d4: $ff
    rst $38                                       ; $47d5: $ff
    rst $38                                       ; $47d6: $ff
    rst $38                                       ; $47d7: $ff
    rst $38                                       ; $47d8: $ff
    rst $38                                       ; $47d9: $ff
    rst $38                                       ; $47da: $ff
    rst $38                                       ; $47db: $ff
    rst $38                                       ; $47dc: $ff
    rst $38                                       ; $47dd: $ff
    rst $38                                       ; $47de: $ff
    rst $38                                       ; $47df: $ff
    nop                                           ; $47e0: $00
    rst $38                                       ; $47e1: $ff
    rst $38                                       ; $47e2: $ff
    rst $38                                       ; $47e3: $ff
    rst $38                                       ; $47e4: $ff
    rst $38                                       ; $47e5: $ff
    rst $38                                       ; $47e6: $ff
    rst $38                                       ; $47e7: $ff
    rst $38                                       ; $47e8: $ff
    rst $38                                       ; $47e9: $ff
    rst $38                                       ; $47ea: $ff
    rst $38                                       ; $47eb: $ff
    rst $38                                       ; $47ec: $ff
    rst $38                                       ; $47ed: $ff
    rst $38                                       ; $47ee: $ff
    rst $38                                       ; $47ef: $ff
    rst $38                                       ; $47f0: $ff
    nop                                           ; $47f1: $00
    rst $38                                       ; $47f2: $ff
    rst $38                                       ; $47f3: $ff
    rst $38                                       ; $47f4: $ff
    rst $38                                       ; $47f5: $ff
    rst $38                                       ; $47f6: $ff
    rst $38                                       ; $47f7: $ff
    rst $38                                       ; $47f8: $ff
    rst $38                                       ; $47f9: $ff
    rst $38                                       ; $47fa: $ff
    rst $38                                       ; $47fb: $ff
    rst $38                                       ; $47fc: $ff
    rst $38                                       ; $47fd: $ff
    rst $38                                       ; $47fe: $ff
    rst $38                                       ; $47ff: $ff
    rst $38                                       ; $4800: $ff
    rst $38                                       ; $4801: $ff
    nop                                           ; $4802: $00
    rst $38                                       ; $4803: $ff
    rst $38                                       ; $4804: $ff
    rst $38                                       ; $4805: $ff
    rst $38                                       ; $4806: $ff
    rst $38                                       ; $4807: $ff
    rst $38                                       ; $4808: $ff
    rst $38                                       ; $4809: $ff
    rst $38                                       ; $480a: $ff
    rst $38                                       ; $480b: $ff
    rst $38                                       ; $480c: $ff
    rst $38                                       ; $480d: $ff
    rst $38                                       ; $480e: $ff
    rst $38                                       ; $480f: $ff
    rst $38                                       ; $4810: $ff
    rst $38                                       ; $4811: $ff
    rst $38                                       ; $4812: $ff
    nop                                           ; $4813: $00
    rst $38                                       ; $4814: $ff
    rst $38                                       ; $4815: $ff
    rst $38                                       ; $4816: $ff
    rst $38                                       ; $4817: $ff
    rst $38                                       ; $4818: $ff
    rst $38                                       ; $4819: $ff
    rst $38                                       ; $481a: $ff
    rst $38                                       ; $481b: $ff
    rst $38                                       ; $481c: $ff
    rst $38                                       ; $481d: $ff
    rst $38                                       ; $481e: $ff
    rst $38                                       ; $481f: $ff
    rst $38                                       ; $4820: $ff
    rst $38                                       ; $4821: $ff
    rst $38                                       ; $4822: $ff
    rst $38                                       ; $4823: $ff
    nop                                           ; $4824: $00
    rst $38                                       ; $4825: $ff
    rst $38                                       ; $4826: $ff
    rst $38                                       ; $4827: $ff
    rst $38                                       ; $4828: $ff
    rst $38                                       ; $4829: $ff
    rst $38                                       ; $482a: $ff
    rst $38                                       ; $482b: $ff
    rst $38                                       ; $482c: $ff
    rst $38                                       ; $482d: $ff
    rst $38                                       ; $482e: $ff
    rst $38                                       ; $482f: $ff
    rst $38                                       ; $4830: $ff
    rst $38                                       ; $4831: $ff
    rst $38                                       ; $4832: $ff
    rst $38                                       ; $4833: $ff
    rst $38                                       ; $4834: $ff
    nop                                           ; $4835: $00
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
    db $e4                                        ; $4841: $e4
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00

    db $00, $00, $00, $00, $3f, $3f, $00, $00, $00, $20, $20, $55, $a0, $7e, $ff, $7f
    db $08, $25, $08, $25, $08, $25, $08, $25, $33, $01, $3f, $02, $ea, $03, $a4, $02
    db $ff, $63, $ef, $03, $ea, $03, $a4, $02, $40, $71, $c0, $7e, $d4, $00, $a4, $02
    db $ff, $7f, $ea, $03, $a4, $02, $20, $11, $bf, $00, $86, $3f, $24, $2e, $20, $11
    db $08, $25, $08, $25, $08, $25, $08, $25, $d5, $00, $ff, $e0, $05, $fb, $e0, $0b
    db $f7, $e1, $00, $02, $eb, $00, $28, $ef, $e0, $90, $eb, $e0, $f5, $00, $c8, $fe
    db $e5, $e0, $80, $00, $ec, $ff, $f8, $ff, $e0, $ff, $fe, $42, $f8, $c8, $f0, $80
    db $e0, $10, $ef, $e0, $00, $c0, $ff, $ff, $e2, $f7, $ff, $bc, $7f, $ff, $e8, $ff
    db $81, $fe, $08, $f0, $f8, $e5, $fb, $20, $c0, $bf, $e2, $00, $7f, $ff, $2f, $ff
    db $ff, $3f, $ff, $1f, $ff, $b7, $7f, $1f, $7f, $ff, $0f, $7f, $4f, $3f, $07, $1f
    db $02, $1f, $ff, $13, $0f, $01, $0f, $0b, $07, $01, $07, $ff, $00, $07, $04, $03
    db $5c, $ff, $00, $ff, $e7, $81, $3c, $10, $d3, $e3, $83, $e0, $20, $c0, $80, $bf
    db $c0, $00, $e0, $90, $e0, $80, $fe, $e0, $00, $fb, $c0, $20, $a0, $e0, $7d, $ff
    db $ef, $ff, $3a, $fa, $da, $e2, $08, $63, $e0, $a4, $f8, $e0, $f8, $f0, $ff, $fc
    db $d0, $fc, $f2, $fc, $e0, $fc, $b0, $f7, $f8, $e4, $f8, $80, $e5, $be, $ff, $e3
    db $ff, $ff, $40, $ff, $00, $e7, $fc, $ff, $f6, $ff, $7f, $fc, $ff, $f8, $fe, $e8
    db $fe, $f8, $f8, $e0, $0b, $f4, $ff, $78, $e0, $80, $a3, $e6, $23, $e1, $f0, $e0
    db $ef, $ea, $e3, $c0, $40, $e0, $ea, $d0, $e1, $cf, $e9, $02, $81, $a0, $ff, $c1
    db $80, $c1, $85, $c3, $a1, $c3, $00, $7f, $83, $05, $83, $40, $81, $41, $80, $c0
    db $e0, $ff, $c0, $a0, $c0, $c0, $e0, $68, $f0, $f1, $ff, $fc, $dc, $ff, $1e, $ff
    db $80, $1e, $12, $7e, $d4, $c2, $48, $00, $01, $78, $58, $ff, $b0, $e9, $ff, $02
    db $01, $00, $03, $00, $00, $40, $40, $7f, $00, $20, $00, $10, $08, $00, $04, $b2
    db $c0, $c0, $a2, $c1, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $f3, $c3, $3c
    db $e3, $c3, $3c, $fd, $e0, $fe, $e2, $f4, $e1, $1b, $e7, $2f, $ff, $dc, $1e, $f1
    db $3c, $e3, $7c, $c3, $7c, $7f, $c3, $e3, $9c, $c3, $bc, $18, $e7, $e2, $e1, $ff
    db $1a, $e5, $12, $ef, $5f, $b8, $7f, $e0, $ff, $f3, $8c, $13, $ef, $1f, $f8, $fc
    db $63, $bf, $fc, $83, $fc, $03, $bc, $43, $c4, $e1, $98, $ff, $e7, $fc, $43, $dc
    db $63, $f8, $27, $68, $ff, $b7, $6c, $93, $fc, $13, $e8, $17, $f8, $ff, $0f, $de
    db $25, $3c, $c7, $3e, $c3, $3f, $ff, $c2, $3e, $c1, $c3, $3d, $c3, $3d, $bb, $f7
    db $d7, $ff, $00, $a0, $e9, $c3, $bc, $c3, $bc, $c9, $7c, $c2, $e0, $be, $e1, $43
    db $f4, $e0, $a0, $e1, $00, $ff, $bf, $dd, $eb, $ff, $00, $7e, $81, $80, $e2, $f4
    db $ff, $0f, $f0, $1c, $e3, $1c, $f3, $1c, $e3, $ff, $0c, $f3, $3f, $d0, $1b, $f4
    db $57, $ff, $5f, $af, $fc, $7e, $f1, $bc, $70, $e0, $fc, $70, $e2, $ff, $fb, $ff
    db $de, $ff, $f5, $ff, $aa, $ff, $b7, $57, $ff, $bf, $67, $a0, $f3, $8c, $f8, $e1
    db $7c, $fd, $e3, $70, $e7, $ef, $ff, $d7, $7f, $ed, $7f, $ff, $f7, $3f, $6b, $bf
    db $76, $9f, $fb, $1f, $ff, $f5, $1f, $fa, $0f, $dd, $27, $3e, $c7, $f3, $3f, $c3
    db $6e, $e0, $70, $e2, $ed, $ff, $d3, $3c, $3b, $7e, $81, $70, $e9, $e3, $9c, $bc
    db $14, $e0, $69, $e0, $eb, $c3, $63, $10, $e0, $57, $a4, $e0, $7d, $ff, $d3, $f9
    db $ef, $4a, $e1, $e4, $c1, $bb, $f4, $5b, $f4, $ac, $ff, $f3, $6c, $f3, $bc, $e3
    db $6c, $f3, $bb, $ff, $f4, $db, $f4, $bd, $c3, $e7, $ff, $ba, $bf, $ff, $55, $ff
    db $ab, $ff, $fe, $58, $a0, $ff, $ef, $ff, $db, $ff, $6f, $8e, $e0, $af, $7f, $b5
    db $cf, $7f, $ef, $7f, $57, $46, $a0, $d0, $c3, $18, $e7, $fe, $f8, $e5, $57, $ff
    db $ac, $ff, $74, $fb, $b8, $6f, $e7, $58, $e7, $fc, $05, $e0, $98, $e7, $40, $e7
    db $df, $ba, $ff, $ec, $f3, $98, $e0, $e0, $ba, $ff, $e9, $6c, $f8, $e0, $c8, $e5
    db $ef, $26, $e0, $6d, $ff, $37, $ff, $ff, $2b, $ff, $16, $ff, $3b, $ff, $15, $ff
    db $ff, $1a, $ef, $35, $cf, $3e, $c7, $1b, $ff, $e7, $1a, $e7, $3d, $c3, $3f, $c3
    db $19, $db, $e7, $d7, $e4, $80, $2c, $d3, $a0, $e7, $98, $e7, $8a, $42, $e1, $d8
    db $a0, $e0, $bc, $de, $c0, $b0, $e1, $40, $e1, $cb, $fe, $78, $e6, $b0, $ff, $54
    db $fb, $a4, $fb, $78, $ff, $f7, $a8, $f7, $64, $fb, $b4, $fb, $d0, $ff, $ff, $c1
    db $ff, $b7, $ff, $5d, $ff, $ea, $54, $3e, $e0, $3a, $81, $ff, $94, $80, $57, $3e
    db $e0, $35, $3a, $e0, $f6, $ae, $c0, $ff, $d7, $21, $83, $ff, $dd, $ff, $77, $5c
    db $9c, $c0, $dc, $e1, $af, $ff, $df, $ce, $e0, $df, $f8, $e6, $14, $ff, $e5, $de
    db $e5, $5f, $ca, $e0, $6f, $c6, $e0, $f8, $e5, $e0, $63, $ca, $f8, $e1, $5f, $96
    db $e0, $5f, $d0, $e6, $c7, $e5, $69, $ff, $ff, $d4, $fc, $81, $f0, $46, $e0, $8b
    db $c0, $7f, $57, $c0, $1d, $80, $af, $80, $fd, $af, $60, $fd, $da, $48, $80, $a0
    db $fc, $41, $f0, $0b, $c0, $fb, $16, $00, $f8, $e1, $0a, $c0, $17, $00, $bd, $f7
    db $00, $6f, $00, $d5, $60, $00, $f8, $fe, $f4, $ff, $fe, $d8, $fc, $f1, $fc, $e2
    db $f8, $d1, $ff, $f8, $63, $f0, $c6, $f0, $8b, $e0, $47, $ff, $e0, $8f, $c0, $1b
    db $c0, $2f, $80, $1f, $ff, $80, $37, $00, $5f, $00, $24, $3c, $42, $bf, $00, $ad
    db $00, $f7, $00, $7d, $d2, $e2, $ff, $f5, $00, $ec, $e1, $bf, $e4, $e0, $2f, $80
    db $bf, $80, $df, $57, $00, $3f, $00, $f5, $3e, $e0, $45, $ff, $ff, $00, $c7, $10
    db $00, $6d, $00, $bb, $00, $ff, $ef, $00, $e7, $f0, $43, $f0, $e5, $f0, $ff, $47
    db $e0, $8a, $e0, $c7, $e0, $a5, $f0, $eb, $c3, $f0, $30, $63, $df, $2e, $60, $ad
    db $ff, $42, $ff, $ff, $00, $c3, $fc, $ff, $fa, $ff, $fc, $de, $8c, $e0, $f8, $fe
    db $ec, $fe, $f6, $e0, $ff, $ff, $ff, $80, $3f, $80, $7f, $c0, $9f, $c0, $4f, $ff
    db $e0, $87, $f0, $d5, $fc, $69, $ff, $3f, $ff, $00, $0f, $c0, $43, $f0, $a0, $fc
    db $f4, $c6, $4a, $e0, $ff, $ff, $42, $e0, $88, $e4, $e8, $e5, $e3, $0f, $ff, $e6
    db $0f, $cb, $1f, $c7, $1f, $8f, $3f, $f7, $9b, $3f, $2f, $fc, $40, $fe, $00, $fe
    db $00, $ff, $fc, $01, $fc, $01, $f8, $03, $f9, $03, $cf, $f2, $07, $f1, $07, $d0
    db $e5, $24, $e1, $d3, $00, $5f, $42, $7e, $fe, $00, $ff, $e2, $e0, $fe, $de, $e0
    db $cf, $fc, $01, $ff, $01, $f2, $e0, $0a, $e2, $3c, $00, $f7, $00, $c7, $45, $84
    db $c0, $f5, $ff, $e7, $0f, $ef, $e2, $0f, $f7, $0f, $c6, $e1, $f3, $07, $e5, $bf
    db $0f, $e3, $0f, $18, $c3, $42, $56, $e0, $f7, $ea, $76, $c6, $3f, $7e, $c0, $3f
    db $80, $a0, $9f, $7f, $37, $fd, $7f, $f6, $e0, $ff, $08, $00, $55, $00, $be, $74
    db $f0, $c0, $68, $e5, $5f, $fc, $c0, $7f, $00, $af, $fc, $e0, $9d, $3f, $f4, $e2
    db $11, $80, $2a, $d4, $c0, $f0, $e5, $bf, $f0, $fa, $e4, $6a, $e9, $f4, $eb, $00
    db $83, $1b, $e4, $15, $ee, $ff, $2d, $d0, $05, $fa, $34, $c0, $57, $aa, $df, $a4
    db $0a, $4b, $80, $42, $e0, $20, $1d, $02, $ff, $bc, $03, $98, $67, $17, $aa, $e4
    db $0a, $ff, $8b, $20, $22, $00, $dd, $00, $bd, $42, $fe, $08, $a1, $16, $a9, $e8
    db $03, $85, $22, $2a, $ff, $07, $db, $00, $bc, $43, $3f, $c0, $19, $fb, $e6, $18
    db $60, $a0, $3c, $c3, $b8, $e7, $08, $ff, $f7, $cc, $fb, $90, $6f, $2a, $ff, $1f
    db $ff, $e0, $d0, $01, $5a, $a1, $48, $07, $f8, $f7, $07, $1c, $03, $c0, $e1, $b0
    db $0f, $cc, $3f, $ff, $79, $86, $12, $ef, $1b, $e0, $3c, $c3, $fe, $d0, $e1, $3d
    db $c0, $4f, $a0, $30, $c9, $52, $ff, $a1, $6d, $c2, $34, $c9, $48, $b3, $1a, $ff
    db $e5, $15, $bf, $ce, $3f, $56, $bf, $6d, $ff, $bf, $9e, $7f, $6a, $bf, $1d, $ff
    db $4e, $ff, $bf, $35, $c0, $4e, $a1, $32, $c9, $57, $ff, $a2, $7f, $c5, $32, $cf
    db $55, $bf, $2b, $de, $90, $82, $bc, $43, $58, $a7, $00, $a0, $e3, $c4, $ff, $f3
    db $b4, $eb, $9a, $7f, $ef, $3f, $3a, $ff, $df, $4d, $ff, $b4, $ff, $7a, $ff, $a8
    db $fb, $ff, $74, $be, $80, $23, $df, $05, $ff, $1a, $fe, $70, $86, $d4, $ff, $bb
    db $fe, $74, $ff, $ae, $fa, $9a, $20, $ae, $3a, $80, $03, $ff, $52, $fc, $aa, $af
    db $fd, $77, $fb, $a2, $b0, $60, $0d, $ac, $60, $0a, $ff, $ff, $67, $88, $cd, $bb
    db $32, $ef, $eb, $fa, $de, $e0, $fe, $1c, $80, $ba, $ff, $27, $c8, $6d, $ff, $9b
    db $22, $ff, $7b, $ff, $b6, $ff, $5e, $fb, $ff, $bb, $84, $60, $0e, $bf, $dd, $3f
    db $6e, $bb, $bf, $57, $70, $e0, $6d, $bf, $1e, $70, $e0, $52, $ff, $fd, $ee, $f9
    db $49, $f6, $a7, $f8, $47, $ff, $f0, $b4, $c9, $4a, $b1, $1b, $e4, $ff, $ff, $1f
    db $4a, $bf, $69, $97, $12, $ef, $19, $f7, $e2, $38, $c7, $00, $e1, $2b, $d0, $aa
    db $41, $bf, $fe, $01, $a8, $07, $78, $87, $10, $e3, $a1, $ff, $1e, $8c, $7a, $57
    db $a8, $38, $c2, $0d, $f7, $f0, $3d, $c2, $d8, $61, $2f, $90, $f9, $00, $ff, $8a
    db $21, $28, $07, $d8, $07, $bc, $43, $fc, $c8, $61, $39, $a3, $02, $fd, $01, $fe
    db $0d, $f0, $ff, $02, $fd, $2a, $d0, $2b, $d6, $f5, $0a, $ff, $5f, $80, $a9, $02
    db $7f, $80, $10, $0f, $ff, $e0, $1f, $80, $7f, $57, $aa, $f5, $0a, $bf, $9f, $20
    db $b9, $02, $67, $98, $0f, $a3, $4a, $ff, $b5, $f4, $0b, $9d, $22, $ba, $07, $7b
    db $5f, $80, $0c, $f3, $07, $f8, $bf, $a1, $80, $9e, $00, $ed, $a0, $9a, $00, $68
    db $ff, $90, $c1, $17, $e8, $d1, $e7, $00, $2e, $d1, $80, $e1, $c0, $e3, $b0, $0f
    db $c6, $fc, $90, $c4, $d0, $e3, $3d, $c0, $5f, $a0, $34, $c9, $d7, $5a, $a1, $7d
    db $90, $c0, $4c, $90, $c0, $55, $bf, $fb, $8e, $7f, $90, $ca, $c8, $5a, $a1, $3c
    db $c3, $7f, $53, $ae, $77, $cd, $42, $bf, $15, $6a, $60, $fe, $6b, $81, $c0, $3f
    db $40, $bf, $40, $ff, $b0, $bf, $ef, $cc, $f3, $a4, $fb, $15, $bc, $c0, $05, $ab
    db $ff, $02, $29, $a6, $53, $b0, $c0, $75, $b0, $c8, $77, $ab, $88, $cc, $b0, $ca
    db $37, $b0, $cc, $4e, $b0, $ce, $ae, $db, $f9, $79, $b0, $c8, $bf, $5f, $b0, $c3
    db $1d, $e2, $fb, $08, $f7, $20, $e1, $2d, $d0, $9a, $61, $7e, $bb, $81, $e8, $30
    db $e6, $61, $1e, $95, $b0, $c0, $39, $f7, $c2, $0f, $f0, $ff, $63, $57, $a8, $fb
    db $00, $bf, $9e, $21, $a8, $07, $70, $8f, $ef, $63, $0c, $ff, $f7, $d9, $6f, $08
    db $ff, $63, $bd, $d6, $ff, $6b, $6a, $df, $30, $df, $53, $fd, $00, $ff, $ff, $5d
    db $e7, $08, $ff, $40, $bf, $6c, $9b, $b7, $48, $dc, $c0, $40, $ff, $44, $05, $3c
    db $05, $55, $fb, $00, $ba, $be, $80, $ab, $00, $5d, $00, $ea, $fa, $b6, $80, $ae
    db $b2, $80, $8a, $00, $54, $00, $aa, $fe, $f0, $e0, $aa, $00, $15, $00, $a8, $00
    db $51, $ff, $00, $08, $00, $22, $00, $94, $00, $29, $af, $00, $44, $00, $10, $e4
    db $e0, $00, $93, $00, $01, $ce, $b4, $00, $20, $00, $80, $ae, $00, $bd, $e0, $18
    db $3c, $ff, $7e, $7e, $ff, $70, $ff, $78, $fc, $3c, $ff, $fe, $80, $7c, $64, $00
    db $00, $08, $1c, $ff, $3e, $36, $7f, $a6, $7f, $84, $6f, $40, $f3, $0e, $08, $9e
    db $e1, $8c, $a0, $07, $fe, $1b, $fc, $ff, $1e, $f1, $28, $f7, $7a, $e5, $70, $cf
    db $ff, $3c, $ff, $fb, $e7, $fd, $42, $e7, $18, $df, $4a, $b5, $00, $ff, $54, $9e
    db $a0, $8e, $f3, $ff, $9a, $e7, $4d, $f3, $97, $e9, $c7, $f9, $7f, $8f, $f3, $5e
    db $e7, $8e, $f3, $f5, $3a, $a0, $ff, $e0, $ff, $8a, $f5, $57, $e8, $8d, $f2, $ff
    db $19, $e7, $8f, $f3, $df, $99, $9f, $4d, $ff, $27, $17, $a3, $f3, $db, $e1, $ee
    db $f1, $ff, $b4, $fb, $41, $ff, $df, $9f, $9c, $4f, $ff, $26, $17, $a2, $f3, $da
    db $e1, $ee, $71, $ff, $f4, $3b, $f9, $ff, $e7, $18, $c3, $24, $ff, $e7, $24, $ff
    db $3c, $db, $3c, $e7, $18, $fe, $c0, $41, $67, $9a, $c4, $8a, $0b, $c0, $42, $ff
    db $a0, $10, $c0, $e9, $80, $60, $91, $8b, $ff, $60, $16, $a9, $e1, $0b, $8a, $27
    db $27, $3f, $0f, $ad, $1f, $d6, $3f, $7d, $a6, $80, $50, $27, $ff, $24, $db, $0c
    db $f7, $36, $cf, $18, $e7, $ff, $d6, $0f, $59, $a6, $42, $0f, $fb, $00, $bf, $1c
    db $03, $bf, $00, $99, $66, $68, $21, $3d, $cf, $c2, $18, $e7, $19, $60, $24, $40
    db $81, $56, $a9, $e7, $22, $ff, $75, $c0, $84, $b0, $a3, $11, $ef, $1f, $7f, $e0
    db $3d, $c7, $33, $cf, $2d, $d7, $10, $85, $ff, $28, $d7, $44, $fb, $b4, $ff, $d0
    db $ff, $ff, $fb, $1c, $ed, $26, $8b, $46, $db, $66, $ff, $c6, $4f, $0b, $87, $9b
    db $87, $b3, $cf, $ff, $af, $9f, $e6, $5f, $bf, $7e, $eb, $3c, $ef, $ff, $2e, $ef
    db $2f, $51, $60, $1e, $1c, $ff, $ff, $2e, $e7, $4a, $c7, $5a, $e7, $47, $cf, $fd
    db $8b, $e0, $e4, $66, $df, $7e, $ff, $28, $ff, $cf, $3e, $ef, $2f, $ef, $e1, $e0
    db $40, $c0, $d1, $6f, $ff, $18, $ff, $67, $a5, $a4, $67, $7e, $ff, $af, $38, $df
    db $43, $fd, $d8, $02, $db, $1d, $e0, $e7, $19, $7e, $1b, $e0, $d0, $83, $18, $ff
    db $f0, $e3, $0f, $e1, $cc, $21, $d7, $e7, $00, $db, $fe, $e0, $81, $f8, $e0, $ff
    db $00, $ff, $ab, $ff, $05, $fe, $ab, $fc, $0d, $fa, $ff, $b2, $fd, $55, $ea, $a8
    db $d7, $f4, $8b, $ff, $b0, $0f, $de, $7f, $29, $fe, $55, $ff, $fd, $be, $3e, $e0
    db $aa, $ff, $c0, $ff, $98, $67, $d2, $50, $e1, $58, $50, $06, $10, $6b, $2b, $50
    db $68, $3c, $03, $ef, $84, $73, $b4, $eb, $58, $03, $19, $e7, $17, $ff, $ee, $3f
    db $c8, $2f, $d8, $1f, $f0, $fd, $fa, $ba, $00, $da, $2e, $00, $af, $fe, $df, $f8
    db $6f, $d7, $f8, $df, $f0, $d3, $40, $3c, $36, $61, $3f, $c3, $bf, $3e, $c7, $dd
    db $2f, $da, $2f, $f0, $e5, $3d, $7f, $c3, $3c, $c7, $d0, $2f, $d8, $2f, $a3, $20
    db $ff, $f9, $fc, $fb, $fe, $e1, $f4, $cb, $e0, $fd, $df, $fe, $e1, $bf, $7f, $5f
    db $bf, $1f, $ff, $ff, $37, $cf, $0b, $f7, $63, $ff, $d3, $9f, $ff, $93, $9f, $f8
    db $87, $d0, $2f, $80, $7f, $ff, $8c, $7f, $9a, $73, $52, $b3, $8c, $ff, $7f, $f0
    db $ef, $6d, $f3, $02, $fd, $c0, $7d, $20, $ff, $02, $ff, $16, $ff, $01, $ff, $17
    db $ff, $ff, $e8, $f7, $f1, $ff, $fe, $fe, $ff, $fe, $ff, $f7, $fe, $ad, $fc, $46
    db $fe, $eb, $ff, $f7, $37, $ff, $8f, $3d, $20, $7f, $7f, $6f, $7f, $df, $3e, $3f
    db $7b, $7f, $ff, $4e, $20, $fa, $fd, $ff, $fc, $fb, $e1, $ff, $d0, $ef, $e5, $df
    db $7f, $ca, $ff, $e7, $df, $3f, $ff, $1f, $28, $00, $7f, $57, $ff, $eb, $ff, $7f
    db $ff, $db, $13, $20, $ff, $8b, $ff, $45, $bf, $97, $7f, $2b, $ff, $5f, $9f, $7f
    db $2d, $ff, $9f, $ea, $e0, $75, $10, $20, $77, $ff, $ff, $7e, $f9, $00, $fe, $ff
    db $f9, $f3, $00, $e7, $e5, $ff, $f3, $a0, $e1, $9c, $e0, $ee, $fe, $5e, $8b, $fe
    db $fb, $96, $20, $cf, $a0, $e2, $fc, $e3, $31, $08, $fe, $fe, $e3, $00, $f8, $ff
    db $f0, $fb, $e7, $f5, $cb, $bf, $f2, $8d, $f1, $0e, $f0, $0f, $fe, $e1, $e8, $ed
    db $17, $b0, $03, $7f, $ff, $28, $e1, $2f, $df, $17, $f1, $ef, $cc, $ea, $9b, $e1
    db $8f, $03, $e0, $fc, $c3, $fc, $ff, $83, $fc, $03, $fc, $03, $ff, $e0, $ef, $ff
    db $d0, $df, $a0, $2e, $d1, $96, $6b, $4c, $ff, $b7, $28, $df, $15, $ef, $c0, $3f
    db $84, $bf, $7f, $0a, $ff, $14, $ff, $2a, $a2, $a0, $aa, $be, $9e, $a0, $0b, $f7
    db $03, $ff, $fb, $fe, $e0, $ff, $f8, $fc, $e2, $4f, $c0, $7b, $ea, $f7, $0f, $fe
    db $fd, $fd, $3f, $fa, $fa, $f5, $f0, $ef, $c0, $08, $60, $ce, $e1, $ff, $fc, $03
    db $54, $ab, $ac, $57, $1a, $ef, $f7, $35, $df, $2a, $0e, $e0, $ff, $ff, $0a, $f7
    db $57, $05, $fb, $02, $0a, $80, $7e, $80, $60, $7f, $7c, $62, $ed, $57, $54, $c0
    db $de, $fd, $45, $e0, $ff, $ea, $ff, $ff, $d5, $ff, $de, $a1, $aa, $55, $56, $ab
    db $5f, $0d, $f7, $1a, $ef, $15, $d8, $c0, $7f, $90, $e0, $ea, $d0, $e3, $be, $ec
    db $c0, $bf, $51, $e1, $fe, $ff, $f8, $ff, $f9, $e0, $e7, $80, $99, $00, $e6, $00
    db $ff, $98, $00, $e1, $00, $ff, $7f, $9f, $1f, $ff, $87, $07, $81, $01, $80, $00
    db $60, $00, $ff, $18, $00, $c6, $00, $87, $00, $1e, $00, $ff, $7c, $00, $ec, $80
    db $c4, $80, $c5, $80, $df, $fc, $80, $d4, $80, $f1, $f2, $e0, $3f, $01, $f7, $37
    db $01, $23, $fe, $e0, $3f, $01, $2b, $01, $00, $00, $00, $3f, $46, $46, $46, $c3
    db $c4, $c5, $fa, $ff, $f4, $f5, $3f, $cb, $c6, $c7, $c8, $c9, $ca, $fa, $ff, $f4
    db $f5, $3f, $d1, $cc, $cd, $ce, $cf, $d0, $fa, $ff, $f4, $f5, $00, $5b, $ff, $fa
    db $fb, $5b, $ff, $fa, $fb, $5b, $ff, $fa, $fb, $5b, $ff, $80, $df, $00, $55, $ff
    db $80, $df, $fa, $ff, $80, $df, $fa, $ff, $80, $df, $fa, $ff, $80, $df, $0c, $fa
    db $ff, $80, $da, $bd, $be, $46, $e0, $43, $e0, $f8, $e3, $80, $df, $3e, $5b, $ed
    db $bf, $c0, $46, $b7, $b8, $c6, $e0, $f8, $e0, $f9, $46, $80, $df, $5b, $ef, $c1
    db $c2, $46, $b9, $ba, $1e, $bd, $e0, $c1, $c2, $bd, $be, $80, $df, $98, $c8, $47
    db $e3, $06, $84, $e1, $bb, $bc, $bd, $e1, $7e, $e1, $33, $e1, $80, $df, $98, $c1
    db $32, $4f, $e3, $46, $c7, $e2, $08, $e0, $bb, $bc, $7e, $e1, $3b, $e0, $ec, $80
    db $df, $36, $a5, $c1, $c2, $84, $e4, $9a, $9c, $98, $c1, $9a, $b7, $e2, $3b, $e1
    db $80, $df, $d5, $a7, $84, $e3, $9a, $97, $0f, $46, $46, $97, $9a, $3b, $e5, $76
    db $c6, $80, $df, $84, $e2, $1b, $98, $98, $c1, $e0, $46, $a8, $bf, $e0, $f8, $c2
    db $75, $c1, $58, $f8, $c3, $80, $df, $84, $e2, $a8, $a8, $01, $c1, $a9, $bf, $e3
    db $c4, $f1, $c1, $f8, $c4, $46, $00, $bc, $c9, $a2, $c1, $e0, $a9, $a9, $ff, $46
    db $46, $79, $7a, $7d, $a9, $46, $97, $1b, $98, $98, $f8, $c0, $bb, $bc, $33, $c6
    db $b1, $b1, $c9, $aa, $ef, $46, $46, $99, $a8, $c2, $e0, $46, $79, $7e, $07, $46
    db $7f, $7d, $7b, $a3, $f8, $c7, $b1, $b3, $c9, $a9, $8a, $a0, $f3, $9b, $a9, $42
    db $e0, $c1, $e0, $46, $46, $8c, $7b, $06, $ff, $e0, $7c, $7d, $b7, $c1, $33, $c6
    db $3d, $f0, $1e, $a5, $0b, $a1, $16, $8a, $a0, $99, $46, $42, $e0, $80, $00, $a3
    db $fa, $81, $79, $e0, $80, $f8, $c3, $b1, $a1, $e7, $80, $b1, $ae, $c3, $a5, $13
    db $a1, $8a, $a0, $99, $1f, $46, $a8, $46, $79, $8b, $c0, $e7, $bf, $e2, $f2, $a1
    db $40, $6e, $a0, $ef, $81, $b1, $ae, $f9, $45, $62, $e1, $05, $c2, $a9, $81, $e2
    db $37, $83, $87, $86, $ff, $e0, $87, $83, $7e, $e2, $f2, $a2, $30, $ef, $82, $9d
    db $a0, $80, $77, $48, $80, $b7, $b8, $c4, $a0, $41, $e1, $ff, $88, $84, $45, $48
    db $53, $45, $84, $6f, $0f, $83, $46, $83, $6d, $f2, $a4, $28, $a3, $00, $b8, $48
    db $80, $fc, $fe, $c2, $01, $e1, $81, $45, $48, $60, $54, $44, $bf, $46, $84, $85
    db $86, $85, $84, $f2, $a2, $99, $46, $ac, $80, $bd, $be, $00, $ba, $48, $80, $88
    db $80, $9b, $c1, $c1, $ff, $83, $6d, $44, $54, $54, $2d, $2c, $b4, $86, $b7, $c6
    db $a9, $99, $ef, $62, $80, $db, $ca, $61, $04, $a0, $82, $ff, $83, $83, $6f, $84
    db $46, $45, $b4, $b5, $7f, $20, $32, $43, $45, $46, $46, $45, $fc, $e0, $60, $e7
    db $a0, $00, $e3, $80, $da, $ca, $60, $c5, $81, $84, $85, $4c, $e2, $ff, $32, $20
    db $20, $24, $3b, $36, $45, $46, $cb, $4a, $47, $bf, $e1, $9b, $28, $83, $80, $da
    db $bb, $bc, $f8, $86, $81, $03, $61, $fc, $81, $b4, $31, $2b, $3c, $35, $3f, $35
    db $38, $37, $55, $61, $5c, $80, $e2, $00, $e1, $c4, $80, $d9, $c9, $41, $99, $c4
    db $82, $c2, $80, $fc, $80, $51, $5f, $37, $54, $3a, $35, $ff, $e0, $4a, $56, $3f
    db $e1, $00, $e3, $70, $00, $bd, $41, $a0, $be, $e4, $be, $80, $43, $5b, $39, $c0
    db $e0, $33, $3c, $4f, $c0, $e2, $31, $81, $c1, $c2, $00, $bd, $c1, $a0, $7c, $c0
    db $81, $be, $82, $8c, $7c, $7d, $45, $36, $7f, $e0, $19, $55, $80, $e2, $af, $61
    db $b7, $b8, $00, $56, $0c, $42, $c0, $c4, $b4, $7f, $83, $03, $a2, $44, $fe, $c0
    db $39, $43, $2b, $e3, $99, $80, $fc, $85, $e6, $23, $80, $0b, $96, $42, $cd, $41
    db $be, $c3, $be, $84, $81, $8d, $45, $fe, $c0, $3a, $45, $6c, $81, $7e, $c1, $ad
    db $41, $bf, $01, $c0, $e4, $20, $ab, $48, $0c, $47, $3e, $c8, $fd, $a0, $7d, $21
    db $45, $a0, $e6, $fe, $c0, $3c, $44, $ec, $62, $37, $82, $b9, $ba, $c1, $81, $c2
    db $e4, $20, $ab, $48, $9e, $07, $d1, $21, $7e, $e5, $07, $a1, $46, $1e, $ba, $a2
    db $37, $38, $35, $42, $ed, $c3, $ad, $44, $27, $42, $c0, $3d, $e7, $00, $4d, $bc
    db $a1, $be, $40, $07, $a0, $06, $a3, $46, $45, $01, $3f, $80, $a2, $7e, $e5, $de
    db $25, $e8, $25, $00, $4b, $fc, $c1, $c1, $01, $04, $b8, $a5, $fa, $ec, $97, $ef
    db $40, $f4, $62, $e8, $27, $9e, $0b, $cd, $01, $00, $de, $c2, $79, $40, $cc, $e6
    db $ff, $e0, $b1, $e9, $f8, $c3, $7a, $c5, $00, $4b, $00, $cd, $01, $de, $c2, $f7
    db $40, $4c, $e7, $6a, $c5, $24, $a4, $f8, $c4, $25, $23, $38, $00, $4d, $38, $64
    db $f7, $a4, $97, $98, $9a, $35, $00, $e8, $42, $02, $f5, $c1, $41, $75, $81, $f4
    db $61, $94, $02, $25, $22, $80, $6b, $82, $e1, $e0, $36, $84, $ce, $e2, $0a, $80
    db $35, $00, $a8, $84, $45, $36, $a0, $06, $71, $80, $46, $a8, $f4, $60, $f8, $a1
    db $80, $71, $00, $e3, $76, $43, $f1, $8f, $4a, $82, $55, $e3, $a8, $81, $45, $36
    db $62, $a1, $05, $66, $30, $80, $a9, $34, $62, $f4, $85, $80, $6b, $1c, $41, $36
    db $83, $3f, $46, $99, $8e, $46, $46, $8f, $ca, $61, $a8, $61, $5c, $f2, $c0, $c1
    db $e0, $67, $9d, $68, $bf, $e0, $97, $2d, $e0, $a0, $72, $41, $80, $11, $9e, $03
    db $78, $63, $80, $e0, $8e, $0c, $a1, $bd, $ef, $be, $b9, $ba, $99, $c1, $e2, $35
    db $35, $6c, $07, $af, $b0, $42, $f8, $83, $80, $12, $7a, $04, $78, $62, $41, $e1
    db $fe, $c0, $e0, $bb, $bc, $bf, $c0, $bb, $bc, $99, $ff, $a8, $36, $b1, $b2, $9d
    db $35, $6c, $6f, $07, $6e, $36, $45, $b6, $41, $37, $27, $b0, $0d, $7a, $01, $42
    db $e4, $fc, $8f, $a4, $48, $21, $99, $a9, $36, $6e, $6f, $6c, $00, $c1, $e2, $ec
    db $c1, $37, $28, $b0, $6d, $9a, $03, $c0, $e3, $0d, $82, $88, $40, $02, $ea, $21
    db $45, $bf, $e0, $c1, $e2, $b6, $42, $38, $a3, $80, $6b, $7a, $67, $00, $b8, $01
    db $82, $c1, $42, $c2, $e7, $00, $a8, $42, $bf, $e0, $c1, $e2, $b6, $23, $00, $d1
    db $00, $80, $6d, $7a, $65, $d0, $c1, $11, $62, $82, $c0, $01, $e2, $82, $02, $00
    db $7e, $e1, $c1, $e3, $82, $c2, $33, $00, $80, $d0, $43, $e2, $d0, $c1, $02, $c2
    db $c1, $8e, $16, $e2, $af, $a2, $6a, $83, $f6, $81, $38, $24, $c1, $c2, $00, $80
    db $d1, $7a, $62, $b6, $02, $02, $c1, $42, $c0, $01, $e2, $7e, $e4, $a0, $23, $00
    db $04, $c1, $43, $e6, $00, $ad, $7a, $64, $02, $a1, $c2, $a3, $01, $e2, $65, $02
    db $00, $04, $61, $fc, $e5, $43, $e6, $80, $d0, $7a, $41, $42, $81, $82, $a3, $01
    db $e2, $c0, $4f, $22, $c2, $01, $fc, $e5, $43, $e6, $80, $d0, $04, $a3, $a8, $a9
    db $80, $40, $e1, $0c, $49, $e4, $65, $3d, $2d, $30, $4d, $7a, $41, $d1, $a0, $8e
    db $00, $42, $a1, $bf, $e1, $0c, $45, $e8, $83, $e0, $83, $80, $11, $c3, $a5, $00
    db $e2, $1b, $99, $8e, $81, $a1, $8f, $8e, $00, $a2, $d5, $a6, $fa, $f2, $44, $c3
    db $ad, $00, $e2, $9b, $81, $e1, $7f, $e1, $ca, $04, $46, $dc, $8e, $08, $80, $d6
    db $04, $83, $44, $81, $8f, $7f, $e0, $ca, $04, $49, $2f, $00, $b8, $00, $04, $84
    db $3d, $e1, $be, $a0, $92, $cb, $80, $0f, $00, $00

    nop                                           ; $582f: $00

    db $3f, $0d, $0d, $0d, $0e, $0e, $0e, $fa, $ff, $f4, $f7, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $f9, $f8, $5b, $ff, $f4, $f8, $a1, $ff, $ff, $ff, $00, $ff, $ff, $43
    db $ff, $fa, $ff, $80, $df, $ff, $ff, $ff, $ff, $ff, $ff, $3d, $ff, $00, $fa, $ff
    db $80, $df, $ff, $ff, $ff, $ff, $ff, $ff, $6d, $f4, $46, $e0, $43, $e2, $00, $fa
    db $e3, $80, $df, $ab, $ee, $03, $e4, $60, $df, $c0, $f7, $da, $ff, $80, $d0, $00
    db $49, $e5, $3a, $e4, $f9, $e6, $80, $df, $ca, $e4, $09, $e6, $80, $e4, $79, $ff
    db $0c, $c0, $ea, $ba, $e6, $4d, $2d, $7b, $e4, $ca, $ff, $9e, $c9, $85, $c4, $07
    db $6d, $0b, $0b, $bf, $e0, $75, $c7, $6e, $c7, $80, $db, $45, $c2, $0b, $4d, $4d
    db $c1, $e0, $0b, $7e, $e2, $f8, $cb, $73, $ff, $84, $e2, $0b, $0d, $0d, $c1, $e0
    db $0b, $3d, $e3, $f8, $c9, $c0, $f6, $c9, $aa, $f8, $c1, $e0, $c0, $e0, $bf, $a1
    db $0b, $4d, $4d, $4d, $2d, $03, $4d, $2d, $ba, $c8, $b1, $b1, $81, $ed, $82, $e2
    db $7d, $e0, $7a, $e3, $00, $f8, $c9, $b1, $bf, $47, $a3, $c1, $e2, $7d, $e3, $7a
    db $e2, $f8, $c3, $5e, $c7, $04, $43, $93, $00, $c5, $0b, $42, $e1, $85, $e3, $f9
    db $c3, $bf, $e3, $b1, $b8, $00, $0e, $a7, $c0, $e4, $45, $e5, $bf, $e7, $33, $c3
    db $bc, $da, $8b, $84, $c8, $a0, $80, $81, $e2, $84, $c3, $f3, $e0, $f7, $c3, $b1
    db $a3, $3c, $d4, $c3, $a8, $0e, $f7, $0e, $4d, $2d, $41, $e2, $0d, $2d, $2b, $0a
    db $21, $6a, $79, $c1, $b6, $e0, $f2, $a4, $e4, $e0, $4d, $00, $ba, $05, $84, $de
    db $c0, $e3, $2b, $0a, $0a, $2a, $38, $c2, $2d, $2d, $d0, $f2, $a2, $71, $a1, $4b
    db $9f, $be, $c5, $2d, $c0, $e0, $2a, $2b, $83, $2b, $2b, $b8, $c7, $7a, $c7, $80
    db $db, $04, $a0, $8c, $e1, $2d, $03, $0b, $6b, $fe, $e0, $c0, $e2, $bb, $e3, $80
    db $e3, $80, $df, $c5, $80, $04, $4c, $e4, $fb, $80, $4b, $be, $e1, $38, $e1, $c0
    db $e3, $d0, $38, $ca, $65, $bc, $c5, $81, $7f, $a3, $0b, $4b, $4b, $6b, $82, $e1
    db $2b, $c7, $2a, $0a, $0a, $80, $e9, $00, $bc, $c0, $e7, $0a, $0a, $09, $6a, $bf
    db $e1, $f8, $e0, $4b, $2f, $c4, $74, $71, $00, $b2, $41, $a3, $1b, $4b, $0a, $7f
    db $e2, $0a, $4a, $f8, $84, $3f, $9f, $02, $c0, $2c, $c8, $84, $be, $82, $0d, $6b
    db $86, $e1, $2a, $80, $e2, $af, $63, $40, $43, $9b, $4d, $20, $c1, $a0, $00, $e5
    db $fc, $61, $3f, $c2, $4b, $75, $83, $40, $3c, $a6, $37, $ec, $0c, $47, $7e, $e3
    db $c2, $62, $c2, $84, $6b, $fe, $c2, $00, $ae, $63, $be, $a7, $3a, $b3, $48, $44
    db $7e, $e2, $ce, $e5, $fa, $a0, $fb, $a0, $80, $6e, $63, $fe, $c7, $0a, $6d, $b6
    db $0b, $3d, $e1, $7b, $62, $ba, $a2, $4b, $00, $83, $c0, $b5, $6a, $5a, $48, $00
    db $51, $fc, $c1, $87, $81, $06, $a5, $78, $a0, $00, $c1, $c2, $7c, $c5, $9e, $27
    db $00, $53, $6f, $23, $b9, $c4, $fb, $ed, $ef, $41, $00, $78, $cc, $00, $4f, $2d
    db $22, $f8, $61, $f7, $a6, $f7, $60, $bb, $e9, $a5, $23, $18, $ef, $51, $7e, $e8
    db $76, $a6, $6d, $0d, $7d, $40, $70, $e9, $f4, $63, $30, $f4, $92, $c2, $07, $f7
    db $a4, $75, $20, $0e, $0e, $3d, $40, $ec, $22, $00, $30, $81, $2e, $80, $e2, $c3
    db $93, $eb, $80, $67, $b6, $07, $4a, $83, $65, $00, $00, $c0, $e1, $6d, $21, $f2
    db $60, $ef, $61, $b4, $65, $80, $75, $7e, $e6, $c0, $e6, $c4, $ea, $23, $f3, $64
    db $2b, $5d, $21, $80, $79, $36, $06, $0b, $0b, $05, $6d, $bb, $01, $2d, $40, $e2
    db $74, $62, $35, $60, $b2, $a0, $2d, $e0, $20, $b4, $27, $aa, $11, $78, $63, $39
    db $21, $0a, $65, $0d, $75, $62, $2f, $63, $80, $b6, $67, $2d, $75, $78, $62, $7a
    db $43, $06, $26, $2c, $41, $ef, $40, $2b, $03, $6b, $4b, $27, $04, $b7, $5b, $7b
    db $04, $b2, $01, $e8, $03, $bc, $61, $02, $c1, $e2, $2b, $71, $24, $bd, $b4, $ba
    db $05, $b9, $02, $d7, $c1, $3f, $40, $00, $ea, $21, $f5, $61, $82, $e1, $f6, $46
    db $80, $10, $42, $c9, $7b, $24, $64, $25, $00, $bf, $e2, $c1, $e2, $ab, $e3, $3d
    db $fd, $c0, $61, $82, $c0, $4b, $27, $7e, $e1, $00, $c1, $e3, $14, $c7, $43, $f3
    db $be, $84, $cc, $24, $7e, $e8, $ff, $e2, $2d, $e2, $00, $f5, $44, $30, $50, $22
    db $84, $40, $e2, $4c, $22, $55, $a7, $48, $89, $78, $1e, $02, $02, $c1, $2d, $8c
    db $28, $66, $aa, $49, $4f, $30, $4b, $c3, $a1, $82, $a5, $00, $18, $af, $4a, $73
    db $82, $cc, $40, $e2, $0c, $49, $7e, $e9, $76, $1e, $00, $e4, $00, $16, $83, $c0
    db $fb, $c3, $ad, $7a, $28, $98, $60, $d4, $a6, $d6, $94, $80, $d7, $20, $c0, $23
    db $16, $88, $ff, $ff, $7e, $68, $44, $81, $4d, $00, $40, $96, $6c, $20, $cc, $f8
    db $80, $cb, $02, $e2, $80, $88, $43, $f6, $0d, $00, $00

    nop                                           ; $5b6b: $00

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fb, $fa
    db $07, $0f, $0f, $0f, $e1, $fc, $df, $f9, $c2, $e1, $dd, $f8, $a3, $e2, $00, $bd
    db $e2, $9b, $f3, $84, $e6, $9a, $f4, $64, $e7, $79, $f3, $44, $e9, $e0, $ff, $00
    db $17, $ee, $04, $eb, $e0, $f1, $df, $c1, $e0, $f9, $c0, $eb, $bf, $f3, $98, $c4
    db $00, $95, $d1, $e0, $eb, $fa, $d0, $62, $cc, $df, $f2, $40, $c2, $3a, $c5, $3b
    db $f3, $00, $3a, $c7, $e0, $f5, $75, $c5, $5d, $f0, $e0, $fd, $38, $c3, $e0, $f9
    db $fc, $e5, $00, $e0, $f9, $d9, $a4, $61, $f5, $75, $b5, $9e, $a5, $21, $b7, $e4
    db $b5, $e0, $fa, $00, $00, $00, $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $24, $ff, $ff, $f8, $f7, $f1, $e1, $fc, $e0, $fb
    db $f1, $ff, $e3, $e0, $fd, $00, $9b, $f6, $e0, $e5, $99, $f5, $e0, $ff, $df, $fa
    db $65, $e1, $7d, $fa, $c0, $fc, $00, $80, $e7, $f7, $d4, $e0, $fd, $3d, $ff, $5b
    db $e3, $b5, $c5, $7d, $d8, $e0, $ff, $30, $77, $d9, $e0, $ff, $e0, $ff, $17, $d3
    db $13, $13, $9b, $bf, $ff, $ff, $04, $ff, $ff, $f5, $f4, $13, $ff, $e0, $da, $ee
    db $00, $00

    nop                                           ; $5c3e: $00

    db $fe, $d5, $00, $ff, $e0, $05, $fb, $e0, $0b, $f7, $e1, $00, $02, $eb, $00, $28
    db $ef, $e0, $90, $eb, $e0, $f5, $00, $c8, $fa, $e5, $e0, $80, $ea, $e4, $00, $00
    db $17, $00, $01, $12, $d6, $e2, $50, $cf, $e0, $e6, $e1, $ea, $da, $e2, $fd, $e3
    db $e6, $e1, $57, $2f, $00, $03, $c0, $e2, $a0, $af, $e0, $64, $ab, $e0, $c7, $d4
    db $00, $20, $c0, $e2, $ca, $e1, $9c, $e1, $5f, $00, $55, $06, $96, $e2, $40, $8f
    db $e0, $b2, $8b, $e0, $a8, $f6, $e2, $9c, $a4, $e3, $7c, $e1, $bf, $00, $0c, $80
    db $e2, $8e, $e1, $59, $fa, $6b, $e0, $50, $84, $e2, $80, $00, $ec, $ff, $f8, $ff
    db $ff, $e0, $fe, $42, $f8, $c8, $f0, $80, $bf, $e0, $10, $e0, $00, $c0, $ff, $ff
    db $e2, $f7, $ff, $ff, $bc, $ff, $e8, $ff, $81, $fe, $08, $ed, $f0, $f8, $e5, $20
    db $c0, $71, $e3, $7f, $ff, $2f, $ff, $ff, $3f, $ff, $1f, $ff, $b7, $7f, $1f, $ff
    db $7f, $0f, $7f, $4f, $3f, $07, $1f, $02, $ff, $1f, $13, $0f, $01, $0f, $0b, $07
    db $01, $ff, $07, $00, $07, $04, $03, $5c, $ff, $00, $ef, $ff, $81, $3c, $10, $44
    db $e6, $20, $c0, $80, $bf, $c0, $00, $e0, $90, $e0, $80, $fe, $e0, $00, $fb, $c0
    db $20, $a0, $e0, $7d, $ff, $ef, $ff, $3a, $fa, $da, $e2, $08, $e3, $c0, $a4, $f8
    db $e0, $f8, $f0, $ff, $fc, $d0, $fc, $f2, $fc, $e0, $fc, $b0, $f7, $f8, $e4, $f8
    db $80, $e5, $be, $ff, $e3, $ff, $ff, $40, $ff, $00, $e7, $fc, $ff, $f6, $ff, $7f
    db $fc, $ff, $f8, $fe, $e8, $fe, $f8, $f8, $e0, $83, $f4, $ff, $78, $e0, $cb, $c3
    db $e2, $c5, $f0, $e0, $ef, $ea, $c0, $f1, $40, $e0, $ea, $d0, $e1, $cf, $e9, $ec
    db $ff, $f9, $fe, $7f, $e6, $f8, $48, $f0, $d0, $e0, $a8, $72, $e0, $fb, $40, $80
    db $10, $e7, $e9, $fe, $8e, $f0, $30, $f1, $c0, $f8, $e5, $62, $c1, $10, $e5, $bf
    db $7f, $9f, $7f, $ff, $77, $3f, $5f, $3f, $4f, $3f, $2f, $1f, $f7, $17, $0f, $12
    db $14, $e0, $09, $07, $17, $03, $ff, $05, $03, $04, $03, $02, $01, $5c, $ff, $f7
    db $c3, $3c, $3c, $9a, $c6, $00, $00, $40, $80, $df, $c0, $80, $20, $c0, $a0, $fe
    db $e2, $50, $80, $f0, $a0, $e1, $10, $e3, $da, $e1, $64, $c1, $a8, $f0, $ea, $f0
    db $df, $f4, $f8, $d4, $f8, $f4, $14, $e0, $b8, $f0, $fb, $e8, $f0, $10, $e9, $58
    db $e7, $66, $81, $fc, $ff, $ff, $f7, $fe, $fd, $fe, $fa, $fc, $ea, $3b, $fc, $f9
    db $f8, $e0, $f4, $ff, $48, $22, $eb, $a0, $e0, $f0, $cc, $a3, $fb, $c5, $f1, $cd
    db $e3, $cb, $00, $00, $ed, $fe, $ff, $fe, $f8, $e8, $f0, $52, $e0, $e8, $c0, $e7
    db $c0, $80, $50, $d6, $c0, $20, $c5, $bd, $fe, $ee, $c3, $f0, $b1, $1a, $e0, $f8
    db $e5, $b2, $a1, $54, $a1, $ff, $7f, $f7, $af, $7f, $7f, $14, $e0, $b7, $1f, $3f
    db $1f, $7f, $2f, $1f, $5f, $0f, $0f, $07, $0a, $14, $e2, $ff, $0b, $01, $03, $01
    db $02, $01, $05, $00, $95, $df, $12, $e0, $42, $90, $ea, $a0, $0c, $e2, $fe, $e1
    db $a0, $74, $30, $a0, $20, $c3, $fb, $da, $e6, $b0, $e0, $f4, $1f, $c0, $f7, $d8
    db $f0, $f8, $14, $e0, $b4, $e0, $f0, $e0, $fa, $20, $c7, $fb, $12, $e0, $91, $00
    db $fd, $fe, $f6, $ff, $fc, $fe, $fc, $fd, $f8, $ec, $f8, $fa, $06, $f8, $e0, $f5
    db $fe, $78, $e5, $2c, $f5, $00, $a1, $ee, $cc, $f1, $aa, $ff, $02, $81, $a0, $c1
    db $80, $c1, $85, $c3, $ff, $a1, $c3, $00, $83, $05, $83, $40, $81, $f3, $41, $80
    db $e0, $a0, $70, $c0, $c0, $e0, $68, $f0, $ff, $f1, $fc, $dc, $ff, $1e, $ff, $80
    db $1e, $fd, $12, $74, $82, $48, $00, $01, $78, $58, $ff, $ff, $40, $81, $82, $c1
    db $a0, $c1, $a1, $c3, $ff, $85, $c3, $04, $83, $41, $83, $02, $81, $f6, $6d, $80
    db $80, $a0, $4c, $a0, $d0, $e0, $64, $f0, $ed, $f0, $d0, $e2, $41, $1e, $c6, $81
    db $00, $00, $30, $f3, $00, $82, $d0, $e0, $a0, $a9, $02, $01, $00, $03, $00, $71
    db $a9, $f1, $e0, $60, $e8, $30, $83, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $3f, $01, $00, $00

    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    ccf                                           ; $5f2f: $3f
    ccf                                           ; $5f30: $3f
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    nop                                           ; $5f33: $00
    jr nz, jr_074_5f56                            ; $5f34: $20 $20

    ld d, l                                       ; $5f36: $55
    and b                                         ; $5f37: $a0
    ld a, [hl]                                    ; $5f38: $7e
    rst $38                                       ; $5f39: $ff
    ld a, a                                       ; $5f3a: $7f
    ld [$0825], sp                                ; $5f3b: $08 $25 $08
    dec h                                         ; $5f3e: $25
    ld [$0825], sp                                ; $5f3f: $08 $25 $08
    dec h                                         ; $5f42: $25
    inc sp                                        ; $5f43: $33
    ld bc, $023f                                  ; $5f44: $01 $3f $02
    ld [$a403], a                                 ; $5f47: $ea $03 $a4
    ld [bc], a                                    ; $5f4a: $02
    rst $38                                       ; $5f4b: $ff
    ld h, e                                       ; $5f4c: $63
    rst $28                                       ; $5f4d: $ef
    inc bc                                        ; $5f4e: $03
    ld [$a403], a                                 ; $5f4f: $ea $03 $a4
    ld [bc], a                                    ; $5f52: $02
    ld b, b                                       ; $5f53: $40
    ld [hl], c                                    ; $5f54: $71
    ret nz                                        ; $5f55: $c0

jr_074_5f56:
    ld a, [hl]                                    ; $5f56: $7e
    call nc, $a400                                ; $5f57: $d4 $00 $a4
    ld [bc], a                                    ; $5f5a: $02
    rst $38                                       ; $5f5b: $ff
    ld a, a                                       ; $5f5c: $7f
    ld [$a403], a                                 ; $5f5d: $ea $03 $a4
    ld [bc], a                                    ; $5f60: $02
    jr nz, jr_074_5f74                            ; $5f61: $20 $11

    cp a                                          ; $5f63: $bf
    nop                                           ; $5f64: $00
    add [hl]                                      ; $5f65: $86
    ccf                                           ; $5f66: $3f
    inc h                                         ; $5f67: $24
    ld l, $20                                     ; $5f68: $2e $20
    ld de, $2508                                  ; $5f6a: $11 $08 $25
    ld [$0825], sp                                ; $5f6d: $08 $25 $08
    dec h                                         ; $5f70: $25
    ld [$d525], sp                                ; $5f71: $08 $25 $d5

jr_074_5f74:
    nop                                           ; $5f74: $00
    rst $38                                       ; $5f75: $ff
    ldh [rTIMA], a                                ; $5f76: $e0 $05
    ei                                            ; $5f78: $fb
    ldh [$0b], a                                  ; $5f79: $e0 $0b
    rst $30                                       ; $5f7b: $f7
    pop hl                                        ; $5f7c: $e1
    nop                                           ; $5f7d: $00
    ld [bc], a                                    ; $5f7e: $02
    db $eb                                        ; $5f7f: $eb
    nop                                           ; $5f80: $00
    jr z, @-$0f                                   ; $5f81: $28 $ef

    ldh [$90], a                                  ; $5f83: $e0 $90
    db $eb                                        ; $5f85: $eb
    ldh [$f5], a                                  ; $5f86: $e0 $f5
    nop                                           ; $5f88: $00
    ret z                                         ; $5f89: $c8

    cp $e5                                        ; $5f8a: $fe $e5
    ldh [$80], a                                  ; $5f8c: $e0 $80
    nop                                           ; $5f8e: $00
    db $ec                                        ; $5f8f: $ec
    rst $38                                       ; $5f90: $ff
    ld hl, sp-$01                                 ; $5f91: $f8 $ff
    ldh [rIE], a                                  ; $5f93: $e0 $ff
    cp $42                                        ; $5f95: $fe $42
    ld hl, sp-$38                                 ; $5f97: $f8 $c8
    ldh a, [$80]                                  ; $5f99: $f0 $80
    ldh [rNR10], a                                ; $5f9b: $e0 $10
    rst $28                                       ; $5f9d: $ef
    ldh [rP1], a                                  ; $5f9e: $e0 $00
    ret nz                                        ; $5fa0: $c0

    rst $38                                       ; $5fa1: $ff
    rst $38                                       ; $5fa2: $ff
    ld [c], a                                     ; $5fa3: $e2
    rst $30                                       ; $5fa4: $f7
    rst $38                                       ; $5fa5: $ff
    cp h                                          ; $5fa6: $bc
    ld a, a                                       ; $5fa7: $7f
    rst $38                                       ; $5fa8: $ff
    add sp, -$01                                  ; $5fa9: $e8 $ff
    add c                                         ; $5fab: $81
    cp $08                                        ; $5fac: $fe $08
    ldh a, [$f8]                                  ; $5fae: $f0 $f8
    push hl                                       ; $5fb0: $e5
    ei                                            ; $5fb1: $fb
    jr nz, jr_074_5f74                            ; $5fb2: $20 $c0

    cp a                                          ; $5fb4: $bf
    ld [c], a                                     ; $5fb5: $e2
    nop                                           ; $5fb6: $00
    ld a, a                                       ; $5fb7: $7f
    rst $38                                       ; $5fb8: $ff
    cpl                                           ; $5fb9: $2f
    rst $38                                       ; $5fba: $ff
    rst $38                                       ; $5fbb: $ff
    ccf                                           ; $5fbc: $3f
    rst $38                                       ; $5fbd: $ff
    rra                                           ; $5fbe: $1f
    rst $38                                       ; $5fbf: $ff
    or a                                          ; $5fc0: $b7
    ld a, a                                       ; $5fc1: $7f
    rra                                           ; $5fc2: $1f
    ld a, a                                       ; $5fc3: $7f
    rst $38                                       ; $5fc4: $ff
    rrca                                          ; $5fc5: $0f
    ld a, a                                       ; $5fc6: $7f
    ld c, a                                       ; $5fc7: $4f
    ccf                                           ; $5fc8: $3f
    rlca                                          ; $5fc9: $07
    rra                                           ; $5fca: $1f
    ld [bc], a                                    ; $5fcb: $02
    rra                                           ; $5fcc: $1f
    rst $38                                       ; $5fcd: $ff
    inc de                                        ; $5fce: $13
    rrca                                          ; $5fcf: $0f
    ld bc, $0b0f                                  ; $5fd0: $01 $0f $0b
    rlca                                          ; $5fd3: $07
    ld bc, $ff07                                  ; $5fd4: $01 $07 $ff
    nop                                           ; $5fd7: $00
    rlca                                          ; $5fd8: $07
    inc b                                         ; $5fd9: $04
    inc bc                                        ; $5fda: $03
    ld e, h                                       ; $5fdb: $5c
    rst $38                                       ; $5fdc: $ff
    nop                                           ; $5fdd: $00
    rst $38                                       ; $5fde: $ff
    rst $20                                       ; $5fdf: $e7
    add c                                         ; $5fe0: $81
    inc a                                         ; $5fe1: $3c
    db $10                                        ; $5fe2: $10
    db $d3                                        ; $5fe3: $d3
    db $e3                                        ; $5fe4: $e3
    add e                                         ; $5fe5: $83
    ldh [rNR41], a                                ; $5fe6: $e0 $20
    ret nz                                        ; $5fe8: $c0

    add b                                         ; $5fe9: $80
    cp a                                          ; $5fea: $bf
    ret nz                                        ; $5feb: $c0

    nop                                           ; $5fec: $00
    ldh [$90], a                                  ; $5fed: $e0 $90
    ldh [$80], a                                  ; $5fef: $e0 $80
    cp $e0                                        ; $5ff1: $fe $e0
    nop                                           ; $5ff3: $00
    ei                                            ; $5ff4: $fb
    ret nz                                        ; $5ff5: $c0

    jr nz, @-$5e                                  ; $5ff6: $20 $a0

    ldh [$7d], a                                  ; $5ff8: $e0 $7d
    rst $38                                       ; $5ffa: $ff
    rst $28                                       ; $5ffb: $ef
    rst $38                                       ; $5ffc: $ff
    ld a, [hl-]                                   ; $5ffd: $3a
    ld a, [$e2da]                                 ; $5ffe: $fa $da $e2
    ld [$e063], sp                                ; $6001: $08 $63 $e0
    and h                                         ; $6004: $a4
    ld hl, sp-$20                                 ; $6005: $f8 $e0
    ld hl, sp-$10                                 ; $6007: $f8 $f0
    rst $38                                       ; $6009: $ff
    db $fc                                        ; $600a: $fc
    ret nc                                        ; $600b: $d0

    db $fc                                        ; $600c: $fc
    ld a, [c]                                     ; $600d: $f2
    db $fc                                        ; $600e: $fc
    ldh [$fc], a                                  ; $600f: $e0 $fc
    or b                                          ; $6011: $b0
    rst $30                                       ; $6012: $f7
    ld hl, sp-$1c                                 ; $6013: $f8 $e4
    ld hl, sp-$80                                 ; $6015: $f8 $80
    push hl                                       ; $6017: $e5
    cp [hl]                                       ; $6018: $be
    rst $38                                       ; $6019: $ff
    db $e3                                        ; $601a: $e3
    rst $38                                       ; $601b: $ff
    rst $38                                       ; $601c: $ff
    ld b, b                                       ; $601d: $40
    rst $38                                       ; $601e: $ff
    nop                                           ; $601f: $00
    rst $20                                       ; $6020: $e7
    db $fc                                        ; $6021: $fc
    rst $38                                       ; $6022: $ff
    or $ff                                        ; $6023: $f6 $ff
    ld a, a                                       ; $6025: $7f
    db $fc                                        ; $6026: $fc
    rst $38                                       ; $6027: $ff
    ld hl, sp-$02                                 ; $6028: $f8 $fe
    add sp, -$02                                  ; $602a: $e8 $fe
    ld hl, sp-$08                                 ; $602c: $f8 $f8
    ldh [$0b], a                                  ; $602e: $e0 $0b
    db $f4                                        ; $6030: $f4
    rst $38                                       ; $6031: $ff
    ld a, b                                       ; $6032: $78
    ldh [$80], a                                  ; $6033: $e0 $80
    and e                                         ; $6035: $a3
    and $23                                       ; $6036: $e6 $23
    pop hl                                        ; $6038: $e1
    ldh a, [$e0]                                  ; $6039: $f0 $e0
    rst $28                                       ; $603b: $ef
    ld [$c0e3], a                                 ; $603c: $ea $e3 $c0
    ld b, b                                       ; $603f: $40
    ldh [$ea], a                                  ; $6040: $e0 $ea
    ret nc                                        ; $6042: $d0

    pop hl                                        ; $6043: $e1
    rst $08                                       ; $6044: $cf
    jp hl                                         ; $6045: $e9


    ld [bc], a                                    ; $6046: $02
    add c                                         ; $6047: $81
    and b                                         ; $6048: $a0
    rst $38                                       ; $6049: $ff
    pop bc                                        ; $604a: $c1
    add b                                         ; $604b: $80
    pop bc                                        ; $604c: $c1
    add l                                         ; $604d: $85
    jp $c3a1                                      ; $604e: $c3 $a1 $c3


    nop                                           ; $6051: $00
    ld a, a                                       ; $6052: $7f
    add e                                         ; $6053: $83
    dec b                                         ; $6054: $05
    add e                                         ; $6055: $83
    ld b, b                                       ; $6056: $40
    add c                                         ; $6057: $81
    ld b, c                                       ; $6058: $41
    add b                                         ; $6059: $80
    ret nz                                        ; $605a: $c0

    ldh [rIE], a                                  ; $605b: $e0 $ff
    ret nz                                        ; $605d: $c0

    and b                                         ; $605e: $a0
    ret nz                                        ; $605f: $c0

    ret nz                                        ; $6060: $c0

    ldh [rBCPS], a                                ; $6061: $e0 $68
    ldh a, [$f1]                                  ; $6063: $f0 $f1
    rst $38                                       ; $6065: $ff
    db $fc                                        ; $6066: $fc
    call c, Call_000_1eff                         ; $6067: $dc $ff $1e
    rst $38                                       ; $606a: $ff
    add b                                         ; $606b: $80
    ld e, $12                                     ; $606c: $1e $12
    ld a, [hl]                                    ; $606e: $7e
    call nc, $48c2                                ; $606f: $d4 $c2 $48
    nop                                           ; $6072: $00
    ld bc, $5878                                  ; $6073: $01 $78 $58
    rst $38                                       ; $6076: $ff
    or b                                          ; $6077: $b0
    jp hl                                         ; $6078: $e9


    rst $38                                       ; $6079: $ff
    ld [bc], a                                    ; $607a: $02
    ld bc, $0300                                  ; $607b: $01 $00 $03
    nop                                           ; $607e: $00
    nop                                           ; $607f: $00
    ld b, b                                       ; $6080: $40
    ld b, b                                       ; $6081: $40
    ld a, a                                       ; $6082: $7f
    nop                                           ; $6083: $00
    jr nz, jr_074_6086                            ; $6084: $20 $00

jr_074_6086:
    db $10                                        ; $6086: $10
    ld [$0400], sp                                ; $6087: $08 $00 $04
    or d                                          ; $608a: $b2
    ret nz                                        ; $608b: $c0

    ret nz                                        ; $608c: $c0

    and d                                         ; $608d: $a2
    pop bc                                        ; $608e: $c1
    ldh a, [rIE]                                  ; $608f: $f0 $ff
    ldh a, [rIE]                                  ; $6091: $f0 $ff
    ldh a, [rIE]                                  ; $6093: $f0 $ff
    ldh a, [rIE]                                  ; $6095: $f0 $ff
    ldh a, [$f3]                                  ; $6097: $f0 $f3
    jp $e33c                                      ; $6099: $c3 $3c $e3


    jp $fd3c                                      ; $609c: $c3 $3c $fd


    ldh [$fe], a                                  ; $609f: $e0 $fe
    ld [c], a                                     ; $60a1: $e2
    db $f4                                        ; $60a2: $f4
    pop hl                                        ; $60a3: $e1
    dec de                                        ; $60a4: $1b
    rst $20                                       ; $60a5: $e7
    cpl                                           ; $60a6: $2f
    rst $38                                       ; $60a7: $ff
    call c, $f11e                                 ; $60a8: $dc $1e $f1
    inc a                                         ; $60ab: $3c
    db $e3                                        ; $60ac: $e3
    ld a, h                                       ; $60ad: $7c
    jp Jump_074_7f7c                              ; $60ae: $c3 $7c $7f


    jp $9ce3                                      ; $60b1: $c3 $e3 $9c


    jp Jump_000_18bc                              ; $60b4: $c3 $bc $18


    rst $20                                       ; $60b7: $e7
    ld [c], a                                     ; $60b8: $e2
    pop hl                                        ; $60b9: $e1
    rst $38                                       ; $60ba: $ff
    ld a, [de]                                    ; $60bb: $1a
    push hl                                       ; $60bc: $e5
    ld [de], a                                    ; $60bd: $12
    rst $28                                       ; $60be: $ef
    ld e, a                                       ; $60bf: $5f
    cp b                                          ; $60c0: $b8
    ld a, a                                       ; $60c1: $7f
    ldh [rIE], a                                  ; $60c2: $e0 $ff
    di                                            ; $60c4: $f3
    adc h                                         ; $60c5: $8c
    inc de                                        ; $60c6: $13
    rst $28                                       ; $60c7: $ef
    rra                                           ; $60c8: $1f
    ld hl, sp-$04                                 ; $60c9: $f8 $fc
    ld h, e                                       ; $60cb: $63
    cp a                                          ; $60cc: $bf
    db $fc                                        ; $60cd: $fc
    add e                                         ; $60ce: $83
    db $fc                                        ; $60cf: $fc
    inc bc                                        ; $60d0: $03
    cp h                                          ; $60d1: $bc
    ld b, e                                       ; $60d2: $43
    call nz, $98e1                                ; $60d3: $c4 $e1 $98
    rst $38                                       ; $60d6: $ff
    rst $20                                       ; $60d7: $e7
    db $fc                                        ; $60d8: $fc
    ld b, e                                       ; $60d9: $43
    call c, $f863                                 ; $60da: $dc $63 $f8
    daa                                           ; $60dd: $27
    ld l, b                                       ; $60de: $68
    rst $38                                       ; $60df: $ff
    or a                                          ; $60e0: $b7
    ld l, h                                       ; $60e1: $6c
    sub e                                         ; $60e2: $93
    db $fc                                        ; $60e3: $fc
    inc de                                        ; $60e4: $13
    add sp, $17                                   ; $60e5: $e8 $17
    ld hl, sp-$01                                 ; $60e7: $f8 $ff
    rrca                                          ; $60e9: $0f
    sbc $25                                       ; $60ea: $de $25
    inc a                                         ; $60ec: $3c
    rst $00                                       ; $60ed: $c7
    ld a, $c3                                     ; $60ee: $3e $c3
    ccf                                           ; $60f0: $3f
    rst $38                                       ; $60f1: $ff
    jp nz, $c13e                                  ; $60f2: $c2 $3e $c1

    jp $c33d                                      ; $60f5: $c3 $3d $c3


    dec a                                         ; $60f8: $3d
    cp e                                          ; $60f9: $bb
    rst $30                                       ; $60fa: $f7
    rst $10                                       ; $60fb: $d7
    rst $38                                       ; $60fc: $ff
    nop                                           ; $60fd: $00
    and b                                         ; $60fe: $a0
    jp hl                                         ; $60ff: $e9


    jp $c3bc                                      ; $6100: $c3 $bc $c3


    cp h                                          ; $6103: $bc
    ret                                           ; $6104: $c9


    ld a, h                                       ; $6105: $7c
    jp nz, $bee0                                  ; $6106: $c2 $e0 $be

    pop hl                                        ; $6109: $e1
    ld b, e                                       ; $610a: $43
    db $f4                                        ; $610b: $f4
    ldh [$a0], a                                  ; $610c: $e0 $a0
    pop hl                                        ; $610e: $e1
    nop                                           ; $610f: $00
    rst $38                                       ; $6110: $ff
    cp a                                          ; $6111: $bf
    db $dd                                        ; $6112: $dd
    db $eb                                        ; $6113: $eb
    rst $38                                       ; $6114: $ff
    nop                                           ; $6115: $00
    ld a, [hl]                                    ; $6116: $7e
    add c                                         ; $6117: $81
    add b                                         ; $6118: $80
    ld [c], a                                     ; $6119: $e2
    db $f4                                        ; $611a: $f4
    rst $38                                       ; $611b: $ff
    rrca                                          ; $611c: $0f
    ldh a, [rNR32]                                ; $611d: $f0 $1c
    db $e3                                        ; $611f: $e3
    inc e                                         ; $6120: $1c
    di                                            ; $6121: $f3
    inc e                                         ; $6122: $1c
    db $e3                                        ; $6123: $e3
    rst $38                                       ; $6124: $ff
    inc c                                         ; $6125: $0c
    di                                            ; $6126: $f3
    ccf                                           ; $6127: $3f
    ret nc                                        ; $6128: $d0

    dec de                                        ; $6129: $1b
    db $f4                                        ; $612a: $f4
    ld d, a                                       ; $612b: $57
    rst $38                                       ; $612c: $ff
    ld e, a                                       ; $612d: $5f
    xor a                                         ; $612e: $af
    db $fc                                        ; $612f: $fc
    ld a, [hl]                                    ; $6130: $7e
    pop af                                        ; $6131: $f1
    cp h                                          ; $6132: $bc
    ld [hl], b                                    ; $6133: $70
    ldh [$fc], a                                  ; $6134: $e0 $fc
    ld [hl], b                                    ; $6136: $70
    ld [c], a                                     ; $6137: $e2
    rst $38                                       ; $6138: $ff
    ei                                            ; $6139: $fb
    rst $38                                       ; $613a: $ff
    sbc $ff                                       ; $613b: $de $ff
    push af                                       ; $613d: $f5
    rst $38                                       ; $613e: $ff
    xor d                                         ; $613f: $aa
    rst $38                                       ; $6140: $ff
    or a                                          ; $6141: $b7
    ld d, a                                       ; $6142: $57
    rst $38                                       ; $6143: $ff
    cp a                                          ; $6144: $bf
    ld h, a                                       ; $6145: $67
    and b                                         ; $6146: $a0
    di                                            ; $6147: $f3
    adc h                                         ; $6148: $8c
    ld hl, sp-$1f                                 ; $6149: $f8 $e1
    ld a, h                                       ; $614b: $7c
    db $fd                                        ; $614c: $fd
    db $e3                                        ; $614d: $e3
    ld [hl], b                                    ; $614e: $70
    rst $20                                       ; $614f: $e7
    rst $28                                       ; $6150: $ef
    rst $38                                       ; $6151: $ff
    rst $10                                       ; $6152: $d7
    ld a, a                                       ; $6153: $7f
    db $ed                                        ; $6154: $ed
    ld a, a                                       ; $6155: $7f
    rst $38                                       ; $6156: $ff
    rst $30                                       ; $6157: $f7
    ccf                                           ; $6158: $3f
    ld l, e                                       ; $6159: $6b
    cp a                                          ; $615a: $bf
    halt                                          ; $615b: $76
    sbc a                                         ; $615c: $9f
    ei                                            ; $615d: $fb
    rra                                           ; $615e: $1f
    rst $38                                       ; $615f: $ff
    push af                                       ; $6160: $f5
    rra                                           ; $6161: $1f
    ld a, [$dd0f]                                 ; $6162: $fa $0f $dd
    daa                                           ; $6165: $27
    ld a, $c7                                     ; $6166: $3e $c7
    di                                            ; $6168: $f3
    ccf                                           ; $6169: $3f
    jp $e06e                                      ; $616a: $c3 $6e $e0


    ld [hl], b                                    ; $616d: $70
    ld [c], a                                     ; $616e: $e2
    db $ed                                        ; $616f: $ed
    rst $38                                       ; $6170: $ff
    db $d3                                        ; $6171: $d3
    inc a                                         ; $6172: $3c
    dec sp                                        ; $6173: $3b
    ld a, [hl]                                    ; $6174: $7e
    add c                                         ; $6175: $81
    ld [hl], b                                    ; $6176: $70
    jp hl                                         ; $6177: $e9


    db $e3                                        ; $6178: $e3
    sbc h                                         ; $6179: $9c
    cp h                                          ; $617a: $bc
    inc d                                         ; $617b: $14
    ldh [rBCPD], a                                ; $617c: $e0 $69
    ldh [$eb], a                                  ; $617e: $e0 $eb
    jp $1063                                      ; $6180: $c3 $63 $10


    ldh [$57], a                                  ; $6183: $e0 $57
    and h                                         ; $6185: $a4
    ldh [$7d], a                                  ; $6186: $e0 $7d
    rst $38                                       ; $6188: $ff
    db $d3                                        ; $6189: $d3
    ld sp, hl                                     ; $618a: $f9
    rst $28                                       ; $618b: $ef
    ld c, d                                       ; $618c: $4a
    pop hl                                        ; $618d: $e1
    db $e4                                        ; $618e: $e4
    pop bc                                        ; $618f: $c1
    cp e                                          ; $6190: $bb
    db $f4                                        ; $6191: $f4
    ld e, e                                       ; $6192: $5b
    db $f4                                        ; $6193: $f4
    xor h                                         ; $6194: $ac
    rst $38                                       ; $6195: $ff
    di                                            ; $6196: $f3
    ld l, h                                       ; $6197: $6c
    di                                            ; $6198: $f3
    cp h                                          ; $6199: $bc
    db $e3                                        ; $619a: $e3
    ld l, h                                       ; $619b: $6c
    di                                            ; $619c: $f3
    cp e                                          ; $619d: $bb
    rst $38                                       ; $619e: $ff
    db $f4                                        ; $619f: $f4
    db $db                                        ; $61a0: $db
    db $f4                                        ; $61a1: $f4
    cp l                                          ; $61a2: $bd
    jp $ffe7                                      ; $61a3: $c3 $e7 $ff


    cp d                                          ; $61a6: $ba
    cp a                                          ; $61a7: $bf
    rst $38                                       ; $61a8: $ff
    ld d, l                                       ; $61a9: $55
    rst $38                                       ; $61aa: $ff
    xor e                                         ; $61ab: $ab
    rst $38                                       ; $61ac: $ff
    cp $58                                        ; $61ad: $fe $58
    and b                                         ; $61af: $a0
    rst $38                                       ; $61b0: $ff
    rst $28                                       ; $61b1: $ef
    rst $38                                       ; $61b2: $ff
    db $db                                        ; $61b3: $db
    rst $38                                       ; $61b4: $ff
    ld l, a                                       ; $61b5: $6f
    adc [hl]                                      ; $61b6: $8e
    ldh [$af], a                                  ; $61b7: $e0 $af
    ld a, a                                       ; $61b9: $7f
    or l                                          ; $61ba: $b5
    rst $08                                       ; $61bb: $cf
    ld a, a                                       ; $61bc: $7f
    rst $28                                       ; $61bd: $ef
    ld a, a                                       ; $61be: $7f
    ld d, a                                       ; $61bf: $57
    ld b, [hl]                                    ; $61c0: $46
    and b                                         ; $61c1: $a0
    ret nc                                        ; $61c2: $d0

    jp $e718                                      ; $61c3: $c3 $18 $e7


    cp $f8                                        ; $61c6: $fe $f8
    push hl                                       ; $61c8: $e5
    ld d, a                                       ; $61c9: $57
    rst $38                                       ; $61ca: $ff
    xor h                                         ; $61cb: $ac
    rst $38                                       ; $61cc: $ff
    ld [hl], h                                    ; $61cd: $74
    ei                                            ; $61ce: $fb
    cp b                                          ; $61cf: $b8
    ld l, a                                       ; $61d0: $6f
    rst $20                                       ; $61d1: $e7

Jump_074_61d2:
    ld e, b                                       ; $61d2: $58
    rst $20                                       ; $61d3: $e7
    db $fc                                        ; $61d4: $fc
    dec b                                         ; $61d5: $05
    ldh [$98], a                                  ; $61d6: $e0 $98

Jump_074_61d8:
    rst $20                                       ; $61d8: $e7
    ld b, b                                       ; $61d9: $40
    rst $20                                       ; $61da: $e7
    rst $18                                       ; $61db: $df
    cp d                                          ; $61dc: $ba
    rst $38                                       ; $61dd: $ff
    db $ec                                        ; $61de: $ec
    di                                            ; $61df: $f3
    sbc b                                         ; $61e0: $98
    ldh [$e0], a                                  ; $61e1: $e0 $e0
    cp d                                          ; $61e3: $ba
    rst $38                                       ; $61e4: $ff
    jp hl                                         ; $61e5: $e9


    ld l, h                                       ; $61e6: $6c
    ld hl, sp-$20                                 ; $61e7: $f8 $e0
    ret z                                         ; $61e9: $c8

    push hl                                       ; $61ea: $e5
    rst $28                                       ; $61eb: $ef
    ld h, $e0                                     ; $61ec: $26 $e0
    ld l, l                                       ; $61ee: $6d
    rst $38                                       ; $61ef: $ff
    scf                                           ; $61f0: $37
    rst $38                                       ; $61f1: $ff
    rst $38                                       ; $61f2: $ff
    dec hl                                        ; $61f3: $2b
    rst $38                                       ; $61f4: $ff
    ld d, $ff                                     ; $61f5: $16 $ff
    dec sp                                        ; $61f7: $3b
    rst $38                                       ; $61f8: $ff
    dec d                                         ; $61f9: $15
    rst $38                                       ; $61fa: $ff
    rst $38                                       ; $61fb: $ff
    ld a, [de]                                    ; $61fc: $1a
    rst $28                                       ; $61fd: $ef
    dec [hl]                                      ; $61fe: $35
    rst $08                                       ; $61ff: $cf
    ld a, $c7                                     ; $6200: $3e $c7
    dec de                                        ; $6202: $1b
    rst $38                                       ; $6203: $ff
    rst $20                                       ; $6204: $e7
    ld a, [de]                                    ; $6205: $1a
    rst $20                                       ; $6206: $e7
    dec a                                         ; $6207: $3d
    jp $c33f                                      ; $6208: $c3 $3f $c3


    add hl, de                                    ; $620b: $19
    db $db                                        ; $620c: $db
    rst $20                                       ; $620d: $e7
    rst $10                                       ; $620e: $d7
    db $e4                                        ; $620f: $e4
    add b                                         ; $6210: $80
    inc l                                         ; $6211: $2c
    db $d3                                        ; $6212: $d3
    and b                                         ; $6213: $a0
    rst $20                                       ; $6214: $e7
    sbc b                                         ; $6215: $98
    rst $20                                       ; $6216: $e7
    adc d                                         ; $6217: $8a
    ld b, d                                       ; $6218: $42
    pop hl                                        ; $6219: $e1
    ret c                                         ; $621a: $d8

    and b                                         ; $621b: $a0
    ldh [$bc], a                                  ; $621c: $e0 $bc
    sbc $c0                                       ; $621e: $de $c0
    or b                                          ; $6220: $b0
    pop hl                                        ; $6221: $e1
    ld b, b                                       ; $6222: $40
    pop hl                                        ; $6223: $e1
    set 7, [hl]                                   ; $6224: $cb $fe
    ld a, b                                       ; $6226: $78
    and $b0                                       ; $6227: $e6 $b0
    rst $38                                       ; $6229: $ff
    ld d, h                                       ; $622a: $54
    ei                                            ; $622b: $fb
    and h                                         ; $622c: $a4
    ei                                            ; $622d: $fb
    ld a, b                                       ; $622e: $78
    rst $38                                       ; $622f: $ff
    rst $30                                       ; $6230: $f7
    xor b                                         ; $6231: $a8
    rst $30                                       ; $6232: $f7
    ld h, h                                       ; $6233: $64
    ei                                            ; $6234: $fb
    or h                                          ; $6235: $b4
    ei                                            ; $6236: $fb
    ret nc                                        ; $6237: $d0

    rst $38                                       ; $6238: $ff
    rst $38                                       ; $6239: $ff
    pop bc                                        ; $623a: $c1
    rst $38                                       ; $623b: $ff
    or a                                          ; $623c: $b7
    rst $38                                       ; $623d: $ff
    ld e, l                                       ; $623e: $5d
    rst $38                                       ; $623f: $ff
    ld [$3e54], a                                 ; $6240: $ea $54 $3e
    ldh [$3a], a                                  ; $6243: $e0 $3a
    add c                                         ; $6245: $81
    rst $38                                       ; $6246: $ff
    sub h                                         ; $6247: $94
    add b                                         ; $6248: $80
    ld d, a                                       ; $6249: $57
    ld a, $e0                                     ; $624a: $3e $e0
    dec [hl]                                      ; $624c: $35
    ld a, [hl-]                                   ; $624d: $3a
    ldh [$f6], a                                  ; $624e: $e0 $f6
    xor [hl]                                      ; $6250: $ae
    ret nz                                        ; $6251: $c0

    rst $38                                       ; $6252: $ff
    rst $10                                       ; $6253: $d7
    ld hl, $ff83                                  ; $6254: $21 $83 $ff
    db $dd                                        ; $6257: $dd
    rst $38                                       ; $6258: $ff
    ld [hl], a                                    ; $6259: $77
    ld e, h                                       ; $625a: $5c
    sbc h                                         ; $625b: $9c
    ret nz                                        ; $625c: $c0

    call c, $afe1                                 ; $625d: $dc $e1 $af
    rst $38                                       ; $6260: $ff
    rst $18                                       ; $6261: $df
    adc $e0                                       ; $6262: $ce $e0
    rst $18                                       ; $6264: $df
    ld hl, sp-$1a                                 ; $6265: $f8 $e6
    inc d                                         ; $6267: $14
    rst $38                                       ; $6268: $ff
    push hl                                       ; $6269: $e5
    sbc $e5                                       ; $626a: $de $e5
    ld e, a                                       ; $626c: $5f
    jp z, $6fe0                                   ; $626d: $ca $e0 $6f

    add $e0                                       ; $6270: $c6 $e0
    ld hl, sp-$1b                                 ; $6272: $f8 $e5
    ldh [$63], a                                  ; $6274: $e0 $63
    jp z, $e1f8                                   ; $6276: $ca $f8 $e1

    ld e, a                                       ; $6279: $5f
    sub [hl]                                      ; $627a: $96
    ldh [$5f], a                                  ; $627b: $e0 $5f
    ret nc                                        ; $627d: $d0

    and $c7                                       ; $627e: $e6 $c7
    push hl                                       ; $6280: $e5
    ld l, c                                       ; $6281: $69
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    call nc, $81fc                                ; $6284: $d4 $fc $81
    ldh a, [rDMA]                                 ; $6287: $f0 $46
    ldh [$8b], a                                  ; $6289: $e0 $8b
    ret nz                                        ; $628b: $c0

    ld a, a                                       ; $628c: $7f
    ld d, a                                       ; $628d: $57
    ret nz                                        ; $628e: $c0

    dec e                                         ; $628f: $1d
    add b                                         ; $6290: $80
    xor a                                         ; $6291: $af
    add b                                         ; $6292: $80
    db $fd                                        ; $6293: $fd
    xor a                                         ; $6294: $af
    ld h, b                                       ; $6295: $60
    db $fd                                        ; $6296: $fd
    jp c, $8048                                   ; $6297: $da $48 $80

    and b                                         ; $629a: $a0
    db $fc                                        ; $629b: $fc
    ld b, c                                       ; $629c: $41
    ldh a, [$0b]                                  ; $629d: $f0 $0b
    ret nz                                        ; $629f: $c0

    ei                                            ; $62a0: $fb
    ld d, $00                                     ; $62a1: $16 $00
    ld hl, sp-$1f                                 ; $62a3: $f8 $e1
    ld a, [bc]                                    ; $62a5: $0a
    ret nz                                        ; $62a6: $c0

    rla                                           ; $62a7: $17
    nop                                           ; $62a8: $00
    cp l                                          ; $62a9: $bd
    rst $30                                       ; $62aa: $f7
    nop                                           ; $62ab: $00
    ld l, a                                       ; $62ac: $6f
    nop                                           ; $62ad: $00
    push de                                       ; $62ae: $d5
    ld h, b                                       ; $62af: $60
    nop                                           ; $62b0: $00
    ld hl, sp-$02                                 ; $62b1: $f8 $fe
    db $f4                                        ; $62b3: $f4
    rst $38                                       ; $62b4: $ff
    cp $d8                                        ; $62b5: $fe $d8
    db $fc                                        ; $62b7: $fc
    pop af                                        ; $62b8: $f1
    db $fc                                        ; $62b9: $fc
    ld [c], a                                     ; $62ba: $e2
    ld hl, sp-$2f                                 ; $62bb: $f8 $d1
    rst $38                                       ; $62bd: $ff
    ld hl, sp+$63                                 ; $62be: $f8 $63
    ldh a, [$c6]                                  ; $62c0: $f0 $c6
    ldh a, [$8b]                                  ; $62c2: $f0 $8b
    ldh [rBGP], a                                 ; $62c4: $e0 $47
    rst $38                                       ; $62c6: $ff
    ldh [$8f], a                                  ; $62c7: $e0 $8f
    ret nz                                        ; $62c9: $c0

    dec de                                        ; $62ca: $1b
    ret nz                                        ; $62cb: $c0

    cpl                                           ; $62cc: $2f
    add b                                         ; $62cd: $80
    rra                                           ; $62ce: $1f
    rst $38                                       ; $62cf: $ff
    add b                                         ; $62d0: $80
    scf                                           ; $62d1: $37
    nop                                           ; $62d2: $00
    ld e, a                                       ; $62d3: $5f
    nop                                           ; $62d4: $00
    inc h                                         ; $62d5: $24
    inc a                                         ; $62d6: $3c
    ld b, d                                       ; $62d7: $42
    cp a                                          ; $62d8: $bf
    nop                                           ; $62d9: $00
    xor l                                         ; $62da: $ad
    nop                                           ; $62db: $00
    rst $30                                       ; $62dc: $f7
    nop                                           ; $62dd: $00
    ld a, l                                       ; $62de: $7d
    jp nc, $ffe2                                  ; $62df: $d2 $e2 $ff

    push af                                       ; $62e2: $f5
    nop                                           ; $62e3: $00
    db $ec                                        ; $62e4: $ec
    pop hl                                        ; $62e5: $e1
    cp a                                          ; $62e6: $bf
    db $e4                                        ; $62e7: $e4
    ldh [$2f], a                                  ; $62e8: $e0 $2f
    add b                                         ; $62ea: $80
    cp a                                          ; $62eb: $bf
    add b                                         ; $62ec: $80
    rst $18                                       ; $62ed: $df
    ld d, a                                       ; $62ee: $57
    nop                                           ; $62ef: $00
    ccf                                           ; $62f0: $3f
    nop                                           ; $62f1: $00
    push af                                       ; $62f2: $f5
    ld a, $e0                                     ; $62f3: $3e $e0
    ld b, l                                       ; $62f5: $45
    rst $38                                       ; $62f6: $ff
    rst $38                                       ; $62f7: $ff
    nop                                           ; $62f8: $00
    rst $00                                       ; $62f9: $c7
    stop                                          ; $62fa: $10 $00
    ld l, l                                       ; $62fc: $6d
    nop                                           ; $62fd: $00
    cp e                                          ; $62fe: $bb
    nop                                           ; $62ff: $00
    rst $38                                       ; $6300: $ff
    rst $28                                       ; $6301: $ef
    nop                                           ; $6302: $00
    rst $20                                       ; $6303: $e7
    ldh a, [rSCX]                                 ; $6304: $f0 $43
    ldh a, [$e5]                                  ; $6306: $f0 $e5
    ldh a, [rIE]                                  ; $6308: $f0 $ff
    ld b, a                                       ; $630a: $47
    ldh [$8a], a                                  ; $630b: $e0 $8a
    ldh [$c7], a                                  ; $630d: $e0 $c7
    ldh [$a5], a                                  ; $630f: $e0 $a5
    ldh a, [$eb]                                  ; $6311: $f0 $eb
    jp $30f0                                      ; $6313: $c3 $f0 $30


    ld h, e                                       ; $6316: $63
    rst $18                                       ; $6317: $df
    ld l, $60                                     ; $6318: $2e $60
    xor l                                         ; $631a: $ad
    rst $38                                       ; $631b: $ff
    ld b, d                                       ; $631c: $42
    rst $38                                       ; $631d: $ff
    rst $38                                       ; $631e: $ff
    nop                                           ; $631f: $00
    jp $fffc                                      ; $6320: $c3 $fc $ff


    ld a, [$fcff]                                 ; $6323: $fa $ff $fc
    sbc $8c                                       ; $6326: $de $8c
    ldh [$f8], a                                  ; $6328: $e0 $f8
    cp $ec                                        ; $632a: $fe $ec
    cp $f6                                        ; $632c: $fe $f6
    ldh [rIE], a                                  ; $632e: $e0 $ff
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    add b                                         ; $6332: $80
    ccf                                           ; $6333: $3f
    add b                                         ; $6334: $80
    ld a, a                                       ; $6335: $7f
    ret nz                                        ; $6336: $c0

    sbc a                                         ; $6337: $9f
    ret nz                                        ; $6338: $c0

    ld c, a                                       ; $6339: $4f
    rst $38                                       ; $633a: $ff
    ldh [$87], a                                  ; $633b: $e0 $87
    ldh a, [$d5]                                  ; $633d: $f0 $d5
    db $fc                                        ; $633f: $fc
    ld l, c                                       ; $6340: $69
    rst $38                                       ; $6341: $ff
    ccf                                           ; $6342: $3f
    rst $38                                       ; $6343: $ff
    nop                                           ; $6344: $00
    rrca                                          ; $6345: $0f
    ret nz                                        ; $6346: $c0

    ld b, e                                       ; $6347: $43
    ldh a, [$a0]                                  ; $6348: $f0 $a0
    db $fc                                        ; $634a: $fc
    db $f4                                        ; $634b: $f4
    add $4a                                       ; $634c: $c6 $4a
    ldh [rIE], a                                  ; $634e: $e0 $ff
    rst $38                                       ; $6350: $ff
    ld b, d                                       ; $6351: $42
    ldh [$88], a                                  ; $6352: $e0 $88
    db $e4                                        ; $6354: $e4

Jump_074_6355:
    add sp, -$1b                                  ; $6355: $e8 $e5
    db $e3                                        ; $6357: $e3
    rrca                                          ; $6358: $0f
    rst $38                                       ; $6359: $ff
    and $0f                                       ; $635a: $e6 $0f
    rr a                                          ; $635c: $cb $1f
    rst $00                                       ; $635e: $c7
    rra                                           ; $635f: $1f
    adc a                                         ; $6360: $8f
    ccf                                           ; $6361: $3f
    rst $30                                       ; $6362: $f7
    sbc e                                         ; $6363: $9b
    ccf                                           ; $6364: $3f
    cpl                                           ; $6365: $2f
    db $fc                                        ; $6366: $fc
    ld b, b                                       ; $6367: $40
    cp $00                                        ; $6368: $fe $00
    cp $00                                        ; $636a: $fe $00
    rst $38                                       ; $636c: $ff
    db $fc                                        ; $636d: $fc
    ld bc, $01fc                                  ; $636e: $01 $fc $01
    ld hl, sp+$03                                 ; $6371: $f8 $03

jr_074_6373:
    ld sp, hl                                     ; $6373: $f9
    inc bc                                        ; $6374: $03
    rst $08                                       ; $6375: $cf
    ld a, [c]                                     ; $6376: $f2
    rlca                                          ; $6377: $07
    pop af                                        ; $6378: $f1
    rlca                                          ; $6379: $07
    ret nc                                        ; $637a: $d0

    push hl                                       ; $637b: $e5
    inc h                                         ; $637c: $24
    pop hl                                        ; $637d: $e1
    db $d3                                        ; $637e: $d3
    nop                                           ; $637f: $00
    ld e, a                                       ; $6380: $5f
    ld b, d                                       ; $6381: $42
    ld a, [hl]                                    ; $6382: $7e
    cp $00                                        ; $6383: $fe $00
    rst $38                                       ; $6385: $ff
    ld [c], a                                     ; $6386: $e2
    ldh [$fe], a                                  ; $6387: $e0 $fe
    sbc $e0                                       ; $6389: $de $e0
    rst $08                                       ; $638b: $cf
    db $fc                                        ; $638c: $fc
    ld bc, $01ff                                  ; $638d: $01 $ff $01
    ld a, [c]                                     ; $6390: $f2
    ldh [$0a], a                                  ; $6391: $e0 $0a
    ld [c], a                                     ; $6393: $e2
    inc a                                         ; $6394: $3c
    nop                                           ; $6395: $00
    rst $30                                       ; $6396: $f7
    nop                                           ; $6397: $00
    rst $00                                       ; $6398: $c7
    ld b, l                                       ; $6399: $45
    add h                                         ; $639a: $84
    ret nz                                        ; $639b: $c0

    push af                                       ; $639c: $f5
    rst $38                                       ; $639d: $ff
    rst $20                                       ; $639e: $e7
    rrca                                          ; $639f: $0f
    rst $28                                       ; $63a0: $ef
    ld [c], a                                     ; $63a1: $e2
    rrca                                          ; $63a2: $0f
    rst $30                                       ; $63a3: $f7
    rrca                                          ; $63a4: $0f
    add $e1                                       ; $63a5: $c6 $e1
    di                                            ; $63a7: $f3
    rlca                                          ; $63a8: $07
    push hl                                       ; $63a9: $e5
    cp a                                          ; $63aa: $bf
    rrca                                          ; $63ab: $0f
    db $e3                                        ; $63ac: $e3
    rrca                                          ; $63ad: $0f
    jr jr_074_6373                                ; $63ae: $18 $c3

    ld b, d                                       ; $63b0: $42
    ld d, [hl]                                    ; $63b1: $56
    ldh [$f7], a                                  ; $63b2: $e0 $f7
    ld [$c676], a                                 ; $63b4: $ea $76 $c6
    ccf                                           ; $63b7: $3f
    ld a, [hl]                                    ; $63b8: $7e
    ret nz                                        ; $63b9: $c0

    ccf                                           ; $63ba: $3f
    add b                                         ; $63bb: $80
    and b                                         ; $63bc: $a0
    sbc a                                         ; $63bd: $9f
    ld a, a                                       ; $63be: $7f
    scf                                           ; $63bf: $37
    db $fd                                        ; $63c0: $fd
    ld a, a                                       ; $63c1: $7f
    or $e0                                        ; $63c2: $f6 $e0
    rst $38                                       ; $63c4: $ff
    ld [$5500], sp                                ; $63c5: $08 $00 $55
    nop                                           ; $63c8: $00
    cp [hl]                                       ; $63c9: $be
    ld [hl], h                                    ; $63ca: $74
    ldh a, [$c0]                                  ; $63cb: $f0 $c0
    ld l, b                                       ; $63cd: $68
    push hl                                       ; $63ce: $e5
    ld e, a                                       ; $63cf: $5f
    db $fc                                        ; $63d0: $fc
    ret nz                                        ; $63d1: $c0

    ld a, a                                       ; $63d2: $7f
    nop                                           ; $63d3: $00
    xor a                                         ; $63d4: $af
    db $fc                                        ; $63d5: $fc
    ldh [$9d], a                                  ; $63d6: $e0 $9d
    ccf                                           ; $63d8: $3f
    db $f4                                        ; $63d9: $f4
    ld [c], a                                     ; $63da: $e2
    ld de, $2a80                                  ; $63db: $11 $80 $2a
    call nc, $f0c0                                ; $63de: $d4 $c0 $f0
    push hl                                       ; $63e1: $e5
    cp a                                          ; $63e2: $bf
    ldh a, [$fa]                                  ; $63e3: $f0 $fa
    db $e4                                        ; $63e5: $e4
    ld l, d                                       ; $63e6: $6a
    jp hl                                         ; $63e7: $e9


    db $f4                                        ; $63e8: $f4
    db $eb                                        ; $63e9: $eb
    nop                                           ; $63ea: $00
    add e                                         ; $63eb: $83
    dec de                                        ; $63ec: $1b
    db $e4                                        ; $63ed: $e4
    dec d                                         ; $63ee: $15
    xor $ff                                       ; $63ef: $ee $ff
    dec l                                         ; $63f1: $2d
    ret nc                                        ; $63f2: $d0

    dec b                                         ; $63f3: $05
    ld a, [$c034]                                 ; $63f4: $fa $34 $c0
    ld d, a                                       ; $63f7: $57
    xor d                                         ; $63f8: $aa
    rst $18                                       ; $63f9: $df
    and h                                         ; $63fa: $a4
    ld a, [bc]                                    ; $63fb: $0a
    ld c, e                                       ; $63fc: $4b
    add b                                         ; $63fd: $80
    ld b, d                                       ; $63fe: $42
    ldh [rNR41], a                                ; $63ff: $e0 $20
    dec e                                         ; $6401: $1d
    ld [bc], a                                    ; $6402: $02
    rst $38                                       ; $6403: $ff
    cp h                                          ; $6404: $bc
    inc bc                                        ; $6405: $03
    sbc b                                         ; $6406: $98
    ld h, a                                       ; $6407: $67
    rla                                           ; $6408: $17
    xor d                                         ; $6409: $aa
    db $e4                                        ; $640a: $e4
    ld a, [bc]                                    ; $640b: $0a
    rst $38                                       ; $640c: $ff
    adc e                                         ; $640d: $8b
    jr nz, @+$24                                  ; $640e: $20 $22

    nop                                           ; $6410: $00
    db $dd                                        ; $6411: $dd
    nop                                           ; $6412: $00
    cp l                                          ; $6413: $bd
    ld b, d                                       ; $6414: $42
    cp $08                                        ; $6415: $fe $08
    and c                                         ; $6417: $a1
    ld d, $a9                                     ; $6418: $16 $a9
    add sp, $03                                   ; $641a: $e8 $03
    add l                                         ; $641c: $85
    ld [hl+], a                                   ; $641d: $22
    ld a, [hl+]                                   ; $641e: $2a
    rst $38                                       ; $641f: $ff
    rlca                                          ; $6420: $07
    db $db                                        ; $6421: $db
    nop                                           ; $6422: $00
    cp h                                          ; $6423: $bc
    ld b, e                                       ; $6424: $43
    ccf                                           ; $6425: $3f
    ret nz                                        ; $6426: $c0

    add hl, de                                    ; $6427: $19
    ei                                            ; $6428: $fb

jr_074_6429:
    and $18                                       ; $6429: $e6 $18
    ld h, b                                       ; $642b: $60
    and b                                         ; $642c: $a0
    inc a                                         ; $642d: $3c
    jp $e7b8                                      ; $642e: $c3 $b8 $e7


    ld [$f7ff], sp                                ; $6431: $08 $ff $f7
    call z, $90fb                                 ; $6434: $cc $fb $90
    ld l, a                                       ; $6437: $6f
    ld a, [hl+]                                   ; $6438: $2a
    rst $38                                       ; $6439: $ff
    rra                                           ; $643a: $1f
    rst $38                                       ; $643b: $ff
    ldh [$d0], a                                  ; $643c: $e0 $d0
    ld bc, $a15a                                  ; $643e: $01 $5a $a1
    ld c, b                                       ; $6441: $48
    rlca                                          ; $6442: $07
    ld hl, sp-$09                                 ; $6443: $f8 $f7
    rlca                                          ; $6445: $07
    inc e                                         ; $6446: $1c
    inc bc                                        ; $6447: $03
    ret nz                                        ; $6448: $c0

    pop hl                                        ; $6449: $e1
    or b                                          ; $644a: $b0
    rrca                                          ; $644b: $0f
    call z, $ff3f                                 ; $644c: $cc $3f $ff
    ld a, c                                       ; $644f: $79
    add [hl]                                      ; $6450: $86
    ld [de], a                                    ; $6451: $12
    rst $28                                       ; $6452: $ef
    dec de                                        ; $6453: $1b
    ldh [$3c], a                                  ; $6454: $e0 $3c
    jp $d0fe                                      ; $6456: $c3 $fe $d0


    pop hl                                        ; $6459: $e1
    dec a                                         ; $645a: $3d
    ret nz                                        ; $645b: $c0

    ld c, a                                       ; $645c: $4f
    and b                                         ; $645d: $a0
    jr nc, jr_074_6429                            ; $645e: $30 $c9

    ld d, d                                       ; $6460: $52
    rst $38                                       ; $6461: $ff
    and c                                         ; $6462: $a1
    ld l, l                                       ; $6463: $6d
    jp nz, $c934                                  ; $6464: $c2 $34 $c9

    ld c, b                                       ; $6467: $48
    or e                                          ; $6468: $b3
    ld a, [de]                                    ; $6469: $1a
    rst $38                                       ; $646a: $ff
    push hl                                       ; $646b: $e5
    dec d                                         ; $646c: $15
    cp a                                          ; $646d: $bf
    adc $3f                                       ; $646e: $ce $3f
    ld d, [hl]                                    ; $6470: $56
    cp a                                          ; $6471: $bf
    ld l, l                                       ; $6472: $6d
    rst $38                                       ; $6473: $ff
    cp a                                          ; $6474: $bf
    sbc [hl]                                      ; $6475: $9e
    ld a, a                                       ; $6476: $7f
    ld l, d                                       ; $6477: $6a
    cp a                                          ; $6478: $bf
    dec e                                         ; $6479: $1d
    rst $38                                       ; $647a: $ff
    ld c, [hl]                                    ; $647b: $4e
    rst $38                                       ; $647c: $ff
    cp a                                          ; $647d: $bf
    dec [hl]                                      ; $647e: $35
    ret nz                                        ; $647f: $c0

    ld c, [hl]                                    ; $6480: $4e
    and c                                         ; $6481: $a1
    ld [hl-], a                                   ; $6482: $32
    ret                                           ; $6483: $c9


    ld d, a                                       ; $6484: $57
    rst $38                                       ; $6485: $ff
    and d                                         ; $6486: $a2
    ld a, a                                       ; $6487: $7f
    push bc                                       ; $6488: $c5
    ld [hl-], a                                   ; $6489: $32
    rst $08                                       ; $648a: $cf
    ld d, l                                       ; $648b: $55
    cp a                                          ; $648c: $bf
    dec hl                                        ; $648d: $2b
    sbc $90                                       ; $648e: $de $90
    add d                                         ; $6490: $82
    cp h                                          ; $6491: $bc
    ld b, e                                       ; $6492: $43
    ld e, b                                       ; $6493: $58
    and a                                         ; $6494: $a7
    nop                                           ; $6495: $00
    and b                                         ; $6496: $a0
    db $e3                                        ; $6497: $e3
    call nz, $f3ff                                ; $6498: $c4 $ff $f3
    or h                                          ; $649b: $b4
    db $eb                                        ; $649c: $eb
    sbc d                                         ; $649d: $9a
    ld a, a                                       ; $649e: $7f
    rst $28                                       ; $649f: $ef
    ccf                                           ; $64a0: $3f
    ld a, [hl-]                                   ; $64a1: $3a
    rst $38                                       ; $64a2: $ff
    rst $18                                       ; $64a3: $df
    ld c, l                                       ; $64a4: $4d
    rst $38                                       ; $64a5: $ff
    or h                                          ; $64a6: $b4
    rst $38                                       ; $64a7: $ff
    ld a, d                                       ; $64a8: $7a
    rst $38                                       ; $64a9: $ff
    xor b                                         ; $64aa: $a8
    ei                                            ; $64ab: $fb
    rst $38                                       ; $64ac: $ff
    ld [hl], h                                    ; $64ad: $74
    cp [hl]                                       ; $64ae: $be
    add b                                         ; $64af: $80
    inc hl                                        ; $64b0: $23
    rst $18                                       ; $64b1: $df
    dec b                                         ; $64b2: $05
    rst $38                                       ; $64b3: $ff
    ld a, [de]                                    ; $64b4: $1a
    cp $70                                        ; $64b5: $fe $70
    add [hl]                                      ; $64b7: $86
    call nc, $bbff                                ; $64b8: $d4 $ff $bb
    cp $74                                        ; $64bb: $fe $74
    rst $38                                       ; $64bd: $ff
    xor [hl]                                      ; $64be: $ae
    ld a, [$209a]                                 ; $64bf: $fa $9a $20
    xor [hl]                                      ; $64c2: $ae
    ld a, [hl-]                                   ; $64c3: $3a
    add b                                         ; $64c4: $80
    inc bc                                        ; $64c5: $03
    rst $38                                       ; $64c6: $ff
    ld d, d                                       ; $64c7: $52
    db $fc                                        ; $64c8: $fc
    xor d                                         ; $64c9: $aa
    xor a                                         ; $64ca: $af
    db $fd                                        ; $64cb: $fd
    ld [hl], a                                    ; $64cc: $77
    ei                                            ; $64cd: $fb
    and d                                         ; $64ce: $a2
    or b                                          ; $64cf: $b0
    ld h, b                                       ; $64d0: $60
    dec c                                         ; $64d1: $0d
    xor h                                         ; $64d2: $ac
    ld h, b                                       ; $64d3: $60
    ld a, [bc]                                    ; $64d4: $0a
    rst $38                                       ; $64d5: $ff
    rst $38                                       ; $64d6: $ff
    ld h, a                                       ; $64d7: $67
    adc b                                         ; $64d8: $88
    call Call_000_32bb                            ; $64d9: $cd $bb $32
    rst $28                                       ; $64dc: $ef
    db $eb                                        ; $64dd: $eb
    ld a, [$e0de]                                 ; $64de: $fa $de $e0

Jump_074_64e1:
    cp $1c                                        ; $64e1: $fe $1c
    add b                                         ; $64e3: $80
    cp d                                          ; $64e4: $ba
    rst $38                                       ; $64e5: $ff
    daa                                           ; $64e6: $27
    ret z                                         ; $64e7: $c8

    ld l, l                                       ; $64e8: $6d
    rst $38                                       ; $64e9: $ff
    sbc e                                         ; $64ea: $9b
    ld [hl+], a                                   ; $64eb: $22
    rst $38                                       ; $64ec: $ff

jr_074_64ed:
    ld a, e                                       ; $64ed: $7b
    rst $38                                       ; $64ee: $ff
    or [hl]                                       ; $64ef: $b6
    rst $38                                       ; $64f0: $ff
    ld e, [hl]                                    ; $64f1: $5e
    ei                                            ; $64f2: $fb
    rst $38                                       ; $64f3: $ff
    cp e                                          ; $64f4: $bb
    add h                                         ; $64f5: $84
    ld h, b                                       ; $64f6: $60
    ld c, $bf                                     ; $64f7: $0e $bf
    db $dd                                        ; $64f9: $dd
    ccf                                           ; $64fa: $3f
    ld l, [hl]                                    ; $64fb: $6e
    cp e                                          ; $64fc: $bb
    cp a                                          ; $64fd: $bf
    ld d, a                                       ; $64fe: $57
    ld [hl], b                                    ; $64ff: $70

jr_074_6500:
    ldh [$6d], a                                  ; $6500: $e0 $6d
    cp a                                          ; $6502: $bf
    ld e, $70                                     ; $6503: $1e $70
    ldh [rHDMA2], a                               ; $6505: $e0 $52
    rst $38                                       ; $6507: $ff
    db $fd                                        ; $6508: $fd
    xor $f9                                       ; $6509: $ee $f9
    ld c, c                                       ; $650b: $49
    or $a7                                        ; $650c: $f6 $a7
    ld hl, sp+$47                                 ; $650e: $f8 $47
    rst $38                                       ; $6510: $ff
    ldh a, [$b4]                                  ; $6511: $f0 $b4
    ret                                           ; $6513: $c9


    ld c, d                                       ; $6514: $4a
    or c                                          ; $6515: $b1
    dec de                                        ; $6516: $1b
    db $e4                                        ; $6517: $e4
    rst $38                                       ; $6518: $ff
    rst $38                                       ; $6519: $ff
    rra                                           ; $651a: $1f
    ld c, d                                       ; $651b: $4a
    cp a                                          ; $651c: $bf
    ld l, c                                       ; $651d: $69
    sub a                                         ; $651e: $97
    ld [de], a                                    ; $651f: $12
    rst $28                                       ; $6520: $ef
    add hl, de                                    ; $6521: $19
    rst $30                                       ; $6522: $f7
    ld [c], a                                     ; $6523: $e2
    jr c, jr_074_64ed                             ; $6524: $38 $c7

    nop                                           ; $6526: $00
    pop hl                                        ; $6527: $e1
    dec hl                                        ; $6528: $2b
    ret nc                                        ; $6529: $d0

    xor d                                         ; $652a: $aa
    ld b, c                                       ; $652b: $41
    cp a                                          ; $652c: $bf
    cp $01                                        ; $652d: $fe $01
    xor b                                         ; $652f: $a8
    rlca                                          ; $6530: $07
    ld a, b                                       ; $6531: $78
    add a                                         ; $6532: $87
    db $10                                        ; $6533: $10
    db $e3                                        ; $6534: $e3

jr_074_6535:
    and c                                         ; $6535: $a1
    rst $38                                       ; $6536: $ff
    ld e, $8c                                     ; $6537: $1e $8c
    ld a, d                                       ; $6539: $7a
    ld d, a                                       ; $653a: $57
    xor b                                         ; $653b: $a8
    jr c, jr_074_6500                             ; $653c: $38 $c2

    dec c                                         ; $653e: $0d
    rst $30                                       ; $653f: $f7
    ldh a, [$3d]                                  ; $6540: $f0 $3d
    jp nz, Jump_074_61d8                          ; $6542: $c2 $d8 $61

    cpl                                           ; $6545: $2f
    sub b                                         ; $6546: $90
    ld sp, hl                                     ; $6547: $f9
    nop                                           ; $6548: $00
    rst $38                                       ; $6549: $ff
    adc d                                         ; $654a: $8a
    ld hl, $0728                                  ; $654b: $21 $28 $07
    ret c                                         ; $654e: $d8

    rlca                                          ; $654f: $07
    cp h                                          ; $6550: $bc
    ld b, e                                       ; $6551: $43
    db $fc                                        ; $6552: $fc
    ret z                                         ; $6553: $c8

    ld h, c                                       ; $6554: $61
    add hl, sp                                    ; $6555: $39
    and e                                         ; $6556: $a3
    ld [bc], a                                    ; $6557: $02
    db $fd                                        ; $6558: $fd
    ld bc, $0dfe                                  ; $6559: $01 $fe $0d
    ldh a, [rIE]                                  ; $655c: $f0 $ff
    ld [bc], a                                    ; $655e: $02
    db $fd                                        ; $655f: $fd
    ld a, [hl+]                                   ; $6560: $2a
    ret nc                                        ; $6561: $d0

    dec hl                                        ; $6562: $2b
    sub $f5                                       ; $6563: $d6 $f5
    ld a, [bc]                                    ; $6565: $0a
    rst $38                                       ; $6566: $ff
    ld e, a                                       ; $6567: $5f
    add b                                         ; $6568: $80
    xor c                                         ; $6569: $a9
    ld [bc], a                                    ; $656a: $02
    ld a, a                                       ; $656b: $7f
    add b                                         ; $656c: $80
    db $10                                        ; $656d: $10
    rrca                                          ; $656e: $0f
    rst $38                                       ; $656f: $ff
    ldh [$1f], a                                  ; $6570: $e0 $1f
    add b                                         ; $6572: $80
    ld a, a                                       ; $6573: $7f
    ld d, a                                       ; $6574: $57
    xor d                                         ; $6575: $aa
    push af                                       ; $6576: $f5
    ld a, [bc]                                    ; $6577: $0a
    cp a                                          ; $6578: $bf
    sbc a                                         ; $6579: $9f
    jr nz, jr_074_6535                            ; $657a: $20 $b9

    ld [bc], a                                    ; $657c: $02
    ld h, a                                       ; $657d: $67
    sbc b                                         ; $657e: $98
    rrca                                          ; $657f: $0f
    and e                                         ; $6580: $a3
    ld c, d                                       ; $6581: $4a
    rst $38                                       ; $6582: $ff
    or l                                          ; $6583: $b5
    db $f4                                        ; $6584: $f4
    dec bc                                        ; $6585: $0b
    sbc l                                         ; $6586: $9d
    ld [hl+], a                                   ; $6587: $22
    cp d                                          ; $6588: $ba
    rlca                                          ; $6589: $07
    ld a, e                                       ; $658a: $7b
    ld e, a                                       ; $658b: $5f
    add b                                         ; $658c: $80
    inc c                                         ; $658d: $0c
    di                                            ; $658e: $f3
    rlca                                          ; $658f: $07
    ld hl, sp-$41                                 ; $6590: $f8 $bf
    and c                                         ; $6592: $a1
    add b                                         ; $6593: $80
    sbc [hl]                                      ; $6594: $9e
    nop                                           ; $6595: $00
    db $ed                                        ; $6596: $ed
    and b                                         ; $6597: $a0
    sbc d                                         ; $6598: $9a
    nop                                           ; $6599: $00
    ld l, b                                       ; $659a: $68
    rst $38                                       ; $659b: $ff
    sub b                                         ; $659c: $90
    pop bc                                        ; $659d: $c1
    rla                                           ; $659e: $17
    add sp, -$2f                                  ; $659f: $e8 $d1
    rst $20                                       ; $65a1: $e7
    nop                                           ; $65a2: $00
    ld l, $d1                                     ; $65a3: $2e $d1
    add b                                         ; $65a5: $80
    pop hl                                        ; $65a6: $e1
    ret nz                                        ; $65a7: $c0

    db $e3                                        ; $65a8: $e3
    or b                                          ; $65a9: $b0
    rrca                                          ; $65aa: $0f
    add $fc                                       ; $65ab: $c6 $fc
    sub b                                         ; $65ad: $90
    call nz, $e3d0                                ; $65ae: $c4 $d0 $e3
    dec a                                         ; $65b1: $3d
    ret nz                                        ; $65b2: $c0

    ld e, a                                       ; $65b3: $5f
    and b                                         ; $65b4: $a0
    inc [hl]                                      ; $65b5: $34
    ret                                           ; $65b6: $c9


    rst $10                                       ; $65b7: $d7
    ld e, d                                       ; $65b8: $5a
    and c                                         ; $65b9: $a1
    ld a, l                                       ; $65ba: $7d
    sub b                                         ; $65bb: $90
    ret nz                                        ; $65bc: $c0

    ld c, h                                       ; $65bd: $4c
    sub b                                         ; $65be: $90
    ret nz                                        ; $65bf: $c0

    ld d, l                                       ; $65c0: $55
    cp a                                          ; $65c1: $bf
    ei                                            ; $65c2: $fb
    adc [hl]                                      ; $65c3: $8e
    ld a, a                                       ; $65c4: $7f
    sub b                                         ; $65c5: $90
    jp z, $5ac8                                   ; $65c6: $ca $c8 $5a

    and c                                         ; $65c9: $a1
    inc a                                         ; $65ca: $3c
    jp $537f                                      ; $65cb: $c3 $7f $53


    xor [hl]                                      ; $65ce: $ae
    ld [hl], a                                    ; $65cf: $77
    call $bf42                                    ; $65d0: $cd $42 $bf
    dec d                                         ; $65d3: $15
    ld l, d                                       ; $65d4: $6a
    ld h, b                                       ; $65d5: $60
    cp $6b                                        ; $65d6: $fe $6b
    add c                                         ; $65d8: $81
    ret nz                                        ; $65d9: $c0

    ccf                                           ; $65da: $3f
    ld b, b                                       ; $65db: $40
    cp a                                          ; $65dc: $bf
    ld b, b                                       ; $65dd: $40
    rst $38                                       ; $65de: $ff
    or b                                          ; $65df: $b0
    cp a                                          ; $65e0: $bf
    rst $28                                       ; $65e1: $ef
    call z, $a4f3                                 ; $65e2: $cc $f3 $a4
    ei                                            ; $65e5: $fb
    dec d                                         ; $65e6: $15
    cp h                                          ; $65e7: $bc
    ret nz                                        ; $65e8: $c0

    dec b                                         ; $65e9: $05
    xor e                                         ; $65ea: $ab
    rst $38                                       ; $65eb: $ff
    ld [bc], a                                    ; $65ec: $02
    add hl, hl                                    ; $65ed: $29
    and [hl]                                      ; $65ee: $a6
    ld d, e                                       ; $65ef: $53
    or b                                          ; $65f0: $b0
    ret nz                                        ; $65f1: $c0

    ld [hl], l                                    ; $65f2: $75
    or b                                          ; $65f3: $b0
    ret z                                         ; $65f4: $c8

    ld [hl], a                                    ; $65f5: $77
    xor e                                         ; $65f6: $ab
    adc b                                         ; $65f7: $88
    call z, $cab0                                 ; $65f8: $cc $b0 $ca
    scf                                           ; $65fb: $37
    or b                                          ; $65fc: $b0
    call z, $b04e                                 ; $65fd: $cc $4e $b0
    adc $ae                                       ; $6600: $ce $ae
    db $db                                        ; $6602: $db
    ld sp, hl                                     ; $6603: $f9
    ld a, c                                       ; $6604: $79
    or b                                          ; $6605: $b0
    ret z                                         ; $6606: $c8

    cp a                                          ; $6607: $bf
    ld e, a                                       ; $6608: $5f
    or b                                          ; $6609: $b0
    jp $e21d                                      ; $660a: $c3 $1d $e2


    ei                                            ; $660d: $fb
    ld [$20f7], sp                                ; $660e: $08 $f7 $20
    pop hl                                        ; $6611: $e1
    dec l                                         ; $6612: $2d
    ret nc                                        ; $6613: $d0

    sbc d                                         ; $6614: $9a
    ld h, c                                       ; $6615: $61
    ld a, [hl]                                    ; $6616: $7e
    cp e                                          ; $6617: $bb
    add c                                         ; $6618: $81
    add sp, $30                                   ; $6619: $e8 $30
    and $61                                       ; $661b: $e6 $61
    ld e, $95                                     ; $661d: $1e $95
    or b                                          ; $661f: $b0
    ret nz                                        ; $6620: $c0

    add hl, sp                                    ; $6621: $39
    rst $30                                       ; $6622: $f7
    jp nz, $f00f                                  ; $6623: $c2 $0f $f0

    rst $38                                       ; $6626: $ff
    ld h, e                                       ; $6627: $63
    ld d, a                                       ; $6628: $57
    xor b                                         ; $6629: $a8
    ei                                            ; $662a: $fb
    nop                                           ; $662b: $00
    cp a                                          ; $662c: $bf
    sbc [hl]                                      ; $662d: $9e
    ld hl, $07a8                                  ; $662e: $21 $a8 $07
    ld [hl], b                                    ; $6631: $70
    adc a                                         ; $6632: $8f
    rst $28                                       ; $6633: $ef
    ld h, e                                       ; $6634: $63
    inc c                                         ; $6635: $0c
    rst $38                                       ; $6636: $ff
    rst $30                                       ; $6637: $f7
    reti                                          ; $6638: $d9


    ld l, a                                       ; $6639: $6f
    ld [$63ff], sp                                ; $663a: $08 $ff $63
    cp l                                          ; $663d: $bd
    sub $ff                                       ; $663e: $d6 $ff
    ld l, e                                       ; $6640: $6b
    ld l, d                                       ; $6641: $6a
    rst $18                                       ; $6642: $df
    jr nc, @-$1f                                  ; $6643: $30 $df

    ld d, e                                       ; $6645: $53
    db $fd                                        ; $6646: $fd
    nop                                           ; $6647: $00
    rst $38                                       ; $6648: $ff
    rst $38                                       ; $6649: $ff
    ld e, l                                       ; $664a: $5d
    rst $20                                       ; $664b: $e7
    ld [$40ff], sp                                ; $664c: $08 $ff $40
    cp a                                          ; $664f: $bf
    ld l, h                                       ; $6650: $6c
    ei                                            ; $6651: $fb
    or a                                          ; $6652: $b7
    ld c, b                                       ; $6653: $48
    call c, Call_074_40c0                         ; $6654: $dc $c0 $40
    rst $38                                       ; $6657: $ff
    inc b                                         ; $6658: $04
    ei                                            ; $6659: $fb
    ld e, d                                       ; $665a: $5a
    ld sp, hl                                     ; $665b: $f9
    and l                                         ; $665c: $a5
    dec sp                                        ; $665d: $3b
    add b                                         ; $665e: $80
    ld b, c                                       ; $665f: $41
    nop                                           ; $6660: $00
    rst $38                                       ; $6661: $ff
    rst $38                                       ; $6662: $ff
    ld e, d                                       ; $6663: $5a
    and l                                         ; $6664: $a5
    jr nz, @+$01                                  ; $6665: $20 $ff

    rst $18                                       ; $6667: $df
    inc h                                         ; $6668: $24
    rst $20                                       ; $6669: $e7
    ld h, [hl]                                    ; $666a: $66
    and l                                         ; $666b: $a5
    dec h                                         ; $666c: $25
    and $66                                       ; $666d: $e6 $66
    rst $38                                       ; $666f: $ff
    and l                                         ; $6670: $a5
    ld h, [hl]                                    ; $6671: $66
    and l                                         ; $6672: $a5
    and h                                         ; $6673: $a4
    ld h, a                                       ; $6674: $67
    ld h, [hl]                                    ; $6675: $66
    and l                                         ; $6676: $a5
    inc h                                         ; $6677: $24
    cp $70                                        ; $6678: $fe $70
    ret nz                                        ; $667a: $c0

    ld bc, $05fe                                  ; $667b: $01 $fe $05
    ei                                            ; $667e: $fb
    ld e, $e6                                     ; $667f: $1e $e6
    jr @+$01                                      ; $6681: $18 $ff

    add sp, $30                                   ; $6683: $e8 $30
    ret nc                                        ; $6685: $d0

    ld de, $63f3                                  ; $6686: $11 $f3 $63
    and d                                         ; $6689: $a2
    ld d, l                                       ; $668a: $55
    ei                                            ; $668b: $fb
    nop                                           ; $668c: $00
    cp d                                          ; $668d: $ba
    sbc [hl]                                      ; $668e: $9e
    add b                                         ; $668f: $80
    xor e                                         ; $6690: $ab
    nop                                           ; $6691: $00
    ld e, l                                       ; $6692: $5d
    nop                                           ; $6693: $00
    ld [$96fa], a                                 ; $6694: $ea $fa $96
    add b                                         ; $6697: $80
    xor [hl]                                      ; $6698: $ae
    sub d                                         ; $6699: $92
    add b                                         ; $669a: $80
    adc d                                         ; $669b: $8a
    nop                                           ; $669c: $00
    ld d, h                                       ; $669d: $54
    nop                                           ; $669e: $00
    xor d                                         ; $669f: $aa
    cp $f0                                        ; $66a0: $fe $f0
    ldh [$aa], a                                  ; $66a2: $e0 $aa
    nop                                           ; $66a4: $00
    dec d                                         ; $66a5: $15
    nop                                           ; $66a6: $00
    xor b                                         ; $66a7: $a8
    nop                                           ; $66a8: $00
    ld d, c                                       ; $66a9: $51
    rst $38                                       ; $66aa: $ff
    nop                                           ; $66ab: $00
    ld [$2200], sp                                ; $66ac: $08 $00 $22
    nop                                           ; $66af: $00
    sub h                                         ; $66b0: $94
    nop                                           ; $66b1: $00
    add hl, hl                                    ; $66b2: $29
    xor a                                         ; $66b3: $af
    nop                                           ; $66b4: $00
    ld b, h                                       ; $66b5: $44
    nop                                           ; $66b6: $00
    db $10                                        ; $66b7: $10
    db $e4                                        ; $66b8: $e4
    ldh [rP1], a                                  ; $66b9: $e0 $00
    ld [hl], e                                    ; $66bb: $73
    nop                                           ; $66bc: $00
    ld bc, $94ce                                  ; $66bd: $01 $ce $94
    nop                                           ; $66c0: $00
    jr nz, jr_074_66c3                            ; $66c1: $20 $00

jr_074_66c3:
    add b                                         ; $66c3: $80
    adc [hl]                                      ; $66c4: $8e
    nop                                           ; $66c5: $00
    rst $38                                       ; $66c6: $ff
    ldh a, [rNR23]                                ; $66c7: $f0 $18
    inc a                                         ; $66c9: $3c
    rst $38                                       ; $66ca: $ff
    ld a, [hl]                                    ; $66cb: $7e
    ld a, [hl]                                    ; $66cc: $7e
    rst $38                                       ; $66cd: $ff
    ld [hl], b                                    ; $66ce: $70
    rst $38                                       ; $66cf: $ff
    ld a, b                                       ; $66d0: $78
    db $fc                                        ; $66d1: $fc
    inc a                                         ; $66d2: $3c
    rst $38                                       ; $66d3: $ff
    cp $80                                        ; $66d4: $fe $80
    ld a, h                                       ; $66d6: $7c
    ld h, h                                       ; $66d7: $64
    nop                                           ; $66d8: $00
    nop                                           ; $66d9: $00
    ld [$ff1c], sp                                ; $66da: $08 $1c $ff
    ld a, $36                                     ; $66dd: $3e $36
    ld a, a                                       ; $66df: $7f
    and [hl]                                      ; $66e0: $a6
    ld a, a                                       ; $66e1: $7f
    add h                                         ; $66e2: $84
    ld l, a                                       ; $66e3: $6f
    ld b, b                                       ; $66e4: $40
    ei                                            ; $66e5: $fb
    ld c, $08                                     ; $66e6: $0e $08
    ld l, c                                       ; $66e8: $69
    ld [c], a                                     ; $66e9: $e2
    inc bc                                        ; $66ea: $03
    rst $38                                       ; $66eb: $ff

jr_074_66ec:
    rlca                                          ; $66ec: $07
    cp $1b                                        ; $66ed: $fe $1b
    rst $38                                       ; $66ef: $ff

jr_074_66f0:
    db $fc                                        ; $66f0: $fc
    ld e, $f1                                     ; $66f1: $1e $f1
    jr z, jr_074_66ec                             ; $66f3: $28 $f7

    ld a, d                                       ; $66f5: $7a
    push hl                                       ; $66f6: $e5
    ld [hl], b                                    ; $66f7: $70
    rst $38                                       ; $66f8: $ff
    rst $08                                       ; $66f9: $cf
    inc a                                         ; $66fa: $3c
    rst $38                                       ; $66fb: $ff
    ei                                            ; $66fc: $fb
    rst $20                                       ; $66fd: $e7
    db $fd                                        ; $66fe: $fd
    ld b, d                                       ; $66ff: $42
    rst $20                                       ; $6700: $e7
    cp a                                          ; $6701: $bf
    jr jr_074_674e                                ; $6702: $18 $4a

    or l                                          ; $6704: $b5
    nop                                           ; $6705: $00
    rst $38                                       ; $6706: $ff
    ld d, h                                       ; $6707: $54
    ld l, [hl]                                    ; $6708: $6e
    and b                                         ; $6709: $a0
    adc [hl]                                      ; $670a: $8e
    rst $38                                       ; $670b: $ff
    di                                            ; $670c: $f3
    sbc d                                         ; $670d: $9a
    rst $20                                       ; $670e: $e7
    ld c, l                                       ; $670f: $4d
    di                                            ; $6710: $f3
    sub a                                         ; $6711: $97
    jp hl                                         ; $6712: $e9


    rst $00                                       ; $6713: $c7
    rst $38                                       ; $6714: $ff
    ld sp, hl                                     ; $6715: $f9
    adc a                                         ; $6716: $8f

jr_074_6717:
    di                                            ; $6717: $f3
    ld e, [hl]                                    ; $6718: $5e
    rst $20                                       ; $6719: $e7
    adc [hl]                                      ; $671a: $8e
    di                                            ; $671b: $f3
    push af                                       ; $671c: $f5
    cp $0a                                        ; $671d: $fe $0a
    and b                                         ; $671f: $a0
    ldh [rIE], a                                  ; $6720: $e0 $ff
    adc d                                         ; $6722: $8a
    push af                                       ; $6723: $f5
    ld d, a                                       ; $6724: $57
    add sp, -$73                                  ; $6725: $e8 $8d
    rst $38                                       ; $6727: $ff
    ld a, [c]                                     ; $6728: $f2
    add hl, de                                    ; $6729: $19
    rst $20                                       ; $672a: $e7
    adc a                                         ; $672b: $8f
    di                                            ; $672c: $f3
    rst $18                                       ; $672d: $df
    sbc c                                         ; $672e: $99
    sbc a                                         ; $672f: $9f
    rst $38                                       ; $6730: $ff
    ld c, l                                       ; $6731: $4d
    daa                                           ; $6732: $27
    rla                                           ; $6733: $17
    and e                                         ; $6734: $a3
    di                                            ; $6735: $f3
    db $db                                        ; $6736: $db
    pop hl                                        ; $6737: $e1
    xor $ff                                       ; $6738: $ee $ff
    pop af                                        ; $673a: $f1
    or h                                          ; $673b: $b4
    ei                                            ; $673c: $fb
    ld b, c                                       ; $673d: $41
    rst $38                                       ; $673e: $ff
    rst $18                                       ; $673f: $df
    sbc a                                         ; $6740: $9f
    sbc h                                         ; $6741: $9c
    rst $38                                       ; $6742: $ff
    ld c, a                                       ; $6743: $4f
    ld h, $17                                     ; $6744: $26 $17
    and d                                         ; $6746: $a2
    di                                            ; $6747: $f3
    jp c, $eee1                                   ; $6748: $da $e1 $ee

    rst $38                                       ; $674b: $ff
    ld [hl], c                                    ; $674c: $71
    db $f4                                        ; $674d: $f4

jr_074_674e:
    dec sp                                        ; $674e: $3b
    ld sp, hl                                     ; $674f: $f9
    rst $38                                       ; $6750: $ff
    rst $20                                       ; $6751: $e7
    jr jr_074_6717                                ; $6752: $18 $c3

    rst $38                                       ; $6754: $ff
    inc h                                         ; $6755: $24
    rst $20                                       ; $6756: $e7
    inc h                                         ; $6757: $24
    rst $38                                       ; $6758: $ff
    inc a                                         ; $6759: $3c
    db $db                                        ; $675a: $db
    inc a                                         ; $675b: $3c
    rst $20                                       ; $675c: $e7
    db $fd                                        ; $675d: $fd
    jr jr_074_66f0                                ; $675e: $18 $90

    ld b, c                                       ; $6760: $41
    ld h, a                                       ; $6761: $67
    sbc d                                         ; $6762: $9a
    call nz, $0b8a                                ; $6763: $c4 $8a $0b
    ret nz                                        ; $6766: $c0

    rst $38                                       ; $6767: $ff
    ld b, d                                       ; $6768: $42
    and b                                         ; $6769: $a0
    db $10                                        ; $676a: $10
    ret nz                                        ; $676b: $c0

    jp hl                                         ; $676c: $e9


    add b                                         ; $676d: $80
    ld h, b                                       ; $676e: $60
    sub c                                         ; $676f: $91
    rst $38                                       ; $6770: $ff
    adc e                                         ; $6771: $8b
    ld h, b                                       ; $6772: $60
    ld d, $a9                                     ; $6773: $16 $a9
    pop hl                                        ; $6775: $e1
    dec bc                                        ; $6776: $0b
    adc d                                         ; $6777: $8a
    daa                                           ; $6778: $27
    ld a, a                                       ; $6779: $7f
    daa                                           ; $677a: $27
    rrca                                          ; $677b: $0f
    xor l                                         ; $677c: $ad
    rra                                           ; $677d: $1f
    sub $3f                                       ; $677e: $d6 $3f
    ld a, l                                       ; $6780: $7d
    halt                                          ; $6781: $76
    add b                                         ; $6782: $80
    cp $20                                        ; $6783: $fe $20
    daa                                           ; $6785: $27
    inc h                                         ; $6786: $24
    db $db                                        ; $6787: $db
    inc c                                         ; $6788: $0c
    rst $30                                       ; $6789: $f7
    ld [hl], $cf                                  ; $678a: $36 $cf
    jr @+$01                                      ; $678c: $18 $ff

    rst $20                                       ; $678e: $e7
    sub $0f                                       ; $678f: $d6 $0f
    ld e, c                                       ; $6791: $59
    and [hl]                                      ; $6792: $a6
    ld b, d                                       ; $6793: $42
    rrca                                          ; $6794: $0f
    ei                                            ; $6795: $fb
    ld a, a                                       ; $6796: $7f
    nop                                           ; $6797: $00
    inc e                                         ; $6798: $1c
    inc bc                                        ; $6799: $03
    cp a                                          ; $679a: $bf

jr_074_679b:
    nop                                           ; $679b: $00
    sbc c                                         ; $679c: $99
    ld h, [hl]                                    ; $679d: $66
    jr c, jr_074_67c1                             ; $679e: $38 $21

    sbc a                                         ; $67a0: $9f

jr_074_67a1:
    dec a                                         ; $67a1: $3d
    jp nz, $e718                                  ; $67a2: $c2 $18 $e7

    add hl, de                                    ; $67a5: $19
    jr nc, jr_074_67cc                            ; $67a6: $30 $24

    db $10                                        ; $67a8: $10
    add c                                         ; $67a9: $81
    ld d, [hl]                                    ; $67aa: $56
    rst $08                                       ; $67ab: $cf
    xor c                                         ; $67ac: $a9
    ld [hl+], a                                   ; $67ad: $22
    rst $38                                       ; $67ae: $ff
    ld [hl], l                                    ; $67af: $75
    sub b                                         ; $67b0: $90
    add h                                         ; $67b1: $84
    add b                                         ; $67b2: $80
    and e                                         ; $67b3: $a3
    ld de, $ffef                                  ; $67b4: $11 $ef $ff
    rra                                           ; $67b7: $1f
    ldh [$3d], a                                  ; $67b8: $e0 $3d
    rst $00                                       ; $67ba: $c7
    inc sp                                        ; $67bb: $33
    rst $08                                       ; $67bc: $cf
    dec l                                         ; $67bd: $2d
    rst $10                                       ; $67be: $d7
    cp $e0                                        ; $67bf: $fe $e0

jr_074_67c1:
    ld h, l                                       ; $67c1: $65
    jr z, jr_074_679b                             ; $67c2: $28 $d7

    ld b, h                                       ; $67c4: $44
    ei                                            ; $67c5: $fb
    or h                                          ; $67c6: $b4
    rst $38                                       ; $67c7: $ff
    ret nc                                        ; $67c8: $d0

    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    ei                                            ; $67cb: $fb

jr_074_67cc:
    inc e                                         ; $67cc: $1c
    db $ed                                        ; $67cd: $ed
    ld h, $8b                                     ; $67ce: $26 $8b
    ld b, [hl]                                    ; $67d0: $46
    db $db                                        ; $67d1: $db
    rst $38                                       ; $67d2: $ff
    ld h, [hl]                                    ; $67d3: $66
    add $4f                                       ; $67d4: $c6 $4f
    dec bc                                        ; $67d6: $0b
    add a                                         ; $67d7: $87
    sbc e                                         ; $67d8: $9b
    add a                                         ; $67d9: $87
    or e                                          ; $67da: $b3
    rst $38                                       ; $67db: $ff
    rst $08                                       ; $67dc: $cf
    xor a                                         ; $67dd: $af
    sbc a                                         ; $67de: $9f
    and $5f                                       ; $67df: $e6 $5f
    cp a                                          ; $67e1: $bf
    ld a, [hl]                                    ; $67e2: $7e
    db $eb                                        ; $67e3: $eb
    rst $18                                       ; $67e4: $df
    inc a                                         ; $67e5: $3c
    rst $38                                       ; $67e6: $ff
    ld l, $ef                                     ; $67e7: $2e $ef
    cpl                                           ; $67e9: $2f
    ld hl, $1e60                                  ; $67ea: $21 $60 $1e
    inc e                                         ; $67ed: $1c

jr_074_67ee:
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    ld l, $e7                                     ; $67f0: $2e $e7
    ld c, d                                       ; $67f2: $4a
    rst $00                                       ; $67f3: $c7
    ld e, d                                       ; $67f4: $5a
    rst $20                                       ; $67f5: $e7
    ld b, a                                       ; $67f6: $47

jr_074_67f7:
    ei                                            ; $67f7: $fb
    rst $08                                       ; $67f8: $cf
    adc e                                         ; $67f9: $8b
    ldh [$e4], a                                  ; $67fa: $e0 $e4
    ld h, [hl]                                    ; $67fc: $66
    rst $18                                       ; $67fd: $df
    ld a, [hl]                                    ; $67fe: $7e
    rst $38                                       ; $67ff: $ff
    jr z, jr_074_67a1                             ; $6800: $28 $9f

    rst $38                                       ; $6802: $ff
    ld a, $ef                                     ; $6803: $3e $ef
    cpl                                           ; $6805: $2f
    rst $28                                       ; $6806: $ef
    pop hl                                        ; $6807: $e1
    ldh [rNR10], a                                ; $6808: $e0 $10
    ret nz                                        ; $680a: $c0

    pop de                                        ; $680b: $d1
    rst $28                                       ; $680c: $ef
    ld l, a                                       ; $680d: $6f
    jr @+$01                                      ; $680e: $18 $ff

    ld h, a                                       ; $6810: $67
    ld b, d                                       ; $6811: $42
    ret nz                                        ; $6812: $c0

    ld a, [hl]                                    ; $6813: $7e
    rst $38                                       ; $6814: $ff
    jr c, jr_074_67ee                             ; $6815: $38 $d7

    rst $18                                       ; $6817: $df
    ld b, e                                       ; $6818: $43
    db $fd                                        ; $6819: $fd
    xor b                                         ; $681a: $a8
    ld [bc], a                                    ; $681b: $02
    db $db                                        ; $681c: $db
    dec e                                         ; $681d: $1d
    ldh [$e7], a                                  ; $681e: $e0 $e7
    ld a, [hl]                                    ; $6820: $7e
    cp $1b                                        ; $6821: $fe $1b
    ldh [rNR23], a                                ; $6823: $e0 $18
    rst $20                                       ; $6825: $e7
    jr nz, jr_074_67f7                            ; $6826: $20 $cf

    or [hl]                                       ; $6828: $b6
    dec hl                                        ; $6829: $2b
    db $ed                                        ; $682a: $ed
    cp a                                          ; $682b: $bf
    cp d                                          ; $682c: $ba
    dec sp                                        ; $682d: $3b
    rst $18                                       ; $682e: $df
    halt                                          ; $682f: $76
    rst $18                                       ; $6830: $df
    ld d, h                                       ; $6831: $54
    ld hl, sp+$00                                 ; $6832: $f8 $00
    ld a, [hl+]                                   ; $6834: $2a
    add $cb                                       ; $6835: $c6 $cb
    ld [hl+], a                                   ; $6837: $22
    jr @+$01                                      ; $6838: $18 $ff

    ldh [$e3], a                                  ; $683a: $e0 $e3
    rst $38                                       ; $683c: $ff
    pop bc                                        ; $683d: $c1
    adc h                                         ; $683e: $8c
    ld hl, $00e7                                  ; $683f: $21 $e7 $00
    push af                                       ; $6842: $f5
    db $db                                        ; $6843: $db
    cp $e0                                        ; $6844: $fe $e0
    add c                                         ; $6846: $81
    ld hl, sp-$20                                 ; $6847: $f8 $e0
    rst $38                                       ; $6849: $ff
    nop                                           ; $684a: $00
    xor e                                         ; $684b: $ab
    rst $38                                       ; $684c: $ff
    rst $38                                       ; $684d: $ff
    dec b                                         ; $684e: $05
    cp $ab                                        ; $684f: $fe $ab
    db $fc                                        ; $6851: $fc
    dec c                                         ; $6852: $0d
    ld a, [$fdb2]                                 ; $6853: $fa $b2 $fd
    rst $38                                       ; $6856: $ff
    ld d, l                                       ; $6857: $55
    ld [$d7a8], a                                 ; $6858: $ea $a8 $d7
    db $f4                                        ; $685b: $f4
    adc e                                         ; $685c: $8b
    or b                                          ; $685d: $b0
    rrca                                          ; $685e: $0f
    ld a, a                                       ; $685f: $7f
    sbc $7f                                       ; $6860: $de $7f
    add hl, hl                                    ; $6862: $29
    cp $55                                        ; $6863: $fe $55
    rst $38                                       ; $6865: $ff
    cp [hl]                                       ; $6866: $be
    ld l, $e0                                     ; $6867: $2e $e0
    cp a                                          ; $6869: $bf
    xor d                                         ; $686a: $aa
    rst $38                                       ; $686b: $ff
    ret nz                                        ; $686c: $c0

    rst $38                                       ; $686d: $ff
    sbc b                                         ; $686e: $98
    ld h, a                                       ; $686f: $67
    ld b, b                                       ; $6870: $40
    pop hl                                        ; $6871: $e1
    ld e, b                                       ; $6872: $58
    db $f4                                        ; $6873: $f4
    ld b, b                                       ; $6874: $40
    ld b, $d0                                     ; $6875: $06 $d0
    ld c, e                                       ; $6877: $4b
    dec hl                                        ; $6878: $2b
    db $10                                        ; $6879: $10
    ld l, b                                       ; $687a: $68
    inc a                                         ; $687b: $3c
    inc bc                                        ; $687c: $03
    add h                                         ; $687d: $84
    ld [hl], e                                    ; $687e: $73
    rst $28                                       ; $687f: $ef
    or h                                          ; $6880: $b4
    db $eb                                        ; $6881: $eb
    inc hl                                        ; $6882: $23
    call z, $e180                                 ; $6883: $cc $80 $e1
    ld a, [hl-]                                   ; $6886: $3a
    rst $18                                       ; $6887: $df
    rst $30                                       ; $6888: $f7
    ld a, a                                       ; $6889: $7f
    ld e, [hl]                                    ; $688a: $5e
    push de                                       ; $688b: $d5
    ld a, [hl]                                    ; $688c: $7e
    db $dd                                        ; $688d: $dd
    ld a, a                                       ; $688e: $7f
    ei                                            ; $688f: $fb
    ld l, $68                                     ; $6890: $2e $68
    ld h, e                                       ; $6892: $63
    rst $38                                       ; $6893: $ff
    add hl, de                                    ; $6894: $19
    rst $20                                       ; $6895: $e7
    rla                                           ; $6896: $17
    xor $3f                                       ; $6897: $ee $3f
    ret z                                         ; $6899: $c8

    cpl                                           ; $689a: $2f
    ret c                                         ; $689b: $d8

    rst $10                                       ; $689c: $d7
    rra                                           ; $689d: $1f
    ldh a, [$fd]                                  ; $689e: $f0 $fd
    ld l, d                                       ; $68a0: $6a
    nop                                           ; $68a1: $00
    jp c, Jump_074_4008                           ; $68a2: $da $08 $40

    xor a                                         ; $68a5: $af
    cp $bf                                        ; $68a6: $fe $bf
    rst $18                                       ; $68a8: $df
    ld hl, sp+$6f                                 ; $68a9: $f8 $6f
    ld hl, sp-$21                                 ; $68ab: $f8 $df
    ldh a, [$83]                                  ; $68ad: $f0 $83
    ld b, b                                       ; $68af: $40
    inc a                                         ; $68b0: $3c
    cp $e6                                        ; $68b1: $fe $e6
    ld b, c                                       ; $68b3: $41
    ccf                                           ; $68b4: $3f
    jp $c73e                                      ; $68b5: $c3 $3e $c7


    db $dd                                        ; $68b8: $dd
    cpl                                           ; $68b9: $2f
    jp c, Jump_000_2ffd                           ; $68ba: $da $fd $2f

    ldh a, [$e5]                                  ; $68bd: $f0 $e5
    dec a                                         ; $68bf: $3d
    jp $c73c                                      ; $68c0: $c3 $3c $c7


    ret nc                                        ; $68c3: $d0

jr_074_68c4:
    cpl                                           ; $68c4: $2f
    ei                                            ; $68c5: $fb
    ret c                                         ; $68c6: $d8

    cpl                                           ; $68c7: $2f
    ld d, e                                       ; $68c8: $53
    jr nz, jr_074_68c4                            ; $68c9: $20 $f9

    db $fc                                        ; $68cb: $fc
    ei                                            ; $68cc: $fb
    cp $e1                                        ; $68cd: $fe $e1
    rst $28                                       ; $68cf: $ef
    db $f4                                        ; $68d0: $f4
    set 4, b                                      ; $68d1: $cb $e0
    rst $18                                       ; $68d3: $df
    cp $e1                                        ; $68d4: $fe $e1
    cp a                                          ; $68d6: $bf
    ld a, a                                       ; $68d7: $7f
    ld e, a                                       ; $68d8: $5f
    rst $38                                       ; $68d9: $ff
    cp a                                          ; $68da: $bf
    rra                                           ; $68db: $1f
    rst $38                                       ; $68dc: $ff
    scf                                           ; $68dd: $37
    rst $08                                       ; $68de: $cf
    dec bc                                        ; $68df: $0b
    rst $30                                       ; $68e0: $f7
    ld h, e                                       ; $68e1: $63
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    db $d3                                        ; $68e4: $d3
    sbc a                                         ; $68e5: $9f
    sub e                                         ; $68e6: $93
    sbc a                                         ; $68e7: $9f
    ld hl, sp-$79                                 ; $68e8: $f8 $87
    ret nc                                        ; $68ea: $d0

    rst $38                                       ; $68eb: $ff
    cpl                                           ; $68ec: $2f
    add b                                         ; $68ed: $80
    ld a, a                                       ; $68ee: $7f
    adc h                                         ; $68ef: $8c
    ld a, a                                       ; $68f0: $7f
    sbc d                                         ; $68f1: $9a
    ld [hl], e                                    ; $68f2: $73
    ld d, d                                       ; $68f3: $52
    rst $38                                       ; $68f4: $ff
    or e                                          ; $68f5: $b3
    adc h                                         ; $68f6: $8c
    rst $38                                       ; $68f7: $ff
    ldh a, [$ef]                                  ; $68f8: $f0 $ef
    ld l, l                                       ; $68fa: $6d
    di                                            ; $68fb: $f3
    ld [bc], a                                    ; $68fc: $02
    ei                                            ; $68fd: $fb
    db $fd                                        ; $68fe: $fd
    ret nz                                        ; $68ff: $c0

    dec l                                         ; $6900: $2d
    jr nz, @+$04                                  ; $6901: $20 $02

    rst $38                                       ; $6903: $ff
    ld d, $ff                                     ; $6904: $16 $ff
    ld bc, $ffff                                  ; $6906: $01 $ff $ff
    rla                                           ; $6909: $17
    rst $38                                       ; $690a: $ff
    add sp, -$09                                  ; $690b: $e8 $f7
    pop af                                        ; $690d: $f1
    rst $38                                       ; $690e: $ff
    cp $ff                                        ; $690f: $fe $ff
    cp $ff                                        ; $6911: $fe $ff
    cp $f7                                        ; $6913: $fe $f7
    cp $ad                                        ; $6915: $fe $ad
    db $fc                                        ; $6917: $fc
    ld b, [hl]                                    ; $6918: $46
    cp a                                          ; $6919: $bf
    cp $eb                                        ; $691a: $fe $eb
    rst $38                                       ; $691c: $ff
    scf                                           ; $691d: $37
    rst $38                                       ; $691e: $ff
    adc a                                         ; $691f: $8f
    db $ed                                        ; $6920: $ed
    nop                                           ; $6921: $00
    ld a, a                                       ; $6922: $7f
    rst $38                                       ; $6923: $ff
    ld a, a                                       ; $6924: $7f
    ld l, a                                       ; $6925: $6f
    ld a, a                                       ; $6926: $7f
    ld a, $3f                                     ; $6927: $3e $3f
    ld a, e                                       ; $6929: $7b
    ld a, a                                       ; $692a: $7f
    rst $38                                       ; $692b: $ff
    cp $fe                                        ; $692c: $fe $fe
    nop                                           ; $692e: $00
    ld a, [$fcfd]                                 ; $692f: $fa $fd $fc
    ei                                            ; $6932: $fb
    pop hl                                        ; $6933: $e1
    rst $38                                       ; $6934: $ff
    ret nc                                        ; $6935: $d0

    rst $38                                       ; $6936: $ff
    rst $28                                       ; $6937: $ef
    push hl                                       ; $6938: $e5
    rst $18                                       ; $6939: $df
    jp z, $e7ff                                   ; $693a: $ca $ff $e7

    rst $18                                       ; $693d: $df
    ccf                                           ; $693e: $3f
    ei                                            ; $693f: $fb
    rst $38                                       ; $6940: $ff
    rra                                           ; $6941: $1f
    ld [hl+], a                                   ; $6942: $22
    nop                                           ; $6943: $00
    ld d, a                                       ; $6944: $57
    rst $38                                       ; $6945: $ff
    db $eb                                        ; $6946: $eb
    rst $38                                       ; $6947: $ff
    ld a, a                                       ; $6948: $7f
    ei                                            ; $6949: $fb
    rst $38                                       ; $694a: $ff
    db $db                                        ; $694b: $db

jr_074_694c:
    jp $8b00                                      ; $694c: $c3 $00 $8b


    rst $38                                       ; $694f: $ff
    ld b, l                                       ; $6950: $45
    cp a                                          ; $6951: $bf
    sub a                                         ; $6952: $97
    rst $38                                       ; $6953: $ff
    ld a, a                                       ; $6954: $7f
    dec hl                                        ; $6955: $2b
    rst $38                                       ; $6956: $ff
    sbc a                                         ; $6957: $9f
    ld a, a                                       ; $6958: $7f
    dec l                                         ; $6959: $2d
    rst $38                                       ; $695a: $ff
    sbc a                                         ; $695b: $9f
    cp d                                          ; $695c: $ba
    ld [$75e0], a                                 ; $695d: $ea $e0 $75
    ret nz                                        ; $6960: $c0

    nop                                           ; $6961: $00
    rst $38                                       ; $6962: $ff
    rst $38                                       ; $6963: $ff
    ld a, [hl]                                    ; $6964: $7e
    xor c                                         ; $6965: $a9
    nop                                           ; $6966: $00
    cp $3b                                        ; $6967: $fe $3b
    rst $38                                       ; $6969: $ff
    ld sp, hl                                     ; $696a: $f9
    and e                                         ; $696b: $a3
    nop                                           ; $696c: $00
    push hl                                       ; $696d: $e5
    rst $38                                       ; $696e: $ff
    di                                            ; $696f: $f3
    and b                                         ; $6970: $a0
    pop hl                                        ; $6971: $e1
    sbc h                                         ; $6972: $9c
    ldh [$5f], a                                  ; $6973: $e0 $5f
    xor $fe                                       ; $6975: $ee $fe
    ld e, [hl]                                    ; $6977: $5e
    cp $fb                                        ; $6978: $fe $fb
    ld b, [hl]                                    ; $697a: $46
    jr nz, jr_074_694c                            ; $697b: $20 $cf

    and b                                         ; $697d: $a0
    ld [c], a                                     ; $697e: $e2
    db $f4                                        ; $697f: $f4
    db $fc                                        ; $6980: $fc

jr_074_6981:
    db $e3                                        ; $6981: $e3
    cp $e8                                        ; $6982: $fe $e8
    cp $93                                        ; $6984: $fe $93
    nop                                           ; $6986: $00
    ld hl, sp-$01                                 ; $6987: $f8 $ff
    ldh a, [$fb]                                  ; $6989: $f0 $fb
    rst $38                                       ; $698b: $ff
    rst $20                                       ; $698c: $e7
    push af                                       ; $698d: $f5
    set 6, d                                      ; $698e: $cb $f2
    adc l                                         ; $6990: $8d
    pop af                                        ; $6991: $f1
    ld c, $f0                                     ; $6992: $0e $f0
    ld l, l                                       ; $6994: $6d
    rrca                                          ; $6995: $0f
    cp $e1                                        ; $6996: $fe $e1
    add sp, $17                                   ; $6998: $e8 $17
    ld h, b                                       ; $699a: $60
    inc bc                                        ; $699b: $03
    ld a, a                                       ; $699c: $7f
    rst $38                                       ; $699d: $ff
    jr z, jr_074_6981                             ; $699e: $28 $e1

    adc a                                         ; $69a0: $8f
    cpl                                           ; $69a1: $2f
    rst $18                                       ; $69a2: $df
    rla                                           ; $69a3: $17

jr_074_69a4:
    rst $28                                       ; $69a4: $ef
    call z, $9bea                                 ; $69a5: $cc $ea $9b
    pop hl                                        ; $69a8: $e1
    ccf                                           ; $69a9: $3f
    inc bc                                        ; $69aa: $03
    ldh [rIE], a                                  ; $69ab: $e0 $ff
    db $fc                                        ; $69ad: $fc
    jp $83fc                                      ; $69ae: $c3 $fc $83


    db $fc                                        ; $69b1: $fc
    inc bc                                        ; $69b2: $03
    db $fc                                        ; $69b3: $fc
    inc bc                                        ; $69b4: $03
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    ldh [$ef], a                                  ; $69b7: $e0 $ef
    ret nc                                        ; $69b9: $d0

    rst $18                                       ; $69ba: $df
    and b                                         ; $69bb: $a0
    ld l, $d1                                     ; $69bc: $2e $d1
    rst $38                                       ; $69be: $ff
    sub [hl]                                      ; $69bf: $96
    ld l, e                                       ; $69c0: $6b
    ld c, h                                       ; $69c1: $4c
    or a                                          ; $69c2: $b7
    jr z, jr_074_69a4                             ; $69c3: $28 $df

    dec d                                         ; $69c5: $15
    rst $28                                       ; $69c6: $ef
    ld a, a                                       ; $69c7: $7f
    ret nz                                        ; $69c8: $c0

    ccf                                           ; $69c9: $3f
    add h                                         ; $69ca: $84
    ld a, a                                       ; $69cb: $7f
    ld a, [bc]                                    ; $69cc: $0a
    rst $38                                       ; $69cd: $ff
    inc d                                         ; $69ce: $14
    ld d, $c0                                     ; $69cf: $16 $c0
    db $fd                                        ; $69d1: $fd
    ld d, l                                       ; $69d2: $55
    ld d, b                                       ; $69d3: $50
    ret nz                                        ; $69d4: $c0

    ld d, l                                       ; $69d5: $55
    rst $38                                       ; $69d6: $ff
    dec bc                                        ; $69d7: $0b
    rst $30                                       ; $69d8: $f7
    inc bc                                        ; $69d9: $03
    rst $38                                       ; $69da: $ff
    push bc                                       ; $69db: $c5
    ei                                            ; $69dc: $fb
    cp $e0                                        ; $69dd: $fe $e0
    rst $38                                       ; $69df: $ff
    db $fc                                        ; $69e0: $fc
    ld [c], a                                     ; $69e1: $e2
    ccf                                           ; $69e2: $3f
    ret nz                                        ; $69e3: $c0

    ld a, e                                       ; $69e4: $7b
    ld [$0ff7], a                                 ; $69e5: $ea $f7 $0f
    rst $38                                       ; $69e8: $ff
    cp $fd                                        ; $69e9: $fe $fd
    db $fd                                        ; $69eb: $fd
    ld a, [$f5fa]                                 ; $69ec: $fa $fa $f5
    ldh a, [$ef]                                  ; $69ef: $f0 $ef
    ld sp, hl                                     ; $69f1: $f9
    ret nz                                        ; $69f2: $c0

    cp b                                          ; $69f3: $b8
    ld b, b                                       ; $69f4: $40
    adc $e1                                       ; $69f5: $ce $e1
    db $fc                                        ; $69f7: $fc
    inc bc                                        ; $69f8: $03
    ld d, h                                       ; $69f9: $54
    xor e                                         ; $69fa: $ab
    xor h                                         ; $69fb: $ac
    cp a                                          ; $69fc: $bf
    ld d, a                                       ; $69fd: $57
    ld a, [de]                                    ; $69fe: $1a
    rst $28                                       ; $69ff: $ef
    dec [hl]                                      ; $6a00: $35
    rst $18                                       ; $6a01: $df
    ld a, [hl+]                                   ; $6a02: $2a
    ld c, $e0                                     ; $6a03: $0e $e0
    rst $38                                       ; $6a05: $ff
    cp a                                          ; $6a06: $bf
    rst $38                                       ; $6a07: $ff
    ld a, [bc]                                    ; $6a08: $0a
    rst $30                                       ; $6a09: $f7
    dec b                                         ; $6a0a: $05
    ei                                            ; $6a0b: $fb
    ld [bc], a                                    ; $6a0c: $02
    cp d                                          ; $6a0d: $ba
    ld h, b                                       ; $6a0e: $60
    ld a, [hl]                                    ; $6a0f: $7e
    ld l, d                                       ; $6a10: $6a
    jr nc, jr_074_6a73                            ; $6a11: $30 $60

    ld a, a                                       ; $6a13: $7f
    inc l                                         ; $6a14: $2c
    ld h, d                                       ; $6a15: $62
    ld d, a                                       ; $6a16: $57
    ld d, h                                       ; $6a17: $54
    ret nz                                        ; $6a18: $c0

    sbc $fd                                       ; $6a19: $de $fd
    ld b, l                                       ; $6a1b: $45
    ldh [rIE], a                                  ; $6a1c: $e0 $ff
    rst $38                                       ; $6a1e: $ff
    ld [$d5ff], a                                 ; $6a1f: $ea $ff $d5
    rst $38                                       ; $6a22: $ff
    sbc $a1                                       ; $6a23: $de $a1
    xor d                                         ; $6a25: $aa
    rst $38                                       ; $6a26: $ff
    ld d, l                                       ; $6a27: $55
    ld d, [hl]                                    ; $6a28: $56
    xor e                                         ; $6a29: $ab
    dec c                                         ; $6a2a: $0d
    rst $30                                       ; $6a2b: $f7
    ld a, [de]                                    ; $6a2c: $1a
    rst $28                                       ; $6a2d: $ef
    dec d                                         ; $6a2e: $15
    ld d, d                                       ; $6a2f: $52
    ret c                                         ; $6a30: $d8

    ret nz                                        ; $6a31: $c0

    ld a, a                                       ; $6a32: $7f
    sub b                                         ; $6a33: $90
    ldh [$d0], a                                  ; $6a34: $e0 $d0
    db $e3                                        ; $6a36: $e3
    cp [hl]                                       ; $6a37: $be
    db $ec                                        ; $6a38: $ec
    ret nz                                        ; $6a39: $c0

    cp a                                          ; $6a3a: $bf
    ld d, c                                       ; $6a3b: $51
    pop hl                                        ; $6a3c: $e1
    rst $38                                       ; $6a3d: $ff
    cp $ff                                        ; $6a3e: $fe $ff
    ld hl, sp-$07                                 ; $6a40: $f8 $f9
    ldh [$e7], a                                  ; $6a42: $e0 $e7
    add b                                         ; $6a44: $80
    sbc c                                         ; $6a45: $99
    rst $38                                       ; $6a46: $ff
    nop                                           ; $6a47: $00
    and $00                                       ; $6a48: $e6 $00
    sbc b                                         ; $6a4a: $98
    nop                                           ; $6a4b: $00
    pop hl                                        ; $6a4c: $e1
    nop                                           ; $6a4d: $00
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    ld a, a                                       ; $6a50: $7f
    sbc a                                         ; $6a51: $9f
    rra                                           ; $6a52: $1f
    add a                                         ; $6a53: $87
    rlca                                          ; $6a54: $07
    add c                                         ; $6a55: $81
    ld bc, $ff80                                  ; $6a56: $01 $80 $ff
    nop                                           ; $6a59: $00
    ld h, b                                       ; $6a5a: $60
    nop                                           ; $6a5b: $00
    jr jr_074_6a5e                                ; $6a5c: $18 $00

jr_074_6a5e:
    add $00                                       ; $6a5e: $c6 $00
    add a                                         ; $6a60: $87
    rst $38                                       ; $6a61: $ff
    nop                                           ; $6a62: $00
    ld e, $00                                     ; $6a63: $1e $00
    ld a, h                                       ; $6a65: $7c
    nop                                           ; $6a66: $00
    db $ec                                        ; $6a67: $ec
    add b                                         ; $6a68: $80
    call nz, $80ff                                ; $6a69: $c4 $ff $80
    push bc                                       ; $6a6c: $c5
    add b                                         ; $6a6d: $80
    db $fc                                        ; $6a6e: $fc
    add b                                         ; $6a6f: $80
    call nc, $f180                                ; $6a70: $d4 $80 $f1

jr_074_6a73:
    cp [hl]                                       ; $6a73: $be
    ld a, [c]                                     ; $6a74: $f2
    ldh [$3f], a                                  ; $6a75: $e0 $3f
    ld bc, $0137                                  ; $6a77: $01 $37 $01
    inc hl                                        ; $6a7a: $23
    cp $e0                                        ; $6a7b: $fe $e0
    ccf                                           ; $6a7d: $3f
    rlca                                          ; $6a7e: $07
    ld bc, $012b                                  ; $6a7f: $01 $2b $01
    nop                                           ; $6a82: $00
    nop                                           ; $6a83: $00
    nop                                           ; $6a84: $00
    cp a                                          ; $6a85: $bf
    ld b, [hl]                                    ; $6a86: $46
    ld b, [hl]                                    ; $6a87: $46
    ld b, [hl]                                    ; $6a88: $46
    ret z                                         ; $6a89: $c8

    ret                                           ; $6a8a: $c9


    jp z, $ebfa                                   ; $6a8b: $ca $fa $eb

    call nz, $c56f                                ; $6a8e: $c4 $6f $c5
    ld b, [hl]                                    ; $6a91: $46
    cp [hl]                                       ; $6a92: $be
    cp a                                          ; $6a93: $bf
    rst $20                                       ; $6a94: $e7
    ldh [$c0], a                                  ; $6a95: $e0 $c0
    pop bc                                        ; $6a97: $c1
    ld [c], a                                     ; $6a98: $e2
    ldh [$e6], a                                  ; $6a99: $e0 $e6
    ld a, [$bce3]                                 ; $6a9b: $fa $e3 $bc
    cp l                                          ; $6a9e: $bd
    push af                                       ; $6a9f: $f5
    pop hl                                        ; $6aa0: $e1
    sub $ee                                       ; $6aa1: $d6 $ee
    ld b, [hl]                                    ; $6aa3: $46
    ret z                                         ; $6aa4: $c8

    ret nc                                        ; $6aa5: $d0

    rst $18                                       ; $6aa6: $df
    set 1, h                                      ; $6aa7: $cb $cc
    call $cfce                                    ; $6aa9: $cd $ce $cf
    ld a, [$46ea]                                 ; $6aac: $fa $ea $46
    add $c1                                       ; $6aaf: $c6 $c1
    rst $00                                       ; $6ab1: $c7
    push bc                                       ; $6ab2: $c5
    db $e4                                        ; $6ab3: $e4
    db $fc                                        ; $6ab4: $fc
    rst $20                                       ; $6ab5: $e7
    or b                                          ; $6ab6: $b0
    pop hl                                        ; $6ab7: $e1
    sub $ef                                       ; $6ab8: $d6 $ef
    call nz, $d6e0                                ; $6aba: $c4 $e0 $d6
    pop de                                        ; $6abd: $d1
    rst $08                                       ; $6abe: $cf
    jp nc, $d4d3                                  ; $6abf: $d2 $d3 $d4

    push de                                       ; $6ac2: $d5
    ld a, [$c6ea]                                 ; $6ac3: $fa $ea $c6
    db $e3                                        ; $6ac6: $e3
    sbc l                                         ; $6ac7: $9d
    sbc a                                         ; $6ac8: $9f
    dec c                                         ; $6ac9: $0d
    sbc e                                         ; $6aca: $9b
    rst $38                                       ; $6acb: $ff
    push hl                                       ; $6acc: $e5
    sbc a                                         ; $6acd: $9f
    sbc l                                         ; $6ace: $9d
    ld [hl], l                                    ; $6acf: $75
    ld [c], a                                     ; $6ad0: $e2
    sub $ef                                       ; $6ad1: $d6 $ef
    call nz, Call_074_43e0                        ; $6ad3: $c4 $e0 $43
    jp hl                                         ; $6ad6: $e9


    or e                                          ; $6ad7: $b3
    jp nz, $8bc3                                  ; $6ad8: $c2 $c3 $8b

    db $e3                                        ; $6adb: $e3
    ld d, e                                       ; $6adc: $53
    pop hl                                        ; $6add: $e1
    sbc l                                         ; $6ade: $9d
    sbc d                                         ; $6adf: $9a
    ld a, a                                       ; $6ae0: $7f
    add sp, -$66                                  ; $6ae1: $e8 $9a
    pop bc                                        ; $6ae3: $c1
    sbc l                                         ; $6ae4: $9d
    ld [hl], d                                    ; $6ae5: $72
    and $13                                       ; $6ae6: $e6 $13
    db $ed                                        ; $6ae8: $ed
    ld c, c                                       ; $6ae9: $49
    add sp, $08                                   ; $6aea: $e8 $08
    pop hl                                        ; $6aec: $e1
    ld d, e                                       ; $6aed: $53
    push hl                                       ; $6aee: $e5
    sbc l                                         ; $6aef: $9d
    sbc d                                         ; $6af0: $9a
    scf                                           ; $6af1: $37
    add e                                         ; $6af2: $83
    add a                                         ; $6af3: $87
    add [hl]                                      ; $6af4: $86
    rst $38                                       ; $6af5: $ff
    push hl                                       ; $6af6: $e5
    add a                                         ; $6af7: $87
    add e                                         ; $6af8: $83
    cp a                                          ; $6af9: $bf
    push hl                                       ; $6afa: $e5
    inc de                                        ; $6afb: $13
    rst $28                                       ; $6afc: $ef
    ret c                                         ; $6afd: $d8

    ld c, c                                       ; $6afe: $49
    jp hl                                         ; $6aff: $e9


    ld [$d7e0], sp                                ; $6b00: $08 $e0 $d7
    jp nz, $c1c0                                  ; $6b03: $c2 $c0 $c1

    pop bc                                        ; $6b06: $c1
    ldh [$6f], a                                  ; $6b07: $e0 $6f
    add h                                         ; $6b09: $84
    rst $18                                       ; $6b0a: $df
    ld [bc], a                                    ; $6b0b: $02
    rlca                                          ; $6b0c: $07
    rlca                                          ; $6b0d: $07
    rlca                                          ; $6b0e: $07
    ld [bc], a                                    ; $6b0f: $02
    ei                                            ; $6b10: $fb
    ldh [rSC], a                                  ; $6b11: $e0 $02
    add h                                         ; $6b13: $84
    pop bc                                        ; $6b14: $c1
    ld l, a                                       ; $6b15: $6f
    cp a                                          ; $6b16: $bf
    ld [c], a                                     ; $6b17: $e2
    cp h                                          ; $6b18: $bc
    ret nz                                        ; $6b19: $c0

    inc de                                        ; $6b1a: $13
    ld a, [c]                                     ; $6b1b: $f2
    add b                                         ; $6b1c: $80
    ret                                           ; $6b1d: $c9


    add a                                         ; $6b1e: $87
    jp $9c46                                      ; $6b1f: $c3 $46 $9c


    rst $38                                       ; $6b22: $ff
    ld b, [hl]                                    ; $6b23: $46
    adc b                                         ; $6b24: $88
    add h                                         ; $6b25: $84
    ld [bc], a                                    ; $6b26: $02
    rrca                                          ; $6b27: $0f
    sub a                                         ; $6b28: $97
    nop                                           ; $6b29: $00
    ld bc, $977f                                  ; $6b2a: $01 $7f $97
    sub [hl]                                      ; $6b2d: $96
    sub [hl]                                      ; $6b2e: $96
    sub [hl]                                      ; $6b2f: $96
    rrca                                          ; $6b30: $0f
    rlca                                          ; $6b31: $07
    ld [bc], a                                    ; $6b32: $02
    cp a                                          ; $6b33: $bf
    ld [c], a                                     ; $6b34: $e2

Jump_074_6b35:
    ldh a, [$e5]                                  ; $6b35: $f0 $e5
    db $e3                                        ; $6b37: $e3
    add b                                         ; $6b38: $80
    reti                                          ; $6b39: $d9


    cp $c0                                        ; $6b3a: $fe $c0
    ld c, h                                       ; $6b3c: $4c
    ret nz                                        ; $6b3d: $c0

    sbc l                                         ; $6b3e: $9d
    sbc e                                         ; $6b3f: $9b
    sbc e                                         ; $6b40: $9b
    sbc d                                         ; $6b41: $9a
    ld a, a                                       ; $6b42: $7f
    add e                                         ; $6b43: $83
    ld l, l                                       ; $6b44: $6d
    ld [bc], a                                    ; $6b45: $02
    rrca                                          ; $6b46: $0f
    sub [hl]                                      ; $6b47: $96
    sub [hl]                                      ; $6b48: $96
    sub a                                         ; $6b49: $97
    pop bc                                        ; $6b4a: $c1
    ldh [rNR33], a                                ; $6b4b: $e0 $1d
    sub l                                         ; $6b4d: $95
    cp [hl]                                       ; $6b4e: $be
    ldh [$08], a                                  ; $6b4f: $e0 $08
    add h                                         ; $6b51: $84
    adc c                                         ; $6b52: $89
    xor l                                         ; $6b53: $ad
    ldh [$31], a                                  ; $6b54: $e0 $31
    ret nz                                        ; $6b56: $c0

    sbc $c0                                       ; $6b57: $de $c0
    ld d, b                                       ; $6b59: $50
    add b                                         ; $6b5a: $80
    reti                                          ; $6b5b: $d9


    cp $c2                                        ; $6b5c: $fe $c2
    add $c1                                       ; $6b5e: $c6 $c1
    ld b, d                                       ; $6b60: $42
    ldh [$08], a                                  ; $6b61: $e0 $08
    add [hl]                                      ; $6b63: $86
    ldh [$96], a                                  ; $6b64: $e0 $96
    ret nz                                        ; $6b66: $c0

    pop hl                                        ; $6b67: $e1
    ccf                                           ; $6b68: $3f
    sub l                                         ; $6b69: $95
    sub l                                         ; $6b6a: $95
    sub [hl]                                      ; $6b6b: $96
    rrca                                          ; $6b6c: $0f
    ld [bc], a                                    ; $6b6d: $02
    add d                                         ; $6b6e: $82
    db $fd                                        ; $6b6f: $fd
    jp $a0e6                                      ; $6b70: $c3 $e6 $a0


    ld c, b                                       ; $6b73: $48
    add b                                         ; $6b74: $80
    ret c                                         ; $6b75: $d8

    cp $c2                                        ; $6b76: $fe $c2
    add $c2                                       ; $6b78: $c6 $c2
    add l                                         ; $6b7a: $85
    ld b, d                                       ; $6b7b: $42
    ldh [$c1], a                                  ; $6b7c: $e0 $c1
    pop hl                                        ; $6b7e: $e1
    sbc b                                         ; $6b7f: $98
    ld b, b                                       ; $6b80: $40
    pop hl                                        ; $6b81: $e1
    ld b, b                                       ; $6b82: $40
    ld a, a                                       ; $6b83: $7f
    ld [c], a                                     ; $6b84: $e2
    db $fd                                        ; $6b85: $fd
    jp $c1de                                      ; $6b86: $c3 $de $c1


    or a                                          ; $6b89: $b7
    xor e                                         ; $6b8a: $ab
    add b                                         ; $6b8b: $80
    ret                                           ; $6b8c: $c9


    call $9ea2                                    ; $6b8d: $cd $a2 $9e
    dec b                                         ; $6b90: $05
    pop hl                                        ; $6b91: $e1
    dec bc                                        ; $6b92: $0b
    rlca                                          ; $6b93: $07
    rlca                                          ; $6b94: $07
    pop bc                                        ; $6b95: $c1
    pop hl                                        ; $6b96: $e1
    rrca                                          ; $6b97: $0f
    ld sp, hl                                     ; $6b98: $f9
    ld [c], a                                     ; $6b99: $e2
    dec sp                                        ; $6b9a: $3b
    pop hl                                        ; $6b9b: $e1
    db $fd                                        ; $6b9c: $fd
    push bc                                       ; $6b9d: $c5
    ld a, d                                       ; $6b9e: $7a
    rst $08                                       ; $6b9f: $cf
    ld hl, sp-$37                                 ; $6ba0: $f8 $c9
    xor b                                         ; $6ba2: $a8
    ld bc, $59c0                                  ; $6ba3: $01 $c0 $59
    and b                                         ; $6ba6: $a0
    sbc h                                         ; $6ba7: $9c
    ld b, [hl]                                    ; $6ba8: $46
    add c                                         ; $6ba9: $81
    ld [bc], a                                    ; $6baa: $02
    rrca                                          ; $6bab: $0f
    ei                                            ; $6bac: $fb
    ld bc, $cb00                                  ; $6bad: $01 $00 $cb
    pop hl                                        ; $6bb0: $e1
    ld [bc], a                                    ; $6bb1: $02
    ld b, l                                       ; $6bb2: $45
    ld b, l                                       ; $6bb3: $45
    ld [bc], a                                    ; $6bb4: $02
    rlca                                          ; $6bb5: $07
    add hl, bc                                    ; $6bb6: $09
    rrca                                          ; $6bb7: $0f
    cp e                                          ; $6bb8: $bb
    jp $c1fd                                      ; $6bb9: $c3 $fd $c1


    sbc [hl]                                      ; $6bbc: $9e
    add hl, sp                                    ; $6bbd: $39
    and h                                         ; $6bbe: $a4
    add b                                         ; $6bbf: $80
    jp nc, $a509                                  ; $6bc0: $d2 $09 $a5

    ret nz                                        ; $6bc3: $c0

    ldh [$fb], a                                  ; $6bc4: $e0 $fb
    ld [$8c97], sp                                ; $6bc6: $08 $97 $8c
    ld [c], a                                     ; $6bc9: $e2
    ld [bc], a                                    ; $6bca: $02
    ld b, l                                       ; $6bcb: $45
    ld a, [hl+]                                   ; $6bcc: $2a
    inc l                                         ; $6bcd: $2c
    ld sp, $2b39                                  ; $6bce: $31 $39 $2b
    ld a, c                                       ; $6bd1: $79
    ret nz                                        ; $6bd2: $c0

jr_074_6bd3:
    cp e                                          ; $6bd3: $bb
    pop bc                                        ; $6bd4: $c1
    rrca                                          ; $6bd5: $0f
    ld [bc], a                                    ; $6bd6: $02
    add b                                         ; $6bd7: $80
    ld l, d                                       ; $6bd8: $6a
    ret nz                                        ; $6bd9: $c0

    jp hl                                         ; $6bda: $e9


    add b                                         ; $6bdb: $80
    ret nz                                        ; $6bdc: $c0

    sbc e                                         ; $6bdd: $9b
    and l                                         ; $6bde: $a5
    nop                                           ; $6bdf: $00
    xor e                                         ; $6be0: $ab
    add e                                         ; $6be1: $83
    and c                                         ; $6be2: $a1
    add hl, bc                                    ; $6be3: $09
    and e                                         ; $6be4: $a3
    ret nz                                        ; $6be5: $c0

    pop hl                                        ; $6be6: $e1
    inc c                                         ; $6be7: $0c
    db $e3                                        ; $6be8: $e3
    ld b, [hl]                                    ; $6be9: $46
    inc [hl]                                      ; $6bea: $34
    sbc a                                         ; $6beb: $9f
    jr nz, @+$22                                  ; $6bec: $20 $20

    jr nz, jr_074_6c1a                            ; $6bee: $20 $2a

    ld b, l                                       ; $6bf0: $45
    or a                                          ; $6bf1: $b7
    ret nz                                        ; $6bf2: $c0

    cp l                                          ; $6bf3: $bd
    ret nz                                        ; $6bf4: $c0

    sub [hl]                                      ; $6bf5: $96
    ld bc, $c008                                  ; $6bf6: $01 $08 $c0
    pop hl                                        ; $6bf9: $e1
    xor [hl]                                      ; $6bfa: $ae
    add b                                         ; $6bfb: $80
    and e                                         ; $6bfc: $a3
    add b                                         ; $6bfd: $80
    ld a, d                                       ; $6bfe: $7a
    ret                                           ; $6bff: $c9


    inc c                                         ; $6c00: $0c
    and [hl]                                      ; $6c01: $a6
    add e                                         ; $6c02: $83
    and h                                         ; $6c03: $a4
    add a                                         ; $6c04: $87
    and b                                         ; $6c05: $a0
    ei                                            ; $6c06: $fb
    ld l, l                                       ; $6c07: $6d
    ld [$c48b], sp                                ; $6c08: $08 $8b $c4
    ld b, l                                       ; $6c0b: $45
    dec hl                                        ; $6c0c: $2b
    ld sp, $452b                                  ; $6c0d: $31 $2b $45
    inc e                                         ; $6c10: $1c
    jr c, jr_074_6bd3                             ; $6c11: $38 $c0

    ld a, l                                       ; $6c13: $7d
    ret nz                                        ; $6c14: $c0

    sub l                                         ; $6c15: $95
    sub [hl]                                      ; $6c16: $96
    ld [$c47d], sp                                ; $6c17: $08 $7d $c4

jr_074_6c1a:
    and e                                         ; $6c1a: $a3
    add b                                         ; $6c1b: $80
    ld a, d                                       ; $6c1c: $7a
    ret                                           ; $6c1d: $c9


    and b                                         ; $6c1e: $a0
    ld b, e                                       ; $6c1f: $43
    add [hl]                                      ; $6c20: $86
    adc e                                         ; $6c21: $8b
    add b                                         ; $6c22: $80
    ld e, e                                       ; $6c23: $5b
    add b                                         ; $6c24: $80
    add a                                         ; $6c25: $87
    and c                                         ; $6c26: $a1
    adc $e1                                       ; $6c27: $ce $e1
    sub h                                         ; $6c29: $94
    add hl, bc                                    ; $6c2a: $09
    ret nz                                        ; $6c2b: $c0

    rrca                                          ; $6c2c: $0f
    scf                                           ; $6c2d: $37
    rlca                                          ; $6c2e: $07
    inc b                                         ; $6c2f: $04
    inc b                                         ; $6c30: $04
    or a                                          ; $6c31: $b7
    jp nz, $9495                                  ; $6c32: $c2 $95 $94

    pop af                                        ; $6c35: $f1
    ldh [$7d], a                                  ; $6c36: $e0 $7d
    call nz, Call_000_3726                        ; $6c38: $c4 $26 $37
    add c                                         ; $6c3b: $81
    add $c7                                       ; $6c3c: $c6 $c7
    nop                                           ; $6c3e: $00
    or e                                          ; $6c3f: $b3
    ld [bc], a                                    ; $6c40: $02
    ld [c], a                                     ; $6c41: $e2
    adc b                                         ; $6c42: $88
    ld b, $c1                                     ; $6c43: $06 $c1
    ret nz                                        ; $6c45: $c0

    ldh [$c7], a                                  ; $6c46: $e0 $c7
    sub l                                         ; $6c48: $95
    sub [hl]                                      ; $6c49: $96
    sub a                                         ; $6c4a: $97
    cp d                                          ; $6c4b: $ba
    jp nz, $a1fe                                  ; $6c4c: $c2 $fe $a1

    ld a, [c]                                     ; $6c4f: $f2
    pop hl                                        ; $6c50: $e1
    rrca                                          ; $6c51: $0f
    ld [bc], a                                    ; $6c52: $02
    ld b, b                                       ; $6c53: $40
    cp e                                          ; $6c54: $bb
    and d                                         ; $6c55: $a2
    scf                                           ; $6c56: $37
    adc l                                         ; $6c57: $8d
    ld c, c                                       ; $6c58: $49
    adc c                                         ; $6c59: $89
    ld [bc], a                                    ; $6c5a: $02
    db $e3                                        ; $6c5b: $e3
    ld c, a                                       ; $6c5c: $4f
    ld [c], a                                     ; $6c5d: $e2
    adc [hl]                                      ; $6c5e: $8e
    pop hl                                        ; $6c5f: $e1
    sub [hl]                                      ; $6c60: $96
    ld b, b                                       ; $6c61: $40
    and d                                         ; $6c62: $a2
    nop                                           ; $6c63: $00
    ret nz                                        ; $6c64: $c0

    and b                                         ; $6c65: $a0
    di                                            ; $6c66: $f3
    db $e3                                        ; $6c67: $e3
    cp [hl]                                       ; $6c68: $be
    jp $8d37                                      ; $6c69: $c3 $37 $8d


    ld b, $a7                                     ; $6c6c: $06 $a7
    ld b, d                                       ; $6c6e: $42
    add d                                         ; $6c6f: $82
    jp nz, $c0c3                                  ; $6c70: $c2 $c3 $c0

    ld [c], a                                     ; $6c73: $e2
    inc b                                         ; $6c74: $04
    cp a                                          ; $6c75: $bf
    pop hl                                        ; $6c76: $e1
    ld b, b                                       ; $6c77: $40
    and c                                         ; $6c78: $a1
    sub h                                         ; $6c79: $94
    rst $38                                       ; $6c7a: $ff
    ldh [$73], a                                  ; $6c7b: $e0 $73
    ld [c], a                                     ; $6c7d: $e2
    cp [hl]                                       ; $6c7e: $be
    jp nz, $861a                                  ; $6c7f: $c2 $1a $86

    add b                                         ; $6c82: $80
    call Call_074_4220                            ; $6c83: $cd $20 $42
    add e                                         ; $6c86: $83
    add d                                         ; $6c87: $82
    call nz, $e5bf                                ; $6c88: $c4 $bf $e5
    or l                                          ; $6c8b: $b5
    db $e3                                        ; $6c8c: $e3
    ld [hl], e                                    ; $6c8d: $73
    db $e3                                        ; $6c8e: $e3
    sub a                                         ; $6c8f: $97
    ret nz                                        ; $6c90: $c0

    db $e4                                        ; $6c91: $e4
    ld a, [de]                                    ; $6c92: $1a
    add d                                         ; $6c93: $82
    nop                                           ; $6c94: $00
    add b                                         ; $6c95: $80
    rst $08                                       ; $6c96: $cf
    ld h, h                                       ; $6c97: $64
    and e                                         ; $6c98: $a3
    ld [bc], a                                    ; $6c99: $02
    jp $e38a                                      ; $6c9a: $c3 $8a $e3


    adc c                                         ; $6c9d: $89
    pop bc                                        ; $6c9e: $c1
    db $fc                                        ; $6c9f: $fc
    and $ba                                       ; $6ca0: $e6 $ba
    add c                                         ; $6ca2: $81
    cp $a1                                        ; $6ca3: $fe $a1
    inc hl                                        ; $6ca5: $23
    cp h                                          ; $6ca6: $bc
    cp l                                          ; $6ca7: $bd
    inc a                                         ; $6ca8: $3c
    and d                                         ; $6ca9: $a2
    add b                                         ; $6caa: $80
    ld [hl], d                                    ; $6cab: $72
    add d                                         ; $6cac: $82
    and e                                         ; $6cad: $a3
    ld [$a183], sp                                ; $6cae: $08 $83 $a1
    ccf                                           ; $6cb1: $3f
    ld [c], a                                     ; $6cb2: $e2
    add c                                         ; $6cb3: $81
    sub l                                         ; $6cb4: $95
    rlca                                          ; $6cb5: $07
    jp nz, $c2be                                  ; $6cb6: $c2 $be $c2

    ld [hl], c                                    ; $6cb9: $71
    pop bc                                        ; $6cba: $c1
    cp [hl]                                       ; $6cbb: $be
    and l                                         ; $6cbc: $a5
    add b                                         ; $6cbd: $80
    halt                                          ; $6cbe: $76
    adc e                                         ; $6cbf: $8b
    ld b, b                                       ; $6cc0: $40
    sbc [hl]                                      ; $6cc1: $9e
    ret nz                                        ; $6cc2: $c0

    ld b, d                                       ; $6cc3: $42
    and c                                         ; $6cc4: $a1
    ld a, [bc]                                    ; $6cc5: $0a
    ld [c], a                                     ; $6cc6: $e2
    push bc                                       ; $6cc7: $c5
    db $e4                                        ; $6cc8: $e4
    ld [bc], a                                    ; $6cc9: $02
    add b                                         ; $6cca: $80
    ld a, $c1                                     ; $6ccb: $3e $c1
    ld a, h                                       ; $6ccd: $7c
    add c                                         ; $6cce: $81
    ld a, c                                       ; $6ccf: $79
    adc e                                         ; $6cd0: $8b
    ld a, b                                       ; $6cd1: $78
    jr c, @+$62                                   ; $6cd2: $38 $60

    ld l, h                                       ; $6cd4: $6c
    ld b, c                                       ; $6cd5: $41
    add b                                         ; $6cd6: $80
    ret c                                         ; $6cd7: $d8

    sbc l                                         ; $6cd8: $9d
    sbc d                                         ; $6cd9: $9a
    adc d                                         ; $6cda: $8a
    ld a, l                                       ; $6cdb: $7d
    rst $38                                       ; $6cdc: $ff
    jp $c1ce                                      ; $6cdd: $c3 $ce $c1


    call nz, Call_000_020f                        ; $6ce0: $c4 $0f $02
    ccf                                           ; $6ce3: $3f
    or $61                                        ; $6ce4: $f6 $61
    ret nz                                        ; $6ce6: $c0

    and b                                         ; $6ce7: $a0
    ld a, c                                       ; $6ce8: $79
    ld a, [hl]                                    ; $6ce9: $7e
    db $10                                        ; $6cea: $10
    ld sp, hl                                     ; $6ceb: $f9
    ld b, d                                       ; $6cec: $42
    db $db                                        ; $6ced: $db
    ld b, b                                       ; $6cee: $40
    nop                                           ; $6cef: $00
    or h                                          ; $6cf0: $b4
    add b                                         ; $6cf1: $80
    and h                                         ; $6cf2: $a4
    ld a, a                                       ; $6cf3: $7f
    ld c, $a3                                     ; $6cf4: $0e $a3
    nop                                           ; $6cf6: $00
    ret nz                                        ; $6cf7: $c0

    add c                                         ; $6cf8: $81

jr_074_6cf9:
    ld h, c                                       ; $6cf9: $61
    rrca                                          ; $6cfa: $0f
    ld [$3540], sp                                ; $6cfb: $08 $40 $35
    add hl, sp                                    ; $6cfe: $39
    ld a, l                                       ; $6cff: $7d
    and c                                         ; $6d00: $a1
    ld b, b                                       ; $6d01: $40
    and c                                         ; $6d02: $a1
    ret nz                                        ; $6d03: $c0

    add d                                         ; $6d04: $82
    db $db                                        ; $6d05: $db
    ld b, l                                       ; $6d06: $45
    ldh [$80], a                                  ; $6d07: $e0 $80
    adc $81                                       ; $6d09: $ce $81
    ld b, h                                       ; $6d0b: $44
    ret nz                                        ; $6d0c: $c0

    add c                                         ; $6d0d: $81
    add hl, bc                                    ; $6d0e: $09
    add c                                         ; $6d0f: $81
    ld b, c                                       ; $6d10: $41
    call nz, Call_074_4208                        ; $6d11: $c4 $08 $42
    dec [hl]                                      ; $6d14: $35
    ld bc, $fd3a                                  ; $6d15: $01 $3a $fd
    add c                                         ; $6d18: $81
    nop                                           ; $6d19: $00
    and e                                         ; $6d1a: $a3

jr_074_6d1b:
    xor c                                         ; $6d1b: $a9
    jr nz, jr_074_6d1b                            ; $6d1c: $20 $fd

    ld h, e                                       ; $6d1e: $63
    add b                                         ; $6d1f: $80
    ret nc                                        ; $6d20: $d0

    adc c                                         ; $6d21: $89
    ld hl, $8540                                  ; $6d22: $21 $40 $85
    inc e                                         ; $6d25: $1c
    ld b, a                                       ; $6d26: $47
    ld h, c                                       ; $6d27: $61
    ld bc, $02e4                                  ; $6d28: $01 $e4 $02
    ld [hl], $36                                  ; $6d2b: $36 $36
    add b                                         ; $6d2d: $80
    db $e3                                        ; $6d2e: $e3
    ld a, l                                       ; $6d2f: $7d
    ld h, c                                       ; $6d30: $61
    ld l, [hl]                                    ; $6d31: $6e
    ld hl, $7506                                  ; $6d32: $21 $06 $75
    jr nz, jr_074_6cf9                            ; $6d35: $20 $c2

    jp $5100                                      ; $6d37: $c3 $00 $51


    adc c                                         ; $6d3a: $89
    jr nz, jr_074_6d7d                            ; $6d3b: $20 $40

    add d                                         ; $6d3d: $82
    cp $c0                                        ; $6d3e: $fe $c0
    nop                                           ; $6d40: $00
    add d                                         ; $6d41: $82
    ld d, $bb                                     ; $6d42: $16 $bb
    db $e3                                        ; $6d44: $e3
    rrca                                          ; $6d45: $0f
    ld [bc], a                                    ; $6d46: $02
    nop                                           ; $6d47: $00
    db $e3                                        ; $6d48: $e3
    rrca                                          ; $6d49: $0f
    cp [hl]                                       ; $6d4a: $be
    ld h, l                                       ; $6d4b: $65
    dec h                                         ; $6d4c: $25
    jr nz, jr_074_6d66                            ; $6d4d: $20 $17

    ld b, h                                       ; $6d4f: $44
    inc e                                         ; $6d50: $1c
    add b                                         ; $6d51: $80
    ld l, a                                       ; $6d52: $6f
    ld b, b                                       ; $6d53: $40
    add c                                         ; $6d54: $81
    xor e                                         ; $6d55: $ab
    xor e                                         ; $6d56: $ab
    ld a, a                                       ; $6d57: $7f
    jp z, $8460                                   ; $6d58: $ca $60 $84

    ld h, b                                       ; $6d5b: $60
    ld b, h                                       ; $6d5c: $44
    ld b, c                                       ; $6d5d: $41
    add hl, de                                    ; $6d5e: $19
    rrca                                          ; $6d5f: $0f
    cp h                                          ; $6d60: $bc
    ld b, b                                       ; $6d61: $40
    inc a                                         ; $6d62: $3c
    ld l, c                                       ; $6d63: $69
    sbc e                                         ; $6d64: $9b
    sbc e                                         ; $6d65: $9b

jr_074_6d66:
    ld a, h                                       ; $6d66: $7c
    pop hl                                        ; $6d67: $e1
    add hl, sp                                    ; $6d68: $39
    ld h, d                                       ; $6d69: $62
    nop                                           ; $6d6a: $00
    ld c, a                                       ; $6d6b: $4f
    cp $7f                                        ; $6d6c: $fe $7f
    ld [hl+], a                                   ; $6d6e: $22
    sbc h                                         ; $6d6f: $9c
    xor h                                         ; $6d70: $ac
    xor h                                         ; $6d71: $ac
    ld b, [hl]                                    ; $6d72: $46
    ld a, a                                       ; $6d73: $7f
    ld a, l                                       ; $6d74: $7d
    ld [bc], a                                    ; $6d75: $02
    rst $38                                       ; $6d76: $ff
    ld [bc], a                                    ; $6d77: $02
    ld a, c                                       ; $6d78: $79
    ld a, d                                       ; $6d79: $7a
    ld a, e                                       ; $6d7a: $7b
    ld a, e                                       ; $6d7b: $7b
    ld a, h                                       ; $6d7c: $7c

jr_074_6d7d:
    ld a, l                                       ; $6d7d: $7d
    ld [$bb30], sp                                ; $6d7e: $08 $30 $bb
    add b                                         ; $6d81: $80
    add hl, sp                                    ; $6d82: $39
    ld h, b                                       ; $6d83: $60
    jr nc, jr_074_6de7                            ; $6d84: $30 $61

    cp a                                          ; $6d86: $bf
    add b                                         ; $6d87: $80
    ld l, a                                       ; $6d88: $6f
    add e                                         ; $6d89: $83
    ld [hl], h                                    ; $6d8a: $74
    jr z, jr_074_6d8d                             ; $6d8b: $28 $00

jr_074_6d8d:
    ld d, b                                       ; $6d8d: $50
    db $fc                                        ; $6d8e: $fc
    ld a, a                                       ; $6d8f: $7f
    ld hl, $a11d                                  ; $6d90: $21 $1d $a1
    ld b, [hl]                                    ; $6d93: $46
    adc h                                         ; $6d94: $8c
    ld a, e                                       ; $6d95: $7b
    ld a, e                                       ; $6d96: $7b
    adc l                                         ; $6d97: $8d
    xor e                                         ; $6d98: $ab
    cp b                                          ; $6d99: $b8
    rst $38                                       ; $6d9a: $ff

jr_074_6d9b:
    ldh [$74], a                                  ; $6d9b: $e0 $74
    pop bc                                        ; $6d9d: $c1
    rlca                                          ; $6d9e: $07
    ret nz                                        ; $6d9f: $c0

    ld a, d                                       ; $6da0: $7a
    ld a, h                                       ; $6da1: $7c
    ld a, l                                       ; $6da2: $7d
    rst $30                                       ; $6da3: $f7
    pop hl                                        ; $6da4: $e1
    rlca                                          ; $6da5: $07
    db $e3                                        ; $6da6: $e3
    ld [bc], a                                    ; $6da7: $02
    add l                                         ; $6da8: $85
    ld [hl], h                                    ; $6da9: $74
    inc h                                         ; $6daa: $24
    ld [hl], c                                    ; $6dab: $71
    inc bc                                        ; $6dac: $03
    add b                                         ; $6dad: $80
    ld c, $c6                                     ; $6dae: $0e $c6
    rst $00                                       ; $6db0: $c7
    cp h                                          ; $6db1: $bc
    and l                                         ; $6db2: $a5
    cp l                                          ; $6db3: $bd
    rlca                                          ; $6db4: $07
    ld h, $ac                                     ; $6db5: $26 $ac
    rst $38                                       ; $6db7: $ff
    ldh [$34], a                                  ; $6db8: $e0 $34
    ld h, b                                       ; $6dba: $60
    sbc c                                         ; $6dbb: $99
    rlca                                          ; $6dbc: $07
    ret nz                                        ; $6dbd: $c0

    ld b, l                                       ; $6dbe: $45
    inc bc                                        ; $6dbf: $03
    ld b, l                                       ; $6dc0: $45
    ld a, a                                       ; $6dc1: $7f
    db $ec                                        ; $6dc2: $ec
    jp nz, Jump_000_20b6                          ; $6dc3: $c2 $b6 $20

    ld [hl], h                                    ; $6dc6: $74
    inc hl                                        ; $6dc7: $23
    jr c, jr_074_6e2e                             ; $6dc8: $38 $64

    nop                                           ; $6dca: $00
    ld c, [hl]                                    ; $6dcb: $4e
    dec b                                         ; $6dcc: $05
    inc hl                                        ; $6dcd: $23
    and $45                                       ; $6dce: $e6 $45
    dec b                                         ; $6dd0: $05
    xor e                                         ; $6dd1: $ab
    xor e                                         ; $6dd2: $ab
    db $f4                                        ; $6dd3: $f4
    ld b, b                                       ; $6dd4: $40
    rlca                                          ; $6dd5: $07
    ld h, b                                       ; $6dd6: $60
    ld b, l                                       ; $6dd7: $45
    ld [hl], $36                                  ; $6dd8: $36 $36
    dec c                                         ; $6dda: $0d
    ld b, l                                       ; $6ddb: $45
    ld [$97a2], a                                 ; $6ddc: $ea $a2 $97
    sbc c                                         ; $6ddf: $99
    ld [hl], h                                    ; $6de0: $74
    jr nz, jr_074_6d9b                            ; $6de1: $20 $b8

    ld b, c                                       ; $6de3: $41
    jr c, jr_074_6e49                             ; $6de4: $38 $63

    ld l, [hl]                                    ; $6de6: $6e

jr_074_6de7:
    ld bc, $80d8                                  ; $6de7: $01 $d8 $80
    inc c                                         ; $6dea: $0c
    ld e, b                                       ; $6deb: $58
    ld bc, $e87e                                  ; $6dec: $01 $7e $e8
    ld b, [hl]                                    ; $6def: $46
    adc d                                         ; $6df0: $8a
    rst $30                                       ; $6df1: $f7
    ret nz                                        ; $6df2: $c0

    adc e                                         ; $6df3: $8b
    ld b, h                                       ; $6df4: $44
    add a                                         ; $6df5: $87
    inc a                                         ; $6df6: $3c
    dec [hl]                                      ; $6df7: $35
    ld b, b                                       ; $6df8: $40
    ld [$3a43], a                                 ; $6df9: $ea $43 $3a
    add a                                         ; $6dfc: $87
    ld d, d                                       ; $6dfd: $52
    pop bc                                        ; $6dfe: $c1
    add b                                         ; $6dff: $80
    dec d                                         ; $6e00: $15
    sbc l                                         ; $6e01: $9d
    pop af                                        ; $6e02: $f1
    sbc d                                         ; $6e03: $9a
    add [hl]                                      ; $6e04: $86
    ldh [$80], a                                  ; $6e05: $e0 $80
    db $e3                                        ; $6e07: $e3
    or $c0                                        ; $6e08: $f6 $c0
    adc l                                         ; $6e0a: $8d
    ld b, l                                       ; $6e0b: $45
    ld [hl], $35                                  ; $6e0c: $36 $35
    nop                                           ; $6e0e: $00
    ret nz                                        ; $6e0f: $c0

    db $e4                                        ; $6e10: $e4
    rst $28                                       ; $6e11: $ef
    ld bc, $e5c0                                  ; $6e12: $01 $c0 $e5
    add b                                         ; $6e15: $80
    ret nc                                        ; $6e16: $d0

    and d                                         ; $6e17: $a2
    inc hl                                        ; $6e18: $23
    db $fc                                        ; $6e19: $fc
    ld hl, $c07c                                  ; $6e1a: $21 $7c $c0
    add b                                         ; $6e1d: $80
    db $e3                                        ; $6e1e: $e3
    rst $38                                       ; $6e1f: $ff
    ld b, l                                       ; $6e20: $45
    ld b, e                                       ; $6e21: $43
    ccf                                           ; $6e22: $3f
    scf                                           ; $6e23: $37
    jr c, jr_074_6e5b                             ; $6e24: $38 $35

    dec [hl]                                      ; $6e26: $35
    inc a                                         ; $6e27: $3c
    inc bc                                        ; $6e28: $03
    ld b, h                                       ; $6e29: $44
    ld b, e                                       ; $6e2a: $43
    add b                                         ; $6e2b: $80
    db $e3                                        ; $6e2c: $e3
    ld a, d                                       ; $6e2d: $7a

jr_074_6e2e:
    ld h, h                                       ; $6e2e: $64
    ret nz                                        ; $6e2f: $c0

    pop bc                                        ; $6e30: $c1
    add b                                         ; $6e31: $80
    ld [de], a                                    ; $6e32: $12
    rst $18                                       ; $6e33: $df
    nop                                           ; $6e34: $00
    ld a, d                                       ; $6e35: $7a
    add d                                         ; $6e36: $82
    sbc $82                                       ; $6e37: $de $82
    db $e4                                        ; $6e39: $e4
    ld b, l                                       ; $6e3a: $45
    ld [hl], $3b                                  ; $6e3b: $36 $3b
    dec [hl]                                      ; $6e3d: $35
    rst $38                                       ; $6e3e: $ff
    pop hl                                        ; $6e3f: $e1
    ld [hl], $4a                                  ; $6e40: $36 $4a
    rlca                                          ; $6e42: $07
    ld e, d                                       ; $6e43: $5a
    add c                                         ; $6e44: $81
    ld [bc], a                                    ; $6e45: $02
    ld [hl], h                                    ; $6e46: $74
    ld [bc], a                                    ; $6e47: $02
    ld a, d                                       ; $6e48: $7a

jr_074_6e49:
    add e                                         ; $6e49: $83
    ld [hl], l                                    ; $6e4a: $75
    dec b                                         ; $6e4b: $05
    add b                                         ; $6e4c: $80
    dec c                                         ; $6e4d: $0d
    inc a                                         ; $6e4e: $3c
    and c                                         ; $6e4f: $a1
    db $e3                                        ; $6e50: $e3
    ret nz                                        ; $6e51: $c0

    pop bc                                        ; $6e52: $c1
    ld a, l                                       ; $6e53: $7d
    jp $e182                                      ; $6e54: $c3 $82 $e1


    ld b, [hl]                                    ; $6e57: $46
    ldh [$35], a                                  ; $6e58: $e0 $35
    dec [hl]                                      ; $6e5a: $35

jr_074_6e5b:
    dec sp                                        ; $6e5b: $3b
    rra                                           ; $6e5c: $1f
    dec [hl]                                      ; $6e5d: $35
    ld [hl], $45                                  ; $6e5e: $36 $45
    ld c, a                                       ; $6e60: $4f
    ld d, l                                       ; $6e61: $55
    ret nz                                        ; $6e62: $c0

    pop hl                                        ; $6e63: $e1
    ld a, d                                       ; $6e64: $7a
    add [hl]                                      ; $6e65: $86
    ld [hl], l                                    ; $6e66: $75
    inc bc                                        ; $6e67: $03
    ldh a, [$80]                                  ; $6e68: $f0 $80
    ret nc                                        ; $6e6a: $d0

    and e                                         ; $6e6b: $a3
    ld h, c                                       ; $6e6c: $61
    ld a, $c6                                     ; $6e6d: $3e $c6
    rlca                                          ; $6e6f: $07
    pop hl                                        ; $6e70: $e1
    xor c                                         ; $6e71: $a9
    xor c                                         ; $6e72: $a9
    ld [hl], $50                                  ; $6e73: $36 $50
    rra                                           ; $6e75: $1f
    ccf                                           ; $6e76: $3f
    ld c, b                                       ; $6e77: $48
    ld c, [hl]                                    ; $6e78: $4e
    ld b, e                                       ; $6e79: $43
    ld b, l                                       ; $6e7a: $45
    add sp, $42                                   ; $6e7b: $e8 $42
    cp d                                          ; $6e7d: $ba
    inc hl                                        ; $6e7e: $23
    ld d, d                                       ; $6e7f: $52
    dec h                                         ; $6e80: $25
    add sp, -$80                                  ; $6e81: $e8 $80
    ret nc                                        ; $6e83: $d0

    cp [hl]                                       ; $6e84: $be
    ld [hl+], a                                   ; $6e85: $22
    ld [hl-], a                                   ; $6e86: $32
    add l                                         ; $6e87: $85
    add hl, sp                                    ; $6e88: $39
    ld b, h                                       ; $6e89: $44
    ldh [$aa], a                                  ; $6e8a: $e0 $aa
    xor d                                         ; $6e8c: $aa
    add hl, sp                                    ; $6e8d: $39
    rra                                           ; $6e8e: $1f
    ld d, h                                       ; $6e8f: $54
    ld c, h                                       ; $6e90: $4c
    ld d, h                                       ; $6e91: $54
    ld d, e                                       ; $6e92: $53
    ld b, l                                       ; $6e93: $45
    xor d                                         ; $6e94: $aa
    ld hl, $673c                                  ; $6e95: $21 $3c $67
    add b                                         ; $6e98: $80
    ret c                                         ; $6e99: $d8

    call c, $e043                                 ; $6e9a: $dc $43 $e0
    add d                                         ; $6e9d: $82
    jp Jump_074_4546                              ; $6e9e: $c3 $46 $45


    ld a, [hl-]                                   ; $6ea1: $3a
    inc b                                         ; $6ea2: $04
    ld [c], a                                     ; $6ea3: $e2
    ld a, [hl-]                                   ; $6ea4: $3a
    ld b, l                                       ; $6ea5: $45
    nop                                           ; $6ea6: $00
    ld hl, sp-$60                                 ; $6ea7: $f8 $a0
    xor d                                         ; $6ea9: $aa
    ld hl, $81ad                                  ; $6eaa: $21 $ad $81
    ld a, [$8008]                                 ; $6ead: $fa $08 $80
    pop de                                        ; $6eb0: $d1
    add b                                         ; $6eb1: $80
    ld [bc], a                                    ; $6eb2: $02
    ld [$42c1], sp                                ; $6eb3: $08 $c1 $42
    db $e4                                        ; $6eb6: $e4
    ld [bc], a                                    ; $6eb7: $02
    jp Jump_074_40c2                              ; $6eb8: $c3 $c2 $40


    xor $80                                       ; $6ebb: $ee $80
    xor d                                         ; $6ebd: $aa
    jr nz, @+$7a                                  ; $6ebe: $20 $78

    ld bc, $e3c0                                  ; $6ec0: $01 $c0 $e3
    ld a, [$8003]                                 ; $6ec3: $fa $03 $80
    pop de                                        ; $6ec6: $d1
    jr jr_074_6e49                                ; $6ec7: $18 $80

    ld [bc], a                                    ; $6ec9: $02
    inc bc                                        ; $6eca: $03
    rst $20                                       ; $6ecb: $e7
    add h                                         ; $6ecc: $84
    jp nz, Jump_074_443c                          ; $6ecd: $c2 $3c $44

    sbc a                                         ; $6ed0: $9f
    and b                                         ; $6ed1: $a0
    db $ec                                        ; $6ed2: $ec
    ld h, l                                       ; $6ed3: $65
    ld a, d                                       ; $6ed4: $7a
    ld h, d                                       ; $6ed5: $62
    nop                                           ; $6ed6: $00
    ld d, e                                       ; $6ed7: $53
    ld b, l                                       ; $6ed8: $45
    add b                                         ; $6ed9: $80
    rst $08                                       ; $6eda: $cf
    add b                                         ; $6edb: $80
    ld [bc], a                                    ; $6edc: $02
    inc bc                                        ; $6edd: $03
    rst $20                                       ; $6ede: $e7

jr_074_6edf:
    ld b, b                                       ; $6edf: $40
    db $e4                                        ; $6ee0: $e4
    ret nz                                        ; $6ee1: $c0

    pop hl                                        ; $6ee2: $e1
    ld l, h                                       ; $6ee3: $6c
    ld h, h                                       ; $6ee4: $64
    cp d                                          ; $6ee5: $ba
    dec b                                         ; $6ee6: $05
    ld b, b                                       ; $6ee7: $40
    sub c                                         ; $6ee8: $91
    inc hl                                        ; $6ee9: $23
    nop                                           ; $6eea: $00
    xor a                                         ; $6eeb: $af
    add b                                         ; $6eec: $80
    add d                                         ; $6eed: $82
    ld b, $c2                                     ; $6eee: $06 $c2
    inc bc                                        ; $6ef0: $03
    db $e3                                        ; $6ef1: $e3
    ld [bc], a                                    ; $6ef2: $02
    ret nz                                        ; $6ef3: $c0

    add hl, sp                                    ; $6ef4: $39
    ld hl, sp-$7d                                 ; $6ef5: $f8 $83
    nop                                           ; $6ef7: $00
    db $ec                                        ; $6ef8: $ec
    ld b, e                                       ; $6ef9: $43
    cp d                                          ; $6efa: $ba
    ld h, h                                       ; $6efb: $64
    ld hl, sp+$44                                 ; $6efc: $f8 $44
    nop                                           ; $6efe: $00
    ld c, h                                       ; $6eff: $4c
    cp d                                          ; $6f00: $ba
    ld b, d                                       ; $6f01: $42
    nop                                           ; $6f02: $00
    db $e4                                        ; $6f03: $e4
    inc c                                         ; $6f04: $0c
    and b                                         ; $6f05: $a0
    ld bc, $23e3                                  ; $6f06: $01 $e3 $23
    ld [hl], $45                                  ; $6f09: $36 $45
    ld hl, sp-$7f                                 ; $6f0b: $f8 $81
    ld a, [hl+]                                   ; $6f0d: $2a
    inc hl                                        ; $6f0e: $23
    cp d                                          ; $6f0f: $ba
    jr nz, jr_074_6f1a                            ; $6f10: $20 $08

    cp d                                          ; $6f12: $ba
    dec b                                         ; $6f13: $05
    nop                                           ; $6f14: $00
    or b                                          ; $6f15: $b0
    ld e, h                                       ; $6f16: $5c
    add hl, hl                                    ; $6f17: $29
    add d                                         ; $6f18: $82
    add h                                         ; $6f19: $84

jr_074_6f1a:
    and d                                         ; $6f1a: $a2
    ld b, [hl]                                    ; $6f1b: $46
    ld b, [hl]                                    ; $6f1c: $46
    ld b, b                                       ; $6f1d: $40
    ld b, d                                       ; $6f1e: $42
    jp hl                                         ; $6f1f: $e9


    ld b, [hl]                                    ; $6f20: $46
    ld b, d                                       ; $6f21: $42
    pop bc                                        ; $6f22: $c1
    and b                                         ; $6f23: $a0
    ld a, c                                       ; $6f24: $79
    dec b                                         ; $6f25: $05
    cp d                                          ; $6f26: $ba
    dec b                                         ; $6f27: $05
    add b                                         ; $6f28: $80
    ld [hl], b                                    ; $6f29: $70
    ld b, d                                       ; $6f2a: $42
    adc b                                         ; $6f2b: $88
    ld b, b                                       ; $6f2c: $40
    push hl                                       ; $6f2d: $e5
    add hl, sp                                    ; $6f2e: $39
    jp $87e0                                      ; $6f2f: $c3 $e0 $87


    inc bc                                        ; $6f32: $03
    add [hl]                                      ; $6f33: $86
    add l                                         ; $6f34: $85
    ld l, e                                       ; $6f35: $6b
    ld bc, $03f8                                  ; $6f36: $01 $f8 $03
    ret nz                                        ; $6f39: $c0

    add [hl]                                      ; $6f3a: $86
    add b                                         ; $6f3b: $80
    db $10                                        ; $6f3c: $10
    ld b, l                                       ; $6f3d: $45
    and l                                         ; $6f3e: $a5
    ret nz                                        ; $6f3f: $c0

    add $47                                       ; $6f40: $c6 $47
    jr c, jr_074_6f7b                             ; $6f42: $38 $37

    ld b, l                                       ; $6f44: $45
    dec b                                         ; $6f45: $05
    pop bc                                        ; $6f46: $c1
    ld b, c                                       ; $6f47: $41
    ld h, c                                       ; $6f48: $61
    ld l, l                                       ; $6f49: $6d
    jr nz, jr_074_6edf                            ; $6f4a: $20 $93

    ld l, e                                       ; $6f4c: $6b
    ld bc, $3880                                  ; $6f4d: $01 $80 $38
    ld b, b                                       ; $6f50: $40
    dec a                                         ; $6f51: $3d
    ld h, [hl]                                    ; $6f52: $66
    add b                                         ; $6f53: $80
    ld de, $25b5                                  ; $6f54: $11 $b5 $25
    push bc                                       ; $6f57: $c5
    add b                                         ; $6f58: $80
    jp nz, $c6e1                                  ; $6f59: $c2 $e1 $c6

    and b                                         ; $6f5c: $a0
    add h                                         ; $6f5d: $84
    nop                                           ; $6f5e: $00
    xor $03                                       ; $6f5f: $ee $03
    ret nz                                        ; $6f61: $c0

    ld [c], a                                     ; $6f62: $e2
    ld hl, sp+$22                                 ; $6f63: $f8 $22
    ld a, a                                       ; $6f65: $7f
    add e                                         ; $6f66: $83
    cp l                                          ; $6f67: $bd
    and e                                         ; $6f68: $a3
    add b                                         ; $6f69: $80
    ld c, $82                                     ; $6f6a: $0e $82
    and l                                         ; $6f6c: $a5
    ld b, l                                       ; $6f6d: $45
    add b                                         ; $6f6e: $80
    nop                                           ; $6f6f: $00
    ld b, a                                       ; $6f70: $47
    pop bc                                        ; $6f71: $c1
    pop bc                                        ; $6f72: $c1
    ldh [$f1], a                                  ; $6f73: $e0 $f1
    inc hl                                        ; $6f75: $23
    ld l, $00                                     ; $6f76: $2e $00
    ret nz                                        ; $6f78: $c0

    pop hl                                        ; $6f79: $e1
    ld a, [hl]                                    ; $6f7a: $7e

jr_074_6f7b:
    and c                                         ; $6f7b: $a1
    cp c                                          ; $6f7c: $b9
    inc bc                                        ; $6f7d: $03
    cp l                                          ; $6f7e: $bd
    and e                                         ; $6f7f: $a3
    nop                                           ; $6f80: $00
    add b                                         ; $6f81: $80
    call z, $a682                                 ; $6f82: $cc $82 $a6
    ld l, $24                                     ; $6f85: $2e $24
    pop bc                                        ; $6f87: $c1
    ld [c], a                                     ; $6f88: $e2
    ld a, l                                       ; $6f89: $7d
    inc bc                                        ; $6f8a: $03
    ld bc, $c0e0                                  ; $6f8b: $01 $e0 $c0
    rst $20                                       ; $6f8e: $e7
    dec sp                                        ; $6f8f: $3b
    ld b, d                                       ; $6f90: $42
    inc a                                         ; $6f91: $3c
    nop                                           ; $6f92: $00
    ld c, a                                       ; $6f93: $4f
    ld b, [hl]                                    ; $6f94: $46
    add c                                         ; $6f95: $81
    ld b, l                                       ; $6f96: $45
    ld b, e                                       ; $6f97: $43
    ld b, c                                       ; $6f98: $41
    ld b, e                                       ; $6f99: $43
    db $fd                                        ; $6f9a: $fd
    ldh [$ca], a                                  ; $6f9b: $e0 $ca
    and b                                         ; $6f9d: $a0
    ld [bc], a                                    ; $6f9e: $02
    nop                                           ; $6f9f: $00
    ld h, b                                       ; $6fa0: $60
    adc b                                         ; $6fa1: $88
    push af                                       ; $6fa2: $f5
    jr nz, jr_074_6fe5                            ; $6fa3: $20 $40

    ld [bc], a                                    ; $6fa5: $02
    db $fd                                        ; $6fa6: $fd
    ld [c], a                                     ; $6fa7: $e2
    ret nz                                        ; $6fa8: $c0

    call nz, Call_074_433d                        ; $6fa9: $c4 $3d $43
    add b                                         ; $6fac: $80
    ld l, l                                       ; $6fad: $6d
    ld c, a                                       ; $6fae: $4f
    sbc l                                         ; $6faf: $9d
    sbc e                                         ; $6fb0: $9b
    sbc e                                         ; $6fb1: $9b
    sbc e                                         ; $6fb2: $9b
    pop bc                                        ; $6fb3: $c1
    pop hl                                        ; $6fb4: $e1
    call Call_000_3b60                            ; $6fb5: $cd $60 $3b
    db $fd                                        ; $6fb8: $fd
    ldh [$c0], a                                  ; $6fb9: $e0 $c0
    ld [$bbc5], sp                                ; $6fbb: $08 $c5 $bb
    ld bc, $0272                                  ; $6fbe: $01 $72 $02
    rst $38                                       ; $6fc1: $ff
    and l                                         ; $6fc2: $a5
    add b                                         ; $6fc3: $80
    call nc, Call_074_4548                        ; $6fc4: $d4 $48 $45
    ld b, h                                       ; $6fc7: $44
    inc a                                         ; $6fc8: $3c

jr_074_6fc9:
    dec de                                        ; $6fc9: $1b
    and c                                         ; $6fca: $a1
    ld h, h                                       ; $6fcb: $64
    rst $38                                       ; $6fcc: $ff
    ldh [$a2], a                                  ; $6fcd: $e0 $a2
    inc a                                         ; $6fcf: $3c
    db $fc                                        ; $6fd0: $fc
    ld b, d                                       ; $6fd1: $42
    adc b                                         ; $6fd2: $88
    and b                                         ; $6fd3: $a0
    or h                                          ; $6fd4: $b4
    inc bc                                        ; $6fd5: $03
    ldh [$33], a                                  ; $6fd6: $e0 $33
    ld [bc], a                                    ; $6fd8: $02
    nop                                           ; $6fd9: $00
    call nz, $0278                                ; $6fda: $c4 $78 $02
    add b                                         ; $6fdd: $80
    call z, Call_074_4609                         ; $6fde: $cc $09 $46
    ld b, d                                       ; $6fe1: $42
    dec [hl]                                      ; $6fe2: $35
    ld l, c                                       ; $6fe3: $69
    ccf                                           ; $6fe4: $3f

jr_074_6fe5:
    and b                                         ; $6fe5: $a0
    dec [hl]                                      ; $6fe6: $35
    dec [hl]                                      ; $6fe7: $35
    and b                                         ; $6fe8: $a0
    ld l, d                                       ; $6fe9: $6a
    dec [hl]                                      ; $6fea: $35
    db $fc                                        ; $6feb: $fc
    ld b, d                                       ; $6fec: $42
    ld c, b                                       ; $6fed: $48
    and d                                         ; $6fee: $a2
    jr jr_074_6ff8                                ; $6fef: $18 $07

    ld h, d                                       ; $6ff1: $62
    ld a, h                                       ; $6ff2: $7c
    jp nz, $203a                                  ; $6ff3: $c2 $3a $20

    ld a, c                                       ; $6ff6: $79
    adc e                                         ; $6ff7: $8b

jr_074_6ff8:
    ld a, $86                                     ; $6ff8: $3e $86
    add b                                         ; $6ffa: $80
    ld l, b                                       ; $6ffb: $68
    dec bc                                        ; $6ffc: $0b
    ld b, a                                       ; $6ffd: $47
    ld e, h                                       ; $6ffe: $5c
    ret nz                                        ; $6fff: $c0

    ldh [$0d], a                                  ; $7000: $e0 $0d
    ld h, c                                       ; $7002: $61
    ld l, d                                       ; $7003: $6a
    dec [hl]                                      ; $7004: $35
    ld b, d                                       ; $7005: $42
    nop                                           ; $7006: $00
    ld b, e                                       ; $7007: $43
    sbc c                                         ; $7008: $99
    add hl, bc                                    ; $7009: $09
    ld h, b                                       ; $700a: $60
    ret nz                                        ; $700b: $c0

    ld a, [bc]                                    ; $700c: $0a
    ld b, b                                       ; $700d: $40
    db $fc                                        ; $700e: $fc
    and e                                         ; $700f: $a3
    add c                                         ; $7010: $81
    and d                                         ; $7011: $a2
    ld a, $20                                     ; $7012: $3e $20
    nop                                           ; $7014: $00
    ld c, l                                       ; $7015: $4d
    ld [$44c8], sp                                ; $7016: $08 $c8 $44
    inc a                                         ; $7019: $3c
    bit 5, e                                      ; $701a: $cb $6b
    ld [hl], c                                    ; $701c: $71
    rst $38                                       ; $701d: $ff
    ldh [$6d], a                                  ; $701e: $e0 $6d
    ld c, c                                       ; $7020: $49
    add b                                         ; $7021: $80
    add b                                         ; $7022: $80
    ld hl, $0f02                                  ; $7023: $21 $02 $0f
    ld bc, $3e98                                  ; $7026: $01 $98 $3e
    ld [hl+], a                                   ; $7029: $22
    db $f4                                        ; $702a: $f4
    nop                                           ; $702b: $00
    ld a, b                                       ; $702c: $78
    nop                                           ; $702d: $00
    pop bc                                        ; $702e: $c1
    ld b, c                                       ; $702f: $41
    ld b, c                                       ; $7030: $41
    ld b, h                                       ; $7031: $44
    nop                                           ; $7032: $00
    ld c, b                                       ; $7033: $48
    ret z                                         ; $7034: $c8

    and a                                         ; $7035: $a7

jr_074_7036:
    or d                                          ; $7036: $b2
    and b                                         ; $7037: $a0
    nop                                           ; $7038: $00
    sbc d                                         ; $7039: $9a
    ret nz                                        ; $703a: $c0

    rst $00                                       ; $703b: $c7
    and a                                         ; $703c: $a7
    jr nz, jr_074_6fc9                            ; $703d: $20 $8a

    ld a, l                                       ; $703f: $7d
    ld a, e                                       ; $7040: $7b
    nop                                           ; $7041: $00
    ld [bc], a                                    ; $7042: $02
    inc bc                                        ; $7043: $03
    ld a, c                                       ; $7044: $79
    ld a, [hl]                                    ; $7045: $7e
    sbc h                                         ; $7046: $9c
    jr nz, @-$53                                  ; $7047: $20 $ab

    nop                                           ; $7049: $00
    or $e3                                        ; $704a: $f6 $e3
    rst $38                                       ; $704c: $ff
    ld b, h                                       ; $704d: $44
    nop                                           ; $704e: $00
    ld b, a                                       ; $704f: $47
    adc b                                         ; $7050: $88
    and [hl]                                      ; $7051: $a6
    ld d, $a4                                     ; $7052: $16 $a4
    ld bc, $9a9d                                  ; $7054: $01 $9d $9a
    ld b, b                                       ; $7057: $40
    add $9a                                       ; $7058: $c6 $9a
    ld [hl], b                                    ; $705a: $70
    ret nz                                        ; $705b: $c0

    or [hl]                                       ; $705c: $b6
    nop                                           ; $705d: $00
    or h                                          ; $705e: $b4
    nop                                           ; $705f: $00
    ld d, $48                                     ; $7060: $16 $48
    nop                                           ; $7062: $00
    sbc e                                         ; $7063: $9b
    sbc d                                         ; $7064: $9a
    push af                                       ; $7065: $f5
    pop hl                                        ; $7066: $e1
    adc l                                         ; $7067: $8d
    call c, $c1a2                                 ; $7068: $dc $a2 $c1
    ld [bc], a                                    ; $706b: $02
    dec c                                         ; $706c: $0d
    add a                                         ; $706d: $87
    sub b                                         ; $706e: $90
    ld c, b                                       ; $706f: $48
    and l                                         ; $7070: $a5
    ld h, l                                       ; $7071: $65
    inc bc                                        ; $7072: $03
    jr c, jr_074_7036                             ; $7073: $38 $c1

    db $fd                                        ; $7075: $fd
    db $e3                                        ; $7076: $e3
    sbc l                                         ; $7077: $9d
    db $f4                                        ; $7078: $f4
    pop hl                                        ; $7079: $e1
    or c                                          ; $707a: $b1
    nop                                           ; $707b: $00
    sbc d                                         ; $707c: $9a
    nop                                           ; $707d: $00
    or $e0                                        ; $707e: $f6 $e0
    add sp, -$1d                                  ; $7080: $e8 $e3
    and h                                         ; $7082: $a4
    ld bc, $4401                                  ; $7083: $01 $01 $44
    add a                                         ; $7086: $87
    and h                                         ; $7087: $a4
    ret                                           ; $7088: $c9


    and d                                         ; $7089: $a2
    ld c, d                                       ; $708a: $4a
    inc b                                         ; $708b: $04
    jr z, jr_074_70b0                             ; $708c: $28 $22

    nop                                           ; $708e: $00
    ld h, l                                       ; $708f: $65
    ld b, $5a                                     ; $7090: $06 $5a
    inc b                                         ; $7092: $04
    jp hl                                         ; $7093: $e9


    and b                                         ; $7094: $a0
    pop de                                        ; $7095: $d1
    add c                                         ; $7096: $81
    ld c, [hl]                                    ; $7097: $4e
    inc bc                                        ; $7098: $03
    call c, Call_000_01a1                         ; $7099: $dc $a1 $01
    ld b, d                                       ; $709c: $42
    ld c, d                                       ; $709d: $4a
    ld b, $00                                     ; $709e: $06 $00
    ld a, a                                       ; $70a0: $7f
    db $e4                                        ; $70a1: $e4
    ret nz                                        ; $70a2: $c0

    rst $20                                       ; $70a3: $e7
    and l                                         ; $70a4: $a5
    ld hl, $80e5                                  ; $70a5: $21 $e5 $80
    ld e, $c1                                     ; $70a8: $1e $c1
    sbc d                                         ; $70aa: $9a
    ld hl, $c116                                  ; $70ab: $21 $16 $c1
    db $f4                                        ; $70ae: $f4
    jp hl                                         ; $70af: $e9


jr_074_70b0:
    nop                                           ; $70b0: $00
    sbc a                                         ; $70b1: $9f
    db $e4                                        ; $70b2: $e4
    ld c, d                                       ; $70b3: $4a
    ld h, [hl]                                    ; $70b4: $66
    add b                                         ; $70b5: $80
    ret                                           ; $70b6: $c9


    xor b                                         ; $70b7: $a8
    ld [bc], a                                    ; $70b8: $02
    push hl                                       ; $70b9: $e5
    ld h, c                                       ; $70ba: $61
    ld h, h                                       ; $70bb: $64
    nop                                           ; $70bc: $00
    ld e, [hl]                                    ; $70bd: $5e
    ld hl, $61da                                  ; $70be: $21 $da $61
    nop                                           ; $70c1: $00
    ld d, [hl]                                    ; $70c2: $56
    ld hl, $e8f4                                  ; $70c3: $21 $f4 $e8
    jr nz, jr_074_70eb                            ; $70c6: $20 $23

    ld b, e                                       ; $70c8: $43
    dec h                                         ; $70c9: $25
    call nz, Call_000_0080                        ; $70ca: $c4 $80 $00
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    cp a                                          ; $70cf: $bf
    dec c                                         ; $70d0: $0d
    dec c                                         ; $70d1: $0d
    dec c                                         ; $70d2: $0d
    ld c, $0e                                     ; $70d3: $0e $0e
    ld c, $fa                                     ; $70d5: $0e $fa
    ld [$0b4d], a                                 ; $70d7: $ea $4d $0b
    ld c, $0e                                     ; $70da: $0e $0e
    db $fd                                        ; $70dc: $fd
    pop hl                                        ; $70dd: $e1
    ld c, l                                       ; $70de: $4d
    ei                                            ; $70df: $fb
    db $e3                                        ; $70e0: $e3
    pop hl                                        ; $70e1: $e1
    ldh [$f5], a                                  ; $70e2: $e0 $f5
    db $e4                                        ; $70e4: $e4
    sub $ef                                       ; $70e5: $d6 $ef
    nop                                           ; $70e7: $00
    call nz, $fde2                                ; $70e8: $c4 $e2 $fd

jr_074_70eb:
    xor $c0                                       ; $70eb: $ee $c0
    db $e3                                        ; $70ed: $e3
    and a                                         ; $70ee: $a7
    ldh [$fd], a                                  ; $70ef: $e0 $fd
    add sp, -$63                                  ; $70f1: $e8 $9d
    pop hl                                        ; $70f3: $e1
    call nc, $c0f1                                ; $70f4: $d4 $f1 $c0
    pop af                                        ; $70f7: $f1
    jr @-$38                                      ; $70f8: $18 $c6

    push hl                                       ; $70fa: $e5
    ld a, [hl]                                    ; $70fb: $7e
    ldh [$fd], a                                  ; $70fc: $e0 $fd
    db $e3                                        ; $70fe: $e3
    dec l                                         ; $70ff: $2d
    dec l                                         ; $7100: $2d
    ld a, e                                       ; $7101: $7b
    ld [c], a                                     ; $7102: $e2
    ret nc                                        ; $7103: $d0

    ld hl, sp+$3d                                 ; $7104: $f8 $3d
    push hl                                       ; $7106: $e5
    ld l, [hl]                                    ; $7107: $6e
    sub e                                         ; $7108: $93
    rst $20                                       ; $7109: $e7
    dec c                                         ; $710a: $0d
    ld l, l                                       ; $710b: $6d
    ld l, e                                       ; $710c: $6b
    rst $38                                       ; $710d: $ff
    rst $20                                       ; $710e: $e7
    ld c, l                                       ; $710f: $4d
    dec l                                         ; $7110: $2d
    or c                                          ; $7111: $b1
    pop hl                                        ; $7112: $e1
    ret nz                                        ; $7113: $c0

    ld [hl], a                                    ; $7114: $77
    db $e4                                        ; $7115: $e4
    inc de                                        ; $7116: $13
    db $eb                                        ; $7117: $eb
    adc c                                         ; $7118: $89
    jp hl                                         ; $7119: $e9


    inc b                                         ; $711a: $04
    pop hl                                        ; $711b: $e1
    adc e                                         ; $711c: $8b
    pop hl                                        ; $711d: $e1
    nop                                           ; $711e: $00
    ldh [$0d], a                                  ; $711f: $e0 $0d
    ld l, l                                       ; $7121: $6d
    inc c                                         ; $7122: $0c
    call Call_000_3ce1                            ; $7123: $cd $e1 $3c
    db $e4                                        ; $7126: $e4
    dec l                                         ; $7127: $2d
    dec c                                         ; $7128: $0d
    cp a                                          ; $7129: $bf
    db $e3                                        ; $712a: $e3
    ld a, l                                       ; $712b: $7d
    rst $30                                       ; $712c: $f7
    add hl, bc                                    ; $712d: $09
    ld [c], a                                     ; $712e: $e2
    dec bc                                        ; $712f: $0b
    ld [c], a                                     ; $7130: $e2
    cp [hl]                                       ; $7131: $be
    cp b                                          ; $7132: $b8
    db $e4                                        ; $7133: $e4
    ld l, l                                       ; $7134: $6d
    dec l                                         ; $7135: $2d
    dec l                                         ; $7136: $2d
    dec l                                         ; $7137: $2d
    inc c                                         ; $7138: $0c
    rst $38                                       ; $7139: $ff
    ldh [$2c], a                                  ; $713a: $e0 $2c
    nop                                           ; $713c: $00
    db $fc                                        ; $713d: $fc
    pop hl                                        ; $713e: $e1
    inc [hl]                                      ; $713f: $34
    pop hl                                        ; $7140: $e1
    ld a, [hl]                                    ; $7141: $7e
    ldh [$92], a                                  ; $7142: $e0 $92
    ld [$f043], a                                 ; $7144: $ea $43 $f0
    ld a, d                                       ; $7147: $7a
    pop bc                                        ; $7148: $c1
    add h                                         ; $7149: $84
    ld [c], a                                     ; $714a: $e2
    dec b                                         ; $714b: $05
    ldh [rNR13], a                                ; $714c: $e0 $13
    dec bc                                        ; $714e: $0b
    dec c                                         ; $714f: $0d

Jump_074_7150:
    pop bc                                        ; $7150: $c1
    ld [c], a                                     ; $7151: $e2
    db $fc                                        ; $7152: $fc
    ld [c], a                                     ; $7153: $e2
    inc l                                         ; $7154: $2c
    cp [hl]                                       ; $7155: $be
    pop hl                                        ; $7156: $e1
    dec a                                         ; $7157: $3d
    ldh [rNR42], a                                ; $7158: $e0 $21
    rst $20                                       ; $715a: $e7
    ret nz                                        ; $715b: $c0

    add b                                         ; $715c: $80
    push de                                       ; $715d: $d5
    ld [hl], c                                    ; $715e: $71
    jp nz, $c1c7                                  ; $715f: $c2 $c7 $c1

    ld b, d                                       ; $7162: $42
    ldh [$c1], a                                  ; $7163: $e0 $c1
    and $7e                                       ; $7165: $e6 $7e
    db $e3                                        ; $7167: $e3
    ld l, e                                       ; $7168: $6b
    ld l, l                                       ; $7169: $6d
    nop                                           ; $716a: $00
    add b                                         ; $716b: $80
    db $e3                                        ; $716c: $e3
    ld a, d                                       ; $716d: $7a
    jp c, $c214                                   ; $716e: $da $14 $c2

    add $c1                                       ; $7171: $c6 $c1
    ld b, d                                       ; $7173: $42
    db $e4                                        ; $7174: $e4
    ld a, [hl]                                    ; $7175: $7e
    and $7f                                       ; $7176: $e6 $7f
    ld [c], a                                     ; $7178: $e2
    xor $a3                                       ; $7179: $ee $a3
    nop                                           ; $717b: $00
    add b                                         ; $717c: $80
    ret c                                         ; $717d: $d8

    call nc, $c6a2                                ; $717e: $d4 $a2 $c6

jr_074_7181:
    jp nz, $e5c1                                  ; $7181: $c2 $c1 $e5

    ld bc, $7fe1                                  ; $7184: $01 $e1 $7f
    db $e4                                        ; $7187: $e4
    db $fd                                        ; $7188: $fd
    push bc                                       ; $7189: $c5
    ld a, d                                       ; $718a: $7a
    call z, Call_000_0978                         ; $718b: $cc $78 $09
    res 3, e                                      ; $718e: $cb $9b
    and c                                         ; $7190: $a1
    dec b                                         ; $7191: $05
    rst $20                                       ; $7192: $e7
    ld l, h                                       ; $7193: $6c
    ld c, h                                       ; $7194: $4c
    ld c, h                                       ; $7195: $4c
    ld c, h                                       ; $7196: $4c
    db $fd                                        ; $7197: $fd
    jp z, Jump_074_7150                           ; $7198: $ca $50 $71

    and c                                         ; $719b: $a1
    adc e                                         ; $719c: $8b
    or h                                          ; $719d: $b4
    adc h                                         ; $719e: $8c
    and e                                         ; $719f: $a3
    ld b, d                                       ; $71a0: $42
    and c                                         ; $71a1: $a1
    dec bc                                        ; $71a2: $0b
    dec b                                         ; $71a3: $05
    ldh [$2c], a                                  ; $71a4: $e0 $2c
    adc b                                         ; $71a6: $88
    pop bc                                        ; $71a7: $c1
    rst $28                                       ; $71a8: $ef
    ld l, h                                       ; $71a9: $6c
    ld l, h                                       ; $71aa: $6c
    dec hl                                        ; $71ab: $2b
    dec bc                                        ; $71ac: $0b
    cp [hl]                                       ; $71ad: $be
    rst $20                                       ; $71ae: $e7
    dec c                                         ; $71af: $0d
    dec c                                         ; $71b0: $0d
    ld c, e                                       ; $71b1: $4b
    nop                                           ; $71b2: $00
    cp l                                          ; $71b3: $bd
    jp nz, $cc3a                                  ; $71b4: $c2 $3a $cc

    nop                                           ; $71b7: $00
    and [hl]                                      ; $71b8: $a6
    ld h, b                                       ; $71b9: $60
    call nz, $e3c0                                ; $71ba: $c4 $c0 $e3
    add d                                         ; $71bd: $82
    ld [c], a                                     ; $71be: $e2
    pop bc                                        ; $71bf: $c1
    ldh [$fe], a                                  ; $71c0: $e0 $fe
    ldh [$84], a                                  ; $71c2: $e0 $84
    ld a, l                                       ; $71c4: $7d
    db $e4                                        ; $71c5: $e4
    db $fd                                        ; $71c6: $fd
    ret nz                                        ; $71c7: $c0

    ld c, e                                       ; $71c8: $4b
    cp l                                          ; $71c9: $bd
    call nz, $acb7                                ; $71ca: $c4 $b7 $ac
    inc bc                                        ; $71cd: $03
    add $c0                                       ; $71ce: $c6 $c0
    db $ec                                        ; $71d0: $ec
    inc l                                         ; $71d1: $2c
    ld e, $c2                                     ; $71d2: $1e $c2
    ldh [$0b], a                                  ; $71d4: $e0 $0b
    dec bc                                        ; $71d6: $0b
    ld l, e                                       ; $71d7: $6b
    ld c, e                                       ; $71d8: $4b
    ld a, h                                       ; $71d9: $7c
    add $7d                                       ; $71da: $c6 $7d
    ret z                                         ; $71dc: $c8

    ret z                                         ; $71dd: $c8

    adc [hl]                                      ; $71de: $8e
    jr c, @-$7b                                   ; $71df: $38 $83

    and [hl]                                      ; $71e1: $a6
    add a                                         ; $71e2: $87
    and c                                         ; $71e3: $a1
    adc e                                         ; $71e4: $8b
    push bc                                       ; $71e5: $c5
    ld l, e                                       ; $71e6: $6b
    ld c, e                                       ; $71e7: $4b
    ld c, e                                       ; $71e8: $4b
    pop bc                                        ; $71e9: $c1
    and $ff                                       ; $71ea: $e6 $ff
    call nz, $5a00                                ; $71ec: $c4 $00 $5a
    push hl                                       ; $71ef: $e5
    nop                                           ; $71f0: $00
    xor a                                         ; $71f1: $af
    ld [hl+], a                                   ; $71f2: $22
    jp $a187                                      ; $71f3: $c3 $87 $a1


    ret z                                         ; $71f6: $c8

    xor b                                         ; $71f7: $a8
    rst $30                                       ; $71f8: $f7
    jp $c97d                                      ; $71f9: $c3 $7d $c9


    jr nz, jr_074_7181                            ; $71fc: $20 $83

    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
    or d                                          ; $7200: $b2
    ld c, e                                       ; $7201: $4b
    add c                                         ; $7202: $81
    add a                                         ; $7203: $87
    xor e                                         ; $7204: $ab
    jp $fce6                                      ; $7205: $c3 $e6 $fc


    and h                                         ; $7208: $a4
    cp $c3                                        ; $7209: $fe $c3
    scf                                           ; $720b: $37
    sub h                                         ; $720c: $94
    ret nz                                        ; $720d: $c0

    add e                                         ; $720e: $83
    nop                                           ; $720f: $00
    jp nz, $fac5                                  ; $7210: $c2 $c5 $fa

    rst $28                                       ; $7213: $ef
    cp [hl]                                       ; $7214: $be
    add $43                                       ; $7215: $c6 $43
    ldh a, [$a4]                                  ; $7217: $f0 $a4
    add e                                         ; $7219: $83
    rlca                                          ; $721a: $07
    and e                                         ; $721b: $a3
    pop bc                                        ; $721c: $c1
    or $7e                                        ; $721d: $f6 $7e
    jp nz, $d800                                  ; $721f: $c2 $00 $d8

    db $e4                                        ; $7222: $e4
    add b                                         ; $7223: $80
    ld l, l                                       ; $7224: $6d
    add hl, sp                                    ; $7225: $39
    ld h, d                                       ; $7226: $62
    ld d, e                                       ; $7227: $53
    ld h, b                                       ; $7228: $60
    add b                                         ; $7229: $80
    ld hl, sp+$78                                 ; $722a: $f8 $78
    add b                                         ; $722c: $80
    ret nz                                        ; $722d: $c0

    db $e4                                        ; $722e: $e4
    scf                                           ; $722f: $37
    sub b                                         ; $7230: $90
    add b                                         ; $7231: $80
    jp nz, $c065                                  ; $7232: $c2 $65 $c0

    cp $d6                                        ; $7235: $fe $d6
    jp $f13d                                      ; $7237: $c3 $3d $f1


    nop                                           ; $723a: $00
    and $c9                                       ; $723b: $e6 $c9
    jp z, $8779                                   ; $723d: $ca $79 $87

    ld l, h                                       ; $7240: $6c
    ld h, c                                       ; $7241: $61
    ld l, h                                       ; $7242: $6c
    cp [hl]                                       ; $7243: $be
    and h                                         ; $7244: $a4
    or a                                          ; $7245: $b7
    ld c, d                                       ; $7246: $4a
    ret                                           ; $7247: $c9


    ld c, b                                       ; $7248: $48
    db $db                                        ; $7249: $db
    ld b, d                                       ; $724a: $42
    dec bc                                        ; $724b: $0b
    dec c                                         ; $724c: $0d
    inc c                                         ; $724d: $0c
    and l                                         ; $724e: $a5
    add b                                         ; $724f: $80
    ei                                            ; $7250: $fb
    add a                                         ; $7251: $87
    pop bc                                        ; $7252: $c1
    push hl                                       ; $7253: $e5
    dec hl                                        ; $7254: $2b
    ld h, b                                       ; $7255: $60
    ld b, b                                       ; $7256: $40
    rst $00                                       ; $7257: $c7
    add b                                         ; $7258: $80
    call nc, $6016                                ; $7259: $d4 $16 $60
    adc d                                         ; $725c: $8a
    db $ec                                        ; $725d: $ec
    ld c, e                                       ; $725e: $4b
    inc b                                         ; $725f: $04
    cp e                                          ; $7260: $bb
    add e                                         ; $7261: $83
    ld a, d                                       ; $7262: $7a
    ld h, c                                       ; $7263: $61
    ld l, l                                       ; $7264: $6d
    ld a, [de]                                    ; $7265: $1a
    and l                                         ; $7266: $a5
    nop                                           ; $7267: $00
    or d                                          ; $7268: $b2
    inc de                                        ; $7269: $13
    ld b, c                                       ; $726a: $41
    sub e                                         ; $726b: $93
    ld b, b                                       ; $726c: $40
    ld a, a                                       ; $726d: $7f
    db $eb                                        ; $726e: $eb
    ld bc, $3b2c                                  ; $726f: $01 $2c $3b
    and b                                         ; $7272: $a0
    ld a, d                                       ; $7273: $7a
    add d                                         ; $7274: $82
    ld b, b                                       ; $7275: $40
    and b                                         ; $7276: $a0
    ld a, l                                       ; $7277: $7d
    ld h, d                                       ; $7278: $62
    sbc a                                         ; $7279: $9f
    ld h, d                                       ; $727a: $62
    nop                                           ; $727b: $00
    xor a                                         ; $727c: $af
    ld b, l                                       ; $727d: $45
    ld h, h                                       ; $727e: $64
    inc b                                         ; $727f: $04
    ld a, [hl]                                    ; $7280: $7e
    adc $c0                                       ; $7281: $ce $c0
    pop hl                                        ; $7283: $e1
    dec bc                                        ; $7284: $0b
    nop                                           ; $7285: $00
    xor e                                         ; $7286: $ab
    jp c, Jump_000_0ce1                           ; $7287: $da $e1 $0c

    ld d, b                                       ; $728a: $50
    ret                                           ; $728b: $c9


    inc h                                         ; $728c: $24
    dec b                                         ; $728d: $05
    ld h, b                                       ; $728e: $60
    ld e, $fe                                     ; $728f: $1e $fe
    ret                                           ; $7291: $c9


    inc l                                         ; $7292: $2c
    inc l                                         ; $7293: $2c
    ld c, e                                       ; $7294: $4b
    ld l, e                                       ; $7295: $6b
    nop                                           ; $7296: $00
    and a                                         ; $7297: $a7
    cp c                                          ; $7298: $b9
    inc hl                                        ; $7299: $23
    or $2c                                        ; $729a: $f6 $2c
    nop                                           ; $729c: $00
    dec a                                         ; $729d: $3d
    dec h                                         ; $729e: $25
    nop                                           ; $729f: $00
    add [hl]                                      ; $72a0: $86
    ld a, l                                       ; $72a1: $7d
    jp z, $85fe                                   ; $72a2: $ca $fe $85

    inc a                                         ; $72a5: $3c
    ld h, e                                       ; $72a6: $63
    sbc [hl]                                      ; $72a7: $9e
    ld b, d                                       ; $72a8: $42
    rst $10                                       ; $72a9: $d7
    dec h                                         ; $72aa: $25
    add b                                         ; $72ab: $80
    call z, Call_074_7c00                         ; $72ac: $cc $00 $7c
    and e                                         ; $72af: $a3
    reti                                          ; $72b0: $d9


    ld hl, $6088                                  ; $72b1: $21 $88 $60
    add h                                         ; $72b4: $84
    ld h, b                                       ; $72b5: $60
    add c                                         ; $72b6: $81
    ld h, c                                       ; $72b7: $61
    halt                                          ; $72b8: $76
    jp hl                                         ; $72b9: $e9


    ld l, l                                       ; $72ba: $6d
    inc hl                                        ; $72bb: $23
    ld a, h                                       ; $72bc: $7c
    pop hl                                        ; $72bd: $e1
    ld [$b2bd], sp                                ; $72be: $08 $bd $b2
    rst $00                                       ; $72c1: $c7
    inc h                                         ; $72c2: $24
    reti                                          ; $72c3: $d9


    nop                                           ; $72c4: $00
    ld c, e                                       ; $72c5: $4b
    cp [hl]                                       ; $72c6: $be
    ldh [rHDMA2], a                               ; $72c7: $e0 $52
    pop bc                                        ; $72c9: $c1
    and h                                         ; $72ca: $a4
    nop                                           ; $72cb: $00
    call nz, Call_000_0a41                        ; $72cc: $c4 $41 $0a
    cp b                                          ; $72cf: $b8
    ld [c], a                                     ; $72d0: $e2
    ld c, h                                       ; $72d1: $4c
    cp e                                          ; $72d2: $bb
    ld b, d                                       ; $72d3: $42
    dec c                                         ; $72d4: $0d
    ld [hl], h                                    ; $72d5: $74
    ld hl, $c19a                                  ; $72d6: $21 $9a $c1
    push bc                                       ; $72d9: $c5
    ld b, $73                                     ; $72da: $06 $73
    inc l                                         ; $72dc: $2c
    ld c, $0a                                     ; $72dd: $0e $0a
    jr nz, @+$4d                                  ; $72df: $20 $4b

    dec bc                                        ; $72e1: $0b
    dec bc                                        ; $72e2: $0b
    cp a                                          ; $72e3: $bf
    ldh [$c1], a                                  ; $72e4: $e0 $c1
    inc b                                         ; $72e6: $04
    rst $38                                       ; $72e7: $ff
    ld b, b                                       ; $72e8: $40
    rlca                                          ; $72e9: $07
    jp nz, $eae0                                  ; $72ea: $c2 $e0 $ea

    and c                                         ; $72ed: $a1
    ld hl, sp+$22                                 ; $72ee: $f8 $22
    ld [hl], h                                    ; $72f0: $74
    ld [hl+], a                                   ; $72f1: $22
    and c                                         ; $72f2: $a1
    rlca                                          ; $72f3: $07
    add d                                         ; $72f4: $82
    db $10                                        ; $72f5: $10
    dec l                                         ; $72f6: $2d
    dec bc                                        ; $72f7: $0b
    ld c, e                                       ; $72f8: $4b
    ld [hl+], a                                   ; $72f9: $22
    cp l                                          ; $72fa: $bd
    ldh [$0b], a                                  ; $72fb: $e0 $0b
    ld sp, hl                                     ; $72fd: $f9
    ret nz                                        ; $72fe: $c0

    halt                                          ; $72ff: $76
    pop hl                                        ; $7300: $e1
    add c                                         ; $7301: $81
    ld [hl+], a                                   ; $7302: $22
    dec hl                                        ; $7303: $2b
    db $ec                                        ; $7304: $ec
    call nz, $22b6                                ; $7305: $c4 $b6 $22
    nop                                           ; $7308: $00
    or l                                          ; $7309: $b5
    inc hl                                        ; $730a: $23
    dec de                                        ; $730b: $1b
    ld [hl+], a                                   ; $730c: $22
    cp l                                          ; $730d: $bd
    or h                                          ; $730e: $b4
    jp nz, $bee1                                  ; $730f: $c2 $e1 $be

    db $e3                                        ; $7312: $e3
    or h                                          ; $7313: $b4
    ld b, b                                       ; $7314: $40
    ld c, c                                       ; $7315: $49
    and b                                         ; $7316: $a0
    ld hl, sp+$41                                 ; $7317: $f8 $41
    ret nz                                        ; $7319: $c0

    ld l, c                                       ; $731a: $69
    and e                                         ; $731b: $a3
    cp h                                          ; $731c: $bc
    pop hl                                        ; $731d: $e1
    cp b                                          ; $731e: $b8
    ld b, h                                       ; $731f: $44
    ld l, $07                                     ; $7320: $2e $07
    xor d                                         ; $7322: $aa
    dec b                                         ; $7323: $05
    and [hl]                                      ; $7324: $a6
    push bc                                       ; $7325: $c5
    ld c, l                                       ; $7326: $4d
    dec l                                         ; $7327: $2d
    dec l                                         ; $7328: $2d
    ld c, e                                       ; $7329: $4b
    rst $38                                       ; $732a: $ff
    ldh [$0b], a                                  ; $732b: $e0 $0b
    ld c, e                                       ; $732d: $4b
    ld [hl], a                                    ; $732e: $77
    ret nz                                        ; $732f: $c0

    ld c, e                                       ; $7330: $4b
    rst $30                                       ; $7331: $f7
    jp nz, Jump_074_41f8                          ; $7332: $c2 $f8 $41

    nop                                           ; $7335: $00
    halt                                          ; $7336: $76
    pop hl                                        ; $7337: $e1
    ld a, [hl-]                                   ; $7338: $3a
    adc c                                         ; $7339: $89
    ld d, d                                       ; $733a: $52
    ld b, e                                       ; $733b: $43
    add b                                         ; $733c: $80
    ld c, $77                                     ; $733d: $0e $77
    and e                                         ; $733f: $a3
    ld d, c                                       ; $7340: $51
    nop                                           ; $7341: $00
    ei                                            ; $7342: $fb
    ret nz                                        ; $7343: $c0

    add b                                         ; $7344: $80
    pop hl                                        ; $7345: $e1
    db $10                                        ; $7346: $10
    ld a, [hl-]                                   ; $7347: $3a
    pop hl                                        ; $7348: $e1
    cp c                                          ; $7349: $b9
    ld b, c                                       ; $734a: $41
    ret nz                                        ; $734b: $c0

    push hl                                       ; $734c: $e5
    or d                                          ; $734d: $b2
    ld bc, $fa0b                                  ; $734e: $01 $0b $fa
    ld h, c                                       ; $7351: $61
    ld a, [$fe2f]                                 ; $7352: $fa $2f $fe
    ld h, d                                       ; $7355: $62
    jr jr_074_73d4                                ; $7356: $18 $7c

    ld [hl+], a                                   ; $7358: $22
    sbc [hl]                                      ; $7359: $9e
    add c                                         ; $735a: $81
    ret nz                                        ; $735b: $c0

    db $e3                                        ; $735c: $e3
    ld c, e                                       ; $735d: $4b
    dec hl                                        ; $735e: $2b
    ld a, c                                       ; $735f: $79
    ldh [$3a], a                                  ; $7360: $e0 $3a
    ld b, c                                       ; $7362: $41
    pop af                                        ; $7363: $f1
    ret nz                                        ; $7364: $c0

    jr jr_074_73e1                                ; $7365: $18 $7a

    adc h                                         ; $7367: $8c
    add b                                         ; $7368: $80
    pop de                                        ; $7369: $d1
    db $fc                                        ; $736a: $fc
    dec h                                         ; $736b: $25
    dec c                                         ; $736c: $0d
    ld l, e                                       ; $736d: $6b
    ld [bc], a                                    ; $736e: $02
    db $e3                                        ; $736f: $e3
    ld a, $42                                     ; $7370: $3e $42
    or h                                          ; $7372: $b4
    pop bc                                        ; $7373: $c1
    rrca                                          ; $7374: $0f
    ld l, e                                       ; $7375: $6b

Jump_074_7376:
    ld a, [bc]                                    ; $7376: $0a
    ld a, [bc]                                    ; $7377: $0a
    dec c                                         ; $7378: $0d
    ld [hl], l                                    ; $7379: $75
    ld [hl+], a                                   ; $737a: $22
    ld a, d                                       ; $737b: $7a
    add [hl]                                      ; $737c: $86
    ld d, h                                       ; $737d: $54
    ld b, d                                       ; $737e: $42
    ld [hl], l                                    ; $737f: $75
    dec l                                         ; $7380: $2d
    ld b, $2a                                     ; $7381: $06 $2a
    db $e4                                        ; $7383: $e4
    dec c                                         ; $7384: $0d
    ld l, l                                       ; $7385: $6d
    dec a                                         ; $7386: $3d
    ret nz                                        ; $7387: $c0

    ei                                            ; $7388: $fb
    and b                                         ; $7389: $a0
    add d                                         ; $738a: $82
    ldh [rLYC], a                                 ; $738b: $e0 $45
    ld [c], a                                     ; $738d: $e2
    ei                                            ; $738e: $fb
    jr nz, @+$06                                  ; $738f: $20 $04

    ret nz                                        ; $7391: $c0

    ldh [$f7], a                                  ; $7392: $e0 $f7
    ld b, $6d                                     ; $7394: $06 $6d
    ld d, $82                                     ; $7396: $16 $82
    or a                                          ; $7398: $b7
    ld d, c                                       ; $7399: $51
    ld a, e                                       ; $739a: $7b
    ld h, h                                       ; $739b: $64
    pop bc                                        ; $739c: $c1
    pop hl                                        ; $739d: $e1
    ld a, $c1                                     ; $739e: $3e $c1
    ld a, h                                       ; $73a0: $7c
    ret nz                                        ; $73a1: $c0

    ld hl, $0046                                  ; $73a2: $21 $46 $00
    ld a, [bc]                                    ; $73a5: $0a
    dec bc                                        ; $73a6: $0b
    ld a, [bc]                                    ; $73a7: $0a
    ld a, [bc]                                    ; $73a8: $0a
    ld l, e                                       ; $73a9: $6b
    ret nz                                        ; $73aa: $c0

    push bc                                       ; $73ab: $c5
    jr nz, jr_074_7428                            ; $73ac: $20 $7a

    ld hl, $819a                                  ; $73ae: $21 $9a $81
    ld b, b                                       ; $73b1: $40
    ret z                                         ; $73b2: $c8

    add b                                         ; $73b3: $80
    ld l, b                                       ; $73b4: $68
    pop hl                                        ; $73b5: $e1
    ld [bc], a                                    ; $73b6: $02

jr_074_73b7:
    ld l, l                                       ; $73b7: $6d
    add d                                         ; $73b8: $82
    pop bc                                        ; $73b9: $c1
    ret nz                                        ; $73ba: $c0

    rst $20                                       ; $73bb: $e7
    ld b, $c2                                     ; $73bc: $06 $c2
    ldh [$2a], a                                  ; $73be: $e0 $2a
    ld a, [hl+]                                   ; $73c0: $2a
    inc b                                         ; $73c1: $04
    jr nz, @+$3e                                  ; $73c2: $20 $3c

    ld l, c                                       ; $73c4: $69
    ld a, a                                       ; $73c5: $7f
    and b                                         ; $73c6: $a0
    add b                                         ; $73c7: $80
    adc $80                                       ; $73c8: $ce $80
    ld h, e                                       ; $73ca: $63
    ld b, b                                       ; $73cb: $40
    pop bc                                        ; $73cc: $c1
    pop hl                                        ; $73cd: $e1
    add d                                         ; $73ce: $82
    pop bc                                        ; $73cf: $c1
    add c                                         ; $73d0: $81
    pop hl                                        ; $73d1: $e1
    ld [bc], a                                    ; $73d2: $02
    push hl                                       ; $73d3: $e5

jr_074_73d4:
    push bc                                       ; $73d4: $c5
    ld bc, $042f                                  ; $73d5: $01 $2f $04
    ld l, h                                       ; $73d8: $6c
    add d                                         ; $73d9: $82
    pop bc                                        ; $73da: $c1
    jr z, @-$6a                                   ; $73db: $28 $94

    dec b                                         ; $73dd: $05
    add b                                         ; $73de: $80
    rst $08                                       ; $73df: $cf
    ld h, d                                       ; $73e0: $62

jr_074_73e1:
    ld h, c                                       ; $73e1: $61
    ld l, e                                       ; $73e2: $6b
    ld c, b                                       ; $73e3: $48
    jp nz, Jump_000_034b                          ; $73e4: $c2 $4b $03

    db $e4                                        ; $73e7: $e4
    cp b                                          ; $73e8: $b8
    and l                                         ; $73e9: $a5
    nop                                           ; $73ea: $00
    inc l                                         ; $73eb: $2c
    inc b                                         ; $73ec: $04
    cp d                                          ; $73ed: $ba
    ld [$d080], sp                                ; $73ee: $08 $80 $d0
    ld a, [hl]                                    ; $73f1: $7e
    ld [hl+], a                                   ; $73f2: $22
    ld a, [bc]                                    ; $73f3: $0a
    jr nz, jr_074_73b7                            ; $73f4: $20 $c1

    ld [$c03d], a                                 ; $73f6: $ea $3d $c0
    or l                                          ; $73f9: $b5
    and b                                         ; $73fa: $a0
    nop                                           ; $73fb: $00
    inc a                                         ; $73fc: $3c
    ld b, a                                       ; $73fd: $47
    ld bc, $fba0                                  ; $73fe: $01 $a0 $fb
    ld h, $80                                     ; $7401: $26 $80
    call $e380                                    ; $7403: $cd $80 $e3
    inc bc                                        ; $7406: $03
    and $81                                       ; $7407: $e6 $81
    jp $a172                                      ; $7409: $c3 $72 $a1


    nop                                           ; $740c: $00
    ld l, d                                       ; $740d: $6a
    ld b, b                                       ; $740e: $40
    cp d                                          ; $740f: $ba
    rlca                                          ; $7410: $07
    scf                                           ; $7411: $37
    add d                                         ; $7412: $82
    ld c, h                                       ; $7413: $4c
    dec b                                         ; $7414: $05
    cp l                                          ; $7415: $bd
    xor d                                         ; $7416: $aa
    add hl, sp                                    ; $7417: $39
    ld h, c                                       ; $7418: $61
    ld b, b                                       ; $7419: $40
    db $e3                                        ; $741a: $e3
    inc bc                                        ; $741b: $03
    and $00                                       ; $741c: $e6 $00
    ld [hl], $c2                                  ; $741e: $36 $c2
    add b                                         ; $7420: $80
    rst $20                                       ; $7421: $e7

Jump_074_7422:
    cp d                                          ; $7422: $ba
    ld h, e                                       ; $7423: $63
    ld d, l                                       ; $7424: $55
    ld h, e                                       ; $7425: $63
    dec a                                         ; $7426: $3d
    adc l                                         ; $7427: $8d

jr_074_7428:
    cp [hl]                                       ; $7428: $be
    ld b, e                                       ; $7429: $43
    ld d, l                                       ; $742a: $55
    ret nz                                        ; $742b: $c0

    add $a8                                       ; $742c: $c6 $a8
    nop                                           ; $742e: $00
    inc b                                         ; $742f: $04
    ret nz                                        ; $7430: $c0

    ret nz                                        ; $7431: $c0

    jp hl                                         ; $7432: $e9


    dec a                                         ; $7433: $3d
    add c                                         ; $7434: $81
    cp $c5                                        ; $7435: $fe $c5
    nop                                           ; $7437: $00
    xor [hl]                                      ; $7438: $ae
    ld a, l                                       ; $7439: $7d
    inc hl                                        ; $743a: $23
    ld b, b                                       ; $743b: $40
    db $e3                                        ; $743c: $e3
    add [hl]                                      ; $743d: $86
    and l                                         ; $743e: $a5
    ld [bc], a                                    ; $743f: $02
    or a                                          ; $7440: $b7
    add c                                         ; $7441: $81
    ld c, e                                       ; $7442: $4b
    ld b, d                                       ; $7443: $42
    push bc                                       ; $7444: $c5
    cp d                                          ; $7445: $ba
    ld d, $7d                                     ; $7446: $16 $7d
    ld b, h                                       ; $7448: $44
    or c                                          ; $7449: $b1
    ld h, c                                       ; $744a: $61
    add h                                         ; $744b: $84
    and b                                         ; $744c: $a0
    ld c, [hl]                                    ; $744d: $4e
    and d                                         ; $744e: $a2
    nop                                           ; $744f: $00
    ld sp, hl                                     ; $7450: $f9
    call nz, $60b2                                ; $7451: $c4 $b2 $60
    db $ed                                        ; $7454: $ed
    jr nz, @+$2e                                  ; $7455: $20 $2c

    rlca                                          ; $7457: $07
    ret nz                                        ; $7458: $c0

    add e                                         ; $7459: $83
    rst $38                                       ; $745a: $ff
    jp $4b00                                      ; $745b: $c3 $00 $4b


    ld b, l                                       ; $745e: $45
    and [hl]                                      ; $745f: $a6
    ld a, [bc]                                    ; $7460: $0a
    adc $c2                                       ; $7461: $ce $c2
    dec bc                                        ; $7463: $0b
    cp c                                          ; $7464: $b9
    jp nz, Jump_074_426b                          ; $7465: $c2 $6b $42

    ldh [rTIMA], a                                ; $7468: $e0 $05
    push bc                                       ; $746a: $c5
    cp d                                          ; $746b: $ba
    rlca                                          ; $746c: $07
    cp c                                          ; $746d: $b9
    ld b, d                                       ; $746e: $42
    add b                                         ; $746f: $80
    add b                                         ; $7470: $80
    ld l, e                                       ; $7471: $6b
    ret nz                                        ; $7472: $c0

    ld b, $11                                     ; $7473: $06 $11
    ldh [$83], a                                  ; $7475: $e0 $83
    and e                                         ; $7477: $a3
    ld [$c2e0], sp                                ; $7478: $08 $e0 $c2
    pop hl                                        ; $747b: $e1
    add $a0                                       ; $747c: $c6 $a0
    dec l                                         ; $747e: $2d
    inc c                                         ; $747f: $0c
    xor $0a                                       ; $7480: $ee $0a
    ld a, $a0                                     ; $7482: $3e $a0
    ld c, e                                       ; $7484: $4b
    ld l, l                                       ; $7485: $6d
    push de                                       ; $7486: $d5
    ld h, h                                       ; $7487: $64
    add b                                         ; $7488: $80
    db $10                                        ; $7489: $10
    jp nz, $c7a3                                  ; $748a: $c2 $a3 $c7

    call nz, $c10c                                ; $748d: $c4 $0c $c1
    db $e4                                        ; $7490: $e4
    cpl                                           ; $7491: $2f
    dec hl                                        ; $7492: $2b
    dec c                                         ; $7493: $0d
    dec bc                                        ; $7494: $0b
    cp a                                          ; $7495: $bf
    ret                                           ; $7496: $c9


    cp l                                          ; $7497: $bd
    ld c, c                                       ; $7498: $49
    ld b, c                                       ; $7499: $41
    ld hl, $a282                                  ; $749a: $21 $82 $a2
    add b                                         ; $749d: $80
    nop                                           ; $749e: $00
    ld h, c                                       ; $749f: $61
    add hl, bc                                    ; $74a0: $09
    jp nz, $efc1                                  ; $74a1: $c2 $c1 $ef

    add b                                         ; $74a4: $80
    db $e3                                        ; $74a5: $e3
    ld a, [$8006]                                 ; $74a6: $fa $06 $80
    ld a, [bc]                                    ; $74a9: $0a
    sbc a                                         ; $74aa: $9f
    ld bc, $c06b                                  ; $74ab: $01 $6b $c0
    rlca                                          ; $74ae: $07
    rst $00                                       ; $74af: $c7
    nop                                           ; $74b0: $00
    ld h, e                                       ; $74b1: $63
    inc [hl]                                      ; $74b2: $34
    dec c                                         ; $74b3: $0d
    ld a, [hl]                                    ; $74b4: $7e
    add b                                         ; $74b5: $80
    cp b                                          ; $74b6: $b8
    ld [bc], a                                    ; $74b7: $02
    jp $4db0                                      ; $74b8: $c3 $b0 $4d


    ld c, l                                       ; $74bb: $4d
    rlca                                          ; $74bc: $07
    ld l, l                                       ; $74bd: $6d
    ld l, e                                       ; $74be: $6b
    ld l, e                                       ; $74bf: $6b
    call $4965                                    ; $74c0: $cd $65 $49
    and b                                         ; $74c3: $a0
    add b                                         ; $74c4: $80
    ld b, e                                       ; $74c5: $43
    add b                                         ; $74c6: $80
    xor $80                                       ; $74c7: $ee $80
    jp nz, Jump_000_3a14                          ; $74c9: $c2 $14 $3a

    dec b                                         ; $74cc: $05
    ld b, $a5                                     ; $74cd: $06 $a5
    ld c, l                                       ; $74cf: $4d
    add l                                         ; $74d0: $85
    ldh [rOCPD], a                                ; $74d1: $e0 $6b
    adc e                                         ; $74d3: $8b
    ret nz                                        ; $74d4: $c0

    ret nz                                        ; $74d5: $c0

    rst $20                                       ; $74d6: $e7
    ld a, d                                       ; $74d7: $7a
    add d                                         ; $74d8: $82
    nop                                           ; $74d9: $00
    add b                                         ; $74da: $80
    xor $40                                       ; $74db: $ee $40
    ld h, c                                       ; $74dd: $61
    ld b, b                                       ; $74de: $40
    ld b, d                                       ; $74df: $42
    add b                                         ; $74e0: $80
    call $e085                                    ; $74e1: $cd $85 $e0
    ret nz                                        ; $74e4: $c0

    push hl                                       ; $74e5: $e5
    jp Jump_000_3c40                              ; $74e6: $c3 $40 $3c


    ld b, b                                       ; $74e9: $40
    add b                                         ; $74ea: $80
    ld [bc], a                                    ; $74eb: $02
    ld h, b                                       ; $74ec: $60
    ld [$f8a1], sp                                ; $74ed: $08 $a1 $f8
    inc c                                         ; $74f0: $0c
    add b                                         ; $74f1: $80
    and l                                         ; $74f2: $a5
    nop                                           ; $74f3: $00
    xor h                                         ; $74f4: $ac
    pop bc                                        ; $74f5: $c1
    ld [c], a                                     ; $74f6: $e2
    add b                                         ; $74f7: $80
    ldh [rOCPD], a                                ; $74f8: $e0 $6b
    ld c, b                                       ; $74fa: $48
    ret z                                         ; $74fb: $c8

    add a                                         ; $74fc: $87
    ld [$c882], sp                                ; $74fd: $08 $82 $c8
    add e                                         ; $7500: $83
    ld l, h                                       ; $7501: $6c
    db $f4                                        ; $7502: $f4
    ld b, $c1                                     ; $7503: $06 $c1
    ld b, b                                       ; $7505: $40
    dec bc                                        ; $7506: $0b
    ccf                                           ; $7507: $3f
    ld h, b                                       ; $7508: $60
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    ld c, l                                       ; $750b: $4d
    ld a, [bc]                                    ; $750c: $0a
    add b                                         ; $750d: $80
    ld b, d                                       ; $750e: $42
    db $e3                                        ; $750f: $e3
    ret nz                                        ; $7510: $c0

    rst $20                                       ; $7511: $e7
    nop                                           ; $7512: $00
    ld [c], a                                     ; $7513: $e2
    inc [hl]                                      ; $7514: $34
    inc bc                                        ; $7515: $03
    ld a, $23                                     ; $7516: $3e $23
    inc [hl]                                      ; $7518: $34
    dec h                                         ; $7519: $25
    ret nz                                        ; $751a: $c0

    ccf                                           ; $751b: $3f
    ld h, c                                       ; $751c: $61
    sub c                                         ; $751d: $91
    and l                                         ; $751e: $a5
    nop                                           ; $751f: $00
    ld b, e                                       ; $7520: $43

jr_074_7521:
    db $ed                                        ; $7521: $ed
    ld b, c                                       ; $7522: $41
    inc b                                         ; $7523: $04
    ld [c], a                                     ; $7524: $e2
    ld c, h                                       ; $7525: $4c
    ld hl, $4b2d                                  ; $7526: $21 $2d $4b
    nop                                           ; $7529: $00
    cp c                                          ; $752a: $b9
    ld [c], a                                     ; $752b: $e2
    add [hl]                                      ; $752c: $86
    and b                                         ; $752d: $a0
    jp z, Jump_074_7422                           ; $752e: $ca $22 $74

    ld [bc], a                                    ; $7531: $02
    push af                                       ; $7532: $f5
    jp Jump_000_0069                              ; $7533: $c3 $69 $00


    pop bc                                        ; $7536: $c1
    pop hl                                        ; $7537: $e1
    ret nz                                        ; $7538: $c0

jr_074_7539:
    db $e4                                        ; $7539: $e4
    ld [bc], a                                    ; $753a: $02
    ld b, [hl]                                    ; $753b: $46
    jp z, $c02d                                   ; $753c: $ca $2d $c0

    db $e3                                        ; $753f: $e3
    ld h, [hl]                                    ; $7540: $66
    ld b, b                                       ; $7541: $40
    ld e, a                                       ; $7542: $5f
    nop                                           ; $7543: $00
    ld [hl], $e1                                  ; $7544: $36 $e1
    pop bc                                        ; $7546: $c1
    ld [c], a                                     ; $7547: $e2
    jp nc, $0000                                  ; $7548: $d2 $00 $00

    ld a, [$7502]                                 ; $754b: $fa $02 $75
    inc bc                                        ; $754e: $03
    add hl, bc                                    ; $754f: $09
    add c                                         ; $7550: $81
    xor b                                         ; $7551: $a8
    ld [hl+], a                                   ; $7552: $22
    add d                                         ; $7553: $82
    and c                                         ; $7554: $a1
    ld b, b                                       ; $7555: $40
    ld b, $59                                     ; $7556: $06 $59
    inc bc                                        ; $7558: $03
    add b                                         ; $7559: $80
    db $e3                                        ; $755a: $e3
    nop                                           ; $755b: $00
    jr z, jr_074_7521                             ; $755c: $28 $c3

    ld h, $a4                                     ; $755e: $26 $a4
    ld d, a                                       ; $7560: $57
    ld b, d                                       ; $7561: $42
    dec e                                         ; $7562: $1d
    ld b, b                                       ; $7563: $40
    or [hl]                                       ; $7564: $b6
    jp nz, $e0f6                                  ; $7565: $c2 $f6 $e0

    ld c, h                                       ; $7568: $4c
    ld [bc], a                                    ; $7569: $02
    push hl                                       ; $756a: $e5
    ld bc, $0100                                  ; $756b: $01 $00 $01
    db $e3                                        ; $756e: $e3
    ret nc                                        ; $756f: $d0

    daa                                           ; $7570: $27
    ld [hl], e                                    ; $7571: $73
    ld hl, $e380                                  ; $7572: $21 $80 $e3
    jr z, jr_074_7539                             ; $7575: $28 $c2

    cp d                                          ; $7577: $ba
    ld h, d                                       ; $7578: $62
    ld a, b                                       ; $7579: $78
    ld hl, $6332                                  ; $757a: $21 $32 $63
    nop                                           ; $757d: $00
    or c                                          ; $757e: $b1
    pop hl                                        ; $757f: $e1
    jp nz, $cee1                                  ; $7580: $c2 $e1 $ce

    inc hl                                        ; $7583: $23
    call $aa21                                    ; $7584: $cd $21 $aa
    ldh [rOBP1], a                                ; $7587: $e0 $49
    adc h                                         ; $7589: $8c
    inc b                                         ; $758a: $04
    ret nz                                        ; $758b: $c0

    ld c, d                                       ; $758c: $4a
    ld h, d                                       ; $758d: $62
    nop                                           ; $758e: $00
    rst $20                                       ; $758f: $e7
    jr nz, jr_074_75b7                            ; $7590: $20 $25

    inc bc                                        ; $7592: $03
    pop hl                                        ; $7593: $e1
    ld h, $fc                                     ; $7594: $26 $fc
    xor $b6                                       ; $7596: $ee $b6
    db $e3                                        ; $7598: $e3
    inc bc                                        ; $7599: $03
    dec hl                                        ; $759a: $2b
    set 0, c                                      ; $759b: $cb $c1
    ret nz                                        ; $759d: $c0

    db $e3                                        ; $759e: $e3
    jr nz, jr_074_75da                            ; $759f: $20 $39

    add h                                         ; $75a1: $84
    ret nz                                        ; $75a2: $c0

    ld hl, sp+$07                                 ; $75a3: $f8 $07
    jp Jump_074_6355                              ; $75a5: $c3 $55 $63


    ld a, $a1                                     ; $75a8: $3e $a1
    dec c                                         ; $75aa: $0d
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    nop                                           ; $75ad: $00
    ld bc, $ff00                                  ; $75ae: $01 $00 $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff

jr_074_75b7:
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    add b                                         ; $75be: $80
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
    db $eb                                        ; $75cb: $eb
    ld [$000f], a                                 ; $75cc: $ea $0f $00
    rst $38                                       ; $75cf: $ff
    db $e3                                        ; $75d0: $e3
    ld hl, sp-$1d                                 ; $75d1: $f8 $e3
    ldh [$f1], a                                  ; $75d3: $e0 $f1
    db $db                                        ; $75d5: $db
    and $f4                                       ; $75d6: $e6 $f4
    db $e4                                        ; $75d8: $e4
    ret nz                                        ; $75d9: $c0

jr_074_75da:
    xor $da                                       ; $75da: $ee $da
    db $e3                                        ; $75dc: $e3
    ldh [$e2], a                                  ; $75dd: $e0 $e2
    nop                                           ; $75df: $00
    rst $18                                       ; $75e0: $df
    di                                            ; $75e1: $f3
    add $e7                                       ; $75e2: $c6 $e7
    cp a                                          ; $75e4: $bf
    push af                                       ; $75e5: $f5
    add a                                         ; $75e6: $87
    push hl                                       ; $75e7: $e5
    ld a, a                                       ; $75e8: $7f
    ldh a, [rOCPD]                                ; $75e9: $f0 $6b
    push hl                                       ; $75eb: $e5

jr_074_75ec:
    sbc c                                         ; $75ec: $99
    db $e4                                        ; $75ed: $e4
    ld h, b                                       ; $75ee: $60
    ldh a, [rP1]                                  ; $75ef: $f0 $00
    jp Jump_000_3fe7                              ; $75f1: $c3 $e7 $3f


    pop af                                        ; $75f4: $f1
    inc l                                         ; $75f5: $2c
    jp hl                                         ; $75f6: $e9


    jr nz, jr_074_75ec                            ; $75f7: $20 $f3

    ret nz                                        ; $75f9: $c0

    add sp, -$7f                                  ; $75fa: $e8 $81
    rst $30                                       ; $75fc: $f7
    scf                                           ; $75fd: $37
    push hl                                       ; $75fe: $e5
    and c                                         ; $75ff: $a1
    rst $30                                       ; $7600: $f7
    nop                                           ; $7601: $00
    jp nz, Jump_074_61d2                          ; $7602: $c2 $d2 $61

    rst $20                                       ; $7605: $e7
    ld h, h                                       ; $7606: $64
    ld a, [c]                                     ; $7607: $f2
    adc l                                         ; $7608: $8d
    add $a4                                       ; $7609: $c6 $a4
    di                                            ; $760b: $f3
    ld [hl], b                                    ; $760c: $70
    add $65                                       ; $760d: $c6 $65
    ret c                                         ; $760f: $d8

    add e                                         ; $7610: $83
    ld hl, sp+$00                                 ; $7611: $f8 $00
    ld sp, $2cc1                                  ; $7613: $31 $c1 $2c
    call nz, $d525                                ; $7616: $c4 $25 $d5
    ld [bc], a                                    ; $7619: $02
    call nz, $d605                                ; $761a: $c4 $05 $d6
    inc l                                         ; $761d: $2c
    ld a, [c]                                     ; $761e: $f2
    rst $38                                       ; $761f: $ff
    ld [c], a                                     ; $7620: $e2
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    ld bc, $ff00                                  ; $7624: $01 $00 $ff
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
    nop                                           ; $7634: $00
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

jr_074_7644:
    rst $38                                       ; $7644: $ff
    nop                                           ; $7645: $00
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
    ld hl, sp-$01                                 ; $7656: $f8 $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    ld a, [c]                                     ; $765b: $f2
    pop af                                        ; $765c: $f1
    ld de, $0000                                  ; $765d: $11 $00 $00
    pop af                                        ; $7660: $f1
    pop af                                        ; $7661: $f1
    jr jr_074_7644                                ; $7662: $18 $e0

    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    ld a, [c]                                     ; $7667: $f2
    pop af                                        ; $7668: $f1
    inc de                                        ; $7669: $13
    inc de                                        ; $766a: $13
    call c, $ffff                                 ; $766b: $dc $ff $ff
    push af                                       ; $766e: $f5
    nop                                           ; $766f: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    ld [bc], a                                    ; $7673: $02
    nop                                           ; $7674: $00
    rrca                                          ; $7675: $0f
    ld [bc], a                                    ; $7676: $02
    ld [bc], a                                    ; $7677: $02
    nop                                           ; $7678: $00
    rrca                                          ; $7679: $0f
    inc b                                         ; $767a: $04
    ld [bc], a                                    ; $767b: $02
    nop                                           ; $767c: $00
    rrca                                          ; $767d: $0f
    ld b, $02                                     ; $767e: $06 $02
    nop                                           ; $7680: $00
    rrca                                          ; $7681: $0f
    ld [$0002], sp                                ; $7682: $08 $02 $00
    rrca                                          ; $7685: $0f
    ld b, $02                                     ; $7686: $06 $02
    nop                                           ; $7688: $00
    rrca                                          ; $7689: $0f
    inc b                                         ; $768a: $04
    ld [bc], a                                    ; $768b: $02
    nop                                           ; $768c: $00
    rrca                                          ; $768d: $0f
    ld [bc], a                                    ; $768e: $02
    ld [bc], a                                    ; $768f: $02
    nop                                           ; $7690: $00
    rrca                                          ; $7691: $0f
    rst $38                                       ; $7692: $ff
    nop                                           ; $7693: $00
    ld a, [bc]                                    ; $7694: $0a
    rrca                                          ; $7695: $0f
    ld [bc], a                                    ; $7696: $02
    ld e, $19                                     ; $7697: $1e $19
    rrca                                          ; $7699: $0f
    ld [bc], a                                    ; $769a: $02
    ld e, $28                                     ; $769b: $1e $28
    rrca                                          ; $769d: $0f
    ld [bc], a                                    ; $769e: $02
    ld e, $19                                     ; $769f: $1e $19
    rrca                                          ; $76a1: $0f
    ld [bc], a                                    ; $76a2: $02
    ld e, $ff                                     ; $76a3: $1e $ff
    ld bc, $0337                                  ; $76a5: $01 $37 $03
    ld de, $3a1e                                  ; $76a8: $11 $1e $3a
    inc bc                                        ; $76ab: $03
    ld de, $ff1e                                  ; $76ac: $11 $1e $ff
    ld [bc], a                                    ; $76af: $02
    dec a                                         ; $76b0: $3d
    ld bc, $1e14                                  ; $76b1: $01 $14 $1e
    ld a, $01                                     ; $76b4: $3e $01
    inc d                                         ; $76b6: $14
    ld e, $3f                                     ; $76b7: $1e $3f
    ld bc, $1e14                                  ; $76b9: $01 $14 $1e
    ld a, $01                                     ; $76bc: $3e $01
    inc d                                         ; $76be: $14
    ld e, $ff                                     ; $76bf: $1e $ff
    ld bc, $d5fe                                  ; $76c1: $01 $fe $d5
    nop                                           ; $76c4: $00
    rst $38                                       ; $76c5: $ff
    ldh [rTIMA], a                                ; $76c6: $e0 $05
    ei                                            ; $76c8: $fb
    ldh [$0b], a                                  ; $76c9: $e0 $0b
    rst $30                                       ; $76cb: $f7
    pop hl                                        ; $76cc: $e1
    nop                                           ; $76cd: $00
    ld [bc], a                                    ; $76ce: $02
    db $eb                                        ; $76cf: $eb
    nop                                           ; $76d0: $00
    jr z, @-$0f                                   ; $76d1: $28 $ef

    ldh [$90], a                                  ; $76d3: $e0 $90
    db $eb                                        ; $76d5: $eb
    ldh [$f5], a                                  ; $76d6: $e0 $f5
    nop                                           ; $76d8: $00
    ret z                                         ; $76d9: $c8

    ld a, [$e0e5]                                 ; $76da: $fa $e5 $e0
    add b                                         ; $76dd: $80
    ld [$00e4], a                                 ; $76de: $ea $e4 $00
    nop                                           ; $76e1: $00
    rla                                           ; $76e2: $17
    nop                                           ; $76e3: $00
    ld bc, $d612                                  ; $76e4: $01 $12 $d6
    ld [c], a                                     ; $76e7: $e2
    ld d, b                                       ; $76e8: $50
    rst $08                                       ; $76e9: $cf
    ldh [$e6], a                                  ; $76ea: $e0 $e6
    pop hl                                        ; $76ec: $e1
    ld [$e2da], a                                 ; $76ed: $ea $da $e2
    db $fd                                        ; $76f0: $fd
    db $e3                                        ; $76f1: $e3
    and $e1                                       ; $76f2: $e6 $e1
    ld d, a                                       ; $76f4: $57
    cpl                                           ; $76f5: $2f
    nop                                           ; $76f6: $00
    inc bc                                        ; $76f7: $03
    ret nz                                        ; $76f8: $c0

    ld [c], a                                     ; $76f9: $e2
    and b                                         ; $76fa: $a0
    xor a                                         ; $76fb: $af
    ldh [$64], a                                  ; $76fc: $e0 $64
    xor e                                         ; $76fe: $ab
    ldh [$c7], a                                  ; $76ff: $e0 $c7
    call nc, Call_000_2000                        ; $7701: $d4 $00 $20
    ret nz                                        ; $7704: $c0

    ld [c], a                                     ; $7705: $e2
    jp z, $9ce1                                   ; $7706: $ca $e1 $9c

    pop hl                                        ; $7709: $e1
    ld e, a                                       ; $770a: $5f
    nop                                           ; $770b: $00
    ld d, l                                       ; $770c: $55
    ld b, $96                                     ; $770d: $06 $96
    ld [c], a                                     ; $770f: $e2
    ld b, b                                       ; $7710: $40
    adc a                                         ; $7711: $8f
    ldh [$b2], a                                  ; $7712: $e0 $b2
    adc e                                         ; $7714: $8b
    ldh [$a8], a                                  ; $7715: $e0 $a8
    or $e2                                        ; $7717: $f6 $e2
    sbc h                                         ; $7719: $9c
    and h                                         ; $771a: $a4
    db $e3                                        ; $771b: $e3
    ld a, h                                       ; $771c: $7c
    pop hl                                        ; $771d: $e1
    cp a                                          ; $771e: $bf
    nop                                           ; $771f: $00
    inc c                                         ; $7720: $0c
    add b                                         ; $7721: $80
    ld [c], a                                     ; $7722: $e2
    adc [hl]                                      ; $7723: $8e
    pop hl                                        ; $7724: $e1
    ld e, c                                       ; $7725: $59
    ld a, [$e06b]                                 ; $7726: $fa $6b $e0
    ld d, b                                       ; $7729: $50
    add h                                         ; $772a: $84
    ld [c], a                                     ; $772b: $e2
    add b                                         ; $772c: $80
    nop                                           ; $772d: $00
    db $ec                                        ; $772e: $ec
    rst $38                                       ; $772f: $ff
    ld hl, sp-$01                                 ; $7730: $f8 $ff
    rst $38                                       ; $7732: $ff
    ldh [$fe], a                                  ; $7733: $e0 $fe
    ld b, d                                       ; $7735: $42
    ld hl, sp-$38                                 ; $7736: $f8 $c8
    ldh a, [$80]                                  ; $7738: $f0 $80
    cp a                                          ; $773a: $bf
    ldh [rNR10], a                                ; $773b: $e0 $10
    ldh [rP1], a                                  ; $773d: $e0 $00
    ret nz                                        ; $773f: $c0

    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    ld [c], a                                     ; $7742: $e2
    rst $30                                       ; $7743: $f7
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    cp h                                          ; $7746: $bc
    rst $38                                       ; $7747: $ff
    add sp, -$01                                  ; $7748: $e8 $ff
    add c                                         ; $774a: $81
    cp $08                                        ; $774b: $fe $08
    db $ed                                        ; $774d: $ed
    ldh a, [$f8]                                  ; $774e: $f0 $f8
    push hl                                       ; $7750: $e5
    jr nz, @-$3e                                  ; $7751: $20 $c0

    ld [hl], c                                    ; $7753: $71
    db $e3                                        ; $7754: $e3
    ld a, a                                       ; $7755: $7f
    rst $38                                       ; $7756: $ff
    cpl                                           ; $7757: $2f
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    ccf                                           ; $775a: $3f
    rst $38                                       ; $775b: $ff
    rra                                           ; $775c: $1f
    rst $38                                       ; $775d: $ff
    or a                                          ; $775e: $b7
    ld a, a                                       ; $775f: $7f
    rra                                           ; $7760: $1f
    rst $38                                       ; $7761: $ff
    ld a, a                                       ; $7762: $7f
    rrca                                          ; $7763: $0f
    ld a, a                                       ; $7764: $7f
    ld c, a                                       ; $7765: $4f
    ccf                                           ; $7766: $3f
    rlca                                          ; $7767: $07
    rra                                           ; $7768: $1f
    ld [bc], a                                    ; $7769: $02
    rst $38                                       ; $776a: $ff
    rra                                           ; $776b: $1f
    inc de                                        ; $776c: $13
    rrca                                          ; $776d: $0f
    ld bc, $0b0f                                  ; $776e: $01 $0f $0b
    rlca                                          ; $7771: $07
    ld bc, $07ff                                  ; $7772: $01 $ff $07
    nop                                           ; $7775: $00
    rlca                                          ; $7776: $07
    inc b                                         ; $7777: $04
    inc bc                                        ; $7778: $03
    ld e, h                                       ; $7779: $5c
    rst $38                                       ; $777a: $ff
    nop                                           ; $777b: $00
    rst $28                                       ; $777c: $ef
    rst $38                                       ; $777d: $ff
    add c                                         ; $777e: $81
    inc a                                         ; $777f: $3c
    db $10                                        ; $7780: $10
    ld b, h                                       ; $7781: $44
    and $20                                       ; $7782: $e6 $20
    ret nz                                        ; $7784: $c0

    add b                                         ; $7785: $80
    cp a                                          ; $7786: $bf
    ret nz                                        ; $7787: $c0

    nop                                           ; $7788: $00
    ldh [$90], a                                  ; $7789: $e0 $90
    ldh [$80], a                                  ; $778b: $e0 $80
    cp $e0                                        ; $778d: $fe $e0
    nop                                           ; $778f: $00
    ei                                            ; $7790: $fb
    ret nz                                        ; $7791: $c0

    jr nz, @-$5e                                  ; $7792: $20 $a0

    ldh [$7d], a                                  ; $7794: $e0 $7d
    rst $38                                       ; $7796: $ff
    rst $28                                       ; $7797: $ef
    rst $38                                       ; $7798: $ff
    ld a, [hl-]                                   ; $7799: $3a
    ld a, [$e2da]                                 ; $779a: $fa $da $e2
    ld [$c0e3], sp                                ; $779d: $08 $e3 $c0
    and h                                         ; $77a0: $a4
    ld hl, sp-$20                                 ; $77a1: $f8 $e0
    ld hl, sp-$10                                 ; $77a3: $f8 $f0
    rst $38                                       ; $77a5: $ff
    db $fc                                        ; $77a6: $fc
    ret nc                                        ; $77a7: $d0

    db $fc                                        ; $77a8: $fc
    ld a, [c]                                     ; $77a9: $f2
    db $fc                                        ; $77aa: $fc
    ldh [$fc], a                                  ; $77ab: $e0 $fc
    or b                                          ; $77ad: $b0
    rst $30                                       ; $77ae: $f7
    ld hl, sp-$1c                                 ; $77af: $f8 $e4
    ld hl, sp-$80                                 ; $77b1: $f8 $80
    push hl                                       ; $77b3: $e5
    cp [hl]                                       ; $77b4: $be
    rst $38                                       ; $77b5: $ff
    db $e3                                        ; $77b6: $e3
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    ld b, b                                       ; $77b9: $40
    rst $38                                       ; $77ba: $ff
    nop                                           ; $77bb: $00
    rst $20                                       ; $77bc: $e7
    db $fc                                        ; $77bd: $fc
    rst $38                                       ; $77be: $ff
    or $ff                                        ; $77bf: $f6 $ff
    ld a, a                                       ; $77c1: $7f
    db $fc                                        ; $77c2: $fc
    rst $38                                       ; $77c3: $ff
    ld hl, sp-$02                                 ; $77c4: $f8 $fe
    add sp, -$02                                  ; $77c6: $e8 $fe
    ld hl, sp-$08                                 ; $77c8: $f8 $f8
    ldh [$83], a                                  ; $77ca: $e0 $83
    db $f4                                        ; $77cc: $f4
    rst $38                                       ; $77cd: $ff
    ld a, b                                       ; $77ce: $78
    ldh [$cb], a                                  ; $77cf: $e0 $cb
    jp $c5e2                                      ; $77d1: $c3 $e2 $c5


    ldh a, [$e0]                                  ; $77d4: $f0 $e0
    rst $28                                       ; $77d6: $ef
    ld [$f1c0], a                                 ; $77d7: $ea $c0 $f1
    ld b, b                                       ; $77da: $40
    ldh [$ea], a                                  ; $77db: $e0 $ea
    ret nc                                        ; $77dd: $d0

    pop hl                                        ; $77de: $e1
    rst $08                                       ; $77df: $cf
    jp hl                                         ; $77e0: $e9


    db $ec                                        ; $77e1: $ec
    rst $38                                       ; $77e2: $ff
    ld sp, hl                                     ; $77e3: $f9
    cp $7f                                        ; $77e4: $fe $7f
    and $f8                                       ; $77e6: $e6 $f8
    ld c, b                                       ; $77e8: $48
    ldh a, [$d0]                                  ; $77e9: $f0 $d0
    ldh [$a8], a                                  ; $77eb: $e0 $a8
    ld [hl], d                                    ; $77ed: $72
    ldh [$fb], a                                  ; $77ee: $e0 $fb

jr_074_77f0:
    ld b, b                                       ; $77f0: $40
    add b                                         ; $77f1: $80
    db $10                                        ; $77f2: $10
    rst $20                                       ; $77f3: $e7
    jp hl                                         ; $77f4: $e9


    cp $8e                                        ; $77f5: $fe $8e
    ldh a, [$30]                                  ; $77f7: $f0 $30
    pop af                                        ; $77f9: $f1
    ret nz                                        ; $77fa: $c0

    ld hl, sp-$1b                                 ; $77fb: $f8 $e5
    ld h, d                                       ; $77fd: $62
    pop bc                                        ; $77fe: $c1
    db $10                                        ; $77ff: $10
    push hl                                       ; $7800: $e5
    cp a                                          ; $7801: $bf
    ld a, a                                       ; $7802: $7f
    sbc a                                         ; $7803: $9f
    ld a, a                                       ; $7804: $7f
    rst $38                                       ; $7805: $ff
    ld [hl], a                                    ; $7806: $77
    ccf                                           ; $7807: $3f
    ld e, a                                       ; $7808: $5f
    ccf                                           ; $7809: $3f
    ld c, a                                       ; $780a: $4f
    ccf                                           ; $780b: $3f
    cpl                                           ; $780c: $2f
    rra                                           ; $780d: $1f
    rst $30                                       ; $780e: $f7
    rla                                           ; $780f: $17
    rrca                                          ; $7810: $0f
    ld [de], a                                    ; $7811: $12
    inc d                                         ; $7812: $14
    ldh [$09], a                                  ; $7813: $e0 $09
    rlca                                          ; $7815: $07
    rla                                           ; $7816: $17
    inc bc                                        ; $7817: $03
    rst $38                                       ; $7818: $ff
    dec b                                         ; $7819: $05
    inc bc                                        ; $781a: $03
    inc b                                         ; $781b: $04
    inc bc                                        ; $781c: $03
    ld [bc], a                                    ; $781d: $02
    ld bc, $ff5c                                  ; $781e: $01 $5c $ff
    rst $30                                       ; $7821: $f7
    jp Jump_000_3c3c                              ; $7822: $c3 $3c $3c


    sbc d                                         ; $7825: $9a
    add $00                                       ; $7826: $c6 $00
    nop                                           ; $7828: $00
    ld b, b                                       ; $7829: $40
    add b                                         ; $782a: $80
    rst $18                                       ; $782b: $df
    ret nz                                        ; $782c: $c0

    add b                                         ; $782d: $80
    jr nz, jr_074_77f0                            ; $782e: $20 $c0

    and b                                         ; $7830: $a0
    cp $e2                                        ; $7831: $fe $e2
    ld d, b                                       ; $7833: $50
    add b                                         ; $7834: $80
    ldh a, [$a0]                                  ; $7835: $f0 $a0
    pop hl                                        ; $7837: $e1
    db $10                                        ; $7838: $10
    db $e3                                        ; $7839: $e3
    jp c, Jump_074_64e1                           ; $783a: $da $e1 $64

    pop bc                                        ; $783d: $c1
    xor b                                         ; $783e: $a8
    ldh a, [$ea]                                  ; $783f: $f0 $ea
    ldh a, [$df]                                  ; $7841: $f0 $df
    db $f4                                        ; $7843: $f4
    ld hl, sp-$2c                                 ; $7844: $f8 $d4
    ld hl, sp-$0c                                 ; $7846: $f8 $f4
    inc d                                         ; $7848: $14
    ldh [$b8], a                                  ; $7849: $e0 $b8
    ldh a, [$fb]                                  ; $784b: $f0 $fb
    add sp, -$10                                  ; $784d: $e8 $f0
    db $10                                        ; $784f: $10
    jp hl                                         ; $7850: $e9


    ld e, b                                       ; $7851: $58
    rst $20                                       ; $7852: $e7
    ld h, [hl]                                    ; $7853: $66
    add c                                         ; $7854: $81
    db $fc                                        ; $7855: $fc
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $30                                       ; $7858: $f7
    cp $fd                                        ; $7859: $fe $fd
    cp $fa                                        ; $785b: $fe $fa
    db $fc                                        ; $785d: $fc
    ld [$fc3b], a                                 ; $785e: $ea $3b $fc
    ld sp, hl                                     ; $7861: $f9
    ld hl, sp-$20                                 ; $7862: $f8 $e0
    db $f4                                        ; $7864: $f4
    rst $38                                       ; $7865: $ff

jr_074_7866:
    ld c, b                                       ; $7866: $48
    ld [hl+], a                                   ; $7867: $22
    db $eb                                        ; $7868: $eb
    and b                                         ; $7869: $a0
    ldh [$f0], a                                  ; $786a: $e0 $f0
    call z, $fba3                                 ; $786c: $cc $a3 $fb
    push bc                                       ; $786f: $c5
    pop af                                        ; $7870: $f1
    call $cbe3                                    ; $7871: $cd $e3 $cb
    nop                                           ; $7874: $00
    nop                                           ; $7875: $00
    db $ed                                        ; $7876: $ed
    cp $ff                                        ; $7877: $fe $ff
    cp $f8                                        ; $7879: $fe $f8
    add sp, -$10                                  ; $787b: $e8 $f0
    ld d, d                                       ; $787d: $52
    ldh [$e8], a                                  ; $787e: $e0 $e8
    ret nz                                        ; $7880: $c0

    rst $20                                       ; $7881: $e7
    ret nz                                        ; $7882: $c0

    add b                                         ; $7883: $80
    ld d, b                                       ; $7884: $50
    sub $c0                                       ; $7885: $d6 $c0
    jr nz, @-$39                                  ; $7887: $20 $c5

    cp l                                          ; $7889: $bd
    cp $ee                                        ; $788a: $fe $ee
    jp $b1f0                                      ; $788c: $c3 $f0 $b1


    ld a, [de]                                    ; $788f: $1a
    ldh [$f8], a                                  ; $7890: $e0 $f8
    push hl                                       ; $7892: $e5
    or d                                          ; $7893: $b2
    and c                                         ; $7894: $a1
    ld d, h                                       ; $7895: $54
    and c                                         ; $7896: $a1
    rst $38                                       ; $7897: $ff
    ld a, a                                       ; $7898: $7f
    rst $30                                       ; $7899: $f7
    xor a                                         ; $789a: $af
    ld a, a                                       ; $789b: $7f
    ld a, a                                       ; $789c: $7f
    inc d                                         ; $789d: $14
    ldh [$b7], a                                  ; $789e: $e0 $b7
    rra                                           ; $78a0: $1f
    ccf                                           ; $78a1: $3f
    rra                                           ; $78a2: $1f
    ld a, a                                       ; $78a3: $7f

jr_074_78a4:
    cpl                                           ; $78a4: $2f
    rra                                           ; $78a5: $1f
    ld e, a                                       ; $78a6: $5f
    rrca                                          ; $78a7: $0f
    rrca                                          ; $78a8: $0f
    rlca                                          ; $78a9: $07
    ld a, [bc]                                    ; $78aa: $0a
    inc d                                         ; $78ab: $14
    ld [c], a                                     ; $78ac: $e2
    rst $38                                       ; $78ad: $ff
    dec bc                                        ; $78ae: $0b
    ld bc, $0103                                  ; $78af: $01 $03 $01
    ld [bc], a                                    ; $78b2: $02
    ld bc, $0005                                  ; $78b3: $01 $05 $00
    sub l                                         ; $78b6: $95
    rst $18                                       ; $78b7: $df
    ld [de], a                                    ; $78b8: $12
    ldh [rSCY], a                                 ; $78b9: $e0 $42
    sub b                                         ; $78bb: $90
    ld [$0ca0], a                                 ; $78bc: $ea $a0 $0c
    ld [c], a                                     ; $78bf: $e2
    cp $e1                                        ; $78c0: $fe $e1
    and b                                         ; $78c2: $a0
    ld [hl], h                                    ; $78c3: $74
    jr nc, jr_074_7866                            ; $78c4: $30 $a0

    jr nz, @-$3b                                  ; $78c6: $20 $c3

    ei                                            ; $78c8: $fb
    jp c, $b0e6                                   ; $78c9: $da $e6 $b0

    ldh [$f4], a                                  ; $78cc: $e0 $f4
    rra                                           ; $78ce: $1f
    ret nz                                        ; $78cf: $c0

    rst $30                                       ; $78d0: $f7
    ret c                                         ; $78d1: $d8

    ldh a, [$f8]                                  ; $78d2: $f0 $f8
    inc d                                         ; $78d4: $14
    ldh [$b4], a                                  ; $78d5: $e0 $b4
    ldh [$f0], a                                  ; $78d7: $e0 $f0
    ldh [$fa], a                                  ; $78d9: $e0 $fa
    jr nz, jr_074_78a4                            ; $78db: $20 $c7

    ei                                            ; $78dd: $fb
    ld [de], a                                    ; $78de: $12
    ldh [$91], a                                  ; $78df: $e0 $91
    nop                                           ; $78e1: $00
    db $fd                                        ; $78e2: $fd
    cp $f6                                        ; $78e3: $fe $f6
    rst $38                                       ; $78e5: $ff
    db $fc                                        ; $78e6: $fc
    cp $fc                                        ; $78e7: $fe $fc
    db $fd                                        ; $78e9: $fd
    ld hl, sp-$14                                 ; $78ea: $f8 $ec
    ld hl, sp-$06                                 ; $78ec: $f8 $fa
    ld b, $f8                                     ; $78ee: $06 $f8
    ldh [$f5], a                                  ; $78f0: $e0 $f5
    cp $78                                        ; $78f2: $fe $78
    push hl                                       ; $78f4: $e5
    inc l                                         ; $78f5: $2c
    push af                                       ; $78f6: $f5
    nop                                           ; $78f7: $00
    and c                                         ; $78f8: $a1
    xor $cc                                       ; $78f9: $ee $cc
    pop af                                        ; $78fb: $f1
    xor d                                         ; $78fc: $aa
    rst $38                                       ; $78fd: $ff
    ld [bc], a                                    ; $78fe: $02
    add c                                         ; $78ff: $81
    and b                                         ; $7900: $a0
    pop bc                                        ; $7901: $c1
    add b                                         ; $7902: $80
    pop bc                                        ; $7903: $c1
    add l                                         ; $7904: $85
    jp $a1ff                                      ; $7905: $c3 $ff $a1


    jp $8300                                      ; $7908: $c3 $00 $83


    dec b                                         ; $790b: $05
    add e                                         ; $790c: $83
    ld b, b                                       ; $790d: $40
    add c                                         ; $790e: $81
    di                                            ; $790f: $f3
    ld b, c                                       ; $7910: $41
    add b                                         ; $7911: $80
    ldh [$a0], a                                  ; $7912: $e0 $a0
    ld [hl], b                                    ; $7914: $70
    ret nz                                        ; $7915: $c0

    ret nz                                        ; $7916: $c0

    ldh [rBCPS], a                                ; $7917: $e0 $68
    ldh a, [rIE]                                  ; $7919: $f0 $ff
    pop af                                        ; $791b: $f1
    db $fc                                        ; $791c: $fc
    call c, Call_000_1eff                         ; $791d: $dc $ff $1e
    rst $38                                       ; $7920: $ff
    add b                                         ; $7921: $80
    ld e, $fd                                     ; $7922: $1e $fd
    ld [de], a                                    ; $7924: $12
    ld [hl], h                                    ; $7925: $74
    add d                                         ; $7926: $82
    ld c, b                                       ; $7927: $48
    nop                                           ; $7928: $00
    ld bc, $5878                                  ; $7929: $01 $78 $58
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    ld b, b                                       ; $792e: $40
    add c                                         ; $792f: $81
    add d                                         ; $7930: $82
    pop bc                                        ; $7931: $c1
    and b                                         ; $7932: $a0
    pop bc                                        ; $7933: $c1
    and c                                         ; $7934: $a1
    jp $85ff                                      ; $7935: $c3 $ff $85


    jp $8304                                      ; $7938: $c3 $04 $83


    ld b, c                                       ; $793b: $41
    add e                                         ; $793c: $83
    ld [bc], a                                    ; $793d: $02
    add c                                         ; $793e: $81
    or $6d                                        ; $793f: $f6 $6d
    add b                                         ; $7941: $80
    add b                                         ; $7942: $80
    and b                                         ; $7943: $a0
    ld c, h                                       ; $7944: $4c
    and b                                         ; $7945: $a0
    ret nc                                        ; $7946: $d0

    ldh [$64], a                                  ; $7947: $e0 $64

jr_074_7949:
    ldh a, [$ed]                                  ; $7949: $f0 $ed
    ldh a, [$d0]                                  ; $794b: $f0 $d0
    ld [c], a                                     ; $794d: $e2
    ld b, c                                       ; $794e: $41
    ld e, $c6                                     ; $794f: $1e $c6
    add c                                         ; $7951: $81
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    jr nc, jr_074_7949                            ; $7954: $30 $f3

    nop                                           ; $7956: $00
    add d                                         ; $7957: $82
    ret nc                                        ; $7958: $d0

    ldh [$a0], a                                  ; $7959: $e0 $a0
    xor c                                         ; $795b: $a9
    ld [bc], a                                    ; $795c: $02
    ld bc, $0300                                  ; $795d: $01 $00 $03
    nop                                           ; $7960: $00
    ld [hl], c                                    ; $7961: $71
    xor c                                         ; $7962: $a9
    pop af                                        ; $7963: $f1
    ldh [$60], a                                  ; $7964: $e0 $60
    add sp, $30                                   ; $7966: $e8 $30
    add e                                         ; $7968: $83
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    nop                                           ; $7971: $00
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
    nop                                           ; $7982: $00
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
    nop                                           ; $7993: $00
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
    nop                                           ; $79a4: $00
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    ccf                                           ; $79a9: $3f
    ld bc, $0000                                  ; $79aa: $01 $00 $00
    nop                                           ; $79ad: $00

    push af                                       ; $79ae: $f5
    push bc                                       ; $79af: $c5
    push de                                       ; $79b0: $d5
    push hl                                       ; $79b1: $e5
    ld [$c32f], a                                 ; $79b2: $ea $2f $c3
    ld c, a                                       ; $79b5: $4f
    ld a, $ff                                     ; $79b6: $3e $ff
    ld b, $01                                     ; $79b8: $06 $01
    ld hl, $c330                                  ; $79ba: $21 $30 $c3
    ld [hl+], a                                   ; $79bd: $22
    ld [hl], b                                    ; $79be: $70
    inc hl                                        ; $79bf: $23
    ld [hl+], a                                   ; $79c0: $22
    ld [hl], b                                    ; $79c1: $70
    inc hl                                        ; $79c2: $23
    ld [hl+], a                                   ; $79c3: $22
    ld [hl], b                                    ; $79c4: $70
    inc hl                                        ; $79c5: $23
    ld [hl+], a                                   ; $79c6: $22
    ld [hl], b                                    ; $79c7: $70
    inc hl                                        ; $79c8: $23
    ld [hl+], a                                   ; $79c9: $22
    ld [hl+], a                                   ; $79ca: $22
    ld [hl+], a                                   ; $79cb: $22
    ld [hl+], a                                   ; $79cc: $22
    ld a, c                                       ; $79cd: $79
    ld h, $00                                     ; $79ce: $26 $00
    ld l, a                                       ; $79d0: $6f
    add hl, hl                                    ; $79d1: $29
    ld bc, $403a                                  ; $79d2: $01 $3a $40
    add hl, bc                                    ; $79d5: $09
    ld a, [hl+]                                   ; $79d6: $2a
    ld h, [hl]                                    ; $79d7: $66
    ld l, a                                       ; $79d8: $6f
    ld a, [hl]                                    ; $79d9: $7e
    cp $fe                                        ; $79da: $fe $fe
    jr nz, jr_074_79e0                            ; $79dc: $20 $02

    jr jr_074_7a50                                ; $79de: $18 $70

jr_074_79e0:
    add sp, -$02                                  ; $79e0: $e8 $fe
    ld de, $c332                                  ; $79e2: $11 $32 $c3
    push hl                                       ; $79e5: $e5
    ld hl, sp+$02                                 ; $79e6: $f8 $02
    ld [hl], e                                    ; $79e8: $73
    inc hl                                        ; $79e9: $23
    ld [hl], d                                    ; $79ea: $72
    pop hl                                        ; $79eb: $e1
    ld d, h                                       ; $79ec: $54
    ld e, l                                       ; $79ed: $5d
    ld b, $ff                                     ; $79ee: $06 $ff
    ld c, $03                                     ; $79f0: $0e $03
    xor a                                         ; $79f2: $af
    ld hl, $c330                                  ; $79f3: $21 $30 $c3
    ld [hl], a                                    ; $79f6: $77
    ld hl, $c338                                  ; $79f7: $21 $38 $c3
    ld [hl], a                                    ; $79fa: $77
    inc hl                                        ; $79fb: $23

jr_074_79fc:
    inc b                                         ; $79fc: $04
    ld a, [de]                                    ; $79fd: $1a
    inc de                                        ; $79fe: $13
    cp $fe                                        ; $79ff: $fe $fe
    jr z, jr_074_7a38                             ; $7a01: $28 $35

    cp $ff                                        ; $7a03: $fe $ff
    jr nz, jr_074_79fc                            ; $7a05: $20 $f5

    inc b                                         ; $7a07: $04
    ld a, b                                       ; $7a08: $78
    inc a                                         ; $7a09: $3c
    ld [hl], a                                    ; $7a0a: $77
    push de                                       ; $7a0b: $d5
    push hl                                       ; $7a0c: $e5
    ld hl, sp+$04                                 ; $7a0d: $f8 $04
    ld e, [hl]                                    ; $7a0f: $5e
    inc hl                                        ; $7a10: $23
    ld d, [hl]                                    ; $7a11: $56
    pop hl                                        ; $7a12: $e1
    ld [de], a                                    ; $7a13: $12
    inc de                                        ; $7a14: $13
    inc de                                        ; $7a15: $13
    push hl                                       ; $7a16: $e5
    ld hl, sp+$04                                 ; $7a17: $f8 $04
    ld [hl], e                                    ; $7a19: $73
    inc hl                                        ; $7a1a: $23
    ld [hl], d                                    ; $7a1b: $72
    pop hl                                        ; $7a1c: $e1
    pop de                                        ; $7a1d: $d1
    ld a, [de]                                    ; $7a1e: $1a
    inc a                                         ; $7a1f: $3c
    inc de                                        ; $7a20: $13
    push hl                                       ; $7a21: $e5
    push de                                       ; $7a22: $d5
    ld d, a                                       ; $7a23: $57
    ld a, $04                                     ; $7a24: $3e $04
    sub c                                         ; $7a26: $91
    ld hl, $c330                                  ; $7a27: $21 $30 $c3
    ld e, a                                       ; $7a2a: $5f
    ld a, d                                       ; $7a2b: $7a
    ld d, $00                                     ; $7a2c: $16 $00
    add hl, de                                    ; $7a2e: $19
    add hl, de                                    ; $7a2f: $19
    inc hl                                        ; $7a30: $23
    ld [hl], a                                    ; $7a31: $77
    pop de                                        ; $7a32: $d1
    pop hl                                        ; $7a33: $e1
    inc hl                                        ; $7a34: $23
    dec c                                         ; $7a35: $0d
    jr nz, jr_074_79fc                            ; $7a36: $20 $c4

jr_074_7a38:
    ld a, $ff                                     ; $7a38: $3e $ff
    dec hl                                        ; $7a3a: $2b
    ld [hl], a                                    ; $7a3b: $77
    push hl                                       ; $7a3c: $e5
    ld hl, sp+$02                                 ; $7a3d: $f8 $02
    ld e, [hl]                                    ; $7a3f: $5e
    inc hl                                        ; $7a40: $23
    ld d, [hl]                                    ; $7a41: $56
    pop hl                                        ; $7a42: $e1
    dec de                                        ; $7a43: $1b
    dec de                                        ; $7a44: $1b
    ld [de], a                                    ; $7a45: $12
    ld a, $01                                     ; $7a46: $3e $01
    ld hl, $7a64                                  ; $7a48: $21 $64 $7a
    call Call_000_23e8                            ; $7a4b: $cd $e8 $23
    add sp, $02                                   ; $7a4e: $e8 $02

jr_074_7a50:
    pop hl                                        ; $7a50: $e1
    pop de                                        ; $7a51: $d1
    pop bc                                        ; $7a52: $c1
    pop af                                        ; $7a53: $f1
    ret                                           ; $7a54: $c9


    push af                                       ; $7a55: $f5
    push bc                                       ; $7a56: $c5
    push de                                       ; $7a57: $d5
    push hl                                       ; $7a58: $e5
    ld hl, $7a64                                  ; $7a59: $21 $64 $7a
    call Call_000_2449                            ; $7a5c: $cd $49 $24
    pop hl                                        ; $7a5f: $e1
    pop de                                        ; $7a60: $d1
    pop bc                                        ; $7a61: $c1
    pop af                                        ; $7a62: $f1
    ret                                           ; $7a63: $c9


    rst $30                                       ; $7a64: $f7
    add b                                         ; $7a65: $80
    inc bc                                        ; $7a66: $03
    jr nz, jr_074_7a6d                            ; $7a67: $20 $04

    rst $30                                       ; $7a69: $f7
    nop                                           ; $7a6a: $00
    inc bc                                        ; $7a6b: $03
    ret nz                                        ; $7a6c: $c0

jr_074_7a6d:
    push af                                       ; $7a6d: $f5
    push bc                                       ; $7a6e: $c5
    push de                                       ; $7a6f: $d5
    push hl                                       ; $7a70: $e5
    ldh a, [$96]                                  ; $7a71: $f0 $96
    push af                                       ; $7a73: $f5
    ld a, $06                                     ; $7a74: $3e $06
    ldh [$96], a                                  ; $7a76: $e0 $96
    ldh [rSVBK], a                                ; $7a78: $e0 $70
    ld c, $00                                     ; $7a7a: $0e $00
    ld hl, $c338                                  ; $7a7c: $21 $38 $c3

jr_074_7a7f:
    ld a, [hl]                                    ; $7a7f: $7e
    cp $ff                                        ; $7a80: $fe $ff
    jr z, jr_074_7aa1                             ; $7a82: $28 $1d

    push hl                                       ; $7a84: $e5
    ld l, c                                       ; $7a85: $69
    ld h, $00                                     ; $7a86: $26 $00
    add hl, hl                                    ; $7a88: $29
    ld de, $c330                                  ; $7a89: $11 $30 $c3
    add hl, de                                    ; $7a8c: $19
    inc hl                                        ; $7a8d: $23
    ld a, [hl]                                    ; $7a8e: $7e
    dec a                                         ; $7a8f: $3d
    ld [hl], a                                    ; $7a90: $77
    pop hl                                        ; $7a91: $e1
    inc hl                                        ; $7a92: $23
    ld b, c                                       ; $7a93: $41
    inc c                                         ; $7a94: $0c
    or a                                          ; $7a95: $b7
    jr nz, jr_074_7a7f                            ; $7a96: $20 $e7

    ld a, b                                       ; $7a98: $78
    call Call_074_7aab                            ; $7a99: $cd $ab $7a
    ld a, c                                       ; $7a9c: $79
    cp $04                                        ; $7a9d: $fe $04
    jr nz, jr_074_7a7f                            ; $7a9f: $20 $de

jr_074_7aa1:
    pop af                                        ; $7aa1: $f1
    ldh [$96], a                                  ; $7aa2: $e0 $96
    ldh [rSVBK], a                                ; $7aa4: $e0 $70
    pop hl                                        ; $7aa6: $e1
    pop de                                        ; $7aa7: $d1
    pop bc                                        ; $7aa8: $c1
    pop af                                        ; $7aa9: $f1
    ret                                           ; $7aaa: $c9


Call_074_7aab:
    push af                                       ; $7aab: $f5
    push bc                                       ; $7aac: $c5
    push de                                       ; $7aad: $d5
    push hl                                       ; $7aae: $e5
    push af                                       ; $7aaf: $f5
    add sp, -$01                                  ; $7ab0: $e8 $ff
    ld hl, sp+$00                                 ; $7ab2: $f8 $00
    ld [hl], a                                    ; $7ab4: $77
    ld h, $00                                     ; $7ab5: $26 $00
    ld l, a                                       ; $7ab7: $6f
    add hl, hl                                    ; $7ab8: $29
    ld bc, $c330                                  ; $7ab9: $01 $30 $c3
    add hl, bc                                    ; $7abc: $09
    ld a, [hl]                                    ; $7abd: $7e
    ld [$c33c], a                                 ; $7abe: $ea $3c $c3

jr_074_7ac1:
    ld a, [$c32f]                                 ; $7ac1: $fa $2f $c3
    ld l, a                                       ; $7ac4: $6f
    ld h, $00                                     ; $7ac5: $26 $00
    add hl, hl                                    ; $7ac7: $29
    ld bc, $403a                                  ; $7ac8: $01 $3a $40
    add hl, bc                                    ; $7acb: $09
    ld a, [hl+]                                   ; $7acc: $2a
    ld h, [hl]                                    ; $7acd: $66
    ld l, a                                       ; $7ace: $6f
    ld a, [$c33c]                                 ; $7acf: $fa $3c $c3
    ld c, a                                       ; $7ad2: $4f
    ld b, $00                                     ; $7ad3: $06 $00
    add hl, bc                                    ; $7ad5: $09
    ld a, [hl]                                    ; $7ad6: $7e
    cp $ff                                        ; $7ad7: $fe $ff
    jr nz, jr_074_7aea                            ; $7ad9: $20 $0f

    ld hl, sp+$00                                 ; $7adb: $f8 $00
    ld c, [hl]                                    ; $7add: $4e
    ld b, $00                                     ; $7ade: $06 $00
    ld hl, $c338                                  ; $7ae0: $21 $38 $c3
    add hl, bc                                    ; $7ae3: $09
    ld a, [hl]                                    ; $7ae4: $7e
    ld [$c33c], a                                 ; $7ae5: $ea $3c $c3
    jr jr_074_7ac1                                ; $7ae8: $18 $d7

jr_074_7aea:
    ld b, a                                       ; $7aea: $47
    inc hl                                        ; $7aeb: $23
    ld c, [hl]                                    ; $7aec: $4e
    inc hl                                        ; $7aed: $23
    ld e, [hl]                                    ; $7aee: $5e
    inc hl                                        ; $7aef: $23
    ld a, [hl]                                    ; $7af0: $7e
    push af                                       ; $7af1: $f5
    push bc                                       ; $7af2: $c5
    ld l, e                                       ; $7af3: $6b
    ld h, $00                                     ; $7af4: $26 $00
    add hl, hl                                    ; $7af6: $29
    add hl, hl                                    ; $7af7: $29
    add hl, hl                                    ; $7af8: $29
    add hl, hl                                    ; $7af9: $29
    ld de, $b000                                  ; $7afa: $11 $00 $b0
    add hl, de                                    ; $7afd: $19
    push hl                                       ; $7afe: $e5
    ld l, b                                       ; $7aff: $68
    ld h, $00                                     ; $7b00: $26 $00
    add hl, hl                                    ; $7b02: $29
    add hl, hl                                    ; $7b03: $29
    add hl, hl                                    ; $7b04: $29
    add hl, hl                                    ; $7b05: $29
    ld bc, $d800                                  ; $7b06: $01 $00 $d8
    add hl, bc                                    ; $7b09: $09
    pop de                                        ; $7b0a: $d1
    pop bc                                        ; $7b0b: $c1
    call Call_000_0468                            ; $7b0c: $cd $68 $04
    ld a, [$c33c]                                 ; $7b0f: $fa $3c $c3
    add $04                                       ; $7b12: $c6 $04
    ld [$c33c], a                                 ; $7b14: $ea $3c $c3
    pop af                                        ; $7b17: $f1
    ld d, a                                       ; $7b18: $57
    add sp, $01                                   ; $7b19: $e8 $01
    pop af                                        ; $7b1b: $f1
    ld h, $00                                     ; $7b1c: $26 $00
    ld l, a                                       ; $7b1e: $6f
    add hl, hl                                    ; $7b1f: $29
    ld bc, $c330                                  ; $7b20: $01 $30 $c3
    add hl, bc                                    ; $7b23: $09
    ld a, [$c33c]                                 ; $7b24: $fa $3c $c3
    ld [hl+], a                                   ; $7b27: $22
    ld [hl], d                                    ; $7b28: $72
    pop hl                                        ; $7b29: $e1
    pop de                                        ; $7b2a: $d1
    pop bc                                        ; $7b2b: $c1
    pop af                                        ; $7b2c: $f1
    ret                                           ; $7b2d: $c9


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

Call_074_7c00:
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

Jump_074_7f7c:
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
