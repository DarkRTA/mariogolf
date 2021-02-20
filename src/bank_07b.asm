; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07b", ROMX[$4000], BANK[$7b]

    ld [$9940], sp                                ; $4000: $08 $40 $99
    ld c, h                                       ; $4003: $4c
    ret nc                                        ; $4004: $d0

    ld e, c                                       ; $4005: $59
    sub l                                         ; $4006: $95
    ld h, a                                       ; $4007: $67
    db $10                                        ; $4008: $10
    ld b, b                                       ; $4009: $40
    ld d, b                                       ; $400a: $50
    ld b, b                                       ; $400b: $40
    sub h                                         ; $400c: $94
    ld c, d                                       ; $400d: $4a
    ld a, $4b                                     ; $400e: $3e $4b
    ld e, c                                       ; $4010: $59
    ld de, $7fff                                  ; $4011: $11 $ff $7f
    adc $39                                       ; $4014: $ce $39
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    rst $38                                       ; $4018: $ff
    ld a, a                                       ; $4019: $7f
    rst $38                                       ; $401a: $ff
    dec h                                         ; $401b: $25
    ld e, c                                       ; $401c: $59
    ld de, $0000                                  ; $401d: $11 $00 $00
    rst $38                                       ; $4020: $ff
    ld a, a                                       ; $4021: $7f
    ld c, c                                       ; $4022: $49
    rrca                                          ; $4023: $0f
    ld [bc], a                                    ; $4024: $02
    ld [bc], a                                    ; $4025: $02
    ldh [rP1], a                                  ; $4026: $e0 $00
    rst $38                                       ; $4028: $ff
    ld a, a                                       ; $4029: $7f
    rst $38                                       ; $402a: $ff
    dec h                                         ; $402b: $25
    add b                                         ; $402c: $80
    ld a, l                                       ; $402d: $7d
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    rst $38                                       ; $4030: $ff
    ld a, a                                       ; $4031: $7f
    rst $38                                       ; $4032: $ff
    ld [bc], a                                    ; $4033: $02
    ld e, c                                       ; $4034: $59
    ld de, $0000                                  ; $4035: $11 $00 $00
    rst $38                                       ; $4038: $ff
    ld a, a                                       ; $4039: $7f
    rst $38                                       ; $403a: $ff
    ld [bc], a                                    ; $403b: $02
    add b                                         ; $403c: $80
    ld a, l                                       ; $403d: $7d
    nop                                           ; $403e: $00
    nop                                           ; $403f: $00
    rst $38                                       ; $4040: $ff
    ld [bc], a                                    ; $4041: $02
    ld e, c                                       ; $4042: $59
    ld de, $25ff                                  ; $4043: $11 $ff $25
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    rst $38                                       ; $4048: $ff
    ld a, a                                       ; $4049: $7f
    rra                                           ; $404a: $1f
    nop                                           ; $404b: $00
    rst $38                                       ; $404c: $ff
    dec h                                         ; $404d: $25
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    dec sp                                        ; $4050: $3b
    nop                                           ; $4051: $00
    rst $38                                       ; $4052: $ff
    cp $e8                                        ; $4053: $fe $e8
    rrca                                          ; $4055: $0f
    nop                                           ; $4056: $00
    ld bc, $eaf0                                  ; $4057: $01 $f0 $ea
    db $f4                                        ; $405a: $f4
    rst $28                                       ; $405b: $ef
    rst $38                                       ; $405c: $ff
    push de                                       ; $405d: $d5
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    nop                                           ; $4060: $00
    ld d, b                                       ; $4061: $50
    nop                                           ; $4062: $00
    xor d                                         ; $4063: $aa
    nop                                           ; $4064: $00
    db $fd                                        ; $4065: $fd
    ld d, l                                       ; $4066: $55
    db $fc                                        ; $4067: $fc
    and $ff                                       ; $4068: $e6 $ff
    nop                                           ; $406a: $00
    ld a, a                                       ; $406b: $7f
    nop                                           ; $406c: $00
    ccf                                           ; $406d: $3f
    nop                                           ; $406e: $00
    rra                                           ; $406f: $1f
    rra                                           ; $4070: $1f
    nop                                           ; $4071: $00
    add a                                         ; $4072: $87
    nop                                           ; $4073: $00
    ld b, c                                       ; $4074: $41
    ldh a, [$e4]                                  ; $4075: $f0 $e4
    xor [hl]                                      ; $4077: $ae
    rst $20                                       ; $4078: $e7
    and $e1                                       ; $4079: $e6 $e1
    cp $a0                                        ; $407b: $fe $a0
    rst $20                                       ; $407d: $e7
    db $fd                                        ; $407e: $fd
    nop                                           ; $407f: $00
    ld a, [$f500]                                 ; $4080: $fa $00 $f5
    nop                                           ; $4083: $00
    cp $fa                                        ; $4084: $fe $fa
    ld hl, sp-$20                                 ; $4086: $f8 $e0
    ld [$e0b8], a                                 ; $4088: $ea $b8 $e0
    xor d                                         ; $408b: $aa
    nop                                           ; $408c: $00
    ld d, h                                       ; $408d: $54
    nop                                           ; $408e: $00
    and b                                         ; $408f: $a0
    ld c, e                                       ; $4090: $4b
    nop                                           ; $4091: $00
    ld b, b                                       ; $4092: $40
    or h                                          ; $4093: $b4
    and $80                                       ; $4094: $e6 $80
    and [hl]                                      ; $4096: $a6
    ldh [$fd], a                                  ; $4097: $e0 $fd
    pop hl                                        ; $4099: $e1
    xor d                                         ; $409a: $aa
    ld a, h                                       ; $409b: $7c
    ldh [$ae], a                                  ; $409c: $e0 $ae
    push af                                       ; $409e: $f5
    pop hl                                        ; $409f: $e1
    ld a, [hl+]                                   ; $40a0: $2a
    nop                                           ; $40a1: $00
    dec b                                         ; $40a2: $05
    ldh a, [$e4]                                  ; $40a3: $f0 $e4
    ld d, l                                       ; $40a5: $55
    db $f4                                        ; $40a6: $f4
    ldh [$15], a                                  ; $40a7: $e0 $15
    ei                                            ; $40a9: $fb
    nop                                           ; $40aa: $00
    adc d                                         ; $40ab: $8a
    adc h                                         ; $40ac: $8c

jr_07b_40ad:
    ld [c], a                                     ; $40ad: $e2
    dec d                                         ; $40ae: $15
    nop                                           ; $40af: $00
    adc a                                         ; $40b0: $8f
    nop                                           ; $40b1: $00
    ld d, a                                       ; $40b2: $57
    xor [hl]                                      ; $40b3: $ae
    add b                                         ; $40b4: $80
    and $2a                                       ; $40b5: $e6 $2a
    nop                                           ; $40b7: $00
    ld b, l                                       ; $40b8: $45
    sub [hl]                                      ; $40b9: $96
    and $af                                       ; $40ba: $e6 $af
    add sp, -$20                                  ; $40bc: $e8 $e0
    xor e                                         ; $40be: $ab
    call c, $e880                                 ; $40bf: $dc $80 $e8
    sub h                                         ; $40c2: $94
    pop hl                                        ; $40c3: $e1
    add sp, $00                                   ; $40c4: $e8 $00
    ret nc                                        ; $40c6: $d0

    jr nz, jr_07b_40ad                            ; $40c7: $20 $e4

    ld d, l                                       ; $40c9: $55
    nop                                           ; $40ca: $00
    add hl, sp                                    ; $40cb: $39
    add d                                         ; $40cc: $82
    and b                                         ; $40cd: $a0
    db $e4                                        ; $40ce: $e4
    ld h, h                                       ; $40cf: $64
    jp hl                                         ; $40d0: $e9


    dec e                                         ; $40d1: $1d
    nop                                           ; $40d2: $00
    ld a, [bc]                                    ; $40d3: $0a
    nop                                           ; $40d4: $00
    add sp, -$3e                                  ; $40d5: $e8 $c2
    pop hl                                        ; $40d7: $e1
    rst $38                                       ; $40d8: $ff
    ld [bc], a                                    ; $40d9: $02
    nop                                           ; $40da: $00
    db $f4                                        ; $40db: $f4
    ld bc, $01e9                                  ; $40dc: $01 $e9 $01
    pop de                                        ; $40df: $d1
    dec c                                         ; $40e0: $0d
    rst $38                                       ; $40e1: $ff
    db $ed                                        ; $40e2: $ed
    rra                                           ; $40e3: $1f
    rst $18                                       ; $40e4: $df

jr_07b_40e5:
    rra                                           ; $40e5: $1f
    cp a                                          ; $40e6: $bf
    rra                                           ; $40e7: $1f
    ld e, a                                       ; $40e8: $5f
    rra                                           ; $40e9: $1f
    rst $38                                       ; $40ea: $ff
    sbc a                                         ; $40eb: $9f
    ldh [rIE], a                                  ; $40ec: $e0 $ff
    ldh a, [rIE]                                  ; $40ee: $f0 $ff
    ld hl, sp-$03                                 ; $40f0: $f8 $fd
    ld hl, sp+$2b                                 ; $40f2: $f8 $2b
    ld hl, sp-$04                                 ; $40f4: $f8 $fc

jr_07b_40f6:
    rst $38                                       ; $40f6: $ff
    ld [c], a                                     ; $40f7: $e2
    rst $38                                       ; $40f8: $ff
    jp nc, Jump_07b_5fc3                          ; $40f9: $d2 $c3 $5f

    sub [hl]                                      ; $40fc: $96
    ldh [$62], a                                  ; $40fd: $e0 $62
    ld [c], a                                     ; $40ff: $e2
    adc e                                         ; $4100: $8b
    cp $fe                                        ; $4101: $fe $fe
    ret nz                                        ; $4103: $c0

    call nz, $eaea                                ; $4104: $c4 $ea $ea
    ret nz                                        ; $4107: $c0

    ld a, $e3                                     ; $4108: $3e $e3
    or b                                          ; $410a: $b0
    jp $731f                                      ; $410b: $c3 $1f $73


    nop                                           ; $410e: $00
    inc bc                                        ; $410f: $03
    jr c, jr_07b_40f6                             ; $4110: $38 $e4

    inc b                                         ; $4112: $04
    rst $20                                       ; $4113: $e7
    push de                                       ; $4114: $d5
    nop                                           ; $4115: $00
    jr z, jr_07b_40e5                             ; $4116: $28 $cd

    pop hl                                        ; $4118: $e1
    xor d                                         ; $4119: $aa
    db $fc                                        ; $411a: $fc
    ret nz                                        ; $411b: $c0

    xor d                                         ; $411c: $aa
    jp nc, Jump_000_01e6                          ; $411d: $d2 $e6 $01

    or h                                          ; $4120: $b4
    call nz, $1015                                ; $4121: $c4 $15 $10
    ldh [$50], a                                  ; $4124: $e0 $50
    ld a, [hl-]                                   ; $4126: $3a
    ldh a, [$c0]                                  ; $4127: $f0 $c0
    nop                                           ; $4129: $00
    ld hl, sp-$40                                 ; $412a: $f8 $c0
    inc d                                         ; $412c: $14
    nop                                           ; $412d: $00
    xor b                                         ; $412e: $a8
    add sp, -$40                                  ; $412f: $e8 $c0
    rst $38                                       ; $4131: $ff
    push af                                       ; $4132: $f5
    jp hl                                         ; $4133: $e9


    ld [bc], a                                    ; $4134: $02
    ldh [$c4], a                                  ; $4135: $e0 $c4
    rst $18                                       ; $4137: $df
    push hl                                       ; $4138: $e5
    and d                                         ; $4139: $a2
    ld [hl], b                                    ; $413a: $70
    ret nz                                        ; $413b: $c0

    jr z, jr_07b_413e                             ; $413c: $28 $00

jr_07b_413e:
    inc b                                         ; $413e: $04
    cp b                                          ; $413f: $b8
    ret nc                                        ; $4140: $d0

    and $dc                                       ; $4141: $e6 $dc
    pop bc                                        ; $4143: $c1
    call c, $fee9                                 ; $4144: $dc $e9 $fe
    nop                                           ; $4147: $00
    ld a, l                                       ; $4148: $7d
    sub h                                         ; $4149: $94
    call nz, Call_07b_4a54                        ; $414a: $c4 $54 $4a
    ld [de], a                                    ; $414d: $12
    ldh [rP1], a                                  ; $414e: $e0 $00
    ret c                                         ; $4150: $d8

    ret nz                                        ; $4151: $c0

    ld b, l                                       ; $4152: $45
    ld a, [de]                                    ; $4153: $1a
    ldh [$a1], a                                  ; $4154: $e0 $a1
    rst $20                                       ; $4156: $e7
    and b                                         ; $4157: $a0
    ret nz                                        ; $4158: $c0

    db $eb                                        ; $4159: $eb
    db $fd                                        ; $415a: $fd
    rrca                                          ; $415b: $0f
    rst $38                                       ; $415c: $ff
    ldh [rTAC], a                                 ; $415d: $e0 $07
    rlca                                          ; $415f: $07
    inc bc                                        ; $4160: $03
    inc bc                                        ; $4161: $03
    rlca                                          ; $4162: $07
    dec b                                         ; $4163: $05
    rst $38                                       ; $4164: $ff
    inc c                                         ; $4165: $0c
    ld [$1018], sp                                ; $4166: $08 $18 $10
    ld e, $1e                                     ; $4169: $1e $1e
    db $fc                                        ; $416b: $fc
    cp $ff                                        ; $416c: $fe $ff
    db $fc                                        ; $416e: $fc
    db $fd                                        ; $416f: $fd
    db $fc                                        ; $4170: $fc
    cp $fe                                        ; $4171: $fe $fe
    ld sp, hl                                     ; $4173: $f9
    db $fd                                        ; $4174: $fd
    ld a, [$faff]                                 ; $4175: $fa $ff $fa
    push af                                       ; $4178: $f5
    dec d                                         ; $4179: $15
    ld l, d                                       ; $417a: $6a
    ld a, [bc]                                    ; $417b: $0a
    dec [hl]                                      ; $417c: $35
    ld bc, $fcbf                                  ; $417d: $01 $bf $fc
    db $10                                        ; $4180: $10
    ret nz                                        ; $4181: $c0

    call z, Call_000_01a0                         ; $4182: $cc $a0 $01
    cp $02                                        ; $4185: $fe $02
    db $fd                                        ; $4187: $fd
    dec b                                         ; $4188: $05

jr_07b_4189:
    ld a, [$0aff]                                 ; $4189: $fa $ff $0a
    push af                                       ; $418c: $f5
    ret nz                                        ; $418d: $c0

    ret nz                                        ; $418e: $c0

    jr c, jr_07b_4189                             ; $418f: $38 $f8

    ld b, $fe                                     ; $4191: $06 $fe
    rst $38                                       ; $4193: $ff
    xor e                                         ; $4194: $ab
    ld d, l                                       ; $4195: $55
    ld d, l                                       ; $4196: $55
    xor e                                         ; $4197: $ab
    xor a                                         ; $4198: $af
    ld d, b                                       ; $4199: $50
    ld a, a                                       ; $419a: $7f
    add b                                         ; $419b: $80
    db $fd                                        ; $419c: $fd
    rst $38                                       ; $419d: $ff
    dec sp                                        ; $419e: $3b
    call nz, $c0c0                                ; $419f: $c4 $c0 $c0
    and b                                         ; $41a2: $a0
    ld h, b                                       ; $41a3: $60
    ldh a, [$90]                                  ; $41a4: $f0 $90
    rst $38                                       ; $41a6: $ff
    ldh a, [$50]                                  ; $41a7: $f0 $50
    ldh [$30], a                                  ; $41a9: $e0 $30
    ld hl, $3f3f                                  ; $41ab: $21 $3f $3f
    daa                                           ; $41ae: $27
    rst $38                                       ; $41af: $ff
    ld e, a                                       ; $41b0: $5f
    ld l, a                                       ; $41b1: $6f
    ld a, a                                       ; $41b2: $7f
    ld d, b                                       ; $41b3: $50
    ld a, a                                       ; $41b4: $7f
    ld b, b                                       ; $41b5: $40
    cp a                                          ; $41b6: $bf
    ret nz                                        ; $41b7: $c0

    rst $38                                       ; $41b8: $ff
    cp a                                          ; $41b9: $bf
    call z, $d2b3                                 ; $41ba: $cc $b3 $d2
    rst $18                                       ; $41bd: $df
    add b                                         ; $41be: $80
    rst $28                                       ; $41bf: $ef
    ret nz                                        ; $41c0: $c0

    rst $38                                       ; $41c1: $ff
    rst $30                                       ; $41c2: $f7
    ldh a, [$ef]                                  ; $41c3: $f0 $ef
    ret c                                         ; $41c5: $d8

    rst $30                                       ; $41c6: $f7
    inc c                                         ; $41c7: $0c
    ei                                            ; $41c8: $fb
    ld b, $ff                                     ; $41c9: $06 $ff
    push af                                       ; $41cb: $f5
    dec bc                                        ; $41cc: $0b
    ei                                            ; $41cd: $fb

Call_07b_41ce:
    dec b                                         ; $41ce: $05
    dec d                                         ; $41cf: $15
    ld [$f40b], a                                 ; $41d0: $ea $0b $f4
    rst $38                                       ; $41d3: $ff
    rla                                           ; $41d4: $17
    add sp, $2b                                   ; $41d5: $e8 $2b
    call nc, $e817                                ; $41d7: $d4 $17 $e8
    cpl                                           ; $41da: $2f
    ret nc                                        ; $41db: $d0

    rst $28                                       ; $41dc: $ef
    ld d, a                                       ; $41dd: $57
    xor b                                         ; $41de: $a8
    rst $28                                       ; $41df: $ef
    ret nc                                        ; $41e0: $d0

    add c                                         ; $41e1: $81
    xor l                                         ; $41e2: $ad
    ldh a, [rNR10]                                ; $41e3: $f0 $10
    ldh a, [$7f]                                  ; $41e5: $f0 $7f
    db $10                                        ; $41e7: $10
    ld hl, sp+$08                                 ; $41e8: $f8 $08
    ld hl, sp+$08                                 ; $41ea: $f8 $08
    db $fc                                        ; $41ec: $fc
    inc b                                         ; $41ed: $04
    cp $e1                                        ; $41ee: $fe $e1
    reti                                          ; $41f0: $d9


    cp $46                                        ; $41f1: $fe $46
    jp hl                                         ; $41f3: $e9


    jp nz, Jump_000_03c0                          ; $41f4: $c2 $c0 $03

    inc c                                         ; $41f7: $0c
    ret c                                         ; $41f8: $d8

    call z, $d1c0                                 ; $41f9: $cc $c0 $d1
    rst $18                                       ; $41fc: $df
    or c                                          ; $41fd: $b1
    ld sp, hl                                     ; $41fe: $f9
    cp c                                          ; $41ff: $b9
    db $fc                                        ; $4200: $fc
    cp h                                          ; $4201: $bc
    cp $e5                                        ; $4202: $fe $e5
    db $ec                                        ; $4204: $ec
    xor h                                         ; $4205: $ac
    rst $38                                       ; $4206: $ff
    db $fc                                        ; $4207: $fc
    inc bc                                        ; $4208: $03
    ld a, [$fd05]                                 ; $4209: $fa $05 $fd
    add d                                         ; $420c: $82
    cp $81                                        ; $420d: $fe $81
    rst $38                                       ; $420f: $ff
    db $fd                                        ; $4210: $fd
    add d                                         ; $4211: $82
    ld a, [$fc85]                                 ; $4212: $fa $85 $fc
    add e                                         ; $4215: $83
    ld a, [$ff85]                                 ; $4216: $fa $85 $ff
    rst $30                                       ; $4219: $f7
    add sp, -$05                                  ; $421a: $e8 $fb
    db $f4                                        ; $421c: $f4
    ld a, a                                       ; $421d: $7f
    ld hl, sp+$7f                                 ; $421e: $f8 $7f
    db $fc                                        ; $4220: $fc
    rst $08                                       ; $4221: $cf
    ld a, a                                       ; $4222: $7f
    cp $7f                                        ; $4223: $fe $7f
    rst $38                                       ; $4225: $ff
    rst $38                                       ; $4226: $ff
    ld [c], a                                     ; $4227: $e2
    rst $38                                       ; $4228: $ff
    adc c                                         ; $4229: $89
    add b                                         ; $422a: $80
    rst $38                                       ; $422b: $ff
    add a                                         ; $422c: $87
    ld h, b                                       ; $422d: $60

Jump_07b_422e:
    cp $02                                        ; $422e: $fe $02
    cp $e5                                        ; $4230: $fe $e5
    adc [hl]                                      ; $4232: $8e
    db $e3                                        ; $4233: $e3
    adc a                                         ; $4234: $8f
    ret nz                                        ; $4235: $c0

    rst $38                                       ; $4236: $ff
    ldh [rTIMA], a                                ; $4237: $e0 $05
    ld [hl], a                                    ; $4239: $77
    rlca                                          ; $423a: $07

jr_07b_423b:
    ld a, [bc]                                    ; $423b: $0a
    ld c, $ec                                     ; $423c: $0e $ec
    ret nz                                        ; $423e: $c0

    inc bc                                        ; $423f: $03
    dec c                                         ; $4240: $0d
    rlca                                          ; $4241: $07
    ld c, l                                       ; $4242: $4d
    pop bc                                        ; $4243: $c1
    rst $38                                       ; $4244: $ff
    inc bc                                        ; $4245: $03
    nop                                           ; $4246: $00
    inc bc                                        ; $4247: $03
    inc b                                         ; $4248: $04
    ld b, $09                                     ; $4249: $06 $09
    rrca                                          ; $424b: $0f
    db $10                                        ; $424c: $10
    rst $38                                       ; $424d: $ff
    ccf                                           ; $424e: $3f
    nop                                           ; $424f: $00
    xor [hl]                                      ; $4250: $ae
    pop de                                        ; $4251: $d1
    rst $00                                       ; $4252: $c7
    jr c, jr_07b_425b                             ; $4253: $38 $06

    ld sp, hl                                     ; $4255: $f9
    rst $38                                       ; $4256: $ff
    xor h                                         ; $4257: $ac
    ld d, e                                       ; $4258: $53
    ld e, d                                       ; $4259: $5a
    and l                                         ; $425a: $a5

jr_07b_425b:
    push af                                       ; $425b: $f5
    ld a, [bc]                                    ; $425c: $0a
    or d                                          ; $425d: $b2
    ld e, l                                       ; $425e: $5d
    rst $38                                       ; $425f: $ff
    ld d, b                                       ; $4260: $50
    cp a                                          ; $4261: $bf
    or b                                          ; $4262: $b0
    ld a, a                                       ; $4263: $7f
    ld b, b                                       ; $4264: $40
    or b                                          ; $4265: $b0
    add b                                         ; $4266: $80
    ld a, h                                       ; $4267: $7c
    sub a                                         ; $4268: $97
    ld d, b                                       ; $4269: $50
    xor [hl]                                      ; $426a: $ae
    add b                                         ; $426b: $80
    call c, $02c2                                 ; $426c: $dc $c2 $02
    cp $e0                                        ; $426f: $fe $e0
    jr c, jr_07b_423b                             ; $4271: $38 $c8

    add b                                         ; $4273: $80
    cp $1c                                        ; $4274: $fe $1c
    and b                                         ; $4276: $a0
    ret nz                                        ; $4277: $c0

    nop                                           ; $4278: $00
    nop                                           ; $4279: $00
    rlca                                          ; $427a: $07
    rlca                                          ; $427b: $07
    ld [$ff0c], sp                                ; $427c: $08 $0c $ff
    dec bc                                        ; $427f: $0b
    inc c                                         ; $4280: $0c
    inc b                                         ; $4281: $04
    rlca                                          ; $4282: $07
    dec b                                         ; $4283: $05
    ld b, $07                                     ; $4284: $06 $07
    inc b                                         ; $4286: $04
    rst $38                                       ; $4287: $ff
    rlca                                          ; $4288: $07
    inc b                                         ; $4289: $04
    db $ec                                        ; $428a: $ec
    xor h                                         ; $428b: $ac
    ld a, h                                       ; $428c: $7c
    cp h                                          ; $428d: $bc
    db $dd                                        ; $428e: $dd
    dec a                                         ; $428f: $3d
    rst $18                                       ; $4290: $df
    rst $38                                       ; $4291: $ff
    nop                                           ; $4292: $00
    ld sp, hl                                     ; $4293: $f9
    nop                                           ; $4294: $00
    ld a, [c]                                     ; $4295: $f2
    db $e3                                        ; $4296: $e3
    add b                                         ; $4297: $80
    ei                                            ; $4298: $fb
    nop                                           ; $4299: $00
    rst $38                                       ; $429a: $ff
    db $f4                                        ; $429b: $f4
    adc e                                         ; $429c: $8b
    ei                                            ; $429d: $fb
    add l                                         ; $429e: $85
    push af                                       ; $429f: $f5
    dec bc                                        ; $42a0: $0b
    jp hl                                         ; $42a1: $e9


    rla                                           ; $42a2: $17
    scf                                           ; $42a3: $37
    db $d3                                        ; $42a4: $d3
    cpl                                           ; $42a5: $2f
    rst $28                                       ; $42a6: $ef
    db $fc                                        ; $42a7: $fc
    ldh [$e9], a                                  ; $42a8: $e0 $e9
    rla                                           ; $42aa: $17
    ld e, e                                       ; $42ab: $5b
    db $e3                                        ; $42ac: $e3
    ld d, l                                       ; $42ad: $55
    ldh [rIE], a                                  ; $42ae: $e0 $ff
    ld hl, sp-$04                                 ; $42b0: $f8 $fc
    di                                            ; $42b2: $f3
    rst $30                                       ; $42b3: $f7
    rst $28                                       ; $42b4: $ef
    ret z                                         ; $42b5: $c8

    rst $38                                       ; $42b6: $ff
    rst $38                                       ; $42b7: $ff
    rst $38                                       ; $42b8: $ff
    sub b                                         ; $42b9: $90
    rst $08                                       ; $42ba: $cf
    db $fc                                        ; $42bb: $fc
    rst $20                                       ; $42bc: $e7
    ei                                            ; $42bd: $fb
    di                                            ; $42be: $f3
    db $fc                                        ; $42bf: $fc
    ld a, c                                       ; $42c0: $79
    ld a, a                                       ; $42c1: $7f
    cp $3c                                        ; $42c2: $fe $3c
    rst $38                                       ; $42c4: $ff
    ld a, $ff                                     ; $42c5: $3e $ff
    sbc a                                         ; $42c7: $9f
    rst $38                                       ; $42c8: $ff
    db $e4                                        ; $42c9: $e4
    pop bc                                        ; $42ca: $c1
    rst $28                                       ; $42cb: $ef
    ld hl, sp+$08                                 ; $42cc: $f8 $08
    ldh a, [$f0]                                  ; $42ce: $f0 $f0
    jp c, Jump_07b_7cc1                           ; $42d0: $da $c1 $7c

    add h                                         ; $42d3: $84
    cp [hl]                                       ; $42d4: $be
    rst $38                                       ; $42d5: $ff
    ld b, d                                       ; $42d6: $42
    ld a, [de]                                    ; $42d7: $1a
    rrca                                          ; $42d8: $0f
    ccf                                           ; $42d9: $3f
    scf                                           ; $42da: $37
    dec b                                         ; $42db: $05
    inc bc                                        ; $42dc: $03
    dec de                                        ; $42dd: $1b
    rst $38                                       ; $42de: $ff
    rla                                           ; $42df: $17
    rra                                           ; $42e0: $1f
    rrca                                          ; $42e1: $0f
    dec l                                         ; $42e2: $2d
    dec de                                        ; $42e3: $1b
    ld e, d                                       ; $42e4: $5a
    ld [hl], a                                    ; $42e5: $77
    ccf                                           ; $42e6: $3f
    rst $38                                       ; $42e7: $ff
    ccf                                           ; $42e8: $3f
    rst $18                                       ; $42e9: $df
    ld h, b                                       ; $42ea: $60
    ld a, a                                       ; $42eb: $7f
    add b                                         ; $42ec: $80
    cp a                                          ; $42ed: $bf
    ld b, b                                       ; $42ee: $40
    rst $18                                       ; $42ef: $df
    rst $38                                       ; $42f0: $ff
    and b                                         ; $42f1: $a0
    cp $e1                                        ; $42f2: $fe $e1
    call z, $eaf3                                 ; $42f4: $cc $f3 $ea
    push af                                       ; $42f7: $f5
    rst $10                                       ; $42f8: $d7
    rst $38                                       ; $42f9: $ff
    ld hl, sp+$18                                 ; $42fa: $f8 $18
    rst $38                                       ; $42fc: $ff
    ld e, l                                       ; $42fd: $5d
    cp [hl]                                       ; $42fe: $be
    sbc e                                         ; $42ff: $9b
    ld a, h                                       ; $4300: $7c
    dec a                                         ; $4301: $3d
    rst $38                                       ; $4302: $ff
    cp $fc                                        ; $4303: $fe $fc
    rst $38                                       ; $4305: $ff
    ld e, d                                       ; $4306: $5a
    rst $38                                       ; $4307: $ff
    cp [hl]                                       ; $4308: $be
    ld a, a                                       ; $4309: $7f
    ld a, a                                       ; $430a: $7f
    cp a                                          ; $430b: $bf
    rst $38                                       ; $430c: $ff
    ld b, $ff                                     ; $430d: $06 $ff
    ld e, $ff                                     ; $430f: $1e $ff
    inc bc                                        ; $4311: $03
    ld a, [$07e0]                                 ; $4312: $fa $e0 $07
    rst $28                                       ; $4315: $ef
    rst $38                                       ; $4316: $ff
    rra                                           ; $4317: $1f
    rst $38                                       ; $4318: $ff
    ld a, a                                       ; $4319: $7f

jr_07b_431a:
    db $fc                                        ; $431a: $fc
    ldh [rP1], a                                  ; $431b: $e0 $00
    ldh [rNR41], a                                ; $431d: $e0 $20
    rst $38                                       ; $431f: $ff
    ret nc                                        ; $4320: $d0

    nop                                           ; $4321: $00
    db $fc                                        ; $4322: $fc
    add h                                         ; $4323: $84
    ld a, [$e718]                                 ; $4324: $fa $18 $e7
    inc [hl]                                      ; $4327: $34
    ld l, a                                       ; $4328: $6f
    res 1, b                                      ; $4329: $cb $88
    rst $30                                       ; $432b: $f7
    ld b, b                                       ; $432c: $40
    ld b, b                                       ; $432d: $40
    db $ec                                        ; $432e: $ec
    db $10                                        ; $432f: $10
    ret nc                                        ; $4330: $d0

    add c                                         ; $4331: $81
    jp z, $fffc                                   ; $4332: $ca $fc $ff

    ldh [$58], a                                  ; $4335: $e0 $58
    and a                                         ; $4337: $a7
    ld a, b                                       ; $4338: $78
    ld a, b                                       ; $4339: $78
    and h                                         ; $433a: $a4
    call nz, $9c64                                ; $433b: $c4 $64 $9c
    rst $28                                       ; $433e: $ef
    dec b                                         ; $433f: $05
    ld b, $02                                     ; $4340: $06 $02
    inc bc                                        ; $4342: $03
    add sp, -$17                                  ; $4343: $e8 $e9
    rst $28                                       ; $4345: $ef
    db $10                                        ; $4346: $10
    rst $30                                       ; $4347: $f7
    rst $38                                       ; $4348: $ff
    jr c, jr_07b_431a                             ; $4349: $38 $cf

    ldh a, [rIE]                                  ; $434b: $f0 $ff
    nop                                           ; $434d: $00
    cp a                                          ; $434e: $bf
    ret nz                                        ; $434f: $c0

    cp [hl]                                       ; $4350: $be
    rst $38                                       ; $4351: $ff
    pop bc                                        ; $4352: $c1
    ld e, l                                       ; $4353: $5d
    ld h, d                                       ; $4354: $62
    ld b, b                                       ; $4355: $40
    ld a, a                                       ; $4356: $7f
    ret nc                                        ; $4357: $d0

    cpl                                           ; $4358: $2f
    xor b                                         ; $4359: $a8
    rst $38                                       ; $435a: $ff
    ld d, a                                       ; $435b: $57
    ret nc                                        ; $435c: $d0

    cpl                                           ; $435d: $2f
    and b                                         ; $435e: $a0
    ld e, a                                       ; $435f: $5f
    ld d, b                                       ; $4360: $50
    xor a                                         ; $4361: $af
    and b                                         ; $4362: $a0
    ld a, l                                       ; $4363: $7d
    ld e, a                                       ; $4364: $5f
    add h                                         ; $4365: $84
    ld h, c                                       ; $4366: $61
    inc c                                         ; $4367: $0c
    rst $38                                       ; $4368: $ff
    ld [de], a                                    ; $4369: $12
    rst $38                                       ; $436a: $ff
    db $10                                        ; $436b: $10
    ld a, h                                       ; $436c: $7c
    ld h, d                                       ; $436d: $62
    rst $18                                       ; $436e: $df
    ld de, $3fff                                  ; $436f: $11 $ff $3f
    rst $38                                       ; $4372: $ff
    rst $00                                       ; $4373: $c7
    ld a, d                                       ; $4374: $7a
    ldh [$1f], a                                  ; $4375: $e0 $1f
    rst $38                                       ; $4377: $ff
    rst $38                                       ; $4378: $ff
    ld a, $fe                                     ; $4379: $3e $fe
    inc a                                         ; $437b: $3c
    db $fc                                        ; $437c: $fc
    ld a, b                                       ; $437d: $78
    ld hl, sp-$10                                 ; $437e: $f8 $f0
    ldh a, [$fd]                                  ; $4380: $f0 $fd
    ret nz                                        ; $4382: $c0

    jp nc, $dec0                                  ; $4383: $d2 $c0 $de

    and d                                         ; $4386: $a2
    ld h, a                                       ; $4387: $67
    ld e, c                                       ; $4388: $59
    dec sp                                        ; $4389: $3b
    inc [hl]                                      ; $438a: $34
    rst $28                                       ; $438b: $ef
    dec c                                         ; $438c: $0d
    ld a, [bc]                                    ; $438d: $0a
    rlca                                          ; $438e: $07
    ld b, $94                                     ; $438f: $06 $94
    rst $20                                       ; $4391: $e7
    add b                                         ; $4392: $80
    add b                                         ; $4393: $80
    ret nz                                        ; $4394: $c0

    rst $30                                       ; $4395: $f7
    ld b, b                                       ; $4396: $40
    ldh [rNR41], a                                ; $4397: $e0 $20
    and $a0                                       ; $4399: $e6 $a0
    sub b                                         ; $439b: $90
    ld h, b                                       ; $439c: $60
    ld h, b                                       ; $439d: $60
    db $10                                        ; $439e: $10
    rst $38                                       ; $439f: $ff
    db $10                                        ; $43a0: $10
    db $10                                        ; $43a1: $10
    ld de, $3838                                  ; $43a2: $11 $38 $38
    ld [hl], c                                    ; $43a5: $71
    ld [hl], b                                    ; $43a6: $70
    dec sp                                        ; $43a7: $3b
    rst $38                                       ; $43a8: $ff
    inc a                                         ; $43a9: $3c
    cp [hl]                                       ; $43aa: $be
    db $fd                                        ; $43ab: $fd
    ld a, l                                       ; $43ac: $7d
    ei                                            ; $43ad: $fb
    ccf                                           ; $43ae: $3f
    ld a, a                                       ; $43af: $7f
    ld l, e                                       ; $43b0: $6b
    rst $38                                       ; $43b1: $ff
    ld [hl], a                                    ; $43b2: $77
    rst $10                                       ; $43b3: $d7
    db $ed                                        ; $43b4: $ed
    ld a, a                                       ; $43b5: $7f
    ei                                            ; $43b6: $fb
    cp a                                          ; $43b7: $bf
    ld l, a                                       ; $43b8: $6f
    ld a, e                                       ; $43b9: $7b
    rst $38                                       ; $43ba: $ff
    rst $18                                       ; $43bb: $df
    or $ff                                        ; $43bc: $f6 $ff
    res 7, a                                      ; $43be: $cb $bf
    and l                                         ; $43c0: $a5
    ld e, e                                       ; $43c1: $5b
    ld a, [hl]                                    ; $43c2: $7e
    cp a                                          ; $43c3: $bf
    ld sp, hl                                     ; $43c4: $f9
    cp l                                          ; $43c5: $bd
    rst $38                                       ; $43c6: $ff
    ld e, e                                       ; $43c7: $5b
    rst $38                                       ; $43c8: $ff
    db $fd                                        ; $43c9: $fd
    inc d                                         ; $43ca: $14
    ret nz                                        ; $43cb: $c0

    cp a                                          ; $43cc: $bf
    xor a                                         ; $43cd: $af
    rst $38                                       ; $43ce: $ff
    ld e, [hl]                                    ; $43cf: $5e
    rst $38                                       ; $43d0: $ff
    scf                                           ; $43d1: $37
    ld a, [$7de0]                                 ; $43d2: $fa $e0 $7d
    ld [$fec2], sp                                ; $43d5: $08 $c2 $fe
    ld a, [$e012]                                 ; $43d8: $fa $12 $e0
    rst $18                                       ; $43db: $df
    db $ec                                        ; $43dc: $ec
    ldh [rNR22], a                                ; $43dd: $e0 $17
    rst $38                                       ; $43df: $ff
    ld c, a                                       ; $43e0: $4f
    rst $38                                       ; $43e1: $ff
    ld c, e                                       ; $43e2: $4b
    ei                                            ; $43e3: $fb
    cp a                                          ; $43e4: $bf
    sub a                                         ; $43e5: $97
    or $c0                                        ; $43e6: $f6 $c0
    ccf                                           ; $43e8: $3f
    rst $38                                       ; $43e9: $ff
    ld c, a                                       ; $43ea: $4f
    cp a                                          ; $43eb: $bf
    sbc a                                         ; $43ec: $9f
    xor $3d                                       ; $43ed: $ee $3d
    and b                                         ; $43ef: $a0
    jp nc, $e2ef                                  ; $43f0: $d2 $ef $e2

    ld a, b                                       ; $43f3: $78
    ldh [$ee], a                                  ; $43f4: $e0 $ee
    rst $38                                       ; $43f6: $ff

jr_07b_43f7:
    rst $30                                       ; $43f7: $f7
    ei                                            ; $43f8: $fb

jr_07b_43f9:
    rst $38                                       ; $43f9: $ff
    xor a                                         ; $43fa: $af
    sbc $e0                                       ; $43fb: $de $e0
    jr jr_07b_43f7                                ; $43fd: $18 $f8

    jr nc, jr_07b_43f9                            ; $43ff: $30 $f8

    jr nc, @+$01                                  ; $4401: $30 $ff

Call_07b_4403:
    cp $78                                        ; $4403: $fe $78
    rst $38                                       ; $4405: $ff
    cp b                                          ; $4406: $b8
    rst $38                                       ; $4407: $ff
    ld a, [hl]                                    ; $4408: $7e
    db $fd                                        ; $4409: $fd
    ld a, [$fffb]                                 ; $440a: $fa $fb $ff
    ld a, h                                       ; $440d: $7c
    rra                                           ; $440e: $1f
    and d                                         ; $440f: $a2
    inc b                                         ; $4410: $04
    add h                                         ; $4411: $84
    inc c                                         ; $4412: $0c
    db $ec                                        ; $4413: $ec
    ld c, [hl]                                    ; $4414: $4e
    ld a, a                                       ; $4415: $7f
    cp $dc                                        ; $4416: $fe $dc
    db $fc                                        ; $4418: $fc
    ld l, h                                       ; $4419: $6c
    cp $df                                        ; $441a: $fe $df
    cp $fe                                        ; $441c: $fe $fe
    push bc                                       ; $441e: $c5
    rst $38                                       ; $441f: $ff
    rlca                                          ; $4420: $07
    rlca                                          ; $4421: $07
    ld a, $38                                     ; $4422: $3e $38
    ld e, b                                       ; $4424: $58
    ld h, a                                       ; $4425: $67
    ld b, b                                       ; $4426: $40
    ld a, a                                       ; $4427: $7f
    rst $38                                       ; $4428: $ff
    sub $e2                                       ; $4429: $d6 $e2
    and [hl]                                      ; $442b: $a6
    jp nz, $f7cf                                  ; $442c: $c2 $cf $f7

    ld hl, sp-$08                                 ; $442f: $f8 $f8
    rst $38                                       ; $4431: $ff
    jp Jump_000_3f80                              ; $4432: $c3 $80 $3f


    nop                                           ; $4435: $00
    ld [hl], a                                    ; $4436: $77
    adc a                                         ; $4437: $8f
    ld a, [hl-]                                   ; $4438: $3a
    db $fc                                        ; $4439: $fc
    rst $38                                       ; $443a: $ff
    rlca                                          ; $443b: $07
    rrca                                          ; $443c: $0f
    ld a, c                                       ; $443d: $79
    ld a, a                                       ; $443e: $7f
    db $ec                                        ; $443f: $ec
    add e                                         ; $4440: $83
    inc c                                         ; $4441: $0c
    inc bc                                        ; $4442: $03
    ld a, a                                       ; $4443: $7f
    rla                                           ; $4444: $17
    rrca                                          ; $4445: $0f
    ld a, b                                       ; $4446: $78
    db $fc                                        ; $4447: $fc
    and b                                         ; $4448: $a0
    ret nz                                        ; $4449: $c0

    ld de, $621b                                  ; $444a: $11 $1b $62
    rst $38                                       ; $444d: $ff
    add c                                         ; $444e: $81
    add c                                         ; $444f: $81
    ld a, [$ddbb]                                 ; $4450: $fa $bb $dd
    add $39                                       ; $4453: $c6 $39
    ld c, $ff                                     ; $4455: $0e $ff
    ld l, c                                       ; $4457: $69
    ld e, $7c                                     ; $4458: $1e $7c
    ccf                                           ; $445a: $3f
    nop                                           ; $445b: $00
    nop                                           ; $445c: $00
    ld [hl], b                                    ; $445d: $70
    ld [hl], b                                    ; $445e: $70
    rst $38                                       ; $445f: $ff
    adc b                                         ; $4460: $88
    ld hl, sp-$64                                 ; $4461: $f8 $9c
    inc b                                         ; $4463: $04
    ld a, [bc]                                    ; $4464: $0a
    ld b, $e6                                     ; $4465: $06 $e6
    ld [bc], a                                    ; $4467: $02
    rst $38                                       ; $4468: $ff
    ld d, $e2                                     ; $4469: $16 $e2
    ld l, c                                       ; $446b: $69
    di                                            ; $446c: $f3
    jr nz, jr_07b_44ae                            ; $446d: $20 $3f

    jr jr_07b_4490                                ; $446f: $18 $1f

    cp $80                                        ; $4471: $fe $80
    add c                                         ; $4473: $81
    dec b                                         ; $4474: $05
    dec b                                         ; $4475: $05
    ld a, [bc]                                    ; $4476: $0a
    ld a, [bc]                                    ; $4477: $0a
    ld [hl-], a                                   ; $4478: $32
    ld [hl-], a                                   ; $4479: $32
    ld e, h                                       ; $447a: $5c
    ei                                            ; $447b: $fb
    ld e, h                                       ; $447c: $5c
    rlca                                          ; $447d: $07
    ld [$f8c0], a                                 ; $447e: $ea $c0 $f8
    ld hl, sp-$20                                 ; $4481: $f8 $e0
    ldh [$80], a                                  ; $4483: $e0 $80
    ld a, a                                       ; $4485: $7f
    add b                                         ; $4486: $80
    inc bc                                        ; $4487: $03
    inc bc                                        ; $4488: $03
    ld c, $0e                                     ; $4489: $0e $0e
    dec e                                         ; $448b: $1d
    dec e                                         ; $448c: $1d
    ld b, a                                       ; $448d: $47
    ldh [$fd], a                                  ; $448e: $e0 $fd

jr_07b_4490:
    ld bc, $e0fe                                  ; $4490: $01 $fe $e0
    nop                                           ; $4493: $00
    rst $38                                       ; $4494: $ff
    rst $38                                       ; $4495: $ff

jr_07b_4496:
    xor e                                         ; $4496: $ab
    ld d, a                                       ; $4497: $57
    ld d, l                                       ; $4498: $55
    rst $20                                       ; $4499: $e7
    xor e                                         ; $449a: $ab
    and c                                         ; $449b: $a1
    ld e, a                                       ; $449c: $5f
    xor $c5                                       ; $449d: $ee $c5
    and $c5                                       ; $449f: $e6 $c5
    ld bc, $0301                                  ; $44a1: $01 $01 $03
    db $fc                                        ; $44a4: $fc
    add b                                         ; $44a5: $80
    ret nz                                        ; $44a6: $c0

    ret nz                                        ; $44a7: $c0

    pop hl                                        ; $44a8: $e1
    ld d, $17                                     ; $44a9: $16 $17
    add hl, de                                    ; $44ab: $19
    dec de                                        ; $44ac: $1b
    ccf                                           ; $44ad: $3f

jr_07b_44ae:
    ccf                                           ; $44ae: $3f
    ld a, c                                       ; $44af: $79
    ld l, [hl]                                    ; $44b0: $6e
    ld a, [de]                                    ; $44b1: $1a
    and b                                         ; $44b2: $a0
    jr jr_07b_4496                                ; $44b3: $18 $e1

    db $fd                                        ; $44b5: $fd
    cp $da                                        ; $44b6: $fe $da
    db $fd                                        ; $44b8: $fd
    ld a, [$f7e1]                                 ; $44b9: $fa $e1 $f7
    db $dd                                        ; $44bc: $dd
    or a                                          ; $44bd: $b7
    cp a                                          ; $44be: $bf
    ld [$6ba0], sp                                ; $44bf: $08 $a0 $6b
    rst $38                                       ; $44c2: $ff
    ld d, c                                       ; $44c3: $51
    rst $28                                       ; $44c4: $ef
    rst $38                                       ; $44c5: $ff
    sub [hl]                                      ; $44c6: $96
    db $eb                                        ; $44c7: $eb
    xor a                                         ; $44c8: $af
    ld e, e                                       ; $44c9: $5b
    ld a, a                                       ; $44ca: $7f
    db $db                                        ; $44cb: $db
    db $db                                        ; $44cc: $db
    ld a, a                                       ; $44cd: $7f
    ld sp, hl                                     ; $44ce: $f9
    rst $28                                       ; $44cf: $ef
    rst $28                                       ; $44d0: $ef
    pop hl                                        ; $44d1: $e1
    ld [c], a                                     ; $44d2: $e2
    ret nz                                        ; $44d3: $c0

    ld d, a                                       ; $44d4: $57
    rst $38                                       ; $44d5: $ff
    dec hl                                        ; $44d6: $2b
    rst $38                                       ; $44d7: $ff
    rst $18                                       ; $44d8: $df
    ld c, [hl]                                    ; $44d9: $4e
    db $f4                                        ; $44da: $f4
    ld [c], a                                     ; $44db: $e2
    rst $38                                       ; $44dc: $ff
    rst $38                                       ; $44dd: $ff
    rst $10                                       ; $44de: $d7
    inc b                                         ; $44df: $04
    ldh [$e1], a                                  ; $44e0: $e0 $e1
    add c                                         ; $44e2: $81
    rst $30                                       ; $44e3: $f7
    ld l, h                                       ; $44e4: $6c
    ret nz                                        ; $44e5: $c0

    sub l                                         ; $44e6: $95
    rst $38                                       ; $44e7: $ff
    and $e0                                       ; $44e8: $e6 $e0
    cpl                                           ; $44ea: $2f
    db $e4                                        ; $44eb: $e4
    and b                                         ; $44ec: $a0
    ld l, a                                       ; $44ed: $6f
    ret nc                                        ; $44ee: $d0

    ret nz                                        ; $44ef: $c0

    call z, $ee81                                 ; $44f0: $cc $81 $ee
    ld [hl+], a                                   ; $44f3: $22
    ld [c], a                                     ; $44f4: $e2
    ldh [$ef], a                                  ; $44f5: $e0 $ef
    ret nz                                        ; $44f7: $c0

    ret nz                                        ; $44f8: $c0

    ld [c], a                                     ; $44f9: $e2
    pop hl                                        ; $44fa: $e1
    cp l                                          ; $44fb: $bd
    add c                                         ; $44fc: $81
    ei                                            ; $44fd: $fb
    ret z                                         ; $44fe: $c8

    and b                                         ; $44ff: $a0
    ld a, [c]                                     ; $4500: $f2
    pop hl                                        ; $4501: $e1
    cp d                                          ; $4502: $ba
    push bc                                       ; $4503: $c5
    db $e3                                        ; $4504: $e3
    db $fc                                        ; $4505: $fc
    and $e2                                       ; $4506: $e6 $e2
    cp [hl]                                       ; $4508: $be
    rst $38                                       ; $4509: $ff
    db $ed                                        ; $450a: $ed
    ld b, a                                       ; $450b: $47
    and h                                         ; $450c: $a4
    db $eb                                        ; $450d: $eb
    rst $38                                       ; $450e: $ff
    rst $38                                       ; $450f: $ff
    db $dd                                        ; $4510: $dd
    cp $e6                                        ; $4511: $fe $e6
    ld sp, hl                                     ; $4513: $f9
    add b                                         ; $4514: $80
    rst $38                                       ; $4515: $ff
    xor d                                         ; $4516: $aa
    cp $ac                                        ; $4517: $fe $ac
    ldh [$f9], a                                  ; $4519: $e0 $f9
    cp $e0                                        ; $451b: $fe $e0
    rst $38                                       ; $451d: $ff
    pop bc                                        ; $451e: $c1
    ldh [rIE], a                                  ; $451f: $e0 $ff
    rst $38                                       ; $4521: $ff
    nop                                           ; $4522: $00
    dec d                                         ; $4523: $15
    db $eb                                        ; $4524: $eb
    ld l, $df                                     ; $4525: $2e $df
    halt                                          ; $4527: $76
    ld hl, sp-$41                                 ; $4528: $f8 $bf
    rst $38                                       ; $452a: $ff
    ret nz                                        ; $452b: $c0

    rst $10                                       ; $452c: $d7
    jr z, jr_07b_453a                             ; $452d: $28 $0b

    db $f4                                        ; $452f: $f4
    xor e                                         ; $4530: $ab
    inc bc                                        ; $4531: $03
    call c, Call_000_3fff                         ; $4532: $dc $ff $3f
    add sp, -$10                                  ; $4535: $e8 $f0
    add h                                         ; $4537: $84
    nop                                           ; $4538: $00
    ld l, b                                       ; $4539: $68

jr_07b_453a:
    nop                                           ; $453a: $00
    db $f4                                        ; $453b: $f4
    cp $e9                                        ; $453c: $fe $e9
    jr nz, @-$0a                                  ; $453e: $20 $f4

    nop                                           ; $4540: $00
    jp c, $8be7                                   ; $4541: $da $e7 $8b

    rlca                                          ; $4544: $07
    adc c                                         ; $4545: $89
    rst $38                                       ; $4546: $ff
    rlca                                          ; $4547: $07
    adc l                                         ; $4548: $8d
    inc bc                                        ; $4549: $03
    call z, Call_07b_4403                         ; $454a: $cc $03 $44
    inc bc                                        ; $454d: $03
    ld b, [hl]                                    ; $454e: $46
    rst $38                                       ; $454f: $ff
    ld bc, $0166                                  ; $4550: $01 $66 $01
    sub c                                         ; $4553: $91
    sbc e                                         ; $4554: $9b
    rla                                           ; $4555: $17
    add hl, de                                    ; $4556: $19
    rla                                           ; $4557: $17
    rst $38                                       ; $4558: $ff
    add hl, de                                    ; $4559: $19
    ld c, $19                                     ; $455a: $0e $19
    adc d                                         ; $455c: $8a
    sbc l                                         ; $455d: $9d
    sbc d                                         ; $455e: $9a
    adc l                                         ; $455f: $8d
    adc d                                         ; $4560: $8a
    rst $30                                       ; $4561: $f7
    adc l                                         ; $4562: $8d
    ld c, d                                       ; $4563: $4a
    call Call_07b_6285                            ; $4564: $cd $85 $62
    rlca                                          ; $4567: $07
    ld sp, hl                                     ; $4568: $f9
    adc a                                         ; $4569: $8f
    di                                            ; $456a: $f3
    rst $28                                       ; $456b: $ef
    sbc a                                         ; $456c: $9f
    rst $20                                       ; $456d: $e7
    cp a                                          ; $456e: $bf
    rst $08                                       ; $456f: $cf
    nop                                           ; $4570: $00
    and b                                         ; $4571: $a0
    push af                                       ; $4572: $f5
    cp [hl]                                       ; $4573: $be
    ld l, d                                       ; $4574: $6a
    di                                            ; $4575: $f3
    rst $38                                       ; $4576: $ff
    or $9a                                        ; $4577: $f6 $9a
    ldh [$4e], a                                  ; $4579: $e0 $4e
    pop hl                                        ; $457b: $e1
    sbc $ff                                       ; $457c: $de $ff
    cp l                                          ; $457e: $bd
    rst $38                                       ; $457f: $ff
    ld a, a                                       ; $4580: $7f
    ld hl, sp+$3f                                 ; $4581: $f8 $3f
    db $f4                                        ; $4583: $f4
    ld a, a                                       ; $4584: $7f
    ld [$d5ff], a                                 ; $4585: $ea $ff $d5
    sub b                                         ; $4588: $90
    ldh [$95], a                                  ; $4589: $e0 $95
    ld d, a                                       ; $458b: $57
    ld b, b                                       ; $458c: $40
    ret nz                                        ; $458d: $c0

    ld e, a                                       ; $458e: $5f
    inc h                                         ; $458f: $24
    and b                                         ; $4590: $a0
    rla                                           ; $4591: $17
    ld hl, sp-$1e                                 ; $4592: $f8 $e2
    cp b                                          ; $4594: $b8
    add l                                         ; $4595: $85
    add b                                         ; $4596: $80
    cp $ff                                        ; $4597: $fe $ff
    ld [$0000], a                                 ; $4599: $ea $00 $00
    ld e, $1f                                     ; $459c: $1e $1f
    rra                                           ; $459e: $1f
    rra                                           ; $459f: $1f
    dec a                                         ; $45a0: $3d
    rst $38                                       ; $45a1: $ff
    ccf                                           ; $45a2: $3f
    ld a, e                                       ; $45a3: $7b
    ld a, a                                       ; $45a4: $7f
    dec a                                         ; $45a5: $3d
    ccf                                           ; $45a6: $3f
    ld a, a                                       ; $45a7: $7f
    ld a, a                                       ; $45a8: $7f
    rst $10                                       ; $45a9: $d7
    rst $38                                       ; $45aa: $ff
    rst $38                                       ; $45ab: $ff
    ld l, a                                       ; $45ac: $6f
    ld a, a                                       ; $45ad: $7f
    ei                                            ; $45ae: $fb
    rst $38                                       ; $45af: $ff
    ld [hl], l                                    ; $45b0: $75
    rst $38                                       ; $45b1: $ff
    db $ed                                        ; $45b2: $ed
    rst $38                                       ; $45b3: $ff
    ei                                            ; $45b4: $fb
    ld a, [$d7f7]                                 ; $45b5: $fa $f7 $d7
    db $ec                                        ; $45b8: $ec
    cp $ff                                        ; $45b9: $fe $ff
    db $db                                        ; $45bb: $db
    rst $28                                       ; $45bc: $ef
    db $fd                                        ; $45bd: $fd
    ld h, [hl]                                    ; $45be: $66
    cp e                                          ; $45bf: $bb
    ld a, [$a0fa]                                 ; $45c0: $fa $fa $a0
    ld d, l                                       ; $45c3: $55
    xor a                                         ; $45c4: $af
    cp b                                          ; $45c5: $b8
    rst $38                                       ; $45c6: $ff
    ld c, a                                       ; $45c7: $4f
    ld h, a                                       ; $45c8: $67
    jp c, $b7da                                   ; $45c9: $da $da $b7

    dec a                                         ; $45cc: $3d
    rst $30                                       ; $45cd: $f7
    reti                                          ; $45ce: $d9


    ld a, [$c0b3]                                 ; $45cf: $fa $b3 $c0
    ld a, a                                       ; $45d2: $7f
    ld [bc], a                                    ; $45d3: $02
    ldh [$f7], a                                  ; $45d4: $e0 $f7
    cp a                                          ; $45d6: $bf
    ei                                            ; $45d7: $fb
    rst $18                                       ; $45d8: $df
    cp $4b                                        ; $45d9: $fe $4b
    ld l, a                                       ; $45db: $6f
    ld e, a                                       ; $45dc: $5f
    ld a, [de]                                    ; $45dd: $1a
    ld [c], a                                     ; $45de: $e2
    db $dd                                        ; $45df: $dd
    cp $c0                                        ; $45e0: $fe $c0
    and b                                         ; $45e2: $a0
    and c                                         ; $45e3: $a1
    rst $38                                       ; $45e4: $ff
    add sp, -$1f                                  ; $45e5: $e8 $e1
    db $eb                                        ; $45e7: $eb
    rst $38                                       ; $45e8: $ff
    inc bc                                        ; $45e9: $03
    cp a                                          ; $45ea: $bf
    ld h, b                                       ; $45eb: $60
    ld b, $53                                     ; $45ec: $06 $53
    ld h, b                                       ; $45ee: $60
    inc c                                         ; $45ef: $0c
    ld hl, sp+$09                                 ; $45f0: $f8 $09
    rst $38                                       ; $45f2: $ff
    ld hl, sp+$19                                 ; $45f3: $f8 $19
    pop af                                        ; $45f5: $f1
    inc de                                        ; $45f6: $13
    pop af                                        ; $45f7: $f1
    ld de, $211f                                  ; $45f8: $11 $1f $21
    rst $38                                       ; $45fb: $ff
    ccf                                           ; $45fc: $3f
    ld b, e                                       ; $45fd: $43
    ld a, [hl]                                    ; $45fe: $7e
    jp nz, $867e                                  ; $45ff: $c2 $7e $86

    db $fc                                        ; $4602: $fc
    add a                                         ; $4603: $87
    rst $38                                       ; $4604: $ff
    db $fc                                        ; $4605: $fc
    rrca                                          ; $4606: $0f
    ld sp, hl                                     ; $4607: $f9
    rrca                                          ; $4608: $0f
    ld a, [$1f10]                                 ; $4609: $fa $10 $1f
    db $10                                        ; $460c: $10
    rst $38                                       ; $460d: $ff
    rra                                           ; $460e: $1f
    ld [hl], $1f                                  ; $460f: $36 $1f
    ld a, a                                       ; $4611: $7f
    add hl, sp                                    ; $4612: $39
    cp $50                                        ; $4613: $fe $50
    db $ec                                        ; $4615: $ec
    rst $18                                       ; $4616: $df
    adc b                                         ; $4617: $88
    db $f4                                        ; $4618: $f4
    inc b                                         ; $4619: $04
    ld a, [$8002]                                 ; $461a: $fa $02 $80
    ld bc, $ff30                                  ; $461d: $01 $30 $ff
    rst $38                                       ; $4620: $ff
    ld a, b                                       ; $4621: $78
    rst $08                                       ; $4622: $cf
    db $ec                                        ; $4623: $ec
    add a                                         ; $4624: $87
    ld b, [hl]                                    ; $4625: $46
    ld b, e                                       ; $4626: $43
    inc hl                                        ; $4627: $23
    ld hl, $11fb                                  ; $4628: $21 $fb $11
    db $10                                        ; $462b: $10
    ld [hl], b                                    ; $462c: $70
    ld bc, $ff18                                  ; $462d: $01 $18 $ff
    inc l                                         ; $4630: $2c
    rst $20                                       ; $4631: $e7
    halt                                          ; $4632: $76
    rst $38                                       ; $4633: $ff
    db $d3                                        ; $4634: $d3
    db $eb                                        ; $4635: $eb
    adc c                                         ; $4636: $89
    rst $08                                       ; $4637: $cf
    dec b                                         ; $4638: $05
    sbc $83                                       ; $4639: $de $83
    ld [de], a                                    ; $463b: $12
    rst $28                                       ; $463c: $ef
    di                                            ; $463d: $f3
    ld [hl-], a                                   ; $463e: $32
    db $e3                                        ; $463f: $e3
    ld h, $fe                                     ; $4640: $26 $fe
    ldh [$27], a                                  ; $4642: $e0 $27
    rst $20                                       ; $4644: $e7
    cpl                                           ; $4645: $2f
    ld a, a                                       ; $4646: $7f
    push hl                                       ; $4647: $e5
    cpl                                           ; $4648: $2f
    jp hl                                         ; $4649: $e9


    ccf                                           ; $464a: $3f
    jp hl                                         ; $464b: $e9


    rrca                                          ; $464c: $0f
    db $fc                                        ; $464d: $fc
    ld c, b                                       ; $464e: $48
    ld h, b                                       ; $464f: $60
    rst $20                                       ; $4650: $e7
    sbc c                                         ; $4651: $99
    rst $38                                       ; $4652: $ff
    sub c                                         ; $4653: $91
    pop de                                        ; $4654: $d1
    add b                                         ; $4655: $80
    cp $e2                                        ; $4656: $fe $e2
    add hl, de                                    ; $4658: $19
    pop hl                                        ; $4659: $e1
    jr nc, @-$4f                                  ; $465a: $30 $af

    ret nz                                        ; $465c: $c0

    ld h, b                                       ; $465d: $60
    add b                                         ; $465e: $80
    ret nz                                        ; $465f: $c0

    ld sp, hl                                     ; $4660: $f9
    jr nz, jr_07b_46a8                            ; $4661: $20 $45

    ld l, c                                       ; $4663: $69
    nop                                           ; $4664: $00
    ld d, a                                       ; $4665: $57
    rst $38                                       ; $4666: $ff
    nop                                           ; $4667: $00
    adc l                                         ; $4668: $8d
    ld [$84c6], sp                                ; $4669: $08 $c6 $84
    ld l, e                                       ; $466c: $6b
    ld b, d                                       ; $466d: $42
    dec a                                         ; $466e: $3d
    rst $38                                       ; $466f: $ff
    ld hl, $149a                                  ; $4670: $21 $9a $14
    ld l, c                                       ; $4673: $69
    ld c, $f4                                     ; $4674: $0e $f4
    rlca                                          ; $4676: $07
    cp $ff                                        ; $4677: $fe $ff
    inc bc                                        ; $4679: $03
    db $fc                                        ; $467a: $fc
    ld b, a                                       ; $467b: $47
    ld a, b                                       ; $467c: $78
    cpl                                           ; $467d: $2f
    or b                                          ; $467e: $b0
    rra                                           ; $467f: $1f
    ret c                                         ; $4680: $d8

    rst $38                                       ; $4681: $ff
    rrca                                          ; $4682: $0f
    db $ec                                        ; $4683: $ec
    add a                                         ; $4684: $87
    ld a, [hl]                                    ; $4685: $7e
    ld b, e                                       ; $4686: $43
    cp [hl]                                       ; $4687: $be
    inc hl                                        ; $4688: $23
    call c, Call_000_17ff                         ; $4689: $dc $ff $17
    ccf                                           ; $468c: $3f
    jp hl                                         ; $468d: $e9


    rra                                           ; $468e: $1f
    ld hl, sp+$3f                                 ; $468f: $f8 $3f
    add sp, $3f                                   ; $4691: $e8 $3f
    rst $38                                       ; $4693: $ff
    db $e4                                        ; $4694: $e4
    ccf                                           ; $4695: $3f
    db $e4                                        ; $4696: $e4
    rra                                           ; $4697: $1f
    ld a, [c]                                     ; $4698: $f2
    rra                                           ; $4699: $1f
    ld a, [c]                                     ; $469a: $f2
    rrca                                          ; $469b: $0f
    dec sp                                        ; $469c: $3b
    reti                                          ; $469d: $d9


    ld de, $e0b5                                  ; $469e: $11 $b5 $e0
    add b                                         ; $46a1: $80
    rst $38                                       ; $46a2: $ff
    ld b, b                                       ; $46a3: $40
    cp $e0                                        ; $46a4: $fe $e0
    ld d, [hl]                                    ; $46a6: $56
    inc b                                         ; $46a7: $04

jr_07b_46a8:
    cp $a0                                        ; $46a8: $fe $a0
    add d                                         ; $46aa: $82
    add b                                         ; $46ab: $80
    add b                                         ; $46ac: $80
    ld b, e                                       ; $46ad: $43
    pop bc                                        ; $46ae: $c1
    ld [hl], $e3                                  ; $46af: $36 $e3
    inc e                                         ; $46b1: $1c
    cp $18                                        ; $46b2: $fe $18
    ld b, c                                       ; $46b4: $41
    ld bc, $0006                                  ; $46b5: $01 $06 $00
    rrca                                          ; $46b8: $0f
    nop                                           ; $46b9: $00
    ld e, $00                                     ; $46ba: $1e $00
    rst $38                                       ; $46bc: $ff
    db $fd                                        ; $46bd: $fd

jr_07b_46be:
    ldh [rNR30], a                                ; $46be: $e0 $1a
    ldh a, [$15]                                  ; $46c0: $f0 $15
    ldh a, [$3a]                                  ; $46c2: $f0 $3a
    ldh [rIE], a                                  ; $46c4: $e0 $ff
    jr c, @-$36                                   ; $46c6: $38 $c8

    adc h                                         ; $46c8: $8c
    db $f4                                        ; $46c9: $f4
    add $7a                                       ; $46ca: $c6 $7a
    and $3a                                       ; $46cc: $e6 $3a
    rst $38                                       ; $46ce: $ff
    cp h                                          ; $46cf: $bc
    ld d, h                                       ; $46d0: $54
    ld e, a                                       ; $46d1: $5f
    xor a                                         ; $46d2: $af
    adc d                                         ; $46d3: $8a
    ld a, h                                       ; $46d4: $7c
    rla                                           ; $46d5: $17
    ld hl, sp-$02                                 ; $46d6: $f8 $fe
    add [hl]                                      ; $46d8: $86
    ld [bc], a                                    ; $46d9: $02
    ld d, l                                       ; $46da: $55
    nop                                           ; $46db: $00
    ld [$0000], sp                                ; $46dc: $08 $00 $00
    ld hl, sp-$08                                 ; $46df: $f8 $f8
    adc a                                         ; $46e1: $8f
    inc e                                         ; $46e2: $1c
    inc c                                         ; $46e3: $0c
    or $06                                        ; $46e4: $f6 $06
    ldh [$0b], a                                  ; $46e6: $e0 $0b
    sub b                                         ; $46e8: $90
    ld b, $e0                                     ; $46e9: $06 $e0
    nop                                           ; $46eb: $00
    ld b, $c9                                     ; $46ec: $06 $c9
    add [hl]                                      ; $46ee: $86
    and h                                         ; $46ef: $a4
    ld hl, $4125                                  ; $46f0: $21 $25 $41
    ld a, b                                       ; $46f3: $78
    jp c, $fea0                                   ; $46f4: $da $a0 $fe

    ldh [$fd], a                                  ; $46f7: $e0 $fd
    cp $fe                                        ; $46f9: $fe $fe
    rst $38                                       ; $46fb: $ff
    ldh [rIF], a                                  ; $46fc: $e0 $0f
    xor b                                         ; $46fe: $a8
    rlca                                          ; $46ff: $07
    ld d, h                                       ; $4700: $54
    rlca                                          ; $4701: $07
    inc l                                         ; $4702: $2c
    inc bc                                        ; $4703: $03
    ld l, a                                       ; $4704: $6f
    ld b, $03                                     ; $4705: $06 $03
    ld [bc], a                                    ; $4707: $02
    inc bc                                        ; $4708: $03
    rst $38                                       ; $4709: $ff
    ldh [rTAC], a                                 ; $470a: $e0 $07
    inc b                                         ; $470c: $04
    ld b, $43                                     ; $470d: $06 $43
    rst $38                                       ; $470f: $ff
    rst $10                                       ; $4710: $d7
    jr z, jr_07b_46be                             ; $4711: $28 $ab

    ld d, h                                       ; $4713: $54
    ld d, l                                       ; $4714: $55
    xor d                                         ; $4715: $aa
    add e                                         ; $4716: $83
    ld a, h                                       ; $4717: $7c
    di                                            ; $4718: $f3
    add l                                         ; $4719: $85
    ld a, [$2294]                                 ; $471a: $fa $94 $22
    xor d                                         ; $471d: $aa
    ret nz                                        ; $471e: $c0

    rlca                                          ; $471f: $07
    db $fc                                        ; $4720: $fc
    ld c, $f8                                     ; $4721: $0e $f8
    rst $38                                       ; $4723: $ff
    dec e                                         ; $4724: $1d
    ldh a, [$3f]                                  ; $4725: $f0 $3f
    ldh [$75], a                                  ; $4727: $e0 $75
    ret nz                                        ; $4729: $c0

    db $eb                                        ; $472a: $eb
    add b                                         ; $472b: $80
    rst $38                                       ; $472c: $ff
    rst $10                                       ; $472d: $d7
    nop                                           ; $472e: $00
    xor a                                         ; $472f: $af
    ld bc, $025f                                  ; $4730: $01 $5f $02
    cp [hl]                                       ; $4733: $be
    inc b                                         ; $4734: $04
    rst $38                                       ; $4735: $ff
    ld a, l                                       ; $4736: $7d
    add hl, bc                                    ; $4737: $09
    ei                                            ; $4738: $fb
    inc de                                        ; $4739: $13
    jr nc, @+$01                                  ; $473a: $30 $ff

    ld d, e                                       ; $473c: $53
    rst $38                                       ; $473d: $ff
    rst $38                                       ; $473e: $ff
    cp h                                          ; $473f: $bc
    sbc $70                                       ; $4740: $de $70
    or b                                          ; $4742: $b0
    ldh [$60], a                                  ; $4743: $e0 $60
    pop bc                                        ; $4745: $c1
    pop bc                                        ; $4746: $c1
    rst $38                                       ; $4747: $ff
    add d                                         ; $4748: $82
    add e                                         ; $4749: $83
    inc b                                         ; $474a: $04
    rrca                                          ; $474b: $0f

jr_07b_474c:
    ld b, $fa                                     ; $474c: $06 $fa
    jp nz, $fffe                                  ; $474e: $c2 $fe $ff

    ld [hl+], a                                   ; $4751: $22
    ld a, $44                                     ; $4752: $3e $44
    ld a, [hl]                                    ; $4754: $7e
    adc b                                         ; $4755: $88
    db $fc                                        ; $4756: $fc
    db $10                                        ; $4757: $10
    ld hl, sp-$11                                 ; $4758: $f8 $ef
    jr nz, jr_07b_474c                            ; $475a: $20 $f0

    ld b, b                                       ; $475c: $40
    ldh [$b8], a                                  ; $475d: $e0 $b8
    rlca                                          ; $475f: $07
    inc bc                                        ; $4760: $03
    inc bc                                        ; $4761: $03
    inc c                                         ; $4762: $0c
    rst $20                                       ; $4763: $e7
    rrca                                          ; $4764: $0f
    scf                                           ; $4765: $37
    jr c, jr_07b_4788                             ; $4766: $38 $20

    ld hl, $211e                                  ; $4768: $21 $1e $21
    rst $38                                       ; $476b: $ff
    rst $38                                       ; $476c: $ff
    db $e3                                        ; $476d: $e3
    sbc a                                         ; $476e: $9f
    jp $e327                                      ; $476f: $c3 $27 $e3


    dec hl                                        ; $4772: $2b
    pop hl                                        ; $4773: $e1
    ld a, h                                       ; $4774: $7c

jr_07b_4775:
    pop hl                                        ; $4775: $e1
    inc h                                         ; $4776: $24
    inc bc                                        ; $4777: $03
    ld hl, sp-$3b                                 ; $4778: $f8 $c5
    ld hl, sp+$19                                 ; $477a: $f8 $19
    jr nz, jr_07b_4775                            ; $477c: $20 $f7

    adc b                                         ; $477e: $88
    dec bc                                        ; $477f: $0b
    xor b                                         ; $4780: $a8
    add l                                         ; $4781: $85
    sub h                                         ; $4782: $94
    inc bc                                        ; $4783: $03
    dec c                                         ; $4784: $0d
    dec c                                         ; $4785: $0d
    ei                                            ; $4786: $fb

jr_07b_4787:
    ld [de], a                                    ; $4787: $12

jr_07b_4788:
    rra                                           ; $4788: $1f
    ld [$3263], sp                                ; $4789: $08 $63 $32
    inc sp                                        ; $478c: $33
    ld c, l                                       ; $478d: $4d
    ld a, [hl]                                    ; $478e: $7e
    sub a                                         ; $478f: $97
    rst $38                                       ; $4790: $ff
    db $e4                                        ; $4791: $e4
    ld a, [hl-]                                   ; $4792: $3a
    jp nz, $8170                                  ; $4793: $c2 $70 $81

    ld a, [bc]                                    ; $4796: $0a
    inc c                                         ; $4797: $0c
    dec d                                         ; $4798: $15
    rst $38                                       ; $4799: $ff
    jr jr_07b_4787                                ; $479a: $18 $eb

    ldh a, [$36]                                  ; $479c: $f0 $36
    ld h, c                                       ; $479e: $61
    sbc l                                         ; $479f: $9d
    ld [hl-], a                                   ; $47a0: $32
    ld a, [bc]                                    ; $47a1: $0a
    rst $38                                       ; $47a2: $ff
    dec e                                         ; $47a3: $1d
    ld h, l                                       ; $47a4: $65
    rrca                                          ; $47a5: $0f
    ld a, [$4306]                                 ; $47a6: $fa $06 $43
    db $fc                                        ; $47a9: $fc
    ld b, l                                       ; $47aa: $45
    rst $38                                       ; $47ab: $ff
    ld a, [$fc23]                                 ; $47ac: $fa $23 $fc
    ld hl, $63fe                                  ; $47af: $21 $fe $63
    db $fc                                        ; $47b2: $fc
    sub c                                         ; $47b3: $91
    rst $38                                       ; $47b4: $ff
    sbc [hl]                                      ; $47b5: $9e
    inc de                                        ; $47b6: $13
    inc e                                         ; $47b7: $1c
    ld de, $3f1e                                  ; $47b8: $11 $1e $3f
    ldh [$3f], a                                  ; $47bb: $e0 $3f
    rst $38                                       ; $47bd: $ff
    push hl                                       ; $47be: $e5
    rra                                           ; $47bf: $1f
    ld a, [$f41f]                                 ; $47c0: $fa $1f $f4
    rra                                           ; $47c3: $1f
    ld sp, hl                                     ; $47c4: $f9
    rrca                                          ; $47c5: $0f
    rst $38                                       ; $47c6: $ff
    rst $38                                       ; $47c7: $ff
    rrca                                          ; $47c8: $0f
    rst $38                                       ; $47c9: $ff
    inc b                                         ; $47ca: $04
    rst $38                                       ; $47cb: $ff
    ld l, $f6                                     ; $47cc: $2e $f6
    ld e, h                                       ; $47ce: $5c
    cp a                                          ; $47cf: $bf
    db $ec                                        ; $47d0: $ec
    cp c                                          ; $47d1: $b9
    rst $18                                       ; $47d2: $df
    ld a, $ff                                     ; $47d3: $3e $ff
    ret nz                                        ; $47d5: $c0

    adc d                                         ; $47d6: $8a
    ld b, b                                       ; $47d7: $40
    db $fc                                        ; $47d8: $fc
    rst $38                                       ; $47d9: $ff
    cp $80                                        ; $47da: $fe $80
    add b                                         ; $47dc: $80
    jr jr_07b_47fe                                ; $47dd: $18 $1f

    ld h, c                                       ; $47df: $61
    ld a, a                                       ; $47e0: $7f
    add [hl]                                      ; $47e1: $86
    cp a                                          ; $47e2: $bf
    cp $1c                                        ; $47e3: $fe $1c
    ld hl, sp+$70                                 ; $47e5: $f8 $70
    ldh [$c0], a                                  ; $47e7: $e0 $c0
    inc a                                         ; $47e9: $3c
    add b                                         ; $47ea: $80
    inc bc                                        ; $47eb: $03

jr_07b_47ec:
    reti                                          ; $47ec: $d9


    inc bc                                        ; $47ed: $03
    dec [hl]                                      ; $47ee: $35
    ret nz                                        ; $47ef: $c0

    inc a                                         ; $47f0: $3c
    add b                                         ; $47f1: $80
    ld [bc], a                                    ; $47f2: $02
    inc bc                                        ; $47f3: $03
    ld [c], a                                     ; $47f4: $e2
    jr nz, jr_07b_4803                            ; $47f5: $20 $0c

jr_07b_47f7:
    rra                                           ; $47f7: $1f
    ld a, a                                       ; $47f8: $7f
    add hl, bc                                    ; $47f9: $09
    ld a, $12                                     ; $47fa: $3e $12
    ld e, a                                       ; $47fc: $5f
    ld h, a                                       ; $47fd: $67

jr_07b_47fe:
    cp a                                          ; $47fe: $bf

Call_07b_47ff:
    ret nz                                        ; $47ff: $c0

    xor b                                         ; $4800: $a8
    nop                                           ; $4801: $00
    rst $38                                       ; $4802: $ff

jr_07b_4803:
    jr c, jr_07b_47ec                             ; $4803: $38 $e7

    ld h, h                                       ; $4805: $64

jr_07b_4806:
    rst $30                                       ; $4806: $f7
    db $f4                                        ; $4807: $f4
    ld [hl], a                                    ; $4808: $77
    ld [hl], h                                    ; $4809: $74
    rst $20                                       ; $480a: $e7
    rst $38                                       ; $480b: $ff
    db $e4                                        ; $480c: $e4
    push de                                       ; $480d: $d5
    ldh a, [$fb]                                  ; $480e: $f0 $fb
    ldh a, [$fd]                                  ; $4810: $f0 $fd
    ld [hl], b                                    ; $4812: $70

jr_07b_4813:
    ei                                            ; $4813: $fb

jr_07b_4814:
    rst $38                                       ; $4814: $ff
    jr c, jr_07b_4806                             ; $4815: $38 $ef

    jr c, jr_07b_4814                             ; $4817: $38 $fb

    ld [$08ff], sp                                ; $4819: $08 $ff $08
    rst $30                                       ; $481c: $f7
    ld a, a                                       ; $481d: $7f
    inc c                                         ; $481e: $0c
    db $f4                                        ; $481f: $f4
    db $eb                                        ; $4820: $eb
    add sp, $17                                   ; $4821: $e8 $17
    ld d, b                                       ; $4823: $50
    xor a                                         ; $4824: $af
    ld [hl], b                                    ; $4825: $70
    ld bc, $0aff                                  ; $4826: $01 $ff $0a
    push af                                       ; $4829: $f5
    dec d                                         ; $482a: $15
    ld [$d42b], a                                 ; $482b: $ea $2b $d4
    ld b, b                                       ; $482e: $40
    ret nz                                        ; $482f: $c0

    rst $38                                       ; $4830: $ff
    jr nz, jr_07b_4813                            ; $4831: $20 $e0

    db $10                                        ; $4833: $10
    ldh a, [$a8]                                  ; $4834: $f0 $a8
    ld e, b                                       ; $4836: $58
    ld e, [hl]                                    ; $4837: $5e
    xor [hl]                                      ; $4838: $ae
    rst $38                                       ; $4839: $ff
    xor l                                         ; $483a: $ad
    ld e, e                                       ; $483b: $5b
    ld a, a                                       ; $483c: $7f
    add l                                         ; $483d: $85
    rst $38                                       ; $483e: $ff
    dec b                                         ; $483f: $05
    inc hl                                        ; $4840: $23
    dec a                                         ; $4841: $3d
    rst $38                                       ; $4842: $ff
    inc d                                         ; $4843: $14
    jr jr_07b_4852                                ; $4844: $18 $0c

    ld [$0406], sp                                ; $4846: $08 $06 $04
    inc bc                                        ; $4849: $03
    ld [bc], a                                    ; $484a: $02
    cp $54                                        ; $484b: $fe $54
    ld b, e                                       ; $484d: $43
    ld [c], a                                     ; $484e: $e2
    nop                                           ; $484f: $00
    push bc                                       ; $4850: $c5
    add b                                         ; $4851: $80

jr_07b_4852:
    dec hl                                        ; $4852: $2b
    ld b, b                                       ; $4853: $40
    rla                                           ; $4854: $17
    rst $38                                       ; $4855: $ff
    jr nz, jr_07b_47f7                            ; $4856: $20 $9f

    db $10                                        ; $4858: $10
    ld l, a                                       ; $4859: $6f
    adc b                                         ; $485a: $88
    or [hl]                                       ; $485b: $b6
    push bc                                       ; $485c: $c5
    ld e, e                                       ; $485d: $5b
    rst $38                                       ; $485e: $ff
    ld h, d                                       ; $485f: $62
    ld [hl], l                                    ; $4860: $75
    adc e                                         ; $4861: $8b
    ld l, c                                       ; $4862: $69
    ld d, a                                       ; $4863: $57
    and d                                         ; $4864: $a2
    ld a, $d4                                     ; $4865: $3e $d4
    rst $38                                       ; $4867: $ff
    inc e                                         ; $4868: $1c
    xor b                                         ; $4869: $a8
    ld e, b                                       ; $486a: $58
    ld d, h                                       ; $486b: $54
    xor h                                         ; $486c: $ac
    xor d                                         ; $486d: $aa
    ld d, [hl]                                    ; $486e: $56
    ld b, [hl]                                    ; $486f: $46
    rst $38                                       ; $4870: $ff
    cp d                                          ; $4871: $ba
    ld a, [bc]                                    ; $4872: $0a
    dec c                                         ; $4873: $0d
    add hl, bc                                    ; $4874: $09
    ld c, $08                                     ; $4875: $0e $08
    rrca                                          ; $4877: $0f
    add hl, bc                                    ; $4878: $09
    sbc c                                         ; $4879: $99
    ld c, $65                                     ; $487a: $0e $65
    jr nz, jr_07b_48df                            ; $487c: $20 $61

    jr nz, jr_07b_4882                            ; $487e: $20 $02

    inc bc                                        ; $4880: $03
    ld c, l                                       ; $4881: $4d

jr_07b_4882:
    ldh [$39], a                                  ; $4882: $e0 $39
    jr nz, jr_07b_4905                            ; $4884: $20 $7f

    rst $38                                       ; $4886: $ff
    add c                                         ; $4887: $81
    cp a                                          ; $4888: $bf
    ld b, c                                       ; $4889: $41
    ld a, a                                       ; $488a: $7f
    add b                                         ; $488b: $80
    ccf                                           ; $488c: $3f
    ret nz                                        ; $488d: $c0

    ld e, a                                       ; $488e: $5f
    pop af                                        ; $488f: $f1
    and b                                         ; $4890: $a0
    add h                                         ; $4891: $84
    ld b, c                                       ; $4892: $41
    add d                                         ; $4893: $82
    ld b, c                                       ; $4894: $41
    add b                                         ; $4895: $80
    ld b, b                                       ; $4896: $40
    sub b                                         ; $4897: $90
    ld hl, sp-$78                                 ; $4898: $f8 $88
    db $fc                                        ; $489a: $fc
    ei                                            ; $489b: $fb
    ld b, h                                       ; $489c: $44
    ld b, $3c                                     ; $489d: $06 $3c
    jr nz, jr_07b_48a6                            ; $489f: $20 $05

    ld b, $0c                                     ; $48a1: $06 $0c
    dec bc                                        ; $48a3: $0b
    rrca                                          ; $48a4: $0f
    sbc e                                         ; $48a5: $9b

jr_07b_48a6:
    ld [$9c07], sp                                ; $48a6: $08 $07 $9c
    ld [c], a                                     ; $48a9: $e2
    rst $38                                       ; $48aa: $ff
    rst $20                                       ; $48ab: $e7
    add hl, de                                    ; $48ac: $19
    ldh [$15], a                                  ; $48ad: $e0 $15
    ldh [$f6], a                                  ; $48af: $e0 $f6
    rst $28                                       ; $48b1: $ef
    ld c, $f0                                     ; $48b2: $0e $f0
    inc b                                         ; $48b4: $04
    db $eb                                        ; $48b5: $eb
    ld l, $20                                     ; $48b6: $2e $20
    rst $28                                       ; $48b8: $ef
    add sp, -$31                                  ; $48b9: $e8 $cf
    ld a, a                                       ; $48bb: $7f
    ret z                                         ; $48bc: $c8

    sbc a                                         ; $48bd: $9f
    sub b                                         ; $48be: $90
    ccf                                           ; $48bf: $3f
    jr nz, jr_07b_4941                            ; $48c0: $20 $7f

    ld b, b                                       ; $48c2: $40
    ld a, h                                       ; $48c3: $7c
    nop                                           ; $48c4: $00
    rst $38                                       ; $48c5: $ff
    ld [bc], a                                    ; $48c6: $02
    ld a, [$f705]                                 ; $48c7: $fa $05 $f7
    inc c                                         ; $48ca: $0c
    rst $30                                       ; $48cb: $f7
    inc c                                         ; $48cc: $0c
    rst $18                                       ; $48cd: $df
    rst $38                                       ; $48ce: $ff
    inc l                                         ; $48cf: $2c
    xor a                                         ; $48d0: $af
    ld e, [hl]                                    ; $48d1: $5e
    ld c, a                                       ; $48d2: $4f
    cp [hl]                                       ; $48d3: $be
    sbc a                                         ; $48d4: $9f

jr_07b_48d5:
    ld a, [hl]                                    ; $48d5: $7e
    ld e, a                                       ; $48d6: $5f

jr_07b_48d7:
    rst $38                                       ; $48d7: $ff
    cp [hl]                                       ; $48d8: $be
    cp a                                          ; $48d9: $bf
    ld a, a                                       ; $48da: $7f
    rla                                           ; $48db: $17
    add sp, $2f                                   ; $48dc: $e8 $2f
    ret nc                                        ; $48de: $d0

jr_07b_48df:
    ld e, a                                       ; $48df: $5f
    dec c                                         ; $48e0: $0d
    and b                                         ; $48e1: $a0
    db $fc                                        ; $48e2: $fc
    pop hl                                        ; $48e3: $e1
    cp a                                          ; $48e4: $bf
    ld b, b                                       ; $48e5: $40
    db $fc                                        ; $48e6: $fc
    pop hl                                        ; $48e7: $e1
    add b                                         ; $48e8: $80
    inc bc                                        ; $48e9: $03
    inc e                                         ; $48ea: $1c
    ld h, d                                       ; $48eb: $62
    db $fc                                        ; $48ec: $fc
    ld [c], a                                     ; $48ed: $e2
    ccf                                           ; $48ee: $3f
    cpl                                           ; $48ef: $2f
    ld sp, $1817                                  ; $48f0: $31 $17 $18
    ld a, [bc]                                    ; $48f3: $0a
    dec c                                         ; $48f4: $0d

jr_07b_48f5:
    halt                                          ; $48f5: $76
    pop hl                                        ; $48f6: $e1
    sub h                                         ; $48f7: $94
    inc hl                                        ; $48f8: $23
    rst $38                                       ; $48f9: $ff
    adc h                                         ; $48fa: $8c
    ld [hl], h                                    ; $48fb: $74
    sbc b                                         ; $48fc: $98
    add sp, -$30                                  ; $48fd: $e8 $d0
    ld [hl], b                                    ; $48ff: $70
    ld h, b                                       ; $4900: $60
    and b                                         ; $4901: $a0
    rst $38                                       ; $4902: $ff
    jr nc, jr_07b_48d5                            ; $4903: $30 $d0

jr_07b_4905:
    jr nc, jr_07b_48d7                            ; $4905: $30 $d0

    ldh [$a0], a                                  ; $4907: $e0 $a0
    ld b, b                                       ; $4909: $40
    ld b, b                                       ; $490a: $40
    cp $92                                        ; $490b: $fe $92
    dec hl                                        ; $490d: $2b
    nop                                           ; $490e: $00
    nop                                           ; $490f: $00
    cpl                                           ; $4910: $2f
    ret nc                                        ; $4911: $d0

    rra                                           ; $4912: $1f
    ldh [rIF], a                                  ; $4913: $e0 $0f
    rst $38                                       ; $4915: $ff
    ldh a, [$97]                                  ; $4916: $f0 $97
    add sp, -$75                                  ; $4918: $e8 $8b
    db $f4                                        ; $491a: $f4
    ld b, l                                       ; $491b: $45
    ld a, d                                       ; $491c: $7a
    ld b, d                                       ; $491d: $42
    rst $38                                       ; $491e: $ff
    ld a, l                                       ; $491f: $7d
    ld hl, $bc3e                                  ; $4920: $21 $3e $bc
    ld h, h                                       ; $4923: $64
    sbc $32                                       ; $4924: $de $32
    rst $28                                       ; $4926: $ef
    rst $38                                       ; $4927: $ff
    add hl, de                                    ; $4928: $19
    rst $30                                       ; $4929: $f7
    dec c                                         ; $492a: $0d
    rst $38                                       ; $492b: $ff
    inc bc                                        ; $492c: $03
    ld a, [hl]                                    ; $492d: $7e
    add d                                         ; $492e: $82
    cp a                                          ; $492f: $bf
    rst $30                                       ; $4930: $f7
    ld b, a                                       ; $4931: $47
    ld e, a                                       ; $4932: $5f
    and a                                         ; $4933: $a7
    ld b, d                                       ; $4934: $42
    pop bc                                        ; $4935: $c1
    adc a                                         ; $4936: $8f
    adc [hl]                                      ; $4937: $8e
    rst $18                                       ; $4938: $df
    ret nc                                        ; $4939: $d0

    rst $38                                       ; $493a: $ff
    ld l, b                                       ; $493b: $68
    ld l, a                                       ; $493c: $6f
    cp l                                          ; $493d: $bd
    cp [hl]                                       ; $493e: $be
    ld e, b                                       ; $493f: $58
    ld e, a                                       ; $4940: $5f

jr_07b_4941:
    xor b                                         ; $4941: $a8
    xor a                                         ; $4942: $af
    rst $28                                       ; $4943: $ef
    rst $38                                       ; $4944: $ff
    ret nz                                        ; $4945: $c0

    cp a                                          ; $4946: $bf

jr_07b_4947:
    ret nz                                        ; $4947: $c0

    dec b                                         ; $4948: $05
    and e                                         ; $4949: $a3
    cp $01                                        ; $494a: $fe $01
    ld d, l                                       ; $494c: $55
    rst $38                                       ; $494d: $ff
    xor d                                         ; $494e: $aa
    ld a, [hl+]                                   ; $494f: $2a
    push de                                       ; $4950: $d5
    push af                                       ; $4951: $f5
    ld a, [bc]                                    ; $4952: $0a
    add sp, $17                                   ; $4953: $e8 $17
    pop de                                        ; $4955: $d1
    rst $38                                       ; $4956: $ff
    cpl                                           ; $4957: $2f
    and a                                         ; $4958: $a7
    ld e, a                                       ; $4959: $5f
    ld c, a                                       ; $495a: $4f
    cp a                                          ; $495b: $bf
    adc a                                         ; $495c: $8f
    ld a, a                                       ; $495d: $7f
    rlca                                          ; $495e: $07
    jr jr_07b_4947                                ; $495f: $18 $e6

    nop                                           ; $4961: $00
    ld c, $61                                     ; $4962: $0e $61
    db $fd                                        ; $4964: $fd
    rst $20                                       ; $4965: $e7
    rst $30                                       ; $4966: $f7
    adc a                                         ; $4967: $8f
    or d                                          ; $4968: $b2
    ld bc, $01ae                                  ; $4969: $01 $ae $01
    res 0, b                                      ; $496c: $cb $80
    jp c, $e1fe                                   ; $496e: $da $fe $e1

    ret nz                                        ; $4971: $c0

    jr nc, jr_07b_48f5                            ; $4972: $30 $81

    ld [$600f], sp                                ; $4974: $08 $0f $60
    rst $20                                       ; $4977: $e7
    xor a                                         ; $4978: $af
    ld e, a                                       ; $4979: $5f
    ld sp, hl                                     ; $497a: $f9
    rrca                                          ; $497b: $0f
    inc a                                         ; $497c: $3c
    ld [hl+], a                                   ; $497d: $22
    jr c, jr_07b_49a1                             ; $497e: $38 $21

    cp a                                          ; $4980: $bf
    rst $38                                       ; $4981: $ff
    ld a, a                                       ; $4982: $7f
    ld a, a                                       ; $4983: $7f
    or h                                          ; $4984: $b4
    rst $38                                       ; $4985: $ff
    call c, $ee9a                                 ; $4986: $dc $9a $ee
    push bc                                       ; $4989: $c5
    rst $38                                       ; $498a: $ff
    and d                                         ; $498b: $a2
    rst $38                                       ; $498c: $ff
    pop de                                        ; $498d: $d1
    cp a                                          ; $498e: $bf
    rst $38                                       ; $498f: $ff
    and b                                         ; $4990: $a0
    rst $38                                       ; $4991: $ff
    ret nc                                        ; $4992: $d0

    rst $38                                       ; $4993: $ff
    ld [$04b0], a                                 ; $4994: $ea $b0 $04
    add b                                         ; $4997: $80
    rst $38                                       ; $4998: $ff
    add b                                         ; $4999: $80
    ld h, b                                       ; $499a: $60
    ldh [$bc], a                                  ; $499b: $e0 $bc
    db $fc                                        ; $499d: $fc
    ld a, a                                       ; $499e: $7f
    di                                            ; $499f: $f3
    ccf                                           ; $49a0: $3f

jr_07b_49a1:
    rst $10                                       ; $49a1: $d7
    ld hl, sp+$01                                 ; $49a2: $f8 $01
    cp $20                                        ; $49a4: $fe $20
    and c                                         ; $49a6: $a1
    ld [bc], a                                    ; $49a7: $02
    add d                                         ; $49a8: $82
    add b                                         ; $49a9: $80
    db $10                                        ; $49aa: $10
    rst $38                                       ; $49ab: $ff
    rst $38                                       ; $49ac: $ff
    ld hl, sp-$01                                 ; $49ad: $f8 $ff
    halt                                          ; $49af: $76
    ld a, a                                       ; $49b0: $7f
    add e                                         ; $49b1: $83
    ld a, a                                       ; $49b2: $7f
    ld [hl], c                                    ; $49b3: $71
    rst $38                                       ; $49b4: $ff
    rra                                           ; $49b5: $1f
    adc c                                         ; $49b6: $89
    rst $38                                       ; $49b7: $ff
    ld c, c                                       ; $49b8: $49
    rst $38                                       ; $49b9: $ff
    ld b, c                                       ; $49ba: $41
    ld l, d                                       ; $49bb: $6a
    nop                                           ; $49bc: $00
    ld l, h                                       ; $49bd: $6c
    ld bc, $a0d7                                  ; $49be: $01 $d7 $a0
    rst $18                                       ; $49c1: $df
    and b                                         ; $49c2: $a0
    cp a                                          ; $49c3: $bf
    ldh [$bf], a                                  ; $49c4: $e0 $bf
    ret nc                                        ; $49c6: $d0

    cp $e0                                        ; $49c7: $fe $e0
    ret z                                         ; $49c9: $c8

    cp a                                          ; $49ca: $bf
    rst $30                                       ; $49cb: $f7
    call nz, $c3bf                                ; $49cc: $c4 $bf $c3
    and l                                         ; $49cf: $a5
    ld h, b                                       ; $49d0: $60
    inc b                                         ; $49d1: $04
    ld hl, sp+$08                                 ; $49d2: $f8 $08
    ldh a, [$9f]                                  ; $49d4: $f0 $9f
    db $10                                        ; $49d6: $10
    ldh [rNR41], a                                ; $49d7: $e0 $20
    ret nz                                        ; $49d9: $c0

    ld b, b                                       ; $49da: $40
    ld h, d                                       ; $49db: $62
    xor e                                         ; $49dc: $ab
    or $00                                        ; $49dd: $f6 $00
    db $10                                        ; $49df: $10
    db $d3                                        ; $49e0: $d3
    jr c, jr_07b_4a1b                             ; $49e1: $38 $38

    cp e                                          ; $49e3: $bb
    nop                                           ; $49e4: $00
    cp $e1                                        ; $49e5: $fe $e1
    ld a, a                                       ; $49e7: $7f
    cp $e3                                        ; $49e8: $fe $e3
    rst $18                                       ; $49ea: $df
    ld a, a                                       ; $49eb: $7f
    push bc                                       ; $49ec: $c5
    call c, $e08c                                 ; $49ed: $dc $8c $e0
    db $fc                                        ; $49f0: $fc
    ld [hl-], a                                   ; $49f1: $32
    jr nz, jr_07b_4a02                            ; $49f2: $20 $0e

    ld hl, $2107                                  ; $49f4: $21 $07 $21
    ld d, a                                       ; $49f7: $57
    cp $5f                                        ; $49f8: $fe $5f
    add hl, hl                                    ; $49fa: $29
    rst $38                                       ; $49fb: $ff
    ld [hl], h                                    ; $49fc: $74
    rst $38                                       ; $49fd: $ff
    xor b                                         ; $49fe: $a8
    db $fc                                        ; $49ff: $fc

jr_07b_4a00:
    ldh [$ba], a                                  ; $4a00: $e0 $ba

jr_07b_4a02:
    ld [hl-], a                                   ; $4a02: $32
    jr nz, jr_07b_4a00                            ; $4a03: $20 $fb

    cp d                                          ; $4a05: $ba
    rst $38                                       ; $4a06: $ff
    ld l, e                                       ; $4a07: $6b
    and b                                         ; $4a08: $a0
    inc bc                                        ; $4a09: $03
    rst $38                                       ; $4a0a: $ff
    add b                                         ; $4a0b: $80
    ld a, a                                       ; $4a0c: $7f
    ldh [$df], a                                  ; $4a0d: $e0 $df
    ccf                                           ; $4a0f: $3f
    ld hl, sp+$2f                                 ; $4a10: $f8 $2f
    cp $5f                                        ; $4a12: $fe $5f
    ld a, [bc]                                    ; $4a14: $0a
    ld b, h                                       ; $4a15: $44
    ld hl, sp-$08                                 ; $4a16: $f8 $f8
    reti                                          ; $4a18: $d9


    ld b, b                                       ; $4a19: $40
    rst $38                                       ; $4a1a: $ff

jr_07b_4a1b:
    ld [c], a                                     ; $4a1b: $e2
    call nc, $bf41                                ; $4a1c: $d4 $41 $bf
    pop bc                                        ; $4a1f: $c1
    cp $e1                                        ; $4a20: $fe $e1
    rst $18                                       ; $4a22: $df
    and c                                         ; $4a23: $a1
    rst $38                                       ; $4a24: $ff
    ld e, a                                       ; $4a25: $5f
    ld h, c                                       ; $4a26: $61
    ld a, a                                       ; $4a27: $7f
    ld b, c                                       ; $4a28: $41
    ld e, a                                       ; $4a29: $5f
    ld h, c                                       ; $4a2a: $61
    ld a, [hl]                                    ; $4a2b: $7e
    ld b, d                                       ; $4a2c: $42
    ld a, a                                       ; $4a2d: $7f
    ld [hl], b                                    ; $4a2e: $70
    ld hl, sp+$38                                 ; $4a2f: $f8 $38
    db $fc                                        ; $4a31: $fc
    ld a, h                                       ; $4a32: $7c
    cp $b9                                        ; $4a33: $fe $b9
    xor a                                         ; $4a35: $af
    nop                                           ; $4a36: $00
    db $ed                                        ; $4a37: $ed
    rst $18                                       ; $4a38: $df
    cp b                                          ; $4a39: $b8
    ld [bc], a                                    ; $4a3a: $02
    nop                                           ; $4a3b: $00
    nop                                           ; $4a3c: $00
    call nc, Call_07b_60e1                        ; $4a3d: $d4 $e1 $60
    ld h, b                                       ; $4a40: $60
    push af                                       ; $4a41: $f5
    ld sp, hl                                     ; $4a42: $f9
    push af                                       ; $4a43: $f5
    db $db                                        ; $4a44: $db
    jp $89c0                                      ; $4a45: $c3 $c0 $89


    and b                                         ; $4a48: $a0
    and b                                         ; $4a49: $a0
    ldh a, [$f0]                                  ; $4a4a: $f0 $f0
    ld a, b                                       ; $4a4c: $78
    rst $18                                       ; $4a4d: $df
    rst $38                                       ; $4a4e: $ff
    cp $c7                                        ; $4a4f: $fe $c7
    db $e3                                        ; $4a51: $e3
    add c                                         ; $4a52: $81
    sbc l                                         ; $4a53: $9d

Call_07b_4a54:
    ld h, b                                       ; $4a54: $60
    adc d                                         ; $4a55: $8a
    rst $38                                       ; $4a56: $ff
    rst $38                                       ; $4a57: $ff
    adc l                                         ; $4a58: $8d
    ld a, a                                       ; $4a59: $7f
    rst $00                                       ; $4a5a: $c7
    ld a, l                                       ; $4a5b: $7d
    rst $00                                       ; $4a5c: $c7
    rst $28                                       ; $4a5d: $ef
    ccf                                           ; $4a5e: $3f
    rst $30                                       ; $4a5f: $f7
    cp a                                          ; $4a60: $bf
    rra                                           ; $4a61: $1f
    ei                                            ; $4a62: $fb
    rrca                                          ; $4a63: $0f
    push af                                       ; $4a64: $f5
    rra                                           ; $4a65: $1f
    di                                            ; $4a66: $f3
    add c                                         ; $4a67: $81
    ld h, b                                       ; $4a68: $60
    push hl                                       ; $4a69: $e5
    inc de                                        ; $4a6a: $13
    ccf                                           ; $4a6b: $3f
    ld [c], a                                     ; $4a6c: $e2
    and c                                         ; $4a6d: $a1
    ld hl, $ca9e                                  ; $4a6e: $21 $9e $ca
    ld a, l                                       ; $4a71: $7d
    call nz, Call_07b_5420                        ; $4a72: $c4 $20 $54
    push hl                                       ; $4a75: $e5
    ld d, a                                       ; $4a76: $57
    ld bc, $5ff1                                  ; $4a77: $01 $f1 $5f
    ld c, b                                       ; $4a7a: $48
    nop                                           ; $4a7b: $00
    db $fc                                        ; $4a7c: $fc
    pop hl                                        ; $4a7d: $e1
    ld a, b                                       ; $4a7e: $78
    jp nz, $fffe                                  ; $4a7f: $c2 $fe $ff

    cp $7e                                        ; $4a82: $fe $7e
    rst $30                                       ; $4a84: $f7
    ld b, d                                       ; $4a85: $42
    ld a, $22                                     ; $4a86: $3e $22
    cp $e1                                        ; $4a88: $fe $e1
    ld e, $12                                     ; $4a8a: $1e $12
    inc c                                         ; $4a8c: $0c
    inc c                                         ; $4a8d: $0c
    nop                                           ; $4a8e: $00
    ld a, [bc]                                    ; $4a8f: $0a
    pop hl                                        ; $4a90: $e1
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    dec b                                         ; $4a94: $05
    ld [$f0ff], sp                                ; $4a95: $08 $ff $f0
    dec bc                                        ; $4a98: $0b
    rst $38                                       ; $4a99: $ff
    add sp, -$20                                  ; $4a9a: $e8 $e0
    rst $38                                       ; $4a9c: $ff
    ldh [rIE], a                                  ; $4a9d: $e0 $ff
    ldh [$f9], a                                  ; $4a9f: $e0 $f9
    rst $38                                       ; $4aa1: $ff
    rst $38                                       ; $4aa2: $ff
    call nz, $ffff                                ; $4aa3: $c4 $ff $ff
    db $ed                                        ; $4aa6: $ed
    db $ec                                        ; $4aa7: $ec
    rrca                                          ; $4aa8: $0f
    add sp, -$0b                                  ; $4aa9: $e8 $f5
    rst $38                                       ; $4aab: $ff
    push hl                                       ; $4aac: $e5
    ld h, b                                       ; $4aad: $60
    jp hl                                         ; $4aae: $e9


    ld a, [bc]                                    ; $4aaf: $0a
    ld a, [bc]                                    ; $4ab0: $0a
    xor [hl]                                      ; $4ab1: $ae
    ldh a, [$e4]                                  ; $4ab2: $f0 $e4
    add hl, bc                                    ; $4ab4: $09
    add hl, bc                                    ; $4ab5: $09
    add hl, bc                                    ; $4ab6: $09
    rst $18                                       ; $4ab7: $df
    db $e4                                        ; $4ab8: $e4
    ld a, [bc]                                    ; $4ab9: $0a
    ldh [$eb], a                                  ; $4aba: $e0 $eb
    ld a, [bc]                                    ; $4abc: $0a
    add b                                         ; $4abd: $80
    ldh [$ea], a                                  ; $4abe: $e0 $ea
    ldh a, [$e0]                                  ; $4ac0: $f0 $e0
    ldh [$ed], a                                  ; $4ac2: $e0 $ed
    rst $28                                       ; $4ac4: $ef
    db $e3                                        ; $4ac5: $e3
    ret nz                                        ; $4ac6: $c0

    ldh [$bf], a                                  ; $4ac7: $e0 $bf
    pop hl                                        ; $4ac9: $e1
    ldh [$f1], a                                  ; $4aca: $e0 $f1
    inc c                                         ; $4acc: $0c
    pop bc                                        ; $4acd: $c1
    inc c                                         ; $4ace: $0c
    ldh [$e4], a                                  ; $4acf: $e0 $e4
    sbc [hl]                                      ; $4ad1: $9e
    ldh [$e0], a                                  ; $4ad2: $e0 $e0
    di                                            ; $4ad4: $f3
    cp $e0                                        ; $4ad5: $fe $e0
    add b                                         ; $4ad7: $80
    ldh [$08], a                                  ; $4ad8: $e0 $08
    add hl, bc                                    ; $4ada: $09
    ld bc, $b109                                  ; $4adb: $01 $09 $b1
    and $e0                                       ; $4ade: $e6 $e0
    xor $97                                       ; $4ae0: $ee $97
    pop bc                                        ; $4ae2: $c1
    ldh [$f0], a                                  ; $4ae3: $e0 $f0
    add b                                         ; $4ae5: $80
    rst $18                                       ; $4ae6: $df
    ldh [rIE], a                                  ; $4ae7: $e0 $ff
    ldh [rIE], a                                  ; $4ae9: $e0 $ff
    ret z                                         ; $4aeb: $c8

    ldh [rIE], a                                  ; $4aec: $e0 $ff
    ldh [rIE], a                                  ; $4aee: $e0 $ff
    nop                                           ; $4af0: $00

jr_07b_4af1:
    reti                                          ; $4af1: $d9


    dec c                                         ; $4af2: $0d
    rst $38                                       ; $4af3: $ff
    pop hl                                        ; $4af4: $e1
    ld h, $d8                                     ; $4af5: $26 $d8
    dec c                                         ; $4af7: $0d
    dec bc                                        ; $4af8: $0b
    ld a, e                                       ; $4af9: $7b
    inc c                                         ; $4afa: $0c
    inc c                                         ; $4afb: $0c
    ldh [$f9], a                                  ; $4afc: $e0 $f9
    dec bc                                        ; $4afe: $0b
    ld c, $0e                                     ; $4aff: $0e $0e
    ld c, $9b                                     ; $4b01: $0e $9b
    pop bc                                        ; $4b03: $c1
    ld [bc], a                                    ; $4b04: $02
    nop                                           ; $4b05: $00
    sub $09                                       ; $4b06: $d6 $09
    ldh [$e0], a                                  ; $4b08: $e0 $e0
    sbc l                                         ; $4b0a: $9d
    ret nz                                        ; $4b0b: $c0

    nop                                           ; $4b0c: $00
    db $d3                                        ; $4b0d: $d3
    add d                                         ; $4b0e: $82
    pop bc                                        ; $4b0f: $c1
    pop hl                                        ; $4b10: $e1
    ld [c], a                                     ; $4b11: $e2
    cp $a3                                        ; $4b12: $fe $a3
    and b                                         ; $4b14: $a0
    nop                                           ; $4b15: $00
    adc $62                                       ; $4b16: $ce $62
    jp $d740                                      ; $4b18: $c3 $40 $d7


    rra                                           ; $4b1b: $1f
    ret nz                                        ; $4b1c: $c0

    ldh [$e5], a                                  ; $4b1d: $e0 $e5
    ld c, a                                       ; $4b1f: $4f
    ldh [$b2], a                                  ; $4b20: $e0 $b2
    ld a, [bc]                                    ; $4b22: $0a
    ld bc, $220a                                  ; $4b23: $01 $0a $22
    pop bc                                        ; $4b26: $c1
    ld hl, $c0c0                                  ; $4b27: $21 $c0 $c0
    or h                                          ; $4b2a: $b4
    rst $18                                       ; $4b2b: $df
    pop hl                                        ; $4b2c: $e1
    jr nz, jr_07b_4af1                            ; $4b2d: $20 $c2

    and c                                         ; $4b2f: $a1
    and d                                         ; $4b30: $a2
    ldh [$f7], a                                  ; $4b31: $e0 $f7
    ld bc, $e049                                  ; $4b33: $01 $49 $e0
    rst $28                                       ; $4b36: $ef
    add b                                         ; $4b37: $80
    rst $18                                       ; $4b38: $df
    ldh [$fb], a                                  ; $4b39: $e0 $fb
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    nop                                           ; $4b3d: $00
    add l                                         ; $4b3e: $85
    ret z                                         ; $4b3f: $c8

    rst $38                                       ; $4b40: $ff
    ldh a, [rP1]                                  ; $4b41: $f0 $00
    rst $38                                       ; $4b43: $ff
    add sp, -$20                                  ; $4b44: $e8 $e0
    rst $38                                       ; $4b46: $ff
    ldh [rIE], a                                  ; $4b47: $e0 $ff
    ldh [$f9], a                                  ; $4b49: $e0 $f9
    nop                                           ; $4b4b: $00
    ld [hl], l                                    ; $4b4c: $75
    ld bc, $eeff                                  ; $4b4d: $01 $ff $ee
    ld [bc], a                                    ; $4b50: $02
    ret nz                                        ; $4b51: $c0

    jp hl                                         ; $4b52: $e9


    inc bc                                        ; $4b53: $03
    inc b                                         ; $4b54: $04
    dec b                                         ; $4b55: $05
    sbc $eb                                       ; $4b56: $de $eb
    rst $30                                       ; $4b58: $f7
    ld b, $07                                     ; $4b59: $06 $07
    ld [$e9a0], sp                                ; $4b5b: $08 $a0 $e9
    add hl, bc                                    ; $4b5e: $09
    ld a, [bc]                                    ; $4b5f: $0a
    dec bc                                        ; $4b60: $0b
    inc c                                         ; $4b61: $0c
    rst $38                                       ; $4b62: $ff
    ld bc, $0d01                                  ; $4b63: $01 $01 $0d
    ld c, $0f                                     ; $4b66: $0e $0f
    db $10                                        ; $4b68: $10
    ld de, $ff12                                  ; $4b69: $11 $12 $ff
    inc de                                        ; $4b6c: $13
    inc d                                         ; $4b6d: $14
    dec d                                         ; $4b6e: $15
    ld d, $17                                     ; $4b6f: $16 $17
    jr @+$1b                                      ; $4b71: $18 $19

    ld a, [de]                                    ; $4b73: $1a
    cp $80                                        ; $4b74: $fe $80
    jp hl                                         ; $4b76: $e9


    ld a, [de]                                    ; $4b77: $1a
    dec de                                        ; $4b78: $1b
    inc e                                         ; $4b79: $1c
    dec e                                         ; $4b7a: $1d
    ld e, $1f                                     ; $4b7b: $1e $1f
    jr nz, @+$01                                  ; $4b7d: $20 $ff

    ld a, [de]                                    ; $4b7f: $1a
    ld a, [de]                                    ; $4b80: $1a
    ld a, [de]                                    ; $4b81: $1a
    ld hl, $2322                                  ; $4b82: $21 $22 $23
    inc h                                         ; $4b85: $24
    dec h                                         ; $4b86: $25
    ld a, [c]                                     ; $4b87: $f2
    ld hl, sp-$20                                 ; $4b88: $f8 $e0
    ld a, [de]                                    ; $4b8a: $1a
    ldh [$eb], a                                  ; $4b8b: $e0 $eb
    rst $38                                       ; $4b8d: $ff
    and $26                                       ; $4b8e: $e6 $26
    daa                                           ; $4b90: $27
    jr z, jr_07b_4bbc                             ; $4b91: $28 $29

    push de                                       ; $4b93: $d5
    ld a, [hl+]                                   ; $4b94: $2a
    ldh [$e1], a                                  ; $4b95: $e0 $e1
    dec hl                                        ; $4b97: $2b
    ld b, b                                       ; $4b98: $40
    jp hl                                         ; $4b99: $e9


    inc l                                         ; $4b9a: $2c
    rst $18                                       ; $4b9b: $df
    and $2d                                       ; $4b9c: $e6 $2d
    ld l, $ff                                     ; $4b9e: $2e $ff
    cpl                                           ; $4ba0: $2f
    jr nc, @+$33                                  ; $4ba1: $30 $31

    ld a, [de]                                    ; $4ba3: $1a
    ld a, [de]                                    ; $4ba4: $1a
    ld [hl-], a                                   ; $4ba5: $32
    inc sp                                        ; $4ba6: $33
    inc [hl]                                      ; $4ba7: $34
    or $20                                        ; $4ba8: $f6 $20
    jp hl                                         ; $4baa: $e9


    dec [hl]                                      ; $4bab: $35
    ld [hl], $be                                  ; $4bac: $36 $be
    db $e4                                        ; $4bae: $e4
    scf                                           ; $4baf: $37
    jr c, jr_07b_4beb                             ; $4bb0: $38 $39

    ld a, [hl-]                                   ; $4bb2: $3a
    ld a, a                                       ; $4bb3: $7f
    dec sp                                        ; $4bb4: $3b
    inc a                                         ; $4bb5: $3c
    ld a, [de]                                    ; $4bb6: $1a
    ld a, [de]                                    ; $4bb7: $1a
    dec a                                         ; $4bb8: $3d
    ld a, $3f                                     ; $4bb9: $3e $3f
    nop                                           ; $4bbb: $00

jr_07b_4bbc:
    jp hl                                         ; $4bbc: $e9


    cp a                                          ; $4bbd: $bf
    ld b, b                                       ; $4bbe: $40
    ld b, c                                       ; $4bbf: $41
    ld b, d                                       ; $4bc0: $42
    ld a, [de]                                    ; $4bc1: $1a
    ld b, e                                       ; $4bc2: $43
    ld b, h                                       ; $4bc3: $44
    add c                                         ; $4bc4: $81
    ldh [rLYC], a                                 ; $4bc5: $e0 $45
    rst $38                                       ; $4bc7: $ff
    ld b, [hl]                                    ; $4bc8: $46
    ld b, a                                       ; $4bc9: $47
    ld c, b                                       ; $4bca: $48
    ld c, c                                       ; $4bcb: $49
    ld c, d                                       ; $4bcc: $4a
    ld c, e                                       ; $4bcd: $4b
    ld c, h                                       ; $4bce: $4c
    ld c, l                                       ; $4bcf: $4d
    ei                                            ; $4bd0: $fb
    ld c, [hl]                                    ; $4bd1: $4e
    ld c, a                                       ; $4bd2: $4f
    ldh [$c9], a                                  ; $4bd3: $e0 $c9
    ld d, b                                       ; $4bd5: $50
    ld d, c                                       ; $4bd6: $51
    ld d, d                                       ; $4bd7: $52
    ld d, e                                       ; $4bd8: $53
    ld d, h                                       ; $4bd9: $54
    rst $38                                       ; $4bda: $ff
    ld d, l                                       ; $4bdb: $55
    ld d, [hl]                                    ; $4bdc: $56
    ld d, a                                       ; $4bdd: $57
    ld e, b                                       ; $4bde: $58
    ld a, [de]                                    ; $4bdf: $1a
    ld e, c                                       ; $4be0: $59
    ld e, d                                       ; $4be1: $5a
    ld e, e                                       ; $4be2: $5b
    ld a, a                                       ; $4be3: $7f
    ld e, h                                       ; $4be4: $5c
    ld a, [de]                                    ; $4be5: $1a
    ld e, l                                       ; $4be6: $5d
    ld e, [hl]                                    ; $4be7: $5e
    ld e, a                                       ; $4be8: $5f
    ld h, b                                       ; $4be9: $60
    ld h, c                                       ; $4bea: $61

jr_07b_4beb:
    ret nz                                        ; $4beb: $c0

    ret                                           ; $4bec: $c9


    rst $38                                       ; $4bed: $ff
    ld h, d                                       ; $4bee: $62
    ld h, e                                       ; $4bef: $63
    ld h, h                                       ; $4bf0: $64
    ld h, l                                       ; $4bf1: $65
    ld h, [hl]                                    ; $4bf2: $66
    ld h, a                                       ; $4bf3: $67
    ld l, b                                       ; $4bf4: $68
    ld l, c                                       ; $4bf5: $69
    rst $38                                       ; $4bf6: $ff
    ld l, d                                       ; $4bf7: $6a
    ld l, e                                       ; $4bf8: $6b
    ld l, h                                       ; $4bf9: $6c
    ld l, l                                       ; $4bfa: $6d
    ld l, [hl]                                    ; $4bfb: $6e
    ld l, a                                       ; $4bfc: $6f
    ld a, [de]                                    ; $4bfd: $1a
    ld [hl], b                                    ; $4bfe: $70
    rrca                                          ; $4bff: $0f
    ld [hl], c                                    ; $4c00: $71
    ld [hl], d                                    ; $4c01: $72
    ld [hl], e                                    ; $4c02: $73
    ld [hl], h                                    ; $4c03: $74
    and b                                         ; $4c04: $a0
    rst $18                                       ; $4c05: $df
    ldh [rIE], a                                  ; $4c06: $e0 $ff
    ldh [rIE], a                                  ; $4c08: $e0 $ff
    ldh [rIE], a                                  ; $4c0a: $e0 $ff
    ld hl, sp-$20                                 ; $4c0c: $f8 $e0
    rst $38                                       ; $4c0e: $ff
    ldh [rIE], a                                  ; $4c0f: $e0 $ff
    nop                                           ; $4c11: $00
    jp Jump_07b_7675                              ; $4c12: $c3 $75 $76


    ld [hl], a                                    ; $4c15: $77
    ld a, b                                       ; $4c16: $78
    ld a, c                                       ; $4c17: $79
    cp [hl]                                       ; $4c18: $be
    nop                                           ; $4c19: $00
    ret c                                         ; $4c1a: $d8

    ld a, d                                       ; $4c1b: $7a
    ld a, e                                       ; $4c1c: $7b
    ld a, h                                       ; $4c1d: $7c
    ld a, l                                       ; $4c1e: $7d
    ld a, [hl]                                    ; $4c1f: $7e
    nop                                           ; $4c20: $00
    ret c                                         ; $4c21: $d8

    ld a, a                                       ; $4c22: $7f
    rst $38                                       ; $4c23: $ff
    add b                                         ; $4c24: $80
    add c                                         ; $4c25: $81
    add d                                         ; $4c26: $82
    add e                                         ; $4c27: $83
    add h                                         ; $4c28: $84
    add l                                         ; $4c29: $85
    add [hl]                                      ; $4c2a: $86
    add a                                         ; $4c2b: $87
    cp $00                                        ; $4c2c: $fe $00
    call nc, $8988                                ; $4c2e: $d4 $88 $89
    adc d                                         ; $4c31: $8a
    adc e                                         ; $4c32: $8b
    adc h                                         ; $4c33: $8c
    adc l                                         ; $4c34: $8d
    adc [hl]                                      ; $4c35: $8e
    rst $30                                       ; $4c36: $f7
    adc a                                         ; $4c37: $8f
    sub b                                         ; $4c38: $90
    sub c                                         ; $4c39: $91
    nop                                           ; $4c3a: $00
    pop de                                        ; $4c3b: $d1
    sub d                                         ; $4c3c: $92
    sub e                                         ; $4c3d: $93
    sub h                                         ; $4c3e: $94
    sub l                                         ; $4c3f: $95
    rst $38                                       ; $4c40: $ff
    sub [hl]                                      ; $4c41: $96
    sub a                                         ; $4c42: $97
    sbc b                                         ; $4c43: $98
    sbc c                                         ; $4c44: $99
    sbc d                                         ; $4c45: $9a
    sbc e                                         ; $4c46: $9b
    sbc h                                         ; $4c47: $9c
    sbc l                                         ; $4c48: $9d
    cp $00                                        ; $4c49: $fe $00
    pop de                                        ; $4c4b: $d1
    sbc [hl]                                      ; $4c4c: $9e
    sbc a                                         ; $4c4d: $9f
    and b                                         ; $4c4e: $a0
    and c                                         ; $4c4f: $a1
    and d                                         ; $4c50: $a2
    and e                                         ; $4c51: $a3
    and h                                         ; $4c52: $a4
    rst $18                                       ; $4c53: $df
    and l                                         ; $4c54: $a5
    and [hl]                                      ; $4c55: $a6
    and a                                         ; $4c56: $a7
    xor b                                         ; $4c57: $a8
    xor c                                         ; $4c58: $a9
    nop                                           ; $4c59: $00
    jp nc, $abaa                                  ; $4c5a: $d2 $aa $ab

    rst $38                                       ; $4c5d: $ff
    xor h                                         ; $4c5e: $ac
    xor l                                         ; $4c5f: $ad
    xor [hl]                                      ; $4c60: $ae
    xor a                                         ; $4c61: $af
    or b                                          ; $4c62: $b0
    or c                                          ; $4c63: $b1
    or d                                          ; $4c64: $b2
    or e                                          ; $4c65: $b3
    ld sp, hl                                     ; $4c66: $f9
    xor c                                         ; $4c67: $a9
    nop                                           ; $4c68: $00
    pop de                                        ; $4c69: $d1
    adc e                                         ; $4c6a: $8b
    and c                                         ; $4c6b: $a1
    or h                                          ; $4c6c: $b4
    or l                                          ; $4c6d: $b5
    or [hl]                                       ; $4c6e: $b6
    or a                                          ; $4c6f: $b7
    cp b                                          ; $4c70: $b8
    rst $10                                       ; $4c71: $d7
    cp c                                          ; $4c72: $b9
    cp d                                          ; $4c73: $ba
    cp e                                          ; $4c74: $bb
    nop                                           ; $4c75: $00
    pop de                                        ; $4c76: $d1
    cp h                                          ; $4c77: $bc
    ld l, d                                       ; $4c78: $6a
    and c                                         ; $4c79: $a1
    cp l                                          ; $4c7a: $bd
    cp [hl]                                       ; $4c7b: $be
    rst $28                                       ; $4c7c: $ef
    cp a                                          ; $4c7d: $bf
    ret nz                                        ; $4c7e: $c0

    pop bc                                        ; $4c7f: $c1
    jp nz, $d200                                  ; $4c80: $c2 $00 $d2

    jp $c5c4                                      ; $4c83: $c3 $c4 $c5


    rst $38                                       ; $4c86: $ff
    ld a, [de]                                    ; $4c87: $1a
    ld a, [de]                                    ; $4c88: $1a
    rst $00                                       ; $4c89: $c7
    ret z                                         ; $4c8a: $c8

    ret                                           ; $4c8b: $c9


    jp z, $cb91                                   ; $4c8c: $ca $91 $cb

    nop                                           ; $4c8f: $00
    nop                                           ; $4c90: $00
    rst $18                                       ; $4c91: $df
    add b                                         ; $4c92: $80
    rst $18                                       ; $4c93: $df
    add b                                         ; $4c94: $80
    adc d                                         ; $4c95: $8a
    nop                                           ; $4c96: $00
    nop                                           ; $4c97: $00
    nop                                           ; $4c98: $00
    and c                                         ; $4c99: $a1
    ld c, h                                       ; $4c9a: $4c
    pop hl                                        ; $4c9b: $e1
    ld c, h                                       ; $4c9c: $4c
    pop hl                                        ; $4c9d: $e1
    ld d, a                                       ; $4c9e: $57
    ld l, c                                       ; $4c9f: $69
    ld e, b                                       ; $4ca0: $58
    add b                                         ; $4ca1: $80
    ld a, l                                       ; $4ca2: $7d
    rra                                           ; $4ca3: $1f
    ld [$5fdf], sp                                ; $4ca4: $08 $df $5f
    nop                                           ; $4ca7: $00
    nop                                           ; $4ca8: $00
    add b                                         ; $4ca9: $80
    ld a, l                                       ; $4caa: $7d
    rra                                           ; $4cab: $1f
    ld [$0014], sp                                ; $4cac: $08 $14 $00
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    add b                                         ; $4cb1: $80
    ld a, l                                       ; $4cb2: $7d
    rst $18                                       ; $4cb3: $df
    ld e, a                                       ; $4cb4: $5f
    inc d                                         ; $4cb5: $14
    nop                                           ; $4cb6: $00
    nop                                           ; $4cb7: $00
    nop                                           ; $4cb8: $00
    rst $18                                       ; $4cb9: $df
    ld e, a                                       ; $4cba: $5f
    cp a                                          ; $4cbb: $bf
    ld a, [hl+]                                   ; $4cbc: $2a
    inc d                                         ; $4cbd: $14
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    nop                                           ; $4cc0: $00
    rst $18                                       ; $4cc1: $df
    ld e, a                                       ; $4cc2: $5f
    rra                                           ; $4cc3: $1f
    ld [$0014], sp                                ; $4cc4: $08 $14 $00
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    rst $18                                       ; $4cc9: $df
    ld e, a                                       ; $4cca: $5f
    rst $38                                       ; $4ccb: $ff
    ld [bc], a                                    ; $4ccc: $02
    cp l                                          ; $4ccd: $bd
    ld bc, $0000                                  ; $4cce: $01 $00 $00
    rst $18                                       ; $4cd1: $df
    ld e, a                                       ; $4cd2: $5f
    rst $38                                       ; $4cd3: $ff
    ld [bc], a                                    ; $4cd4: $02
    cp a                                          ; $4cd5: $bf
    ld a, [hl+]                                   ; $4cd6: $2a
    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    rst $18                                       ; $4cd9: $df
    ld e, a                                       ; $4cda: $5f
    ld c, c                                       ; $4cdb: $49
    rrca                                          ; $4cdc: $0f
    ld [bc], a                                    ; $4cdd: $02
    ld [bc], a                                    ; $4cde: $02
    ldh [rP1], a                                  ; $4cdf: $e0 $00
    db $fd                                        ; $4ce1: $fd
    nop                                           ; $4ce2: $00
    rst $38                                       ; $4ce3: $ff
    db $f4                                        ; $4ce4: $f4
    ld bc, $0201                                  ; $4ce5: $01 $01 $02
    inc bc                                        ; $4ce8: $03
    dec b                                         ; $4ce9: $05
    ld b, $fb                                     ; $4cea: $06 $fb
    rlca                                          ; $4cec: $07
    inc b                                         ; $4ced: $04
    ldh [$e3], a                                  ; $4cee: $e0 $e3
    ld [hl], b                                    ; $4cf0: $70
    ld [hl], b                                    ; $4cf1: $70
    or b                                          ; $4cf2: $b0
    ret nc                                        ; $4cf3: $d0

    add sp, -$21                                  ; $4cf4: $e8 $df
    jr @-$16                                      ; $4cf6: $18 $e8

    jr @-$77                                      ; $4cf8: $18 $87

    ld a, a                                       ; $4cfa: $7f
    ret nc                                        ; $4cfb: $d0

    db $eb                                        ; $4cfc: $eb
    add b                                         ; $4cfd: $80
    add b                                         ; $4cfe: $80
    sbc $c0                                       ; $4cff: $de $c0
    jp hl                                         ; $4d01: $e9


    rlca                                          ; $4d02: $07
    rlca                                          ; $4d03: $07
    dec de                                        ; $4d04: $1b
    inc e                                         ; $4d05: $1c
    or b                                          ; $4d06: $b0
    jp hl                                         ; $4d07: $e9


    db $fc                                        ; $4d08: $fc
    db $fc                                        ; $4d09: $fc
    db $db                                        ; $4d0a: $db
    ei                                            ; $4d0b: $fb
    rlca                                          ; $4d0c: $07
    or b                                          ; $4d0d: $b0
    db $eb                                        ; $4d0e: $eb
    cp e                                          ; $4d0f: $bb
    cp h                                          ; $4d10: $bc
    jp c, Jump_000_3be1                           ; $4d11: $da $e1 $3b

    inc a                                         ; $4d14: $3c
    rst $38                                       ; $4d15: $ff
    rst $18                                       ; $4d16: $df
    ldh [$7f], a                                  ; $4d17: $e0 $7f
    add b                                         ; $4d19: $80
    rst $38                                       ; $4d1a: $ff
    nop                                           ; $4d1b: $00
    db $fc                                        ; $4d1c: $fc
    inc bc                                        ; $4d1d: $03
    rst $38                                       ; $4d1e: $ff
    rst $38                                       ; $4d1f: $ff
    ld bc, $1f1f                                  ; $4d20: $01 $1f $1f
    rst $38                                       ; $4d23: $ff
    ldh a, [rIE]                                  ; $4d24: $f0 $ff
    inc c                                         ; $4d26: $0c
    rst $28                                       ; $4d27: $ef
    rst $38                                       ; $4d28: $ff
    inc bc                                        ; $4d29: $03
    rst $38                                       ; $4d2a: $ff
    nop                                           ; $4d2b: $00
    cp $e0                                        ; $4d2c: $fe $e0
    rrca                                          ; $4d2e: $0f
    ldh a, [rIE]                                  ; $4d2f: $f0 $ff
    rst $38                                       ; $4d31: $ff
    rst $08                                       ; $4d32: $cf
    ret z                                         ; $4d33: $c8

    rst $38                                       ; $4d34: $ff
    jr c, @+$01                                   ; $4d35: $38 $ff

    rlca                                          ; $4d37: $07
    cp $02                                        ; $4d38: $fe $02
    rst $38                                       ; $4d3a: $ff
    rst $38                                       ; $4d3b: $ff
    adc l                                         ; $4d3c: $8d
    di                                            ; $4d3d: $f3
    ld a, $c1                                     ; $4d3e: $3e $c1
    rst $38                                       ; $4d40: $ff
    ld b, $ff                                     ; $4d41: $06 $ff
    rst $38                                       ; $4d43: $ff
    rst $38                                       ; $4d44: $ff
    nop                                           ; $4d45: $00
    cp $01                                        ; $4d46: $fe $01
    ld sp, hl                                     ; $4d48: $f9
    rlca                                          ; $4d49: $07
    jp $ffbf                                      ; $4d4a: $c3 $bf $ff


    ld b, b                                       ; $4d4d: $40
    ld a, a                                       ; $4d4e: $7f
    jp Jump_07b_4ffc                              ; $4d4f: $c3 $fc $4f


    ldh a, [$c0]                                  ; $4d52: $f0 $c0
    rst $38                                       ; $4d54: $ff
    ld sp, hl                                     ; $4d55: $f9
    add b                                         ; $4d56: $80
    rst $38                                       ; $4d57: $ff
    ldh [$86], a                                  ; $4d58: $e0 $86
    db $e3                                        ; $4d5a: $e3
    ld b, b                                       ; $4d5b: $40
    ret nz                                        ; $4d5c: $c0

    and b                                         ; $4d5d: $a0
    ld h, b                                       ; $4d5e: $60
    ld h, b                                       ; $4d5f: $60
    push af                                       ; $4d60: $f5
    ldh [rLCDC], a                                ; $4d61: $e0 $40
    db $e3                                        ; $4d63: $e3
    ld hl, sp-$3e                                 ; $4d64: $f8 $c2
    ldh [$bf], a                                  ; $4d66: $e0 $bf
    nop                                           ; $4d68: $00
    ld d, a                                       ; $4d69: $57
    nop                                           ; $4d6a: $00
    db $fd                                        ; $4d6b: $fd
    xor d                                         ; $4d6c: $aa
    ld h, h                                       ; $4d6d: $64
    jp hl                                         ; $4d6e: $e9


    nop                                           ; $4d6f: $00
    ret nz                                        ; $4d70: $c0

    nop                                           ; $4d71: $00
    and b                                         ; $4d72: $a0
    nop                                           ; $4d73: $00
    cpl                                           ; $4d74: $2f
    rst $38                                       ; $4d75: $ff
    jr nc, jr_07b_4d88                            ; $4d76: $30 $10

    rra                                           ; $4d78: $1f
    db $10                                        ; $4d79: $10
    rra                                           ; $4d7a: $1f
    dec bc                                        ; $4d7b: $0b
    inc c                                         ; $4d7c: $0c
    rla                                           ; $4d7d: $17
    rst $38                                       ; $4d7e: $ff
    jr jr_07b_4db0                                ; $4d7f: $18 $2f

    jr nc, jr_07b_4dc2                            ; $4d81: $30 $3f

    jr nz, @+$42                                  ; $4d83: $20 $40

    ld a, a                                       ; $4d85: $7f
    rst $38                                       ; $4d86: $ff
    rst $30                                       ; $4d87: $f7

jr_07b_4d88:
    nop                                           ; $4d88: $00
    ccf                                           ; $4d89: $3f
    ret nz                                        ; $4d8a: $c0

    sub h                                         ; $4d8b: $94
    ld [c], a                                     ; $4d8c: $e2
    nop                                           ; $4d8d: $00
    ld hl, sp+$07                                 ; $4d8e: $f8 $07
    nop                                           ; $4d90: $00
    rst $38                                       ; $4d91: $ff
    rst $38                                       ; $4d92: $ff
    inc bc                                        ; $4d93: $03
    db $fc                                        ; $4d94: $fc
    ld h, a                                       ; $4d95: $67
    db $e4                                        ; $4d96: $e4
    db $d3                                        ; $4d97: $d3
    ld [hl-], a                                   ; $4d98: $32
    ld sp, hl                                     ; $4d99: $f9
    rst $38                                       ; $4d9a: $ff
    add hl, bc                                    ; $4d9b: $09

jr_07b_4d9c:
    push af                                       ; $4d9c: $f5
    dec c                                         ; $4d9d: $0d
    add l                                         ; $4d9e: $85
    ld a, l                                       ; $4d9f: $7d
    dec b                                         ; $4da0: $05
    db $fd                                        ; $4da1: $fd
    push hl                                       ; $4da2: $e5
    rst $38                                       ; $4da3: $ff

jr_07b_4da4:
    dec e                                         ; $4da4: $1d
    jp z, $fe3b                                   ; $4da5: $ca $3b $fe

    ld b, $f8                                     ; $4da8: $06 $f8
    jr jr_07b_4d9c                                ; $4daa: $18 $f0

    rst $38                                       ; $4dac: $ff
    db $10                                        ; $4dad: $10
    ldh a, [rNR10]                                ; $4dae: $f0 $10

jr_07b_4db0:
    pop af                                        ; $4db0: $f1
    db $10                                        ; $4db1: $10
    pop af                                        ; $4db2: $f1
    ld de, $77f8                                  ; $4db3: $11 $f8 $77
    ld [$08f8], sp                                ; $4db6: $08 $f8 $08
    ldh [$c2], a                                  ; $4db9: $e0 $c2
    ld h, b                                       ; $4dbb: $60
    nop                                           ; $4dbc: $00
    ret nz                                        ; $4dbd: $c0

    ld d, $e1                                     ; $4dbe: $16 $e1
    cp a                                          ; $4dc0: $bf
    rrca                                          ; $4dc1: $0f

jr_07b_4dc2:
    rlca                                          ; $4dc2: $07
    inc e                                         ; $4dc3: $1c
    ld [$0101], sp                                ; $4dc4: $08 $01 $01
    sbc $c7                                       ; $4dc7: $de $c7
    inc bc                                        ; $4dc9: $03
    rst $38                                       ; $4dca: $ff
    ld bc, $8183                                  ; $4dcb: $01 $83 $81
    db $e3                                        ; $4dce: $e3
    ld a, a                                       ; $4dcf: $7f
    db $fc                                        ; $4dd0: $fc
    inc a                                         ; $4dd1: $3c
    ldh [$fd], a                                  ; $4dd2: $e0 $fd
    jr nz, jr_07b_4da4                            ; $4dd4: $20 $ce

    ldh [$d0], a                                  ; $4dd6: $e0 $d0
    ldh a, [$30]                                  ; $4dd8: $f0 $30
    ldh a, [$d0]                                  ; $4dda: $f0 $d0
    ld hl, sp+$7d                                 ; $4ddc: $f8 $7d
    ret c                                         ; $4dde: $d8

    or b                                          ; $4ddf: $b0
    res 5, d                                      ; $4de0: $cb $aa
    nop                                           ; $4de2: $00
    ld d, l                                       ; $4de3: $55
    nop                                           ; $4de4: $00
    ld a, [$e292]                                 ; $4de5: $fa $92 $e2
    rst $18                                       ; $4de8: $df
    rst $38                                       ; $4de9: $ff
    nop                                           ; $4dea: $00
    ld [$fd00], a                                 ; $4deb: $ea $00 $fd
    inc e                                         ; $4dee: $1c
    ldh [$58], a                                  ; $4def: $e0 $58
    nop                                           ; $4df1: $00
    ld a, l                                       ; $4df2: $7d
    xor h                                         ; $4df3: $ac
    ld e, b                                       ; $4df4: $58
    ldh [$ea], a                                  ; $4df5: $e0 $ea
    nop                                           ; $4df7: $00
    push af                                       ; $4df8: $f5
    nop                                           ; $4df9: $00
    cp d                                          ; $4dfa: $ba
    db $e4                                        ; $4dfb: $e4
    ldh [$fe], a                                  ; $4dfc: $e0 $fe
    ld d, b                                       ; $4dfe: $50
    db $e3                                        ; $4dff: $e3
    add b                                         ; $4e00: $80
    nop                                           ; $4e01: $00
    ldh a, [rP1]                                  ; $4e02: $f0 $00
    ld e, h                                       ; $4e04: $5c
    nop                                           ; $4e05: $00
    xor e                                         ; $4e06: $ab
    db $fc                                        ; $4e07: $fc
    ldh a, [$e6]                                  ; $4e08: $f0 $e6
    ld a, $e9                                     ; $4e0a: $3e $e9
    ld h, b                                       ; $4e0c: $60
    ld a, a                                       ; $4e0d: $7f
    inc e                                         ; $4e0e: $1c
    rra                                           ; $4e0f: $1f
    rlca                                          ; $4e10: $07
    rlca                                          ; $4e11: $07
    ld sp, hl                                     ; $4e12: $f9
    ld bc, $e0ff                                  ; $4e13: $01 $ff $e0
    ld d, [hl]                                    ; $4e16: $56
    jp $f00f                                      ; $4e17: $c3 $0f $f0


    ld e, $e1                                     ; $4e1a: $1e $e1
    jr c, @+$01                                   ; $4e1c: $38 $ff

    rst $00                                       ; $4e1e: $c7
    ld sp, $02cf                                  ; $4e1f: $31 $cf $02
    cp $8c                                        ; $4e22: $fe $8c
    db $fc                                        ; $4e24: $fc
    or b                                          ; $4e25: $b0
    rst $38                                       ; $4e26: $ff
    ldh a, [rLCDC]                                ; $4e27: $f0 $40
    ld b, b                                       ; $4e29: $40
    inc d                                         ; $4e2a: $14
    rst $30                                       ; $4e2b: $f7
    jr c, @+$01                                   ; $4e2c: $38 $ff

    ld b, b                                       ; $4e2e: $40
    rst $38                                       ; $4e2f: $ff
    rst $38                                       ; $4e30: $ff
    ret nz                                        ; $4e31: $c0

    rst $38                                       ; $4e32: $ff
    ld h, b                                       ; $4e33: $60
    ld e, a                                       ; $4e34: $5f
    ld h, b                                       ; $4e35: $60
    ld e, a                                       ; $4e36: $5f
    ld b, b                                       ; $4e37: $40
    rst $38                                       ; $4e38: $ff
    ld a, a                                       ; $4e39: $7f
    jr nz, jr_07b_4e7b                            ; $4e3a: $20 $3f

    db $fc                                        ; $4e3c: $fc
    inc b                                         ; $4e3d: $04
    ld a, h                                       ; $4e3e: $7c
    add h                                         ; $4e3f: $84
    cp h                                          ; $4e40: $bc
    rst $38                                       ; $4e41: $ff
    ld b, h                                       ; $4e42: $44
    ld a, h                                       ; $4e43: $7c
    add h                                         ; $4e44: $84
    inc a                                         ; $4e45: $3c
    call nz, $e41c                                ; $4e46: $c4 $1c $e4
    inc e                                         ; $4e49: $1c
    ld a, a                                       ; $4e4a: $7f
    db $e4                                        ; $4e4b: $e4
    inc c                                         ; $4e4c: $0c

jr_07b_4e4d:
    db $f4                                        ; $4e4d: $f4
    inc sp                                        ; $4e4e: $33
    inc de                                        ; $4e4f: $13
    scf                                           ; $4e50: $37
    daa                                           ; $4e51: $27
    rst $38                                       ; $4e52: $ff
    push hl                                       ; $4e53: $e5
    rst $38                                       ; $4e54: $ff
    ld [hl], e                                    ; $4e55: $73
    ld h, e                                       ; $4e56: $63
    ccf                                           ; $4e57: $3f
    inc de                                        ; $4e58: $13
    pop bc                                        ; $4e59: $c1
    pop bc                                        ; $4e5a: $c1
    pop hl                                        ; $4e5b: $e1
    pop bc                                        ; $4e5c: $c1
    rst $38                                       ; $4e5d: $ff
    ldh [$e0], a                                  ; $4e5e: $e0 $e0
    ld hl, $2221                                  ; $4e60: $21 $21 $22
    ld [hl+], a                                   ; $4e63: $22
    ldh [$e0], a                                  ; $4e64: $e0 $e0
    rst $38                                       ; $4e66: $ff
    ret nz                                        ; $4e67: $c0

    ret nz                                        ; $4e68: $c0

    add b                                         ; $4e69: $80
    nop                                           ; $4e6a: $00
    db $fc                                        ; $4e6b: $fc
    db $ec                                        ; $4e6c: $ec

jr_07b_4e6d:
    db $fc                                        ; $4e6d: $fc
    inc h                                         ; $4e6e: $24
    cp a                                          ; $4e6f: $bf
    cp $b2                                        ; $4e70: $fe $b2
    cp $e2                                        ; $4e72: $fe $e2
    rst $38                                       ; $4e74: $ff
    ld b, c                                       ; $4e75: $41
    cp $e0                                        ; $4e76: $fe $e0
    nop                                           ; $4e78: $00
    ld [hl], e                                    ; $4e79: $73
    rst $38                                       ; $4e7a: $ff

jr_07b_4e7b:
    db $10                                        ; $4e7b: $10
    ldh a, [$a5]                                  ; $4e7c: $f0 $a5
    ld h, h                                       ; $4e7e: $64
    pop hl                                        ; $4e7f: $e1
    rst $18                                       ; $4e80: $df
    add b                                         ; $4e81: $80
    rst $38                                       ; $4e82: $ff
    jr nz, jr_07b_4e4d                            ; $4e83: $20 $c8

    and a                                         ; $4e85: $a7
    xor b                                         ; $4e86: $a8
    nop                                           ; $4e87: $00
    push de                                       ; $4e88: $d5
    inc [hl]                                      ; $4e89: $34
    ldh [$d0], a                                  ; $4e8a: $e0 $d0
    xor c                                         ; $4e8c: $a9
    ld b, b                                       ; $4e8d: $40
    sub b                                         ; $4e8e: $90
    ret z                                         ; $4e8f: $c8

    ld bc, $00bf                                  ; $4e90: $01 $bf $00
    ld [bc], a                                    ; $4e93: $02
    nop                                           ; $4e94: $00
    dec b                                         ; $4e95: $05
    nop                                           ; $4e96: $00
    dec bc                                        ; $4e97: $0b
    db $fc                                        ; $4e98: $fc
    ldh [$0a], a                                  ; $4e99: $e0 $0a
    ld l, $78                                     ; $4e9b: $2e $78
    ret nz                                        ; $4e9d: $c0

    xor a                                         ; $4e9e: $af
    nop                                           ; $4e9f: $00
    ld a, a                                       ; $4ea0: $7f
    ld a, [bc]                                    ; $4ea1: $0a
    db $e4                                        ; $4ea2: $e4
    ld d, l                                       ; $4ea3: $55
    ld [bc], a                                    ; $4ea4: $02
    db $e4                                        ; $4ea5: $e4
    ld a, [$5ee5]                                 ; $4ea6: $fa $e5 $5e
    ld h, b                                       ; $4ea9: $60
    ret                                           ; $4eaa: $c9


    jr z, jr_07b_4e6d                             ; $4eab: $28 $c0

    db $10                                        ; $4ead: $10
    db $ec                                        ; $4eae: $ec
    ld [c], a                                     ; $4eaf: $e2
    db $eb                                        ; $4eb0: $eb
    rst $38                                       ; $4eb1: $ff
    sbc h                                         ; $4eb2: $9c
    ldh [rHDMA5], a                               ; $4eb3: $e0 $55
    cp $ce                                        ; $4eb5: $fe $ce
    ld [$8850], a                                 ; $4eb7: $ea $50 $88
    ldh [$d4], a                                  ; $4eba: $e0 $d4
    cp h                                          ; $4ebc: $bc
    ret nz                                        ; $4ebd: $c0

    db $fd                                        ; $4ebe: $fd
    add sp, -$1c                                  ; $4ebf: $e8 $e4
    xor $84                                       ; $4ec1: $ee $84
    rst $20                                       ; $4ec3: $e7
    and b                                         ; $4ec4: $a0
    nop                                           ; $4ec5: $00
    ld d, h                                       ; $4ec6: $54
    xor h                                         ; $4ec7: $ac
    ret nz                                        ; $4ec8: $c0

    jr nz, jr_07b_4f0a                            ; $4ec9: $20 $3f

    jr nz, jr_07b_4f4c                            ; $4ecb: $20 $7f

    ccf                                           ; $4ecd: $3f
    inc de                                        ; $4ece: $13
    rra                                           ; $4ecf: $1f
    rla                                           ; $4ed0: $17
    inc e                                         ; $4ed1: $1c
    rrca                                          ; $4ed2: $0f
    ld [$c019], sp                                ; $4ed3: $08 $19 $c0
    rst $38                                       ; $4ed6: $ff
    ld de, $123f                                  ; $4ed7: $11 $3f $12
    ld [bc], a                                    ; $4eda: $02
    cp $02                                        ; $4edb: $fe $02
    cp $c2                                        ; $4edd: $fe $c2
    rst $38                                       ; $4edf: $ff
    cp $73                                        ; $4ee0: $fe $73
    ld a, $1f                                     ; $4ee2: $3e $1f
    ld c, $0f                                     ; $4ee4: $0e $0f
    ld [bc], a                                    ; $4ee6: $02
    rst $00                                       ; $4ee7: $c7
    cpl                                           ; $4ee8: $2f
    ret nz                                        ; $4ee9: $c0

    di                                            ; $4eea: $f3
    jr nc, jr_07b_4eed                            ; $4eeb: $30 $00

jr_07b_4eed:
    ld [hl], b                                    ; $4eed: $70
    ldh [rNR14], a                                ; $4eee: $e0 $14
    ldh a, [$a4]                                  ; $4ef0: $f0 $a4
    xor $a1                                       ; $4ef2: $ee $a1
    cp $56                                        ; $4ef4: $fe $56
    pop hl                                        ; $4ef6: $e1

jr_07b_4ef7:
    rlca                                          ; $4ef7: $07
    rlca                                          ; $4ef8: $07
    rra                                           ; $4ef9: $1f
    rrca                                          ; $4efa: $0f
    ld [$040f], sp                                ; $4efb: $08 $0f $04
    rst $38                                       ; $4efe: $ff
    rlca                                          ; $4eff: $07
    ld [bc], a                                    ; $4f00: $02
    inc bc                                        ; $4f01: $03
    ld bc, $7001                                  ; $4f02: $01 $01 $70
    jr nc, jr_07b_4ef7                            ; $4f05: $30 $f0

    ei                                            ; $4f07: $fb
    ldh [$e1], a                                  ; $4f08: $e0 $e1

jr_07b_4f0a:
    cp $e1                                        ; $4f0a: $fe $e1
    pop hl                                        ; $4f0c: $e1
    ld hl, $23e1                                  ; $4f0d: $21 $e1 $23
    pop hl                                        ; $4f10: $e1
    ld b, a                                       ; $4f11: $47
    jp nz, $ffc2                                  ; $4f12: $c2 $c2 $ff

    inc c                                         ; $4f15: $0c
    ldh [$fc], a                                  ; $4f16: $e0 $fc
    ld [c], a                                     ; $4f18: $e2
    ld c, d                                       ; $4f19: $4a
    call nz, $8040                                ; $4f1a: $c4 $40 $80
    ld a, [c]                                     ; $4f1d: $f2
    xor d                                         ; $4f1e: $aa
    inc d                                         ; $4f1f: $14
    pop hl                                        ; $4f20: $e1
    xor e                                         ; $4f21: $ab
    jr @-$1c                                      ; $4f22: $18 $e2

    ld bc, $e210                                  ; $4f24: $01 $10 $e2
    cp a                                          ; $4f27: $bf
    db $10                                        ; $4f28: $10
    add sp, -$56                                  ; $4f29: $e8 $aa
    xor [hl]                                      ; $4f2b: $ae
    inc h                                         ; $4f2c: $24
    ret nz                                        ; $4f2d: $c0

    db $eb                                        ; $4f2e: $eb
    nop                                           ; $4f2f: $00
    rst $10                                       ; $4f30: $d7
    db $fc                                        ; $4f31: $fc
    ret nz                                        ; $4f32: $c0

    rst $18                                       ; $4f33: $df
    inc l                                         ; $4f34: $2c
    and b                                         ; $4f35: $a0
    ld e, a                                       ; $4f36: $5f
    db $fc                                        ; $4f37: $fc
    db $f4                                        ; $4f38: $f4
    ret z                                         ; $4f39: $c8

    or b                                          ; $4f3a: $b0
    ld [c], a                                     ; $4f3b: $e2
    cp [hl]                                       ; $4f3c: $be
    ld sp, $68ce                                  ; $4f3d: $31 $ce $68
    sub a                                         ; $4f40: $97
    ld d, h                                       ; $4f41: $54
    rst $38                                       ; $4f42: $ff
    xor e                                         ; $4f43: $ab
    and b                                         ; $4f44: $a0
    ld e, a                                       ; $4f45: $5f
    ld b, b                                       ; $4f46: $40
    cp a                                          ; $4f47: $bf
    dec b                                         ; $4f48: $05
    ld a, [$fd0e]                                 ; $4f49: $fa $0e $fd

jr_07b_4f4c:
    pop af                                        ; $4f4c: $f1
    add b                                         ; $4f4d: $80
    add h                                         ; $4f4e: $84
    ret nz                                        ; $4f4f: $c0

    ld b, b                                       ; $4f50: $40
    add b                                         ; $4f51: $80
    add b                                         ; $4f52: $80
    ld h, b                                       ; $4f53: $60
    nop                                           ; $4f54: $00
    xor a                                         ; $4f55: $af
    ldh a, [$80]                                  ; $4f56: $f0 $80
    ld [hl], b                                    ; $4f58: $70
    push af                                       ; $4f59: $f5
    nop                                           ; $4f5a: $00

jr_07b_4f5b:
    db $ec                                        ; $4f5b: $ec
    ld b, c                                       ; $4f5c: $41
    inc l                                         ; $4f5d: $2c
    and b                                         ; $4f5e: $a0
    ld d, a                                       ; $4f5f: $57
    ld a, [hl]                                    ; $4f60: $7e
    cp h                                          ; $4f61: $bc
    ret z                                         ; $4f62: $c8

    ld e, a                                       ; $4f63: $5f
    db $10                                        ; $4f64: $10
    rst $28                                       ; $4f65: $ef
    ld [$04f7], sp                                ; $4f66: $08 $f7 $04
    ret nc                                        ; $4f69: $d0

    add h                                         ; $4f6a: $84
    cp $cc                                        ; $4f6b: $fe $cc
    add b                                         ; $4f6d: $80
    ld a, c                                       ; $4f6e: $79
    ld c, b                                       ; $4f6f: $48
    inc bc                                        ; $4f70: $03
    nop                                           ; $4f71: $00
    rrca                                          ; $4f72: $0f
    ld bc, $2fff                                  ; $4f73: $01 $ff $2f
    rrca                                          ; $4f76: $0f
    ld hl, sp-$01                                 ; $4f77: $f8 $ff
    rlca                                          ; $4f79: $07
    sub h                                         ; $4f7a: $94
    add d                                         ; $4f7b: $82
    ldh [$f4], a                                  ; $4f7c: $e0 $f4
    add b                                         ; $4f7e: $80
    cp [hl]                                       ; $4f7f: $be
    ret nz                                        ; $4f80: $c0

    rst $38                                       ; $4f81: $ff
    add b                                         ; $4f82: $80
    ld a, a                                       ; $4f83: $7f
    ldh [$3f], a                                  ; $4f84: $e0 $3f
    ldh a, [rIE]                                  ; $4f86: $f0 $ff
    db $ec                                        ; $4f88: $ec
    ld h, a                                       ; $4f89: $67
    ld sp, hl                                     ; $4f8a: $f9
    ld b, e                                       ; $4f8b: $43
    and c                                         ; $4f8c: $a1
    db $e4                                        ; $4f8d: $e4
    and d                                         ; $4f8e: $a2
    add c                                         ; $4f8f: $81
    ld bc, $3fff                                  ; $4f90: $01 $ff $3f
    rst $38                                       ; $4f93: $ff
    inc bc                                        ; $4f94: $03
    rst $38                                       ; $4f95: $ff
    ld b, $02                                     ; $4f96: $06 $02
    inc b                                         ; $4f98: $04
    inc b                                         ; $4f99: $04
    inc c                                         ; $4f9a: $0c
    inc b                                         ; $4f9b: $04
    jr jr_07b_4fa6                                ; $4f9c: $18 $08

    dec sp                                        ; $4f9e: $3b
    ldh a, [$30]                                  ; $4f9f: $f0 $30
    ld [bc], a                                    ; $4fa1: $02
    ret nz                                        ; $4fa2: $c0

    add b                                         ; $4fa3: $80
    ld hl, sp+$78                                 ; $4fa4: $f8 $78

jr_07b_4fa6:
    ld de, $fe86                                  ; $4fa6: $11 $86 $fe
    db $e4                                        ; $4fa9: $e4
    cp $3a                                        ; $4faa: $fe $3a
    add b                                         ; $4fac: $80
    rrca                                          ; $4fad: $0f
    rrca                                          ; $4fae: $0f
    ld [$fff8], sp                                ; $4faf: $08 $f8 $ff
    rla                                           ; $4fb2: $17
    rst $28                                       ; $4fb3: $ef
    rst $18                                       ; $4fb4: $df
    inc e                                         ; $4fb5: $1c
    ldh [$2c], a                                  ; $4fb6: $e0 $2c
    ret nc                                        ; $4fb8: $d0

    jr jr_07b_4f5b                                ; $4fb9: $18 $a0

    add b                                         ; $4fbb: $80
    adc h                                         ; $4fbc: $8c
    adc $ff                                       ; $4fbd: $ce $ff
    ld c, e                                       ; $4fbf: $4b
    rst $08                                       ; $4fc0: $cf
    ret z                                         ; $4fc1: $c8

    ld e, h                                       ; $4fc2: $5c
    db $f4                                        ; $4fc3: $f4
    ld hl, sp+$1f                                 ; $4fc4: $f8 $1f
    ccf                                           ; $4fc6: $3f
    rst $30                                       ; $4fc7: $f7
    ld e, l                                       ; $4fc8: $5d
    inc bc                                        ; $4fc9: $03
    cpl                                           ; $4fca: $2f
    ld a, [bc]                                    ; $4fcb: $0a
    add e                                         ; $4fcc: $83
    ldh [$e0], a                                  ; $4fcd: $e0 $e0
    ld h, b                                       ; $4fcf: $60
    xor a                                         ; $4fd0: $af
    ld a, a                                       ; $4fd1: $7f
    ld l, a                                       ; $4fd2: $6f
    ld e, a                                       ; $4fd3: $5f
    ret nc                                        ; $4fd4: $d0

    or $fd                                        ; $4fd5: $f6 $fd
    or [hl]                                       ; $4fd7: $b6
    ld l, l                                       ; $4fd8: $6d
    push af                                       ; $4fd9: $f5
    ld h, a                                       ; $4fda: $67
    rst $30                                       ; $4fdb: $f7
    ret nz                                        ; $4fdc: $c0

    ret nz                                        ; $4fdd: $c0

    ld b, b                                       ; $4fde: $40
    cp $e0                                        ; $4fdf: $fe $e0
    ld [bc], a                                    ; $4fe1: $02
    ld [bc], a                                    ; $4fe2: $02
    dec b                                         ; $4fe3: $05
    rlca                                          ; $4fe4: $07
    rst $38                                       ; $4fe5: $ff
    dec bc                                        ; $4fe6: $0b
    ld c, $07                                     ; $4fe7: $0e $07
    rlca                                          ; $4fe9: $07
    rlca                                          ; $4fea: $07
    dec bc                                        ; $4feb: $0b
    dec c                                         ; $4fec: $0d
    rlca                                          ; $4fed: $07
    rst $28                                       ; $4fee: $ef
    ld a, [de]                                    ; $4fef: $1a
    rrca                                          ; $4ff0: $0f
    rra                                           ; $4ff1: $1f

jr_07b_4ff2:
    scf                                           ; $4ff2: $37
    or c                                          ; $4ff3: $b1
    ld h, l                                       ; $4ff4: $65
    inc bc                                        ; $4ff5: $03
    inc b                                         ; $4ff6: $04
    adc [hl]                                      ; $4ff7: $8e
    rst $38                                       ; $4ff8: $ff
    pop de                                        ; $4ff9: $d1
    db $db                                        ; $4ffa: $db
    ld h, h                                       ; $4ffb: $64

Jump_07b_4ffc:
    ld [hl], l                                    ; $4ffc: $75
    adc d                                         ; $4ffd: $8a
    inc d                                         ; $4ffe: $14
    db $eb                                        ; $4fff: $eb
    ld [$f7e9], sp                                ; $5000: $08 $e9 $f7

jr_07b_5003:
    ld h, c                                       ; $5003: $61
    pop hl                                        ; $5004: $e1
    ld de, $0281                                  ; $5005: $11 $81 $02
    cp $e0                                        ; $5008: $fe $e0
    nop                                           ; $500a: $00
    ld hl, sp+$02                                 ; $500b: $f8 $02
    db $fd                                        ; $500d: $fd
    db $fc                                        ; $500e: $fc
    dec c                                         ; $500f: $0d
    pop bc                                        ; $5010: $c1
    jr nz, jr_07b_4ff2                            ; $5011: $20 $df

    ld b, b                                       ; $5013: $40
    cp a                                          ; $5014: $bf
    and b                                         ; $5015: $a0
    ld e, a                                       ; $5016: $5f
    rst $38                                       ; $5017: $ff
    ld d, b                                       ; $5018: $50
    xor a                                         ; $5019: $af
    nop                                           ; $501a: $00
    nop                                           ; $501b: $00
    jr c, jr_07b_5022                             ; $501c: $38 $04

    call nc, $ff2b                                ; $501e: $d4 $2b $ff
    xor b                                         ; $5021: $a8

jr_07b_5022:
    ld d, a                                       ; $5022: $57
    ld d, h                                       ; $5023: $54
    xor e                                         ; $5024: $ab
    ldh [$1f], a                                  ; $5025: $e0 $1f
    ld d, b                                       ; $5027: $50
    xor a                                         ; $5028: $af
    ld [hl], e                                    ; $5029: $73
    and b                                         ; $502a: $a0
    ld e, a                                       ; $502b: $5f
    inc sp                                        ; $502c: $33
    add [hl]                                      ; $502d: $86
    ld sp, $e081                                  ; $502e: $31 $81 $e0
    jr nz, jr_07b_5003                            ; $5031: $20 $d0

    adc b                                         ; $5033: $88
    add d                                         ; $5034: $82
    ld a, a                                       ; $5035: $7f
    ld [bc], a                                    ; $5036: $02
    ld b, $04                                     ; $5037: $06 $04
    ld b, $04                                     ; $5039: $06 $04
    inc c                                         ; $503b: $0c
    ld [$e1fe], sp                                ; $503c: $08 $fe $e1
    ei                                            ; $503f: $fb
    pop hl                                        ; $5040: $e1
    ret nz                                        ; $5041: $c0

    add d                                         ; $5042: $82
    add b                                         ; $5043: $80
    ret nc                                        ; $5044: $d0

    ld a, b                                       ; $5045: $78
    jr c, @+$1e                                   ; $5046: $38 $1c

    inc c                                         ; $5048: $0c
    ei                                            ; $5049: $fb
    rlca                                          ; $504a: $07
    inc bc                                        ; $504b: $03
    ld h, l                                       ; $504c: $65
    add c                                         ; $504d: $81
    pop bc                                        ; $504e: $c1

jr_07b_504f:
    rst $38                                       ; $504f: $ff
    ld [hl-], a                                   ; $5050: $32
    ld a, a                                       ; $5051: $7f
    ld c, $ff                                     ; $5052: $0e $ff
    ld e, $04                                     ; $5054: $1e $04
    ld b, $06                                     ; $5056: $06 $06
    ld c, $0f                                     ; $5058: $0e $0f
    sbc c                                         ; $505a: $99
    rst $18                                       ; $505b: $df
    rst $38                                       ; $505c: $ff
    ldh a, [$3f]                                  ; $505d: $f0 $3f
    halt                                          ; $505f: $76
    ld a, a                                       ; $5060: $7f
    rst $00                                       ; $5061: $c7
    inc hl                                        ; $5062: $23
    jr nz, jr_07b_5085                            ; $5063: $20 $20

    rst $38                                       ; $5065: $ff
    jr nz, jr_07b_5098                            ; $5066: $20 $30

    jr nz, jr_07b_509a                            ; $5068: $20 $30

    ld h, b                                       ; $506a: $60
    ld a, b                                       ; $506b: $78
    ret nc                                        ; $506c: $d0

    ld hl, sp-$01                                 ; $506d: $f8 $ff
    ret nc                                        ; $506f: $d0

    db $fc                                        ; $5070: $fc
    ld [$0301], sp                                ; $5071: $08 $01 $03
    jp nz, Jump_000_32c3                          ; $5074: $c2 $c3 $32

    rst $38                                       ; $5077: $ff
    inc sp                                        ; $5078: $33
    ld a, [de]                                    ; $5079: $1a
    dec bc                                        ; $507a: $0b
    ld c, $1f                                     ; $507b: $0e $1f
    ccf                                           ; $507d: $3f
    dec de                                        ; $507e: $1b
    inc d                                         ; $507f: $14
    rst $38                                       ; $5080: $ff
    scf                                           ; $5081: $37
    inc h                                         ; $5082: $24
    daa                                           ; $5083: $27
    ret z                                         ; $5084: $c8

jr_07b_5085:
    ldh a, [rNR10]                                ; $5085: $f0 $10
    rst $28                                       ; $5087: $ef
    jr z, @+$01                                   ; $5088: $28 $ff

    ret nc                                        ; $508a: $d0

    ld e, b                                       ; $508b: $58
    and b                                         ; $508c: $a0
    jr nc, jr_07b_504f                            ; $508d: $30 $c0

    sub b                                         ; $508f: $90
    ldh [rLCDC], a                                ; $5090: $e0 $40
    rst $38                                       ; $5092: $ff
    cp a                                          ; $5093: $bf
    ld sp, $5fc0                                  ; $5094: $31 $c0 $5f
    nop                                           ; $5097: $00

jr_07b_5098:
    ccf                                           ; $5098: $3f
    add b                                         ; $5099: $80

jr_07b_509a:
    inc bc                                        ; $509a: $03
    rst $28                                       ; $509b: $ef
    ld a, h                                       ; $509c: $7c
    cp h                                          ; $509d: $bc
    inc bc                                        ; $509e: $03
    ld a, a                                       ; $509f: $7f
    or b                                          ; $50a0: $b0
    ld h, b                                       ; $50a1: $60
    ld a, [hl]                                    ; $50a2: $7e
    ld bc, $ff07                                  ; $50a3: $01 $07 $ff
    ld hl, sp-$4a                                 ; $50a6: $f8 $b6
    ld l, l                                       ; $50a8: $6d
    and h                                         ; $50a9: $a4
    ld a, a                                       ; $50aa: $7f
    db $ec                                        ; $50ab: $ec
    ld e, e                                       ; $50ac: $5b
    ld l, h                                       ; $50ad: $6c
    rst $38                                       ; $50ae: $ff
    db $db                                        ; $50af: $db
    cp h                                          ; $50b0: $bc
    ld a, e                                       ; $50b1: $7b
    ld c, l                                       ; $50b2: $4d
    cp e                                          ; $50b3: $bb
    adc l                                         ; $50b4: $8d
    ld a, e                                       ; $50b5: $7b
    add hl, de                                    ; $50b6: $19
    cp a                                          ; $50b7: $bf
    rst $30                                       ; $50b8: $f7
    ld b, b                                       ; $50b9: $40
    ret nz                                        ; $50ba: $c0

    or b                                          ; $50bb: $b0
    ld hl, sp-$78                                 ; $50bc: $f8 $88
    cp $e0                                        ; $50be: $fe $e0
    sub b                                         ; $50c0: $90
    db $eb                                        ; $50c1: $eb
    ldh a, [$f0]                                  ; $50c2: $f0 $f0
    reti                                          ; $50c4: $d9


    ld h, c                                       ; $50c5: $61
    ldh a, [$c0]                                  ; $50c6: $f0 $c0
    ld b, [hl]                                    ; $50c8: $46
    stop                                          ; $50c9: $10 $00
    jr nc, @+$01                                  ; $50cb: $30 $ff

    db $10                                        ; $50cd: $10
    jr c, jr_07b_5108                             ; $50ce: $38 $38

    ld a, c                                       ; $50d0: $79
    dec c                                         ; $50d1: $0d
    dec bc                                        ; $50d2: $0b
    dec de                                        ; $50d3: $1b
    rla                                           ; $50d4: $17
    rst $38                                       ; $50d5: $ff
    rra                                           ; $50d6: $1f
    rrca                                          ; $50d7: $0f
    dec l                                         ; $50d8: $2d
    dec de                                        ; $50d9: $1b
    ld e, d                                       ; $50da: $5a
    ld [hl], a                                    ; $50db: $77
    ccf                                           ; $50dc: $3f
    ccf                                           ; $50dd: $3f
    rst $38                                       ; $50de: $ff
    ld l, e                                       ; $50df: $6b

Jump_07b_50e0:
    ld [hl], a                                    ; $50e0: $77
    rst $10                                       ; $50e1: $d7
    db $ed                                        ; $50e2: $ed
    and e                                         ; $50e3: $a3
    ld e, h                                       ; $50e4: $5c
    rst $10                                       ; $50e5: $d7
    xor b                                         ; $50e6: $a8
    rst $38                                       ; $50e7: $ff
    cp $e1                                        ; $50e8: $fe $e1
    call z, $eaf3                                 ; $50ea: $cc $f3 $ea
    push af                                       ; $50ed: $f5
    rst $10                                       ; $50ee: $d7
    ld hl, sp-$29                                 ; $50ef: $f8 $d7
    ld a, [hl]                                    ; $50f1: $7e
    ld sp, hl                                     ; $50f2: $f9

jr_07b_50f3:
    cp l                                          ; $50f3: $bd
    ld l, $60                                     ; $50f4: $2e $60
    ld e, $13                                     ; $50f6: $1e $13
    ld h, b                                       ; $50f8: $60
    ld b, $ff                                     ; $50f9: $06 $ff
    ld e, a                                       ; $50fb: $5f
    rlca                                          ; $50fc: $07
    rst $38                                       ; $50fd: $ff
    rra                                           ; $50fe: $1f
    rst $38                                       ; $50ff: $ff
    ld a, a                                       ; $5100: $7f
    db $fc                                        ; $5101: $fc
    ldh [rSC], a                                  ; $5102: $e0 $02
    db $eb                                        ; $5104: $eb
    ld h, c                                       ; $5105: $61
    rst $38                                       ; $5106: $ff
    rst $38                                       ; $5107: $ff

jr_07b_5108:
    add h                                         ; $5108: $84
    ei                                            ; $5109: $fb
    ld a, [bc]                                    ; $510a: $0a
    push af                                       ; $510b: $f5
    inc b                                         ; $510c: $04
    ei                                            ; $510d: $fb
    adc d                                         ; $510e: $8a
    db $eb                                        ; $510f: $eb
    push af                                       ; $5110: $f5
    ld b, b                                       ; $5111: $40
    ld sp, hl                                     ; $5112: $f9
    ld b, b                                       ; $5113: $40
    inc b                                         ; $5114: $04
    db $f4                                        ; $5115: $f4
    ldh [$5c], a                                  ; $5116: $e0 $5c
    and e                                         ; $5118: $a3
    xor b                                         ; $5119: $a8
    rst $30                                       ; $511a: $f7
    ld d, a                                       ; $511b: $57
    ld b, b                                       ; $511c: $40
    cp a                                          ; $511d: $bf
    ld [hl], c                                    ; $511e: $71
    add b                                         ; $511f: $80
    rst $38                                       ; $5120: $ff
    ld h, b                                       ; $5121: $60
    sbc d                                         ; $5122: $9a
    ld de, $eefd                                  ; $5123: $11 $fd $ee
    cp a                                          ; $5126: $bf
    ld h, e                                       ; $5127: $63
    db $10                                        ; $5128: $10
    rst $28                                       ; $5129: $ef
    jr c, jr_07b_50f3                             ; $512a: $38 $c7

    ld d, h                                       ; $512c: $54
    xor e                                         ; $512d: $ab
    ld a, [$6173]                                 ; $512e: $fa $73 $61
    sub b                                         ; $5131: $90
    sub $a0                                       ; $5132: $d6 $a0
    ld [$04f0], sp                                ; $5134: $08 $f0 $04
    ld sp, hl                                     ; $5137: $f9
    ld hl, $def7                                  ; $5138: $21 $f7 $de
    ld l, b                                       ; $513b: $68
    sub a                                         ; $513c: $97
    ld b, b                                       ; $513d: $40
    ld b, l                                       ; $513e: $45
    ret nz                                        ; $513f: $c0

    nop                                           ; $5140: $00
    jr nz, @-$3e                                  ; $5141: $20 $c0

    cp $ea                                        ; $5143: $fe $ea
    pop hl                                        ; $5145: $e1
    ld e, $10                                     ; $5146: $1e $10
    ld e, $10                                     ; $5148: $1e $10
    rra                                           ; $514a: $1f
    jr jr_07b_516b                                ; $514b: $18 $1e

    ld e, a                                       ; $514d: $5f
    jr jr_07b_516f                                ; $514e: $18 $1f

    jr jr_07b_5171                                ; $5150: $18 $1f

    inc d                                         ; $5152: $14
    cp $e0                                        ; $5153: $fe $e0
    ld [de], a                                    ; $5155: $12
    db $f4                                        ; $5156: $f4
    ld b, l                                       ; $5157: $45
    ld a, [$81d0]                                 ; $5158: $fa $d0 $81

jr_07b_515b:
    ret nc                                        ; $515b: $d0

    ldh [rLCDC], a                                ; $515c: $e0 $40
    add hl, bc                                    ; $515e: $09
    add hl, sp                                    ; $515f: $39
    rlca                                          ; $5160: $07
    dec c                                         ; $5161: $0d
    rrca                                          ; $5162: $0f
    rst $38                                       ; $5163: $ff
    ld e, $13                                     ; $5164: $1e $13
    ccf                                           ; $5166: $3f
    jr nz, jr_07b_51e2                            ; $5167: $20 $79

    jr nz, jr_07b_515b                            ; $5169: $20 $f0

jr_07b_516b:
    ld b, b                                       ; $516b: $40
    rst $38                                       ; $516c: $ff
    ldh [rLCDC], a                                ; $516d: $e0 $40

jr_07b_516f:
    ldh [$f8], a                                  ; $516f: $e0 $f8

jr_07b_5171:
    inc c                                         ; $5171: $0c
    ld a, [$f70c]                                 ; $5172: $fa $0c $f7
    rst $38                                       ; $5175: $ff
    inc c                                         ; $5176: $0c
    push af                                       ; $5177: $f5
    ld c, $f5                                     ; $5178: $0e $f5
    adc $34                                       ; $517a: $ce $34
    ccf                                           ; $517c: $3f
    ld c, $ff                                     ; $517d: $0e $ff
    rrca                                          ; $517f: $0f
    inc bc                                        ; $5180: $03
    inc bc                                        ; $5181: $03
    ld h, h                                       ; $5182: $64
    daa                                           ; $5183: $27
    inc h                                         ; $5184: $24
    ld h, a                                       ; $5185: $67
    call nz, Call_07b_47ff                        ; $5186: $c4 $ff $47
    db $e4                                        ; $5189: $e4
    ld b, a                                       ; $518a: $47
    ld a, c                                       ; $518b: $79
    rst $28                                       ; $518c: $ef
    ld a, c                                       ; $518d: $79
    rst $38                                       ; $518e: $ff
    ld a, [$feff]                                 ; $518f: $fa $ff $fe
    xor $ee                                       ; $5192: $ee $ee
    ld b, b                                       ; $5194: $40
    and b                                         ; $5195: $a0
    and c                                         ; $5196: $a1
    ld b, b                                       ; $5197: $40

jr_07b_5198:
    ld h, d                                       ; $5198: $62
    rst $38                                       ; $5199: $ff
    add b                                         ; $519a: $80
    pop bc                                        ; $519b: $c1
    ret nz                                        ; $519c: $c0

    ld [hl+], a                                   ; $519d: $22
    jr nz, jr_07b_51c1                            ; $519e: $20 $21

    jr nz, jr_07b_51c4                            ; $51a0: $20 $22

    rst $38                                       ; $51a2: $ff
    jr nz, jr_07b_51ea                            ; $51a3: $20 $45

    ld b, b                                       ; $51a5: $40
    ld hl, sp+$07                                 ; $51a6: $f8 $07
    ld a, [hl]                                    ; $51a8: $7e
    ld bc, $edfd                                  ; $51a9: $01 $fd $ed
    ld [bc], a                                    ; $51ac: $02
    db $fc                                        ; $51ad: $fc
    pop hl                                        ; $51ae: $e1
    ld a, [$fc05]                                 ; $51af: $fa $05 $fc
    pop hl                                        ; $51b2: $e1
    ld a, c                                       ; $51b3: $79
    sub a                                         ; $51b4: $97
    sbc c                                         ; $51b5: $99
    rst $38                                       ; $51b6: $ff

jr_07b_51b7:
    ld [hl], a                                    ; $51b7: $77
    dec de                                        ; $51b8: $1b
    rst $30                                       ; $51b9: $f7
    or d                                          ; $51ba: $b2
    ld l, a                                       ; $51bb: $6f
    ld [hl-], a                                   ; $51bc: $32
    rst $28                                       ; $51bd: $ef
    ld [hl-], a                                   ; $51be: $32
    rst $38                                       ; $51bf: $ff
    rst $28                                       ; $51c0: $ef

jr_07b_51c1:
    ld h, h                                       ; $51c1: $64
    rst $18                                       ; $51c2: $df
    ld h, h                                       ; $51c3: $64

jr_07b_51c4:
    rst $18                                       ; $51c4: $df
    jr nz, jr_07b_51b7                            ; $51c5: $20 $f0

    jr nz, jr_07b_5198                            ; $51c7: $20 $cf

    ldh [$a0], a                                  ; $51c9: $e0 $a0
    ldh [$60], a                                  ; $51cb: $e0 $60
    and [hl]                                      ; $51cd: $a6
    ldh [$f2], a                                  ; $51ce: $e0 $f2
    and c                                         ; $51d0: $a1
    ld b, b                                       ; $51d1: $40
    ret nz                                        ; $51d2: $c0

    db $f4                                        ; $51d3: $f4
    rst $20                                       ; $51d4: $e7
    ld h, b                                       ; $51d5: $60
    rst $10                                       ; $51d6: $d7
    ld b, b                                       ; $51d7: $40
    inc bc                                        ; $51d8: $03
    jp hl                                         ; $51d9: $e9


    and b                                         ; $51da: $a0
    dec b                                         ; $51db: $05
    ld b, $05                                     ; $51dc: $06 $05
    dec bc                                        ; $51de: $0b
    rst $38                                       ; $51df: $ff
    rrca                                          ; $51e0: $0f
    rla                                           ; $51e1: $17

jr_07b_51e2:
    jr c, jr_07b_5260                             ; $51e2: $38 $7c

    ld [hl], c                                    ; $51e4: $71
    cp $3b                                        ; $51e5: $fe $3b
    db $fc                                        ; $51e7: $fc
    rst $38                                       ; $51e8: $ff
    cp [hl]                                       ; $51e9: $be

jr_07b_51ea:
    db $fd                                        ; $51ea: $fd
    ld a, l                                       ; $51eb: $7d
    ei                                            ; $51ec: $fb
    ccf                                           ; $51ed: $3f
    rst $38                                       ; $51ee: $ff
    ld l, [hl]                                    ; $51ef: $6e
    rst $38                                       ; $51f0: $ff
    rst $38                                       ; $51f1: $ff
    rst $38                                       ; $51f2: $ff
    rst $38                                       ; $51f3: $ff
    ld a, a                                       ; $51f4: $7f
    ei                                            ; $51f5: $fb
    cp a                                          ; $51f6: $bf
    ld l, a                                       ; $51f7: $6f
    ld a, e                                       ; $51f8: $7b
    rst $18                                       ; $51f9: $df
    rst $38                                       ; $51fa: $ff

jr_07b_51fb:
    or $ff                                        ; $51fb: $f6 $ff
    res 7, a                                      ; $51fd: $cb $bf
    and l                                         ; $51ff: $a5
    ld e, e                                       ; $5200: $5b
    db $dd                                        ; $5201: $dd
    or a                                          ; $5202: $b7
    rst $18                                       ; $5203: $df
    cp a                                          ; $5204: $bf
    rst $38                                       ; $5205: $ff
    ld e, e                                       ; $5206: $5b
    rst $38                                       ; $5207: $ff
    db $fd                                        ; $5208: $fd
    ld [$bfe0], a                                 ; $5209: $ea $e0 $bf
    rst $38                                       ; $520c: $ff
    rst $38                                       ; $520d: $ff
    ld e, [hl]                                    ; $520e: $5e
    rst $38                                       ; $520f: $ff
    scf                                           ; $5210: $37
    rst $38                                       ; $5211: $ff
    db $db                                        ; $5212: $db
    ld a, a                                       ; $5213: $7f
    rst $28                                       ; $5214: $ef
    cp a                                          ; $5215: $bf
    rst $38                                       ; $5216: $ff
    rla                                           ; $5217: $17
    rst $38                                       ; $5218: $ff
    ld c, a                                       ; $5219: $4f
    rst $38                                       ; $521a: $ff
    ld c, e                                       ; $521b: $4b
    cp a                                          ; $521c: $bf
    sub a                                         ; $521d: $97
    ld a, a                                       ; $521e: $7f
    db $dd                                        ; $521f: $dd
    ld a, a                                       ; $5220: $7f
    ld b, e                                       ; $5221: $43
    and b                                         ; $5222: $a0
    ld c, a                                       ; $5223: $4f
    cp a                                          ; $5224: $bf
    sbc a                                         ; $5225: $9f
    ret                                           ; $5226: $c9


    jr nz, jr_07b_51fb                            ; $5227: $20 $d2

    rst $28                                       ; $5229: $ef
    rst $38                                       ; $522a: $ff
    ld [c], a                                     ; $522b: $e2
    rst $38                                       ; $522c: $ff
    rst $00                                       ; $522d: $c7
    rst $38                                       ; $522e: $ff
    xor $ff                                       ; $522f: $ee $ff
    rst $30                                       ; $5231: $f7
    rst $38                                       ; $5232: $ff
    ld a, a                                       ; $5233: $7f
    xor a                                         ; $5234: $af
    rst $38                                       ; $5235: $ff
    rst $18                                       ; $5236: $df
    rst $38                                       ; $5237: $ff
    jr @+$01                                      ; $5238: $18 $ff

jr_07b_523a:
    jr nc, jr_07b_523a                            ; $523a: $30 $fe

    ldh [rIE], a                                  ; $523c: $e0 $ff
    ld a, e                                       ; $523e: $7b
    db $fc                                        ; $523f: $fc
    cp h                                          ; $5240: $bc
    ei                                            ; $5241: $fb
    ld a, [hl]                                    ; $5242: $7e
    db $fd                                        ; $5243: $fd
    ld a, [$fdff]                                 ; $5244: $fa $ff $fd
    ld a, h                                       ; $5247: $7c
    cp b                                          ; $5248: $b8
    and b                                         ; $5249: $a0
    nop                                           ; $524a: $00
    rst $38                                       ; $524b: $ff
    ld b, h                                       ; $524c: $44
    cp a                                          ; $524d: $bf
    inc c                                         ; $524e: $0c
    rst $38                                       ; $524f: $ff
    rst $38                                       ; $5250: $ff
    ld c, [hl]                                    ; $5251: $4e
    rst $38                                       ; $5252: $ff
    call c, Call_07b_6cff                         ; $5253: $dc $ff $6c
    rst $38                                       ; $5256: $ff
    rst $18                                       ; $5257: $df
    cp $ea                                        ; $5258: $fe $ea
    sub b                                         ; $525a: $90
    and e                                         ; $525b: $a3
    db $10                                        ; $525c: $10
    jp c, Jump_07b_50e0                           ; $525d: $da $e0 $50

jr_07b_5260:
    sub $e0                                       ; $5260: $d6 $e0
    ld a, b                                       ; $5262: $78
    rst $38                                       ; $5263: $ff
    ld b, b                                       ; $5264: $40
    rst $30                                       ; $5265: $f7
    cp h                                          ; $5266: $bc
    and b                                         ; $5267: $a0
    ld e, [hl]                                    ; $5268: $5e
    sbc l                                         ; $5269: $9d
    ld h, c                                       ; $526a: $61
    inc b                                         ; $526b: $04
    ei                                            ; $526c: $fb
    ld [bc], a                                    ; $526d: $02
    db $fd                                        ; $526e: $fd
    inc a                                         ; $526f: $3c
    add hl, de                                    ; $5270: $19
    add d                                         ; $5271: $82
    adc a                                         ; $5272: $8f
    ld c, h                                       ; $5273: $4c
    ld de, $111f                                  ; $5274: $11 $1f $11

jr_07b_5277:
    rra                                           ; $5277: $1f
    xor h                                         ; $5278: $ac
    ld h, c                                       ; $5279: $61
    db $fc                                        ; $527a: $fc
    db $e3                                        ; $527b: $e3
    ei                                            ; $527c: $fb
    ld b, b                                       ; $527d: $40
    ld a, a                                       ; $527e: $7f
    ld d, a                                       ; $527f: $57
    ld b, b                                       ; $5280: $40
    ei                                            ; $5281: $fb
    add c                                         ; $5282: $81
    rst $38                                       ; $5283: $ff
    add c                                         ; $5284: $81
    rst $38                                       ; $5285: $ff
    rst $38                                       ; $5286: $ff
    pop bc                                        ; $5287: $c1
    ld a, a                                       ; $5288: $7f
    pop hl                                        ; $5289: $e1
    ccf                                           ; $528a: $3f
    pop af                                        ; $528b: $f1
    rra                                           ; $528c: $1f
    db $fc                                        ; $528d: $fc
    rrca                                          ; $528e: $0f
    rst $28                                       ; $528f: $ef
    add b                                         ; $5290: $80
    ret nz                                        ; $5291: $c0

    add b                                         ; $5292: $80
    ret nz                                        ; $5293: $c0

    ld a, [c]                                     ; $5294: $f2
    jr nz, jr_07b_5277                            ; $5295: $20 $e0

    ldh [$f8], a                                  ; $5297: $e0 $f8
    push hl                                       ; $5299: $e5
    db $fc                                        ; $529a: $fc
    ld b, d                                       ; $529b: $42
    ldh [rIE], a                                  ; $529c: $e0 $ff
    nop                                           ; $529e: $00
    rst $00                                       ; $529f: $c7
    add sp, -$7e                                  ; $52a0: $e8 $82
    ld hl, sp+$7e                                 ; $52a2: $f8 $7e
    ld a, h                                       ; $52a4: $7c
    rst $30                                       ; $52a5: $f7
    ld a, h                                       ; $52a6: $7c
    jr jr_07b_52e1                                ; $52a7: $18 $38

    xor h                                         ; $52a9: $ac
    add hl, bc                                    ; $52aa: $09
    ld b, d                                       ; $52ab: $42
    ld b, b                                       ; $52ac: $40
    ld h, l                                       ; $52ad: $65
    ld h, b                                       ; $52ae: $60
    sbc e                                         ; $52af: $9b
    rra                                           ; $52b0: $1f
    ld e, $ca                                     ; $52b1: $1e $ca
    ld hl, $0606                                  ; $52b3: $21 $06 $06
    call nz, $c821                                ; $52b6: $c4 $21 $c8
    pop bc                                        ; $52b9: $c1
    db $f4                                        ; $52ba: $f4
    rst $38                                       ; $52bb: $ff
    dec bc                                        ; $52bc: $0b
    ld a, [$7585]                                 ; $52bd: $fa $85 $75
    ld c, e                                       ; $52c0: $4b
    add hl, sp                                    ; $52c1: $39
    daa                                           ; $52c2: $27
    ei                                            ; $52c3: $fb
    rst $38                                       ; $52c4: $ff
    cp $27                                        ; $52c5: $fe $27
    ld a, $64                                     ; $52c7: $3e $64
    rst $18                                       ; $52c9: $df
    ld l, b                                       ; $52ca: $68
    rst $18                                       ; $52cb: $df
    ret z                                         ; $52cc: $c8

    rst $38                                       ; $52cd: $ff
    cp a                                          ; $52ce: $bf
    ret z                                         ; $52cf: $c8

    cp a                                          ; $52d0: $bf
    sub b                                         ; $52d1: $90
    ld a, a                                       ; $52d2: $7f
    sub c                                         ; $52d3: $91
    ld a, a                                       ; $52d4: $7f
    ld de, $ff0f                                  ; $52d5: $11 $0f $ff
    ld hl, $40ff                                  ; $52d8: $21 $ff $40
    and b                                         ; $52db: $a0
    ldh [rNR32], a                                ; $52dc: $e0 $1c
    ld hl, $00a6                                  ; $52de: $21 $a6 $00

jr_07b_52e1:
    and h                                         ; $52e1: $a4
    ld [bc], a                                    ; $52e2: $02
    rst $38                                       ; $52e3: $ff
    ld b, $0f                                     ; $52e4: $06 $0f
    rrca                                          ; $52e6: $0f
    rra                                           ; $52e7: $1f
    rlca                                          ; $52e8: $07
    rrca                                          ; $52e9: $0f
    dec bc                                        ; $52ea: $0b
    rra                                           ; $52eb: $1f
    rst $38                                       ; $52ec: $ff
    dec e                                         ; $52ed: $1d
    ld [hl], $3a                                  ; $52ee: $36 $3a
    ld l, l                                       ; $52f0: $6d
    rrca                                          ; $52f1: $0f
    ccf                                           ; $52f2: $3f
    dec e                                         ; $52f3: $1d
    ld e, $bd                                     ; $52f4: $1e $bd
    rst $18                                       ; $52f6: $df
    db $e4                                        ; $52f7: $e4
    ret nz                                        ; $52f8: $c0

    db $fd                                        ; $52f9: $fd
    cp $da                                        ; $52fa: $fe $da
    db $fd                                        ; $52fc: $fd
    ld a, [$fbe1]                                 ; $52fd: $fa $e1 $fb
    ei                                            ; $5300: $fb
    rst $38                                       ; $5301: $ff
    ld [hl], l                                    ; $5302: $75
    cp [hl]                                       ; $5303: $be
    ret nz                                        ; $5304: $c0

    ld l, e                                       ; $5305: $6b
    rst $38                                       ; $5306: $ff
    ld d, c                                       ; $5307: $51
    rst $28                                       ; $5308: $ef
    sub [hl]                                      ; $5309: $96
    ccf                                           ; $530a: $3f
    db $eb                                        ; $530b: $eb
    xor a                                         ; $530c: $af
    ld e, e                                       ; $530d: $5b
    ld a, a                                       ; $530e: $7f
    db $db                                        ; $530f: $db
    ld a, [$c0ee]                                 ; $5310: $fa $ee $c0
    ld l, e                                       ; $5313: $6b
    pop hl                                        ; $5314: $e1
    rst $38                                       ; $5315: $ff
    cp a                                          ; $5316: $bf
    rst $38                                       ; $5317: $ff
    ld d, a                                       ; $5318: $57
    rst $38                                       ; $5319: $ff
    dec hl                                        ; $531a: $2b
    rst $38                                       ; $531b: $ff
    rst $18                                       ; $531c: $df
    cp a                                          ; $531d: $bf
    xor e                                         ; $531e: $ab
    rst $38                                       ; $531f: $ff
    rst $18                                       ; $5320: $df
    jp z, $ffc1                                   ; $5321: $ca $c1 $ff

    ld a, [c]                                     ; $5324: $f2
    ldh [$2f], a                                  ; $5325: $e0 $2f
    sub h                                         ; $5327: $94
    and b                                         ; $5328: $a0
    ld l, a                                       ; $5329: $6f
    ld a, [$c0d2]                                 ; $532a: $fa $d2 $c0
    ld a, a                                       ; $532d: $7f
    adc [hl]                                      ; $532e: $8e
    ret nz                                        ; $532f: $c0

    xor $ff                                       ; $5330: $ee $ff
    rst $10                                       ; $5332: $d7
    rst $38                                       ; $5333: $ff
    rst $28                                       ; $5334: $ef
    dec hl                                        ; $5335: $2b
    rst $38                                       ; $5336: $ff
    cp $84                                        ; $5337: $fe $84
    ret nz                                        ; $5339: $c0

    rst $30                                       ; $533a: $f7
    jp nc, $fbe2                                  ; $533b: $d2 $e2 $fb

    ld a, b                                       ; $533e: $78
    and b                                         ; $533f: $a0
    ld a, [c]                                     ; $5340: $f2
    pop hl                                        ; $5341: $e1
    ld [hl], l                                    ; $5342: $75
    cp a                                          ; $5343: $bf
    call nz, $fce2                                ; $5344: $c4 $e2 $fc
    and $e2                                       ; $5347: $e6 $e2
    cp [hl]                                       ; $5349: $be

jr_07b_534a:
    rst $38                                       ; $534a: $ff
    db $ed                                        ; $534b: $ed
    or [hl]                                       ; $534c: $b6
    ld [c], a                                     ; $534d: $e2
    ld e, a                                       ; $534e: $5f
    rst $38                                       ; $534f: $ff
    rst $38                                       ; $5350: $ff
    ld [hl], b                                    ; $5351: $70
    rst $38                                       ; $5352: $ff
    ld sp, hl                                     ; $5353: $f9
    xor d                                         ; $5354: $aa
    ret nz                                        ; $5355: $c0

    db $fd                                        ; $5356: $fd
    ld a, [$f5e0]                                 ; $5357: $fa $e0 $f5
    ld a, [hl]                                    ; $535a: $7e
    and h                                         ; $535b: $a4
    ld [c], a                                     ; $535c: $e2
    jp nz, $e0fe                                  ; $535d: $c2 $fe $e0

    add $ff                                       ; $5360: $c6 $ff
    db $eb                                        ; $5362: $eb
    rst $38                                       ; $5363: $ff
    and l                                         ; $5364: $a5
    rst $20                                       ; $5365: $e7
    cp h                                          ; $5366: $bc
    ldh [$cf], a                                  ; $5367: $e0 $cf

jr_07b_5369:
    ld b, b                                       ; $5369: $40
    ret nz                                        ; $536a: $c0

    adc a                                         ; $536b: $8f
    ld h, b                                       ; $536c: $60
    ldh [rSTAT], a                                ; $536d: $e0 $41
    jr nz, jr_07b_5369                            ; $536f: $20 $f8

    rst $38                                       ; $5371: $ff
    add b                                         ; $5372: $80
    ld hl, sp+$00                                 ; $5373: $f8 $00
    db $fc                                        ; $5375: $fc
    add b                                         ; $5376: $80
    db $fc                                        ; $5377: $fc
    ret nz                                        ; $5378: $c0

    cp $3b                                        ; $5379: $fe $3b
    ld b, b                                       ; $537b: $40
    ld a, a                                       ; $537c: $7f
    ld a, d                                       ; $537d: $7a
    ld hl, $3f38                                  ; $537e: $21 $38 $3f
    daa                                           ; $5381: $27
    call nz, $f4c0                                ; $5382: $c4 $c0 $f4
    pop hl                                        ; $5385: $e1
    rst $38                                       ; $5386: $ff
    rst $38                                       ; $5387: $ff
    inc bc                                        ; $5388: $03
    ld a, a                                       ; $5389: $7f
    add b                                         ; $538a: $80
    ld a, a                                       ; $538b: $7f
    add b                                         ; $538c: $80
    ccf                                           ; $538d: $3f
    ret nz                                        ; $538e: $c0

    xor e                                         ; $538f: $ab
    sbc a                                         ; $5390: $9f
    ldh [$3e], a                                  ; $5391: $e0 $3e
    ret nz                                        ; $5393: $c0

    ret nz                                        ; $5394: $c0

    add h                                         ; $5395: $84
    nop                                           ; $5396: $00
    ldh [$0e], a                                  ; $5397: $e0 $0e
    ld b, e                                       ; $5399: $43
    rst $20                                       ; $539a: $e7
    di                                            ; $539b: $f3
    rra                                           ; $539c: $1f
    ld hl, sp+$24                                 ; $539d: $f8 $24
    nop                                           ; $539f: $00
    dec b                                         ; $53a0: $05
    and b                                         ; $53a1: $a0
    rrca                                          ; $53a2: $0f
    ld hl, sp+$08                                 ; $53a3: $f8 $08
    add sp, -$01                                  ; $53a5: $e8 $ff
    jr jr_07b_53d9                                ; $53a7: $18 $30

    ldh a, [$c8]                                  ; $53a9: $f0 $c8
    ld hl, sp+$28                                 ; $53ab: $f8 $28
    ret c                                         ; $53ad: $d8

    add sp, -$01                                  ; $53ae: $e8 $ff
    jr @-$06                                      ; $53b0: $18 $f8

    ld [$c080], sp                                ; $53b2: $08 $80 $c0
    ld [hl], b                                    ; $53b5: $70
    ld a, b                                       ; $53b6: $78
    inc c                                         ; $53b7: $0c
    rst $20                                       ; $53b8: $e7
    ld c, $03                                     ; $53b9: $0e $03
    inc bc                                        ; $53bb: $03
    cp b                                          ; $53bc: $b8
    dec b                                         ; $53bd: $05
    jp z, $18c1                                   ; $53be: $ca $c1 $18

    jr jr_07b_534a                                ; $53c1: $18 $87

    cp a                                          ; $53c3: $bf
    add a                                         ; $53c4: $87
    ld [hl], c                                    ; $53c5: $71
    ld [hl], c                                    ; $53c6: $71
    ld e, $3f                                     ; $53c7: $1e $3f
    cpl                                           ; $53c9: $2f
    inc d                                         ; $53ca: $14
    ld b, b                                       ; $53cb: $40
    ld [hl+], a                                   ; $53cc: $22
    rst $08                                       ; $53cd: $cf
    ccf                                           ; $53ce: $3f
    pop bc                                        ; $53cf: $c1
    rst $38                                       ; $53d0: $ff
    ld b, b                                       ; $53d1: $40
    ld a, [$44a0]                                 ; $53d2: $fa $a0 $44

jr_07b_53d5:
    nop                                           ; $53d5: $00
    rst $38                                       ; $53d6: $ff
    adc h                                         ; $53d7: $8c
    rst $38                                       ; $53d8: $ff

jr_07b_53d9:
    db $fc                                        ; $53d9: $fc
    ld [hl], b                                    ; $53da: $70
    ldh a, [$3f]                                  ; $53db: $f0 $3f
    rst $38                                       ; $53dd: $ff
    jp nz, Jump_000_0cfe                          ; $53de: $c2 $fe $0c

    rst $08                                       ; $53e1: $cf
    db $fc                                        ; $53e2: $fc
    jr nc, jr_07b_53d5                            ; $53e3: $30 $f0

    ret nz                                        ; $53e5: $c0

    dec h                                         ; $53e6: $25
    ld b, c                                       ; $53e7: $41
    call z, Call_000_00e5                         ; $53e8: $cc $e5 $00
    ld c, $ff                                     ; $53eb: $0e $ff
    ld bc, $0a15                                  ; $53ed: $01 $15 $0a
    ld a, [bc]                                    ; $53f0: $0a
    dec d                                         ; $53f1: $15
    dec d                                         ; $53f2: $15
    ld a, [hl+]                                   ; $53f3: $2a
    ld [$77ff], sp                                ; $53f4: $08 $ff $77
    dec hl                                        ; $53f7: $2b
    ccf                                           ; $53f8: $3f
    ld [hl], l                                    ; $53f9: $75
    ld e, a                                       ; $53fa: $5f
    cp l                                          ; $53fb: $bd
    ld a, e                                       ; $53fc: $7b
    ld a, [hl-]                                   ; $53fd: $3a
    rst $38                                       ; $53fe: $ff
    rst $30                                       ; $53ff: $f7
    ld [hl], a                                    ; $5400: $77
    db $ec                                        ; $5401: $ec
    cp $df                                        ; $5402: $fe $df
    ld a, e                                       ; $5404: $7b
    db $fd                                        ; $5405: $fd
    and [hl]                                      ; $5406: $a6
    rst $38                                       ; $5407: $ff
    ei                                            ; $5408: $fb
    db $ed                                        ; $5409: $ed
    ei                                            ; $540a: $fb
    ld a, [$d7f7]                                 ; $540b: $fa $f7 $d7
    db $ec                                        ; $540e: $ec
    cp $ff                                        ; $540f: $fe $ff
    rst $38                                       ; $5411: $ff
    db $db                                        ; $5412: $db
    db $fd                                        ; $5413: $fd
    ld h, [hl]                                    ; $5414: $66
    cp e                                          ; $5415: $bb
    dec a                                         ; $5416: $3d
    rst $30                                       ; $5417: $f7
    reti                                          ; $5418: $d9


    rst $38                                       ; $5419: $ff
    rst $38                                       ; $541a: $ff
    ld d, l                                       ; $541b: $55
    xor a                                         ; $541c: $af
    cp b                                          ; $541d: $b8
    ld c, a                                       ; $541e: $4f
    ld h, a                                       ; $541f: $67

Call_07b_5420:
    jp c, $f5da                                   ; $5420: $da $da $f5

    or a                                          ; $5423: $b7
    db $f4                                        ; $5424: $f4
    pop hl                                        ; $5425: $e1
    ld e, a                                       ; $5426: $5f
    ld a, [bc]                                    ; $5427: $0a
    ldh [$ef], a                                  ; $5428: $e0 $ef
    rst $38                                       ; $542a: $ff
    rst $30                                       ; $542b: $f7
    cp a                                          ; $542c: $bf
    rst $08                                       ; $542d: $cf
    ei                                            ; $542e: $fb
    rst $18                                       ; $542f: $df
    cp $6f                                        ; $5430: $fe $6f
    db $f4                                        ; $5432: $f4
    db $e4                                        ; $5433: $e4
    rrca                                          ; $5434: $0f
    ld b, h                                       ; $5435: $44
    ld bc, $7f01                                  ; $5436: $01 $01 $7f
    ld b, $07                                     ; $5439: $06 $07
    dec bc                                        ; $543b: $0b
    inc c                                         ; $543c: $0c
    rla                                           ; $543d: $17
    jr jr_07b_545f                                ; $543e: $18 $1f

    ldh [rDIV], a                                 ; $5440: $e0 $04
    db $fd                                        ; $5442: $fd
    ret nz                                        ; $5443: $c0

    inc de                                        ; $5444: $13
    ld h, b                                       ; $5445: $60
    and b                                         ; $5446: $a0
    ld h, b                                       ; $5447: $60
    and b                                         ; $5448: $a0
    ld h, b                                       ; $5449: $60
    ld e, $fe                                     ; $544a: $1e $fe
    sbc $c0                                       ; $544c: $de $c0
    xor c                                         ; $544e: $a9
    rra                                           ; $544f: $1f
    rra                                           ; $5450: $1f
    ld l, a                                       ; $5451: $6f
    ld [hl], b                                    ; $5452: $70
    or b                                          ; $5453: $b0
    xor c                                         ; $5454: $a9
    ldh a, [$f0]                                  ; $5455: $f0 $f0
    ld a, e                                       ; $5457: $7b
    xor $1e                                       ; $5458: $ee $1e
    and b                                         ; $545a: $a0
    and e                                         ; $545b: $a3
    inc bc                                        ; $545c: $03
    inc bc                                        ; $545d: $03
    dec b                                         ; $545e: $05

jr_07b_545f:
    ld b, $c0                                     ; $545f: $06 $c0
    pop hl                                        ; $5461: $e1
    cp l                                          ; $5462: $bd
    rst $28                                       ; $5463: $ef
    ret nc                                        ; $5464: $d0

    ld h, b                                       ; $5465: $60
    rra                                           ; $5466: $1f
    rra                                           ; $5467: $1f
    rst $28                                       ; $5468: $ef
    ldh a, [$3f]                                  ; $5469: $f0 $3f
    ld [c], a                                     ; $546b: $e2
    nop                                           ; $546c: $00
    xor a                                         ; $546d: $af
    pop af                                        ; $546e: $f1
    ld c, $ff                                     ; $546f: $0e $ff
    rlca                                          ; $5471: $07
    daa                                           ; $5472: $27
    and b                                         ; $5473: $a0
    ret nz                                        ; $5474: $c0

    dec a                                         ; $5475: $3d
    and b                                         ; $5476: $a0
    inc c                                         ; $5477: $0c
    call c, $41f5                                 ; $5478: $dc $f5 $41
    rst $18                                       ; $547b: $df
    ret nz                                        ; $547c: $c0

    rst $38                                       ; $547d: $ff
    ccf                                           ; $547e: $3f
    jr nz, jr_07b_545f                            ; $547f: $20 $de

    ret nz                                        ; $5481: $c0

    inc e                                         ; $5482: $1c
    ei                                            ; $5483: $fb
    rst $38                                       ; $5484: $ff
    ld a, [bc]                                    ; $5485: $0a
    db $fd                                        ; $5486: $fd
    dec [hl]                                      ; $5487: $35
    rst $08                                       ; $5488: $cf
    ei                                            ; $5489: $fb
    rlca                                          ; $548a: $07
    db $fd                                        ; $548b: $fd
    inc bc                                        ; $548c: $03
    rst $38                                       ; $548d: $ff
    rst $38                                       ; $548e: $ff
    ld a, [hl]                                    ; $548f: $7e
    add d                                         ; $5490: $82
    ld a, [$e406]                                 ; $5491: $fa $06 $e4
    inc e                                         ; $5494: $1c
    inc c                                         ; $5495: $0c
    rst $38                                       ; $5496: $ff
    db $fc                                        ; $5497: $fc
    ld [bc], a                                    ; $5498: $02
    cp $0d                                        ; $5499: $fe $0d
    di                                            ; $549b: $f3
    ld a, $c1                                     ; $549c: $3e $c1
    ld bc, $50fc                                  ; $549e: $01 $fc $50
    xor d                                         ; $54a1: $aa
    ret c                                         ; $54a2: $d8

    and c                                         ; $54a3: $a1
    cp a                                          ; $54a4: $bf
    ret nz                                        ; $54a5: $c0

    ld b, b                                       ; $54a6: $40
    ld a, a                                       ; $54a7: $7f
    ld b, e                                       ; $54a8: $43
    ld a, h                                       ; $54a9: $7c
    rst $38                                       ; $54aa: $ff
    cpl                                           ; $54ab: $2f
    jr nc, jr_07b_550d                            ; $54ac: $30 $5f

    ld h, b                                       ; $54ae: $60
    cp a                                          ; $54af: $bf
    ret nz                                        ; $54b0: $c0

    db $fc                                        ; $54b1: $fc
    add e                                         ; $54b2: $83
    di                                            ; $54b3: $f3
    nop                                           ; $54b4: $00
    rst $38                                       ; $54b5: $ff
    call $a0e0                                    ; $54b6: $cd $e0 $a0
    jp nz, Jump_000_01fe                          ; $54b9: $c2 $fe $01

    ldh [$1f], a                                  ; $54bc: $e0 $1f
    rst $38                                       ; $54be: $ff
    inc bc                                        ; $54bf: $03
    db $fc                                        ; $54c0: $fc
    rrca                                          ; $54c1: $0f
    ldh a, [$9f]                                  ; $54c2: $f0 $9f
    sub b                                         ; $54c4: $90
    ld c, a                                       ; $54c5: $4f
    ret z                                         ; $54c6: $c8

    rst $38                                       ; $54c7: $ff
    rst $20                                       ; $54c8: $e7
    inc h                                         ; $54c9: $24
    rst $10                                       ; $54ca: $d7
    inc [hl]                                      ; $54cb: $34
    rla                                           ; $54cc: $17
    db $f4                                        ; $54cd: $f4
    rla                                           ; $54ce: $17
    db $f4                                        ; $54cf: $f4
    rst $38                                       ; $54d0: $ff
    sub a                                         ; $54d1: $97
    ld [hl], h                                    ; $54d2: $74
    dec hl                                        ; $54d3: $2b
    db $ec                                        ; $54d4: $ec
    ld hl, sp+$18                                 ; $54d5: $f8 $18
    ldh [$60], a                                  ; $54d7: $e0 $60
    cp $57                                        ; $54d9: $fe $57
    ld b, c                                       ; $54db: $41
    pop bc                                        ; $54dc: $c1
    ld b, b                                       ; $54dd: $40
    jp $e241                                      ; $54de: $c3 $41 $e2


    ld [hl+], a                                   ; $54e1: $22
    ldh [$e5], a                                  ; $54e2: $e0 $e5
    jr nz, jr_07b_54e6                            ; $54e4: $20 $00

jr_07b_54e6:
    and [hl]                                      ; $54e6: $a6
    ldh [$8e], a                                  ; $54e7: $e0 $8e
    and b                                         ; $54e9: $a0
    di                                            ; $54ea: $f3
    add b                                         ; $54eb: $80
    dec b                                         ; $54ec: $05
    ld bc, $fd1e                                  ; $54ed: $01 $1e $fd
    inc c                                         ; $54f0: $0c
    db $ec                                        ; $54f1: $ec
    adc c                                         ; $54f2: $89
    adc [hl]                                      ; $54f3: $8e
    cp $f0                                        ; $54f4: $fe $f0
    ldh a, [$80]                                  ; $54f6: $f0 $80
    add b                                         ; $54f8: $80
    ld a, $25                                     ; $54f9: $3e $25
    ld b, d                                       ; $54fb: $42
    ld b, b                                       ; $54fc: $40
    ldh [rNR41], a                                ; $54fd: $e0 $20
    ldh [rNR41], a                                ; $54ff: $e0 $20
    sbc $21                                       ; $5501: $de $21

jr_07b_5503:
    pop de                                        ; $5503: $d1
    adc b                                         ; $5504: $88
    rst $38                                       ; $5505: $ff
    nop                                           ; $5506: $00
    add b                                         ; $5507: $80
    rst $38                                       ; $5508: $ff
    ld [hl], b                                    ; $5509: $70
    ld a, a                                       ; $550a: $7f
    inc e                                         ; $550b: $1c
    rra                                           ; $550c: $1f

jr_07b_550d:
    inc b                                         ; $550d: $04
    ld sp, hl                                     ; $550e: $f9
    rlca                                          ; $550f: $07

jr_07b_5510:
    or d                                          ; $5510: $b2
    ld bc, $01b0                                  ; $5511: $01 $b0 $01
    inc a                                         ; $5514: $3c
    jp $8778                                      ; $5515: $c3 $78 $87


    pop hl                                        ; $5518: $e1
    rst $38                                       ; $5519: $ff
    rra                                           ; $551a: $1f
    rst $00                                       ; $551b: $c7
    ccf                                           ; $551c: $3f
    add hl, bc                                    ; $551d: $09
    ld sp, hl                                     ; $551e: $f9
    ld sp, $c1f1                                  ; $551f: $31 $f1 $c1
    rst $38                                       ; $5522: $ff
    pop bc                                        ; $5523: $c1
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    ld d, e                                       ; $5526: $53
    call c, $fee1                                 ; $5527: $dc $e1 $fe
    ld [bc], a                                    ; $552a: $02
    ld h, a                                       ; $552b: $67
    db $fd                                        ; $552c: $fd
    ld bc, $fbfe                                  ; $552d: $01 $fe $fb
    and b                                         ; $5530: $a0
    db $dd                                        ; $5531: $dd
    nop                                           ; $5532: $00
    add b                                         ; $5533: $80
    rst $38                                       ; $5534: $ff
    bit 0, d                                      ; $5535: $cb $42
    cp $fc                                        ; $5537: $fe $fc
    ld [c], a                                     ; $5539: $e2
    ld [hl], b                                    ; $553a: $70
    sub b                                         ; $553b: $90
    ld [hl], b                                    ; $553c: $70
    sub b                                         ; $553d: $90
    jr nc, jr_07b_5510                            ; $553e: $30 $d0

jr_07b_5540:
    inc b                                         ; $5540: $04
    ei                                            ; $5541: $fb
    nop                                           ; $5542: $00
    inc b                                         ; $5543: $04
    ld d, b                                       ; $5544: $50
    ret nz                                        ; $5545: $c0

    inc bc                                        ; $5546: $03
    inc bc                                        ; $5547: $03
    rrca                                          ; $5548: $0f
    rrca                                          ; $5549: $0f
    ld e, [hl]                                    ; $554a: $5e
    rst $38                                       ; $554b: $ff
    inc e                                         ; $554c: $1c
    ld a, b                                       ; $554d: $78
    jr nc, jr_07b_5540                            ; $554e: $30 $f0

    ld h, b                                       ; $5550: $60
    ld [bc], a                                    ; $5551: $02
    nop                                           ; $5552: $00
    inc bc                                        ; $5553: $03
    sbc $d1                                       ; $5554: $de $d1
    ld h, b                                       ; $5556: $60
    ld b, $06                                     ; $5557: $06 $06
    adc c                                         ; $5559: $89
    adc c                                         ; $555a: $89
    sub [hl]                                      ; $555b: $96
    db $e3                                        ; $555c: $e3
    ldh a, [$b0]                                  ; $555d: $f0 $b0
    ei                                            ; $555f: $fb
    ldh a, [$f0]                                  ; $5560: $f0 $f0
    adc a                                         ; $5562: $8f
    ld b, b                                       ; $5563: $40
    ld [$04fd], sp                                ; $5564: $08 $fd $04
    cp $04                                        ; $5567: $fe $04
    ldh [$cf], a                                  ; $5569: $e0 $cf
    ld hl, $8550                                  ; $556b: $21 $50 $85
    sbc b                                         ; $556e: $98
    ld bc, $01a0                                  ; $556f: $01 $a0 $01
    ld d, c                                       ; $5572: $51
    ld bc, $7f4f                                  ; $5573: $01 $4f $7f
    ld e, a                                       ; $5576: $5f
    rst $30                                       ; $5577: $f7
    ld [hl], b                                    ; $5578: $70
    ccf                                           ; $5579: $3f
    jr nz, jr_07b_5503                            ; $557a: $20 $87

    and b                                         ; $557c: $a0
    ld b, a                                       ; $557d: $47
    ld a, a                                       ; $557e: $7f
    ld c, b                                       ; $557f: $48
    ld [$f8fd], sp                                ; $5580: $08 $fd $f8
    cp $e1                                        ; $5583: $fe $e1
    call z, Call_07b_7cf8                         ; $5585: $cc $f8 $7c
    jr c, @+$40                                   ; $5588: $38 $3e

    ld [$1e77], sp                                ; $558a: $08 $77 $1e
    nop                                           ; $558d: $00
    rst $08                                       ; $558e: $cf
    ld [$28a0], a                                 ; $558f: $ea $a0 $28
    nop                                           ; $5592: $00
    ld d, b                                       ; $5593: $50
    dec de                                        ; $5594: $1b
    adc d                                         ; $5595: $8a
    sbc $0e                                       ; $5596: $de $0e
    add c                                         ; $5598: $81
    rst $00                                       ; $5599: $c7
    add e                                         ; $559a: $83
    db $fc                                        ; $559b: $fc
    ld a, h                                       ; $559c: $7c
    ld [hl], $04                                  ; $559d: $36 $04
    ld [bc], a                                    ; $559f: $02
    ld b, d                                       ; $55a0: $42
    rst $38                                       ; $55a1: $ff
    ld b, d                                       ; $55a2: $42
    add [hl]                                      ; $55a3: $86
    add d                                         ; $55a4: $82
    ld b, $02                                     ; $55a5: $06 $02
    rlca                                          ; $55a7: $07
    rrca                                          ; $55a8: $0f
    ld [$fef6], sp                                ; $55a9: $08 $f6 $fe
    ldh [$09], a                                  ; $55ac: $e0 $09
    ld c, $f0                                     ; $55ae: $0e $f0
    ld h, c                                       ; $55b0: $61
    inc a                                         ; $55b1: $3c
    ld a, [hl]                                    ; $55b2: $7e
    ld a, d                                       ; $55b3: $7a
    ld b, [hl]                                    ; $55b4: $46
    ld a, a                                       ; $55b5: $7f
    add $fa                                       ; $55b6: $c6 $fa
    cp a                                          ; $55b8: $bf
    ld a, a                                       ; $55b9: $7f
    ldh [rSB], a                                  ; $55ba: $e0 $01
    ld h, d                                       ; $55bc: $62
    ld a, h                                       ; $55bd: $7c
    add d                                         ; $55be: $82
    rst $38                                       ; $55bf: $ff
    ld h, b                                       ; $55c0: $60
    ld [hl], b                                    ; $55c1: $70
    ld e, h                                       ; $55c2: $5c
    ld a, a                                       ; $55c3: $7f
    ld b, a                                       ; $55c4: $47
    db $e3                                        ; $55c5: $e3
    and l                                         ; $55c6: $a5
    jp $faef                                      ; $55c7: $c3 $ef $fa


    cp $ef                                        ; $55ca: $fe $ef
    rra                                           ; $55cc: $1f
    ret nc                                        ; $55cd: $d0

    ld h, a                                       ; $55ce: $67
    ld a, b                                       ; $55cf: $78
    ld a, h                                       ; $55d0: $7c
    cp $7f                                        ; $55d1: $fe $7f
    add [hl]                                      ; $55d3: $86
    or d                                          ; $55d4: $b2
    xor $7f                                       ; $55d5: $ee $7f
    ld b, c                                       ; $55d7: $41
    rst $38                                       ; $55d8: $ff
    jr nz, jr_07b_5634                            ; $55d9: $20 $59

    ld b, b                                       ; $55db: $40
    db $fd                                        ; $55dc: $fd
    inc c                                         ; $55dd: $0c
    ld l, [hl]                                    ; $55de: $6e
    dec b                                         ; $55df: $05
    rst $20                                       ; $55e0: $e7
    jr nz, jr_07b_55f2                            ; $55e1: $20 $0f

    nop                                           ; $55e3: $00
    ccf                                           ; $55e4: $3f
    inc b                                         ; $55e5: $04
    ld a, a                                       ; $55e6: $7f
    rst $38                                       ; $55e7: $ff
    ld a, $e1                                     ; $55e8: $3e $e1
    rst $38                                       ; $55ea: $ff
    inc e                                         ; $55eb: $1c
    rra                                           ; $55ec: $1f
    inc bc                                        ; $55ed: $03
    ldh a, [$c0]                                  ; $55ee: $f0 $c0
    ld l, c                                       ; $55f0: $69
    add b                                         ; $55f1: $80

jr_07b_55f2:
    ld l, [hl]                                    ; $55f2: $6e
    ld [bc], a                                    ; $55f3: $02
    dec e                                         ; $55f4: $1d
    ld b, b                                       ; $55f5: $40
    add b                                         ; $55f6: $80
    ld b, $a0                                     ; $55f7: $06 $a0
    cp b                                          ; $55f9: $b8
    sbc a                                         ; $55fa: $9f
    and b                                         ; $55fb: $a0
    ld [c], a                                     ; $55fc: $e2
    db $fc                                        ; $55fd: $fc
    adc h                                         ; $55fe: $8c
    ld h, c                                       ; $55ff: $61
    dec bc                                        ; $5600: $0b
    ld b, b                                       ; $5601: $40
    rlca                                          ; $5602: $07
    cp $fe                                        ; $5603: $fe $fe
    rst $38                                       ; $5605: $ff
    dec c                                         ; $5606: $0d
    jr @+$01                                      ; $5607: $18 $ff

    rra                                           ; $5609: $1f
    ld e, $1f                                     ; $560a: $1e $1f
    db $10                                        ; $560c: $10
    rra                                           ; $560d: $1f
    ld sp, $d23e                                  ; $560e: $31 $3e $d2
    rst $38                                       ; $5611: $ff
    db $dd                                        ; $5612: $dd
    ld de, $1c1e                                  ; $5613: $11 $1e $1c
    rra                                           ; $5616: $1f
    and d                                         ; $5617: $a2
    cp l                                          ; $5618: $bd
    pop bc                                        ; $5619: $c1
    rst $38                                       ; $561a: $ff
    nop                                           ; $561b: $00
    ld b, d                                       ; $561c: $42
    add b                                         ; $561d: $80
    add c                                         ; $561e: $81
    ld a, h                                       ; $561f: $7c
    ld b, b                                       ; $5620: $40
    add e                                         ; $5621: $83
    push bc                                       ; $5622: $c5
    rst $38                                       ; $5623: $ff
    nop                                           ; $5624: $00
    add e                                         ; $5625: $83
    nop                                           ; $5626: $00
    add l                                         ; $5627: $85
    nop                                           ; $5628: $00
    inc bc                                        ; $5629: $03
    ld hl, sp+$7d                                 ; $562a: $f8 $7d
    ei                                            ; $562c: $fb
    inc bc                                        ; $562d: $03
    db $fd                                        ; $562e: $fd
    cp $e0                                        ; $562f: $fe $e0
    rra                                           ; $5631: $1f
    ld [c], a                                     ; $5632: $e2
    db $e3                                        ; $5633: $e3

jr_07b_5634:
    ld e, $fd                                     ; $5634: $1e $fd
    db $fd                                        ; $5636: $fd
    inc bc                                        ; $5637: $03
    add $61                                       ; $5638: $c6 $61
    or d                                          ; $563a: $b2
    ld l, [hl]                                    ; $563b: $6e
    or d                                          ; $563c: $b2
    ld l, [hl]                                    ; $563d: $6e
    dec h                                         ; $563e: $25
    rst $38                                       ; $563f: $ff
    ld c, $96                                     ; $5640: $0e $96
    ld b, c                                       ; $5642: $41
    db $e4                                        ; $5643: $e4
    rst $18                                       ; $5644: $df
    ld l, a                                       ; $5645: $6f
    call nz, $8560                                ; $5646: $c4 $60 $85
    inc bc                                        ; $5649: $03
    add [hl]                                      ; $564a: $86
    ld bc, $63ca                                  ; $564b: $01 $ca $63
    cp $e2                                        ; $564e: $fe $e2
    ld bc, $0407                                  ; $5650: $01 $07 $04
    rrca                                          ; $5653: $0f
    dec bc                                        ; $5654: $0b
    jr @+$12                                      ; $5655: $18 $10

    db $10                                        ; $5657: $10
    db $fd                                        ; $5658: $fd
    db $10                                        ; $5659: $10
    ld a, [bc]                                    ; $565a: $0a
    jr nz, @+$22                                  ; $565b: $20 $20

    inc bc                                        ; $565d: $03
    add a                                         ; $565e: $87
    add b                                         ; $565f: $80
    add b                                         ; $5660: $80
    ld b, b                                       ; $5661: $40

jr_07b_5662:
    rst $38                                       ; $5662: $ff
    ret nz                                        ; $5663: $c0

    and b                                         ; $5664: $a0
    ld h, b                                       ; $5665: $60
    ld hl, sp-$68                                 ; $5666: $f8 $98
    ld a, [hl]                                    ; $5668: $7e

jr_07b_5669:
    ld b, [hl]                                    ; $5669: $46
    ccf                                           ; $566a: $3f
    rst $38                                       ; $566b: $ff
    ld hl, $101f                                  ; $566c: $21 $1f $10
    add l                                         ; $566f: $85
    rst $38                                       ; $5670: $ff
    ld l, b                                       ; $5671: $68
    db $fc                                        ; $5672: $fc
    db $10                                        ; $5673: $10
    ld a, a                                       ; $5674: $7f
    jr jr_07b_568f                                ; $5675: $18 $18

    dec a                                         ; $5677: $3d
    dec a                                         ; $5678: $3d
    ld h, a                                       ; $5679: $67
    ld a, a                                       ; $567a: $7f
    jp $c0c5                                      ; $567b: $c3 $c5 $c0


    rst $38                                       ; $567e: $ff
    jr jr_07b_5662                                ; $567f: $18 $e1

    ld a, [hl]                                    ; $5681: $7e
    and d                                         ; $5682: $a2
    cp l                                          ; $5683: $bd
    and c                                         ; $5684: $a1
    cp [hl]                                       ; $5685: $be
    ldh [rIE], a                                  ; $5686: $e0 $ff
    cp a                                          ; $5688: $bf
    ldh [$7f], a                                  ; $5689: $e0 $7f
    db $e3                                        ; $568b: $e3
    ld a, a                                       ; $568c: $7f
    db $e4                                        ; $568d: $e4
    inc a                                         ; $568e: $3c

jr_07b_568f:
    db $e4                                        ; $568f: $e4
    rst $38                                       ; $5690: $ff
    inc a                                         ; $5691: $3c
    adc b                                         ; $5692: $88
    rlca                                          ; $5693: $07
    add a                                         ; $5694: $87
    nop                                           ; $5695: $00
    ld [bc], a                                    ; $5696: $02
    nop                                           ; $5697: $00
    dec b                                         ; $5698: $05
    cp $fc                                        ; $5699: $fe $fc
    ld [c], a                                     ; $569b: $e2
    add e                                         ; $569c: $83
    add b                                         ; $569d: $80
    add l                                         ; $569e: $85
    add b                                         ; $569f: $80
    jr c, jr_07b_5669                             ; $56a0: $38 $c7

    jp Jump_000_3cff                              ; $56a2: $c3 $ff $3c


    db $f4                                        ; $56a5: $f4
    dec bc                                        ; $56a6: $0b
    ld hl, sp+$07                                 ; $56a7: $f8 $07
    push af                                       ; $56a9: $f5
    dec bc                                        ; $56aa: $0b
    ld sp, hl                                     ; $56ab: $f9
    rst $38                                       ; $56ac: $ff
    rlca                                          ; $56ad: $07
    pop af                                        ; $56ae: $f1
    rrca                                          ; $56af: $0f
    ei                                            ; $56b0: $fb
    ld b, $c8                                     ; $56b1: $06 $c8
    cp a                                          ; $56b3: $bf
    ret                                           ; $56b4: $c9


    cp $fe                                        ; $56b5: $fe $fe
    ldh [$dd], a                                  ; $56b7: $e0 $dd
    cp a                                          ; $56b9: $bf
    sub e                                         ; $56ba: $93
    ld a, a                                       ; $56bb: $7f
    sub d                                         ; $56bc: $92
    ld a, a                                       ; $56bd: $7f
    sub d                                         ; $56be: $92
    rst $20                                       ; $56bf: $e7
    ld a, [hl]                                    ; $56c0: $7e
    ld [hl+], a                                   ; $56c1: $22
    cp $58                                        ; $56c2: $fe $58
    ld h, l                                       ; $56c4: $65
    cp b                                          ; $56c5: $b8
    ld b, l                                       ; $56c6: $45
    jr nc, jr_07b_56e9                            ; $56c7: $30 $20

    ld h, b                                       ; $56c9: $60
    db $fd                                        ; $56ca: $fd
    ld b, b                                       ; $56cb: $40
    cp $e1                                        ; $56cc: $fe $e1
    ld l, b                                       ; $56ce: $68
    ld b, b                                       ; $56cf: $40
    ld [hl], b                                    ; $56d0: $70
    ld b, b                                       ; $56d1: $40
    ld a, b                                       ; $56d2: $78
    ld b, b                                       ; $56d3: $40
    ei                                            ; $56d4: $fb
    ld [hl], h                                    ; $56d5: $74
    ld b, b                                       ; $56d6: $40
    xor c                                         ; $56d7: $a9
    pop bc                                        ; $56d8: $c1
    rlca                                          ; $56d9: $07
    inc b                                         ; $56da: $04
    inc bc                                        ; $56db: $03
    ld [bc], a                                    ; $56dc: $02
    ld bc, $ff3c                                  ; $56dd: $01 $3c $ff
    ldh [$94], a                                  ; $56e0: $e0 $94
    ld b, c                                       ; $56e2: $41
    rst $20                                       ; $56e3: $e7
    inc h                                         ; $56e4: $24
    rst $38                                       ; $56e5: $ff
    inc h                                         ; $56e6: $24
    ld c, e                                       ; $56e7: $4b
    ld b, b                                       ; $56e8: $40

jr_07b_56e9:
    dec l                                         ; $56e9: $2d
    inc hl                                        ; $56ea: $23
    rst $38                                       ; $56eb: $ff
    add b                                         ; $56ec: $80
    ld a, a                                       ; $56ed: $7f
    ld e, c                                       ; $56ee: $59
    db $e4                                        ; $56ef: $e4
    inc a                                         ; $56f0: $3c
    add sp, $38                                   ; $56f1: $e8 $38
    ret z                                         ; $56f3: $c8

    rst $38                                       ; $56f4: $ff
    ld a, b                                       ; $56f5: $78
    ret z                                         ; $56f6: $c8

    ld a, b                                       ; $56f7: $78
    ret nc                                        ; $56f8: $d0

    ld [hl], b                                    ; $56f9: $70
    ld d, b                                       ; $56fa: $50
    ldh a, [$60]                                  ; $56fb: $f0 $60
    cp $7c                                        ; $56fd: $fe $7c
    and b                                         ; $56ff: $a0
    adc e                                         ; $5700: $8b
    add c                                         ; $5701: $81
    sbc [hl]                                      ; $5702: $9e
    sbc [hl]                                      ; $5703: $9e
    ld h, b                                       ; $5704: $60
    ld h, b                                       ; $5705: $60
    inc bc                                        ; $5706: $03
    ei                                            ; $5707: $fb
    inc bc                                        ; $5708: $03
    inc c                                         ; $5709: $0c
    ld a, d                                       ; $570a: $7a
    and b                                         ; $570b: $a0
    inc bc                                        ; $570c: $03
    inc bc                                        ; $570d: $03
    inc b                                         ; $570e: $04
    inc b                                         ; $570f: $04
    di                                            ; $5710: $f3
    rst $38                                       ; $5711: $ff
    adc [hl]                                      ; $5712: $8e
    ld a, e                                       ; $5713: $7b
    ld b, [hl]                                    ; $5714: $46
    di                                            ; $5715: $f3
    adc $26                                       ; $5716: $ce $26
    dec a                                         ; $5718: $3d
    ld [hl], $ff                                  ; $5719: $36 $ff
    dec l                                         ; $571b: $2d
    db $ec                                        ; $571c: $ec
    db $db                                        ; $571d: $db
    inc a                                         ; $571e: $3c
    dec hl                                        ; $571f: $2b
    ld a, b                                       ; $5720: $78
    ld [hl], a                                    ; $5721: $77
    ld [hl+], a                                   ; $5722: $22
    rst $38                                       ; $5723: $ff
    cp $22                                        ; $5724: $fe $22
    cp $44                                        ; $5726: $fe $44
    cp $44                                        ; $5728: $fe $44
    db $fc                                        ; $572a: $fc
    ld b, h                                       ; $572b: $44
    rst $38                                       ; $572c: $ff
    db $fc                                        ; $572d: $fc
    add h                                         ; $572e: $84
    db $fc                                        ; $572f: $fc
    adc b                                         ; $5730: $88
    db $fc                                        ; $5731: $fc
    adc b                                         ; $5732: $88
    ld hl, sp+$7a                                 ; $5733: $f8 $7a
    rst $18                                       ; $5735: $df
    ld b, b                                       ; $5736: $40
    ld a, l                                       ; $5737: $7d
    ld h, b                                       ; $5738: $60
    ld a, [hl]                                    ; $5739: $7e
    ld h, b                                       ; $573a: $60
    db $fc                                        ; $573b: $fc
    ldh [$50], a                                  ; $573c: $e0 $50
    ld a, a                                       ; $573e: $7f
    or $fe                                        ; $573f: $f6 $fe
    ldh [rIE], a                                  ; $5741: $e0 $ff
    adc c                                         ; $5743: $89
    jr nc, @+$43                                  ; $5744: $30 $41

    adc a                                         ; $5746: $8f
    rlca                                          ; $5747: $07
    jr c, jr_07b_5762                             ; $5748: $38 $18

    cp $79                                        ; $574a: $fe $79
    jr nz, jr_07b_578e                            ; $574c: $20 $40

    ldh [$c0], a                                  ; $574e: $e0 $c0
    ldh a, [$e0]                                  ; $5750: $f0 $e0
    ld l, $2e                                     ; $5752: $2e $2e
    ld sp, hl                                     ; $5754: $f9
    ldh a, [$5c]                                  ; $5755: $f0 $5c
    ld c, d                                       ; $5757: $4a
    db $10                                        ; $5758: $10
    ld b, l                                       ; $5759: $45
    ld bc, $0700                                  ; $575a: $01 $00 $07
    inc bc                                        ; $575d: $03
    inc e                                         ; $575e: $1c
    cp a                                          ; $575f: $bf
    inc c                                         ; $5760: $0c
    ld a, b                                       ; $5761: $78

jr_07b_5762:
    jr c, @+$03                                   ; $5762: $38 $01

    ld bc, $6402                                  ; $5764: $01 $02 $64
    ldh [rNR34], a                                ; $5767: $e0 $1e
    db $fd                                        ; $5769: $fd
    rra                                           ; $576a: $1f
    ld l, c                                       ; $576b: $69
    ld h, c                                       ; $576c: $61
    add b                                         ; $576d: $80
    rst $38                                       ; $576e: $ff
    ld a, h                                       ; $576f: $7c
    ld a, a                                       ; $5770: $7f
    cp c                                          ; $5771: $b9
    or a                                          ; $5772: $b7
    rst $30                                       ; $5773: $f7
    ld d, c                                       ; $5774: $51
    ld a, a                                       ; $5775: $7f
    adc [hl]                                      ; $5776: $8e
    ld l, [hl]                                    ; $5777: $6e
    nop                                           ; $5778: $00
    ld bc, $06ff                                  ; $5779: $01 $ff $06
    cp $7f                                        ; $577c: $fe $7f
    ld [$10f8], sp                                ; $577e: $08 $f8 $10
    ldh a, [$08]                                  ; $5781: $f0 $08
    ld hl, sp-$08                                 ; $5783: $f8 $f8
    ld a, [$7ce0]                                 ; $5785: $fa $e0 $7c
    ld h, [hl]                                    ; $5788: $66
    pop hl                                        ; $5789: $e1
    sub $23                                       ; $578a: $d6 $23
    adc e                                         ; $578c: $8b
    rst $38                                       ; $578d: $ff

jr_07b_578e:
    add h                                         ; $578e: $84
    rst $38                                       ; $578f: $ff
    ld b, e                                       ; $5790: $43
    ld e, $68                                     ; $5791: $1e $68
    ccf                                           ; $5793: $3f
    ld hl, sp-$10                                 ; $5794: $f8 $f0
    db $fc                                        ; $5796: $fc
    ld hl, sp-$39                                 ; $5797: $f8 $c7
    cp $68                                        ; $5799: $fe $68
    add b                                         ; $579b: $80
    ld a, b                                       ; $579c: $78
    and b                                         ; $579d: $a0
    cp l                                          ; $579e: $bd
    ld a, a                                       ; $579f: $7f
    ret z                                         ; $57a0: $c8

    pop hl                                        ; $57a1: $e1
    nop                                           ; $57a2: $00
    rrca                                          ; $57a3: $0f
    inc bc                                        ; $57a4: $03
    db $fc                                        ; $57a5: $fc

jr_07b_57a6:
    or d                                          ; $57a6: $b2
    ld [c], a                                     ; $57a7: $e2
    ld a, a                                       ; $57a8: $7f
    cp $a2                                        ; $57a9: $fe $a2
    ld hl, $c8ff                                  ; $57ab: $21 $ff $c8
    ld hl, sp+$09                                 ; $57ae: $f8 $09
    ld sp, hl                                     ; $57b0: $f9

jr_07b_57b1:
    ld c, $fe                                     ; $57b1: $0e $fe
    rst $38                                       ; $57b3: $ff
    jr nc, jr_07b_57a6                            ; $57b4: $30 $f0

    ret                                           ; $57b6: $c9


    ld sp, hl                                     ; $57b7: $f9
    ld a, [bc]                                    ; $57b8: $0a
    ei                                            ; $57b9: $fb
    inc c                                         ; $57ba: $0c
    rst $38                                       ; $57bb: $ff
    ld a, l                                       ; $57bc: $7d
    ld [$e0c4], sp                                ; $57bd: $08 $c4 $e0

Jump_07b_57c0:
    ret nz                                        ; $57c0: $c0

    rst $38                                       ; $57c1: $ff
    ld a, b                                       ; $57c2: $78
    ld a, a                                       ; $57c3: $7f
    rst $08                                       ; $57c4: $cf
    rst $28                                       ; $57c5: $ef
    and b                                         ; $57c6: $a0
    ld a, a                                       ; $57c7: $7f
    jr jr_07b_57b1                                ; $57c8: $18 $e7

    inc l                                         ; $57ca: $2c
    db $d3                                        ; $57cb: $d3
    ld e, h                                       ; $57cc: $5c
    and e                                         ; $57cd: $a3
    ldh [$d8], a                                  ; $57ce: $e0 $d8
    ld [bc], a                                    ; $57d0: $02
    inc a                                         ; $57d1: $3c
    sbc [hl]                                      ; $57d2: $9e
    add b                                         ; $57d3: $80
    jp nc, Jump_000_2000                          ; $57d4: $d2 $00 $20

    ldh [rNR10], a                                ; $57d7: $e0 $10
    ldh a, [$89]                                  ; $57d9: $f0 $89
    ld b, h                                       ; $57db: $44
    ld sp, hl                                     ; $57dc: $f9
    and $00                                       ; $57dd: $e6 $00
    nop                                           ; $57df: $00
    nop                                           ; $57e0: $00
    dec b                                         ; $57e1: $05
    ld [$f0ff], sp                                ; $57e2: $08 $ff $f0
    ld a, [bc]                                    ; $57e5: $0a
    rst $38                                       ; $57e6: $ff
    add sp, -$20                                  ; $57e7: $e8 $e0
    rst $38                                       ; $57e9: $ff
    ldh [rIE], a                                  ; $57ea: $e0 $ff
    ldh [$f9], a                                  ; $57ec: $e0 $f9
    call nc, $b1e1                                ; $57ee: $d4 $e1 $b1
    add hl, bc                                    ; $57f1: $09
    rst $38                                       ; $57f2: $ff
    add sp, -$1c                                  ; $57f3: $e8 $e4
    db $ed                                        ; $57f5: $ed
    ldh [$e5], a                                  ; $57f6: $e0 $e5
    ld [$e008], sp                                ; $57f8: $08 $08 $e0
    ld a, [$4f0c]                                 ; $57fb: $fa $0c $4f
    dec bc                                        ; $57fe: $0b
    dec bc                                        ; $57ff: $0b
    ld a, [bc]                                    ; $5800: $0a
    ld c, c                                       ; $5801: $49
    ldh [$fc], a                                  ; $5802: $e0 $fc
    rst $38                                       ; $5804: $ff
    ld a, [c]                                     ; $5805: $f2
    rrca                                          ; $5806: $0f
    ld d, e                                       ; $5807: $53
    db $e3                                        ; $5808: $e3
    ld hl, $ff0b                                  ; $5809: $21 $0b $ff
    ldh [$e0], a                                  ; $580c: $e0 $e0
    di                                            ; $580e: $f3
    rst $38                                       ; $580f: $ff
    ldh [$e0], a                                  ; $5810: $e0 $e0
    db $e4                                        ; $5812: $e4
    dec c                                         ; $5813: $0d
    rst $38                                       ; $5814: $ff
    pop hl                                        ; $5815: $e1
    ldh a, [$e4]                                  ; $5816: $f0 $e4
    ld b, $e0                                     ; $5818: $06 $e0
    rst $28                                       ; $581a: $ef
    ld c, $0e                                     ; $581b: $0e $0e
    ldh [$f6], a                                  ; $581d: $e0 $f6
    cp h                                          ; $581f: $bc
    ldh [$e0], a                                  ; $5820: $e0 $e0
    ldh [$c1], a                                  ; $5822: $e0 $c1
    ld [c], a                                     ; $5824: $e2
    ldh [$f5], a                                  ; $5825: $e0 $f5
    inc bc                                        ; $5827: $03
    dec c                                         ; $5828: $0d
    ld c, $ff                                     ; $5829: $0e $ff
    ldh [$e0], a                                  ; $582b: $e0 $e0
    ld sp, hl                                     ; $582d: $f9
    add e                                         ; $582e: $83
    ldh [$9f], a                                  ; $582f: $e0 $9f
    pop hl                                        ; $5831: $e1
    or c                                          ; $5832: $b1
    ld [c], a                                     ; $5833: $e2
    and b                                         ; $5834: $a0
    rst $18                                       ; $5835: $df
    add b                                         ; $5836: $80
    ldh [rIE], a                                  ; $5837: $e0 $ff
    ldh [rIE], a                                  ; $5839: $e0 $ff
    ldh [rIE], a                                  ; $583b: $e0 $ff
    ldh [rIE], a                                  ; $583d: $e0 $ff
    ldh [rIE], a                                  ; $583f: $e0 $ff
    nop                                           ; $5841: $00
    rst $18                                       ; $5842: $df
    nop                                           ; $5843: $00
    sbc $2a                                       ; $5844: $de $2a
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    call nz, $bde0                                ; $5848: $c4 $e0 $bd
    nop                                           ; $584b: $00
    call c, $c121                                 ; $584c: $dc $21 $c1
    nop                                           ; $584f: $00
    reti                                          ; $5850: $d9


    ld b, b                                       ; $5851: $40
    rst $10                                       ; $5852: $d7
    ret nz                                        ; $5853: $c0

    and c                                         ; $5854: $a1
    ld bc, $00c4                                  ; $5855: $01 $c4 $00
    nop                                           ; $5858: $00
    sub $e0                                       ; $5859: $d6 $e0
    db $fd                                        ; $585b: $fd
    ldh [$bd], a                                  ; $585c: $e0 $bd
    rst $38                                       ; $585e: $ff
    db $e4                                        ; $585f: $e4
    nop                                           ; $5860: $00
    rst $18                                       ; $5861: $df
    add b                                         ; $5862: $80
    rst $18                                       ; $5863: $df
    ldh [$ea], a                                  ; $5864: $e0 $ea
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    dec b                                         ; $5869: $05
    reti                                          ; $586a: $d9


    rst $38                                       ; $586b: $ff
    ldh a, [rP1]                                  ; $586c: $f0 $00
    rst $38                                       ; $586e: $ff
    add sp, -$20                                  ; $586f: $e8 $e0
    rst $38                                       ; $5871: $ff
    ldh [rIE], a                                  ; $5872: $e0 $ff
    ldh [$f9], a                                  ; $5874: $e0 $f9
    call nc, $e7e6                                ; $5876: $d4 $e6 $e7
    ld bc, $0302                                  ; $5879: $01 $02 $03
    add sp, -$0e                                  ; $587c: $e8 $f2
    or e                                          ; $587e: $b3
    ldh [rDIV], a                                 ; $587f: $e0 $04
    dec b                                         ; $5881: $05
    ld b, $df                                     ; $5882: $06 $df
    rlca                                          ; $5884: $07
    ld [$0a09], sp                                ; $5885: $08 $09 $0a
    dec bc                                        ; $5888: $0b
    ret z                                         ; $5889: $c8

    pop af                                        ; $588a: $f1
    inc c                                         ; $588b: $0c
    dec c                                         ; $588c: $0d
    rst $38                                       ; $588d: $ff
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    ld c, $0f                                     ; $5890: $0e $0f
    db $10                                        ; $5892: $10
    ld de, $1312                                  ; $5893: $11 $12 $13
    push af                                       ; $5896: $f5
    inc d                                         ; $5897: $14
    ret nz                                        ; $5898: $c0

    push hl                                       ; $5899: $e5
    dec d                                         ; $589a: $15
    add b                                         ; $589b: $80
    jp hl                                         ; $589c: $e9


    ld d, $17                                     ; $589d: $16 $17
    jr jr_07b_58ba                                ; $589f: $18 $19

    rst $38                                       ; $58a1: $ff
    ld a, [de]                                    ; $58a2: $1a
    dec de                                        ; $58a3: $1b
    inc e                                         ; $58a4: $1c
    dec e                                         ; $58a5: $1d
    ld e, $1f                                     ; $58a6: $1e $1f
    jr nz, jr_07b_58cb                            ; $58a8: $20 $21

    cp e                                          ; $58aa: $bb
    ld [hl+], a                                   ; $58ab: $22
    inc hl                                        ; $58ac: $23
    ld h, [hl]                                    ; $58ad: $66
    ldh [rNR50], a                                ; $58ae: $e0 $24
    dec h                                         ; $58b0: $25
    ld h, $60                                     ; $58b1: $26 $60
    jp hl                                         ; $58b3: $e9


    daa                                           ; $58b4: $27
    rst $38                                       ; $58b5: $ff
    jr z, jr_07b_58e1                             ; $58b6: $28 $29

    ld a, [hl+]                                   ; $58b8: $2a
    dec hl                                        ; $58b9: $2b

jr_07b_58ba:
    nop                                           ; $58ba: $00
    inc l                                         ; $58bb: $2c
    dec l                                         ; $58bc: $2d
    ld l, $ff                                     ; $58bd: $2e $ff
    cpl                                           ; $58bf: $2f
    jr nc, jr_07b_58f3                            ; $58c0: $30 $31

    jr z, jr_07b_58ec                             ; $58c2: $28 $28

    ld [hl-], a                                   ; $58c4: $32
    inc sp                                        ; $58c5: $33
    inc [hl]                                      ; $58c6: $34
    rst $30                                       ; $58c7: $f7
    dec [hl]                                      ; $58c8: $35
    ld [hl], $28                                  ; $58c9: $36 $28

jr_07b_58cb:
    ld b, b                                       ; $58cb: $40
    jp hl                                         ; $58cc: $e9


    scf                                           ; $58cd: $37
    jr c, jr_07b_58d0                             ; $58ce: $38 $00

jr_07b_58d0:
    nop                                           ; $58d0: $00
    rst $38                                       ; $58d1: $ff
    add hl, sp                                    ; $58d2: $39
    ld a, [hl-]                                   ; $58d3: $3a
    dec sp                                        ; $58d4: $3b
    inc a                                         ; $58d5: $3c
    dec a                                         ; $58d6: $3d
    ld a, $3f                                     ; $58d7: $3e $3f
    ld b, b                                       ; $58d9: $40
    rst $38                                       ; $58da: $ff
    ld b, c                                       ; $58db: $41
    ld b, d                                       ; $58dc: $42
    ld b, e                                       ; $58dd: $43
    ld b, h                                       ; $58de: $44
    nop                                           ; $58df: $00
    nop                                           ; $58e0: $00

jr_07b_58e1:
    ld b, l                                       ; $58e1: $45
    ld b, [hl]                                    ; $58e2: $46
    cp $20                                        ; $58e3: $fe $20
    jp hl                                         ; $58e5: $e9


    ld b, a                                       ; $58e6: $47
    ld c, b                                       ; $58e7: $48
    ld c, c                                       ; $58e8: $49
    ld c, d                                       ; $58e9: $4a
    jr z, jr_07b_5914                             ; $58ea: $28 $28

jr_07b_58ec:
    jr z, @+$01                                   ; $58ec: $28 $ff

    ld c, e                                       ; $58ee: $4b
    ld c, h                                       ; $58ef: $4c
    ld c, l                                       ; $58f0: $4d
    ld c, [hl]                                    ; $58f1: $4e
    ld c, a                                       ; $58f2: $4f

jr_07b_58f3:
    ld d, b                                       ; $58f3: $50
    ld d, c                                       ; $58f4: $51
    ld d, d                                       ; $58f5: $52
    rst $18                                       ; $58f6: $df
    ld d, e                                       ; $58f7: $53
    nop                                           ; $58f8: $00
    ld d, h                                       ; $58f9: $54
    ld d, l                                       ; $58fa: $55
    ld d, [hl]                                    ; $58fb: $56
    nop                                           ; $58fc: $00
    jp hl                                         ; $58fd: $e9


    ld d, a                                       ; $58fe: $57
    ld e, b                                       ; $58ff: $58
    rst $38                                       ; $5900: $ff
    ld e, c                                       ; $5901: $59
    ld e, d                                       ; $5902: $5a
    ld e, e                                       ; $5903: $5b
    ld e, h                                       ; $5904: $5c
    nop                                           ; $5905: $00
    ld e, l                                       ; $5906: $5d
    ld e, [hl]                                    ; $5907: $5e
    ld e, a                                       ; $5908: $5f
    rst $38                                       ; $5909: $ff
    ld h, b                                       ; $590a: $60
    ld h, c                                       ; $590b: $61
    ld h, d                                       ; $590c: $62
    ld h, e                                       ; $590d: $63
    ld h, h                                       ; $590e: $64
    ld h, l                                       ; $590f: $65
    ld h, [hl]                                    ; $5910: $66
    ld h, a                                       ; $5911: $67
    ei                                            ; $5912: $fb
    ld l, b                                       ; $5913: $68

jr_07b_5914:
    ld l, c                                       ; $5914: $69
    ldh [$c9], a                                  ; $5915: $e0 $c9
    ld l, d                                       ; $5917: $6a
    ld l, e                                       ; $5918: $6b
    ld l, h                                       ; $5919: $6c
    ld l, l                                       ; $591a: $6d
    ld l, [hl]                                    ; $591b: $6e
    rst $38                                       ; $591c: $ff
    ld l, a                                       ; $591d: $6f
    ld [hl], b                                    ; $591e: $70
    ld [hl], c                                    ; $591f: $71
    ld [hl], d                                    ; $5920: $72
    ld [hl], e                                    ; $5921: $73
    ld [hl], h                                    ; $5922: $74
    ld [hl], l                                    ; $5923: $75
    halt                                          ; $5924: $76
    ld a, a                                       ; $5925: $7f
    ld [hl], a                                    ; $5926: $77
    ld a, b                                       ; $5927: $78
    ld a, c                                       ; $5928: $79
    ld a, d                                       ; $5929: $7a
    ld a, e                                       ; $592a: $7b
    ld a, h                                       ; $592b: $7c
    ld a, l                                       ; $592c: $7d
    ret nz                                        ; $592d: $c0

    ret                                           ; $592e: $c9


    rst $38                                       ; $592f: $ff
    ld a, [hl]                                    ; $5930: $7e
    ld a, a                                       ; $5931: $7f
    add b                                         ; $5932: $80
    add c                                         ; $5933: $81
    add d                                         ; $5934: $82
    add e                                         ; $5935: $83
    add h                                         ; $5936: $84
    add l                                         ; $5937: $85
    rst $38                                       ; $5938: $ff
    add [hl]                                      ; $5939: $86
    add a                                         ; $593a: $87
    adc b                                         ; $593b: $88
    adc c                                         ; $593c: $89
    adc d                                         ; $593d: $8a
    adc e                                         ; $593e: $8b
    adc h                                         ; $593f: $8c
    adc l                                         ; $5940: $8d
    rrca                                          ; $5941: $0f
    adc [hl]                                      ; $5942: $8e
    adc a                                         ; $5943: $8f
    sub b                                         ; $5944: $90
    sub c                                         ; $5945: $91
    and b                                         ; $5946: $a0
    rst $18                                       ; $5947: $df
    ldh [rIE], a                                  ; $5948: $e0 $ff
    ldh [rIE], a                                  ; $594a: $e0 $ff
    ldh [rIE], a                                  ; $594c: $e0 $ff
    ret c                                         ; $594e: $d8

    ldh [rIE], a                                  ; $594f: $e0 $ff
    ldh [rIE], a                                  ; $5951: $e0 $ff
    call nc, $92e6                                ; $5953: $d4 $e6 $92
    sub e                                         ; $5956: $93
    ld bc, $00d5                                  ; $5957: $01 $d5 $00
    sub h                                         ; $595a: $94
    ld a, a                                       ; $595b: $7f
    sub l                                         ; $595c: $95
    sub [hl]                                      ; $595d: $96
    sub a                                         ; $595e: $97
    sbc b                                         ; $595f: $98
    sbc c                                         ; $5960: $99
    sbc d                                         ; $5961: $9a
    sbc e                                         ; $5962: $9b
    nop                                           ; $5963: $00
    call nc, Call_000_03ff                        ; $5964: $d4 $ff $03
    sbc h                                         ; $5967: $9c
    sbc l                                         ; $5968: $9d
    sbc [hl]                                      ; $5969: $9e
    sbc a                                         ; $596a: $9f
    and b                                         ; $596b: $a0
    and c                                         ; $596c: $a1
    and d                                         ; $596d: $a2
    db $fc                                        ; $596e: $fc
    adc c                                         ; $596f: $89
    push hl                                       ; $5970: $e5
    nop                                           ; $5971: $00
    call $a4a3                                    ; $5972: $cd $a3 $a4
    and l                                         ; $5975: $a5
    and [hl]                                      ; $5976: $a6
    and a                                         ; $5977: $a7
    xor b                                         ; $5978: $a8
    rst $30                                       ; $5979: $f7
    xor c                                         ; $597a: $a9
    xor d                                         ; $597b: $aa
    xor e                                         ; $597c: $ab
    nop                                           ; $597d: $00
    rst $10                                       ; $597e: $d7
    xor h                                         ; $597f: $ac
    xor l                                         ; $5980: $ad
    xor [hl]                                      ; $5981: $ae
    xor a                                         ; $5982: $af
    rst $28                                       ; $5983: $ef
    or b                                          ; $5984: $b0
    or c                                          ; $5985: $b1
    or d                                          ; $5986: $b2
    or e                                          ; $5987: $b3
    nop                                           ; $5988: $00
    push de                                       ; $5989: $d5
    or h                                          ; $598a: $b4
    or l                                          ; $598b: $b5
    or [hl]                                       ; $598c: $b6
    ccf                                           ; $598d: $3f
    or a                                          ; $598e: $b7
    cp b                                          ; $598f: $b8
    cp c                                          ; $5990: $b9
    cp d                                          ; $5991: $ba
    cp e                                          ; $5992: $bb
    cp h                                          ; $5993: $bc
    dec h                                         ; $5994: $25
    ldh [rP1], a                                  ; $5995: $e0 $00
    jp nc, $bdff                                  ; $5997: $d2 $ff $bd

    cp [hl]                                       ; $599a: $be
    cp a                                          ; $599b: $bf
    ret nz                                        ; $599c: $c0

    pop bc                                        ; $599d: $c1
    jp nz, $c4c3                                  ; $599e: $c2 $c3 $c4

    db $fd                                        ; $59a1: $fd
    nop                                           ; $59a2: $00
    nop                                           ; $59a3: $00
    call nc, $c6c5                                ; $59a4: $d4 $c5 $c6
    rst $00                                       ; $59a7: $c7
    ret z                                         ; $59a8: $c8

    ret                                           ; $59a9: $c9


    jp z, $cbf7                                   ; $59aa: $ca $f7 $cb

    nop                                           ; $59ad: $00
    nop                                           ; $59ae: $00
    nop                                           ; $59af: $00
    call nc, $cdcc                                ; $59b0: $d4 $cc $cd
    adc $cf                                       ; $59b3: $ce $cf
    rst $18                                       ; $59b5: $df
    ret nc                                        ; $59b6: $d0

    pop de                                        ; $59b7: $d1
    jp nc, $0000                                  ; $59b8: $d2 $00 $00

    nop                                           ; $59bb: $00
    call nc, $d4d3                                ; $59bc: $d4 $d3 $d4
    ccf                                           ; $59bf: $3f
    push de                                       ; $59c0: $d5
    sub $d7                                       ; $59c1: $d6 $d7
    ret c                                         ; $59c3: $d8

    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    nop                                           ; $59c6: $00
    rst $18                                       ; $59c7: $df
    add b                                         ; $59c8: $80
    rst $18                                       ; $59c9: $df
    nop                                           ; $59ca: $00
    add b                                         ; $59cb: $80
    adc d                                         ; $59cc: $8a
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    nop                                           ; $59cf: $00
    ret c                                         ; $59d0: $d8

    ld e, c                                       ; $59d1: $59
    jr jr_07b_5a2e                                ; $59d2: $18 $5a

    add e                                         ; $59d4: $83
    ld h, l                                       ; $59d5: $65
    ld hl, $ee66                                  ; $59d6: $21 $66 $ee
    ld l, e                                       ; $59d9: $6b
    rst $38                                       ; $59da: $ff
    ld l, a                                       ; $59db: $6f
    adc $39                                       ; $59dc: $ce $39
    nop                                           ; $59de: $00
    nop                                           ; $59df: $00
    rst $18                                       ; $59e0: $df
    ld e, a                                       ; $59e1: $5f
    cp a                                          ; $59e2: $bf
    nop                                           ; $59e3: $00
    ld [hl], c                                    ; $59e4: $71
    nop                                           ; $59e5: $00
    nop                                           ; $59e6: $00
    nop                                           ; $59e7: $00
    rst $18                                       ; $59e8: $df
    ld e, a                                       ; $59e9: $5f
    ld c, c                                       ; $59ea: $49
    rrca                                          ; $59eb: $0f
    ld [bc], a                                    ; $59ec: $02
    ld [bc], a                                    ; $59ed: $02
    ldh [rP1], a                                  ; $59ee: $e0 $00
    rst $18                                       ; $59f0: $df
    ld e, a                                       ; $59f1: $5f
    cp a                                          ; $59f2: $bf
    nop                                           ; $59f3: $00
    add b                                         ; $59f4: $80
    ld a, l                                       ; $59f5: $7d
    nop                                           ; $59f6: $00
    nop                                           ; $59f7: $00
    rst $18                                       ; $59f8: $df
    ld e, a                                       ; $59f9: $5f
    rst $18                                       ; $59fa: $df
    ld c, $5f                                     ; $59fb: $0e $5f
    ld bc, $0000                                  ; $59fd: $01 $00 $00
    add b                                         ; $5a00: $80
    ld a, l                                       ; $5a01: $7d
    ld a, $2a                                     ; $5a02: $3e $2a
    rst $18                                       ; $5a04: $df
    ld e, a                                       ; $5a05: $5f
    nop                                           ; $5a06: $00
    nop                                           ; $5a07: $00
    rst $18                                       ; $5a08: $df
    ld e, a                                       ; $5a09: $5f
    rst $18                                       ; $5a0a: $df
    ld c, $bf                                     ; $5a0b: $0e $bf
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    rst $18                                       ; $5a10: $df
    ld e, a                                       ; $5a11: $5f
    ld a, $2a                                     ; $5a12: $3e $2a
    cp a                                          ; $5a14: $bf
    nop                                           ; $5a15: $00
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    ei                                            ; $5a18: $fb
    nop                                           ; $5a19: $00
    rst $38                                       ; $5a1a: $ff
    cp $e2                                        ; $5a1b: $fe $e2
    rlca                                          ; $5a1d: $07
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    ld b, b                                       ; $5a21: $40
    rst $08                                       ; $5a22: $cf
    nop                                           ; $5a23: $00
    xor b                                         ; $5a24: $a8
    nop                                           ; $5a25: $00
    ld d, l                                       ; $5a26: $55
    ldh a, [$e4]                                  ; $5a27: $f0 $e4
    ld [$7fe1], a                                 ; $5a29: $ea $e1 $7f
    nop                                           ; $5a2c: $00
    add a                                         ; $5a2d: $87

jr_07b_5a2e:
    ccf                                           ; $5a2e: $3f
    nop                                           ; $5a2f: $00
    ld e, a                                       ; $5a30: $5f
    ldh a, [$e8]                                  ; $5a31: $f0 $e8
    sub $e2                                       ; $5a33: $d6 $e2
    rst $38                                       ; $5a35: $ff
    db $ed                                        ; $5a36: $ed
    ldh [$eb], a                                  ; $5a37: $e0 $eb
    rra                                           ; $5a39: $1f
    ld a, [$ecd2]                                 ; $5a3a: $fa $d2 $ec
    ldh a, [$c2]                                  ; $5a3d: $f0 $c2
    db $ec                                        ; $5a3f: $ec
    nop                                           ; $5a40: $00
    push de                                       ; $5a41: $d5
    nop                                           ; $5a42: $00
    xor d                                         ; $5a43: $aa
    nop                                           ; $5a44: $00
    cp c                                          ; $5a45: $b9
    dec b                                         ; $5a46: $05
    sub h                                         ; $5a47: $94
    ldh [$fd], a                                  ; $5a48: $e0 $fd
    pop hl                                        ; $5a4a: $e1
    dec d                                         ; $5a4b: $15
    nop                                           ; $5a4c: $00
    ld [bc], a                                    ; $5a4d: $02
    adc d                                         ; $5a4e: $8a
    ldh [$a7], a                                  ; $5a4f: $e0 $a7
    ei                                            ; $5a51: $fb
    nop                                           ; $5a52: $00
    ld d, e                                       ; $5a53: $53
    adc b                                         ; $5a54: $88
    ldh [$15], a                                  ; $5a55: $e0 $15
    nop                                           ; $5a57: $00
    ld a, [bc]                                    ; $5a58: $0a
    nop                                           ; $5a59: $00
    ld b, l                                       ; $5a5a: $45
    db $fc                                        ; $5a5b: $fc
    db $e4                                        ; $5a5c: $e4
    ldh [$80], a                                  ; $5a5d: $e0 $80
    db $e3                                        ; $5a5f: $e3
    ld a, a                                       ; $5a60: $7f
    nop                                           ; $5a61: $00
    rrca                                          ; $5a62: $0f
    nop                                           ; $5a63: $00
    and e                                         ; $5a64: $a3
    nop                                           ; $5a65: $00
    pop af                                        ; $5a66: $f1
    ld d, h                                       ; $5a67: $54
    ldh a, [$e6]                                  ; $5a68: $f0 $e6
    ld l, [hl]                                    ; $5a6a: $6e
    jp hl                                         ; $5a6b: $e9


    ld h, b                                       ; $5a6c: $60
    and $01                                       ; $5a6d: $e6 $01
    rst $38                                       ; $5a6f: $ff
    inc bc                                        ; $5a70: $03
    rst $38                                       ; $5a71: $ff
    rst $38                                       ; $5a72: $ff
    inc b                                         ; $5a73: $04
    db $fc                                        ; $5a74: $fc
    ld bc, $07ff                                  ; $5a75: $01 $ff $07
    cp $1f                                        ; $5a78: $fe $1f
    ld hl, sp-$31                                 ; $5a7a: $f8 $cf
    ld a, a                                       ; $5a7c: $7f
    ldh [rIE], a                                  ; $5a7d: $e0 $ff
    add b                                         ; $5a7f: $80
    ld [hl], h                                    ; $5a80: $74
    ldh [$3b], a                                  ; $5a81: $e0 $3b
    ldh [rIE], a                                  ; $5a83: $e0 $ff
    ldh [$be], a                                  ; $5a85: $e0 $be
    ld c, a                                       ; $5a87: $4f
    add sp, -$20                                  ; $5a88: $e8 $e0
    rra                                           ; $5a8a: $1f

jr_07b_5a8b:
    jr jr_07b_5a8b                                ; $5a8b: $18 $fe

    rrca                                          ; $5a8d: $0f
    rst $10                                       ; $5a8e: $d7
    ldh [rP1], a                                  ; $5a8f: $e0 $00
    rst $08                                       ; $5a91: $cf
    cp $01                                        ; $5a92: $fe $01
    db $fd                                        ; $5a94: $fd
    ld [bc], a                                    ; $5a95: $02
    db $fc                                        ; $5a96: $fc
    db $e3                                        ; $5a97: $e3
    db $10                                        ; $5a98: $10
    pop hl                                        ; $5a99: $e1
    add b                                         ; $5a9a: $80
    rst $38                                       ; $5a9b: $ff
    rst $38                                       ; $5a9c: $ff
    ret nz                                        ; $5a9d: $c0

    ld a, a                                       ; $5a9e: $7f
    ldh [$bf], a                                  ; $5a9f: $e0 $bf
    ldh a, [$5f]                                  ; $5aa1: $f0 $5f
    ldh a, [$bf]                                  ; $5aa3: $f0 $bf
    db $fd                                        ; $5aa5: $fd
    ld hl, sp+$20                                 ; $5aa6: $f8 $20
    jp hl                                         ; $5aa8: $e9


    db $fd                                        ; $5aa9: $fd

jr_07b_5aaa:
    nop                                           ; $5aaa: $00
    ld a, [$f500]                                 ; $5aab: $fa $00 $f5
    nop                                           ; $5aae: $00
    ld [hl], l                                    ; $5aaf: $75
    cp $f8                                        ; $5ab0: $fe $f8
    ldh [$ea], a                                  ; $5ab2: $e0 $ea
    ld e, b                                       ; $5ab4: $58
    ld [c], a                                     ; $5ab5: $e2
    ld d, h                                       ; $5ab6: $54
    nop                                           ; $5ab7: $00
    and b                                         ; $5ab8: $a0
    db $ec                                        ; $5ab9: $ec
    ret nz                                        ; $5aba: $c0

    and h                                         ; $5abb: $a4
    ld l, h                                       ; $5abc: $6c
    pop hl                                        ; $5abd: $e1
    ld l, b                                       ; $5abe: $68
    pop hl                                        ; $5abf: $e1
    add b                                         ; $5ac0: $80
    ld c, d                                       ; $5ac1: $4a
    db $e4                                        ; $5ac2: $e4
    ld sp, hl                                     ; $5ac3: $f9
    db $ed                                        ; $5ac4: $ed
    xor d                                         ; $5ac5: $aa
    jr c, jr_07b_5aaa                             ; $5ac6: $38 $e2

    ld bc, $e2ba                                  ; $5ac8: $01 $ba $e2
    and $bf                                       ; $5acb: $e6 $bf
    call z, $afc0                                 ; $5acd: $cc $c0 $af
    nop                                           ; $5ad0: $00
    ld d, a                                       ; $5ad1: $57
    db $fc                                        ; $5ad2: $fc
    ldh [rNR22], a                                ; $5ad3: $e0 $17
    di                                            ; $5ad5: $f3
    nop                                           ; $5ad6: $00
    dec bc                                        ; $5ad7: $0b
    inc d                                         ; $5ad8: $14
    ldh [$c0], a                                  ; $5ad9: $e0 $c0
    ret                                           ; $5adb: $c9


    xor a                                         ; $5adc: $af
    nop                                           ; $5add: $00
    ld d, l                                       ; $5ade: $55
    ld [$f8ff], sp                                ; $5adf: $08 $ff $f8
    db $10                                        ; $5ae2: $10
    ldh a, [rNR41]                                ; $5ae3: $f0 $20
    ldh [rNR41], a                                ; $5ae5: $e0 $20
    ldh [$4c], a                                  ; $5ae7: $e0 $4c
    ld a, a                                       ; $5ae9: $7f
    ret nz                                        ; $5aea: $c0

    ld c, a                                       ; $5aeb: $4f
    ret nz                                        ; $5aec: $c0

    ld b, a                                       ; $5aed: $47
    ret nz                                        ; $5aee: $c0

    ld b, [hl]                                    ; $5aef: $46
    ret nz                                        ; $5af0: $c0

    db $f4                                        ; $5af1: $f4
    pop bc                                        ; $5af2: $c1

jr_07b_5af3:
    push de                                       ; $5af3: $d5
    ret nz                                        ; $5af4: $c0

    cp $e0                                        ; $5af5: $fe $e0
    ld h, b                                       ; $5af7: $60
    cp $e0                                        ; $5af8: $fe $e0
    ldh a, [$fe]                                  ; $5afa: $f0 $fe
    ldh [$0c], a                                  ; $5afc: $e0 $0c
    rlca                                          ; $5afe: $07
    ld a, a                                       ; $5aff: $7f
    ld d, $03                                     ; $5b00: $16 $03
    dec hl                                        ; $5b02: $2b
    ld bc, $0017                                  ; $5b03: $01 $17 $00
    cpl                                           ; $5b06: $2f
    pop bc                                        ; $5b07: $c1
    ldh [$ef], a                                  ; $5b08: $e0 $ef
    cpl                                           ; $5b0a: $2f
    nop                                           ; $5b0b: $00
    ld e, a                                       ; $5b0c: $5f
    rlca                                          ; $5b0d: $07
    jr jr_07b_5af3                                ; $5b0e: $18 $e3

    cp [hl]                                       ; $5b10: $be
    db $fc                                        ; $5b11: $fc
    db $fc                                        ; $5b12: $fc
    rst $38                                       ; $5b13: $ff
    ret nz                                        ; $5b14: $c0

    ld hl, sp+$40                                 ; $5b15: $f8 $40
    rst $38                                       ; $5b17: $ff
    daa                                           ; $5b18: $27
    ld hl, sp-$01                                 ; $5b19: $f8 $ff
    ld hl, sp-$01                                 ; $5b1b: $f8 $ff
    cp a                                          ; $5b1d: $bf
    ld hl, sp+$7f                                 ; $5b1e: $f8 $7f
    call z, Call_000_0487                         ; $5b20: $cc $87 $04
    rlca                                          ; $5b23: $07
    ld b, $7f                                     ; $5b24: $06 $7f
    inc bc                                        ; $5b26: $03
    cp $7f                                        ; $5b27: $fe $7f
    cp $97                                        ; $5b29: $fe $97
    rst $38                                       ; $5b2b: $ff
    dec bc                                        ; $5b2c: $0b
    ld h, b                                       ; $5b2d: $60
    ret                                           ; $5b2e: $c9


    db $fc                                        ; $5b2f: $fc
    db $f4                                        ; $5b30: $f4
    pop bc                                        ; $5b31: $c1
    ld b, b                                       ; $5b32: $40
    push bc                                       ; $5b33: $c5
    ld b, b                                       ; $5b34: $40
    cp $e0                                        ; $5b35: $fe $e0
    cp l                                          ; $5b37: $bd
    ldh [$2a], a                                  ; $5b38: $e0 $2a
    dec hl                                        ; $5b3a: $2b
    ldh [$34], a                                  ; $5b3b: $e0 $34
    jr nc, @-$1e                                  ; $5b3d: $30 $e0

jr_07b_5b3f:
    push af                                       ; $5b3f: $f5
    adc h                                         ; $5b40: $8c

jr_07b_5b41:
    ret nz                                        ; $5b41: $c0

    ld d, b                                       ; $5b42: $50
    ld b, b                                       ; $5b43: $40
    and $30                                       ; $5b44: $e6 $30
    db $e3                                        ; $5b46: $e3
    rla                                           ; $5b47: $17
    dec d                                         ; $5b48: $15
    nop                                           ; $5b49: $00
    ld a, [hl+]                                   ; $5b4a: $2a
    db $ec                                        ; $5b4b: $ec
    ldh [$a0], a                                  ; $5b4c: $e0 $a0
    ld a, [bc]                                    ; $5b4e: $0a
    ret nz                                        ; $5b4f: $c0

    jr z, jr_07b_5b3f                             ; $5b50: $28 $ed

    inc [hl]                                      ; $5b52: $34
    jp hl                                         ; $5b53: $e9


    and d                                         ; $5b54: $a2
    ret nc                                        ; $5b55: $d0

    rst $20                                       ; $5b56: $e7
    ld d, l                                       ; $5b57: $55
    ret nc                                        ; $5b58: $d0

    ldh [$5c], a                                  ; $5b59: $e0 $5c
    pop bc                                        ; $5b5b: $c1
    jr nz, jr_07b_5b41                            ; $5b5c: $20 $e3

    xor e                                         ; $5b5e: $ab
    db $ec                                        ; $5b5f: $ec
    call nz, $9c0a                                ; $5b60: $c4 $0a $9c
    ld [$d0e0], sp                                ; $5b63: $08 $e0 $d0
    and l                                         ; $5b66: $a5
    cp $00                                        ; $5b67: $fe $00
    ld [hl], l                                    ; $5b69: $75
    ld b, b                                       ; $5b6a: $40
    add $8c                                       ; $5b6b: $c6 $8c
    db $e3                                        ; $5b6d: $e3
    ld d, l                                       ; $5b6e: $55
    db $e3                                        ; $5b6f: $e3
    nop                                           ; $5b70: $00
    and d                                         ; $5b71: $a2
    ld l, a                                       ; $5b72: $6f
    pop bc                                        ; $5b73: $c1
    inc c                                         ; $5b74: $0c
    jp nz, $e680                                  ; $5b75: $c2 $80 $e6

    ld h, $e0                                     ; $5b78: $26 $e0
    inc hl                                        ; $5b7a: $23
    rst $38                                       ; $5b7b: $ff
    ld h, b                                       ; $5b7c: $60
    inc hl                                        ; $5b7d: $23
    and b                                         ; $5b7e: $a0
    db $10                                        ; $5b7f: $10
    db $10                                        ; $5b80: $10
    inc de                                        ; $5b81: $13
    inc de                                        ; $5b82: $13
    rrca                                          ; $5b83: $0f
    rst $38                                       ; $5b84: $ff
    inc c                                         ; $5b85: $0c
    ccf                                           ; $5b86: $3f
    jr nc, jr_07b_5c07                            ; $5b87: $30 $7e

    ld b, b                                       ; $5b89: $40
    nop                                           ; $5b8a: $00
    jr nc, @+$11                                  ; $5b8b: $30 $0f

    rst $38                                       ; $5b8d: $ff
    rlca                                          ; $5b8e: $07
    ld a, b                                       ; $5b8f: $78
    ccf                                           ; $5b90: $3f
    ret nz                                        ; $5b91: $c0

    rst $38                                       ; $5b92: $ff
    ld bc, $07f8                                  ; $5b93: $01 $f8 $07
    rst $38                                       ; $5b96: $ff
    ldh [$1f], a                                  ; $5b97: $e0 $1f
    add e                                         ; $5b99: $83
    ld a, a                                       ; $5b9a: $7f
    ld c, $fc                                     ; $5b9b: $0e $fc
    ld a, b                                       ; $5b9d: $78
    add a                                         ; $5b9e: $87
    rst $38                                       ; $5b9f: $ff
    ldh a, [$1f]                                  ; $5ba0: $f0 $1f
    jp $0c7f                                      ; $5ba2: $c3 $7f $0c


    rst $38                                       ; $5ba5: $ff
    jr nc, @+$01                                  ; $5ba6: $30 $ff

    rst $38                                       ; $5ba8: $ff
    sbc $ff                                       ; $5ba9: $de $ff
    ld h, b                                       ; $5bab: $60
    rst $38                                       ; $5bac: $ff
    add b                                         ; $5bad: $80
    ret nz                                        ; $5bae: $c0

    ld a, a                                       ; $5baf: $7f
    add b                                         ; $5bb0: $80
    cp $4e                                        ; $5bb1: $fe $4e
    push bc                                       ; $5bb3: $c5
    ccf                                           ; $5bb4: $3f
    ldh a, [$1f]                                  ; $5bb5: $f0 $1f
    ldh a, [$1f]                                  ; $5bb7: $f0 $1f
    ld [$ff15], a                                 ; $5bb9: $ea $15 $ff
    push af                                       ; $5bbc: $f5
    ld a, [bc]                                    ; $5bbd: $0a
    ld [$f415], a                                 ; $5bbe: $ea $15 $f4
    dec bc                                        ; $5bc1: $0b
    add sp, $17                                   ; $5bc2: $e8 $17
    rst $38                                       ; $5bc4: $ff
    db $f4                                        ; $5bc5: $f4
    dec bc                                        ; $5bc6: $0b
    ld a, [$fd05]                                 ; $5bc7: $fa $05 $fd
    ld [bc], a                                    ; $5bca: $02
    ei                                            ; $5bcb: $fb
    db $fc                                        ; $5bcc: $fc
    rst $38                                       ; $5bcd: $ff
    rrca                                          ; $5bce: $0f
    ldh a, [$ba]                                  ; $5bcf: $f0 $ba
    ld b, l                                       ; $5bd1: $45
    ld d, l                                       ; $5bd2: $55
    xor d                                         ; $5bd3: $aa
    ld a, [hl+]                                   ; $5bd4: $2a
    push de                                       ; $5bd5: $d5
    rst $38                                       ; $5bd6: $ff
    nop                                           ; $5bd7: $00
    rst $38                                       ; $5bd8: $ff
    adc a                                         ; $5bd9: $8f
    ld a, a                                       ; $5bda: $7f
    ld d, a                                       ; $5bdb: $57
    xor b                                         ; $5bdc: $a8
    and b                                         ; $5bdd: $a0
    ld h, b                                       ; $5bde: $60
    rst $38                                       ; $5bdf: $ff
    ld h, b                                       ; $5be0: $60
    and b                                         ; $5be1: $a0
    pop bc                                        ; $5be2: $c1
    ld b, c                                       ; $5be3: $41
    ld b, e                                       ; $5be4: $43
    jp nz, $cc4f                                  ; $5be5: $c2 $4f $cc

    ld a, [hl]                                    ; $5be8: $7e
    add e                                         ; $5be9: $83
    and e                                         ; $5bea: $a3
    ld b, b                                       ; $5beb: $40
    ld b, b                                       ; $5bec: $40
    ret nz                                        ; $5bed: $c0

    ret nz                                        ; $5bee: $c0

    ret nz                                        ; $5bef: $c0

    ld b, b                                       ; $5bf0: $40
    cp $e7                                        ; $5bf1: $fe $e7
    rst $38                                       ; $5bf3: $ff
    ld bc, $0301                                  ; $5bf4: $01 $01 $03
    ld [bc], a                                    ; $5bf7: $02
    rlca                                          ; $5bf8: $07
    inc b                                         ; $5bf9: $04
    ld [$e908], sp                                ; $5bfa: $08 $08 $e9
    rlca                                          ; $5bfd: $07
    ld c, $a1                                     ; $5bfe: $0e $a1
    dec bc                                        ; $5c00: $0b
    and b                                         ; $5c01: $a0
    add c                                         ; $5c02: $81
    adc b                                         ; $5c03: $88
    pop hl                                        ; $5c04: $e1
    rlca                                          ; $5c05: $07
    ld a, e                                       ; $5c06: $7b

jr_07b_5c07:
    ld a, a                                       ; $5c07: $7f
    rst $38                                       ; $5c08: $ff
    adc c                                         ; $5c09: $89
    adc a                                         ; $5c0a: $8f
    dec b                                         ; $5c0b: $05
    rlca                                          ; $5c0c: $07
    ld [bc], a                                    ; $5c0d: $02
    inc bc                                        ; $5c0e: $03
    ld [bc], a                                    ; $5c0f: $02
    inc bc                                        ; $5c10: $03
    rst $38                                       ; $5c11: $ff
    rst $38                                       ; $5c12: $ff
    jr c, @+$01                                   ; $5c13: $38 $ff

    ret nz                                        ; $5c15: $c0

    db $fd                                        ; $5c16: $fd
    and b                                         ; $5c17: $a0
    ld a, [$ff00]                                 ; $5c18: $fa $00 $ff
    db $fd                                        ; $5c1b: $fd
    ld h, b                                       ; $5c1c: $60
    cp $f0                                        ; $5c1d: $fe $f0
    db $ed                                        ; $5c1f: $ed
    xor b                                         ; $5c20: $a8
    sbc $98                                       ; $5c21: $de $98
    cp $2d                                        ; $5c23: $fe $2d
    and b                                         ; $5c25: $a0
    scf                                           ; $5c26: $37
    ld a, h                                       ; $5c27: $7c
    xor a                                         ; $5c28: $af
    db $fc                                        ; $5c29: $fc
    cpl                                           ; $5c2a: $2f
    ld a, a                                       ; $5c2b: $7f
    xor a                                         ; $5c2c: $af
    rst $38                                       ; $5c2d: $ff
    or l                                          ; $5c2e: $b5
    ld l, l                                       ; $5c2f: $6d
    inc [hl]                                      ; $5c30: $34
    call c, $ef13                                 ; $5c31: $dc $13 $ef
    ld hl, sp+$0f                                 ; $5c34: $f8 $0f
    rst $38                                       ; $5c36: $ff
    db $fc                                        ; $5c37: $fc
    add a                                         ; $5c38: $87
    db $fc                                        ; $5c39: $fc
    rst $10                                       ; $5c3a: $d7
    or $e3                                        ; $5c3b: $f6 $e3
    db $e3                                        ; $5c3d: $e3
    pop bc                                        ; $5c3e: $c1
    rst $38                                       ; $5c3f: $ff
    pop af                                        ; $5c40: $f1
    ldh a, [$e2]                                  ; $5c41: $f0 $e2
    ldh [$e1], a                                  ; $5c43: $e0 $e1
    ret nz                                        ; $5c45: $c0

    inc e                                         ; $5c46: $1c
    rst $38                                       ; $5c47: $ff
    rst $38                                       ; $5c48: $ff
    ld a, [hl]                                    ; $5c49: $7e
    db $e3                                        ; $5c4a: $e3
    jp $9981                                      ; $5c4b: $c3 $81 $99


    sbc c                                         ; $5c4e: $99
    cp l                                          ; $5c4f: $bd
    ld hl, $393f                                  ; $5c50: $21 $3f $39
    ld sp, $5173                                  ; $5c53: $31 $73 $51
    ld h, d                                       ; $5c56: $62
    ld b, e                                       ; $5c57: $43
    di                                            ; $5c58: $f3
    call nz, $a090                                ; $5c59: $c4 $90 $a0
    rst $28                                       ; $5c5c: $ef
    ld a, [$f505]                                 ; $5c5d: $fa $05 $f5
    ld a, [bc]                                    ; $5c60: $0a
    ld e, [hl]                                    ; $5c61: $5e
    pop hl                                        ; $5c62: $e1
    ld [$5415], a                                 ; $5c63: $ea $15 $54
    rst $38                                       ; $5c66: $ff
    xor e                                         ; $5c67: $ab
    xor b                                         ; $5c68: $a8
    ld d, a                                       ; $5c69: $57
    ld b, c                                       ; $5c6a: $41
    cp a                                          ; $5c6b: $bf
    ld bc, $02ff                                  ; $5c6c: $01 $ff $02
    ccf                                           ; $5c6f: $3f
    cp $02                                        ; $5c70: $fe $02
    cp $40                                        ; $5c72: $fe $40
    ret nz                                        ; $5c74: $c0

    add b                                         ; $5c75: $80
    rst $38                                       ; $5c76: $ff
    ld [c], a                                     ; $5c77: $e2

jr_07b_5c78:
    or d                                          ; $5c78: $b2
    or d                                          ; $5c79: $b2
    ld [hl], a                                    ; $5c7a: $77
    ld bc, $0c03                                  ; $5c7b: $01 $03 $0c
    sbc d                                         ; $5c7e: $9a
    and [hl]                                      ; $5c7f: $a6
    ld b, b                                       ; $5c80: $40
    nop                                           ; $5c81: $00
    ldh [$ef], a                                  ; $5c82: $e0 $ef
    and b                                         ; $5c84: $a0
    ld a, l                                       ; $5c85: $7d
    or $e4                                        ; $5c86: $f6 $e4
    rst $20                                       ; $5c88: $e7
    rlca                                          ; $5c89: $07
    rlca                                          ; $5c8a: $07
    add hl, bc                                    ; $5c8b: $09
    ld c, $0a                                     ; $5c8c: $0e $0a
    ldh [$e6], a                                  ; $5c8e: $e0 $e6
    rst $38                                       ; $5c90: $ff
    ldh a, [$f0]                                  ; $5c91: $f0 $f0
    db $10                                        ; $5c93: $10
    ld hl, sp+$08                                 ; $5c94: $f8 $08
    jr c, jr_07b_5ca0                             ; $5c96: $38 $08

    jr jr_07b_5c78                                ; $5c98: $18 $de

    pop bc                                        ; $5c9a: $c1
    ld [$0701], a                                 ; $5c9b: $ea $01 $07
    ld b, $01                                     ; $5c9e: $06 $01

jr_07b_5ca0:
    rst $38                                       ; $5ca0: $ff
    ld [c], a                                     ; $5ca1: $e2
    ld [bc], a                                    ; $5ca2: $02
    inc bc                                        ; $5ca3: $03
    rst $38                                       ; $5ca4: $ff
    inc c                                         ; $5ca5: $0c
    rrca                                          ; $5ca6: $0f
    inc b                                         ; $5ca7: $04
    rlca                                          ; $5ca8: $07
    jp nz, Jump_000_21c3                          ; $5ca9: $c2 $c3 $21

    ld hl, $ddff                                  ; $5cac: $21 $ff $dd
    call c, $cc4e                                 ; $5caf: $dc $4e $cc
    rst $28                                       ; $5cb2: $ef
    db $ed                                        ; $5cb3: $ed
    ccf                                           ; $5cb4: $3f
    pop hl                                        ; $5cb5: $e1
    rst $38                                       ; $5cb6: $ff
    ld a, $e2                                     ; $5cb7: $3e $e2
    rra                                           ; $5cb9: $1f
    pop af                                        ; $5cba: $f1
    ld e, $f0                                     ; $5cbb: $1e $f0
    inc c                                         ; $5cbd: $0c
    ld hl, sp-$05                                 ; $5cbe: $f8 $fb
    rla                                           ; $5cc0: $17
    inc bc                                        ; $5cc1: $03
    add d                                         ; $5cc2: $82
    add e                                         ; $5cc3: $83
    inc b                                         ; $5cc4: $04
    nop                                           ; $5cc5: $00
    ld e, $1c                                     ; $5cc6: $1e $1c
    ld h, h                                       ; $5cc8: $64
    ld c, a                                       ; $5cc9: $4f
    ld h, h                                       ; $5cca: $64
    jr c, jr_07b_5ce5                             ; $5ccb: $38 $18

    ld [bc], a                                    ; $5ccd: $02
    ld [hl], c                                    ; $5cce: $71
    add b                                         ; $5ccf: $80
    db $fc                                        ; $5cd0: $fc
    pop hl                                        ; $5cd1: $e1
    dec bc                                        ; $5cd2: $0b
    db $fd                                        ; $5cd3: $fd
    ld h, b                                       ; $5cd4: $60
    rst $38                                       ; $5cd5: $ff
    rrca                                          ; $5cd6: $0f
    ld [bc], a                                    ; $5cd7: $02
    rra                                           ; $5cd8: $1f
    inc b                                         ; $5cd9: $04
    add [hl]                                      ; $5cda: $86
    inc bc                                        ; $5cdb: $03
    ld e, h                                       ; $5cdc: $5c
    rlca                                          ; $5cdd: $07

jr_07b_5cde:
    or e                                          ; $5cde: $b3
    ld hl, sp+$3f                                 ; $5cdf: $f8 $3f
    adc d                                         ; $5ce1: $8a
    pop bc                                        ; $5ce2: $c1
    cp $e1                                        ; $5ce3: $fe $e1

jr_07b_5ce5:
    ret nz                                        ; $5ce5: $c0

    ld a, a                                       ; $5ce6: $7f
    sub [hl]                                      ; $5ce7: $96
    pop bc                                        ; $5ce8: $c1
    ret nc                                        ; $5ce9: $d0

    rst $38                                       ; $5cea: $ff
    cpl                                           ; $5ceb: $2f
    xor b                                         ; $5cec: $a8
    ld d, a                                       ; $5ced: $57
    ret nc                                        ; $5cee: $d0

    cpl                                           ; $5cef: $2f
    and c                                         ; $5cf0: $a1
    ld e, a                                       ; $5cf1: $5f
    ld b, [hl]                                    ; $5cf2: $46
    rra                                           ; $5cf3: $1f
    cp [hl]                                       ; $5cf4: $be
    sbc b                                         ; $5cf5: $98
    ld a, b                                       ; $5cf6: $78
    inc b                                         ; $5cf7: $04
    db $fc                                        ; $5cf8: $fc
    ld a, $a3                                     ; $5cf9: $3e $a3
    jr c, jr_07b_5cde                             ; $5cfb: $38 $e1

    rst $08                                       ; $5cfd: $cf
    and h                                         ; $5cfe: $a4
    cp $ff                                        ; $5cff: $fe $ff
    ldh [rTIMA], a                                ; $5d01: $e0 $05
    rlca                                          ; $5d03: $07
    ld a, [bc]                                    ; $5d04: $0a
    ld c, $03                                     ; $5d05: $0e $03
    inc bc                                        ; $5d07: $03
    rlca                                          ; $5d08: $07
    ei                                            ; $5d09: $fb
    inc bc                                        ; $5d0a: $03
    dec c                                         ; $5d0b: $0d
    cp b                                          ; $5d0c: $b8
    ld h, b                                       ; $5d0d: $60
    ld bc, $0300                                  ; $5d0e: $01 $00 $03
    nop                                           ; $5d11: $00
    inc bc                                        ; $5d12: $03
    rst $38                                       ; $5d13: $ff
    inc b                                         ; $5d14: $04
    ld b, $09                                     ; $5d15: $06 $09
    rrca                                          ; $5d17: $0f
    db $10                                        ; $5d18: $10
    ccf                                           ; $5d19: $3f
    nop                                           ; $5d1a: $00
    xor [hl]                                      ; $5d1b: $ae
    rst $38                                       ; $5d1c: $ff
    pop de                                        ; $5d1d: $d1
    rst $00                                       ; $5d1e: $c7
    jr c, jr_07b_5d27                             ; $5d1f: $38 $06

    ld sp, hl                                     ; $5d21: $f9
    xor h                                         ; $5d22: $ac
    ld d, e                                       ; $5d23: $53
    ld e, d                                       ; $5d24: $5a
    rst $38                                       ; $5d25: $ff
    and l                                         ; $5d26: $a5

jr_07b_5d27:
    push af                                       ; $5d27: $f5
    ld a, [bc]                                    ; $5d28: $0a
    or d                                          ; $5d29: $b2
    ld e, l                                       ; $5d2a: $5d
    ld d, b                                       ; $5d2b: $50
    cp a                                          ; $5d2c: $bf
    or b                                          ; $5d2d: $b0
    ld c, a                                       ; $5d2e: $4f
    ld a, a                                       ; $5d2f: $7f
    ld d, b                                       ; $5d30: $50
    xor a                                         ; $5d31: $af
    add b                                         ; $5d32: $80
    db $fc                                        ; $5d33: $fc
    ld [c], a                                     ; $5d34: $e2
    adc b                                         ; $5d35: $88
    ld h, c                                       ; $5d36: $61
    ld [bc], a                                    ; $5d37: $02
    cp $e0                                        ; $5d38: $fe $e0
    db $fc                                        ; $5d3a: $fc
    db $f4                                        ; $5d3b: $f4
    ld h, d                                       ; $5d3c: $62
    rst $38                                       ; $5d3d: $ff
    add c                                         ; $5d3e: $81
    ldh [rLCDC], a                                ; $5d3f: $e0 $40
    and b                                         ; $5d41: $a0
    add b                                         ; $5d42: $80
    ld [hl], b                                    ; $5d43: $70
    ld b, b                                       ; $5d44: $40
    db $fd                                        ; $5d45: $fd
    cp d                                          ; $5d46: $ba
    sbc d                                         ; $5d47: $9a
    adc c                                         ; $5d48: $89
    inc e                                         ; $5d49: $1c
    inc e                                         ; $5d4a: $1c
    daa                                           ; $5d4b: $27
    inc hl                                        ; $5d4c: $23
    dec b                                         ; $5d4d: $05
    inc c                                         ; $5d4e: $0c
    rst $38                                       ; $5d4f: $ff
    dec b                                         ; $5d50: $05
    rlca                                          ; $5d51: $07
    ld b, $07                                     ; $5d52: $06 $07
    ld [bc], a                                    ; $5d54: $02
    rlca                                          ; $5d55: $07
    inc bc                                        ; $5d56: $03
    rlca                                          ; $5d57: $07
    rst $38                                       ; $5d58: $ff
    rrca                                          ; $5d59: $0f
    rra                                           ; $5d5a: $1f
    di                                            ; $5d5b: $f3
    db $fc                                        ; $5d5c: $fc
    sbc a                                         ; $5d5d: $9f
    ldh [$38], a                                  ; $5d5e: $e0 $38
    db $fc                                        ; $5d60: $fc
    rst $38                                       ; $5d61: $ff
    call nz, $e4fc                                ; $5d62: $c4 $fc $e4
    dec e                                         ; $5d65: $1d
    rrca                                          ; $5d66: $0f
    rst $38                                       ; $5d67: $ff
    di                                            ; $5d68: $f3
    db $fc                                        ; $5d69: $fc
    rst $38                                       ; $5d6a: $ff
    ccf                                           ; $5d6b: $3f

jr_07b_5d6c:
    ret nz                                        ; $5d6c: $c0

    ldh a, [rIF]                                  ; $5d6d: $f0 $0f
    inc bc                                        ; $5d6f: $03
    ldh a, [$0a]                                  ; $5d70: $f0 $0a
    inc c                                         ; $5d72: $0c
    rst $38                                       ; $5d73: $ff
    inc c                                         ; $5d74: $0c
    jr jr_07b_5d6c                                ; $5d75: $18 $f5

    ld hl, sp+$36                                 ; $5d77: $f8 $36
    reti                                          ; $5d79: $d9


    jp hl                                         ; $5d7a: $e9


    rla                                           ; $5d7b: $17
    rst $38                                       ; $5d7c: $ff
    ld bc, $0bff                                  ; $5d7d: $01 $ff $0b
    rrca                                          ; $5d80: $0f
    add $07                                       ; $5d81: $c6 $07
    jr nc, jr_07b_5d95                            ; $5d83: $30 $10

    rst $38                                       ; $5d85: $ff
    db $10                                        ; $5d86: $10
    db $10                                        ; $5d87: $10
    sbc b                                         ; $5d88: $98
    ld [$08d8], sp                                ; $5d89: $08 $d8 $08
    ld c, b                                       ; $5d8c: $48
    adc b                                         ; $5d8d: $88
    rst $38                                       ; $5d8e: $ff
    call z, $ac84                                 ; $5d8f: $cc $84 $ac
    call nz, $c464                                ; $5d92: $c4 $64 $c4

jr_07b_5d95:
    add [hl]                                      ; $5d95: $86
    db $fc                                        ; $5d96: $fc
    rst $28                                       ; $5d97: $ef
    ld h, e                                       ; $5d98: $63
    ld a, a                                       ; $5d99: $7f
    jr jr_07b_5dbb                                ; $5d9a: $18 $1f

    ld [de], a                                    ; $5d9c: $12
    push bc                                       ; $5d9d: $c5
    nop                                           ; $5d9e: $00
    nop                                           ; $5d9f: $00
    inc c                                         ; $5da0: $0c
    ld a, [hl]                                    ; $5da1: $7e
    scf                                           ; $5da2: $37
    add b                                         ; $5da3: $80
    ldh [$c0], a                                  ; $5da4: $e0 $c0
    db $fd                                        ; $5da6: $fd
    ldh a, [rIF]                                  ; $5da7: $f0 $0f
    rrca                                          ; $5da9: $0f
    jp nc, $ffc1                                  ; $5daa: $d2 $c1 $ff

    rrca                                          ; $5dad: $0f
    add hl, bc                                    ; $5dae: $09
    ccf                                           ; $5daf: $3f
    ld [$107f], sp                                ; $5db0: $08 $7f $10
    rst $38                                       ; $5db3: $ff
    jr nz, @+$01                                  ; $5db4: $20 $ff

    rst $38                                       ; $5db6: $ff
    jp Jump_000_0cfe                              ; $5db7: $c3 $fe $0c


    push af                                       ; $5dba: $f5

jr_07b_5dbb:
    or b                                          ; $5dbb: $b0
    ld [$ffc0], a                                 ; $5dbc: $ea $c0 $ff
    push de                                       ; $5dbf: $d5

jr_07b_5dc0:
    nop                                           ; $5dc0: $00
    db $fd                                        ; $5dc1: $fd
    ld b, e                                       ; $5dc2: $43
    cp $7e                                        ; $5dc3: $fe $7e
    or b                                          ; $5dc5: $b0
    sub b                                         ; $5dc6: $90
    rst $38                                       ; $5dc7: $ff
    ld d, b                                       ; $5dc8: $50
    db $10                                        ; $5dc9: $10
    xor b                                         ; $5dca: $a8
    ld [$0858], sp                                ; $5dcb: $08 $58 $08
    cp b                                          ; $5dce: $b8
    jr jr_07b_5dc0                                ; $5dcf: $18 $ef

    ld a, h                                       ; $5dd1: $7c
    ld h, h                                       ; $5dd2: $64
    ldh [$e0], a                                  ; $5dd3: $e0 $e0
    ld [$1a8b], sp                                ; $5dd5: $08 $8b $1a
    rrca                                          ; $5dd8: $0f
    ccf                                           ; $5dd9: $3f
    rst $38                                       ; $5dda: $ff
    scf                                           ; $5ddb: $37
    dec b                                         ; $5ddc: $05
    inc bc                                        ; $5ddd: $03
    dec de                                        ; $5dde: $1b
    rla                                           ; $5ddf: $17
    rra                                           ; $5de0: $1f
    rrca                                          ; $5de1: $0f
    dec l                                         ; $5de2: $2d
    rst $38                                       ; $5de3: $ff
    dec de                                        ; $5de4: $1b
    ld e, d                                       ; $5de5: $5a
    ld [hl], a                                    ; $5de6: $77
    ccf                                           ; $5de7: $3f
    ccf                                           ; $5de8: $3f
    rst $18                                       ; $5de9: $df
    ld h, b                                       ; $5dea: $60
    ld a, a                                       ; $5deb: $7f
    rst $38                                       ; $5dec: $ff
    add b                                         ; $5ded: $80
    cp a                                          ; $5dee: $bf
    ld b, b                                       ; $5def: $40
    rst $18                                       ; $5df0: $df
    and b                                         ; $5df1: $a0
    cp $e1                                        ; $5df2: $fe $e1
    call z, $f3ff                                 ; $5df4: $cc $ff $f3
    ld [$d7f5], a                                 ; $5df7: $ea $f5 $d7
    ld hl, sp+$18                                 ; $5dfa: $f8 $18
    rst $38                                       ; $5dfc: $ff
    ld e, l                                       ; $5dfd: $5d
    rst $38                                       ; $5dfe: $ff
    cp [hl]                                       ; $5dff: $be
    sbc e                                         ; $5e00: $9b
    ld a, h                                       ; $5e01: $7c
    dec a                                         ; $5e02: $3d
    cp $fc                                        ; $5e03: $fe $fc
    rst $38                                       ; $5e05: $ff
    ld e, d                                       ; $5e06: $5a
    rst $38                                       ; $5e07: $ff
    rst $38                                       ; $5e08: $ff
    cp [hl]                                       ; $5e09: $be
    ld a, a                                       ; $5e0a: $7f
    ld a, a                                       ; $5e0b: $7f
    rst $38                                       ; $5e0c: $ff
    ld b, $ff                                     ; $5e0d: $06 $ff
    ld e, $ae                                     ; $5e0f: $1e $ae
    ld e, b                                       ; $5e11: $58
    ld h, b                                       ; $5e12: $60
    ld b, $ff                                     ; $5e13: $06 $ff
    rlca                                          ; $5e15: $07
    db $e4                                        ; $5e16: $e4
    ld b, b                                       ; $5e17: $40
    ld a, a                                       ; $5e18: $7f
    ldh [rLCDC], a                                ; $5e19: $e0 $40
    ld [bc], a                                    ; $5e1b: $02
    db $fd                                        ; $5e1c: $fd
    db $fd                                        ; $5e1d: $fd
    adc [hl]                                      ; $5e1e: $8e
    ld b, c                                       ; $5e1f: $41
    add h                                         ; $5e20: $84
    ei                                            ; $5e21: $fb
    ld a, [bc]                                    ; $5e22: $0a
    push af                                       ; $5e23: $f5
    inc b                                         ; $5e24: $04
    ei                                            ; $5e25: $fb
    rst $08                                       ; $5e26: $cf
    adc d                                         ; $5e27: $8a
    push af                                       ; $5e28: $f5
    ld b, b                                       ; $5e29: $40
    rst $38                                       ; $5e2a: $ff
    xor b                                         ; $5e2b: $a8
    ld h, b                                       ; $5e2c: $60
    ld [bc], a                                    ; $5e2d: $02
    ld [c], a                                     ; $5e2e: $e2
    add b                                         ; $5e2f: $80
    ld h, b                                       ; $5e30: $60
    cp a                                          ; $5e31: $bf
    nop                                           ; $5e32: $00
    pop bc                                        ; $5e33: $c1
    nop                                           ; $5e34: $00
    db $e3                                        ; $5e35: $e3
    db $10                                        ; $5e36: $10
    rst $10                                       ; $5e37: $d7
    sbc d                                         ; $5e38: $9a
    ld l, d                                       ; $5e39: $6a
    add b                                         ; $5e3a: $80
    rst $38                                       ; $5e3b: $ff
    nop                                           ; $5e3c: $00
    add b                                         ; $5e3d: $80
    ld [hl], e                                    ; $5e3e: $73
    ld b, c                                       ; $5e3f: $41
    ld a, l                                       ; $5e40: $7d
    ld b, e                                       ; $5e41: $43
    ld [hl], e                                    ; $5e42: $73
    ld c, a                                       ; $5e43: $4f
    rst $38                                       ; $5e44: $ff
    halt                                          ; $5e45: $76
    ld c, a                                       ; $5e46: $4f
    ld [hl-], a                                   ; $5e47: $32
    cpl                                           ; $5e48: $2f
    add hl, sp                                    ; $5e49: $39
    daa                                           ; $5e4a: $27
    add hl, sp                                    ; $5e4b: $39
    daa                                           ; $5e4c: $27
    rst $38                                       ; $5e4d: $ff
    add hl, de                                    ; $5e4e: $19
    rla                                           ; $5e4f: $17
    ld [hl], b                                    ; $5e50: $70
    adc a                                         ; $5e51: $8f
    ld bc, $19fe                                  ; $5e52: $01 $fe $19
    add [hl]                                      ; $5e55: $86
    rst $38                                       ; $5e56: $ff
    ld a, b                                       ; $5e57: $78
    add a                                         ; $5e58: $87
    ld b, b                                       ; $5e59: $40
    cp a                                          ; $5e5a: $bf
    inc c                                         ; $5e5b: $0c
    jp $eb94                                      ; $5e5c: $c3 $94 $eb


    rst $38                                       ; $5e5f: $ff
    adc h                                         ; $5e60: $8c
    di                                            ; $5e61: $f3
    rra                                           ; $5e62: $1f
    nop                                           ; $5e63: $00
    db $fc                                        ; $5e64: $fc
    inc bc                                        ; $5e65: $03
    ret nz                                        ; $5e66: $c0

    inc a                                         ; $5e67: $3c
    ei                                            ; $5e68: $fb
    rrca                                          ; $5e69: $0f
    ret nz                                        ; $5e6a: $c0

    ld c, l                                       ; $5e6b: $4d
    ld b, h                                       ; $5e6c: $44
    add b                                         ; $5e6d: $80
    ret nz                                        ; $5e6e: $c0

    ccf                                           ; $5e6f: $3f
    ld bc, $e7c0                                  ; $5e70: $01 $c0 $e7
    pop bc                                        ; $5e73: $c1
    nop                                           ; $5e74: $00
    pop hl                                        ; $5e75: $e1
    cp $e0                                        ; $5e76: $fe $e0
    pop bc                                        ; $5e78: $c1
    and c                                         ; $5e79: $a1
    ldh a, [rP1]                                  ; $5e7a: $f0 $00
    ld h, h                                       ; $5e7c: $64
    rst $38                                       ; $5e7d: $ff
    call nz, $e256                                ; $5e7e: $c4 $56 $e2
    ld [hl], $e2                                  ; $5e81: $36 $e2
    ld [hl-], a                                   ; $5e83: $32
    ld [c], a                                     ; $5e84: $e2
    ld [hl+], a                                   ; $5e85: $22
    rst $28                                       ; $5e86: $ef
    ld a, [c]                                     ; $5e87: $f2
    xor e                                         ; $5e88: $ab
    ld [hl], c                                    ; $5e89: $71
    sbc c                                         ; $5e8a: $99
    cp $e0                                        ; $5e8b: $fe $e0
    dec bc                                        ; $5e8d: $0b
    dec bc                                        ; $5e8e: $0b
    rrca                                          ; $5e8f: $0f
    rst $38                                       ; $5e90: $ff
    ld a, [bc]                                    ; $5e91: $0a
    ld d, $14                                     ; $5e92: $16 $14
    ld e, $14                                     ; $5e94: $1e $14
    inc e                                         ; $5e96: $1c
    jr jr_07b_5ec1                                ; $5e97: $18 $28

    rst $38                                       ; $5e99: $ff
    jr c, jr_07b_5eef                             ; $5e9a: $38 $53

    ld [hl], c                                    ; $5e9c: $71
    cp a                                          ; $5e9d: $bf
    rst $20                                       ; $5e9e: $e7
    xor d                                         ; $5e9f: $aa
    add b                                         ; $5ea0: $80
    push de                                       ; $5ea1: $d5
    rst $38                                       ; $5ea2: $ff
    add c                                         ; $5ea3: $81
    ld [$d443], a                                 ; $5ea4: $ea $43 $d4
    ld b, a                                       ; $5ea7: $47
    ld a, b                                       ; $5ea8: $78
    ccf                                           ; $5ea9: $3f
    ldh [$5b], a                                  ; $5eaa: $e0 $5b
    ld a, a                                       ; $5eac: $7f
    add c                                         ; $5ead: $81
    or h                                          ; $5eae: $b4
    ld b, b                                       ; $5eaf: $40
    add h                                         ; $5eb0: $84

jr_07b_5eb1:
    db $fc                                        ; $5eb1: $fc
    ld e, d                                       ; $5eb2: $5a
    and c                                         ; $5eb3: $a1
    ld bc, $40a2                                  ; $5eb4: $01 $a2 $40
    sbc a                                         ; $5eb7: $9f
    ld a, h                                       ; $5eb8: $7c
    rst $38                                       ; $5eb9: $ff
    adc $83                                       ; $5eba: $ce $83
    rlca                                          ; $5ebc: $07
    db $f4                                        ; $5ebd: $f4
    ld l, b                                       ; $5ebe: $68
    ld c, b                                       ; $5ebf: $48
    xor a                                         ; $5ec0: $af

jr_07b_5ec1:
    ld bc, $0afc                                  ; $5ec1: $01 $fc $0a
    ld h, b                                       ; $5ec4: $60
    sub c                                         ; $5ec5: $91
    ret nz                                        ; $5ec6: $c0

    ld de, $3838                                  ; $5ec7: $11 $38 $38
    ld [hl], c                                    ; $5eca: $71
    ld [hl], b                                    ; $5ecb: $70
    dec sp                                        ; $5ecc: $3b
    rst $38                                       ; $5ecd: $ff
    inc a                                         ; $5ece: $3c
    cp [hl]                                       ; $5ecf: $be
    db $fd                                        ; $5ed0: $fd
    ld a, l                                       ; $5ed1: $7d
    ei                                            ; $5ed2: $fb
    ccf                                           ; $5ed3: $3f
    ld a, a                                       ; $5ed4: $7f
    ld l, e                                       ; $5ed5: $6b
    rst $38                                       ; $5ed6: $ff
    ld [hl], a                                    ; $5ed7: $77
    rst $10                                       ; $5ed8: $d7
    db $ed                                        ; $5ed9: $ed
    ld a, a                                       ; $5eda: $7f
    ei                                            ; $5edb: $fb
    cp a                                          ; $5edc: $bf
    ld l, a                                       ; $5edd: $6f
    ld a, e                                       ; $5ede: $7b
    rst $38                                       ; $5edf: $ff
    rst $18                                       ; $5ee0: $df
    or $ff                                        ; $5ee1: $f6 $ff
    res 7, a                                      ; $5ee3: $cb $bf
    and l                                         ; $5ee5: $a5
    ld e, e                                       ; $5ee6: $5b
    ld a, [hl]                                    ; $5ee7: $7e
    cp a                                          ; $5ee8: $bf
    ld sp, hl                                     ; $5ee9: $f9
    cp l                                          ; $5eea: $bd
    rst $38                                       ; $5eeb: $ff
    ld e, e                                       ; $5eec: $5b
    rst $38                                       ; $5eed: $ff
    db $fd                                        ; $5eee: $fd

jr_07b_5eef:
    ret z                                         ; $5eef: $c8

    jr nz, jr_07b_5eb1                            ; $5ef0: $20 $bf

    xor a                                         ; $5ef2: $af
    rst $38                                       ; $5ef3: $ff
    ld e, [hl]                                    ; $5ef4: $5e
    rst $38                                       ; $5ef5: $ff
    scf                                           ; $5ef6: $37
    ld a, [$7de0]                                 ; $5ef7: $fa $e0 $7d
    cp h                                          ; $5efa: $bc
    ld [hl+], a                                   ; $5efb: $22
    cp $fa                                        ; $5efc: $fe $fa
    ld a, [c]                                     ; $5efe: $f2
    ret nz                                        ; $5eff: $c0

    rst $18                                       ; $5f00: $df
    db $ec                                        ; $5f01: $ec
    ldh [rNR22], a                                ; $5f02: $e0 $17
    rst $38                                       ; $5f04: $ff
    ld c, a                                       ; $5f05: $4f
    rst $38                                       ; $5f06: $ff
    ld c, e                                       ; $5f07: $4b
    ei                                            ; $5f08: $fb
    cp a                                          ; $5f09: $bf
    sub a                                         ; $5f0a: $97
    sub $c0                                       ; $5f0b: $d6 $c0
    ccf                                           ; $5f0d: $3f
    rst $38                                       ; $5f0e: $ff
    ld c, a                                       ; $5f0f: $4f
    cp a                                          ; $5f10: $bf
    sbc a                                         ; $5f11: $9f
    cp $12                                        ; $5f12: $fe $12
    add b                                         ; $5f14: $80
    jp nc, $e2ef                                  ; $5f15: $d2 $ef $e2

    rst $38                                       ; $5f18: $ff
    rst $00                                       ; $5f19: $c7
    rst $38                                       ; $5f1a: $ff
    xor $ef                                       ; $5f1b: $ee $ef
    rst $38                                       ; $5f1d: $ff
    rst $30                                       ; $5f1e: $f7
    rst $38                                       ; $5f1f: $ff
    xor a                                         ; $5f20: $af
    sbc $e0                                       ; $5f21: $de $e0
    inc e                                         ; $5f23: $1c
    ei                                            ; $5f24: $fb
    ld [hl-], a                                   ; $5f25: $32
    cp a                                          ; $5f26: $bf
    db $fd                                        ; $5f27: $fd
    inc [hl]                                      ; $5f28: $34
    ei                                            ; $5f29: $fb
    ld a, b                                       ; $5f2a: $78
    rst $38                                       ; $5f2b: $ff
    cp b                                          ; $5f2c: $b8
    ld [hl], b                                    ; $5f2d: $70
    ldh [$fa], a                                  ; $5f2e: $e0 $fa
    db $fc                                        ; $5f30: $fc
    ld l, h                                       ; $5f31: $6c
    ldh [$d3], a                                  ; $5f32: $e0 $d3
    ld b, b                                       ; $5f34: $40
    add b                                         ; $5f35: $80
    inc b                                         ; $5f36: $04
    call nz, $cc0c                                ; $5f37: $c4 $0c $cc
    ld c, [hl]                                    ; $5f3a: $4e
    rst $38                                       ; $5f3b: $ff
    cp $dc                                        ; $5f3c: $fe $dc
    db $fc                                        ; $5f3e: $fc
    ld l, h                                       ; $5f3f: $6c
    cp $de                                        ; $5f40: $fe $de
    cp $18                                        ; $5f42: $fe $18
    rst $38                                       ; $5f44: $ff
    rla                                           ; $5f45: $17
    inc e                                         ; $5f46: $1c
    inc de                                        ; $5f47: $13
    inc c                                         ; $5f48: $0c
    dec bc                                        ; $5f49: $0b
    ld c, $09                                     ; $5f4a: $0e $09
    ld c, $ff                                     ; $5f4c: $0e $ff
    add hl, bc                                    ; $5f4e: $09
    ld b, $05                                     ; $5f4f: $06 $05
    rlca                                          ; $5f51: $07
    inc b                                         ; $5f52: $04
    inc bc                                        ; $5f53: $03
    ld [bc], a                                    ; $5f54: $02
    sub [hl]                                      ; $5f55: $96
    rst $38                                       ; $5f56: $ff
    jp hl                                         ; $5f57: $e9


    adc d                                         ; $5f58: $8a
    push af                                       ; $5f59: $f5
    sub [hl]                                      ; $5f5a: $96
    add sp, -$35                                  ; $5f5b: $e8 $cb
    db $f4                                        ; $5f5d: $f4
    ld b, a                                       ; $5f5e: $47
    rst $38                                       ; $5f5f: $ff
    ei                                            ; $5f60: $fb
    ld c, h                                       ; $5f61: $4c
    db $f4                                        ; $5f62: $f4
    ld e, h                                       ; $5f63: $5c
    db $fc                                        ; $5f64: $fc
    halt                                          ; $5f65: $76
    and $7f                                       ; $5f66: $e6 $7f
    rst $38                                       ; $5f68: $ff
    add b                                         ; $5f69: $80

jr_07b_5f6a:
    ccf                                           ; $5f6a: $3f
    add b                                         ; $5f6b: $80
    ccf                                           ; $5f6c: $3f
    ret nz                                        ; $5f6d: $c0

    ccf                                           ; $5f6e: $3f
    ret nz                                        ; $5f6f: $c0

    rra                                           ; $5f70: $1f
    rst $38                                       ; $5f71: $ff
    ret nz                                        ; $5f72: $c0

    sbc [hl]                                      ; $5f73: $9e
    ldh [$50], a                                  ; $5f74: $e0 $50
    ld h, a                                       ; $5f76: $67
    daa                                           ; $5f77: $27
    jr c, jr_07b_5f6a                             ; $5f78: $38 $f0

    ei                                            ; $5f7a: $fb
    nop                                           ; $5f7b: $00
    ld hl, sp-$02                                 ; $5f7c: $f8 $fe
    pop hl                                        ; $5f7e: $e1
    ld bc, $0ee0                                  ; $5f7f: $01 $e0 $0e
    inc c                                         ; $5f82: $0c
    ldh a, [$7f]                                  ; $5f83: $f0 $7f
    db $fc                                        ; $5f85: $fc
    ld h, b                                       ; $5f86: $60
    sbc [hl]                                      ; $5f87: $9e
    sub b                                         ; $5f88: $90
    db $db                                        ; $5f89: $db
    ld sp, $fe5b                                  ; $5f8a: $31 $5b $fe
    ldh [rIE], a                                  ; $5f8d: $e0 $ff
    inc sp                                        ; $5f8f: $33
    pop hl                                        ; $5f90: $e1
    rla                                           ; $5f91: $17
    ld hl, $231d                                  ; $5f92: $21 $1d $23
    add hl, bc                                    ; $5f95: $09
    scf                                           ; $5f96: $37
    ei                                            ; $5f97: $fb
    ld [de], a                                    ; $5f98: $12
    ld e, $c4                                     ; $5f99: $1e $c4
    add c                                         ; $5f9b: $81
    ld [bc], a                                    ; $5f9c: $02
    inc bc                                        ; $5f9d: $03
    inc b                                         ; $5f9e: $04
    rlca                                          ; $5f9f: $07
    ld [$0fff], sp                                ; $5fa0: $08 $ff $0f
    ld [$100f], sp                                ; $5fa3: $08 $0f $10
    rra                                           ; $5fa6: $1f
    db $10                                        ; $5fa7: $10
    rra                                           ; $5fa8: $1f
    reti                                          ; $5fa9: $d9


    rst $18                                       ; $5faa: $df
    ld a, $e7                                     ; $5fab: $3e $e7

jr_07b_5fad:
    jr jr_07b_5fad                                ; $5fad: $18 $fe

    ld bc, $618c                                  ; $5faf: $01 $8c $61
    push af                                       ; $5fb2: $f5
    dec bc                                        ; $5fb3: $0b
    rst $38                                       ; $5fb4: $ff
    jp hl                                         ; $5fb5: $e9


    rla                                           ; $5fb6: $17
    jp nc, $e82e                                  ; $5fb7: $d2 $2e $e8

    jr jr_07b_600c                                ; $5fba: $18 $50

    or b                                          ; $5fbc: $b0
    xor e                                         ; $5fbd: $ab
    and b                                         ; $5fbe: $a0
    ld h, b                                       ; $5fbf: $60
    ld [bc], a                                    ; $5fc0: $02
    and a                                         ; $5fc1: $a7
    rrca                                          ; $5fc2: $0f

Jump_07b_5fc3:
    ld d, h                                       ; $5fc3: $54
    ld b, b                                       ; $5fc4: $40
    rrca                                          ; $5fc5: $0f
    ld d, h                                       ; $5fc6: $54
    ld b, d                                       ; $5fc7: $42
    rra                                           ; $5fc8: $1f
    and d                                         ; $5fc9: $a2
    ld d, b                                       ; $5fca: $50
    ld b, c                                       ; $5fcb: $41
    nop                                           ; $5fcc: $00
    sub d                                         ; $5fcd: $92
    ld h, b                                       ; $5fce: $60
    db $fd                                        ; $5fcf: $fd
    ld [$6090], a                                 ; $5fd0: $ea $90 $60
    inc bc                                        ; $5fd3: $03
    adc h                                         ; $5fd4: $8c
    ld h, b                                       ; $5fd5: $60
    rlca                                          ; $5fd6: $07
    rst $38                                       ; $5fd7: $ff
    rlca                                          ; $5fd8: $07
    rlca                                          ; $5fd9: $07
    ld d, $17                                     ; $5fda: $16 $17
    dec e                                         ; $5fdc: $1d
    rra                                           ; $5fdd: $1f
    ccf                                           ; $5fde: $3f
    ccf                                           ; $5fdf: $3f
    ld a, c                                       ; $5fe0: $79
    ld l, [hl]                                    ; $5fe1: $6e
    cp [hl]                                       ; $5fe2: $be
    nop                                           ; $5fe3: $00
    ld [$fde1], sp                                ; $5fe4: $08 $e1 $fd
    cp $da                                        ; $5fe7: $fe $da
    db $fd                                        ; $5fe9: $fd
    ld a, [$f7e1]                                 ; $5fea: $fa $e1 $f7
    db $dd                                        ; $5fed: $dd
    or a                                          ; $5fee: $b7
    cp a                                          ; $5fef: $bf
    xor h                                         ; $5ff0: $ac
    nop                                           ; $5ff1: $00
    ld l, e                                       ; $5ff2: $6b
    rst $38                                       ; $5ff3: $ff
    ld d, c                                       ; $5ff4: $51
    rst $28                                       ; $5ff5: $ef
    rst $38                                       ; $5ff6: $ff
    sub [hl]                                      ; $5ff7: $96
    db $eb                                        ; $5ff8: $eb
    xor a                                         ; $5ff9: $af
    ld e, e                                       ; $5ffa: $5b
    ld a, a                                       ; $5ffb: $7f
    db $db                                        ; $5ffc: $db
    db $db                                        ; $5ffd: $db
    ld a, a                                       ; $5ffe: $7f
    ld sp, hl                                     ; $5fff: $f9
    rst $28                                       ; $6000: $ef
    rst $28                                       ; $6001: $ef
    pop hl                                        ; $6002: $e1
    jp nc, Jump_07b_57c0                          ; $6003: $d2 $c0 $57

    rst $38                                       ; $6006: $ff
    dec hl                                        ; $6007: $2b
    rst $38                                       ; $6008: $ff
    rst $18                                       ; $6009: $df
    ld c, [hl]                                    ; $600a: $4e
    db $f4                                        ; $600b: $f4

jr_07b_600c:
    ld [c], a                                     ; $600c: $e2
    rst $38                                       ; $600d: $ff
    rst $38                                       ; $600e: $ff
    rst $10                                       ; $600f: $d7
    db $f4                                        ; $6010: $f4
    ret nz                                        ; $6011: $c0

    add l                                         ; $6012: $85
    ld bc, $daf7                                  ; $6013: $01 $f7 $da
    ret nz                                        ; $6016: $c0

    ld d, l                                       ; $6017: $55
    rst $38                                       ; $6018: $ff
    and $e0                                       ; $6019: $e6 $e0
    cpl                                           ; $601b: $2f
    or h                                          ; $601c: $b4
    and b                                         ; $601d: $a0
    ld l, a                                       ; $601e: $6f
    ret nz                                        ; $601f: $c0

    ret nz                                        ; $6020: $c0

    ld a, a                                       ; $6021: $7f
    ld [hl], b                                    ; $6022: $70
    nop                                           ; $6023: $00
    ld b, l                                       ; $6024: $45
    xor $e2                                       ; $6025: $ee $e2
    ldh [$ef], a                                  ; $6027: $e0 $ef
    or b                                          ; $6029: $b0
    ret nz                                        ; $602a: $c0

    ld [c], a                                     ; $602b: $e2
    pop hl                                        ; $602c: $e1
    ld h, c                                       ; $602d: $61
    ld bc, $98fb                                  ; $602e: $01 $fb $98
    and b                                         ; $6031: $a0
    ld [hl], h                                    ; $6032: $74
    ld a, [c]                                     ; $6033: $f2
    pop hl                                        ; $6034: $e1
    push bc                                       ; $6035: $c5
    db $e3                                        ; $6036: $e3
    db $fc                                        ; $6037: $fc
    and $e2                                       ; $6038: $e6 $e2
    cp [hl]                                       ; $603a: $be
    rst $38                                       ; $603b: $ff
    db $ed                                        ; $603c: $ed
    ld d, b                                       ; $603d: $50
    dec b                                         ; $603e: $05
    cp $90                                        ; $603f: $fe $90
    and b                                         ; $6041: $a0
    ld b, b                                       ; $6042: $40
    ret nc                                        ; $6043: $d0

    add b                                         ; $6044: $80
    ld a, [$fee0]                                 ; $6045: $fa $e0 $fe
    ret nc                                        ; $6048: $d0

    sbc e                                         ; $6049: $9b
    cp $f0                                        ; $604a: $fe $f0
    ld [c], a                                     ; $604c: $e2
    ldh [$03], a                                  ; $604d: $e0 $03
    ld [bc], a                                    ; $604f: $02
    adc $61                                       ; $6050: $ce $61
    inc h                                         ; $6052: $24
    daa                                           ; $6053: $27
    db $e3                                        ; $6054: $e3
    rst $38                                       ; $6055: $ff
    ld [hl], e                                    ; $6056: $73

jr_07b_6057:
    ld sp, hl                                     ; $6057: $f9
    ld [hl], b                                    ; $6058: $70
    add sp, $48                                   ; $6059: $e8 $48
    call nz, Call_07b_72e4                        ; $605b: $c4 $e4 $72
    rst $38                                       ; $605e: $ff
    ld h, d                                       ; $605f: $62
    ld d, b                                       ; $6060: $50
    ld d, b                                       ; $6061: $50
    ld l, b                                       ; $6062: $68
    ld c, b                                       ; $6063: $48
    inc h                                         ; $6064: $24
    inc h                                         ; $6065: $24
    ccf                                           ; $6066: $3f
    rst $18                                       ; $6067: $df
    ld de, $899f                                  ; $6068: $11 $9f $89
    rrca                                          ; $606b: $0f
    ld b, $04                                     ; $606c: $06 $04
    daa                                           ; $606e: $27
    sbc [hl]                                      ; $606f: $9e
    db $10                                        ; $6070: $10
    rst $18                                       ; $6071: $df
    ld a, $20                                     ; $6072: $3e $20
    ld a, $20                                     ; $6074: $3e $20
    ccf                                           ; $6076: $3f
    cp $e0                                        ; $6077: $fe $e0
    ld a, a                                       ; $6079: $7f
    jr nz, @+$01                                  ; $607a: $20 $ff

    ld a, [hl]                                    ; $607c: $7e
    ld b, b                                       ; $607d: $40
    ld h, c                                       ; $607e: $61
    ld b, b                                       ; $607f: $40
    ld c, $1e                                     ; $6080: $0e $1e
    ld de, $ff0f                                  ; $6082: $11 $0f $ff
    add hl, de                                    ; $6085: $19
    rlca                                          ; $6086: $07
    dec e                                         ; $6087: $1d
    inc bc                                        ; $6088: $03
    ld a, [de]                                    ; $6089: $1a
    ld b, $02                                     ; $608a: $06 $02
    ld b, $ef                                     ; $608c: $06 $ef
    inc d                                         ; $608e: $14
    inc c                                         ; $608f: $0c
    adc b                                         ; $6090: $88
    ld a, b                                       ; $6091: $78
    call z, Call_000_10c1                         ; $6092: $cc $c1 $10
    rra                                           ; $6095: $1f
    or b                                          ; $6096: $b0
    rst $38                                       ; $6097: $ff
    cp a                                          ; $6098: $bf
    ld l, b                                       ; $6099: $68
    ld l, a                                       ; $609a: $6f
    jr z, jr_07b_60cc                             ; $609b: $28 $2f

    inc h                                         ; $609d: $24
    daa                                           ; $609e: $27
    inc d                                         ; $609f: $14
    rst $38                                       ; $60a0: $ff
    rla                                           ; $60a1: $17
    db $e4                                        ; $60a2: $e4
    inc e                                         ; $60a3: $1c
    ret z                                         ; $60a4: $c8

    jr c, jr_07b_6057                             ; $60a5: $38 $b0

    ld d, b                                       ; $60a7: $50
    ld h, b                                       ; $60a8: $60
    rst $38                                       ; $60a9: $ff
    and b                                         ; $60aa: $a0
    ldh a, [$30]                                  ; $60ab: $f0 $30
    add sp, $28                                   ; $60ad: $e8 $28
    call nz, $8244                                ; $60af: $c4 $44 $82
    pop de                                        ; $60b2: $d1
    add d                                         ; $60b3: $82
    ldh [$61], a                                  ; $60b4: $e0 $61
    call c, $8c61                                 ; $60b6: $dc $61 $8c
    ld h, e                                       ; $60b9: $63
    rla                                           ; $60ba: $17
    pop de                                        ; $60bb: $d1
    ld bc, $bd01                                  ; $60bc: $01 $01 $bd
    rst $38                                       ; $60bf: $ff
    ld bc, $017b                                  ; $60c0: $01 $7b $01
    db $fd                                        ; $60c3: $fd
    inc bc                                        ; $60c4: $03
    ei                                            ; $60c5: $fb
    inc bc                                        ; $60c6: $03
    di                                            ; $60c7: $f3
    rst $20                                       ; $60c8: $e7
    rlca                                          ; $60c9: $07
    push hl                                       ; $60ca: $e5
    rrca                                          ; $60cb: $0f

jr_07b_60cc:
    ld [c], a                                     ; $60cc: $e2
    ld b, e                                       ; $60cd: $43
    sbc $47                                       ; $60ce: $de $47
    ld e, $1f                                     ; $60d0: $1e $1f
    rra                                           ; $60d2: $1f
    rst $38                                       ; $60d3: $ff
    rra                                           ; $60d4: $1f
    dec a                                         ; $60d5: $3d
    ccf                                           ; $60d6: $3f
    ld a, e                                       ; $60d7: $7b
    ld a, a                                       ; $60d8: $7f
    dec a                                         ; $60d9: $3d
    ccf                                           ; $60da: $3f
    ccf                                           ; $60db: $3f
    rst $38                                       ; $60dc: $ff
    ccf                                           ; $60dd: $3f
    ld d, a                                       ; $60de: $57
    ld a, a                                       ; $60df: $7f
    ld l, a                                       ; $60e0: $6f

Call_07b_60e1:
    ld a, a                                       ; $60e1: $7f
    ei                                            ; $60e2: $fb
    rst $38                                       ; $60e3: $ff
    ld [hl], l                                    ; $60e4: $75
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    db $ed                                        ; $60e7: $ed
    ei                                            ; $60e8: $fb
    ld a, [$d7f7]                                 ; $60e9: $fa $f7 $d7
    db $ec                                        ; $60ec: $ec
    cp $bf                                        ; $60ed: $fe $bf
    rst $38                                       ; $60ef: $ff
    db $db                                        ; $60f0: $db
    db $fd                                        ; $60f1: $fd
    ld h, [hl]                                    ; $60f2: $66
    cp e                                          ; $60f3: $bb
    ld a, [$a0da]                                 ; $60f4: $fa $da $a0
    ld d, l                                       ; $60f7: $55
    rst $38                                       ; $60f8: $ff
    xor a                                         ; $60f9: $af
    cp b                                          ; $60fa: $b8
    ld c, a                                       ; $60fb: $4f
    ld h, a                                       ; $60fc: $67
    jp c, $b7da                                   ; $60fd: $da $da $b7

    dec a                                         ; $6100: $3d
    db $eb                                        ; $6101: $eb
    rst $30                                       ; $6102: $f7
    reti                                          ; $6103: $d9


    and e                                         ; $6104: $a3
    ret nz                                        ; $6105: $c0

    ld a, a                                       ; $6106: $7f
    ld a, [c]                                     ; $6107: $f2
    ret nz                                        ; $6108: $c0

    rst $30                                       ; $6109: $f7
    cp a                                          ; $610a: $bf
    ei                                            ; $610b: $fb
    cpl                                           ; $610c: $2f
    rst $18                                       ; $610d: $df
    cp $6f                                        ; $610e: $fe $6f
    ld e, a                                       ; $6110: $5f
    ld a, [bc]                                    ; $6111: $0a
    ld [c], a                                     ; $6112: $e2
    db $dd                                        ; $6113: $dd
    xor $c0                                       ; $6114: $ee $c0
    add b                                         ; $6116: $80
    and c                                         ; $6117: $a1
    reti                                          ; $6118: $d9


    rst $38                                       ; $6119: $ff
    add sp, -$1f                                  ; $611a: $e8 $e1
    or d                                          ; $611c: $b2
    nop                                           ; $611d: $00
    ld b, $fe                                     ; $611e: $06 $fe

jr_07b_6120:
    ld a, h                                       ; $6120: $7c
    ld bc, $e021                                  ; $6121: $01 $21 $e0
    rst $38                                       ; $6124: $ff
    ld hl, $43e0                                  ; $6125: $21 $e0 $43
    ret nz                                        ; $6128: $c0

    ld b, e                                       ; $6129: $43
    ret nz                                        ; $612a: $c0

    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    cp $02                                        ; $612d: $fe $02
    db $e3                                        ; $612f: $e3
    add b                                         ; $6130: $80
    nop                                           ; $6131: $00
    sbc b                                         ; $6132: $98
    nop                                           ; $6133: $00
    cp b                                          ; $6134: $b8
    nop                                           ; $6135: $00
    or b                                          ; $6136: $b0
    rst $38                                       ; $6137: $ff
    nop                                           ; $6138: $00
    ld hl, sp-$01                                 ; $6139: $f8 $ff
    cp $87                                        ; $613b: $fe $87
    ld a, a                                       ; $613d: $7f
    ld h, c                                       ; $613e: $61
    rra                                           ; $613f: $1f
    sbc a                                         ; $6140: $9f
    db $10                                        ; $6141: $10
    rrca                                          ; $6142: $0f
    ld [$0407], sp                                ; $6143: $08 $07 $04
    or b                                          ; $6146: $b0
    and c                                         ; $6147: $a1
    ld sp, $c041                                  ; $6148: $31 $41 $c0
    rst $30                                       ; $614b: $f7
    rst $38                                       ; $614c: $ff
    ldh a, [$3f]                                  ; $614d: $f0 $3f
    ld [$0740], sp                                ; $614f: $08 $40 $07
    cp $03                                        ; $6152: $fe $03
    rst $38                                       ; $6154: $ff
    cp $10                                        ; $6155: $fe $10
    ld [hl+], a                                   ; $6157: $22
    ccf                                           ; $6158: $3f
    rst $38                                       ; $6159: $ff
    di                                            ; $615a: $f3
    ldh [$38], a                                  ; $615b: $e0 $38
    ldh a, [rNR34]                                ; $615d: $f0 $1e
    rst $38                                       ; $615f: $ff
    db $fc                                        ; $6160: $fc
    rlca                                          ; $6161: $07
    rst $38                                       ; $6162: $ff
    inc bc                                        ; $6163: $03
    cp $80                                        ; $6164: $fe $80
    add [hl]                                      ; $6166: $86
    add b                                         ; $6167: $80
    rst $28                                       ; $6168: $ef
    add [hl]                                      ; $6169: $86
    ldh a, [$f0]                                  ; $616a: $f0 $f0
    rrca                                          ; $616c: $0f
    dec bc                                        ; $616d: $0b
    ld b, c                                       ; $616e: $41
    rlca                                          ; $616f: $07
    ldh [$c0], a                                  ; $6170: $e0 $c0
    bit 7, [hl]                                   ; $6172: $cb $7e
    db $fc                                        ; $6174: $fc
    dec sp                                        ; $6175: $3b
    nop                                           ; $6176: $00
    ldh [rDMA], a                                 ; $6177: $e0 $46
    ld b, b                                       ; $6179: $40
    ld h, b                                       ; $617a: $60
    ld b, b                                       ; $617b: $40
    dec c                                         ; $617c: $0d
    db $fc                                        ; $617d: $fc
    cp a                                          ; $617e: $bf
    inc bc                                        ; $617f: $03
    ld a, a                                       ; $6180: $7f
    nop                                           ; $6181: $00
    rrca                                          ; $6182: $0f
    ld a, [bc]                                    ; $6183: $0a
    inc bc                                        ; $6184: $03
    jr nc, jr_07b_6188                            ; $6185: $30 $01

    ld d, a                                       ; $6187: $57

jr_07b_6188:
    ccf                                           ; $6188: $3f
    ld bc, $01af                                  ; $6189: $01 $af $01
    ld e, a                                       ; $618c: $5f
    ld bc, $b5bf                                  ; $618d: $01 $bf $b5
    pop hl                                        ; $6190: $e1
    ldh [rNR41], a                                ; $6191: $e0 $20
    ld [hl], e                                    ; $6193: $73
    ei                                            ; $6194: $fb
    inc b                                         ; $6195: $04
    and $21                                       ; $6196: $e6 $21
    ld [c], a                                     ; $6198: $e2
    jr nz, jr_07b_6120                            ; $6199: $20 $85

    push af                                       ; $619b: $f5
    ld [$439a], a                                 ; $619c: $ea $9a $43
    cp d                                          ; $619f: $ba
    ld [hl+], a                                   ; $61a0: $22
    jr nz, jr_07b_61e1                            ; $61a1: $20 $3e

    ld d, b                                       ; $61a3: $50
    nop                                           ; $61a4: $00
    ld l, d                                       ; $61a5: $6a
    ldh [$b4], a                                  ; $61a6: $e0 $b4
    jr c, @+$05                                   ; $61a8: $38 $03

    rrca                                          ; $61aa: $0f
    rst $38                                       ; $61ab: $ff
    cp $1e                                        ; $61ac: $fe $1e
    ldh a, [rNR32]                                ; $61ae: $f0 $1c
    ld [hl], b                                    ; $61b0: $70
    dec de                                        ; $61b1: $1b
    xor b                                         ; $61b2: $a8
    rra                                           ; $61b3: $1f
    db $fd                                        ; $61b4: $fd
    ld c, e                                       ; $61b5: $4b
    or c                                          ; $61b6: $b1
    ld hl, $fee0                                  ; $61b7: $21 $e0 $fe
    ldh a, [rNR51]                                ; $61ba: $f0 $25
    ld [hl], b                                    ; $61bc: $70
    ld a, [de]                                    ; $61bd: $1a
    cp a                                          ; $61be: $bf
    jr nc, jr_07b_61d6                            ; $61bf: $30 $15

    ld hl, sp+$72                                 ; $61c1: $f8 $72
    ld hl, sp-$78                                 ; $61c3: $f8 $88
    or b                                          ; $61c5: $b0
    dec b                                         ; $61c6: $05
    inc bc                                        ; $61c7: $03
    ld a, e                                       ; $61c8: $7b
    add e                                         ; $61c9: $83
    inc b                                         ; $61ca: $04
    ld a, [hl-]                                   ; $61cb: $3a
    jr nz, jr_07b_61de                            ; $61cc: $20 $10

    stop                                          ; $61ce: $10 $00
    ld [$008c], a                                 ; $61d0: $ea $8c $00
    cp [hl]                                       ; $61d3: $be
    inc h                                         ; $61d4: $24
    nop                                           ; $61d5: $00

jr_07b_61d6:
    add b                                         ; $61d6: $80
    add b                                         ; $61d7: $80
    ld b, b                                       ; $61d8: $40
    ld b, b                                       ; $61d9: $40
    jr nz, @+$01                                  ; $61da: $20 $ff

    ldh [$03], a                                  ; $61dc: $e0 $03

jr_07b_61de:
    ld a, a                                       ; $61de: $7f
    cp [hl]                                       ; $61df: $be
    inc bc                                        ; $61e0: $03

jr_07b_61e1:
    ld e, [hl]                                    ; $61e1: $5e
    inc bc                                        ; $61e2: $03
    xor e                                         ; $61e3: $ab
    ld bc, $8851                                  ; $61e4: $01 $51 $88
    and e                                         ; $61e7: $a3
    rst $38                                       ; $61e8: $ff
    rlca                                          ; $61e9: $07
    rlca                                          ; $61ea: $07
    rst $38                                       ; $61eb: $ff
    rst $20                                       ; $61ec: $e7
    rst $38                                       ; $61ed: $ff
    sub b                                         ; $61ee: $90
    ld a, a                                       ; $61ef: $7f
    ret nz                                        ; $61f0: $c0

    rst $38                                       ; $61f1: $ff
    rst $38                                       ; $61f2: $ff
    ldh [$bb], a                                  ; $61f3: $e0 $bb
    and b                                         ; $61f5: $a0
    or l                                          ; $61f6: $b5
    and b                                         ; $61f7: $a0
    ld a, [$ffe0]                                 ; $61f8: $fa $e0 $ff
    push af                                       ; $61fb: $f5
    ldh [$e0], a                                  ; $61fc: $e0 $e0
    pop bc                                        ; $61fe: $c1
    rst $38                                       ; $61ff: $ff
    ld a, b                                       ; $6200: $78
    rst $38                                       ; $6201: $ff
    adc a                                         ; $6202: $8f
    cp $85                                        ; $6203: $fe $85
    ld b, b                                       ; $6205: $40
    add hl, sp                                    ; $6206: $39
    rst $38                                       ; $6207: $ff
    ld a, h                                       ; $6208: $7c
    rst $08                                       ; $6209: $cf
    ld c, [hl]                                    ; $620a: $4e
    rst $08                                       ; $620b: $cf
    jp z, Jump_000_3fff                           ; $620c: $ca $ff $3f

    ldh a, [$cf]                                  ; $620f: $f0 $cf
    inc a                                         ; $6211: $3c
    ei                                            ; $6212: $fb
    add [hl]                                      ; $6213: $86
    rst $38                                       ; $6214: $ff
    ld [hl], e                                    ; $6215: $73
    rst $30                                       ; $6216: $f7
    rst $38                                       ; $6217: $ff
    ccf                                           ; $6218: $3f
    ldh [$fe], a                                  ; $6219: $e0 $fe
    ldh [$f0], a                                  ; $621b: $e0 $f0
    rra                                           ; $621d: $1f
    db $fd                                        ; $621e: $fd
    sbc a                                         ; $621f: $9f
    rst $38                                       ; $6220: $ff
    rst $38                                       ; $6221: $ff
    add e                                         ; $6222: $83
    rst $00                                       ; $6223: $c7
    add b                                         ; $6224: $80
    pop bc                                        ; $6225: $c1
    nop                                           ; $6226: $00
    ld hl, sp-$40                                 ; $6227: $f8 $c0
    rst $38                                       ; $6229: $ff
    ld a, $f8                                     ; $622a: $3e $f8
    rrca                                          ; $622c: $0f
    rst $38                                       ; $622d: $ff
    dec d                                         ; $622e: $15
    rst $38                                       ; $622f: $ff
    ldh [$60], a                                  ; $6230: $e0 $60
    ld e, a                                       ; $6232: $5f
    ldh [$a0], a                                  ; $6233: $e0 $a0
    ldh [$e0], a                                  ; $6235: $e0 $e0
    ldh [$a5], a                                  ; $6237: $e0 $a5
    pop hl                                        ; $6239: $e1
    jr nz, @-$46                                  ; $623a: $20 $b8

    nop                                           ; $623c: $00
    db $fd                                        ; $623d: $fd
    ret nz                                        ; $623e: $c0

    ld c, b                                       ; $623f: $48
    dec h                                         ; $6240: $25
    add hl, sp                                    ; $6241: $39
    add hl, sp                                    ; $6242: $39
    ld c, a                                       ; $6243: $4f
    ld b, a                                       ; $6244: $47
    and $83                                       ; $6245: $e6 $83
    rst $38                                       ; $6247: $ff
    ld a, [$0d87]                                 ; $6248: $fa $87 $0d
    ld c, $04                                     ; $624b: $0e $04
    rrca                                          ; $624d: $0f
    rlca                                          ; $624e: $07
    rrca                                          ; $624f: $0f
    rst $38                                       ; $6250: $ff
    ld e, $7f                                     ; $6251: $1e $7f
    rst $20                                       ; $6253: $e7
    ld hl, sp+$3e                                 ; $6254: $f8 $3e
    pop bc                                        ; $6256: $c1
    ldh [rNR34], a                                ; $6257: $e0 $1e
    rst $38                                       ; $6259: $ff
    inc bc                                        ; $625a: $03
    db $fc                                        ; $625b: $fc
    ret                                           ; $625c: $c9


    ccf                                           ; $625d: $3f
    ld e, $ff                                     ; $625e: $1e $ff
    rst $20                                       ; $6260: $e7
    ld hl, sp-$01                                 ; $6261: $f8 $ff
    ld a, [hl]                                    ; $6263: $7e
    add c                                         ; $6264: $81
    ldh [rNR34], a                                ; $6265: $e0 $1e
    rlca                                          ; $6267: $07
    ldh [$3f], a                                  ; $6268: $e0 $3f
    nop                                           ; $626a: $00
    rst $38                                       ; $626b: $ff
    ld hl, sp+$07                                 ; $626c: $f8 $07
    db $eb                                        ; $626e: $eb
    ldh a, [$6d]                                  ; $626f: $f0 $6d
    or d                                          ; $6271: $b2
    jp nc, $ff2f                                  ; $6272: $d2 $2f $ff

    inc bc                                        ; $6275: $03
    rst $38                                       ; $6276: $ff
    rla                                           ; $6277: $17
    rra                                           ; $6278: $1f
    adc h                                         ; $6279: $8c
    rrca                                          ; $627a: $0f
    add b                                         ; $627b: $80
    ld a, a                                       ; $627c: $7f
    rst $18                                       ; $627d: $df
    ld [bc], a                                    ; $627e: $02
    add c                                         ; $627f: $81
    db $10                                        ; $6280: $10
    db $10                                        ; $6281: $10
    sub b                                         ; $6282: $90
    cp $e0                                        ; $6283: $fe $e0

Call_07b_6285:
    sbc b                                         ; $6285: $98
    ld [$58f7], sp                                ; $6286: $08 $f7 $58
    adc b                                         ; $6289: $88
    ret z                                         ; $628a: $c8

    cp $e0                                        ; $628b: $fe $e0
    xor h                                         ; $628d: $ac
    call nz, Call_000_0203                        ; $628e: $c4 $03 $02
    ld a, a                                       ; $6291: $7f
    ld b, e                                       ; $6292: $43
    ld b, d                                       ; $6293: $42
    ld h, [hl]                                    ; $6294: $66
    ld h, h                                       ; $6295: $64
    ld e, h                                       ; $6296: $5c
    ld a, h                                       ; $6297: $7c
    ld b, h                                       ; $6298: $44
    cp $e0                                        ; $6299: $fe $e0
    rst $38                                       ; $629b: $ff
    ld b, [hl]                                    ; $629c: $46
    ld a, h                                       ; $629d: $7c
    ld [hl+], a                                   ; $629e: $22
    ld a, $ba                                     ; $629f: $3e $ba
    and l                                         ; $62a1: $a5
    pop af                                        ; $62a2: $f1
    adc $f7                                       ; $62a3: $ce $f7
    ldh [$3f], a                                  ; $62a5: $e0 $3f
    ret nz                                        ; $62a7: $c0

    add h                                         ; $62a8: $84
    ld [hl+], a                                   ; $62a9: $22
    nop                                           ; $62aa: $00
    rst $38                                       ; $62ab: $ff
    ld a, b                                       ; $62ac: $78
    or a                                          ; $62ad: $b7
    rst $38                                       ; $62ae: $ff
    ei                                            ; $62af: $fb
    db $fd                                        ; $62b0: $fd
    jp hl                                         ; $62b1: $e9


    rst $28                                       ; $62b2: $ef
    sbc c                                         ; $62b3: $99
    sub a                                         ; $62b4: $97
    di                                            ; $62b5: $f3
    db $fd                                        ; $62b6: $fd
    ld e, e                                       ; $62b7: $5b
    ld a, e                                       ; $62b8: $7b
    cp [hl]                                       ; $62b9: $be
    add $43                                       ; $62ba: $c6 $43
    ldh a, [$1f]                                  ; $62bc: $f0 $1f
    cp $e0                                        ; $62be: $fe $e0
    rst $18                                       ; $62c0: $df
    ld a, [$ffe0]                                 ; $62c1: $fa $e0 $ff
    sbc a                                         ; $62c4: $9f
    ldh [$3f], a                                  ; $62c5: $e0 $3f
    ld l, a                                       ; $62c7: $6f
    ccf                                           ; $62c8: $3f
    cp c                                          ; $62c9: $b9
    jr nc, @+$01                                  ; $62ca: $30 $ff

    rst $30                                       ; $62cc: $f7
    ld a, [bc]                                    ; $62cd: $0a
    rst $28                                       ; $62ce: $ef
    dec d                                         ; $62cf: $15
    ld h, d                                       ; $62d0: $62
    add d                                         ; $62d1: $82
    ld a, [bc]                                    ; $62d2: $0a
    add sp, $17                                   ; $62d3: $e8 $17
    db $f4                                        ; $62d5: $f4
    rst $30                                       ; $62d6: $f7
    dec bc                                        ; $62d7: $0b
    ld hl, sp-$79                                 ; $62d8: $f8 $87
    and d                                         ; $62da: $a2
    inc bc                                        ; $62db: $03
    ld c, a                                       ; $62dc: $4f
    jp $fe3d                                      ; $62dd: $c3 $3d $fe


    cp a                                          ; $62e0: $bf
    xor [hl]                                      ; $62e1: $ae
    ld d, c                                       ; $62e2: $51
    ld d, l                                       ; $62e3: $55
    xor d                                         ; $62e4: $aa
    dec bc                                        ; $62e5: $0b
    push af                                       ; $62e6: $f5
    add hl, bc                                    ; $62e7: $09
    ld b, c                                       ; $62e8: $41
    ld h, b                                       ; $62e9: $60
    db $fc                                        ; $62ea: $fc
    inc a                                         ; $62eb: $3c
    ldh [rLY], a                                  ; $62ec: $e0 $44
    ldh [rLCDC], a                                ; $62ee: $e0 $40
    add b                                         ; $62f0: $80
    add b                                         ; $62f1: $80
    ld bc, $e601                                  ; $62f2: $01 $01 $e6
    rst $38                                       ; $62f5: $ff
    sbc a                                         ; $62f6: $9f
    db $ec                                        ; $62f7: $ec
    sbc a                                         ; $62f8: $9f
    ld h, h                                       ; $62f9: $64
    ld e, a                                       ; $62fa: $5f
    ld [hl], d                                    ; $62fb: $72
    ld c, a                                       ; $62fc: $4f
    ld [hl], e                                    ; $62fd: $73
    rst $28                                       ; $62fe: $ef
    ld c, a                                       ; $62ff: $4f
    inc sp                                        ; $6300: $33
    cpl                                           ; $6301: $2f
    ld sp, $40ac                                  ; $6302: $31 $ac $40
    inc sp                                        ; $6305: $33
    inc c                                         ; $6306: $0c
    ldh a, [rIE]                                  ; $6307: $f0 $ff
    rrca                                          ; $6309: $0f
    add c                                         ; $630a: $81
    ld a, [hl]                                    ; $630b: $7e
    add hl, de                                    ; $630c: $19
    add [hl]                                      ; $630d: $86
    add hl, hl                                    ; $630e: $29
    sub $18                                       ; $630f: $d6 $18
    rst $38                                       ; $6311: $ff
    rst $20                                       ; $6312: $e7
    inc l                                         ; $6313: $2c
    db $d3                                        ; $6314: $d3
    inc d                                         ; $6315: $14
    db $eb                                        ; $6316: $eb
    add c                                         ; $6317: $81
    ld a, b                                       ; $6318: $78
    rra                                           ; $6319: $1f
    ld a, c                                       ; $631a: $79
    add b                                         ; $631b: $80
    inc a                                         ; $631c: $3c
    inc bc                                        ; $631d: $03
    or b                                          ; $631e: $b0
    ld b, d                                       ; $631f: $42
    nop                                           ; $6320: $00
    add d                                         ; $6321: $82
    ld bc, $fec2                                  ; $6322: $01 $c2 $fe
    ldh [$ea], a                                  ; $6325: $e0 $ea
    xor [hl]                                      ; $6327: $ae
    ld b, e                                       ; $6328: $43
    pop hl                                        ; $6329: $e1
    inc hl                                        ; $632a: $23
    ret nz                                        ; $632b: $c0

    ld l, h                                       ; $632c: $6c
    xor h                                         ; $632d: $ac
    jr nz, jr_07b_6374                            ; $632e: $20 $44

    db $e4                                        ; $6330: $e4
    ld d, [hl]                                    ; $6331: $56
    cp $ae                                        ; $6332: $fe $ae
    ld b, b                                       ; $6334: $40
    ld [hl-], a                                   ; $6335: $32
    ld [c], a                                     ; $6336: $e2
    or d                                          ; $6337: $b2
    ld h, d                                       ; $6338: $62
    or [hl]                                       ; $6339: $b6
    ld h, d                                       ; $633a: $62
    ld [hl+], a                                   ; $633b: $22
    cp a                                          ; $633c: $bf
    ld a, $12                                     ; $633d: $3e $12
    rra                                           ; $633f: $1f
    ld de, $091f                                  ; $6340: $11 $1f $09
    sub d                                         ; $6343: $92
    nop                                           ; $6344: $00
    inc bc                                        ; $6345: $03
    cp $a6                                        ; $6346: $fe $a6
    ld [bc], a                                    ; $6348: $02
    ccf                                           ; $6349: $3f
    ld e, $3e                                     ; $634a: $1e $3e
    ld [de], a                                    ; $634c: $12
    inc e                                         ; $634d: $1c
    inc b                                         ; $634e: $04
    jr @+$01                                      ; $634f: $18 $ff

    sbc b                                         ; $6351: $98
    ret nz                                        ; $6352: $c0

    add b                                         ; $6353: $80
    ld b, b                                       ; $6354: $40
    ret nz                                        ; $6355: $c0

    ldh [$e0], a                                  ; $6356: $e0 $e0
    rra                                           ; $6358: $1f
    sbc l                                         ; $6359: $9d
    db $10                                        ; $635a: $10
    ld d, $a3                                     ; $635b: $16 $a3
    ld a, [bc]                                    ; $635d: $0a
    nop                                           ; $635e: $00
    dec d                                         ; $635f: $15
    ld [c], a                                     ; $6360: $e2
    ld h, b                                       ; $6361: $60

Jump_07b_6362:
    rst $30                                       ; $6362: $f7
    jr nz, jr_07b_6381                            ; $6363: $20 $1c

    rst $38                                       ; $6365: $ff
    ld h, [hl]                                    ; $6366: $66
    ld b, $9e                                     ; $6367: $06 $9e
    ld [$145e], sp                                ; $6369: $08 $5e $14
    cp l                                          ; $636c: $bd
    db $10                                        ; $636d: $10
    rst $18                                       ; $636e: $df
    jp $fe01                                      ; $636f: $c3 $01 $fe


    daa                                           ; $6372: $27
    ret c                                         ; $6373: $d8

jr_07b_6374:
    ld [$f5c0], sp                                ; $6374: $08 $c0 $f5
    adc d                                         ; $6377: $8a
    cp e                                          ; $6378: $bb
    cp $81                                        ; $6379: $fe $81
    sub l                                         ; $637b: $95
    ld [bc], a                                    ; $637c: $02
    nop                                           ; $637d: $00
    db $fd                                        ; $637e: $fd
    ld [bc], a                                    ; $637f: $02
    db $ec                                        ; $6380: $ec

jr_07b_6381:
    and c                                         ; $6381: $a1
    ld a, $f7                                     ; $6382: $3e $f7
    cp $af                                        ; $6384: $fe $af
    ld d, a                                       ; $6386: $57
    call c, $aaa1                                 ; $6387: $dc $a1 $aa
    ld d, l                                       ; $638a: $55
    ld d, l                                       ; $638b: $55
    xor d                                         ; $638c: $aa
    rst $38                                       ; $638d: $ff
    xor d                                         ; $638e: $aa
    ld d, l                                       ; $638f: $55
    ld b, b                                       ; $6390: $40
    cp a                                          ; $6391: $bf
    rrca                                          ; $6392: $0f
    rrca                                          ; $6393: $0f
    pop af                                        ; $6394: $f1
    rst $38                                       ; $6395: $ff
    rst $38                                       ; $6396: $ff
    jp hl                                         ; $6397: $e9


    rla                                           ; $6398: $17
    pop de                                        ; $6399: $d1
    cpl                                           ; $639a: $2f
    and d                                         ; $639b: $a2
    ld e, [hl]                                    ; $639c: $5e
    ld b, d                                       ; $639d: $42
    cp [hl]                                       ; $639e: $be
    sbc [hl]                                      ; $639f: $9e
    add h                                         ; $63a0: $84
    ld bc, $1719                                  ; $63a1: $01 $19 $17
    dec e                                         ; $63a4: $1d
    inc de                                        ; $63a5: $13
    ld c, $63                                     ; $63a6: $0e $63
    db $10                                        ; $63a8: $10
    ld h, e                                       ; $63a9: $63
    xor h                                         ; $63aa: $ac
    rst $38                                       ; $63ab: $ff
    db $d3                                        ; $63ac: $d3
    sub [hl]                                      ; $63ad: $96
    jp hl                                         ; $63ae: $e9


    adc [hl]                                      ; $63af: $8e
    pop af                                        ; $63b0: $f1
    sub [hl]                                      ; $63b1: $96
    jp hl                                         ; $63b2: $e9


    set 7, a                                      ; $63b3: $cb $ff
    db $f4                                        ; $63b5: $f4
    ld d, a                                       ; $63b6: $57
    add sp, $4b                                   ; $63b7: $e8 $4b
    rst $30                                       ; $63b9: $f7
    ld d, [hl]                                    ; $63ba: $56
    db $ec                                        ; $63bb: $ec
    ld a, a                                       ; $63bc: $7f
    db $fd                                        ; $63bd: $fd
    add b                                         ; $63be: $80
    ld c, $61                                     ; $63bf: $0e $61
    ld a, $c0                                     ; $63c1: $3e $c0
    ld [hl], b                                    ; $63c3: $70
    rst $20                                       ; $63c4: $e7
    sub a                                         ; $63c5: $97
    sbc b                                         ; $63c6: $98
    rst $28                                       ; $63c7: $ef
    adc a                                         ; $63c8: $8f
    adc b                                         ; $63c9: $88
    rst $00                                       ; $63ca: $c7
    call nz, Call_000_20fc                        ; $63cb: $c4 $fc $20
    inc bc                                        ; $63ce: $03
    ret nz                                        ; $63cf: $c0

    inc e                                         ; $63d0: $1c
    rst $38                                       ; $63d1: $ff
    jr @-$1e                                      ; $63d2: $18 $e0

    ld hl, sp+$00                                 ; $63d4: $f8 $00
    db $fc                                        ; $63d6: $fc
    nop                                           ; $63d7: $00
    db $fc                                        ; $63d8: $fc
    inc c                                         ; $63d9: $0c
    rst $38                                       ; $63da: $ff
    ld a, [c]                                     ; $63db: $f2
    ld [de], a                                    ; $63dc: $12
    or [hl]                                       ; $63dd: $b6
    ld h, d                                       ; $63de: $62
    ld h, [hl]                                    ; $63df: $66
    jp nz, Jump_07b_422e                          ; $63e0: $c2 $2e $42

    rst $38                                       ; $63e3: $ff
    ld a, [hl-]                                   ; $63e4: $3a
    ld b, [hl]                                    ; $63e5: $46
    ld [de], a                                    ; $63e6: $12
    ld l, [hl]                                    ; $63e7: $6e
    ld h, h                                       ; $63e8: $64
    inc a                                         ; $63e9: $3c
    inc e                                         ; $63ea: $1c
    inc a                                         ; $63eb: $3c
    di                                            ; $63ec: $f3
    ld [hl+], a                                   ; $63ed: $22
    ld e, $f8                                     ; $63ee: $1e $f8
    ld bc, $61fe                                  ; $63f0: $01 $fe $61
    rrca                                          ; $63f3: $0f
    rrca                                          ; $63f4: $0f
    rla                                           ; $63f5: $17
    ld [de], a                                    ; $63f6: $12
    cp a                                          ; $63f7: $bf
    rla                                           ; $63f8: $17
    ld d, $2f                                     ; $63f9: $16 $2f
    add hl, hl                                    ; $63fb: $29
    rst $38                                       ; $63fc: $ff
    ldh [$5e], a                                  ; $63fd: $e0 $5e
    and b                                         ; $63ff: $a0
    inc bc                                        ; $6400: $03
    rst $18                                       ; $6401: $df
    cp $1c                                        ; $6402: $fe $1c
    push af                                       ; $6404: $f5
    ldh [$aa], a                                  ; $6405: $e0 $aa
    and a                                         ; $6407: $a7
    and b                                         ; $6408: $a0
    xor d                                         ; $6409: $aa
    nop                                           ; $640a: $00
    rst $38                                       ; $640b: $ff
    ldh [$7f], a                                  ; $640c: $e0 $7f
    ldh a, [$df]                                  ; $640e: $f0 $df
    ret nc                                        ; $6410: $d0

    rra                                           ; $6411: $1f
    sbc b                                         ; $6412: $98
    cpl                                           ; $6413: $2f
    rst $38                                       ; $6414: $ff
    ld [$1e5f], sp                                ; $6415: $08 $5f $1e
    xor a                                         ; $6418: $af
    dec [hl]                                      ; $6419: $35
    ld e, l                                       ; $641a: $5d
    ld h, h                                       ; $641b: $64
    db $fc                                        ; $641c: $fc
    rst $38                                       ; $641d: $ff
    ld [$d415], a                                 ; $641e: $ea $15 $d4
    dec hl                                        ; $6421: $2b
    xor b                                         ; $6422: $a8
    ld d, a                                       ; $6423: $57
    ret nc                                        ; $6424: $d0

    cpl                                           ; $6425: $2f
    ld h, h                                       ; $6426: $64
    db $fc                                        ; $6427: $fc
    pop hl                                        ; $6428: $e1
    or d                                          ; $6429: $b2

jr_07b_642a:
    ld h, b                                       ; $642a: $60
    nop                                           ; $642b: $00
    push de                                       ; $642c: $d5
    jp $81aa                                      ; $642d: $c3 $aa $81


    jr c, jr_07b_642a                             ; $6430: $38 $f8

    ld [c], a                                     ; $6432: $e2
    and c                                         ; $6433: $a1
    ld l, a                                       ; $6434: $6f
    db $10                                        ; $6435: $10
    ldh a, [rNR41]                                ; $6436: $f0 $20
    ldh [$e2], a                                  ; $6438: $e0 $e2
    ld b, a                                       ; $643a: $47
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    and b                                         ; $643d: $a0
    ld h, c                                       ; $643e: $61
    cp $be                                        ; $643f: $fe $be
    add hl, bc                                    ; $6441: $09
    call z, $d776                                 ; $6442: $cc $76 $d7
    ld l, [hl]                                    ; $6445: $6e
    db $fd                                        ; $6446: $fd
    xor c                                         ; $6447: $a9
    ld l, b                                       ; $6448: $68
    rst $38                                       ; $6449: $ff
    ld a, h                                       ; $644a: $7c
    ld h, $3c                                     ; $644b: $26 $3c
    ld a, [hl-]                                   ; $644d: $3a
    ld a, [hl+]                                   ; $644e: $2a
    dec l                                         ; $644f: $2d
    add hl, sp                                    ; $6450: $39
    inc e                                         ; $6451: $1c
    ld a, a                                       ; $6452: $7f
    inc e                                         ; $6453: $1c
    ld h, a                                       ; $6454: $67
    ld h, d                                       ; $6455: $62
    inc sp                                        ; $6456: $33
    ld de, $0809                                  ; $6457: $11 $09 $08
    ld b, d                                       ; $645a: $42
    and e                                         ; $645b: $a3
    ld a, [hl]                                    ; $645c: $7e
    sbc h                                         ; $645d: $9c

jr_07b_645e:
    ld hl, $22f2                                  ; $645e: $21 $f2 $22
    and $24                                       ; $6461: $e6 $24
    rst $20                                       ; $6463: $e7
    call nz, $8184                                ; $6464: $c4 $84 $81
    rst $38                                       ; $6467: $ff
    ld c, $04                                     ; $6468: $0e $04
    ld a, [bc]                                    ; $646a: $0a
    dec c                                         ; $646b: $0d
    ld [$3a0f], sp                                ; $646c: $08 $0f $3a
    ld b, $ff                                     ; $646f: $06 $ff
    ld a, [de]                                    ; $6471: $1a
    ld b, $04                                     ; $6472: $06 $04
    inc c                                         ; $6474: $0c
    inc d                                         ; $6475: $14
    inc c                                         ; $6476: $0c
    jr z, jr_07b_6491                             ; $6477: $28 $18

    rst $28                                       ; $6479: $ef
    sub b                                         ; $647a: $90
    ld [hl], b                                    ; $647b: $70
    jr nz, jr_07b_645e                            ; $647c: $20 $e0

    add b                                         ; $647e: $80
    and l                                         ; $647f: $a5
    inc bc                                        ; $6480: $03
    inc bc                                        ; $6481: $03
    rlca                                          ; $6482: $07
    rst $38                                       ; $6483: $ff
    inc b                                         ; $6484: $04
    rrca                                          ; $6485: $0f
    add hl, bc                                    ; $6486: $09
    ld a, [de]                                    ; $6487: $1a
    inc de                                        ; $6488: $13
    inc [hl]                                      ; $6489: $34
    daa                                           ; $648a: $27
    ccf                                           ; $648b: $3f
    rst $38                                       ; $648c: $ff
    add hl, hl                                    ; $648d: $29
    ld a, l                                       ; $648e: $7d
    ld d, c                                       ; $648f: $51
    ld sp, hl                                     ; $6490: $f9

jr_07b_6491:
    ldh a, [$f1]                                  ; $6491: $f0 $f1

jr_07b_6493:
    ld h, b                                       ; $6493: $60
    pop hl                                        ; $6494: $e1
    rst $38                                       ; $6495: $ff
    ret nz                                        ; $6496: $c0

    rst $00                                       ; $6497: $c7
    add e                                         ; $6498: $83
    db $fc                                        ; $6499: $fc
    sbc a                                         ; $649a: $9f
    ld h, b                                       ; $649b: $60
    rst $38                                       ; $649c: $ff
    ld d, a                                       ; $649d: $57
    rst $38                                       ; $649e: $ff
    ld bc, $07ae                                  ; $649f: $01 $ae $07
    ret c                                         ; $64a2: $d8

    adc a                                         ; $64a3: $8f
    ldh a, [$bf]                                  ; $64a4: $f0 $bf
    pop bc                                        ; $64a6: $c1
    ld a, $34                                     ; $64a7: $3e $34
    jr nz, jr_07b_64b7                            ; $64a9: $20 $0c

    ld hl, sp+$38                                 ; $64ab: $f8 $38
    ldh a, [$82]                                  ; $64ad: $f0 $82
    ld [hl-], a                                   ; $64af: $32
    ld [hl+], a                                   ; $64b0: $22
    adc h                                         ; $64b1: $8c
    jr nz, jr_07b_6493                            ; $64b2: $20 $df

    add e                                         ; $64b4: $83
    adc [hl]                                      ; $64b5: $8e
    inc bc                                        ; $64b6: $03

jr_07b_64b7:
    rlca                                          ; $64b7: $07
    ld bc, $2130                                  ; $64b8: $01 $30 $21
    ret nz                                        ; $64bb: $c0

    add b                                         ; $64bc: $80
    rst $38                                       ; $64bd: $ff
    ld h, b                                       ; $64be: $60
    ld b, b                                       ; $64bf: $40
    jr nc, jr_07b_64e2                            ; $64c0: $30 $20

    inc e                                         ; $64c2: $1c
    jr jr_07b_64cc                                ; $64c3: $18 $07

    ld b, $bd                                     ; $64c5: $06 $bd
    inc bc                                        ; $64c7: $03
    ld d, $40                                     ; $64c8: $16 $40
    add hl, bc                                    ; $64ca: $09
    rrca                                          ; $64cb: $0f

jr_07b_64cc:
    ld c, $0f                                     ; $64cc: $0e $0f
    ld b, e                                       ; $64ce: $43
    ret nz                                        ; $64cf: $c0

    ld [bc], a                                    ; $64d0: $02
    db $fc                                        ; $64d1: $fc
    ld e, e                                       ; $64d2: $5b
    ld b, b                                       ; $64d3: $40
    push hl                                       ; $64d4: $e5
    ld b, c                                       ; $64d5: $41
    add b                                         ; $64d6: $80
    ret nz                                        ; $64d7: $c0

    ret nz                                        ; $64d8: $c0

    or b                                          ; $64d9: $b0
    ldh a, [$8c]                                  ; $64da: $f0 $8c
    rst $38                                       ; $64dc: $ff
    call c, $e343                                 ; $64dd: $dc $43 $e3
    db $fc                                        ; $64e0: $fc
    ld a, h                                       ; $64e1: $7c

jr_07b_64e2:
    cp $e2                                        ; $64e2: $fe $e2
    ld a, a                                       ; $64e4: $7f
    rst $18                                       ; $64e5: $df
    ld sp, $0e1f                                  ; $64e6: $31 $1f $0e
    ld l, b                                       ; $64e9: $68
    ld c, a                                       ; $64ea: $4f
    or d                                          ; $64eb: $b2
    ldh [$df], a                                  ; $64ec: $e0 $df
    ld [hl], b                                    ; $64ee: $70
    rst $38                                       ; $64ef: $ff

jr_07b_64f0:
    ccf                                           ; $64f0: $3f
    jr nc, jr_07b_6512                            ; $64f1: $30 $1f

    ld sp, $711f                                  ; $64f3: $31 $1f $71
    rra                                           ; $64f6: $1f
    di                                            ; $64f7: $f3
    ld a, l                                       ; $64f8: $7d
    sbc a                                         ; $64f9: $9f
    dec sp                                        ; $64fa: $3b
    pop bc                                        ; $64fb: $c1
    ld c, $fc                                     ; $64fc: $0e $fc

jr_07b_64fe:
    jr c, jr_07b_64f0                             ; $64fe: $38 $f0

    ldh [$f6], a                                  ; $6500: $e0 $f6
    add b                                         ; $6502: $80
    and $d0                                       ; $6503: $e6 $d0
    pop hl                                        ; $6505: $e1
    ldh [$c0], a                                  ; $6506: $e0 $c0
    db $ed                                        ; $6508: $ed
    dec b                                         ; $6509: $05
    inc l                                         ; $650a: $2c
    ld h, h                                       ; $650b: $64
    ld bc, $0117                                  ; $650c: $01 $17 $01
    adc $10                                       ; $650f: $ce $10
    add [hl]                                      ; $6511: $86

jr_07b_6512:
    inc bc                                        ; $6512: $03
    ld a, a                                       ; $6513: $7f
    inc bc                                        ; $6514: $03
    jr nc, jr_07b_657e                            ; $6515: $30 $67

    ret nz                                        ; $6517: $c0

    inc bc                                        ; $6518: $03
    inc bc                                        ; $6519: $03
    inc bc                                        ; $651a: $03
    rst $38                                       ; $651b: $ff
    inc c                                         ; $651c: $0c
    rrca                                          ; $651d: $0f
    rla                                           ; $651e: $17
    jr jr_07b_6538                                ; $651f: $18 $17

    jr jr_07b_652e                                ; $6521: $18 $0b

    inc c                                         ; $6523: $0c
    rst $38                                       ; $6524: $ff
    inc c                                         ; $6525: $0c
    rrca                                          ; $6526: $0f
    inc de                                        ; $6527: $13
    inc e                                         ; $6528: $1c
    rla                                           ; $6529: $17
    jr jr_07b_658c                                ; $652a: $18 $60

    ret nz                                        ; $652c: $c0

    rst $38                                       ; $652d: $ff

jr_07b_652e:
    ldh a, [rNR41]                                ; $652e: $f0 $20
    ld hl, sp+$10                                 ; $6530: $f8 $10
    db $fc                                        ; $6532: $fc
    inc c                                         ; $6533: $0c
    ld c, $f2                                     ; $6534: $0e $f2
    ldh a, [$65]                                  ; $6536: $f0 $65

jr_07b_6538:
    ld h, b                                       ; $6538: $60
    inc a                                         ; $6539: $3c
    nop                                           ; $653a: $00
    cp d                                          ; $653b: $ba
    and e                                         ; $653c: $a3
    jp $c0c3                                      ; $653d: $c3 $c3 $c0


    ret nz                                        ; $6540: $c0

    ldh a, [$30]                                  ; $6541: $f0 $30
    sbc a                                         ; $6543: $9f
    cp $dc                                        ; $6544: $fe $dc
    ld hl, sp-$10                                 ; $6546: $f8 $f0
    jr nc, jr_07b_64fe                            ; $6548: $30 $b4

    call nz, Call_07b_41ce                        ; $654a: $c4 $ce $41
    ld b, b                                       ; $654d: $40
    rst $38                                       ; $654e: $ff
    ld b, b                                       ; $654f: $40
    ld h, b                                       ; $6550: $60
    ld b, b                                       ; $6551: $40
    ld h, b                                       ; $6552: $60
    jr nz, @+$37                                  ; $6553: $20 $35

    jr nz, jr_07b_65d1                            ; $6555: $20 $7a

    rst $38                                       ; $6557: $ff
    db $10                                        ; $6558: $10
    cp l                                          ; $6559: $bd
    ld [$087f], sp                                ; $655a: $08 $7f $08
    rst $38                                       ; $655d: $ff
    inc e                                         ; $655e: $1c
    ld a, [hl+]                                   ; $655f: $2a
    adc $01                                       ; $6560: $ce $01
    add b                                         ; $6562: $80
    xor e                                         ; $6563: $ab
    nop                                           ; $6564: $00
    ld d, a                                       ; $6565: $57
    cp b                                          ; $6566: $b8
    ld b, b                                       ; $6567: $40
    pop de                                        ; $6568: $d1
    add b                                         ; $6569: $80
    ld bc, $ffff                                  ; $656a: $01 $ff $ff
    inc bc                                        ; $656d: $03
    db $fd                                        ; $656e: $fd
    rlca                                          ; $656f: $07
    rst $38                                       ; $6570: $ff
    rlca                                          ; $6571: $07
    db $fd                                        ; $6572: $fd
    rrca                                          ; $6573: $0f
    ld a, [$1eff]                                 ; $6574: $fa $ff $1e
    or $3e                                        ; $6577: $f6 $3e
    ld [$d4fe], a                                 ; $6579: $ea $fe $d4
    db $fc                                        ; $657c: $fc
    and h                                         ; $657d: $a4

jr_07b_657e:
    ld bc, $00fc                                  ; $657e: $01 $fc $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    dec b                                         ; $6583: $05
    rrca                                          ; $6584: $0f
    rst $38                                       ; $6585: $ff
    ldh a, [$0b]                                  ; $6586: $f0 $0b
    rst $38                                       ; $6588: $ff
    add sp, -$20                                  ; $6589: $e8 $e0
    rst $38                                       ; $658b: $ff

jr_07b_658c:
    ldh [rIE], a                                  ; $658c: $e0 $ff
    ldh [$f9], a                                  ; $658e: $e0 $f9
    call nc, $13e1                                ; $6590: $d4 $e1 $13
    ld c, e                                       ; $6593: $4b
    ld c, e                                       ; $6594: $4b
    xor $ed                                       ; $6595: $ee $ed
    ldh [$f3], a                                  ; $6597: $e0 $f3
    add hl, bc                                    ; $6599: $09
    reti                                          ; $659a: $d9


    ei                                            ; $659b: $fb
    and a                                         ; $659c: $a7
    rst $28                                       ; $659d: $ef
    pop hl                                        ; $659e: $e1
    db $ec                                        ; $659f: $ec
    db $d3                                        ; $65a0: $d3
    rrca                                          ; $65a1: $0f
    add hl, bc                                    ; $65a2: $09
    rst $38                                       ; $65a3: $ff
    ldh [$c2], a                                  ; $65a4: $e0 $c2
    rst $30                                       ; $65a6: $f7
    dec c                                         ; $65a7: $0d
    rst $18                                       ; $65a8: $df
    ld [c], a                                     ; $65a9: $e2
    ld a, [bc]                                    ; $65aa: $0a
    ld a, [bc]                                    ; $65ab: $0a
    adc c                                         ; $65ac: $89
    ld a, [bc]                                    ; $65ad: $0a
    ld b, b                                       ; $65ae: $40
    jp hl                                         ; $65af: $e9


    pop af                                        ; $65b0: $f1
    pop hl                                        ; $65b1: $e1
    inc c                                         ; $65b2: $0c
    rst $38                                       ; $65b3: $ff
    pop hl                                        ; $65b4: $e1
    rla                                           ; $65b5: $17
    ld [c], a                                     ; $65b6: $e2
    ldh [$f1], a                                  ; $65b7: $e0 $f1
    ld c, d                                       ; $65b9: $4a
    adc e                                         ; $65ba: $8b
    ld a, [bc]                                    ; $65bb: $0a
    ld a, [bc]                                    ; $65bc: $0a
    rst $18                                       ; $65bd: $df
    ld [c], a                                     ; $65be: $e2
    ld c, $c1                                     ; $65bf: $0e $c1
    push hl                                       ; $65c1: $e5
    ret nz                                        ; $65c2: $c0

    db $ed                                        ; $65c3: $ed
    ldh [$e7], a                                  ; $65c4: $e0 $e7
    rrca                                          ; $65c6: $0f
    ld a, c                                       ; $65c7: $79
    rrca                                          ; $65c8: $0f
    pop af                                        ; $65c9: $f1
    ld [c], a                                     ; $65ca: $e2
    ldh [$ed], a                                  ; $65cb: $e0 $ed
    ld c, d                                       ; $65cd: $4a
    inc c                                         ; $65ce: $0c
    ld c, $0e                                     ; $65cf: $0e $0e

jr_07b_65d1:
    ret nz                                        ; $65d1: $c0

    ldh [$2b], a                                  ; $65d2: $e0 $2b
    add hl, bc                                    ; $65d4: $09
    add hl, bc                                    ; $65d5: $09
    ldh [$f4], a                                  ; $65d6: $e0 $f4
    ld a, [bc]                                    ; $65d8: $0a
    ldh [$e0], a                                  ; $65d9: $e0 $e0
    ld c, $e0                                     ; $65db: $0e $e0
    ldh [$c0], a                                  ; $65dd: $e0 $c0
    pop af                                        ; $65df: $f1
    nop                                           ; $65e0: $00
    add b                                         ; $65e1: $80
    rst $18                                       ; $65e2: $df
    ldh [rIE], a                                  ; $65e3: $e0 $ff
    ldh [rIE], a                                  ; $65e5: $e0 $ff
    ldh [rIE], a                                  ; $65e7: $e0 $ff
    ldh [rIE], a                                  ; $65e9: $e0 $ff
    nop                                           ; $65eb: $00
    rst $10                                       ; $65ec: $d7
    rst $38                                       ; $65ed: $ff
    rst $38                                       ; $65ee: $ff
    rst $38                                       ; $65ef: $ff
    rst $38                                       ; $65f0: $ff
    call z, $c41f                                 ; $65f1: $cc $1f $c4
    rst $38                                       ; $65f4: $ff
    cp h                                          ; $65f5: $bc
    rrca                                          ; $65f6: $0f
    dec bc                                        ; $65f7: $0b
    call c, $1fb2                                 ; $65f8: $dc $b2 $1f
    jp Jump_000_0d0d                              ; $65fb: $c3 $0d $0d


    nop                                           ; $65fe: $00
    nop                                           ; $65ff: $00
    reti                                          ; $6600: $d9


    rst $38                                       ; $6601: $ff
    and d                                         ; $6602: $a2
    nop                                           ; $6603: $00
    push de                                       ; $6604: $d5
    ld b, b                                       ; $6605: $40
    jp nz, $b4e0                                  ; $6606: $c2 $e0 $b4

    ld b, b                                       ; $6609: $40
    jp $e4c0                                      ; $660a: $c3 $c0 $e4


    nop                                           ; $660d: $00
    db $d3                                        ; $660e: $d3
    inc bc                                        ; $660f: $03
    ld a, [bc]                                    ; $6610: $0a
    ld c, [hl]                                    ; $6611: $4e
    ldh [$fa], a                                  ; $6612: $e0 $fa
    ld l, l                                       ; $6614: $6d
    and b                                         ; $6615: $a0
    rst $38                                       ; $6616: $ff
    and b                                         ; $6617: $a0
    ret nz                                        ; $6618: $c0

    di                                            ; $6619: $f3
    add b                                         ; $661a: $80
    rst $18                                       ; $661b: $df
    ldh [$fb], a                                  ; $661c: $e0 $fb
    nop                                           ; $661e: $00
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    add l                                         ; $6621: $85
    inc bc                                        ; $6622: $03
    rst $38                                       ; $6623: $ff
    ldh a, [rP1]                                  ; $6624: $f0 $00
    rst $38                                       ; $6626: $ff
    add sp, -$20                                  ; $6627: $e8 $e0
    rst $38                                       ; $6629: $ff
    ldh [rIE], a                                  ; $662a: $e0 $ff
    ldh [$f9], a                                  ; $662c: $e0 $f9
    nop                                           ; $662e: $00
    ld e, e                                       ; $662f: $5b
    ld bc, $ff02                                  ; $6630: $01 $02 $ff
    push hl                                       ; $6633: $e5
    inc b                                         ; $6634: $04
    dec b                                         ; $6635: $05
    push af                                       ; $6636: $f5
    db $e3                                        ; $6637: $e3
    ld b, $c0                                     ; $6638: $06 $c0
    jp hl                                         ; $663a: $e9


    rst $28                                       ; $663b: $ef
    rlca                                          ; $663c: $07
    ld [$0a09], sp                                ; $663d: $08 $09 $0a
    sbc $e2                                       ; $6640: $de $e2
    dec bc                                        ; $6642: $0b
    inc c                                         ; $6643: $0c
    dec c                                         ; $6644: $0d
    cp e                                          ; $6645: $bb
    ld c, $0f                                     ; $6646: $0e $0f
    call nc, Call_000_10e0                        ; $6648: $d4 $e0 $10
    ld de, $a012                                  ; $664b: $11 $12 $a0
    jp hl                                         ; $664e: $e9


    inc de                                        ; $664f: $13
    rst $28                                       ; $6650: $ef
    inc de                                        ; $6651: $13
    inc d                                         ; $6652: $14
    dec d                                         ; $6653: $15
    ld d, $bd                                     ; $6654: $16 $bd
    pop hl                                        ; $6656: $e1
    rla                                           ; $6657: $17
    jr jr_07b_6673                                ; $6658: $18 $19

    rst $38                                       ; $665a: $ff
    ld a, [de]                                    ; $665b: $1a
    dec de                                        ; $665c: $1b
    inc e                                         ; $665d: $1c
    dec e                                         ; $665e: $1d
    ld e, $1f                                     ; $665f: $1e $1f
    jr nz, @+$15                                  ; $6661: $20 $13

    cp $e0                                        ; $6663: $fe $e0
    db $eb                                        ; $6665: $eb
    inc de                                        ; $6666: $13
    ld hl, $2322                                  ; $6667: $21 $22 $23
    inc h                                         ; $666a: $24
    dec h                                         ; $666b: $25
    ld h, $ff                                     ; $666c: $26 $ff
    daa                                           ; $666e: $27
    jr z, jr_07b_669a                             ; $666f: $28 $29

    ld a, [hl+]                                   ; $6671: $2a
    dec hl                                        ; $6672: $2b

jr_07b_6673:
    inc l                                         ; $6673: $2c
    dec l                                         ; $6674: $2d
    ld l, $f8                                     ; $6675: $2e $f8
    rst $28                                       ; $6677: $ef
    ldh [$e0], a                                  ; $6678: $e0 $e0
    db $ec                                        ; $667a: $ec
    db $fd                                        ; $667b: $fd
    ld [c], a                                     ; $667c: $e2
    cpl                                           ; $667d: $2f
    jr nc, jr_07b_66b1                            ; $667e: $30 $31

    ld [hl-], a                                   ; $6680: $32
    inc sp                                        ; $6681: $33
    ld a, a                                       ; $6682: $7f
    inc [hl]                                      ; $6683: $34
    dec [hl]                                      ; $6684: $35
    ld [hl], $37                                  ; $6685: $36 $37
    inc de                                        ; $6687: $13
    inc de                                        ; $6688: $13
    jr c, jr_07b_66cb                             ; $6689: $38 $40

    jp hl                                         ; $668b: $e9


    db $fd                                        ; $668c: $fd
    add hl, sp                                    ; $668d: $39
    rst $18                                       ; $668e: $df
    ld [c], a                                     ; $668f: $e2
    ld a, [hl-]                                   ; $6690: $3a
    dec sp                                        ; $6691: $3b
    inc a                                         ; $6692: $3c
    dec a                                         ; $6693: $3d
    ld a, $3f                                     ; $6694: $3e $3f
    rst $38                                       ; $6696: $ff
    ld b, b                                       ; $6697: $40
    ld b, c                                       ; $6698: $41
    ld b, d                                       ; $6699: $42

jr_07b_669a:
    ld b, e                                       ; $669a: $43
    inc de                                        ; $669b: $13
    ld b, h                                       ; $669c: $44
    ld b, l                                       ; $669d: $45
    ld b, [hl]                                    ; $669e: $46
    cp $20                                        ; $669f: $fe $20
    jp hl                                         ; $66a1: $e9


    ld b, a                                       ; $66a2: $47
    ld c, b                                       ; $66a3: $48
    jr nz, jr_07b_66b9                            ; $66a4: $20 $13

    inc de                                        ; $66a6: $13
    ld c, c                                       ; $66a7: $49
    ld c, d                                       ; $66a8: $4a
    rst $38                                       ; $66a9: $ff
    ld c, e                                       ; $66aa: $4b
    ld c, h                                       ; $66ab: $4c
    ld c, l                                       ; $66ac: $4d
    ld c, [hl]                                    ; $66ad: $4e
    ld c, a                                       ; $66ae: $4f
    ld d, b                                       ; $66af: $50
    ld d, c                                       ; $66b0: $51

jr_07b_66b1:
    ld d, d                                       ; $66b1: $52
    rst $18                                       ; $66b2: $df
    inc de                                        ; $66b3: $13
    inc de                                        ; $66b4: $13
    ld d, e                                       ; $66b5: $53
    ld d, h                                       ; $66b6: $54
    ld d, l                                       ; $66b7: $55
    nop                                           ; $66b8: $00

jr_07b_66b9:
    jp hl                                         ; $66b9: $e9


    ld d, [hl]                                    ; $66ba: $56
    ld d, a                                       ; $66bb: $57
    rst $38                                       ; $66bc: $ff
    ld e, b                                       ; $66bd: $58
    ld e, c                                       ; $66be: $59
    inc de                                        ; $66bf: $13
    ld e, d                                       ; $66c0: $5a
    ld e, e                                       ; $66c1: $5b
    ld e, h                                       ; $66c2: $5c
    ld e, l                                       ; $66c3: $5d
    ld e, [hl]                                    ; $66c4: $5e
    rst $38                                       ; $66c5: $ff
    inc de                                        ; $66c6: $13
    ld e, a                                       ; $66c7: $5f
    ld h, b                                       ; $66c8: $60
    ld h, c                                       ; $66c9: $61
    ld h, d                                       ; $66ca: $62

jr_07b_66cb:
    ld h, e                                       ; $66cb: $63
    ld h, h                                       ; $66cc: $64
    ld h, l                                       ; $66cd: $65
    ei                                            ; $66ce: $fb
    ld h, [hl]                                    ; $66cf: $66
    ld h, a                                       ; $66d0: $67
    ldh [$c9], a                                  ; $66d1: $e0 $c9
    ld l, b                                       ; $66d3: $68
    ld l, c                                       ; $66d4: $69
    ld l, d                                       ; $66d5: $6a
    ld l, e                                       ; $66d6: $6b
    jr nz, @+$01                                  ; $66d7: $20 $ff

    ld l, h                                       ; $66d9: $6c
    ld l, l                                       ; $66da: $6d
    ld l, [hl]                                    ; $66db: $6e
    ld l, a                                       ; $66dc: $6f
    ld [hl], b                                    ; $66dd: $70
    ld [hl], c                                    ; $66de: $71
    ld [hl], d                                    ; $66df: $72
    ld [hl], e                                    ; $66e0: $73
    ld a, a                                       ; $66e1: $7f
    ld [hl], h                                    ; $66e2: $74
    ld [hl], l                                    ; $66e3: $75
    halt                                          ; $66e4: $76
    ld [hl], a                                    ; $66e5: $77
    ld a, b                                       ; $66e6: $78
    ld a, c                                       ; $66e7: $79
    ld a, d                                       ; $66e8: $7a
    ret nz                                        ; $66e9: $c0

    ret                                           ; $66ea: $c9


    rst $38                                       ; $66eb: $ff
    ld a, e                                       ; $66ec: $7b
    ld a, h                                       ; $66ed: $7c
    ld a, l                                       ; $66ee: $7d
    ld a, [hl]                                    ; $66ef: $7e
    ld a, a                                       ; $66f0: $7f
    add b                                         ; $66f1: $80
    add c                                         ; $66f2: $81
    add d                                         ; $66f3: $82
    rst $38                                       ; $66f4: $ff
    add e                                         ; $66f5: $83
    add h                                         ; $66f6: $84
    add l                                         ; $66f7: $85
    add [hl]                                      ; $66f8: $86
    add a                                         ; $66f9: $87
    adc b                                         ; $66fa: $88
    adc c                                         ; $66fb: $89
    adc d                                         ; $66fc: $8a
    rrca                                          ; $66fd: $0f
    adc e                                         ; $66fe: $8b
    adc h                                         ; $66ff: $8c
    adc l                                         ; $6700: $8d
    adc [hl]                                      ; $6701: $8e
    and b                                         ; $6702: $a0
    rst $18                                       ; $6703: $df
    ldh [rIE], a                                  ; $6704: $e0 $ff
    ldh [rIE], a                                  ; $6706: $e0 $ff
    ldh [rIE], a                                  ; $6708: $e0 $ff
    ldh [$e0], a                                  ; $670a: $e0 $e0
    rst $38                                       ; $670c: $ff
    ldh [rIE], a                                  ; $670d: $e0 $ff
    nop                                           ; $670f: $00
    ret z                                         ; $6710: $c8

    rst $30                                       ; $6711: $f7
    and l                                         ; $6712: $a5
    nop                                           ; $6713: $00
    db $d3                                        ; $6714: $d3
    ld [bc], a                                    ; $6715: $02
    ld [bc], a                                    ; $6716: $02
    adc a                                         ; $6717: $8f
    rst $30                                       ; $6718: $f7
    sub b                                         ; $6719: $90
    sub c                                         ; $671a: $91
    sub d                                         ; $671b: $92
    nop                                           ; $671c: $00
    rst $10                                       ; $671d: $d7
    ld [bc], a                                    ; $671e: $02
    sub e                                         ; $671f: $93
    sub h                                         ; $6720: $94
    sub l                                         ; $6721: $95
    rst $30                                       ; $6722: $f7
    sub [hl]                                      ; $6723: $96
    sub a                                         ; $6724: $97
    sbc b                                         ; $6725: $98
    nop                                           ; $6726: $00
    db $d3                                        ; $6727: $d3
    sbc c                                         ; $6728: $99
    sbc d                                         ; $6729: $9a
    sbc e                                         ; $672a: $9b
    sbc h                                         ; $672b: $9c
    ccf                                           ; $672c: $3f
    sbc l                                         ; $672d: $9d
    sbc [hl]                                      ; $672e: $9e
    sbc a                                         ; $672f: $9f
    and b                                         ; $6730: $a0
    and c                                         ; $6731: $a1
    and d                                         ; $6732: $a2
    db $10                                        ; $6733: $10
    pop bc                                        ; $6734: $c1
    nop                                           ; $6735: $00
    adc $ff                                       ; $6736: $ce $ff
    and e                                         ; $6738: $a3
    and h                                         ; $6739: $a4
    and l                                         ; $673a: $a5
    and [hl]                                      ; $673b: $a6
    and a                                         ; $673c: $a7
    xor b                                         ; $673d: $a8
    xor c                                         ; $673e: $a9
    xor d                                         ; $673f: $aa
    rst $28                                       ; $6740: $ef
    xor e                                         ; $6741: $ab
    xor h                                         ; $6742: $ac
    xor l                                         ; $6743: $ad
    xor [hl]                                      ; $6744: $ae
    nop                                           ; $6745: $00
    pop de                                        ; $6746: $d1
    xor a                                         ; $6747: $af
    or b                                          ; $6748: $b0
    or c                                          ; $6749: $b1
    rst $38                                       ; $674a: $ff
    or d                                          ; $674b: $b2
    or e                                          ; $674c: $b3
    or h                                          ; $674d: $b4
    or l                                          ; $674e: $b5
    or [hl]                                       ; $674f: $b6
    or a                                          ; $6750: $b7
    cp b                                          ; $6751: $b8
    cp c                                          ; $6752: $b9
    db $fd                                        ; $6753: $fd
    cp d                                          ; $6754: $ba
    nop                                           ; $6755: $00
    pop de                                        ; $6756: $d1
    cp e                                          ; $6757: $bb
    cp h                                          ; $6758: $bc
    cp l                                          ; $6759: $bd
    cp [hl]                                       ; $675a: $be
    cp a                                          ; $675b: $bf
    inc de                                        ; $675c: $13
    cp a                                          ; $675d: $bf
    ret nz                                        ; $675e: $c0

    pop bc                                        ; $675f: $c1
    jp nz, $c4c3                                  ; $6760: $c2 $c3 $c4

    push bc                                       ; $6763: $c5
    nop                                           ; $6764: $00
    pop de                                        ; $6765: $d1
    add $ff                                       ; $6766: $c6 $ff
    rst $00                                       ; $6768: $c7
    ret z                                         ; $6769: $c8

    ret                                           ; $676a: $c9


    jp z, $cccb                                   ; $676b: $ca $cb $cc

    call $fece                                    ; $676e: $cd $ce $fe
    nop                                           ; $6771: $00
    call nc, Call_000_3c13                        ; $6772: $d4 $13 $3c
    rst $08                                       ; $6775: $cf
    ret nc                                        ; $6776: $d0

    pop de                                        ; $6777: $d1
    jp nc, $f7d3                                  ; $6778: $d2 $d3 $f7

    call nc, $d6d5                                ; $677b: $d4 $d5 $d6
    nop                                           ; $677e: $00
    db $d3                                        ; $677f: $d3
    inc de                                        ; $6780: $13
    inc de                                        ; $6781: $13
    rst $10                                       ; $6782: $d7
    ret c                                         ; $6783: $d8

    ccf                                           ; $6784: $3f
    reti                                          ; $6785: $d9


    jp c, $dcdb                                   ; $6786: $da $db $dc

    db $dd                                        ; $6789: $dd
    inc de                                        ; $678a: $13
    nop                                           ; $678b: $00
    rst $18                                       ; $678c: $df
    add b                                         ; $678d: $80
    rst $18                                       ; $678e: $df
    nop                                           ; $678f: $00
    add b                                         ; $6790: $80
    adc d                                         ; $6791: $8a
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    sbc l                                         ; $6795: $9d
    ld h, a                                       ; $6796: $67
    db $dd                                        ; $6797: $dd
    ld h, a                                       ; $6798: $67
    or d                                          ; $6799: $b2
    ld [hl], d                                    ; $679a: $72
    ld c, c                                       ; $679b: $49
    ld [hl], e                                    ; $679c: $73
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    rra                                           ; $679f: $1f
    ld a, h                                       ; $67a0: $7c
    adc e                                         ; $67a1: $8b
    ld hl, $5b40                                  ; $67a2: $21 $40 $5b
    rra                                           ; $67a5: $1f
    ld a, h                                       ; $67a6: $7c
    rra                                           ; $67a7: $1f
    ld a, h                                       ; $67a8: $7c
    rra                                           ; $67a9: $1f
    ld a, h                                       ; $67aa: $7c
    rra                                           ; $67ab: $1f
    ld a, h                                       ; $67ac: $7c
    rst $38                                       ; $67ad: $ff
    ld h, e                                       ; $67ae: $63
    ld c, c                                       ; $67af: $49
    rrca                                          ; $67b0: $0f
    ld [bc], a                                    ; $67b1: $02
    ld [bc], a                                    ; $67b2: $02
    ldh [rP1], a                                  ; $67b3: $e0 $00
    rst $38                                       ; $67b5: $ff
    ld h, e                                       ; $67b6: $63
    ld [hl], a                                    ; $67b7: $77
    ld bc, $7da0                                  ; $67b8: $01 $a0 $7d
    ld b, [hl]                                    ; $67bb: $46
    nop                                           ; $67bc: $00
    and b                                         ; $67bd: $a0
    ld a, l                                       ; $67be: $7d
    ret nc                                        ; $67bf: $d0

    nop                                           ; $67c0: $00
    ld [hl], a                                    ; $67c1: $77
    ld bc, $0046                                  ; $67c2: $01 $46 $00
    rst $38                                       ; $67c5: $ff
    ld h, e                                       ; $67c6: $63
    ret nc                                        ; $67c7: $d0

    nop                                           ; $67c8: $00
    ld [hl], a                                    ; $67c9: $77
    ld bc, $0046                                  ; $67ca: $01 $46 $00
    rst $18                                       ; $67cd: $df
    ld h, e                                       ; $67ce: $63
    and b                                         ; $67cf: $a0
    ld a, l                                       ; $67d0: $7d
    rra                                           ; $67d1: $1f

jr_07b_67d2:
    inc bc                                        ; $67d2: $03
    ld b, [hl]                                    ; $67d3: $46
    nop                                           ; $67d4: $00
    rst $38                                       ; $67d5: $ff

jr_07b_67d6:
    ld h, e                                       ; $67d6: $63
    rra                                           ; $67d7: $1f
    inc bc                                        ; $67d8: $03
    ld e, a                                       ; $67d9: $5f
    ld d, $46                                     ; $67da: $16 $46
    nop                                           ; $67dc: $00
    di                                            ; $67dd: $f3
    nop                                           ; $67de: $00
    rst $38                                       ; $67df: $ff
    cp $ec                                        ; $67e0: $fe $ec
    rst $38                                       ; $67e2: $ff
    db $e4                                        ; $67e3: $e4
    inc bc                                        ; $67e4: $03
    inc bc                                        ; $67e5: $03
    ld b, $05                                     ; $67e6: $06 $05
    rst $28                                       ; $67e8: $ef
    inc c                                         ; $67e9: $0c
    dec bc                                        ; $67ea: $0b
    ld a, h                                       ; $67eb: $7c
    ld a, e                                       ; $67ec: $7b
    ldh a, [$e5]                                  ; $67ed: $f0 $e5
    ret nz                                        ; $67ef: $c0

    ret nz                                        ; $67f0: $c0

    jr nc, jr_07b_67d2                            ; $67f1: $30 $df

    ldh a, [$08]                                  ; $67f3: $f0 $08
    ld hl, sp+$04                                 ; $67f5: $f8 $04
    db $fc                                        ; $67f7: $fc
    pop de                                        ; $67f8: $d1
    add sp, $07                                   ; $67f9: $e8 $07
    db $fc                                        ; $67fb: $fc
    db $fc                                        ; $67fc: $fc
    cp $e0                                        ; $67fd: $fe $e0
    pop bc                                        ; $67ff: $c1
    db $e4                                        ; $6800: $e4
    ld a, h                                       ; $6801: $7c
    jp $f77e                                      ; $6802: $c3 $7e $f7


    rst $38                                       ; $6805: $ff
    rra                                           ; $6806: $1f
    rst $30                                       ; $6807: $f7
    rst $18                                       ; $6808: $df
    nop                                           ; $6809: $00
    xor b                                         ; $680a: $a8
    or c                                          ; $680b: $b1
    db $e4                                        ; $680c: $e4
    jr c, jr_07b_67d6                             ; $680d: $38 $c7

    ld a, a                                       ; $680f: $7f
    pop bc                                        ; $6810: $c1
    rst $18                                       ; $6811: $df
    rst $38                                       ; $6812: $ff
    add c                                         ; $6813: $81
    rst $38                                       ; $6814: $ff
    ld [hl], c                                    ; $6815: $71
    rst $38                                       ; $6816: $ff
    and c                                         ; $6817: $a1
    ld [$e33c], a                                 ; $6818: $ea $3c $e3
    cp h                                          ; $681b: $bc
    ldh a, [$eb]                                  ; $681c: $f0 $eb
    sub c                                         ; $681e: $91
    db $e4                                        ; $681f: $e4
    ld bc, $0301                                  ; $6820: $01 $01 $03
    ld [bc], a                                    ; $6823: $02
    sub d                                         ; $6824: $92
    pop hl                                        ; $6825: $e1
    inc e                                         ; $6826: $1c
    rst $38                                       ; $6827: $ff
    inc de                                        ; $6828: $13
    jr @+$19                                      ; $6829: $18 $17

    db $ec                                        ; $682b: $ec
    db $d3                                        ; $682c: $d3
    ret nz                                        ; $682d: $c0

    cp a                                          ; $682e: $bf
    jp nz, Jump_000_3dff                          ; $682f: $c2 $ff $3d

    rst $28                                       ; $6832: $ef
    rla                                           ; $6833: $17
    ld hl, sp+$09                                 ; $6834: $f8 $09
    ld [hl], b                                    ; $6836: $70
    cp b                                          ; $6837: $b8
    ld b, b                                       ; $6838: $40
    ld a, a                                       ; $6839: $7f
    ldh [$80], a                                  ; $683a: $e0 $80
    add b                                         ; $683c: $80
    db $fc                                        ; $683d: $fc
    rlca                                          ; $683e: $07
    cp $03                                        ; $683f: $fe $03
    cp $e1                                        ; $6841: $fe $e1
    db $eb                                        ; $6843: $eb
    db $fd                                        ; $6844: $fd
    db $fd                                        ; $6845: $fd
    ld l, d                                       ; $6846: $6a
    ld [c], a                                     ; $6847: $e2
    ld bc, $e750                                  ; $6848: $01 $50 $e7
    add b                                         ; $684b: $80
    rst $38                                       ; $684c: $ff
    ld b, b                                       ; $684d: $40
    rst $30                                       ; $684e: $f7
    ld a, a                                       ; $684f: $7f
    ret nz                                        ; $6850: $c0

    rst $38                                       ; $6851: $ff
    ld a, h                                       ; $6852: $7c
    pop hl                                        ; $6853: $e1
    ei                                            ; $6854: $fb
    rrca                                          ; $6855: $0f
    ld hl, sp+$0e                                 ; $6856: $f8 $0e
    ei                                            ; $6858: $fb
    ld hl, sp+$0d                                 ; $6859: $f8 $0d
    db $fc                                        ; $685b: $fc
    db $e3                                        ; $685c: $e3
    ret nc                                        ; $685d: $d0

    nop                                           ; $685e: $00
    and b                                         ; $685f: $a0
    nop                                           ; $6860: $00
    db $10                                        ; $6861: $10
    ld a, a                                       ; $6862: $7f
    ret nz                                        ; $6863: $c0

    add b                                         ; $6864: $80
    ccf                                           ; $6865: $3f
    ld b, c                                       ; $6866: $41
    nop                                           ; $6867: $00
    and c                                         ; $6868: $a1
    nop                                           ; $6869: $00
    db $fc                                        ; $686a: $fc
    pop hl                                        ; $686b: $e1
    cp e                                          ; $686c: $bb
    rst $38                                       ; $686d: $ff
    rrca                                          ; $686e: $0f
    rra                                           ; $686f: $1f
    db $e3                                        ; $6870: $e3
    rrca                                          ; $6871: $0f
    ldh a, [$f0]                                  ; $6872: $f0 $f0
    or $e2                                        ; $6874: $f6 $e2
    di                                            ; $6876: $f3
    rst $38                                       ; $6877: $ff
    ret nz                                        ; $6878: $c0

    di                                            ; $6879: $f3
    ld d, b                                       ; $687a: $50
    sub d                                         ; $687b: $92
    pop af                                        ; $687c: $f1
    sbc e                                         ; $687d: $9b
    pop af                                        ; $687e: $f1
    db $db                                        ; $687f: $db
    db $db                                        ; $6880: $db
    pop af                                        ; $6881: $f1
    cpl                                           ; $6882: $2f
    cp $e0                                        ; $6883: $fe $e0
    dec l                                         ; $6885: $2d
    di                                            ; $6886: $f3
    cp c                                          ; $6887: $b9
    ldh [$80], a                                  ; $6888: $e0 $80
    rst $38                                       ; $688a: $ff
    ei                                            ; $688b: $fb
    ldh [$3f], a                                  ; $688c: $e0 $3f
    cp $e4                                        ; $688e: $fe $e4
    rst $38                                       ; $6890: $ff
    ret nz                                        ; $6891: $c0

    jr c, jr_07b_68bb                             ; $6892: $38 $27

    add hl, sp                                    ; $6894: $39
    ld a, a                                       ; $6895: $7f
    daa                                           ; $6896: $27
    ld a, d                                       ; $6897: $7a
    ld b, a                                       ; $6898: $47
    ld a, c                                       ; $6899: $79
    ld b, a                                       ; $689a: $47
    db $fd                                        ; $689b: $fd
    add e                                         ; $689c: $83
    cp $e1                                        ; $689d: $fe $e1
    rst $38                                       ; $689f: $ff
    rst $38                                       ; $68a0: $ff
    add c                                         ; $68a1: $81
    add b                                         ; $68a2: $80
    add b                                         ; $68a3: $80
    inc c                                         ; $68a4: $0c
    inc c                                         ; $68a5: $0c
    db $10                                        ; $68a6: $10
    db $10                                        ; $68a7: $10
    rst $38                                       ; $68a8: $ff
    jr nz, jr_07b_68cb                            ; $68a9: $20 $20

    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    rra                                           ; $68ad: $1f
    rlca                                          ; $68ae: $07
    ld a, [hl]                                    ; $68af: $7e
    ld a, $fb                                     ; $68b0: $3e $fb
    cp $fe                                        ; $68b2: $fe $fe
    ldh [$c6], a                                  ; $68b4: $e0 $c6
    ld bc, $f7ff                                  ; $68b6: $01 $ff $f7
    ld a, a                                       ; $68b9: $7f
    ld a, a                                       ; $68ba: $7f

jr_07b_68bb:
    rst $38                                       ; $68bb: $ff
    ld a, a                                       ; $68bc: $7f
    ld a, e                                       ; $68bd: $7b
    jr nz, @+$41                                  ; $68be: $20 $3f

    jr nz, @+$41                                  ; $68c0: $20 $3f

    db $10                                        ; $68c2: $10
    rra                                           ; $68c3: $1f
    rst $38                                       ; $68c4: $ff
    db $10                                        ; $68c5: $10
    rra                                           ; $68c6: $1f
    ld hl, sp-$01                                 ; $68c7: $f8 $ff
    db $e4                                        ; $68c9: $e4
    rst $20                                       ; $68ca: $e7

jr_07b_68cb:
    and $e7                                       ; $68cb: $e6 $e7
    cp a                                          ; $68cd: $bf
    ld a, [c]                                     ; $68ce: $f2
    di                                            ; $68cf: $f3
    ldh a, [rNR33]                                ; $68d0: $f0 $1d
    ldh a, [rNR34]                                ; $68d2: $f0 $1e
    db $fc                                        ; $68d4: $fc
    db $e4                                        ; $68d5: $e4
    ld a, [de]                                    ; $68d6: $1a
    rst $38                                       ; $68d7: $ff
    ldh [$3d], a                                  ; $68d8: $e0 $3d
    ldh [$3a], a                                  ; $68da: $e0 $3a
    ld b, e                                       ; $68dc: $43
    nop                                           ; $68dd: $00
    add e                                         ; $68de: $83
    nop                                           ; $68df: $00
    ld l, [hl]                                    ; $68e0: $6e
    db $fc                                        ; $68e1: $fc
    push hl                                       ; $68e2: $e5
    rlca                                          ; $68e3: $07
    nop                                           ; $68e4: $00
    add a                                         ; $68e5: $87
    sub c                                         ; $68e6: $91
    ret nz                                        ; $68e7: $c0

    cp $01                                        ; $68e8: $fe $01
    cp $e7                                        ; $68ea: $fe $e7
    rst $38                                       ; $68ec: $ff
    db $fc                                        ; $68ed: $fc
    inc bc                                        ; $68ee: $03
    ccf                                           ; $68ef: $3f
    ld [c], a                                     ; $68f0: $e2
    ccf                                           ; $68f1: $3f
    ld [c], a                                     ; $68f2: $e2
    ld e, a                                       ; $68f3: $5f
    ld [c], a                                     ; $68f4: $e2
    rst $38                                       ; $68f5: $ff
    ld e, e                                       ; $68f6: $5b
    and $7f                                       ; $68f7: $e6 $7f
    call nz, $c47f                                ; $68f9: $c4 $7f $c4
    cp a                                          ; $68fc: $bf
    call nz, $b68f                                ; $68fd: $c4 $8f $b6
    call $c07f                                    ; $6900: $cd $7f $c0
    cp $e3                                        ; $6903: $fe $e3
    ld l, b                                       ; $6905: $68
    ld [c], a                                     ; $6906: $e2
    ld h, h                                       ; $6907: $64
    ldh [rP1], a                                  ; $6908: $e0 $00
    ld a, a                                       ; $690a: $7f
    inc bc                                        ; $690b: $03
    nop                                           ; $690c: $00
    ld d, b                                       ; $690d: $50
    nop                                           ; $690e: $00
    xor d                                         ; $690f: $aa
    nop                                           ; $6910: $00
    ld d, l                                       ; $6911: $55
    db $fc                                        ; $6912: $fc
    and $2e                                       ; $6913: $e6 $2e
    ld d, b                                       ; $6915: $50
    pop bc                                        ; $6916: $c1
    ccf                                           ; $6917: $3f
    nop                                           ; $6918: $00
    rra                                           ; $6919: $1f
    or l                                          ; $691a: $b5
    ldh [rHDMA1], a                               ; $691b: $e0 $51
    ldh a, [$e6]                                  ; $691d: $f0 $e6
    inc a                                         ; $691f: $3c
    push bc                                       ; $6920: $c5
    rst $30                                       ; $6921: $f7
    ld a, a                                       ; $6922: $7f
    nop                                           ; $6923: $00
    ccf                                           ; $6924: $3f
    adc e                                         ; $6925: $8b
    ret nz                                        ; $6926: $c0

    add e                                         ; $6927: $83
    rst $38                                       ; $6928: $ff
    add a                                         ; $6929: $87
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    adc a                                         ; $692c: $8f
    rst $38                                       ; $692d: $ff
    sbc l                                         ; $692e: $9d
    rst $38                                       ; $692f: $ff
    cp c                                          ; $6930: $b9
    rst $38                                       ; $6931: $ff
    ldh a, [$8f]                                  ; $6932: $f0 $8f
    rst $28                                       ; $6934: $ef
    adc h                                         ; $6935: $8c
    cp $fe                                        ; $6936: $fe $fe
    rst $38                                       ; $6938: $ff
    rst $38                                       ; $6939: $ff
    ldh [$bf], a                                  ; $693a: $e0 $bf
    sbc a                                         ; $693c: $9f
    rrca                                          ; $693d: $0f
    rst $28                                       ; $693e: $ef
    rlca                                          ; $693f: $07
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    add b                                         ; $6942: $80
    rst $38                                       ; $6943: $ff
    ldh [$3b], a                                  ; $6944: $e0 $3b
    add hl, sp                                    ; $6946: $39
    dec sp                                        ; $6947: $3b
    ld a, a                                       ; $6948: $7f
    inc sp                                        ; $6949: $33
    inc [hl]                                      ; $694a: $34
    inc [hl]                                      ; $694b: $34
    ldh a, [$e0]                                  ; $694c: $f0 $e0
    ret nz                                        ; $694e: $c0

    add b                                         ; $694f: $80
    ld d, $c3                                     ; $6950: $16 $c3
    rst $38                                       ; $6952: $ff
    ld a, [c]                                     ; $6953: $f2
    di                                            ; $6954: $f3
    db $fc                                        ; $6955: $fc
    rst $38                                       ; $6956: $ff
    ld [hl], h                                    ; $6957: $74
    ld [hl], a                                    ; $6958: $77
    ld b, h                                       ; $6959: $44
    ld b, a                                       ; $695a: $47
    ei                                            ; $695b: $fb
    ld [bc], a                                    ; $695c: $02
    inc bc                                        ; $695d: $03
    cp $e3                                        ; $695e: $fe $e3
    ldh [$3d], a                                  ; $6960: $e0 $3d
    db $fc                                        ; $6962: $fc
    ld a, $e3                                     ; $6963: $3e $e3
    rst $38                                       ; $6965: $ff
    ccf                                           ; $6966: $3f
    ldh [$3a], a                                  ; $6967: $e0 $3a
    ret nz                                        ; $6969: $c0

    ld a, l                                       ; $696a: $7d
    ret nz                                        ; $696b: $c0

    ld a, d                                       ; $696c: $7a
    ret nz                                        ; $696d: $c0

    rst $30                                       ; $696e: $f7
    ld a, l                                       ; $696f: $7d
    cp $3e                                        ; $6970: $fe $3e
    ld c, h                                       ; $6972: $4c
    pop hl                                        ; $6973: $e1
    rst $20                                       ; $6974: $e7
    nop                                           ; $6975: $00
    jr jr_07b_697f                                ; $6976: $18 $07

    ei                                            ; $6978: $fb
    rrca                                          ; $6979: $0f
    nop                                           ; $697a: $00
    cp $e3                                        ; $697b: $fe $e3
    db $fc                                        ; $697d: $fc
    inc bc                                        ; $697e: $03

jr_07b_697f:
    db $fd                                        ; $697f: $fd
    inc bc                                        ; $6980: $03
    ld sp, hl                                     ; $6981: $f9
    rst $38                                       ; $6982: $ff
    rlca                                          ; $6983: $07
    ld sp, hl                                     ; $6984: $f9
    rlca                                          ; $6985: $07
    ld [bc], a                                    ; $6986: $02
    rst $38                                       ; $6987: $ff
    or $0f                                        ; $6988: $f6 $0f
    db $f4                                        ; $698a: $f4
    cp $fe                                        ; $698b: $fe $fe
    ldh [$fe], a                                  ; $698d: $e0 $fe
    adc c                                         ; $698f: $89
    ld a, a                                       ; $6990: $7f
    adc c                                         ; $6991: $89
    ld l, a                                       ; $6992: $6f
    sbc c                                         ; $6993: $99
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    ld de, $13fd                                  ; $6996: $11 $fd $13
    db $dd                                        ; $6999: $dd
    inc sp                                        ; $699a: $33
    dec sp                                        ; $699b: $3b
    rst $20                                       ; $699c: $e7
    dec sp                                        ; $699d: $3b
    ld d, c                                       ; $699e: $51
    rst $38                                       ; $699f: $ff
    ld l, c                                       ; $69a0: $69
    ret nz                                        ; $69a1: $c0

    or c                                          ; $69a2: $b1
    xor e                                         ; $69a3: $ab
    and b                                         ; $69a4: $a0
    xor e                                         ; $69a5: $ab
    push af                                       ; $69a6: $f5
    inc [hl]                                      ; $69a7: $34
    ldh [rSB], a                                  ; $69a8: $e0 $01
    sbc h                                         ; $69aa: $9c
    and d                                         ; $69ab: $a2
    rst $20                                       ; $69ac: $e7
    ld a, [hl+]                                   ; $69ad: $2a
    nop                                           ; $69ae: $00
    dec b                                         ; $69af: $05
    sub h                                         ; $69b0: $94
    and d                                         ; $69b1: $a2
    inc h                                         ; $69b2: $24
    pop hl                                        ; $69b3: $e1
    ld a, [hl+]                                   ; $69b4: $2a
    nop                                           ; $69b5: $00
    dec d                                         ; $69b6: $15
    ei                                            ; $69b7: $fb
    nop                                           ; $69b8: $00
    adc d                                         ; $69b9: $8a
    inc e                                         ; $69ba: $1c
    ld [c], a                                     ; $69bb: $e2
    dec b                                         ; $69bc: $05
    nop                                           ; $69bd: $00
    adc a                                         ; $69be: $8f
    nop                                           ; $69bf: $00
    ld d, a                                       ; $69c0: $57
    ld l, $10                                     ; $69c1: $2e $10
    and $0a                                       ; $69c3: $e6 $0a
    nop                                           ; $69c5: $00
    ld b, b                                       ; $69c6: $40
    ld h, $e6                                     ; $69c7: $26 $e6
    xor a                                         ; $69c9: $af
    nop                                           ; $69ca: $00
    add sp, -$14                                  ; $69cb: $e8 $ec
    rst $20                                       ; $69cd: $e7
    ld a, l                                       ; $69ce: $7d
    ld d, a                                       ; $69cf: $57
    ld b, b                                       ; $69d0: $40
    xor d                                         ; $69d1: $aa
    cp $00                                        ; $69d2: $fe $00
    push af                                       ; $69d4: $f5
    ld bc, $feff                                  ; $69d5: $01 $ff $fe
    db $e3                                        ; $69d8: $e3
    rst $28                                       ; $69d9: $ef
    nop                                           ; $69da: $00
    ld [$d400], a                                 ; $69db: $ea $00 $d4
    push af                                       ; $69de: $f5
    and b                                         ; $69df: $a0
    ld b, b                                       ; $69e0: $40
    inc bc                                        ; $69e1: $03
    inc bc                                        ; $69e2: $03
    rst $38                                       ; $69e3: $ff
    ld [hl], c                                    ; $69e4: $71
    ld [hl], c                                    ; $69e5: $71
    inc c                                         ; $69e6: $0c
    inc a                                         ; $69e7: $3c
    ld [de], a                                    ; $69e8: $12
    sbc [hl]                                      ; $69e9: $9e
    sub c                                         ; $69ea: $91
    ret nc                                        ; $69eb: $d0

    rst $38                                       ; $69ec: $ff
    ld b, e                                       ; $69ed: $43
    ld h, a                                       ; $69ee: $67
    ld [hl], $3c                                  ; $69ef: $36 $3c
    dec a                                         ; $69f1: $3d
    inc a                                         ; $69f2: $3c
    add [hl]                                      ; $69f3: $86
    add [hl]                                      ; $69f4: $86
    rst $30                                       ; $69f5: $f7
    inc bc                                        ; $69f6: $03
    add c                                         ; $69f7: $81
    and b                                         ; $69f8: $a0
    xor l                                         ; $69f9: $ad
    ret nz                                        ; $69fa: $c0

    ld l, b                                       ; $69fb: $68
    add b                                         ; $69fc: $80
    inc [hl]                                      ; $69fd: $34
    ret nz                                        ; $69fe: $c0

    ld l, a                                       ; $69ff: $6f
    sbc d                                         ; $6a00: $9a
    ldh [$cd], a                                  ; $6a01: $e0 $cd
    ldh a, [rNR52]                                ; $6a03: $f0 $26
    and c                                         ; $6a05: $a1
    ld a, a                                       ; $6a06: $7f
    ccf                                           ; $6a07: $3f
    ld a, [bc]                                    ; $6a08: $0a
    and l                                         ; $6a09: $a5
    ei                                            ; $6a0a: $fb
    nop                                           ; $6a0b: $00
    nop                                           ; $6a0c: $00
    ld hl, sp-$3f                                 ; $6a0d: $f8 $c1
    add h                                         ; $6a0f: $84
    rlca                                          ; $6a10: $07
    inc b                                         ; $6a11: $04
    rlca                                          ; $6a12: $07
    ld [$0ffd], sp                                ; $6a13: $08 $fd $0f
    ld a, [hl+]                                   ; $6a16: $2a
    pop bc                                        ; $6a17: $c1
    db $10                                        ; $6a18: $10
    rra                                           ; $6a19: $1f
    pop af                                        ; $6a1a: $f1
    rra                                           ; $6a1b: $1f
    ld hl, sp+$0f                                 ; $6a1c: $f8 $0f
    ld hl, sp+$7c                                 ; $6a1e: $f8 $7c
    and c                                         ; $6a20: $a1
    xor l                                         ; $6a21: $ad
    pop hl                                        ; $6a22: $e1
    push de                                       ; $6a23: $d5
    add b                                         ; $6a24: $80
    ld bc, $e0ff                                  ; $6a25: $01 $ff $e0
    rra                                           ; $6a28: $1f
    rra                                           ; $6a29: $1f
    rst $38                                       ; $6a2a: $ff
    sub a                                         ; $6a2b: $97
    nop                                           ; $6a2c: $00
    ld c, [hl]                                    ; $6a2d: $4e
    nop                                           ; $6a2e: $00
    and [hl]                                      ; $6a2f: $a6
    nop                                           ; $6a30: $00
    sub $80                                       ; $6a31: $d6 $80
    rst $38                                       ; $6a33: $ff
    cp $fe                                        ; $6a34: $fe $fe
    and a                                         ; $6a36: $a7
    ld a, c                                       ; $6a37: $79
    db $e4                                        ; $6a38: $e4
    rra                                           ; $6a39: $1f
    db $e3                                        ; $6a3a: $e3
    rra                                           ; $6a3b: $1f
    rst $38                                       ; $6a3c: $ff
    pop af                                        ; $6a3d: $f1
    cp $2f                                        ; $6a3e: $fe $2f
    rra                                           ; $6a40: $1f
    ld b, b                                       ; $6a41: $40
    ccf                                           ; $6a42: $3f
    rrca                                          ; $6a43: $0f
    ld [hl], b                                    ; $6a44: $70
    rst $38                                       ; $6a45: $ff
    adc a                                         ; $6a46: $8f
    ld [hl], b                                    ; $6a47: $70
    sbc e                                         ; $6a48: $9b
    rst $20                                       ; $6a49: $e7
    ld b, a                                       ; $6a4a: $47
    cp $83                                        ; $6a4b: $fe $83
    cp $7e                                        ; $6a4d: $fe $7e
    rst $20                                       ; $6a4f: $e7
    add c                                         ; $6a50: $81
    rst $20                                       ; $6a51: $e7
    db $fc                                        ; $6a52: $fc
    rra                                           ; $6a53: $1f
    ld hl, sp+$7f                                 ; $6a54: $f8 $7f
    ldh [$f2], a                                  ; $6a56: $e0 $f2
    call Call_000_3b54                            ; $6a58: $cd $54 $3b
    and b                                         ; $6a5b: $a0
    ld d, h                                       ; $6a5c: $54
    rst $20                                       ; $6a5d: $e7
    db $fd                                        ; $6a5e: $fd
    ld e, h                                       ; $6a5f: $5c
    ldh [rHDMA5], a                               ; $6a60: $e0 $55
    ld hl, sp-$1c                                 ; $6a62: $f8 $e4
    push de                                       ; $6a64: $d5
    inc e                                         ; $6a65: $1c
    ret nz                                        ; $6a66: $c0

    sub e                                         ; $6a67: $93
    ld d, b                                       ; $6a68: $50
    nop                                           ; $6a69: $00
    ld l, h                                       ; $6a6a: $6c
    pop bc                                        ; $6a6b: $c1
    inc d                                         ; $6a6c: $14
    jp Jump_07b_6e50                              ; $6a6d: $c3 $50 $6e


    rst $20                                       ; $6a70: $e7
    ld l, [hl]                                    ; $6a71: $6e
    add d                                         ; $6a72: $82
    add b                                         ; $6a73: $80
    rst $38                                       ; $6a74: $ff
    xor b                                         ; $6a75: $a8
    ld d, b                                       ; $6a76: $50
    ld b, b                                       ; $6a77: $40
    cp e                                          ; $6a78: $bb
    ld bc, $0efe                                  ; $6a79: $01 $fe $0e
    pop af                                        ; $6a7c: $f1
    or $ea                                        ; $6a7d: $f6 $ea
    db $eb                                        ; $6a7f: $eb
    and b                                         ; $6a80: $a0
    ld b, b                                       ; $6a81: $40
    ld de, $50a0                                  ; $6a82: $11 $a0 $50
    nop                                           ; $6a85: $00
    jr z, jr_07b_6a88                             ; $6a86: $28 $00

jr_07b_6a88:
    push bc                                       ; $6a88: $c5
    inc b                                         ; $6a89: $04
    ld a, $e6                                     ; $6a8a: $3e $e6
    ld a, [bc]                                    ; $6a8c: $0a
    add $ec                                       ; $6a8d: $c6 $ec
    sbc b                                         ; $6a8f: $98
    push bc                                       ; $6a90: $c5
    daa                                           ; $6a91: $27
    add l                                         ; $6a92: $85
    xor d                                         ; $6a93: $aa
    nop                                           ; $6a94: $00
    ld sp, hl                                     ; $6a95: $f9
    ld d, h                                       ; $6a96: $54
    db $dd                                        ; $6a97: $dd
    add b                                         ; $6a98: $80
    rst $38                                       ; $6a99: $ff
    or $7f                                        ; $6a9a: $f6 $7f
    ld h, a                                       ; $6a9c: $67
    ld a, a                                       ; $6a9d: $7f
    ld b, b                                       ; $6a9e: $40
    ld a, a                                       ; $6a9f: $7f
    db $fd                                        ; $6aa0: $fd
    ld b, b                                       ; $6aa1: $40
    and e                                         ; $6aa2: $a3
    add b                                         ; $6aa3: $80
    add c                                         ; $6aa4: $81

jr_07b_6aa5:
    rst $38                                       ; $6aa5: $ff
    sub c                                         ; $6aa6: $91
    cp $f6                                        ; $6aa7: $fe $f6
    inc e                                         ; $6aa9: $1c
    rst $38                                       ; $6aaa: $ff
    inc e                                         ; $6aab: $1c
    add $f8                                       ; $6aac: $c6 $f8
    ld [c], a                                     ; $6aae: $e2
    db $fd                                        ; $6aaf: $fd
    and b                                         ; $6ab0: $a0
    cp a                                          ; $6ab1: $bf
    sub b                                         ; $6ab2: $90
    rst $38                                       ; $6ab3: $ff
    sbc a                                         ; $6ab4: $9f
    sbc b                                         ; $6ab5: $98
    sub a                                         ; $6ab6: $97
    jr c, jr_07b_6af8                             ; $6ab7: $38 $3f

    inc l                                         ; $6ab9: $2c
    dec sp                                        ; $6aba: $3b
    ld c, h                                       ; $6abb: $4c
    rst $38                                       ; $6abc: $ff
    ld [hl], a                                    ; $6abd: $77
    add b                                         ; $6abe: $80
    nop                                           ; $6abf: $00
    or b                                          ; $6ac0: $b0
    ld b, b                                       ; $6ac1: $40
    ld b, b                                       ; $6ac2: $40
    cp a                                          ; $6ac3: $bf
    rlca                                          ; $6ac4: $07
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    dec c                                         ; $6ac7: $0d
    di                                            ; $6ac8: $f3
    dec e                                         ; $6ac9: $1d
    db $e3                                        ; $6aca: $e3
    inc sp                                        ; $6acb: $33
    pop bc                                        ; $6acc: $c1
    ld [hl], e                                    ; $6acd: $73
    ld a, a                                       ; $6ace: $7f
    add c                                         ; $6acf: $81
    db $10                                        ; $6ad0: $10
    rra                                           ; $6ad1: $1f
    jr nz, @+$37                                  ; $6ad2: $20 $35

    ret nz                                        ; $6ad4: $c0

    jp z, $c32c                                   ; $6ad5: $ca $2c $c3

    rrca                                          ; $6ad8: $0f
    ret nz                                        ; $6ad9: $c0

    ret nz                                        ; $6ada: $c0

    cp [hl]                                       ; $6adb: $be
    cp [hl]                                       ; $6adc: $be
    or b                                          ; $6add: $b0
    ld h, h                                       ; $6ade: $64
    inc a                                         ; $6adf: $3c
    pop bc                                        ; $6ae0: $c1
    jr nz, jr_07b_6aa5                            ; $6ae1: $20 $c2

    ld b, d                                       ; $6ae3: $42
    add c                                         ; $6ae4: $81
    ld a, [$c3c4]                                 ; $6ae5: $fa $c4 $c3
    ld e, a                                       ; $6ae8: $5f
    add hl, de                                    ; $6ae9: $19
    pop bc                                        ; $6aea: $c1
    ld bc, $f04f                                  ; $6aeb: $01 $4f $f0
    db $fd                                        ; $6aee: $fd
    cp $ff                                        ; $6aef: $fe $ff
    sbc [hl]                                      ; $6af1: $9e
    ldh [$fa], a                                  ; $6af2: $e0 $fa
    db $fc                                        ; $6af4: $fc
    sbc [hl]                                      ; $6af5: $9e
    ldh [$f7], a                                  ; $6af6: $e0 $f7

jr_07b_6af8:
    ld hl, sp-$01                                 ; $6af8: $f8 $ff
    sbc a                                         ; $6afa: $9f
    ldh [$c3], a                                  ; $6afb: $e0 $c3
    db $fc                                        ; $6afd: $fc
    ld l, a                                       ; $6afe: $6f
    db $fc                                        ; $6aff: $fc
    ccf                                           ; $6b00: $3f
    ldh a, [rIE]                                  ; $6b01: $f0 $ff

jr_07b_6b03:
    ccf                                           ; $6b03: $3f
    ld h, b                                       ; $6b04: $60
    rra                                           ; $6b05: $1f
    jr nc, jr_07b_6b27                            ; $6b06: $30 $1f

    jr nc, jr_07b_6b27                            ; $6b08: $30 $1d

    or b                                          ; $6b0a: $b0
    ld c, a                                       ; $6b0b: $4f
    ld a, [hl-]                                   ; $6b0c: $3a
    ldh a, [$35]                                  ; $6b0d: $f0 $35
    ldh [$d8], a                                  ; $6b0f: $e0 $d8
    push bc                                       ; $6b11: $c5
    push hl                                       ; $6b12: $e5
    pop bc                                        ; $6b13: $c1
    xor b                                         ; $6b14: $a8
    ld [hl], e                                    ; $6b15: $73
    ld h, b                                       ; $6b16: $60
    ld d, d                                       ; $6b17: $52
    push hl                                       ; $6b18: $e5

jr_07b_6b19:
    pop bc                                        ; $6b19: $c1
    xor b                                         ; $6b1a: $a8
    push hl                                       ; $6b1b: $e5
    call nz, $e640                                ; $6b1c: $c4 $40 $e6
    jr z, jr_07b_6b03                             ; $6b1f: $28 $e2

    ret                                           ; $6b21: $c9


    ld [bc], a                                    ; $6b22: $02
    rst $38                                       ; $6b23: $ff
    ldh [rIE], a                                  ; $6b24: $e0 $ff
    dec b                                         ; $6b26: $05

jr_07b_6b27:
    rlca                                          ; $6b27: $07
    ld a, [bc]                                    ; $6b28: $0a
    ld c, $03                                     ; $6b29: $0e $03
    inc bc                                        ; $6b2b: $03
    rlca                                          ; $6b2c: $07
    inc bc                                        ; $6b2d: $03
    push af                                       ; $6b2e: $f5
    dec c                                         ; $6b2f: $0d
    ld a, [de]                                    ; $6b30: $1a
    and b                                         ; $6b31: $a0
    ld bc, $80cd                                  ; $6b32: $01 $cd $80
    inc bc                                        ; $6b35: $03
    inc b                                         ; $6b36: $04
    ld b, $09                                     ; $6b37: $06 $09
    rst $38                                       ; $6b39: $ff
    rrca                                          ; $6b3a: $0f
    db $10                                        ; $6b3b: $10
    ccf                                           ; $6b3c: $3f
    nop                                           ; $6b3d: $00
    xor [hl]                                      ; $6b3e: $ae
    pop de                                        ; $6b3f: $d1
    inc d                                         ; $6b40: $14
    db $eb                                        ; $6b41: $eb
    ei                                            ; $6b42: $fb
    ld [$1cf7], sp                                ; $6b43: $08 $f7 $1c
    ld h, c                                       ; $6b46: $61
    ld d, b                                       ; $6b47: $50
    xor a                                         ; $6b48: $af
    add b                                         ; $6b49: $80
    ld a, a                                       ; $6b4a: $7f
    ld d, d                                       ; $6b4b: $52
    rst $38                                       ; $6b4c: $ff
    xor a                                         ; $6b4d: $af
    add d                                         ; $6b4e: $82
    ld a, a                                       ; $6b4f: $7f
    nop                                           ; $6b50: $00
    ldh [$08], a                                  ; $6b51: $e0 $08
    ldh a, [rSC]                                  ; $6b53: $f0 $02
    db $fd                                        ; $6b55: $fd
    db $fc                                        ; $6b56: $fc
    ld a, [bc]                                    ; $6b57: $0a
    ld h, c                                       ; $6b58: $61
    ld c, $f1                                     ; $6b59: $0e $f1
    dec b                                         ; $6b5b: $05
    ld a, [$df20]                                 ; $6b5c: $fa $20 $df
    cp $10                                        ; $6b5f: $fe $10
    ld h, e                                       ; $6b61: $63
    inc c                                         ; $6b62: $0c
    sub b                                         ; $6b63: $90
    cp d                                          ; $6b64: $ba
    ld b, l                                       ; $6b65: $45
    call nc, $a82b                                ; $6b66: $d4 $2b $a8
    ld h, a                                       ; $6b69: $67
    ld d, a                                       ; $6b6a: $57
    ld d, h                                       ; $6b6b: $54
    xor e                                         ; $6b6c: $ab
    adc l                                         ; $6b6d: $8d
    ret z                                         ; $6b6e: $c8

    dec bc                                        ; $6b6f: $0b
    ld h, b                                       ; $6b70: $60
    db $10                                        ; $6b71: $10
    ldh [$62], a                                  ; $6b72: $e0 $62
    ld h, e                                       ; $6b74: $63
    rst $38                                       ; $6b75: $ff
    rlca                                          ; $6b76: $07
    inc b                                         ; $6b77: $04
    dec c                                         ; $6b78: $0d
    ld [$101a], sp                                ; $6b79: $08 $1a $10
    dec d                                         ; $6b7c: $15
    db $10                                        ; $6b7d: $10
    rst $38                                       ; $6b7e: $ff
    ld a, [hl+]                                   ; $6b7f: $2a
    jr nz, jr_07b_6b19                            ; $6b80: $20 $97

    db $eb                                        ; $6b82: $eb
    ld [$b5d5], a                                 ; $6b83: $ea $d5 $b5
    ld l, d                                       ; $6b86: $6a
    rst $38                                       ; $6b87: $ff
    sbc d                                         ; $6b88: $9a
    dec [hl]                                      ; $6b89: $35
    ld l, l                                       ; $6b8a: $6d
    ld a, [de]                                    ; $6b8b: $1a
    or [hl]                                       ; $6b8c: $b6
    dec c                                         ; $6b8d: $0d
    ld e, e                                       ; $6b8e: $5b
    ld b, $ff                                     ; $6b8f: $06 $ff
    xor l                                         ; $6b91: $ad
    inc bc                                        ; $6b92: $03
    rst $20                                       ; $6b93: $e7
    add e                                         ; $6b94: $83
    ld a, a                                       ; $6b95: $7f
    or $5a                                        ; $6b96: $f6 $5a
    xor l                                         ; $6b98: $ad
    rst $38                                       ; $6b99: $ff
    xor l                                         ; $6b9a: $ad
    ld e, [hl]                                    ; $6b9b: $5e
    ld e, [hl]                                    ; $6b9c: $5e
    or e                                          ; $6b9d: $b3
    cp a                                          ; $6b9e: $bf
    ld d, c                                       ; $6b9f: $51
    ld [hl], l                                    ; $6ba0: $75
    and h                                         ; $6ba1: $a4
    rst $38                                       ; $6ba2: $ff
    xor a                                         ; $6ba3: $af
    ld h, [hl]                                    ; $6ba4: $66
    or l                                          ; $6ba5: $b5
    ld h, c                                       ; $6ba6: $61
    ld l, d                                       ; $6ba7: $6a
    and b                                         ; $6ba8: $a0
    or l                                          ; $6ba9: $b5
    ld d, b                                       ; $6baa: $50
    ei                                            ; $6bab: $fb
    ld e, d                                       ; $6bac: $5a
    or b                                          ; $6bad: $b0

jr_07b_6bae:
    db $fc                                        ; $6bae: $fc
    ld [c], a                                     ; $6baf: $e2
    ret nc                                        ; $6bb0: $d0

    ld a, [$e070]                                 ; $6bb1: $fa $70 $e0
    ldh [rIE], a                                  ; $6bb4: $e0 $ff
    cp [hl]                                       ; $6bb6: $be
    ld e, $5d                                     ; $6bb7: $1e $5d
    dec bc                                        ; $6bb9: $0b
    xor e                                         ; $6bba: $ab
    dec c                                         ; $6bbb: $0d
    ld e, l                                       ; $6bbc: $5d
    dec bc                                        ; $6bbd: $0b
    rst $38                                       ; $6bbe: $ff
    cp e                                          ; $6bbf: $bb
    dec d                                         ; $6bc0: $15
    ld d, a                                       ; $6bc1: $57
    ld a, [de]                                    ; $6bc2: $1a
    cp e                                          ; $6bc3: $bb
    ld d, $07                                     ; $6bc4: $16 $07
    ld b, $ff                                     ; $6bc6: $06 $ff
    ld a, [de]                                    ; $6bc8: $1a
    inc e                                         ; $6bc9: $1c
    dec a                                         ; $6bca: $3d
    inc a                                         ; $6bcb: $3c
    db $ec                                        ; $6bcc: $ec
    di                                            ; $6bcd: $f3
    ld a, [hl+]                                   ; $6bce: $2a
    jr nc, @+$01                                  ; $6bcf: $30 $ff

    cp h                                          ; $6bd1: $bc
    jr nz, jr_07b_6bae                            ; $6bd2: $20 $da

    ld h, b                                       ; $6bd4: $60
    db $f4                                        ; $6bd5: $f4
    ld a, b                                       ; $6bd6: $78
    ld a, $ff                                     ; $6bd7: $3e $ff
    rst $38                                       ; $6bd9: $ff
    dec a                                         ; $6bda: $3d
    inc bc                                        ; $6bdb: $03
    ccf                                           ; $6bdc: $3f
    nop                                           ; $6bdd: $00
    ccf                                           ; $6bde: $3f
    ret nz                                        ; $6bdf: $c0

    inc bc                                        ; $6be0: $03
    inc a                                         ; $6be1: $3c
    rst $30                                       ; $6be2: $f7
    ld a, h                                       ; $6be3: $7c
    inc bc                                        ; $6be4: $03
    ld a, a                                       ; $6be5: $7f
    ccf                                           ; $6be6: $3f
    add b                                         ; $6be7: $80
    ld h, b                                       ; $6be8: $60
    ldh [$c0], a                                  ; $6be9: $e0 $c0
    ret nz                                        ; $6beb: $c0

    rst $38                                       ; $6bec: $ff
    ret nz                                        ; $6bed: $c0

    ld b, b                                       ; $6bee: $40
    ldh [rNR41], a                                ; $6bef: $e0 $20
    ldh a, [rNR10]                                ; $6bf1: $f0 $10
    ld [hl], b                                    ; $6bf3: $70
    ldh a, [rIE]                                  ; $6bf4: $f0 $ff
    add sp, $18                                   ; $6bf6: $e8 $18
    add sp, $18                                   ; $6bf8: $e8 $18
    ld a, [de]                                    ; $6bfa: $1a
    rrca                                          ; $6bfb: $0f
    ccf                                           ; $6bfc: $3f
    scf                                           ; $6bfd: $37
    rst $38                                       ; $6bfe: $ff
    dec b                                         ; $6bff: $05
    inc bc                                        ; $6c00: $03
    dec de                                        ; $6c01: $1b
    rla                                           ; $6c02: $17
    rra                                           ; $6c03: $1f
    rrca                                          ; $6c04: $0f
    dec l                                         ; $6c05: $2d
    dec de                                        ; $6c06: $1b
    rst $38                                       ; $6c07: $ff
    ld e, d                                       ; $6c08: $5a
    ld [hl], a                                    ; $6c09: $77
    ccf                                           ; $6c0a: $3f
    ccf                                           ; $6c0b: $3f
    rst $18                                       ; $6c0c: $df
    ld h, b                                       ; $6c0d: $60
    ld a, a                                       ; $6c0e: $7f
    add b                                         ; $6c0f: $80
    rst $38                                       ; $6c10: $ff
    cp a                                          ; $6c11: $bf
    ld b, b                                       ; $6c12: $40
    rst $18                                       ; $6c13: $df
    and b                                         ; $6c14: $a0
    cp $e1                                        ; $6c15: $fe $e1
    call z, $fff3                                 ; $6c17: $cc $f3 $ff
    ld [$d7f5], a                                 ; $6c1a: $ea $f5 $d7
    ld hl, sp+$06                                 ; $6c1d: $f8 $06
    rst $38                                       ; $6c1f: $ff
    ld e, $ff                                     ; $6c20: $1e $ff
    rst $38                                       ; $6c22: $ff
    inc bc                                        ; $6c23: $03
    rst $38                                       ; $6c24: $ff
    ld b, $ff                                     ; $6c25: $06 $ff
    rlca                                          ; $6c27: $07
    rst $38                                       ; $6c28: $ff
    rra                                           ; $6c29: $1f
    rst $38                                       ; $6c2a: $ff
    db $fd                                        ; $6c2b: $fd
    ld a, a                                       ; $6c2c: $7f
    db $fc                                        ; $6c2d: $fc
    ldh [rLCDC], a                                ; $6c2e: $e0 $40
    cp a                                          ; $6c30: $bf
    and b                                         ; $6c31: $a0
    ld e, a                                       ; $6c32: $5f
    ld d, b                                       ; $6c33: $50
    xor a                                         ; $6c34: $af
    rst $38                                       ; $6c35: $ff
    add h                                         ; $6c36: $84
    ei                                            ; $6c37: $fb
    ld a, [bc]                                    ; $6c38: $0a
    push af                                       ; $6c39: $f5
    inc b                                         ; $6c3a: $04
    ei                                            ; $6c3b: $fb
    adc d                                         ; $6c3c: $8a
    push af                                       ; $6c3d: $f5
    ld a, l                                       ; $6c3e: $7d
    ld b, b                                       ; $6c3f: $40
    ld d, c                                       ; $6c40: $51
    and b                                         ; $6c41: $a0
    ld d, b                                       ; $6c42: $50
    xor a                                         ; $6c43: $af
    and b                                         ; $6c44: $a0
    ld e, a                                       ; $6c45: $5f
    inc b                                         ; $6c46: $04
    ldh a, [$e0]                                  ; $6c47: $f0 $e0
    rst $38                                       ; $6c49: $ff
    ld e, b                                       ; $6c4a: $58
    and a                                         ; $6c4b: $a7
    xor b                                         ; $6c4c: $a8
    ld d, a                                       ; $6c4d: $57
    ld d, b                                       ; $6c4e: $50
    cp a                                          ; $6c4f: $bf
    ld [$fff0], sp                                ; $6c50: $08 $f0 $ff
    db $10                                        ; $6c53: $10
    add sp, $05                                   ; $6c54: $e8 $05
    ld hl, sp+$2b                                 ; $6c56: $f8 $2b
    call nc, $e31c                                ; $6c58: $d4 $1c $e3
    rst $28                                       ; $6c5b: $ef
    nop                                           ; $6c5c: $00
    rst $38                                       ; $6c5d: $ff
    ld [$10f7], sp                                ; $6c5e: $08 $f7 $10
    db $e4                                        ; $6c61: $e4
    ret nz                                        ; $6c62: $c0

    nop                                           ; $6c63: $00
    ldh a, [rVBK]                                 ; $6c64: $f0 $4f
    ld b, b                                       ; $6c66: $40
    cp b                                          ; $6c67: $b8
    adc d                                         ; $6c68: $8a
    ld [hl], h                                    ; $6c69: $74
    ld h, l                                       ; $6c6a: $65
    ld h, c                                       ; $6c6b: $61
    adc b                                         ; $6c6c: $88
    xor c                                         ; $6c6d: $a9
    ld bc, $e0ff                                  ; $6c6e: $01 $ff $e0
    rst $38                                       ; $6c71: $ff
    dec [hl]                                      ; $6c72: $35
    jr nz, @+$6c                                  ; $6c73: $20 $6a

    ld b, b                                       ; $6c75: $40
    ld [hl], l                                    ; $6c76: $75
    ld b, b                                       ; $6c77: $40
    ld [$e380], a                                 ; $6c78: $ea $80 $e3
    push de                                       ; $6c7b: $d5
    add b                                         ; $6c7c: $80
    db $fc                                        ; $6c7d: $fc
    ldh [rPCM34], a                               ; $6c7e: $e0 $77
    ld h, b                                       ; $6c80: $60
    ld h, e                                       ; $6c81: $63
    add e                                         ; $6c82: $83
    cp d                                          ; $6c83: $ba
    nop                                           ; $6c84: $00
    ld a, l                                       ; $6c85: $7d
    rst $38                                       ; $6c86: $ff
    ld [$08be], sp                                ; $6c87: $08 $be $08
    ld a, l                                       ; $6c8a: $7d
    ld [$08fe], sp                                ; $6c8b: $08 $fe $08
    push af                                       ; $6c8e: $f5
    rst $18                                       ; $6c8f: $df
    ldh [$aa], a                                  ; $6c90: $e0 $aa
    ld [bc], a                                    ; $6c92: $02
    ld d, a                                       ; $6c93: $57
    inc bc                                        ; $6c94: $03
    add sp, -$20                                  ; $6c95: $e8 $e0
    inc bc                                        ; $6c97: $03
    xor a                                         ; $6c98: $af
    rst $38                                       ; $6c99: $ff
    inc c                                         ; $6c9a: $0c
    ld a, h                                       ; $6c9b: $7c
    ld [hl], b                                    ; $6c9c: $70
    or b                                          ; $6c9d: $b0
    ret nz                                        ; $6c9e: $c0

    ld [hl], a                                    ; $6c9f: $77
    ld [bc], a                                    ; $6ca0: $02
    xor e                                         ; $6ca1: $ab
    ei                                            ; $6ca2: $fb
    ld [bc], a                                    ; $6ca3: $02
    ld d, a                                       ; $6ca4: $57
    db $fc                                        ; $6ca5: $fc
    db $e3                                        ; $6ca6: $e3
    add e                                         ; $6ca7: $83
    rst $10                                       ; $6ca8: $d7
    ld b, c                                       ; $6ca9: $41
    ld l, e                                       ; $6caa: $6b
    ld hl, $57ff                                  ; $6cab: $21 $ff $57
    ld a, [de]                                    ; $6cae: $1a
    ei                                            ; $6caf: $fb
    ld d, $e7                                     ; $6cb0: $16 $e7
    dec sp                                        ; $6cb2: $3b
    and $3e                                       ; $6cb3: $e6 $3e
    rst $38                                       ; $6cb5: $ff
    and $3e                                       ; $6cb6: $e6 $3e
    db $e4                                        ; $6cb8: $e4
    inc a                                         ; $6cb9: $3c
    db $fc                                        ; $6cba: $fc
    db $fc                                        ; $6cbb: $fc
    nop                                           ; $6cbc: $00
    nop                                           ; $6cbd: $00
    rst $38                                       ; $6cbe: $ff
    ld hl, sp+$47                                 ; $6cbf: $f8 $47
    or h                                          ; $6cc1: $b4
    ret nz                                        ; $6cc2: $c0

    sbc b                                         ; $6cc3: $98
    ldh [$f8], a                                  ; $6cc4: $e0 $f8
    rst $38                                       ; $6cc6: $ff
    ld sp, hl                                     ; $6cc7: $f9
    rlca                                          ; $6cc8: $07
    ld [hl], b                                    ; $6cc9: $70
    ld h, b                                       ; $6cca: $60
    sub h                                         ; $6ccb: $94
    ld hl, $c03f                                  ; $6ccc: $21 $3f $c0
    pop bc                                        ; $6ccf: $c1
    ld a, $fe                                     ; $6cd0: $3e $fe
    cp [hl]                                       ; $6cd2: $be
    ld d, c                                       ; $6cd3: $51
    add b                                         ; $6cd4: $80
    adc a                                         ; $6cd5: $8f
    ldh a, [$7e]                                  ; $6cd6: $f0 $7e
    ld a, a                                       ; $6cd8: $7f
    ld bc, $60e6                                  ; $6cd9: $01 $e6 $60
    add sp, -$03                                  ; $6cdc: $e8 $fd
    jr jr_07b_6ce6                                ; $6cde: $18 $06

    pop hl                                        ; $6ce0: $e1
    ret nc                                        ; $6ce1: $d0

    jr nc, @-$2e                                  ; $6ce2: $30 $d0

    jr nc, jr_07b_6cf6                            ; $6ce4: $30 $10

jr_07b_6ce6:
    ldh a, [$f9]                                  ; $6ce6: $f0 $f9
    ldh [$82], a                                  ; $6ce8: $e0 $82
    ret nz                                        ; $6cea: $c0

    ld hl, sp-$78                                 ; $6ceb: $f8 $88
    ld [$0c08], sp                                ; $6ced: $08 $08 $0c
    inc c                                         ; $6cf0: $0c
    ld e, $ff                                     ; $6cf1: $1e $ff
    db $10                                        ; $6cf3: $10
    db $10                                        ; $6cf4: $10
    db $10                                        ; $6cf5: $10

jr_07b_6cf6:
    ld de, $3838                                  ; $6cf6: $11 $38 $38
    ld [hl], c                                    ; $6cf9: $71
    ld [hl], b                                    ; $6cfa: $70
    rst $38                                       ; $6cfb: $ff
    dec sp                                        ; $6cfc: $3b
    inc a                                         ; $6cfd: $3c
    cp [hl]                                       ; $6cfe: $be

Call_07b_6cff:
    db $fd                                        ; $6cff: $fd
    ld a, l                                       ; $6d00: $7d
    ei                                            ; $6d01: $fb
    ccf                                           ; $6d02: $3f
    ld a, a                                       ; $6d03: $7f
    rst $38                                       ; $6d04: $ff
    ld l, e                                       ; $6d05: $6b
    ld [hl], a                                    ; $6d06: $77
    rst $10                                       ; $6d07: $d7
    db $ed                                        ; $6d08: $ed
    ld a, a                                       ; $6d09: $7f
    ei                                            ; $6d0a: $fb
    cp a                                          ; $6d0b: $bf
    ld l, a                                       ; $6d0c: $6f
    rst $38                                       ; $6d0d: $ff
    ld a, e                                       ; $6d0e: $7b
    rst $18                                       ; $6d0f: $df
    or $ff                                        ; $6d10: $f6 $ff
    res 7, a                                      ; $6d12: $cb $bf
    and l                                         ; $6d14: $a5
    ld e, e                                       ; $6d15: $5b
    ld a, a                                       ; $6d16: $7f
    ld a, [hl]                                    ; $6d17: $7e
    ld sp, hl                                     ; $6d18: $f9
    cp l                                          ; $6d19: $bd
    rst $38                                       ; $6d1a: $ff
    ld e, e                                       ; $6d1b: $5b
    rst $38                                       ; $6d1c: $ff
    db $fd                                        ; $6d1d: $fd
    inc c                                         ; $6d1e: $0c
    ld h, c                                       ; $6d1f: $61
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    ld e, [hl]                                    ; $6d22: $5e
    rst $38                                       ; $6d23: $ff
    scf                                           ; $6d24: $37
    rst $38                                       ; $6d25: $ff
    rla                                           ; $6d26: $17
    rst $38                                       ; $6d27: $ff
    ld c, a                                       ; $6d28: $4f
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    ld c, e                                       ; $6d2b: $4b
    cp a                                          ; $6d2c: $bf
    sub a                                         ; $6d2d: $97
    ld a, a                                       ; $6d2e: $7f
    ld a, a                                       ; $6d2f: $7f
    rst $38                                       ; $6d30: $ff
    ccf                                           ; $6d31: $3f
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    ld c, a                                       ; $6d34: $4f
    cp a                                          ; $6d35: $bf
    sbc a                                         ; $6d36: $9f
    ld a, a                                       ; $6d37: $7f
    add b                                         ; $6d38: $80
    rst $38                                       ; $6d39: $ff
    jp nc, $efff                                  ; $6d3a: $d2 $ff $ef

    ld [c], a                                     ; $6d3d: $e2
    rst $38                                       ; $6d3e: $ff
    rst $00                                       ; $6d3f: $c7
    rst $38                                       ; $6d40: $ff

jr_07b_6d41:
    xor $ff                                       ; $6d41: $ee $ff
    rst $30                                       ; $6d43: $f7
    rst $38                                       ; $6d44: $ff

jr_07b_6d45:
    rst $38                                       ; $6d45: $ff
    xor a                                         ; $6d46: $af
    rst $38                                       ; $6d47: $ff
    rst $18                                       ; $6d48: $df
    rst $38                                       ; $6d49: $ff
    jr @+$01                                      ; $6d4a: $18 $ff

jr_07b_6d4c:
    jr nc, jr_07b_6d4c                            ; $6d4c: $30 $fe

    cp $e0                                        ; $6d4e: $fe $e0
    ld a, e                                       ; $6d50: $7b
    db $fc                                        ; $6d51: $fc
    cp h                                          ; $6d52: $bc
    ei                                            ; $6d53: $fb
    ld a, [hl]                                    ; $6d54: $7e
    db $fd                                        ; $6d55: $fd
    ld a, [$fff7]                                 ; $6d56: $fa $f7 $ff
    ld a, h                                       ; $6d59: $7c
    rst $38                                       ; $6d5a: $ff
    xor $a0                                       ; $6d5b: $ee $a0
    rst $38                                       ; $6d5d: $ff
    ld b, h                                       ; $6d5e: $44
    cp a                                          ; $6d5f: $bf
    inc c                                         ; $6d60: $0c
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    ld c, [hl]                                    ; $6d63: $4e
    rst $38                                       ; $6d64: $ff
    call c, Call_07b_6cff                         ; $6d65: $dc $ff $6c
    rst $38                                       ; $6d68: $ff
    rst $18                                       ; $6d69: $df
    rst $38                                       ; $6d6a: $ff
    cp $08                                        ; $6d6b: $fe $08
    rst $30                                       ; $6d6d: $f7
    inc e                                         ; $6d6e: $1c
    db $e3                                        ; $6d6f: $e3
    jr nc, jr_07b_6d41                            ; $6d70: $30 $cf

    add c                                         ; $6d72: $81
    rst $38                                       ; $6d73: $ff
    ld a, [hl]                                    ; $6d74: $7e
    ld b, b                                       ; $6d75: $40
    rst $38                                       ; $6d76: $ff
    db $e4                                        ; $6d77: $e4
    ei                                            ; $6d78: $fb
    ret z                                         ; $6d79: $c8

    rst $30                                       ; $6d7a: $f7
    ld h, c                                       ; $6d7b: $61
    rst $28                                       ; $6d7c: $ef
    rst $38                                       ; $6d7d: $ff
    nop                                           ; $6d7e: $00
    add b                                         ; $6d7f: $80
    ld b, b                                       ; $6d80: $40
    cp $e0                                        ; $6d81: $fe $e0
    jr nc, jr_07b_6d45                            ; $6d83: $30 $c0

    ld c, b                                       ; $6d85: $48
    ld a, a                                       ; $6d86: $7f
    or b                                          ; $6d87: $b0
    inc b                                         ; $6d88: $04
    ld hl, sp-$5a                                 ; $6d89: $f8 $a6
    ret c                                         ; $6d8b: $d8

    sub b                                         ; $6d8c: $90
    xor $dc                                       ; $6d8d: $ee $dc
    pop bc                                        ; $6d8f: $c1
    db $fc                                        ; $6d90: $fc
    push bc                                       ; $6d91: $c5
    ld b, b                                       ; $6d92: $40
    db $fd                                        ; $6d93: $fd
    ld [c], a                                     ; $6d94: $e2
    ld [bc], a                                    ; $6d95: $02
    inc bc                                        ; $6d96: $03
    ld bc, $7f01                                  ; $6d97: $01 $01 $7f
    rrca                                          ; $6d9a: $0f
    rst $38                                       ; $6d9b: $ff
    ei                                            ; $6d9c: $fb
    inc [hl]                                      ; $6d9d: $34
    call nc, $a7eb                                ; $6d9e: $d4 $eb $a7
    rst $18                                       ; $6da1: $df
    sbc b                                         ; $6da2: $98
    ld a, a                                       ; $6da3: $7f
    rst $38                                       ; $6da4: $ff
    ld [hl], l                                    ; $6da5: $75
    ld hl, sp-$3f                                 ; $6da6: $f8 $c1
    pop af                                        ; $6da8: $f1
    ld b, [hl]                                    ; $6da9: $46

jr_07b_6daa:
    rst $20                                       ; $6daa: $e7
    ld a, l                                       ; $6dab: $7d
    db $10                                        ; $6dac: $10
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    ldh a, [$5f]                                  ; $6daf: $f0 $5f
    or b                                          ; $6db1: $b0
    sbc a                                         ; $6db2: $9f
    ldh a, [$7f]                                  ; $6db3: $f0 $7f
    pop af                                        ; $6db5: $f1
    ld a, a                                       ; $6db6: $7f
    ld a, $ff                                     ; $6db7: $3e $ff
    and $f8                                       ; $6db9: $e6 $f8
    ld b, b                                       ; $6dbb: $40
    add b                                         ; $6dbc: $80
    ret nz                                        ; $6dbd: $c0

    ld a, e                                       ; $6dbe: $7b
    ld b, c                                       ; $6dbf: $41
    ld hl, sp-$06                                 ; $6dc0: $f8 $fa
    ldh [$f8], a                                  ; $6dc2: $e0 $f8
    ldh [$30], a                                  ; $6dc4: $e0 $30
    ld [hl+], a                                   ; $6dc6: $22
    dec [hl]                                      ; $6dc7: $35
    ld hl, $113b                                  ; $6dc8: $21 $3b $11
    dec [hl]                                      ; $6dcb: $35
    rst $38                                       ; $6dcc: $ff
    ld de, $103a                                  ; $6dcd: $11 $3a $10
    ld [hl], l                                    ; $6dd0: $75
    db $10                                        ; $6dd1: $10
    ld l, d                                       ; $6dd2: $6a
    jr nz, jr_07b_6daa                            ; $6dd3: $20 $d5

    jp $ab40                                      ; $6dd5: $c3 $40 $ab


    ld l, d                                       ; $6dd8: $6a
    ld b, d                                       ; $6dd9: $42
    db $dd                                        ; $6dda: $dd
    ld [c], a                                     ; $6ddb: $e2
    ei                                            ; $6ddc: $fb
    db $e4                                        ; $6ddd: $e4
    ld [hl], b                                    ; $6dde: $70
    inc b                                         ; $6ddf: $04
    inc b                                         ; $6de0: $04
    inc b                                         ; $6de1: $04
    rst $38                                       ; $6de2: $ff
    ld b, $0e                                     ; $6de3: $06 $0e
    rrca                                          ; $6de5: $0f
    dec c                                         ; $6de6: $0d
    rrca                                          ; $6de7: $0f
    rrca                                          ; $6de8: $0f
    rra                                           ; $6de9: $1f
    rra                                           ; $6dea: $1f
    rst $38                                       ; $6deb: $ff
    ccf                                           ; $6dec: $3f
    rrca                                          ; $6ded: $0f
    rra                                           ; $6dee: $1f
    cpl                                           ; $6def: $2f
    ccf                                           ; $6df0: $3f
    scf                                           ; $6df1: $37
    ccf                                           ; $6df2: $3f
    ld l, a                                       ; $6df3: $6f
    xor a                                         ; $6df4: $af
    ld a, a                                       ; $6df5: $7f
    ccf                                           ; $6df6: $3f
    ld a, a                                       ; $6df7: $7f
    ccf                                           ; $6df8: $3f
    ld c, $c0                                     ; $6df9: $0e $c0
    ld l, [hl]                                    ; $6dfb: $6e
    ld hl, $df40                                  ; $6dfc: $21 $40 $df
    sbc $14                                       ; $6dff: $de $14
    ldh [$fd], a                                  ; $6e01: $e0 $fd
    cp $da                                        ; $6e03: $fe $da
    db $fd                                        ; $6e05: $fd
    ld a, [$dde1]                                 ; $6e06: $fa $e1 $dd
    or a                                          ; $6e09: $b7
    db $fd                                        ; $6e0a: $fd
    cp a                                          ; $6e0b: $bf
    rrca                                          ; $6e0c: $0f
    ld b, b                                       ; $6e0d: $40
    ld l, e                                       ; $6e0e: $6b
    rst $38                                       ; $6e0f: $ff
    ld d, c                                       ; $6e10: $51
    rst $28                                       ; $6e11: $ef
    sub [hl]                                      ; $6e12: $96
    db $eb                                        ; $6e13: $eb
    ld a, a                                       ; $6e14: $7f
    xor a                                         ; $6e15: $af
    ld e, e                                       ; $6e16: $5b
    ld a, a                                       ; $6e17: $7f
    db $db                                        ; $6e18: $db
    db $db                                        ; $6e19: $db
    ld a, a                                       ; $6e1a: $7f
    rst $28                                       ; $6e1b: $ef
    rst $28                                       ; $6e1c: $ef
    pop hl                                        ; $6e1d: $e1
    cp $f2                                        ; $6e1e: $fe $f2
    ret nz                                        ; $6e20: $c0

    ld d, a                                       ; $6e21: $57
    rst $38                                       ; $6e22: $ff
    dec hl                                        ; $6e23: $2b
    rst $38                                       ; $6e24: $ff
    rst $18                                       ; $6e25: $df

jr_07b_6e26:
    cp a                                          ; $6e26: $bf
    ccf                                           ; $6e27: $3f
    xor [hl]                                      ; $6e28: $ae
    pop af                                        ; $6e29: $f1
    jr nz, @+$59                                  ; $6e2a: $20 $57

    rst $38                                       ; $6e2c: $ff
    cpl                                           ; $6e2d: $2f
    call nc, Call_07b_6fa0                        ; $6e2e: $d4 $a0 $6f
    ld [bc], a                                    ; $6e31: $02
    ldh [$7f], a                                  ; $6e32: $e0 $7f
    ld a, [hl]                                    ; $6e34: $7e
    db $e3                                        ; $6e35: $e3
    jr nz, jr_07b_6e26                            ; $6e36: $20 $ee

    rst $38                                       ; $6e38: $ff
    rst $10                                       ; $6e39: $d7
    rst $38                                       ; $6e3a: $ff
    rst $28                                       ; $6e3b: $ef
    rst $38                                       ; $6e3c: $ff
    reti                                          ; $6e3d: $d9


    ld hl, $f78d                                  ; $6e3e: $21 $8d $f7
    push de                                       ; $6e41: $d5
    ld hl, $fbff                                  ; $6e42: $21 $ff $fb
    cp b                                          ; $6e45: $b8
    and b                                         ; $6e46: $a0
    sla c                                         ; $6e47: $cb $21
    ret                                           ; $6e49: $c9


    ld [c], a                                     ; $6e4a: $e2
    rst $38                                       ; $6e4b: $ff
    db $dd                                        ; $6e4c: $dd
    db $fc                                        ; $6e4d: $fc
    and $e2                                       ; $6e4e: $e6 $e2

Jump_07b_6e50:
    cp [hl]                                       ; $6e50: $be
    rst $38                                       ; $6e51: $ff
    db $ed                                        ; $6e52: $ed
    db $e4                                        ; $6e53: $e4
    ld [c], a                                     ; $6e54: $e2
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    ld e, a                                       ; $6e57: $5f
    ld d, e                                       ; $6e58: $53
    rst $38                                       ; $6e59: $ff
    reti                                          ; $6e5a: $d9


    rst $38                                       ; $6e5b: $ff
    ld sp, hl                                     ; $6e5c: $f9
    ret z                                         ; $6e5d: $c8

    ret nz                                        ; $6e5e: $c0

    rst $28                                       ; $6e5f: $ef
    xor c                                         ; $6e60: $a9

jr_07b_6e61:
    jr nz, jr_07b_6e61                            ; $6e61: $20 $fe

    and l                                         ; $6e63: $a5
    ld hl, $fe81                                  ; $6e64: $21 $81 $fe
    ret nz                                        ; $6e67: $c0

    rst $38                                       ; $6e68: $ff
    ret nz                                        ; $6e69: $c0

    rst $38                                       ; $6e6a: $ff
    push de                                       ; $6e6b: $d5
    rst $08                                       ; $6e6c: $cf
    ld a, [$f7b9]                                 ; $6e6d: $fa $b9 $f7
    cp e                                          ; $6e70: $bb
    jp nz, $b3e2                                  ; $6e71: $c2 $e2 $b3

    and c                                         ; $6e74: $a1
    sbc b                                         ; $6e75: $98
    ld h, b                                       ; $6e76: $60
    rst $38                                       ; $6e77: $ff
    add h                                         ; $6e78: $84
    ld hl, sp-$3c                                 ; $6e79: $f8 $c4
    cp b                                          ; $6e7b: $b8
    jp c, $fdf4                                   ; $6e7c: $da $f4 $fd

    xor $ff                                       ; $6e7f: $ee $ff
    ld sp, hl                                     ; $6e81: $f9
    cp $e2                                        ; $6e82: $fe $e2
    call nz, $c0e0                                ; $6e84: $c4 $e0 $c0
    ld b, b                                       ; $6e87: $40
    ld h, b                                       ; $6e88: $60
    rst $38                                       ; $6e89: $ff
    ld b, b                                       ; $6e8a: $40
    ld h, b                                       ; $6e8b: $60
    jr nz, @+$32                                  ; $6e8c: $20 $30

    jr nz, jr_07b_6ec8                            ; $6e8e: $20 $38

    jr @+$20                                      ; $6e90: $18 $1e

    db $fc                                        ; $6e92: $fc
    ld a, [bc]                                    ; $6e93: $0a
    push bc                                       ; $6e94: $c5
    and l                                         ; $6e95: $a5
    and b                                         ; $6e96: $a0
    rlca                                          ; $6e97: $07
    ld b, $0f                                     ; $6e98: $06 $0f
    jr jr_07b_6ed4                                ; $6e9a: $18 $38

    ld hl, sp-$01                                 ; $6e9c: $f8 $ff
    ldh [rTAC], a                                 ; $6e9e: $e0 $07
    ld c, $0e                                     ; $6ea0: $0e $0e
    jr jr_07b_6ed9                                ; $6ea2: $18 $35

    ld [hl], b                                    ; $6ea4: $70
    ld l, e                                       ; $6ea5: $6b
    rst $28                                       ; $6ea6: $ef
    pop bc                                        ; $6ea7: $c1
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    ld a, h                                       ; $6eaa: $7c
    ld l, [hl]                                    ; $6eab: $6e
    ld [hl+], a                                   ; $6eac: $22
    ld d, l                                       ; $6ead: $55
    ld bc, $7fab                                  ; $6eae: $01 $ab $7f
    ld bc, $1f5f                                  ; $6eb1: $01 $5f $1f
    pop af                                        ; $6eb4: $f1
    rst $38                                       ; $6eb5: $ff
    ld hl, $07c0                                  ; $6eb6: $21 $c0 $07
    ld h, h                                       ; $6eb9: $64
    cp $ee                                        ; $6eba: $fe $ee
    call z, Call_000_1f0e                         ; $6ebc: $cc $0e $1f
    dec d                                         ; $6ebf: $15
    ccf                                           ; $6ec0: $3f
    ccf                                           ; $6ec1: $3f
    ccf                                           ; $6ec2: $3f
    cpl                                           ; $6ec3: $2f
    xor e                                         ; $6ec4: $ab
    ccf                                           ; $6ec5: $3f
    ld d, a                                       ; $6ec6: $57
    add e                                         ; $6ec7: $83

jr_07b_6ec8:
    nop                                           ; $6ec8: $00
    xor a                                         ; $6ec9: $af
    ld l, b                                       ; $6eca: $68
    ldh [$f7], a                                  ; $6ecb: $e0 $f7
    halt                                          ; $6ecd: $76
    ld [c], a                                     ; $6ece: $e2
    rst $38                                       ; $6ecf: $ff
    or $04                                        ; $6ed0: $f6 $04
    and b                                         ; $6ed2: $a0
    db $fd                                        ; $6ed3: $fd

jr_07b_6ed4:
    rst $38                                       ; $6ed4: $ff
    ld a, [hl]                                    ; $6ed5: $7e
    pop hl                                        ; $6ed6: $e1
    ei                                            ; $6ed7: $fb
    rst $38                                       ; $6ed8: $ff

jr_07b_6ed9:
    ld [hl], l                                    ; $6ed9: $75
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    db $ed                                        ; $6edc: $ed
    ei                                            ; $6edd: $fb
    ld a, [$d7f7]                                 ; $6ede: $fa $f7 $d7
    db $ec                                        ; $6ee1: $ec
    cp $ff                                        ; $6ee2: $fe $ff
    rst $18                                       ; $6ee4: $df
    db $db                                        ; $6ee5: $db
    db $fd                                        ; $6ee6: $fd
    ld h, [hl]                                    ; $6ee7: $66
    cp e                                          ; $6ee8: $bb
    ld a, [$c01a]                                 ; $6ee9: $fa $1a $c0
    ld d, l                                       ; $6eec: $55
    xor a                                         ; $6eed: $af
    rst $38                                       ; $6eee: $ff
    cp b                                          ; $6eef: $b8
    ld c, a                                       ; $6ef0: $4f
    ld h, a                                       ; $6ef1: $67
    jp c, $b7da                                   ; $6ef2: $da $da $b7

    dec a                                         ; $6ef5: $3d
    rst $30                                       ; $6ef6: $f7
    push af                                       ; $6ef7: $f5
    reti                                          ; $6ef8: $d9


    db $d3                                        ; $6ef9: $d3
    ret nz                                        ; $6efa: $c0

    ld a, a                                       ; $6efb: $7f
    ld [de], a                                    ; $6efc: $12
    ldh [$f7], a                                  ; $6efd: $e0 $f7
    cp a                                          ; $6eff: $bf
    ei                                            ; $6f00: $fb
    rst $18                                       ; $6f01: $df
    rst $20                                       ; $6f02: $e7
    cp $6f                                        ; $6f03: $fe $6f
    ld e, a                                       ; $6f05: $5f
    ld a, [hl+]                                   ; $6f06: $2a
    ldh [$60], a                                  ; $6f07: $e0 $60
    daa                                           ; $6f09: $27
    rra                                           ; $6f0a: $1f
    rst $38                                       ; $6f0b: $ff
    ccf                                           ; $6f0c: $3f
    rst $30                                       ; $6f0d: $f7
    ldh [$7f], a                                  ; $6f0e: $e0 $7f
    ret nz                                        ; $6f10: $c0

    ld d, b                                       ; $6f11: $50
    daa                                           ; $6f12: $27
    add b                                         ; $6f13: $80
    rst $38                                       ; $6f14: $ff
    ld hl, sp+$7f                                 ; $6f15: $f8 $7f
    rst $28                                       ; $6f17: $ef
    cp $07                                        ; $6f18: $fe $07
    ld bc, $3fff                                  ; $6f1a: $01 $ff $3f
    ld h, c                                       ; $6f1d: $61
    rlca                                          ; $6f1e: $07

jr_07b_6f1f:
    db $fc                                        ; $6f1f: $fc
    rrca                                          ; $6f20: $0f
    rst $38                                       ; $6f21: $ff
    ld hl, sp+$1f                                 ; $6f22: $f8 $1f
    ldh a, [$3f]                                  ; $6f24: $f0 $3f
    ldh a, [$7f]                                  ; $6f26: $f0 $7f
    ldh [$f0], a                                  ; $6f28: $e0 $f0
    db $e3                                        ; $6f2a: $e3
    rst $08                                       ; $6f2b: $cf
    inc a                                         ; $6f2c: $3c
    add $80                                       ; $6f2d: $c6 $80
    rst $30                                       ; $6f2f: $f7
    jr nz, jr_07b_6f1f                            ; $6f30: $20 $ed

    jr nz, jr_07b_6f40                            ; $6f32: $20 $0c

    cp $30                                        ; $6f34: $fe $30
    dec a                                         ; $6f36: $3d
    ldh a, [$e8]                                  ; $6f37: $f0 $e8
    inc h                                         ; $6f39: $24
    nop                                           ; $6f3a: $00
    rst $38                                       ; $6f3b: $ff
    ld hl, sp-$71                                 ; $6f3c: $f8 $8f
    ld l, $a3                                     ; $6f3e: $2e $a3

jr_07b_6f40:
    push bc                                       ; $6f40: $c5
    ld b, b                                       ; $6f41: $40
    sbc d                                         ; $6f42: $9a
    ccf                                           ; $6f43: $3f
    inc bc                                        ; $6f44: $03
    ret nz                                        ; $6f45: $c0

    or a                                          ; $6f46: $b7
    ld b, b                                       ; $6f47: $40
    jr nz, @+$41                                  ; $6f48: $20 $3f

    nop                                           ; $6f4a: $00
    daa                                           ; $6f4b: $27
    ld h, [hl]                                    ; $6f4c: $66
    inc hl                                        ; $6f4d: $23
    db $ec                                        ; $6f4e: $ec
    rst $38                                       ; $6f4f: $ff
    db $d3                                        ; $6f50: $d3
    ld hl, sp-$39                                 ; $6f51: $f8 $c7
    ld a, [c]                                     ; $6f53: $f2
    adc l                                         ; $6f54: $8d
    or $89                                        ; $6f55: $f6 $89
    db $fc                                        ; $6f57: $fc
    rst $30                                       ; $6f58: $f7
    add e                                         ; $6f59: $83
    ld sp, hl                                     ; $6f5a: $f9
    ld b, $e4                                     ; $6f5b: $06 $e4
    ld hl, $c141                                  ; $6f5d: $21 $41 $c1
    ld b, d                                       ; $6f60: $42
    jp nz, $84ff                                  ; $6f61: $c2 $ff $84

    add h                                         ; $6f64: $84
    add b                                         ; $6f65: $80
    add b                                         ; $6f66: $80
    add c                                         ; $6f67: $81
    add c                                         ; $6f68: $81
    rst $00                                       ; $6f69: $c7
    ld b, a                                       ; $6f6a: $47
    ld e, a                                       ; $6f6b: $5f
    rst $08                                       ; $6f6c: $cf
    ld c, a                                       ; $6f6d: $4f
    rst $38                                       ; $6f6e: $ff
    ld a, a                                       ; $6f6f: $7f
    ret nz                                        ; $6f70: $c0

    ld [$fee4], sp                                ; $6f71: $08 $e4 $fe
    add a                                         ; $6f74: $87
    ret nz                                        ; $6f75: $c0

    push bc                                       ; $6f76: $c5
    rst $20                                       ; $6f77: $e7
    rst $38                                       ; $6f78: $ff
    ldh [$e0], a                                  ; $6f79: $e0 $e0
    cp h                                          ; $6f7b: $bc
    ldh [rPCM12], a                               ; $6f7c: $e0 $76
    inc hl                                        ; $6f7e: $23
    ld [hl], d                                    ; $6f7f: $72
    ldh [rIE], a                                  ; $6f80: $e0 $ff
    ld a, [c]                                     ; $6f82: $f2
    ld a, l                                       ; $6f83: $7d
    di                                            ; $6f84: $f3
    ld [hl], c                                    ; $6f85: $71
    ld [c], a                                     ; $6f86: $e2
    ccf                                           ; $6f87: $3f
    ldh [$3e], a                                  ; $6f88: $e0 $3e
    ldh [$3d], a                                  ; $6f8a: $e0 $3d
    db $fc                                        ; $6f8c: $fc
    pop hl                                        ; $6f8d: $e1
    ld a, a                                       ; $6f8e: $7f
    call c, $ff7e                                 ; $6f8f: $dc $7e $ff
    pop hl                                        ; $6f92: $e1
    ld e, $f3                                     ; $6f93: $1e $f3
    cp [hl]                                       ; $6f95: $be
    ld e, d                                       ; $6f96: $5a
    ret nz                                        ; $6f97: $c0

    di                                            ; $6f98: $f3
    inc bc                                        ; $6f99: $03
    ld b, a                                       ; $6f9a: $47
    ld d, a                                       ; $6f9b: $57
    nop                                           ; $6f9c: $00
    ld d, e                                       ; $6f9d: $53
    nop                                           ; $6f9e: $00
    rst $38                                       ; $6f9f: $ff

Call_07b_6fa0:
    ret nz                                        ; $6fa0: $c0

    ccf                                           ; $6fa1: $3f
    ld hl, sp-$01                                 ; $6fa2: $f8 $ff
    rrca                                          ; $6fa4: $0f
    ld hl, sp+$0f                                 ; $6fa5: $f8 $0f
    ld sp, hl                                     ; $6fa7: $f9
    adc a                                         ; $6fa8: $8f
    rst $38                                       ; $6fa9: $ff
    ld a, [hl]                                    ; $6faa: $7e
    rst $38                                       ; $6fab: $ff
    rst $20                                       ; $6fac: $e7
    ld [bc], a                                    ; $6fad: $02
    rst $38                                       ; $6fae: $ff
    inc b                                         ; $6faf: $04
    ld l, a                                       ; $6fb0: $6f
    ret nz                                        ; $6fb1: $c0

    ld a, [hl]                                    ; $6fb2: $7e
    ld [hl+], a                                   ; $6fb3: $22
    ldh [$1f], a                                  ; $6fb4: $e0 $1f
    ld hl, sp+$3f                                 ; $6fb6: $f8 $3f
    rlca                                          ; $6fb8: $07
    sbc h                                         ; $6fb9: $9c
    add a                                         ; $6fba: $87
    sbc h                                         ; $6fbb: $9c
    add a                                         ; $6fbc: $87
    sbc a                                         ; $6fbd: $9f
    ldh [rTMA], a                                 ; $6fbe: $e0 $06
    ld h, a                                       ; $6fc0: $67
    inc h                                         ; $6fc1: $24
    cp $2c                                        ; $6fc2: $fe $2c
    ld [hl+], a                                   ; $6fc4: $22
    inc bc                                        ; $6fc5: $03
    rst $38                                       ; $6fc6: $ff
    rrca                                          ; $6fc7: $0f
    rst $38                                       ; $6fc8: $ff
    sbc a                                         ; $6fc9: $9f
    pop af                                        ; $6fca: $f1
    or c                                          ; $6fcb: $b1
    rst $38                                       ; $6fcc: $ff
    ldh [$a0], a                                  ; $6fcd: $e0 $a0
    call c, $ffdc                                 ; $6fcf: $dc $dc $ff
    ld a, a                                       ; $6fd2: $7f
    db $fd                                        ; $6fd3: $fd
    db $fd                                        ; $6fd4: $fd
    rst $28                                       ; $6fd5: $ef
    ldh a, [$f0]                                  ; $6fd6: $f0 $f0
    ldh [$c0], a                                  ; $6fd8: $e0 $c0
    ld a, [hl]                                    ; $6fda: $7e
    ld h, c                                       ; $6fdb: $61
    ldh a, [$90]                                  ; $6fdc: $f0 $90
    ldh a, [rIE]                                  ; $6fde: $f0 $ff
    sub b                                         ; $6fe0: $90
    rst $20                                       ; $6fe1: $e7
    and $e7                                       ; $6fe2: $e6 $e7
    and $ff                                       ; $6fe4: $e6 $ff

jr_07b_6fe6:
    db $fd                                        ; $6fe6: $fd
    jr c, jr_07b_6fe6                             ; $6fe7: $38 $fd

    jr c, jr_07b_705d                             ; $6fe9: $38 $72

    push bc                                       ; $6feb: $c5
    ld a, [c]                                     ; $6fec: $f2
    ld [hl], e                                    ; $6fed: $73
    ld a, [$1efb]                                 ; $6fee: $fa $fb $1e
    rra                                           ; $6ff1: $1f
    di                                            ; $6ff2: $f3
    inc d                                         ; $6ff3: $14
    rla                                           ; $6ff4: $17
    ret c                                         ; $6ff5: $d8

    ld bc, $01d4                                  ; $6ff6: $01 $d4 $01
    ret nz                                        ; $6ff9: $c0

    ld [hl], l                                    ; $6ffa: $75
    ret nz                                        ; $6ffb: $c0

    ld l, d                                       ; $6ffc: $6a
    db $fc                                        ; $6ffd: $fc
    db $fc                                        ; $6ffe: $fc
    db $e3                                        ; $6fff: $e3
    rst $18                                       ; $7000: $df
    ld h, b                                       ; $7001: $60
    db $f4                                        ; $7002: $f4
    add b                                         ; $7003: $80
    ld [$f807], a                                 ; $7004: $ea $07 $f8
    ld [$07d7], sp                                ; $7007: $08 $d7 $07
    rrca                                          ; $700a: $0f
    nop                                           ; $700b: $00
    cp $e1                                        ; $700c: $fe $e1
    rra                                           ; $700e: $1f
    cp $e2                                        ; $700f: $fe $e2
    db $fc                                        ; $7011: $fc
    rlca                                          ; $7012: $07
    cp a                                          ; $7013: $bf
    ld a, [hl]                                    ; $7014: $7e
    add a                                         ; $7015: $87
    add c                                         ; $7016: $81
    ld a, a                                       ; $7017: $7f
    ld sp, hl                                     ; $7018: $f9
    rlca                                          ; $7019: $07
    cp $e1                                        ; $701a: $fe $e1
    pop af                                        ; $701c: $f1
    rst $38                                       ; $701d: $ff
    rrca                                          ; $701e: $0f
    ld a, [c]                                     ; $701f: $f2
    rrca                                          ; $7020: $0f
    adc c                                         ; $7021: $89
    rst $18                                       ; $7022: $df
    adc c                                         ; $7023: $89
    rst $18                                       ; $7024: $df
    add hl, bc                                    ; $7025: $09
    ccf                                           ; $7026: $3f
    rst $38                                       ; $7027: $ff
    add hl, bc                                    ; $7028: $09
    rst $38                                       ; $7029: $ff
    rrca                                          ; $702a: $0f
    cp $13                                        ; $702b: $fe $13
    cp $e2                                        ; $702d: $fe $e2
    ld b, b                                       ; $702f: $40
    ld b, $fe                                     ; $7030: $06 $fe
    ld d, b                                       ; $7032: $50
    inc b                                         ; $7033: $04
    jp nz, $c7de                                  ; $7034: $c2 $de $c7

    rst $00                                       ; $7037: $c7
    ret                                           ; $7038: $c9


    rst $08                                       ; $7039: $cf
    ld h, c                                       ; $703a: $61
    rst $38                                       ; $703b: $ff
    ld h, e                                       ; $703c: $63
    ld sp, $1f33                                  ; $703d: $31 $33 $1f
    ld e, $3e                                     ; $7040: $1e $3e
    ld a, $ff                                     ; $7042: $3e $ff
    rst $28                                       ; $7044: $ef
    rst $38                                       ; $7045: $ff
    ld h, b                                       ; $7046: $60
    ld h, b                                       ; $7047: $60
    nop                                           ; $7048: $00
    ld hl, $5420                                  ; $7049: $21 $20 $54
    nop                                           ; $704c: $00
    xor d                                         ; $704d: $aa
    rst $38                                       ; $704e: $ff
    add b                                         ; $704f: $80
    ld [hl], l                                    ; $7050: $75
    ld b, b                                       ; $7051: $40
    jp c, $ed60                                   ; $7052: $da $60 $ed

    ldh a, [$60]                                  ; $7055: $f0 $60
    ld e, a                                       ; $7057: $5f
    ld h, b                                       ; $7058: $60
    inc e                                         ; $7059: $1c
    inc e                                         ; $705a: $1c
    inc bc                                        ; $705b: $03
    inc bc                                        ; $705c: $03

jr_07b_705d:
    ld e, [hl]                                    ; $705d: $5e
    ld b, l                                       ; $705e: $45
    ld b, b                                       ; $705f: $40
    ld d, b                                       ; $7060: $50
    ld [bc], a                                    ; $7061: $02
    rlca                                          ; $7062: $07
    call nz, $04c7                                ; $7063: $c4 $c7 $04
    ld c, [hl]                                    ; $7066: $4e
    ld [bc], a                                    ; $7067: $02
    cp $e1                                        ; $7068: $fe $e1
    sub h                                         ; $706a: $94
    ret                                           ; $706b: $c9


    ld d, $e1                                     ; $706c: $16 $e1
    ld l, l                                       ; $706e: $6d
    ldh [$ef], a                                  ; $706f: $e0 $ef
    add b                                         ; $7071: $80
    call nc, $e880                                ; $7072: $d4 $80 $e8
    and e                                         ; $7075: $a3
    ldh [$e8], a                                  ; $7076: $e0 $e8
    nop                                           ; $7078: $00
    db $f4                                        ; $7079: $f4
    rst $00                                       ; $707a: $c7
    ldh [rIE], a                                  ; $707b: $e0 $ff
    jr jr_07b_70e9                                ; $707d: $18 $6a

    db $e3                                        ; $707f: $e3
    adc [hl]                                      ; $7080: $8e
    ld b, b                                       ; $7081: $40
    db $fc                                        ; $7082: $fc
    db $e4                                        ; $7083: $e4
    ld a, [c]                                     ; $7084: $f2
    rrca                                          ; $7085: $0f
    rst $38                                       ; $7086: $ff
    di                                            ; $7087: $f3
    ld c, $f3                                     ; $7088: $0e $f3
    ld c, $f5                                     ; $708a: $0e $f5
    ld c, $e5                                     ; $708c: $0e $e5
    ld e, $ff                                     ; $708e: $1e $ff
    rst $20                                       ; $7090: $e7
    inc e                                         ; $7091: $1c
    db $eb                                        ; $7092: $eb
    inc e                                         ; $7093: $1c
    srl h                                         ; $7094: $cb $3c
    inc de                                        ; $7096: $13
    cp $fb                                        ; $7097: $fe $fb
    daa                                           ; $7099: $27
    db $fc                                        ; $709a: $fc
    cp $e3                                        ; $709b: $fe $e3
    ld b, a                                       ; $709d: $47
    db $fc                                        ; $709e: $fc

jr_07b_709f:
    ld c, a                                       ; $709f: $4f
    ld hl, sp+$4f                                 ; $70a0: $f8 $4f
    pop bc                                        ; $70a2: $c1
    ld hl, sp+$41                                 ; $70a3: $f8 $41
    ld a, [bc]                                    ; $70a5: $0a
    ccf                                           ; $70a6: $3f
    ld [bc], a                                    ; $70a7: $02
    ld [$5641], a                                 ; $70a8: $ea $41 $56
    ld h, c                                       ; $70ab: $61
    add b                                         ; $70ac: $80
    inc hl                                        ; $70ad: $23
    rst $38                                       ; $70ae: $ff
    add e                                         ; $70af: $83
    cp [hl]                                       ; $70b0: $be
    rst $18                                       ; $70b1: $df
    ld [c], a                                     ; $70b2: $e2
    pop bc                                        ; $70b3: $c1
    ld a, [hl]                                    ; $70b4: $7e
    ld c, [hl]                                    ; $70b5: $4e
    ld [hl], b                                    ; $70b6: $70
    ld [hl], b                                    ; $70b7: $70
    ld l, [hl]                                    ; $70b8: $6e
    ld hl, $fee6                                  ; $70b9: $21 $e6 $fe
    ret nc                                        ; $70bc: $d0

    nop                                           ; $70bd: $00
    ret nc                                        ; $70be: $d0

    rst $18                                       ; $70bf: $df
    db $10                                        ; $70c0: $10
    rra                                           ; $70c1: $1f
    jr jr_07b_70db                                ; $70c2: $18 $17

    jr jr_07b_7145                                ; $70c4: $18 $7f

    rra                                           ; $70c6: $1f
    inc a                                         ; $70c7: $3c
    cpl                                           ; $70c8: $2f
    dec hl                                        ; $70c9: $2b
    scf                                           ; $70ca: $37
    and b                                         ; $70cb: $a0
    nop                                           ; $70cc: $00
    ld b, [hl]                                    ; $70cd: $46
    nop                                           ; $70ce: $00
    db $db                                        ; $70cf: $db
    cp a                                          ; $70d0: $bf
    inc bc                                        ; $70d1: $03
    ret nc                                        ; $70d2: $d0

    inc d                                         ; $70d3: $14
    or b                                          ; $70d4: $b0
    or b                                          ; $70d5: $b0
    or a                                          ; $70d6: $b7
    and c                                         ; $70d7: $a1
    cp $03                                        ; $70d8: $fe $03
    cpl                                           ; $70da: $2f

jr_07b_70db:
    ld d, [hl]                                    ; $70db: $56
    inc bc                                        ; $70dc: $03
    xor e                                         ; $70dd: $ab
    ld bc, $0359                                  ; $70de: $01 $59 $03
    ret nc                                        ; $70e1: $d0

    ld e, b                                       ; $70e2: $58
    ldh [$fc], a                                  ; $70e3: $e0 $fc
    pop hl                                        ; $70e5: $e1
    rst $38                                       ; $70e6: $ff
    ldh a, [$f0]                                  ; $70e7: $f0 $f0

jr_07b_70e9:
    rst $38                                       ; $70e9: $ff
    adc a                                         ; $70ea: $8f
    ld a, b                                       ; $70eb: $78
    ld b, b                                       ; $70ec: $40
    inc a                                         ; $70ed: $3c
    jr nz, jr_07b_709f                            ; $70ee: $20 $af

    rst $00                                       ; $70f0: $c7
    jr c, jr_07b_716b                             ; $70f1: $38 $78

    rlca                                          ; $70f3: $07
    add sp, $21                                   ; $70f4: $e8 $21
    ld a, a                                       ; $70f6: $7f
    sbc h                                         ; $70f7: $9c
    and d                                         ; $70f8: $a2
    cp a                                          ; $70f9: $bf
    rst $38                                       ; $70fa: $ff
    rlca                                          ; $70fb: $07
    rst $08                                       ; $70fc: $cf
    jr c, @+$19                                   ; $70fd: $38 $17

    ld hl, sp-$4a                                 ; $70ff: $f8 $b6
    ld a, c                                       ; $7101: $79
    and c                                         ; $7102: $a1
    rst $38                                       ; $7103: $ff
    ld a, a                                       ; $7104: $7f
    and c                                         ; $7105: $a1
    ld a, a                                       ; $7106: $7f
    daa                                           ; $7107: $27
    ld a, [$fc1f]                                 ; $7108: $fa $1f $fc
    adc a                                         ; $710b: $8f
    rst $30                                       ; $710c: $f7
    ldh a, [$8f]                                  ; $710d: $f0 $8f
    ld hl, sp-$02                                 ; $710f: $f8 $fe
    pop hl                                        ; $7111: $e1
    rra                                           ; $7112: $1f
    ld hl, sp-$22                                 ; $7113: $f8 $de
    ld hl, sp-$41                                 ; $7115: $f8 $bf
    dec [hl]                                      ; $7117: $35
    ldh a, [rNR30]                                ; $7118: $f0 $1a
    ldh a, [rNR41]                                ; $711a: $f0 $20
    ldh [$cf], a                                  ; $711c: $e0 $cf
    inc b                                         ; $711e: $04
    ret nc                                        ; $711f: $d0

    or h                                          ; $7120: $b4
    rst $08                                       ; $7121: $cf
    rlca                                          ; $7122: $07
    ld h, b                                       ; $7123: $60
    ld h, c                                       ; $7124: $61
    ld b, $40                                     ; $7125: $06 $40

jr_07b_7127:
    ld h, $55                                     ; $7127: $26 $55
    ld l, d                                       ; $7129: $6a
    ld b, b                                       ; $712a: $40
    ld hl, $7f92                                  ; $712b: $21 $92 $7f
    dec a                                         ; $712e: $3d
    ld l, c                                       ; $712f: $69
    ld e, $b4                                     ; $7130: $1e $b4
    rrca                                          ; $7132: $0f
    ld e, d                                       ; $7133: $5a
    rlca                                          ; $7134: $07
    ld b, b                                       ; $7135: $40
    jr nz, jr_07b_7127                            ; $7136: $20 $ef

    jp $f23f                                      ; $7138: $c3 $3f $f2


    ld e, [hl]                                    ; $713b: $5e
    ld b, b                                       ; $713c: $40
    ld h, $2f                                     ; $713d: $26 $2f
    and $bc                                       ; $713f: $e6 $bc
    rst $20                                       ; $7141: $e7
    ld l, h                                       ; $7142: $6c
    ld l, e                                       ; $7143: $6b
    and e                                         ; $7144: $a3

jr_07b_7145:
    ld b, b                                       ; $7145: $40
    add hl, hl                                    ; $7146: $29
    ld a, [hl]                                    ; $7147: $7e
    add c                                         ; $7148: $81
    ldh [$e0], a                                  ; $7149: $e0 $e0
    cp b                                          ; $714b: $b8
    rst $38                                       ; $714c: $ff
    jr c, jr_07b_71ad                             ; $714d: $38 $5e

    ld c, $ad                                     ; $714f: $0e $ad
    dec bc                                        ; $7151: $0b
    ld e, e                                       ; $7152: $5b
    dec c                                         ; $7153: $0d
    xor a                                         ; $7154: $af
    rst $38                                       ; $7155: $ff
    add hl, bc                                    ; $7156: $09
    ld a, [de]                                    ; $7157: $1a
    db $10                                        ; $7158: $10
    dec c                                         ; $7159: $0d
    ld [$0406], sp                                ; $715a: $08 $06 $04
    rlca                                          ; $715d: $07
    rst $38                                       ; $715e: $ff
    rlca                                          ; $715f: $07
    dec c                                         ; $7160: $0d
    dec bc                                        ; $7161: $0b
    adc d                                         ; $7162: $8a
    adc a                                         ; $7163: $8f
    rst $28                                       ; $7164: $ef
    ld l, a                                       ; $7165: $6f
    inc a                                         ; $7166: $3c
    rst $38                                       ; $7167: $ff
    rra                                           ; $7168: $1f
    ld [hl], c                                    ; $7169: $71
    nop                                           ; $716a: $00

jr_07b_716b:
    ld [hl-], a                                   ; $716b: $32
    ld bc, $03b0                                  ; $716c: $01 $b0 $03
    db $f4                                        ; $716f: $f4
    rst $38                                       ; $7170: $ff
    di                                            ; $7171: $f3
    inc a                                         ; $7172: $3c
    rst $08                                       ; $7173: $cf
    ld a, a                                       ; $7174: $7f
    add e                                         ; $7175: $83
    rst $28                                       ; $7176: $ef
    pop af                                        ; $7177: $f1
    di                                            ; $7178: $f3
    rst $38                                       ; $7179: $ff
    ld bc, $f87f                                  ; $717a: $01 $7f $f8
    rlca                                          ; $717d: $07
    rst $38                                       ; $717e: $ff
    ld a, a                                       ; $717f: $7f
    add b                                         ; $7180: $80
    ld a, a                                       ; $7181: $7f
    rst $18                                       ; $7182: $df
    add e                                         ; $7183: $83
    call c, $e03c                                 ; $7184: $dc $3c $e0
    ld h, b                                       ; $7187: $60
    dec e                                         ; $7188: $1d
    ld h, c                                       ; $7189: $61
    ldh [rNR41], a                                ; $718a: $e0 $20
    db $e3                                        ; $718c: $e3
    ldh [rNR41], a                                ; $718d: $e0 $20
    inc l                                         ; $718f: $2c
    and l                                         ; $7190: $a5
    ld c, [hl]                                    ; $7191: $4e
    ld bc, $21b0                                  ; $7192: $01 $b0 $21
    ld d, l                                       ; $7195: $55
    ld b, b                                       ; $7196: $40
    xor d                                         ; $7197: $aa
    sbc a                                         ; $7198: $9f
    add b                                         ; $7199: $80
    push de                                       ; $719a: $d5
    add c                                         ; $719b: $81
    db $eb                                        ; $719c: $eb
    add c                                         ; $719d: $81
    inc d                                         ; $719e: $14
    add c                                         ; $719f: $81
    or b                                          ; $71a0: $b0
    ld hl, $ef7d                                  ; $71a1: $21 $7d $ef
    ld a, h                                       ; $71a4: $7c
    jp $8183                                      ; $71a5: $c3 $83 $81


    xor $c2                                       ; $71a8: $ee $c2
    ld bc, $d500                                  ; $71aa: $01 $00 $d5

jr_07b_71ad:
    db $fd                                        ; $71ad: $fd
    ret nz                                        ; $71ae: $c0

    or b                                          ; $71af: $b0
    inc hl                                        ; $71b0: $23
    push de                                       ; $71b1: $d5
    add b                                         ; $71b2: $80
    xor d                                         ; $71b3: $aa
    add b                                         ; $71b4: $80
    ld d, l                                       ; $71b5: $55
    ld b, b                                       ; $71b6: $40
    ld l, a                                       ; $71b7: $6f
    ld l, d                                       ; $71b8: $6a
    ld b, b                                       ; $71b9: $40
    ld [hl], a                                    ; $71ba: $77
    nop                                           ; $71bb: $00
    or b                                          ; $71bc: $b0
    ld h, $03                                     ; $71bd: $26 $03
    ld d, a                                       ; $71bf: $57

jr_07b_71c0:
    db $e4                                        ; $71c0: $e4
    ld h, b                                       ; $71c1: $60
    rst $30                                       ; $71c2: $f7
    ld e, e                                       ; $71c3: $5b
    dec d                                         ; $71c4: $15
    rst $30                                       ; $71c5: $f7
    xor [hl]                                      ; $71c6: $ae
    jr nz, jr_07b_71c0                            ; $71c7: $20 $f7

    ld a, [hl+]                                   ; $71c9: $2a
    db $ed                                        ; $71ca: $ed
    dec [hl]                                      ; $71cb: $35
    rst $38                                       ; $71cc: $ff
    db $f4                                        ; $71cd: $f4
    inc l                                         ; $71ce: $2c
    add sp, -$28                                  ; $71cf: $e8 $d8
    add hl, sp                                    ; $71d1: $39
    add hl, sp                                    ; $71d2: $39
    rlca                                          ; $71d3: $07
    rlca                                          ; $71d4: $07
    ei                                            ; $71d5: $fb
    add h                                         ; $71d6: $84
    rlca                                          ; $71d7: $07
    ld h, c                                       ; $71d8: $61
    add b                                         ; $71d9: $80
    rlca                                          ; $71da: $07
    cp $8f                                        ; $71db: $fe $8f
    ld a, c                                       ; $71dd: $79
    ld [hl], a                                    ; $71de: $77
    rst $38                                       ; $71df: $ff
    pop de                                        ; $71e0: $d1
    ldh [$e9], a                                  ; $71e1: $e0 $e9
    ldh [$d1], a                                  ; $71e3: $e0 $d1
    ldh [$f1], a                                  ; $71e5: $e0 $f1
    nop                                           ; $71e7: $00
    rst $38                                       ; $71e8: $ff
    cp l                                          ; $71e9: $bd
    ret nz                                        ; $71ea: $c0

    rst $38                                       ; $71eb: $ff
    ld bc, $e11f                                  ; $71ec: $01 $1f $e1
    di                                            ; $71ef: $f3
    rst $38                                       ; $71f0: $ff
    rrca                                          ; $71f1: $0f
    xor $1e                                       ; $71f2: $ee $1e
    cp $02                                        ; $71f4: $fe $02
    cp b                                          ; $71f6: $b8
    ld c, h                                       ; $71f7: $4c
    inc l                                         ; $71f8: $2c
    ld [hl+], a                                   ; $71f9: $22
    ld d, b                                       ; $71fa: $50
    ld b, c                                       ; $71fb: $41
    cp $e0                                        ; $71fc: $fe $e0
    or $50                                        ; $71fe: $f6 $50
    ld b, l                                       ; $7200: $45
    dec [hl]                                      ; $7201: $35
    push de                                       ; $7202: $d5
    ld d, b                                       ; $7203: $50
    ld b, b                                       ; $7204: $40
    sbc c                                         ; $7205: $99
    ld a, a                                       ; $7206: $7f
    ld [hl], a                                    ; $7207: $77
    cp d                                          ; $7208: $ba
    rst $28                                       ; $7209: $ef
    ld [c], a                                     ; $720a: $e2
    ld a, [c]                                     ; $720b: $f2
    ld b, h                                       ; $720c: $44
    db $e4                                        ; $720d: $e4
    ld [hl+], a                                   ; $720e: $22
    jp $0103                                      ; $720f: $c3 $03 $01


    dec c                                         ; $7212: $0d
    rst $38                                       ; $7213: $ff
    inc bc                                        ; $7214: $03
    ld c, $06                                     ; $7215: $0e $06
    dec c                                         ; $7217: $0d
    ld [$080e], sp                                ; $7218: $08 $0e $08
    ld d, l                                       ; $721b: $55
    ld h, c                                       ; $721c: $61
    ret nz                                        ; $721d: $c0

    ld a, b                                       ; $721e: $78
    ldh [$0c], a                                  ; $721f: $e0 $0c
    ld [hl+], a                                   ; $7221: $22
    db $fc                                        ; $7222: $fc
    db $e4                                        ; $7223: $e4
    ld h, b                                       ; $7224: $60
    ld h, b                                       ; $7225: $60
    ld d, l                                       ; $7226: $55
    ld bc, $e5f0                                  ; $7227: $01 $f0 $e5
    db $ed                                        ; $722a: $ed
    xor e                                         ; $722b: $ab
    ld a, [c]                                     ; $722c: $f2
    and h                                         ; $722d: $a4
    add d                                         ; $722e: $82
    add e                                         ; $722f: $83
    rst $38                                       ; $7230: $ff
    ldh [$82], a                                  ; $7231: $e0 $82
    add l                                         ; $7233: $85
    add [hl]                                      ; $7234: $86
    rst $38                                       ; $7235: $ff
    add h                                         ; $7236: $84
    add a                                         ; $7237: $87
    ld h, c                                       ; $7238: $61
    sbc [hl]                                      ; $7239: $9e
    ld d, b                                       ; $723a: $50
    add c                                         ; $723b: $81
    db $e3                                        ; $723c: $e3
    nop                                           ; $723d: $00
    ld [hl], a                                    ; $723e: $77
    db $d3                                        ; $723f: $d3
    nop                                           ; $7240: $00
    and e                                         ; $7241: $a3
    jr z, jr_07b_7264                             ; $7242: $28 $20

    and [hl]                                      ; $7244: $a6
    ld bc, $a2c7                                  ; $7245: $01 $c7 $a2
    add b                                         ; $7248: $80
    rst $28                                       ; $7249: $ef
    rra                                           ; $724a: $1f
    ldh [$e3], a                                  ; $724b: $e0 $e3
    rra                                           ; $724d: $1f
    cp e                                          ; $724e: $bb
    and e                                         ; $724f: $a3
    rrca                                          ; $7250: $0f
    ldh a, [$f3]                                  ; $7251: $f0 $f3
    call Call_000_220f                            ; $7253: $cd $0f $22
    ld b, e                                       ; $7256: $43
    ld b, b                                       ; $7257: $40

jr_07b_7258:
    ret nz                                        ; $7258: $c0

    cp $e1                                        ; $7259: $fe $e1
    jr nc, @+$63                                  ; $725b: $30 $61

    ret z                                         ; $725d: $c8

    add sp, -$21                                  ; $725e: $e8 $df
    ret nc                                        ; $7260: $d0

    ldh a, [$50]                                  ; $7261: $f0 $50
    ld [hl], b                                    ; $7263: $70

jr_07b_7264:
    ld [hl], b                                    ; $7264: $70
    ldh [rLCDC], a                                ; $7265: $e0 $40
    jr c, jr_07b_7299                             ; $7267: $38 $30

    rst $38                                       ; $7269: $ff
    inc d                                         ; $726a: $14
    jr jr_07b_727c                                ; $726b: $18 $0f

    rrca                                          ; $726d: $0f
    dec c                                         ; $726e: $0d
    ld [$081e], sp                                ; $726f: $08 $1e $08
    rst $38                                       ; $7272: $ff
    dec e                                         ; $7273: $1d
    db $10                                        ; $7274: $10
    ld e, $10                                     ; $7275: $1e $10
    dec a                                         ; $7277: $3d
    db $10                                        ; $7278: $10
    ccf                                           ; $7279: $3f
    ccf                                           ; $727a: $3f
    rst $28                                       ; $727b: $ef

jr_07b_727c:
    ld h, e                                       ; $727c: $63
    inc a                                         ; $727d: $3c
    ld hl, sp-$40                                 ; $727e: $f8 $c0
    sbc b                                         ; $7280: $98
    db $e4                                        ; $7281: $e4
    ld bc, $ffff                                  ; $7282: $01 $ff $ff
    db $db                                        ; $7285: $db
    adc h                                         ; $7286: $8c
    ldh a, [$e0]                                  ; $7287: $f0 $e0
    ld c, d                                       ; $7289: $4a
    pop bc                                        ; $728a: $c1
    ld bc, $a2bb                                  ; $728b: $01 $bb $a2
    add a                                         ; $728e: $87
    add a                                         ; $728f: $87
    inc a                                         ; $7290: $3c
    jr jr_07b_7258                                ; $7291: $18 $c5

    jp z, $c723                                   ; $7293: $ca $23 $c7

    ld hl, sp+$3c                                 ; $7296: $f8 $3c
    ccf                                           ; $7298: $3f

jr_07b_7299:
    ldh [$85], a                                  ; $7299: $e0 $85
    cp b                                          ; $729b: $b8
    ld h, d                                       ; $729c: $62
    ccf                                           ; $729d: $3f
    ld bc, $817e                                  ; $729e: $01 $7e $81
    ldh a, [rIE]                                  ; $72a1: $f0 $ff
    rrca                                          ; $72a3: $0f
    adc b                                         ; $72a4: $88
    ldh [$da], a                                  ; $72a5: $e0 $da
    jp hl                                         ; $72a7: $e9


    nop                                           ; $72a8: $00
    xor d                                         ; $72a9: $aa
    rlca                                          ; $72aa: $07
    add hl, hl                                    ; $72ab: $29
    ld b, h                                       ; $72ac: $44
    ld sp, hl                                     ; $72ad: $f9
    and $00                                       ; $72ae: $e6 $00
    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    dec b                                         ; $72b2: $05
    ld [$f0ff], sp                                ; $72b3: $08 $ff $f0
    dec bc                                        ; $72b6: $0b
    rst $38                                       ; $72b7: $ff
    add sp, -$20                                  ; $72b8: $e8 $e0
    rst $38                                       ; $72ba: $ff
    ldh [rIE], a                                  ; $72bb: $e0 $ff
    ldh [$f9], a                                  ; $72bd: $e0 $f9
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
    ld a, [$e3b2]                                 ; $72c1: $fa $b2 $e3
    dec c                                         ; $72c4: $0d
    pop hl                                        ; $72c5: $e1
    db $fc                                        ; $72c6: $fc
    dec c                                         ; $72c7: $0d
    rrca                                          ; $72c8: $0f
    dec bc                                        ; $72c9: $0b
    dec bc                                        ; $72ca: $0b
    ld c, $6c                                     ; $72cb: $0e $6c
    rst $38                                       ; $72cd: $ff
    ldh [$e0], a                                  ; $72ce: $e0 $e0
    ld a, [$0f0f]                                 ; $72d0: $fa $0f $0f
    ldh [$f5], a                                  ; $72d3: $e0 $f5
    rrca                                          ; $72d5: $0f
    rrca                                          ; $72d6: $0f
    ret nz                                        ; $72d7: $c0

    ldh [$2c], a                                  ; $72d8: $e0 $2c
    ei                                            ; $72da: $fb
    ldh [$c0], a                                  ; $72db: $e0 $c0
    xor $0a                                       ; $72dd: $ee $0a
    ld a, [bc]                                    ; $72df: $0a
    and c                                         ; $72e0: $a1
    db $e4                                        ; $72e1: $e4
    rrca                                          ; $72e2: $0f
    pop bc                                        ; $72e3: $c1

Call_07b_72e4:
    pop hl                                        ; $72e4: $e1
    ret nz                                        ; $72e5: $c0

    pop hl                                        ; $72e6: $e1
    inc c                                         ; $72e7: $0c
    xor $e3                                       ; $72e8: $ee $e3
    ldh [$e7], a                                  ; $72ea: $e0 $e7
    ld a, [bc]                                    ; $72ec: $0a
    ld a, [bc]                                    ; $72ed: $0a
    jp $fde0                                      ; $72ee: $c3 $e0 $fd


    and $ef                                       ; $72f1: $e6 $ef
    pop hl                                        ; $72f3: $e1
    ldh [$ed], a                                  ; $72f4: $e0 $ed
    nop                                           ; $72f6: $00
    sbc $e9                                       ; $72f7: $de $e9
    ret nc                                        ; $72f9: $d0

    pop hl                                        ; $72fa: $e1
    ldh [$f8], a                                  ; $72fb: $e0 $f8
    pop de                                        ; $72fd: $d1
    ld [c], a                                     ; $72fe: $e2
    ret nz                                        ; $72ff: $c0

    rst $28                                       ; $7300: $ef
    sbc l                                         ; $7301: $9d
    and $e0                                       ; $7302: $e6 $e0
    xor $80                                       ; $7304: $ee $80
    rst $18                                       ; $7306: $df
    ld h, b                                       ; $7307: $60
    ldh [rIE], a                                  ; $7308: $e0 $ff
    ldh [rIE], a                                  ; $730a: $e0 $ff
    ldh [rIE], a                                  ; $730c: $e0 $ff
    ldh [rIE], a                                  ; $730e: $e0 $ff
    nop                                           ; $7310: $00
    db $db                                        ; $7311: $db
    inc c                                         ; $7312: $0c
    inc c                                         ; $7313: $0c
    ld b, b                                       ; $7314: $40
    jp Jump_000_3f02                              ; $7315: $c3 $02 $3f


    call nc, Call_000_000c                        ; $7318: $d4 $0c $00
    pop bc                                        ; $731b: $c1
    ld a, a                                       ; $731c: $7f
    call nz, $f2c1                                ; $731d: $c4 $c1 $f2
    ld b, b                                       ; $7320: $40
    pop bc                                        ; $7321: $c1
    ldh [$f8], a                                  ; $7322: $e0 $f8
    ld b, b                                       ; $7324: $40
    pop bc                                        ; $7325: $c1
    nop                                           ; $7326: $00
    ret nz                                        ; $7327: $c0

    ld sp, hl                                     ; $7328: $f9
    nop                                           ; $7329: $00
    jp nz, $a1e0                                  ; $732a: $c2 $e0 $a1

    cp a                                          ; $732d: $bf
    xor l                                         ; $732e: $ad
    ld [de], a                                    ; $732f: $12
    call nz, $e4c0                                ; $7330: $c4 $c0 $e4
    sbc a                                         ; $7333: $9f
    and c                                         ; $7334: $a1
    nop                                           ; $7335: $00
    db $db                                        ; $7336: $db
    ret nz                                        ; $7337: $c0

    rra                                           ; $7338: $1f
    pop bc                                        ; $7339: $c1
    nop                                           ; $733a: $00
    rst $18                                       ; $733b: $df
    nop                                           ; $733c: $00
    rst $18                                       ; $733d: $df
    nop                                           ; $733e: $00
    rst $18                                       ; $733f: $df
    and b                                         ; $7340: $a0
    rst $18                                       ; $7341: $df
    ldh [rIE], a                                  ; $7342: $e0 $ff
    dec bc                                        ; $7344: $0b
    dec bc                                        ; $7345: $0b
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    dec b                                         ; $7349: $05
    ld b, b                                       ; $734a: $40
    rst $38                                       ; $734b: $ff
    ldh a, [rP1]                                  ; $734c: $f0 $00
    rst $38                                       ; $734e: $ff
    add sp, -$20                                  ; $734f: $e8 $e0
    rst $38                                       ; $7351: $ff
    ldh [rIE], a                                  ; $7352: $e0 $ff
    ldh [$f9], a                                  ; $7354: $e0 $f9
    call nc, $f3e5                                ; $7356: $d4 $e5 $f3
    sub b                                         ; $7359: $90
    sub c                                         ; $735a: $91
    ld [$b6f1], a                                 ; $735b: $ea $f1 $b6
    and $92                                       ; $735e: $e6 $92
    sub e                                         ; $7360: $93
    sub h                                         ; $7361: $94
    sub l                                         ; $7362: $95
    cp $df                                        ; $7363: $fe $df
    ld hl, sp-$6a                                 ; $7365: $f8 $96
    sub a                                         ; $7367: $97
    sbc b                                         ; $7368: $98
    sbc c                                         ; $7369: $99
    sbc d                                         ; $736a: $9a
    nop                                           ; $736b: $00
    sbc e                                         ; $736c: $9b
    ld [hl], a                                    ; $736d: $77
    sbc h                                         ; $736e: $9c
    sbc l                                         ; $736f: $9d
    sbc [hl]                                      ; $7370: $9e
    and h                                         ; $7371: $a4
    db $ed                                        ; $7372: $ed
    ld a, [de]                                    ; $7373: $1a
    dec de                                        ; $7374: $1b
    inc e                                         ; $7375: $1c
    ld [hl], c                                    ; $7376: $71
    ldh [rIE], a                                  ; $7377: $e0 $ff
    sbc a                                         ; $7379: $9f
    and b                                         ; $737a: $a0
    and c                                         ; $737b: $a1
    and d                                         ; $737c: $a2
    and e                                         ; $737d: $a3
    nop                                           ; $737e: $00
    and h                                         ; $737f: $a4
    and l                                         ; $7380: $a5
    db $eb                                        ; $7381: $eb
    and [hl]                                      ; $7382: $a6
    and a                                         ; $7383: $a7
    ld h, h                                       ; $7384: $64
    ldh [rNR52], a                                ; $7385: $e0 $26
    ld h, b                                       ; $7387: $60
    jp hl                                         ; $7388: $e9


    daa                                           ; $7389: $27
    jr z, jr_07b_73b5                             ; $738a: $28 $29

    rst $38                                       ; $738c: $ff
    ld a, [hl+]                                   ; $738d: $2a
    dec hl                                        ; $738e: $2b
    inc l                                         ; $738f: $2c
    xor b                                         ; $7390: $a8
    xor c                                         ; $7391: $a9
    xor d                                         ; $7392: $aa
    xor e                                         ; $7393: $ab
    xor h                                         ; $7394: $ac
    rst $38                                       ; $7395: $ff
    xor l                                         ; $7396: $ad
    xor [hl]                                      ; $7397: $ae
    xor a                                         ; $7398: $af
    or b                                          ; $7399: $b0
    or c                                          ; $739a: $b1
    or d                                          ; $739b: $b2

jr_07b_739c:
    scf                                           ; $739c: $37
    jr c, jr_07b_739c                             ; $739d: $38 $fd

    add hl, sp                                    ; $739f: $39
    ld b, b                                       ; $73a0: $40
    jp hl                                         ; $73a1: $e9


    ld a, [hl-]                                   ; $73a2: $3a

jr_07b_73a3:
    dec sp                                        ; $73a3: $3b
    inc a                                         ; $73a4: $3c
    dec a                                         ; $73a5: $3d
    ld a, $3f                                     ; $73a6: $3e $3f
    rst $38                                       ; $73a8: $ff
    or e                                          ; $73a9: $b3
    or h                                          ; $73aa: $b4
    or l                                          ; $73ab: $b5
    or [hl]                                       ; $73ac: $b6
    or a                                          ; $73ad: $b7
    cp b                                          ; $73ae: $b8
    cp c                                          ; $73af: $b9
    cp d                                          ; $73b0: $ba
    cp a                                          ; $73b1: $bf
    cp e                                          ; $73b2: $bb
    cp h                                          ; $73b3: $bc
    cp l                                          ; $73b4: $bd

jr_07b_73b5:
    ld c, e                                       ; $73b5: $4b
    ld c, h                                       ; $73b6: $4c
    ld c, l                                       ; $73b7: $4d
    jr nz, jr_07b_73a3                            ; $73b8: $20 $e9

    ld c, [hl]                                    ; $73ba: $4e
    rst $30                                       ; $73bb: $f7
    ld c, a                                       ; $73bc: $4f
    ld d, b                                       ; $73bd: $50
    ld d, c                                       ; $73be: $51
    db $fc                                        ; $73bf: $fc
    ret nz                                        ; $73c0: $c0

    cp [hl]                                       ; $73c1: $be
    cp a                                          ; $73c2: $bf
    ret nz                                        ; $73c3: $c0

    pop bc                                        ; $73c4: $c1
    rst $38                                       ; $73c5: $ff
    jp nz, $c4c3                                  ; $73c6: $c2 $c3 $c4

    push bc                                       ; $73c9: $c5
    add $40                                       ; $73ca: $c6 $40
    ld b, b                                       ; $73cc: $40
    ld e, d                                       ; $73cd: $5a
    db $fd                                        ; $73ce: $fd
    ld e, e                                       ; $73cf: $5b
    nop                                           ; $73d0: $00
    jp hl                                         ; $73d1: $e9


    ld e, h                                       ; $73d2: $5c
    ld e, l                                       ; $73d3: $5d
    ld e, [hl]                                    ; $73d4: $5e
    ld e, a                                       ; $73d5: $5f
    ld h, b                                       ; $73d6: $60
    ld b, b                                       ; $73d7: $40
    rst $38                                       ; $73d8: $ff
    ld h, c                                       ; $73d9: $61
    rst $00                                       ; $73da: $c7
    ret z                                         ; $73db: $c8

    ret                                           ; $73dc: $c9


    jp z, $cccb                                   ; $73dd: $ca $cb $cc

    call $cebf                                    ; $73e0: $cd $bf $ce
    ld b, b                                       ; $73e3: $40
    ld l, d                                       ; $73e4: $6a
    ld l, e                                       ; $73e5: $6b
    ld l, h                                       ; $73e6: $6c
    ld l, l                                       ; $73e7: $6d
    ldh [$c9], a                                  ; $73e8: $e0 $c9
    ld l, [hl]                                    ; $73ea: $6e
    rst $38                                       ; $73eb: $ff
    ld l, a                                       ; $73ec: $6f
    ld [hl], b                                    ; $73ed: $70
    ld [hl], c                                    ; $73ee: $71
    ld [hl], d                                    ; $73ef: $72
    ld [hl], e                                    ; $73f0: $73
    rst $08                                       ; $73f1: $cf
    ret nc                                        ; $73f2: $d0

    pop de                                        ; $73f3: $d1
    rst $38                                       ; $73f4: $ff
    jp nc, $d4d3                                  ; $73f5: $d2 $d3 $d4

    push de                                       ; $73f8: $d5
    sub $d7                                       ; $73f9: $d6 $d7
    ld a, d                                       ; $73fb: $7a
    ld a, e                                       ; $73fc: $7b
    rst $30                                       ; $73fd: $f7
    ld a, h                                       ; $73fe: $7c
    ld a, l                                       ; $73ff: $7d
    ld a, [hl]                                    ; $7400: $7e
    ret nz                                        ; $7401: $c0

    ret                                           ; $7402: $c9


    ld a, a                                       ; $7403: $7f
    add b                                         ; $7404: $80
    add c                                         ; $7405: $81
    add d                                         ; $7406: $82
    rst $38                                       ; $7407: $ff
    add e                                         ; $7408: $83
    add h                                         ; $7409: $84
    add l                                         ; $740a: $85
    ret c                                         ; $740b: $d8

    reti                                          ; $740c: $d9


    jp c, $dcdb                                   ; $740d: $da $db $dc

    rst $38                                       ; $7410: $ff
    db $dd                                        ; $7411: $dd
    sbc $df                                       ; $7412: $de $df
    adc e                                         ; $7414: $8b
    adc h                                         ; $7415: $8c
    adc l                                         ; $7416: $8d
    adc [hl]                                      ; $7417: $8e
    adc a                                         ; $7418: $8f
    add b                                         ; $7419: $80
    and b                                         ; $741a: $a0
    rst $18                                       ; $741b: $df
    ldh [rIE], a                                  ; $741c: $e0 $ff
    ldh [rIE], a                                  ; $741e: $e0 $ff
    ldh [rIE], a                                  ; $7420: $e0 $ff
    ldh [rIE], a                                  ; $7422: $e0 $ff
    ldh [rIE], a                                  ; $7424: $e0 $ff
    call nc, Call_000_01e5                        ; $7426: $d4 $e5 $01
    rst $38                                       ; $7429: $ff
    ld [bc], a                                    ; $742a: $02
    nop                                           ; $742b: $00
    nop                                           ; $742c: $00
    inc bc                                        ; $742d: $03
    inc b                                         ; $742e: $04
    dec b                                         ; $742f: $05
    ld b, $07                                     ; $7430: $06 $07
    cp $f9                                        ; $7432: $fe $f9
    or e                                          ; $7434: $b3
    ld [$0a09], sp                                ; $7435: $08 $09 $0a
    dec bc                                        ; $7438: $0b
    nop                                           ; $7439: $00
    inc c                                         ; $743a: $0c
    dec c                                         ; $743b: $0d
    rst $30                                       ; $743c: $f7
    ld c, $0f                                     ; $743d: $0e $0f
    db $10                                        ; $743f: $10
    reti                                          ; $7440: $d9


    or e                                          ; $7441: $b3
    ld de, $1312                                  ; $7442: $11 $12 $13
    inc d                                         ; $7445: $14
    cp a                                          ; $7446: $bf
    nop                                           ; $7447: $00
    dec d                                         ; $7448: $15
    ld d, $17                                     ; $7449: $16 $17
    jr jr_07b_7466                                ; $744b: $18 $19

    nop                                           ; $744d: $00
    jp nc, $ff00                                  ; $744e: $d2 $00 $ff

    dec e                                         ; $7451: $1d
    ld e, $1f                                     ; $7452: $1e $1f
    jr nz, jr_07b_7456                            ; $7454: $20 $00

jr_07b_7456:
    ld hl, $2322                                  ; $7456: $21 $22 $23
    ei                                            ; $7459: $fb
    inc h                                         ; $745a: $24
    dec h                                         ; $745b: $25
    nop                                           ; $745c: $00
    jp nc, Jump_000_2e2d                          ; $745d: $d2 $2d $2e

    cpl                                           ; $7460: $2f
    jr nc, @+$33                                  ; $7461: $30 $31

    cp a                                          ; $7463: $bf
    nop                                           ; $7464: $00
    ld [hl-], a                                   ; $7465: $32

jr_07b_7466:
    inc sp                                        ; $7466: $33
    inc [hl]                                      ; $7467: $34
    dec [hl]                                      ; $7468: $35
    ld [hl], $00                                  ; $7469: $36 $00
    jp nc, $ff40                                  ; $746b: $d2 $40 $ff

    ld b, c                                       ; $746e: $41
    ld b, d                                       ; $746f: $42
    ld b, e                                       ; $7470: $43
    ld b, h                                       ; $7471: $44
    ld b, l                                       ; $7472: $45
    ld b, [hl]                                    ; $7473: $46
    ld b, a                                       ; $7474: $47
    ld c, b                                       ; $7475: $48
    ei                                            ; $7476: $fb
    ld c, c                                       ; $7477: $49
    ld c, d                                       ; $7478: $4a
    nop                                           ; $7479: $00
    db $d3                                        ; $747a: $d3
    ld d, d                                       ; $747b: $52
    ld d, e                                       ; $747c: $53
    ld d, h                                       ; $747d: $54
    ld d, l                                       ; $747e: $55
    ld d, [hl]                                    ; $747f: $56
    rst $20                                       ; $7480: $e7
    ld d, a                                       ; $7481: $57
    ld e, b                                       ; $7482: $58
    ld e, c                                       ; $7483: $59
    pop af                                        ; $7484: $f1
    ret nz                                        ; $7485: $c0

    nop                                           ; $7486: $00
    jp nc, Jump_07b_6362                          ; $7487: $d2 $62 $63

    ld h, h                                       ; $748a: $64
    rst $18                                       ; $748b: $df
    ld h, l                                       ; $748c: $65
    ld h, [hl]                                    ; $748d: $66
    ld h, a                                       ; $748e: $67
    ld l, b                                       ; $748f: $68
    ld l, c                                       ; $7490: $69
    nop                                           ; $7491: $00
    call nc, Call_07b_7574                        ; $7492: $d4 $74 $75
    rst $08                                       ; $7495: $cf
    halt                                          ; $7496: $76
    ld [hl], a                                    ; $7497: $77
    ld a, b                                       ; $7498: $78
    ld a, c                                       ; $7499: $79
    or h                                          ; $749a: $b4
    ret nz                                        ; $749b: $c0

    nop                                           ; $749c: $00
    push de                                       ; $749d: $d5
    add [hl]                                      ; $749e: $86
    add a                                         ; $749f: $87
    rlca                                          ; $74a0: $07
    adc b                                         ; $74a1: $88
    adc c                                         ; $74a2: $89
    adc d                                         ; $74a3: $8a
    sub h                                         ; $74a4: $94
    ret nz                                        ; $74a5: $c0

    nop                                           ; $74a6: $00
    rst $18                                       ; $74a7: $df
    add b                                         ; $74a8: $80
    rst $18                                       ; $74a9: $df
    add b                                         ; $74aa: $80
    adc d                                         ; $74ab: $8a
    nop                                           ; $74ac: $00
    nop                                           ; $74ad: $00
    nop                                           ; $74ae: $00
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

Call_07b_7574:
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

Jump_07b_7675:
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

Jump_07b_7cc1:
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

Call_07b_7cf8:
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
